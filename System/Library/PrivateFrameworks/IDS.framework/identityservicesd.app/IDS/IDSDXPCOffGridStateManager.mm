@interface IDSDXPCOffGridStateManager
- (BOOL)_isConnectedForIML;
- (BOOL)_isExpiredProvisionedPayload:(id)payload;
- (BOOL)_isIMLRegistered;
- (BOOL)_isStewieAvailableForIML;
- (BOOL)_isStewieAvailableForSMS;
- (BOOL)_needsToRequestForSMS;
- (BOOL)_needsToRequestForStewie;
- (BOOL)_shouldProvisionOffGridPayloads;
- (IDSDXPCOffGridStateManager)initWithQueue:(id)queue;
- (IDSDXPCOffGridStateManager)initWithQueue:(id)queue ctClient:(id)client ctMessagingClient:(id)messagingClient hkMedicalIDStore:(id)store familyManager:(id)manager statusClient:(id)statusClient connectionMonitor:(id)monitor systemMonitor:(id)self0 persistentMap:(id)self1;
- (double)_clearSendKeyOnConnectInterval;
- (double)_failedProvisionInterval;
- (double)_payloadValidityDuration;
- (double)_payloadValidityShift;
- (double)_provisionOnInviteDebounceTimeInterval;
- (double)_resetStateInterval;
- (double)_statePersistenceTimeInterval;
- (double)_successfulProvisionInterval;
- (id)_errorForDeviceOffline;
- (id)_errorForInvalidState;
- (id)_errorForNoProvisionedPayload;
- (id)_errorForStewieNotAvailable;
- (id)_fetchFamilyContactsWithPhoneNumbersOnly:(BOOL)only;
- (id)_getDecryptionKeyForProvisionedPayloadWithStatus:(int64_t)status;
- (int64_t)_getRequestReason;
- (int64_t)_offGridModeDisableWhenOnlineForTimeInterval;
- (int64_t)_offGridStatusFromStatusPayload:(id)payload;
- (unint64_t)_payloadCount;
- (unint64_t)_payloadCountPerDuration;
- (void)_areAllPrimaryContactsIMLReachableWithCompletion:(id)completion;
- (void)_calloutToDelegateWithUpdatedContacts:(id)contacts;
- (void)_clearOffGridResetTimer;
- (void)_clearSendKeyOnConnect;
- (void)_clearSendKeyOnConnectTimerFired;
- (void)_connectStewieWithContext:(id)context options:(id)options withCompletion:(id)completion;
- (void)_contactsDidChange;
- (void)_disableOffGridModeViaStatusClient;
- (void)_emergencyContactsDidChange;
- (void)_exitStewieWithCompletion:(id)completion;
- (void)_familyContactsDidChange;
- (void)_fetchEmergencyContactsWithCompletion:(id)completion;
- (void)_initializeOffGridModeAndPublishStatusFromDisk;
- (void)_listenForContactsChangeNotifications;
- (void)_markPayloadAsSentForDecryptionKey:(id)key;
- (void)_markProvisionRequestCompleted;
- (void)_markProvisionRequestInProgress;
- (void)_offGridPayloadProvisioningTimerFiredShouldForce:(BOOL)force;
- (void)_offGridResetTimerFired;
- (void)_provisionOffGridPayloadsShouldForce:(BOOL)force;
- (void)_registerSysdiagnoseBlock;
- (void)_reportOffGridEntryMetricWithService:(int64_t)service source:(id)source success:(BOOL)success;
- (void)_reportOffGridModeMetricWithPreviousMode:(int64_t)mode currentMode:(int64_t)currentMode previousPublishStatus:(int64_t)status currentPublishStatus:(int64_t)publishStatus previousStewieConnectionStatus:(BOOL)connectionStatus currentStewieConnectionStatus:(BOOL)stewieConnectionStatus previousNetworkConnectionStatus:(BOOL)networkConnectionStatus currentNetworkConnectionStatus:(BOOL)self0 duration:(double)self1;
- (void)_resetOffGridModeIfRequired;
- (void)_scheduleClearSendOnConnectTimer;
- (void)_scheduleOffGridPayloadProvisioningTimerWithInterval:(double)interval shouldForce:(BOOL)force;
- (void)_scheduleOffGridResetTimerWithInterval:(double)interval;
- (void)_scheduleOrClearOffGridResetTimerIfRequired;
- (void)_sendOffGridStatusDecryptionKey;
- (void)_setAndPersistOffGridMode:(int64_t)mode publishStatus:(int64_t)status;
- (void)_stewieContextForPayloadKey:(id)key completion:(id)completion;
- (void)_updateClientsWithCurrentStateAndError:(id)error;
- (void)_updateOffGridConnectActionWithPayloadKey:(id)key;
- (void)availabilityChangedForIML:(BOOL)l;
- (void)connectStewieWithCompletion:(id)completion;
- (void)connectionMonitorDidUpdate:(id)update;
- (void)dealloc;
- (void)disconnectStewieWithCompletion:(id)completion;
- (void)fetchContactsOfType:(int64_t)type phoneNumbersOnly:(BOOL)only completion:(id)completion;
- (void)fetchStewieAvailabilityWithCompletion:(id)completion;
- (void)inviteHandles:(id)handles fromSenderHandle:(id)handle withDictionaryPayload:(id)payload completion:(id)completion;
- (void)invitedHandlesWithCompletion:(id)completion;
- (void)monitorConnection:(id)connection;
- (void)removeAllInvitedHandlesWithCompletion:(id)completion;
- (void)removeInvitedHandles:(id)handles completion:(id)completion;
- (void)setOffGridMode:(int64_t)mode allowOnlineEnablement:(BOOL)enablement options:(id)options completion:(id)completion;
- (void)setupOffGridStateManagerClient:(id)client withUUID:(id)d completion:(id)completion;
- (void)statusClient:(id)client publishRequestCompletedForStatusPayload:(id)payload successfully:(BOOL)successfully error:(id)error;
- (void)systemDidUnlock;
@end

@implementation IDSDXPCOffGridStateManager

- (void)systemDidUnlock
{
  v3 = +[IDSFoundationLog IDSOffGridStateManager];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v7) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "System did unlock.", &v7, 2u);
  }

  if ([(IDSDXPCOffGridStateManager *)self _isDeviceOnline]&& (self->_offGridMode != 1 || self->_publishStatus != 1))
  {
    v4 = +[IDSFoundationLog IDSOffGridStateManager];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      offGridMode = self->_offGridMode;
      publishStatus = self->_publishStatus;
      v7 = 134218240;
      v8 = offGridMode;
      v9 = 2048;
      v10 = publishStatus;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Disabling offgrid mode post unlock for current state: {Mode:%ld PublishStatus:%ld}", &v7, 0x16u);
    }

    [(IDSDXPCOffGridStateManager *)self _disableOffGridModeViaStatusClient];
  }
}

- (void)_disableOffGridModeViaStatusClient
{
  if ([(IDSDXPCOffGridStateManager *)self _isDeviceOnline])
  {
    [(IDSDXPCOffGridStateManager *)self _setAndPersistOffGridMode:1 publishStatus:0];
    statusClient = self->_statusClient;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10000DA28;
    v5[3] = &unk_100BD9F28;
    v5[4] = self;
    [(IDSSKStatusClient *)statusClient publishStatus:1 completion:v5];
  }

  else
  {
    v4 = +[IDSFoundationLog IDSOffGridStateManager];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10091C2B4();
    }
  }
}

- (void)_scheduleOrClearOffGridResetTimerIfRequired
{
  if (self->_offGridMode == 1 && self->_publishStatus == 1)
  {

    [(IDSDXPCOffGridStateManager *)self _clearOffGridResetTimer];
  }

  else
  {
    [(IDSDXPCOffGridStateManager *)self _resetStateInterval];

    [(IDSDXPCOffGridStateManager *)self _scheduleOffGridResetTimerWithInterval:?];
  }
}

- (double)_resetStateInterval
{
  v2 = [IDSServerBag sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"shared-channels-cp-reset-state-interval"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 300.0;
  }

  return v5;
}

- (void)_clearOffGridResetTimer
{
  stateResetTimer = self->_stateResetTimer;
  if (stateResetTimer)
  {
    [(IMDispatchTimer *)stateResetTimer invalidate];
    v4 = self->_stateResetTimer;
    self->_stateResetTimer = 0;
  }
}

