@interface IDSCurrentDevice
+ (id)sharedInstance;
- (BOOL)hasAllEncryptionKeys;
- (IDSCurrentDevice)init;
- (NSData)encryptionClassAKey;
- (NSData)encryptionClassCKey;
- (NSData)encryptionClassDKey;
- (NSString)deviceIdentifier;
- (void)regenerateDeviceIdentifier;
@end

@implementation IDSCurrentDevice

+ (id)sharedInstance
{
  if (qword_100CBF2D8 != -1)
  {
    sub_10092C860();
  }

  v3 = qword_100CBF2E0;

  return v3;
}

- (NSString)deviceIdentifier
{
  p_localDeviceIdentifier = &self->_localDeviceIdentifier;
  localDeviceIdentifier = self->_localDeviceIdentifier;
  if (!localDeviceIdentifier)
  {
    _deviceIdentifierKeychainID = [(IDSCurrentDevice *)self _deviceIdentifierKeychainID];
    IMGetKeychainAuthToken();
    v6 = 0;
    if (v6)
    {
      objc_storeStrong(p_localDeviceIdentifier, 0);
    }

    if (*p_localDeviceIdentifier)
    {
      v7 = +[IMRGLog registration];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *p_localDeviceIdentifier;
        *buf = 138412290;
        v15 = v8;
        v9 = "Loaded unique ID %@";
LABEL_9:
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v9, buf, 0xCu);
      }
    }

    else
    {
      v10 = +[NSString stringGUID];
      v11 = *p_localDeviceIdentifier;
      *p_localDeviceIdentifier = v10;

      IMSetKeychainAuthToken();
      v7 = +[IMRGLog registration];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *p_localDeviceIdentifier;
        *buf = 138412290;
        v15 = v12;
        v9 = "No unique ID found - generating new one %@";
        goto LABEL_9;
      }
    }

    localDeviceIdentifier = *p_localDeviceIdentifier;
  }

  return localDeviceIdentifier;
}

- (IDSCurrentDevice)init
{
  v6.receiver = self;
  v6.super_class = IDSCurrentDevice;
  v2 = [(IDSCurrentDevice *)&v6 init];
  v3 = v2;
  if (v2)
  {
    deviceIdentifier = [(IDSCurrentDevice *)v2 deviceIdentifier];
  }

  return v3;
}

- (NSData)encryptionClassAKey
{
  v2 = +[IDSRegistrationKeyManager sharedInstance];
  publicMessageProtectionDataToRegisterForClassA = [v2 publicMessageProtectionDataToRegisterForClassA];

  return publicMessageProtectionDataToRegisterForClassA;
}

- (NSData)encryptionClassCKey
{
  v2 = +[IDSRegistrationKeyManager sharedInstance];
  publicMessageProtectionDataToRegisterForClassC = [v2 publicMessageProtectionDataToRegisterForClassC];

  return publicMessageProtectionDataToRegisterForClassC;
}

- (NSData)encryptionClassDKey
{
  v2 = +[IDSRegistrationKeyManager sharedInstance];
  publicMessageProtectionDataToRegisterForClassD = [v2 publicMessageProtectionDataToRegisterForClassD];

  return publicMessageProtectionDataToRegisterForClassD;
}

- (BOOL)hasAllEncryptionKeys
{
  encryptionClassAKey = [(IDSCurrentDevice *)self encryptionClassAKey];
  if (encryptionClassAKey)
  {
    encryptionClassCKey = [(IDSCurrentDevice *)self encryptionClassCKey];
    if (encryptionClassCKey)
    {
      encryptionClassDKey = [(IDSCurrentDevice *)self encryptionClassDKey];
      v6 = encryptionClassDKey != 0;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)regenerateDeviceIdentifier
{
  _deviceIdentifierKeychainID = [(IDSCurrentDevice *)self _deviceIdentifierKeychainID];
  IMRemoveKeychainAuthToken();
  localDeviceIdentifier = self->_localDeviceIdentifier;
  self->_localDeviceIdentifier = 0;

  deviceIdentifier = [(IDSCurrentDevice *)self deviceIdentifier];
  v6 = +[IMRGLog uniqueID];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    deviceIdentifier2 = [(IDSCurrentDevice *)self deviceIdentifier];
    v8 = 138412290;
    v9 = deviceIdentifier2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Re-generated my uniqueID %@", &v8, 0xCu);
  }
}

@end