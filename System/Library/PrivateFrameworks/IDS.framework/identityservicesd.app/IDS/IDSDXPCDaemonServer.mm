@interface IDSDXPCDaemonServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (IDSDXPCDaemonServer)initWithServiceName:(id)name queue:(id)queue;
- (id)activityMonitorCollaboratorForXPCDaemon:(id)daemon;
- (id)baaSignerCollaboratorForTopic:(id)topic forXPCDaemon:(id)daemon;
- (id)diagnosticHandlingCollaboratorForXPCDaemon:(id)daemon;
- (id)eventReportingCollaboratorForXPCDaemon:(id)daemon;
- (id)featureTogglerCollaboratorForService:(id)service forXPCDaemon:(id)daemon;
- (id)firewallCollaboratorForService:(id)service forXPCDaemon:(id)daemon;
- (id)groupSessionKeyValueDeliveryProviderCollaboratorForXPCDaemon:(id)daemon;
- (id)internalTestingCollaboratorForXPCDaemon:(id)daemon;
- (id)keyTransparencyCollaboratorForXPCDaemon:(id)daemon;
- (id)offGridMessengerCollaboratorForXPCDaemon:(id)daemon;
- (id)offGridStateManagerCollaboratorForXPCDaemon:(id)daemon;
- (id)opportunisticCollaboratorForXPCDaemon:(id)daemon;
- (id)phoneNumberCredentialVendorCollaboratorForXPCDaemon:(id)daemon;
- (id)pinnedIdentityCollaboratorForXPCDaemon:(id)daemon;
- (id)registrationCollaboratorForXPCDaemon:(id)daemon;
- (id)reunionSyncCollaboratorWithClientProcessName:(id)name forXPCDaemon:(id)daemon;
- (id)serverMessagingCollaboratorForXPCDaemon:(id)daemon;
- (void)reportDailyMetric;
@end

@implementation IDSDXPCDaemonServer

