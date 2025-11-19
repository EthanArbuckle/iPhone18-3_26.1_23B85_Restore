@interface UARPManagerAUD
- (BOOL)dynamicAssetSolicitation:(id)a3 modelNumber:(id)a4 notifyService:(id)a5;
- (BOOL)dynamicAssetSolicitation:(id)a3 modelNumbers:(id)a4 notifyService:(id)a5;
- (BOOL)handleXPCStreamEvent:(id)a3;
- (BOOL)isBusy;
- (UARPManagerAUD)initWithQueue:(id)a3;
- (id)personalizationHelperQueryPendingTssRequests:(id)a3;
- (int64_t)addAccessory:(id)a3 assetID:(id)a4;
- (int64_t)disableTRMSystemAuthenticationForRegistryEntryID:(id)a3;
- (int64_t)enableTRMSystemAuthenticationForRegistryEntryID:(id)a3;
- (int64_t)removeAccessory:(id)a3;
- (int64_t)requestConsent:(id)a3;
- (int64_t)revokeConsentRequest:(id)a3;
- (void)assetAvailabilityUpdateForAccessory:(id)a3 assetID:(id)a4;
- (void)consentReceived:(id)a3;
- (void)consentReceivedPostLogoutMode:(id)a3;
- (void)dealloc;
- (void)dumpState;
- (void)firmwareUpdateProgressForAccessory:(id)a3 assetID:(id)a4 bytesSent:(unint64_t)a5 bytesTotal:(unint64_t)a6;
- (void)firmwareUpdateProgressForUARPConsent:(id)a3 bytesSent:(unint64_t)a4 bytesTotal:(unint64_t)a5;
- (void)handlePeriodicLaunch;
- (void)notifyAttestationCertificatesAvailable:(id)a3 forSubjectKeyIdentifer:(id)a4;
- (void)personalizationHelperTssResponse:(id)a3 updaterName:(id)a4;
- (void)postConsentUpdateCompleteNotification:(id)a3 success:(BOOL)a4;
- (void)progressForUARPConsent:(id)a3 bytesSent:(unint64_t)a4 bytesTotal:(unint64_t)a5;
- (void)progressForUARPConsentInPostLogout:(id)a3 bytesSent:(unint64_t)a4 bytesTotal:(unint64_t)a5;
- (void)stagingCompleteForAccessoryID:(id)a3 assetID:(id)a4 status:(unint64_t)a5;
- (void)start:(BOOL)a3;
- (void)supplementalAssetAvailabilityUpdateForAccessory:(id)a3 assetName:(id)a4;
- (void)supportedAccessories:(id)a3 forProductGroup:(id)a4 isComplete:(BOOL)a5;
@end

@implementation UARPManagerAUD

- (UARPManagerAUD)initWithQueue:(id)a3
{
  v6.receiver = self;
  v6.super_class = UARPManagerAUD;
  v4 = [(UARPManager *)&v6 init];
  if (v4)
  {
    v4->_log = os_log_create("com.apple.accessoryupdater.uarp", "updaterManager");
    v4->_dispatchQueue = a3;
    v4->_listener = [[UARPManagerListener alloc] initWithManager:v4 dispatchQueue:v4->_dispatchQueue];
    v4->_observerListener = 0;
    if (MGGetBoolAnswer())
    {
      v4->_observerListener = [[UARPObserverListener alloc] initWithManager:v4 dispatchQueue:v4->_dispatchQueue];
    }

    v4->_updaterManager = [[UARPUpdaterServiceManager alloc] initWithQueue:v4->_dispatchQueue];
    v4->_personalizationManager = [[UARPPersonalizationManager alloc] initWithMachServiceName:objc_msgSend(kUARPServicePersonalization entitlement:"copy") delegate:objc_msgSend(kUARPServicePersonalization queue:{"copy"), v4, v4->_dispatchQueue}];
    v4->_standaloneCommandListener = [[UARPStandaloneCommandManagerListener alloc] initWithManager:v4 dispatchQueue:v4->_dispatchQueue];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = UARPManagerAUD;
  [(UARPManager *)&v3 dealloc];
}

- (void)assetAvailabilityUpdateForAccessory:(id)a3 assetID:(id)a4
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002602C;
  block[3] = &unk_100080FC8;
  block[4] = a3;
  dispatch_sync(dispatchQueue, block);
}

