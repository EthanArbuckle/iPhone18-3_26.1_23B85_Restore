@interface IDSPersistentMapDiskPersister
- (BOOL)isAvailable;
- (IDSPersistentMapDiskPersister)initWithIdentifier:(id)a3 dataProtectionClass:(int64_t)a4 keychainWrapper:(id)a5 systemMonitor:(id)a6 fileDirectory:(id)a7;
- (id)data;
- (void)purgeData;
- (void)saveData:(id)a3 allowBackup:(BOOL)a4;
@end

@implementation IDSPersistentMapDiskPersister

- (IDSPersistentMapDiskPersister)initWithIdentifier:(id)a3 dataProtectionClass:(int64_t)a4 keychainWrapper:(id)a5 systemMonitor:(id)a6 fileDirectory:(id)a7
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = IDSPersistentMapDiskPersister;
  v17 = [(IDSPersistentMapDiskPersister *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_identifier, a3);
    v18->_dataProtectionClass = a4;
    objc_storeStrong(&v18->_keychainWrapper, a5);
    objc_storeStrong(&v18->_systemMonitor, a6);
    objc_storeStrong(&v18->_directory, a7);
  }

  return v18;
}

- (BOOL)isAvailable
{
  v3 = [(IDSPersistentMapDiskPersister *)self dataProtectionClass];
  if (v3)
  {
    if (v3 != 1)
    {
      return 1;
    }

    v4 = [(IDSPersistentMapDiskPersister *)self systemMonitor];
    v5 = [v4 isUnderDataProtectionLock];
  }

  else
  {
    v4 = [(IDSPersistentMapDiskPersister *)self systemMonitor];
    v5 = [v4 isUnderFirstDataProtectionLock];
  }

  v6 = v5 ^ 1;

  return v6;
}

