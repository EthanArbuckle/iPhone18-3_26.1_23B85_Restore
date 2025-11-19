@interface CWFXPCConnection
+ (int)locationAuthorizationStatusForWiFiNetworking;
- (BOOL)__allowAlreadyPendingRequest:(id)a3;
- (BOOL)__allowXPCRequestWithType:(int64_t)a3 error:(id *)a4;
- (BOOL)__hasPendingRequestWithType:(int64_t)a3;
- (BOOL)__isUserPrivacySensitiveRequestType:(int64_t)a3;
- (BOOL)__isVisibleProcess:(id)a3;
- (BOOL)hasAppSandboxEntitlement;
- (BOOL)isCodesignedByApple;
- (BOOL)isContainingAppCodesignedByApple;
- (BOOL)isContainingAppVisible;
- (BOOL)isLocal;
- (BOOL)isVisible;
- (BOOL)isWiFiNetworkSharingApp;
- (BOOL)isWiFiNetworkSharingAppExtension;
- (BOOL)needsContainingAppProcessState;
- (BOOL)needsProcessState;
- (CWFXPCConnection)init;
- (CWFXPCConnection)initWithServiceType:(int64_t)a3 XPCConnection:(id)a4 bootArgs:(id)a5;
- (CWFXPCProxyConnection)localXPCProxyConnection;
- (LSBundleRecord)bundleRecord;
- (NSString)effectiveBundleID;
- (RBSProcessState)containingAppProcessState;
- (RBSProcessState)processState;
- (id)__addXPCRequestWithType:(int64_t)a3 info:(id)a4 requestParams:(id)a5 parentRequestUUID:(id)a6 isParentRequest:(BOOL)a7 reply:(id)a8;
- (id)__bundleIDFromAuditToken:(id *)a3;
- (id)__codesignIDFromAuditToken:(id *)a3;
- (id)__codesignIDFromBundleRecord:(id)a3;
- (id)__filterNetworkProfilesForPrivacy:(id)a3;
- (id)__filterScanResultsForPrivacy:(id)a3;
- (id)__locationBundlePathOverride;
- (id)__matchedScanResultsWithKnownNetworkProfiles:(id)a3 scanResults:(id)a4;
- (id)__passpointScanResults:(id)a3;
- (id)__privacyFilteredNetworkProfile:(id)a3 allowSSID:(BOOL)a4 allowBSSID:(BOOL)a5;
- (id)__shouldPerformPreAssociation6GHzFollowupScan:(id)a3;
- (id)__wifiNetworkSharingClientIDWithRequestParameters:(id)a3;
- (id)description;
- (id)registeredActivities;
- (id)registeredEventIDs;
- (id)remoteObjectProxy;
- (id)remoteObjectProxyWithErrorHandler:(id)a3;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)a3;
- (id)valueForEntitlement:(id)a3;
- (int)locationAuthorizationStatus;
- (unint64_t)__defaultTimeoutForRequestType:(int64_t)a3;
- (void)__addXPCGetRequestWithType:(int64_t)a3 requestParams:(id)a4 reply:(id)a5;
- (void)__coalesceAndCacheEvent:(id)a3;
- (void)__didInvalidate;
- (void)__loadEntitlementsCache;
- (void)__matchKnownNetworksWithScanResults:(id)a3 parentXPCRequest:(id)a4;
- (void)__perform6GHzFollowupScanAndAssociateWithParameters:(id)a3 BSS:(id)a4 parentXPCRequest:(id)a5;
- (void)__performANQPWithParameters:(id)a3 parentXPCRequest:(id)a4;
- (void)__performFollowupANQPForPasspointScanResults:(id)a3 combinedScanResults:(id)a4 parameters:(id)a5 parentXPCRequest:(id)a6;
- (void)__performScanWithParameters:(id)a3 parentXPCRequest:(id)a4;
- (void)__sortScanResultsByAutoJoinPreference:(id)a3 withParameters:(id)a4 parentXPCRequest:(id)a5;
- (void)__updateXPCTransactionCount;
- (void)acknowledgeWiFiNetworkSharingNetworkListUpdate:(id)a3 requestParams:(id)a4 reply:(id)a5;
- (void)activate;
- (void)addKnownBSS:(id)a3 knownNetworkProfile:(id)a4 requestParams:(id)a5 reply:(id)a6;
- (void)addKnownNetworkProfile:(id)a3 requestParams:(id)a4 reply:(id)a5;
- (void)allowBrokenBackhaulPersonalHotspotFallbackForNetwork:(id)a3 reply:(id)a4;
- (void)askToShareWiFiNetworkSharingNetworkFromAppWithRequestParams:(id)a3 reply:(id)a4;
- (void)askToShareWiFiNetworkSharingNetworkFromAppexWithRequestParams:(id)a3 reply:(id)a4;
- (void)associateWithParameters:(id)a3 requestParams:(id)a4 reply:(id)a5;
- (void)beginActivity:(id)a3 requestParams:(id)a4 reply:(id)a5;
- (void)cancelRequestsWithUUID:(id)a3 reply:(id)a4;
- (void)checkinWithRequestParams:(id)a3 reply:(id)a4;
- (void)clearAutoJoinDenyListForNetwork:(id)a3 reason:(unint64_t)a4 requestParams:(id)a5 reply:(id)a6;
- (void)confirmBrokenBackhaulUsingTimeout:(unint64_t)a3 count:(unint64_t)a4 requestParams:(id)a5 reply:(id)a6;
- (void)disassociateWithReason:(int64_t)a3 requestParams:(id)a4 reply:(id)a5;
- (void)dumpLogs:(id)a3 reply:(id)a4;
- (void)dumpLogs:(id)a3 requestParams:(id)a4 reply:(id)a5;
- (void)endActivityWithUUID:(id)a3 requestParams:(id)a4 reply:(id)a5;
- (void)endAllActivitiesWithRequestParams:(id)a3 reply:(id)a4;
- (void)forgetCloudNetworkProfile:(id)a3 reply:(id)a4;
- (void)getCloudNetworksWithRequestParams:(id)a3 reply:(id)a4;
- (void)getNearbyRecommendedNetworksWithRequestParams:(id)a3 reply:(id)a4;
- (void)getRecommendedKnownNetworksWithRequestParams:(id)a3 reply:(id)a4;
- (void)invalidate;
- (void)nearbyConfirmBrokenBackhaulUsingTimeout:(unint64_t)a3 count:(unint64_t)a4 network:(id)a5 minimumCacheTimestamp:(unint64_t)a6 reply:(id)a7;
- (void)performANQPWithParameters:(id)a3 requestParams:(id)a4 reply:(id)a5;
- (void)performAutoJoinWithParameters:(id)a3 requestParams:(id)a4 reply:(id)a5;
- (void)performNearbyDeviceDiscovery:(id)a3 requestParams:(id)a4 reply:(id)a5;
- (void)performRangingWithPeerList:(id)a3 timeout:(unint64_t)a4 requestParams:(id)a5 reply:(id)a6;
- (void)performScanWithParameters:(id)a3 requestParams:(id)a4 reply:(id)a5;
- (void)performSensingWithParameters:(id)a3 requestParams:(id)a4 reply:(id)a5;
- (void)performWiFiNetworkSharingAccessoryScanWithReply:(id)a3;
- (void)presentWiFiNetworkSharingAskToShareProxCardForClientID:(id)a3 accessoryName:(id)a4 reply:(id)a5;
- (void)presentWiFiNetworkSharingAskToShareUserNotificationForClientID:(id)a3 network:(id)a4 accessoryName:(id)a5 reply:(id)a6;
- (void)presentWiFiNetworkSharingAuthorizationProxCardForClientID:(id)a3 accessoryName:(id)a4 reply:(id)a5;
- (void)queryBackgroundScanCacheWithRequestParams:(id)a3 reply:(id)a4;
- (void)queryBeaconCacheWithRequestParams:(id)a3 reply:(id)a4;
- (void)queryCaptivePortalCredentialsForKnownNetworkProfile:(id)a3 reply:(id)a4;
- (void)queryCaptivePortalCredentialsForKnownNetworkProfile:(id)a3 requestParams:(id)a4 reply:(id)a5;
- (void)queryCloudNetworksAndReply:(id)a3;
- (void)queryCurrentKnownNetworkProfileWithRequestParams:(id)a3 reply:(id)a4;
- (void)queryCurrentScanResultWithRequestParams:(id)a3 reply:(id)a4;
- (void)queryIsQuickProbeRequiredForNetworkProfile:(id)a3 requestParams:(id)a4 reply:(id)a5;
- (void)queryKnownNetworkInfoForLocalNetworkPromptWithOptions:(id)a3 requestParams:(id)a4 reply:(id)a5;
- (void)queryKnownNetworkProfileMatchingNetworkProfile:(id)a3 requestParams:(id)a4 reply:(id)a5;
- (void)queryKnownNetworkProfileMatchingScanResult:(id)a3 requestParams:(id)a4 reply:(id)a5;
- (void)queryKnownNetworkProfilesWithProperties:(id)a3 requestParams:(id)a4 reply:(id)a5;
- (void)queryKnownNetworksInSameLanAs:(id)a3 requestParams:(id)a4 reply:(id)a5;
- (void)queryKnownNetworksWithNetworkSignature:(id)a3 requestParams:(id)a4 reply:(id)a5;
- (void)queryNearbyRecommendedNetworksAndReply:(id)a3;
- (void)queryNetworkManagedByMDM:(id)a3 requestParams:(id)a4 reply:(id)a5;
- (void)queryNetworkOfInterestHomeStateForKnownNetworkProfile:(id)a3 requestParams:(id)a4 reply:(id)a5;
- (void)queryNetworkOfInterestWorkStateForKnownNetworkProfile:(id)a3 requestParams:(id)a4 reply:(id)a5;
- (void)queryNetworkSignatureForNetwork:(id)a3 isBSSID:(BOOL)a4 requestParams:(id)a5 reply:(id)a6;
- (void)queryPasswordForKnownNetworkProfile:(id)a3 requestParams:(id)a4 reply:(id)a5;
- (void)queryPrivateMACAddressForNetworkProfile:(id)a3 requestParams:(id)a4 reply:(id)a5;
- (void)queryPrivateMACAddressModeForNetworkProfile:(id)a3 requestParams:(id)a4 reply:(id)a5;
- (void)queryPrivateMACAddressModeSystemSettingWithRequestParams:(id)a3 reply:(id)a4;
- (void)querySupportedChannelsWithCountryCode:(id)a3 requestParams:(id)a4 reply:(id)a5;
- (void)rememberCloudNetworkProfile:(id)a3 reply:(id)a4;
- (void)removeKnownBSS:(id)a3 knownNetworkProfile:(id)a4 requestParams:(id)a5 reply:(id)a6;
- (void)removeKnownNetworkProfile:(id)a3 reason:(int64_t)a4 requestParams:(id)a5 reply:(id)a6;
- (void)requestWiFiNetworkSharingAuthorizationWithRequestParams:(id)a3 reply:(id)a4;
- (void)resetAutoJoinStatisticsWithRequestParams:(id)a3 reply:(id)a4;
- (void)resume;
- (void)sendXPCEvent:(id)a3 reply:(id)a4;
- (void)sendXPCEvent:(id)a3 requestParams:(id)a4 reply:(id)a5;
- (void)setAutoHotspotMode:(int64_t)a3 requestParams:(id)a4 reply:(id)a5;
- (void)setAutoJoinDenyListForNetwork:(id)a3 reason:(unint64_t)a4 requestParams:(id)a5 reply:(id)a6;
- (void)setBackgroundScanConfiguration:(id)a3 requestParams:(id)a4 reply:(id)a5;
- (void)setBlockedBands:(id)a3 requestParams:(id)a4 reply:(id)a5;
- (void)setCaptivePortalCredentials:(id)a3 knownNetworkProfile:(id)a4 reply:(id)a5;
- (void)setCaptivePortalCredentials:(id)a3 knownNetworkProfile:(id)a4 requestParams:(id)a5 reply:(id)a6;
- (void)setChannel:(id)a3 requestParams:(id)a4 reply:(id)a5;
- (void)setCompanionCountryCode:(id)a3 requestParams:(id)a4 reply:(id)a5;
- (void)setContainingAppProcessState:(id)a3;
- (void)setLQMConfiguration:(id)a3 requestParams:(id)a4 reply:(id)a5;
- (void)setPassword:(id)a3 knownNetworkProfile:(id)a4 requestParams:(id)a5 reply:(id)a6;
- (void)setPrivateMACAddressMode:(int64_t)a3 networkProfile:(id)a4 requestParams:(id)a5 reply:(id)a6;
- (void)setPrivateMACAddressModeSystemSetting:(int64_t)a3 requestParams:(id)a4 reply:(id)a5;
- (void)setProcessState:(id)a3;
- (void)setRangingIdentifier:(id)a3 requestParams:(id)a4 reply:(id)a5;
- (void)setThermalIndex:(int64_t)a3 requestParams:(id)a4 reply:(id)a5;
- (void)setUCMExtProfile:(id)a3 requestParams:(id)a4 error:(id)a5;
- (void)setUserSettings:(id)a3 properties:(id)a4 requestParams:(id)a5 reply:(id)a6;
- (void)setWiFiNetworkSharingAskToShareStatus:(int64_t)a3 networkID:(id)a4 requestParams:(id)a5 reply:(id)a6;
- (void)startAWDLPeerAssistedDiscoveryWithParameters:(id)a3 requestParams:(id)a4 reply:(id)a5;
- (void)startHostAPModeWithConfiguration:(id)a3 requestParams:(id)a4 reply:(id)a5;
- (void)startMonitoringEvent:(id)a3 requestParams:(id)a4 reply:(id)a5;
- (void)stopAWDLPeerAssistedDiscoveryWithRequestParams:(id)a3 reply:(id)a4;
- (void)stopHostAPModeWithRequestParams:(id)a3 reply:(id)a4;
- (void)stopMonitoringAllEventsWithRequestParams:(id)a3 reply:(id)a4;
- (void)stopMonitoringEvent:(id)a3 requestParams:(id)a4 reply:(id)a5;
- (void)suspend;
- (void)updateKnownBSS:(id)a3 knownNetworkProfile:(id)a4 properties:(id)a5 OSSpecificKeys:(id)a6 requestParams:(id)a7 reply:(id)a8;
- (void)updateKnownNetworkProfile:(id)a3 properties:(id)a4 OSSpecificKeys:(id)a5 requestParams:(id)a6 reply:(id)a7;
- (void)wifiNetworkSharingAskToShareNetworkListWithRequestParams:(id)a3 reply:(id)a4;
- (void)wifiNetworkSharingAskToShareStatusForNetworkID:(id)a3 requestParams:(id)a4 reply:(id)a5;
- (void)wifiNetworkSharingAuthorizationLevelWithRequestParams:(id)a3 reply:(id)a4;
- (void)wifiNetworkSharingNetworkListWithRequestParams:(id)a3 reply:(id)a4;
@end

@implementation CWFXPCConnection

- (id)registeredActivities
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1E0BC2D04;
  v10 = sub_1E0BC61CC;
  v11 = 0;
  mutexQueue = self->_mutexQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E0BC128C;
  v5[3] = &unk_1E86E6038;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(mutexQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)remoteObjectProxy
{
  remoteXPCProxyConnection = self->_remoteXPCProxyConnection;
  if (!remoteXPCProxyConnection)
  {
    remoteXPCProxyConnection = self->_XPCConnection;
  }

  v4 = [remoteXPCProxyConnection remoteObjectProxy];

  return v4;
}

- (BOOL)isLocal
{
  v2 = [(CWFXPCConnection *)self remoteXPCProxyConnection];
  v3 = v2 != 0;

  return v3;
}

- (void)__updateXPCTransactionCount
{
  XPCTransaction = self->_XPCTransaction;
  if ([(NSMutableDictionary *)self->_mutablePendingRequestMap count]|| [(NSMutableSet *)self->_mutableEventIDs count]|| [(NSMutableArray *)self->_mutableActivities count]|| [(NSMutableArray *)self->_mutablePendingEventAcknowledgements count])
  {
    if (XPCTransaction)
    {
      return;
    }

    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.corewifi.xpc-transaction.%@", self->_processName];
    v4 = v8;
    [v8 UTF8String];
    v5 = os_transaction_create();
    v6 = self->_XPCTransaction;
    self->_XPCTransaction = v5;

    v7 = v8;
  }

  else
  {
    if (!XPCTransaction)
    {
      return;
    }

    v7 = self->_XPCTransaction;
    self->_XPCTransaction = 0;
  }
}

- (void)activate
{
  remoteXPCProxyConnection = self->_remoteXPCProxyConnection;
  if (remoteXPCProxyConnection)
  {
    [(CWFXPCProxyConnection *)remoteXPCProxyConnection activate];
  }

  XPCConnection = self->_XPCConnection;
  if (XPCConnection)
  {

    [(NSXPCConnection *)XPCConnection activate];
  }
}

- (BOOL)isCodesignedByApple
{
  v2 = self;
  objc_sync_enter(v2);
  codesignedByApple = v2->_codesignedByApple;
  if (!v2->_codesignedByApple)
  {
    v4 = [(CWFXPCConnection *)v2 XPCConnection];
    v5 = v4;
    if (v4)
    {
      [v4 auditToken];
    }

    v2->_codesignedByApple = 1;

    codesignedByApple = v2->_codesignedByApple;
  }

  v6 = codesignedByApple == 2;
  objc_sync_exit(v2);

  return v6;
}

