@interface CWFWiFiNetworkSharingManager
- (BOOL)__addCurrentNetworkToNetworkListForClientID:(id)d forceRegistration:(BOOL)registration;
- (BOOL)__appForegroundStateHandlerForBundleID:(id)d;
- (BOOL)__canAskToShareKnownNetwork:(id)network metadata:(id)metadata authorizationStatus:(unint64_t)status onDemand:(BOOL)demand;
- (BOOL)__canAutomaticallyShareKnownNetwork:(id)network metadata:(id)metadata authorizationStatus:(unint64_t)status;
- (BOOL)__canAutomaticallyShareKnownNetworkWithMetadata:(id)metadata authorizationStatus:(unint64_t)status;
- (BOOL)__doesAskToShareNetwork:(id)network matchAccessoryScanResult:(id)result;
- (BOOL)__isAskToShareNetworkListChangedEventRegisteredForClientID:(id)d;
- (BOOL)__isNetworkListUpdateEventRegisteredForClientID:(id)d;
- (BOOL)__shouldRateLimitAskToShareFromAppRequestWithClientID:(id)d;
- (BOOL)__shouldRateLimitAskToShareFromAppexRequestWithClientID:(id)d networkID:(id)iD;
- (BOOL)__shouldRateLimitAuthorizationRequestWithClientID:(id)d;
- (BOOL)isClientIDAuthorizedForDeviceAccess:(id)access;
- (BOOL)isClientIDAuthorizedForWiFiNetworkSharing:(id)sharing;
- (BOOL)isClientIDUsingSecureTransportForDeviceAccess:(id)access;
- (CLLocation)location;
- (CWFScanResult)associatedNetwork;
- (CWFWiFiNetworkSharingManager)init;
- (id)__askToShareNetworkListForClientID:(id)d localScanResults:(id)results accessoryScanResults:(id)scanResults onDemand:(BOOL)demand;
- (id)__captivePortalCredentialsForKnownNetwork:(id)network error:(id *)error;
- (id)__clientIDsRegisteredNetworksUpdateEvents;
- (id)__descriptorForRateLimitAskToShareFromAppexRequestWithClientID:(id)d networkID:(id)iD;
- (id)__deviceForClientID:(id)d;
- (id)__forceAccessoryDisplayName;
- (id)__forceAuthorizationLevel;
- (id)__forceForegroundAppState;
- (id)__hiddenNetworkSSIDList;
- (id)__knownNetworks;
- (id)__networkListForClientID:(id)d predicateData:(id)data;
- (id)__networksUpdateForClientID:(id)d predicateData:(id)data;
- (id)__passwordForKnownNetwork:(id)network error:(id *)error;
- (id)__registeredNetworksUpdateEventIDsForClientID:(id)d;
- (id)askToShareNetworkListForClientID:(id)d;
- (id)authorizationLevelForClientID:(id)d;
- (int64_t)__nextAppexRelaunchIntervalFromNow;
- (int64_t)askToShareStatusForClientID:(id)d networkID:(id)iD timestamp:(id *)timestamp;
- (void)__activateDeviceAccessSessionWithCompletion:(id)completion;
- (void)__completeAskToShareFromAppWithError:(id)error status:(int64_t)status;
- (void)__completeAskToShareFromAppexWithError:(id)error status:(int64_t)status;
- (void)__completeAuthorizationRequestWithError:(id)error authLevel:(id)level;
- (void)__launchAppExtensionForClientID:(id)d;
- (void)__presentAskToShareProxCardForAccessoryName:(id)name;
- (void)__presentAskToShareUserNotificationForNetwork:(id)network accessoryName:(id)name;
- (void)__presentAuthorizationProxCardForAccessoryName:(id)name;
- (void)__relaunchAppexIfNeeded;
- (void)__scheduleNextAppexRelaunch;
- (void)__sendNetworkListUpdateEventForClientID:(id)d;
- (void)__setWantsAcknowledgementForNetworkListUpdate:(id)update clientID:(id)d;
- (void)__startAskToShareScanning;
- (void)__startWaitingForAppex;
- (void)__stopAskToShareScanning;
- (void)__stopWaitingForAppex;
- (void)__updateAskToShareScanning;
- (void)__updateRateLimitAskToShareFromAppRequestTimestampCacheForClientID:(id)d;
- (void)__updateRateLimitAskToShareFromAppexRequestTimestampCacheForClientID:(id)d networkID:(id)iD;
- (void)__updateRateLimitAuthorizationRequestTimestampCacheForClientID:(id)d;
- (void)acknowledgeNetworkListUpdate:(id)update clientID:(id)d;
- (void)activateWithCompletion:(id)completion;
- (void)askToShareFromAppForClientID:(id)d completion:(id)completion;
- (void)askToShareFromAppexForClientID:(id)d completion:(id)completion;
- (void)cancelAskToShareFromAppRequestForClientID:(id)d;
- (void)cancelAskToShareFromAppexRequestForClientID:(id)d;
- (void)cancelAuthorizationRequestForClientID:(id)d;
- (void)didInvalidateXPCConnection:(id)connection;
- (void)didRegisterForAskToShareNetworkListUpdateEventsWithClientID:(id)d XPCConnection:(id)connection;
- (void)didRegisterForNetworkListUpdateEventsWithClientID:(id)d predicateData:(id)data XPCConnection:(id)connection;
- (void)didRemoveKnownNetwork:(id)network;
- (void)didUpdateKnownNetwork:(id)network previous:(id)previous;
- (void)didUpdateRegisteredEventIDs:(id)ds;
- (void)extendAppexRuntimeForClientID:(id)d;
- (void)invalidate;
- (void)requestAuthorizationForClientID:(id)d completion:(id)completion;
- (void)setAskToShareStatus:(int64_t)status clientID:(id)d networkID:(id)iD;
- (void)setAssociatedNetwork:(id)network;
- (void)setLocation:(id)location;
@end

@implementation CWFWiFiNetworkSharingManager

- (CWFWiFiNetworkSharingManager)init
{
  v35.receiver = self;
  v35.super_class = CWFWiFiNetworkSharingManager;
  v2 = [(CWFWiFiNetworkSharingManager *)&v35 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.wifi-network-sharing-manager.internal", v3);
    [(CWFWiFiNetworkSharingManager *)v2 setInternalQueue:v4];

    internalQueue = [(CWFWiFiNetworkSharingManager *)v2 internalQueue];

    if (!internalQueue)
    {
      goto LABEL_20;
    }

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.wifi-network-sharing-manager.target", v6);
    [(CWFWiFiNetworkSharingManager *)v2 setTargetQueue:v7];

    targetQueue = [(CWFWiFiNetworkSharingManager *)v2 targetQueue];

    if (!targetQueue)
    {
      goto LABEL_20;
    }

    v9 = objc_alloc_init(CWFWiFiNetworkSharingStore);
    [(CWFWiFiNetworkSharingManager *)v2 setStore:v9];

    store = [(CWFWiFiNetworkSharingManager *)v2 store];

    if (!store)
    {
      goto LABEL_20;
    }

    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(CWFWiFiNetworkSharingManager *)v2 setAuthorizationRequestTimestampCache:v11];

    authorizationRequestTimestampCache = [(CWFWiFiNetworkSharingManager *)v2 authorizationRequestTimestampCache];

    if (!authorizationRequestTimestampCache)
    {
      goto LABEL_20;
    }

    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(CWFWiFiNetworkSharingManager *)v2 setAskToShareRequestFromAppTimestampCache:v13];

    askToShareRequestFromAppTimestampCache = [(CWFWiFiNetworkSharingManager *)v2 askToShareRequestFromAppTimestampCache];

    if (!askToShareRequestFromAppTimestampCache)
    {
      goto LABEL_20;
    }

    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(CWFWiFiNetworkSharingManager *)v2 setAskToShareRequestFromAppexTimestampCache:v15];

    askToShareRequestFromAppexTimestampCache = [(CWFWiFiNetworkSharingManager *)v2 askToShareRequestFromAppexTimestampCache];

    if (!askToShareRequestFromAppexTimestampCache)
    {
      goto LABEL_20;
    }

    v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(CWFWiFiNetworkSharingManager *)v2 setAskToShareNetworksCache:v17];

    askToShareNetworksCache = [(CWFWiFiNetworkSharingManager *)v2 askToShareNetworksCache];

    if (!askToShareNetworksCache)
    {
      goto LABEL_20;
    }

    v19 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    [(CWFWiFiNetworkSharingManager *)v2 setRegisteredWiFiNetworkSharingEventIDs:v19];

    registeredWiFiNetworkSharingEventIDs = [(CWFWiFiNetworkSharingManager *)v2 registeredWiFiNetworkSharingEventIDs];

    if (!registeredWiFiNetworkSharingEventIDs)
    {
      goto LABEL_20;
    }

    v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(CWFWiFiNetworkSharingManager *)v2 setAppexRelaunchAttemptCounts:v21];

    appexRelaunchAttemptCounts = [(CWFWiFiNetworkSharingManager *)v2 appexRelaunchAttemptCounts];

    if (!appexRelaunchAttemptCounts)
    {
      goto LABEL_20;
    }

    v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(CWFWiFiNetworkSharingManager *)v2 setWaitingForNetworkListUpdateAcknowledgement:v23];

    waitingForNetworkListUpdateAcknowledgement = [(CWFWiFiNetworkSharingManager *)v2 waitingForNetworkListUpdateAcknowledgement];

    if (!waitingForNetworkListUpdateAcknowledgement)
    {
      goto LABEL_20;
    }

    v25 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(CWFWiFiNetworkSharingManager *)v2 setAppexInvalidationTimestamps:v25];

    appexInvalidationTimestamps = [(CWFWiFiNetworkSharingManager *)v2 appexInvalidationTimestamps];

    if (!appexInvalidationTimestamps)
    {
      goto LABEL_20;
    }

    if (sub_1E0D231C4())
    {
      v37 = 0;
      v38 = &v37;
      v39 = 0x2050000000;
      v27 = qword_1ECE869E0;
      v40 = qword_1ECE869E0;
      if (!qword_1ECE869E0)
      {
        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = sub_1E0D23308;
        v36[3] = &unk_1E86E5600;
        v36[4] = &v37;
        sub_1E0D23308(v36);
        v27 = v38[3];
      }

      v28 = v27;
      _Block_object_dispose(&v37, 8);
      v29 = objc_alloc_init(v27);
      [(CWFWiFiNetworkSharingManager *)v2 setDeviceAccessSession:v29];
    }

    deviceAccessSession = [(CWFWiFiNetworkSharingManager *)v2 deviceAccessSession];

    if (deviceAccessSession)
    {
      deviceAccessSession2 = [(CWFWiFiNetworkSharingManager *)v2 deviceAccessSession];
      [deviceAccessSession2 setDeviceFlags:8];

      internalQueue2 = [(CWFWiFiNetworkSharingManager *)v2 internalQueue];
      deviceAccessSession3 = [(CWFWiFiNetworkSharingManager *)v2 deviceAccessSession];
      [deviceAccessSession3 setDispatchQueue:internalQueue2];
    }

    else
    {
LABEL_20:
      internalQueue2 = v2;
      v2 = 0;
    }
  }

  else
  {
    internalQueue2 = 0;
  }

  return v2;
}

- (BOOL)__isNetworkListUpdateEventRegisteredForClientID:(id)d
{
  v23 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (dCopy)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    registeredWiFiNetworkSharingEventIDs = [(CWFWiFiNetworkSharingManager *)self registeredWiFiNetworkSharingEventIDs];
    v6 = [registeredWiFiNetworkSharingEventIDs countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v6)
    {
      v7 = *v19;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(registeredWiFiNetworkSharingEventIDs);
          }

          v9 = *(*(&v18 + 1) + 8 * i);
          if ([v9 type] == 43)
          {
            clientID = [v9 clientID];
            v11 = clientID;
            if (clientID == dCopy)
            {

LABEL_17:
              LOBYTE(v6) = 1;
              goto LABEL_18;
            }

            clientID2 = [v9 clientID];
            if (clientID2)
            {
              v13 = clientID2;
              clientID3 = [v9 clientID];
              v15 = [dCopy isEqual:clientID3];

              if (v15)
              {
                goto LABEL_17;
              }
            }

            else
            {
            }
          }
        }

        v6 = [registeredWiFiNetworkSharingEventIDs countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_18:
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)__addCurrentNetworkToNetworkListForClientID:(id)d forceRegistration:(BOOL)registration
{
  registrationCopy = registration;
  v26 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if ([(CWFWiFiNetworkSharingManager *)self __isNetworkListUpdateEventRegisteredForClientID:dCopy]|| registrationCopy)
  {
    associatedNetwork = [(CWFWiFiNetworkSharingManager *)self associatedNetwork];
    matchingKnownNetworkProfile = [associatedNetwork matchingKnownNetworkProfile];

    v10 = [(CWFWiFiNetworkSharingManager *)self authorizationLevelForClientID:dCopy];
    unsignedIntegerValue = [v10 unsignedIntegerValue];

    store = [(CWFWiFiNetworkSharingManager *)self store];
    wifiNetworkSharingNetworkID = [matchingKnownNetworkProfile wifiNetworkSharingNetworkID];
    v14 = [store networkMetadataForClientID:dCopy networkID:wifiNetworkSharingNetworkID];

    if (v14 || ![(CWFWiFiNetworkSharingManager *)self __canAutomaticallyShareKnownNetwork:matchingKnownNetworkProfile metadata:0 authorizationStatus:unsignedIntegerValue])
    {
      if (![(CWFWiFiNetworkSharingNetworkMetadata *)v14 waitingForAssociation]|| ([(CWFWiFiNetworkSharingNetworkMetadata *)v14 setWaitingForAssociation:0], ![(CWFWiFiNetworkSharingManager *)self __canAutomaticallyShareKnownNetwork:matchingKnownNetworkProfile metadata:v14 authorizationStatus:unsignedIntegerValue]))
      {
        v7 = 0;
LABEL_20:

        goto LABEL_21;
      }

      store2 = [(CWFWiFiNetworkSharingManager *)self store];
      wifiNetworkSharingNetworkID2 = [matchingKnownNetworkProfile wifiNetworkSharingNetworkID];
      [store2 setNetworkMetadata:v14 clientID:dCopy networkID:wifiNetworkSharingNetworkID2];

      v21 = CWFGetOSLog();
      if (v21)
      {
        v18 = CWFGetOSLog();
      }

      else
      {
        v18 = MEMORY[0x1E69E9C10];
        v22 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
LABEL_19:

        v7 = 1;
        goto LABEL_20;
      }
    }

    else
    {
      v14 = objc_alloc_init(CWFWiFiNetworkSharingNetworkMetadata);
      store3 = [(CWFWiFiNetworkSharingManager *)self store];
      wifiNetworkSharingNetworkID3 = [matchingKnownNetworkProfile wifiNetworkSharingNetworkID];
      [store3 setNetworkMetadata:v14 clientID:dCopy networkID:wifiNetworkSharingNetworkID3];

      v17 = CWFGetOSLog();
      if (v17)
      {
        v18 = CWFGetOSLog();
      }

      else
      {
        v18 = MEMORY[0x1E69E9C10];
        v23 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }
    }

    _os_log_send_and_compose_impl();
    goto LABEL_19;
  }

  v7 = 0;
LABEL_21:

  v24 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)__activateDeviceAccessSessionWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1E0D16388;
  v8[3] = &unk_1E86E94B8;
  objc_copyWeak(&v10, &location);
  v5 = completionCopy;
  v9 = v5;
  deviceAccessSession = [(CWFWiFiNetworkSharingManager *)self deviceAccessSession];
  [deviceAccessSession setEventHandler:v8];

  deviceAccessSession2 = [(CWFWiFiNetworkSharingManager *)self deviceAccessSession];
  [deviceAccessSession2 activate];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  store = [(CWFWiFiNetworkSharingManager *)self store];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E0D16720;
  v7[3] = &unk_1E86E94E0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [store activateWithCompletion:v7];
}

