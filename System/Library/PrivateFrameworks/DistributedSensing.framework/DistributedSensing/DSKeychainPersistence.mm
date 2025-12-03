@interface DSKeychainPersistence
- (BOOL)loadListenerState:(id *)state withError:(id *)error;
- (BOOL)removeListenerState:(id)state withError:(id *)error;
- (BOOL)saveListenerState:(id)state withError:(id *)error;
- (DSKeychainPersistence)initWithQueue:(id)queue;
@end

@implementation DSKeychainPersistence

- (DSKeychainPersistence)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = DSKeychainPersistence;
  v6 = [(DSKeychainPersistence *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clientQueue, queue);
  }

  return v7;
}

- (BOOL)saveListenerState:(id)state withError:(id *)error
{
  v49 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v6 = stateCopy;
  if (stateCopy)
  {
    identifier = [stateCopy identifier];

    if (identifier)
    {
      v8 = objc_alloc_init(MEMORY[0x277D02868]);
      [v8 setInvisible:1];
      [v8 setSyncType:1];
      [v8 setAccessibleType:6];
      [v8 setAccessGroup:@"com.apple.distributedsensing"];
      v9 = MEMORY[0x277CCACA8];
      inOptions = [v6 inOptions];
      dataSubType = [inOptions dataSubType];
      v12 = "?";
      if (dataSubType == 1)
      {
        v12 = "motionState";
      }

      if (dataSubType)
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
      dsLogger = [v15 dsLogger];

      if (os_log_type_enabled(dsLogger, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_249027000, dsLogger, OS_LOG_TYPE_DEFAULT, "[DSKeychainPersistence] creating a new metadata dictionary\n", buf, 2u);
      }

      v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
      identifier2 = [v6 identifier];
      [v17 setObject:identifier2 forKeyedSubscript:@"dsDeviceIDKey"];

      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v6, "version")}];
      [v17 setObject:v19 forKeyedSubscript:@"dsVersionKey"];

      v20 = MEMORY[0x277CCABB0];
      inOptions2 = [v6 inOptions];
      v22 = [v20 numberWithUnsignedInt:{objc_msgSend(inOptions2, "dataSubType")}];
      [v17 setObject:v22 forKeyedSubscript:@"dsOptionDataSubTypeKey"];

      v23 = MEMORY[0x277CCABB0];
      inOptions3 = [v6 inOptions];
      v25 = [v23 numberWithUnsignedInt:{objc_msgSend(inOptions3, "deviceType")}];
      [v17 setObject:v25 forKeyedSubscript:@"dsOptionDeviceTypeKey"];

      [v8 setMetadata:v17];
      v26 = objc_alloc_init(MEMORY[0x277D02870]);
      v46 = 0;
      v27 = [v26 addItem:v8 error:&v46];
      v28 = v46;
      if ([v28 code] == -25299)
      {
        v29 = +[DSLogging sharedInstance];
        dsLogger2 = [v29 dsLogger];

        if (os_log_type_enabled(dsLogger2, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_249027000, dsLogger2, OS_LOG_TYPE_DEFAULT, "[DSKeychainPersistence] Keychain item already exists, updating item \n", buf, 2u);
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
        dsLogger3 = [v34 dsLogger];

        if (os_log_type_enabled(dsLogger3, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v48 = v28;
          _os_log_impl(&dword_249027000, dsLogger3, OS_LOG_TYPE_DEFAULT, "[DSKeychainPersistence] Failed to add keychain item with error %@", buf, 0xCu);
        }

        if (error)
        {
          v36 = v28;
          v37 = 0;
          *error = v28;
        }

        else
        {
          v37 = 0;
        }

LABEL_28:

        goto LABEL_29;
      }

      v40 = +[DSLogging sharedInstance];
      dsLogger4 = [v40 dsLogger];

      if (os_log_type_enabled(dsLogger4, OS_LOG_TYPE_DEFAULT))
      {
        identifier3 = [v6 identifier];
        *buf = 138412290;
        v48 = identifier3;
        _os_log_impl(&dword_249027000, dsLogger4, OS_LOG_TYPE_DEFAULT, "[DSKeychainPersistence] saved keychain item for device %@\n", buf, 0xCu);
      }

      v37 = 1;
      goto LABEL_28;
    }
  }

  v38 = +[DSLogging sharedInstance];
  dsLogger5 = [v38 dsLogger];

  if (os_log_type_enabled(dsLogger5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_249027000, dsLogger5, OS_LOG_TYPE_DEFAULT, "[DSKeychainPersistence] trying to store invalid listener ID to keychain\n", buf, 2u);
  }

  v37 = 0;
  if (error)
  {
    *error = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"DSErrorDomain" code:2 userInfo:0];
  }

LABEL_29:

  v43 = *MEMORY[0x277D85DE8];
  return v37;
}

