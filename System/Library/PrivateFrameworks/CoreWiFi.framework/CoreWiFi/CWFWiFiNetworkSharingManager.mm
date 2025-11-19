@interface CWFWiFiNetworkSharingManager
- (BOOL)__addCurrentNetworkToNetworkListForClientID:(id)a3 forceRegistration:(BOOL)a4;
- (BOOL)__appForegroundStateHandlerForBundleID:(id)a3;
- (BOOL)__canAskToShareKnownNetwork:(id)a3 metadata:(id)a4 authorizationStatus:(unint64_t)a5 onDemand:(BOOL)a6;
- (BOOL)__canAutomaticallyShareKnownNetwork:(id)a3 metadata:(id)a4 authorizationStatus:(unint64_t)a5;
- (BOOL)__canAutomaticallyShareKnownNetworkWithMetadata:(id)a3 authorizationStatus:(unint64_t)a4;
- (BOOL)__doesAskToShareNetwork:(id)a3 matchAccessoryScanResult:(id)a4;
- (BOOL)__isAskToShareNetworkListChangedEventRegisteredForClientID:(id)a3;
- (BOOL)__isNetworkListUpdateEventRegisteredForClientID:(id)a3;
- (BOOL)__shouldRateLimitAskToShareFromAppRequestWithClientID:(id)a3;
- (BOOL)__shouldRateLimitAskToShareFromAppexRequestWithClientID:(id)a3 networkID:(id)a4;
- (BOOL)__shouldRateLimitAuthorizationRequestWithClientID:(id)a3;
- (BOOL)isClientIDAuthorizedForDeviceAccess:(id)a3;
- (BOOL)isClientIDAuthorizedForWiFiNetworkSharing:(id)a3;
- (BOOL)isClientIDUsingSecureTransportForDeviceAccess:(id)a3;
- (CLLocation)location;
- (CWFScanResult)associatedNetwork;
- (CWFWiFiNetworkSharingManager)init;
- (id)__askToShareNetworkListForClientID:(id)a3 localScanResults:(id)a4 accessoryScanResults:(id)a5 onDemand:(BOOL)a6;
- (id)__captivePortalCredentialsForKnownNetwork:(id)a3 error:(id *)a4;
- (id)__clientIDsRegisteredNetworksUpdateEvents;
- (id)__descriptorForRateLimitAskToShareFromAppexRequestWithClientID:(id)a3 networkID:(id)a4;
- (id)__deviceForClientID:(id)a3;
- (id)__forceAccessoryDisplayName;
- (id)__forceAuthorizationLevel;
- (id)__forceForegroundAppState;
- (id)__hiddenNetworkSSIDList;
- (id)__knownNetworks;
- (id)__networkListForClientID:(id)a3 predicateData:(id)a4;
- (id)__networksUpdateForClientID:(id)a3 predicateData:(id)a4;
- (id)__passwordForKnownNetwork:(id)a3 error:(id *)a4;
- (id)__registeredNetworksUpdateEventIDsForClientID:(id)a3;
- (id)askToShareNetworkListForClientID:(id)a3;
- (id)authorizationLevelForClientID:(id)a3;
- (int64_t)__nextAppexRelaunchIntervalFromNow;
- (int64_t)askToShareStatusForClientID:(id)a3 networkID:(id)a4 timestamp:(id *)a5;
- (void)__activateDeviceAccessSessionWithCompletion:(id)a3;
- (void)__completeAskToShareFromAppWithError:(id)a3 status:(int64_t)a4;
- (void)__completeAskToShareFromAppexWithError:(id)a3 status:(int64_t)a4;
- (void)__completeAuthorizationRequestWithError:(id)a3 authLevel:(id)a4;
- (void)__launchAppExtensionForClientID:(id)a3;
- (void)__presentAskToShareProxCardForAccessoryName:(id)a3;
- (void)__presentAskToShareUserNotificationForNetwork:(id)a3 accessoryName:(id)a4;
- (void)__presentAuthorizationProxCardForAccessoryName:(id)a3;
- (void)__relaunchAppexIfNeeded;
- (void)__scheduleNextAppexRelaunch;
- (void)__sendNetworkListUpdateEventForClientID:(id)a3;
- (void)__setWantsAcknowledgementForNetworkListUpdate:(id)a3 clientID:(id)a4;
- (void)__startAskToShareScanning;
- (void)__startWaitingForAppex;
- (void)__stopAskToShareScanning;
- (void)__stopWaitingForAppex;
- (void)__updateAskToShareScanning;
- (void)__updateRateLimitAskToShareFromAppRequestTimestampCacheForClientID:(id)a3;
- (void)__updateRateLimitAskToShareFromAppexRequestTimestampCacheForClientID:(id)a3 networkID:(id)a4;
- (void)__updateRateLimitAuthorizationRequestTimestampCacheForClientID:(id)a3;
- (void)acknowledgeNetworkListUpdate:(id)a3 clientID:(id)a4;
- (void)activateWithCompletion:(id)a3;
- (void)askToShareFromAppForClientID:(id)a3 completion:(id)a4;
- (void)askToShareFromAppexForClientID:(id)a3 completion:(id)a4;
- (void)cancelAskToShareFromAppRequestForClientID:(id)a3;
- (void)cancelAskToShareFromAppexRequestForClientID:(id)a3;
- (void)cancelAuthorizationRequestForClientID:(id)a3;
- (void)didInvalidateXPCConnection:(id)a3;
- (void)didRegisterForAskToShareNetworkListUpdateEventsWithClientID:(id)a3 XPCConnection:(id)a4;
- (void)didRegisterForNetworkListUpdateEventsWithClientID:(id)a3 predicateData:(id)a4 XPCConnection:(id)a5;
- (void)didRemoveKnownNetwork:(id)a3;
- (void)didUpdateKnownNetwork:(id)a3 previous:(id)a4;
- (void)didUpdateRegisteredEventIDs:(id)a3;
- (void)extendAppexRuntimeForClientID:(id)a3;
- (void)invalidate;
- (void)requestAuthorizationForClientID:(id)a3 completion:(id)a4;
- (void)setAskToShareStatus:(int64_t)a3 clientID:(id)a4 networkID:(id)a5;
- (void)setAssociatedNetwork:(id)a3;
- (void)setLocation:(id)a3;
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

    v5 = [(CWFWiFiNetworkSharingManager *)v2 internalQueue];

    if (!v5)
    {
      goto LABEL_20;
    }

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.wifi-network-sharing-manager.target", v6);
    [(CWFWiFiNetworkSharingManager *)v2 setTargetQueue:v7];

    v8 = [(CWFWiFiNetworkSharingManager *)v2 targetQueue];

    if (!v8)
    {
      goto LABEL_20;
    }

    v9 = objc_alloc_init(CWFWiFiNetworkSharingStore);
    [(CWFWiFiNetworkSharingManager *)v2 setStore:v9];

    v10 = [(CWFWiFiNetworkSharingManager *)v2 store];

    if (!v10)
    {
      goto LABEL_20;
    }

    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(CWFWiFiNetworkSharingManager *)v2 setAuthorizationRequestTimestampCache:v11];

    v12 = [(CWFWiFiNetworkSharingManager *)v2 authorizationRequestTimestampCache];

    if (!v12)
    {
      goto LABEL_20;
    }

    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(CWFWiFiNetworkSharingManager *)v2 setAskToShareRequestFromAppTimestampCache:v13];

    v14 = [(CWFWiFiNetworkSharingManager *)v2 askToShareRequestFromAppTimestampCache];

    if (!v14)
    {
      goto LABEL_20;
    }

    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(CWFWiFiNetworkSharingManager *)v2 setAskToShareRequestFromAppexTimestampCache:v15];

    v16 = [(CWFWiFiNetworkSharingManager *)v2 askToShareRequestFromAppexTimestampCache];

    if (!v16)
    {
      goto LABEL_20;
    }

    v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(CWFWiFiNetworkSharingManager *)v2 setAskToShareNetworksCache:v17];

    v18 = [(CWFWiFiNetworkSharingManager *)v2 askToShareNetworksCache];

    if (!v18)
    {
      goto LABEL_20;
    }

    v19 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    [(CWFWiFiNetworkSharingManager *)v2 setRegisteredWiFiNetworkSharingEventIDs:v19];

    v20 = [(CWFWiFiNetworkSharingManager *)v2 registeredWiFiNetworkSharingEventIDs];

    if (!v20)
    {
      goto LABEL_20;
    }

    v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(CWFWiFiNetworkSharingManager *)v2 setAppexRelaunchAttemptCounts:v21];

    v22 = [(CWFWiFiNetworkSharingManager *)v2 appexRelaunchAttemptCounts];

    if (!v22)
    {
      goto LABEL_20;
    }

    v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(CWFWiFiNetworkSharingManager *)v2 setWaitingForNetworkListUpdateAcknowledgement:v23];

    v24 = [(CWFWiFiNetworkSharingManager *)v2 waitingForNetworkListUpdateAcknowledgement];

    if (!v24)
    {
      goto LABEL_20;
    }

    v25 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(CWFWiFiNetworkSharingManager *)v2 setAppexInvalidationTimestamps:v25];

    v26 = [(CWFWiFiNetworkSharingManager *)v2 appexInvalidationTimestamps];

    if (!v26)
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

    v30 = [(CWFWiFiNetworkSharingManager *)v2 deviceAccessSession];

    if (v30)
    {
      v31 = [(CWFWiFiNetworkSharingManager *)v2 deviceAccessSession];
      [v31 setDeviceFlags:8];

      v32 = [(CWFWiFiNetworkSharingManager *)v2 internalQueue];
      v33 = [(CWFWiFiNetworkSharingManager *)v2 deviceAccessSession];
      [v33 setDispatchQueue:v32];
    }

    else
    {
LABEL_20:
      v32 = v2;
      v2 = 0;
    }
  }

  else
  {
    v32 = 0;
  }

  return v2;
}

