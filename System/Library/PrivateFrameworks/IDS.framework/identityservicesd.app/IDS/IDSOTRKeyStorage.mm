@interface IDSOTRKeyStorage
+ (id)sharedInstance;
- (BOOL)__saveStoreForDataProtectionClass:(unsigned int)class;
- (BOOL)_isUnderFirstDataProtectionLock;
- (BOOL)isSessionStoreAvailableForDataProtectionClass:(unsigned int)class;
- (BOOL)isUnderLock;
- (IDSOTRKeyStorage)init;
- (id)_objectForKey:(id)key;
- (id)sessionKeyForToken:(id)token;
- (void)_daemonWillShutdown:(id)shutdown;
- (void)_loadIfNeeded;
- (void)_purgeMap;
- (void)_purgeTimerFiredOnMain;
- (void)_removeObjectForKey:(id)key;
- (void)_save;
- (void)_saveNow;
- (void)_saveTimerFiredOnMain;
- (void)_setObject:(id)object forKey:(id)key;
- (void)_setPurgeTimer;
- (void)_setSaveTimer;
- (void)dealloc;
- (void)loadStoreForDataProtectionClass:(unsigned int)class;
- (void)removeSessionKeyForAllTokenFromMainQueue;
- (void)removeSessionKeyForToken:(id)token;
- (void)storeSessionKey:(id)key token:(id)token;
- (void)systemDidEnterDataProtectionLock;
- (void)systemDidLeaveDataProtectionLock;
- (void)systemDidLeaveFirstDataProtectionLock;
@end

@implementation IDSOTRKeyStorage

+ (id)sharedInstance
{
  if (qword_100CBF048 != -1)
  {
    sub_100929C1C();
  }

  v3 = qword_100CBF050;

  return v3;
}

- (BOOL)_isUnderFirstDataProtectionLock
{
  v2 = +[IMSystemMonitor sharedInstance];
  isUnderFirstDataProtectionLock = [v2 isUnderFirstDataProtectionLock];

  return isUnderFirstDataProtectionLock;
}

- (BOOL)isUnderLock
{
  v2 = +[IMSystemMonitor sharedInstance];
  isUnderDataProtectionLock = [v2 isUnderDataProtectionLock];

  return isUnderDataProtectionLock;
}

- (void)systemDidLeaveFirstDataProtectionLock
{
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Device first unlocked", v4, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  [(IDSOTRKeyStorage *)self loadStoreForDataProtectionClass:0];
}

- (void)systemDidLeaveDataProtectionLock
{
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Device unlocked", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  [(NSRecursiveLock *)self->_lock lock];
  if (self->_isClassAStoreAvailable)
  {
    if (self->_changedSinceLastSave)
    {
      [(IDSOTRKeyStorage *)self _saveNow];
      v4 = +[NSNotificationCenter defaultCenter];
      v5 = IDSDataProtectionClassStringFromDataProtectionClass();
      v6 = [NSDictionary dictionaryWithObjectsAndKeys:v5, @"__kIDSOTRKeyStorageClassKey", 0];
      [v4 postNotificationName:@"__kIDSOTRKeyStorageClassStorageIsAvailableNotification" object:self userInfo:v6];
    }
  }

  else
  {
    [(IDSOTRKeyStorage *)self loadStoreForDataProtectionClass:1];
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)systemDidEnterDataProtectionLock
{
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Device locked", v4, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  [(IDSOTRKeyStorage *)self _saveNow];
}

- (void)_save
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Saving OTR session key store", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  v4 = [(NSMutableDictionary *)self->_sessionKeyStorage allKeys:0];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (!v5)
  {

LABEL_16:
    self->_changedSinceLastSave = 0;
    goto LABEL_17;
  }

  v6 = *v10;
  v7 = 1;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v10 != v6)
      {
        objc_enumerationMutation(v4);
      }

      v7 &= [(IDSOTRKeyStorage *)self __saveStoreForDataProtectionClass:IDSDataProtectionClassFromDataProtectionClassString()];
    }

    v5 = [v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
  }

  while (v5);

  if (v7)
  {
    goto LABEL_16;
  }

