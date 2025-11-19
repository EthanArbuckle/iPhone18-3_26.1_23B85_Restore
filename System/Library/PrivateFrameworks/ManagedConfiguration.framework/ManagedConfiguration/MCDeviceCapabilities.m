@interface MCDeviceCapabilities
+ (id)currentDevice;
- (BOOL)_mediaDiskIsEncrypted;
- (BOOL)validateCapabilitiesRequiredByRestrictions:(id)a3 localizedIncompatibilityMessage:(id)a4 outError:(id *)a5;
- (MCDeviceCapabilities)init;
@end

@implementation MCDeviceCapabilities

+ (id)currentDevice
{
  if (currentDevice_once != -1)
  {
    +[MCDeviceCapabilities currentDevice];
  }

  v3 = currentDevice_device;

  return v3;
}

uint64_t __37__MCDeviceCapabilities_currentDevice__block_invoke()
{
  currentDevice_device = objc_alloc_init(MCDeviceCapabilities);

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)_mediaDiskIsEncrypted
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = MGCopyAnswer();
  v3 = v2;
  v5 = v2 && (v4 = CFGetTypeID(v2), v4 == CFBooleanGetTypeID()) && CFBooleanGetValue(v3) != 0;
  v6 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEBUG))
  {
    v9[0] = 67109120;
    v9[1] = v5;
    _os_log_impl(&dword_1A795B000, v6, OS_LOG_TYPE_DEBUG, "block level encryption is %x", v9, 8u);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

- (MCDeviceCapabilities)init
{
  v12 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = MCDeviceCapabilities;
  v2 = [(MCDeviceCapabilities *)&v9 init];
  v3 = v2;
  if (v2)
  {
    if ([(MCDeviceCapabilities *)v2 _mediaDiskIsEncrypted])
    {
      v3->_supportsBlockLevelEncryption = 1;
    }

    v4 = MKBDeviceFormattedForContentProtection();
    if (v4 < 0)
    {
      v5 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v11 = v4;
        _os_log_impl(&dword_1A795B000, v5, OS_LOG_TYPE_ERROR, "Unable to determine if device supports file level encryption.  Got %d from MKBDeviceSupportsContentProtection()", buf, 8u);
      }
    }

    v3->_supportsFileLevelEncryption = v4 == 1;
    v6 = MGCopyAnswer();
    v3->_hasSEP = v6 != 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v3;
}

- (BOOL)validateCapabilitiesRequiredByRestrictions:(id)a3 localizedIncompatibilityMessage:(id)a4 outError:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if ([MCRestrictionManager BOOLSettingForFeature:@"requireBlockLevelEncryption" withUserSettingDictionary:v8]== 1 && !self->_supportsBlockLevelEncryption)
  {
    if (!a5)
    {
      goto LABEL_11;
    }

    v10 = 26000;
LABEL_10:
    v11 = MEMORY[0x1E696ABC0];
    v12 = MCErrorArrayFromLocalizedDescription(v9);
    *a5 = [v11 MCErrorWithDomain:@"MCDeviceCapabilitiesErrorDomain" code:v10 descriptionArray:v12 errorType:@"MCFatalError"];

    LOBYTE(a5) = 0;
    goto LABEL_11;
  }

  if ([MCRestrictionManager BOOLSettingForFeature:@"requireFileLevelEncryption" withUserSettingDictionary:v8]== 1 && !self->_supportsFileLevelEncryption)
  {
    if (!a5)
    {
      goto LABEL_11;
    }

    v10 = 26001;
    goto LABEL_10;
  }

  LOBYTE(a5) = 1;
LABEL_11:

  return a5;
}

@end