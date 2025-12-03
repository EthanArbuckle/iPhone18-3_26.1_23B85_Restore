@interface CommunicationsFilterBlockListStore
+ (id)sharedInstance;
- (BOOL)addItemForAllServices:(id)services;
- (BOOL)isItemInList:(id)list rebuiltBlockList:(id)blockList;
- (BOOL)removeAssociatedItems:(id)items;
- (BOOL)removeItemForAllServices:(id)services;
- (CommunicationsFilterBlockListStore)init;
- (id)_copyItems:(BOOL)items;
- (id)_isItemInList:(id)list blockList:(id)blockList;
- (void)_stopSharingFocusStatusWithFilterItem:(id)item;
- (void)_storeDidChangeExternally;
- (void)_updateStore:(id)store revision:(unint64_t)revision updateKVS:(BOOL)s updateLocal:(BOOL)local itemsNeedConversion:(BOOL)conversion;
- (void)clearBlockList;
- (void)dealloc;
- (void)handleNSUbiquitousKeyValueStoreDidChangeExternallyNotification:(id)notification;
- (void)migrateLegacyDataStoreIfNeeded;
- (void)synchronizeDataStore;
- (void)updateDataStore;
@end

@implementation CommunicationsFilterBlockListStore

+ (id)sharedInstance
{
  if (qword_10001D488 != -1)
  {
    sub_100011E94();
  }

  return qword_10001D490;
}

- (void)clearBlockList
{
  cachedBlockList = self->_cachedBlockList;
  if (cachedBlockList)
  {

    self->_cachedBlockList = 0;
  }
}

- (CommunicationsFilterBlockListStore)init
{
  v6.receiver = self;
  v6.super_class = CommunicationsFilterBlockListStore;
  v2 = [(CommunicationsFilterBlockListStore *)&v6 init];
  if (v2)
  {
    v2->_dataStore = [[NSUbiquitousKeyValueStore alloc] _initWithStoreIdentifier:@"com.apple.cmfsyncagent" usingEndToEndEncryption:1];
    [+[NSNotificationCenter defaultCenter](NSNotificationCenter addObserver:"addObserver:selector:name:object:" selector:v2 name:"handleNSUbiquitousKeyValueStoreDidChangeExternallyNotification:" object:NSUbiquitousKeyValueStoreDidChangeExternallyNotification, v2->_dataStore];
    [(CommunicationsFilterBlockListStore *)v2 synchronizeDataStore];
    IMSyncronizeAppPreferences();
    [(CommunicationsFilterBlockListStore *)v2 migrateLegacyDataStoreIfNeeded];
    if (_os_feature_enabled_impl())
    {
      v3 = objc_alloc_init(NSMutableArray);
      sub_100001670([(CommunicationsFilterBlockListStore *)v2 dataStore], v3, 0, 0, 0, 0);
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_100002A50;
      v5[3] = &unk_100018BD0;
      v5[4] = v2;
      v2->_contactsCache = [[CMFBlockedContactsCache alloc] initWithBlocklist:v5];
      v2->_blocklistAlertManager = objc_alloc_init(CMFBlockListAlertManager);
    }
  }

  return v2;
}

- (void)dealloc
{
  [(CommunicationsFilterBlockListStore *)self clearBlockList];

  v3.receiver = self;
  v3.super_class = CommunicationsFilterBlockListStore;
  [(CommunicationsFilterBlockListStore *)&v3 dealloc];
}

- (void)migrateLegacyDataStoreIfNeeded
{
  if ([(CMFSyncAgentDataStore *)[(CommunicationsFilterBlockListStore *)self dataStore] objectForKey:@"__kCMFBlockListStoreTopLevelKey"])
  {
    v3 = sub_1000015F8();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v9 = 138412290;
    v10 = @"__kCMFBlockListStoreTopLevelKey";
    v4 = "Cancelling legacy data store migration; data store contains a value for key %@";
    v5 = v3;
    goto LABEL_4;
  }

  v6 = [+[NSUbiquitousKeyValueStore defaultStore](NSUbiquitousKeyValueStore objectForKey:"objectForKey:", @"__kCMFBlockListStoreTopLevelKey"];
  v7 = sub_1000015F8();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = 138412290;
      v10 = @"__kCMFBlockListStoreTopLevelKey";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Performing legacy data store migration for key %@", &v9, 0xCu);
    }

    [(CMFSyncAgentDataStore *)[(CommunicationsFilterBlockListStore *)self dataStore] setObject:v6 forKey:@"__kCMFBlockListStoreTopLevelKey"];
  }

  else if (v8)
  {
    v9 = 138412290;
    v10 = @"__kCMFBlockListStoreTopLevelKey";
    v4 = "Cancelling legacy data store migration; legacy data store does not contain a value for key %@";
    v5 = v7;
LABEL_4:
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v4, &v9, 0xCu);
  }
}