- (IDSDXPCDaemonServer)initWithServiceName:(id)name queue:(id)queue
{
  nameCopy = name;
  queueCopy = queue;
  dispatch_assert_queue_V2(queueCopy);
  v43.receiver = self;
  v43.super_class = IDSDXPCDaemonServer;
  v8 = [(IDSDXPCDaemonServer *)&v43 init];
  if (v8)
  {
    obj = queue;
    v9 = _os_feature_enabled_impl();
    v10 = +[IDSFoundationLog xpc];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = @"NO";
      if (v9)
      {
        v11 = @"YES";
      }

      *buf = 138543618;
      v45 = nameCopy;
      v46 = 2112;
      v47 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Created IDSDXPCDaemonServer {serviceName: %{public}@, syncSupport: %@}", buf, 0x16u);
    }

    v42 = nameCopy;

    v12 = [IDSDXPCPairing alloc];
    v13 = +[IDSDaemon sharedInstance];
    v14 = +[IDSDServiceController sharedInstance];
    v15 = +[IDSPairingManager sharedInstance];
    v16 = +[IDSQuickSwitchHelper sharedInstance];
    v17 = +[IDSDAccountController sharedInstance];
    +[IDSUTunController sharedInstance];
    v18 = v40 = v9;
    v19 = +[IDSUTunDeliveryController sharedInstance];
    v20 = [(IDSDXPCPairing *)v12 initWithQueue:queueCopy idsDaemon:v13 serviceController:v14 pairingManager:v15 quickSwitchHelper:v16 accountController:v17 utunController:v18 utunDeliveryController:v19];
    pairingCollaborator = v8->_pairingCollaborator;
    v8->_pairingCollaborator = v20;

    v22 = [IDSDXPCPairedDeviceManager alloc];
    v23 = +[IDSPairingManager sharedInstance];
    v24 = [(IDSDXPCPairedDeviceManager *)v22 initWithPairingManager:v23];
    pairedDeviceManagerCollaborator = v8->_pairedDeviceManagerCollaborator;
    v8->_pairedDeviceManagerCollaborator = v24;

    v26 = [[IDSDXPCOffGridMessenger alloc] initWithQueue:queueCopy];
    offGridMessengerCollaborator = v8->_offGridMessengerCollaborator;
    v8->_offGridMessengerCollaborator = v26;

    v28 = [[IDSDXPCOffGridStateManager alloc] initWithQueue:queueCopy];
    offGridStateManagerCollaborator = v8->_offGridStateManagerCollaborator;
    v8->_offGridStateManagerCollaborator = v28;

    objc_storeStrong(&v8->_queue, obj);
    if (v40)
    {
      v30 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v31 = dispatch_queue_create("com.apple.identityservicesd-IDSDXPCDaemonServerXPC", v30);
      xpcQueue = v8->_xpcQueue;
      v8->_xpcQueue = v31;
    }

    else
    {
      v33 = queueCopy;
      v30 = v8->_xpcQueue;
      v8->_xpcQueue = v33;
    }

    v34 = objc_alloc_init(NSMutableArray);
    daemonClients = v8->_daemonClients;
    v8->_daemonClients = v34;

    nameCopy = v42;
    v36 = [[NSXPCListener alloc] initWithMachServiceName:v42];
    listener = v8->_listener;
    v8->_listener = v36;

    [(NSXPCListener *)v8->_listener setDelegate:v8];
    [(NSXPCListener *)v8->_listener _setQueue:v8->_xpcQueue];
    [(NSXPCListener *)v8->_listener resume];
    v38 = +[NSNotificationCenter defaultCenter];
    [v38 addObserver:v8 selector:"reportDailyMetric" name:@"com.apple.ids.daemonDailyMetricNotification" object:0];
  }

  return v8;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  xpcQueue = [(IDSDXPCDaemonServer *)self xpcQueue];
  dispatch_assert_queue_V2(xpcQueue);

  v9 = +[IDSFoundationLog xpc];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = connectionCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Incoming XPC connection {newConnection: %{public}@}", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v18 = 0x3032000000;
  v19 = sub_10000A9B4;
  v20 = sub_10000BC4C;
  v21 = 0;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10048F470;
  v16[3] = &unk_100BD9060;
  v16[4] = self;
  v16[5] = &buf;
  [connectionCopy setInvalidationHandler:v16];
  v10 = [IDSDXPCDaemon alloc];
  xpcQueue2 = [(IDSDXPCDaemonServer *)self xpcQueue];
  v12 = [(IDSDXPCDaemon *)v10 initWithQueue:xpcQueue2 syncOntoMain:_os_feature_enabled_impl() collaboratorProvider:self takingOverAndResumingConnection:connectionCopy];
  v13 = *(*(&buf + 1) + 40);
  *(*(&buf + 1) + 40) = v12;

  daemonClients = [(IDSDXPCDaemonServer *)self daemonClients];
  [daemonClients addObject:*(*(&buf + 1) + 40)];

  _Block_object_dispose(&buf, 8);
  return 1;
}

- (id)reunionSyncCollaboratorWithClientProcessName:(id)name forXPCDaemon:(id)daemon
{
  daemonCopy = daemon;
  nameCopy = name;
  v7 = [IDSDXPCReunionSync alloc];
  clientConnection = [daemonCopy clientConnection];

  v9 = +[IDSUTunDeliveryController sharedInstance];
  v10 = +[IDSDuetInterface sharedInstance];
  v11 = [(IDSDXPCReunionSync *)v7 initWithConnection:clientConnection clientProcessName:nameCopy UTunDeliveryController:v9 duetInterface:v10];

  return v11;
}

- (id)opportunisticCollaboratorForXPCDaemon:(id)daemon
{
  daemonCopy = daemon;
  v5 = +[IDSDaemon sharedInstance];
  opportunisticDeliveryController = [v5 opportunisticDeliveryController];
  cache = [opportunisticDeliveryController cache];

  v8 = [IDSDXPCOpportunistic alloc];
  queue = [(IDSDXPCDaemonServer *)self queue];
  clientConnection = [daemonCopy clientConnection];

  v11 = [(IDSDXPCOpportunistic *)v8 initWithQueue:queue connection:clientConnection opportunisticCache:cache];

  return v11;
}

