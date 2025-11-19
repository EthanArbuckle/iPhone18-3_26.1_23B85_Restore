@interface MBCKKeyBagManager
- (BOOL)fetchKeybagsWithOperationTracker:(id)a3 error:(id *)a4;
- (BOOL)hasKeybagForEncryptionKey:(id)a3;
- (BOOL)hasKeybagWithUUID:(id)a3;
- (BOOL)hasKeybags;
- (MBCKDevice)device;
- (MBCKKeyBagManager)initWithDevice:(id)a3 keybagRefs:(id)a4;
- (NSDictionary)keybagsByUUIDString;
- (id)keybagRefs;
- (id)keybagWithUUID:(id)a3;
- (void)addKeybag:(id)a3;
- (void)fetchAllKeybagsWithOperationTracker:(id)a3 completion:(id)a4;
- (void)mergeKeybagRefs:(id)a3;
- (void)removeKeybagWithUUID:(id)a3;
@end

@implementation MBCKKeyBagManager

- (MBCKKeyBagManager)initWithDevice:(id)a3 keybagRefs:(id)a4
{
  v6 = a3;
  v7 = a4;
  v27.receiver = self;
  v27.super_class = MBCKKeyBagManager;
  v8 = [(MBCKKeyBagManager *)&v27 init];
  v9 = v8;
  if (v8)
  {
    v22 = v6;
    [(MBCKKeyBagManager *)v8 setDevice:v6];
    v10 = +[NSMutableDictionary dictionary];
    [(MBCKKeyBagManager *)v9 setKeybagRefsByUUID:v10];

    v11 = +[NSMutableDictionary dictionary];
    [(MBCKKeyBagManager *)v9 setKeybagsByUUID:v11];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v12 = v7;
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
          v18 = [v17 recordID];
          v19 = [MBCKKeyBag UUIDStringFromRecordID:v18];

          v20 = [(MBCKKeyBagManager *)v9 keybagRefsByUUID];
          [v20 setObject:v17 forKeyedSubscript:v19];
        }

        v14 = [v12 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v14);
    }

    v6 = v22;
  }

  return v9;
}

- (void)fetchAllKeybagsWithOperationTracker:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    __assert_rtn("[MBCKKeyBagManager fetchAllKeybagsWithOperationTracker:completion:]", "MBCKKeyBagManager.m", 39, "tracker");
  }

  v8 = v7;
  v9 = [(MBCKKeyBagManager *)self device];
  v10 = MBGetDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v9 deviceUUID];
    *buf = 138543362;
    v32 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Fetching all keybags from server for device %{public}@", buf, 0xCu);

    v23 = [v9 deviceUUID];
    _MBLog();
  }

  if ([(MBCKKeyBagManager *)self hasFetchedKeybags])
  {
    v8[2](v8, 0);
  }

  else
  {
    v12 = [(MBCKKeyBagManager *)self keybagRefs];
    v13 = [v12 count] == 0;

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
      v14 = [(MBCKKeyBagManager *)self keybagRefs];
      v15 = [NSPredicate predicateWithFormat:@"recordID IN %@", v14];

      v16 = [CKQuery alloc];
      v17 = +[(MBCKModel *)MBCKKeyBag];
      v18 = [v16 initWithRecordType:v17 predicate:v15];

      v19 = [[CKQueryOperation alloc] initWithQuery:v18];
      v20 = [v6 syncZoneID];
      [v19 setZoneID:v20];

      objc_initWeak(buf, v19);
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_1001B4E04;
      v28[3] = &unk_1003C0E28;
      v21 = v9;
      v29 = v21;
      v30 = self;
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
      [v6 addDatabaseOperation:v19];

      objc_destroyWeak(&v27);
      objc_destroyWeak(buf);
    }
  }
}

- (BOOL)fetchKeybagsWithOperationTracker:(id)a3 error:(id *)a4
{
  v6 = a3;
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
  [(MBCKKeyBagManager *)self fetchAllKeybagsWithOperationTracker:v6 completion:v10];
  MBSemaphoreWaitForever();
  if (a4)
  {
    *a4 = v14[5];
  }

  v8 = v14[5] == 0;

  _Block_object_dispose(&v13, 8);
  return v8;
}