- (BOOL)hasAppSandboxEntitlement
{
  v2 = [(CWFXPCConnection *)self valueForEntitlement:@"com.apple.security.app-sandbox"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (id)registeredEventIDs
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1E0BC2D04;
  v10 = sub_1E0BC61CC;
  v11 = 0;
  mutexQueue = self->_mutexQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E0BCAA70;
  v5[3] = &unk_1E86E6038;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(mutexQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)__didInvalidate
{
  v41 = *MEMORY[0x1E69E9840];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v3 = [(CWFXPCConnection *)self registeredEventIDs];
  v4 = [v3 countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v32;
    obj = v3;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v32 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v31 + 1) + 8 * i);
        v9 = objc_alloc_init(CWFXPCRequest);
        -[CWFXPCRequest setType:](v9, "setType:", sub_1E0BC90A8([v8 type]));
        v38[0] = @"EventID";
        v38[1] = @"Remove";
        v39[0] = v8;
        v39[1] = MEMORY[0x1E695E118];
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:2];
        [(CWFXPCRequest *)v9 setInfo:v10];

        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = sub_1E0BCBB88;
        v30[3] = &unk_1E86E6988;
        v30[4] = self;
        v30[5] = v8;
        [(CWFXPCRequest *)v9 setResponse:v30];
        v11 = [(CWFXPCConnection *)self delegate];
        [v11 XPCConnection:self receivedXPCRequest:v9];
      }

      v5 = [obj countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v5);

    v3 = [(CWFXPCConnection *)self delegate];
    [v3 XPCConnection:self updatedRegisteredEventIDs:0];
  }

  v29 = 0u;
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  obja = [(CWFXPCConnection *)self registeredActivities];
  v12 = [obja countByEnumeratingWithState:&v26 objects:v37 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v27;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(obja);
        }

        v16 = *(*(&v26 + 1) + 8 * j);
        v17 = objc_alloc_init(CWFXPCRequest);
        -[CWFXPCRequest setType:](v17, "setType:", sub_1E0BD630C([v16 type]));
        v35[0] = @"EventID";
        v35[1] = @"Remove";
        v36[0] = v16;
        v36[1] = MEMORY[0x1E695E118];
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:2];
        [(CWFXPCRequest *)v17 setInfo:v18];

        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = sub_1E0C32FF0;
        v25[3] = &unk_1E86E6988;
        v25[4] = self;
        v25[5] = v16;
        [(CWFXPCRequest *)v17 setResponse:v25];
        v19 = [(CWFXPCConnection *)self delegate];
        [v19 XPCConnection:self receivedXPCRequest:v17];
      }

      v13 = [obja countByEnumeratingWithState:&v26 objects:v37 count:16];
    }

    while (v13);
  }

  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0BCBCB4;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  dispatch_async(mutexQueue, block);
  v21 = *MEMORY[0x1E69E9840];
}

- (BOOL)isWiFiNetworkSharingAppExtension
{
  if (![(CWFXPCConnection *)self isAppExtension])
  {
    return 0;
  }

  v3 = [(CWFXPCConnection *)self valueForEntitlement:0x1F5B9A0C0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 containsObject:0x1F5B9A0E0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isWiFiNetworkSharingApp
{
  if ([(CWFXPCConnection *)self isAppExtension])
  {
    return 0;
  }

  v4 = [(CWFXPCConnection *)self valueForEntitlement:0x1F5B9A0C0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v4 containsObject:0x1F5B9A0E0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isContainingAppCodesignedByApple
{
  v2 = self;
  objc_sync_enter(v2);
  containingAppCodesignedByApple = v2->_containingAppCodesignedByApple;
  if (!v2->_containingAppCodesignedByApple)
  {
    v4 = [(CWFXPCConnection *)v2 containingAppProcessState];
    v5 = [v4 process];
    v6 = v5;
    if (v5)
    {
      [v5 auditToken];
    }

    v2->_containingAppCodesignedByApple = 1;

    containingAppCodesignedByApple = v2->_containingAppCodesignedByApple;
  }

  v7 = containingAppCodesignedByApple == 2;
  objc_sync_exit(v2);

  return v7;
}

- (id)__codesignIDFromAuditToken:(id *)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = *&a3->var0[4];
  *v18 = *a3->var0;
  *&v18[16] = v3;
  v4 = sub_1E0BC8664(v18);
  if (!v4)
  {
    goto LABEL_14;
  }

  staticCode = 0;
  v5 = SecStaticCodeCreateWithPath([MEMORY[0x1E695DFF8] fileURLWithPath:v4], 0, &staticCode);
  if (staticCode)
  {
    information = 0;
    v6 = SecCodeCopySigningInformation(staticCode, 2u, &information);
    if (information)
    {
      v7 = [(__CFDictionary *)information objectForKey:*MEMORY[0x1E697B070]];
      CFRelease(information);
    }

    else
    {
      v7 = SecCopyErrorMessageString(v6, 0);
      v10 = CWFGetOSLog();
      if (v10)
      {
        v11 = CWFGetOSLog();
      }

      else
      {
        v11 = MEMORY[0x1E69E9C10];
        v13 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *v18 = 138543874;
        *&v18[4] = v4;
        *&v18[12] = 1024;
        *&v18[14] = v6;
        *&v18[18] = 2114;
        *&v18[20] = v7;
        _os_log_send_and_compose_impl();
      }

      if (v7)
      {
        CFRelease(v7);
        v7 = 0;
      }
    }

    CFRelease(staticCode);
    goto LABEL_21;
  }

  v7 = SecCopyErrorMessageString(v5, 0);
  v8 = CWFGetOSLog();
  if (v8)
  {
    v9 = CWFGetOSLog();
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v12 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *v18 = 138543874;
    *&v18[4] = v4;
    *&v18[12] = 1024;
    *&v18[14] = v5;
    *&v18[18] = 2114;
    *&v18[20] = v7;
    _os_log_send_and_compose_impl();
  }

  if (v7)
  {
    CFRelease(v7);
LABEL_14:
    v7 = 0;
  }

LABEL_21:

  v14 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)__codesignIDFromBundleRecord:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [a3 executableURL];
  v4 = v3;
  if (!v3)
  {
    goto LABEL_14;
  }

  staticCode = 0;
  v5 = SecStaticCodeCreateWithPath(v3, 0, &staticCode);
  if (staticCode)
  {
    information = 0;
    v6 = SecCodeCopySigningInformation(staticCode, 2u, &information);
    if (information)
    {
      v7 = [(__CFDictionary *)information objectForKey:*MEMORY[0x1E697B070]];
      CFRelease(information);
    }

    else
    {
      v7 = SecCopyErrorMessageString(v6, 0);
      v10 = CWFGetOSLog();
      if (v10)
      {
        v11 = CWFGetOSLog();
      }

      else
      {
        v11 = MEMORY[0x1E69E9C10];
        v14 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v15 = [(__CFURL *)v4 path];
        v20 = 138543874;
        v21 = v15;
        v22 = 1024;
        v23 = v6;
        v24 = 2114;
        v25 = v7;
        _os_log_send_and_compose_impl();
      }

      if (v7)
      {
        CFRelease(v7);
        v7 = 0;
      }
    }

    CFRelease(staticCode);
    goto LABEL_21;
  }

  v7 = SecCopyErrorMessageString(v5, 0);
  v8 = CWFGetOSLog();
  if (v8)
  {
    v9 = CWFGetOSLog();
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v12 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v13 = [(__CFURL *)v4 path];
    v20 = 138543874;
    v21 = v13;
    v22 = 1024;
    v23 = v5;
    v24 = 2114;
    v25 = v7;
    _os_log_send_and_compose_impl();
  }

  if (v7)
  {
    CFRelease(v7);
LABEL_14:
    v7 = 0;
  }

LABEL_21:

  v16 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)__bundleIDFromAuditToken:(id *)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v18 = 0;
  if (!sub_1E0BC8594())
  {
    goto LABEL_6;
  }

  v4 = *&a3->var0[4];
  v26 = *a3->var0;
  v27 = v4;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v5 = off_1ECE81AC8;
  v25 = off_1ECE81AC8;
  if (!off_1ECE81AC8)
  {
    *&v19 = MEMORY[0x1E69E9820];
    *(&v19 + 1) = 3221225472;
    *&v20 = sub_1E0C4B768;
    *(&v20 + 1) = &unk_1E86E5600;
    v21 = &v22;
    sub_1E0C4B768(&v19);
    v5 = v23[3];
  }

  _Block_object_dispose(&v22, 8);
  if (!v5)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"Boolean soft_CPCopyBundleIdentifierAndTeamFromAuditToken(audit_token_t, CFStringRef *, CFStringRef *)"}];
    [v16 handleFailureInFunction:v17 file:@"CWFXPCConnection.m" lineNumber:48 description:{@"%s", dlerror()}];

    __break(1u);
  }

  v19 = v26;
  v20 = v27;
  v5(&v19, 0, &v18);
  v6 = v18;
  if (!v18)
  {
LABEL_6:
    v7 = *&a3->var0[4];
    v19 = *a3->var0;
    v20 = v7;
    v8 = sub_1E0BC8664(&v19);
    if (v8 && (v9 = CFURLCreateWithFileSystemPath(*MEMORY[0x1E695E480], v8, kCFURLPOSIXPathStyle, 0), (v10 = v9) != 0))
    {
      v11 = CFBundleCopyInfoDictionaryForURL(v9);
      v12 = v11;
      if (v11)
      {
        Value = CFDictionaryGetValue(v11, *MEMORY[0x1E695E4F0]);
        v18 = Value;
        if (Value)
        {
          CFRetain(Value);
          v6 = v18;
        }

        else
        {
          v6 = 0;
        }

        CFRelease(v12);
      }

      else
      {
        v6 = 0;
      }

      CFRelease(v10);
    }

    else
    {
      v6 = 0;
    }
  }

  v14 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)__loadEntitlementsCache
{
  v27 = *MEMORY[0x1E69E9840];
  sub_1E0BC1AB4(self->_serviceType);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v24 = 0u;
  v16 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v16)
  {
    v15 = *v22;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v4 = sub_1E0BC2974(self->_serviceType, [*(*(&v21 + 1) + 8 * i) integerValue], 0);
        v5 = v4;
        if (v4)
        {
          v19 = 0u;
          v20 = 0u;
          v17 = 0u;
          v18 = 0u;
          v6 = [v4 countByEnumeratingWithState:&v17 objects:v25 count:16];
          if (v6)
          {
            v7 = v6;
            v8 = *v18;
            do
            {
              for (j = 0; j != v7; ++j)
              {
                if (*v18 != v8)
                {
                  objc_enumerationMutation(v5);
                }

                v10 = *(*(&v17 + 1) + 8 * j);
                v11 = [(NSXPCConnection *)self->_XPCConnection valueForEntitlement:v10];
                if (v11)
                {
                  [(NSMutableDictionary *)self->_entitlementsCache setObject:v11 forKeyedSubscript:v10];
                }

                else
                {
                  v12 = [MEMORY[0x1E695DFB0] null];
                  [(NSMutableDictionary *)self->_entitlementsCache setObject:v12 forKeyedSubscript:v10];
                }
              }

              v7 = [v5 countByEnumeratingWithState:&v17 objects:v25 count:16];
            }

            while (v7);
          }
        }
      }

      v16 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v16);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (LSBundleRecord)bundleRecord
{
  v2 = MEMORY[0x1E6963620];
  XPCConnection = self->_XPCConnection;
  if (XPCConnection)
  {
    [(NSXPCConnection *)XPCConnection auditToken];
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  v4 = [v2 bundleRecordForAuditToken:v6 error:0];

  return v4;
}

- (CWFXPCConnection)initWithServiceType:(int64_t)a3 XPCConnection:(id)a4 bootArgs:(id)a5
{
  v119 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  v110.receiver = self;
  v110.super_class = CWFXPCConnection;
  v11 = [(CWFXPCConnection *)&v110 init];
  v12 = v11;
  if ((a3 - 12) < 0xFFFFFFFFFFFFFFF5 || !v11)
  {
    goto LABEL_56;
  }

  v11->_serviceType = a3;
  if (!v9)
  {
    v16 = [MEMORY[0x1E696AE30] processInfo];
    v17 = [v16 processName];
    processName = v12->_processName;
    v12->_processName = v17;

    if (v12->_processName)
    {
      goto LABEL_31;
    }

LABEL_56:

    v12 = 0;
    goto LABEL_54;
  }

  objc_storeStrong(&v11->_XPCConnection, a4);
  objc_initWeak(location, v12);
  v108[0] = MEMORY[0x1E69E9820];
  v108[1] = 3221225472;
  v108[2] = sub_1E0C32968;
  v108[3] = &unk_1E86E6190;
  objc_copyWeak(&v109, location);
  [(NSXPCConnection *)v12->_XPCConnection setInterruptionHandler:v108];
  v106[0] = MEMORY[0x1E69E9820];
  v106[1] = 3221225472;
  v106[2] = sub_1E0C32B0C;
  v106[3] = &unk_1E86E6190;
  objc_copyWeak(&v107, location);
  [(NSXPCConnection *)v12->_XPCConnection setInvalidationHandler:v106];
  objc_destroyWeak(&v107);
  objc_destroyWeak(&v109);
  objc_destroyWeak(location);
  v13 = [(CWFXPCConnection *)v12 bundleRecord];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = CWFGetOSLog();
    if (v14)
    {
      v15 = CWFGetOSLog();
    }

    else
    {
      v15 = MEMORY[0x1E69E9C10];
      v19 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v13 description];
      v21 = [v20 redactedForWiFi];
      *location = 136446978;
      *&location[4] = "[CWFXPCConnection initWithServiceType:XPCConnection:bootArgs:]";
      *&location[12] = 2082;
      *&location[14] = "CWFXPCConnection.m";
      *&location[22] = 1024;
      *&location[24] = 370;
      *&location[28] = 2114;
      *&location[30] = v21;
      LODWORD(v100) = 38;
      v99 = location;
      _os_log_send_and_compose_impl();
    }

    [(CWFXPCConnection *)v12 setIsAppExtension:1];
    v22 = [v13 containingBundleRecord];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [v22 bundleIdentifier];
      [(CWFXPCConnection *)v12 setContainingAppBundleID:v23];

      v24 = [v22 executableURL];
      v25 = [v24 path];
      v26 = [v25 lastPathComponent];
      [(CWFXPCConnection *)v12 setContainingAppProcessName:v26];

      v27 = [(CWFXPCConnection *)v12 __codesignIDFromBundleRecord:v22];
      [(CWFXPCConnection *)v12 setContainingAppCodesignID:v27];

      v28 = CWFGetOSLog();
      if (v28)
      {
        v29 = CWFGetOSLog();
      }

      else
      {
        v29 = MEMORY[0x1E69E9C10];
        v30 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v101 = [(CWFXPCConnection *)v12 containingAppBundleID];
        v31 = [(CWFXPCConnection *)v12 containingAppProcessName];
        v32 = [(CWFXPCConnection *)v12 containingAppCodesignID];
        v33 = [v22 description];
        v34 = [v33 redactedForWiFi];
        *location = 136447746;
        *&location[4] = "[CWFXPCConnection initWithServiceType:XPCConnection:bootArgs:]";
        *&location[12] = 2082;
        *&location[14] = "CWFXPCConnection.m";
        *&location[22] = 1024;
        *&location[24] = 381;
        *&location[28] = 2114;
        *&location[30] = v101;
        v113 = 2114;
        v114 = v31;
        v115 = 2114;
        v116 = v32;
        v117 = 2114;
        v118 = v34;
        LODWORD(v100) = 68;
        v99 = location;
        _os_log_send_and_compose_impl();
      }
    }
  }

  XPCConnection = v12->_XPCConnection;
  if (XPCConnection)
  {
    [(NSXPCConnection *)XPCConnection auditToken];
  }

  else
  {
    memset(location, 0, 32);
  }

  v36 = sub_1E0BC8664(location);
  v37 = [v36 lastPathComponent];
  v38 = v12->_processName;
  v12->_processName = v37;

  if (!v12->_processName)
  {

    goto LABEL_56;
  }

  v39 = v12->_XPCConnection;
  if (v39)
  {
    [(NSXPCConnection *)v39 auditToken];
  }

  else
  {
    memset(location, 0, 32);
  }

  v40 = [(CWFXPCConnection *)v12 __bundleIDFromAuditToken:location, v99, v100];
  bundleID = v12->_bundleID;
  v12->_bundleID = v40;

  v42 = v12->_XPCConnection;
  if (v42)
  {
    [(NSXPCConnection *)v42 auditToken];
  }

  else
  {
    memset(location, 0, 32);
  }

  v43 = [(CWFXPCConnection *)v12 __codesignIDFromAuditToken:location];
  codesignID = v12->_codesignID;
  v12->_codesignID = v43;

LABEL_31:
  v45 = [MEMORY[0x1E696AFB0] UUID];
  UUID = v12->_UUID;
  v12->_UUID = v45;

  if (!v12->_UUID)
  {
    goto LABEL_56;
  }

  v47 = [v10 copy];
  bootArgs = v12->_bootArgs;
  v12->_bootArgs = v47;

  v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.corewifi.XPC-connection-request.%@", v12->_processName];
  v50 = v49;
  v51 = [v49 UTF8String];
  v52 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v53 = dispatch_queue_create(v51, v52);
  requestQueue = v12->_requestQueue;
  v12->_requestQueue = v53;

  if (!v12->_requestQueue)
  {
    goto LABEL_56;
  }

  v55 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.corewifi.XPC-connection-reply.%@", v12->_processName];
  v56 = v55;
  v57 = [v55 UTF8String];
  v58 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v59 = dispatch_queue_create(v57, v58);
  replyQueue = v12->_replyQueue;
  v12->_replyQueue = v59;

  if (!v12->_replyQueue)
  {
    goto LABEL_56;
  }

  v61 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.corewifi.XPC-connection-event.%@", v12->_processName];
  v62 = v61;
  v63 = [v61 UTF8String];
  v64 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v65 = dispatch_queue_create(v63, v64);
  eventQueue = v12->_eventQueue;
  v12->_eventQueue = v65;

  if (!v12->_eventQueue)
  {
    goto LABEL_56;
  }

  v67 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.corewifi.XPC-connection-ack.%@", v12->_processName];
  v68 = v67;
  v69 = [v67 UTF8String];
  v70 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v71 = dispatch_queue_create(v69, v70);
  ackQueue = v12->_ackQueue;
  v12->_ackQueue = v71;

  if (!v12->_ackQueue)
  {
    goto LABEL_56;
  }

  v73 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.corewifi.XPC-connection-mutex.%@", v12->_processName];
  v74 = v73;
  v75 = [v73 UTF8String];
  v76 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v77 = dispatch_queue_create(v75, v76);
  mutexQueue = v12->_mutexQueue;
  v12->_mutexQueue = v77;

  if (!v12->_mutexQueue)
  {
    goto LABEL_56;
  }

  v79 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  mutableEventIDs = v12->_mutableEventIDs;
  v12->_mutableEventIDs = v79;

  if (!v12->_mutableEventIDs)
  {
    goto LABEL_56;
  }

  v81 = objc_alloc_init(MEMORY[0x1E695DF70]);
  mutablePendingEventAcknowledgements = v12->_mutablePendingEventAcknowledgements;
  v12->_mutablePendingEventAcknowledgements = v81;

  if (!v12->_mutablePendingEventAcknowledgements)
  {
    goto LABEL_56;
  }

  v83 = objc_alloc_init(MEMORY[0x1E695DF90]);
  mutablePendingRequestMap = v12->_mutablePendingRequestMap;
  v12->_mutablePendingRequestMap = v83;

  if (!v12->_mutablePendingRequestMap)
  {
    goto LABEL_56;
  }

  v85 = objc_alloc_init(MEMORY[0x1E695DF70]);
  mutableActivities = v12->_mutableActivities;
  v12->_mutableActivities = v85;

  if (!v12->_mutableActivities)
  {
    goto LABEL_56;
  }

  v87 = objc_alloc_init(MEMORY[0x1E695DF90]);
  coalescedEvents = v12->_coalescedEvents;
  v12->_coalescedEvents = v87;

  if (!v12->_coalescedEvents)
  {
    goto LABEL_56;
  }

  v89 = objc_alloc_init(MEMORY[0x1E695DF90]);
  entitlementsCache = v12->_entitlementsCache;
  v12->_entitlementsCache = v89;

  if (!v12->_entitlementsCache)
  {
    goto LABEL_56;
  }

  [(CWFXPCConnection *)v12 __loadEntitlementsCache];
  v12->_defaultTimeoutOverride = -1;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v91 = v12->_bootArgs;
  v92 = [(NSArray *)v91 countByEnumeratingWithState:&v102 objects:v111 count:16];
  if (v92)
  {
    v93 = *v103;
    while (2)
    {
      for (i = 0; i != v92; ++i)
      {
        if (*v103 != v93)
        {
          objc_enumerationMutation(v91);
        }

        v95 = *(*(&v102 + 1) + 8 * i);
        if ([v95 hasPrefix:@"corewifi_timeout_override="])
        {
          v96 = [v95 substringFromIndex:{objc_msgSend(@"corewifi_timeout_override=", "length")}];
          v12->_defaultTimeoutOverride = [v96 integerValue];

          goto LABEL_53;
        }
      }

      v92 = [(NSArray *)v91 countByEnumeratingWithState:&v102 objects:v111 count:16];
      if (v92)
      {
        continue;
      }

      break;
    }
  }