- (id)registrationCollaboratorForXPCDaemon:(id)daemon
{
  daemonCopy = daemon;
  v5 = [IDSDXPCRegistration alloc];
  queue = [(IDSDXPCDaemonServer *)self queue];
  clientConnection = [daemonCopy clientConnection];

  v8 = [(IDSDXPCRegistration *)v5 initWithQueue:queue connection:clientConnection];

  return v8;
}

- (id)activityMonitorCollaboratorForXPCDaemon:(id)daemon
{
  daemonCopy = daemon;
  v5 = [IDSDXPCActivityMonitor alloc];
  queue = [(IDSDXPCDaemonServer *)self queue];
  clientConnection = [daemonCopy clientConnection];

  v8 = +[IDSActivityMonitorStateManager sharedInstance];
  v9 = [(IDSDXPCActivityMonitor *)v5 initWithQueue:queue connection:clientConnection activityMonitorStateManager:v8];

  return v9;
}

- (id)serverMessagingCollaboratorForXPCDaemon:(id)daemon
{
  daemonCopy = daemon;
  v5 = [IDSDXPCServerMessaging alloc];
  queue = [(IDSDXPCDaemonServer *)self queue];
  clientConnection = [daemonCopy clientConnection];

  v8 = [+[FTMessageDelivery APNSMessageDeliveryClass](FTMessageDelivery "APNSMessageDeliveryClass")];
  v9 = +[IDSPushHandler sharedInstance];
  v10 = [(IDSDXPCServerMessaging *)v5 initWithQueue:queue connection:clientConnection messageDelivery:v8 pushHandler:v9];

  return v10;
}

- (id)offGridMessengerCollaboratorForXPCDaemon:(id)daemon
{
  daemonCopy = daemon;
  offGridMessengerCollaborator = [(IDSDXPCDaemonServer *)self offGridMessengerCollaborator];
  clientConnection = [daemonCopy clientConnection];

  [offGridMessengerCollaborator monitorConnection:clientConnection];

  return [(IDSDXPCDaemonServer *)self offGridMessengerCollaborator];
}

- (id)offGridStateManagerCollaboratorForXPCDaemon:(id)daemon
{
  daemonCopy = daemon;
  offGridStateManagerCollaborator = [(IDSDXPCDaemonServer *)self offGridStateManagerCollaborator];
  clientConnection = [daemonCopy clientConnection];

  [offGridStateManagerCollaborator monitorConnection:clientConnection];

  return [(IDSDXPCDaemonServer *)self offGridStateManagerCollaborator];
}

- (id)keyTransparencyCollaboratorForXPCDaemon:(id)daemon
{
  daemonCopy = daemon;
  v5 = [IDSDXPCKeyTransparency alloc];
  queue = [(IDSDXPCDaemonServer *)self queue];
  clientConnection = [daemonCopy clientConnection];

  v8 = [(IDSDXPCKeyTransparency *)v5 initWithQueue:queue connection:clientConnection];

  return v8;
}

- (id)pinnedIdentityCollaboratorForXPCDaemon:(id)daemon
{
  daemonCopy = daemon;
  v5 = [IDSDXPCPinnedIdentity alloc];
  queue = [(IDSDXPCDaemonServer *)self queue];
  clientConnection = [daemonCopy clientConnection];

  v8 = [(IDSDXPCPinnedIdentity *)v5 initWithQueue:queue connection:clientConnection];

  return v8;
}

- (id)phoneNumberCredentialVendorCollaboratorForXPCDaemon:(id)daemon
{
  daemonCopy = daemon;
  v5 = [IDSDXPCPhoneNumberCredentialVendor alloc];
  queue = [(IDSDXPCDaemonServer *)self queue];
  clientConnection = [daemonCopy clientConnection];

  v8 = [(IDSDXPCPhoneNumberCredentialVendor *)v5 initWithQueue:queue connection:clientConnection];

  return v8;
}

