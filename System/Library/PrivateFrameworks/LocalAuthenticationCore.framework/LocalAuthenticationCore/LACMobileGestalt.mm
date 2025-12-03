@interface LACMobileGestalt
+ (BOOL)deviceHasFaceID;
+ (BOOL)deviceHasOpticID;
+ (BOOL)deviceHasTouchID;
+ (BOOL)deviceSupportsExclaves;
+ (BOOL)isSharedIPad;
+ (id)marketingDeviceFamilyName;
+ (id)marketingDeviceName;
+ (id)serialNumber;
+ (int)_deviceClass;
+ (int64_t)builtinBiometryType;
+ (unint64_t)currentDeviceScreenSize;
+ (unint64_t)faceIDCameraOrientation;
+ (void)faceIDCameraOrientation;
@end

@implementation LACMobileGestalt

+ (BOOL)deviceHasFaceID
{
  v6 = *MEMORY[0x1E69E9840];
  if (deviceHasFaceID_onceToken != -1)
  {
    +[LACMobileGestalt deviceHasFaceID];
  }

  v2 = LACLogGestalt();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v5[0] = 67109120;
    v5[1] = deviceHasFaceID_hasPearl;
    _os_log_impl(&dword_1B0233000, v2, OS_LOG_TYPE_INFO, "deviceHasPearl returned %d", v5, 8u);
  }

  result = deviceHasFaceID_hasPearl;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

+ (int)_deviceClass
{
  if (_deviceClass_onceToken != -1)
  {
    +[LACMobileGestalt _deviceClass];
  }

  return _deviceClass_deviceClass;
}

+ (unint64_t)currentDeviceScreenSize
{
  v2 = MGGetSInt32Answer() - 3;
  if (v2 > 0x16)
  {
    return 14;
  }

  else
  {
    return qword_1B0340930[v2];
  }
}

uint64_t __32__LACMobileGestalt__deviceClass__block_invoke()
{
  result = MGGetSInt32Answer();
  _deviceClass_deviceClass = result;
  return result;
}

void __35__LACMobileGestalt_deviceHasFaceID__block_invoke()
{
  if (MGIsQuestionValid())
  {
    deviceHasFaceID_hasPearl = MGGetBoolAnswer();
  }

  else
  {
    v0 = LACLogGestalt();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      __35__LACMobileGestalt_deviceHasFaceID__block_invoke_cold_1();
    }
  }
}

+ (BOOL)deviceHasOpticID
{
  v9 = *MEMORY[0x1E69E9840];
  if (deviceHasOpticID_onceToken != -1)
  {
    +[LACMobileGestalt deviceHasOpticID];
  }

  v2 = LACLogGestalt();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "+[LACMobileGestalt deviceHasOpticID]";
    v7 = 1024;
    v8 = deviceHasOpticID_hasOyster;
    _os_log_impl(&dword_1B0233000, v2, OS_LOG_TYPE_INFO, "%s returned %d", &v5, 0x12u);
  }

  result = deviceHasOpticID_hasOyster;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void __36__LACMobileGestalt_deviceHasOpticID__block_invoke()
{
  if (MGIsQuestionValid())
  {
    deviceHasOpticID_hasOyster = MGGetBoolAnswer();
  }

  else
  {
    v0 = LACLogGestalt();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      __36__LACMobileGestalt_deviceHasOpticID__block_invoke_cold_1();
    }
  }
}

+ (BOOL)deviceHasTouchID
{
  v6 = *MEMORY[0x1E69E9840];
  if (deviceHasTouchID_onceToken != -1)
  {
    +[LACMobileGestalt deviceHasTouchID];
  }

  v2 = LACLogGestalt();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v5[0] = 67109120;
    v5[1] = deviceHasTouchID_hasTouchID;
    _os_log_impl(&dword_1B0233000, v2, OS_LOG_TYPE_INFO, "deviceHasTouchID returned %d", v5, 8u);
  }

  result = deviceHasTouchID_hasTouchID;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void __36__LACMobileGestalt_deviceHasTouchID__block_invoke()
{
  if (MGIsQuestionValid())
  {
    deviceHasTouchID_hasTouchID = MGGetBoolAnswer();
  }

  else
  {
    v0 = LACLogGestalt();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      __36__LACMobileGestalt_deviceHasTouchID__block_invoke_cold_1();
    }
  }
}

+ (int64_t)builtinBiometryType
{
  if ([self deviceHasFaceID])
  {
    v3 = &LACBiometryTypeFaceID;
  }

  else if ([self deviceHasTouchID])
  {
    v3 = &LACBiometryTypeTouchID;
  }

  else
  {
    deviceHasOpticID = [self deviceHasOpticID];
    v3 = &LACBiometryTypeNone;
    if (deviceHasOpticID)
    {
      v3 = &LACBiometryTypeOpticID;
    }
  }

  return *v3;
}

+ (BOOL)deviceSupportsExclaves
{
  v6 = *MEMORY[0x1E69E9840];
  if (deviceSupportsExclaves_onceToken != -1)
  {
    +[LACMobileGestalt deviceSupportsExclaves];
  }

  v2 = LACLogGestalt();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v5[0] = 67109120;
    v5[1] = deviceSupportsExclaves_hasExclaves;
    _os_log_impl(&dword_1B0233000, v2, OS_LOG_TYPE_INFO, "deviceSupportsExclaves returned %d", v5, 8u);
  }

  result = deviceSupportsExclaves_hasExclaves;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void __42__LACMobileGestalt_deviceSupportsExclaves__block_invoke()
{
  if (MGIsQuestionValid())
  {
    deviceSupportsExclaves_hasExclaves = MGGetBoolAnswer();
  }

  else
  {
    v0 = LACLogGestalt();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      __42__LACMobileGestalt_deviceSupportsExclaves__block_invoke_cold_1();
    }
  }
}

+ (BOOL)isSharedIPad
{
  if (isSharedIPad_onceToken != -1)
  {
    +[LACMobileGestalt isSharedIPad];
  }

  return isSharedIPad__isSharedIPad == 1;
}

void __32__LACMobileGestalt_isSharedIPad__block_invoke()
{
  v0 = MKBUserTypeDeviceMode();
  v1 = v0;
  if (v0)
  {
    v2 = [v0 objectForKeyedSubscript:*MEMORY[0x1E69B1A10]];
    isSharedIPad__isSharedIPad = [v2 isEqualToString:*MEMORY[0x1E69B1A20]];
  }

  else
  {
    v2 = 0;
    v3 = LACLogGestalt();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __32__LACMobileGestalt_isSharedIPad__block_invoke_cold_1(0, v3);
    }
  }
}

+ (id)marketingDeviceName
{
  v2 = MGCopyAnswer();

  return v2;
}

+ (id)marketingDeviceFamilyName
{
  v2 = MGCopyAnswer();

  return v2;
}

+ (id)serialNumber
{
  v2 = MGCopyAnswer();

  return v2;
}

+ (unint64_t)faceIDCameraOrientation
{
  if (!MGGetBoolAnswer() || !MGIsQuestionValid())
  {
    return 0;
  }

  v2 = MGGetSInt32Answer();
  v3 = LACLogGestalt();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    +[(LACMobileGestalt *)v2];
  }

  if (v2)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

void __32__LACMobileGestalt_isSharedIPad__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1B0233000, a2, OS_LOG_TYPE_ERROR, "MKBUserTypeDeviceMode returned NULL: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)faceIDCameraOrientation
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = self;
  _os_log_debug_impl(&dword_1B0233000, a2, OS_LOG_TYPE_DEBUG, "camera rotation: %d", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

@end