@interface IDSNRDevicePreferencesHandler
- (IDSNRDevicePreferencesHandler)initWithDeviceIdentifier:(id)identifier;
- (void)_annouceAvailabilityForCloudMessaging;
- (void)_reportPreferInfraWiFiToPowerLogs:(BOOL)logs;
- (void)annouceAvailabilityForCloudMessaging;
- (void)cancel;
- (void)idsDeviceOnlineMonitor:(id)monitor statusChanged:(unsigned int)changed;
- (void)localSetUpCompleted;
- (void)localSetUpStarted;
- (void)releaseQuickRelay;
- (void)requestQuickRelay;
- (void)revokeAvailabilityForCloudMessaging;
- (void)setAllowedTrafficClasses:(id)classes;
- (void)setBluetoothLinkPreferences:(id)preferences inputbps:(id)inputbps outputbps:(id)outputbps;
- (void)setCompanionLinkPreferences:(BOOL)preferences;
- (void)setPreferInfraWiFiRequest:(BOOL)request services:(id)services;
- (void)setQuickRelayRequest:(BOOL)request;
@end

@implementation IDSNRDevicePreferencesHandler

- (IDSNRDevicePreferencesHandler)initWithDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v36.receiver = self;
  v36.super_class = IDSNRDevicePreferencesHandler;
  v5 = [(IDSNRDevicePreferencesHandler *)&v36 init];
  if (v5)
  {
    if (identifierCopy)
    {
      v6 = [NRDeviceIdentifier newDeviceIdentifierWithBluetoothUUID:identifierCopy];
      if (v6)
      {
        v7 = [[NRDevicePreferences alloc] initWithDeviceIdentifier:v6];
        nrDevicePreferences = v5->_nrDevicePreferences;
        v5->_nrDevicePreferences = v7;

        v9 = v5->_nrDevicePreferences;
        v10 = +[IDSFoundationLog IPsecLink];
        v11 = v10;
        if (v9)
        {
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *v38 = v6;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "NRDevicePreferences created with NRDeviceIdentifier %@.", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_10092BB6C(identifierCopy, v6, v11);
        }

        v13 = objc_alloc_init(NSMutableSet);
        servicesPreferringInfraWiFi = v5->_servicesPreferringInfraWiFi;
        v5->_servicesPreferringInfraWiFi = v13;

        *&v5->_quickRelayRequestsCount = 0;
        v15 = +[IDSPairingManager sharedInstance];
        pairedDeviceUniqueID = [v15 pairedDeviceUniqueID];

        v16 = sub_1005C03DC();
        v17 = +[IDSServerBag sharedInstance];
        v18 = [v17 objectForKey:@"cloud-messaging-presence-operation-mode"];

        if (v18)
        {
          objc_opt_class();
          v19 = 2;
          if (objc_opt_isKindOfClass())
          {
            unsignedIntValue = [v18 unsignedIntValue];
            if (unsignedIntValue >= 2)
            {
              v19 = 2;
            }

            else
            {
              v19 = unsignedIntValue;
            }
          }
        }

        else
        {
          v19 = 2;
        }

        v5->_presenceOperationMode = v19;
        if (v19)
        {
          v21 = v16;
        }

        else
        {
          v21 = 0;
        }

        if (v21)
        {
          v22 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
          v23 = dispatch_queue_attr_make_with_qos_class(v22, QOS_CLASS_USER_INITIATED, 0);
          v24 = dispatch_queue_create("SKPresenceQueue", v23);

          v25 = [[IDSDeviceOnlineMonitor alloc] initWithDelegate:v5 uniqueIdentifier:pairedDeviceUniqueID queue:v24];
          deviceOnlineMonitor = v5->_deviceOnlineMonitor;
          v5->_deviceOnlineMonitor = v25;
        }

        v27 = _os_feature_enabled_impl();
        if ((v27 & 1) == 0)
        {
          v5->_presenceOperationMode = 0;
        }

        v28 = +[IDSServerBag sharedInstance];
        v29 = [v28 objectForKey:@"cloud-messaging-presence-announce-delay"];

        if (v29 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          unsignedIntValue2 = [v29 unsignedIntValue];
        }

        else
        {
          unsignedIntValue2 = 665;
        }

        v5->_announcePresenceDelayInSeconds = unsignedIntValue2;
        v31 = +[IDSFoundationLog IPsecLink];
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = @"NO";
          presenceOperationMode = v5->_presenceOperationMode;
          if (v27)
          {
            v34 = @"YES";
          }

          else
          {
            v34 = @"NO";
          }

          *buf = 67109634;
          *v38 = presenceOperationMode;
          *&v38[4] = 2112;
          if (v16)
          {
            v32 = @"YES";
          }

          *&v38[6] = v34;
          v39 = 2112;
          v40 = v32;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "IDSNRDevicePreferencesHandler: CloudMessagingPrsenceOperationMode: %d, feature flag:%@, remoteSupportOnlineMonitoring:%@", buf, 0x1Cu);
        }
      }

      else
      {
        pairedDeviceUniqueID = +[IDSFoundationLog IPsecLink];
        if (os_log_type_enabled(pairedDeviceUniqueID, OS_LOG_TYPE_ERROR))
        {
          sub_10092BBF4(identifierCopy, pairedDeviceUniqueID);
        }
      }
    }

    else
    {
      v6 = +[IDSFoundationLog IPsecLink];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10092BC6C(v6);
      }
    }
  }

  return v5;
}