- (IDSDXPCOffGridStateManager)initWithQueue:(id)queue ctClient:(id)client ctMessagingClient:(id)messagingClient hkMedicalIDStore:(id)store familyManager:(id)manager statusClient:(id)statusClient connectionMonitor:(id)monitor systemMonitor:(id)self0 persistentMap:(id)self1
{
  queueCopy = queue;
  clientCopy = client;
  messagingClientCopy = messagingClient;
  storeCopy = store;
  managerCopy = manager;
  statusClientCopy = statusClient;
  monitorCopy = monitor;
  systemMonitorCopy = systemMonitor;
  mapCopy = map;
  v40.receiver = self;
  v40.super_class = IDSDXPCOffGridStateManager;
  v19 = [(IDSDXPCOffGridStateManager *)&v40 init];
  if (v19)
  {
    v31 = systemMonitorCopy;
    v20 = monitorCopy;
    v21 = +[IDSFoundationLog IDSOffGridStateManager];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v42 = v19;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Created IDSDXPCOffGridStateManager {self: %p}", buf, 0xCu);
    }

    v19[9] = 0;
    objc_storeStrong(v19 + 4, client);
    objc_storeStrong(v19 + 5, messagingClient);
    [*(v19 + 5) setAvailabilityDelegate:v19];
    objc_storeStrong(v19 + 6, store);
    objc_storeStrong(v19 + 7, manager);
    objc_storeStrong(v19 + 8, statusClient);
    [*(v19 + 8) setDelegate:v19];
    monitorCopy = v20;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = [[IMNetworkConnectionMonitor alloc] initWithRemoteHost:0 delegate:v19];
    }

    v23 = *(v19 + 9);
    *(v19 + 9) = v22;
    systemMonitorCopy = v31;

    objc_storeStrong(v19 + 10, systemMonitor);
    [*(v19 + 10) addListener:v19];
    objc_storeStrong(v19 + 15, queue);
    objc_storeStrong(v19 + 18, map);
    v24 = *(v19 + 17);
    *(v19 + 17) = 0;

    v25 = *(v19 + 14);
    *(v19 + 14) = 0;

    *(v19 + 12) = 0;
    v19[10] = 0;
    v19[8] = [v19 _isDeviceOnline];
    v26 = +[NSDate now];
    v27 = *(v19 + 13);
    *(v19 + 13) = v26;

    *(v19 + 5) = 0;
    v28 = *(v19 + 22);
    *(v19 + 22) = 0;
    *(v19 + 23) = 0;

    v29 = *(v19 + 21);
    *(v19 + 21) = 0;

    [v19 _registerSysdiagnoseBlock];
    [v19 _initializeOffGridModeAndPublishStatusFromDisk];
    [v19 _scheduleOrClearOffGridResetTimerIfRequired];
    [v19 _provisionOffGridPayloadsShouldForce:0];
    [v19 _listenForContactsChangeNotifications];
  }

  return v19;
}

- (IDSDXPCOffGridStateManager)initWithQueue:(id)queue
{
  queueCopy = queue;
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_DEFAULT, 0);

  v5 = dispatch_queue_create("com.apple.ids.offgridstatus.ct", v4);
  v34 = v4;
  v32 = dispatch_queue_create("com.apple.ids.offgridstatus.sk", v4);
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [NSSet setWithObjects:v6, v7, v8, v9, v10, v11, v12, objc_opt_class(), 0];
  v14 = [IDSDXPCOffGridStateManager alloc];
  v33 = v5;
  v15 = [[CoreTelephonyClient alloc] initWithQueue:v5];
  v16 = +[IDSStewieCTMessagingClient sharedInstance];
  v42 = 0;
  v43 = &v42;
  v44 = 0x2050000000;
  v17 = qword_100CBD1D8;
  v45 = qword_100CBD1D8;
  if (!qword_100CBD1D8)
  {
    v37 = _NSConcreteStackBlock;
    v38 = 3221225472;
    v39 = sub_1003EC9C4;
    v40 = &unk_100BD7928;
    v41 = &v42;
    sub_1003EC9C4(&v37);
    v17 = v43[3];
  }

  v31 = v15;
  v18 = v17;
  _Block_object_dispose(&v42, 8);
  v19 = [v17 alloc];
  v42 = 0;
  v43 = &v42;
  v44 = 0x2050000000;
  v20 = qword_100CBD1E8;
  v45 = qword_100CBD1E8;
  if (!qword_100CBD1E8)
  {
    v37 = _NSConcreteStackBlock;
    v38 = 3221225472;
    v39 = sub_1003ECB74;
    v40 = &unk_100BD7928;
    v41 = &v42;
    sub_1003ECB74(&v37);
    v20 = v43[3];
  }

  v21 = v20;
  _Block_object_dispose(&v42, 8);
  v30 = objc_alloc_init(v20);
  v22 = [v19 initWithHealthStore:v30];
  v23 = +[IDSFamilyManager sharedInstance];
  v24 = [IDSSKStatusClient alloc];
  v25 = [(IDSSKStatusClient *)v24 initWithStatusTypeIdentifier:kIDSOffGridModeStatusTypeIdentifier queue:v32];
  v26 = +[IMSystemMonitor sharedInstance];
  v27 = [[IDSPersistentMap alloc] initWithIdentifier:@"com.apple.identityservicesd.offgrid.provisioning.store" versionNumber:1 decodableClasses:v13 migrationBlock:0];
  v29 = [(IDSDXPCOffGridStateManager *)v14 initWithQueue:queueCopy ctClient:v31 ctMessagingClient:v16 hkMedicalIDStore:v22 familyManager:v23 statusClient:v25 connectionMonitor:0 systemMonitor:v26 persistentMap:v27];

  return v29;
}

- (void)monitorConnection:(id)connection
{
  connectionCopy = connection;
  v5 = +[IDSFoundationLog IDSOffGridStateManager];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134218242;
    selfCopy = self;
    v8 = 2112;
    v9 = connectionCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "IDSDXPCOffGridStateManager monitoring new connection {self: %p, connection: %@}", &v6, 0x16u);
  }
}

- (void)dealloc
{
  notify_cancel(self->_emergencyContactsNotificationToken);
  notify_cancel(self->_familyContactsNotificationToken);
  v3.receiver = self;
  v3.super_class = IDSDXPCOffGridStateManager;
  [(IDSDXPCOffGridStateManager *)&v3 dealloc];
}

- (void)_initializeOffGridModeAndPublishStatusFromDisk
{
  v3 = [(IDSPersistentMap *)self->_persistentMap objectForKey:@"latest-offgrid-mode"];
  v14 = v3;
  if (v3)
  {
    intValue = [v3 intValue];
  }

  else
  {
    intValue = 1;
  }

  v5 = [(IDSPersistentMap *)self->_persistentMap objectForKey:@"latest-publish-status"];
  v6 = v5;
  if (v5)
  {
    intValue2 = [v5 intValue];
  }

  else
  {
    intValue2 = 1;
  }

  v8 = [(IDSPersistentMap *)self->_persistentMap objectForKey:@"latest-offgrid-mode-date"];
  if (v8 && (+[NSDate now](NSDate, "now"), v9 = objc_claimAutoreleasedReturnValue(), [v9 timeIntervalSinceDate:v8], v11 = v10, -[IDSDXPCOffGridStateManager _statePersistenceTimeInterval](self, "_statePersistenceTimeInterval"), v13 = v12, v9, v11 < v13))
  {
    self->_offGridMode = intValue;
    self->_publishStatus = intValue2;
  }

  else
  {
    [(IDSDXPCOffGridStateManager *)self _setAndPersistOffGridMode:1 publishStatus:1];
  }
}

- (void)setupOffGridStateManagerClient:(id)client withUUID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  if (client)
  {
    remoteObjectProxy = [client remoteObjectProxy];
    v11 = +[IDSFoundationLog IDSOffGridStateManager];
    clientRemoteObjects2 = v11;
    if (remoteObjectProxy)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 134218242;
        selfCopy2 = self;
        v21 = 2112;
        v22 = dCopy;
        _os_log_impl(&_mh_execute_header, clientRemoteObjects2, OS_LOG_TYPE_DEFAULT, "Adding OffGrid state manager client {self: %p, uuid: %@}", &v19, 0x16u);
      }

      clientRemoteObjects = [(IDSDXPCOffGridStateManager *)self clientRemoteObjects];

      if (!clientRemoteObjects)
      {
        v14 = objc_alloc_init(NSMutableDictionary);
        [(IDSDXPCOffGridStateManager *)self setClientRemoteObjects:v14];
      }

      clientRemoteObjects2 = [(IDSDXPCOffGridStateManager *)self clientRemoteObjects];
      [clientRemoteObjects2 setObject:remoteObjectProxy forKeyedSubscript:dCopy];
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10091C0C0(self, dCopy, clientRemoteObjects2);
    }

    completionCopy[2](completionCopy, self->_offGridMode, self->_publishStatus, 0);
  }

  else
  {
    v15 = +[IDSFoundationLog IDSOffGridStateManager];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 134218242;
      selfCopy2 = self;
      v21 = 2112;
      v22 = dCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Removing OffGrid state manager client {self: %p, uuid: %@}", &v19, 0x16u);
    }

    clientRemoteObjects3 = [(IDSDXPCOffGridStateManager *)self clientRemoteObjects];
    [clientRemoteObjects3 setObject:0 forKeyedSubscript:dCopy];

    clientRemoteObjects4 = [(IDSDXPCOffGridStateManager *)self clientRemoteObjects];
    v18 = [clientRemoteObjects4 count];

    if (!v18)
    {
      [(IDSDXPCOffGridStateManager *)self setClientRemoteObjects:0];
    }
  }
}

- (void)_setAndPersistOffGridMode:(int64_t)mode publishStatus:(int64_t)status
{
  v19 = +[NSDate now];
  if (*&self->_offGridMode != __PAIR128__(status, mode))
  {
    v7 = [(IDSPersistentMap *)self->_persistentMap objectForKey:@"latest-metric-state-changed-date"];
    if (v7)
    {
      [v19 timeIntervalSinceDate:v7];
      v9 = v8;
    }

    else
    {
      v9 = 0.0;
    }

    offGridMode = self->_offGridMode;
    publishStatus = self->_publishStatus;
    isStewieConnectedForIML = self->_isStewieConnectedForIML;
    _isDeviceOnline = [(IDSDXPCOffGridStateManager *)self _isDeviceOnline];
    BYTE1(v18) = [(IDSDXPCOffGridStateManager *)self _isDeviceOnline];
    LOBYTE(v18) = _isDeviceOnline;
    [(IDSDXPCOffGridStateManager *)self _reportOffGridModeMetricWithPreviousMode:offGridMode currentMode:mode previousPublishStatus:publishStatus currentPublishStatus:status previousStewieConnectionStatus:isStewieConnectedForIML currentStewieConnectionStatus:isStewieConnectedForIML previousNetworkConnectionStatus:v9 currentNetworkConnectionStatus:v18 duration:?];
    [(IDSPersistentMap *)self->_persistentMap setObject:v19 forKey:@"latest-metric-state-changed-date"];
  }

  self->_offGridMode = mode;
  persistentMap = self->_persistentMap;
  v15 = [NSNumber numberWithInteger:mode];
  [(IDSPersistentMap *)persistentMap setObject:v15 forKey:@"latest-offgrid-mode"];

  self->_publishStatus = status;
  v16 = self->_persistentMap;
  v17 = [NSNumber numberWithInteger:status];
  [(IDSPersistentMap *)v16 setObject:v17 forKey:@"latest-publish-status"];

  [(IDSPersistentMap *)self->_persistentMap setObject:v19 forKey:@"latest-offgrid-mode-date"];
  [(IDSDXPCOffGridStateManager *)self _scheduleOrClearOffGridResetTimerIfRequired];
}

