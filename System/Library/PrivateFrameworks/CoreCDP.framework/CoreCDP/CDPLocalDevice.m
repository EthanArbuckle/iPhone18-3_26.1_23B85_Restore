@interface CDPLocalDevice
+ (BOOL)hasLocalSecret;
+ (id)sharedInstance;
- (BOOL)currentProcessHasEntitlement:(id)a3;
- (CDPLocalDevice)init;
- (NSNumber)localSecretGeneration;
- (id)deviceClass;
- (id)deviceName;
- (id)hardwareModel;
- (id)marketingModel;
- (id)modelVersion;
- (id)osVersion;
- (id)serialNumber;
- (void)localSecretGeneration;
- (void)serialNumber;
@end

@implementation CDPLocalDevice

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_4 != -1)
  {
    +[CDPLocalDevice sharedInstance];
  }

  v3 = sharedInstance_localDevice;

  return v3;
}

- (id)serialNumber
{
  v2 = MGCopyAnswer();
  v3 = _CDPLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [CDPLocalDevice serialNumber];
  }

  return v2;
}

- (void)serialNumber
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(&dword_1DED99000, v0, OS_LOG_TYPE_DEBUG, "Reporting current serial number: %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

uint64_t __32__CDPLocalDevice_sharedInstance__block_invoke()
{
  sharedInstance_localDevice = objc_alloc_init(CDPLocalDevice);

  return MEMORY[0x1EEE66BB8]();
}

- (CDPLocalDevice)init
{
  v8.receiver = self;
  v8.super_class = CDPLocalDevice;
  v2 = [(CDPLocalDevice *)&v8 init];
  v3 = v2;
  if (v2)
  {
    if ([(CDPLocalDevice *)v2 _currentProcessCreatesDaemonTypeProxy])
    {
      CDPDLocalDeviceSecretProxyImplClass = getCDPDLocalDeviceSecretProxyImplClass();
    }

    else
    {
      CDPDLocalDeviceSecretProxyImplClass = CDPLocalDeviceSecretProxyImpl;
    }

    v5 = objc_alloc_init(CDPDLocalDeviceSecretProxyImplClass);
    localSecretProxy = v3->_localSecretProxy;
    v3->_localSecretProxy = v5;
  }

  return v3;
}

+ (BOOL)hasLocalSecret
{
  v2 = +[CDPLocalDevice sharedInstance];
  v3 = [v2 hasLocalSecret];

  return v3;
}

- (NSNumber)localSecretGeneration
{
  v2 = MKBGetDeviceConfigurations();
  if (v2)
  {
    v3 = @"PasscodeGeneration";
    v4 = [v2 objectForKeyedSubscript:v3];
    if (v4)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v6 = _CDPLogSystem();
      v7 = v6;
      if (isKindOfClass)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          [CDPLocalDevice localSecretGeneration];
        }

        v8 = v4;
        goto LABEL_15;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [(CDPLocalDevice *)v4 localSecretGeneration];
      }
    }

    else
    {
      v7 = _CDPLogSystem();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [CDPLocalDevice localSecretGeneration];
      }
    }

    v8 = 0;
LABEL_15:

    goto LABEL_16;
  }

  v3 = _CDPLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [CDPLocalDevice localSecretGeneration];
  }

  v8 = 0;
LABEL_16:

  return v8;
}

- (id)marketingModel
{
  v2 = MGCopyAnswer();

  return v2;
}

- (id)hardwareModel
{
  v2 = MGCopyAnswer();

  return v2;
}

- (id)modelVersion
{
  v2 = MGCopyAnswer();

  return v2;
}

- (id)osVersion
{
  v2 = MGCopyAnswer();
  if (+[CDPUtilities isInternalBuild])
  {
    v3 = MGCopyAnswer();

    v2 = v3;
  }

  return v2;
}

- (id)deviceClass
{
  v2 = MGCopyAnswer();

  return v2;
}

- (id)deviceName
{
  v2 = MGCopyAnswer();

  return v2;
}

- (BOOL)currentProcessHasEntitlement:(id)a3
{
  v3 = a3;
  if (currentProcessHasEntitlement__onceToken != -1)
  {
    [CDPLocalDevice currentProcessHasEntitlement:];
  }

  if (currentProcessHasEntitlement__taskRef)
  {
    error = 0;
    v4 = SecTaskCopyValueForEntitlement(currentProcessHasEntitlement__taskRef, v3, &error);
    if (error)
    {
      v5 = _CDPLogSystem();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [(CDPLocalDevice *)v3 currentProcessHasEntitlement:?];
      }

      CFRelease(error);
    }

    if (v4 && (v6 = CFGetTypeID(v4), v6 == CFBooleanGetTypeID()))
    {
      v7 = [v4 BOOLValue];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v8 = _CDPLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CDPLocalDevice currentProcessHasEntitlement:];
    }

    v7 = 0;
  }

  return v7;
}

SecTaskRef __47__CDPLocalDevice_currentProcessHasEntitlement___block_invoke()
{
  result = SecTaskCreateFromSelf(0);
  currentProcessHasEntitlement__taskRef = result;
  return result;
}

- (void)localSecretGeneration
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)currentProcessHasEntitlement:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  OUTLINED_FUNCTION_1_0();
  v7 = 2112;
  v8 = v3;
  _os_log_error_impl(&dword_1DED99000, v4, OS_LOG_TYPE_ERROR, "Error when checking self process for entitlement %@. error:%@", v6, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

@end