- (void)setBluetoothLinkPreferences:(id)preferences inputbps:(id)inputbps outputbps:(id)outputbps
{
  outputbpsCopy = outputbps;
  inputbpsCopy = inputbps;
  preferencesCopy = preferences;
  v12 = objc_alloc_init(NRBluetoothLinkPreferences);
  [v12 setPacketsPerSecond:preferencesCopy];

  [v12 setInputBytesPerSecond:inputbpsCopy];
  [v12 setOutputBytesPerSecond:outputbpsCopy];

  nrDevicePreferences = [(IDSNRDevicePreferencesHandler *)self nrDevicePreferences];
  [nrDevicePreferences setBluetoothLinkPreferences:v12];
}

- (void)setCompanionLinkPreferences:(BOOL)preferences
{
  preferencesCopy = preferences;
  v5 = +[IDSFoundationLog IPsecLink];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (preferencesCopy)
    {
      v6 = @"YES";
    }

    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "IDSNRDevicePreferencesHandler:setCompanionLinkPreferences: %@", &v9, 0xCu);
  }

  if (preferencesCopy)
  {
    v7 = [[NRCompanionLinkPreferences alloc] initWithServiceClass:3];
  }

  else
  {
    v7 = 0;
  }

  nrDevicePreferences = [(IDSNRDevicePreferencesHandler *)self nrDevicePreferences];
  [nrDevicePreferences setCompanionLinkPreferences:v7];
}

- (void)setPreferInfraWiFiRequest:(BOOL)request services:(id)services
{
  requestCopy = request;
  servicesCopy = services;
  v7 = servicesCopy;
  if (requestCopy)
  {
    v32 = 0uLL;
    v33 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    v8 = [servicesCopy countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v31;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v31 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v30 + 1) + 8 * i);
          servicesPreferringInfraWiFi = [(IDSNRDevicePreferencesHandler *)self servicesPreferringInfraWiFi];
          v14 = [servicesPreferringInfraWiFi containsObject:v12];

          if ((v14 & 1) == 0)
          {
            servicesPreferringInfraWiFi2 = [(IDSNRDevicePreferencesHandler *)self servicesPreferringInfraWiFi];
            [servicesPreferringInfraWiFi2 addObject:v12];

            nrDevicePreferences = [(IDSNRDevicePreferencesHandler *)self nrDevicePreferences];
            [nrDevicePreferences addPreferWiFiRequest];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v28 = 0uLL;
    v29 = 0uLL;
    v26 = 0uLL;
    v27 = 0uLL;
    v17 = [servicesCopy countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v27;
      do
      {
        for (j = 0; j != v18; j = j + 1)
        {
          if (*v27 != v19)
          {
            objc_enumerationMutation(v7);
          }

          v21 = *(*(&v26 + 1) + 8 * j);
          servicesPreferringInfraWiFi3 = [(IDSNRDevicePreferencesHandler *)self servicesPreferringInfraWiFi];
          v23 = [servicesPreferringInfraWiFi3 containsObject:v21];

          if (v23)
          {
            servicesPreferringInfraWiFi4 = [(IDSNRDevicePreferencesHandler *)self servicesPreferringInfraWiFi];
            [servicesPreferringInfraWiFi4 removeObject:v21];

            nrDevicePreferences2 = [(IDSNRDevicePreferencesHandler *)self nrDevicePreferences];
            [nrDevicePreferences2 removePreferWiFiRequest];
          }
        }

        v18 = [v7 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v18);
    }
  }

  [(IDSNRDevicePreferencesHandler *)self _reportPreferInfraWiFiToPowerLogs:requestCopy];
}

- (void)localSetUpStarted
{
  v3 = +[IDSFoundationLog IPsecLink];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Calling [NRDevicePreferences deviceSetupStarted:]", v5, 2u);
  }

  nrDevicePreferences = [(IDSNRDevicePreferencesHandler *)self nrDevicePreferences];
  [nrDevicePreferences deviceSetupStarted];
}