- (void)setOffGridMode:(int64_t)mode allowOnlineEnablement:(BOOL)enablement options:(id)options completion:(id)completion
{
  enablementCopy = enablement;
  optionsCopy = options;
  completionCopy = completion;
  _isDeviceOnline = [(IDSDXPCOffGridStateManager *)self _isDeviceOnline];
  v13 = +[IDSFoundationLog IDSOffGridStateManager];
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (enablementCopy)
  {
    if (!v14)
    {
      goto LABEL_11;
    }

    offGridMode = self->_offGridMode;
    publishStatus = self->_publishStatus;
    v17 = @"NO";
    if (_isDeviceOnline)
    {
      v17 = @"YES";
    }

    *buf = 134218754;
    v47 = offGridMode;
    v48 = 2048;
    v49 = publishStatus;
    v50 = 2048;
    modeCopy2 = mode;
    v52 = 2112;
    v53 = v17;
    v18 = "[Online Enablement Allowed] Received request to set offgrid mode from {Mode:%ld PublishStatus:%ld} to {Mode:%ld} {isOnline: %@}";
  }

  else
  {
    if (!v14)
    {
      goto LABEL_11;
    }

    v19 = self->_offGridMode;
    v20 = self->_publishStatus;
    v21 = @"NO";
    if (_isDeviceOnline)
    {
      v21 = @"YES";
    }

    *buf = 134218754;
    v47 = v19;
    v48 = 2048;
    v49 = v20;
    v50 = 2048;
    modeCopy2 = mode;
    v52 = 2112;
    v53 = v21;
    v18 = "Received request to set offgrid mode from {Mode:%ld PublishStatus:%ld} to {Mode:%ld} {isOnline: %@}";
  }

  _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v18, buf, 0x2Au);
LABEL_11:

  if (mode)
  {
    _errorForInvalidState2 = [(IDSDXPCOffGridStateManager *)self _getDecryptionKeyForProvisionedPayloadWithStatus:mode];
    if (!_errorForInvalidState2)
    {
      v23 = +[IDSFoundationLog IDSOffGridStateManager];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_10091C148();
      }
    }

    if (mode != 2 || enablementCopy || ((_isDeviceOnline ^ 1) & 1) != 0)
    {
      if (mode == 2)
      {
        v31 = +[IDSFoundationLog IDSOffGridStateManager];
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Attempting to go offgrid, resetting offgrid timer", buf, 2u);
        }

        [(IDSSKStatusClient *)self->_statusClient resetRateLimit];
      }

      [(IDSDXPCOffGridStateManager *)self _setAndPersistOffGridMode:mode publishStatus:0];
      completionCopy[2](completionCopy, self->_offGridMode, self->_publishStatus, 0);
      if (_isDeviceOnline)
      {
        v32 = +[IDSFoundationLog IDSOffGridStateManager];
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Publishing offgrid mode through StatusKit", buf, 2u);
        }

        statusClient = self->_statusClient;
        v45[0] = _NSConcreteStackBlock;
        v45[1] = 3221225472;
        v45[2] = sub_1003E604C;
        v45[3] = &unk_100BD9F28;
        v45[4] = self;
        [(IDSSKStatusClient *)statusClient publishStatus:mode completion:v45];
      }

      else
      {
        ctMessagingClient = self->_ctMessagingClient;
        if (self->_isStewieConnectedForIML)
        {
          v44[0] = _NSConcreteStackBlock;
          v44[1] = 3221225472;
          v44[2] = sub_1003E6130;
          v44[3] = &unk_100BD7108;
          v44[4] = self;
          [(IDSStewieCTMessagingClient *)ctMessagingClient sendOffGridStatusDecryptionKey:_errorForInvalidState2 completion:v44];
        }

        else if ([(IDSStewieCTMessagingClient *)ctMessagingClient isActiveForIML])
        {
          [(IDSDXPCOffGridStateManager *)self _updateOffGridConnectActionWithPayloadKey:_errorForInvalidState2];
        }

        else
        {
          _needsToRequestForStewie = [(IDSDXPCOffGridStateManager *)self _needsToRequestForStewie];
          v36 = +[IDSFoundationLog IDSOffGridStateManager];
          v37 = v36;
          if (_needsToRequestForStewie)
          {
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              v38 = @"YES";
              if (!_errorForInvalidState2)
              {
                v38 = @"NO";
              }

              *buf = 138412290;
              v47 = v38;
              _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Requesting stewie and publishing offgrid status through CT. Has provisioned payload key %@", buf, 0xCu);
            }

            v40[0] = _NSConcreteStackBlock;
            v40[1] = 3221225472;
            v40[2] = sub_1003E6250;
            v40[3] = &unk_100BDA928;
            _errorForInvalidState2 = _errorForInvalidState2;
            v41 = _errorForInvalidState2;
            selfCopy = self;
            v43 = optionsCopy;
            [(IDSDXPCOffGridStateManager *)self _stewieContextForPayloadKey:_errorForInvalidState2 completion:v40];
          }

          else
          {
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              sub_10091C184();
            }

            [(IDSDXPCOffGridStateManager *)self _updateOffGridConnectActionWithPayloadKey:0];
            [(IDSDXPCOffGridStateManager *)self _setAndPersistOffGridMode:self->_offGridMode publishStatus:2];
            _errorForStewieNotAvailable = [(IDSDXPCOffGridStateManager *)self _errorForStewieNotAvailable];
            [(IDSDXPCOffGridStateManager *)self _updateClientsWithCurrentStateAndError:_errorForStewieNotAvailable];
          }
        }
      }
    }

    else
    {
      v24 = +[IDSFoundationLog IDSOffGridStateManager];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Invalid off grid mode requested by client while online.", buf, 2u);
      }

      v25 = self->_offGridMode;
      v26 = self->_publishStatus;
      _errorForInvalidState = [(IDSDXPCOffGridStateManager *)self _errorForInvalidState];
      (completionCopy)[2](completionCopy, v25, v26, _errorForInvalidState);
    }
  }

  else
  {
    v28 = +[IDSFoundationLog IDSOffGridStateManager];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Invalid off grid mode requested by client.", buf, 2u);
    }

    v29 = self->_offGridMode;
    v30 = self->_publishStatus;
    _errorForInvalidState2 = [(IDSDXPCOffGridStateManager *)self _errorForInvalidState];
    (completionCopy)[2](completionCopy, v29, v30, _errorForInvalidState2);
  }
}

- (void)invitedHandlesWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = dispatch_get_global_queue(21, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003E66FC;
  v7[3] = &unk_100BD7298;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(v5, v7);
}

- (void)inviteHandles:(id)handles fromSenderHandle:(id)handle withDictionaryPayload:(id)payload completion:(id)completion
{
  handlesCopy = handles;
  handleCopy = handle;
  payloadCopy = payload;
  completionCopy = completion;
  v14 = +[IDSFoundationLog IDSOffGridStateManager];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = @"YES";
    *buf = 138412802;
    v26 = handleCopy;
    v27 = 2112;
    if (!payloadCopy)
    {
      v15 = @"NO";
    }

    v28 = v15;
    v29 = 2112;
    v30 = handlesCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Received request to send invite from sender handle %@ with payload %@ to %@", buf, 0x20u);
  }

  if ([(IDSDXPCOffGridStateManager *)self _isDeviceOnline])
  {
    goto LABEL_10;
  }

  v16 = +[IDSFoundationLog IDSOffGridStateManager];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Cannot invite, we are offline", buf, 2u);
  }

  if (!completionCopy)
  {
LABEL_10:
    statusClient = self->_statusClient;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1003E69E4;
    v19[3] = &unk_100BDA950;
    v20 = handleCopy;
    v21 = payloadCopy;
    v22 = handlesCopy;
    selfCopy = self;
    v24 = completionCopy;
    [(IDSSKStatusClient *)statusClient inviteHandles:v22 fromSenderHandle:v20 withDictionaryPayload:v21 completion:v19];

    _errorForDeviceOffline = v20;
  }

  else
  {
    _errorForDeviceOffline = [(IDSDXPCOffGridStateManager *)self _errorForDeviceOffline];
    (*(completionCopy + 2))(completionCopy, handlesCopy, handleCopy, payloadCopy, _errorForDeviceOffline);
  }
}

- (void)removeInvitedHandles:(id)handles completion:(id)completion
{
  handlesCopy = handles;
  completionCopy = completion;
  v8 = +[IDSFoundationLog IDSOffGridStateManager];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = handlesCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received request to remove invite for handles %@", buf, 0xCu);
  }

  if ([(IDSDXPCOffGridStateManager *)self _isDeviceOnline])
  {
    goto LABEL_8;
  }

  v9 = +[IDSFoundationLog IDSOffGridStateManager];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Cannot remove invite, we are offline", buf, 2u);
  }

  if (!completionCopy)
  {
LABEL_8:
    statusClient = self->_statusClient;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1003E6D3C;
    v12[3] = &unk_100BDA978;
    v13 = handlesCopy;
    selfCopy = self;
    v15 = completionCopy;
    [(IDSSKStatusClient *)statusClient removeInvitedHandles:v13 completion:v12];

    _errorForDeviceOffline = v13;
  }

  else
  {
    _errorForDeviceOffline = [(IDSDXPCOffGridStateManager *)self _errorForDeviceOffline];
    (*(completionCopy + 2))(completionCopy, handlesCopy, _errorForDeviceOffline);
  }
}

- (void)removeAllInvitedHandlesWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[IDSFoundationLog IDSOffGridStateManager];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received request to remove all invites", buf, 2u);
  }

  invitedHandles = [(IDSSKStatusClient *)self->_statusClient invitedHandles];
  statusClient = self->_statusClient;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1003E6FA0;
  v10[3] = &unk_100BDA9A0;
  v11 = invitedHandles;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = invitedHandles;
  [(IDSSKStatusClient *)statusClient removeAllInvitedHandlesWithCompletion:v10];
}

- (void)fetchStewieAvailabilityWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[IDSFoundationLog IDSOffGridStateManager];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received request to fetch Stewie availability", &v13, 2u);
  }

  _isStewieAvailableForIML = [(IDSDXPCOffGridStateManager *)self _isStewieAvailableForIML];
  if (_isStewieAvailableForIML)
  {
    v7 = 16;
  }

  else
  {
    v7 = 0;
  }

  _isStewieAvailableForSMS = [(IDSDXPCOffGridStateManager *)self _isStewieAvailableForSMS];
  if (_isStewieAvailableForSMS)
  {
    v9 = v7 | 0x20;
  }

  else
  {
    v9 = v7;
  }

  v10 = _isStewieAvailableForSMS | _isStewieAvailableForIML;
  v11 = +[IDSFoundationLog IDSOffGridStateManager];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = @"NO";
    if (v10)
    {
      v12 = @"YES";
    }

    v13 = 138412546;
    v14 = v12;
    v15 = 2048;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Fetched Stewie availability: %@, services available: %ld", &v13, 0x16u);
  }

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, v10 & 1, v9, 0);
  }
}

- (void)connectStewieWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[IDSFoundationLog IDSOffGridStateManager];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received request to connect Stewie.", buf, 2u);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003E7300;
  v7[3] = &unk_100BDA9C8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [(IDSDXPCOffGridStateManager *)self _stewieContextForPayloadKey:0 completion:v7];
}

- (void)disconnectStewieWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[IDSFoundationLog IDSOffGridStateManager];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received request to disconnect Stewie", v6, 2u);
  }

  [(IDSDXPCOffGridStateManager *)self _exitStewieWithCompletion:completionCopy];
}

- (void)_exitStewieWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(IDSStewieCTMessagingClient *)self->_ctMessagingClient isActiveForIML]|| [(IDSStewieCTMessagingClient *)self->_ctMessagingClient isActiveForSMS])
  {
    v5 = +[IDSFoundationLog IDSOffGridStateManager];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Disconnecting stewie", buf, 2u);
    }

    v6 = objc_alloc_init(CTStewieExitContext);
    [v6 setReason:4];
    ctClient = self->_ctClient;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1003E75E4;
    v8[3] = &unk_100BDA9F0;
    v9 = completionCopy;
    [(CoreTelephonyClient *)ctClient exitStewieWithContext:v6 completion:v8];
  }

  else
  {
    v6 = +[IDSFoundationLog IDSOffGridStateManager];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10091C1FC(&self->_ctMessagingClient, v6);
    }
  }
}

- (void)_connectStewieWithContext:(id)context options:(id)options withCompletion:(id)completion
{
  contextCopy = context;
  optionsCopy = options;
  completionCopy = completion;
  v11 = +[IDSFoundationLog IDSOffGridStateManager];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Requesting to connect Stewie.", buf, 2u);
  }

  ctClient = self->_ctClient;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1003E77FC;
  v16[3] = &unk_100BDAA18;
  v16[4] = self;
  v17 = contextCopy;
  v18 = optionsCopy;
  v19 = completionCopy;
  v13 = completionCopy;
  v14 = optionsCopy;
  v15 = contextCopy;
  [(CoreTelephonyClient *)ctClient requestStewieWithContext:v15 completion:v16];
}

- (void)fetchContactsOfType:(int64_t)type phoneNumbersOnly:(BOOL)only completion:(id)completion
{
  onlyCopy = only;
  completionCopy = completion;
  v9 = +[IDSFoundationLog IDSOffGridStateManager];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = type;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Client requested fetch contacts of types: %ld", &buf, 0xCu);
  }

  if ((type & 3) != 0 || !completionCopy)
  {
    v13 = +[NSMutableArray array];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v27 = 0x3032000000;
    v28 = sub_10000A944;
    v29 = sub_10000BC14;
    v30 = 0;
    v14 = dispatch_group_create();
    if ((type & 2) != 0)
    {
      v15 = [(IDSDXPCOffGridStateManager *)self _fetchFamilyContactsWithPhoneNumbersOnly:onlyCopy];
      [v13 addObjectsFromArray:v15];
    }

    if (type)
    {
      dispatch_group_enter(v14);
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_1003E7BD8;
      v22[3] = &unk_100BDAA40;
      p_buf = &buf;
      v23 = v13;
      v24 = v14;
      [(IDSDXPCOffGridStateManager *)self _fetchEmergencyContactsWithCompletion:v22];
    }

    v16 = im_primary_queue();
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1003E7C5C;
    v18[3] = &unk_100BDAA68;
    v19 = v13;
    v21 = &buf;
    v20 = completionCopy;
    v17 = v13;
    dispatch_group_notify(v14, v16, v18);

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v10 = [NSError alloc];
    v31 = NSLocalizedDescriptionKey;
    v32 = @"No valid contact type provided.";
    v11 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v12 = [v10 initWithDomain:IDSOffGridStateManagerErrorDomain code:0 userInfo:v11];
    (*(completionCopy + 2))(completionCopy, 0, v12);
  }
}

- (id)_fetchFamilyContactsWithPhoneNumbersOnly:(BOOL)only
{
  onlyCopy = only;
  v5 = +[NSMutableArray array];
  familyHandles = [(IDSFamilyManager *)self->_familyManager familyHandles];
  v7 = [familyHandles mutableCopy];

  v8 = +[IDSFoundationLog IDSOffGridStateManager];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Completed fetch of family handles %@", buf, 0xCu);
  }

  v9 = +[IDSDAccountController sharedInstance];
  v10 = [v9 registeredLocalURIsOnService:IDSServiceNameiMessage];
  v11 = [NSSet setWithArray:v10];

  v22 = v11;
  [v7 minusSet:v11];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = v7;
  v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v24;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v23 + 1) + 8 * i);
        if (!onlyCopy || IMStringIsPhoneNumber())
        {
          v18 = [IDSOffGridContactInfo alloc];
          v19 = [IDSURI URIWithUnprefixedURI:v17];
          v20 = [v18 initWithURI:v19 type:2];

          [v5 addObject:v20];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v14);
  }

  return v5;
}

- (void)_fetchEmergencyContactsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[NSMutableArray array];
  hkMedicalIDStore = self->_hkMedicalIDStore;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1003E8080;
  v9[3] = &unk_100BDAA90;
  v10 = v5;
  v11 = completionCopy;
  v7 = v5;
  v8 = completionCopy;
  [(HKMedicalIDStore *)hkMedicalIDStore fetchMedicalIDEmergencyContactsWithCompletion:v9];
}

- (void)_scheduleOffGridResetTimerWithInterval:(double)interval
{
  [(IDSDXPCOffGridStateManager *)self _clearOffGridResetTimer];
  v5 = +[IDSFoundationLog IDSOffGridStateManager];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    intervalCopy = interval;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Scheduling a timer for resetting state if online for %fsec", buf, 0xCu);
  }

  v6 = [IMDispatchTimer alloc];
  v7 = im_primary_queue();
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1003E8408;
  v10[3] = &unk_100BD9268;
  v10[4] = self;
  v8 = [v6 initWithQueue:v7 interval:interval repeats:0 handlerBlock:v10];
  stateResetTimer = self->_stateResetTimer;
  self->_stateResetTimer = v8;
}

- (void)_offGridResetTimerFired
{
  [(IMDispatchTimer *)self->_stateResetTimer invalidate];
  stateResetTimer = self->_stateResetTimer;
  self->_stateResetTimer = 0;

  v4 = +[IDSFoundationLog IDSOffGridStateManager];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "reset state timer fired", buf, 2u);
  }

  v5 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003E84F8;
  block[3] = &unk_100BD6ED0;
  block[4] = self;
  dispatch_async(v5, block);
}

