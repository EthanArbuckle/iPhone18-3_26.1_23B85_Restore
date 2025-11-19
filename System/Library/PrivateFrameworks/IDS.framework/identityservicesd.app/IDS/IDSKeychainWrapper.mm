@interface IDSKeychainWrapper
+ (BOOL)_isKeychainError:(id)a3 withOSStatus:(int)a4;
+ (id)descriptionForDataProtectionClass:(int64_t)a3;
+ (id)shortDescriptionForDataProtectionClass:(int64_t)a3;
- (BOOL)removeDataForIdentifier:(id)a3 dataProtectionClass:(int64_t)a4 error:(id *)a5;
- (BOOL)saveData:(id)a3 forIdentifier:(id)a4 allowSync:(BOOL)a5 allowBackup:(BOOL)a6 dataProtectionClass:(int64_t)a7 error:(id *)a8;
- (id)dataForIdentifier:(id)a3 error:(id *)a4;
- (void)saveData:(id)a3 forIdentifier:(id)a4 dataProtectionClass:(int64_t)a5 withCompletion:(id)a6;
@end

@implementation IDSKeychainWrapper

+ (BOOL)_isKeychainError:(id)a3 withOSStatus:(int)a4
{
  v4 = *&a4;
  v5 = a3;
  v6 = [v5 domain];
  if ([v6 isEqualToString:@"IDSKeychainWrapperErrorDomain"] && objc_msgSend(v5, "code") == -2000)
  {
    v7 = [v5 userInfo];
    v8 = [v7 objectForKeyedSubscript:@"IDSKeychainWrapperErrorOSStatus"];
    v9 = [NSNumber numberWithInt:v4];
    v10 = [v8 isEqual:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)shortDescriptionForDataProtectionClass:(int64_t)a3
{
  v3 = @"A";
  if (!a3)
  {
    v3 = @"C";
  }

  if (a3 == 2)
  {
    return @"D";
  }

  else
  {
    return v3;
  }
}

+ (id)descriptionForDataProtectionClass:(int64_t)a3
{
  v3 = @"Class D";
  if (!a3)
  {
    v3 = @"Class C";
  }

  if (a3 == 1)
  {
    return @"Class A";
  }

  else
  {
    return v3;
  }
}

- (id)dataForIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(IDSKeychainWrapper *)self _keychainAccountFromBaseIdentifier:v6];
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

    a4 = v10;
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

    if (a4)
    {
      v17 = @"IDSKeychainWrapperErrorOSStatus";
      v14 = [NSNumber numberWithInt:0];
      v18 = v14;
      v15 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      *a4 = [NSError errorWithDomain:@"IDSKeychainWrapperErrorDomain" code:-2000 userInfo:v15];

      a4 = 0;
    }
  }

  return a4;
}

- (BOOL)saveData:(id)a3 forIdentifier:(id)a4 allowSync:(BOOL)a5 allowBackup:(BOOL)a6 dataProtectionClass:(int64_t)a7 error:(id *)a8
{
  v11 = a3;
  v12 = a4;
  v13 = [(IDSKeychainWrapper *)self _keychainAccountFromBaseIdentifier:v12];
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

  if ([v11 length])
  {
    v15 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v11 length];
      *buf = 134217984;
      v31 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "  => Will save %ld bytes", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      [v11 length];
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

      if (a8)
      {
        v28 = @"IDSKeychainWrapperErrorOSStatus";
        v18 = [NSNumber numberWithInt:0];
        v29 = v18;
        v19 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
        v20 = [NSError errorWithDomain:@"IDSKeychainWrapperErrorDomain" code:-2000 userInfo:v19];
LABEL_34:
        *a8 = v20;

        LOBYTE(a8) = 0;
        goto LABEL_35;
      }

      goto LABEL_35;
    }

LABEL_26:
    LOBYTE(a8) = 1;
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

  if (a8)
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

  return a8;
}

- (void)saveData:(id)a3 forIdentifier:(id)a4 dataProtectionClass:(int64_t)a5 withCompletion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [(IDSKeychainWrapper *)self _keychainAccountFromBaseIdentifier:v10];
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
    v15 = [v9 length];
    *buf = 134217984;
    v19 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "  => Will save %ld bytes", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    [v9 length];
    _IDSLogV();
  }

  v17 = v11;
  v16 = v11;
  IMSetKeychainDataWithProtectionWithCompletion();
}

- (BOOL)removeDataForIdentifier:(id)a3 dataProtectionClass:(int64_t)a4 error:(id *)a5
{
  v11 = 0;
  v6 = [(IDSKeychainWrapper *)self saveData:0 forIdentifier:a3 allowSync:0 dataProtectionClass:a4 error:&v11];
  v7 = v11;
  if (v6 & 1) != 0 || ([objc_opt_class() isItemNotFoundError:v7])
  {
    v8 = 1;
  }

  else if (a5)
  {
    v10 = v7;
    v8 = 0;
    *a5 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end