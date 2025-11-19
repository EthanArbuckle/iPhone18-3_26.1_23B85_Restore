@interface IDSDXPCActivityMonitor
+ (BOOL)isActivityMonitorSupported;
- (BOOL)_entitledForActivity:(id)a3;
- (IDSDXPCActivityMonitor)initWithQueue:(id)a3 connection:(id)a4 activityMonitorStateManager:(id)a5;
- (void)_handleUpdate:(id)a3 forActivity:(id)a4;
- (void)checkIfListeningForActivity:(id)a3 completion:(id)a4;
- (void)currentSubscriptionsForActivity:(id)a3 completion:(id)a4;
- (void)setShouldListen:(BOOL)a3 forActivity:(id)a4 completion:(id)a5;
- (void)setupActivityMonitorClient:(id)a3 forActivity:(id)a4;
- (void)subscribeInfo:(id)a3 forActivity:(id)a4 withCompletion:(id)a5;
- (void)unsubscribeActivity:(id)a3 andSubActivity:(id)a4 withCompletion:(id)a5;
@end

@implementation IDSDXPCActivityMonitor

- (IDSDXPCActivityMonitor)initWithQueue:(id)a3 connection:(id)a4 activityMonitorStateManager:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(IDSDXPCActivityMonitor *)v10 valueForEntitlement:kIDSActivityMonitorEntitlement];
  if (!v12)
  {
    v21 = +[IMIDSLog activityMonitor];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v35 = v10;
      v22 = "Missing activity monitor entitlement -- failing creation of IDSDXPCActivityMonitor collaborator {connection: %@}";
      v23 = v21;
      v24 = 12;
      goto LABEL_21;
    }

LABEL_22:

    v20 = 0;
    goto LABEL_23;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![v12 count])
  {
    v21 = +[IMIDSLog activityMonitor];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v35 = v10;
      v36 = 2112;
      v37 = v12;
      v22 = "Invalid activity monitor entitlement -- failing creation of IDSDXPCActivityMonitor collaborator {connection: %@, activityMonitorEntitlementValue: %@}";
      v23 = v21;
      v24 = 22;
LABEL_21:
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v22, buf, v24);
      goto LABEL_22;
    }

    goto LABEL_22;
  }

  v27 = self;
  v28 = v9;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v30 objects:v40 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v31;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v31 != v16)
        {
          objc_enumerationMutation(v13);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v26 = +[IMIDSLog activityMonitor];
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v35 = v10;
            v36 = 2112;
            v37 = v13;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Found a non-string activity monitor entitlement value -- failing creation of IDSDXPCActivityMonitor collaborator {connection: %@, activityMonitorEntitlementValue: %@}", buf, 0x16u);
          }

          v20 = 0;
          v9 = v28;
          self = v27;
          goto LABEL_23;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v30 objects:v40 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v29.receiver = v27;
  v29.super_class = IDSDXPCActivityMonitor;
  v18 = [(IDSDXPCActivityMonitor *)&v29 init];
  v9 = v28;
  if (v18)
  {
    v19 = +[IMIDSLog activityMonitor];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v35 = v18;
      v36 = 2112;
      v37 = v13;
      v38 = 2112;
      v39 = v10;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Created XPCActivityMonitor {self: %p, activityMonitorEntitlementValue: %@, connection: %@}", buf, 0x20u);
    }

    objc_storeStrong(&v18->_queue, a3);
    objc_storeStrong(&v18->_activityMonitorEntitlements, v12);
    objc_storeStrong(&v18->_stateManager, a5);
  }

  self = v18;
  v20 = self;
LABEL_23:

  return v20;
}

- (BOOL)_entitledForActivity:(id)a3
{
  v4 = a3;
  v5 = [(NSArray *)self->_activityMonitorEntitlements containsObject:v4];
  if (!v5)
  {
    v6 = +[IMIDSLog activityMonitor];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      activityMonitorEntitlements = self->_activityMonitorEntitlements;
      v9 = 134218498;
      v10 = self;
      v11 = 2112;
      v12 = v4;
      v13 = 2112;
      v14 = activityMonitorEntitlements;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Not entitled for activity monitor activity! {self: %p, activity: %@, _activityMonitorEntitlements: %@}", &v9, 0x20u);
    }
  }

  return v5;
}