- (void)_resetOffGridModeIfRequired
{
  v3 = +[IDSFoundationLog IDSOffGridStateManager];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    onlineSince = self->_onlineSince;
    v12 = 138412290;
    v13 = onlineSince;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "We are online since: %@", &v12, 0xCu);
  }

  if (self->_offGridMode == 1 && self->_publishStatus == 1)
  {
    v5 = +[IDSFoundationLog IDSOffGridStateManager];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = self->_onlineSince;
      v12 = 138412290;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Offgrid more is already disabled successfully, not attempting to reset. We are online since %@", &v12, 0xCu);
    }
  }

  else
  {
    if (!self->_onlineSince || ![(IDSDXPCOffGridStateManager *)self _isDeviceOnline])
    {
      [(IDSDXPCOffGridStateManager *)self _resetStateInterval];
      [(IDSDXPCOffGridStateManager *)self _scheduleOffGridResetTimerWithInterval:?];
      return;
    }

    _offGridModeDisableWhenOnlineForTimeInterval = [(IDSDXPCOffGridStateManager *)self _offGridModeDisableWhenOnlineForTimeInterval];
    v5 = [NSDate dateWithTimeInterval:self->_onlineSince sinceDate:_offGridModeDisableWhenOnlineForTimeInterval];
    v8 = +[IDSFoundationLog IDSOffGridStateManager];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Reset time: %@", &v12, 0xCu);
    }

    v9 = +[NSDate now];
    v10 = [v5 earlierDate:v9];

    if (v10 == v5)
    {
      v11 = +[IDSFoundationLog IDSOffGridStateManager];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 134217984;
        v13 = _offGridModeDisableWhenOnlineForTimeInterval;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Disabling offgrid mode as we were online for more than %ldsec", &v12, 0xCu);
      }

      [(IDSDXPCOffGridStateManager *)self _disableOffGridModeViaStatusClient];
    }

    else
    {
      [(IDSDXPCOffGridStateManager *)self _resetStateInterval];
      [(IDSDXPCOffGridStateManager *)self _scheduleOffGridResetTimerWithInterval:?];
    }
  }
}

- (void)_calloutToDelegateWithUpdatedContacts:(id)contacts
{
  contactsCopy = contacts;
  v5 = +[IDSFoundationLog IDSOffGridStateManager];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = contactsCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Contact infos changed - calling out to client delegate { updatedContacts: %@ }", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  allKeys = [(NSMutableDictionary *)self->_clientRemoteObjects allKeys];
  v7 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(allKeys);
        }

        v11 = [(NSMutableDictionary *)self->_clientRemoteObjects objectForKeyedSubscript:*(*(&v12 + 1) + 8 * v10)];
        [v11 contactInfoUpdated:contactsCopy];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)_listenForContactsChangeNotifications
{
  v3 = kHKMedicalIDEmergencyContactsDidChangeNotification;
  v4 = im_primary_queue();
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1003E8A80;
  handler[3] = &unk_100BD99B8;
  handler[4] = self;
  LODWORD(v3) = notify_register_dispatch(v3, &self->_emergencyContactsNotificationToken, v4, handler);

  if (v3)
  {
    v5 = +[IDSFoundationLog IDSOffGridStateManager];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10091C2F0();
    }
  }

  v6 = im_primary_queue();
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1003E8A88;
  v9[3] = &unk_100BD99B8;
  v9[4] = self;
  v7 = notify_register_dispatch("com.apple.family.family_updated", &self->_familyContactsNotificationToken, v6, v9);

  if (v7)
  {
    v8 = +[IDSFoundationLog IDSOffGridStateManager];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10091C364();
    }
  }
}

- (void)_emergencyContactsDidChange
{
  v3 = +[IDSFoundationLog IDSOffGridStateManager];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Notified emergency contacts changed!", v4, 2u);
  }

  [(IDSDXPCOffGridStateManager *)self _contactsDidChange];
}

- (void)_familyContactsDidChange
{
  v3 = +[IDSFoundationLog IDSOffGridStateManager];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Notified family contacts changed!", v4, 2u);
  }

  [(IDSDXPCOffGridStateManager *)self _contactsDidChange];
}

- (void)_contactsDidChange
{
  [(IDSDXPCOffGridStateManager *)self _fetchFamilyContactsWithPhoneNumbersOnly:1];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003E8C24;
  v5 = v4[3] = &unk_100BDAAB8;
  selfCopy = self;
  v3 = v5;
  [(IDSDXPCOffGridStateManager *)self _fetchEmergencyContactsWithCompletion:v4];
}

- (void)_scheduleOffGridPayloadProvisioningTimerWithInterval:(double)interval shouldForce:(BOOL)force
{
  forceCopy = force;
  provisionTimer = self->_provisionTimer;
  if (provisionTimer)
  {
    [(IMDispatchTimer *)provisionTimer invalidate];
    v8 = self->_provisionTimer;
    self->_provisionTimer = 0;
  }

  v9 = +[IDSFoundationLog IDSOffGridStateManager];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"NO";
    if (forceCopy)
    {
      v10 = @"YES";
    }

    *buf = 134218242;
    intervalCopy = interval;
    v19 = 2112;
    v20 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Scheduling a timer for provisioning payloads in: %fsec shouldForce %@", buf, 0x16u);
  }

  v11 = [IMDispatchTimer alloc];
  v12 = im_primary_queue();
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1003E8E20;
  v15[3] = &unk_100BDAAE0;
  v15[4] = self;
  v16 = forceCopy;
  v13 = [v11 initWithQueue:v12 interval:interval repeats:0 handlerBlock:v15];
  v14 = self->_provisionTimer;
  self->_provisionTimer = v13;
}

- (void)_offGridPayloadProvisioningTimerFiredShouldForce:(BOOL)force
{
  [(IMDispatchTimer *)self->_provisionTimer invalidate];
  provisionTimer = self->_provisionTimer;
  self->_provisionTimer = 0;

  v6 = +[IDSFoundationLog IDSOffGridStateManager];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Payload provisioning timer fired", buf, 2u);
  }

  v7 = im_primary_queue();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1003E8F28;
  v8[3] = &unk_100BD7478;
  v8[4] = self;
  forceCopy = force;
  dispatch_async(v7, v8);
}

- (BOOL)_isExpiredProvisionedPayload:(id)payload
{
  payloadCopy = payload;
  v4 = +[NSDate now];
  validUntil = [payloadCopy validUntil];
  v6 = [v4 laterDate:validUntil];
  v7 = [v6 isEqualToDate:v4];

  if (v7)
  {
    v8 = +[IDSFoundationLog IDSOffGridStateManager];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412546;
      v11 = payloadCopy;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Provisioned payload is expired. { provisionedPayload: %@, currentDate: %@ }", &v10, 0x16u);
    }
  }

  return v7;
}

- (BOOL)_shouldProvisionOffGridPayloads
{
  if (!self->_provisionRequestInProgress)
  {
    v5 = [(IDSPersistentMap *)self->_persistentMap objectForKey:@"provisioned-payloads"];
    v2 = v5;
    if (v5 && [v5 count])
    {
      v6 = [(IDSPersistentMap *)self->_persistentMap objectForKey:@"sent-payload-id"];
      v7 = v6;
      if (!v6 || ![v6 count])
      {
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        v9 = v2;
        v10 = [v9 countByEnumeratingWithState:&v16 objects:v21 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v17;
          while (2)
          {
            for (i = 0; i != v11; i = i + 1)
            {
              if (*v17 != v12)
              {
                objc_enumerationMutation(v9);
              }

              if ([(IDSDXPCOffGridStateManager *)self _isExpiredProvisionedPayload:*(*(&v16 + 1) + 8 * i), v16])
              {
                v14 = +[IDSFoundationLog IDSOffGridStateManager];
                if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "We have an expired payload, should reprovision", buf, 2u);
                }

                goto LABEL_26;
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v16 objects:v21 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

        v3 = 0;
        goto LABEL_27;
      }

      v8 = +[IDSFoundationLog IDSOffGridStateManager];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "We've sent a payload, should reprovision.", buf, 2u);
      }
    }

    else
    {
      v7 = +[IDSFoundationLog IDSOffGridStateManager];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "We currently have no payloads provisioned, need to provision.", buf, 2u);
      }
    }

LABEL_26:
    v3 = 1;
LABEL_27:

    goto LABEL_28;
  }

  v2 = +[IDSFoundationLog IDSOffGridStateManager];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "We already have a request in progress, should not reprovision.", buf, 2u);
  }

  v3 = 0;
LABEL_28:

  return v3;
}

- (void)_provisionOffGridPayloadsShouldForce:(BOOL)force
{
  v5 = IMWeakLinkClass();
  if (force || [(IDSDXPCOffGridStateManager *)self _shouldProvisionOffGridPayloads])
  {
    [(IDSDXPCOffGridStateManager *)self _markProvisionRequestInProgress];
    v6 = [(IDSPersistentMap *)self->_persistentMap objectForKey:@"sent-payload-id"];
    v7 = v6;
    if (v6 && ![v6 count])
    {
      v8 = +[IDSFoundationLog IDSOffGridStateManager];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "We haven't sent any of our payloads yet.", buf, 2u);
      }
    }

    v26 = v7;
    v9 = +[NSDate now];
    [(IDSDXPCOffGridStateManager *)self _payloadValidityDuration];
    v10 = [v9 dateByAddingTimeInterval:?];
    v11 = objc_alloc_init(NSMutableArray);
    _payloadCount = [(IDSDXPCOffGridStateManager *)self _payloadCount];
    _payloadCountPerDuration = [(IDSDXPCOffGridStateManager *)self _payloadCountPerDuration];
    v28 = _payloadCount;
    if (_payloadCount)
    {
      v13 = 0;
      do
      {
        for (i = _payloadCountPerDuration; i; --i)
        {
          v15 = [v5 alloc];
          v16 = [(IDSSKStatusClient *)self->_statusClient statusPayloadForOffGridMode:2];
          v17 = [v15 initWithStatusPayload:v16 validFrom:v9 validUntil:v10];

          [v11 addObject:v17];
          v18 = [v5 alloc];
          v19 = [(IDSSKStatusClient *)self->_statusClient statusPayloadForOffGridMode:1];
          v20 = [v18 initWithStatusPayload:v19 validFrom:v9 validUntil:v10];

          [v11 addObject:v20];
        }

        [(IDSDXPCOffGridStateManager *)self _payloadValidityShift];
        v21 = [v9 dateByAddingTimeInterval:?];

        [(IDSDXPCOffGridStateManager *)self _payloadValidityShift];
        v22 = [v10 dateByAddingTimeInterval:?];

        ++v13;
        v9 = v21;
        v10 = v22;
      }

      while (v13 != v28);
    }

    else
    {
      v22 = v10;
      v21 = v9;
    }

    [v11 im_shuffle];
    statusClient = self->_statusClient;
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1003E9638;
    v29[3] = &unk_100BDAAB8;
    v29[4] = self;
    v30 = v11;
    v24 = v11;
    [(IDSSKStatusClient *)statusClient provisionStatusPayload:v24 completion:v29];

    v25 = v26;
  }

  else
  {
    v25 = +[IDSFoundationLog IDSOffGridStateManager];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Don't need to provision new payloads.", buf, 2u);
    }
  }
}

