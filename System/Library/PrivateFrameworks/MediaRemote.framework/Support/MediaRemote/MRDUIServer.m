@interface MRDUIServer
+ (MRDUIServer)sharedServer;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (MRDUIServer)init;
- (NSArray)clients;
- (NSXPCListener)listener;
- (id)clientForConnection:(id)a3;
- (void)_addClient:(id)a3;
- (void)_handleGetUIServerEndpointMessage:(id)a3 fromClient:(id)a4;
- (void)_handleGetUIServiceRelayEndpointMessage:(id)a3 fromClient:(id)a4;
- (void)_handleSetUIServiceRelayEndpointMessage:(id)a3 fromClient:(id)a4;
- (void)_removeClient:(id)a3;
- (void)addClientObserver:(id)a3;
- (void)collectDiagnostic:(id)a3;
- (void)handleClientInvalidated:(id)a3;
- (void)handleXPCMessage:(id)a3 fromClient:(id)a4;
- (void)releaseTimeBasedNowPlayingActivityAssertions;
- (void)removeClientObserver:(id)a3;
- (void)start;
@end

@implementation MRDUIServer

+ (MRDUIServer)sharedServer
{
  if (qword_100529560 != -1)
  {
    sub_1003AA7DC();
  }

  v3 = qword_100529558;

  return v3;
}

- (MRDUIServer)init
{
  v14.receiver = self;
  v14.super_class = MRDUIServer;
  v2 = [(MRDUIServer *)&v14 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = +[NSMutableSet set];
    internalClients = v3->_internalClients;
    v3->_internalClients = v4;

    v6 = +[NSHashTable weakObjectsHashTable];
    clientObservers = v3->_clientObservers;
    v3->_clientObservers = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_attr_make_with_qos_class(v8, 2u, 0);
    v10 = dispatch_queue_create("com.apple.MRDUIServer.messageQueue", v9);
    messageQueue = v3->_messageQueue;
    v3->_messageQueue = v10;

    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:v3 selector:"handleClientInvalidated:" name:@"MRDMediaRemoteServerClientInvalidatedNotification" object:0];
  }

  return v3;
}

- (void)start
{
  v3 = objc_alloc_init(MRDUIActivityServer);
  [(MRDUIServer *)self setActivityServer:v3];

  v4 = [(MRDUIServer *)self activityServer];
  v7 = v4;
  v5 = [NSArray arrayWithObjects:&v7 count:1];
  v6 = [MRDServerMessageProxy proxyForObjects:v5 protocol:&OBJC_PROTOCOL___MRUIServerXPCProtocol];
  [(MRDUIServer *)self setMessageProxy:v6];
}

- (void)handleXPCMessage:(id)a3 fromClient:(id)a4
{
  xdict = a3;
  v6 = a4;
  uint64 = xpc_dictionary_get_uint64(xdict, "MRXPC_MESSAGE_ID_KEY");
  if (uint64 > 0xB00000000000002)
  {
    if (uint64 == 0xB00000000000003)
    {
      [(MRDUIServer *)self _handleSetUIServiceRelayEndpointMessage:xdict fromClient:v6];
    }

    else if (uint64 == 0xB00000000000004)
    {
      [(MRDUIServer *)self _handleGetDeviceSupportsUIActivitiesMessage:xdict fromClient:v6];
    }
  }

  else if (uint64 == 0xB00000000000001)
  {
    [(MRDUIServer *)self _handleGetUIServerEndpointMessage:xdict fromClient:v6];
  }

  else if (uint64 == 0xB00000000000002)
  {
    [(MRDUIServer *)self _handleGetUIServiceRelayEndpointMessage:xdict fromClient:v6];
  }
}

- (void)handleClientInvalidated:(id)a3
{
  v6 = [a3 object];
  v4 = [v6 bundleIdentifier];
  v5 = [v4 isEqualToString:@"com.apple.MediaRemoteUIService"];

  if (v5)
  {
    os_unfair_lock_lock(&self->_lock);
    [(MRDUIServer *)self setServiceEndpoint:0];
    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)_handleGetUIServerEndpointMessage:(id)a3 fromClient:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001475DC;
  v4[3] = &unk_1004B6E08;
  v4[4] = self;
  sub_100008278(a3, v4);
}

- (void)_handleGetUIServiceRelayEndpointMessage:(id)a3 fromClient:(id)a4
{
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100147808;
  v14[3] = &unk_1004BEC50;
  v5 = a3;
  v15 = v5;
  v6 = objc_retainBlock(v14);
  os_unfair_lock_lock(&self->_lock);
  v7 = [(MRDUIServer *)self serviceEndpoint];
  if (!v7)
  {
    v8 = [(MRDUIServer *)self pendingRelayEndpointReplies];

    if (!v8)
    {
      v11 = +[NSMutableArray array];
      [(MRDUIServer *)self setPendingRelayEndpointReplies:v11];

      v12 = [(MRDUIServer *)self pendingRelayEndpointReplies];
      v13 = objc_retainBlock(v6);
      [v12 addObject:v13];

      os_unfair_lock_unlock(&self->_lock);
      sub_10019DCC4(@"com.apple.MediaRemoteUIService", @"UI service endpoint requested", 0, &stru_1004BEC70);
      goto LABEL_5;
    }

    v9 = [(MRDUIServer *)self pendingRelayEndpointReplies];
    v10 = objc_retainBlock(v6);
    [v9 addObject:v10];
  }

  os_unfair_lock_unlock(&self->_lock);
LABEL_5:
}