- (void)invalidate
{
  [(CWFWiFiNetworkSharingManager *)self setNetworkListUpdateHandler:0];
  [(CWFWiFiNetworkSharingManager *)self setAskToShareStatusChangeHandler:0];
  [(CWFWiFiNetworkSharingManager *)self setAskToShareNetworkListChangeHandler:0];
  [(CWFWiFiNetworkSharingManager *)self setAuthorizationLevelChangeHandler:0];
  [(CWFWiFiNetworkSharingManager *)self setKnownNetworksHandler:0];
  [(CWFWiFiNetworkSharingManager *)self setHiddenNetworkSSIDListHandler:0];
  [(CWFWiFiNetworkSharingManager *)self setPasswordHandler:0];
  [(CWFWiFiNetworkSharingManager *)self setCaptivePortalCredentialsHandler:0];
  [(CWFWiFiNetworkSharingManager *)self setPerformAskToShareAccessoryScanHandler:0];
  [(CWFWiFiNetworkSharingManager *)self setPerformAskToShareScanHandler:0];
  [(CWFWiFiNetworkSharingManager *)self setPresentAskToShareProxCardHandler:0];
  [(CWFWiFiNetworkSharingManager *)self setPresentAuthorizationProxCardHandler:0];
  [(CWFWiFiNetworkSharingManager *)self setAppForegroundStateHandler:0];
  [(CWFWiFiNetworkSharingManager *)self __stopAskToShareScanning];
  [(CWFWiFiNetworkSharingManager *)self __stopWaitingForAppex];
  store = [(CWFWiFiNetworkSharingManager *)self store];
  [store invalidate];

  deviceAccessSession = [(CWFWiFiNetworkSharingManager *)self deviceAccessSession];
  [deviceAccessSession invalidate];
}

- (CLLocation)location
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(CLLocation *)selfCopy->_location copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setLocation:(id)location
{
  locationCopy = location;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [locationCopy copy];
  location = selfCopy->_location;
  selfCopy->_location = v5;

  objc_sync_exit(selfCopy);
}

- (CWFScanResult)associatedNetwork
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(CWFScanResult *)selfCopy->_associatedNetwork copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setAssociatedNetwork:(id)network
{
  v35 = *MEMORY[0x1E69E9840];
  networkCopy = network;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = CWFGetOSLog();
  if (v6)
  {
    v7 = CWFGetOSLog();
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    associatedNetwork = selfCopy->_associatedNetwork;
    v31 = 138543618;
    v32 = networkCopy;
    v33 = 2114;
    v34 = associatedNetwork;
    _os_log_send_and_compose_impl();
  }

  matchingKnownNetworkProfile = [(CWFScanResult *)selfCopy->_associatedNetwork matchingKnownNetworkProfile];
  matchingKnownNetworkProfile2 = [networkCopy matchingKnownNetworkProfile];
  v12 = [networkCopy copy];
  v13 = selfCopy->_associatedNetwork;
  selfCopy->_associatedNetwork = v12;

  wifiNetworkSharingNetworkID = [matchingKnownNetworkProfile2 wifiNetworkSharingNetworkID];
  wifiNetworkSharingNetworkID2 = [(CWFScanResult *)matchingKnownNetworkProfile wifiNetworkSharingNetworkID];
  v16 = wifiNetworkSharingNetworkID2;
  if (wifiNetworkSharingNetworkID == wifiNetworkSharingNetworkID2)
  {

    goto LABEL_20;
  }

  wifiNetworkSharingNetworkID3 = [matchingKnownNetworkProfile2 wifiNetworkSharingNetworkID];
  if (wifiNetworkSharingNetworkID3)
  {
    wifiNetworkSharingNetworkID4 = [(CWFScanResult *)matchingKnownNetworkProfile wifiNetworkSharingNetworkID];
    if (wifiNetworkSharingNetworkID4)
    {
      wifiNetworkSharingNetworkID5 = [matchingKnownNetworkProfile2 wifiNetworkSharingNetworkID];
      wifiNetworkSharingNetworkID6 = [(CWFScanResult *)matchingKnownNetworkProfile wifiNetworkSharingNetworkID];
      v29 = [wifiNetworkSharingNetworkID5 isEqual:wifiNetworkSharingNetworkID6];

      if (v29)
      {
        goto LABEL_20;
      }

      goto LABEL_14;
    }
  }

LABEL_14:
  v21 = CWFGetOSLog();
  if (v21)
  {
    v22 = CWFGetOSLog();
  }

  else
  {
    v22 = MEMORY[0x1E69E9C10];
    v23 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v31 = 138543618;
    v32 = matchingKnownNetworkProfile2;
    v33 = 2114;
    v34 = matchingKnownNetworkProfile;
    _os_log_send_and_compose_impl();
  }

  askToShareRequestFromAppTimestampCache = [(CWFWiFiNetworkSharingManager *)selfCopy askToShareRequestFromAppTimestampCache];
  [askToShareRequestFromAppTimestampCache removeAllObjects];

  internalQueue = [(CWFWiFiNetworkSharingManager *)selfCopy internalQueue];
  v26 = qos_class_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0D17220;
  block[3] = &unk_1E86E6010;
  block[4] = selfCopy;
  v27 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v26, 0, block);
  dispatch_async(internalQueue, v27);

LABEL_20:
  objc_sync_exit(selfCopy);

  v28 = *MEMORY[0x1E69E9840];
}

- (void)didUpdateKnownNetwork:(id)network previous:(id)previous
{
  v106 = *MEMORY[0x1E69E9840];
  networkCopy = network;
  previousCopy = previous;
  v6 = CWFGetOSLog();
  if (v6)
  {
    v7 = CWFGetOSLog();
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v100 = 138543618;
    v101 = networkCopy;
    v102 = 2114;
    v103 = previousCopy;
    LODWORD(v70) = 22;
    v68 = &v100;
    _os_log_send_and_compose_impl();
  }

  supportsWiFiNetworkSharing = [networkCopy supportsWiFiNetworkSharing];
  if (supportsWiFiNetworkSharing != [previousCopy supportsWiFiNetworkSharing])
  {
    goto LABEL_14;
  }

  filteredWiFiNetworkSharingNetworkProfile = [networkCopy filteredWiFiNetworkSharingNetworkProfile];
  filteredWiFiNetworkSharingNetworkProfile2 = [previousCopy filteredWiFiNetworkSharingNetworkProfile];
  if (filteredWiFiNetworkSharingNetworkProfile != filteredWiFiNetworkSharingNetworkProfile2)
  {
    filteredWiFiNetworkSharingNetworkProfile3 = [networkCopy filteredWiFiNetworkSharingNetworkProfile];
    if (filteredWiFiNetworkSharingNetworkProfile3)
    {
      filteredWiFiNetworkSharingNetworkProfile4 = [previousCopy filteredWiFiNetworkSharingNetworkProfile];
      if (filteredWiFiNetworkSharingNetworkProfile4)
      {
        filteredWiFiNetworkSharingNetworkProfile5 = [networkCopy filteredWiFiNetworkSharingNetworkProfile];
        filteredWiFiNetworkSharingNetworkProfile6 = [previousCopy filteredWiFiNetworkSharingNetworkProfile];
        v15 = [filteredWiFiNetworkSharingNetworkProfile5 isEqual:filteredWiFiNetworkSharingNetworkProfile6];

        if (v15)
        {
          goto LABEL_76;
        }

LABEL_14:
        v16 = [(CWFWiFiNetworkSharingManager *)self associatedNetwork:v68];
        filteredWiFiNetworkSharingNetworkProfile = [v16 matchingKnownNetworkProfile];

        v17 = CWFGetOSLog();
        if (v17)
        {
          v18 = CWFGetOSLog();
        }

        else
        {
          v18 = MEMORY[0x1E69E9C10];
          v19 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v100 = 138543874;
          v101 = networkCopy;
          v102 = 2114;
          v103 = previousCopy;
          v104 = 2114;
          v105 = filteredWiFiNetworkSharingNetworkProfile;
          LODWORD(v71) = 32;
          v69 = &v100;
          _os_log_send_and_compose_impl();
        }

        v75 = [MEMORY[0x1E695DFA8] set];
        v73 = [MEMORY[0x1E695DFA8] set];
        store = [(CWFWiFiNetworkSharingManager *)self store];
        clientIDs = [store clientIDs];

        v94 = 0u;
        v95 = 0u;
        v92 = 0u;
        v93 = 0u;
        obj = clientIDs;
        v78 = [obj countByEnumeratingWithState:&v92 objects:v99 count:16];
        if (v78)
        {
          v77 = *v93;
          do
          {
            for (i = 0; i != v78; ++i)
            {
              if (*v93 != v77)
              {
                objc_enumerationMutation(obj);
              }

              v23 = *(*(&v92 + 1) + 8 * i);
              v24 = [(CWFWiFiNetworkSharingManager *)self store:v69];
              wifiNetworkSharingNetworkID = [networkCopy wifiNetworkSharingNetworkID];
              v26 = [v24 networkMetadataForClientID:v23 networkID:wifiNetworkSharingNetworkID];

              if (v26)
              {
                v27 = [(CWFWiFiNetworkSharingManager *)self authorizationLevelForClientID:v23];
                unsignedIntegerValue = [v27 unsignedIntegerValue];

                v29 = [(CWFWiFiNetworkSharingManager *)self __canAutomaticallyShareKnownNetwork:networkCopy metadata:v26 authorizationStatus:unsignedIntegerValue];
                v30 = [(CWFWiFiNetworkSharingManager *)self __canAutomaticallyShareKnownNetwork:previousCopy metadata:v26 authorizationStatus:unsignedIntegerValue];
                if (v30 || v29)
                {
                  if (v30 || !v29)
                  {
                    goto LABEL_36;
                  }

                  wifiNetworkSharingNetworkID2 = [filteredWiFiNetworkSharingNetworkProfile wifiNetworkSharingNetworkID];
                  wifiNetworkSharingNetworkID3 = [networkCopy wifiNetworkSharingNetworkID];
                  v33 = wifiNetworkSharingNetworkID3;
                  if (wifiNetworkSharingNetworkID2 == wifiNetworkSharingNetworkID3)
                  {

                    goto LABEL_36;
                  }

                  wifiNetworkSharingNetworkID4 = [filteredWiFiNetworkSharingNetworkProfile wifiNetworkSharingNetworkID];
                  if (wifiNetworkSharingNetworkID4)
                  {
                    wifiNetworkSharingNetworkID5 = [networkCopy wifiNetworkSharingNetworkID];
                    if (wifiNetworkSharingNetworkID5)
                    {
                      wifiNetworkSharingNetworkID6 = [filteredWiFiNetworkSharingNetworkProfile wifiNetworkSharingNetworkID];
                      wifiNetworkSharingNetworkID7 = [networkCopy wifiNetworkSharingNetworkID];
                      HIDWORD(v71) = [wifiNetworkSharingNetworkID6 isEqual:wifiNetworkSharingNetworkID7];

                      if ((v71 & 0x100000000) != 0)
                      {
                        goto LABEL_36;
                      }

LABEL_35:
                      [v26 setWaitingForAssociation:1];
LABEL_36:
                      v38 = [MEMORY[0x1E695DF00] now];
                      [v26 setLastModifiedDate:v38];

                      store2 = [(CWFWiFiNetworkSharingManager *)self store];
                      wifiNetworkSharingNetworkID8 = [networkCopy wifiNetworkSharingNetworkID];
                      [store2 setNetworkMetadata:v26 clientID:v23 networkID:wifiNetworkSharingNetworkID8];

                      [v75 addObject:v23];
                      goto LABEL_37;
                    }
                  }

                  goto LABEL_35;
                }
              }

LABEL_37:
            }

            v78 = [obj countByEnumeratingWithState:&v92 objects:v99 count:16];
          }

          while (v78);
        }

        wifiNetworkSharingNetworkID9 = [filteredWiFiNetworkSharingNetworkProfile wifiNetworkSharingNetworkID];
        wifiNetworkSharingNetworkID10 = [networkCopy wifiNetworkSharingNetworkID];
        v43 = wifiNetworkSharingNetworkID10;
        if (wifiNetworkSharingNetworkID9 != wifiNetworkSharingNetworkID10)
        {
          wifiNetworkSharingNetworkID11 = [filteredWiFiNetworkSharingNetworkProfile wifiNetworkSharingNetworkID];
          if (wifiNetworkSharingNetworkID11)
          {
            wifiNetworkSharingNetworkID12 = [networkCopy wifiNetworkSharingNetworkID];
            if (wifiNetworkSharingNetworkID12)
            {
              wifiNetworkSharingNetworkID13 = [filteredWiFiNetworkSharingNetworkProfile wifiNetworkSharingNetworkID];
              wifiNetworkSharingNetworkID14 = [networkCopy wifiNetworkSharingNetworkID];
              v48 = [wifiNetworkSharingNetworkID13 isEqual:wifiNetworkSharingNetworkID14];

              if (!v48)
              {
LABEL_60:
                v86 = 0u;
                v87 = 0u;
                v84 = 0u;
                v85 = 0u;
                filteredWiFiNetworkSharingNetworkProfile2 = v75;
                v58 = [filteredWiFiNetworkSharingNetworkProfile2 countByEnumeratingWithState:&v84 objects:v97 count:16];
                if (v58)
                {
                  v59 = *v85;
                  do
                  {
                    for (j = 0; j != v58; ++j)
                    {
                      if (*v85 != v59)
                      {
                        objc_enumerationMutation(filteredWiFiNetworkSharingNetworkProfile2);
                      }

                      v61 = *(*(&v84 + 1) + 8 * j);
                      v62 = [(CWFWiFiNetworkSharingManager *)self store:v69];
                      [v62 incrementNetworksUpdateCounterForClientID:v61];
                    }

                    v58 = [filteredWiFiNetworkSharingNetworkProfile2 countByEnumeratingWithState:&v84 objects:v97 count:16];
                  }

                  while (v58);
                }

                v82 = 0u;
                v83 = 0u;
                v80 = 0u;
                v81 = 0u;
                v63 = v73;
                v64 = [v63 countByEnumeratingWithState:&v80 objects:v96 count:16];
                if (v64)
                {
                  v65 = *v81;
                  do
                  {
                    for (k = 0; k != v64; ++k)
                    {
                      if (*v81 != v65)
                      {
                        objc_enumerationMutation(v63);
                      }

                      [(CWFWiFiNetworkSharingManager *)self __sendNetworkListUpdateEventForClientID:*(*(&v80 + 1) + 8 * k), v69, v71];
                    }

                    v64 = [v63 countByEnumeratingWithState:&v80 objects:v96 count:16];
                  }

                  while (v64);
                }

                goto LABEL_75;
              }

              goto LABEL_45;
            }
          }

          goto LABEL_59;
        }

LABEL_45:
        selfCopy = self;
        objc_sync_enter(selfCopy);
        v50 = [CWFScanResult alloc];
        scanRecord = [(CWFScanResult *)selfCopy->_associatedNetwork scanRecord];
        v52 = [(CWFScanResult *)v50 initWithScanRecord:scanRecord knownNetworkProfile:networkCopy includeProperties:0];
        associatedNetwork = selfCopy->_associatedNetwork;
        selfCopy->_associatedNetwork = v52;

        objc_sync_exit(selfCopy);
        wifiNetworkSharingNetworkID9 = [(CWFWiFiNetworkSharingManager *)selfCopy __clientIDsRegisteredNetworksUpdateEvents];
        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        v54 = [wifiNetworkSharingNetworkID9 countByEnumeratingWithState:&v88 objects:v98 count:16];
        if (!v54)
        {
          goto LABEL_59;
        }

        v55 = *v89;
        while (1)
        {
          for (m = 0; m != v54; ++m)
          {
            if (*v89 != v55)
            {
              objc_enumerationMutation(wifiNetworkSharingNetworkID9);
            }

            v57 = *(*(&v88 + 1) + 8 * m);
            if ([(CWFWiFiNetworkSharingManager *)selfCopy __addCurrentNetworkToNetworkListForClientID:v57 forceRegistration:0, v69, v71])
            {
              [v75 addObject:v57];
            }

            else if (![(CWFWiFiNetworkSharingManager *)selfCopy __canAskToShareCurrentNetworkForClientID:v57 onDemand:0])
            {
              continue;
            }

            [v73 addObject:v57];
          }

          v54 = [wifiNetworkSharingNetworkID9 countByEnumeratingWithState:&v88 objects:v98 count:16];
          if (!v54)
          {
LABEL_59:

            goto LABEL_60;
          }
        }
      }
    }

    goto LABEL_14;
  }

LABEL_75:

LABEL_76:
  v67 = *MEMORY[0x1E69E9840];
}

