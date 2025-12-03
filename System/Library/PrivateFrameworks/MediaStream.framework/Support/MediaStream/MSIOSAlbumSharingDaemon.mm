@interface MSIOSAlbumSharingDaemon
- (BOOL)XPCNSServiceListener:(id)listener shouldReceiveNewConnection:(id)connection;
- (BOOL)isPersonIDAllowedToDownloadAssets:(id)assets;
- (BOOL)isWaitingForAuth;
- (MSIOSAlbumSharingDaemon)init;
- (NSMutableDictionary)personIDToPowerBudgetMap;
- (id)MSPowerBudgetDidRequestPersistedValues:(id)values;
- (id)powerBudgetForPersonID:(id)d;
- (void)MSPowerBudget:(id)budget didRequestStorageOfPersistedValues:(id)values;
- (void)XPCNSServiceListener:(id)listener didReceiveNewConnection:(id)connection;
- (void)_busyPingTimerDidExpire:(id)expire;
- (void)_readPowerBudgetParametersForPersonID:(id)d;
- (void)_updatePushNotificationTopicsOutListenToProduction:(BOOL *)production outListenToDevelopment:(BOOL *)development;
- (void)connection:(id)connection didReceiveIncomingMessage:(id)message;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
- (void)didBeginForegroundFocusForPersonID:(id)d;
- (void)didDestroyStateMachineForPersonID:(id)d;
- (void)didEndForegroundFocusForPersonID:(id)d;
- (void)didIdle;
- (void)didReceiveAuthFailureForPersonID:(id)d;
- (void)didReceiveAuthSuccessForPersonID:(id)d;
- (void)didReceiveGlobalResetSyncForPersonID:(id)d;
- (void)didReceivePushNotificationForPersonID:(id)d;
- (void)didUnidle;
- (void)forgetEverythingAboutPersonID:(id)d completionBlock:(id)block;
- (void)forgetEverythingCompletionBlock:(id)block;
- (void)sendServerSideConfigurationDidChangeNotificationForPersonID:(id)d;
- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d;
- (void)setFocusAlbumGUID:(id)d forPersonID:(id)iD;
- (void)setFocusAssetCollectionGUID:(id)d forPersonID:(id)iD;
- (void)shutDownCompletionBlock:(id)block;
- (void)stabilizedDidIdle;
- (void)stabilizedDidUnidle;
- (void)start;
@end

@implementation MSIOSAlbumSharingDaemon

- (void)forgetEverythingCompletionBlock:(id)block
{
  blockCopy = block;
  [(MSIOSAlbumSharingDaemon *)self retainBusy];
  v6.receiver = self;
  v6.super_class = MSIOSAlbumSharingDaemon;
  [(MSIOSAlbumSharingDaemon *)&v6 forgetEverythingCompletionBlock:blockCopy];

  v5 = +[MSAuthenticationManager sharedManager];
  [v5 rearmAuthenticationAlert];

  [(MSIOSAlbumSharingDaemon *)self _updatePushNotificationTopicsOutListenToProduction:0 outListenToDevelopment:0];
  [(MSIOSAlbumSharingDaemon *)self releaseBusy];
}

- (void)forgetEverythingAboutPersonID:(id)d completionBlock:(id)block
{
  blockCopy = block;
  dCopy = d;
  [(MSIOSAlbumSharingDaemon *)self retainBusy];
  v9.receiver = self;
  v9.super_class = MSIOSAlbumSharingDaemon;
  [(MSIOSAlbumSharingDaemon *)&v9 forgetEverythingAboutPersonID:dCopy completionBlock:blockCopy];

  v8 = +[MSAuthenticationManager sharedManager];
  [v8 rearmAuthenticationAlert];

  [(MSIOSAlbumSharingDaemon *)self _updatePushNotificationTopicsOutListenToProduction:0 outListenToDevelopment:0];
  [(MSIOSAlbumSharingDaemon *)self releaseBusy];
}

