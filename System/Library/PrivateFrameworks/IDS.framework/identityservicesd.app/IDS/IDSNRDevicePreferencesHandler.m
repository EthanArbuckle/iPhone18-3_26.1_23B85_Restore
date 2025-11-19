@interface IDSNRDevicePreferencesHandler
- (IDSNRDevicePreferencesHandler)initWithDeviceIdentifier:(id)a3;
- (void)_annouceAvailabilityForCloudMessaging;
- (void)_reportPreferInfraWiFiToPowerLogs:(BOOL)a3;
- (void)annouceAvailabilityForCloudMessaging;
- (void)cancel;
- (void)idsDeviceOnlineMonitor:(id)a3 statusChanged:(unsigned int)a4;
- (void)localSetUpCompleted;
- (void)localSetUpStarted;
- (void)releaseQuickRelay;
- (void)requestQuickRelay;
- (void)revokeAvailabilityForCloudMessaging;
- (void)setAllowedTrafficClasses:(id)a3;
- (void)setBluetoothLinkPreferences:(id)a3 inputbps:(id)a4 outputbps:(id)a5;
- (void)setCompanionLinkPreferences:(BOOL)a3;
- (void)setPreferInfraWiFiRequest:(BOOL)a3 services:(id)a4;
- (void)setQuickRelayRequest:(BOOL)a3;
@end

@implementation IDSNRDevicePreferencesHandler

- (IDSNRDevicePreferencesHandler)initWithDeviceIdentifier:(id)a3
{
  v4 = a3;
  v36.receiver = self;
  v36.super_class = IDSNRDevicePreferencesHandler;
  v5 = [(IDSNRDevicePreferencesHandler *)&v36 init];
  if (v5)
  {
    if (v4)
    {
      v6 = [NRDeviceIdentifier newDeviceIdentifierWithBluetoothUUID:v4];
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
          sub_10092BB6C(v4, v6, v11);
        }

        v13 = objc_alloc_init(NSMutableSet);
        servicesPreferringInfraWiFi = v5->_servicesPreferringInfraWiFi;
        v5->_servicesPreferringInfraWiFi = v13;

        *&v5->_quickRelayRequestsCount = 0;
        v15 = +[IDSPairingManager sharedInstance];
        v12 = [v15 pairedDeviceUniqueID];

        v16 = sub_1005C03DC();
        v17 = +[IDSServerBag sharedInstance];
        v18 = [v17 objectForKey:@"cloud-messaging-presence-operation-mode"];

        if (v18)
        {
          objc_opt_class();
          v19 = 2;
          if (objc_opt_isKindOfClass())
          {
            v20 = [v18 unsignedIntValue];
            if (v20 >= 2)
            {
              v19 = 2;
            }

            else
            {
              v19 = v20;
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

          v25 = [[IDSDeviceOnlineMonitor alloc] initWithDelegate:v5 uniqueIdentifier:v12 queue:v24];
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
          v30 = [v29 unsignedIntValue];
        }

        else
        {
          v30 = 665;
        }

        v5->_announcePresenceDelayInSeconds = v30;
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
        v12 = +[IDSFoundationLog IPsecLink];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_10092BBF4(v4, v12);
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

- (void)setBluetoothLinkPreferences:(id)a3 inputbps:(id)a4 outputbps:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v12 = objc_alloc_init(NRBluetoothLinkPreferences);
  [v12 setPacketsPerSecond:v10];

  [v12 setInputBytesPerSecond:v9];
  [v12 setOutputBytesPerSecond:v8];

  v11 = [(IDSNRDevicePreferencesHandler *)self nrDevicePreferences];
  [v11 setBluetoothLinkPreferences:v12];
}

- (void)setCompanionLinkPreferences:(BOOL)a3
{
  v3 = a3;
  v5 = +[IDSFoundationLog IPsecLink];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (v3)
    {
      v6 = @"YES";
    }

    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "IDSNRDevicePreferencesHandler:setCompanionLinkPreferences: %@", &v9, 0xCu);
  }

  if (v3)
  {
    v7 = [[NRCompanionLinkPreferences alloc] initWithServiceClass:3];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(IDSNRDevicePreferencesHandler *)self nrDevicePreferences];
  [v8 setCompanionLinkPreferences:v7];
}

- (void)setPreferInfraWiFiRequest:(BOOL)a3 services:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = v6;
  if (v4)
  {
    v32 = 0uLL;
    v33 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    v8 = [v6 countByEnumeratingWithState:&v30 objects:v35 count:16];
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
          v13 = [(IDSNRDevicePreferencesHandler *)self servicesPreferringInfraWiFi];
          v14 = [v13 containsObject:v12];

          if ((v14 & 1) == 0)
          {
            v15 = [(IDSNRDevicePreferencesHandler *)self servicesPreferringInfraWiFi];
            [v15 addObject:v12];

            v16 = [(IDSNRDevicePreferencesHandler *)self nrDevicePreferences];
            [v16 addPreferWiFiRequest];
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
    v17 = [v6 countByEnumeratingWithState:&v26 objects:v34 count:16];
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
          v22 = [(IDSNRDevicePreferencesHandler *)self servicesPreferringInfraWiFi];
          v23 = [v22 containsObject:v21];

          if (v23)
          {
            v24 = [(IDSNRDevicePreferencesHandler *)self servicesPreferringInfraWiFi];
            [v24 removeObject:v21];

            v25 = [(IDSNRDevicePreferencesHandler *)self nrDevicePreferences];
            [v25 removePreferWiFiRequest];
          }
        }

        v18 = [v7 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v18);
    }
  }

  [(IDSNRDevicePreferencesHandler *)self _reportPreferInfraWiFiToPowerLogs:v4];
}