- (void)synchronizeDataStore
{
  dataStore = self->_dataStore;
  if (objc_opt_respondsToSelector())
  {
    synchronize = [(CMFSyncAgentDataStore *)self->_dataStore synchronize];
    v5 = sub_1000015F8();
    v6 = v5;
    if (synchronize)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Data store synchronization completed successfully.", v7, 2u);
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100011EA8(v6);
    }
  }
}

- (void)updateDataStore
{
  v3 = sub_100001E4C();
  dispatch_assert_queue_V2(v3);
  dataStore = [(CommunicationsFilterBlockListStore *)self dataStore];
  v8 = 0;
  v5 = objc_alloc_init(NSMutableArray);
  v7 = 0;
  sub_100001670(dataStore, v5, 0, &v8, &v7 + 1, &v7);
  LODWORD(dataStore) = [v5 count] == 0;

  sub_100002D70(dataStore);
  v6 = sub_100001E4C();
  dispatch_async(v6, &stru_100018BF0);
}

- (void)_storeDidChangeExternally
{
  v3 = sub_1000015F8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "manually synchronizing and triggering update", v4, 2u);
  }

  IMSyncronizeAppPreferences();
  [(CommunicationsFilterBlockListStore *)self updateDataStore];
}

- (BOOL)addItemForAllServices:(id)services
{
  if (services)
  {
    v14 = 0;
    v5 = objc_alloc_init(NSMutableArray);
    v13 = 0;
    [(CommunicationsFilterBlockListStore *)self clearBlockList];
    sub_100001670([(CommunicationsFilterBlockListStore *)self dataStore], v5, 0, &v14, &v13 + 1, &v13);
    if ([v5 count] >= 0x4E21)
    {
      v6 = sub_1000015F8();
      v7 = 0;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v16 = 20000;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[WARN] Block list is too large, greater than %d, not adding", buf, 8u);
        v7 = 0;
      }

      goto LABEL_15;
    }

    v9 = [(CommunicationsFilterBlockListStore *)self _isItemInList:services blockList:v5];
    v7 = v9 == 0;
    if (v9)
    {
      v10 = HIBYTE(v13);
      v11 = HIBYTE(v13) ^ 1 | v13;
      if ((v13 & 0x100) == 0 && (v13 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      [v5 addObject:services];
      ++v14;
      v10 = 1;
      v13 = 257;
      v11 = 1;
    }

    [(CommunicationsFilterBlockListStore *)self _updateStore:v5 revision:v14 updateKVS:v11 & 1 updateLocal:v10 & 1 itemsNeedConversion:1];
    [(CommunicationsFilterBlockListStore *)self _stopSharingFocusStatusWithFilterItem:services];
LABEL_14:
    sub_100002D70([v5 count] == 0);
LABEL_15:

    return v7;
  }

  v8 = sub_1000015F8();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
  {
    sub_100011EEC(v8);
  }

  return 0;
}

- (BOOL)removeItemForAllServices:(id)services
{
  v5 = sub_1000015F8();
  v6 = v5;
  if (services)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = services;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received request to remove %@", buf, 0xCu);
    }

    if (_os_feature_enabled_impl())
    {
      return [(CommunicationsFilterBlockListStore *)self removeAssociatedItems:services];
    }

    *buf = 0;
    v13 = 0;
    [(CommunicationsFilterBlockListStore *)self clearBlockList];
    v8 = objc_alloc_init(NSMutableArray);
    sub_100001670([(CommunicationsFilterBlockListStore *)self dataStore], v8, 0, buf, &v13 + 1, &v13);
    v9 = [(CommunicationsFilterBlockListStore *)self _isItemInList:services blockList:v8];
    v7 = v9 != 0;
    if (v9)
    {
      [v8 removeObject:v9];
      ++*buf;
      v10 = 1;
      v13 = 257;
      v11 = 1;
    }

    else
    {
      v10 = HIBYTE(v13);
      v11 = HIBYTE(v13) ^ 1 | v13;
      if ((v13 & 0x100) == 0 && (v13 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    [(CommunicationsFilterBlockListStore *)self _updateStore:v8 revision:*buf updateKVS:v11 & 1 updateLocal:v10 & 1 itemsNeedConversion:1];
LABEL_12:
    sub_100002D70([v8 count] == 0);

    return v7;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    sub_100011F30(v6);
  }

  return 0;
}

- (BOOL)removeAssociatedItems:(id)items
{
  v24 = 0;
  v23 = 0;
  [(CommunicationsFilterBlockListStore *)self clearBlockList];
  v5 = objc_alloc_init(NSMutableArray);
  sub_100001670([(CommunicationsFilterBlockListStore *)self dataStore], v5, 0, &v24, &v23 + 1, &v23);
  if (![(CommunicationsFilterBlockListStore *)self isItemInList:items rebuiltBlockList:v5])
  {
    v17 = sub_1000015F8();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "No need to query associated handles, we've already removed them", buf, 2u);
    }

    goto LABEL_17;
  }

  v6 = [(CMFBlockedContactsCache *)self->_contactsCache associatedContacts:items];
  v7 = [v6 objectForKeyedSubscript:@"associatedFilterItems"];
  v8 = [v6 objectForKeyedSubscript:@"associatedContacts"];
  v9 = sub_1000015F8();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Remove the following handles: %@", buf, 0xCu);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [v7 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (!v10)
  {
    goto LABEL_17;
  }

  v11 = v10;
  v12 = 0;
  v13 = *v20;
  do
  {
    for (i = 0; i != v11; i = i + 1)
    {
      if (*v20 != v13)
      {
        objc_enumerationMutation(v7);
      }

      v15 = [(CommunicationsFilterBlockListStore *)self _isItemInList:*(*(&v19 + 1) + 8 * i) blockList:v5];
      if (v15)
      {
        [v5 removeObject:v15];
        v12 = 1;
      }
    }

    v11 = [v7 countByEnumeratingWithState:&v19 objects:v25 count:16];
  }

  while (v11);
  if ((v12 & 1) == 0)
  {
LABEL_17:
    v16 = 0;
    goto LABEL_18;
  }

  v16 = 1;
  v23 = 257;
  ++v24;
  [(CMFBlockListAlertManager *)self->_blocklistAlertManager postBlockListChangeAlertIfNecessaryWithUpdatedContacts:v8];
LABEL_18:
  if (v23 & 0x100) != 0 || (v23)
  {
    [CommunicationsFilterBlockListStore _updateStore:"_updateStore:revision:updateKVS:updateLocal:itemsNeedConversion:" revision:v5 updateKVS:v24 updateLocal:v23 & 1u | ((v23 & 0x100) == 0) itemsNeedConversion:?];
  }

  sub_100002D70([v5 count] == 0);

  return v16;
}

