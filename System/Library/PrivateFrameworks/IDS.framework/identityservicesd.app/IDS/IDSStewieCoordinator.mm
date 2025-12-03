@interface IDSStewieCoordinator
- (BOOL)isStewieEnabled;
- (IDSStewieCoordinator)initWithUserStore:(id)store bag:(id)bag queue:(id)queue systemMonitor:(id)monitor pairingManager:(id)manager accountSync:(id)sync;
- (id)fetchCurrentState;
- (void)_handleFeatureAccessChangeForDeviceInfo:(id)info persistedDeviceInfo:(id)deviceInfo;
- (void)checkComponentsAtStartup;
- (void)clearAllState;
- (void)deviceInfoManager:(id)manager deviceInfoChanged:(id)changed;
- (void)handleCompanionDeviceSyncWithPhoneNumbers:(id)numbers deviceID:(id)d deviceUDID:(id)iD;
- (void)handleCompanionDeviceUnpairWithDeviceID:(id)d;
- (void)heartbeatTimerFired;
- (void)phoneNumberManager:(id)manager phoneNumberInfosChanged:(id)changed;
- (void)pushHandler:(id)handler receivedRollKeysPushWithDelay:(double)delay;
- (void)pushHandler:(id)handler receivedRollSMSConfigPushWithDelay:(double)delay;
- (void)requester:(id)requester receivedFailuresForPhoneNumberInfos:(id)infos;
- (void)requester:(id)requester receivedFailuresForSessionKeyInfos:(id)infos;
- (void)requester:(id)requester receivedSuccessForClearInfo:(id)info;
- (void)requester:(id)requester receivedSuccessForDeviceInfo:(id)info;
- (void)requester:(id)requester receivedSuccessForPhoneNumberInfos:(id)infos;
- (void)requester:(id)requester receivedSuccessForSessionKeyInfos:(id)infos;
- (void)requester:(id)requester succeededRequest:(id)request;
- (void)rollAndClearKeys;
- (void)rollKeysTimerFired;
- (void)sessionKeyManager:(id)manager sessionKeyInfosToUpdate:(id)update;
- (void)sessionKeyManager:(id)manager stewieMessageConfigChanged:(id)changed;
@end

@implementation IDSStewieCoordinator

- (BOOL)isStewieEnabled
{
  store = [(IDSStewieCoordinator *)self store];
  persistedStewieEnabledFlag = [store persistedStewieEnabledFlag];

  return persistedStewieEnabledFlag;
}

- (IDSStewieCoordinator)initWithUserStore:(id)store bag:(id)bag queue:(id)queue systemMonitor:(id)monitor pairingManager:(id)manager accountSync:(id)sync
{
  storeCopy = store;
  bagCopy = bag;
  queueCopy = queue;
  monitorCopy = monitor;
  managerCopy = manager;
  syncCopy = sync;
  v40.receiver = self;
  v40.super_class = IDSStewieCoordinator;
  v18 = [(IDSStewieCoordinator *)&v40 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_userStore, store);
    objc_storeStrong(&v19->_queue, queue);
    v21 = [[IDSStewieCTClient alloc] initWithQueue:queueCopy];
    ctClient = v19->_ctClient;
    v19->_ctClient = v21;

    v23 = [[IDSStewieSessionKeyManager alloc] initWithDelegate:v19 ctClient:v19->_ctClient];
    sessionKeyManager = v19->_sessionKeyManager;
    v19->_sessionKeyManager = v23;

    v25 = [[IDSStewiePushHandler alloc] initWithDelegate:v19 queue:queueCopy bag:bagCopy ctClient:v19->_ctClient];
    pushHandler = v19->_pushHandler;
    v19->_pushHandler = v25;

    v27 = objc_alloc_init(IDSStewieStore);
    store = v19->_store;
    v19->_store = v27;

    v29 = [[IDSStewieRequester alloc] initWithDelegate:v19 queue:queueCopy ctClient:v19->_ctClient store:v19->_store userStore:storeCopy bag:bagCopy];
    requester = v19->_requester;
    v19->_requester = v29;

    objc_storeStrong(&v19->_bag, bag);
    objc_storeStrong(&v19->_systemMonitor, monitor);
    objc_storeStrong(&v19->_pairingManager, manager);
    objc_storeStrong(&v19->_accountSync, sync);
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
  systemMonitor = [(IDSStewieCoordinator *)self systemMonitor];
  isUnderFirstDataProtectionLock = [systemMonitor isUnderFirstDataProtectionLock];

  if (isUnderFirstDataProtectionLock)
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
    ctClient = [(IDSStewieCoordinator *)self ctClient];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1006F73D4;
    v7[3] = &unk_100BD7108;
    v7[4] = self;
    [ctClient fetchStewieEnabledWithCompletion:v7];
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

  ctClient = [(IDSStewieCoordinator *)self ctClient];
  forceRollKeys = [ctClient forceRollKeys];

  if (forceRollKeys)
  {
    requester = [(IDSStewieCoordinator *)self requester];
    v7 = [[IDSStewieClearInfo alloc] initWithClearType:1];
    [requester addClearRequest:v7];
  }

  [(IDSStewieCoordinator *)self setRollKeysTimer:0];
}