LABEL_53:

  v12->_OSInternalVariant = os_variant_has_internal_content();
LABEL_54:

  v97 = *MEMORY[0x1E69E9840];
  return v12;
}

- (CWFXPCConnection)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"-[CWFXPCConnection init] unavailable" userInfo:0];
  objc_exception_throw(v2);
}

- (id)valueForEntitlement:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1E0BC2D04;
  v19 = sub_1E0BC61CC;
  v20 = 0;
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C32E9C;
  block[3] = &unk_1E86E6960;
  v14 = &v15;
  block[4] = self;
  v6 = v4;
  v13 = v6;
  dispatch_sync(mutexQueue, block);
  v7 = v16[5];
  v8 = [MEMORY[0x1E695DFB0] null];
  if (v7 == v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = v16[5];
  }

  v10 = v9;

  _Block_object_dispose(&v15, 8);

  return v10;
}

- (void)resume
{
  [(CWFXPCProxyConnection *)self->_remoteXPCProxyConnection resume];
  XPCConnection = self->_XPCConnection;

  [(NSXPCConnection *)XPCConnection resume];
}

- (void)suspend
{
  [(CWFXPCProxyConnection *)self->_remoteXPCProxyConnection suspend];
  XPCConnection = self->_XPCConnection;

  [(NSXPCConnection *)XPCConnection suspend];
}

- (void)invalidate
{
  XPCConnection = self->_XPCConnection;
  if (XPCConnection)
  {

    [(NSXPCConnection *)XPCConnection invalidate];
  }

  else
  {
    v4 = [(CWFXPCConnection *)self remoteXPCProxyConnection];
    [v4 invalidate];

    v5 = [(CWFXPCConnection *)self invalidationHandler];

    if (v5)
    {
      v6 = [(CWFXPCConnection *)self invalidationHandler];
      v6[2]();
    }

    [(CWFXPCConnection *)self setInvalidationHandler:0];
  }
}

- (void)__coalesceAndCacheEvent:(id)a3
{
  v11 = a3;
  v4 = objc_alloc_init(CWFEventID);
  -[CWFEventID setType:](v4, "setType:", [v11 type]);
  v5 = [v11 interfaceName];
  [(CWFEventID *)v4 setInterfaceName:v5];

  v6 = [v11 type];
  if (v6 > 14)
  {
    if (v6 == 15)
    {
      v7 = objc_alloc_init(CWFEventID);
      v8 = v7;
      v9 = 16;
      goto LABEL_11;
    }

    if (v6 == 16)
    {
      v7 = objc_alloc_init(CWFEventID);
      v8 = v7;
      v9 = 15;
      goto LABEL_11;
    }

LABEL_8:
    [(NSMutableDictionary *)self->_coalescedEvents setObject:v11 forKeyedSubscript:v4];
    goto LABEL_12;
  }

  if (v6 == 10)
  {
    v7 = objc_alloc_init(CWFEventID);
    v8 = v7;
    v9 = 11;
    goto LABEL_11;
  }

  if (v6 != 11)
  {
    goto LABEL_8;
  }

  v7 = objc_alloc_init(CWFEventID);
  v8 = v7;
  v9 = 10;
LABEL_11:
  [(CWFEventID *)v7 setType:v9];
  v10 = [(CWFEventID *)v4 interfaceName];
  [(CWFEventID *)v8 setInterfaceName:v10];

  [(NSMutableDictionary *)self->_coalescedEvents setObject:0 forKeyedSubscript:v8];
  [(NSMutableDictionary *)self->_coalescedEvents setObject:v11 forKeyedSubscript:v4];

LABEL_12:
}

- (void)sendXPCEvent:(id)a3 reply:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 eventID];
  v9 = [v8 copy];
  [v9 setInterfaceName:0];
  v10 = CWFGetOSLog();
  v11 = os_signpost_id_make_with_pointer(v10, v9);

  v12 = MEMORY[0x1E69E9C10];
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x1E69E9C10]))
  {
    v13 = sub_1E0BC9038([v6 type]);
    *buf = 138412290;
    v27 = v13;
    _os_signpost_emit_with_name_impl(&dword_1E0BBF000, MEMORY[0x1E69E9C10], OS_SIGNPOST_INTERVAL_BEGIN, v11, "sendXPCEvent", "%@", buf, 0xCu);
  }

  mutexQueue = self->_mutexQueue;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_1E0C33548;
  v20[3] = &unk_1E86E6A00;
  v20[4] = self;
  v21 = v8;
  v22 = v9;
  v23 = v6;
  v24 = v7;
  v25 = v11;
  v15 = v7;
  v16 = v6;
  v17 = v9;
  v18 = v8;
  dispatch_async(mutexQueue, v20);

  v19 = *MEMORY[0x1E69E9840];
}