- (void)_handleSetUIServiceRelayEndpointMessage:(id)a3 fromClient:(id)a4
{
  v5 = a3;
  os_unfair_lock_lock(&self->_lock);
  v6 = xpc_dictionary_get_value(v5, "MRXPC_MEDIA_CONTROLS_XPC_ENDPOINT_KEY");
  v7 = objc_alloc_init(NSXPCListenerEndpoint);
  [v7 _setEndpoint:v6];
  [(MRDUIServer *)self setServiceEndpoint:v7];
  v8 = [(MRDUIServer *)self pendingRelayEndpointReplies];
  [(MRDUIServer *)self setPendingRelayEndpointReplies:0];
  os_unfair_lock_unlock(&self->_lock);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        (*(*(*(&v14 + 1) + 8 * v13) + 16))(*(*(&v14 + 1) + 8 * v13));
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    [v7 auditToken];
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
  }

  v9 = MSVBundleIDForAuditToken();
  if (![v9 length])
  {
    v14 = _MRLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1003AA8CC(v14);
    }

    goto LABEL_14;
  }

  v10 = [v8 valueForEntitlement:@"com.apple.mediaremote.ui-control"];

  if (!v10)
  {
    v11 = +[MRDSettings currentSettings];
    v12 = [v11 allowAllClientUIConnections];

    if ((v12 & 1) == 0)
    {
      v14 = _MRLogForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1003AA7F0();
      }

LABEL_14:
      v27 = 0;
      goto LABEL_15;
    }
  }

  v13 = _MRLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_1003AA864();
  }

  v14 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MRUIServerXPCProtocol];
  v15 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MRUIClientXPCProtocol];
  [v8 setExportedInterface:v14];
  v16 = [(MRDUIServer *)self messageProxy];
  [v8 setExportedObject:v16];

  [v8 setRemoteObjectInterface:v15];
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = [NSMutableSet setWithObjects:v17, v18, v19, objc_opt_class(), 0];
  v21 = MSVPropertyListDataClasses();
  [v20 unionSet:v21];

  [v14 setClasses:v20 forSelector:"acquireGroupSessionNearbyAssertionForSession:withReply:" argumentIndex:0 ofReply:0];
  [v15 setClasses:v20 forSelector:"nearbyGroupSessionDismissed:" argumentIndex:0 ofReply:0];
  v22 = [[MRDUIClient alloc] initWithConnection:v8 bundleID:v9];
  v23 = [(MRDUIServer *)self messageQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100147EB0;
  block[3] = &unk_1004B68F0;
  block[4] = self;
  v24 = v22;
  v32 = v24;
  dispatch_sync(v23, block);

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100147EBC;
  v29[3] = &unk_1004B68F0;
  v29[4] = self;
  v30 = v24;
  v25 = v24;
  [v8 setInvalidationHandler:v29];
  v26 = [(MRDUIServer *)self messageQueue];
  [v8 _setQueue:v26];

  [v8 resume];
  v27 = 1;
LABEL_15:

  return v27;
}

- (void)_addClient:(id)a3
{
  v4 = a3;
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1003AA910();
  }

  os_unfair_lock_lock(&self->_lock);
  v6 = [(MRDUIServer *)self internalClients];
  [v6 addObject:v4];

  os_unfair_lock_unlock(&self->_lock);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [(MRDUIServer *)self clientObservers];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 clientConnected:v4];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)_removeClient:(id)a3
{
  v4 = a3;
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1003AA978();
  }

  os_unfair_lock_lock(&self->_lock);
  v6 = [(MRDUIServer *)self internalClients];
  [v6 removeObject:v4];

  os_unfair_lock_unlock(&self->_lock);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [(MRDUIServer *)self clientObservers];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 clientDisconnected:v4];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (NSArray)clients
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(MRDUIServer *)self internalClients];
  v4 = [v3 allObjects];

  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (NSXPCListener)listener
{
  os_unfair_lock_lock(&self->_lock);
  listener = self->_listener;
  if (!listener)
  {
    v4 = +[NSXPCListener anonymousListener];
    v5 = self->_listener;
    self->_listener = v4;

    [(NSXPCListener *)self->_listener setDelegate:self];
    [(NSXPCListener *)self->_listener resume];
    listener = self->_listener;
  }

  v6 = listener;
  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (void)addClientObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(MRDUIServer *)self clientObservers];
  [v5 addObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeClientObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(MRDUIServer *)self clientObservers];
  [v5 removeObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)clientForConnection:(id)a3
{
  v4 = a3;
  [(MRDUIServer *)self clients];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 connection];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)releaseTimeBasedNowPlayingActivityAssertions
{
  v2 = [(MRDUIServer *)self activityServer];
  [v2 releaseTimeBasedNowPlayingActivityAssertions];
}

- (void)collectDiagnostic:(id)a3
{
  v4 = a3;
  v5 = [(MRDUIServer *)self activityServer];
  [v5 collectDiagnostic:v4];
}

@end