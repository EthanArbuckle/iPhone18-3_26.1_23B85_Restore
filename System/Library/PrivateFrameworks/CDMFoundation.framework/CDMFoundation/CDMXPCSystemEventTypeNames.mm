@interface CDMXPCSystemEventTypeNames
+ (id)getNameStringToEnumDict;
@end

@implementation CDMXPCSystemEventTypeNames

+ (id)getNameStringToEnumDict
{
  if (getNameStringToEnumDict_onceToken_8173 != -1)
  {
    dispatch_once(&getNameStringToEnumDict_onceToken_8173, &__block_literal_global_8174);
  }

  v3 = getNameStringToEnumDict_cdmXpcSystemEventTypeNameStringToEnum;

  return v3;
}

void __53__CDMXPCSystemEventTypeNames_getNameStringToEnumDict__block_invoke()
{
  v11[7] = *MEMORY[0x1E69E9840];
  v10[0] = @"com.apple.siri.cdm.xpc_activity.maintenance";
  v0 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:1];
  v11[0] = v0;
  v10[1] = @"com.apple.siri.cdm.xpc_activity.post_install";
  v1 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:2];
  v11[1] = v1;
  v10[2] = @"com.apple.trial.NamespaceUpdate.SIRI_UNDERSTANDING_NL";
  v2 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:3];
  v11[2] = v2;
  v10[3] = @"com.apple.siri.uaf.com.apple.siri.understanding";
  v3 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:3];
  v11[3] = v3;
  v10[4] = @"com.apple.LaunchServices.applicationRegistered";
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:4];
  v11[4] = v4;
  v10[5] = @"com.apple.LaunchServices.applicationUnregistered";
  v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:5];
  v11[5] = v5;
  v10[6] = @"com.apple.siri.VoiceShortcuts.DataDidUpdateNotification";
  v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:6];
  v11[6] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:7];
  v8 = getNameStringToEnumDict_cdmXpcSystemEventTypeNameStringToEnum;
  getNameStringToEnumDict_cdmXpcSystemEventTypeNameStringToEnum = v7;

  v9 = *MEMORY[0x1E69E9840];
}

@end