- (BOOL)__isVisibleProcess:(id)a3
{
  v3 = a3;
  v4 = v3;
  v5 = MEMORY[0x1E699F9C8];
  if (MEMORY[0x1E699F9C8])
  {
    if ([v3 taskState] == 4)
    {
      v6 = [v4 endowmentNamespaces];
      LOBYTE(v5) = [v6 containsObject:*v5];
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (BOOL)needsProcessState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  mutexQueue = self->_mutexQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E0C34D78;
  v5[3] = &unk_1E86E6A28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(mutexQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (RBSProcessState)processState
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(RBSProcessState *)v2->_processState copy];
  objc_sync_exit(v2);

  return v3;
}

- (void)setProcessState:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = self;
  objc_sync_enter(v6);
  v7 = CWFGetOSLog();
  if (v7)
  {
    v8 = CWFGetOSLog();
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = [(NSXPCConnection *)v6->_XPCConnection processIdentifier];
    processName = v6->_processName;
    bundleID = v6->_bundleID;
    codesignID = v6->_codesignID;
    v23 = 67110146;
    v24 = v10;
    v25 = 2114;
    v26 = processName;
    v27 = 2114;
    v28 = bundleID;
    v29 = 2114;
    v30 = codesignID;
    v31 = 2114;
    v32 = v5;
    _os_log_send_and_compose_impl();
  }

  v14 = [v5 taskState];
  v15 = [(RBSProcessState *)v6->_processState taskState];
  v16 = [(CWFXPCConnection *)v6 __isVisibleProcess:v5];
  v17 = [(CWFXPCConnection *)v6 __isVisibleProcess:v6->_processState];
  if (v15 != 3 || v14 == 3)
  {
    objc_storeStrong(&v6->_processState, a3);
    objc_sync_exit(v6);

    if (((v16 ^ v17) & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    objc_storeStrong(&v6->_processState, a3);
    objc_sync_exit(v6);
  }

  mutexQueue = v6->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C350E0;
  block[3] = &unk_1E86E6010;
  block[4] = v6;
  dispatch_sync(mutexQueue, block);
  v19 = [(CWFXPCConnection *)v6 delegate];
  if (v19)
  {
    v20 = [(CWFXPCConnection *)v6 processState];
    [v19 XPCConnection:v6 updatedProcessState:v20];
  }

LABEL_13:
  v21 = *MEMORY[0x1E69E9840];
}

- (BOOL)isVisible
{
  v2 = self;
  v3 = [(CWFXPCConnection *)self processState];
  LOBYTE(v2) = [(CWFXPCConnection *)v2 __isVisibleProcess:v3];

  return v2;
}

- (BOOL)needsContainingAppProcessState
{
  v2 = [(CWFXPCConnection *)self containingAppBundleID];
  v3 = v2 != 0;

  return v3;
}

- (RBSProcessState)containingAppProcessState
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(RBSProcessState *)v2->_containingAppProcessState copy];
  objc_sync_exit(v2);

  return v3;
}

- (void)setContainingAppProcessState:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
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

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = [v4 process];
    [v9 pid];
    v10 = [v4 process];
    v11 = [v10 name];
    v20 = [(CWFXPCConnection *)v5 containingAppBundleID];
    _os_log_send_and_compose_impl();
  }

  v12 = [v4 taskState];
  v13 = [(RBSProcessState *)v5->_containingAppProcessState taskState];
  v14 = [(CWFXPCConnection *)v5 __isVisibleProcess:v4];
  v15 = [(CWFXPCConnection *)v5 __isVisibleProcess:v5->_containingAppProcessState];
  containingAppProcessState = v5->_containingAppProcessState;
  v5->_containingAppProcessState = v4;

  objc_sync_exit(v5);
  if ((v12 == 3) ^ (v13 == 3) | (v14 ^ v15) & 1)
  {
    v17 = [(CWFXPCConnection *)v5 delegate];
    if (v17)
    {
      v18 = [(CWFXPCConnection *)v5 processState];
      [v17 XPCConnection:v5 updatedProcessState:v18];
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (BOOL)isContainingAppVisible
{
  v2 = self;
  v3 = [(CWFXPCConnection *)self containingAppProcessState];
  LOBYTE(v2) = [(CWFXPCConnection *)v2 __isVisibleProcess:v3];

  return v2;
}

+ (int)locationAuthorizationStatusForWiFiNetworking
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithPath:@"/System/Library/PrivateFrameworks/MobileWiFi.framework"];
  if (v2 && sub_1E0BCC5FC())
  {
    v3 = [sub_1E0C35858() authorizationStatusForBundle:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)__locationBundlePathOverride
{
  v3 = [(CWFXPCConnection *)self effectiveBundleID];
  if ([v3 isEqual:@"com.apple.milod"])
  {

    return @"/System/Library/LocationBundles/Milod.bundle";
  }

  v4 = [(CWFXPCConnection *)self processName];
  v5 = [v4 isEqual:@"milod"];

  if (v5)
  {
    return @"/System/Library/LocationBundles/Milod.bundle";
  }

  return 0;
}

- (int)locationAuthorizationStatus
{
  v15 = *MEMORY[0x1E69E9840];
  if (sub_1E0BCC5FC())
  {
    v3 = [(CWFXPCConnection *)self __locationBundlePathOverride];
    if (v3 && [(CWFXPCConnection *)self __allowBundlePathOverride])
    {
      v4 = [sub_1E0C35858() authorizationStatusForBundlePath:v3];
    }

    else
    {
      v5 = [(CWFXPCConnection *)self effectiveBundleID];
      if (v5)
      {
        v4 = [sub_1E0C35858() authorizationStatusForBundleIdentifier:v5];
      }

      else
      {
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

        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          [(NSXPCConnection *)self->_XPCConnection processIdentifier];
          processName = self->_processName;
          bundleID = self->_bundleID;
          codesignID = self->_codesignID;
          v14 = sub_1E0BC1A5C(self->_serviceType);
          _os_log_send_and_compose_impl();
        }

        v4 = 0;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v4;
}

- (id)__privacyFilteredNetworkProfile:(id)a3 allowSSID:(BOOL)a4 allowBSSID:(BOOL)a5
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 properties];
  v9 = v8;
  if (v6 && a5 || ([v8 containsObject:&unk_1F5BBC388] & 1) == 0 && !objc_msgSend(v9, "containsObject:", &unk_1F5BBC3B8))
  {
    v10 = v7;
  }

  else
  {
    v11 = [v9 mutableCopy];
    if ([v9 containsObject:&unk_1F5BBC388] && !v6)
    {
      [v11 removeObject:&unk_1F5BBC388];
    }

    if ([v9 containsObject:&unk_1F5BBC3B8] && !a5)
    {
      [v11 removeObject:&unk_1F5BBC3B8];
    }

    v10 = [v7 filteredNetworkProfileWithProperties:v11];
  }

  return v10;
}

- (unint64_t)__defaultTimeoutForRequestType:(int64_t)a3
{
  result = 120000000000;
  if (a3 > 187)
  {
    if ((a3 - 201) <= 0x3E)
    {
      if (((1 << (a3 + 55)) & 0x6000000000000003) != 0)
      {
        return result;
      }

      if (a3 == 220 || a3 == 238)
      {
        return 10000000000;
      }
    }

    if ((a3 - 276) <= 0xD && ((1 << (a3 - 20)) & 0x2003) != 0)
    {
      return 30000000000;
    }

    if (a3 == 188)
    {
      return 60000000000;
    }

    goto LABEL_23;
  }

  if (a3 > 64)
  {
    if (a3 == 65 || a3 == 69)
    {
      return 20000000000;
    }

    if (a3 != 177)
    {
LABEL_23:
      if (sub_1E0BC2F68(a3))
      {
        return 20000000000;
      }

      else
      {
        return 4000000000;
      }
    }
  }

  else
  {
    if (a3 == 6)
    {
      return 10000000000;
    }

    if (a3 != 62 && a3 != 64)
    {
      goto LABEL_23;
    }
  }

  return result;
}

- (void)__addXPCGetRequestWithType:(int64_t)a3 requestParams:(id)a4 reply:(id)a5
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  if (os_signpost_enabled(MEMORY[0x1E69E9C10]))
  {
    v10 = sub_1E0BC2FCC(a3);
    *buf = 138412290;
    v16 = v10;
    _os_signpost_emit_with_name_impl(&dword_1E0BBF000, MEMORY[0x1E69E9C10], OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "XPCGetRequestWithType", "%@", buf, 0xCu);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1E0C36204;
  v13[3] = &unk_1E86E6A50;
  v14 = v9;
  v11 = v9;
  [(CWFXPCConnection *)self __addXPCRequestWithType:a3 info:0 requestParams:v8 reply:v13];

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)__allowXPCRequestWithType:(int64_t)a3 error:(id *)a4
{
  v138 = *MEMORY[0x1E69E9840];
  v133 = 0;
  if ((a3 - 290) <= 0xFFFFFFFFFFFFFEDELL)
  {
    v84 = *MEMORY[0x1E696A798];
    v85 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v23 = CWFErrorWithDescription(v84, 22, v85);

    v43 = 0;
    v14 = 0;
    v7 = 0;
    goto LABEL_56;
  }

  v7 = sub_1E0BC1AB4(self->_serviceType);
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v9 = [v7 containsObject:v8];

  if ((v9 & 1) == 0)
  {
    v86 = *MEMORY[0x1E696A798];
    v87 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
    v23 = CWFErrorWithDescription(v86, 45, v87);

    v43 = 0;
    v14 = 0;
    goto LABEL_56;
  }

  if ([(NSArray *)self->_bootArgs containsObject:@"corewifi_api_enforcement_disable=1"])
  {
    v10 = CWFGetOSLog();
    if (v10)
    {
      v11 = CWFGetOSLog();
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
      v26 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v27 = [(NSXPCConnection *)self->_XPCConnection processIdentifier];
      processName = self->_processName;
      bundleID = self->_bundleID;
      codesignID = self->_codesignID;
      v31 = sub_1E0BC1A5C(self->_serviceType);
      sub_1E0BC2FCC(a3);
      v135 = 67110402;
      *v136 = v27;
      *&v136[4] = 2114;
      *&v136[6] = processName;
      *&v136[14] = 2114;
      *&v136[16] = bundleID;
      *&v136[24] = 2114;
      *&v136[26] = codesignID;
      *&v136[34] = 2114;
      *&v136[36] = v31;
      *&v136[46] = *&v136[44] = 2114;
      _os_log_send_and_compose_impl();
    }

LABEL_47:

    v23 = 0;
    v13 = 0;
    v43 = 0;
LABEL_48:
    v54 = 1;
    goto LABEL_49;
  }

  if ([(CWFXPCConnection *)self isLocal])
  {
    v12 = CWFGetOSLog();
    if (v12)
    {
      v11 = CWFGetOSLog();
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
      v52 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v53 = sub_1E0BC1A5C(self->_serviceType);
      sub_1E0BC2FCC(a3);
      v135 = 138543618;
      *v136 = v53;
      *&v136[10] = *&v136[8] = 2114;
      _os_log_send_and_compose_impl();
    }

    goto LABEL_47;
  }

  v13 = sub_1E0BC2974(self->_serviceType, a3, &v133);
  v123 = a4;
  if ([v13 count])
  {
    v131 = 0u;
    v132 = 0u;
    v129 = 0u;
    v130 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v129 objects:v137 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v130;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v130 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [(CWFXPCConnection *)self valueForEntitlement:*(*(&v129 + 1) + 8 * i)];
          v20 = [v19 BOOLValue];

          if (v20)
          {
            v32 = v14;
            goto LABEL_25;
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v129 objects:v137 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    if (v133 == 1)
    {
      v21 = *MEMORY[0x1E696A798];
      v22 = CWFErrorDescription(*MEMORY[0x1E696A798], 1uLL);
      v23 = CWFErrorWithDescription(v21, 1, v22);

      v24 = CWFGetOSLog();
      a4 = v123;
      if (v24)
      {
        v25 = CWFGetOSLog();
      }

      else
      {
        v25 = MEMORY[0x1E69E9C10];
        v57 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        v58 = [(NSXPCConnection *)self->_XPCConnection processIdentifier];
        v59 = self->_processName;
        v60 = self->_bundleID;
        v120 = self->_codesignID;
        v61 = sub_1E0BC1A5C(self->_serviceType);
        v62 = sub_1E0BC2FCC(a3);
        v63 = [v14 componentsJoinedByString:@", "];
        v135 = 67110658;
        *v136 = v58;
        *&v136[4] = 2114;
        *&v136[6] = v59;
        a4 = v123;
        *&v136[14] = 2114;
        *&v136[16] = v60;
        *&v136[24] = 2114;
        *&v136[26] = v120;
        *&v136[34] = 2114;
        *&v136[36] = v61;
        *&v136[44] = 2114;
        *&v136[46] = v62;
        *&v136[54] = 2114;
        *&v136[56] = v63;
        _os_log_send_and_compose_impl();
      }

      v43 = 0;
      goto LABEL_56;
    }

    v90 = CWFGetOSLog();
    if (v90)
    {
      v32 = CWFGetOSLog();
    }

    else
    {
      v32 = MEMORY[0x1E69E9C10];
      v102 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      v103 = self->_processName;
      v104 = sub_1E0BC1A5C(self->_serviceType);
      v105 = sub_1E0BC2FCC(a3);
      v106 = [v14 componentsJoinedByString:@", "];
      v135 = 138544130;
      *v136 = v103;
      *&v136[8] = 2114;
      *&v136[10] = v104;
      *&v136[18] = 2114;
      *&v136[20] = v105;
      *&v136[28] = 2114;
      *&v136[30] = v106;
      LODWORD(v118) = 42;
      v117 = &v135;
      _os_log_send_and_compose_impl();
    }

LABEL_25:
  }

  v33 = sub_1E0BC5480(self->_OSInternalVariant, self->_serviceType, a3, self->_processName, &v133);
  if (v133 != 1)
  {
    if ((v33 & 1) == 0)
    {
      v88 = CWFGetOSLog();
      if (v88)
      {
        v89 = CWFGetOSLog();
      }

      else
      {
        v89 = MEMORY[0x1E69E9C10];
        v98 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
      {
        v99 = self->_processName;
        v100 = sub_1E0BC1A5C(self->_serviceType);
        v101 = sub_1E0BC2FCC(a3);
        v135 = 138543874;
        *v136 = v99;
        *&v136[8] = 2114;
        *&v136[10] = v100;
        *&v136[18] = 2114;
        *&v136[20] = v101;
        LODWORD(v118) = 32;
        v117 = &v135;
        _os_log_send_and_compose_impl();
      }
    }

LABEL_31:
    bootArgs = self->_bootArgs;
    v38 = self->_processName;
    serviceType = self->_serviceType;
    v128 = 0;
    v41 = sub_1E0BC5208(serviceType, a3, v38, bootArgs, &v128);
    v42 = v128;
    v43 = v42;
    if (v41)
    {
      v126 = 0u;
      v127 = 0u;
      v124 = 0u;
      v125 = 0u;
      v43 = v42;
      v44 = [v43 countByEnumeratingWithState:&v124 objects:v134 count:16];
      if (v44)
      {
        v45 = v44;
        v46 = *v125;
        while (2)
        {
          for (j = 0; j != v45; ++j)
          {
            if (*v125 != v46)
            {
              objc_enumerationMutation(v43);
            }

            v48 = [(CWFXPCConnection *)self valueForEntitlement:*(*(&v124 + 1) + 8 * j), v117, v118];
            v49 = [v48 BOOLValue];

            if (v49)
            {

              goto LABEL_51;
            }
          }

          v45 = [v43 countByEnumeratingWithState:&v124 objects:v134 count:16];
          if (v45)
          {
            continue;
          }

          break;
        }
      }

      a4 = v123;
      if (HIBYTE(v133) == 1)
      {
        if ([(CWFXPCConnection *)self isCodesignedByApple])
        {
          v50 = CWFGetOSLog();
          if (v50)
          {
            v51 = CWFGetOSLog();
          }

          else
          {
            v51 = MEMORY[0x1E69E9C10];
            v77 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
          {
            v78 = [(NSXPCConnection *)self->_XPCConnection processIdentifier];
            v79 = self->_processName;
            v80 = self->_bundleID;
            v81 = self->_codesignID;
            v82 = sub_1E0BC1A5C(self->_serviceType);
            v83 = sub_1E0BC2FCC(a3);
            v135 = 67110402;
            *v136 = v78;
            *&v136[4] = 2114;
            *&v136[6] = v79;
            *&v136[14] = 2114;
            *&v136[16] = v80;
            *&v136[24] = 2114;
            *&v136[26] = v81;
            *&v136[34] = 2114;
            *&v136[36] = v82;
            *&v136[44] = 2114;
            *&v136[46] = v83;
            _os_log_send_and_compose_impl();
          }

          goto LABEL_51;
        }

        if ((v133 & 0x100) != 0 && [(CWFXPCConnection *)self isCodesignedByApple])
        {
          v107 = *MEMORY[0x1E696A798];
          v108 = CWFErrorDescription(*MEMORY[0x1E696A798], 1uLL);
          v23 = CWFErrorWithDescription(v107, 1, v108);

          v109 = CWFGetOSLog();
          if (v109)
          {
            v110 = CWFGetOSLog();
          }

          else
          {
            v110 = MEMORY[0x1E69E9C10];
            v111 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v110, OS_LOG_TYPE_DEBUG))
          {
            v112 = [(NSXPCConnection *)self->_XPCConnection processIdentifier];
            v113 = self->_processName;
            v114 = self->_bundleID;
            v122 = self->_codesignID;
            v115 = sub_1E0BC1A5C(self->_serviceType);
            v116 = sub_1E0BC2FCC(a3);
            v135 = 67110402;
            *v136 = v112;
            *&v136[4] = 2114;
            *&v136[6] = v113;
            *&v136[14] = 2114;
            *&v136[16] = v114;
            *&v136[24] = 2114;
            *&v136[26] = v122;
            *&v136[34] = 2114;
            *&v136[36] = v115;
            *&v136[44] = 2114;
            *&v136[46] = v116;
            _os_log_send_and_compose_impl();
          }

          goto LABEL_85;
        }
      }

      v65 = [(CWFXPCConnection *)self locationAuthorizationStatus:v117];
      if (v65 != 3)
      {
        v66 = v65;
        if (v65 != 4 || ![(CWFXPCConnection *)self isVisible])
        {
          v67 = *MEMORY[0x1E696A798];
          v68 = CWFErrorDescription(*MEMORY[0x1E696A798], 1uLL);
          v23 = CWFErrorWithDescription(v67, 1, v68);

          v69 = CWFGetOSLog();
          if (v69)
          {
            v70 = CWFGetOSLog();
          }

          else
          {
            v70 = MEMORY[0x1E69E9C10];
            v71 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
          {
            v72 = [(NSXPCConnection *)self->_XPCConnection processIdentifier];
            v121 = v70;
            v73 = self->_processName;
            v74 = self->_bundleID;
            v119 = self->_codesignID;
            v75 = sub_1E0BC1A5C(self->_serviceType);
            v76 = sub_1E0BC2FCC(a3);
            v135 = 67110658;
            *v136 = v66;
            *&v136[4] = 1024;
            *&v136[6] = v72;
            *&v136[10] = 2114;
            *&v136[12] = v73;
            *&v136[20] = 2114;
            *&v136[22] = v74;
            v70 = v121;
            a4 = v123;
            *&v136[30] = 2114;
            *&v136[32] = v119;
            *&v136[40] = 2114;
            *&v136[42] = v75;
            *&v136[50] = 2114;
            *&v136[52] = v76;
            _os_log_send_and_compose_impl();
          }

          v14 = v13;
          goto LABEL_56;
        }
      }
    }

LABEL_51:
    v23 = 0;
    goto LABEL_48;
  }

  if (v33)
  {
    goto LABEL_31;
  }

  v34 = *MEMORY[0x1E696A798];
  v35 = CWFErrorDescription(*MEMORY[0x1E696A798], 1uLL);
  v23 = CWFErrorWithDescription(v34, 1, v35);

  v36 = CWFGetOSLog();
  if (v36)
  {
    v37 = CWFGetOSLog();
  }

  else
  {
    v37 = MEMORY[0x1E69E9C10];
    v91 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
  {
    v92 = [(NSXPCConnection *)self->_XPCConnection processIdentifier];
    v93 = self->_processName;
    v94 = self->_bundleID;
    v95 = self->_codesignID;
    v96 = sub_1E0BC1A5C(self->_serviceType);
    v97 = sub_1E0BC2FCC(a3);
    v135 = 67110402;
    *v136 = v92;
    *&v136[4] = 2114;
    *&v136[6] = v93;
    *&v136[14] = 2114;
    *&v136[16] = v94;
    *&v136[24] = 2114;
    *&v136[26] = v95;
    *&v136[34] = 2114;
    *&v136[36] = v96;
    *&v136[44] = 2114;
    *&v136[46] = v97;
    _os_log_send_and_compose_impl();
  }

  v43 = 0;
LABEL_85:
  v14 = v13;
  a4 = v123;
LABEL_56:
  v54 = 0;
  if (a4 && v23)
  {
    v64 = v23;
    v54 = 0;
    *a4 = v23;
  }

  v13 = v14;
LABEL_49:

  v55 = *MEMORY[0x1E69E9840];
  return v54;
}

- (BOOL)__allowAlreadyPendingRequest:(id)a3
{
  v3 = a3;
  v4 = [v3 type];
  if ((v4 - 276) >= 2)
  {
    if (v4 == 64)
    {
      v6 = [v3 info];
      v7 = [v6 objectForKeyedSubscript:@"ScanParams"];

      v5 = [v7 acceptableCacheAge] == -1;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)__hasPendingRequestWithType:(int64_t)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(NSMutableDictionary *)self->_mutablePendingRequestMap allValues];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 type] == a3 && !objc_msgSend(v9, "isSubrequest"))
        {
          v10 = 1;
          goto LABEL_12;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_12:

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)__isUserPrivacySensitiveRequestType:(int64_t)a3
{
  result = 0;
  if ((a3 - 201) <= 0x3E && ((1 << (a3 + 55)) & 0x6000000000000003) != 0)
  {
    return sub_1E0BCFCD4(self->_bootArgs) != 1;
  }

  return result;
}

- (id)__addXPCRequestWithType:(int64_t)a3 info:(id)a4 requestParams:(id)a5 parentRequestUUID:(id)a6 isParentRequest:(BOOL)a7 reply:(id)a8
{
  v142 = *MEMORY[0x1E69E9840];
  v12 = a4;
  v13 = a5;
  v92 = a6;
  v88 = a8;
  v14 = objc_alloc_init(CWFXPCRequest);
  v90 = a3;
  [(CWFXPCRequest *)v14 setType:a3];
  v93 = v13;
  [(CWFXPCRequest *)v14 setRequestParameters:v13];
  v87 = v12;
  [(CWFXPCRequest *)v14 setInfo:v12];
  v15 = [MEMORY[0x1E695DF00] date];
  [(CWFXPCRequest *)v14 setReceivedAt:v15];

  [(CWFXPCRequest *)v14 setIsSubrequest:v92 != 0];
  v91 = [(CWFXPCRequest *)v14 UUID];
  qos_class = qos_class_self();
  v16 = CWFGetOSLog();
  if (v16)
  {
    v17 = CWFGetOSLog();
  }

  else
  {
    v17 = MEMORY[0x1E69E9C10];
    v18 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v19 = @"REQ";
    if (v92)
    {
      v19 = @"SUBREQ";
    }

    v83 = v19;
    v86 = sub_1E0BC2FCC(a3);
    v20 = [(NSXPCConnection *)self->_XPCConnection processIdentifier];
    processName = self->_processName;
    bundleID = self->_bundleID;
    codesignID = self->_codesignID;
    v85 = sub_1E0BC1A5C(self->_serviceType);
    v23 = [v93 interfaceName];
    v24 = [v91 UUIDString];
    v25 = [v24 substringToIndex:5];
    v26 = [(CWFXPCConnection *)self __isUserPrivacySensitiveRequestType:v90];
    if (v26)
    {
      v27 = @"<private>";
    }

    else
    {
      v81 = [v87 description];
      v27 = [v81 redactedForWiFi];
    }

    *location = 138545922;
    *&location[4] = v83;
    v124 = 2114;
    *v125 = v86;
    *&v125[8] = 1024;
    *&v125[10] = v20;
    v126 = 2114;
    v127 = processName;
    v128 = 2114;
    v129 = bundleID;
    v130 = 2114;
    v131 = codesignID;
    v132 = 2114;
    v133 = v85;
    v134 = 1024;
    v135 = qos_class;
    v136 = 2114;
    v137 = v23;
    v138 = 2114;
    v139 = v25;
    v140 = 2114;
    v141 = v27;
    LODWORD(v79) = 104;
    v77 = location;
    _os_log_send_and_compose_impl();
    if (!v26)
    {
    }
  }

  v28 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v122 = 0;
  v29 = [(CWFXPCConnection *)self __allowXPCRequestWithType:v90 error:&v122];
  v30 = v122;
  v31 = v30;
  if (!v29)
  {
    replyQueue = self->_replyQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0C391A0;
    block[3] = &unk_1E86E6BB8;
    v101 = v88;
    v96 = v30;
    v97 = v92;
    v102 = v90;
    v103 = v28;
    v98 = self;
    v99 = v93;
    v100 = v91;
    v36 = v91;
    v37 = v92;
    v38 = v88;
    v39 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, qos_class, 0, block);
    dispatch_async(replyQueue, v39);

    goto LABEL_53;
  }

  v32 = [(CWFXPCRequest *)v14 requestParameters];
  v33 = [v32 timeout] == 0;

  if (v33)
  {
    defaultTimeoutOverride = self->_defaultTimeoutOverride;
    v41 = defaultTimeoutOverride;
    if ((defaultTimeoutOverride & 0x8000000000000000) != 0)
    {
      v41 = [(CWFXPCConnection *)self __defaultTimeoutForRequestType:[(CWFXPCRequest *)v14 type]];
    }

    v42 = [(CWFXPCRequest *)v14 requestParameters:v77];
    [v42 setTimeout:v41];

    v34 = defaultTimeoutOverride >> 63;
  }

  else
  {
    LOBYTE(v34) = 0;
  }

  v43 = [v93 queuePriority];
  if (v43)
  {
    [(CWFXPCRequest *)v14 setQueuePriority:v43];
  }

  v44 = [v93 qualityOfService];
  if (!v44)
  {
    if (qos_class > 0x14)
    {
      HIDWORD(v56) = qos_class - 9;
      LODWORD(v56) = qos_class - 9;
      v55 = v56 >> 2;
      if (v55 > 6)
      {
        v57 = 0;
      }

      else
      {
        v57 = qword_1E0D81A10[v55];
      }

      [(CWFXPCRequest *)v14 setQualityOfService:v57];
    }

    else
    {
      v47 = CWFGetOSLog();
      if (v47)
      {
        v48 = CWFGetOSLog();
      }

      else
      {
        v48 = MEMORY[0x1E69E9C10];
        v58 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        v59 = [v91 UUIDString];
        v60 = [v59 substringToIndex:5];
        *location = 138543362;
        *&location[4] = v60;
        LODWORD(v80) = 12;
        v78 = location;
        _os_log_send_and_compose_impl();
      }

      [(CWFXPCRequest *)v14 setQualityOfService:-1];
      qos_class = QOS_CLASS_DEFAULT;
    }

    v53 = self;
    goto LABEL_52;
  }

  v45 = CWFGetOSLog();
  if (v45)
  {
    v46 = CWFGetOSLog();
  }

  else
  {
    v46 = MEMORY[0x1E69E9C10];
    v49 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    v50 = [v91 UUIDString];
    v51 = [v50 substringToIndex:5];
    v52 = [v93 qualityOfService];
    *location = 138543874;
    *&location[4] = v51;
    v124 = 1024;
    *v125 = qos_class;
    *&v125[4] = 2048;
    *&v125[6] = v52;
    LODWORD(v80) = 28;
    v78 = location;
    _os_log_send_and_compose_impl();
  }

  [(CWFXPCRequest *)v14 setQualityOfService:v44];
  if (v44 <= 16)
  {
    v53 = self;
    if (v44 == -1)
    {
      v54 = 21;
      goto LABEL_44;
    }

    qos_class = QOS_CLASS_UNSPECIFIED;
    if (v44 == 9)
    {
      v54 = 9;
      goto LABEL_44;
    }
  }

  else
  {
    v53 = self;
    if (v44 == 17)
    {
      v54 = 17;
      goto LABEL_44;
    }

    if (v44 == 25)
    {
      v54 = 25;
      goto LABEL_44;
    }

    qos_class = QOS_CLASS_UNSPECIFIED;
    if (v44 == 33)
    {
      v54 = 33;
LABEL_44:
      qos_class = v54;
    }
  }

LABEL_52:
  v61 = MEMORY[0x1E696AEC0];
  v62 = [(CWFXPCConnection *)v53 UUID:v78];
  v63 = [v62 UUIDString];
  v64 = [v91 UUIDString];
  v65 = sub_1E0BC2E18(v14);
  v66 = [v61 stringWithFormat:@"%@/%@/%@", v63, v64, v65];
  [(CWFXPCRequest *)v14 setName:v66];

  objc_initWeak(location, v14);
  v114[0] = MEMORY[0x1E69E9820];
  v114[1] = 3221225472;
  v114[2] = sub_1E0C37D60;
  v114[3] = &unk_1E86E6AC8;
  objc_copyWeak(v120, location);
  v114[4] = self;
  v121 = qos_class;
  v67 = v91;
  v115 = v67;
  v68 = v92;
  v116 = v68;
  v120[1] = v90;
  v120[2] = v28;
  v117 = v93;
  v69 = v88;
  v119 = v69;
  v118 = v31;
  [(CWFXPCRequest *)v14 setResponse:v114];
  mutexQueue = self->_mutexQueue;
  v104[0] = MEMORY[0x1E69E9820];
  v104[1] = 3221225472;
  v104[2] = sub_1E0C388F4;
  v104[3] = &unk_1E86E6B90;
  v105 = v68;
  v106 = self;
  v111 = qos_class;
  v109 = v69;
  v110 = v90;
  v112 = a7;
  v113 = v34;
  v107 = v14;
  v108 = v67;
  v71 = v67;
  v72 = v68;
  v73 = v69;
  v74 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, qos_class, 0, v104);
  dispatch_async(mutexQueue, v74);

  objc_destroyWeak(v120);
  objc_destroyWeak(location);
LABEL_53:

  v75 = *MEMORY[0x1E69E9840];

  return v14;
}

- (CWFXPCProxyConnection)localXPCProxyConnection
{
  v3 = [[CWFXPCProxyConnection alloc] initWithForwardingTarget:self];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E0C39508;
  v5[3] = &unk_1E86E6010;
  v5[4] = self;
  [(CWFXPCProxyConnection *)v3 setInvalidationHandler:v5];

  return v3;
}

- (NSString)effectiveBundleID
{
  v3 = [(CWFXPCConnection *)self bundleID];
  if (!v3)
  {
    v3 = [(CWFXPCConnection *)self codesignID];
  }

  return v3;
}

- (id)remoteObjectProxyWithErrorHandler:(id)a3
{
  remoteXPCProxyConnection = self->_remoteXPCProxyConnection;
  if (!remoteXPCProxyConnection)
  {
    remoteXPCProxyConnection = self->_XPCConnection;
  }

  v5 = [remoteXPCProxyConnection remoteObjectProxyWithErrorHandler:a3];

  return v5;
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)a3
{
  remoteXPCProxyConnection = self->_remoteXPCProxyConnection;
  if (!remoteXPCProxyConnection)
  {
    remoteXPCProxyConnection = self->_XPCConnection;
  }

  v5 = [remoteXPCProxyConnection synchronousRemoteObjectProxyWithErrorHandler:a3];

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  processName = self->_processName;
  v5 = [(NSXPCConnection *)self->_XPCConnection processIdentifier];
  bundleID = self->_bundleID;
  codesignID = self->_codesignID;
  v8 = sub_1E0BC1A5C(self->_serviceType);
  [v3 appendFormat:@"proc=%@, pid=%d, bundleID=%@, codesignID=%@, service=%@", processName, v5, bundleID, codesignID, v8];

  v9 = [(CWFXPCConnection *)self containingAppProcessName];

  if (v9)
  {
    v10 = [(CWFXPCConnection *)self containingAppProcessName];
    v11 = [(CWFXPCConnection *)self containingAppProcessState];
    v12 = [v11 process];
    v13 = [v12 pid];
    v14 = [(CWFXPCConnection *)self containingAppBundleID];
    v15 = [(CWFXPCConnection *)self containingAppCodesignID];
    [v3 appendFormat:@", containing=[proc=%@, pid=%d, bundleID=%@, codesignID=%@]", v10, v13, v14, v15];
  }

  return v3;
}

- (void)startMonitoringEvent:(id)a3 requestParams:(id)a4 reply:(id)a5
{
  v54 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
    v14 = sub_1E0BC9038([v8 type]);
    v15 = [(NSXPCConnection *)self->_XPCConnection processIdentifier];
    v16 = v8;
    v17 = v10;
    processName = self->_processName;
    bundleID = self->_bundleID;
    codesignID = self->_codesignID;
    v20 = sub_1E0BC1A5C(self->_serviceType);
    [v9 interfaceName];
    v40 = 138544898;
    v41 = v14;
    v42 = 1024;
    v43 = v15;
    v44 = 2114;
    v45 = processName;
    v46 = 2114;
    v47 = bundleID;
    v10 = v17;
    v8 = v16;
    v48 = 2114;
    v49 = codesignID;
    v50 = 2114;
    v51 = v20;
    v53 = v52 = 2114;
    _os_log_send_and_compose_impl();
  }

  v21 = [v8 copy];
  if (([v8 type] - 43) <= 3)
  {
    v22 = [(CWFXPCConnection *)self __wifiNetworkSharingClientIDWithRequestParameters:v9];
    if (!v22)
    {
      replyQueue = self->_replyQueue;
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = sub_1E0C39C2C;
      v38[3] = &unk_1E86E6AF0;
      v39 = v10;
      v32 = v10;
      dispatch_async(replyQueue, v38);
      v29 = v39;
      goto LABEL_10;
    }

    v23 = v22;
    v24 = objc_alloc_init(CWFWiFiNetworkSharingEventID);

    -[CWFEventID setType:](v24, "setType:", [v8 type]);
    v25 = [v8 interfaceName];
    [(CWFEventID *)v24 setInterfaceName:v25];

    [(CWFWiFiNetworkSharingEventID *)v24 setClientID:v23];
    v26 = [v9 wifiNetworkSharingNetworkListUpdateEventPredicateData];
    [(CWFWiFiNetworkSharingEventID *)v24 setNetworkListUpdateEventPredicateData:v26];

    v21 = v24;
  }

  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C39CCC;
  block[3] = &unk_1E86E6C30;
  block[4] = self;
  v21 = v21;
  v35 = v21;
  v36 = v9;
  v37 = v10;
  v28 = v10;
  dispatch_async(mutexQueue, block);

  v29 = v35;
LABEL_10:

  v30 = *MEMORY[0x1E69E9840];
}

- (void)stopMonitoringEvent:(id)a3 requestParams:(id)a4 reply:(id)a5
{
  v45 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
    v14 = sub_1E0BC9038([v8 type]);
    v15 = [(NSXPCConnection *)self->_XPCConnection processIdentifier];
    processName = self->_processName;
    bundleID = self->_bundleID;
    v26 = v8;
    v18 = v10;
    codesignID = self->_codesignID;
    v20 = sub_1E0BC1A5C(self->_serviceType);
    [v9 interfaceName];
    v31 = 138544898;
    v32 = v14;
    v33 = 1024;
    v34 = v15;
    v35 = 2114;
    v36 = processName;
    v37 = 2114;
    v38 = bundleID;
    v39 = 2114;
    v40 = codesignID;
    v10 = v18;
    v8 = v26;
    v41 = 2114;
    v42 = v20;
    v44 = v43 = 2114;
    _os_log_send_and_compose_impl();
  }

  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C3A3C8;
  block[3] = &unk_1E86E6C30;
  block[4] = self;
  v28 = v8;
  v29 = v9;
  v30 = v10;
  v22 = v10;
  v23 = v9;
  v24 = v8;
  dispatch_async(mutexQueue, block);

  v25 = *MEMORY[0x1E69E9840];
}

- (void)stopMonitoringAllEventsWithRequestParams:(id)a3 reply:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = CWFGetOSLog();
  if (v8)
  {
    v9 = CWFGetOSLog();
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(NSXPCConnection *)self->_XPCConnection processIdentifier];
    processName = self->_processName;
    bundleID = self->_bundleID;
    codesignID = self->_codesignID;
    v15 = sub_1E0BC1A5C(self->_serviceType);
    [v6 interfaceName];
    v23 = 67110402;
    v24 = v11;
    v25 = 2114;
    v26 = processName;
    v27 = 2114;
    v28 = bundleID;
    v29 = 2114;
    v30 = codesignID;
    v31 = 2114;
    v32 = v15;
    v34 = v33 = 2114;
    _os_log_send_and_compose_impl();
  }

  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C3AA80;
  block[3] = &unk_1E86E6CA8;
  block[4] = self;
  v21 = v6;
  v22 = v7;
  v17 = v7;
  v18 = v6;
  dispatch_async(mutexQueue, block);

  v19 = *MEMORY[0x1E69E9840];
}