- (void)supplementalAssetAvailabilityUpdateForAccessory:(id)a3 assetName:(id)a4
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "[UARPManagerAUD supplementalAssetAvailabilityUpdateForAccessory:assetName:]";
    v12 = 2112;
    v13 = a4;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "RECEIVED %s Asset Name is %@", buf, 0x16u);
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002617C;
  block[3] = &unk_100080FC8;
  block[4] = a3;
  dispatch_sync(dispatchQueue, block);
}

- (void)supportedAccessories:(id)a3 forProductGroup:(id)a4 isComplete:(BOOL)a5
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100026220;
  block[3] = &unk_100080FC8;
  block[4] = a4;
  dispatch_sync(dispatchQueue, block);
}

- (void)notifyAttestationCertificatesAvailable:(id)a3 forSubjectKeyIdentifer:(id)a4
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100026308;
  block[3] = &unk_100080FC8;
  block[4] = a4;
  dispatch_sync(dispatchQueue, block);
}

- (void)start:(BOOL)a3
{
  if (a3)
  {
    [+[UARPDatabase sharedDatabase](UARPDatabase "sharedDatabase")];
    sub_1000061EC(0, 0);
    dispatchQueue = self->_dispatchQueue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100026478;
    v7[3] = &unk_100080FC8;
    v7[4] = self;
    v5 = v7;
  }

  else
  {
    dispatchQueue = self->_dispatchQueue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10002648C;
    v6[3] = &unk_100080FC8;
    v6[4] = self;
    v5 = v6;
  }

  dispatch_sync(dispatchQueue, v5);
}

- (BOOL)handleXPCStreamEvent:(id)a3
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    sub_10004CEDC(log, v6, v7, v8, v9, v10, v11, v12);
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  dispatchQueue = self->_dispatchQueue;
  v20 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002658C;
  block[3] = &unk_100081A40;
  block[5] = a3;
  block[6] = &v17;
  block[4] = self;
  dispatch_sync(dispatchQueue, block);
  v14 = *(v18 + 24);
  _Block_object_dispose(&v17, 8);
  return v14;
}

- (void)handlePeriodicLaunch
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100026678;
  block[3] = &unk_100080FC8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)dumpState
{
  v3 = objc_alloc_init(NSDateFormatter);
  [v3 setDateFormat:@"yyyy.MM.dd_kk-mm-ssZ"];
  [+[UARPDatabase sharedDatabase](UARPDatabase "sharedDatabase")];
  v4.receiver = self;
  v4.super_class = UARPManagerAUD;
  [(UARPManager *)&v4 dumpState];
}

- (int64_t)requestConsent:(id)a3
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    sub_10004CF54(log, v6, v7, v8, v9, v10, v11, v12);
  }

  if (![(UARPUpdaterServiceManager *)self->_updaterManager consentDisabledForUARPConsent:a3 sendConsent:1])
  {
    return [(UARPConsent *)self->_consentManager requestConsent:a3];
  }

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_10004CFCC(a3);
  }

  notify_post("com.apple.uarp.disabledConsent.start");
  return 0;
}

- (void)postConsentUpdateCompleteNotification:(id)a3 success:(BOOL)a4
{
  v4 = a4;
  out_token = 0;
  v6 = notify_register_check("com.apple.uarp.disabledConsent.complete", &out_token);
  if (v6)
  {
    v7 = v6;
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_10004D050(v7, log);
    }
  }

  else
  {
    notify_set_state(out_token, v4);
    notify_post("com.apple.uarp.disabledConsent.complete");
  }
}

- (int64_t)revokeConsentRequest:(id)a3
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    sub_10004D0DC(log, v6, v7, v8, v9, v10, v11, v12);
  }

  if (![(UARPUpdaterServiceManager *)self->_updaterManager consentDisabledForUARPConsent:a3 sendConsent:0])
  {
    return [(UARPConsent *)self->_consentManager revokeConsentRequest:a3];
  }

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_10004D154(a3);
  }

  [(UARPManagerAUD *)self postConsentUpdateCompleteNotification:a3 success:0];
  return 0;
}