- (void)handleCompanionDeviceSyncWithPhoneNumbers:(id)numbers deviceID:(id)d deviceUDID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v9 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412546;
    v20 = dCopy;
    v21 = 2112;
    v22 = iDCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Told to handle companion device token sync { deviceID: %@ deviceUDID: %@ }", &v19, 0x16u);
  }

  if (dCopy && iDCopy)
  {
    store = [(IDSStewieCoordinator *)self store];
    persistedCompanionDeviceIDToUDID = [store persistedCompanionDeviceIDToUDID];

    if (!persistedCompanionDeviceIDToUDID || ([persistedCompanionDeviceIDToUDID allKeys], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "containsObject:", dCopy), v12, (v13 & 1) == 0))
    {
      allTraditionallyPairedUniqueIDs = [(IDSPairingManager *)self->_pairingManager allTraditionallyPairedUniqueIDs];
      if ([allTraditionallyPairedUniqueIDs containsObject:dCopy])
      {
        if (persistedCompanionDeviceIDToUDID)
        {
          v15 = [[NSMutableDictionary alloc] initWithDictionary:persistedCompanionDeviceIDToUDID];
        }

        else
        {
          v15 = +[NSMutableDictionary dictionary];
        }

        v16 = v15;
        CFDictionarySetValue(v15, dCopy, iDCopy);
        v17 = +[IDSFoundationLog stewieProvisioning];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v19 = 138412290;
          v20 = iDCopy;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "New paired device added, scheduling request { deviceUDID: %@ }", &v19, 0xCu);
        }

        requester = [(IDSStewieCoordinator *)self requester];
        [requester addCompanionDeviceUDIDsRequest:v16];
      }
    }
  }
}

- (void)handleCompanionDeviceUnpairWithDeviceID:(id)d
{
  dCopy = d;
  v5 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = dCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Told to handle companion device unpair { deviceID: %@ }", &v14, 0xCu);
  }

  if (dCopy)
  {
    store = [(IDSStewieCoordinator *)self store];
    persistedCompanionDeviceIDToUDID = [store persistedCompanionDeviceIDToUDID];

    allKeys = [persistedCompanionDeviceIDToUDID allKeys];
    v9 = [allKeys containsObject:dCopy];

    if (v9)
    {
      allTraditionallyPairedUniqueIDs = [(IDSPairingManager *)self->_pairingManager allTraditionallyPairedUniqueIDs];
      if (([allTraditionallyPairedUniqueIDs containsObject:dCopy] & 1) == 0)
      {
        v11 = [[NSMutableDictionary alloc] initWithDictionary:persistedCompanionDeviceIDToUDID];
        v12 = v11;
        if (v11)
        {
          CFDictionaryRemoveValue(v11, dCopy);
        }

        requester = [(IDSStewieCoordinator *)self requester];
        [requester addCompanionDeviceUDIDsRequest:v12];
      }
    }
  }
}

- (void)deviceInfoManager:(id)manager deviceInfoChanged:(id)changed
{
  changedCopy = changed;
  v6 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = changedCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Notified device info changed { deviceInfo: %@ }", &v11, 0xCu);
  }

  store = [(IDSStewieCoordinator *)self store];
  persistedDeviceInfo = [store persistedDeviceInfo];

  if ([changedCopy isEqual:persistedDeviceInfo])
  {
    [(IDSStewieCoordinator *)self _handleFeatureAccessChangeForDeviceInfo:changedCopy persistedDeviceInfo:persistedDeviceInfo];
  }

  else
  {
    v9 = +[IDSFoundationLog stewieProvisioning];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412546;
      v12 = persistedDeviceInfo;
      v13 = 2112;
      v14 = changedCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Device info differs from persisted { persistedDeviceInfo: %@ }, scheduling request { deviceInfo: %@ }", &v11, 0x16u);
    }

    requester = [(IDSStewieCoordinator *)self requester];
    [requester addDeviceInfoRequest:changedCopy];
  }
}

