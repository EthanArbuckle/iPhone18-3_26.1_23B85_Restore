@interface UARPUpdaterServiceInstance
- (BOOL)consentDisabledForService;
- (BOOL)dynamicAssetSolicitation:(id)a3 modelNumber:(id)a4 notifyService:(id)a5;
- (BOOL)dynamicAssetSolicitation:(id)a3 modelNumbers:(id)a4 notifyService:(id)a5;
- (BOOL)isTrackingIONotificationPortForRegistryEntryID:(id)a3;
- (BOOL)queryIsServiceBusy;
- (BOOL)queryIsServiceBusyInternal;
- (UARPUpdaterServiceInstance)initWithServiceBundle:(id)a3 delegate:(id)a4;
- (id)findAndReleaseAllIONotificationPorts;
- (id)findAndReleaseIONotificationPortForRegistryEntryID:(id)a3;
- (id)queryPendingTssRequests;
- (void)bsdNotificationReceived:(id)a3;
- (void)checkinDASActivities;
- (void)consentReceived:(id)a3;
- (void)consentReceivedPostLogoutMode:(id)a3;
- (void)dasActivityReceived:(id)a3;
- (void)dealloc;
- (void)disabledProductIdentifiers:(id)a3;
- (void)eaRuleMatched:(id)a3;
- (void)initializeUpdaterServiceConnection;
- (void)ioKitRuleMatched:(id)a3;
- (void)queryBSDNotificationRules;
- (void)queryDASActivityRules;
- (void)queryLaunchRules;
- (void)queryMatchingRules;
- (void)releaseXPCConnection;
- (void)storeIONotificationPort:(id)a3 forRegistryEntryID:(id)a4;
- (void)tssResponse:(id)a3;
@end

@implementation UARPUpdaterServiceInstance

- (UARPUpdaterServiceInstance)initWithServiceBundle:(id)a3 delegate:(id)a4
{
  v11.receiver = self;
  v11.super_class = UARPUpdaterServiceInstance;
  v6 = [(UARPUpdaterServiceInstance *)&v11 init];
  if (v6)
  {
    v6->_log = os_log_create("com.apple.accessoryupdater.uarp", "updaterManager");
    v7 = [objc_msgSend(a3 "bundleIdentifier")];
    v6->_serviceName = v7;
    v6->_delegate = a4;
    v6->_queue = dispatch_queue_create([(NSString *)v7 UTF8String], 0);
    v6->_regEntryIDToIONotificationPorts = objc_opt_new();
    v8 = [a3 infoDictionary];
    v9 = [v8 objectForKeyedSubscript:@"AccessoriesNeedingConsent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6->_accessoriesNeedingConsent = [v9 copy];
    }

    if ([objc_msgSend(objc_msgSend(v8 objectForKeyedSubscript:{@"XPCService", "objectForKeyedSubscript:", @"ServiceType", "isEqualToString:", @"Application"}])
    {
      v6->_serviceTypeApplication = 1;
    }
  }

  return v6;
}

- (void)dealloc
{
  [(UARPUpdaterServiceInstance *)self releaseXPCConnection];

  v3.receiver = self;
  v3.super_class = UARPUpdaterServiceInstance;
  [(UARPUpdaterServiceInstance *)&v3 dealloc];
}

- (void)initializeUpdaterServiceConnection
{
  self->_xpcConnection = [[NSXPCConnection alloc] initWithServiceName:self->_serviceName];
  v3 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___UARPUpdaterService];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  [(NSXPCInterface *)v3 setClasses:[NSSet setWithArray:?], "getMatchingServicesListWithReply:", 0, 1];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  [(NSXPCInterface *)v3 setClasses:[NSSet setWithArray:?], "getDASActivityListWithReply:", 0, 1];
  [(NSXPCConnection *)self->_xpcConnection setRemoteObjectInterface:v3];
  [(NSXPCConnection *)self->_xpcConnection resume];
}

- (void)releaseXPCConnection
{
  [(NSXPCConnection *)self->_xpcConnection invalidate];

  self->_xpcConnection = 0;
}

- (BOOL)consentDisabledForService
{
  v3 = CFPreferencesCopyAppValue(@"disabledConsentUARPServices", @"com.apple.mobileaccessoryupdater");
  LOBYTE(self) = [objc_msgSend(v3 objectForKeyedSubscript:{-[UARPUpdaterServiceInstance serviceName](self, "serviceName")), "BOOLValue"}];

  return self;
}

- (void)queryMatchingRules
{
  [(UARPUpdaterServiceInstance *)self initializeUpdaterServiceConnection];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3052000000;
  v18 = sub_100020E8C;
  v19 = sub_100020E9C;
  v20 = 0;
  xpcConnection = self->_xpcConnection;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100020EA8;
  v14[3] = &unk_1000819F0;
  v14[4] = &v15;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = sub_100020E8C;
  v12 = sub_100020E9C;
  v13 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100020ED8;
  v7[3] = &unk_100081388;
  v7[4] = &v8;
  [-[NSXPCConnection synchronousRemoteObjectProxyWithErrorHandler:](xpcConnection synchronousRemoteObjectProxyWithErrorHandler:{v14), "getMatchingServicesListWithReply:", v7}];
  v4 = v16[5];
  if (v4)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      serviceName = self->_serviceName;
      *buf = 138412546;
      v22 = serviceName;
      v23 = 2112;
      v24 = v4;
      _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Unable to query services for %@ (%@)", buf, 0x16u);
      v4 = v16[5];
    }
  }

  else
  {
    [(UARPUpdaterServiceInstanceDelegate *)self->_delegate matchingRulesChangedForUpdaterServiceInstance:self matchingRules:v9[5]];
  }

  [(UARPUpdaterServiceInstance *)self releaseXPCConnection];
  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v15, 8);
}