- (void)_handleUpdate:(id)a3 forActivity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSMutableDictionary *)self->_clientRemoteObjectByActivity objectForKeyedSubscript:v7];
  if (v8)
  {
    v9 = +[IMIDSLog activityMonitor];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v13 = self;
      v14 = 2112;
      v15 = v7;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Posting update {self: %p, activity: %@, update: %@}", buf, 0x20u);
    }

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10051591C;
    v10[3] = &unk_100BD6E40;
    v10[4] = self;
    v11 = v7;
    [v8 handleIncomingUpdate:v6 onActivity:v11 completion:v10];
  }
}

- (void)setupActivityMonitorClient:(id)a3 forActivity:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(IDSDXPCActivityMonitor *)self _entitledForActivity:v7])
  {
    if (v6)
    {
      v8 = [v6 remoteObjectProxy];
      v9 = +[IMIDSLog activityMonitor];
      v10 = v9;
      if (v8)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          v29 = self;
          v30 = 2112;
          v31 = v7;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Adding activity monitor client {self: %p, activity: %@}", buf, 0x16u);
        }

        clientRemoteObjectByActivity = self->_clientRemoteObjectByActivity;
        if (!clientRemoteObjectByActivity)
        {
          v12 = objc_alloc_init(NSMutableDictionary);
          v13 = self->_clientRemoteObjectByActivity;
          self->_clientRemoteObjectByActivity = v12;

          clientRemoteObjectByActivity = self->_clientRemoteObjectByActivity;
        }

        [(NSMutableDictionary *)clientRemoteObjectByActivity setObject:v8 forKeyedSubscript:v7];
        v14 = [(IDSDXPCActivityMonitor *)self stateManager];
        [v14 addListener:self forActivity:v7];

        v15 = [(IDSDXPCActivityMonitor *)self stateManager];
        v16 = [v15 storedUpdatesForActivity:v7];

        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v10 = v16;
        v17 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v24;
          do
          {
            v20 = 0;
            do
            {
              if (*v24 != v19)
              {
                objc_enumerationMutation(v10);
              }

              [(IDSDXPCActivityMonitor *)self _handleUpdate:*(*(&v23 + 1) + 8 * v20) forActivity:v7, v23];
              v20 = v20 + 1;
            }

            while (v18 != v20);
            v18 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
          }

          while (v18);
        }
      }

      else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10092818C(self, v7, v10);
      }

      goto LABEL_23;
    }

    v21 = +[IMIDSLog activityMonitor];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v29 = self;
      v30 = 2112;
      v31 = v7;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Removing activity monitor client {self: %p, activity: %@}", buf, 0x16u);
    }

    [(NSMutableDictionary *)self->_clientRemoteObjectByActivity setObject:0 forKeyedSubscript:v7];
    v22 = [(IDSDXPCActivityMonitor *)self stateManager];
    [v22 removeListener:self forActivity:v7];

    if (![(NSMutableDictionary *)self->_clientRemoteObjectByActivity count])
    {
      v8 = self->_clientRemoteObjectByActivity;
      self->_clientRemoteObjectByActivity = 0;
LABEL_23:
    }
  }
}

- (void)checkIfListeningForActivity:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(IDSDXPCActivityMonitor *)self _entitledForActivity:v6])
  {
    v8 = [(IDSDXPCActivityMonitor *)self stateManager];
    v9 = [v8 isListeningOnActivity:v6];

    v10 = +[IMIDSLog activityMonitor];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = @"NO";
      v13 = 134218498;
      v14 = self;
      v15 = 2112;
      if (v9)
      {
        v11 = @"YES";
      }

      v16 = v6;
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Checking if listening for activity monitor activity {self: %p, activity: %@, isListening: %@}", &v13, 0x20u);
    }

    v7[2](v7, v9, 0);
  }

  else
  {
    v12 = [NSError errorWithDomain:IDSActivityMonitorErrorDomain code:-400 userInfo:0];
    (v7)[2](v7, 0, v12);
  }
}