LABEL_17:
  [(NSRecursiveLock *)self->_lock unlock];
}

- (BOOL)__saveStoreForDataProtectionClass:(unsigned int)class
{
  [(NSRecursiveLock *)self->_lock lock];
  v4 = IDSDataProtectionClassStringFromDataProtectionClass();
  v5 = [(NSMutableDictionary *)self->_sessionKeyStorage objectForKey:v4];
  v6 = [v5 count];
  if (v6)
  {
    v6 = objc_alloc_init(NSMutableDictionary);
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1005805AC;
  v15[3] = &unk_100BE0948;
  v7 = v6;
  v16 = v7;
  [v5 enumerateKeysAndObjectsUsingBlock:v15];
  if ([v7 count])
  {
    v8 = JWEncodeDictionary();
  }

  else
  {
    v8 = 0;
  }

  v9 = [NSString stringWithFormat:@"%@-%@", @"ids-otr-key-storage", v4];
  if (v8)
  {
    v10 = IMSetKeychainDataWithProtection();
  }

  else
  {
    v10 = IMRemoveKeychainData();
  }

  v11 = v10;
  v12 = +[IMRGLog OTRStore];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = @"NO";
    if (v11)
    {
      v13 = @"YES";
    }

    *buf = 138412546;
    v18 = v4;
    v19 = 2112;
    v20 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Saving OTR session class %@ store (Success: %@)", buf, 0x16u);
  }

  [(NSRecursiveLock *)self->_lock unlock];
  return v11;
}

- (void)_loadIfNeeded
{
  [(NSRecursiveLock *)self->_lock lock];
  if (!self->_sessionKeyStorage)
  {
    v3 = 0;
    do
    {
      [(IDSOTRKeyStorage *)self loadStoreForDataProtectionClass:v3];
      v3 = (v3 + 1);
    }

    while (v3 != 3);
  }

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (void)loadStoreForDataProtectionClass:(unsigned int)class
{
  [(NSRecursiveLock *)self->_lock lock];
  v30 = 0;
  if (class == 1)
  {
    if ([(IDSOTRKeyStorage *)self isUnderLock])
    {
      v5 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Device is under data protection lock, not loading class A session keys", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }

      self->_isClassAStoreAvailable = 0;
      [(NSRecursiveLock *)self->_lock unlock];
      return;
    }

    if (self->_isClassAStoreAvailable)
    {
      v7 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Class A store is already loaded ignoring...", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

LABEL_39:
      [(NSRecursiveLock *)self->_lock unlock];
      return;
    }

    goto LABEL_25;
  }

  if (class == 2)
  {
    if (self->_isClassDStoreAvailable)
    {
      v10 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Class D store is already loaded ignoring...", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      goto LABEL_39;
    }

    v9 = 0;
    v8 = 1;
    goto LABEL_42;
  }

  if (class)
  {
LABEL_25:
    v8 = 0;
    v9 = 0;
LABEL_42:
    v12 = IDSDataProtectionClassStringFromDataProtectionClass();
    v29 = 0;
    v13 = [NSString stringWithFormat:@"%@-%@", @"ids-otr-key-storage", v12];
    IMGetKeychainData();
    v14 = 0;

    v15 = JWDecodeDictionary();
    if ([v15 count])
    {
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_100580EE4;
      v27[3] = &unk_100BE0948;
      v16 = objc_alloc_init(NSMutableDictionary);
      v28 = v16;
      [v15 enumerateKeysAndObjectsUsingBlock:v27];
      if (!self->_sessionKeyStorage)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        sessionKeyStorage = self->_sessionKeyStorage;
        self->_sessionKeyStorage = Mutable;
      }

      if (v12 && v16)
      {
        [(NSMutableDictionary *)self->_sessionKeyStorage setObject:v16 forKey:v12];
        v19 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v32 = v12;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Loaded stored class %@ session store", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v25 = v12;
          _IDSLogV();
        }
      }

      else
      {
        v21 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v32 = v16;
          v33 = 2112;
          v34 = v12;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Missing session key dictionary %@ or data protection string %@", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          _IDSWarnV();
          _IDSLogV();
          v25 = v16;
          v26 = v12;
          _IDSLogTransport();
        }
      }
    }

    else
    {
      v20 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v32 = v12;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Did not find class %@ store to load", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v25 = v12;
        _IDSLogV();
      }
    }

    if (((v9 | v8) & 1) != 0 || class == 1)
    {
      v22 = 72;
      if (v9)
      {
        v22 = 73;
      }

      if (class == 1)
      {
        v22 = 74;
      }

      *(&self->super.isa + v22) = 1;
    }

    v23 = [NSNotificationCenter defaultCenter:v25];
    v24 = [NSDictionary dictionaryWithObjectsAndKeys:v12, @"__kIDSOTRKeyStorageClassKey", 0];
    [v23 postNotificationName:@"__kIDSOTRKeyStorageClassStorageIsAvailableNotification" object:self userInfo:v24];

    [(NSRecursiveLock *)self->_lock unlock];
    return;
  }

  if (![(IDSOTRKeyStorage *)self _isUnderFirstDataProtectionLock])
  {
    if (self->_isClassCStoreAvailable)
    {
      v11 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Class C store is already loaded ignoring...", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      goto LABEL_39;
    }

    v8 = 0;
    v9 = 1;
    goto LABEL_42;
  }

  v6 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Device is under first data protection lock, not loading class C session keys", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  self->_isClassCStoreAvailable = 0;
  [(NSRecursiveLock *)self->_lock unlock];
}

