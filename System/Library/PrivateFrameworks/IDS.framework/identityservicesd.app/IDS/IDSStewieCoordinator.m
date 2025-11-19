@interface IDSStewieCoordinator
- (BOOL)isStewieEnabled;
- (IDSStewieCoordinator)initWithUserStore:(id)a3 bag:(id)a4 queue:(id)a5 systemMonitor:(id)a6 pairingManager:(id)a7 accountSync:(id)a8;
- (id)fetchCurrentState;
- (void)_handleFeatureAccessChangeForDeviceInfo:(id)a3 persistedDeviceInfo:(id)a4;
- (void)checkComponentsAtStartup;
- (void)clearAllState;
- (void)deviceInfoManager:(id)a3 deviceInfoChanged:(id)a4;
- (void)handleCompanionDeviceSyncWithPhoneNumbers:(id)a3 deviceID:(id)a4 deviceUDID:(id)a5;
- (void)handleCompanionDeviceUnpairWithDeviceID:(id)a3;
- (void)heartbeatTimerFired;
- (void)phoneNumberManager:(id)a3 phoneNumberInfosChanged:(id)a4;
- (void)pushHandler:(id)a3 receivedRollKeysPushWithDelay:(double)a4;
- (void)pushHandler:(id)a3 receivedRollSMSConfigPushWithDelay:(double)a4;
- (void)requester:(id)a3 receivedFailuresForPhoneNumberInfos:(id)a4;
- (void)requester:(id)a3 receivedFailuresForSessionKeyInfos:(id)a4;
- (void)requester:(id)a3 receivedSuccessForClearInfo:(id)a4;
- (void)requester:(id)a3 receivedSuccessForDeviceInfo:(id)a4;
- (void)requester:(id)a3 receivedSuccessForPhoneNumberInfos:(id)a4;
- (void)requester:(id)a3 receivedSuccessForSessionKeyInfos:(id)a4;
- (void)requester:(id)a3 succeededRequest:(id)a4;
- (void)rollAndClearKeys;
- (void)rollKeysTimerFired;
- (void)sessionKeyManager:(id)a3 sessionKeyInfosToUpdate:(id)a4;
- (void)sessionKeyManager:(id)a3 stewieMessageConfigChanged:(id)a4;
@end

@implementation IDSStewieCoordinator

- (BOOL)isStewieEnabled
{
  v2 = [(IDSStewieCoordinator *)self store];
  v3 = [v2 persistedStewieEnabledFlag];

  return v3;
}

- (IDSStewieCoordinator)initWithUserStore:(id)a3 bag:(id)a4 queue:(id)a5 systemMonitor:(id)a6 pairingManager:(id)a7 accountSync:(id)a8
{
  v39 = a3;
  v38 = a4;
  v15 = a5;
  v37 = a6;
  v16 = a7;
  v17 = a8;
  v40.receiver = self;
  v40.super_class = IDSStewieCoordinator;
  v18 = [(IDSStewieCoordinator *)&v40 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_userStore, a3);
    objc_storeStrong(&v19->_queue, a5);
    v21 = [[IDSStewieCTClient alloc] initWithQueue:v15];
    ctClient = v19->_ctClient;
    v19->_ctClient = v21;

    v23 = [[IDSStewieSessionKeyManager alloc] initWithDelegate:v19 ctClient:v19->_ctClient];
    sessionKeyManager = v19->_sessionKeyManager;
    v19->_sessionKeyManager = v23;

    v25 = [[IDSStewiePushHandler alloc] initWithDelegate:v19 queue:v15 bag:v38 ctClient:v19->_ctClient];
    pushHandler = v19->_pushHandler;
    v19->_pushHandler = v25;

    v27 = objc_alloc_init(IDSStewieStore);
    store = v19->_store;
    v19->_store = v27;

    v29 = [[IDSStewieRequester alloc] initWithDelegate:v19 queue:v15 ctClient:v19->_ctClient store:v19->_store userStore:v39 bag:v38];
    requester = v19->_requester;
    v19->_requester = v29;

    objc_storeStrong(&v19->_bag, a4);
    objc_storeStrong(&v19->_systemMonitor, a6);
    objc_storeStrong(&v19->_pairingManager, a7);
    objc_storeStrong(&v19->_accountSync, a8);
    heartbeatTimer = v19->_heartbeatTimer;
    v19->_heartbeatTimer = 0;

    rollKeysTimer = v19->_rollKeysTimer;
    v19->_rollKeysTimer = 0;

    v33 = [IDSRateLimiter alloc];
    v34 = sub_1009345FC(v19);
    v35 = [v33 initWithLimit:v34 timeLimit:sub_100934680(v19)];
    rateLimiter = v19->_rateLimiter;
    v19->_rateLimiter = v35;
  }

  return v19;
}