- (void)_handleFeatureAccessChangeForDeviceInfo:(id)info persistedDeviceInfo:(id)deviceInfo
{
  infoCopy = info;
  deviceInfoCopy = deviceInfo;
  accessTokens = [infoCopy accessTokens];
  accessTokens2 = [deviceInfoCopy accessTokens];
  featureIDs = [infoCopy featureIDs];
  featureIDs2 = [deviceInfoCopy featureIDs];

  if (!(featureIDs | accessTokens))
  {
    requester = +[IDSFoundationLog stewieProvisioning];
    if (os_log_type_enabled(requester, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&_mh_execute_header, requester, OS_LOG_TYPE_DEFAULT, "Device info contains nil feature IDs and access tokens, ignoring", &v21, 2u);
    }

    goto LABEL_12;
  }

  v12 = [NSSet setWithArray:featureIDs];
  v13 = [NSSet setWithArray:featureIDs2];
  v14 = [v12 isEqualToSet:v13];

  if ((v14 & 1) == 0)
  {
    v20 = +[IDSFoundationLog stewieProvisioning];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412802;
      v22 = featureIDs;
      v23 = 2112;
      v24 = featureIDs2;
      v25 = 2112;
      v26 = infoCopy;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "FeatureIDs: %@ differ from persisted: %@, scheduling request { deviceInfo: %@ }", &v21, 0x20u);
    }

    requester = [(IDSStewieCoordinator *)self requester];
    [requester addDeviceInfoRequest:infoCopy];
    goto LABEL_12;
  }

  v15 = [NSSet setWithArray:accessTokens];
  v16 = [NSSet setWithArray:accessTokens2];
  v17 = [v15 isEqualToSet:v16];

  if ((v17 & 1) == 0)
  {
    v18 = +[IDSFoundationLog stewieProvisioning];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = infoCopy;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Device info feature IDs have not changed, but access tokens have. Persisting latest tokens { deviceInfo: %@ }", &v21, 0xCu);
    }

    requester = [(IDSStewieCoordinator *)self store];
    [requester persistDeviceInfo:infoCopy];
LABEL_12:
  }
}

- (void)phoneNumberManager:(id)manager phoneNumberInfosChanged:(id)changed
{
  changedCopy = changed;
  v6 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = changedCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Notified phone info changed { phoneNumberInfos: %@ }", &v17, 0xCu);
  }

  store = [(IDSStewieCoordinator *)self store];
  persistedPhoneNumberInfos = [store persistedPhoneNumberInfos];

  v9 = sub_100934F0C(self, changedCopy, persistedPhoneNumberInfos);
  requester = [(IDSStewieCoordinator *)self requester];
  pendingPhoneNumbers = [requester pendingPhoneNumbers];
  v12 = sub_100934F0C(self, changedCopy, pendingPhoneNumbers);

  requester3 = +[IDSFoundationLog stewieProvisioning];
  v14 = os_log_type_enabled(requester3, OS_LOG_TYPE_DEFAULT);
  if (v9 && (v12 & 1) != 0)
  {
    if (v14)
    {
      requester2 = [(IDSStewieCoordinator *)self requester];
      pendingPhoneNumbers2 = [requester2 pendingPhoneNumbers];
      v17 = 138412802;
      v18 = changedCopy;
      v19 = 2112;
      v20 = persistedPhoneNumberInfos;
      v21 = 2112;
      v22 = pendingPhoneNumbers2;
      _os_log_impl(&_mh_execute_header, requester3, OS_LOG_TYPE_DEFAULT, "Phone info isn't different from persisted, or scheduled update { phoneNumberInfos: %@; persistedPhoneNumberInfos %@; scheduledPhoneNumberInfos: %@ }", &v17, 0x20u);
    }
  }

  else
  {
    if (v14)
    {
      v17 = 138412290;
      v18 = changedCopy;
      _os_log_impl(&_mh_execute_header, requester3, OS_LOG_TYPE_DEFAULT, "Phone info differs from persisted or scheduled, scheduling request { phoneNumberInfos: %@ }", &v17, 0xCu);
    }

    requester3 = [(IDSStewieCoordinator *)self requester];
    [requester3 addPhoneNumbersRequest:changedCopy];
  }
}