- (void)setShouldListen:(BOOL)a3 forActivity:(id)a4 completion:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  if ([(IDSDXPCActivityMonitor *)self _entitledForActivity:v8])
  {
    v10 = +[IMIDSLog activityMonitor];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = @"NO";
      v15 = 134218498;
      v16 = self;
      v17 = 2112;
      if (v6)
      {
        v11 = @"YES";
      }

      v18 = v8;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Setting should listen for activity monitor activity {self: %p, activity: %@, shouldListen: %@}", &v15, 0x20u);
    }

    v12 = [(IDSDXPCActivityMonitor *)self stateManager];
    v13 = v12;
    if (v6)
    {
      [v12 startListeningOnActivity:v8];
    }

    else
    {
      [v12 stopListeningOnActivity:v8];
    }

    v9[2](v9, 0);
  }

  else
  {
    v14 = [NSError errorWithDomain:IDSActivityMonitorErrorDomain code:-400 userInfo:0];
    (v9)[2](v9, v14);
  }
}

- (void)currentSubscriptionsForActivity:(id)a3 completion:(id)a4
{
  v9 = a3;
  v6 = a4;
  if ([(IDSDXPCActivityMonitor *)self _entitledForActivity:v9])
  {
    v7 = [(IDSDXPCActivityMonitor *)self stateManager];
    v8 = [v7 currentSubscriptionsForActivity:v9];

    v6[2](v6, v8, 0);
  }

  else
  {
    v8 = [NSError errorWithDomain:IDSActivityMonitorErrorDomain code:-400 userInfo:0];
    (v6)[2](v6, 0, v8);
  }
}

+ (BOOL)isActivityMonitorSupported
{
  v2 = 1;
  v3 = [IDSServerBag sharedInstanceForBagType:1];
  v4 = [v3 objectForKey:@"activity-monitor-min-version"];

  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v4 intValue];
      v6 = +[IMIDSLog activityMonitor];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 134217984;
        v9 = v5;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Server provided a minimum value for activity monitor which was %ld", &v8, 0xCu);
      }

      v2 = v5 < 2;
    }

    else
    {
      v2 = 1;
    }
  }

  return v2;
}

- (void)subscribeInfo:(id)a3 forActivity:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([objc_opt_class() isActivityMonitorSupported])
  {
    if ([(IDSDXPCActivityMonitor *)self _entitledForActivity:v9])
    {
      v11 = +[IMIDSLog activityMonitor];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 134218498;
        v14 = self;
        v15 = 2112;
        v16 = v9;
        v17 = 2112;
        v18 = v8;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Subscribing for activity monitor session {self: %p, activity: %@, info: %@}", &v13, 0x20u);
      }

      v12 = [(IDSDXPCActivityMonitor *)self stateManager];
      [v12 subscribeForInfo:v8 onActivity:v9 withCompletion:v10];
    }

    else
    {
      v12 = [NSError errorWithDomain:IDSActivityMonitorErrorDomain code:-400 userInfo:0];
      v10[2](v10, v12);
    }
  }

  else
  {
    v12 = +[IMIDSLog activityMonitor];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Activity monitor is currently disabled by the server.", &v13, 2u);
    }
  }
}

- (void)unsubscribeActivity:(id)a3 andSubActivity:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(IDSDXPCActivityMonitor *)self _entitledForActivity:v8])
  {
    v11 = +[IMIDSLog activityMonitor];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134218498;
      v14 = self;
      v15 = 2112;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Unsubscribing for activity monitor session {self: %p, activity: %@, subActivity: %@}", &v13, 0x20u);
    }

    v12 = [(IDSDXPCActivityMonitor *)self stateManager];
    [v12 unsubscribeForActivity:v8 subActivity:v9 withCompletion:v10];
  }

  else
  {
    v12 = [NSError errorWithDomain:IDSActivityMonitorErrorDomain code:-400 userInfo:0];
    v10[2](v10, v12);
  }
}

@end