- (BOOL)hasKeybagForEncryptionKey:(id)a3
{
  v9 = 0;
  v4 = MBKeybagUUIDForEncryptionKey(a3, &v9);
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

- (BOOL)hasKeybagWithUUID:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(MBCKKeyBagManager *)v5 keybagsByUUID];
  v7 = [v6 objectForKeyedSubscript:v4];
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v9 = [(MBCKKeyBagManager *)v5 keybagRefsByUUID];
    v10 = [v9 objectForKeyedSubscript:v4];
    v8 = v10 != 0;
  }

  objc_sync_exit(v5);
  return v8;
}

- (BOOL)hasKeybags
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(MBCKKeyBagManager *)v2 keybagsByUUID];
  if ([v3 count])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(MBCKKeyBagManager *)v2 keybagRefsByUUID];
    v4 = [v5 count] != 0;
  }

  objc_sync_exit(v2);
  return v4;
}

- (void)addKeybag:(id)a3
{
  v7 = a3;
  v4 = [v7 keybagUUIDString];
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(MBCKKeyBagManager *)v5 keybagsByUUID];
  [v6 setObject:v7 forKeyedSubscript:v4];

  objc_sync_exit(v5);
}

- (void)removeKeybagWithUUID:(id)a3
{
  v7 = a3;
  if (!v7)
  {
    __assert_rtn("[MBCKKeyBagManager removeKeybagWithUUID:]", "MBCKKeyBagManager.m", 125, "keybagUUIDString");
  }

  v4 = self;
  objc_sync_enter(v4);
  v5 = [(MBCKKeyBagManager *)v4 keybagsByUUID];
  [v5 setObject:0 forKeyedSubscript:v7];

  v6 = [(MBCKKeyBagManager *)v4 keybagRefsByUUID];
  [v6 setObject:0 forKeyedSubscript:v7];

  objc_sync_exit(v4);
}

- (id)keybagWithUUID:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(MBCKKeyBagManager *)v5 keybagsByUUID];
  v7 = [v6 objectForKeyedSubscript:v4];

  objc_sync_exit(v5);

  return v7;
}

- (NSDictionary)keybagsByUUIDString
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(MBCKKeyBagManager *)v2 keybagsByUUID];
  objc_sync_exit(v2);

  return v3;
}

- (id)keybagRefs
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = +[NSMutableArray array];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v4 = [(MBCKKeyBagManager *)v2 keybagRefsByUUID];
  v5 = [v4 allValues];

  v6 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v6)
  {
    v7 = *v28;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [v3 addObject:*(*(&v27 + 1) + 8 * i)];
      }

      v6 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v6);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = [(MBCKKeyBagManager *)v2 keybagsByUUID];
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v10)
  {
    v11 = *v24;
    do
    {
      for (j = 0; j != v10; j = j + 1)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v23 + 1) + 8 * j);
        v14 = [(MBCKKeyBagManager *)v2 keybagRefsByUUID];
        v15 = [v14 objectForKeyedSubscript:v13];
        v16 = v15 == 0;

        if (v16)
        {
          v17 = [(MBCKKeyBagManager *)v2 keybagsByUUID];
          v18 = [v17 objectForKeyedSubscript:v13];

          v19 = [CKReference alloc];
          v20 = [v18 recordID];
          v21 = [v19 initWithRecordID:v20 action:0];

          [v3 addObject:v21];
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v10);
  }

  objc_sync_exit(v2);

  return v3;
}

- (void)mergeKeybagRefs:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v4;
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
        v10 = [v9 recordID];
        v11 = [MBCKKeyBag UUIDStringFromRecordID:v10];

        v12 = [(MBCKKeyBagManager *)v5 keybagRefsByUUID];
        v13 = [v12 objectForKeyedSubscript:v11];
        if (v13)
        {
        }

        else
        {
          v14 = [(MBCKKeyBagManager *)v5 keybagsByUUID];
          v15 = [v14 objectForKeyedSubscript:v11];
          v16 = v15 == 0;

          if (v16)
          {
            v17 = [(MBCKKeyBagManager *)v5 keybagRefsByUUID];
            [v17 setObject:v9 forKeyedSubscript:v11];

            [(MBCKKeyBagManager *)v5 setHasFetchedKeybags:0];
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  objc_sync_exit(v5);
}

- (MBCKDevice)device
{
  WeakRetained = objc_loadWeakRetained(&self->_device);

  return WeakRetained;
}

@end