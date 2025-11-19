@interface DSKeychainPersistence
- (BOOL)loadListenerState:(id *)a3 withError:(id *)a4;
- (BOOL)removeListenerState:(id)a3 withError:(id *)a4;
- (BOOL)saveListenerState:(id)a3 withError:(id *)a4;
- (DSKeychainPersistence)initWithQueue:(id)a3;
@end

@implementation DSKeychainPersistence

- (DSKeychainPersistence)initWithQueue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = DSKeychainPersistence;
  v6 = [(DSKeychainPersistence *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clientQueue, a3);
  }

  return v7;
}

- (BOOL)saveListenerState:(id)a3 withError:(id *)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 identifier];

    if (v7)
    {
      v8 = objc_alloc_init(MEMORY[0x277D02868]);
      [v8 setInvisible:1];
      [v8 setSyncType:1];
      [v8 setAccessibleType:6];
      [v8 setAccessGroup:@"com.apple.distributedsensing"];
      v9 = MEMORY[0x277CCACA8];
      v10 = [v6 inOptions];
      v11 = [v10 dataSubType];
      v12 = "?";
      if (v11 == 1)
      {
        v12 = "motionState";
      }

      if (v11)
      {
        v13 = v12;
      }

      else
      {
        v13 = "Unknown";
      }

      v14 = [v9 stringWithUTF8String:v13];
      [v8 setType:v14];

      [v8 setIdentifier:@"com.apple.distributedsensing.listenerState"];
      v15 = +[DSLogging sharedInstance];
      v16 = [v15 dsLogger];

      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_249027000, v16, OS_LOG_TYPE_DEFAULT, "[DSKeychainPersistence] creating a new metadata dictionary\n", buf, 2u);
      }

      v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v18 = [v6 identifier];
      [v17 setObject:v18 forKeyedSubscript:@"dsDeviceIDKey"];

      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v6, "version")}];
      [v17 setObject:v19 forKeyedSubscript:@"dsVersionKey"];

      v20 = MEMORY[0x277CCABB0];
      v21 = [v6 inOptions];
      v22 = [v20 numberWithUnsignedInt:{objc_msgSend(v21, "dataSubType")}];
      [v17 setObject:v22 forKeyedSubscript:@"dsOptionDataSubTypeKey"];

      v23 = MEMORY[0x277CCABB0];
      v24 = [v6 inOptions];
      v25 = [v23 numberWithUnsignedInt:{objc_msgSend(v24, "deviceType")}];
      [v17 setObject:v25 forKeyedSubscript:@"dsOptionDeviceTypeKey"];

      [v8 setMetadata:v17];
      v26 = objc_alloc_init(MEMORY[0x277D02870]);
      v46 = 0;
      v27 = [v26 addItem:v8 error:&v46];
      v28 = v46;
      if ([v28 code] == -25299)
      {
        v29 = +[DSLogging sharedInstance];
        v30 = [v29 dsLogger];

        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_249027000, v30, OS_LOG_TYPE_DEFAULT, "[DSKeychainPersistence] Keychain item already exists, updating item \n", buf, 2u);
        }

        v31 = objc_alloc_init(MEMORY[0x277D02868]);
        [v31 setInvisible:1];
        [v31 setSyncType:1];
        [v31 setAccessibleType:6];
        [v31 setAccessGroup:@"com.apple.distributedsensing"];
        [v31 setIdentifier:@"com.apple.distributedsensing.listenerState"];
        v45 = v28;
        v32 = [v26 updateItem:v8 matchingItem:v31 error:&v45];
        v33 = v45;

        v28 = v33;
        if ((v32 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else if ((v27 & 1) == 0)
      {
LABEL_14:
        v34 = +[DSLogging sharedInstance];
        v35 = [v34 dsLogger];

        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v48 = v28;
          _os_log_impl(&dword_249027000, v35, OS_LOG_TYPE_DEFAULT, "[DSKeychainPersistence] Failed to add keychain item with error %@", buf, 0xCu);
        }

        if (a4)
        {
          v36 = v28;
          v37 = 0;
          *a4 = v28;
        }

        else
        {
          v37 = 0;
        }

LABEL_28:

        goto LABEL_29;
      }

      v40 = +[DSLogging sharedInstance];
      v41 = [v40 dsLogger];

      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v42 = [v6 identifier];
        *buf = 138412290;
        v48 = v42;
        _os_log_impl(&dword_249027000, v41, OS_LOG_TYPE_DEFAULT, "[DSKeychainPersistence] saved keychain item for device %@\n", buf, 0xCu);
      }

      v37 = 1;
      goto LABEL_28;
    }
  }

  v38 = +[DSLogging sharedInstance];
  v39 = [v38 dsLogger];

  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_249027000, v39, OS_LOG_TYPE_DEFAULT, "[DSKeychainPersistence] trying to store invalid listener ID to keychain\n", buf, 2u);
  }

  v37 = 0;
  if (a4)
  {
    *a4 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"DSErrorDomain" code:2 userInfo:0];
  }