- (BOOL)__isNetworkListUpdateEventRegisteredForClientID:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = [(CWFWiFiNetworkSharingManager *)self registeredWiFiNetworkSharingEventIDs];
    v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v6)
    {
      v7 = *v19;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v18 + 1) + 8 * i);
          if ([v9 type] == 43)
          {
            v10 = [v9 clientID];
            v11 = v10;
            if (v10 == v4)
            {

LABEL_17:
              LOBYTE(v6) = 1;
              goto LABEL_18;
            }

            v12 = [v9 clientID];
            if (v12)
            {
              v13 = v12;
              v14 = [v9 clientID];
              v15 = [v4 isEqual:v14];

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

        v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
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

- (BOOL)__addCurrentNetworkToNetworkListForClientID:(id)a3 forceRegistration:(BOOL)a4
{
  v4 = a4;
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([(CWFWiFiNetworkSharingManager *)self __isNetworkListUpdateEventRegisteredForClientID:v6]|| v4)
  {
    v8 = [(CWFWiFiNetworkSharingManager *)self associatedNetwork];
    v9 = [v8 matchingKnownNetworkProfile];

    v10 = [(CWFWiFiNetworkSharingManager *)self authorizationLevelForClientID:v6];
    v11 = [v10 unsignedIntegerValue];

    v12 = [(CWFWiFiNetworkSharingManager *)self store];
    v13 = [v9 wifiNetworkSharingNetworkID];
    v14 = [v12 networkMetadataForClientID:v6 networkID:v13];

    if (v14 || ![(CWFWiFiNetworkSharingManager *)self __canAutomaticallyShareKnownNetwork:v9 metadata:0 authorizationStatus:v11])
    {
      if (![(CWFWiFiNetworkSharingNetworkMetadata *)v14 waitingForAssociation]|| ([(CWFWiFiNetworkSharingNetworkMetadata *)v14 setWaitingForAssociation:0], ![(CWFWiFiNetworkSharingManager *)self __canAutomaticallyShareKnownNetwork:v9 metadata:v14 authorizationStatus:v11]))
      {
        v7 = 0;
LABEL_20:

        goto LABEL_21;
      }

      v19 = [(CWFWiFiNetworkSharingManager *)self store];
      v20 = [v9 wifiNetworkSharingNetworkID];
      [v19 setNetworkMetadata:v14 clientID:v6 networkID:v20];

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
      v15 = [(CWFWiFiNetworkSharingManager *)self store];
      v16 = [v9 wifiNetworkSharingNetworkID];
      [v15 setNetworkMetadata:v14 clientID:v6 networkID:v16];

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

- (void)__activateDeviceAccessSessionWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1E0D16388;
  v8[3] = &unk_1E86E94B8;
  objc_copyWeak(&v10, &location);
  v5 = v4;
  v9 = v5;
  v6 = [(CWFWiFiNetworkSharingManager *)self deviceAccessSession];
  [v6 setEventHandler:v8];

  v7 = [(CWFWiFiNetworkSharingManager *)self deviceAccessSession];
  [v7 activate];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)activateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CWFWiFiNetworkSharingManager *)self store];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E0D16720;
  v7[3] = &unk_1E86E94E0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 activateWithCompletion:v7];
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
  v3 = [(CWFWiFiNetworkSharingManager *)self store];
  [v3 invalidate];

  v4 = [(CWFWiFiNetworkSharingManager *)self deviceAccessSession];
  [v4 invalidate];
}

- (CLLocation)location
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(CLLocation *)v2->_location copy];
  objc_sync_exit(v2);

  return v3;
}

- (void)setLocation:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v7 copy];
  location = v4->_location;
  v4->_location = v5;

  objc_sync_exit(v4);
}

- (CWFScanResult)associatedNetwork
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(CWFScanResult *)v2->_associatedNetwork copy];
  objc_sync_exit(v2);

  return v3;
}

- (void)setAssociatedNetwork:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
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
    associatedNetwork = v5->_associatedNetwork;
    v31 = 138543618;
    v32 = v4;
    v33 = 2114;
    v34 = associatedNetwork;
    _os_log_send_and_compose_impl();
  }

  v10 = [(CWFScanResult *)v5->_associatedNetwork matchingKnownNetworkProfile];
  v11 = [v4 matchingKnownNetworkProfile];
  v12 = [v4 copy];
  v13 = v5->_associatedNetwork;
  v5->_associatedNetwork = v12;

  v14 = [v11 wifiNetworkSharingNetworkID];
  v15 = [(CWFScanResult *)v10 wifiNetworkSharingNetworkID];
  v16 = v15;
  if (v14 == v15)
  {

    goto LABEL_20;
  }

  v17 = [v11 wifiNetworkSharingNetworkID];
  if (v17)
  {
    v18 = [(CWFScanResult *)v10 wifiNetworkSharingNetworkID];
    if (v18)
    {
      v19 = [v11 wifiNetworkSharingNetworkID];
      v20 = [(CWFScanResult *)v10 wifiNetworkSharingNetworkID];
      v29 = [v19 isEqual:v20];

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
    v32 = v11;
    v33 = 2114;
    v34 = v10;
    _os_log_send_and_compose_impl();
  }

  v24 = [(CWFWiFiNetworkSharingManager *)v5 askToShareRequestFromAppTimestampCache];
  [v24 removeAllObjects];

  v25 = [(CWFWiFiNetworkSharingManager *)v5 internalQueue];
  v26 = qos_class_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0D17220;
  block[3] = &unk_1E86E6010;
  block[4] = v5;
  v27 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v26, 0, block);
  dispatch_async(v25, v27);

LABEL_20:
  objc_sync_exit(v5);

  v28 = *MEMORY[0x1E69E9840];
}

