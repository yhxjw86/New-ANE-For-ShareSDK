package cn.sharesdk.ane.platform
{
	import flash.system.Capabilities;
	public class Renren extends DevInfo
	{					
		public function setAppId (appId:String):void 
		{
			if (Capabilities.manufacturer.indexOf("Android") != -1)
			{
				platformConf["AppId"] = appId;
			}
			else if (Capabilities.manufacturer.indexOf("iOS") != -1)
			{
				platformConf["app_id"] = appId;
			}
		}
		public function setApiKey (apiKey:String):void 
		{
			if (Capabilities.manufacturer.indexOf("Android") != -1)
			{
				platformConf["ApiKey"] = apiKey;
			}
			else if (Capabilities.manufacturer.indexOf("iOS") != -1)
			{
				platformConf["app_key"] = apiKey;
			}
		}
		public function setSecretKey (secretKey:String):void 
		{
			if (Capabilities.manufacturer.indexOf("Android") != -1)
			{
				platformConf["SecretKey"] = secretKey;
			}
			else if (Capabilities.manufacturer.indexOf("iOS") != -1)
			{
				platformConf["secret_key"] = secretKey;
			}
		}
		//iOS Only
		public function setAuthType (authType:String):void
		{
			platformConf["auth_type"] = authType;
		}
	}
}