- (BOOL)removeListenerState:(id)state withError:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v6 = stateCopy;
  if (stateCopy)
  {
    identifier = [stateCopy identifier];

    if (identifier)
    {
      v8 = +[DSLogging sharedInstance];
      dsLogger = [v8 dsLogger];

      if (os_log_type_enabled(dsLogger, OS_LOG_TYPE_DEFAULT))
      {
        identifier2 = [v6 identifier];
        *buf = 138412290;
        v31 = identifier2;
        _os_log_impl(&dword_249027000, dsLogger, OS_LOG_TYPE_DEFAULT, "Removing keychain item for device %@\n", buf, 0xCu);
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
        dsLogger2 = [v17 dsLogger];

        if (os_log_type_enabled(dsLogger2, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v31 = v16;
          _os_log_impl(&dword_249027000, dsLogger2, OS_LOG_TYPE_DEFAULT, "[DSKeychainPersistence] Keychain item not found with error %@\n", buf, 0xCu);
        }
      }

      else
      {
        v22 = +[DSLogging sharedInstance];
        dsLogger3 = [v22 dsLogger];

        v24 = os_log_type_enabled(dsLogger3, OS_LOG_TYPE_DEFAULT);
        if ((v14 & 1) == 0)
        {
          if (v24)
          {
            *buf = 138412290;
            v31 = v16;
            _os_log_impl(&dword_249027000, dsLogger3, OS_LOG_TYPE_DEFAULT, "[DSKeychainPersistence] Failed to remove keychain item with error %@\n", buf, 0xCu);
          }

          if (error)
          {
            v26 = v16;
            v21 = 0;
            *error = v16;
          }

          else
          {
            v21 = 0;
          }

          goto LABEL_25;
        }

        if (v24)
        {
          identifier3 = [v6 identifier];
          *buf = 138412290;
          v31 = identifier3;
          _os_log_impl(&dword_249027000, dsLogger3, OS_LOG_TYPE_DEFAULT, "[DSKeychainPersistence] Removed keychain item for device %@\n", buf, 0xCu);
        }
      }

      v21 = 1;
LABEL_25:

      goto LABEL_26;
    }
  }

  v19 = +[DSLogging sharedInstance];
  dsLogger4 = [v19 dsLogger];

  if (os_log_type_enabled(dsLogger4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_249027000, dsLogger4, OS_LOG_TYPE_DEFAULT, "[DSKeychainPersistence] trying to remove invalid listener device from keychain\n", buf, 2u);
  }

  v21 = 0;
  if (error)
  {
    *error = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"DSErrorDomain" code:2 userInfo:0];
  }

LABEL_26:

  v27 = *MEMORY[0x277D85DE8];
  return v21;
}

- (BOOL)loadListenerState:(id *)state withError:(id *)error
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
    date = [MEMORY[0x277CBEAA8] date];
    dateModified = [v9 dateModified];

    if (dateModified)
    {
      [v9 dateModified];
    }

    else
    {
      [v9 dateCreated];
    }
    v38 = ;
    [date timeIntervalSinceDate:v38];
    if (v17 < 0x1C21)
    {
      v37 = v10;
      metadata = [v9 metadata];
      CFStringGetTypeID();
      v21 = CFDictionaryGetTypedValue();
      if (v21)
      {
        v36 = date;
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
        if (state)
        {
          v27 = v26;
          *state = v26;
        }

        v28 = +[DSLogging sharedInstance];
        dsLogger = [v28 dsLogger];

        if (os_log_type_enabled(dsLogger, OS_LOG_TYPE_DEFAULT))
        {
          identifier = [(DSRapportDevice *)v26 identifier];
          *buf = 138412290;
          v41 = identifier;
          _os_log_impl(&dword_249027000, dsLogger, OS_LOG_TYPE_DEFAULT, "[DSKeychainPersistence] keychain item loaded for device %@\n", buf, 0xCu);
        }

        v16 = [v8 removeItemMatchingItem:v9 error:0];
        date = v36;
      }

      else
      {
        v31 = +[DSLogging sharedInstance];
        dsLogger2 = [v31 dsLogger];

        if (os_log_type_enabled(dsLogger2, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_249027000, dsLogger2, OS_LOG_TYPE_DEFAULT, "[DSKeychainPersistence] invalid device ID\n", buf, 2u);
        }

        v16 = 0;
        if (error)
        {
          *error = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"DSErrorDomain" code:1 userInfo:0];
        }
      }

      v10 = v37;
    }

    else
    {
      v18 = +[DSLogging sharedInstance];
      dsLogger3 = [v18 dsLogger];

      if (os_log_type_enabled(dsLogger3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_249027000, dsLogger3, OS_LOG_TYPE_DEFAULT, "[DSKeychainPersistence] found keychain item too old\n", buf, 2u);
      }

      [v8 removeItemMatchingItem:v9 error:0];
      v16 = 0;
      if (error)
      {
        *error = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"DSErrorDomain" code:1 userInfo:0];
      }
    }
  }

  else
  {
    v13 = +[DSLogging sharedInstance];
    dsLogger4 = [v13 dsLogger];

    if (os_log_type_enabled(dsLogger4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v41 = v10;
      _os_log_impl(&dword_249027000, dsLogger4, OS_LOG_TYPE_DEFAULT, "[DSKeychainPersistence] Unable to find keychain item with error: %@", buf, 0xCu);
    }

    if (error)
    {
      v15 = v10;
      v16 = 0;
      *error = v10;
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