- (void)checkComponentsAtStartup
{
  v3 = [(IDSStewieCoordinator *)self systemMonitor];
  v4 = [v3 isUnderFirstDataProtectionLock];

  if (v4)
  {
    v5 = +[IDSFoundationLog stewieProvisioning];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Device is still under first data protection lock, not checking stewie components", buf, 2u);
    }
  }

  else
  {
    v6 = [(IDSStewieCoordinator *)self ctClient];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1006F73D4;
    v7[3] = &unk_100BD7108;
    v7[4] = self;
    [v6 fetchStewieEnabledWithCompletion:v7];
  }
}

- (void)rollKeysTimerFired
{
  v3 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Stewie roll keys fired", v8, 2u);
  }

  v4 = [(IDSStewieCoordinator *)self ctClient];
  v5 = [v4 forceRollKeys];

  if (v5)
  {
    v6 = [(IDSStewieCoordinator *)self requester];
    v7 = [[IDSStewieClearInfo alloc] initWithClearType:1];
    [v6 addClearRequest:v7];
  }

  [(IDSStewieCoordinator *)self setRollKeysTimer:0];
}

- (void)handleCompanionDeviceSyncWithPhoneNumbers:(id)a3 deviceID:(id)a4 deviceUDID:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412546;
    v20 = v7;
    v21 = 2112;
    v22 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Told to handle companion device token sync { deviceID: %@ deviceUDID: %@ }", &v19, 0x16u);
  }

  if (v7 && v8)
  {
    v10 = [(IDSStewieCoordinator *)self store];
    v11 = [v10 persistedCompanionDeviceIDToUDID];

    if (!v11 || ([v11 allKeys], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "containsObject:", v7), v12, (v13 & 1) == 0))
    {
      v14 = [(IDSPairingManager *)self->_pairingManager allTraditionallyPairedUniqueIDs];
      if ([v14 containsObject:v7])
      {
        if (v11)
        {
          v15 = [[NSMutableDictionary alloc] initWithDictionary:v11];
        }

        else
        {
          v15 = +[NSMutableDictionary dictionary];
        }

        v16 = v15;
        CFDictionarySetValue(v15, v7, v8);
        v17 = +[IDSFoundationLog stewieProvisioning];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v19 = 138412290;
          v20 = v8;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "New paired device added, scheduling request { deviceUDID: %@ }", &v19, 0xCu);
        }

        v18 = [(IDSStewieCoordinator *)self requester];
        [v18 addCompanionDeviceUDIDsRequest:v16];
      }
    }
  }
}

- (void)handleCompanionDeviceUnpairWithDeviceID:(id)a3
{
  v4 = a3;
  v5 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Told to handle companion device unpair { deviceID: %@ }", &v14, 0xCu);
  }

  if (v4)
  {
    v6 = [(IDSStewieCoordinator *)self store];
    v7 = [v6 persistedCompanionDeviceIDToUDID];

    v8 = [v7 allKeys];
    v9 = [v8 containsObject:v4];

    if (v9)
    {
      v10 = [(IDSPairingManager *)self->_pairingManager allTraditionallyPairedUniqueIDs];
      if (([v10 containsObject:v4] & 1) == 0)
      {
        v11 = [[NSMutableDictionary alloc] initWithDictionary:v7];
        v12 = v11;
        if (v11)
        {
          CFDictionaryRemoveValue(v11, v4);
        }

        v13 = [(IDSStewieCoordinator *)self requester];
        [v13 addCompanionDeviceUDIDsRequest:v12];
      }
    }
  }
}

