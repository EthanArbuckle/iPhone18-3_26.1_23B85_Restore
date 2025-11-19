@interface IDSPersistentMap
+ (id)defaultPersisterForIdentifier:(id)a3 dataProtectionClass:(int64_t)a4;
- (BOOL)loadAndCheckStatus;
- (IDSPersistentMap)init;
- (IDSPersistentMap)initWithIdentifier:(id)a3 versionNumber:(int64_t)a4 decodableClasses:(id)a5 dataProtectionClass:(int64_t)a6 mergePolicy:(id)a7 migrationBlock:(id)a8;
- (IDSPersistentMap)initWithIdentifier:(id)a3 versionNumber:(int64_t)a4 decodableClasses:(id)a5 mergePolicy:(id)a6 writeCoalescingDelay:(double)a7 writeCoalescingLeeway:(double)a8 persister:(id)a9 migrationBlock:(id)a10 allowBackup:(BOOL)a11;
- (IDSPersistentMapDelegate)delegate;
- (id)_decodeMapData:(id)a3;
- (id)_encodeMap:(id)a3;
- (id)_mapByAddingMetadataToMap:(id)a3;
- (id)allKeys;
- (id)allValues;
- (id)copyDictionaryRepresentation;
- (id)debugDescription;
- (id)objectForKey:(id)a3;
- (int64_t)_versionNumberForPersistedMap:(id)a3;
- (void)_performCacheModifyingBlock:(id)a3;
- (void)_performCacheReadingBlock:(id)a3;
- (void)_performLockedBlock:(id)a3;
- (void)_save;
- (void)delayedSave;
- (void)persistImmediately;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
- (void)setObject:(id)a3 forKeyedSubscript:(id)a4;
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
    v6 = [(IDSPersistentMapPersister *)self->_persister data];
    v7 = [(IDSPersistentMap *)self _decodeMapData:v6];
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

+ (id)defaultPersisterForIdentifier:(id)a3 dataProtectionClass:(int64_t)a4
{
  v5 = a3;
  v6 = objc_alloc_init(IDSKeychainWrapper);
  v7 = +[IMSystemMonitor sharedInstance];
  v8 = [[IDSPersistentMapKeychainPersister alloc] initWithIdentifier:v5 keychainWrapper:v6 systemMonitor:v7];
  v9 = [[IDSPersistentMapDiskPersister alloc] initWithIdentifier:v5 dataProtectionClass:a4 keychainWrapper:v6 systemMonitor:v7];

  v10 = [[IDSPersistentMigratingPersister alloc] initWithOriginPersister:v8 destinationPersister:v9];

  return v10;
}

- (IDSPersistentMap)init
{
  v3 = +[NSSet set];
  v4 = [(IDSPersistentMap *)self initWithIdentifier:&stru_100C06028 versionNumber:0 decodableClasses:v3 dataProtectionClass:0 mergePolicy:0 migrationBlock:&stru_100BDA660];

  return v4;
}

- (IDSPersistentMap)initWithIdentifier:(id)a3 versionNumber:(int64_t)a4 decodableClasses:(id)a5 dataProtectionClass:(int64_t)a6 mergePolicy:(id)a7 migrationBlock:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a5;
  v17 = a3;
  v18 = [objc_opt_class() defaultPersisterForIdentifier:v17 dataProtectionClass:a6];
  LOBYTE(v21) = 1;
  v19 = [(IDSPersistentMap *)self initWithIdentifier:v17 versionNumber:a4 decodableClasses:v16 mergePolicy:v15 writeCoalescingDelay:v18 writeCoalescingLeeway:v14 persister:5.0 migrationBlock:1.0 allowBackup:v21];

  return v19;
}