- (BOOL)isWaitingForAuth
{
  v2 = +[MSAuthenticationManager sharedManager];
  isWaitingForAuth = [v2 isWaitingForAuth];

  return isWaitingForAuth;
}

- (void)didReceiveAuthSuccessForPersonID:(id)d
{
  dCopy = d;
  v4 = +[MSAuthenticationManager sharedManager];
  [v4 didEncounterAuthenticationSuccessForPersonID:dCopy];
}

- (void)didReceiveAuthFailureForPersonID:(id)d
{
  dCopy = d;
  v4 = +[MSAuthenticationManager sharedManager];
  [v4 didEncounterAuthenticationFailureForPersonID:dCopy];
}

- (void)stabilizedDidUnidle
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138543362;
    selfCopy = self;
    _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%{public}@: Daemon in unidled state. Sending notification.", &v7, 0xCu);
  }

  busyPingTimer = [(MSIOSAlbumSharingDaemon *)self busyPingTimer];

  if (!busyPingTimer)
  {
    v4 = [NSTimer timerWithTimeInterval:self target:"_busyPingTimerDidExpire:" selector:0 userInfo:1 repeats:3.0];
    [(MSIOSAlbumSharingDaemon *)self setBusyPingTimer:v4];

    v5 = +[NSRunLoop currentRunLoop];
    busyPingTimer2 = [(MSIOSAlbumSharingDaemon *)self busyPingTimer];
    [v5 addTimer:busyPingTimer2 forMode:NSRunLoopCommonModes];
  }
}

- (void)_busyPingTimerDidExpire:(id)expire
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    v4 = 138543362;
    selfCopy = self;
    _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%{public}@: Daemon busy ping timer expired. Sending notification.", &v4, 0xCu);
  }
}

- (void)stabilizedDidIdle
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    v4 = 138543362;
    selfCopy = self;
    _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%{public}@: Daemon stabilized in idle state. Sending notification.", &v4, 0xCu);
  }

  busyPingTimer = [(MSIOSAlbumSharingDaemon *)self busyPingTimer];
  [busyPingTimer invalidate];

  [(MSIOSAlbumSharingDaemon *)self setBusyPingTimer:0];
}

- (void)didUnidle
{
  v3 = +[MSPowerAssertionManager sharedManager];
  [v3 retainBusy];

  v4.receiver = self;
  v4.super_class = MSIOSAlbumSharingDaemon;
  [(MSIOSAlbumSharingDaemon *)&v4 didUnidle];
}

- (void)didIdle
{
  v3 = +[MSPowerAssertionManager sharedManager];
  [v3 releaseBusy];
  [v3 toggleAssertion];
  v4.receiver = self;
  v4.super_class = MSIOSAlbumSharingDaemon;
  [(MSIOSAlbumSharingDaemon *)&v4 didIdle];
}