- (void)deviceInfoManager:(id)a3 deviceInfoChanged:(id)a4
{
  v5 = a4;
  v6 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Notified device info changed { deviceInfo: %@ }", &v11, 0xCu);
  }

  v7 = [(IDSStewieCoordinator *)self store];
  v8 = [v7 persistedDeviceInfo];

  if ([v5 isEqual:v8])
  {
    [(IDSStewieCoordinator *)self _handleFeatureAccessChangeForDeviceInfo:v5 persistedDeviceInfo:v8];
  }

  else
  {
    v9 = +[IDSFoundationLog stewieProvisioning];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Device info differs from persisted { persistedDeviceInfo: %@ }, scheduling request { deviceInfo: %@ }", &v11, 0x16u);
    }

    v10 = [(IDSStewieCoordinator *)self requester];
    [v10 addDeviceInfoRequest:v5];
  }
}

- (void)_handleFeatureAccessChangeForDeviceInfo:(id)a3 persistedDeviceInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 accessTokens];
  v9 = [v7 accessTokens];
  v10 = [v6 featureIDs];
  v11 = [v7 featureIDs];

  if (!(v10 | v8))
  {
    v19 = +[IDSFoundationLog stewieProvisioning];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Device info contains nil feature IDs and access tokens, ignoring", &v21, 2u);
    }

    goto LABEL_12;
  }

  v12 = [NSSet setWithArray:v10];
  v13 = [NSSet setWithArray:v11];
  v14 = [v12 isEqualToSet:v13];

  if ((v14 & 1) == 0)
  {
    v20 = +[IDSFoundationLog stewieProvisioning];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412802;
      v22 = v10;
      v23 = 2112;
      v24 = v11;
      v25 = 2112;
      v26 = v6;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "FeatureIDs: %@ differ from persisted: %@, scheduling request { deviceInfo: %@ }", &v21, 0x20u);
    }

    v19 = [(IDSStewieCoordinator *)self requester];
    [v19 addDeviceInfoRequest:v6];
    goto LABEL_12;
  }

  v15 = [NSSet setWithArray:v8];
  v16 = [NSSet setWithArray:v9];
  v17 = [v15 isEqualToSet:v16];

  if ((v17 & 1) == 0)
  {
    v18 = +[IDSFoundationLog stewieProvisioning];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = v6;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Device info feature IDs have not changed, but access tokens have. Persisting latest tokens { deviceInfo: %@ }", &v21, 0xCu);
    }

    v19 = [(IDSStewieCoordinator *)self store];
    [v19 persistDeviceInfo:v6];
LABEL_12:
  }
}

- (void)phoneNumberManager:(id)a3 phoneNumberInfosChanged:(id)a4
{
  v5 = a4;
  v6 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Notified phone info changed { phoneNumberInfos: %@ }", &v17, 0xCu);
  }

  v7 = [(IDSStewieCoordinator *)self store];
  v8 = [v7 persistedPhoneNumberInfos];

  v9 = sub_100934F0C(self, v5, v8);
  v10 = [(IDSStewieCoordinator *)self requester];
  v11 = [v10 pendingPhoneNumbers];
  v12 = sub_100934F0C(self, v5, v11);

  v13 = +[IDSFoundationLog stewieProvisioning];
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v9 && (v12 & 1) != 0)
  {
    if (v14)
    {
      v15 = [(IDSStewieCoordinator *)self requester];
      v16 = [v15 pendingPhoneNumbers];
      v17 = 138412802;
      v18 = v5;
      v19 = 2112;
      v20 = v8;
      v21 = 2112;
      v22 = v16;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Phone info isn't different from persisted, or scheduled update { phoneNumberInfos: %@; persistedPhoneNumberInfos %@; scheduledPhoneNumberInfos: %@ }", &v17, 0x20u);
    }
  }

  else
  {
    if (v14)
    {
      v17 = 138412290;
      v18 = v5;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Phone info differs from persisted or scheduled, scheduling request { phoneNumberInfos: %@ }", &v17, 0xCu);
    }

    v13 = [(IDSStewieCoordinator *)self requester];
    [v13 addPhoneNumbersRequest:v5];
  }
}

