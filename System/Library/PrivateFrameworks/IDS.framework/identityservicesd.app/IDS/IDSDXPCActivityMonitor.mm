@interface IDSDXPCActivityMonitor
+ (BOOL)isActivityMonitorSupported;
- (BOOL)_entitledForActivity:(id)activity;
- (IDSDXPCActivityMonitor)initWithQueue:(id)queue connection:(id)connection activityMonitorStateManager:(id)manager;
- (void)_handleUpdate:(id)update forActivity:(id)activity;
- (void)checkIfListeningForActivity:(id)activity completion:(id)completion;
- (void)currentSubscriptionsForActivity:(id)activity completion:(id)completion;
- (void)setShouldListen:(BOOL)listen forActivity:(id)activity completion:(id)completion;
- (void)setupActivityMonitorClient:(id)client forActivity:(id)activity;
- (void)subscribeInfo:(id)info forActivity:(id)activity withCompletion:(id)completion;
- (void)unsubscribeActivity:(id)activity andSubActivity:(id)subActivity withCompletion:(id)completion;
@end

@implementation IDSDXPCActivityMonitor

- (IDSDXPCActivityMonitor)initWithQueue:(id)queue connection:(id)connection activityMonitorStateManager:(id)manager
{
  queueCopy = queue;
  connectionCopy = connection;
  managerCopy = manager;
  v12 = [(IDSDXPCActivityMonitor *)connectionCopy valueForEntitlement:kIDSActivityMonitorEntitlement];
  if (!v12)
  {
    v21 = +[IMIDSLog activityMonitor];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v35 = connectionCopy;
      v22 = "Missing activity monitor entitlement -- failing creation of IDSDXPCActivityMonitor collaborator {connection: %@}";
      v23 = v21;
      v24 = 12;
      goto LABEL_21;
    }

LABEL_22:

    selfCopy2 = 0;
    goto LABEL_23;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![v12 count])
  {
    v21 = +[IMIDSLog activityMonitor];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v35 = connectionCopy;
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

  selfCopy = self;
  v28 = queueCopy;
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
            v35 = connectionCopy;
            v36 = 2112;
            v37 = v13;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Found a non-string activity monitor entitlement value -- failing creation of IDSDXPCActivityMonitor collaborator {connection: %@, activityMonitorEntitlementValue: %@}", buf, 0x16u);
          }

          selfCopy2 = 0;
          queueCopy = v28;
          self = selfCopy;
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

  v29.receiver = selfCopy;
  v29.super_class = IDSDXPCActivityMonitor;
  v18 = [(IDSDXPCActivityMonitor *)&v29 init];
  queueCopy = v28;
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
      v39 = connectionCopy;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Created XPCActivityMonitor {self: %p, activityMonitorEntitlementValue: %@, connection: %@}", buf, 0x20u);
    }

    objc_storeStrong(&v18->_queue, queue);
    objc_storeStrong(&v18->_activityMonitorEntitlements, v12);
    objc_storeStrong(&v18->_stateManager, manager);
  }

  self = v18;
  selfCopy2 = self;
LABEL_23:

  return selfCopy2;
}

- (BOOL)_entitledForActivity:(id)activity
{
  activityCopy = activity;
  v5 = [(NSArray *)self->_activityMonitorEntitlements containsObject:activityCopy];
  if (!v5)
  {
    v6 = +[IMIDSLog activityMonitor];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      activityMonitorEntitlements = self->_activityMonitorEntitlements;
      v9 = 134218498;
      selfCopy = self;
      v11 = 2112;
      v12 = activityCopy;
      v13 = 2112;
      v14 = activityMonitorEntitlements;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Not entitled for activity monitor activity! {self: %p, activity: %@, _activityMonitorEntitlements: %@}", &v9, 0x20u);
    }
  }

  return v5;
}