- (void)didRemoveKnownNetwork:(id)network
{
  v37 = *MEMORY[0x1E69E9840];
  networkCopy = network;
  v5 = CWFGetOSLog();
  if (v5)
  {
    v6 = CWFGetOSLog();
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v35 = 138543362;
    v36 = networkCopy;
    LODWORD(v29) = 12;
    v28 = &v35;
    _os_log_send_and_compose_impl();
  }

  store = [(CWFWiFiNetworkSharingManager *)self store];
  clientIDs = [store clientIDs];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v10 = clientIDs;
  v11 = [v10 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v31;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v31 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v30 + 1) + 8 * i);
        v16 = [(CWFWiFiNetworkSharingManager *)self store:v28];
        wifiNetworkSharingNetworkID = [networkCopy wifiNetworkSharingNetworkID];
        v18 = [v16 networkMetadataForClientID:v15 networkID:wifiNetworkSharingNetworkID];

        if (v18)
        {
          store2 = [(CWFWiFiNetworkSharingManager *)self store];
          wifiNetworkSharingNetworkID2 = [networkCopy wifiNetworkSharingNetworkID];
          [store2 setNetworkMetadata:0 clientID:v15 networkID:wifiNetworkSharingNetworkID2];

          v21 = [(CWFWiFiNetworkSharingManager *)self authorizationLevelForClientID:v15];
          unsignedIntegerValue = [v21 unsignedIntegerValue];

          if ([(CWFWiFiNetworkSharingManager *)self __canAutomaticallyShareKnownNetwork:networkCopy metadata:v18 authorizationStatus:unsignedIntegerValue])
          {
            v23 = CWFGetOSLog();
            if (v23)
            {
              v24 = CWFGetOSLog();
            }

            else
            {
              v24 = MEMORY[0x1E69E9C10];
              v25 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              v35 = 138543362;
              v36 = networkCopy;
              LODWORD(v29) = 12;
              v28 = &v35;
              _os_log_send_and_compose_impl();
            }

            store3 = [(CWFWiFiNetworkSharingManager *)self store];
            [store3 incrementNetworksUpdateCounterForClientID:v15];

            [(CWFWiFiNetworkSharingManager *)self __sendNetworkListUpdateEventForClientID:v15];
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v12);
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (void)didRegisterForAskToShareNetworkListUpdateEventsWithClientID:(id)d XPCConnection:(id)connection
{
  v40 = *MEMORY[0x1E69E9840];
  dCopy = d;
  connectionCopy = connection;
  if ([(CWFWiFiNetworkSharingManager *)self __isNetworkListUpdateEventRegisteredForClientID:dCopy])
  {
    v8 = [(CWFWiFiNetworkSharingManager *)self askToShareNetworkListForClientID:dCopy];
    if (v8)
    {
      v9 = CWFGetOSLog();
      if (v9)
      {
        v10 = CWFGetOSLog();
      }

      else
      {
        v10 = MEMORY[0x1E69E9C10];
        v11 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v36 = 138543618;
        v37 = dCopy;
        v38 = 2114;
        v39 = v8;
        LODWORD(v33) = 22;
        v32 = &v36;
        _os_log_send_and_compose_impl();
      }

      v12 = objc_alloc_init(CWFXPCEvent);
      [(CWFXPCEvent *)v12 setType:44];
      date = [MEMORY[0x1E695DF00] date];
      [(CWFXPCEvent *)v12 setTimestamp:date];

      v34 = @"WiFiNetworkSharingAskToShareNetworkList";
      v35 = v8;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      [(CWFXPCEvent *)v12 setInfo:v14];

      [(CWFXPCEvent *)v12 setWifiNetworkSharingClientID:dCopy];
      [connectionCopy sendXPCEvent:v12 reply:0];
    }
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  askToShareFromAppClientID = [(CWFWiFiNetworkSharingManager *)selfCopy askToShareFromAppClientID];
  askToShareFromAppexClientID = [(CWFWiFiNetworkSharingManager *)selfCopy askToShareFromAppexClientID];
  if (askToShareFromAppClientID == askToShareFromAppexClientID)
  {
    v23 = 0;
  }

  else
  {
    askToShareFromAppClientID2 = [(CWFWiFiNetworkSharingManager *)selfCopy askToShareFromAppClientID];
    if (askToShareFromAppClientID2)
    {
      askToShareFromAppexClientID2 = [(CWFWiFiNetworkSharingManager *)selfCopy askToShareFromAppexClientID];
      if (askToShareFromAppexClientID2)
      {
        askToShareFromAppClientID3 = [(CWFWiFiNetworkSharingManager *)selfCopy askToShareFromAppClientID];
        askToShareFromAppexClientID3 = [(CWFWiFiNetworkSharingManager *)selfCopy askToShareFromAppexClientID];
        v22 = [askToShareFromAppClientID3 isEqual:askToShareFromAppexClientID3];

        v23 = v22 ^ 1;
      }

      else
      {
        v23 = 1;
      }
    }

    else
    {
      v23 = 1;
    }
  }

  askToShareFromAppexClientID4 = [(CWFWiFiNetworkSharingManager *)selfCopy askToShareFromAppexClientID];
  if (!askToShareFromAppexClientID4)
  {
    goto LABEL_26;
  }

  askToShareFromAppexClientID5 = [(CWFWiFiNetworkSharingManager *)selfCopy askToShareFromAppexClientID];
  v26 = askToShareFromAppexClientID5;
  if (askToShareFromAppexClientID5 != dCopy)
  {
    askToShareFromAppexClientID6 = [(CWFWiFiNetworkSharingManager *)selfCopy askToShareFromAppexClientID];
    v28 = askToShareFromAppexClientID6;
    if (!dCopy || !askToShareFromAppexClientID6)
    {

      goto LABEL_28;
    }

    askToShareFromAppexClientID7 = [(CWFWiFiNetworkSharingManager *)selfCopy askToShareFromAppexClientID];
    v30 = [askToShareFromAppexClientID7 isEqual:dCopy];

    if ((v30 & v23) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  if (v23)
  {
LABEL_26:
    [(CWFWiFiNetworkSharingManager *)selfCopy setWaitingForInitialScanResults:1, v32, v33];
  }

LABEL_28:
  [(CWFWiFiNetworkSharingManager *)selfCopy __updateAskToShareScanning:v32];
  objc_sync_exit(selfCopy);

  v31 = *MEMORY[0x1E69E9840];
}

- (void)didRegisterForNetworkListUpdateEventsWithClientID:(id)d predicateData:(id)data XPCConnection:(id)connection
{
  v26 = *MEMORY[0x1E69E9840];
  dCopy = d;
  dataCopy = data;
  connectionCopy = connection;
  if ([(CWFWiFiNetworkSharingManager *)self __addCurrentNetworkToNetworkListForClientID:dCopy forceRegistration:1])
  {
    store = [(CWFWiFiNetworkSharingManager *)self store];
    [store incrementNetworksUpdateCounterForClientID:dCopy];
  }

  v12 = [(CWFWiFiNetworkSharingManager *)self __networksUpdateForClientID:dCopy predicateData:dataCopy];
  if (v12)
  {
    v13 = CWFGetOSLog();
    if (v13)
    {
      v14 = CWFGetOSLog();
    }

    else
    {
      v14 = MEMORY[0x1E69E9C10];
      v15 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138543618;
      v23 = dCopy;
      v24 = 2114;
      v25 = v12;
      _os_log_send_and_compose_impl();
    }

    v16 = objc_alloc_init(CWFXPCEvent);
    [(CWFXPCEvent *)v16 setType:43];
    date = [MEMORY[0x1E695DF00] date];
    [(CWFXPCEvent *)v16 setTimestamp:date];

    v20 = @"WiFiNetworkSharingNetworksUpdate";
    v21 = v12;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    [(CWFXPCEvent *)v16 setInfo:v18];

    [(CWFXPCEvent *)v16 setWifiNetworkSharingClientID:dCopy];
    [connectionCopy sendXPCEvent:v16 reply:0];
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)didUpdateRegisteredEventIDs:(id)ds
{
  v18 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v5 = [MEMORY[0x1E695DFA8] set];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = dsCopy;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v5 addObject:{v10, v13}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(CWFWiFiNetworkSharingManager *)selfCopy setRegisteredWiFiNetworkSharingEventIDs:v5];
  objc_sync_exit(selfCopy);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)didInvalidateXPCConnection:(id)connection
{
  connectionCopy = connection;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  waitingForNetworkListUpdateAcknowledgement = [(CWFWiFiNetworkSharingManager *)selfCopy waitingForNetworkListUpdateAcknowledgement];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1E0D187D0;
  v8[3] = &unk_1E86E9508;
  v7 = connectionCopy;
  v9 = v7;
  v10 = selfCopy;
  [waitingForNetworkListUpdateAcknowledgement enumerateKeysAndObjectsUsingBlock:v8];

  objc_sync_exit(selfCopy);
}

- (void)__launchAppExtensionForClientID:(id)d
{
  v9 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = CWFGetOSLog();
  if (v5)
  {
    v6 = CWFGetOSLog();
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }

  [(CWFWiFiNetworkSharingManager *)self __deviceForClientID:dCopy];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)__relaunchAppexIfNeeded
{
  waitingForNetworkListUpdateAcknowledgement = [(CWFWiFiNetworkSharingManager *)self waitingForNetworkListUpdateAcknowledgement];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1E0D18B40;
  v4[3] = &unk_1E86E9530;
  v4[4] = self;
  [waitingForNetworkListUpdateAcknowledgement enumerateKeysAndObjectsUsingBlock:v4];
}

- (int64_t)__nextAppexRelaunchIntervalFromNow
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0x7FFFFFFFFFFFFFFFLL;
  v3 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  waitingForNetworkListUpdateAcknowledgement = [(CWFWiFiNetworkSharingManager *)self waitingForNetworkListUpdateAcknowledgement];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E0D18DC0;
  v7[3] = &unk_1E86E9558;
  v7[4] = self;
  v7[5] = &v8;
  v7[6] = v3;
  [waitingForNetworkListUpdateAcknowledgement enumerateKeysAndObjectsUsingBlock:v7];

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (void)__scheduleNextAppexRelaunch
{
  v24 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  nextAppexRelaunchTimer = [(CWFWiFiNetworkSharingManager *)selfCopy nextAppexRelaunchTimer];

  if (!nextAppexRelaunchTimer)
  {
    internalQueue = [(CWFWiFiNetworkSharingManager *)selfCopy internalQueue];
    v5 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, internalQueue);
    [(CWFWiFiNetworkSharingManager *)selfCopy setNextAppexRelaunchTimer:v5];

    nextAppexRelaunchTimer2 = [(CWFWiFiNetworkSharingManager *)selfCopy nextAppexRelaunchTimer];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = sub_1E0D19184;
    handler[3] = &unk_1E86E6010;
    handler[4] = selfCopy;
    dispatch_source_set_event_handler(nextAppexRelaunchTimer2, handler);

    nextAppexRelaunchTimer3 = [(CWFWiFiNetworkSharingManager *)selfCopy nextAppexRelaunchTimer];
    dispatch_source_set_timer(nextAppexRelaunchTimer3, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);

    nextAppexRelaunchTimer4 = [(CWFWiFiNetworkSharingManager *)selfCopy nextAppexRelaunchTimer];
    dispatch_resume(nextAppexRelaunchTimer4);
  }

  __nextAppexRelaunchIntervalFromNow = [(CWFWiFiNetworkSharingManager *)selfCopy __nextAppexRelaunchIntervalFromNow];
  if (__nextAppexRelaunchIntervalFromNow == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = -1;
  }

  else
  {
    v10 = dispatch_time(0, __nextAppexRelaunchIntervalFromNow);
  }

  v11 = CWFGetOSLog();
  if (v11)
  {
    v12 = CWFGetOSLog();
  }

  else
  {
    v12 = MEMORY[0x1E69E9C10];
    v13 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    askToShareFromAppexClientID = [(CWFWiFiNetworkSharingManager *)selfCopy askToShareFromAppexClientID];
    v18 = 138543874;
    v19 = askToShareFromAppexClientID;
    v20 = 1024;
    v21 = 30;
    v22 = 2048;
    v23 = __nextAppexRelaunchIntervalFromNow / 0x3B9ACA00;
    _os_log_send_and_compose_impl();
  }

  nextAppexRelaunchTimer5 = [(CWFWiFiNetworkSharingManager *)selfCopy nextAppexRelaunchTimer];
  dispatch_source_set_timer(nextAppexRelaunchTimer5, v10, 0xFFFFFFFFFFFFFFFFLL, 0);

  objc_sync_exit(selfCopy);
  v16 = *MEMORY[0x1E69E9840];
}

- (void)extendAppexRuntimeForClientID:(id)d
{
  v9 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = CWFGetOSLog();
  if (v5)
  {
    v6 = CWFGetOSLog();
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }

  [(CWFWiFiNetworkSharingManager *)self __launchAppExtensionForClientID:dCopy];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)__sendNetworkListUpdateEventForClientID:(id)d
{
  dCopy = d;
  internalQueue = [(CWFWiFiNetworkSharingManager *)self internalQueue];
  v6 = qos_class_self();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1E0D19368;
  v9[3] = &unk_1E86E6420;
  v9[4] = self;
  v10 = dCopy;
  v7 = dCopy;
  v8 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v6, 0, v9);
  dispatch_async(internalQueue, v8);
}

- (id)__clientIDsRegisteredNetworksUpdateEvents
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  registeredWiFiNetworkSharingEventIDs = [(CWFWiFiNetworkSharingManager *)self registeredWiFiNetworkSharingEventIDs];
  v3 = [registeredWiFiNetworkSharingEventIDs countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    array = 0;
    v6 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(registeredWiFiNetworkSharingEventIDs);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 type] == 43)
        {
          if (!array)
          {
            array = [MEMORY[0x1E695DF70] array];
          }

          clientID = [v8 clientID];
          [array addObject:clientID];
        }
      }

      v4 = [registeredWiFiNetworkSharingEventIDs countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  else
  {
    array = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return array;
}

- (id)__registeredNetworksUpdateEventIDsForClientID:(id)d
{
  v25 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (dCopy)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    registeredWiFiNetworkSharingEventIDs = [(CWFWiFiNetworkSharingManager *)self registeredWiFiNetworkSharingEventIDs];
    v5 = [registeredWiFiNetworkSharingEventIDs countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (!v5)
    {
      array = 0;
      goto LABEL_20;
    }

    v6 = v5;
    array = 0;
    v8 = *v21;
    while (1)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(registeredWiFiNetworkSharingEventIDs);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        if ([v10 type] == 43)
        {
          clientID = [v10 clientID];
          v12 = clientID;
          if (clientID == dCopy)
          {

            if (!array)
            {
              goto LABEL_14;
            }

            goto LABEL_12;
          }

          clientID2 = [v10 clientID];
          if (clientID2)
          {
            v14 = clientID2;
            clientID3 = [v10 clientID];
            v16 = [dCopy isEqual:clientID3];

            if (!v16)
            {
              continue;
            }

            if (array)
            {
              goto LABEL_12;
            }

LABEL_14:
            array = [MEMORY[0x1E695DF70] array];
LABEL_12:
            [array addObject:v10];
            continue;
          }
        }
      }

      v6 = [registeredWiFiNetworkSharingEventIDs countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (!v6)
      {
LABEL_20:

        goto LABEL_21;
      }
    }
  }

  array = 0;
LABEL_21:

  v17 = *MEMORY[0x1E69E9840];

  return array;
}