- (void)sessionKeyManager:(id)a3 sessionKeyInfosToUpdate:(id)a4
{
  v5 = a4;
  v6 = [(IDSStewieCoordinator *)self requester];
  [v6 addSessionKeyRequest:v5];
}

- (void)sessionKeyManager:(id)a3 stewieMessageConfigChanged:(id)a4
{
  v5 = a4;
  v6 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Notified sms config changed { smsConfig: %@ }", &v12, 0xCu);
  }

  v7 = [(IDSStewieCoordinator *)self store];
  v8 = [v7 persistedSMSConfig];
  v9 = [v5 isEqual:v8];

  if ((v9 & 1) == 0)
  {
    v10 = +[IDSFoundationLog stewieProvisioning];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "SMS Config differs from persisted, scheduling request { SMSConfig: %@ }", &v12, 0xCu);
    }

    v11 = [(IDSStewieCoordinator *)self requester];
    [v11 addSMSConfig:v5];
  }
}

- (void)requester:(id)a3 receivedSuccessForDeviceInfo:(id)a4
{
  v5 = a4;
  v6 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Provisioned stewie device info { deviceInfo: %@ }", &v8, 0xCu);
  }

  v7 = [(IDSStewieCoordinator *)self store];
  [v7 persistDeviceInfo:v5];
}

- (void)requester:(id)a3 receivedSuccessForPhoneNumberInfos:(id)a4
{
  v5 = a4;
  v6 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Provisioned stewie phone number infos { phoneNumberInfos: %@ }", &v8, 0xCu);
  }

  v7 = [(IDSStewieCoordinator *)self store];
  [v7 persistPhoneNumberInfos:v5];
}

- (void)requester:(id)a3 receivedFailuresForPhoneNumberInfos:(id)a4
{
  v5 = a4;
  v6 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_1009354D8(v5, v6);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        v13 = [v12 responseCode];
        if (v13 != 6005)
        {
          if (v13 != 6002)
          {
            goto LABEL_14;
          }

          v14 = [v12 additionalInfo];
          v15 = [v14 objectForKeyedSubscript:@"retry-interval"];
          [v15 doubleValue];
          v17 = v16;

          v18 = +[IDSFoundationLog stewieProvisioning];
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v24 = [v12 request];
            *buf = 134218242;
            v31 = v17;
            v32 = 2112;
            v33 = v24;
            _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Retry with delay given for phone info { delay: %ld, info: %@ }", buf, 0x16u);
          }

          v25 = v7;
          im_dispatch_after_primary_queue();
        }

        v19 = [(IDSStewieCoordinator *)self phoneNumberManager];
        v20 = [v12 request];
        [v19 clearCredentialsForInfo:v20];

LABEL_14:
        v21 = +[IDSFoundationLog stewieProvisioning];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = [v12 responseCode];
          v23 = [v12 request];
          *buf = 134218242;
          v31 = v22;
          v32 = 2112;
          v33 = v23;
          _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Unknown error returned for phone info { code: %ld, info: %@ }", buf, 0x16u);
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v9);
  }
}