- (void)_markProvisionRequestInProgress
{
  os_unfair_lock_lock(&self->_provisionLock);
  self->_provisionRequestInProgress = 1;

  os_unfair_lock_unlock(&self->_provisionLock);
}

- (void)_markProvisionRequestCompleted
{
  os_unfair_lock_lock(&self->_provisionLock);
  self->_provisionRequestInProgress = 0;

  os_unfair_lock_unlock(&self->_provisionLock);
}

- (void)_updateOffGridConnectActionWithPayloadKey:(id)key
{
  keyCopy = key;
  os_unfair_lock_lock(&self->_offGridConnectActionLock);
  if (keyCopy)
  {
    v5 = keyCopy;
    v6 = 1;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  payloadKeyToSendOnIMLConnect = self->_payloadKeyToSendOnIMLConnect;
  self->_payloadKeyToSendOnIMLConnect = v5;

  self->_offGridConnectAction = v6;
  v8 = +[IDSFoundationLog IDSOffGridStateManager];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = self->_payloadKeyToSendOnIMLConnect;
    offGridConnectAction = self->_offGridConnectAction;
    v11 = 134218242;
    v12 = offGridConnectAction;
    v13 = 2112;
    v14 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Updated OffGrid connect action to %ld for payloadKey %@", &v11, 0x16u);
  }

  os_unfair_lock_unlock(&self->_offGridConnectActionLock);
}

- (void)_markPayloadAsSentForDecryptionKey:(id)key
{
  keyCopy = key;
  v5 = [(IDSPersistentMap *)self->_persistentMap objectForKey:@"provisioned-payloads"];
  v6 = v5;
  if (!keyCopy || !v5 || ![v5 count])
  {
    v7 = +[IDSFoundationLog IDSOffGridStateManager];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = keyCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Could not find payload with decryption key %@", buf, 0xCu);
    }
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  identifier = v8;
  if (v9)
  {
    v11 = v9;
    v12 = *v23;
LABEL_9:
    v13 = 0;
    while (1)
    {
      if (*v23 != v12)
      {
        objc_enumerationMutation(v8);
      }

      v14 = *(*(&v22 + 1) + 8 * v13);
      decryptionKey = [v14 decryptionKey];
      v16 = [decryptionKey isEqualToData:keyCopy];

      if (v16)
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v11)
        {
          goto LABEL_9;
        }

        identifier = v8;
        goto LABEL_22;
      }
    }

    identifier = [v14 identifier];

    if (!identifier)
    {
      goto LABEL_23;
    }

    v17 = +[IDSFoundationLog IDSOffGridStateManager];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = identifier;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Saving sent payload identifier %@", buf, 0xCu);
    }

    v18 = [(IDSPersistentMap *)self->_persistentMap objectForKey:@"sent-payload-id"];
    v19 = [v18 mutableCopy];

    if (!v19)
    {
      v19 = objc_alloc_init(NSMutableSet);
    }

    [v19 addObject:identifier];
    persistentMap = self->_persistentMap;
    v21 = [v19 copy];
    [(IDSPersistentMap *)persistentMap setObject:v21 forKey:@"sent-payload-id"];
  }

LABEL_22:

LABEL_23:
}

- (id)_getDecryptionKeyForProvisionedPayloadWithStatus:(int64_t)status
{
  selfCopy = self;
  persistentMap = self->_persistentMap;
  if (persistentMap)
  {
    v6 = [(IDSPersistentMap *)persistentMap objectForKey:@"provisioned-payloads"];
    v7 = v6;
    if (v6 && [v6 count])
    {
      v31 = [(IDSPersistentMap *)selfCopy->_persistentMap objectForKey:@"sent-payload-id"];
      if (!v31)
      {
        v31 = objc_alloc_init(NSSet);
      }

      v8 = +[NSDate now];
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v30 = v7;
      v9 = v7;
      v10 = [v9 countByEnumeratingWithState:&v41 objects:v47 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v42;
        statusCopy = status;
        v38 = v8;
        v35 = v9;
        v36 = selfCopy;
        v39 = *v42;
LABEL_8:
        v13 = 0;
        v40 = v11;
        while (1)
        {
          if (*v42 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v41 + 1) + 8 * v13);
          statusPayload = [v14 statusPayload];
          if ([(IDSDXPCOffGridStateManager *)selfCopy _offGridStatusFromStatusPayload:statusPayload]== status)
          {
            validFrom = [v14 validFrom];
            v17 = [validFrom earlierDate:v8];
            validFrom2 = [v14 validFrom];
            if (v17 == validFrom2)
            {
              [(IDSDXPCOffGridStateManager *)selfCopy _payloadValidityRequirement];
              v19 = [v8 dateByAddingTimeInterval:?];
              validUntil = [v14 validUntil];
              v21 = [v19 laterDate:validUntil];
              validUntil2 = [v14 validUntil];
              if (v21 == validUntil2)
              {
                decryptionKey = [v14 decryptionKey];
                if (decryptionKey)
                {
                  v33 = decryptionKey;
                  identifier = [v14 identifier];
                  v34 = [v31 containsObject:identifier];

                  status = statusCopy;
                  v8 = v38;
                  v9 = v35;
                  selfCopy = v36;
                  v12 = v39;
                  v11 = v40;
                  if ((v34 & 1) == 0)
                  {
                    v27 = +[IDSFoundationLog IDSOffGridStateManager];
                    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      v46 = v14;
                      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Found a valid payload: %@", buf, 0xCu);
                    }

                    v25 = v14;
                    if (v25)
                    {
                      decryptionKey2 = [v25 decryptionKey];
                      goto LABEL_36;
                    }

                    goto LABEL_25;
                  }

                  goto LABEL_17;
                }
              }

              status = statusCopy;
              v8 = v38;
              v9 = v35;
              selfCopy = v36;
            }

            v12 = v39;
            v11 = v40;
          }

LABEL_17:
          if (v11 == ++v13)
          {
            v24 = [v9 countByEnumeratingWithState:&v41 objects:v47 count:16];
            v11 = v24;
            if (v24)
            {
              goto LABEL_8;
            }

            break;
          }
        }
      }

LABEL_25:
      v25 = +[IDSFoundationLog IDSOffGridStateManager];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_10091C44C();
      }

      decryptionKey2 = 0;
LABEL_36:
      v7 = v30;
    }

    else
    {
      v31 = +[IDSFoundationLog IDSOffGridStateManager];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_10091C488();
      }

      decryptionKey2 = 0;
    }
  }

  else
  {
    decryptionKey2 = 0;
  }

  return decryptionKey2;
}

- (BOOL)_isStewieAvailableForIML
{
  _isIMLRegistered = [(IDSDXPCOffGridStateManager *)self _isIMLRegistered];
  if (_isIMLRegistered)
  {
    if ([(IDSStewieCTMessagingClient *)self->_ctMessagingClient isAvailableForIML])
    {
      LOBYTE(_isIMLRegistered) = 1;
    }

    else
    {
      ctMessagingClient = self->_ctMessagingClient;

      LOBYTE(_isIMLRegistered) = [(IDSStewieCTMessagingClient *)ctMessagingClient isActiveForIML];
    }
  }

  return _isIMLRegistered;
}

- (BOOL)_isStewieAvailableForSMS
{
  if ([(IDSStewieCTMessagingClient *)self->_ctMessagingClient isAvailableForSMS])
  {
    return 1;
  }

  ctMessagingClient = self->_ctMessagingClient;

  return [(IDSStewieCTMessagingClient *)ctMessagingClient isActiveForSMS];
}

- (BOOL)_needsToRequestForStewie
{
  if ([(IDSDXPCOffGridStateManager *)self _needsToRequestForIML])
  {
    return 1;
  }

  return [(IDSDXPCOffGridStateManager *)self _needsToRequestForSMS];
}

- (BOOL)_needsToRequestForSMS
{
  if ([(IDSStewieCTMessagingClient *)self->_ctMessagingClient isActiveForSMS])
  {
    return 0;
  }

  ctMessagingClient = self->_ctMessagingClient;

  return [(IDSStewieCTMessagingClient *)ctMessagingClient isAvailableForSMS];
}

- (BOOL)_isIMLRegistered
{
  v2 = +[IDSDServiceController sharedInstance];
  v3 = [v2 serviceWithIdentifier:IDSServiceNameiMessageLite];

  v4 = +[IDSDAccountController sharedInstance];
  v5 = [v4 registeredAccountsOnService:v3];

  if (v5)
  {
    firstObject = [v5 firstObject];
    v7 = firstObject != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_isConnectedForIML
{
  v3 = +[IDSFoundationLog IDSOffGridStateManager];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_isStewieConnectedForIML)
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "isConnectedForIML %@", &v6, 0xCu);
  }

  return self->_isStewieConnectedForIML;
}