- (void)didUpdateKnownNetwork:(id)a3 previous:(id)a4
{
  v106 = *MEMORY[0x1E69E9840];
  v79 = a3;
  v76 = a4;
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
    v101 = v79;
    v102 = 2114;
    v103 = v76;
    LODWORD(v70) = 22;
    v68 = &v100;
    _os_log_send_and_compose_impl();
  }

  v9 = [v79 supportsWiFiNetworkSharing];
  if (v9 != [v76 supportsWiFiNetworkSharing])
  {
    goto LABEL_14;
  }

  v72 = [v79 filteredWiFiNetworkSharingNetworkProfile];
  v10 = [v76 filteredWiFiNetworkSharingNetworkProfile];
  if (v72 != v10)
  {
    v11 = [v79 filteredWiFiNetworkSharingNetworkProfile];
    if (v11)
    {
      v12 = [v76 filteredWiFiNetworkSharingNetworkProfile];
      if (v12)
      {
        v13 = [v79 filteredWiFiNetworkSharingNetworkProfile];
        v14 = [v76 filteredWiFiNetworkSharingNetworkProfile];
        v15 = [v13 isEqual:v14];

        if (v15)
        {
          goto LABEL_76;
        }

LABEL_14:
        v16 = [(CWFWiFiNetworkSharingManager *)self associatedNetwork:v68];
        v72 = [v16 matchingKnownNetworkProfile];

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
          v101 = v79;
          v102 = 2114;
          v103 = v76;
          v104 = 2114;
          v105 = v72;
          LODWORD(v71) = 32;
          v69 = &v100;
          _os_log_send_and_compose_impl();
        }

        v75 = [MEMORY[0x1E695DFA8] set];
        v73 = [MEMORY[0x1E695DFA8] set];
        v20 = [(CWFWiFiNetworkSharingManager *)self store];
        v21 = [v20 clientIDs];

        v94 = 0u;
        v95 = 0u;
        v92 = 0u;
        v93 = 0u;
        obj = v21;
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
              v25 = [v79 wifiNetworkSharingNetworkID];
              v26 = [v24 networkMetadataForClientID:v23 networkID:v25];

              if (v26)
              {
                v27 = [(CWFWiFiNetworkSharingManager *)self authorizationLevelForClientID:v23];
                v28 = [v27 unsignedIntegerValue];

                v29 = [(CWFWiFiNetworkSharingManager *)self __canAutomaticallyShareKnownNetwork:v79 metadata:v26 authorizationStatus:v28];
                v30 = [(CWFWiFiNetworkSharingManager *)self __canAutomaticallyShareKnownNetwork:v76 metadata:v26 authorizationStatus:v28];
                if (v30 || v29)
                {
                  if (v30 || !v29)
                  {
                    goto LABEL_36;
                  }

                  v31 = [v72 wifiNetworkSharingNetworkID];
                  v32 = [v79 wifiNetworkSharingNetworkID];
                  v33 = v32;
                  if (v31 == v32)
                  {

                    goto LABEL_36;
                  }

                  v34 = [v72 wifiNetworkSharingNetworkID];
                  if (v34)
                  {
                    v35 = [v79 wifiNetworkSharingNetworkID];
                    if (v35)
                    {
                      v36 = [v72 wifiNetworkSharingNetworkID];
                      v37 = [v79 wifiNetworkSharingNetworkID];
                      HIDWORD(v71) = [v36 isEqual:v37];

                      if ((v71 & 0x100000000) != 0)
                      {
                        goto LABEL_36;
                      }

LABEL_35:
                      [v26 setWaitingForAssociation:1];
LABEL_36:
                      v38 = [MEMORY[0x1E695DF00] now];
                      [v26 setLastModifiedDate:v38];

                      v39 = [(CWFWiFiNetworkSharingManager *)self store];
                      v40 = [v79 wifiNetworkSharingNetworkID];
                      [v39 setNetworkMetadata:v26 clientID:v23 networkID:v40];

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

        v41 = [v72 wifiNetworkSharingNetworkID];
        v42 = [v79 wifiNetworkSharingNetworkID];
        v43 = v42;
        if (v41 != v42)
        {
          v44 = [v72 wifiNetworkSharingNetworkID];
          if (v44)
          {
            v45 = [v79 wifiNetworkSharingNetworkID];
            if (v45)
            {
              v46 = [v72 wifiNetworkSharingNetworkID];
              v47 = [v79 wifiNetworkSharingNetworkID];
              v48 = [v46 isEqual:v47];

              if (!v48)
              {
LABEL_60:
                v86 = 0u;
                v87 = 0u;
                v84 = 0u;
                v85 = 0u;
                v10 = v75;
                v58 = [v10 countByEnumeratingWithState:&v84 objects:v97 count:16];
                if (v58)
                {
                  v59 = *v85;
                  do
                  {
                    for (j = 0; j != v58; ++j)
                    {
                      if (*v85 != v59)
                      {
                        objc_enumerationMutation(v10);
                      }

                      v61 = *(*(&v84 + 1) + 8 * j);
                      v62 = [(CWFWiFiNetworkSharingManager *)self store:v69];
                      [v62 incrementNetworksUpdateCounterForClientID:v61];
                    }

                    v58 = [v10 countByEnumeratingWithState:&v84 objects:v97 count:16];
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
        v49 = self;
        objc_sync_enter(v49);
        v50 = [CWFScanResult alloc];
        v51 = [(CWFScanResult *)v49->_associatedNetwork scanRecord];
        v52 = [(CWFScanResult *)v50 initWithScanRecord:v51 knownNetworkProfile:v79 includeProperties:0];
        associatedNetwork = v49->_associatedNetwork;
        v49->_associatedNetwork = v52;

        objc_sync_exit(v49);
        v41 = [(CWFWiFiNetworkSharingManager *)v49 __clientIDsRegisteredNetworksUpdateEvents];
        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        v54 = [v41 countByEnumeratingWithState:&v88 objects:v98 count:16];
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
              objc_enumerationMutation(v41);
            }

            v57 = *(*(&v88 + 1) + 8 * m);
            if ([(CWFWiFiNetworkSharingManager *)v49 __addCurrentNetworkToNetworkListForClientID:v57 forceRegistration:0, v69, v71])
            {
              [v75 addObject:v57];
            }

            else if (![(CWFWiFiNetworkSharingManager *)v49 __canAskToShareCurrentNetworkForClientID:v57 onDemand:0])
            {
              continue;
            }

            [v73 addObject:v57];
          }

          v54 = [v41 countByEnumeratingWithState:&v88 objects:v98 count:16];
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

- (void)didRemoveKnownNetwork:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
    v36 = v4;
    LODWORD(v29) = 12;
    v28 = &v35;
    _os_log_send_and_compose_impl();
  }

  v8 = [(CWFWiFiNetworkSharingManager *)self store];
  v9 = [v8 clientIDs];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v10 = v9;
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
        v17 = [v4 wifiNetworkSharingNetworkID];
        v18 = [v16 networkMetadataForClientID:v15 networkID:v17];

        if (v18)
        {
          v19 = [(CWFWiFiNetworkSharingManager *)self store];
          v20 = [v4 wifiNetworkSharingNetworkID];
          [v19 setNetworkMetadata:0 clientID:v15 networkID:v20];

          v21 = [(CWFWiFiNetworkSharingManager *)self authorizationLevelForClientID:v15];
          v22 = [v21 unsignedIntegerValue];

          if ([(CWFWiFiNetworkSharingManager *)self __canAutomaticallyShareKnownNetwork:v4 metadata:v18 authorizationStatus:v22])
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
              v36 = v4;
              LODWORD(v29) = 12;
              v28 = &v35;
              _os_log_send_and_compose_impl();
            }

            v26 = [(CWFWiFiNetworkSharingManager *)self store];
            [v26 incrementNetworksUpdateCounterForClientID:v15];

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

- (void)didRegisterForAskToShareNetworkListUpdateEventsWithClientID:(id)a3 XPCConnection:(id)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([(CWFWiFiNetworkSharingManager *)self __isNetworkListUpdateEventRegisteredForClientID:v6])
  {
    v8 = [(CWFWiFiNetworkSharingManager *)self askToShareNetworkListForClientID:v6];
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
        v37 = v6;
        v38 = 2114;
        v39 = v8;
        LODWORD(v33) = 22;
        v32 = &v36;
        _os_log_send_and_compose_impl();
      }

      v12 = objc_alloc_init(CWFXPCEvent);
      [(CWFXPCEvent *)v12 setType:44];
      v13 = [MEMORY[0x1E695DF00] date];
      [(CWFXPCEvent *)v12 setTimestamp:v13];

      v34 = @"WiFiNetworkSharingAskToShareNetworkList";
      v35 = v8;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      [(CWFXPCEvent *)v12 setInfo:v14];

      [(CWFXPCEvent *)v12 setWifiNetworkSharingClientID:v6];
      [v7 sendXPCEvent:v12 reply:0];
    }
  }

  v15 = self;
  objc_sync_enter(v15);
  v16 = [(CWFWiFiNetworkSharingManager *)v15 askToShareFromAppClientID];
  v17 = [(CWFWiFiNetworkSharingManager *)v15 askToShareFromAppexClientID];
  if (v16 == v17)
  {
    v23 = 0;
  }

  else
  {
    v18 = [(CWFWiFiNetworkSharingManager *)v15 askToShareFromAppClientID];
    if (v18)
    {
      v19 = [(CWFWiFiNetworkSharingManager *)v15 askToShareFromAppexClientID];
      if (v19)
      {
        v20 = [(CWFWiFiNetworkSharingManager *)v15 askToShareFromAppClientID];
        v21 = [(CWFWiFiNetworkSharingManager *)v15 askToShareFromAppexClientID];
        v22 = [v20 isEqual:v21];

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

  v24 = [(CWFWiFiNetworkSharingManager *)v15 askToShareFromAppexClientID];
  if (!v24)
  {
    goto LABEL_26;
  }

  v25 = [(CWFWiFiNetworkSharingManager *)v15 askToShareFromAppexClientID];
  v26 = v25;
  if (v25 != v6)
  {
    v27 = [(CWFWiFiNetworkSharingManager *)v15 askToShareFromAppexClientID];
    v28 = v27;
    if (!v6 || !v27)
    {

      goto LABEL_28;
    }

    v29 = [(CWFWiFiNetworkSharingManager *)v15 askToShareFromAppexClientID];
    v30 = [v29 isEqual:v6];

    if ((v30 & v23) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  if (v23)
  {
LABEL_26:
    [(CWFWiFiNetworkSharingManager *)v15 setWaitingForInitialScanResults:1, v32, v33];
  }

LABEL_28:
  [(CWFWiFiNetworkSharingManager *)v15 __updateAskToShareScanning:v32];
  objc_sync_exit(v15);

  v31 = *MEMORY[0x1E69E9840];
}

- (void)didRegisterForNetworkListUpdateEventsWithClientID:(id)a3 predicateData:(id)a4 XPCConnection:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(CWFWiFiNetworkSharingManager *)self __addCurrentNetworkToNetworkListForClientID:v8 forceRegistration:1])
  {
    v11 = [(CWFWiFiNetworkSharingManager *)self store];
    [v11 incrementNetworksUpdateCounterForClientID:v8];
  }

  v12 = [(CWFWiFiNetworkSharingManager *)self __networksUpdateForClientID:v8 predicateData:v9];
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
      v23 = v8;
      v24 = 2114;
      v25 = v12;
      _os_log_send_and_compose_impl();
    }

    v16 = objc_alloc_init(CWFXPCEvent);
    [(CWFXPCEvent *)v16 setType:43];
    v17 = [MEMORY[0x1E695DF00] date];
    [(CWFXPCEvent *)v16 setTimestamp:v17];

    v20 = @"WiFiNetworkSharingNetworksUpdate";
    v21 = v12;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    [(CWFXPCEvent *)v16 setInfo:v18];

    [(CWFXPCEvent *)v16 setWifiNetworkSharingClientID:v8];
    [v10 sendXPCEvent:v16 reply:0];
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)didUpdateRegisteredEventIDs:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DFA8] set];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v4;
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

  v11 = self;
  objc_sync_enter(v11);
  [(CWFWiFiNetworkSharingManager *)v11 setRegisteredWiFiNetworkSharingEventIDs:v5];
  objc_sync_exit(v11);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)didInvalidateXPCConnection:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(CWFWiFiNetworkSharingManager *)v5 waitingForNetworkListUpdateAcknowledgement];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1E0D187D0;
  v8[3] = &unk_1E86E9508;
  v7 = v4;
  v9 = v7;
  v10 = v5;
  [v6 enumerateKeysAndObjectsUsingBlock:v8];

  objc_sync_exit(v5);
}

- (void)__launchAppExtensionForClientID:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

  [(CWFWiFiNetworkSharingManager *)self __deviceForClientID:v4];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)__relaunchAppexIfNeeded
{
  v3 = [(CWFWiFiNetworkSharingManager *)self waitingForNetworkListUpdateAcknowledgement];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1E0D18B40;
  v4[3] = &unk_1E86E9530;
  v4[4] = self;
  [v3 enumerateKeysAndObjectsUsingBlock:v4];
}

- (int64_t)__nextAppexRelaunchIntervalFromNow
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0x7FFFFFFFFFFFFFFFLL;
  v3 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v4 = [(CWFWiFiNetworkSharingManager *)self waitingForNetworkListUpdateAcknowledgement];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E0D18DC0;
  v7[3] = &unk_1E86E9558;
  v7[4] = self;
  v7[5] = &v8;
  v7[6] = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:v7];

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (void)__scheduleNextAppexRelaunch
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(CWFWiFiNetworkSharingManager *)v2 nextAppexRelaunchTimer];

  if (!v3)
  {
    v4 = [(CWFWiFiNetworkSharingManager *)v2 internalQueue];
    v5 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v4);
    [(CWFWiFiNetworkSharingManager *)v2 setNextAppexRelaunchTimer:v5];

    v6 = [(CWFWiFiNetworkSharingManager *)v2 nextAppexRelaunchTimer];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = sub_1E0D19184;
    handler[3] = &unk_1E86E6010;
    handler[4] = v2;
    dispatch_source_set_event_handler(v6, handler);

    v7 = [(CWFWiFiNetworkSharingManager *)v2 nextAppexRelaunchTimer];
    dispatch_source_set_timer(v7, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);

    v8 = [(CWFWiFiNetworkSharingManager *)v2 nextAppexRelaunchTimer];
    dispatch_resume(v8);
  }

  v9 = [(CWFWiFiNetworkSharingManager *)v2 __nextAppexRelaunchIntervalFromNow];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = -1;
  }

  else
  {
    v10 = dispatch_time(0, v9);
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
    v14 = [(CWFWiFiNetworkSharingManager *)v2 askToShareFromAppexClientID];
    v18 = 138543874;
    v19 = v14;
    v20 = 1024;
    v21 = 30;
    v22 = 2048;
    v23 = v9 / 0x3B9ACA00;
    _os_log_send_and_compose_impl();
  }

  v15 = [(CWFWiFiNetworkSharingManager *)v2 nextAppexRelaunchTimer];
  dispatch_source_set_timer(v15, v10, 0xFFFFFFFFFFFFFFFFLL, 0);

  objc_sync_exit(v2);
  v16 = *MEMORY[0x1E69E9840];
}

- (void)extendAppexRuntimeForClientID:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

  [(CWFWiFiNetworkSharingManager *)self __launchAppExtensionForClientID:v4];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)__sendNetworkListUpdateEventForClientID:(id)a3
{
  v4 = a3;
  v5 = [(CWFWiFiNetworkSharingManager *)self internalQueue];
  v6 = qos_class_self();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1E0D19368;
  v9[3] = &unk_1E86E6420;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  v8 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v6, 0, v9);
  dispatch_async(v5, v8);
}

- (id)__clientIDsRegisteredNetworksUpdateEvents
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [(CWFWiFiNetworkSharingManager *)self registeredWiFiNetworkSharingEventIDs];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 type] == 43)
        {
          if (!v5)
          {
            v5 = [MEMORY[0x1E695DF70] array];
          }

          v9 = [v8 clientID];
          [v5 addObject:v9];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)__registeredNetworksUpdateEventIDsForClientID:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v19 = a3;
  if (v19)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v4 = [(CWFWiFiNetworkSharingManager *)self registeredWiFiNetworkSharingEventIDs];
    v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (!v5)
    {
      v7 = 0;
      goto LABEL_20;
    }

    v6 = v5;
    v7 = 0;
    v8 = *v21;
    while (1)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        if ([v10 type] == 43)
        {
          v11 = [v10 clientID];
          v12 = v11;
          if (v11 == v19)
          {

            if (!v7)
            {
              goto LABEL_14;
            }

            goto LABEL_12;
          }

          v13 = [v10 clientID];
          if (v13)
          {
            v14 = v13;
            v15 = [v10 clientID];
            v16 = [v19 isEqual:v15];

            if (!v16)
            {
              continue;
            }

            if (v7)
            {
              goto LABEL_12;
            }

LABEL_14:
            v7 = [MEMORY[0x1E695DF70] array];
LABEL_12:
            [v7 addObject:v10];
            continue;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (!v6)
      {
LABEL_20:

        goto LABEL_21;
      }
    }
  }

  v7 = 0;
