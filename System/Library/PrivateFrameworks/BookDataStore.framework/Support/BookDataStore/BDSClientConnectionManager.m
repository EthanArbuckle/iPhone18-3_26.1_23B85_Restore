@interface BDSClientConnectionManager
- (BDSClientConnectionManager)init;
- (void)_handleFetchNotificationNames:(id)a3 latestChangeToken:(int64_t)a4 forClient:(id)a5 completion:(id)a6;
- (void)_handleServiceNotification:(id)a3;
- (void)_postServiceNotificationNames:(id)a3 latestChangeToken:(int64_t)a4;
- (void)_postServiceNotificationNames:(id)a3 latestChangeToken:(int64_t)a4 forClients:(id)a5;
- (void)addClient:(id)a3;
- (void)cq_postServiceNotificationNames:(id)a3 latestChangeToken:(int64_t)a4 forClients:(id)a5;
- (void)dealloc;
- (void)monitorServiceNotificationsWithConnection:(id)a3 changeToken:(id)a4 completion:(id)a5;
- (void)removeClient:(id)a3 reason:(id)a4;
@end

@implementation BDSClientConnectionManager

- (BDSClientConnectionManager)init
{
  v14.receiver = self;
  v14.super_class = BDSClientConnectionManager;
  v2 = [(BDSClientConnectionManager *)&v14 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("BDSClientConnectionManager.callQueue", v3);
    callQueue = v2->_callQueue;
    v2->_callQueue = v4;

    v2->_stateLock._os_unfair_lock_opaque = 0;
    v6 = objc_alloc_init(NSMutableArray);
    clients = v2->_clients;
    v2->_clients = v6;

    v8 = objc_alloc_init(NSMutableDictionary);
    clientsByConnection = v2->_clientsByConnection;
    v2->_clientsByConnection = v8;

    v10 = objc_alloc_init(BDSServiceNotificationStore);
    notificationStore = v2->_notificationStore;
    v2->_notificationStore = v10;

    if (sub_10000CE34())
    {
      v12 = +[NSNotificationCenter defaultCenter];
      [v12 addObserver:v2 selector:"_handleServiceNotification:" name:@"BDSServiceNotificationName" object:0];
    }
  }

  return v2;
}

- (void)dealloc
{
  if (sub_10000CE34())
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 removeObserver:self name:@"BDSServiceNotificationName" object:0];
  }

  v4.receiver = self;
  v4.super_class = BDSClientConnectionManager;
  [(BDSClientConnectionManager *)&v4 dealloc];
}

- (void)addClient:(id)a3
{
  v4 = a3;
  v5 = [v4 connection];
  v6 = [(BDSClientConnectionManager *)self _keyForConnection:v5];

  os_unfair_lock_lock(&self->_stateLock);
  v7 = [(BDSClientConnectionManager *)self clients];
  [v7 addObject:v4];

  v8 = [(BDSClientConnectionManager *)self clientsByConnection];
  [v8 setObject:v4 forKey:v6];

  v9 = sub_100002614();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(BDSClientConnectionManager *)self clients];
    v11 = [v10 count];
    v12 = [(BDSClientConnectionManager *)self clientsByConnection];
    v13 = 138543874;
    v14 = v4;
    v15 = 2048;
    v16 = v11;
    v17 = 2048;
    v18 = [v12 count];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Added client %{public}@, count = %lu, %lu", &v13, 0x20u);
  }

  os_unfair_lock_unlock(&self->_stateLock);
}

- (void)removeClient:(id)a3 reason:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 connection];
  v9 = [(BDSClientConnectionManager *)self _keyForConnection:v8];

  os_unfair_lock_lock(&self->_stateLock);
  v10 = [(BDSClientConnectionManager *)self clients];
  [v10 removeObject:v6];

  v11 = [(BDSClientConnectionManager *)self clientsByConnection];
  [v11 removeObjectForKey:v9];

  v12 = sub_100002614();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [(BDSClientConnectionManager *)self clients];
    v14 = [v13 count];
    v15 = [(BDSClientConnectionManager *)self clientsByConnection];
    v16 = 138544130;
    v17 = v6;
    v18 = 2114;
    v19 = v7;
    v20 = 2048;
    v21 = v14;
    v22 = 2048;
    v23 = [v15 count];
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Removed %{public}@ client %{public}@, count = %lu, %lu", &v16, 0x2Au);
  }

  os_unfair_lock_unlock(&self->_stateLock);
}