- (BOOL)isSessionStoreAvailableForDataProtectionClass:(unsigned int)class
{
  [(NSRecursiveLock *)self->_lock lock];
  [(IDSOTRKeyStorage *)self _loadIfNeeded];
  if (class > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(&self->super.isa + qword_1009ABDA0[class]);
  }

  [(NSRecursiveLock *)self->_lock unlock];
  return v5 & 1;
}

- (void)_setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  [(NSRecursiveLock *)self->_lock lock];
  if (!self->_sessionKeyStorage)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    sessionKeyStorage = self->_sessionKeyStorage;
    self->_sessionKeyStorage = Mutable;
  }

  v10 = sub_10058123C(keyCopy);
  if ([v10 length])
  {
    v11 = +[IDSDServiceController sharedInstance];
    v12 = [v11 serviceWithPushTopic:v10];
    [v12 dataProtectionClass];

    v13 = IDSDataProtectionClassStringFromDataProtectionClass();
    v14 = [(NSMutableDictionary *)self->_sessionKeyStorage objectForKey:v13];
    if (!v14)
    {
      v14 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    }

    [v14 setObject:objectCopy forKey:keyCopy];
    [(NSMutableDictionary *)self->_sessionKeyStorage setObject:v14 forKey:v13];
    self->_changedSinceLastSave = 1;
  }

  else
  {
    v15 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = @"OTRStore";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%@ - Missing service in token, can't store session key", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      v16 = @"OTRStore";
      _IDSLogTransport();
    }
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