LABEL_21:

  v17 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)__networkListForClientID:(id)a3 predicateData:(id)a4
{
  v70 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v49 = a4;
  v7 = [MEMORY[0x1E695DF70] array];
  context = objc_autoreleasePoolPush();
  v8 = [(CWFWiFiNetworkSharingManager *)self __knownNetworks];
  v9 = [(CWFWiFiNetworkSharingManager *)self store];
  v10 = [v9 networkMetadataForClientID:v6];

  v11 = [(CWFWiFiNetworkSharingManager *)self authorizationLevelForClientID:v6];
  v56 = [v11 unsignedIntegerValue];

  v53 = [MEMORY[0x1E695DF00] date];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = v8;
  v57 = [obj countByEnumeratingWithState:&v60 objects:v69 count:16];
  if (v57)
  {
    v12 = *v61;
    v50 = v7;
    v51 = self;
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
        v16 = [v14 wifiNetworkSharingNetworkID];
        v17 = [v10 objectForKeyedSubscript:v16];

        if (v17 && [(CWFWiFiNetworkSharingManager *)self __canAutomaticallyShareKnownNetwork:v14 metadata:v17 authorizationStatus:v56])
        {
          v18 = [v17 firstSharedDate];

          if (!v18)
          {
            [v17 setFirstSharedDate:v53];
            [v17 setLastModifiedDate:v53];
          }

          [v17 setMostRecentlySharedDate:v53];
          v19 = [(CWFWiFiNetworkSharingManager *)self store];
          v20 = [v14 wifiNetworkSharingNetworkID];
          [v19 setNetworkMetadata:v17 clientID:v6 networkID:v20];

          v21 = objc_alloc_init(CWFWiFiNetworkSharingNetwork);
          v22 = [v14 SSID];
          [(CWFWiFiNetworkSharingNetwork *)v21 setSSID:v22];

          -[CWFWiFiNetworkSharingNetwork setSupportedSecurityTypes:](v21, "setSupportedSecurityTypes:", [v14 effectiveSupportedSecurityTypes]);
          -[CWFWiFiNetworkSharingNetwork setIsHidden:](v21, "setIsHidden:", [v14 hiddenState] == 1);
          if (([v14 isCaptive] & 1) != 0 || objc_msgSend(v14, "wasCaptive"))
          {
            [(CWFWiFiNetworkSharingNetwork *)v21 setIsCaptive:1];
          }

          else
          {
            v23 = [v14 captiveWebsheetLoginDate];
            [(CWFWiFiNetworkSharingNetwork *)v21 setIsCaptive:v23 != 0];
          }

          v24 = [v17 firstSharedDate];
          [(CWFWiFiNetworkSharingNetwork *)v21 setFirstSharedDate:v24];

          v25 = [v17 lastModifiedDate];
          [(CWFWiFiNetworkSharingNetwork *)v21 setLastModifiedDate:v25];

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
              v29 = v6;
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

              v6 = v29;
              v7 = v50;
            }

            self = v51;
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

              self = v51;
              v10 = v52;
            }

            v12 = v54;
          }

          [v7 addObject:{v21, v45, v47}];
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
  [v7 sortUsingDescriptors:v39];

  objc_autoreleasePoolPop(context);
  if (v49)
  {
    v40 = [CWFWiFiNetworkSharingUtil prepareSharedNetworksObjcWithNetworks:v7 matching:v49];
  }

  else
  {
    v40 = v7;
  }

  v41 = v40;

  v42 = *MEMORY[0x1E69E9840];

  return v41;
}

- (id)__networksUpdateForClientID:(id)a3 predicateData:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v8 = 0;
    goto LABEL_12;
  }

  v8 = objc_alloc_init(CWFWiFiNetworkSharingNetworkListUpdate);
  v9 = [(CWFWiFiNetworkSharingManager *)self __networkListForClientID:v6 predicateData:v7];
  [(CWFWiFiNetworkSharingNetworkListUpdate *)v8 setNetworkList:v9];

  v10 = [(CWFWiFiNetworkSharingManager *)self store];
  -[CWFWiFiNetworkSharingNetworkListUpdate setNetworkListUpdateCounter:](v8, "setNetworkListUpdateCounter:", [v10 networkListUpdateCounterForClientID:v6]);

  v11 = [(CWFWiFiNetworkSharingManager *)self askToShareFromAppClientID];
  v12 = v11;
  if (v11 == v6)
  {
  }

  else
  {
    v13 = [(CWFWiFiNetworkSharingManager *)self askToShareFromAppClientID];
    if (!v13)
    {

      goto LABEL_9;
    }

    v14 = v13;
    v15 = [(CWFWiFiNetworkSharingManager *)self askToShareFromAppClientID];
    v16 = [v6 isEqual:v15];

    if (!v16)
    {
      goto LABEL_9;
    }
  }

  [(CWFWiFiNetworkSharingNetworkListUpdate *)v8 setIsAskToShareRequestFromAppPending:1];
LABEL_9:
  if ([(CWFWiFiNetworkSharingManager *)self __canAskToShareCurrentNetworkForClientID:v6 onDemand:0])
  {
    v17 = [(CWFWiFiNetworkSharingManager *)self associatedNetwork];
    v18 = [v17 matchingKnownNetworkProfile];
    v19 = [v18 wifiNetworkSharingNetworkID];
    v20 = [(CWFWiFiNetworkSharingManager *)self __shouldRateLimitAskToShareFromAppexRequestWithClientID:v6 networkID:v19];

    if (!v20)
    {
      [(CWFWiFiNetworkSharingNetworkListUpdate *)v8 setIsAskToShareNetworkAvailable:1];
    }
  }

LABEL_12:

  return v8;
}

- (void)acknowledgeNetworkListUpdate:(id)a3 clientID:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
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
    v33 = v7;
    v34 = 2114;
    v35 = v6;
    LODWORD(v30) = 22;
    v28 = &v32;
    _os_log_send_and_compose_impl();
  }

  v12 = [(CWFWiFiNetworkSharingManager *)v8 store];
  v13 = [v12 acknowledgedNetworksUpdateCounterForClientID:v7];

  if ([v6 networkListUpdateCounter] > v13)
  {
    v14 = [(CWFWiFiNetworkSharingManager *)v8 store];
    [v14 setAcknowledgedNetworksUpdateCounter:objc_msgSend(v6 clientID:{"networkListUpdateCounter"), v7}];

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
      v18 = [v6 networkListUpdateCounter];
      v32 = 138543618;
      v33 = v7;
      v34 = 2048;
      v35 = v18;
      LODWORD(v30) = 22;
      v28 = &v32;
      _os_log_send_and_compose_impl();
    }
  }

  v19 = [(CWFWiFiNetworkSharingManager *)v8 waitingForNetworkListUpdateAcknowledgement:v28];
  v20 = [v19 objectForKeyedSubscript:v7];
  v21 = [v20 networkListUpdateCounter];

  if ([v6 networkListUpdateCounter] >= v21)
  {
    v22 = [(CWFWiFiNetworkSharingManager *)v8 waitingForNetworkListUpdateAcknowledgement];
    [v22 setObject:0 forKeyedSubscript:v7];

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
      v26 = [v6 networkListUpdateCounter];
      v32 = 138543618;
      v33 = v7;
      v34 = 2050;
      v35 = v26;
      LODWORD(v31) = 22;
      v29 = &v32;
      _os_log_send_and_compose_impl();
    }
  }

  [(CWFWiFiNetworkSharingManager *)v8 __sendNetworkListUpdateEventForClientID:v7, v29, v31];
  objc_sync_exit(v8);

  v27 = *MEMORY[0x1E69E9840];
}

- (void)__setWantsAcknowledgementForNetworkListUpdate:(id)a3 clientID:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = [(CWFWiFiNetworkSharingManager *)v8 waitingForNetworkListUpdateAcknowledgement];
  [v9 setObject:v6 forKeyedSubscript:v7];

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

  objc_sync_exit(v8);
  v13 = *MEMORY[0x1E69E9840];
}

- (void)__completeAskToShareFromAppWithError:(id)a3 status:(int64_t)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = self;
  objc_sync_enter(v7);
  v8 = [(CWFWiFiNetworkSharingManager *)v7 askToShareFromAppCompletion];
  if (v8)
  {
    v9 = [(CWFWiFiNetworkSharingManager *)v7 askToShareFromAppClientID];

    if (v9)
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
        v13 = [(CWFWiFiNetworkSharingManager *)v7 askToShareFromAppClientID];
        sub_1E0BF1E78(a4);
        v27 = 138543874;
        v28 = v13;
        v29 = 2114;
        v30 = v6;
        v32 = v31 = 2114;
        _os_log_send_and_compose_impl();
      }

      v14 = [(CWFWiFiNetworkSharingManager *)v7 askToShareFromAppCompletion];
      v15 = [(CWFWiFiNetworkSharingManager *)v7 targetQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1E0D1AC20;
      block[3] = &unk_1E86E9580;
      v16 = v14;
      v25 = v16;
      v24 = v6;
      v26 = a4;
      dispatch_async(v15, block);

      v17 = [(CWFWiFiNetworkSharingManager *)v7 askToShareFromAppClientID];
      v18 = [(CWFWiFiNetworkSharingManager *)v7 internalQueue];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = sub_1E0D1AC78;
      v21[3] = &unk_1E86E6420;
      v21[4] = v7;
      v19 = v17;
      v22 = v19;
      dispatch_async(v18, v21);

      [(CWFWiFiNetworkSharingManager *)v7 setAskToShareFromAppCompletion:0];
      [(CWFWiFiNetworkSharingManager *)v7 __stopWaitingForAppex];
      [(CWFWiFiNetworkSharingManager *)v7 setAskToShareFromAppClientID:0];
    }
  }

  objc_sync_exit(v7);

  v20 = *MEMORY[0x1E69E9840];
}

- (void)__updateRateLimitAskToShareFromAppRequestTimestampCacheForClientID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v9 = v4;
    v5 = [(CWFWiFiNetworkSharingManager *)self askToShareRequestFromAppTimestampCache];
    v6 = [v5 objectForKeyedSubscript:v9];

    if (!v6)
    {
      v6 = [MEMORY[0x1E695DF70] array];
      v7 = [(CWFWiFiNetworkSharingManager *)self askToShareRequestFromAppTimestampCache];
      [v7 setObject:v6 forKeyedSubscript:v9];
    }

    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW)];
    [v6 addObject:v8];

    if ([v6 count] >= 2)
    {
      [v6 removeObjectAtIndex:0];
    }

    v4 = v9;
  }
}