- (id)__networkListForClientID:(id)d predicateData:(id)data
{
  v70 = *MEMORY[0x1E69E9840];
  dCopy = d;
  dataCopy = data;
  array = [MEMORY[0x1E695DF70] array];
  context = objc_autoreleasePoolPush();
  __knownNetworks = [(CWFWiFiNetworkSharingManager *)self __knownNetworks];
  store = [(CWFWiFiNetworkSharingManager *)self store];
  v10 = [store networkMetadataForClientID:dCopy];

  v11 = [(CWFWiFiNetworkSharingManager *)self authorizationLevelForClientID:dCopy];
  unsignedIntegerValue = [v11 unsignedIntegerValue];

  date = [MEMORY[0x1E695DF00] date];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = __knownNetworks;
  v57 = [obj countByEnumeratingWithState:&v60 objects:v69 count:16];
  if (v57)
  {
    v12 = *v61;
    v50 = array;
    selfCopy = self;
    v54 = *v61;
    v52 = v10;
    do
    {
      for (i = 0; i != v57; ++i)
      {
        if (*v61 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v60 + 1) + 8 * i);
        v15 = objc_autoreleasePoolPush();
        wifiNetworkSharingNetworkID = [v14 wifiNetworkSharingNetworkID];
        v17 = [v10 objectForKeyedSubscript:wifiNetworkSharingNetworkID];

        if (v17 && [(CWFWiFiNetworkSharingManager *)self __canAutomaticallyShareKnownNetwork:v14 metadata:v17 authorizationStatus:unsignedIntegerValue])
        {
          firstSharedDate = [v17 firstSharedDate];

          if (!firstSharedDate)
          {
            [v17 setFirstSharedDate:date];
            [v17 setLastModifiedDate:date];
          }

          [v17 setMostRecentlySharedDate:date];
          store2 = [(CWFWiFiNetworkSharingManager *)self store];
          wifiNetworkSharingNetworkID2 = [v14 wifiNetworkSharingNetworkID];
          [store2 setNetworkMetadata:v17 clientID:dCopy networkID:wifiNetworkSharingNetworkID2];

          v21 = objc_alloc_init(CWFWiFiNetworkSharingNetwork);
          sSID = [v14 SSID];
          [(CWFWiFiNetworkSharingNetwork *)v21 setSSID:sSID];

          -[CWFWiFiNetworkSharingNetwork setSupportedSecurityTypes:](v21, "setSupportedSecurityTypes:", [v14 effectiveSupportedSecurityTypes]);
          -[CWFWiFiNetworkSharingNetwork setIsHidden:](v21, "setIsHidden:", [v14 hiddenState] == 1);
          if (([v14 isCaptive] & 1) != 0 || objc_msgSend(v14, "wasCaptive"))
          {
            [(CWFWiFiNetworkSharingNetwork *)v21 setIsCaptive:1];
          }

          else
          {
            captiveWebsheetLoginDate = [v14 captiveWebsheetLoginDate];
            [(CWFWiFiNetworkSharingNetwork *)v21 setIsCaptive:captiveWebsheetLoginDate != 0];
          }

          firstSharedDate2 = [v17 firstSharedDate];
          [(CWFWiFiNetworkSharingNetwork *)v21 setFirstSharedDate:firstSharedDate2];

          lastModifiedDate = [v17 lastModifiedDate];
          [(CWFWiFiNetworkSharingNetwork *)v21 setLastModifiedDate:lastModifiedDate];

          if (([v14 isCaptive] & 1) != 0 || (objc_msgSend(v14, "wasCaptive") & 1) != 0 || (objc_msgSend(v14, "captiveWebsheetLoginDate"), v26 = objc_claimAutoreleasedReturnValue(), v26, v26))
          {
            v59 = 0;
            v27 = [(CWFWiFiNetworkSharingManager *)self __captivePortalCredentialsForKnownNetwork:v14 error:&v59];
            v28 = v59;
            if (v27)
            {
              [(CWFWiFiNetworkSharingNetwork *)v21 setCaptivePortalCredentials:v27];
            }

            else
            {
              v29 = dCopy;
              v30 = CWFGetOSLog();
              if (v30)
              {
                v31 = CWFGetOSLog();
              }

              else
              {
                v31 = MEMORY[0x1E69E9C10];
                v32 = MEMORY[0x1E69E9C10];
              }

              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
              {
                v65 = 138543618;
                v66 = v21;
                v67 = 2114;
                v68 = v28;
                LODWORD(v46) = 22;
                v44 = &v65;
                _os_log_send_and_compose_impl();
              }

              dCopy = v29;
              array = v50;
            }

            self = selfCopy;
            v12 = v54;
          }

          v10 = v52;
          if ([v14 isPSK])
          {
            v58 = 0;
            v33 = [(CWFWiFiNetworkSharingManager *)self __passwordForKnownNetwork:v14 error:&v58];
            v34 = v58;
            if (v33)
            {
              [(CWFWiFiNetworkSharingNetwork *)v21 setPassword:v33];
            }

            else
            {
              v35 = CWFGetOSLog();
              if (v35)
              {
                v36 = CWFGetOSLog();
              }

              else
              {
                v36 = MEMORY[0x1E69E9C10];
                v37 = MEMORY[0x1E69E9C10];
              }

              if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
              {
                v65 = 138543618;
                v66 = v21;
                v67 = 2114;
                v68 = v34;
                LODWORD(v47) = 22;
                v45 = &v65;
                _os_log_send_and_compose_impl();
              }

              self = selfCopy;
              v10 = v52;
            }

            v12 = v54;
          }

          [array addObject:{v21, v45, v47}];
        }

        objc_autoreleasePoolPop(v15);
      }

      v57 = [obj countByEnumeratingWithState:&v60 objects:v69 count:16];
    }

    while (v57);
  }

  v38 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"networkName" ascending:0 selector:sel_caseInsensitiveCompare_];
  v64 = v38;
  v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v64 count:1];
  [array sortUsingDescriptors:v39];

  objc_autoreleasePoolPop(context);
  if (dataCopy)
  {
    v40 = [CWFWiFiNetworkSharingUtil prepareSharedNetworksObjcWithNetworks:array matching:dataCopy];
  }

  else
  {
    v40 = array;
  }

  v41 = v40;

  v42 = *MEMORY[0x1E69E9840];

  return v41;
}

- (id)__networksUpdateForClientID:(id)d predicateData:(id)data
{
  dCopy = d;
  dataCopy = data;
  if (!dCopy)
  {
    v8 = 0;
    goto LABEL_12;
  }

  v8 = objc_alloc_init(CWFWiFiNetworkSharingNetworkListUpdate);
  v9 = [(CWFWiFiNetworkSharingManager *)self __networkListForClientID:dCopy predicateData:dataCopy];
  [(CWFWiFiNetworkSharingNetworkListUpdate *)v8 setNetworkList:v9];

  store = [(CWFWiFiNetworkSharingManager *)self store];
  -[CWFWiFiNetworkSharingNetworkListUpdate setNetworkListUpdateCounter:](v8, "setNetworkListUpdateCounter:", [store networkListUpdateCounterForClientID:dCopy]);

  askToShareFromAppClientID = [(CWFWiFiNetworkSharingManager *)self askToShareFromAppClientID];
  v12 = askToShareFromAppClientID;
  if (askToShareFromAppClientID == dCopy)
  {
  }

  else
  {
    askToShareFromAppClientID2 = [(CWFWiFiNetworkSharingManager *)self askToShareFromAppClientID];
    if (!askToShareFromAppClientID2)
    {

      goto LABEL_9;
    }

    v14 = askToShareFromAppClientID2;
    askToShareFromAppClientID3 = [(CWFWiFiNetworkSharingManager *)self askToShareFromAppClientID];
    v16 = [dCopy isEqual:askToShareFromAppClientID3];

    if (!v16)
    {
      goto LABEL_9;
    }
  }

  [(CWFWiFiNetworkSharingNetworkListUpdate *)v8 setIsAskToShareRequestFromAppPending:1];
LABEL_9:
  if ([(CWFWiFiNetworkSharingManager *)self __canAskToShareCurrentNetworkForClientID:dCopy onDemand:0])
  {
    associatedNetwork = [(CWFWiFiNetworkSharingManager *)self associatedNetwork];
    matchingKnownNetworkProfile = [associatedNetwork matchingKnownNetworkProfile];
    wifiNetworkSharingNetworkID = [matchingKnownNetworkProfile wifiNetworkSharingNetworkID];
    v20 = [(CWFWiFiNetworkSharingManager *)self __shouldRateLimitAskToShareFromAppexRequestWithClientID:dCopy networkID:wifiNetworkSharingNetworkID];

    if (!v20)
    {
      [(CWFWiFiNetworkSharingNetworkListUpdate *)v8 setIsAskToShareNetworkAvailable:1];
    }
  }

LABEL_12:

  return v8;
}

- (void)acknowledgeNetworkListUpdate:(id)update clientID:(id)d
{
  v36 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = CWFGetOSLog();
  if (v9)
  {
    v10 = CWFGetOSLog();
  }

  else
  {
    v10 = MEMORY[0x1E69E9C10];
    v11 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v32 = 138543618;
    v33 = dCopy;
    v34 = 2114;
    v35 = updateCopy;
    LODWORD(v30) = 22;
    v28 = &v32;
    _os_log_send_and_compose_impl();
  }

  store = [(CWFWiFiNetworkSharingManager *)selfCopy store];
  v13 = [store acknowledgedNetworksUpdateCounterForClientID:dCopy];

  if ([updateCopy networkListUpdateCounter] > v13)
  {
    store2 = [(CWFWiFiNetworkSharingManager *)selfCopy store];
    [store2 setAcknowledgedNetworksUpdateCounter:objc_msgSend(updateCopy clientID:{"networkListUpdateCounter"), dCopy}];

    v15 = CWFGetOSLog();
    if (v15)
    {
      v16 = CWFGetOSLog();
    }

    else
    {
      v16 = MEMORY[0x1E69E9C10];
      v17 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      networkListUpdateCounter = [updateCopy networkListUpdateCounter];
      v32 = 138543618;
      v33 = dCopy;
      v34 = 2048;
      v35 = networkListUpdateCounter;
      LODWORD(v30) = 22;
      v28 = &v32;
      _os_log_send_and_compose_impl();
    }
  }

  v19 = [(CWFWiFiNetworkSharingManager *)selfCopy waitingForNetworkListUpdateAcknowledgement:v28];
  v20 = [v19 objectForKeyedSubscript:dCopy];
  networkListUpdateCounter2 = [v20 networkListUpdateCounter];

  if ([updateCopy networkListUpdateCounter] >= networkListUpdateCounter2)
  {
    waitingForNetworkListUpdateAcknowledgement = [(CWFWiFiNetworkSharingManager *)selfCopy waitingForNetworkListUpdateAcknowledgement];
    [waitingForNetworkListUpdateAcknowledgement setObject:0 forKeyedSubscript:dCopy];

    v23 = CWFGetOSLog();
    if (v23)
    {
      v24 = CWFGetOSLog();
    }

    else
    {
      v24 = MEMORY[0x1E69E9C10];
      v25 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      networkListUpdateCounter3 = [updateCopy networkListUpdateCounter];
      v32 = 138543618;
      v33 = dCopy;
      v34 = 2050;
      v35 = networkListUpdateCounter3;
      LODWORD(v31) = 22;
      v29 = &v32;
      _os_log_send_and_compose_impl();
    }
  }

  [(CWFWiFiNetworkSharingManager *)selfCopy __sendNetworkListUpdateEventForClientID:dCopy, v29, v31];
  objc_sync_exit(selfCopy);

  v27 = *MEMORY[0x1E69E9840];
}

- (void)__setWantsAcknowledgementForNetworkListUpdate:(id)update clientID:(id)d
{
  v14 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  waitingForNetworkListUpdateAcknowledgement = [(CWFWiFiNetworkSharingManager *)selfCopy waitingForNetworkListUpdateAcknowledgement];
  [waitingForNetworkListUpdateAcknowledgement setObject:updateCopy forKeyedSubscript:dCopy];

  v10 = CWFGetOSLog();
  if (v10)
  {
    v11 = CWFGetOSLog();
  }

  else
  {
    v11 = MEMORY[0x1E69E9C10];
    v12 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }

  objc_sync_exit(selfCopy);
  v13 = *MEMORY[0x1E69E9840];
}

- (void)__completeAskToShareFromAppWithError:(id)error status:(int64_t)status
{
  v33 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  askToShareFromAppCompletion = [(CWFWiFiNetworkSharingManager *)selfCopy askToShareFromAppCompletion];
  if (askToShareFromAppCompletion)
  {
    askToShareFromAppClientID = [(CWFWiFiNetworkSharingManager *)selfCopy askToShareFromAppClientID];

    if (askToShareFromAppClientID)
    {
      v10 = CWFGetOSLog();
      if (v10)
      {
        v11 = CWFGetOSLog();
      }

      else
      {
        v11 = MEMORY[0x1E69E9C10];
        v12 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        askToShareFromAppClientID2 = [(CWFWiFiNetworkSharingManager *)selfCopy askToShareFromAppClientID];
        sub_1E0BF1E78(status);
        v27 = 138543874;
        v28 = askToShareFromAppClientID2;
        v29 = 2114;
        v30 = errorCopy;
        v32 = v31 = 2114;
        _os_log_send_and_compose_impl();
      }

      askToShareFromAppCompletion2 = [(CWFWiFiNetworkSharingManager *)selfCopy askToShareFromAppCompletion];
      targetQueue = [(CWFWiFiNetworkSharingManager *)selfCopy targetQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1E0D1AC20;
      block[3] = &unk_1E86E9580;
      v16 = askToShareFromAppCompletion2;
      v25 = v16;
      v24 = errorCopy;
      statusCopy = status;
      dispatch_async(targetQueue, block);

      askToShareFromAppClientID3 = [(CWFWiFiNetworkSharingManager *)selfCopy askToShareFromAppClientID];
      internalQueue = [(CWFWiFiNetworkSharingManager *)selfCopy internalQueue];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = sub_1E0D1AC78;
      v21[3] = &unk_1E86E6420;
      v21[4] = selfCopy;
      v19 = askToShareFromAppClientID3;
      v22 = v19;
      dispatch_async(internalQueue, v21);

      [(CWFWiFiNetworkSharingManager *)selfCopy setAskToShareFromAppCompletion:0];
      [(CWFWiFiNetworkSharingManager *)selfCopy __stopWaitingForAppex];
      [(CWFWiFiNetworkSharingManager *)selfCopy setAskToShareFromAppClientID:0];
    }
  }

  objc_sync_exit(selfCopy);

  v20 = *MEMORY[0x1E69E9840];
}

- (void)__updateRateLimitAskToShareFromAppRequestTimestampCacheForClientID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v9 = dCopy;
    askToShareRequestFromAppTimestampCache = [(CWFWiFiNetworkSharingManager *)self askToShareRequestFromAppTimestampCache];
    array = [askToShareRequestFromAppTimestampCache objectForKeyedSubscript:v9];

    if (!array)
    {
      array = [MEMORY[0x1E695DF70] array];
      askToShareRequestFromAppTimestampCache2 = [(CWFWiFiNetworkSharingManager *)self askToShareRequestFromAppTimestampCache];
      [askToShareRequestFromAppTimestampCache2 setObject:array forKeyedSubscript:v9];
    }

    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW)];
    [array addObject:v8];

    if ([array count] >= 2)
    {
      [array removeObjectAtIndex:0];
    }

    dCopy = v9;
  }
}

- (BOOL)__shouldRateLimitAskToShareFromAppRequestWithClientID:(id)d
{
  v14 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (dCopy && (-[CWFWiFiNetworkSharingManager askToShareRequestFromAppTimestampCache](self, "askToShareRequestFromAppTimestampCache"), v5 = objc_claimAutoreleasedReturnValue(), [v5 allKeys], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "containsObject:", dCopy), v6, v5, v7))
  {
    v8 = CWFGetOSLog();
    if (v8)
    {
      v9 = CWFGetOSLog();
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v11 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      _os_log_send_and_compose_impl();
    }

    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)askToShareFromAppForClientID:(id)d completion:(id)completion
{
  v33 = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  askToShareFromAppClientID = [(CWFWiFiNetworkSharingManager *)self askToShareFromAppClientID];

  if (!askToShareFromAppClientID)
  {
    [(CWFWiFiNetworkSharingManager *)self setAskToShareFromAppClientID:dCopy];
    [(CWFWiFiNetworkSharingManager *)self setAskToShareFromAppCompletion:completionCopy];
    v9 = [(CWFWiFiNetworkSharingManager *)self authorizationLevelForClientID:dCopy];
    unsignedIntegerValue = [v9 unsignedIntegerValue];

    if (unsignedIntegerValue != 2 && unsignedIntegerValue != 7)
    {
      v15 = CWFGetOSLog();
      if (v15)
      {
        v16 = CWFGetOSLog();
      }

      else
      {
        v16 = MEMORY[0x1E69E9C10];
        v19 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        _os_log_send_and_compose_impl();
      }

      v14 = CWFErrorDescription(@"WiFiNetworkSharingError", 8uLL);
      v20 = CWFErrorWithDescription(@"WiFiNetworkSharingError", 8, v14);
      [(CWFWiFiNetworkSharingManager *)self __completeAskToShareFromAppexWithError:v20 status:0];

      goto LABEL_18;
    }

    bundleID = [dCopy bundleID];
    v12 = [(CWFWiFiNetworkSharingManager *)self __appForegroundStateHandlerForBundleID:bundleID];

    __forceForegroundAppState = [(CWFWiFiNetworkSharingManager *)self __forceForegroundAppState];
    v14 = __forceForegroundAppState;
    if (__forceForegroundAppState)
    {
      if ([__forceForegroundAppState BOOLValue])
      {
LABEL_6:
        if (![(CWFWiFiNetworkSharingManager *)self __shouldRateLimitAskToShareFromAppRequestWithClientID:dCopy])
        {
          if ([(CWFWiFiNetworkSharingManager *)self __isNetworkListUpdateEventRegisteredForClientID:dCopy])
          {
            [(CWFWiFiNetworkSharingManager *)self __updateRateLimitAskToShareFromAppRequestTimestampCacheForClientID:dCopy];
            [(CWFWiFiNetworkSharingManager *)self setWaitingForAppex:1];
            [(CWFWiFiNetworkSharingManager *)self __launchAppExtensionForClientID:dCopy];
            [(CWFWiFiNetworkSharingManager *)self __startWaitingForAppex];
            [(CWFWiFiNetworkSharingManager *)self __sendNetworkListUpdateEventForClientID:dCopy];
LABEL_18:

            goto LABEL_19;
          }

          v26 = CWFGetOSLog();
          if (v26)
          {
            v27 = CWFGetOSLog();
          }

          else
          {
            v27 = MEMORY[0x1E69E9C10];
            v32 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            _os_log_send_and_compose_impl();
          }

          v24 = CWFErrorDescription(@"WiFiNetworkSharingError", 2uLL);
          v31 = CWFErrorWithDescription(@"WiFiNetworkSharingError", 2, v24);
          [(CWFWiFiNetworkSharingManager *)self __completeAskToShareFromAppexWithError:v31 status:0];
LABEL_39:

          goto LABEL_18;
        }

        v24 = CWFErrorDescription(@"WiFiNetworkSharingError", 0xBuLL);
        v25 = 11;
LABEL_34:
        v31 = CWFErrorWithDescription(@"WiFiNetworkSharingError", v25, v24);
        [(CWFWiFiNetworkSharingManager *)self __completeAskToShareFromAppWithError:v31 status:0];
        goto LABEL_39;
      }
    }

    else if (v12)
    {
      goto LABEL_6;
    }

    v17 = CWFGetOSLog();
    if (v17)
    {
      v18 = CWFGetOSLog();
    }

    else
    {
      v18 = MEMORY[0x1E69E9C10];
      v30 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      _os_log_send_and_compose_impl();
    }

    v24 = CWFErrorDescription(@"WiFiNetworkSharingError", 5uLL);
    v25 = 5;
    goto LABEL_34;
  }

  v22 = CWFGetOSLog();
  if (v22)
  {
    v23 = CWFGetOSLog();
  }

  else
  {
    v23 = MEMORY[0x1E69E9C10];
    v28 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }

  if (completionCopy)
  {
    v14 = CWFErrorDescription(@"WiFiNetworkSharingError", 0xBuLL);
    v29 = CWFErrorWithDescription(@"WiFiNetworkSharingError", 11, v14);
    completionCopy[2](completionCopy, v29, 0);

    goto LABEL_18;
  }

LABEL_19:

  v21 = *MEMORY[0x1E69E9840];
}

