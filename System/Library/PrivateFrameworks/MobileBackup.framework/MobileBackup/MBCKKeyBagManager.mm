@interface MBCKKeyBagManager
- (BOOL)fetchKeybagsWithOperationTracker:(id)tracker error:(id *)error;
- (BOOL)hasKeybagForEncryptionKey:(id)key;
- (BOOL)hasKeybagWithUUID:(id)d;
- (BOOL)hasKeybags;
- (MBCKDevice)device;
- (MBCKKeyBagManager)initWithDevice:(id)device keybagRefs:(id)refs;
- (NSDictionary)keybagsByUUIDString;
- (id)keybagRefs;
- (id)keybagWithUUID:(id)d;
- (void)addKeybag:(id)keybag;
- (void)fetchAllKeybagsWithOperationTracker:(id)tracker completion:(id)completion;
- (void)mergeKeybagRefs:(id)refs;
- (void)removeKeybagWithUUID:(id)d;
@end

@implementation MBCKKeyBagManager

- (MBCKKeyBagManager)initWithDevice:(id)device keybagRefs:(id)refs
{
  deviceCopy = device;
  refsCopy = refs;
  v27.receiver = self;
  v27.super_class = MBCKKeyBagManager;
  v8 = [(MBCKKeyBagManager *)&v27 init];
  v9 = v8;
  if (v8)
  {
    v22 = deviceCopy;
    [(MBCKKeyBagManager *)v8 setDevice:deviceCopy];
    v10 = +[NSMutableDictionary dictionary];
    [(MBCKKeyBagManager *)v9 setKeybagRefsByUUID:v10];

    v11 = +[NSMutableDictionary dictionary];
    [(MBCKKeyBagManager *)v9 setKeybagsByUUID:v11];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v12 = refsCopy;
    v13 = [v12 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v24;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v23 + 1) + 8 * i);
          recordID = [v17 recordID];
          v19 = [MBCKKeyBag UUIDStringFromRecordID:recordID];

          keybagRefsByUUID = [(MBCKKeyBagManager *)v9 keybagRefsByUUID];
          [keybagRefsByUUID setObject:v17 forKeyedSubscript:v19];
        }

        v14 = [v12 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v14);
    }

    deviceCopy = v22;
  }

  return v9;
}

- (void)fetchAllKeybagsWithOperationTracker:(id)tracker completion:(id)completion
{
  trackerCopy = tracker;
  completionCopy = completion;
  if (!trackerCopy)
  {
    __assert_rtn("[MBCKKeyBagManager fetchAllKeybagsWithOperationTracker:completion:]", "MBCKKeyBagManager.m", 39, "tracker");
  }

  v8 = completionCopy;
  device = [(MBCKKeyBagManager *)self device];
  v10 = MBGetDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    deviceUUID = [device deviceUUID];
    *buf = 138543362;
    v32 = deviceUUID;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Fetching all keybags from server for device %{public}@", buf, 0xCu);

    deviceUUID2 = [device deviceUUID];
    _MBLog();
  }

  if ([(MBCKKeyBagManager *)self hasFetchedKeybags])
  {
    v8[2](v8, 0);
  }

  else
  {
    keybagRefs = [(MBCKKeyBagManager *)self keybagRefs];
    v13 = [keybagRefs count] == 0;

    if (v13)
    {
      v22 = MBGetDefaultLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "No keybags references stored with device record", buf, 2u);
        _MBLog();
      }

      [(MBCKKeyBagManager *)self setHasFetchedKeybags:1];
      v8[2](v8, 0);
    }

    else
    {
      keybagRefs2 = [(MBCKKeyBagManager *)self keybagRefs];
      v15 = [NSPredicate predicateWithFormat:@"recordID IN %@", keybagRefs2];

      v16 = [CKQuery alloc];
      v17 = +[(MBCKModel *)MBCKKeyBag];
      v18 = [v16 initWithRecordType:v17 predicate:v15];

      v19 = [[CKQueryOperation alloc] initWithQuery:v18];
      syncZoneID = [trackerCopy syncZoneID];
      [v19 setZoneID:syncZoneID];

      objc_initWeak(buf, v19);
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_1001B4E04;
      v28[3] = &unk_1003C0E28;
      v21 = device;
      v29 = v21;
      selfCopy = self;
      [v19 setRecordFetchedBlock:v28];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_1001B4F50;
      v24[3] = &unk_1003C0E50;
      objc_copyWeak(&v27, buf);
      v24[4] = self;
      v25 = v21;
      v26 = v8;
      [v19 setQueryCompletionBlock:v24];
      [trackerCopy addDatabaseOperation:v19];

      objc_destroyWeak(&v27);
      objc_destroyWeak(buf);
    }
  }
}

- (BOOL)fetchKeybagsWithOperationTracker:(id)tracker error:(id *)error
{
  trackerCopy = tracker;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1001B5404;
  v17 = sub_1001B5414;
  v18 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001B541C;
  v10[3] = &unk_1003BC160;
  v12 = &v13;
  v7 = dispatch_semaphore_create(0);
  v11 = v7;
  [(MBCKKeyBagManager *)self fetchAllKeybagsWithOperationTracker:trackerCopy completion:v10];
  MBSemaphoreWaitForever();
  if (error)
  {
    *error = v14[5];
  }

  v8 = v14[5] == 0;

  _Block_object_dispose(&v13, 8);
  return v8;
}