- (void)queryBSDNotificationRules
{
  if ([(UARPUpdaterServiceInstance *)self consentDisabledForService])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_10004CACC(self, log);
    }
  }

  else
  {
    [(UARPUpdaterServiceInstance *)self initializeUpdaterServiceConnection];
    v16 = 0;
    v17 = &v16;
    v18 = 0x3052000000;
    v19 = sub_100020E8C;
    v20 = sub_100020E9C;
    v21 = 0;
    xpcConnection = self->_xpcConnection;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000211A0;
    v15[3] = &unk_1000819F0;
    v15[4] = &v16;
    v9 = 0;
    v10 = &v9;
    v11 = 0x3052000000;
    v12 = sub_100020E8C;
    v13 = sub_100020E9C;
    v14 = 0;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000211D0;
    v8[3] = &unk_100081388;
    v8[4] = &v9;
    [-[NSXPCConnection synchronousRemoteObjectProxyWithErrorHandler:](xpcConnection synchronousRemoteObjectProxyWithErrorHandler:{v15), "getBSDNotificationsListWithReply:", v8}];
    v5 = v17[5];
    if (v5)
    {
      v6 = self->_log;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        serviceName = self->_serviceName;
        *buf = 138412546;
        v23 = serviceName;
        v24 = 2112;
        v25 = v5;
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Unable to query BSD notifications for %@ (%@)", buf, 0x16u);
        v5 = v17[5];
      }
    }

    else
    {
      [(UARPUpdaterServiceInstanceDelegate *)self->_delegate bsdNotificationRulesChangedForUpdaterServiceInstance:self notificationNames:v10[5]];
    }

    [(UARPUpdaterServiceInstance *)self releaseXPCConnection];
    _Block_object_dispose(&v9, 8);
    _Block_object_dispose(&v16, 8);
  }
}

- (void)queryDASActivityRules
{
  if ([(UARPUpdaterServiceInstance *)self consentDisabledForService])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_10004CB48(self, log);
    }
  }

  else
  {
    [+[UARPDatabase sharedDatabase](UARPDatabase "sharedDatabase")];
    [(UARPUpdaterServiceInstance *)self initializeUpdaterServiceConnection];
    v20 = 0;
    v21 = &v20;
    v22 = 0x3052000000;
    v23 = sub_100020E8C;
    v24 = sub_100020E9C;
    v25 = 0;
    xpcConnection = self->_xpcConnection;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10002153C;
    v19[3] = &unk_1000819F0;
    v19[4] = &v20;
    v13 = 0;
    v14 = &v13;
    v15 = 0x3052000000;
    v16 = sub_100020E8C;
    v17 = sub_100020E9C;
    v18 = 0;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10002156C;
    v12[3] = &unk_100081388;
    v12[4] = &v13;
    [-[NSXPCConnection synchronousRemoteObjectProxyWithErrorHandler:](xpcConnection synchronousRemoteObjectProxyWithErrorHandler:{v19), "getDASActivityListWithReply:", v12}];
    v5 = self->_log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      serviceName = self->_serviceName;
      v7 = v14[5];
      *buf = 138412546;
      v27 = serviceName;
      v28 = 2112;
      v29 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "DAS activities from %@ (%@)", buf, 0x16u);
    }

    v8 = v21[5];
    if (v8)
    {
      v9 = self->_log;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = self->_serviceName;
        *buf = 138412546;
        v27 = v11;
        v28 = 2112;
        v29 = v8;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Unable to query DAS notifications for %@ (%@)", buf, 0x16u);
        v8 = v21[5];
      }
    }

    else
    {
      [(UARPUpdaterServiceInstanceDelegate *)self->_delegate dasActivityRulesChangedForUpdaterServiceInstance:self dasActivities:v14[5]];
      if ([v14[5] count])
      {
        v10 = +[UARPDatabase sharedDatabase];
        [v10 addDASActivities:v14[5] serviceName:self->_serviceName];
      }
    }

    [(UARPUpdaterServiceInstance *)self releaseXPCConnection];
    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(&v20, 8);
  }
}