- (void)requester:(id)a3 receivedSuccessForSessionKeyInfos:(id)a4
{
  v5 = a4;
  v6 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218242;
    v9 = [v5 count];
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received success for session key infos to add { count: %ld, sessionKeyInfos: %@ }", &v8, 0x16u);
  }

  v7 = [(IDSStewieCoordinator *)self sessionKeyManager];
  [v7 handleSuccessForSessionKeyInfos:v5];
}

- (void)requester:(id)a3 receivedFailuresForSessionKeyInfos:(id)a4
{
  v4 = a4;
  v5 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v29 = [v4 count];
    v30 = 2112;
    v31 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received failure for session key infos to add { count: %ld, sessionKeyInfoResponses: %@ }", buf, 0x16u);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        if ([v11 responseCode] == 6012)
        {
          v19 = +[IDSFoundationLog stewieProvisioning];
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = [v11 request];
            *buf = 138412290;
            v29 = v20;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Replace all session keys given for key info { info: %@ } - rolling all session keys", buf, 0xCu);
          }

          [(IDSStewieCoordinator *)self rollAndClearKeys];
          v18 = v6;
          goto LABEL_21;
        }

        if ([v11 responseCode] == 6001)
        {
          v12 = v6;
          v13 = [v11 request];
          v14 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v13 ctIndex]);
          v15 = [(IDSStewieCoordinator *)self rateLimiter];
          [v15 noteItem:v14];

          v16 = [(IDSStewieCoordinator *)self rateLimiter];
          v17 = [v16 underLimitForItem:v14];

          if (!v17)
          {
            v21 = +[IDSFoundationLog stewieProvisioning];
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              sub_1009355CC(v11, self, v21);
            }

            [(IDSStewieCoordinator *)self rollAndClearKeys];
            v6 = v12;
            v18 = v12;
            goto LABEL_21;
          }

          v6 = v12;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v18 = [(IDSStewieCoordinator *)self sessionKeyManager];
  [v18 handleFailureForSessionKeyInfos:v6];
LABEL_21:
}

- (void)rollAndClearKeys
{
  v3 = [(IDSStewieCoordinator *)self sessionKeyManager];
  [v3 clearState];

  v4 = [(IDSStewieCoordinator *)self ctClient];
  v5 = [v4 forceRollKeys];

  if (v5)
  {
    v6 = [(IDSStewieCoordinator *)self requester];
    v7 = [[IDSStewieClearInfo alloc] initWithClearType:1];
    [v6 addClearRequest:v7];
  }

  v8 = [(IDSStewieCoordinator *)self rateLimiter];
  [v8 clearAllItems];
}

- (void)requester:(id)a3 receivedSuccessForClearInfo:(id)a4
{
  v5 = a4;
  v6 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Cleared provisioned stewie info { clearInfo: %@ }", &v13, 0xCu);
  }

  v7 = [v5 clearType];
  if (v7 == 1)
  {
    v11 = [(IDSStewieCoordinator *)self store];
    [v11 persistNextRollKeys:0];
    goto LABEL_7;
  }

  if (!v7)
  {
    v8 = [(IDSStewieCoordinator *)self store];
    [v8 persistDeviceInfo:0];

    v9 = [(IDSStewieCoordinator *)self store];
    [v9 persistPhoneNumberInfos:0];

    v10 = [(IDSStewieCoordinator *)self store];
    [v10 persistNextRollKeys:0];

    v11 = [(IDSStewieCoordinator *)self store];
    [v11 persistSMSConfig:0];
LABEL_7:

    v12 = [(IDSStewieCoordinator *)self store];
    [v12 persistNextRollSMSConfig:0];
  }
}

- (void)clearAllState
{
  v3 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Clearing stewie state...", buf, 2u);
  }

  v4 = [(IDSStewieCoordinator *)self store];
  [v4 clearPersistentMap];

  v5 = [(IDSStewieCoordinator *)self ctClient];
  LODWORD(v4) = [v5 forceRollKeys];

  if (v4)
  {
    v6 = +[IDSFoundationLog stewieProvisioning];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "CT finished rolling keys in clearing stewie state", v7, 2u);
    }
  }
}