- (void)_handleUpdate:(id)update forActivity:(id)activity
{
  updateCopy = update;
  activityCopy = activity;
  v8 = [(NSMutableDictionary *)self->_clientRemoteObjectByActivity objectForKeyedSubscript:activityCopy];
  if (v8)
  {
    v9 = +[IMIDSLog activityMonitor];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      selfCopy = self;
      v14 = 2112;
      v15 = activityCopy;
      v16 = 2112;
      v17 = updateCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Posting update {self: %p, activity: %@, update: %@}", buf, 0x20u);
    }

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10051591C;
    v10[3] = &unk_100BD6E40;
    v10[4] = self;
    v11 = activityCopy;
    [v8 handleIncomingUpdate:updateCopy onActivity:v11 completion:v10];
  }
}

- (void)setupActivityMonitorClient:(id)client forActivity:(id)activity
{
  clientCopy = client;
  activityCopy = activity;
  if ([(IDSDXPCActivityMonitor *)self _entitledForActivity:activityCopy])
  {
    if (clientCopy)
    {
      remoteObjectProxy = [clientCopy remoteObjectProxy];
      v9 = +[IMIDSLog activityMonitor];
      v10 = v9;
      if (remoteObjectProxy)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          selfCopy2 = self;
          v30 = 2112;
          v31 = activityCopy;
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

        [(NSMutableDictionary *)clientRemoteObjectByActivity setObject:remoteObjectProxy forKeyedSubscript:activityCopy];
        stateManager = [(IDSDXPCActivityMonitor *)self stateManager];
        [stateManager addListener:self forActivity:activityCopy];

        stateManager2 = [(IDSDXPCActivityMonitor *)self stateManager];
        v16 = [stateManager2 storedUpdatesForActivity:activityCopy];

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

              [(IDSDXPCActivityMonitor *)self _handleUpdate:*(*(&v23 + 1) + 8 * v20) forActivity:activityCopy, v23];
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
        sub_10092818C(self, activityCopy, v10);
      }

      goto LABEL_23;
    }

    v21 = +[IMIDSLog activityMonitor];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      selfCopy2 = self;
      v30 = 2112;
      v31 = activityCopy;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Removing activity monitor client {self: %p, activity: %@}", buf, 0x16u);
    }

    [(NSMutableDictionary *)self->_clientRemoteObjectByActivity setObject:0 forKeyedSubscript:activityCopy];
    stateManager3 = [(IDSDXPCActivityMonitor *)self stateManager];
    [stateManager3 removeListener:self forActivity:activityCopy];

    if (![(NSMutableDictionary *)self->_clientRemoteObjectByActivity count])
    {
      remoteObjectProxy = self->_clientRemoteObjectByActivity;
      self->_clientRemoteObjectByActivity = 0;
LABEL_23:
    }
  }
}

- (void)checkIfListeningForActivity:(id)activity completion:(id)completion
{
  activityCopy = activity;
  completionCopy = completion;
  if ([(IDSDXPCActivityMonitor *)self _entitledForActivity:activityCopy])
  {
    stateManager = [(IDSDXPCActivityMonitor *)self stateManager];
    v9 = [stateManager isListeningOnActivity:activityCopy];

    v10 = +[IMIDSLog activityMonitor];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = @"NO";
      v13 = 134218498;
      selfCopy = self;
      v15 = 2112;
      if (v9)
      {
        v11 = @"YES";
      }

      v16 = activityCopy;
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Checking if listening for activity monitor activity {self: %p, activity: %@, isListening: %@}", &v13, 0x20u);
    }

    completionCopy[2](completionCopy, v9, 0);
  }

  else
  {
    v12 = [NSError errorWithDomain:IDSActivityMonitorErrorDomain code:-400 userInfo:0];
    (completionCopy)[2](completionCopy, 0, v12);
  }
}