- (void)MSPowerBudget:(id)budget didRequestStorageOfPersistedValues:(id)values
{
  budgetCopy = budget;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005FD8;
  block[3] = &unk_100018A48;
  block[4] = self;
  valuesCopy = values;
  v11 = budgetCopy;
  v7 = budgetCopy;
  v8 = valuesCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (id)MSPowerBudgetDidRequestPersistedValues:(id)values
{
  valuesCopy = values;
  powerBudgetPersistedParameters = [(MSIOSAlbumSharingDaemon *)self powerBudgetPersistedParameters];

  if (powerBudgetPersistedParameters)
  {
    personID = [valuesCopy personID];
    v7 = [(MSIOSAlbumSharingDaemon *)self persistentObjectForKey:@"MSIOSAlbumSharingDaemon.powerBudgetParams" personID:personID];
    [(MSIOSAlbumSharingDaemon *)self setPowerBudgetPersistedParameters:v7];
  }

  powerBudgetPersistedParameters2 = [(MSIOSAlbumSharingDaemon *)self powerBudgetPersistedParameters];

  return powerBudgetPersistedParameters2;
}

- (void)_readPowerBudgetParametersForPersonID:(id)d
{
  dCopy = d;
  v4 = [(MSIOSAlbumSharingDaemon *)self powerBudgetForPersonID:?];
  if (v4)
  {
    v5 = [(MSIOSAlbumSharingDaemon *)self serverSideConfigurationForPersonID:dCopy];
    v6 = [v5 objectForKey:kMSASServerSideConfigMaxActiveTimeAfterPushKey];
    [v6 doubleValue];
    [v4 setMaxActiveTimeAfterPush:?];

    v7 = [v5 objectForKey:kMSASServerSideConfigMaxActiveTimeAfterLossOfForegroundKey];
    [v7 doubleValue];
    [v4 setMaxActiveTimeAfterLossOfForeground:?];

    v8 = [v5 objectForKey:kMSASServerSideConfigMaxActiveTimeAfterGlobalResetSyncKey];
    [v8 doubleValue];
    [v4 setMaxActiveTimeAfterGlobalResetSync:?];
  }
}

- (void)didReceiveGlobalResetSyncForPersonID:(id)d
{
  v3 = [(MSIOSAlbumSharingDaemon *)self powerBudgetForPersonID:d];
  [v3 didReceiveGlobalResetSync];
}

- (BOOL)isPersonIDAllowedToDownloadAssets:(id)assets
{
  v3 = [(MSIOSAlbumSharingDaemon *)self powerBudgetForPersonID:assets];
  isFileTransferAllowed = [v3 isFileTransferAllowed];

  return isFileTransferAllowed;
}

- (void)setFocusAssetCollectionGUID:(id)d forPersonID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  v8 = [(MSIOSAlbumSharingDaemon *)self powerBudgetForPersonID:iDCopy];
  [v8 setFocusAssetCollectionGUID:dCopy];

  v9.receiver = self;
  v9.super_class = MSIOSAlbumSharingDaemon;
  [(MSIOSAlbumSharingDaemon *)&v9 setFocusAssetCollectionGUID:dCopy forPersonID:iDCopy];
}

- (void)setFocusAlbumGUID:(id)d forPersonID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  v8 = [(MSIOSAlbumSharingDaemon *)self powerBudgetForPersonID:iDCopy];
  [v8 setFocusAlbumGUID:dCopy];

  v9.receiver = self;
  v9.super_class = MSIOSAlbumSharingDaemon;
  [(MSIOSAlbumSharingDaemon *)&v9 setFocusAlbumGUID:dCopy forPersonID:iDCopy];
}

- (void)didEndForegroundFocusForPersonID:(id)d
{
  v3 = [(MSIOSAlbumSharingDaemon *)self powerBudgetForPersonID:d];
  [v3 didEndForegroundFocus];
}

- (void)didBeginForegroundFocusForPersonID:(id)d
{
  v4 = [(MSIOSAlbumSharingDaemon *)self powerBudgetForPersonID:d];
  [v4 didBeginForegroundFocus];

  [(MSIOSAlbumSharingDaemon *)self retryOutstandingActivities];
}

- (void)didReceivePushNotificationForPersonID:(id)d
{
  v3 = [(MSIOSAlbumSharingDaemon *)self powerBudgetForPersonID:d];
  [v3 didReceivePushNotification];
}

- (void)didDestroyStateMachineForPersonID:(id)d
{
  dCopy = d;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v7 = 138543618;
    selfCopy = self;
    v9 = 2112;
    v10 = dCopy;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%{public}@: Destroying power budget object for person ID %@", &v7, 0x16u);
  }

  v5 = [(MSIOSAlbumSharingDaemon *)self powerBudgetForPersonID:dCopy];
  [v5 shutDown];
  personIDToPowerBudgetMap = [(MSIOSAlbumSharingDaemon *)self personIDToPowerBudgetMap];
  [personIDToPowerBudgetMap removeObjectForKey:dCopy];
}