- (BOOL)__shouldRateLimitAskToShareFromAppRequestWithClientID:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4 && (-[CWFWiFiNetworkSharingManager askToShareRequestFromAppTimestampCache](self, "askToShareRequestFromAppTimestampCache"), v5 = objc_claimAutoreleasedReturnValue(), [v5 allKeys], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "containsObject:", v4), v6, v5, v7))
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

- (void)askToShareFromAppForClientID:(id)a3 completion:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(CWFWiFiNetworkSharingManager *)self askToShareFromAppClientID];

  if (!v8)
  {
    [(CWFWiFiNetworkSharingManager *)self setAskToShareFromAppClientID:v6];
    [(CWFWiFiNetworkSharingManager *)self setAskToShareFromAppCompletion:v7];
    v9 = [(CWFWiFiNetworkSharingManager *)self authorizationLevelForClientID:v6];
    v10 = [v9 unsignedIntegerValue];

    if (v10 != 2 && v10 != 7)
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

    v11 = [v6 bundleID];
    v12 = [(CWFWiFiNetworkSharingManager *)self __appForegroundStateHandlerForBundleID:v11];

    v13 = [(CWFWiFiNetworkSharingManager *)self __forceForegroundAppState];
    v14 = v13;
    if (v13)
    {
      if ([v13 BOOLValue])
      {
LABEL_6:
        if (![(CWFWiFiNetworkSharingManager *)self __shouldRateLimitAskToShareFromAppRequestWithClientID:v6])
        {
          if ([(CWFWiFiNetworkSharingManager *)self __isNetworkListUpdateEventRegisteredForClientID:v6])
          {
            [(CWFWiFiNetworkSharingManager *)self __updateRateLimitAskToShareFromAppRequestTimestampCacheForClientID:v6];
            [(CWFWiFiNetworkSharingManager *)self setWaitingForAppex:1];
            [(CWFWiFiNetworkSharingManager *)self __launchAppExtensionForClientID:v6];
            [(CWFWiFiNetworkSharingManager *)self __startWaitingForAppex];
            [(CWFWiFiNetworkSharingManager *)self __sendNetworkListUpdateEventForClientID:v6];
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

  if (v7)
  {
    v14 = CWFErrorDescription(@"WiFiNetworkSharingError", 0xBuLL);
    v29 = CWFErrorWithDescription(@"WiFiNetworkSharingError", 11, v14);
    v7[2](v7, v29, 0);

    goto LABEL_18;
  }

LABEL_19:

  v21 = *MEMORY[0x1E69E9840];
}

- (void)cancelAskToShareFromAppRequestForClientID:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
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
    [(CWFWiFiNetworkSharingManager *)v5 askToShareFromAppClientID];
    v23 = v22 = 138543362;
    _os_log_send_and_compose_impl();
  }

  v9 = CWFErrorDescription(@"WiFiNetworkSharingError", 2uLL);
  v10 = CWFErrorWithDescription(@"WiFiNetworkSharingError", 2, v9);
  [(CWFWiFiNetworkSharingManager *)v5 __completeAskToShareFromAppWithError:v10 status:0];

  if (v4)
  {
    v11 = [(CWFWiFiNetworkSharingManager *)v5 askToShareFromAppexClientID];
    if (v11)
    {
      v12 = [(CWFWiFiNetworkSharingManager *)v5 askToShareFromAppexClientID];
      v13 = [v4 isEqual:v12];

      if (v13)
      {
        v14 = [(CWFWiFiNetworkSharingManager *)v5 askToShareFromAppexClientID];
        v15 = [(CWFWiFiNetworkSharingManager *)v5 targetQueue];
        v16 = qos_class_self();
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = sub_1E0D1B6D0;
        block[3] = &unk_1E86E6420;
        block[4] = v5;
        v21 = v14;
        v17 = v14;
        v18 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v16, 0, block);
        dispatch_async(v15, v18);
      }
    }
  }

  objc_sync_exit(v5);

  v19 = *MEMORY[0x1E69E9840];
}

- (void)__completeAskToShareFromAppexWithError:(id)a3 status:(int64_t)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = self;
  objc_sync_enter(v7);
  v8 = [(CWFWiFiNetworkSharingManager *)v7 askToShareFromAppexCompletion];
  if (v8)
  {
    v9 = [(CWFWiFiNetworkSharingManager *)v7 askToShareFromAppexClientID];

    if (v9)
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
        v13 = [(CWFWiFiNetworkSharingManager *)v7 askToShareFromAppexClientID];
        sub_1E0BF1E78(a4);
        v23 = 138543874;
        v24 = v13;
        v25 = 2114;
        v26 = v6;
        v28 = v27 = 2114;
        _os_log_send_and_compose_impl();
      }

      v14 = [(CWFWiFiNetworkSharingManager *)v7 askToShareFromAppexCompletion];
      v15 = [(CWFWiFiNetworkSharingManager *)v7 targetQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1E0D1B9AC;
      block[3] = &unk_1E86E9580;
      v16 = v14;
      v21 = v16;
      v20 = v6;
      v22 = a4;
      dispatch_async(v15, block);

      [(CWFWiFiNetworkSharingManager *)v7 setAskToShareFromAppexCompletion:0];
      v17 = [(CWFWiFiNetworkSharingManager *)v7 askToShareNetworksCache];
      [v17 removeAllObjects];

      [(CWFWiFiNetworkSharingManager *)v7 __stopAskToShareScanning];
      [(CWFWiFiNetworkSharingManager *)v7 setAskToShareFromAppexClientID:0];
    }
  }

  objc_sync_exit(v7);

  v18 = *MEMORY[0x1E69E9840];
}

- (id)__descriptorForRateLimitAskToShareFromAppexRequestWithClientID:(id)a3 networkID:(id)a4
{
  v4 = 0;
  if (a3 && a4)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = a4;
    v8 = a3;
    v9 = [v8 bundleID];
    v10 = [v8 accessoryID];

    v11 = [v7 descriptor];

    v4 = [v6 stringWithFormat:@"%@/%@/%@", v9, v10, v11];
  }

  return v4;
}

- (void)__updateRateLimitAskToShareFromAppexRequestTimestampCacheForClientID:(id)a3 networkID:(id)a4
{
  if (a3 && a4)
  {
    v5 = [CWFWiFiNetworkSharingManager __descriptorForRateLimitAskToShareFromAppexRequestWithClientID:"__descriptorForRateLimitAskToShareFromAppexRequestWithClientID:networkID:" networkID:?];
    if (v5)
    {
      v10 = v5;
      v6 = [(CWFWiFiNetworkSharingManager *)self askToShareRequestFromAppexTimestampCache];
      v7 = [v6 objectForKeyedSubscript:v10];

      if (!v7)
      {
        v7 = [MEMORY[0x1E695DF70] array];
        v8 = [(CWFWiFiNetworkSharingManager *)self askToShareRequestFromAppexTimestampCache];
        [v8 setObject:v7 forKeyedSubscript:v10];
      }

      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW)];
      [v7 addObject:v9];

      if ([v7 count] >= 2)
      {
        [v7 removeObjectAtIndex:0];
      }

      v5 = v10;
    }
  }
}

