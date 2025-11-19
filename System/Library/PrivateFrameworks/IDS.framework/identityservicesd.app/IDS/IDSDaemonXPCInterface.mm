@interface IDSDaemonXPCInterface
+ (id)sharedInstance;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (IDSDaemonXPCInterface)init;
- (void)didCacheGroup:(id)a3;
- (void)didCreateGroup:(id)a3;
- (void)didReceiveDecryptionFailureForGroup:(id)a3;
- (void)didReceiveRegistrationIdentityUpdate;
- (void)didUpdateGroup:(id)a3 withNewGroup:(id)a4;
@end

@implementation IDSDaemonXPCInterface

+ (id)sharedInstance
{
  if (qword_100CBD638 != -1)
  {
    sub_100924548();
  }

  v3 = qword_100CBD640;

  return v3;
}

- (IDSDaemonXPCInterface)init
{
  v15.receiver = self;
  v15.super_class = IDSDaemonXPCInterface;
  v2 = [(IDSDaemonXPCInterface *)&v15 init];
  if (v2)
  {
    v3 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Daemon XPC Interface Up", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v4 = [[IDSDGroupContextNotifyingObserver alloc] initWithDelegate:v2];
    observer = v2->_observer;
    v2->_observer = v4;

    v6 = [(IDSDaemonXPCInterface *)v2 groupContextController];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1004DAA04;
    v12[3] = &unk_100BDEB08;
    v7 = v2;
    v13 = v7;
    [v6 groupContextForProtectionSpace:0 withCompletion:v12];

    observerProxies = v7->_observerProxies;
    v7->_observerProxies = 0;

    v9 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.identityservicesd.nsxpc.auth"];
    listener = v7->_listener;
    v7->_listener = v9;

    [(NSXPCListener *)v7->_listener setDelegate:v7];
    [(NSXPCListener *)v7->_listener resume];
  }

  return v2;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v34 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Incoming Daemon XPC Interface with new connection %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v24 = v7;
    _IDSLogV();
  }

  v9 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___IDSGroupContextDaemonProtocol, v24];
  [v7 setExportedInterface:v9];

  v10 = +[IDSDGroupContextController sharedInstance];
  [v7 setExportedObject:v10];
  [v7 resume];
  objc_storeStrong(&self->_connection, a4);
  v11 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___IDSGroupContextObserverDaemonProtocol];
  [(NSXPCConnection *)self->_connection setRemoteObjectInterface:v11];

  v12 = [(NSXPCConnection *)self->_connection remoteObjectProxy];
  observerProxies = self->_observerProxies;
  if (!observerProxies)
  {
    v14 = objc_alloc_init(NSMutableArray);
    v15 = self->_observerProxies;
    self->_observerProxies = v14;

    observerProxies = self->_observerProxies;
  }

  [(NSMutableArray *)observerProxies addObject:v12];
  v16 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [(NSMutableArray *)self->_observerProxies count];
    *buf = 138412546;
    v34 = v12;
    v35 = 2048;
    v36 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "We got remote object proxy %@ new observerProxies count: %lu", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v25 = v12;
    v26 = [(NSMutableArray *)self->_observerProxies count];
    _IDSLogV();
  }

  [CUTWeakReference weakRefWithObject:self, v25, v26];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_1004DAE54;
  v18 = v30[3] = &unk_100BD6E40;
  v31 = v18;
  v19 = v12;
  v32 = v19;
  [(NSXPCConnection *)self->_connection setInvalidationHandler:v30];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1004DAF9C;
  v27[3] = &unk_100BD6E40;
  v28 = v18;
  v29 = v19;
  connection = self->_connection;
  v21 = v19;
  v22 = v18;
  [(NSXPCConnection *)connection setInterruptionHandler:v27];

  return 1;
}

- (void)didCreateGroup:(id)a3
{
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_observerProxies;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 3221225472;
        v11[2] = sub_1004DB258;
        v11[3] = &unk_100BDA900;
        v12 = v4;
        v13 = v10;
        [v10 didCreateGroup:v12 completion:v11];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (void)didCacheGroup:(id)a3
{
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_observerProxies;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 3221225472;
        v11[2] = sub_1004DB508;
        v11[3] = &unk_100BDA900;
        v12 = v4;
        v13 = v10;
        [v10 didCacheGroup:v12 completion:v11];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (void)didUpdateGroup:(id)a3 withNewGroup:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = self->_observerProxies;
  v8 = [(NSMutableArray *)obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      v11 = 0;
      do
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v19 + 1) + 8 * v11);
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_1004DB7E4;
        v15[3] = &unk_100BDD7B8;
        v13 = v6;
        v16 = v13;
        v17 = v7;
        v18 = v12;
        [v12 didUpdateGroup:v13 withNewGroup:v17 completion:v15];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }
}

- (void)didReceiveDecryptionFailureForGroup:(id)a3
{
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_observerProxies;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 3221225472;
        v11[2] = sub_1004DBAA8;
        v11[3] = &unk_100BDA900;
        v12 = v4;
        v13 = v10;
        [v10 didReceiveDecryptionFailureForGroup:v12 completion:v11];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (void)didReceiveRegistrationIdentityUpdate
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_observerProxies;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        v8[0] = _NSConcreteStackBlock;
        v8[1] = 3221225472;
        v8[2] = sub_1004DBD2C;
        v8[3] = &unk_100BD9F28;
        v8[4] = v7;
        [v7 didReceiveRegistrationIdentityUpdateWithCompletion:v8];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

@end