@interface NTKDComplicationStoreCoordinator
+ (id)sharedInstance;
+ (void)runComplicationStoreServer;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (NTKDComplicationStoreCoordinator)init;
- (void)_onCalloutQueue_async:(id)a3;
- (void)_onQueue_async:(id)a3;
- (void)_queue_notifyObserversStoreCreated:(id)a3;
- (void)addComplicationCollectionLifecycleObserver:(id)a3;
- (void)checkoutStoreForComplicationCollectionIdentifier:(id)a3 deviceUUID:(id)a4 withHandler:(id)a5;
- (void)removeComplicationCollectionLifecycleObserver:(id)a3;
@end

@implementation NTKDComplicationStoreCoordinator

+ (void)runComplicationStoreServer
{
  if (qword_100066C58 != -1)
  {
    sub_10003EA18();
  }
}

+ (id)sharedInstance
{
  if (qword_100066C68 != -1)
  {
    sub_10003EA2C();
  }

  v3 = qword_100066C60;

  return v3;
}

- (NTKDComplicationStoreCoordinator)init
{
  v16.receiver = self;
  v16.super_class = NTKDComplicationStoreCoordinator;
  v2 = [(NTKDComplicationStoreCoordinator *)&v16 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.ntkd.complicationcollectioncoordinator", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = dispatch_queue_create("com.apple.ntkd.complicationcollectioncoordinator.callouts", 0);
    calloutQueue = v2->_calloutQueue;
    v2->_calloutQueue = v5;

    v7 = objc_alloc_init(NSMutableSet);
    clients = v2->_clients;
    v2->_clients = v7;

    v9 = objc_alloc_init(NSMutableDictionary);
    stores = v2->_stores;
    v2->_stores = v9;

    v11 = objc_alloc_init(NSMutableDictionary);
    checkoutHandlersByStoreKey = v2->_checkoutHandlersByStoreKey;
    v2->_checkoutHandlersByStoreKey = v11;

    v13 = +[NSHashTable weakObjectsHashTable];
    collectionLifecycleObservers = v2->_collectionLifecycleObservers;
    v2->_collectionLifecycleObservers = v13;
  }

  return v2;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100020F6C;
  v9[3] = &unk_10005CA98;
  v10 = v5;
  v11 = self;
  v7 = v5;
  dispatch_async(queue, v9);

  return 1;
}

- (void)checkoutStoreForComplicationCollectionIdentifier:(id)a3 deviceUUID:(id)a4 withHandler:(id)a5
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000211A4;
  v11[3] = &unk_10005CAE8;
  v12 = a3;
  v13 = a4;
  v14 = self;
  v15 = a5;
  v8 = v15;
  v9 = v13;
  v10 = v12;
  [(NTKDComplicationStoreCoordinator *)self _onQueue_async:v11];
}

- (void)addComplicationCollectionLifecycleObserver:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100021438;
  v4[3] = &unk_10005CA98;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(NTKDComplicationStoreCoordinator *)v5 _onQueue_async:v4];
}

- (void)removeComplicationCollectionLifecycleObserver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002162C;
  v7[3] = &unk_10005CA98;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)_onQueue_async:(id)a3
{
  v4 = a3;
  sub_100007294(@"com.apple.ntkd.complicationcollectioncoordinator.busy");
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000216E0;
  block[3] = &unk_10005CB10;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);
}

- (void)_onCalloutQueue_async:(id)a3
{
  v4 = a3;
  sub_100007294(@"com.apple.ntkd.complicationcollectioncoordinator.callout");
  calloutQueue = self->_calloutQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000217C4;
  block[3] = &unk_10005CB10;
  v8 = v4;
  v6 = v4;
  dispatch_async(calloutQueue, block);
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
        v11[2] = sub_100021974;
        v11[3] = &unk_10005CA98;
        v11[4] = v10;
        v12 = v4;
        [(NTKDComplicationStoreCoordinator *)self _onCalloutQueue_async:v11];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

@end