- (void)queryLaunchRules
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100021614;
  block[3] = &unk_100080FC8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)checkinDASActivities
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000216CC;
  block[3] = &unk_100080FC8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)ioKitRuleMatched:(id)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100021858;
  v4[3] = &unk_100081788;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(queue, v4);
}

- (void)bsdNotificationReceived:(id)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000219EC;
  v4[3] = &unk_100081788;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(queue, v4);
}

- (void)dasActivityReceived:(id)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100021B40;
  v4[3] = &unk_100081788;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(queue, v4);
}

- (void)consentReceived:(id)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100021C98;
  v4[3] = &unk_100081788;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(queue, v4);
}

- (void)consentReceivedPostLogoutMode:(id)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100021DEC;
  v4[3] = &unk_100081788;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(queue, v4);
}

- (void)disabledProductIdentifiers:(id)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100021F40;
  v4[3] = &unk_100081788;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(queue, v4);
}

- (void)eaRuleMatched:(id)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100022094;
  v4[3] = &unk_100081788;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(queue, v4);
}

- (BOOL)queryIsServiceBusyInternal
{
  if (self->_serviceTypeApplication)
  {
    [(UARPUpdaterServiceInstance *)self initializeUpdaterServiceConnection];
    v17 = 0;
    v18 = &v17;
    v19 = 0x3052000000;
    v20 = sub_100020E8C;
    v21 = sub_100020E9C;
    v22 = 0;
    xpcConnection = self->_xpcConnection;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100022414;
    v16[3] = &unk_1000819F0;
    v16[4] = &v17;
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100022444;
    v11[3] = &unk_100081A18;
    v11[4] = &v12;
    [-[NSXPCConnection synchronousRemoteObjectProxyWithErrorHandler:](xpcConnection synchronousRemoteObjectProxyWithErrorHandler:{v16), "getIsBusyStatusWithReply:", v11}];
    v4 = v18[5];
    log = self->_log;
    if (v4)
    {
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        serviceName = self->_serviceName;
        *buf = 138412546;
        v24 = serviceName;
        v25 = 2112;
        v26 = v4;
        _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Unable to query isServiceBusy for %@ (%@)", buf, 0x16u);
        v4 = v18[5];
      }
    }

    else if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v7 = self->_serviceName;
      v8 = *(v13 + 24);
      *buf = 138412546;
      v24 = v7;
      v25 = 1024;
      LODWORD(v26) = v8;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "%@ isServiceBusy (%d)", buf, 0x12u);
    }

    [(UARPUpdaterServiceInstance *)self releaseXPCConnection];
    v6 = *(v13 + 24);
    _Block_object_dispose(&v12, 8);
    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (BOOL)queryIsServiceBusy
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100022500;
  v5[3] = &unk_100081310;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isTrackingIONotificationPortForRegistryEntryID:(id)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000225E4;
  block[3] = &unk_100081A40;
  block[5] = a3;
  block[6] = &v7;
  block[4] = self;
  dispatch_sync(queue, block);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)storeIONotificationPort:(id)a3 forRegistryEntryID:(id)a4
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002269C;
  block[3] = &unk_100081800;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  dispatch_sync(queue, block);
}