- (BOOL)hasKeybagForEncryptionKey:(id)key
{
  v9 = 0;
  v4 = MBKeybagUUIDForEncryptionKey(key, &v9);
  v5 = v9;
  if (v4)
  {
    v6 = [MBCKKeyBag UUIDStringForKeyBagUUID:v4];
    v7 = [(MBCKKeyBagManager *)self hasKeybagWithUUID:v6];
  }

  else
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "MBKeybagUUIDForEncryptionKey failed: %@", buf, 0xCu);
      _MBLog();
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)hasKeybagWithUUID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  keybagsByUUID = [(MBCKKeyBagManager *)selfCopy keybagsByUUID];
  v7 = [keybagsByUUID objectForKeyedSubscript:dCopy];
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    keybagRefsByUUID = [(MBCKKeyBagManager *)selfCopy keybagRefsByUUID];
    v10 = [keybagRefsByUUID objectForKeyedSubscript:dCopy];
    v8 = v10 != 0;
  }

  objc_sync_exit(selfCopy);
  return v8;
}

- (BOOL)hasKeybags
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  keybagsByUUID = [(MBCKKeyBagManager *)selfCopy keybagsByUUID];
  if ([keybagsByUUID count])
  {
    v4 = 1;
  }

  else
  {
    keybagRefsByUUID = [(MBCKKeyBagManager *)selfCopy keybagRefsByUUID];
    v4 = [keybagRefsByUUID count] != 0;
  }

  objc_sync_exit(selfCopy);
  return v4;
}

- (void)addKeybag:(id)keybag
{
  keybagCopy = keybag;
  keybagUUIDString = [keybagCopy keybagUUIDString];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  keybagsByUUID = [(MBCKKeyBagManager *)selfCopy keybagsByUUID];
  [keybagsByUUID setObject:keybagCopy forKeyedSubscript:keybagUUIDString];

  objc_sync_exit(selfCopy);
}

- (void)removeKeybagWithUUID:(id)d
{
  dCopy = d;
  if (!dCopy)
  {
    __assert_rtn("[MBCKKeyBagManager removeKeybagWithUUID:]", "MBCKKeyBagManager.m", 125, "keybagUUIDString");
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  keybagsByUUID = [(MBCKKeyBagManager *)selfCopy keybagsByUUID];
  [keybagsByUUID setObject:0 forKeyedSubscript:dCopy];

  keybagRefsByUUID = [(MBCKKeyBagManager *)selfCopy keybagRefsByUUID];
  [keybagRefsByUUID setObject:0 forKeyedSubscript:dCopy];

  objc_sync_exit(selfCopy);
}

- (id)keybagWithUUID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  keybagsByUUID = [(MBCKKeyBagManager *)selfCopy keybagsByUUID];
  v7 = [keybagsByUUID objectForKeyedSubscript:dCopy];

  objc_sync_exit(selfCopy);

  return v7;
}

- (NSDictionary)keybagsByUUIDString
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  keybagsByUUID = [(MBCKKeyBagManager *)selfCopy keybagsByUUID];
  objc_sync_exit(selfCopy);

  return keybagsByUUID;
}

- (id)keybagRefs
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = +[NSMutableArray array];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  keybagRefsByUUID = [(MBCKKeyBagManager *)selfCopy keybagRefsByUUID];
  allValues = [keybagRefsByUUID allValues];

  v6 = [allValues countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v6)
  {
    v7 = *v28;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        [v3 addObject:*(*(&v27 + 1) + 8 * i)];
      }

      v6 = [allValues countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v6);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  keybagsByUUID = [(MBCKKeyBagManager *)selfCopy keybagsByUUID];
  v10 = [keybagsByUUID countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v10)
  {
    v11 = *v24;
    do
    {
      for (j = 0; j != v10; j = j + 1)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(keybagsByUUID);
        }

        v13 = *(*(&v23 + 1) + 8 * j);
        keybagRefsByUUID2 = [(MBCKKeyBagManager *)selfCopy keybagRefsByUUID];
        v15 = [keybagRefsByUUID2 objectForKeyedSubscript:v13];
        v16 = v15 == 0;

        if (v16)
        {
          keybagsByUUID2 = [(MBCKKeyBagManager *)selfCopy keybagsByUUID];
          v18 = [keybagsByUUID2 objectForKeyedSubscript:v13];

          v19 = [CKReference alloc];
          recordID = [v18 recordID];
          v21 = [v19 initWithRecordID:recordID action:0];

          [v3 addObject:v21];
        }
      }

      v10 = [keybagsByUUID countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v10);
  }

  objc_sync_exit(selfCopy);

  return v3;
}

- (void)mergeKeybagRefs:(id)refs
{
  refsCopy = refs;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = refsCopy;
  v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        recordID = [v9 recordID];
        v11 = [MBCKKeyBag UUIDStringFromRecordID:recordID];

        keybagRefsByUUID = [(MBCKKeyBagManager *)selfCopy keybagRefsByUUID];
        v13 = [keybagRefsByUUID objectForKeyedSubscript:v11];
        if (v13)
        {
        }

        else
        {
          keybagsByUUID = [(MBCKKeyBagManager *)selfCopy keybagsByUUID];
          v15 = [keybagsByUUID objectForKeyedSubscript:v11];
          v16 = v15 == 0;

          if (v16)
          {
            keybagRefsByUUID2 = [(MBCKKeyBagManager *)selfCopy keybagRefsByUUID];
            [keybagRefsByUUID2 setObject:v9 forKeyedSubscript:v11];

            [(MBCKKeyBagManager *)selfCopy setHasFetchedKeybags:0];
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  objc_sync_exit(selfCopy);
}

- (MBCKDevice)device
{
  WeakRetained = objc_loadWeakRetained(&self->_device);

  return WeakRetained;
}

@end