- (id)_copyItems:(BOOL)items
{
  itemsCopy = items;
  v34 = 0;
  v33 = 0;
  [(CommunicationsFilterBlockListStore *)self clearBlockList];
  v5 = objc_alloc_init(NSMutableArray);
  sub_100001670([(CommunicationsFilterBlockListStore *)self dataStore], v5, itemsCopy, &v34, &v33 + 1, &v33);
  if (v33 & 0x100) != 0 || (v33)
  {
    [CommunicationsFilterBlockListStore _updateStore:"_updateStore:revision:updateKVS:updateLocal:itemsNeedConversion:" revision:v5 updateKVS:v34 updateLocal:v33 & 1u | ((v33 & 0x100) == 0) itemsNeedConversion:?];
  }

  if (!_os_feature_enabled_impl())
  {
    return v5;
  }

  getBlockedCache = [(CMFBlockedContactsCache *)[(CommunicationsFilterBlockListStore *)self contactsCache] getBlockedCache];
  v7 = objc_alloc_init(NSMutableArray);
  if (itemsCopy)
  {
    v31 = 0uLL;
    v32 = 0uLL;
    v29 = 0uLL;
    v30 = 0uLL;
    v8 = [getBlockedCache countByEnumeratingWithState:&v29 objects:v38 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v30;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v30 != v10)
          {
            objc_enumerationMutation(getBlockedCache);
          }

          [v7 addObject:{objc_msgSend(*(*(&v29 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v9 = [getBlockedCache countByEnumeratingWithState:&v29 objects:v38 count:16];
      }

      while (v9);
    }

    v12 = [v7 arrayByAddingObjectsFromArray:v5];
    v13 = v12;

    v14 = sub_1000015F8();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v12 count];
      *buf = 134217984;
      v37 = v15;
LABEL_30:
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Returning blockList with size %lu", buf, 0xCu);
    }
  }

  else
  {
    v27 = 0uLL;
    v28 = 0uLL;
    v25 = 0uLL;
    v26 = 0uLL;
    v16 = [v5 countByEnumeratingWithState:&v25 objects:v35 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v26;
      do
      {
        for (j = 0; j != v17; j = j + 1)
        {
          if (*v26 != v18)
          {
            objc_enumerationMutation(v5);
          }

          v20 = *(*(&v25 + 1) + 8 * j);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v7 addObject:v20];
          }

          else
          {
            v21 = [[CommunicationFilterItem alloc] initWithDictionaryRepresentation:v20];
            if (v21)
            {
              [v7 addObject:v21];
            }
          }
        }

        v17 = [v5 countByEnumeratingWithState:&v25 objects:v35 count:16];
      }

      while (v17);
    }

    v12 = [v7 arrayByAddingObjectsFromArray:getBlockedCache];
    v22 = v12;

    v14 = sub_1000015F8();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [v12 count];
      *buf = 134217984;
      v37 = v23;
      goto LABEL_30;
    }
  }

  return v12;
}

