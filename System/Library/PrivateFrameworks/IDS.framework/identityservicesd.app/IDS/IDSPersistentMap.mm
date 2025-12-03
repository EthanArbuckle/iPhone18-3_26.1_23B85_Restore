@interface IDSPersistentMap
+ (id)defaultPersisterForIdentifier:(id)identifier dataProtectionClass:(int64_t)class;
- (BOOL)loadAndCheckStatus;
- (IDSPersistentMap)init;
- (IDSPersistentMap)initWithIdentifier:(id)identifier versionNumber:(int64_t)number decodableClasses:(id)classes dataProtectionClass:(int64_t)class mergePolicy:(id)policy migrationBlock:(id)block;
- (IDSPersistentMap)initWithIdentifier:(id)identifier versionNumber:(int64_t)number decodableClasses:(id)classes mergePolicy:(id)policy writeCoalescingDelay:(double)delay writeCoalescingLeeway:(double)leeway persister:(id)persister migrationBlock:(id)self0 allowBackup:(BOOL)self1;
- (IDSPersistentMapDelegate)delegate;
- (id)_decodeMapData:(id)data;
- (id)_encodeMap:(id)map;
- (id)_mapByAddingMetadataToMap:(id)map;
- (id)allKeys;
- (id)allValues;
- (id)copyDictionaryRepresentation;
- (id)debugDescription;
- (id)objectForKey:(id)key;
- (int64_t)_versionNumberForPersistedMap:(id)map;
- (void)_performCacheModifyingBlock:(id)block;
- (void)_performCacheReadingBlock:(id)block;
- (void)_performLockedBlock:(id)block;
- (void)_save;
- (void)delayedSave;
- (void)persistImmediately;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
- (void)setObject:(id)object forKeyedSubscript:(id)subscript;
@end

@implementation IDSPersistentMap

- (BOOL)loadAndCheckStatus
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_isLoaded)
  {
    return 1;
  }

  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    identifier = self->_identifier;
    *buf = 138412290;
    v38 = identifier;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Loading cache with identifier %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v33 = self->_identifier;
    _IDSLogV();
  }

  if (([(IDSPersistentMapPersister *)self->_persister isAvailable]& 1) != 0)
  {
    data = [(IDSPersistentMapPersister *)self->_persister data];
    v7 = [(IDSPersistentMap *)self _decodeMapData:data];
    v8 = [(IDSPersistentMap *)self _versionNumberForPersistedMap:v7];
    v9 = [(IDSPersistentMap *)self _mapByStrippingMetadataFromMap:v7];
    v10 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v9 count];
      *buf = 134217984;
      v38 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "  => Loaded cache has %ld keys", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v34 = [v9 count];
      _IDSLogV();
    }

    if (v8 < self->_versionNumber && (v12 = self->_migrationBlock) != 0)
    {
      v13 = v12[2](v12, v9, v8);
      migrationBlock = self->_migrationBlock;
      self->_migrationBlock = 0;
    }

    else
    {
      v13 = [v9 mutableCopy];
    }

    mergePolicyType = self->_mergePolicyType;
    cachedMap = self->_cachedMap;
    v19 = self->_mergePolicy;
    v20 = cachedMap;
    v21 = v13;
    v22 = v21;
    if (mergePolicyType == 2)
    {
      v23 = [(IDSPersistentMapMergePolicy *)v19 processedDictionaryForDisk:v21 andMemory:v20];
    }

    else
    {
      if (mergePolicyType == 1)
      {
        v24 = [[NSMutableDictionary alloc] initWithDictionary:v21];
        v25 = v24;
        if (v20)
        {
          [(NSMutableDictionary *)v24 addEntriesFromDictionary:v20];
        }

        goto LABEL_35;
      }

      if (mergePolicyType)
      {
        v25 = 0;
LABEL_35:

        v26 = self->_cachedMap;
        self->_cachedMap = v25;

        mergePolicy = self->_mergePolicy;
        self->_mergePolicy = 0;

        if (!self->_cachedMap)
        {
          v28 = objc_alloc_init(NSMutableDictionary);
          v29 = self->_cachedMap;
          self->_cachedMap = v28;
        }

        [(IDSPersistentMap *)self delayedSave];
        self->_isLoaded = 1;
        WeakRetained = objc_loadWeakRetained(&self->_delegate);

        if (WeakRetained)
        {
          objc_initWeak(buf, self);
          serialPersistQueue = self->_serialPersistQueue;
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1003D6C68;
          block[3] = &unk_100BDA6B0;
          objc_copyWeak(&v36, buf);
          block[4] = self;
          dispatch_async(serialPersistQueue, block);
          objc_destroyWeak(&v36);
          objc_destroyWeak(buf);
        }

        return self->_isLoaded;
      }

      if (v21)
      {
        v23 = [v21 mutableCopy];
      }

      else
      {
        v23 = [(NSMutableDictionary *)v20 mutableCopy];
      }
    }

    v25 = v23;
    goto LABEL_35;
  }

  v15 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    persister = self->_persister;
    *buf = 138412290;
    v38 = persister;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "  => Underlying persister %@ is unavailable; not loading!", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  return 0;
}