- (id)powerBudgetForPersonID:(id)d
{
  dCopy = d;
  if (!dCopy)
  {
LABEL_11:
    v6 = 0;
    goto LABEL_12;
  }

  personIDToPowerBudgetMap = [(MSIOSAlbumSharingDaemon *)self personIDToPowerBudgetMap];
  v6 = [personIDToPowerBudgetMap objectForKey:dCopy];

  if (v6)
  {
    goto LABEL_12;
  }

  if (([dCopy isEqualToString:&stru_100018FA0] & 1) == 0)
  {
    v7 = MSASPlatform();
    v8 = [v7 personIDEnabledForAlbumSharing:dCopy];

    if (!v8)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v12 = 138543618;
        selfCopy2 = self;
        v14 = 2112;
        v15 = dCopy;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%{public}@: Shared Photo Stream is disabled for person ID %@. Not creating power budget.", &v12, 0x16u);
      }

      goto LABEL_11;
    }
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v12 = 138543618;
    selfCopy2 = self;
    v14 = 2112;
    v15 = dCopy;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%{public}@: Creating power budget object for person ID %@", &v12, 0x16u);
  }

  v6 = objc_alloc_init(MSPowerBudget);
  personIDToPowerBudgetMap2 = [(MSIOSAlbumSharingDaemon *)self personIDToPowerBudgetMap];
  [personIDToPowerBudgetMap2 setObject:v6 forKey:dCopy];

  [v6 setPersonID:dCopy];
  [v6 setDelegate:self];
  [(MSIOSAlbumSharingDaemon *)self _readPowerBudgetParametersForPersonID:dCopy];
  v10 = +[MSBatteryPowerMonitor defaultMonitor];
  LODWORD(personIDToPowerBudgetMap2) = [v10 isExternalPowerConnected];

  if (personIDToPowerBudgetMap2)
  {
    [v6 didBeginExternalPower];
  }

LABEL_12:

  return v6;
}

- (NSMutableDictionary)personIDToPowerBudgetMap
{
  personIDToPowerBudgetMap = self->_personIDToPowerBudgetMap;
  if (!personIDToPowerBudgetMap)
  {
    v4 = +[NSMutableDictionary dictionary];
    v5 = self->_personIDToPowerBudgetMap;
    self->_personIDToPowerBudgetMap = v4;

    personIDToPowerBudgetMap = self->_personIDToPowerBudgetMap;
  }

  return personIDToPowerBudgetMap;
}

- (void)connection:(id)connection didReceiveIncomingMessage:(id)message
{
  messageCopy = message;
  [(MSIOSAlbumSharingDaemon *)self retainBusy];
  topic = [messageCopy topic];
  userInfo = [messageCopy userInfo];

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    selfCopy = topic;
    v14 = 2112;
    v15 = userInfo;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Received new push notification topic: %@ userInfo: %@", &v12, 0x16u);
  }

  if ([(MSIOSAlbumSharingDaemon *)topic isEqualToString:@"com.apple.sharedstreams"])
  {
    personIDListeningToPushNotification = [userInfo objectForKey:@"r"];
LABEL_7:
    v11 = personIDListeningToPushNotification;
    [(MSIOSAlbumSharingDaemon *)self pollForSubscriptionUpdatesTriggeredByPushNotificationForPersonID:personIDListeningToPushNotification];

    goto LABEL_10;
  }

  v9 = [@"com.apple.icloud-container." stringByAppendingString:@"com.apple.sharedstreams"];
  v10 = [(MSIOSAlbumSharingDaemon *)topic isEqualToString:v9];

  if (v10)
  {
    personIDListeningToPushNotification = [(MSIOSAlbumSharingDaemon *)self personIDListeningToPushNotification];
    goto LABEL_7;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v12 = 138543362;
    selfCopy = self;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%{public}@: Received unknown push notification, ignoring", &v12, 0xCu);
  }

LABEL_10:
  [(MSIOSAlbumSharingDaemon *)self releaseBusy];
}

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  tokenCopy = token;
  [(MSIOSAlbumSharingDaemon *)self retainBusy];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Received new push token.", v7, 2u);
  }

  v6 = +[MSMSPlatform thePlatform];
  [v6 setPushToken:tokenCopy];

  [(MSIOSAlbumSharingDaemon *)self releaseBusy];
}

