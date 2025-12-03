@interface IDSKeychainWrapper
+ (BOOL)_isKeychainError:(id)error withOSStatus:(int)status;
+ (id)descriptionForDataProtectionClass:(int64_t)class;
+ (id)shortDescriptionForDataProtectionClass:(int64_t)class;
- (BOOL)removeDataForIdentifier:(id)identifier dataProtectionClass:(int64_t)class error:(id *)error;
- (BOOL)saveData:(id)data forIdentifier:(id)identifier allowSync:(BOOL)sync allowBackup:(BOOL)backup dataProtectionClass:(int64_t)class error:(id *)error;
- (id)dataForIdentifier:(id)identifier error:(id *)error;
- (void)saveData:(id)data forIdentifier:(id)identifier dataProtectionClass:(int64_t)class withCompletion:(id)completion;
@end

@implementation IDSKeychainWrapper

+ (BOOL)_isKeychainError:(id)error withOSStatus:(int)status
{
  v4 = *&status;
  errorCopy = error;
  domain = [errorCopy domain];
  if ([domain isEqualToString:@"IDSKeychainWrapperErrorDomain"] && objc_msgSend(errorCopy, "code") == -2000)
  {
    userInfo = [errorCopy userInfo];
    v8 = [userInfo objectForKeyedSubscript:@"IDSKeychainWrapperErrorOSStatus"];
    v9 = [NSNumber numberWithInt:v4];
    v10 = [v8 isEqual:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)shortDescriptionForDataProtectionClass:(int64_t)class
{
  v3 = @"A";
  if (!class)
  {
    v3 = @"C";
  }

  if (class == 2)
  {
    return @"D";
  }

  else
  {
    return v3;
  }
}

+ (id)descriptionForDataProtectionClass:(int64_t)class
{
  v3 = @"Class D";
  if (!class)
  {
    v3 = @"Class C";
  }

  if (class == 1)
  {
    return @"Class A";
  }

  else
  {
    return v3;
  }
}

- (id)dataForIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v7 = [(IDSKeychainWrapper *)self _keychainAccountFromBaseIdentifier:identifierCopy];
  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Loading IDS keychain data with account %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v9 = IMGetKeychainData();
  v10 = 0;
  if (v9)
  {
    v11 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v10 length];
      *buf = 134217984;
      v20 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "  => Done loading IDS keychain data (loaded %ld bytes)", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      [v10 length];
      _IDSLogV();
    }

    error = v10;
  }

  else
  {
    v13 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v20 = v7;
      v21 = 1024;
      v22 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "  => Unable to load keychain data for account %@ (error: %d)", buf, 0x12u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    if (error)
    {
      v17 = @"IDSKeychainWrapperErrorOSStatus";
      v14 = [NSNumber numberWithInt:0];
      v18 = v14;
      v15 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      *error = [NSError errorWithDomain:@"IDSKeychainWrapperErrorDomain" code:-2000 userInfo:v15];

      error = 0;
    }
  }

  return error;
}

- (BOOL)saveData:(id)data forIdentifier:(id)identifier allowSync:(BOOL)sync allowBackup:(BOOL)backup dataProtectionClass:(int64_t)class error:(id *)error
{
  dataCopy = data;
  identifierCopy = identifier;
  v13 = [(IDSKeychainWrapper *)self _keychainAccountFromBaseIdentifier:identifierCopy];
  v14 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Saving IDS keychain data with account %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v25 = v13;
    _IDSLogV();
  }

  if ([dataCopy length])
  {
    v15 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [dataCopy length];
      *buf = 134217984;
      v31 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "  => Will save %ld bytes", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      [dataCopy length];
      _IDSLogV();
    }

    if ((IMSetKeychainDataWithProtection() & 1) == 0)
    {
      v17 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v31 = v13;
        v32 = 1024;
        v33 = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, " => Failed setting keychain data for account %@ (error: %d)", buf, 0x12u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      if (error)
      {
        v28 = @"IDSKeychainWrapperErrorOSStatus";
        v18 = [NSNumber numberWithInt:0];
        v29 = v18;
        v19 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
        v20 = [NSError errorWithDomain:@"IDSKeychainWrapperErrorDomain" code:-2000 userInfo:v19];
LABEL_34:
        *error = v20;

        LOBYTE(error) = 0;
        goto LABEL_35;
      }

      goto LABEL_35;
    }

LABEL_26:
    LOBYTE(error) = 1;
    goto LABEL_35;
  }

  v21 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "  => Will clear keychain cache", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  if (IMRemoveKeychainData())
  {
    goto LABEL_26;
  }

  v22 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v31 = v13;
    v32 = 1024;
    v33 = 0;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "  => Failed removing keychain data for account %@ (error: %d)", buf, 0x12u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  if (error)
  {
    v26 = @"IDSKeychainWrapperErrorOSStatus";
    v18 = [NSNumber numberWithInt:0];
    v27 = v18;
    v19 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v20 = [NSError errorWithDomain:@"IDSKeychainWrapperErrorDomain" code:-2000 userInfo:v19];
    goto LABEL_34;
  }

LABEL_35:
  v23 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, " => Done saving IDS keychain data", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  return error;
}

- (void)saveData:(id)data forIdentifier:(id)identifier dataProtectionClass:(int64_t)class withCompletion:(id)completion
{
  dataCopy = data;
  identifierCopy = identifier;
  completionCopy = completion;
  v12 = [(IDSKeychainWrapper *)self _keychainAccountFromBaseIdentifier:identifierCopy];
  v13 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Saving IDS keychain data with account %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v14 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [dataCopy length];
    *buf = 134217984;
    v19 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "  => Will save %ld bytes", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    [dataCopy length];
    _IDSLogV();
  }

  v17 = completionCopy;
  v16 = completionCopy;
  IMSetKeychainDataWithProtectionWithCompletion();
}

- (BOOL)removeDataForIdentifier:(id)identifier dataProtectionClass:(int64_t)class error:(id *)error
{
  v11 = 0;
  v6 = [(IDSKeychainWrapper *)self saveData:0 forIdentifier:identifier allowSync:0 dataProtectionClass:class error:&v11];
  v7 = v11;
  if (v6 & 1) != 0 || ([objc_opt_class() isItemNotFoundError:v7])
  {
    v8 = 1;
  }

  else if (error)
  {
    v10 = v7;
    v8 = 0;
    *error = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end