- (void)delayedSave
{
  os_unfair_lock_assert_owner(&self->_lock);
  saveTimer = self->_saveTimer;
  if (saveTimer)
  {
    v4 = dispatch_time(0, (self->_writeCoalescingDelay * 1000000000.0));
    v5 = (self->_writeCoalescingLeeway * 1000000000.0);

    dispatch_source_set_timer(saveTimer, v4, 0xFFFFFFFFFFFFFFFFLL, v5);
  }

  else
  {
    v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_serialPersistQueue);
    v7 = self->_saveTimer;
    self->_saveTimer = v6;

    objc_initWeak(&location, self);
    objc_initWeak(&from, self->_saveTimer);
    v8 = self->_saveTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10001D30C;
    handler[3] = &unk_100BDA6D8;
    objc_copyWeak(&v12, &from);
    handler[4] = self;
    objc_copyWeak(&v13, &location);
    dispatch_source_set_event_handler(v8, handler);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
    v9 = self->_saveTimer;
    v10 = dispatch_time(0, (self->_writeCoalescingDelay * 1000000000.0));
    dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, (self->_writeCoalescingLeeway * 1000000000.0));
    dispatch_activate(self->_saveTimer);
  }
}

- (id)copyDictionaryRepresentation
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_10000A908;
  v9 = sub_10000BC04;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000061B8;
  v4[3] = &unk_100BD9060;
  v4[4] = self;
  v4[5] = &v5;
  [(IDSPersistentMap *)self _performCacheReadingBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)_save
{
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    identifier = self->_identifier;
    v5 = [(NSMutableDictionary *)self->_cachedMap count];
    *buf = 138412546;
    *&buf[4] = identifier;
    *&buf[12] = 2048;
    *&buf[14] = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Saving cache with identifier %@ => Will save cache to disk with %ld keys", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v11 = self->_identifier;
    v13 = [(NSMutableDictionary *)self->_cachedMap count];
    _IDSLogV();
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v24 = sub_10000A908;
  v25 = sub_10000BC04;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_10000A908;
  v19 = sub_10000BC04;
  v20 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1003D7010;
  v14[3] = &unk_100BDA700;
  v14[4] = self;
  v14[5] = buf;
  v14[6] = &v15;
  [(IDSPersistentMap *)self _performLockedBlock:v14, v11, v13];
  if ([*(*&buf[8] + 40) count])
  {
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "  => Encoding...", v21, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v7 = [(IDSPersistentMap *)self _encodeMap:v16[5]];
    v8 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v7 length];
      *v21 = 134217984;
      v22 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "  => Done encoding: %ld bytes", v21, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v12 = [v7 length];
      _IDSLogV();
    }
  }

  else
  {
    v10 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "  => Skipping encoding, empty", v21, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v7 = 0;
  }

  [(IDSPersistentMapPersister *)self->_persister saveData:v7 allowBackup:self->_allowBackup, v12];

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(buf, 8);
}

+ (id)defaultPersisterForIdentifier:(id)identifier dataProtectionClass:(int64_t)class
{
  identifierCopy = identifier;
  v6 = objc_alloc_init(IDSKeychainWrapper);
  v7 = +[IMSystemMonitor sharedInstance];
  v8 = [[IDSPersistentMapKeychainPersister alloc] initWithIdentifier:identifierCopy keychainWrapper:v6 systemMonitor:v7];
  v9 = [[IDSPersistentMapDiskPersister alloc] initWithIdentifier:identifierCopy dataProtectionClass:class keychainWrapper:v6 systemMonitor:v7];

  v10 = [[IDSPersistentMigratingPersister alloc] initWithOriginPersister:v8 destinationPersister:v9];

  return v10;
}