- (int64_t)enableTRMSystemAuthenticationForRegistryEntryID:(id)a3
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    sub_10004D1D8(log, v6, v7, v8, v9, v10, v11, v12);
  }

  return [(UARPUpdaterServiceManager *)self->_updaterManager enableTRMSystemAuthenticationForRegistryEntryID:a3]^ 1;
}

- (int64_t)disableTRMSystemAuthenticationForRegistryEntryID:(id)a3
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    sub_10004D250(log, v6, v7, v8, v9, v10, v11, v12);
  }

  return [(UARPUpdaterServiceManager *)self->_updaterManager disableTRMSystemAuthenticationForRegistryEntryID:a3]^ 1;
}

- (void)consentReceived:(id)a3
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    sub_10004D2C8(log, v6, v7, v8, v9, v10, v11, v12);
  }

  dispatchQueue = self->_dispatchQueue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100026B00;
  v14[3] = &unk_100081788;
  v14[4] = self;
  v14[5] = a3;
  dispatch_sync(dispatchQueue, v14);
}

- (void)consentReceivedPostLogoutMode:(id)a3
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    sub_10004D340(log, v6, v7, v8, v9, v10, v11, v12);
  }

  dispatchQueue = self->_dispatchQueue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100026BCC;
  v14[3] = &unk_100081788;
  v14[4] = self;
  v14[5] = a3;
  dispatch_sync(dispatchQueue, v14);
}

- (void)firmwareUpdateProgressForUARPConsent:(id)a3 bytesSent:(unint64_t)a4 bytesTotal:(unint64_t)a5
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    sub_10004D3B8(log, v10, v11, v12, v13, v14, v15, v16);
  }

  [(UARPConsent *)self->_consentManager firmwareUpdateProgressForUARPConsent:a3 bytesSent:a4 bytesTotal:a5];
}

- (void)progressForUARPConsent:(id)a3 bytesSent:(unint64_t)a4 bytesTotal:(unint64_t)a5
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    sub_10004D430(log, v10, v11, v12, v13, v14, v15, v16);
  }

  v17 = [(UARPConsent *)self->_consentManager updateCompleteForUARPConsent:a3 bytesSent:a4 bytesTotal:a5];
  if ([(UARPUpdaterServiceManager *)self->_updaterManager bypassProgressForUARPConsent:a3 sendConsent:v17])
  {
    v18 = self->_log;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = 136315906;
      v20 = "[UARPManagerAUD progressForUARPConsent:bytesSent:bytesTotal:]";
      v21 = 2114;
      v22 = [a3 accessoryName];
      v23 = 2050;
      v24 = a4;
      v25 = 2050;
      v26 = a5;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s: Bypassing for %{public}@, progress %{public}lu / %{public}lu bytes", &v19, 0x2Au);
      if (!v17)
      {
        return;
      }
    }

    else if (!v17)
    {
      return;
    }

    if ([a3 installerProgressError])
    {
      [(UARPManagerAUD *)self postConsentUpdateCompleteNotification:a3 success:0];
    }
  }

  else
  {
    [(UARPConsent *)self->_consentManager progressForUARPConsent:a3 bytesSent:a4 bytesTotal:a5];
  }
}

- (void)progressForUARPConsentInPostLogout:(id)a3 bytesSent:(unint64_t)a4 bytesTotal:(unint64_t)a5
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    sub_10004D4A8(log, v10, v11, v12, v13, v14, v15, v16);
  }

  if ([(UARPUpdaterServiceManager *)self->_updaterManager consentDisabledForUARPConsent:a3 sendConsent:0])
  {
    v17 = self->_log;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315906;
      v19 = "[UARPManagerAUD progressForUARPConsentInPostLogout:bytesSent:bytesTotal:]";
      v20 = 2114;
      v21 = [a3 accessoryName];
      v22 = 2050;
      v23 = a4;
      v24 = 2050;
      v25 = a5;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s: Bypassing for %{public}@, progress %{public}lu / %{public}lu bytes", &v18, 0x2Au);
    }

    if ([(UARPConsent *)self->_consentManager updateCompleteForUARPConsentInPostLogout:a3 bytesSent:a4 bytesTotal:a5])
    {
      [(UARPManagerAUD *)self postConsentUpdateCompleteNotification:a3 success:1];
    }
  }

  else
  {
    [(UARPConsent *)self->_consentManager progressForUARPConsentInPostLogout:a3 bytesSent:a4 bytesTotal:a5];
  }
}

