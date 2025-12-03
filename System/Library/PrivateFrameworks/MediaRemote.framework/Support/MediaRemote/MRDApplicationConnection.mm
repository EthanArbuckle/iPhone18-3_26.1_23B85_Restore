@interface MRDApplicationConnection
- (MRDApplicationConnection)initWithContext:(id)context;
- (id)installInvalidationObserversAndCheckForPostActivationInvalidations;
- (void)activate;
- (void)dealloc;
- (void)handleClientBoundMessage:(id)message;
- (void)handleClientInvalidation:(id)invalidation;
- (void)handlePlayerInvalidation:(id)invalidation;
- (void)handleRemoteExternalDeviceInvalidation:(id)invalidation;
- (void)handleServerBoundMessage:(id)message;
- (void)handleXPCClientInvalidation:(id)invalidation;
- (void)invalidate:(id)invalidate;
- (void)setClientBoundMessageHandler:(id)handler;
- (void)setLocalHostedInvalidationPlayerPath:(id)path;
- (void)setLocalInvalidationXPCClient:(id)client;
- (void)setRemoteInvalidationExternalDevice:(id)device;
- (void)setServerBoundMessageHandler:(id)handler;
- (void)setType:(unint64_t)type;
@end

@implementation MRDApplicationConnection

- (MRDApplicationConnection)initWithContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = MRDApplicationConnection;
  v6 = [(MRDApplicationConnection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_context, context);
  }

  return v7;
}

- (void)dealloc
{
  v3 = _MRLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[MRDApplicationConnection]<%p> dealloc", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = MRDApplicationConnection;
  [(MRDApplicationConnection *)&v4 dealloc];
}

- (void)handleServerBoundMessage:(id)message
{
  messageCopy = message;
  os_unfair_lock_lock(&self->_lock);
  state = self->_state;
  if (state == 1)
  {
    serverBoundMessageHandler = [(MRDApplicationConnection *)self serverBoundMessageHandler];
    os_unfair_lock_unlock(&self->_lock);
    if (serverBoundMessageHandler)
    {
      (serverBoundMessageHandler)[2](serverBoundMessageHandler, self, messageCopy);
    }
  }

  else
  {
    if (state)
    {
      v11 = _MRLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1003ABA24();
      }
    }

    else
    {
      v6 = _MRLogForCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 134217984;
        selfCopy = self;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[MRDApplicationConnection]<%p> handleServerBoundMessage - state: .initial -> enqueuing", &v12, 0xCu);
      }

      pendingMessages = self->_pendingMessages;
      if (!pendingMessages)
      {
        v8 = +[NSMutableArray array];
        v9 = self->_pendingMessages;
        self->_pendingMessages = v8;

        pendingMessages = self->_pendingMessages;
      }

      [(NSMutableArray *)pendingMessages addObject:messageCopy];
    }

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)handleClientBoundMessage:(id)message
{
  messageCopy = message;
  os_unfair_lock_lock(&self->_lock);
  state = self->_state;
  if (state == 1)
  {
    clientBoundMessageHandler = [(MRDApplicationConnection *)self clientBoundMessageHandler];
    os_unfair_lock_unlock(&self->_lock);
    if (clientBoundMessageHandler)
    {
      (clientBoundMessageHandler)[2](clientBoundMessageHandler, self, messageCopy);
    }
  }

  else
  {
    if (state)
    {
      v6 = _MRLogForCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1003ABB00();
      }
    }

    else
    {
      v6 = _MRLogForCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        sub_1003ABA8C();
      }
    }

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)activate
{
  os_unfair_lock_lock(&self->_lock);
  if (!self->_state)
  {
    self->_state = 1;
    v4 = self->_pendingMessages;
    pendingMessages = self->_pendingMessages;
    self->_pendingMessages = 0;

    v6 = objc_retainBlock(self->_serverBoundMessageHandler);
    installInvalidationObserversAndCheckForPostActivationInvalidations = [(MRDApplicationConnection *)self installInvalidationObserversAndCheckForPostActivationInvalidations];
    os_unfair_lock_unlock(&self->_lock);
    if (installInvalidationObserversAndCheckForPostActivationInvalidations)
    {
      [(MRDApplicationConnection *)self invalidate:installInvalidationObserversAndCheckForPostActivationInvalidations];
    }

    else
    {
      if (!v6)
      {
        goto LABEL_17;
      }

      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v4 = v4;
      v8 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v13;
        do
        {
          v11 = 0;
          do
          {
            if (*v13 != v10)
            {
              objc_enumerationMutation(v4);
            }

            v6[2](v6, self, *(*(&v12 + 1) + 8 * v11));
            v11 = v11 + 1;
          }

          while (v9 != v11);
          v9 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v9);
      }
    }

    goto LABEL_17;
  }

  v3 = _MRLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1003ABB68();
  }

  os_unfair_lock_unlock(&self->_lock);
  v4 = 0;