- (id)firewallCollaboratorForService:(id)service forXPCDaemon:(id)daemon
{
  daemonCopy = daemon;
  serviceCopy = service;
  v8 = [IDSDXPCFirewall alloc];
  queue = [(IDSDXPCDaemonServer *)self queue];
  clientConnection = [daemonCopy clientConnection];

  v11 = [(IDSDXPCFirewall *)v8 initWithService:serviceCopy queue:queue connection:clientConnection];

  return v11;
}

- (id)groupSessionKeyValueDeliveryProviderCollaboratorForXPCDaemon:(id)daemon
{
  daemonCopy = daemon;
  v5 = [IDSDXPCGroupSessionKeyValueDeliveryProvider alloc];
  queue = [(IDSDXPCDaemonServer *)self queue];
  clientConnection = [daemonCopy clientConnection];

  v8 = [(IDSDXPCGroupSessionKeyValueDeliveryProvider *)v5 initWithQueue:queue connection:clientConnection];

  return v8;
}

- (id)featureTogglerCollaboratorForService:(id)service forXPCDaemon:(id)daemon
{
  daemonCopy = daemon;
  serviceCopy = service;
  v8 = [IDSDXPCFeatureToggler alloc];
  queue = [(IDSDXPCDaemonServer *)self queue];
  clientConnection = [daemonCopy clientConnection];

  v11 = [(IDSDXPCFeatureToggler *)v8 initWithService:serviceCopy queue:queue connection:clientConnection];

  return v11;
}

- (id)baaSignerCollaboratorForTopic:(id)topic forXPCDaemon:(id)daemon
{
  daemonCopy = daemon;
  topicCopy = topic;
  v8 = [IDSDXPCBAASigner alloc];
  queue = [(IDSDXPCDaemonServer *)self queue];
  clientConnection = [daemonCopy clientConnection];

  v11 = [(IDSDXPCBAASigner *)v8 initWithTopic:topicCopy queue:queue connection:clientConnection];

  return v11;
}

- (id)eventReportingCollaboratorForXPCDaemon:(id)daemon
{
  daemonCopy = daemon;
  v5 = [IDSDXPCEventReporting alloc];
  queue = [(IDSDXPCDaemonServer *)self queue];
  clientConnection = [daemonCopy clientConnection];

  v8 = [(IDSDXPCEventReporting *)v5 initWithQueue:queue connection:clientConnection];

  return v8;
}

- (id)internalTestingCollaboratorForXPCDaemon:(id)daemon
{
  daemonCopy = daemon;
  if (CUTIsInternalInstall())
  {
    v5 = [IDSDXPCInternalTesting alloc];
    queue = [(IDSDXPCDaemonServer *)self queue];
    clientConnection = [daemonCopy clientConnection];
    offGridStateManagerCollaborator = [(IDSDXPCDaemonServer *)self offGridStateManagerCollaborator];
    v9 = [(IDSDXPCInternalTesting *)v5 initWithQueue:queue connection:clientConnection offGridStateManager:offGridStateManagerCollaborator];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)diagnosticHandlingCollaboratorForXPCDaemon:(id)daemon
{
  daemonCopy = daemon;
  v5 = [IDSDXPCDiagnosticHandling alloc];
  queue = [(IDSDXPCDaemonServer *)self queue];
  clientConnection = [daemonCopy clientConnection];

  v8 = [(IDSDXPCDiagnosticHandling *)v5 initWithQueue:queue connection:clientConnection];

  return v8;
}

- (void)reportDailyMetric
{
  offGridStateManagerCollaborator = [(IDSDXPCDaemonServer *)self offGridStateManagerCollaborator];
  [offGridStateManagerCollaborator fetchContactsOfType:3 phoneNumbersOnly:0 completion:&stru_100BDD4B8];
}

@end