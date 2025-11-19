@interface IDSDXPCDaemonServer
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (IDSDXPCDaemonServer)initWithServiceName:(id)a3 queue:(id)a4;
- (id)activityMonitorCollaboratorForXPCDaemon:(id)a3;
- (id)baaSignerCollaboratorForTopic:(id)a3 forXPCDaemon:(id)a4;
- (id)diagnosticHandlingCollaboratorForXPCDaemon:(id)a3;
- (id)eventReportingCollaboratorForXPCDaemon:(id)a3;
- (id)featureTogglerCollaboratorForService:(id)a3 forXPCDaemon:(id)a4;
- (id)firewallCollaboratorForService:(id)a3 forXPCDaemon:(id)a4;
- (id)groupSessionKeyValueDeliveryProviderCollaboratorForXPCDaemon:(id)a3;
- (id)internalTestingCollaboratorForXPCDaemon:(id)a3;
- (id)keyTransparencyCollaboratorForXPCDaemon:(id)a3;
- (id)offGridMessengerCollaboratorForXPCDaemon:(id)a3;
- (id)offGridStateManagerCollaboratorForXPCDaemon:(id)a3;
- (id)opportunisticCollaboratorForXPCDaemon:(id)a3;
- (id)phoneNumberCredentialVendorCollaboratorForXPCDaemon:(id)a3;
- (id)pinnedIdentityCollaboratorForXPCDaemon:(id)a3;
- (id)registrationCollaboratorForXPCDaemon:(id)a3;
- (id)reunionSyncCollaboratorWithClientProcessName:(id)a3 forXPCDaemon:(id)a4;
- (id)serverMessagingCollaboratorForXPCDaemon:(id)a3;
- (void)reportDailyMetric;
@end

@implementation IDSDXPCDaemonServer

- (IDSDXPCDaemonServer)initWithServiceName:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(v7);
  v43.receiver = self;
  v43.super_class = IDSDXPCDaemonServer;
  v8 = [(IDSDXPCDaemonServer *)&v43 init];
  if (v8)
  {
    obj = a4;
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
      v45 = v6;
      v46 = 2112;
      v47 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Created IDSDXPCDaemonServer {serviceName: %{public}@, syncSupport: %@}", buf, 0x16u);
    }

    v42 = v6;

    v12 = [IDSDXPCPairing alloc];
    v13 = +[IDSDaemon sharedInstance];
    v14 = +[IDSDServiceController sharedInstance];
    v15 = +[IDSPairingManager sharedInstance];
    v16 = +[IDSQuickSwitchHelper sharedInstance];
    v17 = +[IDSDAccountController sharedInstance];
    +[IDSUTunController sharedInstance];
    v18 = v40 = v9;
    v19 = +[IDSUTunDeliveryController sharedInstance];
    v20 = [(IDSDXPCPairing *)v12 initWithQueue:v7 idsDaemon:v13 serviceController:v14 pairingManager:v15 quickSwitchHelper:v16 accountController:v17 utunController:v18 utunDeliveryController:v19];
    pairingCollaborator = v8->_pairingCollaborator;
    v8->_pairingCollaborator = v20;

    v22 = [IDSDXPCPairedDeviceManager alloc];
    v23 = +[IDSPairingManager sharedInstance];
    v24 = [(IDSDXPCPairedDeviceManager *)v22 initWithPairingManager:v23];
    pairedDeviceManagerCollaborator = v8->_pairedDeviceManagerCollaborator;
    v8->_pairedDeviceManagerCollaborator = v24;

    v26 = [[IDSDXPCOffGridMessenger alloc] initWithQueue:v7];
    offGridMessengerCollaborator = v8->_offGridMessengerCollaborator;
    v8->_offGridMessengerCollaborator = v26;

    v28 = [[IDSDXPCOffGridStateManager alloc] initWithQueue:v7];
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
      v33 = v7;
      v30 = v8->_xpcQueue;
      v8->_xpcQueue = v33;
    }

    v34 = objc_alloc_init(NSMutableArray);
    daemonClients = v8->_daemonClients;
    v8->_daemonClients = v34;

    v6 = v42;
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

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IDSDXPCDaemonServer *)self xpcQueue];
  dispatch_assert_queue_V2(v8);

  v9 = +[IDSFoundationLog xpc];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v7;
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
  [v7 setInvalidationHandler:v16];
  v10 = [IDSDXPCDaemon alloc];
  v11 = [(IDSDXPCDaemonServer *)self xpcQueue];
  v12 = [(IDSDXPCDaemon *)v10 initWithQueue:v11 syncOntoMain:_os_feature_enabled_impl() collaboratorProvider:self takingOverAndResumingConnection:v7];
  v13 = *(*(&buf + 1) + 40);
  *(*(&buf + 1) + 40) = v12;

  v14 = [(IDSDXPCDaemonServer *)self daemonClients];
  [v14 addObject:*(*(&buf + 1) + 40)];

  _Block_object_dispose(&buf, 8);
  return 1;
}