- (void)monitorServiceNotificationsWithConnection:(id)a3 changeToken:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(BDSClientConnectionManager *)self _keyForConnection:v8];
  os_unfair_lock_lock(&self->_stateLock);
  v12 = [(BDSClientConnectionManager *)self clientsByConnection];
  v13 = [v12 objectForKeyedSubscript:v11];

  os_unfair_lock_unlock(&self->_stateLock);
  v14 = sub_100002614();
  v15 = v14;
  if (v13)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v25 = v13;
      v26 = 2114;
      v27 = v9;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "monitorServiceNotifications: %{public}@, changeToken: %{public}@", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    v16 = [(BDSClientConnectionManager *)self notificationStore];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100033108;
    v20[3] = &unk_100240BD0;
    objc_copyWeak(&v23, buf);
    v21 = v13;
    v22 = v10;
    [v16 fetchNotificationNamesAfterToken:v9 withCompletion:v20];

    objc_destroyWeak(&v23);
    objc_destroyWeak(buf);
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1001BFC40(v11, v15);
    }

    v17 = [NSError errorWithDomain:@"BDSErrorDomain" code:1000 userInfo:0];
    v18 = objc_retainBlock(v10);
    v19 = v18;
    if (v18)
    {
      (*(v18 + 2))(v18, v17);
    }
  }
}

- (void)_handleFetchNotificationNames:(id)a3 latestChangeToken:(int64_t)a4 forClient:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  os_unfair_lock_lock(&self->_stateLock);
  [v11 setMonitorsServiceNotifications:1];
  os_unfair_lock_unlock(&self->_stateLock);
  v15 = v11;
  v13 = [NSArray arrayWithObjects:&v15 count:1];

  [(BDSClientConnectionManager *)self _postServiceNotificationNames:v12 latestChangeToken:a4 forClients:v13];
  v14 = objc_retainBlock(v10);

  if (v14)
  {
    v14[2](v14, 0);
  }
}

- (void)_handleServiceNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"name"];

  if ([v6 length])
  {
    objc_initWeak(&location, self);
    v7 = [(BDSClientConnectionManager *)self notificationStore];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000333BC;
    v8[3] = &unk_100240BF8;
    objc_copyWeak(&v10, &location);
    v9 = v6;
    [v7 enqueueNotificationName:v9 withCompletion:v8];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

- (void)_postServiceNotificationNames:(id)a3 latestChangeToken:(int64_t)a4
{
  v6 = a3;
  v7 = objc_alloc_init(NSMutableArray);
  os_unfair_lock_lock(&self->_stateLock);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [(BDSClientConnectionManager *)self clients];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * i);
        if ([v13 monitorsServiceNotifications])
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  os_unfair_lock_unlock(&self->_stateLock);
  if ([v7 count])
  {
    [(BDSClientConnectionManager *)self _postServiceNotificationNames:v6 latestChangeToken:a4 forClients:v7];
  }
}

- (void)_postServiceNotificationNames:(id)a3 latestChangeToken:(int64_t)a4 forClients:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [[BDSOSTransaction alloc] initWithTransactionName:"BDSClientConnectionManagerPostServiceNotificationNames"];
  v11 = sub_100002614();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v22 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "About to dispatch notifications %{public}@", buf, 0xCu);
  }

  callQueue = self->_callQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100033754;
  block[3] = &unk_100240C20;
  block[4] = self;
  v17 = v8;
  v19 = v10;
  v20 = a4;
  v18 = v9;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  dispatch_async(callQueue, block);
}

- (void)cq_postServiceNotificationNames:(id)a3 latestChangeToken:(int64_t)a4 forClients:(id)a5
{
  v8 = a3;
  v9 = a5;
  dispatch_assert_queue_V2(self->_callQueue);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        v16 = sub_100002614();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v24 = v8;
          v25 = 2114;
          v26 = v15;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Sending notifications %{public}@ to client %{public}@", buf, 0x16u);
        }

        v17 = [v15 connection];
        v18 = [v17 remoteObjectProxy];

        [v18 handleServiceNotificationNames:v8 latestChangeToken:a4];
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v12);
  }
}

@end