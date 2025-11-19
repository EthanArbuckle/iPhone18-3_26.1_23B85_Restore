@interface NADApplicationStore
+ (id)defaultStore;
+ (id)defaultURL;
+ (id)legacyDefaultURL;
- (NADApplicationStore)initWithURL:(id)a3;
- (id)_allApplicationsIncludingHidden:(BOOL)a3;
- (id)_applicationBundleIdentifiersForParentApplicationBundleIdentifier:(id)a3;
- (id)_storeMetadataURL;
- (id)allApplicationsIncludingHidden:(BOOL)a3;
- (id)beginTransaction;
- (id)description;
- (id)watchAppIDsForParentBundleID:(id)a3;
- (os_state_data_s)stateDataWithHints:(os_state_hints_s *)a3;
- (void)_insertApplication:(id)a3;
- (void)_insertApplicationIntoCache:(id)a3;
- (void)_loadEntitiesFromDisk;
- (void)_removeApplicationFromCache:(id)a3;
- (void)_removeApplicationWithBundleIdentifier:(id)a3;
- (void)_writeStoreMetadata;
- (void)getAllApplications:(id *)a3 UUID:(id *)a4 sequenceNumber:(id *)a5 includeHidden:(BOOL)a6;
- (void)insertApplication:(id)a3;
- (void)performTransactionWithBlock:(id)a3;
- (void)removeAllEntities;
- (void)removeApplicationWithBundleIdentifier:(id)a3;
- (void)removeApplicationsWithParentApplicationBundleIdentifier:(id)a3;
- (void)setSequenceNumber:(id)a3 UUID:(id)a4;
@end

@implementation NADApplicationStore

+ (id)defaultStore
{
  if (qword_100020BA8 != -1)
  {
    sub_10000B978();
  }

  v3 = qword_100020BA0;

  return v3;
}

+ (id)legacyDefaultURL
{
  v2 = objc_alloc_init(NSFileManager);
  v3 = [v2 URLsForDirectory:5 inDomains:1];
  v4 = [v3 firstObject];

  v5 = [v4 URLByAppendingPathComponent:@"NanoAppRegistry" isDirectory:1];

  return v5;
}

+ (id)defaultURL
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1000011D8;
  v10 = sub_1000011E8;
  v11 = 0;
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000011F0;
  v5[3] = &unk_100018498;
  v5[4] = &v6;
  [v2 waitForPairingStorePathPairingID:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NADApplicationStore)initWithURL:(id)a3
{
  v4 = a3;
  v48.receiver = self;
  v48.super_class = NADApplicationStore;
  v5 = [(NADApplicationStore *)&v48 init];
  if (v5)
  {
    v6 = objc_alloc_init(NSFileManager);
    fileManager = v5->_fileManager;
    v5->_fileManager = v6;

    if (!v4)
    {
      v4 = [objc_opt_class() defaultURL];
    }

    v8 = [v4 URLByAppendingPathComponent:@"Applications" isDirectory:1];
    applicationDirectory = v5->_applicationDirectory;
    v5->_applicationDirectory = v8;

    v10 = dispatch_queue_create("com.apple.nanoappregistry.applicationstore", 0);
    queue = v5->_queue;
    v5->_queue = v10;

    v12 = [v4 URLByAppendingPathComponent:@"Applications" isDirectory:1];
    v13 = +[NADAppSerializer applicationSerializer];
    v14 = [[NADEntityStore alloc] initWithDirectory:v12 serializer:v13 identifierBlock:&stru_1000184D8];
    applicationStore = v5->_applicationStore;
    v5->_applicationStore = v14;

    v16 = [v4 URLByAppendingPathComponent:@"Glances" isDirectory:1];
    v17 = +[NSFileManager defaultManager];
    [v17 removeItemAtURL:v16 error:0];

    v18 = objc_alloc_init(NSMutableDictionary);
    parentBundleIDToWatchAppMap = v5->_parentBundleIDToWatchAppMap;
    v5->_parentBundleIDToWatchAppMap = v18;

    v20 = objc_alloc_init(NSMutableDictionary);
    bundleIDToApplicationMap = v5->_bundleIDToApplicationMap;
    v5->_bundleIDToApplicationMap = v20;

    v22 = [(NADApplicationStore *)v5 _storeMetadataURL];
    v23 = [NSData dataWithContentsOfURL:v22];

    if (v23)
    {
      v44 = v12;
      v24 = objc_opt_class();
      v25 = objc_opt_class();
      v26 = objc_opt_class();
      v27 = objc_opt_class();
      v28 = [NSSet setWithObjects:v24, v25, v26, v27, objc_opt_class(), 0];
      v47 = 0;
      v29 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v28 fromData:v23 error:&v47];
      v30 = v47;
      v31 = [v29 mutableCopy];
      storeMetadata = v5->_storeMetadata;
      v5->_storeMetadata = v31;

      if (v30)
      {
        v33 = nar_workspace_log();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          sub_10000B9F8(v30, v33, v34, v35, v36, v37, v38, v39);
        }
      }

      v12 = v44;
    }

    if (![(NSMutableDictionary *)v5->_storeMetadata count])
    {
      v40 = objc_alloc_init(NSMutableDictionary);
      v41 = v5->_storeMetadata;
      v5->_storeMetadata = v40;
    }

    [(NADApplicationStore *)v5 _loadEntitiesFromDisk];
    objc_initWeak(&location, v5);
    v42 = v5->_queue;
    objc_copyWeak(&v45, &location);
    v5->_stateHandle = os_state_add_handler();
    objc_destroyWeak(&v45);
    objc_destroyWeak(&location);
  }

  return v5;
}