- (id)reunionSyncCollaboratorWithClientProcessName:(id)a3 forXPCDaemon:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [IDSDXPCReunionSync alloc];
  v8 = [v5 clientConnection];

  v9 = +[IDSUTunDeliveryController sharedInstance];
  v10 = +[IDSDuetInterface sharedInstance];
  v11 = [(IDSDXPCReunionSync *)v7 initWithConnection:v8 clientProcessName:v6 UTunDeliveryController:v9 duetInterface:v10];

  return v11;
}

- (id)opportunisticCollaboratorForXPCDaemon:(id)a3
{
  v4 = a3;
  v5 = +[IDSDaemon sharedInstance];
  v6 = [v5 opportunisticDeliveryController];
  v7 = [v6 cache];

  v8 = [IDSDXPCOpportunistic alloc];
  v9 = [(IDSDXPCDaemonServer *)self queue];
  v10 = [v4 clientConnection];

  v11 = [(IDSDXPCOpportunistic *)v8 initWithQueue:v9 connection:v10 opportunisticCache:v7];

  return v11;
}

- (id)registrationCollaboratorForXPCDaemon:(id)a3
{
  v4 = a3;
  v5 = [IDSDXPCRegistration alloc];
  v6 = [(IDSDXPCDaemonServer *)self queue];
  v7 = [v4 clientConnection];

  v8 = [(IDSDXPCRegistration *)v5 initWithQueue:v6 connection:v7];

  return v8;
}

- (id)activityMonitorCollaboratorForXPCDaemon:(id)a3
{
  v4 = a3;
  v5 = [IDSDXPCActivityMonitor alloc];
  v6 = [(IDSDXPCDaemonServer *)self queue];
  v7 = [v4 clientConnection];

  v8 = +[IDSActivityMonitorStateManager sharedInstance];
  v9 = [(IDSDXPCActivityMonitor *)v5 initWithQueue:v6 connection:v7 activityMonitorStateManager:v8];

  return v9;
}

- (id)serverMessagingCollaboratorForXPCDaemon:(id)a3
{
  v4 = a3;
  v5 = [IDSDXPCServerMessaging alloc];
  v6 = [(IDSDXPCDaemonServer *)self queue];
  v7 = [v4 clientConnection];

  v8 = [+[FTMessageDelivery APNSMessageDeliveryClass](FTMessageDelivery "APNSMessageDeliveryClass")];
  v9 = +[IDSPushHandler sharedInstance];
  v10 = [(IDSDXPCServerMessaging *)v5 initWithQueue:v6 connection:v7 messageDelivery:v8 pushHandler:v9];

  return v10;
}

- (id)offGridMessengerCollaboratorForXPCDaemon:(id)a3
{
  v4 = a3;
  v5 = [(IDSDXPCDaemonServer *)self offGridMessengerCollaborator];
  v6 = [v4 clientConnection];

  [v5 monitorConnection:v6];

  return [(IDSDXPCDaemonServer *)self offGridMessengerCollaborator];
}

- (id)offGridStateManagerCollaboratorForXPCDaemon:(id)a3
{
  v4 = a3;
  v5 = [(IDSDXPCDaemonServer *)self offGridStateManagerCollaborator];
  v6 = [v4 clientConnection];

  [v5 monitorConnection:v6];

  return [(IDSDXPCDaemonServer *)self offGridStateManagerCollaborator];
}

- (id)keyTransparencyCollaboratorForXPCDaemon:(id)a3
{
  v4 = a3;
  v5 = [IDSDXPCKeyTransparency alloc];
  v6 = [(IDSDXPCDaemonServer *)self queue];
  v7 = [v4 clientConnection];

  v8 = [(IDSDXPCKeyTransparency *)v5 initWithQueue:v6 connection:v7];

  return v8;
}