- (BOOL)__shouldRateLimitAskToShareFromAppexRequestWithClientID:(id)a3 networkID:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = 0;
  if (v6 && v7)
  {
    v10 = [(CWFWiFiNetworkSharingManager *)self __descriptorForRateLimitAskToShareFromAppexRequestWithClientID:v6 networkID:v7];
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
          v28 = v6;
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

- (BOOL)__canAskToShareKnownNetwork:(id)a3 metadata:(id)a4 authorizationStatus:(unint64_t)a5 onDemand:(BOOL)a6
{
  v9 = a4;
  if (![a3 supportsWiFiNetworkSharing] || a5 != 7 && a5 != 2)
  {
    goto LABEL_8;
  }

  if (!a6)
  {
    if ([v9 askToShareStatus] != 2 && objc_msgSend(v9, "askToShareStatus") != 1)
    {
      if (a5 == 2)
      {
        v10 = [v9 askToShareStatus] != 0;
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

- (BOOL)__canAutomaticallyShareKnownNetworkWithMetadata:(id)a3 authorizationStatus:(unint64_t)a4
{
  v5 = a3;
  v6 = v5;
  if ((a4 == 7 || a4 == 2) && [v5 askToShareStatus] != 2 && (a4 != 7 || objc_msgSend(v6, "askToShareStatus") == 1))
  {
    v7 = [v6 waitingForAssociation] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (BOOL)__canAutomaticallyShareKnownNetwork:(id)a3 metadata:(id)a4 authorizationStatus:(unint64_t)a5
{
  v8 = a4;
  if ([a3 supportsWiFiNetworkSharing])
  {
    v9 = [(CWFWiFiNetworkSharingManager *)self __canAutomaticallyShareKnownNetworkWithMetadata:v8 authorizationStatus:a5];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)__doesAskToShareNetwork:(id)a3 matchAccessoryScanResult:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 scanResult];
  v8 = [v7 SSID];
  v9 = [v6 SSID];
  if (v8 == v9)
  {
    v15 = 1;
  }

  else
  {
    v10 = [v5 scanResult];
    v11 = [v10 SSID];
    if (v11)
    {
      v12 = [v6 SSID];
      if (v12)
      {
        v18 = v12;
        v17 = [v5 scanResult];
        v13 = [v17 SSID];
        v14 = [v6 SSID];
        v15 = [v13 isEqual:v14];

        v12 = v18;
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

- (BOOL)__isAskToShareNetworkListChangedEventRegisteredForClientID:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = [(CWFWiFiNetworkSharingManager *)self registeredWiFiNetworkSharingEventIDs];
    v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v6)
    {
      v7 = *v19;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v18 + 1) + 8 * i);
          if ([v9 type] == 44)
          {
            v10 = [v9 clientID];
            v11 = v10;
            if (v10 == v4)
            {

LABEL_17:
              LOBYTE(v6) = 1;
              goto LABEL_18;
            }

            v12 = [v9 clientID];
            if (v12)
            {
              v13 = v12;
              v14 = [v9 clientID];
              v15 = [v4 isEqual:v14];

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

        v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
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

- (id)__askToShareNetworkListForClientID:(id)a3 localScanResults:(id)a4 accessoryScanResults:(id)a5 onDemand:(BOOL)a6
{
  v73 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v48 = a4;
  v52 = a5;
  v53 = [MEMORY[0x1E695DF70] array];
  context = objc_autoreleasePoolPush();
  v11 = [(CWFWiFiNetworkSharingManager *)self __knownNetworks];
  v12 = [(CWFWiFiNetworkSharingManager *)self store];
  v13 = [v12 networkMetadataForClientID:v10];

  v47 = v10;
  v14 = [(CWFWiFiNetworkSharingManager *)self authorizationLevelForClientID:v10];
  v15 = [v14 unsignedIntegerValue];

  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = sub_1E0D1CF20;
  v66[3] = &unk_1E86E95A8;
  v51 = v13;
  v67 = v51;
  v68 = self;
  v69 = v15;
  v70 = a6;
  v45 = v11;
  v55 = [v11 objectsPassingTest:v66];
  v16 = [MEMORY[0x1E695DF70] array];
  v17 = [(CWFWiFiNetworkSharingManager *)self associatedNetwork];
  if (v17)
  {
    [v16 addObject:v17];
  }

  if (v48)
  {
    [v16 addObjectsFromArray:?];
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = v16;
  v56 = [obj countByEnumeratingWithState:&v62 objects:v72 count:16];
  if (v56)
  {
    v54 = *v63;
    v50 = v17;
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
        v21 = [v55 allObjects];
        v22 = sub_1E0BED85C(v19, v21);

        if (v22)
        {
          v57 = v20;
          v23 = [v22 wifiNetworkSharingNetworkID];
          v24 = [v51 objectForKeyedSubscript:v23];

          v25 = [v17 SSID];
          if (v25)
          {
            v26 = [v19 SSID];
            if (v26)
            {
              v27 = [v17 SSID];
              v28 = [v19 SSID];
              v29 = [v27 isEqual:v28];
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
          v31 = v52;
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
                  v39 = [v30 scanResult];
                  [v39 setSignalStrengthOnAccessory:v38];

                  v40 = [v36 isConnected];
                  v41 = [v30 scanResult];
                  [v41 setIsConnectedOnAccessory:v40];

                  v42 = [v30 scanResult];
                  [v42 setWasFoundOnAccessory:1];

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

          [v53 addObject:v30];
          v17 = v50;
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

  return v53;
}

- (void)__startAskToShareScanning
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(CWFWiFiNetworkSharingManager *)v2 accessoryScanTimer];

  if (!v3)
  {
    v4 = [(CWFWiFiNetworkSharingManager *)v2 internalQueue];
    v5 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v4);
    [(CWFWiFiNetworkSharingManager *)v2 setAccessoryScanTimer:v5];

    v6 = [(CWFWiFiNetworkSharingManager *)v2 accessoryScanTimer];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = sub_1E0D1D300;
    handler[3] = &unk_1E86E6010;
    handler[4] = v2;
    dispatch_source_set_event_handler(v6, handler);

    v7 = [(CWFWiFiNetworkSharingManager *)v2 accessoryScanTimer];
    dispatch_source_set_timer(v7, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);

    v8 = [(CWFWiFiNetworkSharingManager *)v2 accessoryScanTimer];
    dispatch_resume(v8);
  }

  if (![(CWFWiFiNetworkSharingManager *)v2 isNextAskToShareScanScheduled])
  {
    [(CWFWiFiNetworkSharingManager *)v2 setIsNextAskToShareScanScheduled:1];
    if ([(CWFWiFiNetworkSharingManager *)v2 waitingForInitialScanResults])
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
        v14 = [(CWFWiFiNetworkSharingManager *)v2 askToShareFromAppexClientID];
        v22 = 138543362;
        v23 = v14;
        _os_log_send_and_compose_impl();
      }

      v15 = [(CWFWiFiNetworkSharingManager *)v2 accessoryScanTimer];
      v16 = v15;
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
        v19 = [(CWFWiFiNetworkSharingManager *)v2 askToShareFromAppexClientID];
        v22 = 138543618;
        v23 = v19;
        v24 = 1024;
        v25 = 10;
        _os_log_send_and_compose_impl();
      }

      v16 = [(CWFWiFiNetworkSharingManager *)v2 accessoryScanTimer];
      v17 = dispatch_time(0, 10000000000);
      v15 = v16;
    }

    dispatch_source_set_timer(v15, v17, 0xFFFFFFFFFFFFFFFFLL, 0);
  }

  objc_sync_exit(v2);

  v20 = *MEMORY[0x1E69E9840];
}

- (void)__stopAskToShareScanning
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  if ([(CWFWiFiNetworkSharingManager *)v2 isNextAskToShareScanScheduled])
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
      v9 = [(CWFWiFiNetworkSharingManager *)v2 askToShareFromAppexClientID];
      _os_log_send_and_compose_impl();
    }

    [(CWFWiFiNetworkSharingManager *)v2 setIsNextAskToShareScanScheduled:0];
    [(CWFWiFiNetworkSharingManager *)v2 setWaitingForInitialScanResults:0];
    v6 = [(CWFWiFiNetworkSharingManager *)v2 accessoryScanTimer];

    if (v6)
    {
      v7 = [(CWFWiFiNetworkSharingManager *)v2 accessoryScanTimer];
      dispatch_source_set_timer(v7, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    }
  }

  objc_sync_exit(v2);

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
  v2 = self;
  objc_sync_enter(v2);
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
    v6 = [(CWFWiFiNetworkSharingManager *)v2 askToShareFromAppClientID];
    v20 = 138543362;
    v21 = v6;
    LODWORD(v18) = 12;
    v17 = &v20;
    _os_log_send_and_compose_impl();
  }

  [(CWFWiFiNetworkSharingManager *)v2 setWaitingForAppex:1];
  v7 = [(CWFWiFiNetworkSharingManager *)v2 waitForAppexTimer];
  v8 = v7 == 0;

  if (v8)
  {
    v9 = [(CWFWiFiNetworkSharingManager *)v2 internalQueue];
    v10 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v9);
    [(CWFWiFiNetworkSharingManager *)v2 setWaitForAppexTimer:v10];

    v11 = [(CWFWiFiNetworkSharingManager *)v2 waitForAppexTimer];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = sub_1E0D1E41C;
    handler[3] = &unk_1E86E6010;
    handler[4] = v2;
    dispatch_source_set_event_handler(v11, handler);

    v12 = [(CWFWiFiNetworkSharingManager *)v2 waitForAppexTimer];
    dispatch_source_set_timer(v12, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);

    v13 = [(CWFWiFiNetworkSharingManager *)v2 waitForAppexTimer];
    dispatch_resume(v13);
  }

  v14 = [(CWFWiFiNetworkSharingManager *)v2 waitForAppexTimer:v17];
  v15 = dispatch_time(0, 10000000000);
  dispatch_source_set_timer(v14, v15, 0xFFFFFFFFFFFFFFFFLL, 0);

  objc_sync_exit(v2);
  v16 = *MEMORY[0x1E69E9840];
}

- (void)__stopWaitingForAppex
{
  obj = self;
  objc_sync_enter(obj);
  v2 = [(CWFWiFiNetworkSharingManager *)obj waitForAppexTimer];

  if (v2)
  {
    v3 = [(CWFWiFiNetworkSharingManager *)obj waitForAppexTimer];
    dispatch_source_set_timer(v3, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);

    [(CWFWiFiNetworkSharingManager *)obj setWaitingForAppex:0];
  }

  objc_sync_exit(obj);
}

- (void)__presentAskToShareProxCardForAccessoryName:(id)a3
{
  v4 = a3;
  v5 = [(CWFWiFiNetworkSharingManager *)self targetQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E0D1E69C;
  v7[3] = &unk_1E86E6420;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)__presentAskToShareUserNotificationForNetwork:(id)a3 accessoryName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CWFWiFiNetworkSharingManager *)self targetQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0D1EB9C;
  block[3] = &unk_1E86E6060;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (id)askToShareNetworkListForClientID:(id)a3
{
  v4 = a3;
  v5 = [(CWFWiFiNetworkSharingManager *)self askToShareFromAppexClientID];

  if (!v5)
  {
    v12 = [(CWFWiFiNetworkSharingManager *)self askToShareNetworksCache];
    v13 = [v12 count];

    if (v13)
    {
      goto LABEL_11;
    }

    v6 = [(CWFWiFiNetworkSharingManager *)self __askToShareNetworkForCurrentNetworkWithClientID:v4 onDemand:1];
    if (v6)
    {
      v14 = [(CWFWiFiNetworkSharingManager *)self askToShareNetworksCache];
      [v14 addObject:v6];
    }

LABEL_10:

    goto LABEL_11;
  }

  v6 = [(CWFWiFiNetworkSharingManager *)self askToShareFromAppexClientID];
  if (v6 == v4)
  {
    goto LABEL_10;
  }

  v7 = [(CWFWiFiNetworkSharingManager *)self askToShareFromAppexClientID];
  v8 = v7;
  if (!v4 || !v7)
  {

    v11 = 0;
    goto LABEL_13;
  }

  v9 = [(CWFWiFiNetworkSharingManager *)self askToShareFromAppexClientID];
  v10 = [v9 isEqual:v4];

  if (!v10)
  {
    v11 = 0;
    goto LABEL_14;
  }

LABEL_11:
  v6 = [(CWFWiFiNetworkSharingManager *)self askToShareNetworksCache];
  v11 = [v6 copy];
LABEL_13:

LABEL_14:

  return v11;
}

- (void)askToShareFromAppexForClientID:(id)a3 completion:(id)a4
{
  v67 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([(CWFWiFiNetworkSharingManager *)self __addCurrentNetworkToNetworkListForClientID:v6 forceRegistration:1])
  {
    v8 = [(CWFWiFiNetworkSharingManager *)self store];
    [v8 incrementNetworksUpdateCounterForClientID:v6];
  }

  v9 = [(CWFWiFiNetworkSharingManager *)self askToShareFromAppClientID];
  if (v9 == v6)
  {
    v12 = 1;
  }

  else
  {
    v10 = [(CWFWiFiNetworkSharingManager *)self askToShareFromAppClientID];
    v11 = v10;
    v12 = 0;
    if (v6 && v10)
    {
      v13 = [(CWFWiFiNetworkSharingManager *)self askToShareFromAppClientID];
      v12 = [v13 isEqual:v6];
    }
  }

  v14 = [(CWFWiFiNetworkSharingManager *)self askToShareFromAppexClientID];

  if (v14)
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

    if (v7)
    {
      v56 = CWFErrorDescription(@"WiFiNetworkSharingError", 0xBuLL);
      v57 = CWFErrorWithDescription(@"WiFiNetworkSharingError", 11, v56);
      v7[2](v7, v57, 0);
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

  [(CWFWiFiNetworkSharingManager *)self setAskToShareFromAppexClientID:v6];
  [(CWFWiFiNetworkSharingManager *)self setAskToShareFromAppexCompletion:v7];
  if ([(CWFWiFiNetworkSharingManager *)self __canAskToShareCurrentNetworkForClientID:v6 onDemand:0])
  {
    if (v12)
    {
      goto LABEL_13;
    }

    v15 = [(CWFWiFiNetworkSharingManager *)self associatedNetwork];
    v16 = [v15 matchingKnownNetworkProfile];
    v17 = [v16 wifiNetworkSharingNetworkID];
    v18 = [(CWFWiFiNetworkSharingManager *)self __shouldRateLimitAskToShareFromAppexRequestWithClientID:v6 networkID:v17];

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

  v20 = [v6 bundleID];
  v21 = [(CWFWiFiNetworkSharingManager *)self __appForegroundStateHandlerForBundleID:v20];

  v22 = [(CWFWiFiNetworkSharingManager *)self __forceForegroundAppState];
  v19 = v22;
  if (v22)
  {
    if ([v22 BOOLValue])
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
  v23 = [(CWFWiFiNetworkSharingManager *)self authorizationLevelForClientID:v6];
  v24 = [v23 unsignedIntegerValue];

  if (v24 != 2 && v24 != 7)
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
    v25 = [(CWFWiFiNetworkSharingManager *)self associatedNetwork];
    v26 = [v25 matchingKnownNetworkProfile];
    v27 = [v26 wifiNetworkSharingNetworkID];
    [(CWFWiFiNetworkSharingManager *)self __updateRateLimitAskToShareFromAppexRequestTimestampCacheForClientID:v6 networkID:v27];
  }

  v28 = [(CWFWiFiNetworkSharingManager *)self askToShareNetworksCache];
  [v28 removeAllObjects];

  v29 = [(CWFWiFiNetworkSharingManager *)self __forceAccessoryDisplayName];
  if (!v29)
  {
    v37 = [(CWFWiFiNetworkSharingManager *)self askToShareFromAppexClientID];
    v38 = [(CWFWiFiNetworkSharingManager *)self __deviceForClientID:v37];
    v30 = [v38 name];

    if (v30)
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
      v66 = [(CWFWiFiNetworkSharingManager *)self askToShareFromAppexClientID];
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
    v30 = 0;
    goto LABEL_45;
  }

  v30 = v29;
LABEL_30:
  if (v12)
  {
    [(CWFWiFiNetworkSharingManager *)self __stopWaitingForAppex];
    v39 = [(CWFWiFiNetworkSharingManager *)self __askToShareNetworkForCurrentNetworkWithClientID:v6 onDemand:1];
    if (v39)
    {
      v40 = [(CWFWiFiNetworkSharingManager *)self askToShareNetworksCache];
      [v40 addObject:v39];
    }

    [(CWFWiFiNetworkSharingManager *)self __presentAskToShareProxCardForAccessoryName:v30];
    [(CWFWiFiNetworkSharingManager *)self setWaitingForInitialScanResults:1];
    [(CWFWiFiNetworkSharingManager *)self __updateAskToShareScanning];
  }

  else
  {
    v39 = [(CWFWiFiNetworkSharingManager *)self __askToShareNetworkForCurrentNetworkWithClientID:v6 onDemand:0];
    if (v39)
    {
      v41 = [(CWFWiFiNetworkSharingManager *)self askToShareNetworksCache];
      [v41 addObject:v39];

      [(CWFWiFiNetworkSharingManager *)self __presentAskToShareUserNotificationForNetwork:v39 accessoryName:v30];
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

- (void)cancelAskToShareFromAppexRequestForClientID:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
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
    v16 = [(CWFWiFiNetworkSharingManager *)v5 askToShareFromAppexClientID];
    _os_log_send_and_compose_impl();
  }

  v9 = CWFErrorDescription(@"WiFiNetworkSharingError", 2uLL);
  v10 = CWFErrorWithDescription(@"WiFiNetworkSharingError", 2, v9);
  [(CWFWiFiNetworkSharingManager *)v5 __completeAskToShareFromAppexWithError:v10 status:0];

  if (v4)
  {
    v11 = [(CWFWiFiNetworkSharingManager *)v5 askToShareFromAppClientID];
    if (v11)
    {
      v12 = [(CWFWiFiNetworkSharingManager *)v5 askToShareFromAppClientID];
      v13 = [v4 isEqual:v12];

      if (v13)
      {
        v14 = [(CWFWiFiNetworkSharingManager *)v5 askToShareFromAppClientID];
        [(CWFWiFiNetworkSharingManager *)v5 cancelAskToShareFromAppRequestForClientID:v14];
      }
    }
  }

  objc_sync_exit(v5);

  v15 = *MEMORY[0x1E69E9840];
}

- (id)__deviceForClientID:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v5 = [(CWFWiFiNetworkSharingManager *)self deviceAccessSession];
  v6 = [v5 availableDevices];

  v7 = [v6 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (!v7)
  {
    goto LABEL_19;
  }

  v8 = v7;
  v9 = *v32;
  v28 = v4;
  do
  {
    v10 = 0;
    v29 = v8;
    do
    {
      if (*v32 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v31 + 1) + 8 * v10);
      v12 = [v4 accessoryID];
      v13 = [v11 identifier];
      v14 = v13;
      if (v12 == v13)
      {

LABEL_12:
        v23 = [v11 appAccessInfoMap];
        v24 = [v4 bundleID];
        v12 = [v23 objectForKeyedSubscript:v24];

        if ([v12 state] == 25)
        {
          v25 = v11;

          goto LABEL_20;
        }

LABEL_16:

        goto LABEL_17;
      }

      v15 = [v4 accessoryID];
      if (!v15)
      {
        goto LABEL_15;
      }

      v16 = v15;
      v17 = [v11 identifier];
      if (!v17)
      {

        v8 = v29;
LABEL_15:

        goto LABEL_16;
      }

      v18 = v17;
      [v4 accessoryID];
      v20 = v19 = v6;
      [v11 identifier];
      v22 = v21 = v9;
      v30 = [v20 isEqual:v22];

      v9 = v21;
      v6 = v19;
      v4 = v28;

      v8 = v29;
      if (v30)
      {
        goto LABEL_12;
      }

LABEL_17:
      ++v10;
    }

    while (v8 != v10);
    v8 = [v6 countByEnumeratingWithState:&v31 objects:v35 count:16];
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
    v2 = [MEMORY[0x1E695E000] standardUserDefaults];
    v3 = [v2 objectForKey:@"WiFiNetworkSharingForceForegroundAppState"];

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
    v2 = [MEMORY[0x1E695E000] standardUserDefaults];
    v3 = [v2 objectForKey:@"WiFiNetworkSharingForceAuthorizationLevel"];

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

- (BOOL)isClientIDAuthorizedForDeviceAccess:(id)a3
{
  v3 = [(CWFWiFiNetworkSharingManager *)self authorizationLevelForClientID:a3];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)isClientIDUsingSecureTransportForDeviceAccess:(id)a3
{
  v3 = [(CWFWiFiNetworkSharingManager *)self __deviceForClientID:a3];
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

- (BOOL)isClientIDAuthorizedForWiFiNetworkSharing:(id)a3
{
  v3 = [(CWFWiFiNetworkSharingManager *)self authorizationLevelForClientID:a3];
  v4 = [v3 unsignedIntegerValue];

  return v4 == 7 || v4 == 2;
}

- (id)__forceAccessoryDisplayName
{
  v9 = *MEMORY[0x1E69E9840];
  if (os_variant_has_internal_content())
  {
    v2 = [MEMORY[0x1E695E000] standardUserDefaults];
    v3 = [v2 objectForKey:@"WiFiNetworkSharingForceAccessoryDisplayName"];

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

- (id)authorizationLevelForClientID:(id)a3
{
  v4 = a3;
  v5 = [(CWFWiFiNetworkSharingManager *)self __forceAuthorizationLevel];
  if (!v5)
  {
    [(CWFWiFiNetworkSharingManager *)self __deviceForClientID:v4];
  }

  return v5;
}

- (void)cancelAuthorizationRequestForClientID:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
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
    v12 = [(CWFWiFiNetworkSharingManager *)v5 authorizationClientID];
    _os_log_send_and_compose_impl();
  }

  v9 = CWFErrorDescription(@"WiFiNetworkSharingError", 2uLL);
  v10 = CWFErrorWithDescription(@"WiFiNetworkSharingError", 2, v9);
  [(CWFWiFiNetworkSharingManager *)v5 __completeAuthorizationRequestWithError:v10 authLevel:0];

  objc_sync_exit(v5);
  v11 = *MEMORY[0x1E69E9840];
}

- (void)__presentAuthorizationProxCardForAccessoryName:(id)a3
{
  v4 = a3;
  v5 = [(CWFWiFiNetworkSharingManager *)self targetQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E0D2056C;
  v7[3] = &unk_1E86E6420;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)requestAuthorizationForClientID:(id)a3 completion:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(CWFWiFiNetworkSharingManager *)self authorizationClientID];

  if (!v8)
  {
    [(CWFWiFiNetworkSharingManager *)self setAuthorizationClientID:v6];
    [(CWFWiFiNetworkSharingManager *)self setAuthorizationCompletion:v7];
    if ([(CWFWiFiNetworkSharingManager *)self isClientIDAuthorizedForDeviceAccess:v6])
    {
      if ([(CWFWiFiNetworkSharingManager *)self isClientIDUsingSecureTransportForDeviceAccess:v6])
      {
        v9 = [v6 bundleID];
        v10 = [(CWFWiFiNetworkSharingManager *)self __appForegroundStateHandlerForBundleID:v9];

        v11 = [(CWFWiFiNetworkSharingManager *)self __forceForegroundAppState];
        v12 = v11;
        if (v11)
        {
          if ([v11 BOOLValue])
          {
            goto LABEL_6;
          }
        }

        else if (v10)
        {
LABEL_6:
          if ([(CWFWiFiNetworkSharingManager *)self __shouldRateLimitAuthorizationRequestWithClientID:v6])
          {
            v25 = CWFErrorDescription(@"WiFiNetworkSharingError", 0xBuLL);
            v26 = 11;
          }

          else
          {
            v13 = [(CWFWiFiNetworkSharingManager *)self __forceAccessoryDisplayName];
            if (v13)
            {
              v14 = v13;
LABEL_13:
              [(CWFWiFiNetworkSharingManager *)self __updateRateLimitAuthorizationRequestTimestampCacheForClientID:v6];
              [(CWFWiFiNetworkSharingManager *)self __presentAuthorizationProxCardForAccessoryName:v14];
LABEL_14:

LABEL_15:
              goto LABEL_16;
            }

            v17 = [(CWFWiFiNetworkSharingManager *)self __deviceForClientID:v6];
            v14 = [v17 name];

            if (v14)
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

    v14 = CWFErrorWithDescription(@"WiFiNetworkSharingError", v32, v12);
    [(CWFWiFiNetworkSharingManager *)self __completeAuthorizationRequestWithError:v14 authLevel:0];
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

  if (v7)
  {
    v12 = CWFErrorDescription(@"WiFiNetworkSharingError", 0xBuLL);
    v30 = CWFErrorWithDescription(@"WiFiNetworkSharingError", 11, v12);
    v7[2](v7, v30, 0);

    goto LABEL_15;
  }

LABEL_16:

  v18 = *MEMORY[0x1E69E9840];
}

- (void)__completeAuthorizationRequestWithError:(id)a3 authLevel:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = [(CWFWiFiNetworkSharingManager *)v8 authorizationCompletion];
  if (v9)
  {
    v10 = [(CWFWiFiNetworkSharingManager *)v8 authorizationClientID];

    if (v10)
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
        [(CWFWiFiNetworkSharingManager *)v8 authorizationClientID];
        v23 = v22 = 138543874;
        v24 = 2114;
        v25 = v6;
        v26 = 2114;
        v27 = v7;
        _os_log_send_and_compose_impl();
      }

      v14 = [(CWFWiFiNetworkSharingManager *)v8 authorizationCompletion];
      v15 = [(CWFWiFiNetworkSharingManager *)v8 targetQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1E0D21200;
      block[3] = &unk_1E86E8010;
      v16 = v14;
      v21 = v16;
      v19 = v6;
      v20 = v7;
      dispatch_async(v15, block);

      [(CWFWiFiNetworkSharingManager *)v8 setAuthorizationCompletion:0];
      [(CWFWiFiNetworkSharingManager *)v8 setAuthorizationClientID:0];
    }
  }

  objc_sync_exit(v8);

  v17 = *MEMORY[0x1E69E9840];
}

- (void)__updateRateLimitAuthorizationRequestTimestampCacheForClientID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v9 = v4;
    v5 = [(CWFWiFiNetworkSharingManager *)self authorizationRequestTimestampCache];
    v6 = [v5 objectForKeyedSubscript:v9];

    if (!v6)
    {
      v6 = [MEMORY[0x1E695DF70] array];
      v7 = [(CWFWiFiNetworkSharingManager *)self authorizationRequestTimestampCache];
      [v7 setObject:v6 forKeyedSubscript:v9];
    }

    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW)];
    [v6 addObject:v8];

    if ([v6 count] >= 4)
    {
      [v6 removeObjectAtIndex:0];
    }

    v4 = v9;
  }
}

- (BOOL)__shouldRateLimitAuthorizationRequestWithClientID:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
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
    v11 = [v10 objectForKeyedSubscript:v4];

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
        v23 = v4;
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

- (int64_t)askToShareStatusForClientID:(id)a3 networkID:(id)a4 timestamp:(id *)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [(CWFWiFiNetworkSharingManager *)self store];
  v10 = [v9 networkMetadataForClientID:v8 networkID:v7];

  v11 = [v10 askToShareStatus];
  return v11;
}

- (void)setAskToShareStatus:(int64_t)a3 clientID:(id)a4 networkID:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(CWFWiFiNetworkSharingManager *)self askToShareFromAppClientID];
  v11 = v10;
  if (v10 == v8)
  {

LABEL_8:
    [(CWFWiFiNetworkSharingManager *)self __completeAskToShareFromAppWithError:0 status:a3];
    goto LABEL_9;
  }

  if (!v8 || ([(CWFWiFiNetworkSharingManager *)self askToShareFromAppClientID], (v12 = objc_claimAutoreleasedReturnValue()) == 0))
  {

    goto LABEL_9;
  }

  v13 = v12;
  v14 = [(CWFWiFiNetworkSharingManager *)self askToShareFromAppClientID];
  v15 = [v8 isEqual:v14];

  if (v15)
  {
    goto LABEL_8;
  }

LABEL_9:
  v16 = [(CWFWiFiNetworkSharingManager *)self askToShareFromAppexClientID];
  v17 = v16;
  if (v16 == v8)
  {

LABEL_16:
    [(CWFWiFiNetworkSharingManager *)self __completeAskToShareFromAppexWithError:0 status:a3];
    goto LABEL_17;
  }

  if (!v8 || ([(CWFWiFiNetworkSharingManager *)self askToShareFromAppexClientID], (v18 = objc_claimAutoreleasedReturnValue()) == 0))
  {

    goto LABEL_17;
  }

  v19 = v18;
  v20 = [(CWFWiFiNetworkSharingManager *)self askToShareFromAppexClientID];
  v21 = [v8 isEqual:v20];

  if (v21)
  {
    goto LABEL_16;
  }

LABEL_17:
  v22 = [(CWFWiFiNetworkSharingManager *)self store];
  v23 = [v22 networkMetadataForClientID:v8 networkID:v9];

  if ([(CWFWiFiNetworkSharingNetworkMetadata *)v23 askToShareStatus]!= a3)
  {
    v24 = [(CWFWiFiNetworkSharingManager *)self associatedNetwork];
    v25 = [v24 matchingKnownNetworkProfile];

    v26 = [(CWFWiFiNetworkSharingManager *)self authorizationLevelForClientID:v8];
    v27 = [v26 unsignedIntegerValue];

    v28 = [(CWFWiFiNetworkSharingManager *)self __canAutomaticallyShareKnownNetworkWithMetadata:v23 authorizationStatus:v27];
    if (!v23)
    {
      v23 = objc_alloc_init(CWFWiFiNetworkSharingNetworkMetadata);
    }

    [(CWFWiFiNetworkSharingNetworkMetadata *)v23 setAskToShareStatus:a3];
    v29 = [MEMORY[0x1E695DF00] date];
    [(CWFWiFiNetworkSharingNetworkMetadata *)v23 setAskToShareStatusUpdatedTimestamp:v29];

    v30 = [(CWFWiFiNetworkSharingManager *)self __canAutomaticallyShareKnownNetworkWithMetadata:v23 authorizationStatus:v27];
    v52 = v9;
    if (!v28 && v30)
    {
      v31 = [v25 wifiNetworkSharingNetworkID];
      v32 = v31;
      if (v31 == v9)
      {

        goto LABEL_29;
      }

      if (v9 && ([v25 wifiNetworkSharingNetworkID], (v33 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v34 = v33;
        v50 = [v25 wifiNetworkSharingNetworkID];
        v51 = [v52 isEqual:v50];

        v9 = v52;
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
    v35 = [(CWFWiFiNetworkSharingManager *)self store];
    [v35 setNetworkMetadata:v23 clientID:v8 networkID:v9];

    [(CWFWiFiNetworkSharingManager *)self targetQueue];
    v37 = v36 = v25;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0D21AC0;
    block[3] = &unk_1E86E6B18;
    block[4] = self;
    v38 = v8;
    v54 = v38;
    v39 = v9;
    v55 = v39;
    v56 = a3;
    dispatch_async(v37, block);

    v40 = v36;
    v41 = v28 ^ v30;
    v42 = [v36 wifiNetworkSharingNetworkID];
    v43 = v42;
    if (v42 == v39)
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
      v46 = [v36 wifiNetworkSharingNetworkID];
      v47 = [v39 isEqual:v46];

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
    v49 = [(CWFWiFiNetworkSharingManager *)self store];
    [v49 incrementNetworksUpdateCounterForClientID:v38];

LABEL_41:
    [(CWFWiFiNetworkSharingManager *)self __sendNetworkListUpdateEventForClientID:v38];
LABEL_42:

    v9 = v52;
  }
}

- (BOOL)__appForegroundStateHandlerForBundleID:(id)a3
{
  v4 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 0;
  v5 = dispatch_block_create(0, &unk_1F5B8C0E0);
  v6 = [(CWFWiFiNetworkSharingManager *)self appForegroundStateHandler];
  if (v6)
  {
    v7 = [(CWFWiFiNetworkSharingManager *)self targetQueue];
    v8 = qos_class_self();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0D21D00;
    block[3] = &unk_1E86E9668;
    v14 = v6;
    v13 = v4;
    v16 = &v20;
    v17 = v18;
    v15 = v5;
    v9 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v8, 0, block);
    dispatch_async(v7, v9);
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
  v4 = [(CWFWiFiNetworkSharingManager *)self knownNetworksHandler];
  if (v4)
  {
    v5 = [(CWFWiFiNetworkSharingManager *)self targetQueue];
    v6 = qos_class_self();
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1E0D21FF4;
    v10[3] = &unk_1E86E96B8;
    v11 = v4;
    v13 = &v17;
    v14 = v15;
    v12 = v3;
    v7 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v6, 0, v10);
    dispatch_async(v5, v7);
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
  v4 = [(CWFWiFiNetworkSharingManager *)self hiddenNetworkSSIDListHandler];
  if (v4)
  {
    v5 = [(CWFWiFiNetworkSharingManager *)self targetQueue];
    v6 = qos_class_self();
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1E0D2232C;
    v10[3] = &unk_1E86E96B8;
    v11 = v4;
    v13 = &v17;
    v14 = v15;
    v12 = v3;
    v7 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v6, 0, v10);
    dispatch_async(v5, v7);
  }

  dispatch_block_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  v8 = v18[5];

  _Block_object_dispose(v15, 8);
  _Block_object_dispose(&v17, 8);

  return v8;
}

- (id)__passwordForKnownNetwork:(id)a3 error:(id *)a4
{
  v6 = a3;
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
  v8 = [(CWFWiFiNetworkSharingManager *)self passwordHandler];
  if (v8)
  {
    v9 = [(CWFWiFiNetworkSharingManager *)self targetQueue];
    v10 = qos_class_self();
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1E0D22704;
    v15[3] = &unk_1E86E9730;
    v17 = v8;
    v16 = v6;
    v19 = &v30;
    v20 = &v24;
    v21 = v22;
    v18 = v7;
    v11 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v10, 0, v15);
    dispatch_async(v9, v11);
  }

  dispatch_block_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  if (a4)
  {
    v12 = v25[5];
    if (v12)
    {
      *a4 = v12;
    }
  }

  v13 = v31[5];

  _Block_object_dispose(v22, 8);
  _Block_object_dispose(&v24, 8);

  _Block_object_dispose(&v30, 8);

  return v13;
}

- (id)__captivePortalCredentialsForKnownNetwork:(id)a3 error:(id *)a4
{
  v6 = a3;
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
  v8 = [(CWFWiFiNetworkSharingManager *)self captivePortalCredentialsHandler];
  if (v8)
  {
    v9 = [(CWFWiFiNetworkSharingManager *)self targetQueue];
    v10 = qos_class_self();
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1E0D22B0C;
    v15[3] = &unk_1E86E9730;
    v17 = v8;
    v16 = v6;
    v19 = &v30;
    v20 = &v24;
    v21 = v22;
    v18 = v7;
    v11 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v10, 0, v15);
    dispatch_async(v9, v11);
  }

  dispatch_block_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  if (a4)
  {
    v12 = v25[5];
    if (v12)
    {
      *a4 = v12;
    }
  }

  v13 = v31[5];

  _Block_object_dispose(v22, 8);
  _Block_object_dispose(&v24, 8);

  _Block_object_dispose(&v30, 8);

  return v13;
}

@end