- (void)_stewieContextForPayloadKey:(id)key completion:(id)completion
{
  completionCopy = completion;
  v7 = objc_alloc_init(CTStewieRequestContext);
  [v7 setReason:{-[IDSDXPCOffGridStateManager _getRequestReason](self, "_getRequestReason")}];
  v8 = +[NSMutableDictionary dictionary];
  if (key && ([v7 reason] == 8 || objc_msgSend(v7, "reason") == 9))
  {
    CFDictionarySetValue(v8, kCTStewieRequestWaitForOffGridModeMessage, &__kCFBooleanTrue);
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1003EA4E8;
  v12[3] = &unk_100BDAB08;
  v13 = v8;
  v14 = v7;
  v15 = completionCopy;
  v9 = completionCopy;
  v10 = v7;
  v11 = v8;
  [(IDSDXPCOffGridStateManager *)self _areAllPrimaryContactsIMLReachableWithCompletion:v12];
}

- (int64_t)_getRequestReason
{
  if ([(IDSDXPCOffGridStateManager *)self _needsToRequestForIML]&& [(IDSDXPCOffGridStateManager *)self _needsToRequestForSMS])
  {
    v3 = 8;
  }

  else if ([(IDSDXPCOffGridStateManager *)self _needsToRequestForIML])
  {
    v3 = 9;
  }

  else if ([(IDSDXPCOffGridStateManager *)self _needsToRequestForSMS])
  {
    v3 = 10;
  }

  else
  {
    v3 = 0;
  }

  v4 = +[IDSFoundationLog IDSOffGridStateManager];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = CTStewieRequestReasonAsString();
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Request reason %s", &v6, 0xCu);
  }

  return v3;
}

- (id)_errorForDeviceOffline
{
  v2 = [[NSDictionary alloc] initWithObjectsAndKeys:{@"Device is not connected to the internet", NSLocalizedDescriptionKey, 0}];
  v3 = [NSError alloc];
  v4 = [v3 initWithDomain:IDSOffGridStatusErrorDomain code:8 userInfo:v2];

  return v4;
}

- (id)_errorForNoProvisionedPayload
{
  v2 = [[NSDictionary alloc] initWithObjectsAndKeys:{@"No provisioned key for offgrid provisioned payload.", NSLocalizedDescriptionKey, 0}];
  v3 = [NSError alloc];
  v4 = [v3 initWithDomain:IDSOffGridStatusErrorDomain code:5 userInfo:v2];

  return v4;
}

- (id)_errorForInvalidState
{
  v2 = [[NSDictionary alloc] initWithObjectsAndKeys:{@"Invalid state requested.", NSLocalizedDescriptionKey, 0}];
  v3 = [NSError alloc];
  v4 = [v3 initWithDomain:IDSOffGridStatusErrorDomain code:7 userInfo:v2];

  return v4;
}

- (id)_errorForStewieNotAvailable
{
  v2 = [[NSDictionary alloc] initWithObjectsAndKeys:{@"Stewie is not available.", NSLocalizedDescriptionKey, 0}];
  v3 = [NSError alloc];
  v4 = [v3 initWithDomain:IDSOffGridStatusErrorDomain code:1 userInfo:v2];

  return v4;
}

- (void)_reportOffGridModeMetricWithPreviousMode:(int64_t)mode currentMode:(int64_t)currentMode previousPublishStatus:(int64_t)status currentPublishStatus:(int64_t)publishStatus previousStewieConnectionStatus:(BOOL)connectionStatus currentStewieConnectionStatus:(BOOL)stewieConnectionStatus previousNetworkConnectionStatus:(BOOL)networkConnectionStatus currentNetworkConnectionStatus:(BOOL)self0 duration:(double)self1
{
  stewieConnectionStatusCopy = stewieConnectionStatus;
  connectionStatusCopy = connectionStatus;
  v18 = [IDSOffTheGridModeMetric alloc];
  v19 = [NSNumber numberWithInteger:mode];
  v20 = [NSNumber numberWithInteger:currentMode];
  v21 = [NSNumber numberWithInteger:status];
  v22 = [NSNumber numberWithInteger:publishStatus];
  v23 = [NSNumber numberWithDouble:duration];
  LOWORD(v29) = __PAIR16__(currentNetworkConnectionStatus, networkConnectionStatus);
  v24 = [v18 initWithPreviousMode:v19 currentMode:v20 previousPublishStatus:v21 currentPublishStatus:v22 previousStewieConnectionState:connectionStatusCopy currentStewieConnectionState:stewieConnectionStatusCopy previousNetworkConnectionState:v29 currentNetworkConnectionState:v23 duration:?];

  v25 = +[IDSFoundationLog IDSOffGridStateManager];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    name = [v24 name];
    dictionaryRepresentation = [v24 dictionaryRepresentation];
    *buf = 138412546;
    v31 = name;
    v32 = 2112;
    v33 = dictionaryRepresentation;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Metrics: Reporting %@ with %@", buf, 0x16u);
  }

  v28 = +[IDSCoreAnalyticsLogger defaultLogger];
  [v28 logMetric:v24];
}

- (void)_reportOffGridEntryMetricWithService:(int64_t)service source:(id)source success:(BOOL)success
{
  successCopy = success;
  sourceCopy = source;
  v8 = [IDSOffGridEntryMetric alloc];
  v9 = [NSNumber numberWithInteger:service];
  v10 = +[NSDate now];
  v12 = [v8 initWithService:v9 source:sourceCopy date:v10 success:successCopy];

  v11 = +[IDSCoreAnalyticsLogger defaultLogger];
  [v11 logMetric:v12];
}

- (void)_areAllPrimaryContactsIMLReachableWithCompletion:(id)completion
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003EAC20;
  v5[3] = &unk_100BDAB30;
  completionCopy = completion;
  v4 = completionCopy;
  [(IDSDXPCOffGridStateManager *)self fetchContactsOfType:3 completion:v5];
}

- (void)_scheduleClearSendOnConnectTimer
{
  clearSendKeyOnConnectTimer = self->_clearSendKeyOnConnectTimer;
  if (clearSendKeyOnConnectTimer)
  {
    [(IMDispatchTimer *)clearSendKeyOnConnectTimer invalidate];
    v4 = self->_clearSendKeyOnConnectTimer;
    self->_clearSendKeyOnConnectTimer = 0;
  }

  [(IDSDXPCOffGridStateManager *)self _clearSendKeyOnConnectInterval];
  v6 = v5;
  v7 = +[IDSFoundationLog IDSOffGridStateManager];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Scheduling a timer for clearSendKeyOnConnectTimer in: %f", buf, 0xCu);
  }

  v8 = [IMDispatchTimer alloc];
  v9 = im_primary_queue();
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1003EAF9C;
  v12[3] = &unk_100BD9268;
  v12[4] = self;
  v10 = [v8 initWithQueue:v9 interval:v6 repeats:0 handlerBlock:v12];
  v11 = self->_clearSendKeyOnConnectTimer;
  self->_clearSendKeyOnConnectTimer = v10;
}

- (void)_clearSendKeyOnConnectTimerFired
{
  [(IMDispatchTimer *)self->_clearSendKeyOnConnectTimer invalidate];
  clearSendKeyOnConnectTimer = self->_clearSendKeyOnConnectTimer;
  self->_clearSendKeyOnConnectTimer = 0;

  v4 = +[IDSFoundationLog IDSOffGridStateManager];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "clearSendPayloadKeyOnConnectTimer fired", buf, 2u);
  }

  v5 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003EB08C;
  block[3] = &unk_100BD6ED0;
  block[4] = self;
  dispatch_async(v5, block);
}

- (void)_clearSendKeyOnConnect
{
  if (self->_payloadKeyToSendOnIMLConnect)
  {
    v3 = +[IDSFoundationLog IDSOffGridStateManager];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10091C4C4();
    }

    v4 = [[NSDictionary alloc] initWithObjectsAndKeys:{@"Timed out while sending provisioned key on IML connect", NSLocalizedDescriptionKey, 0}];
    v5 = [NSError alloc];
    v6 = [v5 initWithDomain:IDSOffGridStatusErrorDomain code:6 userInfo:v4];
    [(IDSDXPCOffGridStateManager *)self _updateOffGridConnectActionWithPayloadKey:0];
    [(IDSDXPCOffGridStateManager *)self _setAndPersistOffGridMode:self->_offGridMode publishStatus:2];
    [(IDSDXPCOffGridStateManager *)self _updateClientsWithCurrentStateAndError:v6];
  }
}

- (void)_updateClientsWithCurrentStateAndError:(id)error
{
  errorCopy = error;
  v5 = +[IDSFoundationLog IDSOffGridStateManager];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    offGridMode = self->_offGridMode;
    publishStatus = self->_publishStatus;
    *buf = 134218240;
    v20 = offGridMode;
    v21 = 2048;
    v22 = publishStatus;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updating clients: Current OffGrid Mode: {%ld} Publish Status: {%ld}", buf, 0x16u);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  allKeys = [(NSMutableDictionary *)self->_clientRemoteObjects allKeys];
  v9 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(allKeys);
        }

        v13 = [(NSMutableDictionary *)self->_clientRemoteObjects objectForKeyedSubscript:*(*(&v14 + 1) + 8 * v12)];
        [v13 offGridModeUpdated:self->_offGridMode publishStatus:self->_publishStatus error:errorCopy];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)statusClient:(id)client publishRequestCompletedForStatusPayload:(id)payload successfully:(BOOL)successfully error:(id)error
{
  successfullyCopy = successfully;
  errorCopy = error;
  v9 = [(IDSDXPCOffGridStateManager *)self _offGridStatusFromStatusPayload:payload];
  if (errorCopy || !successfullyCopy || !v9)
  {
    [(IDSDXPCOffGridStateManager *)self _setAndPersistOffGridMode:self->_offGridMode publishStatus:2];
  }

  [(IDSDXPCOffGridStateManager *)self _updateClientsWithCurrentStateAndError:errorCopy];
}