- (void)sessionKeyManager:(id)manager sessionKeyInfosToUpdate:(id)update
{
  updateCopy = update;
  requester = [(IDSStewieCoordinator *)self requester];
  [requester addSessionKeyRequest:updateCopy];
}

- (void)sessionKeyManager:(id)manager stewieMessageConfigChanged:(id)changed
{
  changedCopy = changed;
  v6 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = changedCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Notified sms config changed { smsConfig: %@ }", &v12, 0xCu);
  }

  store = [(IDSStewieCoordinator *)self store];
  persistedSMSConfig = [store persistedSMSConfig];
  v9 = [changedCopy isEqual:persistedSMSConfig];

  if ((v9 & 1) == 0)
  {
    v10 = +[IDSFoundationLog stewieProvisioning];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = changedCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "SMS Config differs from persisted, scheduling request { SMSConfig: %@ }", &v12, 0xCu);
    }

    requester = [(IDSStewieCoordinator *)self requester];
    [requester addSMSConfig:changedCopy];
  }
}

- (void)requester:(id)requester receivedSuccessForDeviceInfo:(id)info
{
  infoCopy = info;
  v6 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = infoCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Provisioned stewie device info { deviceInfo: %@ }", &v8, 0xCu);
  }

  store = [(IDSStewieCoordinator *)self store];
  [store persistDeviceInfo:infoCopy];
}

- (void)requester:(id)requester receivedSuccessForPhoneNumberInfos:(id)infos
{
  infosCopy = infos;
  v6 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = infosCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Provisioned stewie phone number infos { phoneNumberInfos: %@ }", &v8, 0xCu);
  }

  store = [(IDSStewieCoordinator *)self store];
  [store persistPhoneNumberInfos:infosCopy];
}

- (void)requester:(id)requester receivedFailuresForPhoneNumberInfos:(id)infos
{
  infosCopy = infos;
  v6 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_1009354D8(infosCopy, v6);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = infosCopy;
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
        responseCode = [v12 responseCode];
        if (responseCode != 6005)
        {
          if (responseCode != 6002)
          {
            goto LABEL_14;
          }

          additionalInfo = [v12 additionalInfo];
          v15 = [additionalInfo objectForKeyedSubscript:@"retry-interval"];
          [v15 doubleValue];
          v17 = v16;

          v18 = +[IDSFoundationLog stewieProvisioning];
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            request = [v12 request];
            *buf = 134218242;
            v31 = v17;
            v32 = 2112;
            v33 = request;
            _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Retry with delay given for phone info { delay: %ld, info: %@ }", buf, 0x16u);
          }

          v25 = v7;
          im_dispatch_after_primary_queue();
        }

        phoneNumberManager = [(IDSStewieCoordinator *)self phoneNumberManager];
        request2 = [v12 request];
        [phoneNumberManager clearCredentialsForInfo:request2];

LABEL_14:
        v21 = +[IDSFoundationLog stewieProvisioning];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          responseCode2 = [v12 responseCode];
          request3 = [v12 request];
          *buf = 134218242;
          v31 = responseCode2;
          v32 = 2112;
          v33 = request3;
          _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Unknown error returned for phone info { code: %ld, info: %@ }", buf, 0x16u);
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v9);
  }
}

- (void)requester:(id)requester receivedSuccessForSessionKeyInfos:(id)infos
{
  infosCopy = infos;
  v6 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218242;
    v9 = [infosCopy count];
    v10 = 2112;
    v11 = infosCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received success for session key infos to add { count: %ld, sessionKeyInfos: %@ }", &v8, 0x16u);
  }

  sessionKeyManager = [(IDSStewieCoordinator *)self sessionKeyManager];
  [sessionKeyManager handleSuccessForSessionKeyInfos:infosCopy];
}

- (void)requester:(id)requester receivedFailuresForSessionKeyInfos:(id)infos
{
  infosCopy = infos;
  v5 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v29 = [infosCopy count];
    v30 = 2112;
    v31 = infosCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received failure for session key infos to add { count: %ld, sessionKeyInfoResponses: %@ }", buf, 0x16u);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = infosCopy;
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
            request = [v11 request];
            *buf = 138412290;
            v29 = request;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Replace all session keys given for key info { info: %@ } - rolling all session keys", buf, 0xCu);
          }

          [(IDSStewieCoordinator *)self rollAndClearKeys];
          sessionKeyManager = v6;
          goto LABEL_21;
        }

        if ([v11 responseCode] == 6001)
        {
          v12 = v6;
          request2 = [v11 request];
          v14 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [request2 ctIndex]);
          rateLimiter = [(IDSStewieCoordinator *)self rateLimiter];
          [rateLimiter noteItem:v14];

          rateLimiter2 = [(IDSStewieCoordinator *)self rateLimiter];
          v17 = [rateLimiter2 underLimitForItem:v14];

          if (!v17)
          {
            v21 = +[IDSFoundationLog stewieProvisioning];
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              sub_1009355CC(v11, self, v21);
            }

            [(IDSStewieCoordinator *)self rollAndClearKeys];
            v6 = v12;
            sessionKeyManager = v12;
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

  sessionKeyManager = [(IDSStewieCoordinator *)self sessionKeyManager];
  [sessionKeyManager handleFailureForSessionKeyInfos:v6];
