@interface NTKDCollectionCoordinator
+ (id)sharedInstance;
+ (void)runCollectionServer;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (NTKDCollectionCoordinator)init;
- (void)_onCalloutQueue_async:(id)a3;
- (void)_onQueue_async:(id)a3;
- (void)_queue_addCheckoutHandler:(id)a3 forStoreKey:(id)a4;
- (void)_queue_curateStore:(id)a3 withCompletion:(id)a4;
- (void)_queue_invokeCheckoutHandlersForStoreKey:(id)a3 withStore:(id)a4;
- (void)_queue_notifyObserversStoreCreated:(id)a3;
- (void)addCollectionLifecycleObserver:(id)a3;
- (void)checkoutStore:(id)a3;
- (void)checkoutStoreForCollectionIdentifier:(id)a3 deviceUUID:(id)a4 withHandler:(id)a5;
- (void)enumerateAllStoresIncludingUnpaired:(BOOL)a3 withHandler:(id)a4;
- (void)registerCurator:(id)a3 forCollectionIdentifier:(id)a4;
- (void)relinquishStore:(id)a3;
- (void)removeCollectionLifecycleObserver:(id)a3;
- (void)removeOrphanedResourceDirectories;
- (void)resetStoreDefaults:(id)a3;
@end

@implementation NTKDCollectionCoordinator

+ (void)runCollectionServer
{
  if (qword_100066B60 != -1)
  {
    sub_10003DD48();
  }
}

+ (id)sharedInstance
{
  if (qword_100066B70 != -1)
  {
    sub_10003DD5C();
  }

  v3 = qword_100066B68;

  return v3;
}

- (NTKDCollectionCoordinator)init
{
  v23.receiver = self;
  v23.super_class = NTKDCollectionCoordinator;
  v2 = [(NTKDCollectionCoordinator *)&v23 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.ntkd.collectioncoordinator", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.ntkd.collectioncoordinator.xpcIncomingMessageQueue", v5);
    xpcIncomingMessageQueue = v2->_xpcIncomingMessageQueue;
    v2->_xpcIncomingMessageQueue = v6;

    v8 = dispatch_queue_create("com.apple.ntkd.collectioncoordinator.callouts", 0);
    calloutQueue = v2->_calloutQueue;
    v2->_calloutQueue = v8;

    v10 = objc_alloc_init(NSMutableSet);
    clients = v2->_clients;
    v2->_clients = v10;

    v12 = objc_alloc_init(NSMutableDictionary);
    curatedStores = v2->_curatedStores;
    v2->_curatedStores = v12;

    v14 = objc_alloc_init(NSMutableDictionary);
    storesBeingCurated = v2->_storesBeingCurated;
    v2->_storesBeingCurated = v14;

    v16 = objc_alloc_init(NSMutableDictionary);
    checkoutHandlersByStoreKey = v2->_checkoutHandlersByStoreKey;
    v2->_checkoutHandlersByStoreKey = v16;

    v18 = +[NSHashTable weakObjectsHashTable];
    collectionLifecycleObservers = v2->_collectionLifecycleObservers;
    v2->_collectionLifecycleObservers = v18;

    v20 = objc_alloc_init(NSMutableDictionary);
    curatorsByCollectionIdentifier = v2->_curatorsByCollectionIdentifier;
    v2->_curatorsByCollectionIdentifier = v20;
  }

  return v2;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100003BD8;
  v9[3] = &unk_10005CA98;
  v10 = v5;
  v11 = self;
  v7 = v5;
  dispatch_async(queue, v9);

  return 1;
}

- (void)checkoutStoreForCollectionIdentifier:(id)a3 deviceUUID:(id)a4 withHandler:(id)a5
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100003E1C;
  v11[3] = &unk_10005CAE8;
  v12 = a3;
  v13 = a4;
  v14 = self;
  v15 = a5;
  v8 = v15;
  v9 = v13;
  v10 = v12;
  [(NTKDCollectionCoordinator *)self _onQueue_async:v11];
}

- (void)checkoutStore:(id)a3
{
  v3 = a3;
  v4 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "checked out store %@", &v5, 0xCu);
  }
}

- (void)relinquishStore:(id)a3
{
  v3 = a3;
  v4 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "relinquished store %@", &v5, 0xCu);
  }
}

- (void)enumerateAllStoresIncludingUnpaired:(BOOL)a3 withHandler:(id)a4
{
  v6 = a4;
  v7 = +[NSMutableSet set];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = +[PDRRegistry sharedInstance];
  v9 = [v8 devices];
  v10 = [v9 all];

  v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
    do
    {
      v14 = 0;
      do
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v23 + 1) + 8 * v14) pairingID];
        if (v15)
        {
          [v7 addObject:v15];
        }

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v12);
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000045E8;
  v18[3] = &unk_10005CC88;
  v22 = a3;
  v19 = v7;
  v20 = self;
  v21 = v6;
  v16 = v6;
  v17 = v7;
  [NTKDCollectionStore enumerateStoreIdentifiersWithBlock:v18];
}