- (IDSPersistentMap)initWithIdentifier:(id)a3 versionNumber:(int64_t)a4 decodableClasses:(id)a5 mergePolicy:(id)a6 writeCoalescingDelay:(double)a7 writeCoalescingLeeway:(double)a8 persister:(id)a9 migrationBlock:(id)a10 allowBackup:(BOOL)a11
{
  v19 = a3;
  v20 = a5;
  v21 = a6;
  v22 = a9;
  v23 = a10;
  v39.receiver = self;
  v39.super_class = IDSPersistentMap;
  v24 = [(IDSPersistentMap *)&v39 init];
  if (v24)
  {
    v25 = [v19 copy];
    identifier = v24->_identifier;
    v24->_identifier = v25;

    v24->_versionNumber = a4;
    v40[0] = objc_opt_class();
    v40[1] = objc_opt_class();
    v40[2] = objc_opt_class();
    v27 = [NSArray arrayWithObjects:v40 count:3];
    v28 = [v20 setByAddingObjectsFromArray:v27];
    decodableClasses = v24->_decodableClasses;
    v24->_decodableClasses = v28;

    v24->_writeCoalescingDelay = a7;
    v24->_writeCoalescingLeeway = a8;
    v30 = [v23 copy];
    migrationBlock = v24->_migrationBlock;
    v24->_migrationBlock = v30;

    objc_storeStrong(&v24->_persister, a9);
    if (v21)
    {
      if ([v21 policy] == 2)
      {
        objc_storeStrong(&v24->_mergePolicy, a6);
      }

      v32 = [v21 policy];
    }

    else
    {
      v32 = 0;
    }

    v24->_mergePolicyType = v32;
    v24->_lock._os_unfair_lock_opaque = 0;
    v33 = [NSString stringWithFormat:@"com.apple.ids.persistent-map.%@.persist", v19];
    v34 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v35 = dispatch_queue_attr_make_with_qos_class(v34, QOS_CLASS_BACKGROUND, 0);

    v36 = dispatch_queue_create([v33 UTF8String], v35);
    serialPersistQueue = v24->_serialPersistQueue;
    v24->_serialPersistQueue = v36;

    v24->_isLoaded = 0;
    v24->_allowBackup = a11;
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

- (id)objectForKey:(id)a3
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
  v7 = self;
  v3 = a3;
  v8 = v3;
  [(IDSPersistentMap *)v7 _performCacheReadingBlock:v6];
  v4 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v4;
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6 || !v7)
  {
    sub_10091B070();
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1003D6508;
  v10[3] = &unk_100BD6E18;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(IDSPersistentMap *)self _performCacheModifyingBlock:v10];
}

- (void)removeObjectForKey:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    sub_10091B09C();
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1003D65B8;
  v6[3] = &unk_100BD6E40;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(IDSPersistentMap *)self _performCacheModifyingBlock:v6];
}

- (void)_performCacheModifyingBlock:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003D6658;
  v4[3] = &unk_100BD9A30;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(IDSPersistentMap *)v5 _performLockedBlock:v4];
}

- (void)_performCacheReadingBlock:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003D6884;
  v4[3] = &unk_100BD9A30;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(IDSPersistentMap *)v5 _performLockedBlock:v4];
}

- (void)setObject:(id)a3 forKeyedSubscript:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (!v6)
  {
    sub_10091B0C8();
  }

  v7 = v6;
  if (v8)
  {
    [(IDSPersistentMap *)self setObject:v8 forKey:v6];
  }

  else
  {
    [(IDSPersistentMap *)self removeObjectForKey:v6];
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

- (id)_decodeMapData:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    decodableClasses = self->_decodableClasses;
    v9[0] = 0;
    v6 = [NSKeyedUnarchiver unarchivedObjectOfClasses:decodableClasses fromData:v4 error:v9];
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

- (id)_encodeMap:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v8 = 0;
    v4 = [NSKeyedArchiver archivedDataWithRootObject:v3 requiringSecureCoding:0 error:&v8];
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

- (id)_mapByAddingMetadataToMap:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableDictionary);
  [v5 setObject:v4 forKey:@"ids-persistent-map"];

  v6 = [[IDSPersistentMapMetadata alloc] initWithVersionNumber:self->_versionNumber];
  [v5 setObject:v6 forKey:@"ids-persistent-map-metadata"];

  return v5;
}

- (int64_t)_versionNumberForPersistedMap:(id)a3
{
  v3 = [a3 objectForKey:@"ids-persistent-map-metadata"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 versionNumber];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_performLockedBlock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4[2](v4);

  os_unfair_lock_unlock(&self->_lock);
}

- (IDSPersistentMapDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end