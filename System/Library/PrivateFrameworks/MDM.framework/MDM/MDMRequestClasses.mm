@interface MDMRequestClasses
+ (Class)classForRequestType:(id)a3;
@end

@implementation MDMRequestClasses

+ (Class)classForRequestType:(id)a3
{
  v3 = classForRequestType__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    +[MDMRequestClasses classForRequestType:];
  }

  v5 = [classForRequestType__requestClassByRequestType objectForKeyedSubscript:v4];

  return v5;
}

void __41__MDMRequestClasses_classForRequestType___block_invoke()
{
  v26 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:12];
  v0 = objc_opt_class();
  v1 = +[MDMRequestClearRestrictionsPasswordCommand requestType];
  [v26 setObject:v0 forKeyedSubscript:v1];

  v2 = objc_opt_class();
  v3 = +[MDMRequestDeviceLocationCommand requestType];
  [v26 setObject:v2 forKeyedSubscript:v3];

  v4 = objc_opt_class();
  v5 = +[MDMRequestDeviceLockCommand requestType];
  [v26 setObject:v4 forKeyedSubscript:v5];

  v6 = objc_opt_class();
  v7 = +[MDMRequestDisableLostModeCommand requestType];
  [v26 setObject:v6 forKeyedSubscript:v7];

  v8 = objc_opt_class();
  v9 = +[MDMRequestEnableLostModeCommand requestType];
  [v26 setObject:v8 forKeyedSubscript:v9];

  v10 = objc_opt_class();
  v11 = +[MDMRequestEraseDeviceCommand requestType];
  [v26 setObject:v10 forKeyedSubscript:v11];

  v12 = objc_opt_class();
  v13 = +[MDMRequestLogOutUserCommand requestType];
  [v26 setObject:v12 forKeyedSubscript:v13];

  v14 = objc_opt_class();
  v15 = +[MDMRequestPlayLostModeSoundCommand requestType];
  [v26 setObject:v14 forKeyedSubscript:v15];

  v16 = objc_opt_class();
  v17 = +[MDMRequestRestartDeviceCommand requestType];
  [v26 setObject:v16 forKeyedSubscript:v17];

  v18 = objc_opt_class();
  v19 = +[MDMRequestSecurityInfoCommand requestType];
  [v26 setObject:v18 forKeyedSubscript:v19];

  v20 = objc_opt_class();
  v21 = +[MDMRequestShutDownDeviceCommand requestType];
  [v26 setObject:v20 forKeyedSubscript:v21];

  v22 = objc_opt_class();
  v23 = +[MDMRequestUserListCommand requestType];
  [v26 setObject:v22 forKeyedSubscript:v23];

  v24 = [v26 copy];
  v25 = classForRequestType__requestClassByRequestType;
  classForRequestType__requestClassByRequestType = v24;
}

@end