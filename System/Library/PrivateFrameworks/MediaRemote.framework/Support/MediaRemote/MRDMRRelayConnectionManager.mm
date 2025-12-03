@interface MRDMRRelayConnectionManager
+ (id)sharedManager;
- (NSString)debugDescription;
- (id)connectionForOutputDeviceUID:(id)d;
- (void)_callPendingCompletions;
- (void)addObserver:(id)observer;
- (void)ingestConnection:(id)connection;
- (void)removeObserver:(id)observer;
- (void)transportDidClose:(id)close error:(id)error;
- (void)waitForConnectionWithOutputDeviceUID:(id)d timeout:(double)timeout completion:(id)completion;
@end

@implementation MRDMRRelayConnectionManager

+ (id)sharedManager
{
  if (qword_1005292A8 != -1)
  {
    sub_1003A6604();
  }

  v3 = qword_1005292A0;

  return v3;
}

- (NSString)debugDescription
{
  v3 = [NSString alloc];
  v4 = objc_opt_class();
  connections = [(MRDMRRelayConnectionManager *)self connections];
  mr_formattedDebugDescription = [connections mr_formattedDebugDescription];
  pendingCompletionsPerOutputDeviceUID = [(MRDMRRelayConnectionManager *)self pendingCompletionsPerOutputDeviceUID];
  v8 = [v3 initWithFormat:@"<%@:%p {\n   connections=%@\n   completions=%@\n>", v4, self, mr_formattedDebugDescription, pendingCompletionsPerOutputDeviceUID];

  return v8;
}

- (void)ingestConnection:(id)connection
{
  connectionCopy = connection;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  connections = [(MRDMRRelayConnectionManager *)selfCopy connections];

  if (!connections)
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    [(MRDMRRelayConnectionManager *)selfCopy setConnections:v7];
  }

  connection = [connectionCopy connection];
  [connection addObserver:selfCopy];

  connection2 = [connectionCopy connection];
  isValid = [connection2 isValid];

  if (isValid)
  {
    deviceInfo = [connectionCopy deviceInfo];
    deviceUID = [deviceInfo deviceUID];

    connections2 = [(MRDMRRelayConnectionManager *)selfCopy connections];
    v14 = [connections2 objectForKeyedSubscript:deviceUID];

    if (v14)
    {
      v15 = _MRLogForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v28 = v14;
        v29 = 2114;
        v30 = deviceUID;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[MRDMRRelayConnectionManager] Pre-exisiting connection will be dropped: %{public}@, outputDeviceUID: %{public}@", buf, 0x16u);
      }
    }

    v16 = _MRLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      connection3 = [connectionCopy connection];
      *buf = 138543618;
      v28 = connection3;
      v29 = 2114;
      v30 = deviceUID;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[MRDMRRelayConnectionManager] Ingesting connection: %{public}@, outputDeviceUID: %{public}@", buf, 0x16u);
    }

    connections3 = [(MRDMRRelayConnectionManager *)selfCopy connections];
    [connections3 setObject:connectionCopy forKeyedSubscript:deviceUID];

    observers = [(MRDMRRelayConnectionManager *)selfCopy observers];
    allObjects = [observers allObjects];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000990E8;
    block[3] = &unk_1004B69D0;
    v24 = allObjects;
    v25 = selfCopy;
    v26 = connectionCopy;
    v21 = allObjects;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    connection4 = [connectionCopy connection];
    [connection4 removeObserver:selfCopy];
  }

  [(MRDMRRelayConnectionManager *)selfCopy _callPendingCompletions];
  objc_sync_exit(selfCopy);
}

- (id)connectionForOutputDeviceUID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  connections = [(MRDMRRelayConnectionManager *)selfCopy connections];
  v7 = [connections objectForKeyedSubscript:dCopy];

  objc_sync_exit(selfCopy);

  return v7;
}