- (void)setShouldListen:(BOOL)listen forActivity:(id)activity completion:(id)completion
{
  listenCopy = listen;
  activityCopy = activity;
  completionCopy = completion;
  if ([(IDSDXPCActivityMonitor *)self _entitledForActivity:activityCopy])
  {
    v10 = +[IMIDSLog activityMonitor];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = @"NO";
      v15 = 134218498;
      selfCopy = self;
      v17 = 2112;
      if (listenCopy)
      {
        v11 = @"YES";
      }

      v18 = activityCopy;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Setting should listen for activity monitor activity {self: %p, activity: %@, shouldListen: %@}", &v15, 0x20u);
    }

    stateManager = [(IDSDXPCActivityMonitor *)self stateManager];
    v13 = stateManager;
    if (listenCopy)
    {
      [stateManager startListeningOnActivity:activityCopy];
    }

    else
    {
      [stateManager stopListeningOnActivity:activityCopy];
    }

    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v14 = [NSError errorWithDomain:IDSActivityMonitorErrorDomain code:-400 userInfo:0];
    (completionCopy)[2](completionCopy, v14);
  }
}

- (void)currentSubscriptionsForActivity:(id)activity completion:(id)completion
{
  activityCopy = activity;
  completionCopy = completion;
  if ([(IDSDXPCActivityMonitor *)self _entitledForActivity:activityCopy])
  {
    stateManager = [(IDSDXPCActivityMonitor *)self stateManager];
    v8 = [stateManager currentSubscriptionsForActivity:activityCopy];

    completionCopy[2](completionCopy, v8, 0);
  }

  else
  {
    v8 = [NSError errorWithDomain:IDSActivityMonitorErrorDomain code:-400 userInfo:0];
    (completionCopy)[2](completionCopy, 0, v8);
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
      intValue = [v4 intValue];
      v6 = +[IMIDSLog activityMonitor];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 134217984;
        v9 = intValue;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Server provided a minimum value for activity monitor which was %ld", &v8, 0xCu);
      }

      v2 = intValue < 2;
    }

    else
    {
      v2 = 1;
    }
  }

  return v2;
}

- (void)subscribeInfo:(id)info forActivity:(id)activity withCompletion:(id)completion
{
  infoCopy = info;
  activityCopy = activity;
  completionCopy = completion;
  if ([objc_opt_class() isActivityMonitorSupported])
  {
    if ([(IDSDXPCActivityMonitor *)self _entitledForActivity:activityCopy])
    {
      v11 = +[IMIDSLog activityMonitor];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 134218498;
        selfCopy = self;
        v15 = 2112;
        v16 = activityCopy;
        v17 = 2112;
        v18 = infoCopy;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Subscribing for activity monitor session {self: %p, activity: %@, info: %@}", &v13, 0x20u);
      }

      stateManager = [(IDSDXPCActivityMonitor *)self stateManager];
      [stateManager subscribeForInfo:infoCopy onActivity:activityCopy withCompletion:completionCopy];
    }

    else
    {
      stateManager = [NSError errorWithDomain:IDSActivityMonitorErrorDomain code:-400 userInfo:0];
      completionCopy[2](completionCopy, stateManager);
    }
  }

  else
  {
    stateManager = +[IMIDSLog activityMonitor];
    if (os_log_type_enabled(stateManager, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, stateManager, OS_LOG_TYPE_DEFAULT, "Activity monitor is currently disabled by the server.", &v13, 2u);
    }
  }
}

- (void)unsubscribeActivity:(id)activity andSubActivity:(id)subActivity withCompletion:(id)completion
{
  activityCopy = activity;
  subActivityCopy = subActivity;
  completionCopy = completion;
  if ([(IDSDXPCActivityMonitor *)self _entitledForActivity:activityCopy])
  {
    v11 = +[IMIDSLog activityMonitor];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134218498;
      selfCopy = self;
      v15 = 2112;
      v16 = activityCopy;
      v17 = 2112;
      v18 = subActivityCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Unsubscribing for activity monitor session {self: %p, activity: %@, subActivity: %@}", &v13, 0x20u);
    }

    stateManager = [(IDSDXPCActivityMonitor *)self stateManager];
    [stateManager unsubscribeForActivity:activityCopy subActivity:subActivityCopy withCompletion:completionCopy];
  }

  else
  {
    stateManager = [NSError errorWithDomain:IDSActivityMonitorErrorDomain code:-400 userInfo:0];
    completionCopy[2](completionCopy, stateManager);
  }
}

@end