- (void)localSetUpCompleted
{
  v3 = +[IDSFoundationLog IPsecLink];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Calling [NRDevicePreferences deviceSetupCompleted:]", v5, 2u);
  }

  nrDevicePreferences = [(IDSNRDevicePreferencesHandler *)self nrDevicePreferences];
  [nrDevicePreferences deviceSetupCompleted];
}

- (void)_reportPreferInfraWiFiToPowerLogs:(BOOL)logs
{
  logsCopy = logs;
  theDict = objc_alloc_init(NSMutableDictionary);
  servicesPreferringInfraWiFi = [(IDSNRDevicePreferencesHandler *)self servicesPreferringInfraWiFi];
  if (servicesPreferringInfraWiFi)
  {
    CFDictionarySetValue(theDict, @"IDSServicePrefersInfraWifi", servicesPreferringInfraWiFi);
  }

  v6 = [NSNumber numberWithBool:logsCopy];
  if (v6)
  {
    CFDictionarySetValue(theDict, @"InfraWiFiState", v6);
  }

  IDSPowerLogDictionary();
}

- (void)setAllowedTrafficClasses:(id)classes
{
  classesCopy = classes;
  nrDevicePreferences = [(IDSNRDevicePreferencesHandler *)self nrDevicePreferences];
  [nrDevicePreferences setPolicyTrafficClassifiers:classesCopy];
}

- (void)setQuickRelayRequest:(BOOL)request
{
  requestCopy = request;
  if (request)
  {
    [(IDSNRDevicePreferencesHandler *)self setQuickRelayRequestsCount:[(IDSNRDevicePreferencesHandler *)self quickRelayRequestsCount]+ 1];
    [(IDSNRDevicePreferencesHandler *)self requestQuickRelay];
  }

  else
  {
    [(IDSNRDevicePreferencesHandler *)self setQuickRelayRequestsCount:?];
    [(IDSNRDevicePreferencesHandler *)self releaseQuickRelay];
  }

  deviceOnlineMonitor = [(IDSNRDevicePreferencesHandler *)self deviceOnlineMonitor];

  if (deviceOnlineMonitor)
  {
    deviceOnlineMonitor2 = [(IDSNRDevicePreferencesHandler *)self deviceOnlineMonitor];
    status = [deviceOnlineMonitor2 status];
  }

  else
  {
    status = 0;
  }

  v8 = +[IDSFoundationLog IPsecLink];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (requestCopy)
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    quickRelayRequestsCount = [(IDSNRDevicePreferencesHandler *)self quickRelayRequestsCount];
    v11 = sub_10050A848(status);
    v12 = 138412802;
    v13 = v9;
    v14 = 2048;
    v15 = quickRelayRequestsCount;
    v16 = 2112;
    v17 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Called [NRDevicePreferences setQuickRelayRequest:] {wantsQuickRelay: %@}, {quickRelayRequestsCount: %lu}, {remoteStatus:%@}", &v12, 0x20u);
  }
}

- (void)cancel
{
  nrDevicePreferences = [(IDSNRDevicePreferencesHandler *)self nrDevicePreferences];
  [nrDevicePreferences cancel];

  nrDevicePreferences2 = [(IDSNRDevicePreferencesHandler *)self nrDevicePreferences];
  [nrDevicePreferences2 removePreferWiFiRequest];

  servicesPreferringInfraWiFi = [(IDSNRDevicePreferencesHandler *)self servicesPreferringInfraWiFi];

  if (servicesPreferringInfraWiFi)
  {
    servicesPreferringInfraWiFi2 = [(IDSNRDevicePreferencesHandler *)self servicesPreferringInfraWiFi];
    [servicesPreferringInfraWiFi2 removeAllObjects];

    [(IDSNRDevicePreferencesHandler *)self _reportPreferInfraWiFiToPowerLogs:0];
    servicesPreferringInfraWiFi3 = [(IDSNRDevicePreferencesHandler *)self servicesPreferringInfraWiFi];
    v8 = [servicesPreferringInfraWiFi3 count];

    if (!v8)
    {
      [(IDSNRDevicePreferencesHandler *)self setServicesPreferringInfraWiFi:0];
    }
  }

  deviceOnlineMonitor = [(IDSNRDevicePreferencesHandler *)self deviceOnlineMonitor];

  if (deviceOnlineMonitor)
  {
    deviceOnlineMonitor2 = [(IDSNRDevicePreferencesHandler *)self deviceOnlineMonitor];
    [deviceOnlineMonitor2 releasePresence];

    deviceOnlineMonitor3 = [(IDSNRDevicePreferencesHandler *)self deviceOnlineMonitor];
    [deviceOnlineMonitor3 stopMonitoring];

    [(IDSNRDevicePreferencesHandler *)self setDeviceOnlineMonitor:0];
  }
}