- (void)availabilityChangedForIML:(BOOL)l
{
  lCopy = l;
  v5 = +[IDSFoundationLog IDSOffGridStateManager];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (lCopy)
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    if (self->_payloadKeyToSendOnIMLConnect)
    {
      v6 = @"YES";
    }

    *buf = 138412546;
    v21 = v7;
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "availabilityChangedForIML %@, has key to send %@", buf, 0x16u);
  }

  isStewieConnectedForIML = self->_isStewieConnectedForIML;
  self->_isStewieConnectedForIML = lCopy;
  clearSendKeyOnConnectTimer = self->_clearSendKeyOnConnectTimer;
  if (clearSendKeyOnConnectTimer)
  {
    [(IMDispatchTimer *)clearSendKeyOnConnectTimer invalidate];
    v10 = self->_clearSendKeyOnConnectTimer;
    self->_clearSendKeyOnConnectTimer = 0;
  }

  if (self->_offGridConnectAction == 1)
  {
    [(IDSDXPCOffGridStateManager *)self _sendOffGridStatusDecryptionKey];
  }

  if (isStewieConnectedForIML != lCopy)
  {
    v11 = +[NSDate now];
    v12 = [(IDSPersistentMap *)self->_persistentMap objectForKey:@"latest-metric-state-changed-date"];
    if (v12)
    {
      [v11 timeIntervalSinceDate:v12];
      v14 = v13;
    }

    else
    {
      v14 = 0.0;
    }

    offGridMode = self->_offGridMode;
    publishStatus = self->_publishStatus;
    v17 = self->_isStewieConnectedForIML;
    _isDeviceOnline = [(IDSDXPCOffGridStateManager *)self _isDeviceOnline];
    BYTE1(v19) = [(IDSDXPCOffGridStateManager *)self _isDeviceOnline];
    LOBYTE(v19) = _isDeviceOnline;
    [(IDSDXPCOffGridStateManager *)self _reportOffGridModeMetricWithPreviousMode:offGridMode currentMode:offGridMode previousPublishStatus:publishStatus currentPublishStatus:publishStatus previousStewieConnectionStatus:isStewieConnectedForIML currentStewieConnectionStatus:v17 previousNetworkConnectionStatus:v14 currentNetworkConnectionStatus:v19 duration:?];
    [(IDSPersistentMap *)self->_persistentMap setObject:v11 forKey:@"latest-metric-state-changed-date"];
  }
}

- (void)_sendOffGridStatusDecryptionKey
{
  ctMessagingClient = self->_ctMessagingClient;
  payloadKeyToSendOnIMLConnect = self->_payloadKeyToSendOnIMLConnect;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003EB600;
  v4[3] = &unk_100BD7108;
  v4[4] = self;
  [(IDSStewieCTMessagingClient *)ctMessagingClient sendOffGridStatusDecryptionKey:payloadKeyToSendOnIMLConnect completion:v4];
}

- (int64_t)_offGridStatusFromStatusPayload:(id)payload
{
  payloadCopy = payload;
  v4 = payloadCopy;
  if (payloadCopy && ([payloadCopy payloadDictionary], (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (v6 = v5, objc_msgSend(v4, "payloadDictionary"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "allKeys"), v8 = objc_claimAutoreleasedReturnValue(), v9 = IDSOffGridStatusPayloadStatusKey, v10 = objc_msgSend(v8, "containsObject:", IDSOffGridStatusPayloadStatusKey), v8, v7, v6, (v10 & 1) != 0))
  {
    payloadDictionary = [v4 payloadDictionary];
    v12 = [payloadDictionary objectForKey:v9];
    integerValue = [v12 integerValue];
  }

  else
  {
    v14 = +[IDSFoundationLog IDSOffGridStateManager];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10091C500();
    }

    integerValue = 0;
  }

  return integerValue;
}

- (double)_payloadValidityDuration
{
  v2 = [IDSServerBag sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"shared-channels-cp-status-payload-validity-sec"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 5184000.0;
  }

  return v5;
}

- (double)_payloadValidityShift
{
  v2 = [IDSServerBag sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"shared-channels-cp-status-publish-expiration-sec"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 2592000.0;
  }

  return v5;
}

- (unint64_t)_payloadCount
{
  integerValue = 1;
  v3 = [IDSServerBag sharedInstanceForBagType:1];
  v4 = [v3 objectForKey:@"shared-channels-cp-status-payload-intervals"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    integerValue = [v4 integerValue];
  }

  return integerValue;
}

- (unint64_t)_payloadCountPerDuration
{
  v2 = [IDSServerBag sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"shared-channels-cp-status-payloads-per-interval"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = 5;
  }

  return integerValue;
}

- (double)_successfulProvisionInterval
{
  v2 = [IDSServerBag sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"shared-channels-cp-successful-provision-interval"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 2592000.0;
  }

  return v5;
}

- (double)_failedProvisionInterval
{
  v2 = [IDSServerBag sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"shared-channels-cp-failed-provision-interval"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 600.0;
  }

  return v5;
}

- (double)_clearSendKeyOnConnectInterval
{
  v2 = [IDSServerBag sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"shared-channels-cp-send-key-on-connect-interval"];

  objc_opt_class();
  v4 = 10.0;
  if (objc_opt_isKindOfClass())
  {
    [v3 doubleValue];
    v4 = v5;
  }

  return v4;
}

- (double)_statePersistenceTimeInterval
{
  v2 = [IDSServerBag sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"shared-channels-cp-state-persistence-time-interval"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 2592000.0;
  }

  return v5;
}

- (double)_provisionOnInviteDebounceTimeInterval
{
  v2 = [IDSServerBag sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"shared-channels-cp-provision-on-invitation-debounce-delay-time-interval"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 120.0;
  }

  return v5;
}

- (int64_t)_offGridModeDisableWhenOnlineForTimeInterval
{
  v2 = [IDSServerBag sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"shared-channels-cp-disable-when-online-interval"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = 900;
  }

  if (+[IMUserDefaults offGridModeDisableWhenOnlineForTimeInterval]>= 1)
  {
    integerValue = +[IMUserDefaults offGridModeDisableWhenOnlineForTimeInterval];
  }

  return integerValue;
}

- (void)connectionMonitorDidUpdate:(id)update
{
  isImmediatelyReachable = [update isImmediatelyReachable];
  onlineSince = self->_onlineSince;
  if (isImmediatelyReachable)
  {
    if (onlineSince)
    {
      goto LABEL_6;
    }

    v6 = +[NSDate now];
    onlineSince = self->_onlineSince;
  }

  else
  {
    v6 = 0;
  }

  self->_onlineSince = v6;

LABEL_6:
  if (self->_isConnected == isImmediatelyReachable)
  {
    v7 = isImmediatelyReachable ^ 1;
  }

  else
  {
    v8 = +[IDSFoundationLog IDSOffGridStateManager];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = @"NO";
      if (isImmediatelyReachable)
      {
        v9 = @"YES";
      }

      *buf = 138412290;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "connectionMonitorDidUpdate : %@", buf, 0xCu);
    }

    self->_isConnected = isImmediatelyReachable;
    v10 = +[NSDate now];
    v11 = [(IDSPersistentMap *)self->_persistentMap objectForKey:@"latest-metric-state-changed-date"];
    if (v11)
    {
      [v10 timeIntervalSinceDate:v11];
    }

    else
    {
      v12 = 0.0;
    }

    v7 = isImmediatelyReachable ^ 1;
    BYTE1(v16) = isImmediatelyReachable;
    LOBYTE(v16) = isImmediatelyReachable ^ 1;
    [(IDSDXPCOffGridStateManager *)self _reportOffGridModeMetricWithPreviousMode:self->_offGridMode currentMode:self->_offGridMode previousPublishStatus:self->_publishStatus currentPublishStatus:self->_publishStatus previousStewieConnectionStatus:self->_isStewieConnectedForIML currentStewieConnectionStatus:self->_isStewieConnectedForIML previousNetworkConnectionStatus:v12 currentNetworkConnectionStatus:v16 duration:?];
    [(IDSPersistentMap *)self->_persistentMap setObject:v10 forKey:@"latest-metric-state-changed-date"];
  }

  v13 = +[IMSystemMonitor sharedInstance];
  isSystemLocked = [v13 isSystemLocked];

  if ((isSystemLocked & 1) == 0 && (v7 & 1) == 0 && self->_offGridMode == 2)
  {
    v15 = +[IDSFoundationLog IDSOffGridStateManager];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Disabling offgrid mode post unlock", buf, 2u);
    }

    [(IDSDXPCOffGridStateManager *)self _disableOffGridModeViaStatusClient];
  }

  if (isImmediatelyReachable)
  {
    [(IDSDXPCOffGridStateManager *)self _provisionOffGridPayloadsShouldForce:0];
  }
}

- (void)_registerSysdiagnoseBlock
{
  objc_initWeak(&location, self);
  if (_os_feature_enabled_impl())
  {
    v2 = +[IDSDiagnosticInfoHandler sharedInstance];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1003EC1C8;
    v7[3] = &unk_100BDAB58;
    v3 = &v8;
    objc_copyWeak(&v8, &location);
    v4 = im_primary_queue();
    [v2 registerDiagnosticInfoBlock:v7 title:@"IDS-OffGrid-State-Manager" queue:v4];
  }

  else
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1003EC2F8;
    v5[3] = &unk_100BDAB80;
    v3 = &v6;
    objc_copyWeak(&v6, &location);
    v2 = im_primary_queue();
    sub_1006085C4(v5, @"IDS-OffGrid-State-Manager", v2);
  }

  objc_destroyWeak(v3);
  objc_destroyWeak(&location);
}

@end