- (id)pinnedIdentityCollaboratorForXPCDaemon:(id)a3
{
  v4 = a3;
  v5 = [IDSDXPCPinnedIdentity alloc];
  v6 = [(IDSDXPCDaemonServer *)self queue];
  v7 = [v4 clientConnection];

  v8 = [(IDSDXPCPinnedIdentity *)v5 initWithQueue:v6 connection:v7];

  return v8;
}

- (id)phoneNumberCredentialVendorCollaboratorForXPCDaemon:(id)a3
{
  v4 = a3;
  v5 = [IDSDXPCPhoneNumberCredentialVendor alloc];
  v6 = [(IDSDXPCDaemonServer *)self queue];
  v7 = [v4 clientConnection];

  v8 = [(IDSDXPCPhoneNumberCredentialVendor *)v5 initWithQueue:v6 connection:v7];

  return v8;
}

- (id)firewallCollaboratorForService:(id)a3 forXPCDaemon:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [IDSDXPCFirewall alloc];
  v9 = [(IDSDXPCDaemonServer *)self queue];
  v10 = [v6 clientConnection];

  v11 = [(IDSDXPCFirewall *)v8 initWithService:v7 queue:v9 connection:v10];

  return v11;
}

- (id)groupSessionKeyValueDeliveryProviderCollaboratorForXPCDaemon:(id)a3
{
  v4 = a3;
  v5 = [IDSDXPCGroupSessionKeyValueDeliveryProvider alloc];
  v6 = [(IDSDXPCDaemonServer *)self queue];
  v7 = [v4 clientConnection];

  v8 = [(IDSDXPCGroupSessionKeyValueDeliveryProvider *)v5 initWithQueue:v6 connection:v7];

  return v8;
}

- (id)featureTogglerCollaboratorForService:(id)a3 forXPCDaemon:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [IDSDXPCFeatureToggler alloc];
  v9 = [(IDSDXPCDaemonServer *)self queue];
  v10 = [v6 clientConnection];

  v11 = [(IDSDXPCFeatureToggler *)v8 initWithService:v7 queue:v9 connection:v10];

  return v11;
}

- (id)baaSignerCollaboratorForTopic:(id)a3 forXPCDaemon:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [IDSDXPCBAASigner alloc];
  v9 = [(IDSDXPCDaemonServer *)self queue];
  v10 = [v6 clientConnection];

  v11 = [(IDSDXPCBAASigner *)v8 initWithTopic:v7 queue:v9 connection:v10];

  return v11;
}

- (id)eventReportingCollaboratorForXPCDaemon:(id)a3
{
  v4 = a3;
  v5 = [IDSDXPCEventReporting alloc];
  v6 = [(IDSDXPCDaemonServer *)self queue];
  v7 = [v4 clientConnection];

  v8 = [(IDSDXPCEventReporting *)v5 initWithQueue:v6 connection:v7];

  return v8;
}

- (id)internalTestingCollaboratorForXPCDaemon:(id)a3
{
  v4 = a3;
  if (CUTIsInternalInstall())
  {
    v5 = [IDSDXPCInternalTesting alloc];
    v6 = [(IDSDXPCDaemonServer *)self queue];
    v7 = [v4 clientConnection];
    v8 = [(IDSDXPCDaemonServer *)self offGridStateManagerCollaborator];
    v9 = [(IDSDXPCInternalTesting *)v5 initWithQueue:v6 connection:v7 offGridStateManager:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)diagnosticHandlingCollaboratorForXPCDaemon:(id)a3
{
  v4 = a3;
  v5 = [IDSDXPCDiagnosticHandling alloc];
  v6 = [(IDSDXPCDaemonServer *)self queue];
  v7 = [v4 clientConnection];

  v8 = [(IDSDXPCDiagnosticHandling *)v5 initWithQueue:v6 connection:v7];

  return v8;
}

- (void)reportDailyMetric
{
  v2 = [(IDSDXPCDaemonServer *)self offGridStateManagerCollaborator];
  [v2 fetchContactsOfType:3 phoneNumbersOnly:0 completion:&stru_100BDD4B8];
}

@end