- (void)cancelAskToShareFromAppRequestForClientID:(id)d
{
  v24 = *MEMORY[0x1E69E9840];
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = CWFGetOSLog();
  if (v6)
  {
    v7 = CWFGetOSLog();
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    [(CWFWiFiNetworkSharingManager *)selfCopy askToShareFromAppClientID];
    v23 = v22 = 138543362;
    _os_log_send_and_compose_impl();
  }

  v9 = CWFErrorDescription(@"WiFiNetworkSharingError", 2uLL);
  v10 = CWFErrorWithDescription(@"WiFiNetworkSharingError", 2, v9);
  [(CWFWiFiNetworkSharingManager *)selfCopy __completeAskToShareFromAppWithError:v10 status:0];

  if (dCopy)
  {
    askToShareFromAppexClientID = [(CWFWiFiNetworkSharingManager *)selfCopy askToShareFromAppexClientID];
    if (askToShareFromAppexClientID)
    {
      askToShareFromAppexClientID2 = [(CWFWiFiNetworkSharingManager *)selfCopy askToShareFromAppexClientID];
      v13 = [dCopy isEqual:askToShareFromAppexClientID2];

      if (v13)
      {
        askToShareFromAppexClientID3 = [(CWFWiFiNetworkSharingManager *)selfCopy askToShareFromAppexClientID];
        targetQueue = [(CWFWiFiNetworkSharingManager *)selfCopy targetQueue];
        v16 = qos_class_self();
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = sub_1E0D1B6D0;
        block[3] = &unk_1E86E6420;
        block[4] = selfCopy;
        v21 = askToShareFromAppexClientID3;
        v17 = askToShareFromAppexClientID3;
        v18 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v16, 0, block);
        dispatch_async(targetQueue, v18);
      }
    }
  }

  objc_sync_exit(selfCopy);

  v19 = *MEMORY[0x1E69E9840];
}

- (void)__completeAskToShareFromAppexWithError:(id)error status:(int64_t)status
{
  v29 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  askToShareFromAppexCompletion = [(CWFWiFiNetworkSharingManager *)selfCopy askToShareFromAppexCompletion];
  if (askToShareFromAppexCompletion)
  {
    askToShareFromAppexClientID = [(CWFWiFiNetworkSharingManager *)selfCopy askToShareFromAppexClientID];

    if (askToShareFromAppexClientID)
    {
      v10 = CWFGetOSLog();
      if (v10)
      {
        v11 = CWFGetOSLog();
      }

      else
      {
        v11 = MEMORY[0x1E69E9C10];
        v12 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        askToShareFromAppexClientID2 = [(CWFWiFiNetworkSharingManager *)selfCopy askToShareFromAppexClientID];
        sub_1E0BF1E78(status);
        v23 = 138543874;
        v24 = askToShareFromAppexClientID2;
        v25 = 2114;
        v26 = errorCopy;
        v28 = v27 = 2114;
        _os_log_send_and_compose_impl();
      }

      askToShareFromAppexCompletion2 = [(CWFWiFiNetworkSharingManager *)selfCopy askToShareFromAppexCompletion];
      targetQueue = [(CWFWiFiNetworkSharingManager *)selfCopy targetQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1E0D1B9AC;
      block[3] = &unk_1E86E9580;
      v16 = askToShareFromAppexCompletion2;
      v21 = v16;
      v20 = errorCopy;
      statusCopy = status;
      dispatch_async(targetQueue, block);

      [(CWFWiFiNetworkSharingManager *)selfCopy setAskToShareFromAppexCompletion:0];
      askToShareNetworksCache = [(CWFWiFiNetworkSharingManager *)selfCopy askToShareNetworksCache];
      [askToShareNetworksCache removeAllObjects];

      [(CWFWiFiNetworkSharingManager *)selfCopy __stopAskToShareScanning];
      [(CWFWiFiNetworkSharingManager *)selfCopy setAskToShareFromAppexClientID:0];
    }
  }

  objc_sync_exit(selfCopy);

  v18 = *MEMORY[0x1E69E9840];
}

- (id)__descriptorForRateLimitAskToShareFromAppexRequestWithClientID:(id)d networkID:(id)iD
{
  v4 = 0;
  if (d && iD)
  {
    v6 = MEMORY[0x1E696AEC0];
    iDCopy = iD;
    dCopy = d;
    bundleID = [dCopy bundleID];
    accessoryID = [dCopy accessoryID];

    descriptor = [iDCopy descriptor];

    v4 = [v6 stringWithFormat:@"%@/%@/%@", bundleID, accessoryID, descriptor];
  }

  return v4;
}

- (void)__updateRateLimitAskToShareFromAppexRequestTimestampCacheForClientID:(id)d networkID:(id)iD
{
  if (d && iD)
  {
    v5 = [CWFWiFiNetworkSharingManager __descriptorForRateLimitAskToShareFromAppexRequestWithClientID:"__descriptorForRateLimitAskToShareFromAppexRequestWithClientID:networkID:" networkID:?];
    if (v5)
    {
      v10 = v5;
      askToShareRequestFromAppexTimestampCache = [(CWFWiFiNetworkSharingManager *)self askToShareRequestFromAppexTimestampCache];
      array = [askToShareRequestFromAppexTimestampCache objectForKeyedSubscript:v10];

      if (!array)
      {
        array = [MEMORY[0x1E695DF70] array];
        askToShareRequestFromAppexTimestampCache2 = [(CWFWiFiNetworkSharingManager *)self askToShareRequestFromAppexTimestampCache];
        [askToShareRequestFromAppexTimestampCache2 setObject:array forKeyedSubscript:v10];
      }

      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW)];
      [array addObject:v9];

      if ([array count] >= 2)
      {
        [array removeObjectAtIndex:0];
      }

      v5 = v10;
    }
  }
}

