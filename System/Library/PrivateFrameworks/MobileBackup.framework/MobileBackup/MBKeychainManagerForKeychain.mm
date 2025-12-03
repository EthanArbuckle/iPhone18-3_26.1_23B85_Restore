@interface MBKeychainManagerForKeychain
+ (BOOL)addKeybagSecret:(id)secret forUUID:(id)d error:(id *)error;
+ (BOOL)addValue:(id)value forServiceName:(id)name accountName:(id)accountName withAccessibility:(id)accessibility error:(id *)error;
+ (BOOL)removeValueWithServiceName:(id)name accountName:(id)accountName error:(id *)error;
+ (BOOL)removeValueWithServiceName:(id)name error:(id *)error;
+ (BOOL)updateKeybagSecret:(id)secret forUUID:(id)d error:(id *)error;
+ (BOOL)updateValue:(id)value forServiceName:(id)name accountName:(id)accountName withAccessibility:(id)accessibility error:(id *)error;
+ (id)fetchKeybagSecretForUUID:(id)d error:(id *)error;
+ (id)fetchValueForServiceName:(id)name accountName:(id)accountName error:(id *)error;
@end

@implementation MBKeychainManagerForKeychain

+ (id)fetchValueForServiceName:(id)name accountName:(id)accountName error:(id *)error
{
  nameCopy = name;
  accountNameCopy = accountName;
  result = 0;
  v19[0] = kSecClass;
  v19[1] = kSecAttrService;
  v20[0] = kSecClassGenericPassword;
  v20[1] = nameCopy;
  v19[2] = kSecAttrAccount;
  v19[3] = kSecReturnData;
  v20[2] = accountNameCopy;
  v20[3] = &__kCFBooleanTrue;
  v9 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:4];
  v10 = MBGetDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Calling SecItemCopyMatching with query: %{public}@", buf, 0xCu);
    _MBLog();
  }

  v11 = SecItemCopyMatching(v9, &result);
  if (!v11 && result)
  {
    v12 = [NSString alloc];
    v13 = [v12 initWithData:result encoding:4];
    CFRelease(result);
    goto LABEL_16;
  }

  if (v11 == -25308)
  {
    if (error)
    {
      [MBError errorWithCode:208 format:@"Cannot fetch %@:%@ from keychain while device is locked", nameCopy, accountNameCopy, v15];
      goto LABEL_14;
    }
  }

  else if (v11 == -25300)
  {
    if (error)
    {
      [MBError errorWithCode:4 format:@"%@:%@ not found in keychain", nameCopy, accountNameCopy, v15];
LABEL_14:
      *error = v13 = 0;
      goto LABEL_16;
    }
  }

  else if (error)
  {
    [MBError errorWithCode:1 format:@"Error copying %@:%@ from keychain (%d)", nameCopy, accountNameCopy, v11];
    goto LABEL_14;
  }

  v13 = 0;
LABEL_16:

  return v13;
}

+ (id)fetchKeybagSecretForUUID:(id)d error:(id *)error
{
  v4 = [self fetchValueForServiceName:@"BackupKeybagSecret" accountName:d error:error];
  if (v4)
  {
    v5 = [[NSData alloc] initWithBase64EncodedString:v4 options:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)addValue:(id)value forServiceName:(id)name accountName:(id)accountName withAccessibility:(id)accessibility error:(id *)error
{
  nameCopy = name;
  accountNameCopy = accountName;
  accessibilityCopy = accessibility;
  v23[0] = kSecClass;
  v23[1] = kSecAttrService;
  v24[0] = kSecClassGenericPassword;
  v24[1] = nameCopy;
  v23[2] = kSecAttrAccount;
  v23[3] = kSecAttrAccessible;
  v24[2] = accountNameCopy;
  v24[3] = accessibilityCopy;
  v24[4] = &__kCFBooleanFalse;
  v23[4] = kSecReturnData;
  v23[5] = kSecValueData;
  v14 = [value dataUsingEncoding:4];
  v24[5] = v14;
  v15 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:6];

  v16 = MBGetDefaultLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v22 = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Calling SecItemAdd with query: %{public}@", buf, 0xCu);
    _MBLog();
  }

  v17 = SecItemAdd(v15, 0);
  v18 = v17;
  if (v17)
  {
    if (v17 == -25308)
    {
      if (error)
      {
        [MBError errorWithCode:208 format:@"Cannot add %@:%@ while device is locked", nameCopy, accountNameCopy, v20];
        *error = LABEL_9:;
      }
    }

    else if (error)
    {
      [MBError errorWithCode:1 format:@"Error adding %@:%@ to keychain (%d)", nameCopy, accountNameCopy, v17];
      goto LABEL_9;
    }
  }

  return v18 == 0;
}