- (void)addCollectionLifecycleObserver:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000487C;
  v4[3] = &unk_10005CA98;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(NTKDCollectionCoordinator *)v5 _onQueue_async:v4];
}

- (void)removeCollectionLifecycleObserver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100004A70;
  v7[3] = &unk_10005CA98;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)resetStoreDefaults:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100004B10;
  v4[3] = &unk_10005CA98;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(NTKDCollectionCoordinator *)v5 _onQueue_async:v4];
}

- (void)registerCurator:(id)a3 forCollectionIdentifier:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100004C60;
  v7[3] = &unk_10005CC38;
  v8 = self;
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  [(NTKDCollectionCoordinator *)v8 _onQueue_async:v7];
}

- (void)removeOrphanedResourceDirectories
{
  v3 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "checking for orphaned resource directories", buf, 2u);
  }

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100004F34;
  v24[3] = &unk_10005CCD8;
  v4 = objc_alloc_init(NSMutableArray);
  v25 = v4;
  [NTKDCollectionStore enumerateStoreIdentifiersWithBlock:v24];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100004F98;
  v21[3] = &unk_10005CD40;
  v5 = v4;
  v22 = v5;
  v23 = self;
  v6 = objc_retainBlock(v21);
  v7 = NTKCollectionIdentifierPhotosFaces;
  (v6[2])(v6, NTKCollectionIdentifierPhotosFaces, 0);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = +[PDRRegistry sharedInstance];
  v9 = [v8 devices];
  v10 = [v9 all];

  v11 = [v10 countByEnumeratingWithState:&v17 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    v14 = NTKCollectionIdentifierLibraryFaces;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v16 = [*(*(&v17 + 1) + 8 * v15) pairingID];
        (v6[2])(v6, v14, v16);
        (v6[2])(v6, v7, v16);

        v15 = v15 + 1;
      }

      while (v12 != v15);
      v12 = [v10 countByEnumeratingWithState:&v17 objects:v27 count:16];
    }

    while (v12);
  }
}

- (void)_onQueue_async:(id)a3
{
  v4 = a3;
  sub_100007294(@"com.apple.ntkd.collectioncoordinator.busy");
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000050F4;
  block[3] = &unk_10005CB10;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);
}

- (void)_onCalloutQueue_async:(id)a3
{
  v4 = a3;
  sub_100007294(@"com.apple.ntkd.collectioncoordinator.callout");
  calloutQueue = self->_calloutQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000051D8;
  block[3] = &unk_10005CB10;
  v8 = v4;
  v6 = v4;
  dispatch_async(calloutQueue, block);
}

- (void)_queue_addCheckoutHandler:(id)a3 forStoreKey:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(NSMutableDictionary *)self->_checkoutHandlersByStoreKey objectForKey:v6];
  if (!v7)
  {
    v7 = objc_alloc_init(NSMutableArray);
    [(NSMutableDictionary *)self->_checkoutHandlersByStoreKey setObject:v7 forKey:v6];
  }

  v8 = [v10 copy];
  v9 = objc_retainBlock(v8);
  [v7 addObject:v9];
}

- (void)_queue_notifyObserversStoreCreated:(id)a3
{
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_collectionLifecycleObservers;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 3221225472;
        v11[2] = sub_100005448;
        v11[3] = &unk_10005CA98;
        v11[4] = v10;
        v12 = v4;
        [(NTKDCollectionCoordinator *)self _onCalloutQueue_async:v11];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (void)_queue_invokeCheckoutHandlersForStoreKey:(id)a3 withStore:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSMutableDictionary *)self->_checkoutHandlersByStoreKey objectForKey:v6];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        (*(*(*(&v13 + 1) + 8 * v12) + 16))();
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }

  [(NSMutableDictionary *)self->_checkoutHandlersByStoreKey removeObjectForKey:v6];
}

- (void)_queue_curateStore:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 collectionIdentifier];
  v9 = [(NSMutableDictionary *)self->_curatorsByCollectionIdentifier objectForKey:v8];
  if (v9)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100005740;
    v11[3] = &unk_10005CD90;
    v12 = v6;
    v13 = v8;
    v14 = v9;
    v15 = self;
    v16 = v7;
    [(NTKDCollectionCoordinator *)self _onCalloutQueue_async:v11];
  }

  else
  {
    v10 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "no curator for store %@", buf, 0xCu);
    }

    [v6 markInitialSetupComplete];
    v7[2](v7);
  }
}

@end