- (BOOL)__shouldRateLimitAskToShareFromAppexRequestWithClientID:(id)d networkID:(id)iD
{
  v31 = *MEMORY[0x1E69E9840];
  dCopy = d;
  iDCopy = iD;
  v8 = iDCopy;
  v9 = 0;
  if (dCopy && iDCopy)
  {
    v10 = [(CWFWiFiNetworkSharingManager *)self __descriptorForRateLimitAskToShareFromAppexRequestWithClientID:dCopy networkID:iDCopy];
    if (v10)
    {
      if (os_variant_has_internal_content() && _os_feature_enabled_impl())
      {
        v11 = CWFGetOSLog();
        if (v11)
        {
          v12 = CWFGetOSLog();
        }

        else
        {
          v12 = MEMORY[0x1E69E9C10];
          v14 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v27 = 134217984;
          v28 = 60;
          LODWORD(v26) = 12;
          v25 = &v27;
          _os_log_send_and_compose_impl();
        }

        v13 = 60;
      }

      else
      {
        v13 = 3600;
      }

      v15 = [(CWFWiFiNetworkSharingManager *)self askToShareRequestFromAppexTimestampCache:v25];
      v16 = [v15 objectForKeyedSubscript:v10];

      if ([v16 count] == 1 && (v17 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW), objc_msgSend(v16, "firstObject"), v18 = objc_claimAutoreleasedReturnValue(), v19 = v17 - objc_msgSend(v18, "unsignedLongLongValue"), v18, v13 > v19 / 0x3B9ACA00))
      {
        v20 = CWFGetOSLog();
        if (v20)
        {
          v21 = CWFGetOSLog();
        }

        else
        {
          v21 = MEMORY[0x1E69E9C10];
          v22 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v27 = 138543618;
          v28 = dCopy;
          v29 = 2114;
          v30 = v8;
          _os_log_send_and_compose_impl();
        }

        v9 = 1;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  v23 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)__canAskToShareKnownNetwork:(id)network metadata:(id)metadata authorizationStatus:(unint64_t)status onDemand:(BOOL)demand
{
  metadataCopy = metadata;
  if (![network supportsWiFiNetworkSharing] || status != 7 && status != 2)
  {
    goto LABEL_8;
  }

  if (!demand)
  {
    if ([metadataCopy askToShareStatus] != 2 && objc_msgSend(metadataCopy, "askToShareStatus") != 1)
    {
      if (status == 2)
      {
        v10 = [metadataCopy askToShareStatus] != 0;
        goto LABEL_9;
      }

      goto LABEL_5;
    }

LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

LABEL_5:
  v10 = 1;
LABEL_9:

  return v10;
}

- (BOOL)__canAutomaticallyShareKnownNetworkWithMetadata:(id)metadata authorizationStatus:(unint64_t)status
{
  metadataCopy = metadata;
  v6 = metadataCopy;
  if ((status == 7 || status == 2) && [metadataCopy askToShareStatus] != 2 && (status != 7 || objc_msgSend(v6, "askToShareStatus") == 1))
  {
    v7 = [v6 waitingForAssociation] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (BOOL)__canAutomaticallyShareKnownNetwork:(id)network metadata:(id)metadata authorizationStatus:(unint64_t)status
{
  metadataCopy = metadata;
  if ([network supportsWiFiNetworkSharing])
  {
    v9 = [(CWFWiFiNetworkSharingManager *)self __canAutomaticallyShareKnownNetworkWithMetadata:metadataCopy authorizationStatus:status];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)__doesAskToShareNetwork:(id)network matchAccessoryScanResult:(id)result
{
  networkCopy = network;
  resultCopy = result;
  scanResult = [networkCopy scanResult];
  sSID = [scanResult SSID];
  sSID2 = [resultCopy SSID];
  if (sSID == sSID2)
  {
    v15 = 1;
  }

  else
  {
    scanResult2 = [networkCopy scanResult];
    sSID3 = [scanResult2 SSID];
    if (sSID3)
    {
      sSID4 = [resultCopy SSID];
      if (sSID4)
      {
        v18 = sSID4;
        scanResult3 = [networkCopy scanResult];
        sSID5 = [scanResult3 SSID];
        sSID6 = [resultCopy SSID];
        v15 = [sSID5 isEqual:sSID6];

        sSID4 = v18;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (BOOL)__isAskToShareNetworkListChangedEventRegisteredForClientID:(id)d
{
  v23 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (dCopy)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    registeredWiFiNetworkSharingEventIDs = [(CWFWiFiNetworkSharingManager *)self registeredWiFiNetworkSharingEventIDs];
    v6 = [registeredWiFiNetworkSharingEventIDs countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v6)
    {
      v7 = *v19;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(registeredWiFiNetworkSharingEventIDs);
          }

          v9 = *(*(&v18 + 1) + 8 * i);
          if ([v9 type] == 44)
          {
            clientID = [v9 clientID];
            v11 = clientID;
            if (clientID == dCopy)
            {

LABEL_17:
              LOBYTE(v6) = 1;
              goto LABEL_18;
            }

            clientID2 = [v9 clientID];
            if (clientID2)
            {
              v13 = clientID2;
              clientID3 = [v9 clientID];
              v15 = [dCopy isEqual:clientID3];

              if (v15)
              {
                goto LABEL_17;
              }
            }

            else
            {
            }
          }
        }

        v6 = [registeredWiFiNetworkSharingEventIDs countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_18:
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)__askToShareNetworkListForClientID:(id)d localScanResults:(id)results accessoryScanResults:(id)scanResults onDemand:(BOOL)demand
{
  v73 = *MEMORY[0x1E69E9840];
  dCopy = d;
  resultsCopy = results;
  scanResultsCopy = scanResults;
  array = [MEMORY[0x1E695DF70] array];
  context = objc_autoreleasePoolPush();
  __knownNetworks = [(CWFWiFiNetworkSharingManager *)self __knownNetworks];
  store = [(CWFWiFiNetworkSharingManager *)self store];
  v13 = [store networkMetadataForClientID:dCopy];

  v47 = dCopy;
  v14 = [(CWFWiFiNetworkSharingManager *)self authorizationLevelForClientID:dCopy];
  unsignedIntegerValue = [v14 unsignedIntegerValue];

  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = sub_1E0D1CF20;
  v66[3] = &unk_1E86E95A8;
  v51 = v13;
  v67 = v51;
  selfCopy = self;
  v69 = unsignedIntegerValue;
  demandCopy = demand;
  v45 = __knownNetworks;
  v55 = [__knownNetworks objectsPassingTest:v66];
  array2 = [MEMORY[0x1E695DF70] array];
  associatedNetwork = [(CWFWiFiNetworkSharingManager *)self associatedNetwork];
  if (associatedNetwork)
  {
    [array2 addObject:associatedNetwork];
  }

  if (resultsCopy)
  {
    [array2 addObjectsFromArray:?];
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = array2;
  v56 = [obj countByEnumeratingWithState:&v62 objects:v72 count:16];
  if (v56)
  {
    v54 = *v63;
    v50 = associatedNetwork;
    do
    {
      for (i = 0; i != v56; ++i)
      {
        if (*v63 != v54)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v62 + 1) + 8 * i);
        v20 = objc_autoreleasePoolPush();
        allObjects = [v55 allObjects];
        v22 = sub_1E0BED85C(v19, allObjects);

        if (v22)
        {
          v57 = v20;
          wifiNetworkSharingNetworkID = [v22 wifiNetworkSharingNetworkID];
          v24 = [v51 objectForKeyedSubscript:wifiNetworkSharingNetworkID];

          sSID = [associatedNetwork SSID];
          if (sSID)
          {
            sSID2 = [v19 SSID];
            if (sSID2)
            {
              sSID3 = [associatedNetwork SSID];
              sSID4 = [v19 SSID];
              v29 = [sSID3 isEqual:sSID4];
            }

            else
            {
              v29 = 0;
            }
          }

          else
          {
            v29 = 0;
          }

          v30 = [(CWFWiFiNetworkSharingManager *)self __askToShareNetworkForNetworkProfile:v22 scanResult:v19 metadata:v24 isConnected:v29];
          v58 = 0u;
          v59 = 0u;
          v60 = 0u;
          v61 = 0u;
          v31 = scanResultsCopy;
          v32 = [v31 countByEnumeratingWithState:&v58 objects:v71 count:16];
          if (v32)
          {
            v33 = v32;
            v34 = *v59;
            while (2)
            {
              for (j = 0; j != v33; ++j)
              {
                if (*v59 != v34)
                {
                  objc_enumerationMutation(v31);
                }

                v36 = *(*(&v58 + 1) + 8 * j);
                if ([(CWFWiFiNetworkSharingManager *)self __doesAskToShareNetwork:v30 matchAccessoryScanResult:v36])
                {
                  [v36 signalStrength];
                  v38 = v37;
                  scanResult = [v30 scanResult];
                  [scanResult setSignalStrengthOnAccessory:v38];

                  isConnected = [v36 isConnected];
                  scanResult2 = [v30 scanResult];
                  [scanResult2 setIsConnectedOnAccessory:isConnected];

                  scanResult3 = [v30 scanResult];
                  [scanResult3 setWasFoundOnAccessory:1];

                  goto LABEL_27;
                }
              }

              v33 = [v31 countByEnumeratingWithState:&v58 objects:v71 count:16];
              if (v33)
              {
                continue;
              }

              break;
            }
          }

LABEL_27:

          [array addObject:v30];
          associatedNetwork = v50;
          v20 = v57;
        }

        objc_autoreleasePoolPop(v20);
      }

      v56 = [obj countByEnumeratingWithState:&v62 objects:v72 count:16];
    }

    while (v56);
  }

  objc_autoreleasePoolPop(context);
  v43 = *MEMORY[0x1E69E9840];

  return array;
}

- (void)__startAskToShareScanning
{
  v26 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  accessoryScanTimer = [(CWFWiFiNetworkSharingManager *)selfCopy accessoryScanTimer];

  if (!accessoryScanTimer)
  {
    internalQueue = [(CWFWiFiNetworkSharingManager *)selfCopy internalQueue];
    v5 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, internalQueue);
    [(CWFWiFiNetworkSharingManager *)selfCopy setAccessoryScanTimer:v5];

    accessoryScanTimer2 = [(CWFWiFiNetworkSharingManager *)selfCopy accessoryScanTimer];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = sub_1E0D1D300;
    handler[3] = &unk_1E86E6010;
    handler[4] = selfCopy;
    dispatch_source_set_event_handler(accessoryScanTimer2, handler);

    accessoryScanTimer3 = [(CWFWiFiNetworkSharingManager *)selfCopy accessoryScanTimer];
    dispatch_source_set_timer(accessoryScanTimer3, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);

    accessoryScanTimer4 = [(CWFWiFiNetworkSharingManager *)selfCopy accessoryScanTimer];
    dispatch_resume(accessoryScanTimer4);
  }

  if (![(CWFWiFiNetworkSharingManager *)selfCopy isNextAskToShareScanScheduled])
  {
    [(CWFWiFiNetworkSharingManager *)selfCopy setIsNextAskToShareScanScheduled:1];
    if ([(CWFWiFiNetworkSharingManager *)selfCopy waitingForInitialScanResults])
    {
      v9 = CWFGetOSLog();
      if (v9)
      {
        v10 = CWFGetOSLog();
      }

      else
      {
        v10 = MEMORY[0x1E69E9C10];
        v13 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        askToShareFromAppexClientID = [(CWFWiFiNetworkSharingManager *)selfCopy askToShareFromAppexClientID];
        v22 = 138543362;
        v23 = askToShareFromAppexClientID;
        _os_log_send_and_compose_impl();
      }

      accessoryScanTimer5 = [(CWFWiFiNetworkSharingManager *)selfCopy accessoryScanTimer];
      accessoryScanTimer6 = accessoryScanTimer5;
      v17 = 0;
    }

    else
    {
      v11 = CWFGetOSLog();
      if (v11)
      {
        v12 = CWFGetOSLog();
      }

      else
      {
        v12 = MEMORY[0x1E69E9C10];
        v18 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        askToShareFromAppexClientID2 = [(CWFWiFiNetworkSharingManager *)selfCopy askToShareFromAppexClientID];
        v22 = 138543618;
        v23 = askToShareFromAppexClientID2;
        v24 = 1024;
        v25 = 10;
        _os_log_send_and_compose_impl();
      }

      accessoryScanTimer6 = [(CWFWiFiNetworkSharingManager *)selfCopy accessoryScanTimer];
      v17 = dispatch_time(0, 10000000000);
      accessoryScanTimer5 = accessoryScanTimer6;
    }

    dispatch_source_set_timer(accessoryScanTimer5, v17, 0xFFFFFFFFFFFFFFFFLL, 0);
  }

  objc_sync_exit(selfCopy);

  v20 = *MEMORY[0x1E69E9840];
}

- (void)__stopAskToShareScanning
{
  v10 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(CWFWiFiNetworkSharingManager *)selfCopy isNextAskToShareScanScheduled])
  {
    v3 = CWFGetOSLog();
    if (v3)
    {
      v4 = CWFGetOSLog();
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
      v5 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      askToShareFromAppexClientID = [(CWFWiFiNetworkSharingManager *)selfCopy askToShareFromAppexClientID];
      _os_log_send_and_compose_impl();
    }

    [(CWFWiFiNetworkSharingManager *)selfCopy setIsNextAskToShareScanScheduled:0];
    [(CWFWiFiNetworkSharingManager *)selfCopy setWaitingForInitialScanResults:0];
    accessoryScanTimer = [(CWFWiFiNetworkSharingManager *)selfCopy accessoryScanTimer];

    if (accessoryScanTimer)
    {
      accessoryScanTimer2 = [(CWFWiFiNetworkSharingManager *)selfCopy accessoryScanTimer];
      dispatch_source_set_timer(accessoryScanTimer2, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    }
  }

  objc_sync_exit(selfCopy);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)__updateAskToShareScanning
{
  obj = self;
  objc_sync_enter(obj);
  if ([(CWFWiFiNetworkSharingManager *)obj waitingForInitialScanResults]|| ([(CWFWiFiNetworkSharingManager *)obj askToShareFromAppexClientID], v2 = objc_claimAutoreleasedReturnValue(), v3 = [(CWFWiFiNetworkSharingManager *)obj __isAskToShareNetworkListChangedEventRegisteredForClientID:v2], v2, v3))
  {
    [(CWFWiFiNetworkSharingManager *)obj __startAskToShareScanning];
  }

  else
  {
    [(CWFWiFiNetworkSharingManager *)obj __stopAskToShareScanning];
  }

  objc_sync_exit(obj);
}

- (void)__startWaitingForAppex
{
  v22 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = CWFGetOSLog();
  if (v3)
  {
    v4 = CWFGetOSLog();
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    askToShareFromAppClientID = [(CWFWiFiNetworkSharingManager *)selfCopy askToShareFromAppClientID];
    v20 = 138543362;
    v21 = askToShareFromAppClientID;
    LODWORD(v18) = 12;
    v17 = &v20;
    _os_log_send_and_compose_impl();
  }

  [(CWFWiFiNetworkSharingManager *)selfCopy setWaitingForAppex:1];
  waitForAppexTimer = [(CWFWiFiNetworkSharingManager *)selfCopy waitForAppexTimer];
  v8 = waitForAppexTimer == 0;

  if (v8)
  {
    internalQueue = [(CWFWiFiNetworkSharingManager *)selfCopy internalQueue];
    v10 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, internalQueue);
    [(CWFWiFiNetworkSharingManager *)selfCopy setWaitForAppexTimer:v10];

    waitForAppexTimer2 = [(CWFWiFiNetworkSharingManager *)selfCopy waitForAppexTimer];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = sub_1E0D1E41C;
    handler[3] = &unk_1E86E6010;
    handler[4] = selfCopy;
    dispatch_source_set_event_handler(waitForAppexTimer2, handler);

    waitForAppexTimer3 = [(CWFWiFiNetworkSharingManager *)selfCopy waitForAppexTimer];
    dispatch_source_set_timer(waitForAppexTimer3, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);

    waitForAppexTimer4 = [(CWFWiFiNetworkSharingManager *)selfCopy waitForAppexTimer];
    dispatch_resume(waitForAppexTimer4);
  }

  v14 = [(CWFWiFiNetworkSharingManager *)selfCopy waitForAppexTimer:v17];
  v15 = dispatch_time(0, 10000000000);
  dispatch_source_set_timer(v14, v15, 0xFFFFFFFFFFFFFFFFLL, 0);

  objc_sync_exit(selfCopy);
  v16 = *MEMORY[0x1E69E9840];
}

- (void)__stopWaitingForAppex
{
  obj = self;
  objc_sync_enter(obj);
  waitForAppexTimer = [(CWFWiFiNetworkSharingManager *)obj waitForAppexTimer];

  if (waitForAppexTimer)
  {
    waitForAppexTimer2 = [(CWFWiFiNetworkSharingManager *)obj waitForAppexTimer];
    dispatch_source_set_timer(waitForAppexTimer2, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);

    [(CWFWiFiNetworkSharingManager *)obj setWaitingForAppex:0];
  }

  objc_sync_exit(obj);
}

- (void)__presentAskToShareProxCardForAccessoryName:(id)name
{
  nameCopy = name;
  targetQueue = [(CWFWiFiNetworkSharingManager *)self targetQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E0D1E69C;
  v7[3] = &unk_1E86E6420;
  v7[4] = self;
  v8 = nameCopy;
  v6 = nameCopy;
  dispatch_async(targetQueue, v7);
}

- (void)__presentAskToShareUserNotificationForNetwork:(id)network accessoryName:(id)name
{
  networkCopy = network;
  nameCopy = name;
  targetQueue = [(CWFWiFiNetworkSharingManager *)self targetQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0D1EB9C;
  block[3] = &unk_1E86E6060;
  block[4] = self;
  v12 = networkCopy;
  v13 = nameCopy;
  v9 = nameCopy;
  v10 = networkCopy;
  dispatch_async(targetQueue, block);
}

- (id)askToShareNetworkListForClientID:(id)d
{
  dCopy = d;
  askToShareFromAppexClientID = [(CWFWiFiNetworkSharingManager *)self askToShareFromAppexClientID];

  if (!askToShareFromAppexClientID)
  {
    askToShareNetworksCache = [(CWFWiFiNetworkSharingManager *)self askToShareNetworksCache];
    v13 = [askToShareNetworksCache count];

    if (v13)
    {
      goto LABEL_11;
    }

    askToShareFromAppexClientID2 = [(CWFWiFiNetworkSharingManager *)self __askToShareNetworkForCurrentNetworkWithClientID:dCopy onDemand:1];
    if (askToShareFromAppexClientID2)
    {
      askToShareNetworksCache2 = [(CWFWiFiNetworkSharingManager *)self askToShareNetworksCache];
      [askToShareNetworksCache2 addObject:askToShareFromAppexClientID2];
    }

LABEL_10:

    goto LABEL_11;
  }

  askToShareFromAppexClientID2 = [(CWFWiFiNetworkSharingManager *)self askToShareFromAppexClientID];
  if (askToShareFromAppexClientID2 == dCopy)
  {
    goto LABEL_10;
  }

  askToShareFromAppexClientID3 = [(CWFWiFiNetworkSharingManager *)self askToShareFromAppexClientID];
  v8 = askToShareFromAppexClientID3;
  if (!dCopy || !askToShareFromAppexClientID3)
  {

    v11 = 0;
    goto LABEL_13;
  }

  askToShareFromAppexClientID4 = [(CWFWiFiNetworkSharingManager *)self askToShareFromAppexClientID];
  v10 = [askToShareFromAppexClientID4 isEqual:dCopy];

  if (!v10)
  {
    v11 = 0;
    goto LABEL_14;
  }

LABEL_11:
  askToShareFromAppexClientID2 = [(CWFWiFiNetworkSharingManager *)self askToShareNetworksCache];
  v11 = [askToShareFromAppexClientID2 copy];
LABEL_13:

LABEL_14:

  return v11;
}

- (void)askToShareFromAppexForClientID:(id)d completion:(id)completion
{
  v67 = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  if ([(CWFWiFiNetworkSharingManager *)self __addCurrentNetworkToNetworkListForClientID:dCopy forceRegistration:1])
  {
    store = [(CWFWiFiNetworkSharingManager *)self store];
    [store incrementNetworksUpdateCounterForClientID:dCopy];
  }

  askToShareFromAppClientID = [(CWFWiFiNetworkSharingManager *)self askToShareFromAppClientID];
  if (askToShareFromAppClientID == dCopy)
  {
    v12 = 1;
  }

  else
  {
    askToShareFromAppClientID2 = [(CWFWiFiNetworkSharingManager *)self askToShareFromAppClientID];
    v11 = askToShareFromAppClientID2;
    v12 = 0;
    if (dCopy && askToShareFromAppClientID2)
    {
      askToShareFromAppClientID3 = [(CWFWiFiNetworkSharingManager *)self askToShareFromAppClientID];
      v12 = [askToShareFromAppClientID3 isEqual:dCopy];
    }
  }

  askToShareFromAppexClientID = [(CWFWiFiNetworkSharingManager *)self askToShareFromAppexClientID];

  if (askToShareFromAppexClientID)
  {
    v51 = CWFGetOSLog();
    if (v51)
    {
      v52 = CWFGetOSLog();
    }

    else
    {
      v52 = MEMORY[0x1E69E9C10];
      v55 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      _os_log_send_and_compose_impl();
    }

    if (completionCopy)
    {
      v56 = CWFErrorDescription(@"WiFiNetworkSharingError", 0xBuLL);
      v57 = CWFErrorWithDescription(@"WiFiNetworkSharingError", 11, v56);
      completionCopy[2](completionCopy, v57, 0);
    }

    if (!v12)
    {
      goto LABEL_59;
    }

    v58 = CWFErrorDescription(@"WiFiNetworkSharingError", 0xBuLL);
    v59 = CWFErrorWithDescription(@"WiFiNetworkSharingError", 11, v58);
    [(CWFWiFiNetworkSharingManager *)self __completeAskToShareFromAppWithError:v59 status:0];
LABEL_58:

LABEL_59:
    v19 = 0;
    goto LABEL_42;
  }

  [(CWFWiFiNetworkSharingManager *)self setAskToShareFromAppexClientID:dCopy];
  [(CWFWiFiNetworkSharingManager *)self setAskToShareFromAppexCompletion:completionCopy];
  if ([(CWFWiFiNetworkSharingManager *)self __canAskToShareCurrentNetworkForClientID:dCopy onDemand:0])
  {
    if (v12)
    {
      goto LABEL_13;
    }

    associatedNetwork = [(CWFWiFiNetworkSharingManager *)self associatedNetwork];
    matchingKnownNetworkProfile = [associatedNetwork matchingKnownNetworkProfile];
    wifiNetworkSharingNetworkID = [matchingKnownNetworkProfile wifiNetworkSharingNetworkID];
    v18 = [(CWFWiFiNetworkSharingManager *)self __shouldRateLimitAskToShareFromAppexRequestWithClientID:dCopy networkID:wifiNetworkSharingNetworkID];

    if (!v18)
    {
LABEL_13:
      v19 = 0;
      goto LABEL_17;
    }

    v58 = CWFErrorDescription(@"WiFiNetworkSharingError", 0xBuLL);
    v59 = CWFErrorWithDescription(@"WiFiNetworkSharingError", 11, v58);
    [(CWFWiFiNetworkSharingManager *)self __completeAskToShareFromAppexWithError:v59 status:0];
    goto LABEL_58;
  }

  bundleID = [dCopy bundleID];
  v21 = [(CWFWiFiNetworkSharingManager *)self __appForegroundStateHandlerForBundleID:bundleID];

  __forceForegroundAppState = [(CWFWiFiNetworkSharingManager *)self __forceForegroundAppState];
  v19 = __forceForegroundAppState;
  if (__forceForegroundAppState)
  {
    if ([__forceForegroundAppState BOOLValue])
    {
      goto LABEL_16;
    }

LABEL_27:
    v35 = CWFGetOSLog();
    if (v35)
    {
      v36 = CWFGetOSLog();
    }

    else
    {
      v36 = MEMORY[0x1E69E9C10];
      v60 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      _os_log_send_and_compose_impl();
    }

    v61 = CWFErrorDescription(@"WiFiNetworkSharingError", 5uLL);
    v62 = CWFErrorWithDescription(@"WiFiNetworkSharingError", 5, v61);
    [(CWFWiFiNetworkSharingManager *)self __completeAskToShareFromAppexWithError:v62 status:0];

    if (!v12)
    {
      goto LABEL_42;
    }

    v45 = CWFErrorDescription(@"WiFiNetworkSharingError", 5uLL);
    v46 = 5;
    goto LABEL_41;
  }

  if (!v21)
  {
    goto LABEL_27;
  }

LABEL_16:
  if ((v12 & 1) == 0)
  {
    v33 = CWFErrorDescription(@"WiFiNetworkSharingError", 0xAuLL);
    v34 = CWFErrorWithDescription(@"WiFiNetworkSharingError", 10, v33);
    [(CWFWiFiNetworkSharingManager *)self __completeAskToShareFromAppexWithError:v34 status:0];

    goto LABEL_42;
  }

LABEL_17:
  v23 = [(CWFWiFiNetworkSharingManager *)self authorizationLevelForClientID:dCopy];
  unsignedIntegerValue = [v23 unsignedIntegerValue];

  if (unsignedIntegerValue != 2 && unsignedIntegerValue != 7)
  {
    v31 = CWFGetOSLog();
    if (v31)
    {
      v32 = CWFGetOSLog();
    }

    else
    {
      v32 = MEMORY[0x1E69E9C10];
      v42 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      _os_log_send_and_compose_impl();
    }

    v43 = CWFErrorDescription(@"WiFiNetworkSharingError", 8uLL);
    v44 = CWFErrorWithDescription(@"WiFiNetworkSharingError", 8, v43);
    [(CWFWiFiNetworkSharingManager *)self __completeAskToShareFromAppexWithError:v44 status:0];

    if (!v12)
    {
      goto LABEL_42;
    }

    v45 = CWFErrorDescription(@"WiFiNetworkSharingError", 8uLL);
    v46 = 8;
    goto LABEL_41;
  }

  if ((v12 & 1) == 0)
  {
    associatedNetwork2 = [(CWFWiFiNetworkSharingManager *)self associatedNetwork];
    matchingKnownNetworkProfile2 = [associatedNetwork2 matchingKnownNetworkProfile];
    wifiNetworkSharingNetworkID2 = [matchingKnownNetworkProfile2 wifiNetworkSharingNetworkID];
    [(CWFWiFiNetworkSharingManager *)self __updateRateLimitAskToShareFromAppexRequestTimestampCacheForClientID:dCopy networkID:wifiNetworkSharingNetworkID2];
  }

  askToShareNetworksCache = [(CWFWiFiNetworkSharingManager *)self askToShareNetworksCache];
  [askToShareNetworksCache removeAllObjects];

  __forceAccessoryDisplayName = [(CWFWiFiNetworkSharingManager *)self __forceAccessoryDisplayName];
  if (!__forceAccessoryDisplayName)
  {
    askToShareFromAppexClientID2 = [(CWFWiFiNetworkSharingManager *)self askToShareFromAppexClientID];
    v38 = [(CWFWiFiNetworkSharingManager *)self __deviceForClientID:askToShareFromAppexClientID2];
    name = [v38 name];

    if (name)
    {
      goto LABEL_30;
    }

    v53 = CWFGetOSLog();
    if (v53)
    {
      v54 = CWFGetOSLog();
    }

    else
    {
      v54 = MEMORY[0x1E69E9C10];
      v63 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      askToShareFromAppexClientID3 = [(CWFWiFiNetworkSharingManager *)self askToShareFromAppexClientID];
      _os_log_send_and_compose_impl();
    }

    v64 = CWFErrorDescription(@"WiFiNetworkSharingError", 7uLL);
    v65 = CWFErrorWithDescription(@"WiFiNetworkSharingError", 7, v64);
    [(CWFWiFiNetworkSharingManager *)self __completeAskToShareFromAppexWithError:v65 status:0];

    if (v12)
    {
      v45 = CWFErrorDescription(@"WiFiNetworkSharingError", 7uLL);
      v46 = 7;
LABEL_41:
      v47 = CWFErrorWithDescription(@"WiFiNetworkSharingError", v46, v45);
      [(CWFWiFiNetworkSharingManager *)self __completeAskToShareFromAppWithError:v47 status:0];
    }

LABEL_42:
    name = 0;
    goto LABEL_45;
  }

  name = __forceAccessoryDisplayName;
LABEL_30:
  if (v12)
  {
    [(CWFWiFiNetworkSharingManager *)self __stopWaitingForAppex];
    v39 = [(CWFWiFiNetworkSharingManager *)self __askToShareNetworkForCurrentNetworkWithClientID:dCopy onDemand:1];
    if (v39)
    {
      askToShareNetworksCache2 = [(CWFWiFiNetworkSharingManager *)self askToShareNetworksCache];
      [askToShareNetworksCache2 addObject:v39];
    }

    [(CWFWiFiNetworkSharingManager *)self __presentAskToShareProxCardForAccessoryName:name];
    [(CWFWiFiNetworkSharingManager *)self setWaitingForInitialScanResults:1];
    [(CWFWiFiNetworkSharingManager *)self __updateAskToShareScanning];
  }

  else
  {
    v39 = [(CWFWiFiNetworkSharingManager *)self __askToShareNetworkForCurrentNetworkWithClientID:dCopy onDemand:0];
    if (v39)
    {
      askToShareNetworksCache3 = [(CWFWiFiNetworkSharingManager *)self askToShareNetworksCache];
      [askToShareNetworksCache3 addObject:v39];

      [(CWFWiFiNetworkSharingManager *)self __presentAskToShareUserNotificationForNetwork:v39 accessoryName:name];
    }

    else
    {
      v48 = CWFErrorDescription(@"WiFiNetworkSharingError", 0xAuLL);
      v49 = CWFErrorWithDescription(@"WiFiNetworkSharingError", 10, v48);
      [(CWFWiFiNetworkSharingManager *)self __completeAskToShareFromAppexWithError:v49 status:0];
    }
  }

LABEL_45:
  v50 = *MEMORY[0x1E69E9840];
}

- (void)cancelAskToShareFromAppexRequestForClientID:(id)d
{
  v17 = *MEMORY[0x1E69E9840];
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = CWFGetOSLog();
  if (v6)
  {
    v7 = CWFGetOSLog();
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    askToShareFromAppexClientID = [(CWFWiFiNetworkSharingManager *)selfCopy askToShareFromAppexClientID];
    _os_log_send_and_compose_impl();
  }

  v9 = CWFErrorDescription(@"WiFiNetworkSharingError", 2uLL);
  v10 = CWFErrorWithDescription(@"WiFiNetworkSharingError", 2, v9);
  [(CWFWiFiNetworkSharingManager *)selfCopy __completeAskToShareFromAppexWithError:v10 status:0];

  if (dCopy)
  {
    askToShareFromAppClientID = [(CWFWiFiNetworkSharingManager *)selfCopy askToShareFromAppClientID];
    if (askToShareFromAppClientID)
    {
      askToShareFromAppClientID2 = [(CWFWiFiNetworkSharingManager *)selfCopy askToShareFromAppClientID];
      v13 = [dCopy isEqual:askToShareFromAppClientID2];

      if (v13)
      {
        askToShareFromAppClientID3 = [(CWFWiFiNetworkSharingManager *)selfCopy askToShareFromAppClientID];
        [(CWFWiFiNetworkSharingManager *)selfCopy cancelAskToShareFromAppRequestForClientID:askToShareFromAppClientID3];
      }
    }
  }

  objc_sync_exit(selfCopy);

  v15 = *MEMORY[0x1E69E9840];
}

- (id)__deviceForClientID:(id)d
{
  v36 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  deviceAccessSession = [(CWFWiFiNetworkSharingManager *)self deviceAccessSession];
  availableDevices = [deviceAccessSession availableDevices];

  v7 = [availableDevices countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (!v7)
  {
    goto LABEL_19;
  }

  v8 = v7;
  v9 = *v32;
  v28 = dCopy;
  do
  {
    v10 = 0;
    v29 = v8;
    do
    {
      if (*v32 != v9)
      {
        objc_enumerationMutation(availableDevices);
      }

      v11 = *(*(&v31 + 1) + 8 * v10);
      accessoryID = [dCopy accessoryID];
      identifier = [v11 identifier];
      v14 = identifier;
      if (accessoryID == identifier)
      {

LABEL_12:
        appAccessInfoMap = [v11 appAccessInfoMap];
        bundleID = [dCopy bundleID];
        accessoryID = [appAccessInfoMap objectForKeyedSubscript:bundleID];

        if ([accessoryID state] == 25)
        {
          v25 = v11;

          goto LABEL_20;
        }

LABEL_16:

        goto LABEL_17;
      }

      accessoryID2 = [dCopy accessoryID];
      if (!accessoryID2)
      {
        goto LABEL_15;
      }

      v16 = accessoryID2;
      identifier2 = [v11 identifier];
      if (!identifier2)
      {

        v8 = v29;
LABEL_15:

        goto LABEL_16;
      }

      v18 = identifier2;
      [dCopy accessoryID];
      v20 = v19 = availableDevices;
      [v11 identifier];
      v22 = v21 = v9;
      v30 = [v20 isEqual:v22];

      v9 = v21;
      availableDevices = v19;
      dCopy = v28;

      v8 = v29;
      if (v30)
      {
        goto LABEL_12;
      }

LABEL_17:
      ++v10;
    }

    while (v8 != v10);
    v8 = [availableDevices countByEnumeratingWithState:&v31 objects:v35 count:16];
  }

  while (v8);
LABEL_19:
  v25 = 0;
LABEL_20:

  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

- (id)__forceForegroundAppState
{
  v9 = *MEMORY[0x1E69E9840];
  if (os_variant_has_internal_content())
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v3 = [standardUserDefaults objectForKey:@"WiFiNetworkSharingForceForegroundAppState"];

    if (v3)
    {
      v4 = CWFGetOSLog();
      if (v4)
      {
        v5 = CWFGetOSLog();
      }

      else
      {
        v5 = MEMORY[0x1E69E9C10];
        v6 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        _os_log_send_and_compose_impl();
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)__forceAuthorizationLevel
{
  v9 = *MEMORY[0x1E69E9840];
  if (os_variant_has_internal_content())
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v3 = [standardUserDefaults objectForKey:@"WiFiNetworkSharingForceAuthorizationLevel"];

    if (v3)
    {
      v4 = CWFGetOSLog();
      if (v4)
      {
        v5 = CWFGetOSLog();
      }

      else
      {
        v5 = MEMORY[0x1E69E9C10];
        v6 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        _os_log_send_and_compose_impl();
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BOOL)isClientIDAuthorizedForDeviceAccess:(id)access
{
  v3 = [(CWFWiFiNetworkSharingManager *)self authorizationLevelForClientID:access];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)isClientIDUsingSecureTransportForDeviceAccess:(id)access
{
  v3 = [(CWFWiFiNetworkSharingManager *)self __deviceForClientID:access];
  v4 = v3;
  if (v3)
  {
    v5 = ([v3 flags] >> 6) & 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)isClientIDAuthorizedForWiFiNetworkSharing:(id)sharing
{
  v3 = [(CWFWiFiNetworkSharingManager *)self authorizationLevelForClientID:sharing];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue == 7 || unsignedIntegerValue == 2;
}

- (id)__forceAccessoryDisplayName
{
  v9 = *MEMORY[0x1E69E9840];
  if (os_variant_has_internal_content())
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v3 = [standardUserDefaults objectForKey:@"WiFiNetworkSharingForceAccessoryDisplayName"];

    if (v3)
    {
      v4 = CWFGetOSLog();
      if (v4)
      {
        v5 = CWFGetOSLog();
      }

      else
      {
        v5 = MEMORY[0x1E69E9C10];
        v6 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        _os_log_send_and_compose_impl();
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)authorizationLevelForClientID:(id)d
{
  dCopy = d;
  __forceAuthorizationLevel = [(CWFWiFiNetworkSharingManager *)self __forceAuthorizationLevel];
  if (!__forceAuthorizationLevel)
  {
    [(CWFWiFiNetworkSharingManager *)self __deviceForClientID:dCopy];
  }

  return __forceAuthorizationLevel;
}

- (void)cancelAuthorizationRequestForClientID:(id)d
{
  v13 = *MEMORY[0x1E69E9840];
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = CWFGetOSLog();
  if (v6)
  {
    v7 = CWFGetOSLog();
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    authorizationClientID = [(CWFWiFiNetworkSharingManager *)selfCopy authorizationClientID];
    _os_log_send_and_compose_impl();
  }

  v9 = CWFErrorDescription(@"WiFiNetworkSharingError", 2uLL);
  v10 = CWFErrorWithDescription(@"WiFiNetworkSharingError", 2, v9);
  [(CWFWiFiNetworkSharingManager *)selfCopy __completeAuthorizationRequestWithError:v10 authLevel:0];

  objc_sync_exit(selfCopy);
  v11 = *MEMORY[0x1E69E9840];
}

- (void)__presentAuthorizationProxCardForAccessoryName:(id)name
{
  nameCopy = name;
  targetQueue = [(CWFWiFiNetworkSharingManager *)self targetQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E0D2056C;
  v7[3] = &unk_1E86E6420;
  v7[4] = self;
  v8 = nameCopy;
  v6 = nameCopy;
  dispatch_async(targetQueue, v7);
}

- (void)requestAuthorizationForClientID:(id)d completion:(id)completion
{
  v37 = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  authorizationClientID = [(CWFWiFiNetworkSharingManager *)self authorizationClientID];

  if (!authorizationClientID)
  {
    [(CWFWiFiNetworkSharingManager *)self setAuthorizationClientID:dCopy];
    [(CWFWiFiNetworkSharingManager *)self setAuthorizationCompletion:completionCopy];
    if ([(CWFWiFiNetworkSharingManager *)self isClientIDAuthorizedForDeviceAccess:dCopy])
    {
      if ([(CWFWiFiNetworkSharingManager *)self isClientIDUsingSecureTransportForDeviceAccess:dCopy])
      {
        bundleID = [dCopy bundleID];
        v10 = [(CWFWiFiNetworkSharingManager *)self __appForegroundStateHandlerForBundleID:bundleID];

        __forceForegroundAppState = [(CWFWiFiNetworkSharingManager *)self __forceForegroundAppState];
        v12 = __forceForegroundAppState;
        if (__forceForegroundAppState)
        {
          if ([__forceForegroundAppState BOOLValue])
          {
            goto LABEL_6;
          }
        }

        else if (v10)
        {
LABEL_6:
          if ([(CWFWiFiNetworkSharingManager *)self __shouldRateLimitAuthorizationRequestWithClientID:dCopy])
          {
            v25 = CWFErrorDescription(@"WiFiNetworkSharingError", 0xBuLL);
            v26 = 11;
          }

          else
          {
            __forceAccessoryDisplayName = [(CWFWiFiNetworkSharingManager *)self __forceAccessoryDisplayName];
            if (__forceAccessoryDisplayName)
            {
              name = __forceAccessoryDisplayName;
LABEL_13:
              [(CWFWiFiNetworkSharingManager *)self __updateRateLimitAuthorizationRequestTimestampCacheForClientID:dCopy];
              [(CWFWiFiNetworkSharingManager *)self __presentAuthorizationProxCardForAccessoryName:name];
LABEL_14:

LABEL_15:
              goto LABEL_16;
            }

            v17 = [(CWFWiFiNetworkSharingManager *)self __deviceForClientID:dCopy];
            name = [v17 name];

            if (name)
            {
              goto LABEL_13;
            }

            v27 = CWFGetOSLog();
            if (v27)
            {
              v28 = CWFGetOSLog();
            }

            else
            {
              v28 = MEMORY[0x1E69E9C10];
              v35 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              _os_log_send_and_compose_impl();
            }

            v25 = CWFErrorDescription(@"WiFiNetworkSharingError", 7uLL);
            v26 = 7;
          }

LABEL_48:
          v36 = CWFErrorWithDescription(@"WiFiNetworkSharingError", v26, v25);
          [(CWFWiFiNetworkSharingManager *)self __completeAuthorizationRequestWithError:v36 authLevel:0];

          goto LABEL_15;
        }

        v15 = CWFGetOSLog();
        if (v15)
        {
          v16 = CWFGetOSLog();
        }

        else
        {
          v16 = MEMORY[0x1E69E9C10];
          v34 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          _os_log_send_and_compose_impl();
        }

        v25 = CWFErrorDescription(@"WiFiNetworkSharingError", 5uLL);
        v26 = 5;
        goto LABEL_48;
      }

      v23 = CWFGetOSLog();
      if (v23)
      {
        v24 = CWFGetOSLog();
      }

      else
      {
        v24 = MEMORY[0x1E69E9C10];
        v33 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        _os_log_send_and_compose_impl();
      }

      v12 = CWFErrorDescription(@"WiFiNetworkSharingError", 6uLL);
      v32 = 6;
    }

    else
    {
      v21 = CWFGetOSLog();
      if (v21)
      {
        v22 = CWFGetOSLog();
      }

      else
      {
        v22 = MEMORY[0x1E69E9C10];
        v31 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        _os_log_send_and_compose_impl();
      }

      v12 = CWFErrorDescription(@"WiFiNetworkSharingError", 8uLL);
      v32 = 8;
    }

    name = CWFErrorWithDescription(@"WiFiNetworkSharingError", v32, v12);
    [(CWFWiFiNetworkSharingManager *)self __completeAuthorizationRequestWithError:name authLevel:0];
    goto LABEL_14;
  }

  v19 = CWFGetOSLog();
  if (v19)
  {
    v20 = CWFGetOSLog();
  }

  else
  {
    v20 = MEMORY[0x1E69E9C10];
    v29 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }

  if (completionCopy)
  {
    v12 = CWFErrorDescription(@"WiFiNetworkSharingError", 0xBuLL);
    v30 = CWFErrorWithDescription(@"WiFiNetworkSharingError", 11, v12);
    completionCopy[2](completionCopy, v30, 0);

    goto LABEL_15;
  }

LABEL_16:

  v18 = *MEMORY[0x1E69E9840];
}

- (void)__completeAuthorizationRequestWithError:(id)error authLevel:(id)level
{
  v28 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  levelCopy = level;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  authorizationCompletion = [(CWFWiFiNetworkSharingManager *)selfCopy authorizationCompletion];
  if (authorizationCompletion)
  {
    authorizationClientID = [(CWFWiFiNetworkSharingManager *)selfCopy authorizationClientID];

    if (authorizationClientID)
    {
      v11 = CWFGetOSLog();
      if (v11)
      {
        v12 = CWFGetOSLog();
      }

      else
      {
        v12 = MEMORY[0x1E69E9C10];
        v13 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        [(CWFWiFiNetworkSharingManager *)selfCopy authorizationClientID];
        v23 = v22 = 138543874;
        v24 = 2114;
        v25 = errorCopy;
        v26 = 2114;
        v27 = levelCopy;
        _os_log_send_and_compose_impl();
      }

      authorizationCompletion2 = [(CWFWiFiNetworkSharingManager *)selfCopy authorizationCompletion];
      targetQueue = [(CWFWiFiNetworkSharingManager *)selfCopy targetQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1E0D21200;
      block[3] = &unk_1E86E8010;
      v16 = authorizationCompletion2;
      v21 = v16;
      v19 = errorCopy;
      v20 = levelCopy;
      dispatch_async(targetQueue, block);

      [(CWFWiFiNetworkSharingManager *)selfCopy setAuthorizationCompletion:0];
      [(CWFWiFiNetworkSharingManager *)selfCopy setAuthorizationClientID:0];
    }
  }

  objc_sync_exit(selfCopy);

  v17 = *MEMORY[0x1E69E9840];
}

- (void)__updateRateLimitAuthorizationRequestTimestampCacheForClientID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v9 = dCopy;
    authorizationRequestTimestampCache = [(CWFWiFiNetworkSharingManager *)self authorizationRequestTimestampCache];
    array = [authorizationRequestTimestampCache objectForKeyedSubscript:v9];

    if (!array)
    {
      array = [MEMORY[0x1E695DF70] array];
      authorizationRequestTimestampCache2 = [(CWFWiFiNetworkSharingManager *)self authorizationRequestTimestampCache];
      [authorizationRequestTimestampCache2 setObject:array forKeyedSubscript:v9];
    }

    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW)];
    [array addObject:v8];

    if ([array count] >= 4)
    {
      [array removeObjectAtIndex:0];
    }

    dCopy = v9;
  }
}

- (BOOL)__shouldRateLimitAuthorizationRequestWithClientID:(id)d
{
  v24 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (dCopy)
  {
    v5 = 86400;
    if (os_variant_has_internal_content() && _os_feature_enabled_impl())
    {
      v6 = CWFGetOSLog();
      if (v6)
      {
        v7 = CWFGetOSLog();
      }

      else
      {
        v7 = MEMORY[0x1E69E9C10];
        v9 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 134217984;
        v23 = 60;
        LODWORD(v21) = 12;
        v20 = &v22;
        _os_log_send_and_compose_impl();
      }

      v5 = 60;
    }

    v10 = [(CWFWiFiNetworkSharingManager *)self authorizationRequestTimestampCache:v20];
    v11 = [v10 objectForKeyedSubscript:dCopy];

    if ([v11 count] == 3 && (v12 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW), objc_msgSend(v11, "firstObject"), v13 = objc_claimAutoreleasedReturnValue(), v14 = v12 - objc_msgSend(v13, "unsignedLongLongValue"), v13, v5 > v14 / 0x3B9ACA00))
    {
      v15 = CWFGetOSLog();
      if (v15)
      {
        v16 = CWFGetOSLog();
      }

      else
      {
        v16 = MEMORY[0x1E69E9C10];
        v17 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138543362;
        v23 = dCopy;
        _os_log_send_and_compose_impl();
      }

      v8 = 1;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v8;
}

- (int64_t)askToShareStatusForClientID:(id)d networkID:(id)iD timestamp:(id *)timestamp
{
  iDCopy = iD;
  dCopy = d;
  store = [(CWFWiFiNetworkSharingManager *)self store];
  v10 = [store networkMetadataForClientID:dCopy networkID:iDCopy];

  askToShareStatus = [v10 askToShareStatus];
  return askToShareStatus;
}

- (void)setAskToShareStatus:(int64_t)status clientID:(id)d networkID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  askToShareFromAppClientID = [(CWFWiFiNetworkSharingManager *)self askToShareFromAppClientID];
  v11 = askToShareFromAppClientID;
  if (askToShareFromAppClientID == dCopy)
  {

LABEL_8:
    [(CWFWiFiNetworkSharingManager *)self __completeAskToShareFromAppWithError:0 status:status];
    goto LABEL_9;
  }

  if (!dCopy || ([(CWFWiFiNetworkSharingManager *)self askToShareFromAppClientID], (v12 = objc_claimAutoreleasedReturnValue()) == 0))
  {

    goto LABEL_9;
  }

  v13 = v12;
  askToShareFromAppClientID2 = [(CWFWiFiNetworkSharingManager *)self askToShareFromAppClientID];
  v15 = [dCopy isEqual:askToShareFromAppClientID2];

  if (v15)
  {
    goto LABEL_8;
  }

LABEL_9:
  askToShareFromAppexClientID = [(CWFWiFiNetworkSharingManager *)self askToShareFromAppexClientID];
  v17 = askToShareFromAppexClientID;
  if (askToShareFromAppexClientID == dCopy)
  {

LABEL_16:
    [(CWFWiFiNetworkSharingManager *)self __completeAskToShareFromAppexWithError:0 status:status];
    goto LABEL_17;
  }

  if (!dCopy || ([(CWFWiFiNetworkSharingManager *)self askToShareFromAppexClientID], (v18 = objc_claimAutoreleasedReturnValue()) == 0))
  {

    goto LABEL_17;
  }

  v19 = v18;
  askToShareFromAppexClientID2 = [(CWFWiFiNetworkSharingManager *)self askToShareFromAppexClientID];
  v21 = [dCopy isEqual:askToShareFromAppexClientID2];

  if (v21)
  {
    goto LABEL_16;
  }

LABEL_17:
  store = [(CWFWiFiNetworkSharingManager *)self store];
  v23 = [store networkMetadataForClientID:dCopy networkID:iDCopy];

  if ([(CWFWiFiNetworkSharingNetworkMetadata *)v23 askToShareStatus]!= status)
  {
    associatedNetwork = [(CWFWiFiNetworkSharingManager *)self associatedNetwork];
    matchingKnownNetworkProfile = [associatedNetwork matchingKnownNetworkProfile];

    v26 = [(CWFWiFiNetworkSharingManager *)self authorizationLevelForClientID:dCopy];
    unsignedIntegerValue = [v26 unsignedIntegerValue];

    v28 = [(CWFWiFiNetworkSharingManager *)self __canAutomaticallyShareKnownNetworkWithMetadata:v23 authorizationStatus:unsignedIntegerValue];
    if (!v23)
    {
      v23 = objc_alloc_init(CWFWiFiNetworkSharingNetworkMetadata);
    }

    [(CWFWiFiNetworkSharingNetworkMetadata *)v23 setAskToShareStatus:status];
    date = [MEMORY[0x1E695DF00] date];
    [(CWFWiFiNetworkSharingNetworkMetadata *)v23 setAskToShareStatusUpdatedTimestamp:date];

    v30 = [(CWFWiFiNetworkSharingManager *)self __canAutomaticallyShareKnownNetworkWithMetadata:v23 authorizationStatus:unsignedIntegerValue];
    v52 = iDCopy;
    if (!v28 && v30)
    {
      wifiNetworkSharingNetworkID = [matchingKnownNetworkProfile wifiNetworkSharingNetworkID];
      v32 = wifiNetworkSharingNetworkID;
      if (wifiNetworkSharingNetworkID == iDCopy)
      {

        goto LABEL_29;
      }

      if (iDCopy && ([matchingKnownNetworkProfile wifiNetworkSharingNetworkID], (v33 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v34 = v33;
        wifiNetworkSharingNetworkID2 = [matchingKnownNetworkProfile wifiNetworkSharingNetworkID];
        v51 = [v52 isEqual:wifiNetworkSharingNetworkID2];

        iDCopy = v52;
        if (v51)
        {
          goto LABEL_29;
        }
      }

      else
      {
      }

      [(CWFWiFiNetworkSharingNetworkMetadata *)v23 setWaitingForAssociation:1];
    }

LABEL_29:
    store2 = [(CWFWiFiNetworkSharingManager *)self store];
    [store2 setNetworkMetadata:v23 clientID:dCopy networkID:iDCopy];

    [(CWFWiFiNetworkSharingManager *)self targetQueue];
    v37 = v36 = matchingKnownNetworkProfile;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0D21AC0;
    block[3] = &unk_1E86E6B18;
    block[4] = self;
    v38 = dCopy;
    v54 = v38;
    v39 = iDCopy;
    v55 = v39;
    statusCopy = status;
    dispatch_async(v37, block);

    v40 = v36;
    v41 = v28 ^ v30;
    wifiNetworkSharingNetworkID3 = [v36 wifiNetworkSharingNetworkID];
    v43 = wifiNetworkSharingNetworkID3;
    if (wifiNetworkSharingNetworkID3 == v39)
    {
    }

    else
    {
      if (!v39 || ([v36 wifiNetworkSharingNetworkID], (v44 = objc_claimAutoreleasedReturnValue()) == 0))
      {

        if ((v41 & 1) == 0)
        {
          goto LABEL_42;
        }

        goto LABEL_40;
      }

      v45 = v44;
      wifiNetworkSharingNetworkID4 = [v36 wifiNetworkSharingNetworkID];
      v47 = [v39 isEqual:wifiNetworkSharingNetworkID4];

      v40 = v36;
      if ((v47 & 1) == 0)
      {
        if ((v41 & 1) == 0)
        {
          goto LABEL_42;
        }

        goto LABEL_40;
      }
    }

    if (![(CWFWiFiNetworkSharingManager *)self __addCurrentNetworkToNetworkListForClientID:v38 forceRegistration:0])
    {
      v48 = [(CWFWiFiNetworkSharingManager *)self __canAskToShareCurrentNetworkForClientID:v38 onDemand:0];
      if ((v41 & 1) == 0)
      {
        if (!v48)
        {
          goto LABEL_42;
        }

        goto LABEL_41;
      }
    }

LABEL_40:
    store3 = [(CWFWiFiNetworkSharingManager *)self store];
    [store3 incrementNetworksUpdateCounterForClientID:v38];

LABEL_41:
    [(CWFWiFiNetworkSharingManager *)self __sendNetworkListUpdateEventForClientID:v38];
LABEL_42:

    iDCopy = v52;
  }
}

- (BOOL)__appForegroundStateHandlerForBundleID:(id)d
{
  dCopy = d;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 0;
  v5 = dispatch_block_create(0, &unk_1F5B8C0E0);
  appForegroundStateHandler = [(CWFWiFiNetworkSharingManager *)self appForegroundStateHandler];
  if (appForegroundStateHandler)
  {
    targetQueue = [(CWFWiFiNetworkSharingManager *)self targetQueue];
    v8 = qos_class_self();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0D21D00;
    block[3] = &unk_1E86E9668;
    v14 = appForegroundStateHandler;
    v13 = dCopy;
    v16 = &v20;
    v17 = v18;
    v15 = v5;
    v9 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v8, 0, block);
    dispatch_async(targetQueue, v9);
  }

  dispatch_block_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  v10 = *(v21 + 24);

  _Block_object_dispose(v18, 8);
  _Block_object_dispose(&v20, 8);

  return v10;
}

- (id)__knownNetworks
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1E0BC2DE0;
  v21 = sub_1E0BC622C;
  v22 = 0;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v16 = 0;
  v3 = dispatch_block_create(0, &unk_1F5B892D0);
  knownNetworksHandler = [(CWFWiFiNetworkSharingManager *)self knownNetworksHandler];
  if (knownNetworksHandler)
  {
    targetQueue = [(CWFWiFiNetworkSharingManager *)self targetQueue];
    v6 = qos_class_self();
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1E0D21FF4;
    v10[3] = &unk_1E86E96B8;
    v11 = knownNetworksHandler;
    v13 = &v17;
    v14 = v15;
    v12 = v3;
    v7 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v6, 0, v10);
    dispatch_async(targetQueue, v7);
  }

  dispatch_block_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  v8 = v18[5];

  _Block_object_dispose(v15, 8);
  _Block_object_dispose(&v17, 8);

  return v8;
}

- (id)__hiddenNetworkSSIDList
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1E0BC2DE0;
  v21 = sub_1E0BC622C;
  v22 = 0;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v16 = 0;
  v3 = dispatch_block_create(0, &unk_1F5B8C100);
  hiddenNetworkSSIDListHandler = [(CWFWiFiNetworkSharingManager *)self hiddenNetworkSSIDListHandler];
  if (hiddenNetworkSSIDListHandler)
  {
    targetQueue = [(CWFWiFiNetworkSharingManager *)self targetQueue];
    v6 = qos_class_self();
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1E0D2232C;
    v10[3] = &unk_1E86E96B8;
    v11 = hiddenNetworkSSIDListHandler;
    v13 = &v17;
    v14 = v15;
    v12 = v3;
    v7 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v6, 0, v10);
    dispatch_async(targetQueue, v7);
  }

  dispatch_block_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  v8 = v18[5];

  _Block_object_dispose(v15, 8);
  _Block_object_dispose(&v17, 8);

  return v8;
}

- (id)__passwordForKnownNetwork:(id)network error:(id *)error
{
  networkCopy = network;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_1E0BC2DE0;
  v34 = sub_1E0BC622C;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_1E0BC2DE0;
  v28 = sub_1E0BC622C;
  v29 = 0;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v23 = 0;
  v7 = dispatch_block_create(0, &unk_1F5B8C120);
  passwordHandler = [(CWFWiFiNetworkSharingManager *)self passwordHandler];
  if (passwordHandler)
  {
    targetQueue = [(CWFWiFiNetworkSharingManager *)self targetQueue];
    v10 = qos_class_self();
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1E0D22704;
    v15[3] = &unk_1E86E9730;
    v17 = passwordHandler;
    v16 = networkCopy;
    v19 = &v30;
    v20 = &v24;
    v21 = v22;
    v18 = v7;
    v11 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v10, 0, v15);
    dispatch_async(targetQueue, v11);
  }

  dispatch_block_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  if (error)
  {
    v12 = v25[5];
    if (v12)
    {
      *error = v12;
    }
  }

  v13 = v31[5];

  _Block_object_dispose(v22, 8);
  _Block_object_dispose(&v24, 8);

  _Block_object_dispose(&v30, 8);

  return v13;
}

- (id)__captivePortalCredentialsForKnownNetwork:(id)network error:(id *)error
{
  networkCopy = network;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_1E0BC2DE0;
  v34 = sub_1E0BC622C;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_1E0BC2DE0;
  v28 = sub_1E0BC622C;
  v29 = 0;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v23 = 0;
  v7 = dispatch_block_create(0, &unk_1F5B8C140);
  captivePortalCredentialsHandler = [(CWFWiFiNetworkSharingManager *)self captivePortalCredentialsHandler];
  if (captivePortalCredentialsHandler)
  {
    targetQueue = [(CWFWiFiNetworkSharingManager *)self targetQueue];
    v10 = qos_class_self();
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1E0D22B0C;
    v15[3] = &unk_1E86E9730;
    v17 = captivePortalCredentialsHandler;
    v16 = networkCopy;
    v19 = &v30;
    v20 = &v24;
    v21 = v22;
    v18 = v7;
    v11 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v10, 0, v15);
    dispatch_async(targetQueue, v11);
  }

  dispatch_block_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  if (error)
  {
    v12 = v25[5];
    if (v12)
    {
      *error = v12;
    }
  }

  v13 = v31[5];

  _Block_object_dispose(v22, 8);
  _Block_object_dispose(&v24, 8);

  _Block_object_dispose(&v30, 8);

  return v13;
}

@end