- (void)_updatePushNotificationTopicsOutListenToProduction:(BOOL *)production outListenToDevelopment:(BOOL *)development
{
  personIDListeningToPushNotification = [(MSIOSAlbumSharingDaemon *)self personIDListeningToPushNotification];
  if ([personIDListeningToPushNotification length])
  {
    v8 = MSASPlatform();
    v9 = [v8 personIDUsesProductionPushEnvironment:personIDListeningToPushNotification];

    v10 = v9 ^ 1;
    if (!development)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v11 = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%{public}@: Not listening to push notifications.", &v11, 0xCu);
  }

  [self->_prodAPSConnection _setEnabledTopics:0];
  [self->_devAPSConnection _setEnabledTopics:0];
  v10 = 0;
  v9 = 0;
  if (development)
  {
LABEL_3:
    *development = v10;
  }

LABEL_4:
  if (production)
  {
    *production = v9;
  }
}

- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d
{
  serviceCopy = service;
  accountCopy = account;
  messageCopy = message;
  dCopy = d;
  v14 = IDSCopyRawAddressForDestination();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 138544642;
    selfCopy = self;
    v23 = 2112;
    v24 = messageCopy;
    v25 = 2114;
    v26 = serviceCopy;
    v27 = 2112;
    v28 = accountCopy;
    v29 = 2112;
    v30 = dCopy;
    v31 = 2112;
    v32 = v14;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%{public}@: Received incoming message %@ for service %{public}@ account %@ from %@ (%@)", buf, 0x3Eu);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006D7C;
  block[3] = &unk_100018A48;
  v18 = messageCopy;
  v19 = v14;
  selfCopy2 = self;
  v15 = v14;
  v16 = messageCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)XPCNSServiceListener:(id)listener didReceiveNewConnection:(id)connection
{
  connectionCopy = connection;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v7 = 138543618;
    selfCopy = self;
    v9 = 2114;
    v10 = connectionCopy;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%{public}@ Client connected: %{public}@", &v7, 0x16u);
  }

  v6 = objc_alloc_init(MSMSASServiceConnection);
  [connectionCopy setDelegate:v6];
  [connectionCopy setContext:v6];
}

- (BOOL)XPCNSServiceListener:(id)listener shouldReceiveNewConnection:(id)connection
{
  connectionCopy = connection;
  v19 = 0u;
  v20 = 0u;
  xpc_connection_get_audit_token();
  memset(&token, 0, sizeof(token));
  v6 = SecTaskCreateWithAuditToken(0, &token);
  if (!v6)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      pid = xpc_connection_get_pid(connectionCopy);
      token.val[0] = 138543618;
      *&token.val[1] = self;
      LOWORD(token.val[3]) = 1024;
      *(&token.val[3] + 2) = pid;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%{public}@: Failed to create security task from audit token for pid %d", &token, 0x12u);
    }

    goto LABEL_15;
  }

  v7 = v6;
  error = 0;
  v8 = SecTaskCopyValueForEntitlement(v6, @"com.apple.mediastream.mstreamd-access", &error);
  v9 = v8;
  v10 = error;
  if (error)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v17 = xpc_connection_get_pid(connectionCopy);
      token.val[0] = 138543618;
      *&token.val[1] = self;
      LOWORD(token.val[3]) = 1024;
      *(&token.val[3] + 2) = v17;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%{public}@: Failed to get entitlement for pid %d", &token, 0x12u);
      v10 = error;
    }

    CFRelease(v10);
    if (!v9)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (!v8)
  {
LABEL_14:
    CFRelease(v7);
    goto LABEL_15;
  }

  v12 = CFGetTypeID(v8);
  if (v12 != CFBooleanGetTypeID())
  {
LABEL_13:
    CFRelease(v9);
    goto LABEL_14;
  }

  Value = CFBooleanGetValue(v9);
  CFRelease(v9);
  CFRelease(v7);
  if (Value)
  {
    v14 = 1;
    goto LABEL_18;
  }

