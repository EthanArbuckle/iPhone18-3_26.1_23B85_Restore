@interface LACSysUtility
+ (LACSysUtility)sharedInstance;
- (BOOL)_hasCodeSigningMonitorOfType:(unsigned int)type;
- (BOOL)hasCodeSigningMonitor;
- (unint64_t)txmSecurityBootMode;
- (unsigned)_getCodeSigningConfig;
- (unsigned)_getCodeSigningMonitorType;
@end

@implementation LACSysUtility

+ (LACSysUtility)sharedInstance
{
  if (sharedInstance_onceToken_2 != -1)
  {
    +[LACSysUtility sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_2;

  return v3;
}

uint64_t __31__LACSysUtility_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_2 = objc_alloc_init(LACSysUtility);

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)hasCodeSigningMonitor
{
  if ([(LACSysUtility *)self hasPPL])
  {
    return 1;
  }

  return [(LACSysUtility *)self hasTXM];
}

- (unint64_t)txmSecurityBootMode
{
  v16 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v8 = 4;
  v2 = sysctlbyname("security.codesigning.security_boot_mode_complete", &v9, &v8, 0, 0);
  v3 = LACLogDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v9;
    v5 = *__error();
    *buf = 67109632;
    v11 = v4;
    v12 = 1024;
    v13 = v2;
    v14 = 1024;
    v15 = v5;
    _os_log_impl(&dword_1B0233000, v3, OS_LOG_TYPE_DEFAULT, "TXM boot mode returned value: %d error: %d global error: %d", buf, 0x14u);
  }

  if (v2)
  {
    result = 0;
  }

  else
  {
    result = v9;
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)_hasCodeSigningMonitorOfType:(unsigned int)type
{
  if ([(LACSysUtility *)self _getCodeSigningMonitorType]== type)
  {
    return [(LACSysUtility *)self _getCodeSigningConfig]>> 31;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (unsigned)_getCodeSigningMonitorType
{
  if (_getCodeSigningMonitorType_onceToken != -1)
  {
    [LACSysUtility _getCodeSigningMonitorType];
  }

  return _getCodeSigningMonitorType_codeSigningMonitor;
}

void __43__LACSysUtility__getCodeSigningMonitorType__block_invoke()
{
  v1 = 4;
  if (sysctlbyname("security.codesigning.monitor", &_getCodeSigningMonitorType_codeSigningMonitor, &v1, 0, 0))
  {
    v0 = LACLogDefault();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      __43__LACSysUtility__getCodeSigningMonitorType__block_invoke_cold_1();
    }
  }
}

- (unsigned)_getCodeSigningConfig
{
  if (_getCodeSigningConfig_onceToken != -1)
  {
    [LACSysUtility _getCodeSigningConfig];
  }

  return _getCodeSigningConfig_codeSigningConfig;
}

void __38__LACSysUtility__getCodeSigningConfig__block_invoke()
{
  v1 = 4;
  if (sysctlbyname("security.codesigning.config", &_getCodeSigningConfig_codeSigningConfig, &v1, 0, 0))
  {
    v0 = LACLogDefault();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      __38__LACSysUtility__getCodeSigningConfig__block_invoke_cold_1();
    }
  }
}

void __43__LACSysUtility__getCodeSigningMonitorType__block_invoke_cold_1()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_2(&dword_1B0233000, v1, v2, "Sysctl security.codesigning.monitor failed with error code: %d global error: %d", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __38__LACSysUtility__getCodeSigningConfig__block_invoke_cold_1()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_2(&dword_1B0233000, v1, v2, "Sysctl security.codesigning.config failed with error code: %d global error: %d", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

@end