- (id)_objectForKey:(id)key
{
  keyCopy = key;
  if ([(NSMutableDictionary *)self->_sessionKeyStorage count])
  {
    v5 = sub_10058123C(keyCopy);
    if ([v5 length])
    {
      v6 = +[IDSDServiceController sharedInstance];
      v7 = [v6 serviceWithPushTopic:v5];
      [v7 dataProtectionClass];

      v8 = IDSDataProtectionClassStringFromDataProtectionClass();
      v9 = [(NSMutableDictionary *)self->_sessionKeyStorage objectForKey:v8];
      v10 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [v9 objectForKey:keyCopy];
        *buf = 134218242;
        v18 = v11;
        v19 = 2112;
        v20 = v5;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Found session key %p for topic %@", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v15 = [v9 objectForKey:keyCopy];
        v16 = v5;
        _IDSLogV();
      }

      v12 = [v9 objectForKey:{keyCopy, v15, v16}];
    }

    else
    {
      v13 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v18 = @"OTRStore";
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%@ - Missing service in token, can't retrieve session key", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        _IDSWarnV();
        _IDSLogV();
        _IDSLogTransport();
      }

      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)_removeObjectForKey:(id)key
{
  keyCopy = key;
  [(NSRecursiveLock *)self->_lock lock];
  if ([(NSMutableDictionary *)self->_sessionKeyStorage count])
  {
    v5 = sub_10058123C(keyCopy);
    if ([v5 length])
    {
      v6 = +[IDSDServiceController sharedInstance];
      v7 = [v6 serviceWithPushTopic:v5];
      [v7 dataProtectionClass];

      v8 = IDSDataProtectionClassStringFromDataProtectionClass();
      v9 = [(NSMutableDictionary *)self->_sessionKeyStorage objectForKey:v8];
      [v9 removeObjectForKey:keyCopy];
      if (![v9 count])
      {
        [(NSMutableDictionary *)self->_sessionKeyStorage removeObjectForKey:v8];
      }

      self->_changedSinceLastSave = 1;
      [(NSRecursiveLock *)self->_lock unlock];
    }

    else
    {
      v10 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v13 = @"OTRStore";
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%@ - Missing service in token, can't remove session key", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        _IDSWarnV();
        _IDSLogV();
        v11 = @"OTRStore";
        _IDSLogTransport();
      }

      [(NSRecursiveLock *)self->_lock unlock];
    }
  }

  else
  {
    [(NSRecursiveLock *)self->_lock unlock];
  }
}