- (id)_isItemInList:(id)list blockList:(id)blockList
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [blockList countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = *v13;
LABEL_3:
  v9 = 0;
  while (1)
  {
    if (*v13 != v8)
    {
      objc_enumerationMutation(blockList);
    }

    v10 = *(*(&v12 + 1) + 8 * v9);
    if ([v10 matchesFilterItem:list])
    {
      return v10;
    }

    if (v7 == ++v9)
    {
      v7 = [blockList countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (BOOL)isItemInList:(id)list rebuiltBlockList:(id)blockList
{
  v13 = 0;
  v12 = 0;
  if (![(CommunicationsFilterBlockListStore *)self cachedBlockList])
  {
    if (!blockList)
    {
      blockList = +[NSMutableArray array];
      sub_100001670([(CommunicationsFilterBlockListStore *)self dataStore], blockList, 0, &v13, &v12 + 1, &v12);
    }

    [(CommunicationsFilterBlockListStore *)self setCachedBlockList:blockList];
  }

  v7 = [(CommunicationsFilterBlockListStore *)self _isItemInList:list blockList:[(CommunicationsFilterBlockListStore *)self cachedBlockList]];
  if ((v12 & 0x100) != 0 || v12 == 1)
  {
    cachedBlockList = [(CommunicationsFilterBlockListStore *)self cachedBlockList];
    [(CommunicationsFilterBlockListStore *)self _updateStore:cachedBlockList revision:v13 updateKVS:v12 updateLocal:HIBYTE(v12) itemsNeedConversion:1];
  }

  v9 = _os_feature_enabled_impl();
  v10 = v9;
  if (v7)
  {
    LOBYTE(v9) = 1;
  }

  if (v10 && !v7)
  {
    LOBYTE(v9) = [(CMFBlockedContactsCache *)self->_contactsCache isItemBlocked:list];
  }

  return v9;
}

- (void)_updateStore:(id)store revision:(unint64_t)revision updateKVS:(BOOL)s updateLocal:(BOOL)local itemsNeedConversion:(BOOL)conversion
{
  conversionCopy = conversion;
  localCopy = local;
  sCopy = s;
  if (s || local)
  {
    if (_os_feature_enabled_impl())
    {
      revisionCopy = revision;
      selfCopy = self;
      v13 = objc_alloc_init(NSMutableArray);
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v14 = [store countByEnumeratingWithState:&v34 objects:v42 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v35;
        do
        {
          v17 = 0;
          do
          {
            if (*v35 != v16)
            {
              objc_enumerationMutation(store);
            }

            v18 = *(*(&v34 + 1) + 8 * v17);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v13 addObject:v18];
            }

            else
            {
              v19 = [[CommunicationFilterItem alloc] initWithDictionaryRepresentation:v18];
              if (v19)
              {
                [v13 addObject:v19];
              }
            }

            v17 = v17 + 1;
          }

          while (v15 != v17);
          v15 = [store countByEnumeratingWithState:&v34 objects:v42 count:16];
        }

        while (v15);
      }

      v20 = sub_1000015F8();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Regenerating contacts cache", buf, 2u);
      }

      self = selfCopy;
      [(CMFBlockedContactsCache *)[(CommunicationsFilterBlockListStore *)selfCopy contactsCache] updateCacheWithBlocklist:v13];

      revision = revisionCopy;
    }

    if (sCopy && localCopy)
    {
      if (conversionCopy)
      {
        v21 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [store count]);
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v22 = [store countByEnumeratingWithState:&v38 objects:buf count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v39;
          do
          {
            v25 = 0;
            do
            {
              if (*v39 != v24)
              {
                objc_enumerationMutation(store);
              }

              -[NSMutableArray addObject:](v21, "addObject:", [*(*(&v38 + 1) + 8 * v25) dictionaryRepresentation]);
              v25 = v25 + 1;
            }

            while (v23 != v25);
            v23 = [store countByEnumeratingWithState:&v38 objects:buf count:16];
          }

          while (v23);
        }

        store = v21;
      }

      v26 = +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 1), @"__kCMFBlockListStoreVersionKey", store, @"__kCMFBlockListStoreArrayKey", +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", revision), @"__kCMFBlockListStoreRevisionKey", +[NSDate date], @"__kCMFBlockListStoreRevisionTimestampKey", @"__kCMFBlockListStoreTypeValue", @"__kCMFBlockListStoreTypeKey", 0);
    }

    else
    {
      v26 = sCopy ? IMGetAppValueForKey() : [(CMFSyncAgentDataStore *)[(CommunicationsFilterBlockListStore *)self dataStore] objectForKey:@"__kCMFBlockListStoreTopLevelKey"];
    }

    v27 = v26;
    if (v26)
    {
      v28 = sub_1000015F8();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v31 = sub_100001BF8(v27);
        *buf = 138412802;
        v44 = v31;
        v45 = 1024;
        v46 = sCopy;
        v47 = 1024;
        v48 = localCopy;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "updating store to %@, updateKVS: %d, updateLocal: %d", buf, 0x18u);
        if (!sCopy)
        {
LABEL_37:
          if (!localCopy)
          {
            goto LABEL_39;
          }

          goto LABEL_38;
        }
      }

      else if (!sCopy)
      {
        goto LABEL_37;
      }

      [(CMFSyncAgentDataStore *)[(CommunicationsFilterBlockListStore *)self dataStore] setObject:v27 forKey:@"__kCMFBlockListStoreTopLevelKey"];
      if (!localCopy)
      {
LABEL_39:
        v29 = sub_1000015F8();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = sub_100001BF8([(CMFSyncAgentDataStore *)[(CommunicationsFilterBlockListStore *)self dataStore] objectForKey:@"__kCMFBlockListStoreTopLevelKey"]);
          *buf = 138412802;
          v44 = v30;
          v45 = 1024;
          v46 = sCopy;
          v47 = 1024;
          v48 = localCopy;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "store after updating %@, updateKVS:%d, updateLocal:%d", buf, 0x18u);
        }

        return;
      }