- (void)localSetUpStarted
{
  v3 = +[IDSFoundationLog IPsecLink];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Calling [NRDevicePreferences deviceSetupStarted:]", v5, 2u);
  }

  v4 = [(IDSNRDevicePreferencesHandler *)self nrDevicePreferences];
  [v4 deviceSetupStarted];
}

- (void)localSetUpCompleted
{
  v3 = +[IDSFoundationLog IPsecLink];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Calling [NRDevicePreferences deviceSetupCompleted:]", v5, 2u);
  }

  v4 = [(IDSNRDevicePreferencesHandler *)self nrDevicePreferences];
  [v4 deviceSetupCompleted];
}

- (void)_reportPreferInfraWiFiToPowerLogs:(BOOL)a3
{
  v3 = a3;
  theDict = objc_alloc_init(NSMutableDictionary);
  v5 = [(IDSNRDevicePreferencesHandler *)self servicesPreferringInfraWiFi];
  if (v5)
  {
    CFDictionarySetValue(theDict, @"IDSServicePrefersInfraWifi", v5);
  }

  v6 = [NSNumber numberWithBool:v3];
  if (v6)
  {
    CFDictionarySetValue(theDict, @"InfraWiFiState", v6);
  }

  IDSPowerLogDictionary();
}

- (void)setAllowedTrafficClasses:(id)a3
{
  v4 = a3;
  v5 = [(IDSNRDevicePreferencesHandler *)self nrDevicePreferences];
  [v5 setPolicyTrafficClassifiers:v4];
}

- (void)setQuickRelayRequest:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    [(IDSNRDevicePreferencesHandler *)self setQuickRelayRequestsCount:[(IDSNRDevicePreferencesHandler *)self quickRelayRequestsCount]+ 1];
    [(IDSNRDevicePreferencesHandler *)self requestQuickRelay];
  }

  else
  {
    [(IDSNRDevicePreferencesHandler *)self setQuickRelayRequestsCount:?];
    [(IDSNRDevicePreferencesHandler *)self releaseQuickRelay];
  }

  v5 = [(IDSNRDevicePreferencesHandler *)self deviceOnlineMonitor];

  if (v5)
  {
    v6 = [(IDSNRDevicePreferencesHandler *)self deviceOnlineMonitor];
    v7 = [v6 status];
  }

  else
  {
    v7 = 0;
  }

  v8 = +[IDSFoundationLog IPsecLink];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (v3)
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    v10 = [(IDSNRDevicePreferencesHandler *)self quickRelayRequestsCount];
    v11 = sub_10050A848(v7);
    v12 = 138412802;
    v13 = v9;
    v14 = 2048;
    v15 = v10;
    v16 = 2112;
    v17 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Called [NRDevicePreferences setQuickRelayRequest:] {wantsQuickRelay: %@}, {quickRelayRequestsCount: %lu}, {remoteStatus:%@}", &v12, 0x20u);
  }
}

