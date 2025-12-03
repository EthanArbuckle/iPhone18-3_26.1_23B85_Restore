@interface BDSClientConnectionManager
- (BDSClientConnectionManager)init;
- (void)_handleFetchNotificationNames:(id)names latestChangeToken:(int64_t)token forClient:(id)client completion:(id)completion;
- (void)_handleServiceNotification:(id)notification;
- (void)_postServiceNotificationNames:(id)names latestChangeToken:(int64_t)token;
- (void)_postServiceNotificationNames:(id)names latestChangeToken:(int64_t)token forClients:(id)clients;
- (void)addClient:(id)client;
- (void)cq_postServiceNotificationNames:(id)names latestChangeToken:(int64_t)token forClients:(id)clients;
- (void)dealloc;
- (void)monitorServiceNotificationsWithConnection:(id)connection changeToken:(id)token completion:(id)completion;
- (void)removeClient:(id)client reason:(id)reason;
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

- (void)addClient:(id)client
{
  clientCopy = client;
  connection = [clientCopy connection];
  v6 = [(BDSClientConnectionManager *)self _keyForConnection:connection];

  os_unfair_lock_lock(&self->_stateLock);
  clients = [(BDSClientConnectionManager *)self clients];
  [clients addObject:clientCopy];

  clientsByConnection = [(BDSClientConnectionManager *)self clientsByConnection];
  [clientsByConnection setObject:clientCopy forKey:v6];

  v9 = sub_100002614();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    clients2 = [(BDSClientConnectionManager *)self clients];
    v11 = [clients2 count];
    clientsByConnection2 = [(BDSClientConnectionManager *)self clientsByConnection];
    v13 = 138543874;
    v14 = clientCopy;
    v15 = 2048;
    v16 = v11;
    v17 = 2048;
    v18 = [clientsByConnection2 count];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Added client %{public}@, count = %lu, %lu", &v13, 0x20u);
  }

  os_unfair_lock_unlock(&self->_stateLock);
}

- (void)removeClient:(id)client reason:(id)reason
{
  clientCopy = client;
  reasonCopy = reason;
  connection = [clientCopy connection];
  v9 = [(BDSClientConnectionManager *)self _keyForConnection:connection];

  os_unfair_lock_lock(&self->_stateLock);
  clients = [(BDSClientConnectionManager *)self clients];
  [clients removeObject:clientCopy];

  clientsByConnection = [(BDSClientConnectionManager *)self clientsByConnection];
  [clientsByConnection removeObjectForKey:v9];

  v12 = sub_100002614();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    clients2 = [(BDSClientConnectionManager *)self clients];
    v14 = [clients2 count];
    clientsByConnection2 = [(BDSClientConnectionManager *)self clientsByConnection];
    v16 = 138544130;
    v17 = clientCopy;
    v18 = 2114;
    v19 = reasonCopy;
    v20 = 2048;
    v21 = v14;
    v22 = 2048;
    v23 = [clientsByConnection2 count];
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Removed %{public}@ client %{public}@, count = %lu, %lu", &v16, 0x2Au);
  }

  os_unfair_lock_unlock(&self->_stateLock);
}

- (void)monitorServiceNotificationsWithConnection:(id)connection changeToken:(id)token completion:(id)completion
{
  connectionCopy = connection;
  tokenCopy = token;
  completionCopy = completion;
  v11 = [(BDSClientConnectionManager *)self _keyForConnection:connectionCopy];
  os_unfair_lock_lock(&self->_stateLock);
  clientsByConnection = [(BDSClientConnectionManager *)self clientsByConnection];
  v13 = [clientsByConnection objectForKeyedSubscript:v11];

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
      v27 = tokenCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "monitorServiceNotifications: %{public}@, changeToken: %{public}@", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    notificationStore = [(BDSClientConnectionManager *)self notificationStore];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100033108;
    v20[3] = &unk_100240BD0;
    objc_copyWeak(&v23, buf);
    v21 = v13;
    v22 = completionCopy;
    [notificationStore fetchNotificationNamesAfterToken:tokenCopy withCompletion:v20];

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
    v18 = objc_retainBlock(completionCopy);
    v19 = v18;
    if (v18)
    {
      (*(v18 + 2))(v18, v17);
    }
  }
}

- (void)_handleFetchNotificationNames:(id)names latestChangeToken:(int64_t)token forClient:(id)client completion:(id)completion
{
  completionCopy = completion;
  clientCopy = client;
  namesCopy = names;
  os_unfair_lock_lock(&self->_stateLock);
  [clientCopy setMonitorsServiceNotifications:1];
  os_unfair_lock_unlock(&self->_stateLock);
  v15 = clientCopy;
  v13 = [NSArray arrayWithObjects:&v15 count:1];

  [(BDSClientConnectionManager *)self _postServiceNotificationNames:namesCopy latestChangeToken:token forClients:v13];
  v14 = objc_retainBlock(completionCopy);

  if (v14)
  {
    v14[2](v14, 0);
  }
}

- (void)_handleServiceNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"name"];

  if ([v6 length])
  {
    objc_initWeak(&location, self);
    notificationStore = [(BDSClientConnectionManager *)self notificationStore];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000333BC;
    v8[3] = &unk_100240BF8;
    objc_copyWeak(&v10, &location);
    v9 = v6;
    [notificationStore enqueueNotificationName:v9 withCompletion:v8];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

- (void)_postServiceNotificationNames:(id)names latestChangeToken:(int64_t)token
{
  namesCopy = names;
  v7 = objc_alloc_init(NSMutableArray);
  os_unfair_lock_lock(&self->_stateLock);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  clients = [(BDSClientConnectionManager *)self clients];
  v9 = [clients countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(clients);
        }

        v13 = *(*(&v14 + 1) + 8 * i);
        if ([v13 monitorsServiceNotifications])
        {
          [v7 addObject:v13];
        }
      }

      v10 = [clients countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  os_unfair_lock_unlock(&self->_stateLock);
  if ([v7 count])
  {
    [(BDSClientConnectionManager *)self _postServiceNotificationNames:namesCopy latestChangeToken:token forClients:v7];
  }
}

- (void)_postServiceNotificationNames:(id)names latestChangeToken:(int64_t)token forClients:(id)clients
{
  namesCopy = names;
  clientsCopy = clients;
  v10 = [[BDSOSTransaction alloc] initWithTransactionName:"BDSClientConnectionManagerPostServiceNotificationNames"];
  v11 = sub_100002614();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v22 = namesCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "About to dispatch notifications %{public}@", buf, 0xCu);
  }

  callQueue = self->_callQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100033754;
  block[3] = &unk_100240C20;
  block[4] = self;
  v17 = namesCopy;
  v19 = v10;
  tokenCopy = token;
  v18 = clientsCopy;
  v13 = v10;
  v14 = clientsCopy;
  v15 = namesCopy;
  dispatch_async(callQueue, block);
}

- (void)cq_postServiceNotificationNames:(id)names latestChangeToken:(int64_t)token forClients:(id)clients
{
  namesCopy = names;
  clientsCopy = clients;
  dispatch_assert_queue_V2(self->_callQueue);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = clientsCopy;
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
          v24 = namesCopy;
          v25 = 2114;
          v26 = v15;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Sending notifications %{public}@ to client %{public}@", buf, 0x16u);
        }

        connection = [v15 connection];
        remoteObjectProxy = [connection remoteObjectProxy];

        [remoteObjectProxy handleServiceNotificationNames:namesCopy latestChangeToken:token];
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v12);
  }
}

@end