- (IDSPersistentMap)init
{
  v3 = +[NSSet set];
  v4 = [(IDSPersistentMap *)self initWithIdentifier:&stru_100C06028 versionNumber:0 decodableClasses:v3 dataProtectionClass:0 mergePolicy:0 migrationBlock:&stru_100BDA660];

  return v4;
}

- (IDSPersistentMap)initWithIdentifier:(id)identifier versionNumber:(int64_t)number decodableClasses:(id)classes dataProtectionClass:(int64_t)class mergePolicy:(id)policy migrationBlock:(id)block
{
  blockCopy = block;
  policyCopy = policy;
  classesCopy = classes;
  identifierCopy = identifier;
  v18 = [objc_opt_class() defaultPersisterForIdentifier:identifierCopy dataProtectionClass:class];
  LOBYTE(v21) = 1;
  v19 = [(IDSPersistentMap *)self initWithIdentifier:identifierCopy versionNumber:number decodableClasses:classesCopy mergePolicy:policyCopy writeCoalescingDelay:v18 writeCoalescingLeeway:blockCopy persister:5.0 migrationBlock:1.0 allowBackup:v21];

  return v19;
}

- (IDSPersistentMap)initWithIdentifier:(id)identifier versionNumber:(int64_t)number decodableClasses:(id)classes mergePolicy:(id)policy writeCoalescingDelay:(double)delay writeCoalescingLeeway:(double)leeway persister:(id)persister migrationBlock:(id)self0 allowBackup:(BOOL)self1
{
  identifierCopy = identifier;
  classesCopy = classes;
  policyCopy = policy;
  persisterCopy = persister;
  blockCopy = block;
  v39.receiver = self;
  v39.super_class = IDSPersistentMap;
  v24 = [(IDSPersistentMap *)&v39 init];
  if (v24)
  {
    v25 = [identifierCopy copy];
    identifier = v24->_identifier;
    v24->_identifier = v25;

    v24->_versionNumber = number;
    v40[0] = objc_opt_class();
    v40[1] = objc_opt_class();
    v40[2] = objc_opt_class();
    v27 = [NSArray arrayWithObjects:v40 count:3];
    v28 = [classesCopy setByAddingObjectsFromArray:v27];
    decodableClasses = v24->_decodableClasses;
    v24->_decodableClasses = v28;

    v24->_writeCoalescingDelay = delay;
    v24->_writeCoalescingLeeway = leeway;
    v30 = [blockCopy copy];
    migrationBlock = v24->_migrationBlock;
    v24->_migrationBlock = v30;

    objc_storeStrong(&v24->_persister, persister);
    if (policyCopy)
    {
      if ([policyCopy policy] == 2)
      {
        objc_storeStrong(&v24->_mergePolicy, policy);
      }

      policy = [policyCopy policy];
    }

    else
    {
      policy = 0;
    }

    v24->_mergePolicyType = policy;
    v24->_lock._os_unfair_lock_opaque = 0;
    identifierCopy = [NSString stringWithFormat:@"com.apple.ids.persistent-map.%@.persist", identifierCopy];
    v34 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v35 = dispatch_queue_attr_make_with_qos_class(v34, QOS_CLASS_BACKGROUND, 0);

    v36 = dispatch_queue_create([identifierCopy UTF8String], v35);
    serialPersistQueue = v24->_serialPersistQueue;
    v24->_serialPersistQueue = v36;

    v24->_isLoaded = 0;
    v24->_allowBackup = backup;
  }

  return v24;
}

- (id)debugDescription
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_10000A908;
  v12 = sub_10000BC04;
  v13 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003D6278;
  v7[3] = &unk_100BD9060;
  v7[4] = self;
  v7[5] = &v8;
  [(IDSPersistentMap *)self _performLockedBlock:v7];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"<%@: %p identifier = %@; cachedMap = %@; persister = %@>", v4, self, self->_identifier, v9[5], self->_persister];;

  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)objectForKey:(id)key
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_10000A908;
  v14 = sub_10000BC04;
  v15 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1003D63EC;
  v6[3] = &unk_100BDA688;
  v9 = &v10;
  selfCopy = self;
  keyCopy = key;
  v8 = keyCopy;
  [(IDSPersistentMap *)selfCopy _performCacheReadingBlock:v6];
  v4 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v4;
}