LABEL_29:

  v43 = *MEMORY[0x277D85DE8];
  return v37;
}

- (BOOL)removeListenerState:(id)a3 withError:(id *)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 identifier];

    if (v7)
    {
      v8 = +[DSLogging sharedInstance];
      v9 = [v8 dsLogger];

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v6 identifier];
        *buf = 138412290;
        v31 = v10;
        _os_log_impl(&dword_249027000, v9, OS_LOG_TYPE_DEFAULT, "Removing keychain item for device %@\n", buf, 0xCu);
      }

      v11 = objc_alloc_init(MEMORY[0x277D02868]);
      [v11 setInvisible:1];
      [v11 setSyncType:1];
      [v11 setAccessibleType:6];
      [v11 setAccessGroup:@"com.apple.distributedsensing"];
      [v11 setIdentifier:@"com.apple.distributedsensing.listenerState"];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"motionState"];
      [v11 setType:v12];

      v13 = objc_alloc_init(MEMORY[0x277D02870]);
      v29 = 0;
      v14 = [v13 removeItemMatchingItem:v11 error:&v29];
      v15 = v29;
      v16 = v15;
      if (v15 && [v15 code] == -25300)
      {
        v17 = +[DSLogging sharedInstance];
        v18 = [v17 dsLogger];

        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v31 = v16;
          _os_log_impl(&dword_249027000, v18, OS_LOG_TYPE_DEFAULT, "[DSKeychainPersistence] Keychain item not found with error %@\n", buf, 0xCu);
        }
      }

      else
      {
        v22 = +[DSLogging sharedInstance];
        v23 = [v22 dsLogger];

        v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
        if ((v14 & 1) == 0)
        {
          if (v24)
          {
            *buf = 138412290;
            v31 = v16;
            _os_log_impl(&dword_249027000, v23, OS_LOG_TYPE_DEFAULT, "[DSKeychainPersistence] Failed to remove keychain item with error %@\n", buf, 0xCu);
          }

          if (a4)
          {
            v26 = v16;
            v21 = 0;
            *a4 = v16;
          }

          else
          {
            v21 = 0;
          }

          goto LABEL_25;
        }

        if (v24)
        {
          v25 = [v6 identifier];
          *buf = 138412290;
          v31 = v25;
          _os_log_impl(&dword_249027000, v23, OS_LOG_TYPE_DEFAULT, "[DSKeychainPersistence] Removed keychain item for device %@\n", buf, 0xCu);
        }
      }

      v21 = 1;
LABEL_25:

      goto LABEL_26;
    }
  }

  v19 = +[DSLogging sharedInstance];
  v20 = [v19 dsLogger];

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_249027000, v20, OS_LOG_TYPE_DEFAULT, "[DSKeychainPersistence] trying to remove invalid listener device from keychain\n", buf, 2u);
  }

  v21 = 0;
  if (a4)
  {
    *a4 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"DSErrorDomain" code:2 userInfo:0];
  }