- (void)cancel
{
  v3 = [(IDSNRDevicePreferencesHandler *)self nrDevicePreferences];
  [v3 cancel];

  v4 = [(IDSNRDevicePreferencesHandler *)self nrDevicePreferences];
  [v4 removePreferWiFiRequest];

  v5 = [(IDSNRDevicePreferencesHandler *)self servicesPreferringInfraWiFi];

  if (v5)
  {
    v6 = [(IDSNRDevicePreferencesHandler *)self servicesPreferringInfraWiFi];
    [v6 removeAllObjects];

    [(IDSNRDevicePreferencesHandler *)self _reportPreferInfraWiFiToPowerLogs:0];
    v7 = [(IDSNRDevicePreferencesHandler *)self servicesPreferringInfraWiFi];
    v8 = [v7 count];

    if (!v8)
    {
      [(IDSNRDevicePreferencesHandler *)self setServicesPreferringInfraWiFi:0];
    }
  }

  v9 = [(IDSNRDevicePreferencesHandler *)self deviceOnlineMonitor];

  if (v9)
  {
    v10 = [(IDSNRDevicePreferencesHandler *)self deviceOnlineMonitor];
    [v10 releasePresence];

    v11 = [(IDSNRDevicePreferencesHandler *)self deviceOnlineMonitor];
    [v11 stopMonitoring];

    [(IDSNRDevicePreferencesHandler *)self setDeviceOnlineMonitor:0];
  }
}

- (void)requestQuickRelay
{
  v3 = [(IDSNRDevicePreferencesHandler *)self deviceOnlineMonitor];

  if (v3)
  {
    v4 = [(IDSNRDevicePreferencesHandler *)self deviceOnlineMonitor];
    if ([v4 status] == 3)
    {
    }

    else
    {
      v7 = [(IDSNRDevicePreferencesHandler *)self deviceOnlineMonitor];
      v8 = [v7 status];

      if (v8 != 1)
      {
        goto LABEL_9;
      }
    }

    v9 = [(IDSNRDevicePreferencesHandler *)self nrDevicePreferences];
    [v9 addQuickRelayRequest];

    [(IDSNRDevicePreferencesHandler *)self setCopyOfQuickRelayRequestsCountOnTheLastRequest:[(IDSNRDevicePreferencesHandler *)self quickRelayRequestsCount]];
LABEL_9:
    if (self->_presenceOperationMode == 1)
    {
      v10 = [(IDSNRDevicePreferencesHandler *)self deviceOnlineMonitor];
      [v10 startMonitoring];
    }

    return;
  }

  v5 = [(IDSNRDevicePreferencesHandler *)self nrDevicePreferences];
  [v5 addQuickRelayRequest];

  v6 = [(IDSNRDevicePreferencesHandler *)self quickRelayRequestsCount];

  [(IDSNRDevicePreferencesHandler *)self setCopyOfQuickRelayRequestsCountOnTheLastRequest:v6];
}

- (void)releaseQuickRelay
{
  v3 = [(IDSNRDevicePreferencesHandler *)self nrDevicePreferences];
  [v3 removeAllQuickRelayRequests];

  [(IDSNRDevicePreferencesHandler *)self setCopyOfQuickRelayRequestsCountOnTheLastRequest:0];
  v4 = [(IDSNRDevicePreferencesHandler *)self deviceOnlineMonitor];

  if (v4 && self->_presenceOperationMode == 1)
  {
    v5 = [(IDSNRDevicePreferencesHandler *)self deviceOnlineMonitor];
    [v5 stopMonitoring];
  }
}