LABEL_15:
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v16 = xpc_connection_get_pid(connectionCopy);
    token.val[0] = 138543618;
    *&token.val[1] = self;
    LOWORD(token.val[3]) = 1024;
    *(&token.val[3] + 2) = v16;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%{public}@: Rejecting incoming connection from pid %d lacking of the correct entitlement.", &token, 0x12u);
  }

  v14 = 0;
LABEL_18:

  return v14;
}

- (void)shutDownCompletionBlock:(id)block
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000B628;
  v4[3] = &unk_100018A20;
  v4[4] = self;
  blockCopy = block;
  v3 = blockCopy;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)sendServerSideConfigurationDidChangeNotificationForPersonID:(id)d
{
  v4 = kMSASServerSideConfigDidChangeNotification;
  dCopy = d;
  notify_post([v4 UTF8String]);
  v6.receiver = self;
  v6.super_class = MSIOSAlbumSharingDaemon;
  [(MSIOSAlbumSharingDaemon *)&v6 sendServerSideConfigurationDidChangeNotificationForPersonID:dCopy];
}

- (void)start
{
  [(MSIOSAlbumSharingDaemon *)self retainBusy];
  if (!self->_serviceListener)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Shared Streams daemon starting.", buf, 2u);
    }

    v3 = [XPCNSServiceListener alloc];
    v4 = [v3 initWithServiceName:kMSASServiceName queue:&_dispatch_main_q delegate:self];
    serviceListener = self->_serviceListener;
    self->_serviceListener = v4;

    [(XPCNSServiceListener *)self->_serviceListener start];
  }

  v6 = [APSConnection alloc];
  v7 = [v6 initWithEnvironmentName:APSEnvironmentProduction namedDelegatePort:@"com.apple.mediastream.mstreamd.sharing.push-prod" queue:&_dispatch_main_q];
  prodAPSConnection = self->_prodAPSConnection;
  self->_prodAPSConnection = v7;

  v9 = [APSConnection alloc];
  v10 = [v9 initWithEnvironmentName:APSEnvironmentDevelopment namedDelegatePort:@"com.apple.mediastream.mstreamd.sharing.push-dev" queue:&_dispatch_main_q];
  devAPSConnection = self->_devAPSConnection;
  self->_devAPSConnection = v10;

  v49 = 0;
  [(MSIOSAlbumSharingDaemon *)self _updatePushNotificationTopicsOutListenToProduction:&v49 + 1 outListenToDevelopment:&v49];
  if (HIBYTE(v49) == 1)
  {
    v12 = self->_prodAPSConnection;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      goto LABEL_12;
    }

    *buf = 138543362;
    selfCopy5 = self;
    v13 = "%{public}@: Listening to prod push notifications.";
    goto LABEL_11;
  }

  if (v49 == 1)
  {
    v12 = self->_devAPSConnection;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      goto LABEL_12;
    }

    *buf = 138543362;
    selfCopy5 = self;
    v13 = "%{public}@: Listening to dev push notifications.";