- (void)removeAllEntities
{
  v3 = [(NADApplicationStore *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = nar_workspace_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Remove all entities", v5, 2u);
  }

  [(NADApplicationStore *)self _resetStores];
  [(NSMutableDictionary *)self->_parentBundleIDToWatchAppMap removeAllObjects];
  [(NSMutableDictionary *)self->_bundleIDToApplicationMap removeAllObjects];
}

- (void)insertApplication:(id)a3
{
  v5 = a3;
  v4 = [(NADApplicationStore *)self queue];
  dispatch_assert_queue_V2(v4);

  [(NADApplicationStore *)self _insertApplication:v5];
}

- (void)removeApplicationWithBundleIdentifier:(id)a3
{
  v5 = a3;
  v4 = [(NADApplicationStore *)self queue];
  dispatch_assert_queue_V2(v4);

  [(NADApplicationStore *)self _removeApplicationWithBundleIdentifier:v5];
}

- (void)removeApplicationsWithParentApplicationBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(NADApplicationStore *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(NADApplicationStore *)self _applicationBundleIdentifiersForParentApplicationBundleIdentifier:v4];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(NADApplicationStore *)self removeApplicationWithBundleIdentifier:*(*(&v11 + 1) + 8 * v10)];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (id)_applicationBundleIdentifiersForParentApplicationBundleIdentifier:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_parentBundleIDToWatchAppMap objectForKeyedSubscript:a3];
  v4 = [v3 allObjects];

  return v4;
}