LABEL_38:
      IMSetAppValueForKey();
      IMSyncronizeAppPreferences();
      goto LABEL_39;
    }
  }
}

- (void)_stopSharingFocusStatusWithFilterItem:(id)item
{
  unformattedID = [item unformattedID];
  if ([unformattedID length])
  {
    v4 = sub_1000015F8();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = unformattedID;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Asking StatusKit to remove sharing of focus status with handle %@", &v7, 0xCu);
    }

    v5 = IMWeakLinkClass();
    v6 = IMWeakLinkClass();
    [objc_msgSend([v6 alloc] initWithStatusTypeIdentifier:{*IMWeakLinkSymbol()), "removeInvitedHandle:completion:", objc_msgSend([v5 alloc], "initWithString:", unformattedID), &stru_100018C30}];
  }
}

- (void)handleNSUbiquitousKeyValueStoreDidChangeExternallyNotification:(id)notification
{
  userInfo = [notification userInfo];
  if (!userInfo)
  {
    goto LABEL_7;
  }

  v6 = [userInfo objectForKeyedSubscript:NSUbiquitousKeyValueStoreChangeReasonKey];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = sub_1000015F8();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100011FEC(v6, v7);
    }

    goto LABEL_7;
  }

  if ([v6 integerValue] != 2)
  {
LABEL_7:
    v8 = sub_100001E4C();
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000041DC;
    v9[3] = &unk_100018C58;
    v9[4] = self;
    v9[5] = notification;
    dispatch_async(v8, v9);
  }
}

@end