- (void)beginActivity:(id)a3 requestParams:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  mutexQueue = self->_mutexQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1E0C3AF4C;
  v15[3] = &unk_1E86E6C30;
  v16 = v8;
  v17 = self;
  v18 = v9;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(mutexQueue, v15);
}

- (void)endActivityWithUUID:(id)a3 requestParams:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  mutexQueue = self->_mutexQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1E0C3BB00;
  v15[3] = &unk_1E86E6C30;
  v16 = v8;
  v17 = self;
  v18 = v9;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(mutexQueue, v15);
}

- (void)endAllActivitiesWithRequestParams:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C3C2D0;
  block[3] = &unk_1E86E6CA8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(mutexQueue, block);
}

- (void)cancelRequestsWithUUID:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C3C750;
  block[3] = &unk_1E86E6CA8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(mutexQueue, block);
}

- (void)setCompanionCountryCode:(id)a3 requestParams:(id)a4 reply:(id)a5
{
  v22[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (a3)
  {
    v21 = @"CountryCode";
    v22[0] = a3;
    v11 = MEMORY[0x1E695DF20];
    v12 = a3;
    v13 = [v11 dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1E0C3CCE8;
    v19[3] = &unk_1E86E6A50;
    v14 = &v20;
    v20 = v10;
    [(CWFXPCConnection *)self __addXPCRequestWithType:23 info:v13 requestParams:v8 reply:v19];
  }

  else
  {
    replyQueue = self->_replyQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0C3CD00;
    block[3] = &unk_1E86E6AF0;
    v14 = &v18;
    v18 = v9;
    dispatch_async(replyQueue, block);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)queryCurrentKnownNetworkProfileWithRequestParams:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1E0C3CE9C;
  v9[3] = &unk_1E86E6DC0;
  objc_copyWeak(&v11, &location);
  v8 = v7;
  v10 = v8;
  [(CWFXPCConnection *)self __addXPCGetRequestWithType:58 requestParams:v6 reply:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)queryCurrentScanResultWithRequestParams:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1E0C3D08C;
  v9[3] = &unk_1E86E6DE8;
  objc_copyWeak(&v11, &location);
  v8 = v7;
  v10 = v8;
  [(CWFXPCConnection *)self __addXPCGetRequestWithType:57 requestParams:v6 reply:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)querySupportedChannelsWithCountryCode:(id)a3 requestParams:(id)a4 reply:(id)a5
{
  v8 = a5;
  v9 = MEMORY[0x1E695DF90];
  v10 = a4;
  v11 = a3;
  v12 = [v9 dictionary];
  [v12 setObject:v11 forKeyedSubscript:@"CountryCode"];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1E0C3D3E4;
  v14[3] = &unk_1E86E6A50;
  v15 = v8;
  v13 = v8;
  [(CWFXPCConnection *)self __addXPCRequestWithType:15 info:v12 requestParams:v10 reply:v14];
}

- (id)__filterScanResultsForPrivacy:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CWFXPCConnection *)self __allowXPCRequestWithType:7 error:0];
  v6 = [(CWFXPCConnection *)self __allowXPCRequestWithType:9 error:0];
  v7 = [(CWFXPCConnection *)self __allowXPCRequestWithType:22 error:0];
  v19 = [MEMORY[0x1E695DF70] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = objc_autoreleasePoolPush();
        v15 = [(CWFXPCConnection *)self __privacyFilteredScanResult:v13 allowSSID:v5 allowBSSID:v6 allowCountryCode:v7];
        if (v15)
        {
          [v19 addObject:v15];
        }

        objc_autoreleasePoolPop(v14);
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v16 = [v19 copy];
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)__filterNetworkProfilesForPrivacy:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CWFXPCConnection *)self __allowXPCRequestWithType:7 error:0];
  v6 = [(CWFXPCConnection *)self __allowXPCRequestWithType:9 error:0];
  v7 = [MEMORY[0x1E695DF70] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = objc_autoreleasePoolPush();
        v15 = [(CWFXPCConnection *)self __privacyFilteredNetworkProfile:v13 allowSSID:v5 allowBSSID:v6, v19];
        if (v15)
        {
          [v7 addObject:v15];
        }

        objc_autoreleasePoolPop(v14);
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v16 = [v7 copy];
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)__matchedScanResultsWithKnownNetworkProfiles:(id)a3 scanResults:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DF70] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = objc_autoreleasePoolPush();
        v15 = sub_1E0BED85C(v13, v5);
        if (v15)
        {
          v16 = [v13 scanResultWithMatchingKnownNetworkProfile:v15];
          [v7 addObject:v16];
        }

        else
        {
          [v7 addObject:{v13, v20}];
        }

        objc_autoreleasePoolPop(v14);
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v17 = [v7 copy];
  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (void)__matchKnownNetworksWithScanResults:(id)a3 parentXPCRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [v7 requestParameters];
  v9 = [v7 UUID];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1E0C3DDA0;
  v13[3] = &unk_1E86E6CF8;
  objc_copyWeak(&v16, &location);
  v10 = v6;
  v14 = v10;
  v11 = v7;
  v15 = v11;
  v12 = [(CWFXPCConnection *)self __addXPCRequestWithType:54 info:0 requestParams:v8 parentRequestUUID:v9 isParentRequest:0 reply:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)__sortScanResultsByAutoJoinPreference:(id)a3 withParameters:(id)a4 parentXPCRequest:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = sub_1E0C3E038;
  v21 = &unk_1E86E6E10;
  v22 = v10;
  v23 = v8;
  v24 = v9;
  v25 = self;
  v11 = v9;
  v12 = v8;
  v13 = v10;
  v14 = MEMORY[0x1E12EA400](&v18);
  v15 = [v13 requestParameters];
  v16 = [v13 UUID];
  v17 = [(CWFXPCConnection *)self __addXPCRequestWithType:57 info:0 requestParams:v15 parentRequestUUID:v16 isParentRequest:0 reply:v14];
}

- (void)__performFollowupANQPForPasspointScanResults:(id)a3 combinedScanResults:(id)a4 parameters:(id)a5 parentXPCRequest:(id)a6
{
  v31[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_alloc_init(CWFANQPParameters);
  v15 = [v12 ANQPElementIDListForPasspointScanResults];
  [(CWFANQPParameters *)v14 setANQPElementIDList:v15];

  -[CWFANQPParameters setAcceptableCacheAge:](v14, "setAcceptableCacheAge:", [v12 acceptableANQPCacheAgeForPasspointScanResults]);
  -[CWFANQPParameters setMaximumAge:](v14, "setMaximumAge:", [v12 maximumANQPAgeForPasspointScanResults]);
  [(CWFANQPParameters *)v14 setScanResults:v10];
  objc_initWeak(&location, self);
  v30 = @"ANQPParams";
  v31[0] = v14;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
  v17 = [v13 requestParameters];
  v18 = [v13 UUID];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = sub_1E0C3E43C;
  v24[3] = &unk_1E86E6E38;
  objc_copyWeak(&v28, &location);
  v19 = v11;
  v25 = v19;
  v20 = v12;
  v26 = v20;
  v21 = v13;
  v27 = v21;
  v22 = [(CWFXPCConnection *)self __addXPCRequestWithType:65 info:v16 requestParams:v17 parentRequestUUID:v18 isParentRequest:0 reply:v24];

  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);

  v23 = *MEMORY[0x1E69E9840];
}

- (id)__passpointScanResults:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 isPasspoint])
        {
          if (!v6)
          {
            v6 = [MEMORY[0x1E695DF70] array];
          }

          [v6 addObject:v9];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v10 = [v6 copy];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)__performScanWithParameters:(id)a3 parentXPCRequest:(id)a4
{
  v21[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v20 = @"ScanParams";
  v21[0] = v6;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  v9 = [v7 requestParameters];
  v10 = [v7 UUID];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1E0C3E91C;
  v15[3] = &unk_1E86E6CF8;
  objc_copyWeak(&v18, &location);
  v11 = v6;
  v16 = v11;
  v12 = v7;
  v17 = v12;
  v13 = [(CWFXPCConnection *)self __addXPCRequestWithType:64 info:v8 requestParams:v9 parentRequestUUID:v10 isParentRequest:0 reply:v15];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);

  v14 = *MEMORY[0x1E69E9840];
}

