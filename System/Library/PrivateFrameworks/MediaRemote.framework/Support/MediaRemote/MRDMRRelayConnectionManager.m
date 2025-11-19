@interface MRDMRRelayConnectionManager
+ (id)sharedManager;
- (NSString)debugDescription;
- (id)connectionForOutputDeviceUID:(id)a3;
- (void)_callPendingCompletions;
- (void)addObserver:(id)a3;
- (void)ingestConnection:(id)a3;
- (void)removeObserver:(id)a3;
- (void)transportDidClose:(id)a3 error:(id)a4;
- (void)waitForConnectionWithOutputDeviceUID:(id)a3 timeout:(double)a4 completion:(id)a5;
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
  v5 = [(MRDMRRelayConnectionManager *)self connections];
  v6 = [v5 mr_formattedDebugDescription];
  v7 = [(MRDMRRelayConnectionManager *)self pendingCompletionsPerOutputDeviceUID];
  v8 = [v3 initWithFormat:@"<%@:%p {\n   connections=%@\n   completions=%@\n>", v4, self, v6, v7];

  return v8;
}

- (void)ingestConnection:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(MRDMRRelayConnectionManager *)v5 connections];

  if (!v6)
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    [(MRDMRRelayConnectionManager *)v5 setConnections:v7];
  }

  v8 = [v4 connection];
  [v8 addObserver:v5];

  v9 = [v4 connection];
  v10 = [v9 isValid];

  if (v10)
  {
    v11 = [v4 deviceInfo];
    v12 = [v11 deviceUID];

    v13 = [(MRDMRRelayConnectionManager *)v5 connections];
    v14 = [v13 objectForKeyedSubscript:v12];

    if (v14)
    {
      v15 = _MRLogForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v28 = v14;
        v29 = 2114;
        v30 = v12;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[MRDMRRelayConnectionManager] Pre-exisiting connection will be dropped: %{public}@, outputDeviceUID: %{public}@", buf, 0x16u);
      }
    }

    v16 = _MRLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v4 connection];
      *buf = 138543618;
      v28 = v17;
      v29 = 2114;
      v30 = v12;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[MRDMRRelayConnectionManager] Ingesting connection: %{public}@, outputDeviceUID: %{public}@", buf, 0x16u);
    }

    v18 = [(MRDMRRelayConnectionManager *)v5 connections];
    [v18 setObject:v4 forKeyedSubscript:v12];

    v19 = [(MRDMRRelayConnectionManager *)v5 observers];
    v20 = [v19 allObjects];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000990E8;
    block[3] = &unk_1004B69D0;
    v24 = v20;
    v25 = v5;
    v26 = v4;
    v21 = v20;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    v22 = [v4 connection];
    [v22 removeObserver:v5];
  }

  [(MRDMRRelayConnectionManager *)v5 _callPendingCompletions];
  objc_sync_exit(v5);
}

- (id)connectionForOutputDeviceUID:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(MRDMRRelayConnectionManager *)v5 connections];
  v7 = [v6 objectForKeyedSubscript:v4];

  objc_sync_exit(v5);

  return v7;
}

- (void)waitForConnectionWithOutputDeviceUID:(id)a3 timeout:(double)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = +[NSDate date];
  v11 = +[NSUUID UUID];
  v12 = [v11 UUIDString];

  v13 = [[NSMutableString alloc] initWithFormat:@"%@<%@>", @"MRDMRRelayConnectionManager.waitForConnection", v12];
  v14 = v13;
  if (v8)
  {
    [v13 appendFormat:@" for %@", v8];
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
  v16 = v8;
  v38 = v16;
  v17 = v12;
  v39 = v17;
  v18 = v10;
  v40 = v18;
  v19 = v9;
  v41 = v19;
  v20 = objc_retainBlock(v37);
  v21 = self;
  objc_sync_enter(v21);
  v22 = [(MRDMRRelayConnectionManager *)v21 pendingCompletionsPerOutputDeviceUID];
  v23 = v22 == 0;

  if (v23)
  {
    v24 = objc_alloc_init(NSMutableDictionary);
    [(MRDMRRelayConnectionManager *)v21 setPendingCompletionsPerOutputDeviceUID:v24];
  }

  v25 = [(MRDMRRelayConnectionManager *)v21 pendingCompletionsPerOutputDeviceUID];
  v26 = [v25 objectForKeyedSubscript:v16];

  if (!v26)
  {
    v26 = objc_alloc_init(NSMutableArray);
    v27 = [(MRDMRRelayConnectionManager *)v21 pendingCompletionsPerOutputDeviceUID];
    [v27 setObject:v26 forKeyedSubscript:v16];
  }

  v28 = objc_retainBlock(v20);
  [v26 addObject:v28];

  [(MRDMRRelayConnectionManager *)v21 _callPendingCompletions];
  v29 = dispatch_time(0, (a4 * 1000000000.0));
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000999FC;
  block[3] = &unk_1004B9928;
  block[4] = v21;
  v34 = v26;
  v35 = v19;
  v36 = v20;
  v30 = v20;
  v31 = v19;
  v32 = v26;
  dispatch_after(v29, &_dispatch_main_q, block);

  objc_sync_exit(v21);
}

- (void)transportDidClose:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = [(MRDMRRelayConnectionManager *)v8 connections];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100099CC4;
  v15[3] = &unk_1004B9950;
  v10 = v6;
  v16 = v10;
  v11 = [v9 msv_firstWhere:v15];

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

    v13 = [(MRDMRRelayConnectionManager *)v8 connections];
    v14 = [v11 first];
    [v13 removeObjectForKey:v14];
  }

  objc_sync_exit(v8);
}

- (void)addObserver:(id)a3
{
  v8 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(MRDMRRelayConnectionManager *)v4 observers];

  if (!v5)
  {
    v6 = +[NSHashTable weakObjectsHashTable];
    [(MRDMRRelayConnectionManager *)v4 setObservers:v6];
  }

  v7 = [(MRDMRRelayConnectionManager *)v4 observers];
  [v7 addObject:v8];

  objc_sync_exit(v4);
}

- (void)removeObserver:(id)a3
{
  v6 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(MRDMRRelayConnectionManager *)v4 observers];
  [v5 removeObject:v6];

  objc_sync_exit(v4);
}

- (void)_callPendingCompletions
{
  v3 = [(MRDMRRelayConnectionManager *)self pendingCompletionsPerOutputDeviceUID];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100099EE0;
  v4[3] = &unk_1004B9978;
  v4[4] = self;
  [v3 enumerateKeysAndObjectsUsingBlock:v4];
}

@end