- (id)findAndReleaseIONotificationPortForRegistryEntryID:(id)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = sub_100020E8C;
  v11 = sub_100020E9C;
  v12 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100022784;
  block[3] = &unk_1000817B0;
  block[4] = self;
  block[5] = a3;
  block[6] = &v7;
  dispatch_sync(queue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (id)findAndReleaseAllIONotificationPorts
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_100020E8C;
  v10 = sub_100020E9C;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10002290C;
  v5[3] = &unk_100081A68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  [v7[5] removeObjectIdenticalTo:{+[NSNull null](NSNull, "null")}];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)dynamicAssetSolicitation:(id)a3 modelNumber:(id)a4 notifyService:(id)a5
{
  [(UARPUpdaterServiceInstance *)self initializeUpdaterServiceConnection];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3052000000;
  v26 = sub_100020E8C;
  v27 = sub_100020E9C;
  v28 = 0;
  xpcConnection = self->_xpcConnection;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100022C48;
  v22[3] = &unk_1000819F0;
  v22[4] = &v23;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100022C78;
  v17[3] = &unk_100081A18;
  v17[4] = &v18;
  [-[NSXPCConnection synchronousRemoteObjectProxyWithErrorHandler:](xpcConnection synchronousRemoteObjectProxyWithErrorHandler:{v22), "standaloneDynamicAssetSolicitation:modelNumber:notifyService:reply:", a3, a4, a5, v17}];
  v10 = v24[5];
  log = self->_log;
  if (v10)
  {
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      serviceName = self->_serviceName;
      *buf = 136315650;
      v30 = "[UARPUpdaterServiceInstance dynamicAssetSolicitation:modelNumber:notifyService:]";
      v31 = 2112;
      v32 = serviceName;
      v33 = 2112;
      v34 = v10;
      _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s Unable to query isSolicitSuccess for %@ (%@)", buf, 0x20u);
      v10 = v24[5];
    }
  }

  else if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v12 = self->_serviceName;
    v13 = *(v19 + 24);
    *buf = 136315650;
    v30 = "[UARPUpdaterServiceInstance dynamicAssetSolicitation:modelNumber:notifyService:]";
    v31 = 2112;
    v32 = v12;
    v33 = 1024;
    LODWORD(v34) = v13;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "%s %@ solicitSuccess (%d)", buf, 0x1Cu);
  }

  [(UARPUpdaterServiceInstance *)self releaseXPCConnection];
  v14 = *(v19 + 24);
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v23, 8);
  return v14;
}

- (BOOL)dynamicAssetSolicitation:(id)a3 modelNumbers:(id)a4 notifyService:(id)a5
{
  [(UARPUpdaterServiceInstance *)self initializeUpdaterServiceConnection];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3052000000;
  v26 = sub_100020E8C;
  v27 = sub_100020E9C;
  v28 = 0;
  xpcConnection = self->_xpcConnection;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100022F54;
  v22[3] = &unk_1000819F0;
  v22[4] = &v23;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100022F84;
  v17[3] = &unk_100081A18;
  v17[4] = &v18;
  [-[NSXPCConnection synchronousRemoteObjectProxyWithErrorHandler:](xpcConnection synchronousRemoteObjectProxyWithErrorHandler:{v22), "standaloneDynamicAssetSolicitation:modelNumbers:notifyService:reply:", a3, a4, a5, v17}];
  v10 = v24[5];
  log = self->_log;
  if (v10)
  {
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      serviceName = self->_serviceName;
      *buf = 136315650;
      v30 = "[UARPUpdaterServiceInstance dynamicAssetSolicitation:modelNumbers:notifyService:]";
      v31 = 2112;
      v32 = serviceName;
      v33 = 2112;
      v34 = v10;
      _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s Unable to query isSolicitSuccess for %@ (%@)", buf, 0x20u);
      v10 = v24[5];
    }
  }

  else if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v12 = self->_serviceName;
    v13 = *(v19 + 24);
    *buf = 136315650;
    v30 = "[UARPUpdaterServiceInstance dynamicAssetSolicitation:modelNumbers:notifyService:]";
    v31 = 2112;
    v32 = v12;
    v33 = 1024;
    LODWORD(v34) = v13;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "%s %@ solicitSuccess (%d)", buf, 0x1Cu);
  }

  [(UARPUpdaterServiceInstance *)self releaseXPCConnection];
  v14 = *(v19 + 24);
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v23, 8);
  return v14;
}

- (id)queryPendingTssRequests
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[UARPUpdaterServiceInstance queryPendingTssRequests]";
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "%s: query pending tss requests", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v15 = 0x3052000000;
  v16 = sub_100020E8C;
  v17 = sub_100020E9C;
  v18 = &__NSArray0__struct;
  queue = self->_queue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10002319C;
  v9[3] = &unk_100081A68;
  v9[4] = self;
  v9[5] = &buf;
  dispatch_sync(queue, v9);
  v5 = self->_log;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(*(&buf + 1) + 40);
    *v10 = 136315394;
    v11 = "[UARPUpdaterServiceInstance queryPendingTssRequests]";
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: pending tss requests %@", v10, 0x16u);
  }

  v7 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);
  return v7;
}

- (void)tssResponse:(id)a3
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v9 = "[UARPUpdaterServiceInstance tssResponse:]";
    v10 = 2112;
    v11 = a3;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "%s: tss reponse %@", buf, 0x16u);
  }

  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000234F8;
  v7[3] = &unk_100081788;
  v7[4] = self;
  v7[5] = a3;
  dispatch_async(queue, v7);
}

@end