+ (BOOL)addKeybagSecret:(id)secret forUUID:(id)d error:(id *)error
{
  dCopy = d;
  v9 = [secret base64EncodedStringWithOptions:0];
  LOBYTE(error) = [self addValue:v9 forServiceName:@"BackupKeybagSecret" accountName:dCopy withAccessibility:kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly error:error];

  return error;
}

+ (BOOL)updateValue:(id)value forServiceName:(id)name accountName:(id)accountName withAccessibility:(id)accessibility error:(id *)error
{
  nameCopy = name;
  accountNameCopy = accountName;
  accessibilityCopy = accessibility;
  v29[0] = kSecClass;
  v29[1] = kSecAttrService;
  v30[0] = kSecClassGenericPassword;
  v30[1] = nameCopy;
  v29[2] = kSecAttrAccount;
  v29[3] = kSecReturnData;
  v30[2] = accountNameCopy;
  v30[3] = &__kCFBooleanFalse;
  valueCopy = value;
  v15 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:4];
  v27[0] = kSecValueData;
  v16 = [valueCopy dataUsingEncoding:4];

  v27[1] = kSecAttrAccessible;
  v28[0] = v16;
  v28[1] = accessibilityCopy;
  v17 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:2];

  v18 = MBGetDefaultLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v24 = v15;
    v25 = 2114;
    v26 = v17;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Calling SecItemUpdate with query:%{public}@ attributes:%{public}@", buf, 0x16u);
    _MBLog();
  }

  v19 = SecItemUpdate(v15, v17);
  v20 = v19;
  if (v19)
  {
    if (v19 == -25308)
    {
      if (error)
      {
        [MBError errorWithCode:208 format:@"Cannot update %@:%@ while device is locked", nameCopy, accountNameCopy, v22];
        *error = LABEL_9:;
      }
    }

    else if (error)
    {
      [MBError errorWithCode:1 format:@"Error updating %@:%@ in keychain (%d)", nameCopy, accountNameCopy, v19];
      goto LABEL_9;
    }
  }

  return v20 == 0;
}

+ (BOOL)updateKeybagSecret:(id)secret forUUID:(id)d error:(id *)error
{
  dCopy = d;
  v9 = [secret base64EncodedStringWithOptions:0];
  LOBYTE(error) = [self updateValue:v9 forServiceName:@"BackupKeybagSecret" accountName:dCopy withAccessibility:kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly error:error];

  return error;
}

+ (BOOL)removeValueWithServiceName:(id)name accountName:(id)accountName error:(id *)error
{
  nameCopy = name;
  accountNameCopy = accountName;
  v17[0] = kSecClass;
  v17[1] = kSecAttrService;
  v18[0] = kSecClassGenericPassword;
  v18[1] = nameCopy;
  v17[2] = kSecAttrAccount;
  v17[3] = kSecReturnData;
  v18[2] = accountNameCopy;
  v18[3] = &__kCFBooleanFalse;
  v9 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:4];
  v10 = MBGetDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Calling SecItemDelete with query:%{public}@", buf, 0xCu);
    _MBLog();
  }

  v11 = SecItemDelete(v9);
  v12 = v11;
  if (v11)
  {
    if (v11 == -25308)
    {
      if (error)
      {
        [MBError errorWithCode:208 format:@"Cannot remove %@:%@ while device is locked", nameCopy, accountNameCopy, v14];
        *error = LABEL_9:;
      }
    }

    else if (error)
    {
      [MBError errorWithCode:1 format:@"Error removing %@:%@ from keychain (%d)", nameCopy, accountNameCopy, v11];
      goto LABEL_9;
    }
  }

  return v12 == 0;
}

+ (BOOL)removeValueWithServiceName:(id)name error:(id *)error
{
  nameCopy = name;
  v14[0] = kSecClass;
  v14[1] = kSecAttrService;
  v15[0] = kSecClassGenericPassword;
  v15[1] = nameCopy;
  v14[2] = kSecReturnData;
  v15[2] = &__kCFBooleanFalse;
  v6 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:3];
  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Calling SecItemDelete without accountName for query:%{public}@", buf, 0xCu);
    _MBLog();
  }

  v8 = SecItemDelete(v6);
  v9 = v8;
  if (v8)
  {
    if (v8 == -25308)
    {
      if (error)
      {
        [MBError errorWithCode:208 format:@"Cannot remove %@ while device is locked", nameCopy, v11];
        *error = LABEL_9:;
      }
    }

    else if (error)
    {
      [MBError errorWithCode:1 format:@"Error removing %@ from keychain (%d)", nameCopy, v8];
      goto LABEL_9;
    }
  }

  return v9 == 0;
}

@end