- (void)annouceAvailabilityForCloudMessaging
{
  im_assert_primary_base_queue();
  v3 = [(IDSNRDevicePreferencesHandler *)self announcePresenceBlock];

  if (v3)
  {
    v4 = +[IDSFoundationLog IPsecLink];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(IDSNRDevicePreferencesHandler *)self announcePresenceBlock];
      v6 = objc_retainBlock(v5);
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
    v10 = [(IDSNRDevicePreferencesHandler *)self announcePresenceBlock];
    dispatch_after(v8, v9, v10);

    v11 = +[IDSFoundationLog IPsecLink];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(IDSNRDevicePreferencesHandler *)self announcePresenceBlock];
      v13 = objc_retainBlock(v12);
      v14 = [(IDSNRDevicePreferencesHandler *)self announcePresenceDelayInSeconds];
      *buf = 134218240;
      v22 = v13;
      v23 = 1024;
      v24 = v14;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Scheduled to announce presence {block:%p} in %d seconds", buf, 0x12u);
    }

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }
}

- (void)_annouceAvailabilityForCloudMessaging
{
  v3 = [(IDSNRDevicePreferencesHandler *)self deviceOnlineMonitor];

  if (!v3 && self->_presenceOperationMode && sub_1005C03DC())
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_USER_INITIATED, 0);
    v9 = dispatch_queue_create("SKPresenceQueue", v8);

    v10 = +[IDSPairingManager sharedInstance];
    v11 = [v10 pairedDeviceUniqueID];

    v12 = [[IDSDeviceOnlineMonitor alloc] initWithDelegate:self uniqueIdentifier:v11 queue:v9];
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

  v4 = [(IDSNRDevicePreferencesHandler *)self deviceOnlineMonitor];

  if (v4)
  {
    v5 = [(IDSNRDevicePreferencesHandler *)self deviceOnlineMonitor];
    [v5 assertPresence];

    if (self->_presenceOperationMode == 2)
    {
      v6 = [(IDSNRDevicePreferencesHandler *)self deviceOnlineMonitor];
      [v6 startMonitoring];
    }
  }
}

- (void)revokeAvailabilityForCloudMessaging
{
  im_assert_primary_base_queue();
  v3 = [(IDSNRDevicePreferencesHandler *)self announcePresenceBlock];

  if (v3)
  {
    v4 = +[IDSFoundationLog IPsecLink];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(IDSNRDevicePreferencesHandler *)self announcePresenceBlock];
      v6 = objc_retainBlock(v5);
      v11 = 134217984;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Cancelling scheduled {block:%p}", &v11, 0xCu);
    }

    v7 = [(IDSNRDevicePreferencesHandler *)self announcePresenceBlock];
    dispatch_block_cancel(v7);

    [(IDSNRDevicePreferencesHandler *)self setAnnouncePresenceBlock:0];
  }

  v8 = [(IDSNRDevicePreferencesHandler *)self deviceOnlineMonitor];

  if (v8)
  {
    v9 = [(IDSNRDevicePreferencesHandler *)self deviceOnlineMonitor];
    [v9 releasePresence];

    v10 = [(IDSNRDevicePreferencesHandler *)self deviceOnlineMonitor];
    [v10 stopMonitoring];
  }
}

- (void)idsDeviceOnlineMonitor:(id)a3 statusChanged:(unsigned int)a4
{
  v6 = +[IDSFoundationLog IPsecLink];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = sub_10050A848(a4);
    v8 = 138412546;
    v9 = v7;
    v10 = 2048;
    v11 = [(IDSNRDevicePreferencesHandler *)self quickRelayRequestsCount];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "idsDeviceOnlineMonitor status changed: {newStatus:%@}, {quickRelayRequestsCount: %lu}", &v8, 0x16u);
  }

  if (a4 == 3)
  {
    if ([(IDSNRDevicePreferencesHandler *)self areThereFreshQuickRelayRequests])
    {
      [(IDSNRDevicePreferencesHandler *)self requestQuickRelay];
    }
  }
}

@end