- (id)allApplicationsIncludingHidden:(BOOL)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1000011D8;
  v14 = sub_1000011E8;
  v15 = 0;
  v5 = [(NADApplicationStore *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001ABC;
  block[3] = &unk_100018528;
  block[4] = self;
  block[5] = &v10;
  v9 = a3;
  dispatch_sync(v5, block);

  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v6;
}

- (void)getAllApplications:(id *)a3 UUID:(id *)a4 sequenceNumber:(id *)a5 includeHidden:(BOOL)a6
{
  v11 = [(NADApplicationStore *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001BBC;
  block[3] = &unk_100018550;
  block[4] = self;
  block[5] = a3;
  v13 = a6;
  block[6] = a4;
  block[7] = a5;
  dispatch_sync(v11, block);
}

- (void)_loadEntitiesFromDisk
{
  v3 = [(NADEntityStore *)self->_applicationStore allEntities];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(NADApplicationStore *)self _insertApplicationIntoCache:*(*(&v8 + 1) + 8 * v7)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_insertApplication:(id)a3
{
  applicationStore = self->_applicationStore;
  v5 = a3;
  [(NADEntityStore *)applicationStore addEntity:v5];
  [(NADApplicationStore *)self _insertApplicationIntoCache:v5];
}

- (void)_insertApplicationIntoCache:(id)a3
{
  v4 = a3;
  v5 = [v4 parentApplicationBundleIdentifier];
  v7 = [(NADApplicationStore *)self watchAppIDsForParentBundleID:v5];

  v6 = [v4 applicationIdentifier];
  [v7 addObject:v6];
  [(NSMutableDictionary *)self->_bundleIDToApplicationMap setObject:v4 forKeyedSubscript:v6];
}

- (id)watchAppIDsForParentBundleID:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_parentBundleIDToWatchAppMap objectForKeyedSubscript:v4];
  v6 = v5;
  if (v4 && !v5)
  {
    v6 = +[NSMutableSet set];
    [(NSMutableDictionary *)self->_parentBundleIDToWatchAppMap setObject:v6 forKeyedSubscript:v4];
  }

  return v6;
}

- (void)_removeApplicationWithBundleIdentifier:(id)a3
{
  v4 = [(NSMutableDictionary *)self->_bundleIDToApplicationMap objectForKeyedSubscript:a3];
  if (v4)
  {
    v5 = v4;
    [(NADEntityStore *)self->_applicationStore removeEntity:v4];
    [(NADApplicationStore *)self _removeApplicationFromCache:v5];
  }

  _objc_release_x1();
}

- (void)_removeApplicationFromCache:(id)a3
{
  v4 = a3;
  v5 = [v4 parentApplicationBundleIdentifier];
  v7 = [(NADApplicationStore *)self watchAppIDsForParentBundleID:v5];

  v6 = [v4 applicationIdentifier];

  [v7 removeObject:v6];
  [(NSMutableDictionary *)self->_bundleIDToApplicationMap removeObjectForKey:v6];
}

- (id)_allApplicationsIncludingHidden:(BOOL)a3
{
  v4 = [(NSMutableDictionary *)self->_bundleIDToApplicationMap allValues];
  v5 = v4;
  if (a3)
  {
    v6 = v4;
  }

  else
  {
    v6 = +[NSMutableArray array];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v14 + 1) + 8 * i);
          if (([v12 isHidden] & 1) == 0)
          {
            [v6 addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }

  return v6;
}

- (void)setSequenceNumber:(id)a3 UUID:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(NADApplicationStore *)self queue];
  dispatch_assert_queue_V2(v7);

  if (v8)
  {
    [(NSMutableDictionary *)self->_storeMetadata setObject:v8 forKeyedSubscript:@"sequenceNumber"];
  }

  if (v6)
  {
    [(NSMutableDictionary *)self->_storeMetadata setObject:v6 forKeyedSubscript:@"UUID"];
  }

  [(NADApplicationStore *)self _writeStoreMetadata];
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(NADApplicationStore *)self applicationDirectory];
  v6 = [NSString stringWithFormat:@"<%@ %p path=%@>", v4, self, v5];;

  return v6;
}

- (id)_storeMetadataURL
{
  v2 = [(NADApplicationStore *)self applicationDirectory];
  v3 = [v2 URLByAppendingPathComponent:@"storeMetadata.dat" isDirectory:0];

  return v3;
}

- (void)_writeStoreMetadata
{
  v3 = nar_workspace_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    storeMetadata = self->_storeMetadata;
    *buf = 138412290;
    v18 = storeMetadata;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Writing store metadata: %@", buf, 0xCu);
  }

  v5 = [NSKeyedArchiver archivedDataWithRootObject:self->_storeMetadata];
  if (v5)
  {
    v6 = [(NADApplicationStore *)self _storeMetadataURL];
    v16 = 0;
    v7 = [v5 writeToURL:v6 options:268435457 error:&v16];
    v8 = v16;

    if ((v7 & 1) == 0)
    {
      v9 = nar_workspace_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10000BA64(v8, v9, v10, v11, v12, v13, v14, v15);
      }
    }
  }
}

- (id)beginTransaction
{
  v2 = [[NADApplicationStoreTransaction alloc] initWithApplicationStore:self];

  return v2;
}

- (void)performTransactionWithBlock:(id)a3
{
  queue = self->_queue;
  v5 = a3;
  dispatch_assert_queue_not_V2(queue);
  v6 = [(NADApplicationStore *)self beginTransaction];
  v5[2](v5, v6);

  [v6 commit:0];
}

- (os_state_data_s)stateDataWithHints:(os_state_hints_s *)a3
{
  v4 = [(NADApplicationStore *)self _allApplicationsIncludingHidden:1];
  v5 = [v4 count];

  v6 = [(NADApplicationStore *)self UUID];
  v7 = [(NADApplicationStore *)self sequenceNumber];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v6 UUIDString];
  v11 = [NSNumber numberWithInteger:v5];
  v12 = [NSString stringWithFormat:@"<%@ %p UUID=%@; sequenceNumber=%@; applicationCount=%@>", v9, self, v10, v7, v11];;

  v18 = 0;
  v13 = [NSPropertyListSerialization dataWithPropertyList:v12 format:200 options:0 error:&v18];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 length];
    v16 = malloc_type_calloc(1uLL, v15 + 200, 0x1000040BEF03554uLL);
    v16->var0 = 1;
    v16->var1.var1 = v15;
    __strlcpy_chk();
    memcpy(v16->var4, [v14 bytes], v15);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end