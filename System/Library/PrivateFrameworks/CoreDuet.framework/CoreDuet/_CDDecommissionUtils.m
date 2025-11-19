@interface _CDDecommissionUtils
+ (BOOL)isCompletelyDisabled;
+ (BOOL)isCoreDuetProcess;
+ (BOOL)isDigitalHealthProcess;
+ (BOOL)isDigitalHealthSyncDisabled;
+ (BOOL)isKnowledgeDaemon;
+ (BOOL)isRequestAllowed:(id *)a3;
+ (id)allowedStreams;
+ (id)filterEvents:(id)a3;
+ (id)knowledgeStoreDisabledError;
+ (void)logFault;
@end

@implementation _CDDecommissionUtils

+ (void)logFault
{
  if (_os_feature_enabled_impl())
  {
    v2 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      +[(_CDDecommissionUtils *)v2];
    }
  }
}

+ (BOOL)isCompletelyDisabled
{
  v3 = _os_feature_enabled_impl();
  if (v3)
  {
    v3 = [a1 isKnowledgeDaemon];
    if (v3)
    {
      v3 = [a1 isDigitalHealthSyncDisabled];
      if (v3)
      {
        [a1 logFault];
        LOBYTE(v3) = 1;
      }
    }
  }

  return v3;
}

+ (BOOL)isRequestAllowed:(id *)a3
{
  if (!_os_feature_enabled_impl())
  {
    return 1;
  }

  if ([a1 isCompletelyDisabled])
  {
    if (a3)
    {
LABEL_4:
      v5 = [a1 knowledgeStoreDisabledError];
      v6 = v5;
      result = 0;
      *a3 = v5;
      return result;
    }

    return 0;
  }

  if ([a1 isCoreDuetProcess] & 1) != 0 || (objc_msgSend(a1, "isDigitalHealthProcess"))
  {
    return 1;
  }

  if (_os_feature_enabled_impl())
  {
    v8 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      +[(_CDDecommissionUtils *)v8];
    }
  }

  if (a3)
  {
    goto LABEL_4;
  }

  return 0;
}

+ (id)filterEvents:(id)a3
{
  v4 = a3;
  if (_os_feature_enabled_impl())
  {
    if ([a1 isCompletelyDisabled])
    {
      v5 = MEMORY[0x1E695E0F0];
    }

    else
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __37___CDDecommissionUtils_filterEvents___block_invoke;
      v8[3] = &__block_descriptor_40_e21_B24__0___DKEvent_8_16l;
      v8[4] = a1;
      v6 = [MEMORY[0x1E696AE18] predicateWithBlock:v8];
      v5 = [v4 filteredArrayUsingPredicate:v6];
    }
  }

  else
  {
    v5 = v4;
  }

  return v5;
}

+ (id)knowledgeStoreDisabledError
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  v7 = *MEMORY[0x1E696A578];
  v8[0] = @"Knowledge store has been decomissioned";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = [v2 errorWithDomain:@"com.apple.coreduet.knowledge" code:10 userInfo:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (BOOL)isDigitalHealthSyncDisabled
{
  if (![_DKSync2Policy isSyncPolicyDisabledForFeature:1 transportType:1]|| ![_DKSync2Policy isSyncPolicyDisabledForFeature:1 transportType:4])
  {
    return 0;
  }

  return [_DKSync2Policy isSyncPolicyDisabledForFeature:1 transportType:8];
}

+ (id)allowedStreams
{
  if (allowedStreams_onceToken != -1)
  {
    +[_CDDecommissionUtils allowedStreams];
  }

  v3 = allowedStreams_allowedStreams;

  return v3;
}

+ (BOOL)isKnowledgeDaemon
{
  if (isKnowledgeDaemon_onceToken != -1)
  {
    +[_CDDecommissionUtils isKnowledgeDaemon];
  }

  return isKnowledgeDaemon_isKnowledgeDaemon;
}

+ (BOOL)isCoreDuetProcess
{
  if (isCoreDuetProcess_onceToken != -1)
  {
    +[_CDDecommissionUtils isCoreDuetProcess];
  }

  return isCoreDuetProcess_isKnowledgeDaemon;
}

+ (BOOL)isDigitalHealthProcess
{
  if (isDigitalHealthProcess_onceToken != -1)
  {
    +[_CDDecommissionUtils isDigitalHealthProcess];
  }

  return isDigitalHealthProcess_isKnowledgeDaemon;
}

@end