LABEL_21:
}

- (void)rollAndClearKeys
{
  sessionKeyManager = [(IDSStewieCoordinator *)self sessionKeyManager];
  [sessionKeyManager clearState];

  ctClient = [(IDSStewieCoordinator *)self ctClient];
  forceRollKeys = [ctClient forceRollKeys];

  if (forceRollKeys)
  {
    requester = [(IDSStewieCoordinator *)self requester];
    v7 = [[IDSStewieClearInfo alloc] initWithClearType:1];
    [requester addClearRequest:v7];
  }

  rateLimiter = [(IDSStewieCoordinator *)self rateLimiter];
  [rateLimiter clearAllItems];
}

- (void)requester:(id)requester receivedSuccessForClearInfo:(id)info
{
  infoCopy = info;
  v6 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = infoCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Cleared provisioned stewie info { clearInfo: %@ }", &v13, 0xCu);
  }

  clearType = [infoCopy clearType];
  if (clearType == 1)
  {
    store = [(IDSStewieCoordinator *)self store];
    [store persistNextRollKeys:0];
    goto LABEL_7;
  }

  if (!clearType)
  {
    store2 = [(IDSStewieCoordinator *)self store];
    [store2 persistDeviceInfo:0];

    store3 = [(IDSStewieCoordinator *)self store];
    [store3 persistPhoneNumberInfos:0];

    store4 = [(IDSStewieCoordinator *)self store];
    [store4 persistNextRollKeys:0];

    store = [(IDSStewieCoordinator *)self store];
    [store persistSMSConfig:0];
LABEL_7:

    store5 = [(IDSStewieCoordinator *)self store];
    [store5 persistNextRollSMSConfig:0];
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

  store = [(IDSStewieCoordinator *)self store];
  [store clearPersistentMap];

  ctClient = [(IDSStewieCoordinator *)self ctClient];
  LODWORD(store) = [ctClient forceRollKeys];

  if (store)
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

  store = [(IDSStewieCoordinator *)self store];
  persistedStewieEnabledFlag = [store persistedStewieEnabledFlag];

  store2 = [(IDSStewieCoordinator *)self store];
  persistedDeviceInfo = [store2 persistedDeviceInfo];

  store3 = [(IDSStewieCoordinator *)self store];
  persistedPhoneNumberInfos = [store3 persistedPhoneNumberInfos];

  store4 = [(IDSStewieCoordinator *)self store];
  persistedNextHeartbeat = [store4 persistedNextHeartbeat];

  store5 = [(IDSStewieCoordinator *)self store];
  persistedNextRollKeys = [store5 persistedNextRollKeys];

  store6 = [(IDSStewieCoordinator *)self store];
  persistedSPSEnvironment = [store6 persistedSPSEnvironment];

  store7 = [(IDSStewieCoordinator *)self store];
  persistedSMSConfig = [store7 persistedSMSConfig];

  v13 = objc_alloc_init(NSMutableString);
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v14 = persistedPhoneNumberInfos;
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

  store8 = [(IDSStewieCoordinator *)self store];
  persistedCompanionPhoneNumbers = [store8 persistedCompanionPhoneNumbers];

  store9 = [(IDSStewieCoordinator *)self store];
  persistedCompanionDeviceIDToUDID = [store9 persistedCompanionDeviceIDToUDID];

  v24 = objc_alloc_init(NSMutableString);
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = persistedCompanionPhoneNumbers;
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

  v48 = persistedSPSEnvironment;

  v30 = objc_alloc_init(NSMutableString);
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v31 = persistedCompanionDeviceIDToUDID;
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
  v39 = [NSNumber numberWithBool:persistedStewieEnabledFlag];
  if (v39)
  {
    CFDictionarySetValue(v38, @"StewieEnabled", v39);
  }

  v40 = [persistedDeviceInfo description];
  if (v40)
  {
    CFDictionarySetValue(v38, @"DeviceInfo", v40);
  }

  if (v13)
  {
    CFDictionarySetValue(v38, @"PhoneNumbers", v13);
  }

  v41 = [persistedNextHeartbeat description];
  if (v41)
  {
    CFDictionarySetValue(v38, @"NextHeartbeat", v41);
  }

  v42 = [persistedNextRollKeys description];
  if (v42)
  {
    CFDictionarySetValue(v38, @"NextRollKeys", v42);
  }

  v43 = [v48 description];
  if (v43)
  {
    CFDictionarySetValue(v38, @"SPSEnvironment", v43);
  }

  v44 = [persistedSMSConfig description];
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

  ctClient = [(IDSStewieCoordinator *)self ctClient];
  [ctClient forceRollSMSConfigWipeAll:0];

  requester = [(IDSStewieCoordinator *)self requester];
  [requester addHeartbeat];

  sub_100934C50(self);
}