- (id)fetchCurrentState
{
  v3 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Fetching current stewie state...", buf, 2u);
  }

  v4 = [(IDSStewieCoordinator *)self store];
  v46 = [v4 persistedStewieEnabledFlag];

  v5 = [(IDSStewieCoordinator *)self store];
  v51 = [v5 persistedDeviceInfo];

  v6 = [(IDSStewieCoordinator *)self store];
  v7 = [v6 persistedPhoneNumberInfos];

  v8 = [(IDSStewieCoordinator *)self store];
  v50 = [v8 persistedNextHeartbeat];

  v9 = [(IDSStewieCoordinator *)self store];
  v49 = [v9 persistedNextRollKeys];

  v10 = [(IDSStewieCoordinator *)self store];
  v11 = [v10 persistedSPSEnvironment];

  v12 = [(IDSStewieCoordinator *)self store];
  v52 = [v12 persistedSMSConfig];

  v13 = objc_alloc_init(NSMutableString);
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v14 = v7;
  v15 = [v14 countByEnumeratingWithState:&v62 objects:v69 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v63;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v63 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v62 + 1) + 8 * i) description];
        [v13 appendFormat:@"        %@", v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v62 objects:v69 count:16];
    }

    while (v16);
  }

  v47 = v14;

  v20 = [(IDSStewieCoordinator *)self store];
  v21 = [v20 persistedCompanionPhoneNumbers];

  v22 = [(IDSStewieCoordinator *)self store];
  v23 = [v22 persistedCompanionDeviceIDToUDID];

  v24 = objc_alloc_init(NSMutableString);
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = v21;
  v25 = [obj countByEnumeratingWithState:&v58 objects:v68 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v59;
    do
    {
      for (j = 0; j != v26; j = j + 1)
      {
        if (*v59 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = [*(*(&v58 + 1) + 8 * j) description];
        [v24 appendFormat:@"        %@", v29];
      }

      v26 = [obj countByEnumeratingWithState:&v58 objects:v68 count:16];
    }

    while (v26);
  }

  v48 = v11;

  v30 = objc_alloc_init(NSMutableString);
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v31 = v23;
  v32 = [v31 countByEnumeratingWithState:&v54 objects:v67 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v55;
    do
    {
      for (k = 0; k != v33; k = k + 1)
      {
        if (*v55 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = *(*(&v54 + 1) + 8 * k);
        v37 = [v31 objectForKeyedSubscript:v36];
        [v30 appendFormat:@"        DeviceID: %@, UDID: %@\n", v36, v37];
      }

      v33 = [v31 countByEnumeratingWithState:&v54 objects:v67 count:16];
    }

    while (v33);
  }

  v38 = objc_alloc_init(NSMutableDictionary);
  v39 = [NSNumber numberWithBool:v46];
  if (v39)
  {
    CFDictionarySetValue(v38, @"StewieEnabled", v39);
  }

  v40 = [v51 description];
  if (v40)
  {
    CFDictionarySetValue(v38, @"DeviceInfo", v40);
  }

  if (v13)
  {
    CFDictionarySetValue(v38, @"PhoneNumbers", v13);
  }

  v41 = [v50 description];
  if (v41)
  {
    CFDictionarySetValue(v38, @"NextHeartbeat", v41);
  }

  v42 = [v49 description];
  if (v42)
  {
    CFDictionarySetValue(v38, @"NextRollKeys", v42);
  }

  v43 = [v48 description];
  if (v43)
  {
    CFDictionarySetValue(v38, @"SPSEnvironment", v43);
  }

  v44 = [v52 description];
  if (v44)
  {
    CFDictionarySetValue(v38, @"SMSConfig", v44);
  }

  if (v24)
  {
    CFDictionarySetValue(v38, @"CompanionPhoneNumbers", v24);
  }

  if (v30)
  {
    CFDictionarySetValue(v38, @"CompanionPushTokens", v30);
  }

  return v38;
}

- (void)heartbeatTimerFired
{
  v4 = +[IDSFoundationLog stewieProvisioning];
  if (sub_1006F9E14(v4))
  {
    sub_1006F9DA0();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
  }

  v10 = [(IDSStewieCoordinator *)self ctClient];
  [v10 forceRollSMSConfigWipeAll:0];

  v11 = [(IDSStewieCoordinator *)self requester];
  [v11 addHeartbeat];

  sub_100934C50(self);
}

- (void)requester:(id)a3 succeededRequest:(id)a4
{
  v6 = a4;
  v7 = [NSDate dateWithTimeIntervalSinceNow:sub_100934D64(self)];
  v8 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Completed stewie request. Scheduling next heartbeat { nextHeartbeat: %@ }", &v15, 0xCu);
  }

  v9 = [(IDSStewieCoordinator *)self store];
  [v9 persistNextHeartbeat:v7];

  sub_100934710(self, v7);
  if (CUTIsInternalInstall())
  {
    IMGetSPSEnvironmentName();
    objc_claimAutoreleasedReturnValue();
    v10 = [sub_1006F9E2C() store];
    [v10 persistSPSEnvironment:v9];
  }

  else
  {
    v9 = 0;
  }

  v11 = [v6 smsConfig];

  if (v11)
  {
    [(IDSStewieCoordinator *)self store];
    objc_claimAutoreleasedReturnValue();
    [sub_1006F9E38() smsConfig];
    objc_claimAutoreleasedReturnValue();
    [sub_1006F9DF4() persistSMSConfig:?];

    [(IDSStewieCoordinator *)self ctClient];
    objc_claimAutoreleasedReturnValue();
    v4 = [sub_1006F9E38() smsConfig];
    v12 = [v4 configID];
    [v11 notifyStewieSMSConfigUpdated:v12 withError:0 forSPSEnv:v9];
  }

  v13 = [v6 companionPhoneNumbers];

  if (v13)
  {
    [(IDSStewieCoordinator *)self store];
    objc_claimAutoreleasedReturnValue();
    [sub_1006F9E38() companionPhoneNumbers];
    objc_claimAutoreleasedReturnValue();
    [sub_1006F9DF4() persistCompanionPhoneNumbers:?];
  }

  v14 = [v6 companionDeviceUDIDs];

  if (v14)
  {
    [(IDSStewieCoordinator *)self store];
    objc_claimAutoreleasedReturnValue();
    [sub_1006F9E38() companionDeviceUDIDs];
    objc_claimAutoreleasedReturnValue();
    [sub_1006F9DF4() persistCompanionDeviceIDToUDID:?];
  }

  [(IDSAccountSync *)self->_accountSync noteShouldSynchronizeSPSProvisioningInfo];
}

- (void)pushHandler:(id)a3 receivedRollKeysPushWithDelay:(double)a4
{
  v7 = +[IDSFoundationLog stewieProvisioning];
  if (sub_1006F9E14(v7))
  {
    v14 = [NSNumber numberWithDouble:a4];
    sub_1006F9DA0();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
  }

  [NSDate dateWithTimeIntervalSinceNow:a4];
  objc_claimAutoreleasedReturnValue();
  v13 = [sub_1006F9E44() store];
  [v13 persistNextRollKeys:v4];

  sub_100934844(self, v4);
}

- (void)pushHandler:(id)a3 receivedRollSMSConfigPushWithDelay:(double)a4
{
  v7 = +[IDSFoundationLog stewieProvisioning];
  if (sub_1006F9E14(v7))
  {
    v14 = [NSNumber numberWithDouble:a4];
    sub_1006F9DA0();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
  }

  [NSDate dateWithTimeIntervalSinceNow:a4];
  objc_claimAutoreleasedReturnValue();
  v13 = [sub_1006F9E44() store];
  [v13 persistNextRollSMSConfig:v4];

  sub_100934970(self, v4);
}

@end