LABEL_11:
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, v13, buf, 0xCu);
LABEL_12:
    if (v12)
    {
      [(APSConnection *)v12 setDelegate:self];
      v54[0] = @"com.apple.sharedstreams";
      v14 = [@"com.apple.icloud-container." stringByAppendingString:?];
      v54[1] = v14;
      v15 = [NSArray arrayWithObjects:v54 count:2];
      [(APSConnection *)v12 _setEnabledTopics:v15];

      publicToken = [(APSConnection *)v12 publicToken];
      v17 = +[MSMSPlatform thePlatform];
      [v17 setPushToken:publicToken];

      if (publicToken)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          v18 = @"Dev";
          if (HIBYTE(v49))
          {
            v18 = @"Prod";
          }

          *buf = 138543618;
          selfCopy5 = self;
          v52 = 2114;
          v53 = v18;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%{public}@: Retrieved push tokens. %{public}@", buf, 0x16u);
        }
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v19 = @"Dev";
          if (HIBYTE(v49))
          {
            v19 = @"Prod";
          }

          *buf = 138543618;
          selfCopy5 = self;
          v52 = 2112;
          v53 = v19;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}@: Push tokens not available. %@. Waiting...", buf, 0x16u);
        }

        v20 = [NSDate dateWithTimeIntervalSinceNow:5.0];
        do
        {
          v21 = +[NSDate date];
          [v21 timeIntervalSinceDate:v20];
          v23 = v22 < 0.0;

          if (!v23)
          {
            break;
          }

          v24 = +[NSRunLoop currentRunLoop];
          v25 = [v24 runMode:NSDefaultRunLoopMode beforeDate:v20];
        }

        while ((v25 & 1) != 0);
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          selfCopy5 = self;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%{public}@: Could not retrieve push token even after waiting for it.", buf, 0xCu);
        }
      }
    }

    goto LABEL_32;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Shared stream not enabled, not listening to any push notifications.", buf, 2u);
  }

  v12 = 0;
LABEL_32:
  objc_initWeak(buf, self);
  v26 = +[NSNotificationCenter defaultCenter];
  v27 = +[NSOperationQueue mainQueue];
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_10000C330;
  v47[3] = &unk_1000189D0;
  objc_copyWeak(&v48, buf);
  v28 = [v26 addObserverForName:kMSASServerSideConfigDidChangeNotification object:self queue:v27 usingBlock:v47];

  v29 = +[NSNotificationCenter defaultCenter];
  v30 = +[NSOperationQueue mainQueue];
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_10000C3B0;
  v46[3] = &unk_1000189F8;
  v46[4] = self;
  v31 = [v29 addObserverForName:kMSBatteryPowerMonitorExternalPowerSourceChangedNotification object:0 queue:v30 usingBlock:v46];

  v32 = +[NSNotificationCenter defaultCenter];
  v33 = +[NSOperationQueue mainQueue];
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_10000C57C;
  v45[3] = &unk_1000189F8;
  v45[4] = self;
  v34 = [v32 addObserverForName:kMSPowerBudgetDidBeginAllowingFileTransferNotification object:0 queue:v33 usingBlock:v45];

  v35 = +[NSNotificationCenter defaultCenter];
  v36 = +[NSOperationQueue mainQueue];
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_10000C584;
  v44[3] = &unk_1000189F8;
  v44[4] = self;
  v37 = [v35 addObserverForName:kMSPowerBudgetDidEndAllowingFileTransferNotification object:0 queue:v36 usingBlock:v44];

  v38 = +[NSNotificationCenter defaultCenter];
  v39 = +[MSAuthenticationManager sharedManager];
  v40 = +[NSOperationQueue mainQueue];
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_10000C5F0;
  v43[3] = &unk_1000189F8;
  v43[4] = self;
  v41 = [v38 addObserverForName:kMSAuthenticationManagerDidReceiveAuthenticationChangeNotification object:v39 queue:v40 usingBlock:v43];

  [(MSIOSAlbumSharingDaemon *)self releaseBusy];
  v42.receiver = self;
  v42.super_class = MSIOSAlbumSharingDaemon;
  [(MSIOSAlbumSharingDaemon *)&v42 start];
  objc_destroyWeak(&v48);
  objc_destroyWeak(buf);
}

- (MSIOSAlbumSharingDaemon)init
{
  v7.receiver = self;
  v7.super_class = MSIOSAlbumSharingDaemon;
  v2 = [(MSIOSAlbumSharingDaemon *)&v7 init];
  if (v2)
  {
    v3 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.photostream"];
    idsService = v2->_idsService;
    v2->_idsService = v3;

    [(IDSService *)v2->_idsService addDelegate:v2 queue:&_dispatch_main_q];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      accounts = [(IDSService *)v2->_idsService accounts];
      *buf = 138412290;
      v9 = accounts;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Registered IDS service for %@", buf, 0xCu);
    }
  }

  return v2;
}

@end