- (void)requestQuickRelay
{
  deviceOnlineMonitor = [(IDSNRDevicePreferencesHandler *)self deviceOnlineMonitor];

  if (deviceOnlineMonitor)
  {
    deviceOnlineMonitor2 = [(IDSNRDevicePreferencesHandler *)self deviceOnlineMonitor];
    if ([deviceOnlineMonitor2 status] == 3)
    {
    }

    else
    {
      deviceOnlineMonitor3 = [(IDSNRDevicePreferencesHandler *)self deviceOnlineMonitor];
      status = [deviceOnlineMonitor3 status];

      if (status != 1)
      {
        goto LABEL_9;
      }
    }

    nrDevicePreferences = [(IDSNRDevicePreferencesHandler *)self nrDevicePreferences];
    [nrDevicePreferences addQuickRelayRequest];

    [(IDSNRDevicePreferencesHandler *)self setCopyOfQuickRelayRequestsCountOnTheLastRequest:[(IDSNRDevicePreferencesHandler *)self quickRelayRequestsCount]];
LABEL_9:
    if (self->_presenceOperationMode == 1)
    {
      deviceOnlineMonitor4 = [(IDSNRDevicePreferencesHandler *)self deviceOnlineMonitor];
      [deviceOnlineMonitor4 startMonitoring];
    }

    return;
  }

  nrDevicePreferences2 = [(IDSNRDevicePreferencesHandler *)self nrDevicePreferences];
  [nrDevicePreferences2 addQuickRelayRequest];

  quickRelayRequestsCount = [(IDSNRDevicePreferencesHandler *)self quickRelayRequestsCount];

  [(IDSNRDevicePreferencesHandler *)self setCopyOfQuickRelayRequestsCountOnTheLastRequest:quickRelayRequestsCount];
}

- (void)releaseQuickRelay
{
  nrDevicePreferences = [(IDSNRDevicePreferencesHandler *)self nrDevicePreferences];
  [nrDevicePreferences removeAllQuickRelayRequests];

  [(IDSNRDevicePreferencesHandler *)self setCopyOfQuickRelayRequestsCountOnTheLastRequest:0];
  deviceOnlineMonitor = [(IDSNRDevicePreferencesHandler *)self deviceOnlineMonitor];

  if (deviceOnlineMonitor && self->_presenceOperationMode == 1)
  {
    deviceOnlineMonitor2 = [(IDSNRDevicePreferencesHandler *)self deviceOnlineMonitor];
    [deviceOnlineMonitor2 stopMonitoring];
  }
}

- (void)annouceAvailabilityForCloudMessaging
{
  im_assert_primary_base_queue();
  announcePresenceBlock = [(IDSNRDevicePreferencesHandler *)self announcePresenceBlock];

  if (announcePresenceBlock)
  {
    v4 = +[IDSFoundationLog IPsecLink];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      announcePresenceBlock2 = [(IDSNRDevicePreferencesHandler *)self announcePresenceBlock];
      v6 = objc_retainBlock(announcePresenceBlock2);
      *buf = 134217984;
      v22 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Already have scheduled {block:%p}", buf, 0xCu);
    }
  }

  else
  {
    objc_initWeak(&location, self);
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_1005C11F4;
    v18 = &unk_100BD9D38;
    objc_copyWeak(&v19, &location);
    v7 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, &v15);
    [(IDSNRDevicePreferencesHandler *)self setAnnouncePresenceBlock:v7, v15, v16, v17, v18];

    v8 = dispatch_time(0, 1000000000 * [(IDSNRDevicePreferencesHandler *)self announcePresenceDelayInSeconds]);
    v9 = im_primary_base_queue();
    announcePresenceBlock3 = [(IDSNRDevicePreferencesHandler *)self announcePresenceBlock];
    dispatch_after(v8, v9, announcePresenceBlock3);

    v11 = +[IDSFoundationLog IPsecLink];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      announcePresenceBlock4 = [(IDSNRDevicePreferencesHandler *)self announcePresenceBlock];
      v13 = objc_retainBlock(announcePresenceBlock4);
      announcePresenceDelayInSeconds = [(IDSNRDevicePreferencesHandler *)self announcePresenceDelayInSeconds];
      *buf = 134218240;
      v22 = v13;
      v23 = 1024;
      v24 = announcePresenceDelayInSeconds;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Scheduled to announce presence {block:%p} in %d seconds", buf, 0x12u);
    }

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }
}