- (void)requester:(id)requester succeededRequest:(id)request
{
  requestCopy = request;
  v7 = [NSDate dateWithTimeIntervalSinceNow:sub_100934D64(self)];
  v8 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Completed stewie request. Scheduling next heartbeat { nextHeartbeat: %@ }", &v15, 0xCu);
  }

  store = [(IDSStewieCoordinator *)self store];
  [store persistNextHeartbeat:v7];

  sub_100934710(self, v7);
  if (CUTIsInternalInstall())
  {
    IMGetSPSEnvironmentName();
    objc_claimAutoreleasedReturnValue();
    store2 = [sub_1006F9E2C() store];
    [store2 persistSPSEnvironment:store];
  }

  else
  {
    store = 0;
  }

  smsConfig = [requestCopy smsConfig];

  if (smsConfig)
  {
    [(IDSStewieCoordinator *)self store];
    objc_claimAutoreleasedReturnValue();
    [sub_1006F9E38() smsConfig];
    objc_claimAutoreleasedReturnValue();
    [sub_1006F9DF4() persistSMSConfig:?];

    [(IDSStewieCoordinator *)self ctClient];
    objc_claimAutoreleasedReturnValue();
    smsConfig2 = [sub_1006F9E38() smsConfig];
    configID = [smsConfig2 configID];
    [smsConfig notifyStewieSMSConfigUpdated:configID withError:0 forSPSEnv:store];
  }

  companionPhoneNumbers = [requestCopy companionPhoneNumbers];

  if (companionPhoneNumbers)
  {
    [(IDSStewieCoordinator *)self store];
    objc_claimAutoreleasedReturnValue();
    [sub_1006F9E38() companionPhoneNumbers];
    objc_claimAutoreleasedReturnValue();
    [sub_1006F9DF4() persistCompanionPhoneNumbers:?];
  }

  companionDeviceUDIDs = [requestCopy companionDeviceUDIDs];

  if (companionDeviceUDIDs)
  {
    [(IDSStewieCoordinator *)self store];
    objc_claimAutoreleasedReturnValue();
    [sub_1006F9E38() companionDeviceUDIDs];
    objc_claimAutoreleasedReturnValue();
    [sub_1006F9DF4() persistCompanionDeviceIDToUDID:?];
  }

  [(IDSAccountSync *)self->_accountSync noteShouldSynchronizeSPSProvisioningInfo];
}

- (void)pushHandler:(id)handler receivedRollKeysPushWithDelay:(double)delay
{
  v7 = +[IDSFoundationLog stewieProvisioning];
  if (sub_1006F9E14(v7))
  {
    v14 = [NSNumber numberWithDouble:delay];
    sub_1006F9DA0();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
  }

  [NSDate dateWithTimeIntervalSinceNow:delay];
  objc_claimAutoreleasedReturnValue();
  store = [sub_1006F9E44() store];
  [store persistNextRollKeys:v4];

  sub_100934844(self, v4);
}

- (void)pushHandler:(id)handler receivedRollSMSConfigPushWithDelay:(double)delay
{
  v7 = +[IDSFoundationLog stewieProvisioning];
  if (sub_1006F9E14(v7))
  {
    v14 = [NSNumber numberWithDouble:delay];
    sub_1006F9DA0();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
  }

  [NSDate dateWithTimeIntervalSinceNow:delay];
  objc_claimAutoreleasedReturnValue();
  store = [sub_1006F9E44() store];
  [store persistNextRollSMSConfig:v4];

  sub_100934970(self, v4);
}

@end