- (BOOL)isBusy
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100027028;
  v5[3] = &unk_100081310;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)dynamicAssetSolicitation:(id)a3 modelNumber:(id)a4 notifyService:(id)a5
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    sub_10004D520(log);
  }

  return [(UARPUpdaterServiceManager *)self->_updaterManager dynamicAssetSolicitation:a3 modelNumber:a4 notifyService:a5];
}

- (BOOL)dynamicAssetSolicitation:(id)a3 modelNumbers:(id)a4 notifyService:(id)a5
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    sub_10004D564(log);
  }

  return [(UARPUpdaterServiceManager *)self->_updaterManager dynamicAssetSolicitation:a3 modelNumbers:a4 notifyService:a5];
}

- (id)personalizationHelperQueryPendingTssRequests:(id)a3
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    sub_10004D5A8(log, v6, v7, v8, v9, v10, v11, v12);
  }

  v13 = [(UARPUpdaterServiceManager *)self->_updaterManager queryPendingTssRequestsForUpdater:a3];
  v14 = self->_log;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v16 = 136315394;
    v17 = "[UARPManagerAUD personalizationHelperQueryPendingTssRequests:]";
    v18 = 2112;
    v19 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s: pending responses %@", &v16, 0x16u);
  }

  return v13;
}

- (void)personalizationHelperTssResponse:(id)a3 updaterName:(id)a4
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "[UARPManagerAUD personalizationHelperTssResponse:updaterName:]";
    v10 = 2112;
    v11 = a4;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: tss response for updater %@", &v8, 0x16u);
    log = self->_log;
  }

  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "[UARPManagerAUD personalizationHelperTssResponse:updaterName:]";
    v10 = 2112;
    v11 = a3;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: tss response %@", &v8, 0x16u);
  }

  [(UARPUpdaterServiceManager *)self->_updaterManager tssResponse:a3 updaterName:a4];
}

- (int64_t)addAccessory:(id)a3 assetID:(id)a4
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    sub_10004D620(log, v8, v9, v10, v11, v12, v13, v14);
  }

  [(UARPObserverListener *)self->_observerListener addAccessoryID:a3 assetID:a4];
  v16.receiver = self;
  v16.super_class = UARPManagerAUD;
  return [(UARPManager *)&v16 addAccessory:a3 assetID:a4];
}

- (int64_t)removeAccessory:(id)a3
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    sub_10004D698(log, v6, v7, v8, v9, v10, v11, v12);
  }

  [(UARPObserverListener *)self->_observerListener removeAccessoryID:a3];
  v14.receiver = self;
  v14.super_class = UARPManagerAUD;
  return [(UARPManager *)&v14 removeAccessory:a3];
}

- (void)firmwareUpdateProgressForAccessory:(id)a3 assetID:(id)a4 bytesSent:(unint64_t)a5 bytesTotal:(unint64_t)a6
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    sub_10004D710(log, v12, v13, v14, v15, v16, v17, v18);
  }

  [(UARPObserverListener *)self->_observerListener firmwareUpdateProgressForAccessoryID:a3 assetID:a4 bytesSent:a5 bytesTotal:a6];
}

- (void)stagingCompleteForAccessoryID:(id)a3 assetID:(id)a4 status:(unint64_t)a5
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    sub_10004D788(log, v10, v11, v12, v13, v14, v15, v16);
  }

  [(UARPObserverListener *)self->_observerListener stagingCompleteForAccessoryID:a3 assetID:a4 status:a5];
}

@end