- (void)_annouceAvailabilityForCloudMessaging
{
  deviceOnlineMonitor = [(IDSNRDevicePreferencesHandler *)self deviceOnlineMonitor];

  if (!deviceOnlineMonitor && self->_presenceOperationMode && sub_1005C03DC())
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_USER_INITIATED, 0);
    v9 = dispatch_queue_create("SKPresenceQueue", v8);

    v10 = +[IDSPairingManager sharedInstance];
    pairedDeviceUniqueID = [v10 pairedDeviceUniqueID];

    v12 = [[IDSDeviceOnlineMonitor alloc] initWithDelegate:self uniqueIdentifier:pairedDeviceUniqueID queue:v9];
    deviceOnlineMonitor = self->_deviceOnlineMonitor;
    self->_deviceOnlineMonitor = v12;

    v14 = +[IDSFoundationLog IPsecLink];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      presenceOperationMode = self->_presenceOperationMode;
      v16[0] = 67109120;
      v16[1] = presenceOperationMode;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Starting IDSDeviceOnlineMonitor {presenceOperationMode:%d}", v16, 8u);
    }
  }

  deviceOnlineMonitor2 = [(IDSNRDevicePreferencesHandler *)self deviceOnlineMonitor];

  if (deviceOnlineMonitor2)
  {
    deviceOnlineMonitor3 = [(IDSNRDevicePreferencesHandler *)self deviceOnlineMonitor];
    [deviceOnlineMonitor3 assertPresence];

    if (self->_presenceOperationMode == 2)
    {
      deviceOnlineMonitor4 = [(IDSNRDevicePreferencesHandler *)self deviceOnlineMonitor];
      [deviceOnlineMonitor4 startMonitoring];
    }
  }
}

- (void)revokeAvailabilityForCloudMessaging
{
  im_assert_primary_base_queue();
  announcePresenceBlock = [(IDSNRDevicePreferencesHandler *)self announcePresenceBlock];

  if (announcePresenceBlock)
  {
    v4 = +[IDSFoundationLog IPsecLink];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      announcePresenceBlock2 = [(IDSNRDevicePreferencesHandler *)self announcePresenceBlock];
      v6 = objc_retainBlock(announcePresenceBlock2);
      v11 = 134217984;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Cancelling scheduled {block:%p}", &v11, 0xCu);
    }

    announcePresenceBlock3 = [(IDSNRDevicePreferencesHandler *)self announcePresenceBlock];
    dispatch_block_cancel(announcePresenceBlock3);

    [(IDSNRDevicePreferencesHandler *)self setAnnouncePresenceBlock:0];
  }

  deviceOnlineMonitor = [(IDSNRDevicePreferencesHandler *)self deviceOnlineMonitor];

  if (deviceOnlineMonitor)
  {
    deviceOnlineMonitor2 = [(IDSNRDevicePreferencesHandler *)self deviceOnlineMonitor];
    [deviceOnlineMonitor2 releasePresence];

    deviceOnlineMonitor3 = [(IDSNRDevicePreferencesHandler *)self deviceOnlineMonitor];
    [deviceOnlineMonitor3 stopMonitoring];
  }
}

- (void)idsDeviceOnlineMonitor:(id)monitor statusChanged:(unsigned int)changed
{
  v6 = +[IDSFoundationLog IPsecLink];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = sub_10050A848(changed);
    v8 = 138412546;
    v9 = v7;
    v10 = 2048;
    quickRelayRequestsCount = [(IDSNRDevicePreferencesHandler *)self quickRelayRequestsCount];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "idsDeviceOnlineMonitor status changed: {newStatus:%@}, {quickRelayRequestsCount: %lu}", &v8, 0x16u);
  }

  if (changed == 3)
  {
    if ([(IDSNRDevicePreferencesHandler *)self areThereFreshQuickRelayRequests])
    {
      [(IDSNRDevicePreferencesHandler *)self requestQuickRelay];
    }
  }
}

@end