- (id)data
{
  if ([(IDSPersistentMapDiskPersister *)self isAvailable])
  {
    v3 = NSHomeDirectory();
    directory = self->_directory;
    v38[0] = v3;
    v38[1] = directory;
    v5 = [NSArray arrayWithObjects:v38 count:2];
    v6 = [NSString pathWithComponents:v5];

    identifier = self->_identifier;
    v37[0] = v6;
    v37[1] = identifier;
    v8 = [NSArray arrayWithObjects:v37 count:2];
    v9 = [NSString pathWithComponents:v8];

    v10 = [[NSData alloc] initWithContentsOfFile:v9];
    if ([v10 length] >= 0x11)
    {
      v30 = [NSString stringWithFormat:@"%@-aesKey", self->_identifier];
      v12 = [(IDSPersistentMapDiskPersister *)self keychainWrapper];
      v31 = 0;
      v13 = [v12 dataForIdentifier:v30 error:&v31];
      v29 = v31;

      if (v13 && [v13 length] == 16)
      {
        v14 = malloc_type_malloc(0x10uLL, 0x9BD27540uLL);
        [v10 getBytes:v14 range:{0, 16}];
        v15 = [v10 length] - 16;
        v28 = [v10 subdataWithRange:{16, v15}];
        v16 = [[NSMutableData alloc] initWithLength:v15];
        *v34 = 0xAAAAAAAAAAAAAAAALL;
        v17 = v13;
        key = [v13 bytes];
        v18 = v28;
        v19 = [v28 bytes];
        v20 = [v28 length];
        v21 = v16;
        v22 = CCCrypt(1u, 0, 1u, key, 0x10uLL, v14, v19, v20, [v16 mutableBytes], objc_msgSend(v16, "length"), v34);
        free(v14);
        if (v22)
        {
          v23 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            v33 = v22;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "CCCrypt failed -- purging && returning nil {cryptResult: %d}", buf, 8u);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            dataOut = v22;
            _IDSLogV();
          }

          [(IDSPersistentMapDiskPersister *)self purgeData];
          v11 = 0;
        }

        else
        {
          [v16 setLength:*v34];
          v11 = v16;
        }
      }

      else
      {
        v24 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *v34 = 138412546;
          *&v34[4] = v29;
          v35 = 2112;
          v36 = v30;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Failed To load key -- returning nil {error: %@, keyIdentifier: %@}", v34, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          _IDSLogV();
        }

        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)saveData:(id)a3 allowBackup:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([(IDSPersistentMapDiskPersister *)self isAvailable])
  {
    v7 = NSHomeDirectory();
    directory = self->_directory;
    v52[0] = v7;
    v52[1] = directory;
    v9 = [NSArray arrayWithObjects:v52 count:2];
    v10 = [NSString pathWithComponents:v9];

    identifier = self->_identifier;
    v51[0] = v10;
    v51[1] = identifier;
    v12 = [NSArray arrayWithObjects:v51 count:2];
    v13 = [NSString pathWithComponents:v12];

    LODWORD(v12) = [v6 length] == 0;
    v14 = +[NSFileManager defaultManager];
    v15 = v14;
    if (v12)
    {
      v47 = 0;
      v19 = [v14 removeItemAtPath:v13 error:&v47];
      v42 = v47;

      if ((v19 & 1) == 0)
      {
        v20 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *&buf[4] = v42;
          v49 = 2112;
          v50 = v13;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Failed To remove file {error: %@, path: %@}", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          _IDSLogV();
        }
      }

      goto LABEL_42;
    }

    v46 = 0;
    [v14 createDirectoryAtPath:v10 withIntermediateDirectories:1 attributes:0 error:&v46];
    v42 = v46;

    v16 = malloc_type_malloc(0x10uLL, 0xAD651AADuLL);
    v17 = SecRandomCopyBytes(kSecRandomDefault, 0x10uLL, v16);
    if (v17)
    {
      v18 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v17;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Failed To Generate IV {ivResult: %d}", buf, 8u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      free(v16);
      goto LABEL_42;
    }

    v21 = [(IDSPersistentMapDiskPersister *)self keychainWrapper];
    v22 = [NSString stringWithFormat:@"%@-aesKey", self->_identifier];
    v45 = 0;
    v23 = [v21 dataForIdentifier:v22 error:&v45];
    v41 = v45;

    if (!v23 || [v23 length] != 16)
    {
      v24 = malloc_type_malloc(0x10uLL, 0xEFDDE0EuLL);
      v25 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *&buf[4] = v41;
        v49 = 2112;
        v50 = v23;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Failed to get a stored key, generating a new key {error: %@, result: %@}", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      v26 = SecRandomCopyBytes(kSecRandomDefault, 0x10uLL, v24);
      if (v26)
      {
        v27 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = v26;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Failed To Generate key {keyResult: %d}", buf, 8u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          _IDSLogV();
        }

        free(v16);
        free(v24);
LABEL_41:

LABEL_42:
        goto LABEL_43;
      }

      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_10061AAE0;
      v44[3] = &unk_100BDD958;
      v44[4] = v24;
      v28 = [[NSData alloc] initWithBytesNoCopy:v24 length:16 deallocator:v44];

      v29 = [(IDSPersistentMapDiskPersister *)self keychainWrapper];
      v30 = [NSString stringWithFormat:@"%@-aesKey", self->_identifier];
      v43 = 0;
      [v29 saveData:v28 forIdentifier:v30 allowSync:0 allowBackup:v4 dataProtectionClass:-[IDSPersistentMapDiskPersister dataProtectionClass](self error:{"dataProtectionClass"), &v43}];
      v31 = v43;

      if (v31)
      {
        v32 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v31;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Failed to save key -- returning {keySaveError: %@}", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          _IDSLogV();
        }

        free(v16);

        v23 = v28;
        goto LABEL_41;
      }

      v23 = v28;
    }

    v33 = +[NSMutableData dataWithLength:](NSMutableData, "dataWithLength:", [v6 length] + 16);
    *buf = 0xAAAAAAAAAAAAAAAALL;
    v34 = v23;
    v35 = [v23 bytes];
    v36 = v6;
    v37 = [v6 bytes];
    v38 = [v6 length];
    v39 = v33;
    if (!CCCrypt(0, 0, 1u, v35, 0x10uLL, v16, v37, v38, [v33 mutableBytes], objc_msgSend(v33, "length"), buf))
    {
      [v33 setLength:*buf];
    }

    v40 = objc_alloc_init(NSMutableData);
    [v40 appendBytes:v16 length:16];
    [v40 appendData:v33];
    [v40 writeToFile:v13 atomically:1];
    free(v16);

    goto LABEL_41;
  }

LABEL_43:
}

- (void)purgeData
{
  if ([(IDSPersistentMapDiskPersister *)self isAvailable])
  {
    [(IDSPersistentMapDiskPersister *)self saveData:0 allowBackup:1];
    v3 = [(IDSPersistentMapDiskPersister *)self keychainWrapper];
    v4 = [NSString stringWithFormat:@"%@-aesKey", self->_identifier];
    v9 = 0;
    v5 = [v3 removeDataForIdentifier:v4 dataProtectionClass:0 error:&v9];
    v6 = v9;

    if ((v5 & 1) == 0)
    {
      v7 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v11 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Failed to purge stored key {removeError: %@}", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }
  }

  else
  {
    v8 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = self;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Tried to purge before available -- returning {self: %@}", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

@end