- (void)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  if (!objectCopy || !keyCopy)
  {
    sub_10091B070();
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1003D6508;
  v10[3] = &unk_100BD6E18;
  v10[4] = self;
  v11 = objectCopy;
  v12 = keyCopy;
  v8 = keyCopy;
  v9 = objectCopy;
  [(IDSPersistentMap *)self _performCacheModifyingBlock:v10];
}

- (void)removeObjectForKey:(id)key
{
  keyCopy = key;
  if (!keyCopy)
  {
    sub_10091B09C();
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1003D65B8;
  v6[3] = &unk_100BD6E40;
  v6[4] = self;
  v7 = keyCopy;
  v5 = keyCopy;
  [(IDSPersistentMap *)self _performCacheModifyingBlock:v6];
}

- (void)_performCacheModifyingBlock:(id)block
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003D6658;
  v4[3] = &unk_100BD9A30;
  selfCopy = self;
  blockCopy = block;
  v3 = blockCopy;
  [(IDSPersistentMap *)selfCopy _performLockedBlock:v4];
}

- (void)_performCacheReadingBlock:(id)block
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003D6884;
  v4[3] = &unk_100BD9A30;
  selfCopy = self;
  blockCopy = block;
  v3 = blockCopy;
  [(IDSPersistentMap *)selfCopy _performLockedBlock:v4];
}

- (void)setObject:(id)object forKeyedSubscript:(id)subscript
{
  objectCopy = object;
  subscriptCopy = subscript;
  if (!subscriptCopy)
  {
    sub_10091B0C8();
  }

  v7 = subscriptCopy;
  if (objectCopy)
  {
    [(IDSPersistentMap *)self setObject:objectCopy forKey:subscriptCopy];
  }

  else
  {
    [(IDSPersistentMap *)self removeObjectForKey:subscriptCopy];
  }
}

- (id)allKeys
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_10000A908;
  v9 = sub_10000BC04;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003D6A50;
  v4[3] = &unk_100BD9060;
  v4[4] = self;
  v4[5] = &v5;
  [(IDSPersistentMap *)self _performCacheReadingBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (id)allValues
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_10000A908;
  v9 = sub_10000BC04;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003D6BA0;
  v4[3] = &unk_100BD9060;
  v4[4] = self;
  v4[5] = &v5;
  [(IDSPersistentMap *)self _performCacheReadingBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)removeAllObjects
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1003D6C5C;
  v2[3] = &unk_100BD6ED0;
  v2[4] = self;
  [(IDSPersistentMap *)self _performCacheModifyingBlock:v2];
}

- (void)persistImmediately
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1003D6D3C;
  v2[3] = &unk_100BD6ED0;
  v2[4] = self;
  [(IDSPersistentMap *)self _performLockedBlock:v2];
}

- (id)_decodeMapData:(id)data
{
  dataCopy = data;
  if ([dataCopy length])
  {
    decodableClasses = self->_decodableClasses;
    v9[0] = 0;
    v6 = [NSKeyedUnarchiver unarchivedObjectOfClasses:decodableClasses fromData:dataCopy error:v9];
    v7 = v9[0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      goto LABEL_6;
    }
  }

  v6 = 0;
LABEL_6:

  return v6;
}

- (id)_encodeMap:(id)map
{
  mapCopy = map;
  if ([mapCopy count])
  {
    v8 = 0;
    v4 = [NSKeyedArchiver archivedDataWithRootObject:mapCopy requiringSecureCoding:0 error:&v8];
    v5 = v8;
    if (v5)
    {
      v6 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v10 = v5;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Error during Decoding %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_mapByAddingMetadataToMap:(id)map
{
  mapCopy = map;
  v5 = objc_alloc_init(NSMutableDictionary);
  [v5 setObject:mapCopy forKey:@"ids-persistent-map"];

  v6 = [[IDSPersistentMapMetadata alloc] initWithVersionNumber:self->_versionNumber];
  [v5 setObject:v6 forKey:@"ids-persistent-map-metadata"];

  return v5;
}

- (int64_t)_versionNumberForPersistedMap:(id)map
{
  v3 = [map objectForKey:@"ids-persistent-map-metadata"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    versionNumber = [v3 versionNumber];
  }

  else
  {
    versionNumber = 0;
  }

  return versionNumber;
}

- (void)_performLockedBlock:(id)block
{
  blockCopy = block;
  os_unfair_lock_lock(&self->_lock);
  blockCopy[2](blockCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (IDSPersistentMapDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end