LABEL_26:

  v27 = *MEMORY[0x277D85DE8];
  return v21;
}

- (BOOL)loadListenerState:(id *)a3 withError:(id *)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v7 = objc_alloc_init(MEMORY[0x277D02868]);
  [v7 setAccessGroup:@"com.apple.distributedsensing"];
  [v7 setSyncType:1];
  [v7 setIdentifier:@"com.apple.distributedsensing.listenerState"];
  v8 = objc_alloc_init(MEMORY[0x277D02870]);
  v39 = 0;
  v9 = [v8 copyItemMatchingItem:v7 flags:1 error:&v39];
  v10 = v39;
  if (v9)
  {
    v11 = [MEMORY[0x277CBEAA8] date];
    v12 = [v9 dateModified];

    if (v12)
    {
      [v9 dateModified];
    }

    else
    {
      [v9 dateCreated];
    }
    v38 = ;
    [v11 timeIntervalSinceDate:v38];
    if (v17 < 0x1C21)
    {
      v37 = v10;
      v20 = [v9 metadata];
      CFStringGetTypeID();
      v21 = CFDictionaryGetTypedValue();
      if (v21)
      {
        v36 = v11;
        Int64Ranged = CFDictionaryGetInt64Ranged();
        v22 = CFDictionaryGetInt64Ranged();
        v23 = CFDictionaryGetInt64Ranged();
        v24 = objc_alloc_init(DSClientMotionDataOptions);
        [(DSClientMotionDataOptions *)v24 setDataSubType:v22];
        [(DSClientMotionDataOptions *)v24 setDeviceType:v23];
        v25 = objc_alloc_init(MEMORY[0x277D44170]);
        [v25 setIdentifier:v21];
        v26 = [[DSListenerDevice alloc] initWithRapportDevice:v25 queue:self->_clientQueue];
        [(DSListenerDevice *)v26 setVersion:Int64Ranged];
        [(DSListenerDevice *)v26 setInOptions:v24];
        if (a3)
        {
          v27 = v26;
          *a3 = v26;
        }

        v28 = +[DSLogging sharedInstance];
        v29 = [v28 dsLogger];

        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = [(DSRapportDevice *)v26 identifier];
          *buf = 138412290;
          v41 = v30;
          _os_log_impl(&dword_249027000, v29, OS_LOG_TYPE_DEFAULT, "[DSKeychainPersistence] keychain item loaded for device %@\n", buf, 0xCu);
        }

        v16 = [v8 removeItemMatchingItem:v9 error:0];
        v11 = v36;
      }

      else
      {
        v31 = +[DSLogging sharedInstance];
        v32 = [v31 dsLogger];

        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_249027000, v32, OS_LOG_TYPE_DEFAULT, "[DSKeychainPersistence] invalid device ID\n", buf, 2u);
        }

        v16 = 0;
        if (a4)
        {
          *a4 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"DSErrorDomain" code:1 userInfo:0];
        }
      }

      v10 = v37;
    }

    else
    {
      v18 = +[DSLogging sharedInstance];
      v19 = [v18 dsLogger];

      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_249027000, v19, OS_LOG_TYPE_DEFAULT, "[DSKeychainPersistence] found keychain item too old\n", buf, 2u);
      }

      [v8 removeItemMatchingItem:v9 error:0];
      v16 = 0;
      if (a4)
      {
        *a4 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"DSErrorDomain" code:1 userInfo:0];
      }
    }
  }

  else
  {
    v13 = +[DSLogging sharedInstance];
    v14 = [v13 dsLogger];

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v41 = v10;
      _os_log_impl(&dword_249027000, v14, OS_LOG_TYPE_DEFAULT, "[DSKeychainPersistence] Unable to find keychain item with error: %@", buf, 0xCu);
    }

    if (a4)
    {
      v15 = v10;
      v16 = 0;
      *a4 = v10;
    }

    else
    {
      v16 = 0;
    }
  }

  v33 = *MEMORY[0x277D85DE8];
  return v16;
}

@end