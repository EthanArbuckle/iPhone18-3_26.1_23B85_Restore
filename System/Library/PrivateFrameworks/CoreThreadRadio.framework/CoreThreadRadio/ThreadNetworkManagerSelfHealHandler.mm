@interface ThreadNetworkManagerSelfHealHandler
- (ThreadNetworkManagerSelfHealHandler)init;
- (void)cleanUpThreadKeychainEntries;
- (void)initSelfHealThreadNetworkTimer;
- (void)selfHealThreadNetworkTimerHandler;
@end

@implementation ThreadNetworkManagerSelfHealHandler

- (ThreadNetworkManagerSelfHealHandler)init
{
  v3.receiver = self;
  v3.super_class = ThreadNetworkManagerSelfHealHandler;
  return [(ThreadNetworkManagerSelfHealHandler *)&v3 init];
}

- (void)initSelfHealThreadNetworkTimer
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void __69__ThreadNetworkManagerSelfHealHandler_initSelfHealThreadNetworkTimer__block_invoke(uint64_t a1)
{
  v2 = +[NSDate date];
  [v2 timeIntervalSince1970];
  v4 = v3;

  v5 = ThreadNetworkLoggingCategory(1u);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 136315650;
    v7 = "[ThreadNetworkManagerSelfHealHandler initSelfHealThreadNetworkTimer]_block_invoke";
    v8 = 1024;
    v9 = 105;
    v10 = 2048;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s:%d: Self heal thread network timer triggered : Timer Triggered timestamp :%f", &v6, 0x1Cu);
  }

  if (v4 > 1657720000.0 && saveDoubleValue("SelfHealTimeStamp", v4))
  {
    [*(a1 + 32) selfHealThreadNetworkTimerHandler];
  }
}

- (void)selfHealThreadNetworkTimerHandler
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)cleanUpThreadKeychainEntries
{
  v2 = ThreadNetworkLoggingCategory(1u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[ThreadNetworkManagerSelfHealHandler cleanUpThreadKeychainEntries]";
    v9 = 1024;
    v10 = 146;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s:%d: Starting the cleanup for thread keychain database", &v7, 0x12u);
  }

  v3 = +[THThreadNetworkCredentialsKeychainBackingStore defaultBackingStore];
  v4 = [[THThreadNetworkCredentialsStoreLocalClient alloc] initApplePrivateStoreWithBackingStore:v3];
  v5 = v4;
  if (v4)
  {
    [v4 cleanThreadKeychainDatabase:&__block_literal_global_13];
  }

  else
  {
    v6 = ThreadNetworkLoggingCategory(1u);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [ThreadNetworkManagerSelfHealHandler cleanUpThreadKeychainEntries];
    }
  }
}

void __67__ThreadNetworkManagerSelfHealHandler_cleanUpThreadKeychainEntries__block_invoke(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = ThreadNetworkLoggingCategory(1u);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __67__ThreadNetworkManagerSelfHealHandler_cleanUpThreadKeychainEntries__block_invoke_cold_1();
    }
  }

  else
  {
    v3 = ThreadNetworkLoggingCategory(1u);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = 136315394;
      v5 = "[ThreadNetworkManagerSelfHealHandler cleanUpThreadKeychainEntries]_block_invoke";
      v6 = 1024;
      v7 = 159;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s:%d:  Cleaned up the keychain database successfully.", &v4, 0x12u);
    }
  }
}

void __67__ThreadNetworkManagerSelfHealHandler_cleanUpThreadKeychainEntries__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

@end