LABEL_17:
}

- (void)setClientBoundMessageHandler:(id)handler
{
  handlerCopy = handler;
  os_unfair_lock_lock(&self->_lock);
  if (self->_state)
  {
    v4 = objc_retainBlock(handlerCopy);
    clientBoundMessageHandler = self->_clientBoundMessageHandler;
    self->_clientBoundMessageHandler = v4;
  }

  v6 = objc_retainBlock(handlerCopy);
  v7 = self->_clientBoundMessageHandler;
  self->_clientBoundMessageHandler = v6;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setServerBoundMessageHandler:(id)handler
{
  handlerCopy = handler;
  os_unfair_lock_lock(&self->_lock);
  v5 = objc_retainBlock(handlerCopy);

  serverBoundMessageHandler = self->_serverBoundMessageHandler;
  self->_serverBoundMessageHandler = v5;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setType:(unint64_t)type
{
  os_unfair_lock_lock(&self->_lock);
  self->_type = type;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)invalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  os_unfair_lock_lock(&self->_lock);
  if (self->_state == 2)
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v5 = objc_retainBlock(self->_clientBoundMessageHandler);
    v6 = objc_retainBlock(self->_serverBoundMessageHandler);
    self->_state = 2;
    clientBoundMessageHandler = self->_clientBoundMessageHandler;
    self->_clientBoundMessageHandler = 0;

    serverBoundMessageHandler = self->_serverBoundMessageHandler;
    self->_serverBoundMessageHandler = 0;

    v9 = [MRInvalidateApplicationConnectionMessage alloc];
    context = [(MRDApplicationConnection *)self context];
    v11 = [v9 initWithConnectionContext:context error:invalidateCopy];

    if ([invalidateCopy code] == 181)
    {
      v12 = @"ClosedByClient";
    }

    else if ([invalidateCopy code] == 182)
    {
      v12 = @"ClosedByServer";
    }

    else
    {
      v12 = @"error";
    }

    v13 = _MRLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      selfCopy3 = self;
      v22 = 2112;
      v23 = v12;
      v24 = 2112;
      v25 = invalidateCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[MRDApplicationConnection]<%p> invalidate - reason: %@, error: %@", buf, 0x20u);
    }

    os_unfair_lock_unlock(&self->_lock);
    if (v5)
    {
      v14 = _MRLogForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        selfCopy3 = self;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[MRDApplicationConnection]<%p> invalidate - notify client", buf, 0xCu);
      }

      v5[2](v5, self, v11);
    }

    if (v6)
    {
      v15 = _MRLogForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        selfCopy3 = self;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[MRDApplicationConnection]<%p> invalidate - notify server", buf, 0xCu);
      }

      v6[2](v6, self, v11);
    }

    v16 = qos_class_self();
    v17 = dispatch_get_global_queue(v16, 0);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100171EAC;
    v18[3] = &unk_1004B68F0;
    v18[4] = self;
    v19 = v12;
    dispatch_async(v17, v18);
  }
}