- (IDSOTRKeyStorage)init
{
  v30.receiver = self;
  v30.super_class = IDSOTRKeyStorage;
  v2 = [(IDSOTRKeyStorage *)&v30 init];
  if (v2)
  {
    v3 = +[IMSystemMonitor sharedInstance];
    [v3 setActive:1];

    v4 = +[IMSystemMonitor sharedInstance];
    [v4 setWatchesDataProtectionLockState:1];

    v5 = +[IMSystemMonitor sharedInstance];
    [v5 addListener:v2];

    v6 = objc_alloc_init(NSRecursiveLock);
    lock = v2->_lock;
    v2->_lock = v6;

    v2->_isClassAStoreAvailable = 0;
    *&v2->_isClassDStoreAvailable = 0;
    objc_initWeak(&location, v2);
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100581BE8;
    v27[3] = &unk_100BD9D38;
    objc_copyWeak(&v28, &location);
    v8 = [v27 copy];
    saveCancelBlock = v2->_saveCancelBlock;
    v2->_saveCancelBlock = v8;

    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100581C3C;
    v24[3] = &unk_100BDA6B0;
    objc_copyWeak(&v26, &location);
    v10 = v2;
    v25 = v10;
    v11 = [v24 copy];
    saveEnqueueBlock = v10->_saveEnqueueBlock;
    v10->_saveEnqueueBlock = v11;

    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100581D04;
    v22[3] = &unk_100BD9D38;
    objc_copyWeak(&v23, &location);
    v13 = [v22 copy];
    purgeCancelBlock = v10->_purgeCancelBlock;
    v10->_purgeCancelBlock = v13;

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100581D58;
    v19[3] = &unk_100BDA6B0;
    objc_copyWeak(&v21, &location);
    v15 = v10;
    v20 = v15;
    v16 = [v19 copy];
    purgeEnqueueBlock = v15->_purgeEnqueueBlock;
    v15->_purgeEnqueueBlock = v16;

    objc_destroyWeak(&v21);
    objc_destroyWeak(&v23);

    objc_destroyWeak(&v26);
    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)_saveTimerFiredOnMain
{
  v3 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100581EB0;
  block[3] = &unk_100BD6ED0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_purgeTimerFiredOnMain
{
  v3 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100581F40;
  block[3] = &unk_100BD6ED0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)dealloc
{
  v3 = +[IMSystemMonitor sharedInstance];
  [v3 removeListener:self];

  v4.receiver = self;
  v4.super_class = IDSOTRKeyStorage;
  [(IDSOTRKeyStorage *)&v4 dealloc];
}

- (void)_daemonWillShutdown:(id)shutdown
{
  if (self->_saveTimer)
  {
    [(IDSOTRKeyStorage *)self _save];
  }
}

- (id)sessionKeyForToken:(id)token
{
  tokenCopy = token;
  if (!tokenCopy)
  {
    v5 = 0;
    goto LABEL_15;
  }

  [(NSRecursiveLock *)self->_lock lock];
  [(IDSOTRKeyStorage *)self _loadIfNeeded];
  v5 = [(IDSOTRKeyStorage *)self _objectForKey:tokenCopy];
  if (v5)
  {
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = tokenCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Found session key for token: %@", buf, 0xCu);
    }

    if (!os_log_shim_legacy_logging_enabled() || (_IDSShouldLog() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v7 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = tokenCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "No session key for token: %@", buf, 0xCu);
    }

    if (!os_log_shim_legacy_logging_enabled() || (_IDSShouldLog() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v9 = tokenCopy;
  _IDSLogV();
LABEL_14:
  [(NSRecursiveLock *)self->_lock unlock];
LABEL_15:

  return v5;
}

- (void)_saveNow
{
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Saving now", v5, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v4 = im_primary_queue();
  dispatch_async(v4, self->_saveCancelBlock);

  [(IDSOTRKeyStorage *)self _save];
}

- (void)_setSaveTimer
{
  v3 = im_primary_queue();
  dispatch_async(v3, self->_saveEnqueueBlock);
}

- (void)_purgeMap
{
  v2 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "*** Purging OTR session cache", v3, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

- (void)_setPurgeTimer
{
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v6 = 0x4072C00000000000;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Setting purge timer for %f seconds from now", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v4 = im_primary_queue();
  dispatch_async(v4, self->_purgeEnqueueBlock);
}

- (void)storeSessionKey:(id)key token:(id)token
{
  keyCopy = key;
  tokenCopy = token;
  if (tokenCopy)
  {
    v8 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = tokenCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Storing session key for %@.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v9 = tokenCopy;
      _IDSLogV();
    }

    if ([keyCopy length])
    {
      [(IDSOTRKeyStorage *)self _loadIfNeeded];
      [(NSRecursiveLock *)self->_lock lock];
      [(IDSOTRKeyStorage *)self _setObject:keyCopy forKey:tokenCopy];
      [(NSRecursiveLock *)self->_lock unlock];
      [(IDSOTRKeyStorage *)self _setSaveTimer];
    }

    else
    {
      [(IDSOTRKeyStorage *)self removeSessionKeyForToken:tokenCopy];
    }
  }
}

- (void)removeSessionKeyForToken:(id)token
{
  tokenCopy = token;
  if (tokenCopy)
  {
    v5 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v8 = tokenCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing session key for %@.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v6 = tokenCopy;
      _IDSLogV();
    }

    [(IDSOTRKeyStorage *)self _loadIfNeeded];
    [(NSRecursiveLock *)self->_lock lock];
    [(IDSOTRKeyStorage *)self _removeObjectForKey:tokenCopy];
    [(NSRecursiveLock *)self->_lock unlock];
    [(IDSOTRKeyStorage *)self _setSaveTimer];
  }
}

- (void)removeSessionKeyForAllTokenFromMainQueue
{
  v3 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "removeSessionKeyForAllTokenFromMainQueue", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }

  [(NSRecursiveLock *)self->_lock lock];
  [(NSMutableDictionary *)self->_sessionKeyStorage removeAllObjects];
  sessionKeyStorage = self->_sessionKeyStorage;
  self->_sessionKeyStorage = 0;

  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Cleaning up keychain", v10, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v6 = im_primary_queue();
  dispatch_async(v6, self->_saveCancelBlock);

  v7 = [(IDSOTRKeyStorage *)self __saveStoreForDataProtectionClass:1];
  v8 = [(IDSOTRKeyStorage *)self __saveStoreForDataProtectionClass:0];
  v9 = [(IDSOTRKeyStorage *)self __saveStoreForDataProtectionClass:2];
  if (!v7 || !v8 || (v9 & 1) == 0)
  {
    self->_changedSinceLastSave = 1;
  }

  self->_isClassAStoreAvailable = 0;
  *&self->_isClassDStoreAvailable = 0;
  [(NSRecursiveLock *)self->_lock unlock];
}

@end