- (void)waitForConnectionWithOutputDeviceUID:(id)d timeout:(double)timeout completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v10 = +[NSDate date];
  v11 = +[NSUUID UUID];
  uUIDString = [v11 UUIDString];

  v13 = [[NSMutableString alloc] initWithFormat:@"%@<%@>", @"MRDMRRelayConnectionManager.waitForConnection", uUIDString];
  v14 = v13;
  if (dCopy)
  {
    [v13 appendFormat:@" for %@", dCopy];
  }

  v15 = _MRLogForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v43 = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_100099668;
  v37[3] = &unk_1004B9900;
  v16 = dCopy;
  v38 = v16;
  v17 = uUIDString;
  v39 = v17;
  v18 = v10;
  v40 = v18;
  v19 = completionCopy;
  v41 = v19;
  v20 = objc_retainBlock(v37);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  pendingCompletionsPerOutputDeviceUID = [(MRDMRRelayConnectionManager *)selfCopy pendingCompletionsPerOutputDeviceUID];
  v23 = pendingCompletionsPerOutputDeviceUID == 0;

  if (v23)
  {
    v24 = objc_alloc_init(NSMutableDictionary);
    [(MRDMRRelayConnectionManager *)selfCopy setPendingCompletionsPerOutputDeviceUID:v24];
  }

  pendingCompletionsPerOutputDeviceUID2 = [(MRDMRRelayConnectionManager *)selfCopy pendingCompletionsPerOutputDeviceUID];
  v26 = [pendingCompletionsPerOutputDeviceUID2 objectForKeyedSubscript:v16];

  if (!v26)
  {
    v26 = objc_alloc_init(NSMutableArray);
    pendingCompletionsPerOutputDeviceUID3 = [(MRDMRRelayConnectionManager *)selfCopy pendingCompletionsPerOutputDeviceUID];
    [pendingCompletionsPerOutputDeviceUID3 setObject:v26 forKeyedSubscript:v16];
  }

  v28 = objc_retainBlock(v20);
  [v26 addObject:v28];

  [(MRDMRRelayConnectionManager *)selfCopy _callPendingCompletions];
  v29 = dispatch_time(0, (timeout * 1000000000.0));
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000999FC;
  block[3] = &unk_1004B9928;
  block[4] = selfCopy;
  v34 = v26;
  v35 = v19;
  v36 = v20;
  v30 = v20;
  v31 = v19;
  v32 = v26;
  dispatch_after(v29, &_dispatch_main_q, block);

  objc_sync_exit(selfCopy);
}

- (void)transportDidClose:(id)close error:(id)error
{
  closeCopy = close;
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  connections = [(MRDMRRelayConnectionManager *)selfCopy connections];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100099CC4;
  v15[3] = &unk_1004B9950;
  v10 = closeCopy;
  v16 = v10;
  v11 = [connections msv_firstWhere:v15];

  if (v11)
  {
    v12 = _MRLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v18 = v10;
      v19 = 2114;
      v20 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[MRDMRRelayConnectionManager] Removing connection: %{public}@ outputDeviceUID: %{public}@", buf, 0x16u);
    }

    connections2 = [(MRDMRRelayConnectionManager *)selfCopy connections];
    first = [v11 first];
    [connections2 removeObjectForKey:first];
  }

  objc_sync_exit(selfCopy);
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  observers = [(MRDMRRelayConnectionManager *)selfCopy observers];

  if (!observers)
  {
    v6 = +[NSHashTable weakObjectsHashTable];
    [(MRDMRRelayConnectionManager *)selfCopy setObservers:v6];
  }

  observers2 = [(MRDMRRelayConnectionManager *)selfCopy observers];
  [observers2 addObject:observerCopy];

  objc_sync_exit(selfCopy);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  observers = [(MRDMRRelayConnectionManager *)selfCopy observers];
  [observers removeObject:observerCopy];

  objc_sync_exit(selfCopy);
}

- (void)_callPendingCompletions
{
  pendingCompletionsPerOutputDeviceUID = [(MRDMRRelayConnectionManager *)self pendingCompletionsPerOutputDeviceUID];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100099EE0;
  v4[3] = &unk_1004B9978;
  v4[4] = self;
  [pendingCompletionsPerOutputDeviceUID enumerateKeysAndObjectsUsingBlock:v4];
}

@end