- (void)setRemoteInvalidationExternalDevice:(id)device
{
  deviceCopy = device;
  os_unfair_lock_lock(&self->_lock);
  invalidationExternalDevice = self->_invalidationExternalDevice;
  self->_invalidationExternalDevice = deviceCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setLocalHostedInvalidationPlayerPath:(id)path
{
  pathCopy = path;
  os_unfair_lock_lock(&self->_lock);
  invalidationPlayerPath = self->_invalidationPlayerPath;
  self->_invalidationPlayerPath = pathCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setLocalInvalidationXPCClient:(id)client
{
  clientCopy = client;
  os_unfair_lock_lock(&self->_lock);
  invalidationXPCClient = self->_invalidationXPCClient;
  self->_invalidationXPCClient = clientCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)installInvalidationObserversAndCheckForPostActivationInvalidations
{
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = self->_invalidationExternalDevice;
  v4 = self->_invalidationPlayerPath;
  v5 = self->_invalidationXPCClient;
  if (v4)
  {
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:self selector:"handleClientInvalidation:" name:kMRMediaRemoteNowPlayingApplicationDidUnregister object:0];

    player = [(MRPlayerPath *)v4 player];

    if (player)
    {
      v8 = +[NSNotificationCenter defaultCenter];
      [v8 addObserver:self selector:"handlePlayerInvalidation:" name:kMRMediaRemoteNowPlayingPlayerDidUnregister object:0];
    }

    v9 = +[MRDMediaRemoteServer server];
    nowPlayingServer = [v9 nowPlayingServer];
    v11 = [nowPlayingServer queryExistingPlayerPath:v4];

    if ([v11 error])
    {
      v12 = [[NSError alloc] initWithMRError:178];

      goto LABEL_15;
    }
  }

  if (v3 && (+[NSNotificationCenter defaultCenter](NSNotificationCenter, "defaultCenter"), v13 = objc_claimAutoreleasedReturnValue(), [v13 addObserver:self selector:"handleRemoteExternalDeviceInvalidation:" name:kMRExternalDeviceConnectionStateDidChangeNotification object:v3], v13, (-[MRExternalDevice isConnected](v3, "isConnected") & 1) == 0))
  {
    v18 = [NSError alloc];
    v19 = 176;
  }

  else
  {
    if (!v5)
    {
      goto LABEL_11;
    }

    v14 = +[NSNotificationCenter defaultCenter];
    [v14 addObserver:self selector:"handleXPCClientInvalidation:" name:@"MRDMediaRemoteServerClientInvalidatedNotification" object:v5];

    v15 = +[MRDMediaRemoteServer server];
    allClients = [v15 allClients];
    v17 = [allClients containsObject:v5];

    if (v17)
    {
LABEL_11:
      v12 = 0;
      goto LABEL_15;
    }

    v18 = [NSError alloc];
    v19 = 179;
  }

  v12 = [v18 initWithMRError:v19];
LABEL_15:

  return v12;
}

- (void)handleXPCClientInvalidation:(id)invalidation
{
  v4 = [[NSError alloc] initWithMRError:179];
  [(MRDApplicationConnection *)self invalidate:v4];
}

- (void)handleRemoteExternalDeviceInvalidation:(id)invalidation
{
  os_unfair_lock_lock(&self->_lock);
  v4 = self->_invalidationExternalDevice;
  os_unfair_lock_unlock(&self->_lock);
  isConnected = [(MRExternalDevice *)v4 isConnected];

  if ((isConnected & 1) == 0)
  {
    v6 = [[NSError alloc] initWithMRError:176];
    [(MRDApplicationConnection *)self invalidate:v6];
  }
}

- (void)handleClientInvalidation:(id)invalidation
{
  userInfo = [invalidation userInfo];
  v12 = MRGetPlayerPathFromUserInfo();

  os_unfair_lock_lock(&self->_lock);
  client = [(MRPlayerPath *)self->_invalidationPlayerPath client];
  type = self->_type;
  os_unfair_lock_unlock(&self->_lock);
  origin = [v12 origin];
  if ([origin isLocallyHosted])
  {
    client2 = [v12 client];
    v9 = [client2 isEqual:client];

    if (!v9)
    {
      goto LABEL_8;
    }

    v10 = [NSError alloc];
    if (type == 1)
    {
      v11 = 178;
    }

    else
    {
      v11 = 179;
    }

    origin = [v10 initWithMRError:v11];
    [(MRDApplicationConnection *)self invalidate:origin];
  }

LABEL_8:
}

- (void)handlePlayerInvalidation:(id)invalidation
{
  userInfo = [invalidation userInfo];
  v11 = MRGetPlayerPathFromUserInfo();

  os_unfair_lock_lock(&self->_lock);
  client = [(MRPlayerPath *)self->_invalidationPlayerPath client];
  player = [(MRPlayerPath *)self->_invalidationPlayerPath player];
  os_unfair_lock_unlock(&self->_lock);
  origin = [v11 origin];
  if ([origin isLocallyHosted])
  {
    client2 = [v11 client];
    if ([client2 isEqual:client])
    {
      player2 = [v11 player];
      v10 = [player2 isEqual:player];

      if (!v10)
      {
        goto LABEL_7;
      }

      origin = [[NSError alloc] initWithMRError:178];
      [(MRDApplicationConnection *)self invalidate:origin];
    }

    else
    {
    }
  }

LABEL_7:
}

@end