- (void)performScanWithParameters:(id)a3 requestParams:(id)a4 reply:(id)a5
{
  v31[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (!v8)
  {
    replyQueue = self->_replyQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0C3F03C;
    block[3] = &unk_1E86E6AF0;
    v20 = v10;
    dispatch_async(replyQueue, block);

    goto LABEL_8;
  }

  objc_initWeak(&location, self);
  v12 = [v8 ANQPElementIDListForPasspointScanResults];
  if (v12 || ([v8 sortByAutoJoinPreference] & 1) != 0)
  {
  }

  else if (([v8 includeMatchingKnownNetworkProfiles] & 1) == 0)
  {
    v28 = @"ScanParams";
    v29 = v8;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = sub_1E0C3EF54;
    v21[3] = &unk_1E86E6E60;
    v14 = &v23;
    objc_copyWeak(&v23, &location);
    v22 = v11;
    [(CWFXPCConnection *)self __addXPCRequestWithType:64 info:v15 requestParams:v9 reply:v21];
    v16 = &v22;
    goto LABEL_6;
  }

  v30 = @"ScanParams";
  v31[0] = v8;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = sub_1E0C3EE6C;
  v24[3] = &unk_1E86E6E60;
  v14 = &v26;
  objc_copyWeak(&v26, &location);
  v25 = v11;
  v15 = [(CWFXPCConnection *)self __addXPCRequestWithType:64 info:v13 requestParams:v9 parentRequestUUID:0 isParentRequest:1 reply:v24];

  [(CWFXPCConnection *)self __performScanWithParameters:v8 parentXPCRequest:v15];
  v16 = &v25;
LABEL_6:

  objc_destroyWeak(v14);
  objc_destroyWeak(&location);
LABEL_8:

  v18 = *MEMORY[0x1E69E9840];
}

- (void)__performANQPWithParameters:(id)a3 parentXPCRequest:(id)a4
{
  v21[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v20 = @"ANQPParams";
  v21[0] = v6;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  v9 = [v7 requestParameters];
  v10 = [v7 UUID];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1E0C3F2AC;
  v15[3] = &unk_1E86E6CF8;
  objc_copyWeak(&v18, &location);
  v11 = v6;
  v16 = v11;
  v12 = v7;
  v17 = v12;
  v13 = [(CWFXPCConnection *)self __addXPCRequestWithType:65 info:v8 requestParams:v9 parentRequestUUID:v10 isParentRequest:0 reply:v15];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);

  v14 = *MEMORY[0x1E69E9840];
}

- (void)performANQPWithParameters:(id)a3 requestParams:(id)a4 reply:(id)a5
{
  v25[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v8)
  {
    objc_initWeak(&location, self);
    if ([v8 includeMatchingKnownNetworkProfiles])
    {
      v12 = v21;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = sub_1E0C3F678;
      v21[3] = &unk_1E86E6E60;
      v13 = &v22;
      objc_copyWeak(&v22, &location);
      v21[4] = v11;
      v14 = [(CWFXPCConnection *)self __addXPCRequestWithType:65 info:0 requestParams:v9 parentRequestUUID:0 isParentRequest:1 reply:v21];
      [(CWFXPCConnection *)self __performANQPWithParameters:v8 parentXPCRequest:v14];
    }

    else
    {
      v24 = @"ANQPParams";
      v25[0] = v8;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
      v12 = v19;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = sub_1E0C3F760;
      v19[3] = &unk_1E86E6E60;
      v13 = &v20;
      objc_copyWeak(&v20, &location);
      v19[4] = v11;
      [(CWFXPCConnection *)self __addXPCRequestWithType:65 info:v14 requestParams:v9 reply:v19];
    }

    objc_destroyWeak(v13);
    objc_destroyWeak(&location);
  }

  else
  {
    replyQueue = self->_replyQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0C3F848;
    block[3] = &unk_1E86E6AF0;
    v18 = v10;
    dispatch_async(replyQueue, block);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)setChannel:(id)a3 requestParams:(id)a4 reply:(id)a5
{
  v22[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (a3)
  {
    v21 = @"Channel";
    v22[0] = a3;
    v11 = MEMORY[0x1E695DF20];
    v12 = a3;
    v13 = [v11 dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1E0C3FA88;
    v19[3] = &unk_1E86E6A50;
    v14 = &v20;
    v20 = v10;
    [(CWFXPCConnection *)self __addXPCRequestWithType:17 info:v13 requestParams:v8 reply:v19];
  }

  else
  {
    replyQueue = self->_replyQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0C3FAA0;
    block[3] = &unk_1E86E6AF0;
    v14 = &v18;
    v18 = v9;
    dispatch_async(replyQueue, block);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)performRangingWithPeerList:(id)a3 timeout:(unint64_t)a4 requestParams:(id)a5 reply:(id)a6
{
  v25[2] = *MEMORY[0x1E69E9840];
  v10 = a5;
  v11 = a6;
  v12 = v11;
  if (a3)
  {
    v25[0] = a3;
    v24[0] = @"RangingPeerList";
    v24[1] = @"RangingTimeout";
    v13 = MEMORY[0x1E696AD98];
    v14 = a3;
    v15 = [v13 numberWithUnsignedInteger:a4];
    v25[1] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = sub_1E0C40110;
    v22[3] = &unk_1E86E6A50;
    v17 = &v23;
    v23 = v12;
    [(CWFXPCConnection *)self __addXPCRequestWithType:69 info:v16 requestParams:v10 reply:v22];
  }

  else
  {
    replyQueue = self->_replyQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0C401B4;
    block[3] = &unk_1E86E6AF0;
    v17 = &v21;
    v21 = v11;
    dispatch_async(replyQueue, block);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)setRangingIdentifier:(id)a3 requestParams:(id)a4 reply:(id)a5
{
  v17[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    v16 = @"RangingIdentifier";
    v17[0] = v8;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  }

  else
  {
    v11 = 0;
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1E0C4039C;
  v14[3] = &unk_1E86E6A50;
  v12 = v10;
  v15 = v12;
  [(CWFXPCConnection *)self __addXPCRequestWithType:174 info:v11 requestParams:v9 reply:v14];
  if (v8)
  {
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)startAWDLPeerAssistedDiscoveryWithParameters:(id)a3 requestParams:(id)a4 reply:(id)a5
{
  v22[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (a3)
  {
    v21 = @"AWDLPeerAssistedDiscoveryParams";
    v22[0] = a3;
    v11 = MEMORY[0x1E695DF20];
    v12 = a3;
    v13 = [v11 dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1E0C40550;
    v19[3] = &unk_1E86E6A50;
    v14 = &v20;
    v20 = v10;
    [(CWFXPCConnection *)self __addXPCRequestWithType:66 info:v13 requestParams:v8 reply:v19];
  }

  else
  {
    replyQueue = self->_replyQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0C40568;
    block[3] = &unk_1E86E6AF0;
    v14 = &v18;
    v18 = v9;
    dispatch_async(replyQueue, block);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)stopAWDLPeerAssistedDiscoveryWithRequestParams:(id)a3 reply:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1E0C406B4;
  v8[3] = &unk_1E86E6A50;
  v9 = v6;
  v7 = v6;
  [(CWFXPCConnection *)self __addXPCRequestWithType:67 info:0 requestParams:a3 reply:v8];
}

- (id)__shouldPerformPreAssociation6GHzFollowupScan:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (!v3 || ([v3 isFILSDiscoveryFrame] & 1) != 0 || (objc_msgSend(v4, "channel"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "is6GHz"), v5, (v6 & 1) != 0))
  {
    v7 = 0;
    goto LABEL_28;
  }

  v7 = [v4 RNRBSSList];
  if (![v7 count])
  {
LABEL_28:
    v10 = 0;
    goto LABEL_24;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v7;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (!v8)
  {
    v10 = 0;
    goto LABEL_23;
  }

  v9 = v8;
  v10 = 0;
  v11 = *v21;
  while (2)
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v21 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v13 = *(*(&v20 + 1) + 8 * i);
      v14 = [v13 channel];
      v15 = [v14 is6GHz];

      if (v15)
      {
        v16 = [v13 shortSSID];
        if (v16)
        {
          if (v16 != [v4 shortSSID])
          {
            continue;
          }
        }

        else if (([v13 isSameSSID] & 1) == 0)
        {
          continue;
        }

        if ([v13 isColocatedAP])
        {
          v17 = v13;

          v10 = v17;
          goto LABEL_23;
        }

        if (!v10)
        {
          v10 = v13;
        }
      }
    }

    v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      continue;
    }

    break;
  }

LABEL_23:

LABEL_24:
  v18 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)__perform6GHzFollowupScanAndAssociateWithParameters:(id)a3 BSS:(id)a4 parentXPCRequest:(id)a5
{
  v32[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(CWFScanParameters);
  v12 = [v8 scanResult];
  v13 = [v12 networkName];
  [(CWFScanParameters *)v11 setSSID:v13];

  v14 = [v9 BSSID];
  [(CWFScanParameters *)v11 setBSSID:v14];

  v15 = [v9 channel];
  v32[0] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
  [(CWFScanParameters *)v11 setChannels:v16];

  [(CWFScanParameters *)v11 setBSSType:3];
  [(CWFScanParameters *)v11 setIncludeHiddenNetworks:0];
  [(CWFScanParameters *)v11 setAcceptableCacheAge:0];
  [(CWFScanParameters *)v11 setScanType:1];
  if ([v9 isUPRActive])
  {
    v17 = 32;
  }

  else
  {
    v17 = 1056;
  }

  [(CWFScanParameters *)v11 setScanFlags:v17];
  objc_initWeak(&location, self);
  v30 = @"ScanParams";
  v31 = v11;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
  v19 = [v10 requestParameters];
  v20 = [v10 UUID];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = sub_1E0C40B9C;
  v25[3] = &unk_1E86E6CF8;
  objc_copyWeak(&v28, &location);
  v21 = v8;
  v26 = v21;
  v22 = v10;
  v27 = v22;
  v23 = [(CWFXPCConnection *)self __addXPCRequestWithType:64 info:v18 requestParams:v19 parentRequestUUID:v20 isParentRequest:0 reply:v25];

  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);

  v24 = *MEMORY[0x1E69E9840];
}

- (void)associateWithParameters:(id)a3 requestParams:(id)a4 reply:(id)a5
{
  v28[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v8)
  {
    v12 = [v8 scanResult];
    v13 = [(CWFXPCConnection *)self __shouldPerformPreAssociation6GHzFollowupScan:v12];

    if (v13)
    {
      v27 = @"AssocParams";
      v28[0] = v8;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = sub_1E0C41018;
      v23[3] = &unk_1E86E6A50;
      v15 = &v24;
      v24 = v11;
      v16 = [(CWFXPCConnection *)self __addXPCRequestWithType:62 info:v14 requestParams:v9 parentRequestUUID:0 isParentRequest:1 reply:v23];

      [(CWFXPCConnection *)self __perform6GHzFollowupScanAndAssociateWithParameters:v8 BSS:v13 parentXPCRequest:v16];
    }

    else
    {
      v25 = @"AssocParams";
      v26 = v8;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = sub_1E0C41030;
      v21[3] = &unk_1E86E6A50;
      v15 = &v22;
      v22 = v11;
      [(CWFXPCConnection *)self __addXPCRequestWithType:62 info:v16 requestParams:v9 reply:v21];
    }
  }

  else
  {
    replyQueue = self->_replyQueue;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1E0C41048;
    v19[3] = &unk_1E86E6AF0;
    v20 = v10;
    dispatch_async(replyQueue, v19);
    v13 = v20;
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)disassociateWithReason:(int64_t)a3 requestParams:(id)a4 reply:(id)a5
{
  v18[1] = *MEMORY[0x1E69E9840];
  v8 = a5;
  v17 = @"DisassocReason";
  v9 = MEMORY[0x1E696AD98];
  v10 = a4;
  v11 = [v9 numberWithInteger:a3];
  v18[0] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1E0C41234;
  v15[3] = &unk_1E86E6A50;
  v16 = v8;
  v13 = v8;
  [(CWFXPCConnection *)self __addXPCRequestWithType:63 info:v12 requestParams:v10 reply:v15];

  v14 = *MEMORY[0x1E69E9840];
}

- (void)queryKnownNetworkProfileMatchingNetworkProfile:(id)a3 requestParams:(id)a4 reply:(id)a5
{
  v22[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v8)
  {
    objc_initWeak(&location, self);
    v21 = @"NetworkProfile";
    v22[0] = v8;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1E0C415A0;
    v17[3] = &unk_1E86E6E60;
    objc_copyWeak(&v19, &location);
    v18 = v11;
    [(CWFXPCConnection *)self __addXPCRequestWithType:55 info:v12 requestParams:v9 reply:v17];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  else
  {
    replyQueue = self->_replyQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0C416C0;
    block[3] = &unk_1E86E6AF0;
    v16 = v10;
    dispatch_async(replyQueue, block);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)queryKnownNetworkProfileMatchingScanResult:(id)a3 requestParams:(id)a4 reply:(id)a5
{
  v22[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v8)
  {
    objc_initWeak(&location, self);
    v21 = @"ScanResult";
    v22[0] = v8;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1E0C41954;
    v17[3] = &unk_1E86E6E60;
    objc_copyWeak(&v19, &location);
    v18 = v11;
    [(CWFXPCConnection *)self __addXPCRequestWithType:56 info:v12 requestParams:v9 reply:v17];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  else
  {
    replyQueue = self->_replyQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0C41A74;
    block[3] = &unk_1E86E6AF0;
    v16 = v10;
    dispatch_async(replyQueue, block);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)queryKnownNetworkProfilesWithProperties:(id)a3 requestParams:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E695DF90] dictionary];
  [v11 setObject:v8 forKeyedSubscript:@"NetworkProfileProperties"];
  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1E0C41C5C;
  v13[3] = &unk_1E86E6E60;
  objc_copyWeak(&v15, &location);
  v12 = v10;
  v14 = v12;
  [(CWFXPCConnection *)self __addXPCRequestWithType:54 info:v11 requestParams:v9 reply:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)addKnownNetworkProfile:(id)a3 requestParams:(id)a4 reply:(id)a5
{
  v22[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (a3)
  {
    v21 = @"NetworkProfile";
    v22[0] = a3;
    v11 = MEMORY[0x1E695DF20];
    v12 = a3;
    v13 = [v11 dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1E0C41EE0;
    v19[3] = &unk_1E86E6A50;
    v14 = &v20;
    v20 = v10;
    [(CWFXPCConnection *)self __addXPCRequestWithType:59 info:v13 requestParams:v8 reply:v19];
  }

  else
  {
    replyQueue = self->_replyQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0C41EF8;
    block[3] = &unk_1E86E6AF0;
    v14 = &v18;
    v18 = v9;
    dispatch_async(replyQueue, block);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)updateKnownNetworkProfile:(id)a3 properties:(id)a4 OSSpecificKeys:(id)a5 requestParams:(id)a6 reply:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = v16;
  if (v12)
  {
    v18 = [MEMORY[0x1E695DF90] dictionary];
    [v18 setObject:v12 forKeyedSubscript:@"NetworkProfile"];
    [v18 setObject:v13 forKeyedSubscript:@"NetworkProfileProperties"];
    [v18 setObject:v14 forKeyedSubscript:@"OSSpecificKeys"];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = sub_1E0C42154;
    v22[3] = &unk_1E86E6A50;
    v23 = v17;
    [(CWFXPCConnection *)self __addXPCRequestWithType:61 info:v18 requestParams:v15 reply:v22];
  }

  else
  {
    replyQueue = self->_replyQueue;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_1E0C4216C;
    v20[3] = &unk_1E86E6AF0;
    v21 = v16;
    dispatch_async(replyQueue, v20);
    v18 = v21;
  }
}

- (void)removeKnownNetworkProfile:(id)a3 reason:(int64_t)a4 requestParams:(id)a5 reply:(id)a6
{
  v25[2] = *MEMORY[0x1E69E9840];
  v10 = a5;
  v11 = a6;
  v12 = v11;
  if (a3)
  {
    v25[0] = a3;
    v24[0] = @"NetworkProfile";
    v24[1] = @"RemoveReason";
    v13 = MEMORY[0x1E696AD98];
    v14 = a3;
    v15 = [v13 numberWithInteger:a4];
    v25[1] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = sub_1E0C423E4;
    v22[3] = &unk_1E86E6A50;
    v17 = &v23;
    v23 = v12;
    [(CWFXPCConnection *)self __addXPCRequestWithType:60 info:v16 requestParams:v10 reply:v22];
  }

  else
  {
    replyQueue = self->_replyQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0C423FC;
    block[3] = &unk_1E86E6AF0;
    v17 = &v21;
    v21 = v11;
    dispatch_async(replyQueue, block);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)setThermalIndex:(int64_t)a3 requestParams:(id)a4 reply:(id)a5
{
  v18[1] = *MEMORY[0x1E69E9840];
  v8 = a5;
  v17 = @"ThermalIndex";
  v9 = MEMORY[0x1E696AD98];
  v10 = a4;
  v11 = [v9 numberWithInteger:a3];
  v18[0] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1E0C42608;
  v15[3] = &unk_1E86E6A50;
  v16 = v8;
  v13 = v8;
  [(CWFXPCConnection *)self __addXPCRequestWithType:36 info:v12 requestParams:v10 reply:v15];

  v14 = *MEMORY[0x1E69E9840];
}

- (void)performAutoJoinWithParameters:(id)a3 requestParams:(id)a4 reply:(id)a5
{
  v19[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v8;
  v12 = v11;
  if (!v11)
  {
    v12 = objc_alloc_init(CWFAutoJoinParameters);
    [(CWFAutoJoinParameters *)v12 setTrigger:16];
    [(CWFAutoJoinParameters *)v12 setMode:1];
  }

  v18 = @"AutoJoinParams";
  v19[0] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1E0C429CC;
  v16[3] = &unk_1E86E6A50;
  v17 = v10;
  v14 = v10;
  [(CWFXPCConnection *)self __addXPCRequestWithType:177 info:v13 requestParams:v9 reply:v16];

  v15 = *MEMORY[0x1E69E9840];
}

- (void)setAutoHotspotMode:(int64_t)a3 requestParams:(id)a4 reply:(id)a5
{
  v18[1] = *MEMORY[0x1E69E9840];
  v8 = a5;
  v17 = @"AutoHotspotMode";
  v9 = MEMORY[0x1E696AD98];
  v10 = a4;
  v11 = [v9 numberWithInteger:a3];
  v18[0] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1E0C42CC4;
  v15[3] = &unk_1E86E6A50;
  v16 = v8;
  v13 = v8;
  [(CWFXPCConnection *)self __addXPCRequestWithType:183 info:v12 requestParams:v10 reply:v15];

  v14 = *MEMORY[0x1E69E9840];
}

- (void)performSensingWithParameters:(id)a3 requestParams:(id)a4 reply:(id)a5
{
  v22[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (a3)
  {
    v21 = @"SensingParams";
    v22[0] = a3;
    v11 = MEMORY[0x1E695DF20];
    v12 = a3;
    v13 = [v11 dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1E0C42E98;
    v19[3] = &unk_1E86E6A50;
    v14 = &v20;
    v20 = v10;
    [(CWFXPCConnection *)self __addXPCRequestWithType:188 info:v13 requestParams:v8 reply:v19];
  }

  else
  {
    replyQueue = self->_replyQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0C42F3C;
    block[3] = &unk_1E86E6AF0;
    v14 = &v18;
    v18 = v9;
    dispatch_async(replyQueue, block);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)performNearbyDeviceDiscovery:(id)a3 requestParams:(id)a4 reply:(id)a5
{
  v22[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (a3)
  {
    v21 = @"NDDParams";
    v22[0] = a3;
    v11 = MEMORY[0x1E695DF20];
    v12 = a3;
    v13 = [v11 dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1E0C4317C;
    v19[3] = &unk_1E86E6A50;
    v14 = &v20;
    v20 = v10;
    [(CWFXPCConnection *)self __addXPCRequestWithType:238 info:v13 requestParams:v8 reply:v19];
  }

  else
  {
    replyQueue = self->_replyQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0C43194;
    block[3] = &unk_1E86E6AF0;
    v14 = &v18;
    v18 = v9;
    dispatch_async(replyQueue, block);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)setUserSettings:(id)a3 properties:(id)a4 requestParams:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (v10)
  {
    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v15 setObject:v10 forKey:@"UserSettings"];
    if (v11)
    {
      [v15 setObject:v11 forKey:@"UserSettingsProperties"];
    }

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1E0C433D0;
    v19[3] = &unk_1E86E6A50;
    v20 = v14;
    [(CWFXPCConnection *)self __addXPCRequestWithType:190 info:v15 requestParams:v12 reply:v19];
  }

  else
  {
    replyQueue = self->_replyQueue;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1E0C433E8;
    v17[3] = &unk_1E86E6AF0;
    v18 = v13;
    dispatch_async(replyQueue, v17);
    v15 = v18;
  }
}

- (void)resetAutoJoinStatisticsWithRequestParams:(id)a3 reply:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1E0C43554;
  v8[3] = &unk_1E86E6A50;
  v9 = v6;
  v7 = v6;
  [(CWFXPCConnection *)self __addXPCRequestWithType:195 info:0 requestParams:a3 reply:v8];
}

- (void)updateKnownBSS:(id)a3 knownNetworkProfile:(id)a4 properties:(id)a5 OSSpecificKeys:(id)a6 requestParams:(id)a7 reply:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = v19;
  if (v14 && v15)
  {
    v21 = [MEMORY[0x1E695DF90] dictionary];
    [v21 setObject:v15 forKeyedSubscript:@"NetworkProfile"];
    [v21 setObject:v14 forKeyedSubscript:@"BSS"];
    [v21 setObject:v16 forKeyedSubscript:@"BSSProperties"];
    [v21 setObject:v17 forKeyedSubscript:@"OSSpecificKeys"];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = sub_1E0C437C4;
    v25[3] = &unk_1E86E6A50;
    v26 = v20;
    [(CWFXPCConnection *)self __addXPCRequestWithType:200 info:v21 requestParams:v18 reply:v25];
  }

  else
  {
    replyQueue = self->_replyQueue;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = sub_1E0C437DC;
    v23[3] = &unk_1E86E6AF0;
    v24 = v19;
    dispatch_async(replyQueue, v23);
    v21 = v24;
  }
}

- (void)addKnownBSS:(id)a3 knownNetworkProfile:(id)a4 requestParams:(id)a5 reply:(id)a6
{
  v27[2] = *MEMORY[0x1E69E9840];
  v10 = a5;
  v11 = a6;
  v12 = v11;
  if (a3 && a4)
  {
    v26[0] = @"NetworkProfile";
    v26[1] = @"BSS";
    v27[0] = a4;
    v27[1] = a3;
    v13 = MEMORY[0x1E695DF20];
    v14 = a4;
    v15 = a3;
    v16 = [v13 dictionaryWithObjects:v27 forKeys:v26 count:2];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = sub_1E0C43A48;
    v24[3] = &unk_1E86E6A50;
    v17 = &v25;
    v25 = v12;
    [(CWFXPCConnection *)self __addXPCRequestWithType:198 info:v16 requestParams:v10 reply:v24];
  }

  else
  {
    replyQueue = self->_replyQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0C43A60;
    block[3] = &unk_1E86E6AF0;
    v17 = &v23;
    v23 = v11;
    v19 = a4;
    v20 = a3;
    dispatch_async(replyQueue, block);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)removeKnownBSS:(id)a3 knownNetworkProfile:(id)a4 requestParams:(id)a5 reply:(id)a6
{
  v27[2] = *MEMORY[0x1E69E9840];
  v10 = a5;
  v11 = a6;
  v12 = v11;
  if (a3 && a4)
  {
    v26[0] = @"NetworkProfile";
    v26[1] = @"BSS";
    v27[0] = a4;
    v27[1] = a3;
    v13 = MEMORY[0x1E695DF20];
    v14 = a4;
    v15 = a3;
    v16 = [v13 dictionaryWithObjects:v27 forKeys:v26 count:2];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = sub_1E0C43CCC;
    v24[3] = &unk_1E86E6A50;
    v17 = &v25;
    v25 = v12;
    [(CWFXPCConnection *)self __addXPCRequestWithType:199 info:v16 requestParams:v10 reply:v24];
  }

  else
  {
    replyQueue = self->_replyQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0C43CE4;
    block[3] = &unk_1E86E6AF0;
    v17 = &v23;
    v23 = v11;
    v19 = a4;
    v20 = a3;
    dispatch_async(replyQueue, block);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)queryPasswordForKnownNetworkProfile:(id)a3 requestParams:(id)a4 reply:(id)a5
{
  v22[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (a3)
  {
    v21 = @"NetworkProfile";
    v22[0] = a3;
    v11 = MEMORY[0x1E695DF20];
    v12 = a3;
    v13 = [v11 dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1E0C43F20;
    v19[3] = &unk_1E86E6A50;
    v14 = &v20;
    v20 = v10;
    [(CWFXPCConnection *)self __addXPCRequestWithType:201 info:v13 requestParams:v8 reply:v19];
  }

  else
  {
    replyQueue = self->_replyQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0C43FC4;
    block[3] = &unk_1E86E6AF0;
    v14 = &v18;
    v18 = v9;
    dispatch_async(replyQueue, block);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)setPassword:(id)a3 knownNetworkProfile:(id)a4 requestParams:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (v11)
  {
    v15 = [MEMORY[0x1E695DF90] dictionary];
    [v15 setObject:v11 forKeyedSubscript:@"NetworkProfile"];
    [v15 setObject:v10 forKeyedSubscript:@"Password"];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1E0C441F4;
    v19[3] = &unk_1E86E6A50;
    v20 = v14;
    [(CWFXPCConnection *)self __addXPCRequestWithType:202 info:v15 requestParams:v12 reply:v19];
  }

  else
  {
    replyQueue = self->_replyQueue;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1E0C4420C;
    v17[3] = &unk_1E86E6AF0;
    v18 = v13;
    dispatch_async(replyQueue, v17);
    v15 = v18;
  }
}

- (void)queryBeaconCacheWithRequestParams:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1E0C443FC;
  v9[3] = &unk_1E86E6E60;
  objc_copyWeak(&v11, &location);
  v8 = v7;
  v10 = v8;
  [(CWFXPCConnection *)self __addXPCRequestWithType:216 info:0 requestParams:v6 reply:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)queryBackgroundScanCacheWithRequestParams:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1E0C445E4;
  v9[3] = &unk_1E86E6E60;
  objc_copyWeak(&v11, &location);
  v8 = v7;
  v10 = v8;
  [(CWFXPCConnection *)self __addXPCRequestWithType:241 info:0 requestParams:v6 reply:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)setBackgroundScanConfiguration:(id)a3 requestParams:(id)a4 reply:(id)a5
{
  v22[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (a3)
  {
    v21 = @"BackgroundScanConfiguration";
    v22[0] = a3;
    v11 = MEMORY[0x1E695DF20];
    v12 = a3;
    v13 = [v11 dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1E0C44878;
    v19[3] = &unk_1E86E6A50;
    v14 = &v20;
    v20 = v10;
    [(CWFXPCConnection *)self __addXPCRequestWithType:244 info:v13 requestParams:v8 reply:v19];
  }

  else
  {
    replyQueue = self->_replyQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0C44890;
    block[3] = &unk_1E86E6AF0;
    v14 = &v18;
    v18 = v9;
    dispatch_async(replyQueue, block);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)setBlockedBands:(id)a3 requestParams:(id)a4 reply:(id)a5
{
  v22[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (a3)
  {
    v21 = @"BlockedBands";
    v22[0] = a3;
    v11 = MEMORY[0x1E695DF20];
    v12 = a3;
    v13 = [v11 dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1E0C44ADC;
    v19[3] = &unk_1E86E6A50;
    v14 = &v20;
    v20 = v10;
    [(CWFXPCConnection *)self __addXPCRequestWithType:218 info:v13 requestParams:v8 reply:v19];
  }

  else
  {
    replyQueue = self->_replyQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0C44AF4;
    block[3] = &unk_1E86E6AF0;
    v14 = &v18;
    v18 = v9;
    dispatch_async(replyQueue, block);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)startHostAPModeWithConfiguration:(id)a3 requestParams:(id)a4 reply:(id)a5
{
  v22[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (a3)
  {
    v21 = @"HostAPConfiguration";
    v22[0] = a3;
    v11 = MEMORY[0x1E695DF20];
    v12 = a3;
    v13 = [v11 dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1E0C44D30;
    v19[3] = &unk_1E86E6A50;
    v14 = &v20;
    v20 = v10;
    [(CWFXPCConnection *)self __addXPCRequestWithType:220 info:v13 requestParams:v8 reply:v19];
  }

  else
  {
    replyQueue = self->_replyQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0C44D48;
    block[3] = &unk_1E86E6AF0;
    v14 = &v18;
    v18 = v9;
    dispatch_async(replyQueue, block);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)stopHostAPModeWithRequestParams:(id)a3 reply:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1E0C44E94;
  v8[3] = &unk_1E86E6A50;
  v9 = v6;
  v7 = v6;
  [(CWFXPCConnection *)self __addXPCRequestWithType:221 info:0 requestParams:a3 reply:v8];
}

- (void)queryPrivateMACAddressForNetworkProfile:(id)a3 requestParams:(id)a4 reply:(id)a5
{
  v22[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (a3)
  {
    v21 = @"NetworkProfile";
    v22[0] = a3;
    v11 = MEMORY[0x1E695DF20];
    v12 = a3;
    v13 = [v11 dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1E0C45048;
    v19[3] = &unk_1E86E6A50;
    v14 = &v20;
    v20 = v10;
    [(CWFXPCConnection *)self __addXPCRequestWithType:222 info:v13 requestParams:v8 reply:v19];
  }

  else
  {
    replyQueue = self->_replyQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0C450EC;
    block[3] = &unk_1E86E6AF0;
    v14 = &v18;
    v18 = v9;
    dispatch_async(replyQueue, block);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)queryPrivateMACAddressModeForNetworkProfile:(id)a3 requestParams:(id)a4 reply:(id)a5
{
  v22[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (a3)
  {
    v21 = @"NetworkProfile";
    v22[0] = a3;
    v11 = MEMORY[0x1E695DF20];
    v12 = a3;
    v13 = [v11 dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1E0C4532C;
    v19[3] = &unk_1E86E6A50;
    v14 = &v20;
    v20 = v10;
    [(CWFXPCConnection *)self __addXPCRequestWithType:223 info:v13 requestParams:v8 reply:v19];
  }

  else
  {
    replyQueue = self->_replyQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0C453D0;
    block[3] = &unk_1E86E6AF0;
    v14 = &v18;
    v18 = v9;
    dispatch_async(replyQueue, block);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)setPrivateMACAddressMode:(int64_t)a3 networkProfile:(id)a4 requestParams:(id)a5 reply:(id)a6
{
  v25[2] = *MEMORY[0x1E69E9840];
  v10 = a5;
  v11 = a6;
  v12 = v11;
  if (a4)
  {
    v25[0] = a4;
    v24[0] = @"NetworkProfile";
    v24[1] = @"PrivateMACMode";
    v13 = MEMORY[0x1E696AD98];
    v14 = a4;
    v15 = [v13 numberWithInteger:a3];
    v25[1] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = sub_1E0C4564C;
    v22[3] = &unk_1E86E6A50;
    v17 = &v23;
    v23 = v12;
    [(CWFXPCConnection *)self __addXPCRequestWithType:224 info:v16 requestParams:v10 reply:v22];
  }

  else
  {
    replyQueue = self->_replyQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0C45664;
    block[3] = &unk_1E86E6AF0;
    v17 = &v21;
    v21 = v11;
    dispatch_async(replyQueue, block);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)queryPrivateMACAddressModeSystemSettingWithRequestParams:(id)a3 reply:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1E0C457B0;
  v8[3] = &unk_1E86E6A50;
  v9 = v6;
  v7 = v6;
  [(CWFXPCConnection *)self __addXPCRequestWithType:225 info:0 requestParams:a3 reply:v8];
}

- (void)setPrivateMACAddressModeSystemSetting:(int64_t)a3 requestParams:(id)a4 reply:(id)a5
{
  v18[1] = *MEMORY[0x1E69E9840];
  v8 = a5;
  v17 = @"PrivateMACMode";
  v9 = MEMORY[0x1E696AD98];
  v10 = a4;
  v11 = [v9 numberWithInteger:a3];
  v18[0] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1E0C459A0;
  v15[3] = &unk_1E86E6A50;
  v16 = v8;
  v13 = v8;
  [(CWFXPCConnection *)self __addXPCRequestWithType:226 info:v12 requestParams:v10 reply:v15];

  v14 = *MEMORY[0x1E69E9840];
}

- (void)queryIsQuickProbeRequiredForNetworkProfile:(id)a3 requestParams:(id)a4 reply:(id)a5
{
  v22[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (a3)
  {
    v21 = @"NetworkProfile";
    v22[0] = a3;
    v11 = MEMORY[0x1E695DF20];
    v12 = a3;
    v13 = [v11 dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1E0C45DE4;
    v19[3] = &unk_1E86E6A50;
    v14 = &v20;
    v20 = v10;
    [(CWFXPCConnection *)self __addXPCRequestWithType:228 info:v13 requestParams:v8 reply:v19];
  }

  else
  {
    replyQueue = self->_replyQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0C45E88;
    block[3] = &unk_1E86E6AF0;
    v14 = &v18;
    v18 = v9;
    dispatch_async(replyQueue, block);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)setLQMConfiguration:(id)a3 requestParams:(id)a4 reply:(id)a5
{
  v22[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (a3)
  {
    v21 = @"LQMConfiguration";
    v22[0] = a3;
    v11 = MEMORY[0x1E695DF20];
    v12 = a3;
    v13 = [v11 dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1E0C46378;
    v19[3] = &unk_1E86E6A50;
    v14 = &v20;
    v20 = v10;
    [(CWFXPCConnection *)self __addXPCRequestWithType:235 info:v13 requestParams:v8 reply:v19];
  }

  else
  {
    replyQueue = self->_replyQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0C46390;
    block[3] = &unk_1E86E6AF0;
    v14 = &v18;
    v18 = v9;
    dispatch_async(replyQueue, block);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)setAutoJoinDenyListForNetwork:(id)a3 reason:(unint64_t)a4 requestParams:(id)a5 reply:(id)a6
{
  v21[2] = *MEMORY[0x1E69E9840];
  v10 = a6;
  v20[0] = @"NetworkProfile";
  v20[1] = @"AutoJoinDenyListAddReason";
  v21[0] = a3;
  v11 = MEMORY[0x1E696AD98];
  v12 = a5;
  v13 = a3;
  v14 = [v11 numberWithUnsignedInteger:a4];
  v21[1] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_1E0C465C4;
  v18[3] = &unk_1E86E6A50;
  v19 = v10;
  v16 = v10;
  [(CWFXPCConnection *)self __addXPCRequestWithType:246 info:v15 requestParams:v12 reply:v18];

  v17 = *MEMORY[0x1E69E9840];
}

- (void)clearAutoJoinDenyListForNetwork:(id)a3 reason:(unint64_t)a4 requestParams:(id)a5 reply:(id)a6
{
  v21[2] = *MEMORY[0x1E69E9840];
  v10 = a6;
  v20[0] = @"NetworkProfile";
  v20[1] = @"AutoJoinDenyListRemoveReason";
  v21[0] = a3;
  v11 = MEMORY[0x1E696AD98];
  v12 = a5;
  v13 = a3;
  v14 = [v11 numberWithUnsignedInteger:a4];
  v21[1] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_1E0C467DC;
  v18[3] = &unk_1E86E6A50;
  v19 = v10;
  v16 = v10;
  [(CWFXPCConnection *)self __addXPCRequestWithType:247 info:v15 requestParams:v12 reply:v18];

  v17 = *MEMORY[0x1E69E9840];
}

- (void)queryKnownNetworkInfoForLocalNetworkPromptWithOptions:(id)a3 requestParams:(id)a4 reply:(id)a5
{
  v17[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    v16 = @"KnownNetworkInfoOptions";
    v17[0] = v8;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  }

  else
  {
    v11 = 0;
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1E0C469C0;
  v14[3] = &unk_1E86E6A50;
  v15 = v10;
  v12 = v10;
  [(CWFXPCConnection *)self __addXPCRequestWithType:248 info:v11 requestParams:v9 reply:v14];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)queryNetworkSignatureForNetwork:(id)a3 isBSSID:(BOOL)a4 requestParams:(id)a5 reply:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (v10)
  {
    v13 = [MEMORY[0x1E695DF90] dictionary];
    v14 = v13;
    v15 = CWFBSSPropertyBSSIDKey;
    if (!v8)
    {
      v15 = CWFNetworkProfilePropertySSIDKey;
    }

    [v13 setObject:v10 forKeyedSubscript:*v15];
  }

  else
  {
    v14 = 0;
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1E0C46B84;
  v17[3] = &unk_1E86E6A50;
  v18 = v12;
  v16 = v12;
  [(CWFXPCConnection *)self __addXPCRequestWithType:249 info:v14 requestParams:v11 reply:v17];
}

- (void)queryNetworkManagedByMDM:(id)a3 requestParams:(id)a4 reply:(id)a5
{
  v22[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (a3)
  {
    v21 = @"NetworkProfile";
    v22[0] = a3;
    v11 = MEMORY[0x1E695DF20];
    v12 = a3;
    v13 = [v11 dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1E0C46DC4;
    v19[3] = &unk_1E86E6A50;
    v14 = &v20;
    v20 = v10;
    [(CWFXPCConnection *)self __addXPCRequestWithType:250 info:v13 requestParams:v8 reply:v19];
  }

  else
  {
    replyQueue = self->_replyQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0C46E68;
    block[3] = &unk_1E86E6AF0;
    v14 = &v18;
    v18 = v9;
    dispatch_async(replyQueue, block);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)queryKnownNetworksInSameLanAs:(id)a3 requestParams:(id)a4 reply:(id)a5
{
  v17[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    v16 = @"NetworkName";
    v17[0] = v8;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  }

  else
  {
    v11 = 0;
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1E0C4705C;
  v14[3] = &unk_1E86E6A50;
  v15 = v10;
  v12 = v10;
  [(CWFXPCConnection *)self __addXPCRequestWithType:258 info:v11 requestParams:v9 reply:v14];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)queryKnownNetworksWithNetworkSignature:(id)a3 requestParams:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    v11 = [MEMORY[0x1E695DF90] dictionary];
    v12 = [v8 IPv4NetworkSignature];

    if (v12)
    {
      v13 = [v8 IPv4NetworkSignature];
      [v11 setObject:v13 forKeyedSubscript:@"IPv4NetworkSignature"];
    }

    v14 = [v8 IPv6NetworkSignature];

    if (v14)
    {
      v15 = [v8 IPv6NetworkSignature];
      [v11 setObject:v15 forKeyedSubscript:@"IPv6NetworkSignature"];
    }
  }

  else
  {
    v11 = 0;
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1E0C47280;
  v17[3] = &unk_1E86E6A50;
  v18 = v10;
  v16 = v10;
  [(CWFXPCConnection *)self __addXPCRequestWithType:259 info:v11 requestParams:v9 reply:v17];
}

- (void)checkinWithRequestParams:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF90] dictionary];
  v9 = [(CWFXPCConnection *)self __wifiNetworkSharingClientIDWithRequestParameters:v6];
  if (v9)
  {
    [v8 setObject:v9 forKeyedSubscript:@"WiFiNetworkSharingClientID"];
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1E0C47434;
  v11[3] = &unk_1E86E6A50;
  v12 = v7;
  v10 = v7;
  [(CWFXPCConnection *)self __addXPCRequestWithType:252 info:v8 requestParams:v6 reply:v11];
}

- (void)sendXPCEvent:(id)a3 requestParams:(id)a4 reply:(id)a5
{
  v22[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (a3)
  {
    v21 = @"XPCEvent";
    v22[0] = a3;
    v11 = MEMORY[0x1E695DF20];
    v12 = a3;
    v13 = [v11 dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1E0C475E8;
    v19[3] = &unk_1E86E6A50;
    v14 = &v20;
    v20 = v10;
    [(CWFXPCConnection *)self __addXPCRequestWithType:253 info:v13 requestParams:v8 reply:v19];
  }

  else
  {
    replyQueue = self->_replyQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0C47600;
    block[3] = &unk_1E86E6AF0;
    v14 = &v18;
    v18 = v9;
    dispatch_async(replyQueue, block);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)getNearbyRecommendedNetworksWithRequestParams:(id)a3 reply:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1E0C4774C;
  v8[3] = &unk_1E86E6A50;
  v9 = v6;
  v7 = v6;
  [(CWFXPCConnection *)self __addXPCRequestWithType:260 info:0 requestParams:a3 reply:v8];
}

- (void)getRecommendedKnownNetworksWithRequestParams:(id)a3 reply:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1E0C4789C;
  v8[3] = &unk_1E86E6A50;
  v9 = v6;
  v7 = v6;
  [(CWFXPCConnection *)self __addXPCRequestWithType:266 info:0 requestParams:a3 reply:v8];
}

- (void)queryNearbyRecommendedNetworksAndReply:(id)a3
{
  v4 = a3;
  eventQueue = self->_eventQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E0C479D8;
  v7[3] = &unk_1E86E64C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(eventQueue, v7);
}

- (void)dumpLogs:(id)a3 requestParams:(id)a4 reply:(id)a5
{
  v22[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (a3)
  {
    v21 = @"DumpLogsURL";
    v22[0] = a3;
    v11 = MEMORY[0x1E695DF20];
    v12 = a3;
    v13 = [v11 dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1E0C47BD4;
    v19[3] = &unk_1E86E6A50;
    v14 = &v20;
    v20 = v10;
    [(CWFXPCConnection *)self __addXPCRequestWithType:254 info:v13 requestParams:v8 reply:v19];
  }

  else
  {
    replyQueue = self->_replyQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0C47BEC;
    block[3] = &unk_1E86E6AF0;
    v14 = &v18;
    v18 = v9;
    dispatch_async(replyQueue, block);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)rememberCloudNetworkProfile:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  eventQueue = self->_eventQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C47D50;
  block[3] = &unk_1E86E6CA8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(eventQueue, block);
}

- (void)forgetCloudNetworkProfile:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  eventQueue = self->_eventQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C47E74;
  block[3] = &unk_1E86E6CA8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(eventQueue, block);
}

- (void)getCloudNetworksWithRequestParams:(id)a3 reply:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1E0C47F80;
  v8[3] = &unk_1E86E6A50;
  v9 = v6;
  v7 = v6;
  [(CWFXPCConnection *)self __addXPCRequestWithType:255 info:0 requestParams:a3 reply:v8];
}

- (void)queryCloudNetworksAndReply:(id)a3
{
  v4 = a3;
  eventQueue = self->_eventQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E0C480BC;
  v7[3] = &unk_1E86E64C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(eventQueue, v7);
}

- (void)dumpLogs:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  eventQueue = self->_eventQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C481E0;
  block[3] = &unk_1E86E6CA8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(eventQueue, block);
}

- (void)queryCaptivePortalCredentialsForKnownNetworkProfile:(id)a3 requestParams:(id)a4 reply:(id)a5
{
  v22[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (a3)
  {
    v21 = @"NetworkProfile";
    v22[0] = a3;
    v11 = MEMORY[0x1E695DF20];
    v12 = a3;
    v13 = [v11 dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1E0C483DC;
    v19[3] = &unk_1E86E6A50;
    v14 = &v20;
    v20 = v10;
    [(CWFXPCConnection *)self __addXPCRequestWithType:262 info:v13 requestParams:v8 reply:v19];
  }

  else
  {
    replyQueue = self->_replyQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0C48480;
    block[3] = &unk_1E86E6AF0;
    v14 = &v18;
    v18 = v9;
    dispatch_async(replyQueue, block);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)setCaptivePortalCredentials:(id)a3 knownNetworkProfile:(id)a4 requestParams:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (v11)
  {
    v15 = [MEMORY[0x1E695DF90] dictionary];
    [v15 setObject:v11 forKeyedSubscript:@"NetworkProfile"];
    [v15 setObject:v10 forKeyedSubscript:@"CaptivePortalCredentials"];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1E0C486B0;
    v19[3] = &unk_1E86E6A50;
    v20 = v14;
    [(CWFXPCConnection *)self __addXPCRequestWithType:263 info:v15 requestParams:v12 reply:v19];
  }

  else
  {
    replyQueue = self->_replyQueue;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1E0C486C8;
    v17[3] = &unk_1E86E6AF0;
    v18 = v13;
    dispatch_async(replyQueue, v17);
    v15 = v18;
  }
}

- (void)queryCaptivePortalCredentialsForKnownNetworkProfile:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  eventQueue = self->_eventQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C4882C;
  block[3] = &unk_1E86E6CA8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(eventQueue, block);
}

- (void)setCaptivePortalCredentials:(id)a3 knownNetworkProfile:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  eventQueue = self->_eventQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1E0C48970;
  v15[3] = &unk_1E86E6C30;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(eventQueue, v15);
}

- (void)queryNetworkOfInterestHomeStateForKnownNetworkProfile:(id)a3 requestParams:(id)a4 reply:(id)a5
{
  v22[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (a3)
  {
    v21 = @"NetworkProfile";
    v22[0] = a3;
    v11 = MEMORY[0x1E695DF20];
    v12 = a3;
    v13 = [v11 dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1E0C48B70;
    v19[3] = &unk_1E86E6A50;
    v14 = &v20;
    v20 = v10;
    [(CWFXPCConnection *)self __addXPCRequestWithType:264 info:v13 requestParams:v8 reply:v19];
  }

  else
  {
    replyQueue = self->_replyQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0C48C14;
    block[3] = &unk_1E86E6AF0;
    v14 = &v18;
    v18 = v9;
    dispatch_async(replyQueue, block);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)queryNetworkOfInterestWorkStateForKnownNetworkProfile:(id)a3 requestParams:(id)a4 reply:(id)a5
{
  v22[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (a3)
  {
    v21 = @"NetworkProfile";
    v22[0] = a3;
    v11 = MEMORY[0x1E695DF20];
    v12 = a3;
    v13 = [v11 dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1E0C48E54;
    v19[3] = &unk_1E86E6A50;
    v14 = &v20;
    v20 = v10;
    [(CWFXPCConnection *)self __addXPCRequestWithType:265 info:v13 requestParams:v8 reply:v19];
  }

  else
  {
    replyQueue = self->_replyQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0C48EF8;
    block[3] = &unk_1E86E6AF0;
    v14 = &v18;
    v18 = v9;
    dispatch_async(replyQueue, block);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)confirmBrokenBackhaulUsingTimeout:(unint64_t)a3 count:(unint64_t)a4 requestParams:(id)a5 reply:(id)a6
{
  v21[2] = *MEMORY[0x1E69E9840];
  v10 = a6;
  v20[0] = @"ProbeTimeout";
  v11 = MEMORY[0x1E696AD98];
  v12 = a5;
  v13 = [v11 numberWithUnsignedInteger:a3];
  v21[0] = v13;
  v20[1] = @"ProbeCount";
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  v21[1] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_1E0C49140;
  v18[3] = &unk_1E86E6A50;
  v19 = v10;
  v16 = v10;
  [(CWFXPCConnection *)self __addXPCRequestWithType:271 info:v15 requestParams:v12 reply:v18];

  v17 = *MEMORY[0x1E69E9840];
}

- (void)nearbyConfirmBrokenBackhaulUsingTimeout:(unint64_t)a3 count:(unint64_t)a4 network:(id)a5 minimumCacheTimestamp:(unint64_t)a6 reply:(id)a7
{
  v12 = a5;
  v13 = a7;
  eventQueue = self->_eventQueue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1E0C492C4;
  v17[3] = &unk_1E86E6E88;
  v17[4] = self;
  v18 = v12;
  v21 = a4;
  v22 = a6;
  v19 = v13;
  v20 = a3;
  v15 = v13;
  v16 = v12;
  dispatch_async(eventQueue, v17);
}

- (void)allowBrokenBackhaulPersonalHotspotFallbackForNetwork:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  eventQueue = self->_eventQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C493F0;
  block[3] = &unk_1E86E6CA8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(eventQueue, block);
}

- (void)setUCMExtProfile:(id)a3 requestParams:(id)a4 error:(id)a5
{
  v22[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (a3)
  {
    v21 = @"UCMExtProfile";
    v22[0] = a3;
    v11 = MEMORY[0x1E695DF20];
    v12 = a3;
    v13 = [v11 dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1E0C495EC;
    v19[3] = &unk_1E86E6A50;
    v14 = &v20;
    v20 = v10;
    [(CWFXPCConnection *)self __addXPCRequestWithType:275 info:v13 requestParams:v8 reply:v19];
  }

  else
  {
    replyQueue = self->_replyQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0C49604;
    block[3] = &unk_1E86E6AF0;
    v14 = &v18;
    v18 = v9;
    dispatch_async(replyQueue, block);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)presentWiFiNetworkSharingAskToShareProxCardForClientID:(id)a3 accessoryName:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  eventQueue = self->_eventQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1E0C49788;
  v15[3] = &unk_1E86E6C30;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(eventQueue, v15);
}

- (void)presentWiFiNetworkSharingAuthorizationProxCardForClientID:(id)a3 accessoryName:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  eventQueue = self->_eventQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1E0C498D0;
  v15[3] = &unk_1E86E6C30;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(eventQueue, v15);
}

- (void)presentWiFiNetworkSharingAskToShareUserNotificationForClientID:(id)a3 network:(id)a4 accessoryName:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  eventQueue = self->_eventQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C49A44;
  block[3] = &unk_1E86E6EB0;
  block[4] = self;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  dispatch_async(eventQueue, block);
}

- (void)performWiFiNetworkSharingAccessoryScanWithReply:(id)a3
{
  v4 = a3;
  eventQueue = self->_eventQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E0C49B40;
  v7[3] = &unk_1E86E64C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(eventQueue, v7);
}

- (id)__wifiNetworkSharingClientIDWithRequestParameters:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 wifiNetworkSharingAccessoryID];
  if (!v5)
  {
    v6 = 0;
LABEL_17:
    v12 = 0;
    goto LABEL_10;
  }

  v6 = [(CWFXPCConnection *)self effectiveBundleID];
  if ([(CWFXPCConnection *)self isAppExtension])
  {
    v7 = [(CWFXPCConnection *)self containingAppBundleID];

    v6 = v7;
  }

  v8 = [v4 wifiNetworkSharingBundleIDOverride];

  if (!v8)
  {
    goto LABEL_9;
  }

  if ([(CWFXPCConnection *)self serviceType]!= 11 && [(CWFXPCConnection *)self serviceType]!= 1)
  {
    v9 = [(CWFXPCConnection *)self valueForEntitlement:0x1F5B99DA0];
    v10 = [v9 BOOLValue];

    if ((v10 & 1) == 0)
    {
      v16 = CWFGetOSLog();
      if (v16)
      {
        v17 = CWFGetOSLog();
      }

      else
      {
        v17 = MEMORY[0x1E69E9C10];
        v18 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [v4 wifiNetworkSharingBundleIDOverride];
        v20 = sub_1E0BECA98([(CWFXPCConnection *)self serviceType]);
        _os_log_send_and_compose_impl();
      }

      goto LABEL_17;
    }
  }

  v11 = [v4 wifiNetworkSharingBundleIDOverride];

  v6 = v11;
LABEL_9:
  v12 = [CWFWiFiNetworkSharingClientID clientIDWithAccessoryID:v5 bundleID:v6];
LABEL_10:
  v13 = v12;

  v14 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)wifiNetworkSharingNetworkListWithRequestParams:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CWFXPCConnection *)self __wifiNetworkSharingClientIDWithRequestParameters:v6];
  if (v8)
  {
    v9 = [MEMORY[0x1E695DF90] dictionary];
    [v9 setObject:v8 forKeyedSubscript:@"WiFiNetworkSharingClientID"];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1E0C49F80;
    v14[3] = &unk_1E86E6A50;
    v15 = v7;
    v10 = v7;
    [(CWFXPCConnection *)self __addXPCRequestWithType:281 info:v9 requestParams:v6 reply:v14];
  }

  else
  {
    replyQueue = self->_replyQueue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E0C4A024;
    v12[3] = &unk_1E86E6AF0;
    v13 = v7;
    v9 = v7;
    dispatch_async(replyQueue, v12);
    v10 = v13;
  }
}

- (void)wifiNetworkSharingAskToShareNetworkListWithRequestParams:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CWFXPCConnection *)self __wifiNetworkSharingClientIDWithRequestParameters:v6];
  if (v8)
  {
    v9 = [MEMORY[0x1E695DF90] dictionary];
    [v9 setObject:v8 forKeyedSubscript:@"WiFiNetworkSharingClientID"];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1E0C4A23C;
    v14[3] = &unk_1E86E6A50;
    v15 = v7;
    v10 = v7;
    [(CWFXPCConnection *)self __addXPCRequestWithType:284 info:v9 requestParams:v6 reply:v14];
  }

  else
  {
    replyQueue = self->_replyQueue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E0C4A2E0;
    v12[3] = &unk_1E86E6AF0;
    v13 = v7;
    v9 = v7;
    dispatch_async(replyQueue, v12);
    v10 = v13;
  }
}

- (void)askToShareWiFiNetworkSharingNetworkFromAppWithRequestParams:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CWFXPCConnection *)self __wifiNetworkSharingClientIDWithRequestParameters:v6];
  if (v8)
  {
    v9 = [MEMORY[0x1E695DF90] dictionary];
    [v9 setObject:v8 forKeyedSubscript:@"WiFiNetworkSharingClientID"];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1E0C4A4F8;
    v14[3] = &unk_1E86E6A50;
    v15 = v7;
    v10 = v7;
    [(CWFXPCConnection *)self __addXPCRequestWithType:277 info:v9 requestParams:v6 reply:v14];
  }

  else
  {
    replyQueue = self->_replyQueue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E0C4A5A0;
    v12[3] = &unk_1E86E6AF0;
    v13 = v7;
    v9 = v7;
    dispatch_async(replyQueue, v12);
    v10 = v13;
  }
}

- (void)askToShareWiFiNetworkSharingNetworkFromAppexWithRequestParams:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CWFXPCConnection *)self __wifiNetworkSharingClientIDWithRequestParameters:v6];
  if (v8)
  {
    v9 = [MEMORY[0x1E695DF90] dictionary];
    [v9 setObject:v8 forKeyedSubscript:@"WiFiNetworkSharingClientID"];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1E0C4A7B8;
    v14[3] = &unk_1E86E6A50;
    v15 = v7;
    v10 = v7;
    [(CWFXPCConnection *)self __addXPCRequestWithType:276 info:v9 requestParams:v6 reply:v14];
  }

  else
  {
    replyQueue = self->_replyQueue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E0C4A860;
    v12[3] = &unk_1E86E6AF0;
    v13 = v7;
    v9 = v7;
    dispatch_async(replyQueue, v12);
    v10 = v13;
  }
}

- (void)wifiNetworkSharingAskToShareStatusForNetworkID:(id)a3 requestParams:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CWFXPCConnection *)self __wifiNetworkSharingClientIDWithRequestParameters:v9];
  if (v11)
  {
    v12 = [MEMORY[0x1E695DF90] dictionary];
    [v12 setObject:v11 forKeyedSubscript:@"WiFiNetworkSharingClientID"];
    [v12 setObject:v8 forKeyedSubscript:@"WiFiNetworkSharingNetworkID"];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1E0C4AAA0;
    v17[3] = &unk_1E86E6A50;
    v18 = v10;
    v13 = v10;
    [(CWFXPCConnection *)self __addXPCRequestWithType:278 info:v12 requestParams:v9 reply:v17];
  }

  else
  {
    replyQueue = self->_replyQueue;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1E0C4AB64;
    v15[3] = &unk_1E86E6AF0;
    v16 = v10;
    v12 = v10;
    dispatch_async(replyQueue, v15);
    v13 = v16;
  }
}

- (void)setWiFiNetworkSharingAskToShareStatus:(int64_t)a3 networkID:(id)a4 requestParams:(id)a5 reply:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(CWFXPCConnection *)self __wifiNetworkSharingClientIDWithRequestParameters:v11];
  if (v13)
  {
    v14 = [MEMORY[0x1E695DF90] dictionary];
    [v14 setObject:v13 forKeyedSubscript:@"WiFiNetworkSharingClientID"];
    v15 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    [v14 setObject:v15 forKeyedSubscript:@"WiFiNetworkSharingAskToShareStatus"];

    [v14 setObject:v10 forKeyedSubscript:@"WiFiNetworkSharingNetworkID"];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_1E0C4ADE8;
    v20[3] = &unk_1E86E6A50;
    v21 = v12;
    v16 = v12;
    [(CWFXPCConnection *)self __addXPCRequestWithType:279 info:v14 requestParams:v11 reply:v20];
  }

  else
  {
    replyQueue = self->_replyQueue;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_1E0C4AE00;
    v18[3] = &unk_1E86E6AF0;
    v19 = v12;
    v14 = v12;
    dispatch_async(replyQueue, v18);
    v16 = v19;
  }
}

- (void)acknowledgeWiFiNetworkSharingNetworkListUpdate:(id)a3 requestParams:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CWFXPCConnection *)self __wifiNetworkSharingClientIDWithRequestParameters:v9];
  v12 = v11;
  if (v8 && v11)
  {
    v13 = [MEMORY[0x1E695DF90] dictionary];
    [v13 setObject:v12 forKeyedSubscript:@"WiFiNetworkSharingClientID"];
    [v13 setObject:v8 forKeyedSubscript:@"WiFiNetworkSharingNetworkListUpdate"];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_1E0C4B040;
    v18[3] = &unk_1E86E6A50;
    v19 = v10;
    v14 = v10;
    [(CWFXPCConnection *)self __addXPCRequestWithType:283 info:v13 requestParams:v9 reply:v18];
  }

  else
  {
    replyQueue = self->_replyQueue;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1E0C4B058;
    v16[3] = &unk_1E86E6AF0;
    v17 = v10;
    v13 = v10;
    dispatch_async(replyQueue, v16);
    v14 = v17;
  }
}

- (void)wifiNetworkSharingAuthorizationLevelWithRequestParams:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CWFXPCConnection *)self __wifiNetworkSharingClientIDWithRequestParameters:v6];
  if (v8)
  {
    v9 = [MEMORY[0x1E695DF90] dictionary];
    [v9 setObject:v8 forKeyedSubscript:@"WiFiNetworkSharingClientID"];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1E0C4B26C;
    v14[3] = &unk_1E86E6A50;
    v15 = v7;
    v10 = v7;
    [(CWFXPCConnection *)self __addXPCRequestWithType:287 info:v9 requestParams:v6 reply:v14];
  }

  else
  {
    replyQueue = self->_replyQueue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E0C4B310;
    v12[3] = &unk_1E86E6AF0;
    v13 = v7;
    v9 = v7;
    dispatch_async(replyQueue, v12);
    v10 = v13;
  }
}

- (void)requestWiFiNetworkSharingAuthorizationWithRequestParams:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CWFXPCConnection *)self __wifiNetworkSharingClientIDWithRequestParameters:v6];
  if (v8)
  {
    v9 = [MEMORY[0x1E695DF90] dictionary];
    [v9 setObject:v8 forKeyedSubscript:@"WiFiNetworkSharingClientID"];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1E0C4B528;
    v14[3] = &unk_1E86E6A50;
    v15 = v7;
    v10 = v7;
    [(CWFXPCConnection *)self __addXPCRequestWithType:289 info:v9 requestParams:v6 reply:v14];
  }

  else
  {
    replyQueue = self->_replyQueue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E0C4B5CC;
    v12[3] = &unk_1E86E6AF0;
    v13 = v7;
    v9 = v7;
    dispatch_async(replyQueue, v12);
    v10 = v13;
  }
}

@end