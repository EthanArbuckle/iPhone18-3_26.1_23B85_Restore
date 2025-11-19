@interface CWFXPCRequestProxy
- (BOOL)__allowXPCRequestWithoutAvailableInterface:(id)a3;
- (BOOL)__didFindMatching80211InterfaceForXPCRequest:(id)a3;
- (BOOL)isMonitoringEvents;
- (BOOL)isNon80211InterfaceName:(id)a3;
- (CWFAutoJoinManager)autoJoinManager;
- (CWFAutoJoinManager)autoJoinManagerCached;
- (CWFNetworkOfInterestManager)noiManager;
- (CWFPrivateMACManager)privateMACManager;
- (CWFXPCRequestProxy)init;
- (id)EAP8021XWithInterfaceName:(id)a3;
- (id)SCNetworkInterfaceWithInterfaceName:(id)a3;
- (id)SCNetworkServiceWithInterfaceName:(id)a3;
- (id)__EAP8021XWithInterfaceName:(id)a3;
- (id)__SCNetworkInterfaceWithInterfaceName:(id)a3;
- (id)__SCNetworkServiceWithInterfaceName:(id)a3;
- (id)__apple80211WithInterfaceName:(id)a3;
- (id)__autojoinStatusWithInterfaceName:(id)a3;
- (id)__cachedKnownNetwork;
- (id)__currentNetworkProfileWithInterfaceName:(id)a3;
- (id)__deviceUUID;
- (id)__hashedBSSID:(id)a3 XPCConnection:(id)a4 error:(id *)a5;
- (id)__hashedSSID:(id)a3 XPCConnection:(id)a4 error:(id *)a5;
- (id)__hotspotClientManager;
- (id)__interfaceNames;
- (id)__interfaceSpecificEventIDs:(id)a3;
- (id)__joinStatusWithInterfaceName:(id)a3;
- (id)__knownNetworkProfiles;
- (id)__linkDownNetworkWithInterfaceName:(id)a3;
- (id)__linkDownStatusWithInterfaceName:(id)a3;
- (id)__linkQualityMetricWithInterfaceName:(id)a3;
- (id)__networkStackMACAddressWithInterfaceName:(id)a3;
- (id)__noiManager;
- (id)__privateMACManager;
- (id)__queryMobileAssetA11:(id *)a3;
- (id)__queueForXPCRequest:(id)a3;
- (id)__roamStatusWithInterfaceName:(id)a3;
- (id)__userAutoJoinDisabled;
- (id)__vendorSpecificIdentifierForXPCConnection:(id)a3;
- (id)__virtualInterfaceNames;
- (id)__wifiInterfaceNames;
- (id)apple80211WithInterfaceName:(id)a3;
- (id)apple80211WithVirtualInterfaceRole:(int)a3 parentInterfaceName:(id)a4;
- (id)interfaceNames;
- (id)virtualInterfaceNames;
- (id)wifiInterfaceNames;
- (int)__defaultInterfaceRoleForRequestType:(int64_t)a3;
- (unint64_t)_updateCellularRankingState;
- (void)XPCManager:(id)a3 XPCConnection:(id)a4 canceledXPCRequestsWithUUID:(id)a5;
- (void)XPCManager:(id)a3 XPCConnection:(id)a4 receivedXPCRequest:(id)a5;
- (void)XPCManager:(id)a3 XPCConnection:(id)a4 updatedRegisteredEventIDs:(id)a5;
- (void)XPCManager:(id)a3 invalidatedXPCConnection:(id)a4;
- (void)XPCManager:(id)a3 sendXPCEvent:(id)a4 reply:(id)a5;
- (void)__acknowledgeWiFiNetworkSharingNetworkListUpdate:(id)a3;
- (void)__addKnownNetwork:(id)a3 XPCConnection:(id)a4;
- (void)__allowBrokenBackhaulPersonalHotspotFallbackForAutoJoinWithNetwork:(id)a3 reply:(id)a4;
- (void)__askToShareWiFiNetworkSharingNetworkFromApp:(id)a3;
- (void)__askToShareWiFiNetworkSharingNetworkFromAppex:(id)a3;
- (void)__autoJoinStartedWithTrigger:(int64_t)a3 interfaceName:(id)a4;
- (void)__cancelRequestsWithNamePrefix:(id)a3;
- (void)__checkin:(id)a3 XPCConnection:(id)a4;
- (void)__confirmBrokenBackhaul:(id)a3;
- (void)__detectBrokenBackhaulForAutoJoinWithNetwork:(id)a3 reply:(id)a4;
- (void)__disassocWithReason:(int64_t)a3 interfaceName:(id)a4;
- (void)__dumpLogs:(id)a3;
- (void)__forwardXPCEvent:(id)a3 reply:(id)a4;
- (void)__getActivities:(id)a3 XPCConnection:(id)a4;
- (void)__getApple80211:(id)a3;
- (void)__getAutoJoinMetric:(id)a3;
- (void)__getAutoJoinStatistics:(id)a3;
- (void)__getAutoJoinStatus:(id)a3;
- (void)__getBSSID:(id)a3 XPCConnection:(id)a4;
- (void)__getBSSIDForVendor:(id)a3 XPCConnection:(id)a4;
- (void)__getBrokenBackhaulState:(id)a3;
- (void)__getBrokenBackhaulStateUpdatedAt:(id)a3;
- (void)__getCaptivePortalCredentials:(id)a3;
- (void)__getCloudNetworks:(id)a3;
- (void)__getCurrentScanResult:(id)a3 XPCConnection:(id)a4;
- (void)__getCurrentScanResult:(id)a3 XPCConnection:(id)a4 reply:(id)a5;
- (void)__getDHCPLeaseExpirationTime:(id)a3;
- (void)__getDHCPLeaseStartTime:(id)a3;
- (void)__getDHCPServerID:(id)a3;
- (void)__getDHCPv6ServerID:(id)a3;
- (void)__getDNSServerAddresses:(id)a3;
- (void)__getDeviceSupervised:(id)a3;
- (void)__getEAP8021XClientStatus:(id)a3;
- (void)__getEAP8021XControlMode:(id)a3;
- (void)__getEAP8021XControlState:(id)a3;
- (void)__getEAP8021XSupplicantState:(id)a3;
- (void)__getEventIDs:(id)a3 XPCConnection:(id)a4;
- (void)__getGlobalDNSServerAddresses:(id)a3;
- (void)__getGlobalIPv4Addresses:(id)a3;
- (void)__getGlobalIPv4InterfaceName:(id)a3;
- (void)__getGlobalIPv4NetServiceID:(id)a3;
- (void)__getGlobalIPv4NetServiceName:(id)a3;
- (void)__getGlobalIPv4Router:(id)a3;
- (void)__getGlobalIPv6Addresses:(id)a3;
- (void)__getGlobalIPv6InterfaceName:(id)a3;
- (void)__getGlobalIPv6NetServiceID:(id)a3;
- (void)__getGlobalIPv6NetServiceName:(id)a3;
- (void)__getGlobalIPv6Router:(id)a3;
- (void)__getHardwareMACAddress:(id)a3;
- (void)__getIO80211ControllerInfo:(id)a3;
- (void)__getIO80211InterfaceInfo:(id)a3;
- (void)__getIPv4ARPResolvedHardwareAddress:(id)a3;
- (void)__getIPv4ARPResolvedIPAddress:(id)a3;
- (void)__getIPv4Addresses:(id)a3;
- (void)__getIPv4NetworkSignature:(id)a3;
- (void)__getIPv4Router:(id)a3;
- (void)__getIPv4SubnetMasks:(id)a3;
- (void)__getIPv6Addresses:(id)a3;
- (void)__getIPv6NetworkSignature:(id)a3;
- (void)__getIPv6Router:(id)a3;
- (void)__getJoinStatus:(id)a3;
- (void)__getKnownNetworkInfoForLocalNetworkPrompt:(id)a3 XPCConnection:(id)a4;
- (void)__getKnownNetworkMatchingNetworkProfile:(id)a3;
- (void)__getKnownNetworkMatchingScanResult:(id)a3;
- (void)__getLinkDownStatus:(id)a3;
- (void)__getLinkQualityMetric:(id)a3;
- (void)__getMACAddress:(id)a3;
- (void)__getNearbyRecommendedNetworks:(id)a3;
- (void)__getNetServiceEnabled:(id)a3;
- (void)__getNetServiceID:(id)a3;
- (void)__getNetServiceName:(id)a3;
- (void)__getNetworkManagedByMDM:(id)a3;
- (void)__getNetworkOfInterestHomeState:(id)a3;
- (void)__getNetworkOfInterestWorkState:(id)a3;
- (void)__getNetworkReachability:(id)a3;
- (void)__getNetworkWarningFlags:(id)a3 XPCConnection:(id)a4;
- (void)__getPlatformCapabilities:(id)a3;
- (void)__getPrivateMACAddress:(id)a3;
- (void)__getPrivateMACAddressMode:(id)a3;
- (void)__getPrivateMACAddressModeSystemSetting:(id)a3;
- (void)__getQuickProbeRequired:(id)a3;
- (void)__getRecommendedKnownNetworks:(id)a3;
- (void)__getRoamStatus:(id)a3;
- (void)__getSSID:(id)a3 XPCConnection:(id)a4;
- (void)__getSSIDForVendor:(id)a3 XPCConnection:(id)a4;
- (void)__getSecurity:(id)a3;
- (void)__getSystemActivities:(id)a3 XPCManager:(id)a4;
- (void)__getSystemEventIDs:(id)a3 XPCManager:(id)a4;
- (void)__getWAPISubtype:(id)a3;
- (void)__getWEPSubtype:(id)a3;
- (void)__getWiFiNetworkSharingAskToShareNetworkList:(id)a3;
- (void)__getWiFiNetworkSharingAskToShareStatus:(id)a3;
- (void)__getWiFiNetworkSharingAuthorizationLevel:(id)a3;
- (void)__getWiFiNetworkSharingNetworkList:(id)a3;
- (void)__getWiFiUIStateFlags:(id)a3;
- (void)__handleAssocDoneInternalEvent:(id)a3;
- (void)__handleAutoJoinStateChangedInternalEvent:(id)a3;
- (void)__handleBrokenBackhaulState:(int64_t)a3 timestamp:(id)a4;
- (void)__handleKnownNetworkProfileChangedEvent:(id)a3;
- (void)__handleNearbyRecommendedNetworksChangedEvent:(id)a3;
- (void)__handleWillAssocInternalEvent:(id)a3;
- (void)__logLqmSummary:(id)a3;
- (void)__performAutoJoinWithParameters:(id)a3 interfaceName:(id)a4;
- (void)__performScan:(id)a3 XPCConnection:(id)a4;
- (void)__postWiFiUIStateFlagsWithInterfaceName:(id)a3;
- (void)__privateMACEvaluationCompletedWithState:(int64_t)a3 knownNetwork:(id)a4 interfaceName:(id)a5;
- (void)__privateMACSettingChangedForNetworkProfile:(id)a3 interfaceName:(id)a4;
- (void)__removeNetworkProfile:(id)a3 reason:(int64_t)a4 interfaceName:(id)a5 reply:(id)a6;
- (void)__removeUnusedKnownNetworks;
- (void)__reportQuickProbeResult:(id)a3;
- (void)__requestWiFiNetworkSharingAuthorization:(id)a3;
- (void)__resetAutoJoinStatistics:(id)a3;
- (void)__scheduleNextRecommendedKnownNetworksExpirationTimer;
- (void)__sendXPCEvent:(id)a3;
- (void)__setAutoJoinStatus:(id)a3 interfaceName:(id)a4;
- (void)__setCachedKnownNetwork:(id)a3;
- (void)__setCaptivePortalCredentials:(id)a3;
- (void)__setChannel:(id)a3;
- (void)__setJoinStatus:(id)a3 interfaceName:(id)a4;
- (void)__setLQMConfig:(id)a3;
- (void)__setLinkDownStatus:(id)a3 interfaceName:(id)a4;
- (void)__setLinkQualityMetric:(id)a3 interfaceName:(id)a4;
- (void)__setPrivateMACAddressMode:(id)a3;
- (void)__setPrivateMACAddressModeSystemSetting:(id)a3;
- (void)__setPrivateMACAddressUserJoinFailureUIState:(id)a3;
- (void)__setRoamStatus:(id)a3 interfaceName:(id)a4;
- (void)__setUCMExtProfile:(id)a3;
- (void)__setWiFiNetworkSharingAskToShareStatus:(id)a3;
- (void)__setupEventHandlers;
- (void)__setupEventHandlersWithInterfaceName:(id)a3;
- (void)__startEventMonitoring;
- (void)__startHostAPMode:(id)a3 XPCConnection:(id)a4;
- (void)__startMonitoringDefaultEventIDs;
- (void)__startMonitoringDefaultEventIDsForInterfaceName:(id)a3;
- (void)__startNetworkRelayBridgeWithHostAPConfiguration:(id)a3 interfaceName:(id)a4 reply:(id)a5;
- (void)__stopEventMonitoring;
- (void)__stopHostAPMode:(id)a3 XPCConnection:(id)a4;
- (void)__stopMonitoringDefaultEventIDs;
- (void)__stopMonitoringDefaultEventIDsForInterfaceName:(id)a3;
- (void)__stopNetworkRelayBridgeForInterfaceName:(id)a3 reply:(id)a4;
- (void)__updateApple80211InterfacesWithReason:(id)a3 reply:(id)a4;
- (void)__updateAutoJoinState:(int64_t)a3 interfaceName:(id)a4;
- (void)__updateAutoJoinStatusWithJoin:(id)a3;
- (void)__updateCurrentKnownBSSWithIPConfigurationForInterfaceName:(id)a3;
- (void)__updateEventMonitoring:(id)a3;
- (void)__updateEventRegistration:(id)a3 XPCConnection:(id)a4 XPCManager:(id)a5;
- (void)__updateJoinStatusWithAssoc:(id)a3;
- (void)__updateJoinStatusWithAuth:(id)a3;
- (void)__updateJoinStatusWithError:(id)a3 interaceName:(id)a4;
- (void)__updateJoinStatusWithKnownNetwork:(id)a3;
- (void)__updateJoinStatusWithLinkUp:(id)a3;
- (void)__updateMonitoring:(BOOL)a3 eventIDs:(id)a4;
- (void)__updateMultipleKnownNetworks:(id)a3 updateProperties:(id)a4 interfaceName:(id)a5 reply:(id)a6;
- (void)__updateNetworkProfile:(id)a3 updateProperties:(id)a4 interfaceName:(id)a5 reply:(id)a6;
- (void)__updateRecommendedKnownNetworks;
- (void)__updateSystemConfigurationInterfacesWithReason:(id)a3 reply:(id)a4;
- (void)__updateWiFiInterfacesWithReason:(id)a3 reply:(id)a4;
- (void)__updateWiFiNetworkServices;
- (void)activate;
- (void)invalidate;
- (void)privateMACEvaluationCheckConnectivityWithInterfaceName:(id)a3;
- (void)setTargetQueue:(id)a3 requestType:(int64_t)a4 interfaceName:(id)a5;
- (void)updateJoinStatusWithEAP8021X:(id)a3;
- (void)updateJoinStatusWithIPv4:(id)a3;
- (void)updateJoinStatusWithIPv6:(id)a3;
@end

@implementation CWFXPCRequestProxy

- (CWFXPCRequestProxy)init
{
  v112 = *MEMORY[0x1E69E9840];
  v101.receiver = self;
  v101.super_class = CWFXPCRequestProxy;
  v2 = [(CWFXPCRequestProxy *)&v101 init];
  if (!v2)
  {
    goto LABEL_45;
  }

  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.corewifi.XPC-common-internal"];
  v4 = [v3 UTF8String];
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_create(v4, v5);
  internalQueue = v2->_internalQueue;
  v2->_internalQueue = v6;

  if (!v2->_internalQueue)
  {
    goto LABEL_45;
  }

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.corewifi.XPC-common-mutex"];
  v9 = [v8 UTF8String];
  v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v11 = dispatch_queue_create(v9, v10);
  mutexQueue = v2->_mutexQueue;
  v2->_mutexQueue = v11;

  if (!v2->_mutexQueue)
  {
    goto LABEL_45;
  }

  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.corewifi.XPC-common-event"];
  v14 = [v13 UTF8String];
  v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v16 = dispatch_queue_create(v14, v15);
  eventQueue = v2->_eventQueue;
  v2->_eventQueue = v16;

  if (!v2->_eventQueue)
  {
    goto LABEL_45;
  }

  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.corewifi.apple80211-common-intf"];
  v19 = [v18 UTF8String];
  v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v21 = dispatch_queue_create(v19, v20);
  apple80211InterfaceQueue = v2->_apple80211InterfaceQueue;
  v2->_apple80211InterfaceQueue = v21;

  if (!v2->_apple80211InterfaceQueue)
  {
    goto LABEL_45;
  }

  v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.corewifi.sc-common-intf"];
  v24 = [v23 UTF8String];
  v25 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v26 = dispatch_queue_create(v24, v25);
  systemConfigInterfaceQueue = v2->_systemConfigInterfaceQueue;
  v2->_systemConfigInterfaceQueue = v26;

  if (!v2->_systemConfigInterfaceQueue)
  {
    goto LABEL_45;
  }

  v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.corewifi.cellular-outrank-recommendation"];
  v29 = [v28 UTF8String];
  v30 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v31 = dispatch_queue_create(v29, v30);
  cellularOutrankQueue = v2->_cellularOutrankQueue;
  v2->_cellularOutrankQueue = v31;

  if (!v2->_cellularOutrankQueue)
  {
    goto LABEL_45;
  }

  v33 = objc_alloc_init(MEMORY[0x1E695DF90]);
  mutableLinkDownStatusMap = v2->_mutableLinkDownStatusMap;
  v2->_mutableLinkDownStatusMap = v33;

  if (!v2->_mutableLinkDownStatusMap)
  {
    goto LABEL_45;
  }

  v35 = objc_alloc_init(MEMORY[0x1E695DF90]);
  mutableLinkDownNetworkMap = v2->_mutableLinkDownNetworkMap;
  v2->_mutableLinkDownNetworkMap = v35;

  if (!v2->_mutableLinkDownNetworkMap)
  {
    goto LABEL_45;
  }

  v37 = objc_alloc_init(MEMORY[0x1E695DF90]);
  mutableRoamStatusMap = v2->_mutableRoamStatusMap;
  v2->_mutableRoamStatusMap = v37;

  if (!v2->_mutableRoamStatusMap)
  {
    goto LABEL_45;
  }

  v39 = objc_alloc_init(MEMORY[0x1E695DF90]);
  mutableJoinStatusMap = v2->_mutableJoinStatusMap;
  v2->_mutableJoinStatusMap = v39;

  if (!v2->_mutableJoinStatusMap)
  {
    goto LABEL_45;
  }

  v41 = objc_alloc_init(MEMORY[0x1E695DF90]);
  mutableAutoJoinTriggerMap = v2->_mutableAutoJoinTriggerMap;
  v2->_mutableAutoJoinTriggerMap = v41;

  if (!v2->_mutableAutoJoinTriggerMap)
  {
    goto LABEL_45;
  }

  v43 = objc_alloc_init(MEMORY[0x1E695DF90]);
  mutableAutoJoinStatusMap = v2->_mutableAutoJoinStatusMap;
  v2->_mutableAutoJoinStatusMap = v43;

  if (!v2->_mutableAutoJoinStatusMap)
  {
    goto LABEL_45;
  }

  v45 = objc_alloc_init(MEMORY[0x1E695DF90]);
  mutableLinkQualityMap = v2->_mutableLinkQualityMap;
  v2->_mutableLinkQualityMap = v45;

  if (!v2->_mutableLinkQualityMap)
  {
    goto LABEL_45;
  }

  v47 = objc_alloc_init(MEMORY[0x1E695DF90]);
  mutableQueueMap = v2->_mutableQueueMap;
  v2->_mutableQueueMap = v47;

  if (!v2->_mutableQueueMap)
  {
    goto LABEL_45;
  }

  v49 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  defaultQueue = v2->_defaultQueue;
  v2->_defaultQueue = v49;

  v51 = v2->_defaultQueue;
  if (!v51 || ([(NSOperationQueue *)v51 setName:@"default-concurrent"], [(NSOperationQueue *)v2->_defaultQueue setMaxConcurrentOperationCount:-1], [(NSOperationQueue *)v2->_defaultQueue setQualityOfService:-1], v52 = objc_alloc_init(MEMORY[0x1E695DF90]), apple80211Map = v2->_apple80211Map, v2->_apple80211Map = v52, apple80211Map, !v2->_apple80211Map))
  {
LABEL_45:
    v54 = 0;
LABEL_46:

    v2 = 0;
    goto LABEL_44;
  }

  v54 = [[CWFApple80211 alloc] initWithInterfaceName:0];
  if (!v54)
  {
    goto LABEL_46;
  }

  [(NSMutableDictionary *)v2->_apple80211Map setObject:v54 forKeyedSubscript:&stru_1F5B8FC80];
  v55 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  nonApple80211InterfaceList = v2->_nonApple80211InterfaceList;
  v2->_nonApple80211InterfaceList = v55;

  if (!v2->_nonApple80211InterfaceList)
  {
    goto LABEL_46;
  }

  v57 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  apple80211EligibleRemovalList = v2->_apple80211EligibleRemovalList;
  v2->_apple80211EligibleRemovalList = v57;

  if (!v2->_apple80211EligibleRemovalList)
  {
    goto LABEL_46;
  }

  v59 = objc_alloc_init(MEMORY[0x1E695DF90]);
  EAP8021XMap = v2->_EAP8021XMap;
  v2->_EAP8021XMap = v59;

  if (!v2->_EAP8021XMap)
  {
    goto LABEL_46;
  }

  v61 = objc_alloc_init(MEMORY[0x1E695DF90]);
  SCNetworkServiceMap = v2->_SCNetworkServiceMap;
  v2->_SCNetworkServiceMap = v61;

  if (!v2->_SCNetworkServiceMap)
  {
    goto LABEL_46;
  }

  v63 = objc_alloc_init(MEMORY[0x1E695DF90]);
  SCNetworkInterfaceMap = v2->_SCNetworkInterfaceMap;
  v2->_SCNetworkInterfaceMap = v63;

  if (!v2->_SCNetworkInterfaceMap)
  {
    goto LABEL_46;
  }

  v65 = objc_alloc_init(CWFSCNetworkConfiguration);
  SCNetworkConfiguration = v2->_SCNetworkConfiguration;
  v2->_SCNetworkConfiguration = v65;

  if (!v2->_SCNetworkConfiguration)
  {
    goto LABEL_46;
  }

  v67 = objc_alloc_init(CWFSCNetworkReachability);
  SCNetworkReachability = v2->_SCNetworkReachability;
  v2->_SCNetworkReachability = v67;

  if (!v2->_SCNetworkReachability)
  {
    goto LABEL_46;
  }

  v69 = objc_alloc_init(CWFIO80211);
  IO80211 = v2->_IO80211;
  v2->_IO80211 = v69;

  if (!v2->_IO80211)
  {
    goto LABEL_46;
  }

  v71 = objc_alloc_init(CWFKernelEventMonitor);
  keventMonitor = v2->_keventMonitor;
  v2->_keventMonitor = v71;

  if (!v2->_keventMonitor)
  {
    goto LABEL_46;
  }

  v73 = objc_alloc_init(CWFConfigurationProfileManager);
  configProfileManager = v2->_configProfileManager;
  v2->_configProfileManager = v73;

  if (!v2->_configProfileManager)
  {
    v93 = CWFGetOSLog();
    if (v93)
    {
      v94 = CWFGetOSLog();
    }

    else
    {
      v94 = MEMORY[0x1E69E9C10];
      v97 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v102) = 0;
      LODWORD(v100) = 2;
      v99 = &v102;
      _os_log_send_and_compose_impl();
    }
  }

  v75 = [CWFXPCConnection alloc];
  v76 = CWFBootArgs();
  v77 = [(CWFXPCConnection *)v75 initWithServiceType:1 XPCConnection:0 bootArgs:v76];
  internalRequestXPCConnection = v2->_internalRequestXPCConnection;
  v2->_internalRequestXPCConnection = v77;

  if (!v2->_internalRequestXPCConnection)
  {
    goto LABEL_46;
  }

  if (_os_feature_enabled_impl())
  {
    v79 = objc_alloc_init(CWFAssetSetManager);
    mobileAssetManager = v2->_mobileAssetManager;
    v2->_mobileAssetManager = v79;
  }

  if (!v2->_mobileAssetManager)
  {
    v81 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v82 = CWFGetOSLog();
    if (v82)
    {
      v83 = CWFGetOSLog();
    }

    else
    {
      v83 = MEMORY[0x1E69E9C10];
      v84 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
    {
      v102 = 134219010;
      v103 = v81 / 0x3B9ACA00;
      v104 = 2048;
      v105 = v81 % 0x3B9ACA00 / 0x3E8;
      v106 = 2082;
      v107 = "[CWFXPCRequestProxy init]";
      v108 = 2082;
      v109 = "CWFXPCRequestProxy.m";
      v110 = 1024;
      v111 = 282;
      LODWORD(v100) = 48;
      v99 = &v102;
      _os_log_send_and_compose_impl();
    }
  }

  v85 = objc_alloc_init(CWFBrokenBackhaulMonitor);
  bbhMonitor = v2->_bbhMonitor;
  v2->_bbhMonitor = v85;

  if (!v2->_bbhMonitor)
  {
    goto LABEL_46;
  }

  v87 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  mutableRecommendedKnownNetworks = v2->_mutableRecommendedKnownNetworks;
  v2->_mutableRecommendedKnownNetworks = v87;

  if (!v2->_mutableRecommendedKnownNetworks)
  {
    goto LABEL_46;
  }

  if (_os_feature_enabled_impl())
  {
    v89 = objc_alloc_init(CWFWiFiNetworkSharingManager);
    wifiNetworkSharingManager = v2->_wifiNetworkSharingManager;
    v2->_wifiNetworkSharingManager = v89;

    if (!v2->_wifiNetworkSharingManager)
    {
      v95 = CWFGetOSLog();
      if (v95)
      {
        v96 = CWFGetOSLog();
      }

      else
      {
        v96 = MEMORY[0x1E69E9C10];
        v98 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
      {
        v102 = 136446722;
        v103 = "[CWFXPCRequestProxy init]";
        v104 = 2082;
        v105 = "CWFXPCRequestProxy.m";
        v106 = 1024;
        LODWORD(v107) = 298;
        LODWORD(v100) = 28;
        v99 = &v102;
        _os_log_send_and_compose_impl();
      }
    }
  }

  [(CWFXPCRequestProxy *)v2 __setupEventHandlers:v99];
LABEL_44:

  v91 = *MEMORY[0x1E69E9840];
  return v2;
}

- (void)__forwardXPCEvent:(id)a3 reply:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 type];
  if (v8 > 29)
  {
    if (v8 != 30)
    {
      if (v8 != 39)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

LABEL_8:
    [(CWFXPCRequestProxy *)self __handleKnownNetworkProfileChangedEvent:v6];
LABEL_9:
    [(CWFXPCRequestProxy *)self __handleNearbyRecommendedNetworksChangedEvent:v6];
    goto LABEL_10;
  }

  if (v8)
  {
    if (v8 != 25)
    {
LABEL_10:
      v10 = [(CWFXPCRequestProxy *)self delegate];
      if (v10)
      {
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = sub_1E0C98824;
        v22[3] = &unk_1E86E6AF0;
        v23 = v7;
        [v10 XPCRequestProxy:self sendXPCEvent:v6 reply:v22];
        v11 = v23;
        goto LABEL_24;
      }

      v12 = CWFGetOSLog();
      if (v12)
      {
        v13 = CWFGetOSLog();
      }

      else
      {
        v13 = MEMORY[0x1E69E9C10];
        v15 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
LABEL_22:

        if (!v7)
        {
LABEL_25:

          goto LABEL_26;
        }

        v17 = *MEMORY[0x1E696A798];
        v11 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
        v18 = CWFErrorWithDescription(v17, 6, v11);
        (*(v7 + 2))(v7, v18);

LABEL_24:
        goto LABEL_25;
      }

      v16 = sub_1E0BC9038([v6 type]);
      v26 = 138543362;
      v27 = v16;
LABEL_21:
      _os_log_send_and_compose_impl();

      goto LABEL_22;
    }

    v9 = [v6 interfaceName];
    [(CWFXPCRequestProxy *)self __postWiFiUIStateFlagsWithInterfaceName:v9];

    goto LABEL_8;
  }

  v14 = [v6 internalType];
  if (v14 == 1)
  {
    [(CWFXPCRequestProxy *)self __handleAutoJoinStateChangedInternalEvent:v6];
    goto LABEL_26;
  }

  if (v14 == 3)
  {
    [(CWFXPCRequestProxy *)self __handleAssocDoneInternalEvent:v6];
    goto LABEL_26;
  }

  if (v14 != 2)
  {
    v10 = [(CWFXPCRequestProxy *)self delegate];
    if (v10)
    {
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = sub_1E0C98808;
      v24[3] = &unk_1E86E6AF0;
      v25 = v7;
      [v10 XPCRequestProxy:self sendXPCEvent:v6 reply:v24];
      v11 = v25;
      goto LABEL_24;
    }

    v20 = CWFGetOSLog();
    if (v20)
    {
      v13 = CWFGetOSLog();
    }

    else
    {
      v13 = MEMORY[0x1E69E9C10];
      v21 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    v16 = sub_1E0BECB08([v6 internalType]);
    v26 = 138543362;
    v27 = v16;
    goto LABEL_21;
  }

  [(CWFXPCRequestProxy *)self __handleWillAssocInternalEvent:v6];
LABEL_26:

  v19 = *MEMORY[0x1E69E9840];
}

- (void)XPCManager:(id)a3 sendXPCEvent:(id)a4 reply:(id)a5
{
  v7 = a5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1E0C988E4;
  v9[3] = &unk_1E86E7BB8;
  v10 = v7;
  v8 = v7;
  [(CWFXPCRequestProxy *)self __forwardXPCEvent:a4 reply:v9];
}

- (int)__defaultInterfaceRoleForRequestType:(int64_t)a3
{
  if ((a3 - 39) <= 0x30 && ((1 << (a3 - 39)) & 0x1C00018007FFFLL) != 0)
  {
    return 6;
  }

  result = 0;
  if ((a3 - 146) <= 0x14 && ((1 << (a3 + 110)) & 0x1FF801) != 0)
  {
    return 6;
  }

  return result;
}

- (id)__queueForXPCRequest:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1E0BC2D80;
  v17 = sub_1E0BC61FC;
  v18 = 0;
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C98A64;
  block[3] = &unk_1E86E7BE0;
  v11 = self;
  v12 = &v13;
  v10 = v4;
  v6 = v4;
  dispatch_sync(mutexQueue, block);
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

- (BOOL)__didFindMatching80211InterfaceForXPCRequest:(id)a3
{
  v110 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v94 = 0;
  v95 = &v94;
  v96 = 0x3032000000;
  v97 = sub_1E0BC2D80;
  v98 = sub_1E0BC61FC;
  v99 = 0;
  v5 = [v4 requestParameters];
  v6 = [v5 interfaceName];

  v7 = [v4 requestParameters];
  v8 = [v7 virtualInterfaceRole];

  if (v6)
  {
    v9 = [(CWFXPCRequestProxy *)self apple80211WithInterfaceName:v6];
    v10 = v95[5];
    v95[5] = v9;
  }

  else
  {
    if (!v8)
    {
      v11 = -[CWFXPCRequestProxy __defaultInterfaceRoleForRequestType:](self, "__defaultInterfaceRoleForRequestType:", [v4 type]);
      v12 = [v4 requestParameters];
      [v12 setVirtualInterfaceRole:v11];

      v13 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
      v14 = CWFGetOSLog();
      if (v14)
      {
        v15 = CWFGetOSLog();
      }

      else
      {
        v15 = MEMORY[0x1E69E9C10];
        v16 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v17 = [v4 requestParameters];
        v18 = sub_1E0BEE7B4([v17 virtualInterfaceRole]);
        v19 = sub_1E0BC2FCC([v4 type]);
        v100 = 134218754;
        v101 = v13 / 0x3B9ACA00;
        v102 = 2048;
        v103 = v13 % 0x3B9ACA00 / 0x3E8;
        v104 = 2114;
        v105 = v18;
        v106 = 2114;
        v107 = v19;
        LODWORD(v78) = 42;
        v77 = &v100;
        _os_log_send_and_compose_impl();
      }
    }

    v20 = [v4 requestParameters];
    v21 = -[CWFXPCRequestProxy apple80211WithVirtualInterfaceRole:parentInterfaceName:](self, "apple80211WithVirtualInterfaceRole:parentInterfaceName:", [v20 virtualInterfaceRole], 0);
    v22 = v95[5];
    v95[5] = v21;

    v23 = [v95[5] interfaceName];
    v24 = [v4 requestParameters];
    [v24 setInterfaceName:v23];

    v25 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v26 = CWFGetOSLog();
    if (v26)
    {
      v10 = CWFGetOSLog();
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
      v27 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v28 = [v4 requestParameters];
      v29 = [v28 interfaceName];
      v30 = [v4 requestParameters];
      v31 = sub_1E0BEE7B4([v30 virtualInterfaceRole]);
      v100 = 134218754;
      v101 = v25 / 0x3B9ACA00;
      v102 = 2048;
      v103 = v25 % 0x3B9ACA00 / 0x3E8;
      v104 = 2114;
      v105 = v29;
      v106 = 2114;
      v107 = v31;
      _os_log_send_and_compose_impl();
    }
  }

  v32 = v95[5];
  if (!v32 && !v8)
  {
    v33 = [v4 requestParameters];
    v34 = [v33 interfaceName];
    v35 = [(CWFXPCRequestProxy *)self isNon80211InterfaceName:v34];

    if (v35)
    {
      v36 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
      v37 = CWFGetOSLog();
      if (v37)
      {
        v38 = CWFGetOSLog();
      }

      else
      {
        v38 = MEMORY[0x1E69E9C10];
        v45 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v82 = [v4 requestParameters];
        v46 = [v82 interfaceName];
        v47 = [v4 requestParameters];
        v48 = sub_1E0BEE7B4([v47 virtualInterfaceRole]);
        v49 = [v4 UUID];
        v50 = [v49 UUIDString];
        v51 = [v50 substringToIndex:5];
        v100 = 134219010;
        v101 = v36 / 0x3B9ACA00;
        v102 = 2048;
        v103 = v36 % 0x3B9ACA00 / 0x3E8;
        v104 = 2114;
        v105 = v46;
        v106 = 2114;
        v107 = v48;
        v108 = 2114;
        v109 = v51;
        _os_log_send_and_compose_impl();
      }

      goto LABEL_45;
    }

    apple80211InterfaceQueue = self->_apple80211InterfaceQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0C99950;
    block[3] = &unk_1E86E7C08;
    v40 = v6;
    v93 = &v94;
    v90 = v40;
    v91 = self;
    v41 = v4;
    v92 = v41;
    dispatch_sync(apple80211InterfaceQueue, block);
    if (v95[5])
    {
LABEL_44:

      v38 = v90;
LABEL_45:

      v32 = v95[5];
      goto LABEL_46;
    }

    v42 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v43 = CWFGetOSLog();
    if (v43)
    {
      v44 = CWFGetOSLog();
    }

    else
    {
      v44 = MEMORY[0x1E69E9C10];
      v52 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v80 = v40;
      v83 = [v41 requestParameters];
      v79 = [v83 interfaceName];
      v81 = [v41 requestParameters];
      v53 = sub_1E0BEE7B4([v81 virtualInterfaceRole]);
      v54 = [v41 UUID];
      v55 = [v54 UUIDString];
      v56 = [v55 substringToIndex:5];
      v100 = 134219010;
      v101 = v42 / 0x3B9ACA00;
      v102 = 2048;
      v103 = v42 % 0x3B9ACA00 / 0x3E8;
      v104 = 2114;
      v105 = v79;
      v106 = 2114;
      v107 = v53;
      v108 = 2114;
      v109 = v56;
      _os_log_send_and_compose_impl();

      v40 = v80;
    }

    v87[0] = 0;
    v87[1] = v87;
    v87[2] = 0x2020000000;
    v88 = 0;
    v57 = dispatch_block_create(0, &unk_1F5B89BB0);
    v84[0] = MEMORY[0x1E69E9820];
    v84[1] = 3221225472;
    v84[2] = sub_1E0C99A00;
    v84[3] = &unk_1E86E7CA8;
    v86 = v87;
    v58 = v57;
    v85 = v58;
    [(CWFXPCRequestProxy *)self __updateWiFiInterfacesWithReason:@"force" reply:v84];
    dispatch_block_wait(v58, 0xFFFFFFFFFFFFFFFFLL);
    if (v6)
    {
      v59 = [(CWFXPCRequestProxy *)self apple80211WithInterfaceName:v40];
      v60 = v95[5];
      v95[5] = v59;
    }

    else
    {
      v60 = [v41 requestParameters];
      v61 = -[CWFXPCRequestProxy apple80211WithVirtualInterfaceRole:parentInterfaceName:](self, "apple80211WithVirtualInterfaceRole:parentInterfaceName:", [v60 virtualInterfaceRole], 0);
      v62 = v95[5];
      v95[5] = v61;
    }

    if (v95[5])
    {
      v63 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
      v64 = CWFGetOSLog();
      if (v64)
      {
        v65 = CWFGetOSLog();
      }

      else
      {
        v65 = MEMORY[0x1E69E9C10];
        v67 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_43;
      }
    }

    else
    {
      v63 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
      v66 = CWFGetOSLog();
      if (v66)
      {
        v65 = CWFGetOSLog();
      }

      else
      {
        v65 = MEMORY[0x1E69E9C10];
        v68 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_43;
      }
    }

    v69 = v40;
    v70 = sub_1E0BEE7B4(0);
    v71 = [v41 UUID];
    v72 = [v71 UUIDString];
    v73 = [v72 substringToIndex:5];
    v100 = 134219010;
    v101 = v63 / 0x3B9ACA00;
    v102 = 2048;
    v103 = v63 % 0x3B9ACA00 / 0x3E8;
    v104 = 2114;
    v105 = v69;
    v106 = 2114;
    v107 = v70;
    v108 = 2114;
    v109 = v73;
    _os_log_send_and_compose_impl();

LABEL_43:
    _Block_object_dispose(v87, 8);
    goto LABEL_44;
  }

LABEL_46:
  v74 = v32 != 0;

  _Block_object_dispose(&v94, 8);
  v75 = *MEMORY[0x1E69E9840];
  return v74;
}

- (BOOL)__allowXPCRequestWithoutAvailableInterface:(id)a3
{
  v3 = a3;
  v4 = [v3 type];
  v5 = 1;
  if (v4 > 261)
  {
    if ((v4 - 262) < 4)
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v6 = (v4 - 168) > 0x22 || ((1 << (v4 + 88)) & 0x60000001FLL) == 0;
  if (v6 && (v4 - 1) >= 2 && (v4 - 112) >= 2)
  {
LABEL_12:
    if ((sub_1E0BC2F68([v3 type]) & 1) == 0)
    {
      v5 = sub_1E0BC5BFC([v3 type]);
    }
  }

LABEL_11:

  return v5;
}

- (void)XPCManager:(id)a3 XPCConnection:(id)a4 receivedXPCRequest:(id)a5
{
  v78 = *MEMORY[0x1E69E9840];
  v56 = a3;
  v59 = a4;
  val = a5;
  v8 = [val requestParameters];
  v57 = [v8 interfaceName];

  v9 = [val requestParameters];
  v10 = [v9 virtualInterfaceRole];

  if ([(CWFXPCRequestProxy *)self __allowXPCRequestWithoutAvailableInterface:val])
  {
    v11 = CWFGetOSLog();
    if (v11)
    {
      v12 = CWFGetOSLog();
    }

    else
    {
      v12 = MEMORY[0x1E69E9C10];
      v15 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (![(CWFXPCRequestProxy *)self __didFindMatching80211InterfaceForXPCRequest:val])
  {
    v14 = 0;
    goto LABEL_15;
  }

  v13 = CWFGetOSLog();
  if (v13)
  {
    v12 = CWFGetOSLog();
  }

  else
  {
    v12 = MEMORY[0x1E69E9C10];
    v16 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
LABEL_13:
    v17 = [val UUID];
    v18 = [v17 UUIDString];
    v19 = [v18 substringToIndex:5];
    v73 = 138543362;
    v74 = v19;
    LODWORD(v54) = 12;
    v52 = &v73;
    _os_log_send_and_compose_impl();
  }

LABEL_14:

  v14 = 1;
LABEL_15:
  if ([v59 isWiFiNetworkSharingAppExtension])
  {
    v20 = [val info];
    v21 = [v20 objectForKeyedSubscript:@"WiFiNetworkSharingClientID"];

    v22 = [(CWFXPCRequestProxy *)self wifiNetworkSharingManager];
    [v22 extendAppexRuntimeForClientID:v21];
  }

  if (v14)
  {
    v58 = [(CWFXPCRequestProxy *)self __queueForXPCRequest:val];
    objc_initWeak(&location, val);
    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3221225472;
    v66[2] = sub_1E0C9A288;
    v66[3] = &unk_1E86E7C30;
    objc_copyWeak(&v70, &location);
    v66[4] = self;
    v67 = v59;
    v23 = v56;
    v68 = v23;
    v69 = v57;
    v71 = v10;
    [val addExecutionBlock:v66];
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v24 = [v58 operations];
    v25 = [v24 countByEnumeratingWithState:&v62 objects:v77 count:16];
    if (v25)
    {
      v26 = *v63;
      obj = v24;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v63 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v62 + 1) + 8 * i);
          v29 = [v23 supportedRequestTypes];
          v30 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(val, "type")}];
          if ([v29 containsObject:v30])
          {
          }

          else
          {
            v31 = [v28 name];
            v32 = sub_1E0BC2E18(val);
            v33 = [v31 hasSuffix:v32];

            if (v33)
            {
              v34 = CWFGetOSLog();
              if (v34)
              {
                v35 = CWFGetOSLog();
              }

              else
              {
                v35 = MEMORY[0x1E69E9C10];
                v36 = MEMORY[0x1E69E9C10];
              }

              if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
              {
                v37 = [v28 name];
                v38 = [val UUID];
                v39 = [v38 UUIDString];
                v40 = [v39 substringToIndex:5];
                v73 = 138543618;
                v74 = v37;
                v75 = 2114;
                v76 = v40;
                LODWORD(v55) = 22;
                v53 = &v73;
                _os_log_send_and_compose_impl();
              }

              [val addDependency:v28];
            }
          }
        }

        v24 = obj;
        v25 = [obj countByEnumeratingWithState:&v62 objects:v77 count:16];
      }

      while (v25);
    }

    [v58 addOperation:val];
    objc_destroyWeak(&v70);
    objc_destroyWeak(&location);
    goto LABEL_42;
  }

  v41 = CWFGetOSLog();
  if (v41)
  {
    v42 = CWFGetOSLog();
  }

  else
  {
    v42 = MEMORY[0x1E69E9C10];
    v43 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
  {
    v44 = [val UUID];
    v45 = [v44 UUIDString];
    v46 = [v45 substringToIndex:5];
    v73 = 138543362;
    v74 = v46;
    _os_log_send_and_compose_impl();
  }

  v47 = [val response];

  if (v47)
  {
    v58 = [val response];
    v48 = *MEMORY[0x1E696A798];
    v49 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
    v50 = CWFErrorWithDescription(v48, 45, v49);
    (v58)[2](v58, v50, 0);

LABEL_42:
  }

  v51 = *MEMORY[0x1E69E9840];
}

- (void)__cancelRequestsWithNamePrefix:(id)a3
{
  v55 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v28 = self;
  obj = [(NSMutableDictionary *)self->_mutableQueueMap allValues];
  v31 = [obj countByEnumeratingWithState:&v47 objects:v54 count:16];
  if (v31)
  {
    v30 = *v48;
    do
    {
      v5 = 0;
      do
      {
        if (*v48 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v32 = v5;
        v6 = *(*(&v47 + 1) + 8 * v5);
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v33 = [v6 allValues];
        v7 = [v33 countByEnumeratingWithState:&v43 objects:v53 count:16];
        if (v7)
        {
          v8 = v7;
          v34 = *v44;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v44 != v34)
              {
                objc_enumerationMutation(v33);
              }

              v10 = *(*(&v43 + 1) + 8 * i);
              v39 = 0u;
              v40 = 0u;
              v41 = 0u;
              v42 = 0u;
              v11 = [v10 operations];
              v12 = [v11 countByEnumeratingWithState:&v39 objects:v52 count:16];
              if (v12)
              {
                v13 = v12;
                v14 = *v40;
                do
                {
                  for (j = 0; j != v13; ++j)
                  {
                    if (*v40 != v14)
                    {
                      objc_enumerationMutation(v11);
                    }

                    v16 = *(*(&v39 + 1) + 8 * j);
                    v17 = [v16 name];
                    v18 = [v17 hasPrefix:v4];

                    if (v18)
                    {
                      [v16 cancel];
                    }
                  }

                  v13 = [v11 countByEnumeratingWithState:&v39 objects:v52 count:16];
                }

                while (v13);
              }
            }

            v8 = [v33 countByEnumeratingWithState:&v43 objects:v53 count:16];
          }

          while (v8);
        }

        v5 = v32 + 1;
      }

      while (v32 + 1 != v31);
      v31 = [obj countByEnumeratingWithState:&v47 objects:v54 count:16];
    }

    while (v31);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v19 = [(NSOperationQueue *)v28->_defaultQueue operations];
  v20 = [v19 countByEnumeratingWithState:&v35 objects:v51 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v36;
    do
    {
      for (k = 0; k != v21; ++k)
      {
        if (*v36 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v35 + 1) + 8 * k);
        v25 = [v24 name];
        v26 = [v25 hasPrefix:v4];

        if (v26)
        {
          [v24 cancel];
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v35 objects:v51 count:16];
    }

    while (v21);
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (void)XPCManager:(id)a3 XPCConnection:(id)a4 canceledXPCRequestsWithUUID:(id)a5
{
  v7 = a4;
  v8 = a5;
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C9B07C;
  block[3] = &unk_1E86E6060;
  v10 = v7;
  v15 = v10;
  v11 = v8;
  v16 = v11;
  v17 = self;
  dispatch_async(mutexQueue, block);
  v12 = [(CWFXPCRequestProxy *)self delegate];
  v13 = v12;
  if (v12)
  {
    [v12 XPCRequestProxy:self XPCConnection:v10 canceledXPCRequestsWithUUID:v11];
  }
}

- (void)XPCManager:(id)a3 invalidatedXPCConnection:(id)a4
{
  v5 = a4;
  mutexQueue = self->_mutexQueue;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = sub_1E0C9B220;
  v14 = &unk_1E86E6420;
  v7 = v5;
  v15 = v7;
  v16 = self;
  dispatch_async(mutexQueue, &v11);
  v8 = [(CWFXPCRequestProxy *)self wifiNetworkSharingManager:v11];
  [v8 didInvalidateXPCConnection:v7];

  v9 = [(CWFXPCRequestProxy *)self delegate];
  v10 = v9;
  if (v9)
  {
    [v9 XPCRequestProxy:self invalidatedXPCConnection:v7];
  }
}

- (void)XPCManager:(id)a3 XPCConnection:(id)a4 updatedRegisteredEventIDs:(id)a5
{
  v6 = a3;
  eventQueue = self->_eventQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1E0C9B32C;
  v9[3] = &unk_1E86E6420;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(eventQueue, v9);
}

- (id)__privateMACManager
{
  location[3] = *MEMORY[0x1E69E9840];
  if (!_os_feature_enabled_impl())
  {
LABEL_32:
    v4 = 0;
    goto LABEL_33;
  }

  privateMACManager = self->_privateMACManager;
  if (privateMACManager)
  {
    v4 = privateMACManager;
    goto LABEL_33;
  }

  v5 = [(CWFXPCRequestProxy *)self __apple80211WithVirtualInterfaceRole:0 parentInterfaceName:0];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 interfaceName];
    v8 = [(NSMutableDictionary *)self->_SCNetworkInterfaceMap objectForKeyedSubscript:v7];
    v9 = [v8 hardwareAddress];
    if (!v9)
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

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        LODWORD(location[0]) = 138543362;
        *(location + 4) = v7;
        _os_log_send_and_compose_impl();
      }

      v9 = [(CWFXPCRequestProxy *)self __networkStackMACAddressWithInterfaceName:v7];
      if (!v9)
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

        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          LODWORD(location[0]) = 138543362;
          *(location + 4) = v7;
          _os_log_send_and_compose_impl();
        }

        v9 = [v6 hardwareMACAddress:0];
        if (!v9)
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

          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            LODWORD(location[0]) = 138543362;
            *(location + 4) = v7;
            _os_log_send_and_compose_impl();
          }

          v9 = 0;
        }
      }
    }

    v19 = [[CWFPrivateMACManager alloc] initWithInterfaceName:v7 hardwareMACAddress:v9];
    v20 = self->_privateMACManager;
    self->_privateMACManager = v19;

    objc_initWeak(location, self);
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = sub_1E0C9B84C;
    v31[3] = &unk_1E86E7C58;
    objc_copyWeak(&v33, location);
    v21 = v7;
    v32 = v21;
    [(CWFPrivateMACManager *)self->_privateMACManager setEffectiveHardwareMACAddress:v31];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = sub_1E0C9B8D4;
    v28[3] = &unk_1E86E7C80;
    objc_copyWeak(&v30, location);
    v22 = v21;
    v29 = v22;
    [(CWFPrivateMACManager *)self->_privateMACManager setUpdatedNetworkIDHandler:v28];

    objc_destroyWeak(&v30);
    objc_destroyWeak(&v33);
    objc_destroyWeak(location);
  }

  v4 = self->_privateMACManager;
  if (!v4)
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

    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location[0]) = 0;
      _os_log_send_and_compose_impl();
    }

    goto LABEL_32;
  }

LABEL_33:
  v26 = *MEMORY[0x1E69E9840];

  return v4;
}

- (CWFPrivateMACManager)privateMACManager
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1E0BC2D80;
  v10 = sub_1E0BC61FC;
  v11 = 0;
  mutexQueue = self->_mutexQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E0C9BEB8;
  v5[3] = &unk_1E86E6038;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(mutexQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)__detectBrokenBackhaulForAutoJoinWithNetwork:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2020000000;
  v39[3] = 0;
  v8 = dispatch_group_create();
  v9 = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
  dispatch_group_enter(v8);
  v10 = [(CWFXPCRequestProxy *)self wifiUserAgentConnection];

  if (v10)
  {
    v11 = [(CWFXPCRequestProxy *)self wifiUserAgentConnection];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = sub_1E0C9C238;
    v32[3] = &unk_1E86E7CF8;
    v33 = v6;
    v34 = self;
    v37 = v39;
    v38 = v9;
    v36 = v7;
    v35 = v8;
    (v11)[2](v11, v32);
  }

  dispatch_group_enter(v8);
  v12 = [(CWFXPCRequestProxy *)self apple80211WithVirtualInterfaceRole:0 parentInterfaceName:0];
  v13 = [v12 interfaceName];
  v14 = [(CWFXPCRequestProxy *)self SCNetworkServiceWithInterfaceName:v13];

  v15 = [v14 IPv4Router];
  v24 = v6;
  v16 = [v14 IPv6Router];
  v17 = v16;
  bbhMonitor = self->_bbhMonitor;
  if (v15)
  {
    v19 = v15;
  }

  else
  {
    v19 = v16;
  }

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = sub_1E0C9C818;
  v28[3] = &unk_1E86E7CD0;
  v28[4] = self;
  v31 = v39;
  v20 = v7;
  v30 = v20;
  v21 = v8;
  v29 = v21;
  [(CWFBrokenBackhaulMonitor *)bbhMonitor confirmBrokenBackhaulUsingTimeout:2000 count:2 preflightPingAddress:v19 completion:v28];
  v22 = [(CWFAutoJoinManager *)self->_autoJoinManager targetQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C9CCF8;
  block[3] = &unk_1E86E7D20;
  v26 = v20;
  v27 = v39;
  block[4] = self;
  v23 = v20;
  dispatch_group_notify(v21, v22, block);

  _Block_object_dispose(v39, 8);
}

- (void)__allowBrokenBackhaulPersonalHotspotFallbackForAutoJoinWithNetwork:(id)a3 reply:(id)a4
{
  v56[1] = *MEMORY[0x1E69E9840];
  v47 = a3;
  v6 = a4;
  v7 = [(CWFXPCRequestProxy *)self apple80211WithVirtualInterfaceRole:0 parentInterfaceName:0];
  v8 = [v7 RSSI:0];
  v9 = [v8 integerValue];

  v10 = [v7 interfaceName];
  v11 = [(CWFXPCRequestProxy *)self SCNetworkServiceWithInterfaceName:v10];

  v49 = [v11 IPv4Addresses];
  v48 = [v11 IPv4Router];
  v12 = [(CWFSCNetworkConfiguration *)self->_SCNetworkConfiguration IPv4InterfaceName];
  v13 = [v11 IPv6Addresses];
  v14 = [v11 IPv6Router];
  v15 = [(CWFSCNetworkConfiguration *)self->_SCNetworkConfiguration IPv6InterfaceName];
  v16 = v15;
  if (v9 <= -81)
  {
    if (v6)
    {
      v17 = MEMORY[0x1E696ABC0];
      v18 = v15;
      v19 = v14;
      v20 = v13;
      v21 = *MEMORY[0x1E696A798];
      v55 = *MEMORY[0x1E696A578];
      v56[0] = @"WiFi has poor RSSI";
      v22 = MEMORY[0x1E695DF20];
      v23 = v56;
      v24 = &v55;
LABEL_39:
      v38 = [v22 dictionaryWithObjects:v23 forKeys:v24 count:1];
      v39 = v21;
      v13 = v20;
      v14 = v19;
      v16 = v18;
      v40 = [v17 errorWithDomain:v39 code:1 userInfo:v38];
      v6[2](v6, v40, 0);

      goto LABEL_40;
    }

    goto LABEL_41;
  }

  if (v49)
  {
    v25 = v48 == 0;
  }

  else
  {
    v25 = 1;
  }

  v26 = v25 || v12 == 0;
  v27 = !v26;
  v46 = v12;
  if (v26 || ([v7 interfaceName], (v28 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v29 = 0;
    v30 = 1;
    if (!v13 || !v14 || !v16)
    {
      goto LABEL_28;
    }

    v44 = v13;
    v45 = v6;
    v43 = 0;
  }

  else
  {
    v29 = v28;
    v45 = v6;
    v6 = [v7 interfaceName];
    if ([v12 isEqual:v6])
    {

      v6 = v45;
      goto LABEL_30;
    }

    if (!v13 || !v14 || !v16)
    {

      v6 = v45;
      goto LABEL_37;
    }

    v44 = v13;
    v43 = 1;
  }

  v31 = [v7 interfaceName];
  if (v31)
  {
    v32 = v31;
    [v7 interfaceName];
    v42 = v29;
    v33 = v27;
    v35 = v34 = v14;
    v30 = [v16 isEqual:v35] ^ 1;

    v14 = v34;
    v27 = v33;
    v29 = v42;

    if (v43)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v30 = 1;
    if (v43)
    {
LABEL_23:

      v13 = v44;
      v6 = v45;
      if ((v27 & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_29:

      if (v30)
      {
        goto LABEL_37;
      }

LABEL_30:
      v36 = [(CWFXPCRequestProxy *)self wifiUserAgentConnection];

      v12 = v46;
      if (v36)
      {
        v37 = [(CWFXPCRequestProxy *)self wifiUserAgentConnection];
        v50[0] = MEMORY[0x1E69E9820];
        v50[1] = 3221225472;
        v50[2] = sub_1E0C9D1E4;
        v50[3] = &unk_1E86E7D48;
        v51 = v47;
        v52 = v6;
        (v37)[2](v37, v50);

        v38 = v51;
LABEL_40:

        goto LABEL_41;
      }

      goto LABEL_41;
    }
  }

  v13 = v44;
  v6 = v45;
LABEL_28:
  if (v27)
  {
    goto LABEL_29;
  }

LABEL_24:
  if (!v30)
  {
    goto LABEL_30;
  }

LABEL_37:
  v12 = v46;
  if (v6)
  {
    v17 = MEMORY[0x1E696ABC0];
    v18 = v16;
    v19 = v14;
    v20 = v13;
    v21 = *MEMORY[0x1E696A798];
    v53 = *MEMORY[0x1E696A578];
    v54 = @"WiFi is not primary IPv4/IPv6";
    v22 = MEMORY[0x1E695DF20];
    v23 = &v54;
    v24 = &v53;
    goto LABEL_39;
  }

LABEL_41:

  v41 = *MEMORY[0x1E69E9840];
}

- (CWFAutoJoinManager)autoJoinManager
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1E0BC2D80;
  v10 = sub_1E0BC61FC;
  v11 = 0;
  mutexQueue = self->_mutexQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E0C9D394;
  v5[3] = &unk_1E86E6A28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(mutexQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (CWFAutoJoinManager)autoJoinManagerCached
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1E0BC2D80;
  v10 = sub_1E0BC61FC;
  v11 = 0;
  mutexQueue = self->_mutexQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E0C9D758;
  v5[3] = &unk_1E86E6038;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(mutexQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)__noiManager
{
  noiManager = self->_noiManager;
  if (noiManager)
  {
    v3 = noiManager;
  }

  else
  {
    v5 = +[CWFNetworkOfInterestManager sharedInstance];
    v6 = self->_noiManager;
    self->_noiManager = v5;

    objc_initWeak(location, self);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1E0C9D9A8;
    v13[3] = &unk_1E86E7E38;
    objc_copyWeak(&v14, location);
    [(CWFNetworkOfInterestManager *)self->_noiManager setHomeNetworkDeterminationChangedHandler:v13];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1E0C9E44C;
    v11[3] = &unk_1E86E7E38;
    objc_copyWeak(&v12, location);
    [(CWFNetworkOfInterestManager *)self->_noiManager setWorkNetworkDeterminationChangedHandler:v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&v14);
    objc_destroyWeak(location);
    v3 = self->_noiManager;
    if (!v3)
    {
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

      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        LOWORD(location[0]) = 0;
        _os_log_send_and_compose_impl();
      }

      v3 = 0;
    }
  }

  return v3;
}

- (CWFNetworkOfInterestManager)noiManager
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1E0BC2D80;
  v10 = sub_1E0BC61FC;
  v11 = 0;
  mutexQueue = self->_mutexQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E0C9EA50;
  v5[3] = &unk_1E86E6038;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(mutexQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setTargetQueue:(id)a3 requestType:(int64_t)a4 interfaceName:(id)a5
{
  v8 = a3;
  v9 = a5;
  mutexQueue = self->_mutexQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1E0C9EB80;
  v13[3] = &unk_1E86E6B18;
  v13[4] = self;
  v14 = v9;
  v15 = v8;
  v16 = a4;
  v11 = v8;
  v12 = v9;
  dispatch_sync(mutexQueue, v13);
}

- (void)__startEventMonitoring
{
  v14 = *MEMORY[0x1E69E9840];
  if (!self->_isMonitoringEvents)
  {
    self->_isMonitoringEvents = 1;
    [(CWFXPCRequestProxy *)self __startMonitoringDefaultEventIDs];
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = [(CWFXPCRequestProxy *)self __wifiInterfaceNames];
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [(CWFXPCRequestProxy *)self __startMonitoringDefaultEventIDsForInterfaceName:*(*(&v9 + 1) + 8 * v7++)];
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }

    [(CWFXPCRequestProxy *)self __updateMonitoring:1 eventIDs:self->_mutableEventIDs];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)__stopEventMonitoring
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_isMonitoringEvents)
  {
    self->_isMonitoringEvents = 0;
    [(CWFXPCRequestProxy *)self __stopMonitoringDefaultEventIDs];
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = [(CWFXPCRequestProxy *)self __wifiInterfaceNames];
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [(CWFXPCRequestProxy *)self __stopMonitoringDefaultEventIDsForInterfaceName:*(*(&v9 + 1) + 8 * v7++)];
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }

    [(CWFXPCRequestProxy *)self __updateMonitoring:0 eventIDs:self->_mutableEventIDs];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)isMonitoringEvents
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  mutexQueue = self->_mutexQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E0C9EF28;
  v5[3] = &unk_1E86E6038;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(mutexQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)activate
{
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C9EFE0;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  dispatch_sync(mutexQueue, block);
}

- (void)invalidate
{
  [(CWFXPCRequestProxy *)self setWifiUserAgentConnection:0];
  [(CWFXPCRequestProxy *)self setWifiNetworkSharingUIServiceXPCConnection:0];
  [(CWFXPCRequestProxy *)self setWifiNetworkSharingAppexXPCConnections:0];
  [(CWFXPCRequestProxy *)self setWifiNetworkSharingAppXPCConnection:0];
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C9F6D0;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  dispatch_sync(mutexQueue, block);
}

- (id)__deviceUUID
{
  v35 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_1E0BC2D80;
  v25 = sub_1E0BC61FC;
  v26 = 0;
  v3 = [(CWFXPCRequestProxy *)self delegate];
  if (!v3)
  {
    goto LABEL_6;
  }

  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v20 = 0;
  v4 = dispatch_block_create(0, &unk_1F5B895D0);
  v5 = objc_alloc_init(CWFXPCRequest);
  [(CWFXPCRequest *)v5 setType:145];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1E0C9FB74;
  v15[3] = &unk_1E86E7E80;
  v17 = &v21;
  v18 = v19;
  v6 = v4;
  v16 = v6;
  [(CWFXPCRequest *)v5 setResponse:v15];
  [v3 XPCRequestProxy:self XPCConnection:self->_internalRequestXPCConnection receivedXPCRequest:v5];
  v7 = dispatch_time(0, 4000000000);
  if (!dispatch_block_wait(v6, v7))
  {

    _Block_object_dispose(v19, 8);
LABEL_6:
    v10 = v22[5];
    goto LABEL_11;
  }

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

  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v27 = 136446978;
    v28 = "[CWFXPCRequestProxy __deviceUUID]";
    v29 = 2082;
    v30 = "CWFXPCRequestProxy.m";
    v31 = 1024;
    v32 = 2120;
    v33 = 2048;
    v34 = 4000000000;
    _os_log_send_and_compose_impl();
  }

  _Block_object_dispose(v19, 8);
  v10 = 0;
LABEL_11:
  v12 = v10;

  _Block_object_dispose(&v21, 8);
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)__vendorSpecificIdentifierForXPCConnection:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AD60] string];
  v6 = [(CWFXPCRequestProxy *)self __deviceUUID];
  v7 = [v6 UUIDString];

  if (v7)
  {
    [v5 appendFormat:@"%@, ", v7];
    v8 = [v4 bundleID];
    if (v8 && sub_1E0CC9500())
    {
      v17 = 0;
      v18 = &v17;
      v19 = 0x2050000000;
      v9 = qword_1ECE86990;
      v20 = qword_1ECE86990;
      if (!qword_1ECE86990)
      {
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = sub_1E0CC9644;
        v16[3] = &unk_1E86E5600;
        v16[4] = &v17;
        sub_1E0CC9644(v16);
        v9 = v18[3];
      }

      v10 = v9;
      _Block_object_dispose(&v17, 8);
      v11 = [v9 applicationProxyForIdentifier:v8];
      v12 = [v11 deviceIdentifierForVendor];
      v13 = [v12 UUIDString];

      if (v13)
      {
        [v5 appendFormat:@"%@", v13];
        v14 = [v5 copy];
        v7 = v13;
      }

      else
      {
        v14 = 0;
        v7 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
    v8 = 0;
  }

  return v14;
}

- (id)__hashedSSID:(id)a3 XPCConnection:(id)a4 error:(id *)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = [(CWFXPCRequestProxy *)self __vendorSpecificIdentifierForXPCConnection:v9];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 dataUsingEncoding:4];
      if (v12)
      {
        v13 = v12;
        memset(v23, 0, sizeof(v23));
        CCHmac(2u, [v12 bytes], objc_msgSend(v12, "length"), objc_msgSend(v8, "bytes"), objc_msgSend(v8, "length"), v23);
        v14 = [MEMORY[0x1E695DEF0] dataWithBytes:v23 length:32];
        v15 = [v14 base64EncodedStringWithOptions:0];
        v16 = 0;
        goto LABEL_5;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  v20 = *MEMORY[0x1E696A798];
  v21 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
  v16 = CWFErrorWithDescription(v20, 22, v21);

  v15 = 0;
  if (a5 && v16)
  {
    v22 = v16;
    v15 = 0;
    v13 = 0;
    v14 = 0;
    *a5 = v16;
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

LABEL_5:
  v17 = v15;

  v18 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)__hashedBSSID:(id)a3 XPCConnection:(id)a4 error:(id *)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = CWFEthernetAddressDataFromString(a3);
  if (v9)
  {
    v10 = [(CWFXPCRequestProxy *)self __vendorSpecificIdentifierForXPCConnection:v8];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 dataUsingEncoding:4];
      if (v12)
      {
        v13 = v12;
        memset(v23, 0, sizeof(v23));
        CCHmac(2u, [v12 bytes], objc_msgSend(v12, "length"), objc_msgSend(v9, "bytes"), objc_msgSend(v9, "length"), v23);
        v14 = [MEMORY[0x1E695DEF0] dataWithBytes:v23 length:32];
        v15 = [v14 base64EncodedStringWithOptions:0];
        v16 = 0;
        goto LABEL_5;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  v20 = *MEMORY[0x1E696A798];
  v21 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
  v16 = CWFErrorWithDescription(v20, 22, v21);

  v15 = 0;
  if (a5 && v16)
  {
    v22 = v16;
    v15 = 0;
    v13 = 0;
    v14 = 0;
    *a5 = v16;
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

LABEL_5:
  v17 = v15;

  v18 = *MEMORY[0x1E69E9840];
  return v15;
}

- (void)__startMonitoringDefaultEventIDs
{
  [(CWFIO80211 *)self->_IO80211 startEventMonitoring];
  [(CWFSCNetworkConfiguration *)self->_SCNetworkConfiguration startEventMonitoring];
  SCNetworkReachability = self->_SCNetworkReachability;

  [(CWFSCNetworkReachability *)SCNetworkReachability startEventMonitoring];
}

- (void)__stopMonitoringDefaultEventIDs
{
  [(CWFIO80211 *)self->_IO80211 stopEventMonitoring];
  [(CWFSCNetworkConfiguration *)self->_SCNetworkConfiguration stopEventMonitoring];
  SCNetworkReachability = self->_SCNetworkReachability;

  [(CWFSCNetworkReachability *)SCNetworkReachability stopEventMonitoring];
}

- (void)__startMonitoringDefaultEventIDsForInterfaceName:(id)a3
{
  v7 = a3;
  v4 = [(CWFXPCRequestProxy *)self __apple80211WithInterfaceName:?];
  if (_os_feature_enabled_impl())
  {
    [v4 startMonitoringEventWithType:191 interfaceName:v7];
  }

  [v4 startMonitoringEventWithType:4 interfaceName:v7];
  [v4 startMonitoringEventWithType:3 interfaceName:v7];
  [v4 startMonitoringEventWithType:20 interfaceName:v7];
  [v4 startMonitoringEventWithType:76 interfaceName:v7];
  [v4 startMonitoringEventWithType:70 interfaceName:v7];
  [v4 startMonitoringEventWithType:71 interfaceName:v7];
  [v4 startMonitoringEventWithType:80 interfaceName:v7];
  [v4 startMonitoringEventWithType:39 interfaceName:v7];
  [v4 startMonitoringEventWithType:17 interfaceName:v7];
  [v4 startMonitoringEventWithType:12 interfaceName:v7];
  [v4 startMonitoringEventWithType:13 interfaceName:v7];
  v5 = [(CWFXPCRequestProxy *)self __SCNetworkServiceWithInterfaceName:v7];
  [v5 startEventMonitoring];
  v6 = [(CWFXPCRequestProxy *)self __EAP8021XWithInterfaceName:v7];
  [v6 startEventMonitoring];
}

- (void)__stopMonitoringDefaultEventIDsForInterfaceName:(id)a3
{
  v7 = a3;
  v4 = [(CWFXPCRequestProxy *)self __apple80211WithInterfaceName:?];
  if (_os_feature_enabled_impl())
  {
    [v4 stopMonitoringEventWithType:191 interfaceName:v7];
  }

  [v4 stopMonitoringEventWithType:4 interfaceName:v7];
  [v4 stopMonitoringEventWithType:3 interfaceName:v7];
  [v4 stopMonitoringEventWithType:20 interfaceName:v7];
  [v4 stopMonitoringEventWithType:76 interfaceName:v7];
  [v4 stopMonitoringEventWithType:70 interfaceName:v7];
  [v4 stopMonitoringEventWithType:71 interfaceName:v7];
  [v4 stopMonitoringEventWithType:80 interfaceName:v7];
  [v4 stopMonitoringEventWithType:39 interfaceName:v7];
  [v4 stopMonitoringEventWithType:17 interfaceName:v7];
  [v4 stopMonitoringEventWithType:12 interfaceName:v7];
  [v4 stopMonitoringEventWithType:13 interfaceName:v7];
  v5 = [(CWFXPCRequestProxy *)self __SCNetworkServiceWithInterfaceName:v7];
  [v5 stopEventMonitoring];
  v6 = [(CWFXPCRequestProxy *)self __EAP8021XWithInterfaceName:v7];
  [v6 stopEventMonitoring];
}

- (id)__wifiInterfaceNames
{
  v2 = [(NSMutableDictionary *)self->_apple80211Map allKeys];
  v3 = [v2 mutableCopy];

  [v3 removeObject:&stru_1F5B8FC80];

  return v3;
}

- (id)wifiInterfaceNames
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1E0BC2D80;
  v10 = sub_1E0BC61FC;
  v11 = 0;
  mutexQueue = self->_mutexQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E0CA06A0;
  v5[3] = &unk_1E86E6038;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(mutexQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)__interfaceNames
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableDictionary *)self->_apple80211Map allKeys];
  v4 = [v3 mutableCopy];

  [v4 removeObject:&stru_1F5B8FC80];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(NSMutableDictionary *)self->_apple80211Map allValues];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([v10 virtualInterfaceRole])
        {
          v11 = [v10 interfaceName];
          [v4 removeObject:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)interfaceNames
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1E0BC2D80;
  v10 = sub_1E0BC61FC;
  v11 = 0;
  mutexQueue = self->_mutexQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E0CA0964;
  v5[3] = &unk_1E86E6038;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(mutexQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)__virtualInterfaceNames
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableDictionary *)self->_apple80211Map allKeys];
  v4 = [v3 mutableCopy];

  [v4 removeObject:&stru_1F5B8FC80];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(NSMutableDictionary *)self->_apple80211Map allValues];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if (![v10 virtualInterfaceRole])
        {
          v11 = [v10 interfaceName];
          [v4 removeObject:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)virtualInterfaceNames
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1E0BC2D80;
  v10 = sub_1E0BC61FC;
  v11 = 0;
  mutexQueue = self->_mutexQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E0CA0C28;
  v5[3] = &unk_1E86E6038;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(mutexQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)__interfaceSpecificEventIDs:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DFA8] set];
  v6 = [(NSMutableDictionary *)self->_apple80211Map allKeys];
  v7 = [v6 mutableCopy];

  v29 = v7;
  [v7 removeObject:&stru_1F5B8FC80];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v35;
    v27 = *v35;
    v28 = v8;
    do
    {
      v12 = 0;
      do
      {
        if (*v35 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v34 + 1) + 8 * v12);
        v14 = [v13 interfaceName];
        if (v14)
        {

LABEL_9:
          [v5 addObject:v13];
          goto LABEL_10;
        }

        if (([v13 type] - 43) < 4)
        {
          goto LABEL_9;
        }

        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v15 = v29;
        v16 = [v15 countByEnumeratingWithState:&v30 objects:v38 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v31;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v31 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v30 + 1) + 8 * i);
              v21 = [v13 copy];
              v22 = v21;
              if (v21)
              {
                [v21 setInterfaceName:v20];
                [v5 addObject:v22];
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v30 objects:v38 count:16];
          }

          while (v17);
        }

        v11 = v27;
        v8 = v28;
LABEL_10:
        ++v12;
      }

      while (v12 != v10);
      v23 = [v8 countByEnumeratingWithState:&v34 objects:v39 count:16];
      v10 = v23;
    }

    while (v23);
  }

  v24 = [v5 copy];
  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

- (void)__updateMonitoring:(BOOL)a3 eventIDs:(id)a4
{
  v4 = a3;
  v34 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        v12 = [v11 type];
        if (v12 <= 15)
        {
          if (v12 > 4)
          {
            switch(v12)
            {
              case 5:
                v23 = [v11 interfaceName];
                v14 = [(CWFXPCRequestProxy *)self __apple80211WithInterfaceName:v23];

                v15 = [v11 interfaceName];
                v16 = v14;
                v17 = 15;
                break;
              case 8:
                v25 = [v11 interfaceName];
                v14 = [(CWFXPCRequestProxy *)self __apple80211WithInterfaceName:v25];

                v15 = [v11 interfaceName];
                v16 = v14;
                v17 = 8;
                break;
              case 15:
                v19 = [v11 interfaceName];
                v14 = [(CWFXPCRequestProxy *)self __apple80211WithInterfaceName:v19];

                v15 = [v11 interfaceName];
                v16 = v14;
                v17 = 67;
                break;
              default:
                continue;
            }
          }

          else
          {
            switch(v12)
            {
              case 1:
                v22 = [v11 interfaceName];
                v14 = [(CWFXPCRequestProxy *)self __apple80211WithInterfaceName:v22];

                v15 = [v11 interfaceName];
                v16 = v14;
                v17 = 1;
                break;
              case 2:
                v24 = [v11 interfaceName];
                v14 = [(CWFXPCRequestProxy *)self __apple80211WithInterfaceName:v24];

                v15 = [v11 interfaceName];
                v16 = v14;
                v17 = 2;
                break;
              case 4:
                v13 = [v11 interfaceName];
                v14 = [(CWFXPCRequestProxy *)self __apple80211WithInterfaceName:v13];

                v15 = [v11 interfaceName];
                v16 = v14;
                v17 = 11;
                break;
              default:
                continue;
            }
          }

          goto LABEL_33;
        }

        if (v12 > 0x25)
        {
          goto LABEL_23;
        }

        if (((1 << v12) & 0x1800180000) == 0)
        {
          if (v12 == 31)
          {
            v26 = [v11 interfaceName];
            v14 = [(CWFXPCRequestProxy *)self __apple80211WithInterfaceName:v26];

            v15 = [v11 interfaceName];
            v16 = v14;
            v17 = 20;
          }

          else if (v12 == 37)
          {
            v20 = [v11 interfaceName];
            v14 = [(CWFXPCRequestProxy *)self __apple80211WithInterfaceName:v20];

            v15 = [v11 interfaceName];
            v16 = v14;
            v17 = 63;
          }

          else
          {
LABEL_23:
            if (v12 == 16)
            {
              v27 = [v11 interfaceName];
              v14 = [(CWFXPCRequestProxy *)self __apple80211WithInterfaceName:v27];

              v15 = [v11 interfaceName];
              v16 = v14;
              v17 = 68;
            }

            else
            {
              if (v12 != 17)
              {
                continue;
              }

              v21 = [v11 interfaceName];
              v14 = [(CWFXPCRequestProxy *)self __apple80211WithInterfaceName:v21];

              v15 = [v11 interfaceName];
              v16 = v14;
              v17 = 46;
            }
          }

LABEL_33:
          if (v4)
          {
            [v16 startMonitoringEventWithType:v17 interfaceName:v15];
          }

          else
          {
            [v16 stopMonitoringEventWithType:v17 interfaceName:v15];
          }

          goto LABEL_37;
        }

        v18 = [v11 interfaceName];
        v14 = [(CWFXPCRequestProxy *)self __SCNetworkInterfaceWithInterfaceName:v18];

        if (v4)
        {
          [v14 startEventMonitoring];
        }

        else
        {
          [v14 stopEventMonitoring];
        }

LABEL_37:
      }

      v8 = [v6 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v8);
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (id)__linkDownStatusWithInterfaceName:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1E0BC2D80;
  v17 = sub_1E0BC61FC;
  v18 = 0;
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0CA149C;
  block[3] = &unk_1E86E7BE0;
  v11 = self;
  v12 = &v13;
  v10 = v4;
  v6 = v4;
  dispatch_sync(mutexQueue, block);
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

- (id)__autojoinStatusWithInterfaceName:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1E0BC2D80;
  v17 = sub_1E0BC61FC;
  v18 = 0;
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0CA1628;
  block[3] = &unk_1E86E7BE0;
  v11 = self;
  v12 = &v13;
  v10 = v4;
  v6 = v4;
  dispatch_sync(mutexQueue, block);
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

- (id)__joinStatusWithInterfaceName:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1E0BC2D80;
  v17 = sub_1E0BC61FC;
  v18 = 0;
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0CA17B8;
  block[3] = &unk_1E86E7BE0;
  v11 = self;
  v12 = &v13;
  v10 = v4;
  v6 = v4;
  dispatch_sync(mutexQueue, block);
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

- (id)__roamStatusWithInterfaceName:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1E0BC2D80;
  v17 = sub_1E0BC61FC;
  v18 = 0;
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0CA1944;
  block[3] = &unk_1E86E7BE0;
  v11 = self;
  v12 = &v13;
  v10 = v4;
  v6 = v4;
  dispatch_sync(mutexQueue, block);
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

- (id)__linkQualityMetricWithInterfaceName:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1E0BC2D80;
  v17 = sub_1E0BC61FC;
  v18 = 0;
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0CA1AD0;
  block[3] = &unk_1E86E7BE0;
  v11 = self;
  v12 = &v13;
  v10 = v4;
  v6 = v4;
  dispatch_sync(mutexQueue, block);
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

- (id)__linkDownNetworkWithInterfaceName:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1E0BC2D80;
  v17 = sub_1E0BC61FC;
  v18 = 0;
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0CA1C5C;
  block[3] = &unk_1E86E7BE0;
  v11 = self;
  v12 = &v13;
  v10 = v4;
  v6 = v4;
  dispatch_sync(mutexQueue, block);
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

- (id)__cachedKnownNetwork
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1E0BC2D80;
  v10 = sub_1E0BC61FC;
  v11 = 0;
  mutexQueue = self->_mutexQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E0CA1DC8;
  v5[3] = &unk_1E86E6038;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(mutexQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)__setCachedKnownNetwork:(id)a3
{
  v4 = a3;
  mutexQueue = self->_mutexQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E0CA1EBC;
  v7[3] = &unk_1E86E6420;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(mutexQueue, v7);
}

- (void)__setLinkDownStatus:(id)a3 interfaceName:(id)a4
{
  v6 = a3;
  v7 = a4;
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0CA1FD8;
  block[3] = &unk_1E86E6060;
  v12 = v7;
  v13 = self;
  v14 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(mutexQueue, block);
}

- (void)__setJoinStatus:(id)a3 interfaceName:(id)a4
{
  v6 = a3;
  v7 = a4;
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0CA2130;
  block[3] = &unk_1E86E6060;
  v12 = v7;
  v13 = self;
  v14 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(mutexQueue, block);
}

- (void)__setAutoJoinStatus:(id)a3 interfaceName:(id)a4
{
  v6 = a3;
  v7 = a4;
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0CA2264;
  block[3] = &unk_1E86E6060;
  v12 = v7;
  v13 = self;
  v14 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(mutexQueue, block);
}

- (void)__setRoamStatus:(id)a3 interfaceName:(id)a4
{
  v6 = a3;
  v7 = a4;
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0CA239C;
  block[3] = &unk_1E86E6060;
  v12 = v7;
  v13 = self;
  v14 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(mutexQueue, block);
}

- (void)__setLinkQualityMetric:(id)a3 interfaceName:(id)a4
{
  v6 = a3;
  v7 = a4;
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0CA24D0;
  block[3] = &unk_1E86E6060;
  v12 = v7;
  v13 = self;
  v14 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(mutexQueue, block);
}

- (void)__postWiFiUIStateFlagsWithInterfaceName:(id)a3
{
  v4 = a3;
  v8 = objc_alloc_init(CWFXPCEvent);
  [(CWFXPCEvent *)v8 setType:28];
  [(CWFXPCEvent *)v8 setInterfaceName:v4];

  v5 = [MEMORY[0x1E695DF00] date];
  [(CWFXPCEvent *)v8 setTimestamp:v5];

  v6 = [(CWFXPCRequestProxy *)self delegate];
  v7 = v6;
  if (v6)
  {
    [v6 XPCRequestProxy:self sendXPCEvent:v8 reply:0];
  }
}

- (void)__setupEventHandlersWithInterfaceName:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_apple80211Map objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 eventHandler];

    if (!v7)
    {
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = sub_1E0CA28A8;
      v24[3] = &unk_1E86E7EF8;
      v25 = v4;
      v26 = self;
      [v6 setEventHandler:v24];
    }
  }

  v8 = [(CWFXPCRequestProxy *)self __SCNetworkServiceWithInterfaceName:v4];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 eventHandler];

    if (!v10)
    {
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = sub_1E0CA46B4;
      v22[3] = &unk_1E86E7F20;
      v22[4] = self;
      v23 = v4;
      [v9 setEventHandler:v22];
    }
  }

  v11 = [(CWFXPCRequestProxy *)self __SCNetworkInterfaceWithInterfaceName:v4];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 eventHandler];

    if (!v13)
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = sub_1E0CA4D78;
      v19[3] = &unk_1E86E7F48;
      v20 = v4;
      v21 = self;
      [v12 setEventHandler:v19];
    }
  }

  v14 = [(CWFXPCRequestProxy *)self __EAP8021XWithInterfaceName:v4];
  v15 = v14;
  if (v14)
  {
    v16 = [v14 eventHandler];

    if (!v16)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = sub_1E0CA51DC;
      v17[3] = &unk_1E86E7F70;
      v17[4] = self;
      v18 = v4;
      [v15 setEventHandler:v17];
    }
  }
}

- (void)__updateWiFiNetworkServices
{
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0CA530C;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  dispatch_async(mutexQueue, block);
}

- (void)__updateSystemConfigurationInterfacesWithReason:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v56[0] = 0;
  v56[1] = v56;
  v56[2] = 0x2020000000;
  v57 = 0;
  v55[0] = 0;
  v55[1] = v55;
  v55[2] = 0x2020000000;
  v55[3] = 0;
  v54[0] = 0;
  v54[1] = v54;
  v54[2] = 0x2020000000;
  v54[3] = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  v49[0] = 0;
  v49[1] = v49;
  v49[2] = 0x2020000000;
  v49[3] = 0;
  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x2020000000;
  v48[3] = 0;
  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x2020000000;
  v47[3] = 0;
  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x2020000000;
  v46[3] = 0;
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x2020000000;
  v45[3] = 0;
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x2020000000;
  v44 = 0;
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x2020000000;
  v42[3] = 0;
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x2020000000;
  v41[3] = 0;
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x2020000000;
  v40[3] = 0;
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x2020000000;
  v39 = 0;
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x2020000000;
  v37[3] = 0;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x2020000000;
  v36[3] = 0;
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x2020000000;
  v35[3] = 0;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2020000000;
  v34 = 0;
  v57 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v51[3] = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  systemConfigInterfaceQueue = self->_systemConfigInterfaceQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0CA5A54;
  block[3] = &unk_1E86E7F98;
  v16 = &v50;
  v17 = v48;
  v18 = v43;
  v19 = v47;
  v20 = v46;
  v21 = v45;
  v22 = v38;
  v23 = v42;
  v24 = v41;
  v25 = v40;
  v26 = v33;
  v27 = v37;
  v28 = v36;
  v29 = v35;
  v30 = v55;
  v31 = v56;
  v32 = v54;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v15 = v49;
  v9 = v7;
  v10 = v6;
  v11 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, block);
  dispatch_async(systemConfigInterfaceQueue, v11);

  _Block_object_dispose(v33, 8);
  _Block_object_dispose(v35, 8);
  _Block_object_dispose(v36, 8);
  _Block_object_dispose(v37, 8);
  _Block_object_dispose(v38, 8);
  _Block_object_dispose(v40, 8);
  _Block_object_dispose(v41, 8);
  _Block_object_dispose(v42, 8);
  _Block_object_dispose(v43, 8);
  _Block_object_dispose(v45, 8);
  _Block_object_dispose(v46, 8);
  _Block_object_dispose(v47, 8);
  _Block_object_dispose(v48, 8);
  _Block_object_dispose(v49, 8);
  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(v54, 8);
  _Block_object_dispose(v55, 8);
  _Block_object_dispose(v56, 8);
}

- (void)__updateApple80211InterfacesWithReason:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v56[0] = 0;
  v56[1] = v56;
  v56[2] = 0x2020000000;
  v57 = 0;
  v55[0] = 0;
  v55[1] = v55;
  v55[2] = 0x2020000000;
  v55[3] = 0;
  v54[0] = 0;
  v54[1] = v54;
  v54[2] = 0x2020000000;
  v54[3] = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  v49[0] = 0;
  v49[1] = v49;
  v49[2] = 0x2020000000;
  v49[3] = 0;
  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x2020000000;
  v48[3] = 0;
  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x2020000000;
  v47[3] = 0;
  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x2020000000;
  v46[3] = 0;
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x2020000000;
  v45[3] = 0;
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x2020000000;
  v44[3] = 0;
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x2020000000;
  v43[3] = 0;
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x2020000000;
  v42[3] = 0;
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x2020000000;
  v41[3] = 0;
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x2020000000;
  v40[3] = 0;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2020000000;
  v39[3] = 0;
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x2020000000;
  v38[3] = 0;
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x2020000000;
  v37[3] = 0;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x2020000000;
  v36[3] = 0;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x2020000000;
  v35 = 0;
  v57 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v51[3] = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  apple80211InterfaceQueue = self->_apple80211InterfaceQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1E0CA6C8C;
  v12[3] = &unk_1E86E7FE8;
  v16 = &v50;
  v17 = v48;
  v18 = v47;
  v19 = v46;
  v20 = v45;
  v21 = v44;
  v22 = v43;
  v23 = v42;
  v24 = v41;
  v25 = v40;
  v26 = v39;
  v27 = v34;
  v28 = v38;
  v29 = v37;
  v30 = v36;
  v31 = v55;
  v32 = v56;
  v33 = v54;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v15 = v49;
  v9 = v7;
  v10 = v6;
  v11 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, v12);
  dispatch_async(apple80211InterfaceQueue, v11);

  _Block_object_dispose(v34, 8);
  _Block_object_dispose(v36, 8);
  _Block_object_dispose(v37, 8);
  _Block_object_dispose(v38, 8);
  _Block_object_dispose(v39, 8);
  _Block_object_dispose(v40, 8);
  _Block_object_dispose(v41, 8);
  _Block_object_dispose(v42, 8);
  _Block_object_dispose(v43, 8);
  _Block_object_dispose(v44, 8);
  _Block_object_dispose(v45, 8);
  _Block_object_dispose(v46, 8);
  _Block_object_dispose(v47, 8);
  _Block_object_dispose(v48, 8);
  _Block_object_dispose(v49, 8);
  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(v54, 8);
  _Block_object_dispose(v55, 8);
  _Block_object_dispose(v56, 8);
}

- (void)__updateWiFiInterfacesWithReason:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1E0CA8198;
  v10[3] = &unk_1E86E8010;
  v11 = v6;
  v12 = v7;
  v10[4] = self;
  v8 = v6;
  v9 = v7;
  [(CWFXPCRequestProxy *)self __updateApple80211InterfacesWithReason:v8 reply:v10];
}

- (void)__handleBrokenBackhaulState:(int64_t)a3 timestamp:(id)a4
{
  v58 = *MEMORY[0x1E69E9840];
  v6 = a4;
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

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = sub_1E0BD3BE8(a3);
    v11 = sub_1E0BCC248(v6);
    v48 = 136447234;
    v49 = "[CWFXPCRequestProxy __handleBrokenBackhaulState:timestamp:]";
    v50 = 2082;
    v51 = "CWFXPCRequestProxy.m";
    v52 = 1024;
    v53 = 3732;
    v54 = 2114;
    v55 = v10;
    v56 = 2114;
    v57 = v11;
    LODWORD(v38) = 48;
    v37 = &v48;
    _os_log_send_and_compose_impl();
  }

  v12 = [(CWFXPCRequestProxy *)self apple80211WithVirtualInterfaceRole:0 parentInterfaceName:0];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 interfaceName];
    v15 = [(CWFXPCRequestProxy *)self __currentNetworkProfileWithInterfaceName:v14];

    if (v15)
    {
      if ((a3 - 3) >= 2)
      {
        if (a3 == 6)
        {
          if (!_os_feature_enabled_impl() || !_os_feature_enabled_impl())
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
            v29 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v30 = sub_1E0BD3BE8(6);
            v39 = [v15 networkName];
            v31 = [v39 redactedForWiFi];
            v48 = 138543618;
            v49 = v30;
            v50 = 2114;
            v51 = v31;
            _os_log_send_and_compose_impl();
          }

          v19 = objc_alloc_init(CWFAutoJoinParameters);
          [(CWFAutoJoinParameters *)v19 setTrigger:67];
          v32 = [v13 interfaceName];
          [(CWFXPCRequestProxy *)self __performAutoJoinWithParameters:v19 interfaceName:v32];

          goto LABEL_12;
        }

        if (a3 != 1)
        {
LABEL_13:
          v20 = objc_alloc_init(CWFXPCEvent);
          [(CWFXPCEvent *)v20 setType:41];
          v21 = [v13 interfaceName];
          [(CWFXPCEvent *)v20 setInterfaceName:v21];

          [(CWFXPCEvent *)v20 setTimestamp:v6];
          v46[0] = @"BrokenBackhaulState";
          v22 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
          v46[1] = @"BrokenBackhaulStateTimestamp";
          v47[0] = v22;
          v47[1] = v6;
          v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:v46 count:2];
          [(CWFXPCEvent *)v20 setInfo:v23];

          eventQueue = self->_eventQueue;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = sub_1E0CA8A24;
          block[3] = &unk_1E86E6420;
          block[4] = self;
          v41 = v20;
          v25 = v20;
          dispatch_async(eventQueue, block);

          goto LABEL_14;
        }
      }

      v16 = [v15 brokenBackhaulState:v37];
      [v15 setBrokenBackhaulState:a3];
      [v15 setBrokenBackhaulStateUpdatedAt:v6];
      v17 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F5BBCA00, &unk_1F5BBCA18, 0}];
      v18 = [v13 interfaceName];
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = sub_1E0CA882C;
      v42[3] = &unk_1E86E8038;
      v43 = v15;
      v44 = v16;
      v45 = a3;
      [(CWFXPCRequestProxy *)self __updateNetworkProfile:v43 updateProperties:v17 interfaceName:v18 reply:v42];

      v19 = v43;
LABEL_12:

      goto LABEL_13;
    }

    v34 = CWFGetOSLog();
    if (v34)
    {
      v15 = CWFGetOSLog();
    }

    else
    {
      v15 = MEMORY[0x1E69E9C10];
      v36 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v48) = 0;
      goto LABEL_33;
    }
  }

  else
  {
    v33 = CWFGetOSLog();
    if (v33)
    {
      v15 = CWFGetOSLog();
    }

    else
    {
      v15 = MEMORY[0x1E69E9C10];
      v35 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v48 = 136446722;
      v49 = "[CWFXPCRequestProxy __handleBrokenBackhaulState:timestamp:]";
      v50 = 2082;
      v51 = "CWFXPCRequestProxy.m";
      v52 = 1024;
      v53 = 3736;
LABEL_33:
      _os_log_send_and_compose_impl();
    }
  }

LABEL_14:

  v26 = *MEMORY[0x1E69E9840];
}

- (id)__queryMobileAssetA11:(id *)a3
{
  v33 = *MEMORY[0x1E69E9840];
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
    v23 = 136446978;
    v24 = "[CWFXPCRequestProxy __queryMobileAssetA11:]";
    v25 = 2082;
    v26 = "CWFXPCRequestProxy.m";
    v27 = 1024;
    v28 = 3813;
    v29 = 2080;
    v30 = "[CWFXPCRequestProxy __queryMobileAssetA11:]";
    _os_log_send_and_compose_impl();
  }

  v8 = [(CWFXPCRequestProxy *)self __apple80211WithVirtualInterfaceRole:0 parentInterfaceName:0];
  if (!v8)
  {
    v16 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", 0xFFFFFFFFFFFFF0C2);
    v13 = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", -3902, v16);

    v17 = CWFGetOSLog();
    if (v17)
    {
      v12 = CWFGetOSLog();
    }

    else
    {
      v12 = MEMORY[0x1E69E9C10];
      v20 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v23 = 136446722;
      v24 = "[CWFXPCRequestProxy __queryMobileAssetA11:]";
      v25 = 2082;
      v26 = "CWFXPCRequestProxy.m";
      v27 = 1024;
      v28 = 3815;
      _os_log_send_and_compose_impl();
    }

    goto LABEL_27;
  }

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
    [v8 interfaceName];
    v23 = 136447234;
    v25 = 2082;
    v24 = "[CWFXPCRequestProxy __queryMobileAssetA11:]";
    v26 = "CWFXPCRequestProxy.m";
    v27 = 1024;
    v28 = 3817;
    v29 = 2080;
    v30 = "[CWFXPCRequestProxy __queryMobileAssetA11:]";
    v32 = v31 = 2112;
    _os_log_send_and_compose_impl();
  }

  v22 = 0;
  v12 = [v8 powerTableInfo:&v22];
  v13 = v22;
  if (v13)
  {
    v18 = CWFGetOSLog();
    if (v18)
    {
      v19 = CWFGetOSLog();
    }

    else
    {
      v19 = MEMORY[0x1E69E9C10];
      v21 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v23 = 136447234;
      v25 = 2082;
      v24 = "[CWFXPCRequestProxy __queryMobileAssetA11:]";
      v26 = "CWFXPCRequestProxy.m";
      v27 = 1024;
      v28 = 3819;
      v29 = 2080;
      v30 = "[CWFXPCRequestProxy __queryMobileAssetA11:]";
      v31 = 2112;
      v32 = v13;
      _os_log_send_and_compose_impl();
    }

LABEL_27:
    v12 = 0;
    if (a3 && v13)
    {
      v12 = 0;
      *a3 = [v13 copy];
    }
  }

  v14 = *MEMORY[0x1E69E9840];

  return v12;
}

- (void)__setupEventHandlers
{
  objc_initWeak(location, self);
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = sub_1E0BD4EEC;
  v41[3] = &unk_1E86E8060;
  objc_copyWeak(&v42, location);
  [(CWFKernelEventMonitor *)self->_keventMonitor setEventHandler:v41];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = sub_1E0CA9894;
  v39[3] = &unk_1E86E8088;
  objc_copyWeak(&v40, location);
  [(CWFIO80211 *)self->_IO80211 setEventHandler:v39];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = sub_1E0CA9BDC;
  v37[3] = &unk_1E86E80B0;
  objc_copyWeak(&v38, location);
  [(CWFSCNetworkConfiguration *)self->_SCNetworkConfiguration setEventHandler:v37];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = sub_1E0CAA5C8;
  v35[3] = &unk_1E86E80D8;
  objc_copyWeak(&v36, location);
  [(CWFSCNetworkReachability *)self->_SCNetworkReachability setEventHandler:v35];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = sub_1E0CAA678;
  v33[3] = &unk_1E86E8100;
  objc_copyWeak(&v34, location);
  [(CWFBrokenBackhaulMonitor *)self->_bbhMonitor setUpdatedBrokenBackhaulState:v33];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = sub_1E0CAA6E4;
  v31[3] = &unk_1E86E6190;
  objc_copyWeak(&v32, location);
  [(CWFAssetMgmtProtocol *)self->_mobileAssetManager setEventHandler:v31];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = sub_1E0CAA868;
  v29[3] = &unk_1E86E8150;
  objc_copyWeak(&v30, location);
  [(CWFWiFiNetworkSharingManager *)self->_wifiNetworkSharingManager setAppForegroundStateHandler:v29];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = sub_1E0CAAC2C;
  v27[3] = &unk_1E86E8178;
  objc_copyWeak(&v28, location);
  [(CWFWiFiNetworkSharingManager *)self->_wifiNetworkSharingManager setPasswordHandler:v27];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = sub_1E0CAAE2C;
  v25[3] = &unk_1E86E81A0;
  objc_copyWeak(&v26, location);
  [(CWFWiFiNetworkSharingManager *)self->_wifiNetworkSharingManager setCaptivePortalCredentialsHandler:v25];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = sub_1E0CAB02C;
  v23[3] = &unk_1E86E81C8;
  objc_copyWeak(&v24, location);
  [(CWFWiFiNetworkSharingManager *)self->_wifiNetworkSharingManager setKnownNetworksHandler:v23];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = sub_1E0CAB1CC;
  v21[3] = &unk_1E86E81F0;
  objc_copyWeak(&v22, location);
  [(CWFWiFiNetworkSharingManager *)self->_wifiNetworkSharingManager setHiddenNetworkSSIDListHandler:v21];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_1E0CAB268;
  v19[3] = &unk_1E86E8218;
  objc_copyWeak(&v20, location);
  [(CWFWiFiNetworkSharingManager *)self->_wifiNetworkSharingManager setPerformAskToShareScanHandler:v19];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1E0CAB510;
  v17[3] = &unk_1E86E8240;
  objc_copyWeak(&v18, location);
  [(CWFWiFiNetworkSharingManager *)self->_wifiNetworkSharingManager setPerformAskToShareAccessoryScanHandler:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1E0CABB50;
  v15[3] = &unk_1E86E82B8;
  objc_copyWeak(&v16, location);
  [(CWFWiFiNetworkSharingManager *)self->_wifiNetworkSharingManager setPresentAuthorizationProxCardHandler:v15];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1E0CABD2C;
  v13[3] = &unk_1E86E8308;
  objc_copyWeak(&v14, location);
  [(CWFWiFiNetworkSharingManager *)self->_wifiNetworkSharingManager setPresentAskToShareProxCardHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1E0CABF08;
  v11[3] = &unk_1E86E8358;
  objc_copyWeak(&v12, location);
  [(CWFWiFiNetworkSharingManager *)self->_wifiNetworkSharingManager setPresentAskToShareUserNotificationHandler:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1E0CAC108;
  v9[3] = &unk_1E86E8380;
  objc_copyWeak(&v10, location);
  [(CWFWiFiNetworkSharingManager *)self->_wifiNetworkSharingManager setNetworkListUpdateHandler:v9];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E0CAC264;
  v7[3] = &unk_1E86E83A8;
  objc_copyWeak(&v8, location);
  [(CWFWiFiNetworkSharingManager *)self->_wifiNetworkSharingManager setAskToShareNetworkListChangeHandler:v7];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E0CAC3A4;
  v5[3] = &unk_1E86E83D0;
  objc_copyWeak(&v6, location);
  [(CWFWiFiNetworkSharingManager *)self->_wifiNetworkSharingManager setAskToShareStatusChangeHandler:v5];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1E0CAC4F8;
  v3[3] = &unk_1E86E83F8;
  objc_copyWeak(&v4, location);
  [(CWFWiFiNetworkSharingManager *)self->_wifiNetworkSharingManager setAuthorizationLevelChangeHandler:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&v26);
  objc_destroyWeak(&v28);
  objc_destroyWeak(&v30);
  objc_destroyWeak(&v32);
  objc_destroyWeak(&v34);
  objc_destroyWeak(&v36);
  objc_destroyWeak(&v38);
  objc_destroyWeak(&v40);
  objc_destroyWeak(&v42);
  objc_destroyWeak(location);
}

- (void)__updateJoinStatusWithAssoc:(id)a3
{
  v19[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_mutableJoinStatusMap objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 associationEndedAt];

    if (!v7)
    {
      v8 = [MEMORY[0x1E695DF00] date];
      [v6 setAssociationEndedAt:v8];
      v9 = objc_alloc_init(CWFXPCEvent);
      [(CWFXPCEvent *)v9 setType:13];
      [(CWFXPCEvent *)v9 setInterfaceName:v4];
      v10 = [v6 associationEndedAt];
      [(CWFXPCEvent *)v9 setTimestamp:v10];

      v18 = @"JoinStatus";
      v11 = [v6 copy];
      v19[0] = v11;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      [(CWFXPCEvent *)v9 setInfo:v12];

      eventQueue = self->_eventQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1E0CACAB0;
      block[3] = &unk_1E86E6420;
      block[4] = self;
      v17 = v9;
      v14 = v9;
      dispatch_async(eventQueue, block);
      [(CWFXPCRequestProxy *)self __updateAutoJoinStatusWithJoin:v4];
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)__updateJoinStatusWithError:(id)a3 interaceName:(id)a4
{
  v22[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(NSMutableDictionary *)self->_mutableJoinStatusMap objectForKeyedSubscript:v7];
  v9 = v8;
  if (v6 && v8)
  {
    v10 = [MEMORY[0x1E695DF00] date];
    v11 = [v9 associationEndedAt];

    if (!v11)
    {
      [v9 setAssociationEndedAt:v10];
    }

    [v9 setError:v6];
    [v9 setEndedAt:v10];
    v12 = objc_alloc_init(CWFXPCEvent);
    [(CWFXPCEvent *)v12 setType:13];
    [(CWFXPCEvent *)v12 setInterfaceName:v7];
    v13 = [v9 associationEndedAt];
    [(CWFXPCEvent *)v12 setTimestamp:v13];

    v21 = @"JoinStatus";
    v14 = [v9 copy];
    v22[0] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    [(CWFXPCEvent *)v12 setInfo:v15];

    eventQueue = self->_eventQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0CACD28;
    block[3] = &unk_1E86E6420;
    block[4] = self;
    v20 = v12;
    v17 = v12;
    dispatch_async(eventQueue, block);
    [(CWFXPCRequestProxy *)self __updateAutoJoinStatusWithJoin:v7];
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)updateJoinStatusWithIPv4:(id)a3
{
  v4 = a3;
  v5 = [(CWFXPCRequestProxy *)self SCNetworkServiceWithInterfaceName:v4];
  v6 = [v5 IPv4Addresses];
  v7 = [v5 IPv4Router];
  v8 = [(CWFSCNetworkConfiguration *)self->_SCNetworkConfiguration IPv4InterfaceName];
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0CACEC4;
  block[3] = &unk_1E86E8420;
  block[4] = self;
  v15 = v4;
  v16 = v6;
  v17 = v7;
  v18 = v8;
  v10 = v8;
  v11 = v7;
  v12 = v6;
  v13 = v4;
  dispatch_async(mutexQueue, block);
}

- (void)updateJoinStatusWithIPv6:(id)a3
{
  v4 = a3;
  v5 = [(CWFXPCRequestProxy *)self SCNetworkServiceWithInterfaceName:v4];
  v6 = [v5 IPv6Addresses];
  v7 = [v5 IPv6Router];
  v8 = [(CWFSCNetworkConfiguration *)self->_SCNetworkConfiguration IPv6InterfaceName];
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0CAD3D8;
  block[3] = &unk_1E86E8420;
  block[4] = self;
  v15 = v4;
  v16 = v6;
  v17 = v7;
  v18 = v8;
  v10 = v8;
  v11 = v7;
  v12 = v6;
  v13 = v4;
  dispatch_async(mutexQueue, block);
}

- (void)__updateJoinStatusWithAuth:(id)a3
{
  v19[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_mutableJoinStatusMap objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 authenticationEndedAt];

    if (!v7)
    {
      v8 = [MEMORY[0x1E695DF00] date];
      [v6 setAuthenticationEndedAt:v8];
      v9 = objc_alloc_init(CWFXPCEvent);
      [(CWFXPCEvent *)v9 setType:13];
      [(CWFXPCEvent *)v9 setInterfaceName:v4];
      v10 = [v6 authenticationEndedAt];
      [(CWFXPCEvent *)v9 setTimestamp:v10];

      v18 = @"JoinStatus";
      v11 = [v6 copy];
      v19[0] = v11;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      [(CWFXPCEvent *)v9 setInfo:v12];

      eventQueue = self->_eventQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1E0CAD99C;
      block[3] = &unk_1E86E6420;
      block[4] = self;
      v17 = v9;
      v14 = v9;
      dispatch_async(eventQueue, block);
      [(CWFXPCRequestProxy *)self __updateAutoJoinStatusWithJoin:v4];
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)__updateJoinStatusWithLinkUp:(id)a3
{
  v18[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_mutableJoinStatusMap objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 linkUpAt];

    if (!v7)
    {
      v8 = [MEMORY[0x1E695DF00] date];
      [v6 setLinkUpAt:v8];
      [v6 setEndedAt:v8];
      v9 = objc_alloc_init(CWFXPCEvent);
      [(CWFXPCEvent *)v9 setType:13];
      [(CWFXPCEvent *)v9 setInterfaceName:v4];
      [(CWFXPCEvent *)v9 setTimestamp:v8];
      v17 = @"JoinStatus";
      v10 = [v6 copy];
      v18[0] = v10;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
      [(CWFXPCEvent *)v9 setInfo:v11];

      eventQueue = self->_eventQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1E0CADBE0;
      block[3] = &unk_1E86E6420;
      block[4] = self;
      v16 = v9;
      v13 = v9;
      dispatch_async(eventQueue, block);
      [(CWFXPCRequestProxy *)self __updateAutoJoinStatusWithJoin:v4];
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)updateJoinStatusWithEAP8021X:(id)a3
{
  v4 = a3;
  v5 = [(CWFXPCRequestProxy *)self EAP8021XWithInterfaceName:v4];
  v6 = [v5 supplicantState:0];
  v7 = [v6 unsignedIntValue];

  v8 = [v5 controlMode:0];
  v9 = [v8 unsignedIntValue];

  v10 = [v5 controlState:0];
  v11 = [v10 unsignedIntValue];

  v12 = [v5 clientStatus:0];
  v13 = [v12 intValue];

  mutexQueue = self->_mutexQueue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1E0CADD9C;
  v16[3] = &unk_1E86E61B8;
  v16[4] = self;
  v17 = v4;
  v18 = v7;
  v19 = v9;
  v20 = v11;
  v21 = v13;
  v15 = v4;
  dispatch_async(mutexQueue, v16);
}

- (void)__updateJoinStatusWithKnownNetwork:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = [(NSMutableDictionary *)self->_mutableJoinStatusMap allValues];
  v6 = [v5 countByEnumeratingWithState:&v27 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    v23 = v25;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        v11 = [v10 knownNetworkProfile];
        if (!v11)
        {
          v12 = [v10 scanResult];
          v33 = v4;
          v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
          v14 = sub_1E0BED85C(v12, v13);

          if (!v14)
          {
            continue;
          }

          [v10 setKnownNetworkProfile:v4];
          v15 = objc_alloc_init(CWFXPCEvent);
          [(CWFXPCEvent *)v15 setType:13];
          v16 = [v10 interfaceName];
          [(CWFXPCEvent *)v15 setInterfaceName:v16];

          v17 = [MEMORY[0x1E695DF00] date];
          [(CWFXPCEvent *)v15 setTimestamp:v17];

          v31 = @"JoinStatus";
          v18 = [v10 copy];
          v32 = v18;
          v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
          [(CWFXPCEvent *)v15 setInfo:v19];

          eventQueue = self->_eventQueue;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          v25[0] = sub_1E0CAE300;
          v25[1] = &unk_1E86E6420;
          v25[2] = self;
          v26 = v15;
          v11 = v15;
          dispatch_async(eventQueue, block);
          v21 = [v10 interfaceName];
          [(CWFXPCRequestProxy *)self __updateAutoJoinStatusWithJoin:v21];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v27 objects:v34 count:16];
    }

    while (v7);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)__updateAutoJoinStatusWithJoin:(id)a3
{
  v41[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_mutableAutoJoinStatusMap objectForKeyedSubscript:v4];
  v6 = [(NSMutableDictionary *)self->_mutableJoinStatusMap objectForKeyedSubscript:v4];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = [v6 startedAt];
    [v9 timeIntervalSinceReferenceDate];
    v11 = v10;
    v12 = [v5 startedAt];
    [(CWFXPCEvent *)v12 timeIntervalSinceReferenceDate];
    if (v11 >= v13)
    {
      v14 = [v5 endedAt];
      if (v14)
      {
        v15 = v14;
        v16 = [v7 startedAt];
        [v16 timeIntervalSinceReferenceDate];
        v18 = v17;
        v19 = [v5 endedAt];
        [v19 timeIntervalSinceReferenceDate];
        v21 = v20;

        if (v18 > v21)
        {
          goto LABEL_23;
        }
      }

      else
      {
      }

      v22 = [v5 joinAttempts];
      v9 = [v22 mutableCopy];

      if (!v9)
      {
        v9 = [MEMORY[0x1E695DF70] array];
      }

      v23 = [v9 count];
      if ([v9 count])
      {
        v37 = v23;
        v24 = 0;
        while (1)
        {
          v25 = [v9 objectAtIndexedSubscript:{v24, v37}];
          v26 = [v25 UUID];
          v27 = [v7 UUID];
          v28 = [v26 isEqual:v27];

          if (v28)
          {
            break;
          }

          if (++v24 >= [v9 count])
          {
            v23 = v37;
            goto LABEL_18;
          }
        }

        v23 = v24;
      }

LABEL_18:
      v29 = [v9 count];
      v30 = [v7 copy];
      if (v23 >= v29)
      {
        [v9 addObject:v30];
      }

      else
      {
        [v9 replaceObjectAtIndex:v23 withObject:v30];
      }

      [v5 setJoinAttempts:v9];
      v31 = objc_alloc_init(CWFXPCEvent);
      [(CWFXPCEvent *)v31 setType:12];
      [(CWFXPCEvent *)v31 setInterfaceName:v4];
      v32 = [MEMORY[0x1E695DF00] date];
      [(CWFXPCEvent *)v31 setTimestamp:v32];

      v40 = @"AutoJoinStatus";
      v33 = [v5 deepCopy];
      v41[0] = v33;
      v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1];
      [(CWFXPCEvent *)v31 setInfo:v34];

      eventQueue = self->_eventQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1E0CAE6FC;
      block[3] = &unk_1E86E6420;
      block[4] = self;
      v39 = v31;
      v12 = v31;
      dispatch_async(eventQueue, block);
    }
  }

LABEL_23:
  [(CWFAutoJoinManager *)self->_autoJoinManager setJoinStatus:v7];

  v36 = *MEMORY[0x1E69E9840];
}

- (void)__autoJoinStartedWithTrigger:(int64_t)a3 interfaceName:(id)a4
{
  v6 = a4;
  v8 = objc_alloc_init(CWFAutoJoinStatus);
  v7 = [MEMORY[0x1E695DF00] date];
  [(CWFAutoJoinStatus *)v8 setStartedAt:v7];

  [(CWFAutoJoinStatus *)v8 setTrigger:a3];
  [(CWFAutoJoinStatus *)v8 setInterfaceName:v6];
  [(NSMutableDictionary *)self->_mutableAutoJoinTriggerMap setObject:v8 forKeyedSubscript:v6];
}

- (void)__updateAutoJoinState:(int64_t)a3 interfaceName:(id)a4
{
  v19[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(NSMutableDictionary *)self->_mutableAutoJoinStatusMap objectForKeyedSubscript:v6];
  if (![v7 state])
  {
    v8 = [(NSMutableDictionary *)self->_mutableAutoJoinTriggerMap objectForKeyedSubscript:v6];

    [(NSMutableDictionary *)self->_mutableAutoJoinStatusMap setObject:v8 forKeyedSubscript:v6];
    [(NSMutableDictionary *)self->_mutableAutoJoinTriggerMap setObject:0 forKeyedSubscript:v6];
    v7 = v8;
  }

  if (v7 && [v7 state] != a3)
  {
    [v7 setState:a3];
    v9 = objc_alloc_init(CWFXPCEvent);
    [(CWFXPCEvent *)v9 setType:12];
    [(CWFXPCEvent *)v9 setInterfaceName:v6];
    v10 = [MEMORY[0x1E695DF00] date];
    [(CWFXPCEvent *)v9 setTimestamp:v10];

    v18 = @"AutoJoinStatus";
    v11 = [v7 deepCopy];
    v19[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    [(CWFXPCEvent *)v9 setInfo:v12];

    eventQueue = self->_eventQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0CAEA18;
    block[3] = &unk_1E86E6420;
    block[4] = self;
    v17 = v9;
    v14 = v9;
    dispatch_async(eventQueue, block);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)__handleWillAssocInternalEvent:(id)a3
{
  v4 = a3;
  defaultQueue = self->_defaultQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E0CAED74;
  v7[3] = &unk_1E86E6420;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [(NSOperationQueue *)defaultQueue addOperationWithBlock:v7];
}

- (void)__handleAssocDoneInternalEvent:(id)a3
{
  v4 = a3;
  mutexQueue = self->_mutexQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E0CAEFDC;
  v7[3] = &unk_1E86E6420;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(mutexQueue, v7);
}

- (void)__handleAutoJoinStateChangedInternalEvent:(id)a3
{
  v4 = a3;
  mutexQueue = self->_mutexQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E0CAF358;
  v7[3] = &unk_1E86E6420;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(mutexQueue, v7);
}

- (void)__scheduleNextRecommendedKnownNetworksExpirationTimer
{
  v28[1] = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:0 ascending:1 comparator:&unk_1F5B890D0];
  mutableRecommendedKnownNetworks = self->_mutableRecommendedKnownNetworks;
  v28[0] = v4;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
  v7 = [(NSMutableOrderedSet *)mutableRecommendedKnownNetworks sortedArrayUsingDescriptors:v6];

  if ([v7 count])
  {
    v8 = MEMORY[0x1E695DF00];
    v9 = [v7 lastObject];
    v10 = [v9 age];
    if (v10 > 0x3E7)
    {
      v11 = 0.0;
    }

    else
    {
      v2 = [v7 lastObject];
      v11 = -([v2 age] / 0x3E8uLL);
    }

    v12 = [v8 dateWithTimeIntervalSinceNow:v11];
    v13 = [v12 dateByAddingTimeInterval:60.0];

    if (v10 <= 0x3E7)
    {
    }

    if (v13)
    {
      if (!self->_recommendedKnownNetworksExpirationTimer)
      {
        v14 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_mutexQueue);
        recommendedKnownNetworksExpirationTimer = self->_recommendedKnownNetworksExpirationTimer;
        self->_recommendedKnownNetworksExpirationTimer = v14;

        v16 = self->_recommendedKnownNetworksExpirationTimer;
        handler[0] = MEMORY[0x1E69E9820];
        handler[1] = 3221225472;
        handler[2] = sub_1E0CAF844;
        handler[3] = &unk_1E86E6010;
        handler[4] = self;
        dispatch_source_set_event_handler(v16, handler);
        dispatch_source_set_timer(self->_recommendedKnownNetworksExpirationTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
        dispatch_resume(self->_recommendedKnownNetworksExpirationTimer);
      }

      [v13 timeIntervalSinceNow];
      if (v17 * 1000000000.0 < 9.22337204e18)
      {
        [v13 timeIntervalSinceNow];
        v9 = (v18 * 1000000000.0);
      }

      v19 = CWFGetOSLog();
      if (v19)
      {
        v20 = CWFGetOSLog();
      }

      else
      {
        v20 = MEMORY[0x1E69E9C10];
        v21 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 134217984;
        v27 = v9 / 0x3B9ACA00;
        _os_log_send_and_compose_impl();
      }

      v22 = self->_recommendedKnownNetworksExpirationTimer;
      v23 = dispatch_walltime(0, v9);
      dispatch_source_set_timer(v22, v23, 0xFFFFFFFFFFFFFFFFLL, 0);
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)__updateRecommendedKnownNetworks
{
  v78[2] = *MEMORY[0x1E69E9840];
  v51 = [(CWFAutoJoinManager *)self->_autoJoinManager recentlyMatchedCandidates];
  v50 = [v51 objectsPassingTest:&unk_1F5B8ADE0];
  v2 = [MEMORY[0x1E695DFA0] orderedSetWithSet:?];
  v3 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"matchingKnownNetworkProfile.lastJoinedOnAnyDeviceAt" ascending:0];
  v48 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"RSSI" ascending:0];
  v49 = v3;
  v78[0] = v3;
  v78[1] = v48;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v78 count:2];
  [v2 sortUsingDescriptors:v4];

  v5 = [MEMORY[0x1E695DFA8] set];
  v6 = [MEMORY[0x1E695DFA0] orderedSet];
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = v2;
  v7 = [obj countByEnumeratingWithState:&v65 objects:v77 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v66;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v66 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v65 + 1) + 8 * i);
        v12 = [v11 matchingKnownNetworkProfile];
        v13 = [v12 identifier];
        v14 = [v5 containsObject:v13];

        if ((v14 & 1) == 0)
        {
          v15 = [v12 identifier];
          [v5 addObject:v15];

          [v6 addObject:v11];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v65 objects:v77 count:16];
    }

    while (v8);
  }

  v16 = [MEMORY[0x1E695DFA0] orderedSet];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v17 = self->_mutableRecommendedKnownNetworks;
  v18 = [(NSMutableOrderedSet *)v17 countByEnumeratingWithState:&v61 objects:v76 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v62;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v62 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [*(*(&v61 + 1) + 8 * j) matchingKnownNetworkProfile];
        v23 = [v22 identifier];
        [v16 addObject:v23];
      }

      v19 = [(NSMutableOrderedSet *)v17 countByEnumeratingWithState:&v61 objects:v76 count:16];
    }

    while (v19);
  }

  v24 = [MEMORY[0x1E695DF70] array];
  v25 = [MEMORY[0x1E695DFA0] orderedSet];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v54 = v6;
  v26 = [v54 countByEnumeratingWithState:&v57 objects:v75 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v58;
    do
    {
      for (k = 0; k != v27; ++k)
      {
        if (*v58 != v28)
        {
          objc_enumerationMutation(v54);
        }

        v30 = *(*(&v57 + 1) + 8 * k);
        v31 = [v30 matchingKnownNetworkProfile];
        v32 = [v31 identifier];
        [v25 addObject:v32];

        v33 = [v30 matchingKnownNetworkProfile];
        [v24 addObject:v33];
      }

      v27 = [v54 countByEnumeratingWithState:&v57 objects:v75 count:16];
    }

    while (v27);
  }

  if (v16 != v25 && (!v16 || !v25 || ([v16 isEqual:v25] & 1) == 0))
  {
    v34 = CWFGetOSLog();
    if (v34)
    {
      v35 = CWFGetOSLog();
    }

    else
    {
      v35 = MEMORY[0x1E69E9C10];
      v36 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      mutableRecommendedKnownNetworks = self->_mutableRecommendedKnownNetworks;
      v71 = 138543618;
      v72 = mutableRecommendedKnownNetworks;
      v73 = 2114;
      v74 = v54;
      LODWORD(v47) = 22;
      v46 = &v71;
      _os_log_send_and_compose_impl();
    }

    v38 = objc_alloc_init(CWFXPCEvent);
    [(CWFXPCEvent *)v38 setType:40];
    v39 = [MEMORY[0x1E695DF00] date];
    [(CWFXPCEvent *)v38 setTimestamp:v39];

    v69 = @"RecommendedKnownNetworks";
    v70 = v24;
    v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
    [(CWFXPCEvent *)v38 setInfo:v40];

    eventQueue = self->_eventQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0CAFEE8;
    block[3] = &unk_1E86E6420;
    block[4] = self;
    v56 = v38;
    v42 = v38;
    dispatch_async(eventQueue, block);
  }

  [(NSMutableOrderedSet *)self->_mutableRecommendedKnownNetworks removeAllObjects:v46];
  v43 = self->_mutableRecommendedKnownNetworks;
  v44 = [v54 array];
  [(NSMutableOrderedSet *)v43 addObjectsFromArray:v44];

  [(CWFXPCRequestProxy *)self __scheduleNextRecommendedKnownNetworksExpirationTimer];
  v45 = *MEMORY[0x1E69E9840];
}

- (void)__handleKnownNetworkProfileChangedEvent:(id)a3
{
  v61 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 info];
  v6 = [v5 objectForKeyedSubscript:@"Type"];
  v7 = [v6 integerValue];

  v8 = [v5 objectForKeyedSubscript:@"Profile"];
  v9 = [v8 copy];

  v10 = [v5 objectForKeyedSubscript:@"PreviousProfile"];
  v11 = [v10 copy];

  switch(v7)
  {
    case 3:
      v29 = [(CWFXPCRequestProxy *)self wifiNetworkSharingManager];
      [v29 didRemoveKnownNetwork:v9];

      v30 = [v9 networkName];

      if (v30)
      {
        defaultQueue = self->_defaultQueue;
        v49[0] = MEMORY[0x1E69E9820];
        v49[1] = 3221225472;
        v49[2] = sub_1E0CB07CC;
        v49[3] = &unk_1E86E6420;
        v50 = v9;
        v51 = v4;
        [(NSOperationQueue *)defaultQueue addOperationSerializedByName:@"updateKnownNetwork" block:v49];
      }

      v32 = [v9 SSID];
      if (v32)
      {
        v33 = v32;
        v34 = sub_1E0BCE1A8();

        if (v34)
        {
          v35 = self->_defaultQueue;
          v47[0] = MEMORY[0x1E69E9820];
          v47[1] = 3221225472;
          v47[2] = sub_1E0CB0900;
          v47[3] = &unk_1E86E6010;
          v48 = v9;
          [(NSOperationQueue *)v35 addOperationSerializedByName:@"updateKnownNetwork" block:v47];
        }
      }

      v36 = [(CWFXPCRequestProxy *)self wifiUserAgentConnection];

      if (v36)
      {
        v37 = [(CWFXPCRequestProxy *)self wifiUserAgentConnection];
        v45[0] = MEMORY[0x1E69E9820];
        v45[1] = 3221225472;
        v45[2] = sub_1E0CB0A18;
        v45[3] = &unk_1E86E8448;
        v46 = v9;
        (v37)[2](v37, v45);

        v17 = v46;
LABEL_30:
      }

      break;
    case 2:
      v17 = [(CWFXPCRequestProxy *)self apple80211WithVirtualInterfaceRole:0 parentInterfaceName:0];
      v21 = [v17 interfaceName];
      [(CWFXPCRequestProxy *)self __updateCurrentKnownBSSWithIPConfigurationForInterfaceName:v21];

      v22 = [(CWFXPCRequestProxy *)self wifiNetworkSharingManager];
      [v22 didUpdateKnownNetwork:v9 previous:v11];

      if (_os_feature_enabled_impl())
      {
        if (v11)
        {
          if (v9)
          {
            v23 = [(CWFXPCRequestProxy *)self privateMACManager];
            v24 = [v23 privateMACAddressModeForNetworkProfile:v11];

            v25 = [(CWFXPCRequestProxy *)self privateMACManager];
            v26 = [v25 privateMACAddressModeForNetworkProfile:v9];

            if (v24 != v26)
            {
              v27 = CWFGetOSLog();
              if (v27)
              {
                v28 = CWFGetOSLog();
              }

              else
              {
                v28 = MEMORY[0x1E69E9C10];
                v38 = MEMORY[0x1E69E9C10];
              }

              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                v59 = 138543362;
                v60 = v9;
                LODWORD(v44) = 12;
                v43 = &v59;
                _os_log_send_and_compose_impl();
              }

              if ((v24 == 1) == (v26 != 1) && (![v11 privateMACAddressDisabledByEvaluation] || objc_msgSend(v9, "privateMACAddressEvaluationState")))
              {
                v39 = [v17 interfaceName];
                [(CWFXPCRequestProxy *)self __privateMACSettingChangedForNetworkProfile:v9 interfaceName:v39];
              }
            }
          }
        }
      }

      v40 = [(CWFXPCRequestProxy *)self wifiUserAgentConnection:v43];

      if (!v40)
      {
        goto LABEL_30;
      }

      v41 = [(CWFXPCRequestProxy *)self wifiUserAgentConnection];
      v52[0] = MEMORY[0x1E69E9820];
      v52[1] = 3221225472;
      v52[2] = sub_1E0CB07AC;
      v52[3] = &unk_1E86E8448;
      v53 = v9;
      (v41)[2](v41, v52);

      v20 = v53;
      goto LABEL_29;
    case 1:
      v12 = [(CWFXPCRequestProxy *)self apple80211WithVirtualInterfaceRole:0 parentInterfaceName:0];
      v13 = [v12 interfaceName];
      [(CWFXPCRequestProxy *)self __updateCurrentKnownBSSWithIPConfigurationForInterfaceName:v13];

      v14 = [(CWFXPCRequestProxy *)self wifiNetworkSharingManager];
      [v14 didUpdateKnownNetwork:v9 previous:v11];

      mutexQueue = self->_mutexQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1E0CB05F0;
      block[3] = &unk_1E86E6060;
      block[4] = self;
      v16 = v9;
      v57 = v16;
      v17 = v12;
      v58 = v17;
      dispatch_async(mutexQueue, block);
      v18 = [(CWFXPCRequestProxy *)self wifiUserAgentConnection];

      if (v18)
      {
        v19 = [(CWFXPCRequestProxy *)self wifiUserAgentConnection];
        v54[0] = MEMORY[0x1E69E9820];
        v54[1] = 3221225472;
        v54[2] = sub_1E0CB078C;
        v54[3] = &unk_1E86E8448;
        v55 = v16;
        (v19)[2](v19, v54);
      }

      v20 = v57;
LABEL_29:

      goto LABEL_30;
  }

  v42 = *MEMORY[0x1E69E9840];
}

- (void)__handleNearbyRecommendedNetworksChangedEvent:(id)a3
{
  v6 = [a3 info];
  v4 = [v6 objectForKeyedSubscript:@"NearbyRecommendedNetworks"];
  v5 = [(CWFXPCRequestProxy *)self autoJoinManager];
  [v5 setNearbyRecommendedNetworks:v4];
}

- (id)__userAutoJoinDisabled
{
  v35 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_1E0BC2D80;
  v25 = sub_1E0BC61FC;
  v26 = 0;
  v3 = [(CWFXPCRequestProxy *)self delegate];
  if (!v3)
  {
    goto LABEL_6;
  }

  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v20 = 0;
  v4 = dispatch_block_create(0, &unk_1F5B89410);
  v5 = objc_alloc_init(CWFXPCRequest);
  [(CWFXPCRequest *)v5 setType:179];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1E0CB13F4;
  v15[3] = &unk_1E86E7E80;
  v17 = &v21;
  v18 = v19;
  v6 = v4;
  v16 = v6;
  [(CWFXPCRequest *)v5 setResponse:v15];
  [v3 XPCRequestProxy:self XPCConnection:self->_internalRequestXPCConnection receivedXPCRequest:v5];
  v7 = dispatch_time(0, 4000000000);
  if (!dispatch_block_wait(v6, v7))
  {

    _Block_object_dispose(v19, 8);
LABEL_6:
    v10 = v22[5];
    goto LABEL_11;
  }

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

  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v27 = 136446978;
    v28 = "[CWFXPCRequestProxy __userAutoJoinDisabled]";
    v29 = 2082;
    v30 = "CWFXPCRequestProxy.m";
    v31 = 1024;
    v32 = 5159;
    v33 = 2048;
    v34 = 4000000000;
    _os_log_send_and_compose_impl();
  }

  _Block_object_dispose(v19, 8);
  v10 = 0;
LABEL_11:
  v12 = v10;

  _Block_object_dispose(&v21, 8);
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)__currentNetworkProfileWithInterfaceName:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_1E0BC2D80;
  v28 = sub_1E0BC61FC;
  v29 = 0;
  v5 = [(CWFXPCRequestProxy *)self delegate];
  if (!v5)
  {
    goto LABEL_6;
  }

  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v23 = 0;
  v6 = dispatch_block_create(0, &unk_1F5B88FF0);
  v7 = objc_alloc_init(CWFRequestParameters);
  [(CWFRequestParameters *)v7 setInterfaceName:v4];
  v8 = objc_alloc_init(CWFXPCRequest);
  [(CWFXPCRequest *)v8 setRequestParameters:v7];
  [(CWFXPCRequest *)v8 setType:58];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_1E0CB1818;
  v18[3] = &unk_1E86E7E80;
  v20 = &v24;
  v21 = v22;
  v9 = v6;
  v19 = v9;
  [(CWFXPCRequest *)v8 setResponse:v18];
  [v5 XPCRequestProxy:self XPCConnection:self->_internalRequestXPCConnection receivedXPCRequest:v8];
  v10 = dispatch_time(0, 4000000000);
  if (!dispatch_block_wait(v9, v10))
  {

    _Block_object_dispose(v22, 8);
LABEL_6:
    v13 = v25[5];
    goto LABEL_11;
  }

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

  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v30 = 136446978;
    v31 = "[CWFXPCRequestProxy __currentNetworkProfileWithInterfaceName:]";
    v32 = 2082;
    v33 = "CWFXPCRequestProxy.m";
    v34 = 1024;
    v35 = 5195;
    v36 = 2048;
    v37 = 4000000000;
    _os_log_send_and_compose_impl();
  }

  _Block_object_dispose(v22, 8);
  v13 = 0;
LABEL_11:
  v15 = v13;

  _Block_object_dispose(&v24, 8);
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)__knownNetworkProfiles
{
  v35 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_1E0BC2D80;
  v25 = sub_1E0BC61FC;
  v26 = 0;
  v3 = [(CWFXPCRequestProxy *)self delegate];
  if (!v3)
  {
    goto LABEL_6;
  }

  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v20 = 0;
  v4 = dispatch_block_create(0, &unk_1F5B893D0);
  v5 = objc_alloc_init(CWFXPCRequest);
  [(CWFXPCRequest *)v5 setType:54];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1E0CB1BF4;
  v15[3] = &unk_1E86E7E80;
  v17 = &v21;
  v18 = v19;
  v6 = v4;
  v16 = v6;
  [(CWFXPCRequest *)v5 setResponse:v15];
  [v3 XPCRequestProxy:self XPCConnection:self->_internalRequestXPCConnection receivedXPCRequest:v5];
  v7 = dispatch_time(0, 4000000000);
  if (!dispatch_block_wait(v6, v7))
  {

    _Block_object_dispose(v19, 8);
LABEL_6:
    v10 = v22[5];
    goto LABEL_11;
  }

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

  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v27 = 136446978;
    v28 = "[CWFXPCRequestProxy __knownNetworkProfiles]";
    v29 = 2082;
    v30 = "CWFXPCRequestProxy.m";
    v31 = 1024;
    v32 = 5226;
    v33 = 2048;
    v34 = 4000000000;
    _os_log_send_and_compose_impl();
  }

  _Block_object_dispose(v19, 8);
  v10 = 0;
LABEL_11:
  v12 = v10;

  _Block_object_dispose(&v21, 8);
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (BOOL)isNon80211InterfaceName:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0CB1D78;
  block[3] = &unk_1E86E7BE0;
  v10 = self;
  v11 = &v12;
  v9 = v4;
  v6 = v4;
  dispatch_sync(mutexQueue, block);
  LOBYTE(mutexQueue) = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return mutexQueue;
}

- (id)__apple80211WithInterfaceName:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &stru_1F5B8FC80;
  }

  v6 = [(NSMutableDictionary *)self->_apple80211Map objectForKeyedSubscript:v5];
  if (!v6)
  {
    clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
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

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      apple80211Map = self->_apple80211Map;
      _os_log_send_and_compose_impl();
    }
  }

  v10 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)apple80211WithInterfaceName:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1E0BC2D80;
  v16 = sub_1E0BC61FC;
  v17 = 0;
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0CB2868;
  block[3] = &unk_1E86E6960;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(mutexQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)apple80211WithVirtualInterfaceRole:(int)a3 parentInterfaceName:(id)a4
{
  v6 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1E0BC2D80;
  v19 = sub_1E0BC61FC;
  v20 = 0;
  mutexQueue = self->_mutexQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1E0CB29E4;
  v11[3] = &unk_1E86E6730;
  v12 = v6;
  v13 = &v15;
  v14 = a3;
  v11[4] = self;
  v8 = v6;
  dispatch_sync(mutexQueue, v11);
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

- (id)__EAP8021XWithInterfaceName:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_EAP8021XMap objectForKeyedSubscript:v4];
  if (!v5)
  {
    clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
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
      _os_log_send_and_compose_impl();
    }
  }

  v9 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)EAP8021XWithInterfaceName:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1E0BC2D80;
  v16 = sub_1E0BC61FC;
  v17 = 0;
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0CB2D10;
  block[3] = &unk_1E86E6960;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(mutexQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)__SCNetworkServiceWithInterfaceName:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_SCNetworkServiceMap objectForKeyedSubscript:v4];
  if (!v5)
  {
    clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
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
      _os_log_send_and_compose_impl();
    }
  }

  v9 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)SCNetworkServiceWithInterfaceName:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1E0BC2D80;
  v16 = sub_1E0BC61FC;
  v17 = 0;
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0CB3038;
  block[3] = &unk_1E86E6960;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(mutexQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)__SCNetworkInterfaceWithInterfaceName:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_SCNetworkInterfaceMap objectForKeyedSubscript:v4];
  if (!v5)
  {
    clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
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
      _os_log_send_and_compose_impl();
    }
  }

  v9 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)SCNetworkInterfaceWithInterfaceName:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1E0BC2D80;
  v16 = sub_1E0BC61FC;
  v17 = 0;
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0CB3360;
  block[3] = &unk_1E86E6960;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(mutexQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)__updateEventRegistration:(id)a3 XPCConnection:(id)a4 XPCManager:(id)a5
{
  v32 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v32;
  if (v32)
  {
    v11 = [v32 info];
    v12 = [v11 objectForKeyedSubscript:@"EventID"];

    if (v12)
    {
      if ([v12 type] == 12)
      {
        v13 = [v9 supportedRequestTypes];
        v14 = MEMORY[0x1E695DFD8];
        v15 = &unk_1F5BB9CB8;
      }

      else
      {
        if ([v12 type] != 13)
        {
          if ([v12 type] == 43 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v19 = [v32 response];

            if (v19)
            {
              v20 = [v32 response];
              v20[2](v20, 0, 0);
            }

            v21 = v12;
            v22 = [(CWFXPCRequestProxy *)self wifiNetworkSharingManager];
            v23 = [v21 clientID];

            v24 = [v32 requestParameters];
            v25 = [v24 wifiNetworkSharingNetworkListUpdateEventPredicateData];
            [v22 didRegisterForNetworkListUpdateEventsWithClientID:v23 predicateData:v25 XPCConnection:v8];
          }

          else
          {
            if ([v12 type] != 44 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              v16 = 0;
              goto LABEL_12;
            }

            v26 = [v32 response];

            if (v26)
            {
              v27 = [v32 response];
              v27[2](v27, 0, 0);
            }

            v28 = v12;
            v22 = [(CWFXPCRequestProxy *)self wifiNetworkSharingManager];
            v23 = [v28 clientID];

            [v22 didRegisterForAskToShareNetworkListUpdateEventsWithClientID:v23 XPCConnection:v8];
          }

          v16 = 0;
          goto LABEL_15;
        }

        v13 = [v9 supportedRequestTypes];
        v14 = MEMORY[0x1E695DFD8];
        v15 = &unk_1F5BB9CD0;
      }

      v17 = [v14 setWithArray:v15];
      if ([v17 isSubsetOfSet:v13])
      {
        v16 = 0;
      }

      else
      {
        v30 = *MEMORY[0x1E696A798];
        v31 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
        v16 = CWFErrorWithDescription(v30, 45, v31);
      }
    }

    else
    {
      v29 = *MEMORY[0x1E696A798];
      v13 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
      v16 = CWFErrorWithDescription(v29, 22, v13);
    }

LABEL_12:
    v10 = v32;
    goto LABEL_13;
  }

  v16 = 0;
LABEL_13:
  v18 = [v10 response];

  if (!v18)
  {
    goto LABEL_16;
  }

  v12 = [v32 response];
  (v12)[2](v12, v16, 0);
LABEL_15:

LABEL_16:
}

- (void)__updateEventMonitoring:(id)a3
{
  v4 = [a3 registeredEventIDs];
  mutexQueue = self->_mutexQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E0CB37F4;
  v7[3] = &unk_1E86E6420;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(mutexQueue, v7);
}

- (void)__getSystemEventIDs:(id)a3 XPCManager:(id)a4
{
  v11 = a3;
  v5 = MEMORY[0x1E695DF90];
  v6 = a4;
  v7 = [v5 dictionary];
  v8 = [v6 registeredEventIDs];

  [v7 setObject:v8 forKeyedSubscript:@"Result"];
  v9 = [v11 response];

  if (v9)
  {
    v10 = [v11 response];
    (v10)[2](v10, 0, v7);
  }
}

- (void)__getSystemActivities:(id)a3 XPCManager:(id)a4
{
  v11 = a3;
  v5 = MEMORY[0x1E695DF90];
  v6 = a4;
  v7 = [v5 dictionary];
  v8 = [v6 registeredActivities];

  [v7 setObject:v8 forKeyedSubscript:@"Result"];
  v9 = [v11 response];

  if (v9)
  {
    v10 = [v11 response];
    (v10)[2](v10, 0, v7);
  }
}

- (void)__performScan:(id)a3 XPCConnection:(id)a4
{
  v95 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v9 = [v6 requestParameters];
  v10 = [v9 interfaceName];

  v11 = [(CWFXPCRequestProxy *)self apple80211WithInterfaceName:v10];
  v76 = v10;
  if (v11)
  {
    v12 = [v6 info];
    v13 = [v12 objectForKeyedSubscript:@"ScanParams"];

    if (v13)
    {
      if (![v13 scanType])
      {
        [v13 setScanType:1];
      }

      if (![v13 BSSType])
      {
        [v13 setBSSType:3];
      }

      if (![v13 PHYMode])
      {
        [v13 setPHYMode:1];
      }

      if (![v13 numberOfScans])
      {
        [v13 setNumberOfScans:1];
      }

      v73 = self;
      v14 = [v13 channels];

      v74 = v11;
      v75 = v7;
      if (v14)
      {
        v70 = v8;
        v72 = v6;
        v15 = [MEMORY[0x1E695DF90] dictionary];
        v77 = [MEMORY[0x1E695DF70] array];
        v83 = 0u;
        v84 = 0u;
        v85 = 0u;
        v86 = 0u;
        v71 = v13;
        v16 = [v13 channels];
        v17 = [v16 countByEnumeratingWithState:&v83 objects:v93 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v84;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v84 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v83 + 1) + 8 * i);
              if ([v21 width] != 20)
              {
                v22 = CWFGetOSLog();
                if (v22)
                {
                  v23 = CWFGetOSLog();
                }

                else
                {
                  v23 = MEMORY[0x1E69E9C10];
                  v24 = MEMORY[0x1E69E9C10];
                }

                if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
                {
                  v91 = 138543362;
                  v92 = v21;
                  LODWORD(v69) = 12;
                  v68 = &v91;
                  _os_log_send_and_compose_impl();
                }

                v25 = +[CWFChannel channelWithNumber:band:width:](CWFChannel, "channelWithNumber:band:width:", [v21 channel], objc_msgSend(v21, "band"), 20);

                v21 = v25;
              }

              v26 = [v21 band];
              v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v26];
              v28 = [v15 objectForKeyedSubscript:v27];

              if (!v28)
              {
                v28 = [MEMORY[0x1E695DFA8] set];
                v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v26];
                [v15 setObject:v28 forKeyedSubscript:v29];
              }

              v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v21, "channel")}];
              v31 = [v28 containsObject:v30];

              if ((v31 & 1) == 0)
              {
                v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v21, "channel")}];
                [v28 addObject:v32];

                [v77 addObject:v21];
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v83 objects:v93 count:16];
          }

          while (v18);
        }

        v33 = v71;
        v34 = v77;
        [v71 setChannels:v77];
        v6 = v72;
        v7 = v75;
        v8 = v70;
      }

      else
      {
        v15 = [v11 countryCode:0];
        v35 = [v11 supportedChannelsWithCountryCode:v15 error:0];
        v36 = [MEMORY[0x1E695DF70] array];
        v87 = 0u;
        v88 = 0u;
        v89 = 0u;
        v90 = 0u;
        v34 = v35;
        v37 = [v34 countByEnumeratingWithState:&v87 objects:v94 count:16];
        if (v37)
        {
          v38 = v37;
          v39 = *v88;
          do
          {
            for (j = 0; j != v38; ++j)
            {
              if (*v88 != v39)
              {
                objc_enumerationMutation(v34);
              }

              v41 = *(*(&v87 + 1) + 8 * j);
              if ([v41 width] == 20 && (!objc_msgSend(v41, "is6GHz") || objc_msgSend(v41, "is6GHzPSC") && (objc_msgSend(v13, "exclude6GChannels") & 1) == 0) && (!objc_msgSend(v41, "is6GHz") || objc_msgSend(v13, "scanType") != 9))
              {
                [v36 addObject:v41];
              }
            }

            v38 = [v34 countByEnumeratingWithState:&v87 objects:v94 count:16];
          }

          while (v38);
        }

        v33 = v13;
        [v13 setChannels:v36];

        v7 = v75;
      }

      self = v73;
      v11 = v74;
LABEL_47:
      v42 = [(CWFXPCRequestProxy *)self delegate];
      if (v42)
      {
        v43 = objc_alloc_init(CWFXPCRequest);
        [(CWFXPCRequest *)v43 setType:64];
        v44 = [v6 requestParameters];
        [(CWFXPCRequest *)v43 setRequestParameters:v44];

        v45 = [v6 info];
        [(CWFXPCRequest *)v43 setInfo:v45];

        v78[0] = MEMORY[0x1E69E9820];
        v78[1] = 3221225472;
        v78[2] = sub_1E0CB44C4;
        v78[3] = &unk_1E86E8498;
        v46 = v33;
        v79 = v33;
        v80 = v6;
        v81 = v11;
        v82 = v8;
        [(CWFXPCRequest *)v43 setResponse:v78];
        v47 = CWFGetOSLog();
        if (v47)
        {
          v48 = CWFGetOSLog();
        }

        else
        {
          v48 = MEMORY[0x1E69E9C10];
          v51 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
        {
          v52 = [(CWFXPCRequest *)v43 info];
          [v52 objectForKeyedSubscript:@"ScanParams"];
          v54 = v53 = v7;
          v91 = 138543362;
          v92 = v54;
          _os_log_send_and_compose_impl();

          v7 = v53;
        }

        [v42 XPCRequestProxy:self XPCConnection:v7 receivedXPCRequest:v43];
        v55 = v79;
      }

      else
      {
        v49 = CWFGetOSLog();
        if (v49)
        {
          v50 = CWFGetOSLog();
        }

        else
        {
          v50 = MEMORY[0x1E69E9C10];
          v56 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          v57 = sub_1E0BC2FCC([v6 type]);
          v91 = 138543362;
          v92 = v57;
          _os_log_send_and_compose_impl();
        }

        v58 = [v6 response];

        if (!v58)
        {
          goto LABEL_62;
        }

        v46 = v33;
        v43 = [v6 response];
        v59 = *MEMORY[0x1E696A798];
        v55 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
        v60 = CWFErrorWithDescription(v59, 45, v55);
        (v43->super.super.super._iop.__nextOp)(v43, v60, 0);
      }

      v33 = v46;
LABEL_62:

      v61 = 0;
      v10 = v76;
      goto LABEL_63;
    }

    v63 = 22;
  }

  else
  {
    v63 = 6;
  }

  v64 = *MEMORY[0x1E696A798];
  v65 = CWFErrorDescription(*MEMORY[0x1E696A798], v63);
  v61 = CWFErrorWithDescription(v64, v63, v65);

  if (!v61)
  {
    v33 = 0;
    goto LABEL_47;
  }

  v66 = [v6 response];

  if (v66)
  {
    v67 = [v6 response];
    (v67)[2](v67, v61, 0);
  }

LABEL_63:

  v62 = *MEMORY[0x1E69E9840];
}

- (void)__setChannel:(id)a3
{
  v4 = a3;
  v5 = [v4 requestParameters];
  v6 = [v5 interfaceName];

  v7 = [v4 info];
  v8 = [v7 objectForKeyedSubscript:@"Channel"];

  if (v8)
  {
    v9 = [(CWFXPCRequestProxy *)self apple80211WithInterfaceName:v6];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 countryCode:0];
      v12 = [v10 supportedChannelsWithCountryCode:v11 error:0];
      v13 = [v12 containsObject:v8];

      if (v13)
      {
        v14 = [v10 powerOn:0];
        v15 = [v14 BOOLValue];

        if (v15)
        {
          v16 = [v10 BSSID:0];

          if (!v16)
          {
            v31 = 0;
            [v10 setChannel:v8 error:&v31];
            v17 = v31;
LABEL_7:

            goto LABEL_8;
          }

          v30 = *MEMORY[0x1E696A798];
          v26 = CWFErrorDescription(*MEMORY[0x1E696A798], 1uLL);
          v27 = v30;
          v28 = 1;
        }

        else
        {
          v29 = *MEMORY[0x1E696A798];
          v26 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x52uLL);
          v27 = v29;
          v28 = 82;
        }
      }

      else
      {
        v25 = *MEMORY[0x1E696A798];
        v26 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
        v27 = v25;
        v28 = 45;
      }

      v17 = CWFErrorWithDescription(v27, v28, v26);

      goto LABEL_7;
    }

    v24 = *MEMORY[0x1E696A798];
    v21 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
    v22 = v24;
    v23 = 6;
  }

  else
  {
    v20 = *MEMORY[0x1E696A798];
    v21 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v22 = v20;
    v23 = 22;
  }

  v17 = CWFErrorWithDescription(v22, v23, v21);

LABEL_8:
  v18 = [v4 response];

  if (v18)
  {
    v19 = [v4 response];
    (v19)[2](v19, v17, 0);
  }
}

- (void)__getWEPSubtype:(id)a3
{
  v24 = a3;
  v4 = [v24 requestParameters];
  v5 = [v4 interfaceName];

  v6 = [(CWFXPCRequestProxy *)self apple80211WithInterfaceName:v5];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 SSID:0];
    if (v8)
    {
      v9 = [v7 authType:0];
      if ([v9 length] == 16 && (*(objc_msgSend(v9, "bytes") + 4) - 3) >= 0xFFFFFFFE)
      {
        v10 = [(CWFXPCRequestProxy *)self __currentNetworkProfileWithInterfaceName:v5];
        if (!v10)
        {
          v13 = [(CWFXPCRequestProxy *)self __currentScanResultWithInterfaceName:v5 forceNoCache:0];
          v14 = [(CWFXPCRequestProxy *)self EAP8021XWithInterfaceName:v5];
          v15 = [v14 supplicantState:0];
          v16 = [v15 unsignedIntValue];

          v11 = 0;
          if (([v13 isWEP] & (v16 == 4)) != 0)
          {
            v12 = &unk_1F5BBCAA8;
          }

          else
          {
            v12 = &unk_1F5BBC958;
          }

          goto LABEL_11;
        }

        v11 = v10;
        v12 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v10, "WEPSubtype")}];
      }

      else
      {
        v11 = 0;
        v12 = 0;
      }

LABEL_7:
      v13 = 0;
LABEL_11:
      v17 = [MEMORY[0x1E695DF90] dictionary];
      [v17 setObject:v12 forKeyedSubscript:@"Result"];
      v18 = [v24 response];

      if (v18)
      {
        v19 = [v24 response];
        v20 = [v17 copy];
        (v19)[2](v19, 0, v20);
      }

      v8 = 0;
      goto LABEL_14;
    }

LABEL_22:
    v11 = 0;
    v12 = 0;
    v9 = 0;
    goto LABEL_7;
  }

  v21 = *MEMORY[0x1E696A798];
  v22 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
  v8 = CWFErrorWithDescription(v21, 6, v22);

  if (!v8)
  {
    goto LABEL_22;
  }

  v23 = [v24 response];

  if (v23)
  {
    v11 = [v24 response];
    (v11)[2](v11, v8, 0);
LABEL_14:
  }
}

- (void)__getWAPISubtype:(id)a3
{
  v21 = a3;
  v4 = [v21 requestParameters];
  v5 = [v4 interfaceName];

  v6 = [(CWFXPCRequestProxy *)self apple80211WithInterfaceName:v5];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 SSID:0];
    if (v8)
    {
      v9 = [(CWFXPCRequestProxy *)self __currentScanResultWithInterfaceName:v5 forceNoCache:0];
      v10 = [v9 SSID];
      v11 = [v10 isEqualToData:v8];

      if (v11)
      {
        v12 = [v7 authType:0];
        if ([v12 length] == 16 && *(objc_msgSend(v12, "bytes") + 8) == 512)
        {
          v13 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v9, "WAPISubtype")}];
        }

        else
        {
          v13 = 0;
        }

        goto LABEL_7;
      }

LABEL_19:
      v13 = 0;
      v12 = 0;
LABEL_7:
      v14 = [MEMORY[0x1E695DF90] dictionary];
      [v14 setObject:v13 forKeyedSubscript:@"Result"];
      v15 = [v21 response];

      if (v15)
      {
        v16 = [v21 response];
        v17 = [v14 copy];
        (v16)[2](v16, 0, v17);
      }

      v8 = 0;
      goto LABEL_10;
    }

LABEL_18:
    v9 = 0;
    goto LABEL_19;
  }

  v18 = *MEMORY[0x1E696A798];
  v19 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
  v8 = CWFErrorWithDescription(v18, 6, v19);

  if (!v8)
  {
    goto LABEL_18;
  }

  v20 = [v21 response];

  if (v20)
  {
    v9 = [v21 response];
    (v9)[2](v9, v8, 0);
LABEL_10:
  }
}

- (void)__getSecurity:(id)a3
{
  v38 = a3;
  v4 = [v38 requestParameters];
  v5 = [v4 interfaceName];

  v6 = [(CWFXPCRequestProxy *)self apple80211WithInterfaceName:v5];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 SSID:0];
    if (v8)
    {
      v9 = [v7 currentNetwork:0];
      v10 = [v7 authType:0];
      if ([v10 length] == 16)
      {
        v37 = v5;
        v11 = *([v10 bytes] + 8);
        v12 = *([v10 bytes] + 4);
        v36 = *([v10 bytes] + 12);
        v13 = [v9 scanRecord];
        v14 = [v13 objectForKeyedSubscript:@"RSN_IE"];
        v15 = [v14 objectForKeyedSubscript:@"IE_KEY_RSN_MCIPHER"];
        v16 = [v15 intValue];

        v17 = [v9 scanRecord];
        v18 = [v17 objectForKeyedSubscript:@"SCAN_RESULT_OWE_MULTI_SSID"];
        v19 = [v18 BOOLValue];

        if (v12 == 2)
        {
          v21 = 1;
        }

        else
        {
          if (v12 != 1)
          {
            goto LABEL_30;
          }

          v20 = __rbit32(v11 & 3) >> 28;
          if ((v11 & 0x884) != 0)
          {
            if (v16 == 2)
            {
              v20 |= 0x28uLL;
            }

            else if ([v9 isMFPCapable] && (v22 = objc_msgSend(v9, "isMFPRequired"), (v11 & 4) == 0) && v22)
            {
              v20 |= 0x80uLL;
            }

            else
            {
              v20 |= 0x20uLL;
            }
          }

          v23 = 16;
          if (v16 == 2)
          {
            v23 = 20;
          }

          if ((v11 & 0x418) == 0)
          {
            v23 = 0;
          }

          v24 = v20 | v23;
          if ((v11 & 0xC000) != 0)
          {
            v24 |= 0x80uLL;
          }

          if ((v11 & 0x33000) != 0)
          {
            v24 |= 0x40uLL;
          }

          v21 = v24 | (v11 >> 8) & 2;
          v25 = [v9 SSID];
          if ([v25 isEqualToData:v8])
          {
            v26 = [v9 isWEP];

            v21 |= v26;
          }

          else
          {
          }

          v27 = 256;
          if (v19)
          {
            v27 = 768;
          }

          if (v36)
          {
            v21 = v27;
            goto LABEL_32;
          }

          if (!v21)
          {
LABEL_30:
            v21 = 512;
          }
        }

LABEL_32:
        v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v21];
        v5 = v37;
LABEL_33:
        v29 = [MEMORY[0x1E695DF90] dictionary];
        [v29 setObject:v28 forKeyedSubscript:@"Result"];
        v30 = [v38 response];

        if (v30)
        {
          v31 = [v38 response];
          v32 = [v29 copy];
          (v31)[2](v31, 0, v32);
        }

        v8 = 0;
        goto LABEL_36;
      }

LABEL_44:
      v28 = 0;
      goto LABEL_33;
    }

LABEL_43:
    v9 = 0;
    v10 = 0;
    goto LABEL_44;
  }

  v33 = *MEMORY[0x1E696A798];
  v34 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
  v8 = CWFErrorWithDescription(v33, 6, v34);

  if (!v8)
  {
    goto LABEL_43;
  }

  v35 = [v38 response];

  if (v35)
  {
    v9 = [v38 response];
    (v9)[2](v9, v8, 0);
LABEL_36:
  }
}

- (void)__getKnownNetworkMatchingNetworkProfile:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 info];
  v6 = [v5 objectForKeyedSubscript:@"NetworkProfile"];

  if (!v6)
  {
    v28 = *MEMORY[0x1E696A798];
    v29 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v26 = CWFErrorWithDescription(v28, 22, v29);

    if (v26)
    {
      v30 = [v4 response];

      if (v30)
      {
        v31 = [v4 response];
        (v31)[2](v31, v26, 0);
      }

      goto LABEL_25;
    }

LABEL_29:
    v8 = 0;
    obj = 0;
    goto LABEL_22;
  }

  v7 = [(CWFXPCRequestProxy *)self __knownNetworkProfiles];
  if (!v7)
  {
    goto LABEL_29;
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (!v8)
  {
    goto LABEL_21;
  }

  v32 = v4;
  v33 = v6;
  v9 = *v37;
  while (2)
  {
    for (i = 0; i != v8; i = i + 1)
    {
      if (*v37 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v36 + 1) + 8 * i);
      v12 = [v6 identifier];
      v13 = [v11 identifier];
      v14 = v13;
      if (v12 == v13)
      {

LABEL_19:
        v8 = v11;
        goto LABEL_20;
      }

      v15 = [v6 identifier];
      if (!v15)
      {
        goto LABEL_14;
      }

      v16 = v15;
      v17 = [v11 identifier];
      if (!v17)
      {

LABEL_14:
        continue;
      }

      v18 = v17;
      v19 = [v6 identifier];
      [v11 identifier];
      v21 = v20 = v9;
      v35 = [v19 isEqual:v21];

      v9 = v20;
      v6 = v33;

      if (v35)
      {
        goto LABEL_19;
      }
    }

    v8 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_20:
  v4 = v32;
LABEL_21:

LABEL_22:
  v22 = [MEMORY[0x1E695DF90] dictionary];
  [v22 setObject:v8 forKeyedSubscript:@"Result"];
  v23 = [v4 response];

  if (v23)
  {
    v24 = [v4 response];
    v25 = [v22 copy];
    (v24)[2](v24, 0, v25);
  }

  v26 = 0;
LABEL_25:

  v27 = *MEMORY[0x1E69E9840];
}

- (void)__getKnownNetworkMatchingScanResult:(id)a3
{
  v16 = a3;
  v4 = [v16 info];
  v5 = [v4 objectForKeyedSubscript:@"ScanResult"];

  if (v5)
  {
    v6 = [(CWFXPCRequestProxy *)self __knownNetworkProfiles];
    v7 = sub_1E0BED85C(v5, v6);

LABEL_3:
    v8 = [MEMORY[0x1E695DF90] dictionary];
    [v8 setObject:v7 forKeyedSubscript:@"Result"];
    v9 = [v16 response];

    if (v9)
    {
      v10 = [v16 response];
      v11 = [v8 copy];
      (v10)[2](v10, 0, v11);
    }

    v12 = 0;
    goto LABEL_6;
  }

  v13 = *MEMORY[0x1E696A798];
  v14 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
  v12 = CWFErrorWithDescription(v13, 22, v14);

  if (!v12)
  {
    v7 = 0;
    goto LABEL_3;
  }

  v15 = [v16 response];

  if (v15)
  {
    v7 = [v16 response];
    (v7)[2](v7, v12, 0);
LABEL_6:
  }
}

- (void)__addKnownNetwork:(id)a3 XPCConnection:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 info];
  v9 = [v8 objectForKeyedSubscript:@"NetworkProfile"];

  if (v9)
  {
    v10 = [v9 SSID];
    v11 = v10;
    if (!v10 || [v10 length] && objc_msgSend(v11, "length") < 0x21)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v11 = 0;
  }

  v24 = *MEMORY[0x1E696A798];
  v25 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
  v22 = CWFErrorWithDescription(v24, 22, v25);

  if (!v22)
  {
LABEL_5:
    v12 = [(CWFXPCRequestProxy *)self delegate];
    v13 = v12;
    if (v12)
    {
      [v12 XPCRequestProxy:self XPCConnection:v7 receivedXPCRequest:v6];
    }

    else
    {
      v14 = CWFGetOSLog();
      if (v14)
      {
        v15 = CWFGetOSLog();
      }

      else
      {
        v15 = MEMORY[0x1E69E9C10];
        v16 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v28 = sub_1E0BC2FCC([v6 type]);
        _os_log_send_and_compose_impl();
      }

      v17 = [v6 response];

      if (v17)
      {
        v18 = [v6 response];
        v19 = *MEMORY[0x1E696A798];
        v20 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
        v21 = CWFErrorWithDescription(v19, 45, v20);
        (v18)[2](v18, v21, 0);
      }
    }

    v22 = 0;
    goto LABEL_15;
  }

  v26 = [v6 response];

  if (v26)
  {
    v27 = [v6 response];
    (v27)[2](v27, v22, 0);
  }

LABEL_15:

  v23 = *MEMORY[0x1E69E9840];
}

- (void)__getApple80211:(id)a3
{
  v4 = a3;
  v5 = [v4 requestParameters];
  v6 = [v5 interfaceName];

  v7 = [(CWFXPCRequestProxy *)self apple80211WithInterfaceName:v6];
  if (v7)
  {
    v8 = [v4 type];
    if (v8 <= 145)
    {
      switch(v8)
      {
        case 1:
          v9 = [(CWFXPCRequestProxy *)self interfaceNames];
          break;
        case 2:
          v9 = [(CWFXPCRequestProxy *)self virtualInterfaceNames];
          break;
        case 4:
          v98 = 0;
          v10 = [v7 capabilities:&v98];
          v11 = v98;
          goto LABEL_87;
        case 5:
          v97 = 0;
          v10 = [v7 powerOn:&v97];
          v11 = v97;
          goto LABEL_87;
        case 7:
          v96 = 0;
          v10 = [v7 SSID:&v96];
          v11 = v96;
          goto LABEL_87;
        case 9:
          v95 = 0;
          v10 = [v7 BSSID:&v95];
          v11 = v95;
          goto LABEL_87;
        case 11:
          v94 = 0;
          v10 = [v7 authType:&v94];
          v11 = v94;
          goto LABEL_87;
        case 15:
          v12 = [v4 info];
          v13 = [v12 objectForKeyedSubscript:@"CountryCode"];
          v90 = 0;
          v10 = [v7 supportedChannelsWithCountryCode:v13 error:&v90];
          v14 = v90;

          goto LABEL_88;
        case 16:
          v92 = 0;
          v10 = [v7 channel:&v92];
          v11 = v92;
          goto LABEL_87;
        case 18:
          v88 = 0;
          v10 = [v7 perAntennaRSSI:&v88];
          v11 = v88;
          goto LABEL_87;
        case 19:
          v87 = 0;
          v10 = [v7 noise:&v87];
          v11 = v87;
          goto LABEL_87;
        case 20:
          v83 = 0;
          v10 = [v7 txRate:&v83];
          v11 = v83;
          goto LABEL_87;
        case 21:
          v82 = 0;
          v10 = [v7 txPower:&v82];
          v11 = v82;
          goto LABEL_87;
        case 22:
          v93 = 0;
          v10 = [v7 countryCode:&v93];
          v11 = v93;
          goto LABEL_87;
        case 24:
          v81 = 0;
          v10 = [v7 DTIMInterval:&v81];
          v11 = v81;
          goto LABEL_87;
        case 25:
          v80 = 0;
          v10 = [v7 guardInterval:&v80];
          v11 = v80;
          goto LABEL_87;
        case 26:
          v79 = 0;
          v10 = [v7 MCSIndex:&v79];
          v11 = v79;
          goto LABEL_87;
        case 27:
          v78 = 0;
          v10 = [v7 numberOfSpatialStreams:&v78];
          v11 = v78;
          goto LABEL_87;
        case 28:
          v85 = 0;
          v10 = [v7 supportedPHYModes:&v85];
          v11 = v85;
          goto LABEL_87;
        case 29:
          v86 = 0;
          v10 = [v7 activePHYMode:&v86];
          v11 = v86;
          goto LABEL_87;
        case 30:
          v84 = 0;
          v10 = [v7 opMode:&v84];
          v11 = v84;
          goto LABEL_87;
        case 31:
          v77 = 0;
          v10 = [v7 virtualInterfaceRole:&v77];
          v11 = v77;
          goto LABEL_87;
        case 32:
          v76 = 0;
          v10 = [v7 virtualInterfaceParent:&v76];
          v11 = v76;
          goto LABEL_87;
        case 38:
          v91 = 0;
          v10 = [v7 wowEnabled:&v91];
          v11 = v91;
          goto LABEL_87;
        case 39:
          v75 = 0;
          v10 = [v7 AWDLSyncEnabled:&v75];
          v11 = v75;
          goto LABEL_87;
        case 40:
          v61 = 0;
          v10 = [v7 AWDLPreferredChannels:&v61];
          v11 = v61;
          goto LABEL_87;
        case 41:
          v73 = 0;
          v10 = [v7 AWDLSyncState:&v73];
          v11 = v73;
          goto LABEL_87;
        case 42:
          v74 = 0;
          v10 = [v7 AWDLSyncChannelSequence:&v74];
          v11 = v74;
          goto LABEL_87;
        case 43:
          v72 = 0;
          v10 = [v7 AWDLSyncParameters:&v72];
          v11 = v72;
          goto LABEL_87;
        case 44:
          v65 = 0;
          v10 = [v7 AWDLStrategy:&v65];
          v11 = v65;
          goto LABEL_87;
        case 45:
          v70 = 0;
          v10 = [v7 AWDLElectionParameters:&v70];
          v11 = v70;
          goto LABEL_87;
        case 46:
          v71 = 0;
          v10 = [v7 AWDLElectionID:&v71];
          v11 = v71;
          goto LABEL_87;
        case 47:
          v69 = 0;
          v10 = [v7 AWDLElectionRSSIThresholds:&v69];
          v11 = v69;
          goto LABEL_87;
        case 48:
          v67 = 0;
          v10 = [v7 AWDLPeerDatabase:&v67];
          v11 = v67;
          goto LABEL_87;
        case 49:
          v68 = 0;
          v10 = [v7 AWDLSocialTimeSlots:&v68];
          v11 = v68;
          goto LABEL_87;
        case 50:
          v63 = 0;
          v10 = [v7 AWDLMasterChannel:&v63];
          v11 = v63;
          goto LABEL_87;
        case 51:
          v62 = 0;
          v10 = [v7 AWDLSecondaryMasterChannel:&v62];
          v11 = v62;
          goto LABEL_87;
        case 52:
          v64 = 0;
          v10 = [v7 AWDLOpMode:&v64];
          v11 = v64;
          goto LABEL_87;
        case 53:
          v66 = 0;
          v10 = [v7 AWDLStatistics:&v66];
          v11 = v66;
          goto LABEL_87;
        default:
          goto LABEL_84;
      }

      v10 = v9;
      goto LABEL_91;
    }

    switch(v8)
    {
      case 146:
        v60 = 0;
        v10 = [v7 AWDLSidecarDiagnostics:&v60];
        v11 = v60;
        goto LABEL_87;
      case 147:
        v59 = 0;
        v10 = [v7 powerState:&v59];
        v11 = v59;
        goto LABEL_87;
      case 148:
        v58 = 0;
        v10 = [v7 chainAck:&v58];
        v11 = v58;
        goto LABEL_87;
      case 149:
        v57 = 0;
        v10 = [v7 txChainPower:&v57];
        v11 = v57;
        goto LABEL_87;
      case 150:
        v56 = 0;
        v10 = [v7 desense:&v56];
        v11 = v56;
        goto LABEL_87;
      case 151:
        v55 = 0;
        v10 = [v7 desenseLevel:&v55];
        v11 = v55;
        goto LABEL_87;
      case 152:
        v54 = 0;
        v10 = [v7 bluetoothCoexistenceConfig:&v54];
        v11 = v54;
        goto LABEL_87;
      case 153:
        v53 = 0;
        v10 = [v7 bluetoothCoexistenceProfiles2GHz:&v53];
        v11 = v53;
        goto LABEL_87;
      case 154:
        v52 = 0;
        v10 = [v7 bluetoothCoexistenceProfiles5GHz:&v52];
        v11 = v52;
        goto LABEL_87;
      case 155:
        v51 = 0;
        v10 = [v7 bluetoothCoexistenceMode:&v51];
        v11 = v51;
        goto LABEL_87;
      case 156:
        v50 = 0;
        v10 = [v7 leakyAPStats:&v50];
        v11 = v50;
        goto LABEL_87;
      case 157:
        v48 = 0;
        v10 = [v7 AWDLExtensionStateMachineParameters:&v48];
        v11 = v48;
        goto LABEL_87;
      case 158:
        v47 = 0;
        v10 = [v7 AWDLElectionMetric:&v47];
        v11 = v47;
        goto LABEL_87;
      case 159:
        v46 = 0;
        v10 = [v7 AWDLPresenceMode:&v46];
        v11 = v46;
        goto LABEL_87;
      case 160:
        v45 = 0;
        v10 = [v7 AWDLGuardTime:&v45];
        v11 = v45;
        goto LABEL_87;
      case 161:
        v44 = 0;
        v10 = [v7 AWDLAvailabilityWindowAPAlignment:&v44];
        v11 = v44;
        goto LABEL_87;
      case 162:
        v43 = 0;
        v10 = [v7 AWDLContinuousElectionAlgorithmEnabled:&v43];
        v11 = v43;
        goto LABEL_87;
      case 163:
        v42 = 0;
        v10 = [v7 AWDLAFTxMode:&v42];
        v11 = v42;
        goto LABEL_87;
      case 164:
        v41 = 0;
        v10 = [v7 AWDLPeerTrafficRegistration:&v41];
        v11 = v41;
        goto LABEL_87;
      case 165:
        v40 = 0;
        v10 = [v7 AWDLEncryptionType:&v40];
        v11 = v40;
        goto LABEL_87;
      case 166:
        v39 = 0;
        v10 = [v7 AWDLBTLEStateParameters:&v39];
        v11 = v39;
        goto LABEL_87;
      case 167:
      case 168:
      case 169:
      case 170:
      case 171:
      case 172:
      case 173:
      case 174:
      case 177:
      case 179:
      case 180:
      case 181:
      case 182:
      case 183:
      case 184:
      case 185:
      case 186:
      case 188:
      case 189:
      case 190:
      case 191:
      case 192:
      case 193:
      case 194:
      case 195:
      case 196:
      case 198:
      case 199:
      case 200:
      case 201:
      case 202:
      case 203:
      case 204:
      case 205:
      case 206:
      case 207:
      case 208:
      case 209:
      case 218:
      case 219:
      case 220:
      case 221:
      case 222:
      case 223:
      case 224:
      case 225:
      case 226:
      case 227:
      case 228:
      case 229:
      case 230:
      case 231:
      case 232:
        goto LABEL_84;
      case 175:
        v49 = 0;
        v10 = [v7 LQMSummary:&v49];
        v11 = v49;
        goto LABEL_87;
      case 176:
        v38 = 0;
        v10 = [v7 powerDebugInfo:&v38];
        v11 = v38;
        goto LABEL_87;
      case 178:
        v37 = 0;
        v10 = [v7 cca:&v37];
        v11 = v37;
        goto LABEL_87;
      case 187:
        v36 = 0;
        v10 = [v7 rxRate:&v36];
        v11 = v36;
        goto LABEL_87;
      case 197:
        v30 = 0;
        v10 = [v7 countryBandSupport:&v30];
        v11 = v30;
        goto LABEL_87;
      case 210:
        v89 = 0;
        v10 = [v7 hardwareSupportedChannels:&v89];
        v11 = v89;
        goto LABEL_87;
      case 211:
        v35 = 0;
        v10 = [v7 maxLinkSpeed:&v35];
        v11 = v35;
        goto LABEL_87;
      case 212:
        v34 = 0;
        v10 = [v7 state:&v34];
        v11 = v34;
        goto LABEL_87;
      case 213:
        v32 = 0;
        v10 = [v7 powersave:&v32];
        v11 = v32;
        goto LABEL_87;
      case 214:
        v33 = 0;
        v10 = [v7 maxNSSForAP:&v33];
        v11 = v33;
        goto LABEL_87;
      case 215:
        v31 = 0;
        v10 = [v7 txNSS:&v31];
        v11 = v31;
        goto LABEL_87;
      case 216:
        v29 = 0;
        v10 = [v7 beaconCache:&v29];
        v11 = v29;
        goto LABEL_87;
      case 217:
        v28 = 0;
        v10 = [v7 blockedBands:&v28];
        v11 = v28;
        goto LABEL_87;
      case 233:
        v27 = 0;
        v10 = [v7 hostAPStationList:&v27];
        v11 = v27;
        goto LABEL_87;
      case 234:
        v26 = 0;
        v10 = [v7 LQMConfig:&v26];
        v11 = v26;
        goto LABEL_87;
      default:
        if (v8 == 241)
        {
          v25 = 0;
          v10 = [v7 backgroundScanCache:&v25];
          v11 = v25;
        }

        else
        {
          if (v8 != 273)
          {
LABEL_84:
            v15 = *MEMORY[0x1E696A798];
            v16 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
            v17 = v15;
            v18 = 45;
            goto LABEL_85;
          }

          v24 = 0;
          v10 = [v7 powerTableInfo:&v24];
          v11 = v24;
        }

LABEL_87:
        v14 = v11;
        break;
    }
  }

  else
  {
    v23 = *MEMORY[0x1E696A798];
    v16 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
    v17 = v23;
    v18 = 6;
LABEL_85:
    v14 = CWFErrorWithDescription(v17, v18, v16);

    v10 = 0;
  }

LABEL_88:
  if (!v14)
  {
LABEL_91:
    v20 = [MEMORY[0x1E695DF90] dictionary];
    [v20 setObject:v10 forKeyedSubscript:@"Result"];
    v14 = [v4 response];

    if (v14)
    {
      v21 = [v4 response];
      v22 = [v20 copy];
      (v21)[2](v21, 0, v22);

      v14 = 0;
    }

    goto LABEL_93;
  }

  v19 = [v4 response];

  if (v19)
  {
    v20 = [v4 response];
    (v20)[2](v20, v14, 0);
LABEL_93:
  }
}

- (void)__getWiFiUIStateFlags:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 requestParameters];
  v6 = [v5 interfaceName];

  v40 = v6;
  v7 = [(CWFXPCRequestProxy *)self apple80211WithInterfaceName:v6];
  v8 = v7;
  if (v7)
  {
    v42 = 0;
    v9 = [v7 powerOn:&v42];
    v10 = v42;
    if (!v9)
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

      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v43 = 138543362;
        v44 = v10;
        LODWORD(v38) = 12;
        v36 = &v43;
        _os_log_send_and_compose_impl();
      }
    }

    if ([v9 BOOLValue])
    {
      v14 = 2;
    }

    else
    {
      v14 = 0;
    }

    v41 = v10;
    v15 = [v8 opMode:&v41];
    v16 = v41;

    if (!v15)
    {
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

      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v43 = 138543362;
        v44 = v16;
        LODWORD(v39) = 12;
        v37 = &v43;
        _os_log_send_and_compose_impl();
      }
    }

    v20 = [v15 unsignedIntegerValue];
    v21 = [(CWFXPCRequestProxy *)self __userAutoJoinDisabled];
    v22 = [v21 BOOLValue];

    v23 = [(CWFXPCRequestProxy *)self __currentScanResultWithInterfaceName:v40 forceNoCache:0];

    if ((v20 & 8) != 0 || v23 == 0)
    {
      v25 = v14 | v22 | (v20 & 8);
    }

    else
    {
      v25 = v14 | v22 | (v20 & 8) | 4;
    }

    v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v25];
    goto LABEL_26;
  }

  v32 = *MEMORY[0x1E696A798];
  v33 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
  v9 = CWFErrorWithDescription(v32, 6, v33);

  if (!v9)
  {
    v16 = 0;
    v26 = 0;
    v15 = 0;
LABEL_26:
    v27 = [MEMORY[0x1E695DF90] dictionary];
    [v27 setObject:v26 forKeyedSubscript:@"Result"];
    v28 = [v4 response];

    if (v28)
    {
      v29 = [v4 response];
      v30 = [v27 copy];
      (v29)[2](v29, 0, v30);
    }

    v9 = 0;
    goto LABEL_29;
  }

  v34 = [v4 response];

  if (v34)
  {
    v35 = [v4 response];
    (v35)[2](v35, v9, 0);
  }

LABEL_29:

  v31 = *MEMORY[0x1E69E9840];
}

- (id)__networkStackMACAddressWithInterfaceName:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  size = 0;
  *v12 = xmmword_1E0D81890;
  v13 = 3;
  v14 = if_nametoindex([a3 UTF8String]);
  sysctl(v12, 6u, 0, &size, 0, 0);
  if (size)
  {
    v3 = malloc_type_malloc(size, 0x9E18E3E5uLL);
    if (!v3)
    {
      goto LABEL_8;
    }

    if (sysctl(v12, 6u, v3, &size, 0, 0) < 0)
    {
      free(v3);
    }

    else
    {
      v4 = &v3[v3[117]];
      v5 = *(v4 + 30);
      *&v10.octet[4] = *(v4 + 62);
      *v10.octet = v5;
      v6 = ether_ntoa(&v10);
      free(v3);
      if (v6)
      {
        v7 = [MEMORY[0x1E696AEC0] stringWithCString:v6 encoding:4];
        v3 = CWFCorrectEthernetAddressString(v7);

        goto LABEL_8;
      }
    }
  }

  v3 = 0;
LABEL_8:
  v8 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)__getMACAddress:(id)a3
{
  v15 = a3;
  v4 = [v15 requestParameters];
  v5 = [v4 interfaceName];

  if (v5)
  {
    v6 = [(CWFXPCRequestProxy *)self __networkStackMACAddressWithInterfaceName:v5];
LABEL_3:
    v7 = [MEMORY[0x1E695DF90] dictionary];
    [v7 setObject:v6 forKeyedSubscript:@"Result"];
    v8 = [v15 response];

    if (v8)
    {
      v9 = [v15 response];
      v10 = [v7 copy];
      (v9)[2](v9, 0, v10);
    }

    v11 = 0;
    goto LABEL_6;
  }

  v12 = *MEMORY[0x1E696A798];
  v13 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
  v11 = CWFErrorWithDescription(v12, 6, v13);

  if (!v11)
  {
    v6 = 0;
    goto LABEL_3;
  }

  v14 = [v15 response];

  if (v14)
  {
    v6 = [v15 response];
    (v6)[2](v6, v11, 0);
LABEL_6:
  }
}

- (void)__getHardwareMACAddress:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 requestParameters];
  v6 = [v5 interfaceName];

  if (v6)
  {
    v7 = [(CWFXPCRequestProxy *)self apple80211WithInterfaceName:v6];
    if (v7)
    {
      v8 = [(CWFXPCRequestProxy *)self SCNetworkInterfaceWithInterfaceName:v6];
      if (v8)
      {
        v9 = v8;
        v10 = [v8 hardwareAddress];
        if (v10)
        {
          goto LABEL_17;
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

        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v32 = 138543362;
          v33 = v6;
          LODWORD(v31) = 12;
          v30 = &v32;
          _os_log_send_and_compose_impl();
        }

        v10 = [(CWFXPCRequestProxy *)self __networkStackMACAddressWithInterfaceName:v6];
        if (v10)
        {
          goto LABEL_17;
        }

        v14 = CWFGetOSLog();
        if (v14)
        {
          v15 = CWFGetOSLog();
        }

        else
        {
          v15 = MEMORY[0x1E69E9C10];
          v16 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v32 = 138543362;
          v33 = v6;
          LODWORD(v31) = 12;
          v30 = &v32;
          _os_log_send_and_compose_impl();
        }

        v10 = [v7 hardwareMACAddress:0];
        if (v10)
        {
LABEL_17:
          v17 = v10;
LABEL_18:
          v18 = [MEMORY[0x1E695DF90] dictionary];
          [v18 setObject:v17 forKeyedSubscript:@"Result"];
          v19 = [v4 response];

          if (v19)
          {
            v20 = [v4 response];
            v21 = [v18 copy];
            (v20)[2](v20, 0, v21);
          }

          v9 = 0;
          goto LABEL_21;
        }

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

        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v32 = 138543362;
          v33 = v6;
          LODWORD(v31) = 12;
          v30 = &v32;
          _os_log_send_and_compose_impl();
        }

LABEL_28:
        v17 = 0;
        goto LABEL_18;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v26 = *MEMORY[0x1E696A798];
  v27 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
  v9 = CWFErrorWithDescription(v26, 6, v27);

  if (!v9)
  {
    goto LABEL_28;
  }

  v28 = [v4 response];

  if (v28)
  {
    v29 = [v4 response];
    (v29)[2](v29, v9, 0);
  }

LABEL_21:

  v22 = *MEMORY[0x1E69E9840];
}

- (void)__getEventIDs:(id)a3 XPCConnection:(id)a4
{
  v11 = a3;
  v5 = MEMORY[0x1E695DF90];
  v6 = a4;
  v7 = [v5 dictionary];
  v8 = [v6 registeredEventIDs];

  [v7 setObject:v8 forKeyedSubscript:@"Result"];
  v9 = [v11 response];

  if (v9)
  {
    v10 = [v11 response];
    (v10)[2](v10, 0, v7);
  }
}

- (void)__getActivities:(id)a3 XPCConnection:(id)a4
{
  v11 = a3;
  v5 = MEMORY[0x1E695DF90];
  v6 = a4;
  v7 = [v5 dictionary];
  v8 = [v6 registeredActivities];

  [v7 setObject:v8 forKeyedSubscript:@"Result"];
  v9 = [v11 response];

  if (v9)
  {
    v10 = [v11 response];
    (v10)[2](v10, 0, v7);
  }
}

- (void)__getIO80211ControllerInfo:(id)a3
{
  v16 = a3;
  v4 = [v16 requestParameters];
  v5 = [v4 interfaceName];

  if (v5)
  {
    v6 = [(CWFIO80211 *)self->_IO80211 IO80211ControllerInfo];
    if (v6)
    {
LABEL_3:
      v7 = [MEMORY[0x1E695DF90] dictionary];
      [v7 setObject:v6 forKeyedSubscript:@"Result"];
      v8 = [v16 response];

      if (v8)
      {
        v9 = [v16 response];
        v10 = [v7 copy];
        (v9)[2](v9, 0, v10);
      }

      v11 = 0;
      goto LABEL_6;
    }

    v12 = 19;
  }

  else
  {
    v12 = 6;
  }

  v13 = *MEMORY[0x1E696A798];
  v14 = CWFErrorDescription(*MEMORY[0x1E696A798], v12);
  v11 = CWFErrorWithDescription(v13, v12, v14);

  if (!v11)
  {
    v6 = 0;
    goto LABEL_3;
  }

  v15 = [v16 response];

  if (v15)
  {
    v6 = [v16 response];
    (v6)[2](v6, v11, 0);
LABEL_6:
  }
}

- (void)__getIO80211InterfaceInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 requestParameters];
  v6 = [v5 interfaceName];

  if (v6)
  {
    IO80211 = self->_IO80211;
    v17 = 0;
    v8 = [(CWFIO80211 *)IO80211 IO80211InterfaceInfo:v6 error:&v17];
    v9 = v17;
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_6:
    v11 = [MEMORY[0x1E695DF90] dictionary];
    [v11 setObject:v8 forKeyedSubscript:@"Result"];
    v14 = [v4 response];

    if (v14)
    {
      v15 = [v4 response];
      v16 = [v11 copy];
      (v15)[2](v15, 0, v16);
    }

    goto LABEL_8;
  }

  v12 = *MEMORY[0x1E696A798];
  v13 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
  v9 = CWFErrorWithDescription(v12, 6, v13);

  v8 = 0;
  if (!v9)
  {
    goto LABEL_6;
  }

LABEL_3:
  v10 = [v4 response];

  if (v10)
  {
    v11 = [v4 response];
    (v11)[2](v11, v9, 0);
LABEL_8:
  }
}

- (void)__getIPv4Addresses:(id)a3
{
  v18 = a3;
  v4 = [v18 requestParameters];
  v5 = [v4 interfaceName];

  v6 = [(CWFXPCRequestProxy *)self SCNetworkServiceWithInterfaceName:v5];
  v7 = [v6 IPv4Addresses];
  if (v7)
  {
    goto LABEL_10;
  }

  v8 = [(CWFXPCRequestProxy *)self SCNetworkInterfaceWithInterfaceName:v5];
  v9 = [v8 IPv4Addresses];
  v7 = v9;
  if (v8 || v6 || v9)
  {

LABEL_10:
    v14 = [MEMORY[0x1E695DF90] dictionary];
    [v14 setObject:v7 forKeyedSubscript:@"Result"];
    v15 = [v18 response];

    if (v15)
    {
      v16 = [v18 response];
      v17 = [v14 copy];
      (v16)[2](v16, 0, v17);
    }

    v12 = 0;
    goto LABEL_13;
  }

  v10 = *MEMORY[0x1E696A798];
  v11 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
  v12 = CWFErrorWithDescription(v10, 6, v11);

  if (!v12)
  {
    v7 = 0;
    goto LABEL_10;
  }

  v13 = [v18 response];

  if (!v13)
  {
    goto LABEL_14;
  }

  v7 = [v18 response];
  (v7)[2](v7, v12, 0);
LABEL_13:

LABEL_14:
}

- (void)__getIPv4SubnetMasks:(id)a3
{
  v18 = a3;
  v4 = [v18 requestParameters];
  v5 = [v4 interfaceName];

  v6 = [(CWFXPCRequestProxy *)self SCNetworkServiceWithInterfaceName:v5];
  v7 = [v6 IPv4SubnetMasks];
  if (v7)
  {
    goto LABEL_10;
  }

  v8 = [(CWFXPCRequestProxy *)self SCNetworkInterfaceWithInterfaceName:v5];
  v9 = [v8 IPv4SubnetMasks];
  v7 = v9;
  if (v8 || v6 || v9)
  {

LABEL_10:
    v14 = [MEMORY[0x1E695DF90] dictionary];
    [v14 setObject:v7 forKeyedSubscript:@"Result"];
    v15 = [v18 response];

    if (v15)
    {
      v16 = [v18 response];
      v17 = [v14 copy];
      (v16)[2](v16, 0, v17);
    }

    v12 = 0;
    goto LABEL_13;
  }

  v10 = *MEMORY[0x1E696A798];
  v11 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
  v12 = CWFErrorWithDescription(v10, 6, v11);

  if (!v12)
  {
    v7 = 0;
    goto LABEL_10;
  }

  v13 = [v18 response];

  if (!v13)
  {
    goto LABEL_14;
  }

  v7 = [v18 response];
  (v7)[2](v7, v12, 0);
LABEL_13:

LABEL_14:
}

- (void)__getGlobalIPv4Addresses:(id)a3
{
  v9 = a3;
  v4 = [(CWFSCNetworkConfiguration *)self->_SCNetworkConfiguration IPv4Addresses];
  v5 = [MEMORY[0x1E695DF90] dictionary];
  [v5 setObject:v4 forKeyedSubscript:@"Result"];
  v6 = [v9 response];

  if (v6)
  {
    v7 = [v9 response];
    v8 = [v5 copy];
    (v7)[2](v7, 0, v8);
  }
}

- (void)__getIPv6Addresses:(id)a3
{
  v18 = a3;
  v4 = [v18 requestParameters];
  v5 = [v4 interfaceName];

  v6 = [(CWFXPCRequestProxy *)self SCNetworkServiceWithInterfaceName:v5];
  v7 = [v6 IPv6Addresses];
  if (v7)
  {
    goto LABEL_10;
  }

  v8 = [(CWFXPCRequestProxy *)self SCNetworkInterfaceWithInterfaceName:v5];
  v9 = [v8 IPv6Addresses];
  v7 = v9;
  if (v8 || v6 || v9)
  {

LABEL_10:
    v14 = [MEMORY[0x1E695DF90] dictionary];
    [v14 setObject:v7 forKeyedSubscript:@"Result"];
    v15 = [v18 response];

    if (v15)
    {
      v16 = [v18 response];
      v17 = [v14 copy];
      (v16)[2](v16, 0, v17);
    }

    v12 = 0;
    goto LABEL_13;
  }

  v10 = *MEMORY[0x1E696A798];
  v11 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
  v12 = CWFErrorWithDescription(v10, 6, v11);

  if (!v12)
  {
    v7 = 0;
    goto LABEL_10;
  }

  v13 = [v18 response];

  if (!v13)
  {
    goto LABEL_14;
  }

  v7 = [v18 response];
  (v7)[2](v7, v12, 0);
LABEL_13:

LABEL_14:
}

- (void)__getGlobalIPv6Addresses:(id)a3
{
  v9 = a3;
  v4 = [(CWFSCNetworkConfiguration *)self->_SCNetworkConfiguration IPv6Addresses];
  v5 = [MEMORY[0x1E695DF90] dictionary];
  [v5 setObject:v4 forKeyedSubscript:@"Result"];
  v6 = [v9 response];

  if (v6)
  {
    v7 = [v9 response];
    v8 = [v5 copy];
    (v7)[2](v7, 0, v8);
  }
}

- (void)__getIPv4ARPResolvedHardwareAddress:(id)a3
{
  v15 = a3;
  v4 = [v15 requestParameters];
  v5 = [v4 interfaceName];

  v6 = [(CWFXPCRequestProxy *)self SCNetworkServiceWithInterfaceName:v5];
  v7 = [v6 IPv4ARPResolvedHardwareAddress];
  if (v6 | v7 || (v8 = *MEMORY[0x1E696A798], CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL), v9 = objc_claimAutoreleasedReturnValue(), CWFErrorWithDescription(v8, 6, v9), v10 = objc_claimAutoreleasedReturnValue(), v9, !v10))
  {
    v12 = [MEMORY[0x1E695DF90] dictionary];
    [v12 setObject:v7 forKeyedSubscript:@"Result"];
    v10 = [v15 response];

    if (v10)
    {
      v13 = [v15 response];
      v14 = [v12 copy];
      (v13)[2](v13, 0, v14);

      v10 = 0;
    }
  }

  else
  {
    v11 = [v15 response];

    if (!v11)
    {
      goto LABEL_8;
    }

    v12 = [v15 response];
    (v12)[2](v12, v10, 0);
  }

LABEL_8:
}

- (void)__getIPv4ARPResolvedIPAddress:(id)a3
{
  v15 = a3;
  v4 = [v15 requestParameters];
  v5 = [v4 interfaceName];

  v6 = [(CWFXPCRequestProxy *)self SCNetworkServiceWithInterfaceName:v5];
  v7 = [v6 IPv4ARPResolvedIPAddress];
  if (v6 | v7 || (v8 = *MEMORY[0x1E696A798], CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL), v9 = objc_claimAutoreleasedReturnValue(), CWFErrorWithDescription(v8, 6, v9), v10 = objc_claimAutoreleasedReturnValue(), v9, !v10))
  {
    v12 = [MEMORY[0x1E695DF90] dictionary];
    [v12 setObject:v7 forKeyedSubscript:@"Result"];
    v10 = [v15 response];

    if (v10)
    {
      v13 = [v15 response];
      v14 = [v12 copy];
      (v13)[2](v13, 0, v14);

      v10 = 0;
    }
  }

  else
  {
    v11 = [v15 response];

    if (!v11)
    {
      goto LABEL_8;
    }

    v12 = [v15 response];
    (v12)[2](v12, v10, 0);
  }

LABEL_8:
}

- (void)__getIPv4Router:(id)a3
{
  v15 = a3;
  v4 = [v15 requestParameters];
  v5 = [v4 interfaceName];

  v6 = [(CWFXPCRequestProxy *)self SCNetworkServiceWithInterfaceName:v5];
  v7 = [v6 IPv4Router];
  if (v6 | v7 || (v8 = *MEMORY[0x1E696A798], CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL), v9 = objc_claimAutoreleasedReturnValue(), CWFErrorWithDescription(v8, 6, v9), v10 = objc_claimAutoreleasedReturnValue(), v9, !v10))
  {
    v12 = [MEMORY[0x1E695DF90] dictionary];
    [v12 setObject:v7 forKeyedSubscript:@"Result"];
    v10 = [v15 response];

    if (v10)
    {
      v13 = [v15 response];
      v14 = [v12 copy];
      (v13)[2](v13, 0, v14);

      v10 = 0;
    }
  }

  else
  {
    v11 = [v15 response];

    if (!v11)
    {
      goto LABEL_8;
    }

    v12 = [v15 response];
    (v12)[2](v12, v10, 0);
  }

LABEL_8:
}

- (void)__getGlobalIPv4Router:(id)a3
{
  v9 = a3;
  v4 = [(CWFSCNetworkConfiguration *)self->_SCNetworkConfiguration IPv4Router];
  v5 = [MEMORY[0x1E695DF90] dictionary];
  [v5 setObject:v4 forKeyedSubscript:@"Result"];
  v6 = [v9 response];

  if (v6)
  {
    v7 = [v9 response];
    v8 = [v5 copy];
    (v7)[2](v7, 0, v8);
  }
}

- (void)__getIPv6Router:(id)a3
{
  v15 = a3;
  v4 = [v15 requestParameters];
  v5 = [v4 interfaceName];

  v6 = [(CWFXPCRequestProxy *)self SCNetworkServiceWithInterfaceName:v5];
  v7 = [v6 IPv6Router];
  if (v6 | v7 || (v8 = *MEMORY[0x1E696A798], CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL), v9 = objc_claimAutoreleasedReturnValue(), CWFErrorWithDescription(v8, 6, v9), v10 = objc_claimAutoreleasedReturnValue(), v9, !v10))
  {
    v12 = [MEMORY[0x1E695DF90] dictionary];
    [v12 setObject:v7 forKeyedSubscript:@"Result"];
    v10 = [v15 response];

    if (v10)
    {
      v13 = [v15 response];
      v14 = [v12 copy];
      (v13)[2](v13, 0, v14);

      v10 = 0;
    }
  }

  else
  {
    v11 = [v15 response];

    if (!v11)
    {
      goto LABEL_8;
    }

    v12 = [v15 response];
    (v12)[2](v12, v10, 0);
  }

LABEL_8:
}

- (void)__getGlobalIPv6Router:(id)a3
{
  v9 = a3;
  v4 = [(CWFSCNetworkConfiguration *)self->_SCNetworkConfiguration IPv6Router];
  v5 = [MEMORY[0x1E695DF90] dictionary];
  [v5 setObject:v4 forKeyedSubscript:@"Result"];
  v6 = [v9 response];

  if (v6)
  {
    v7 = [v9 response];
    v8 = [v5 copy];
    (v7)[2](v7, 0, v8);
  }
}

- (void)__getGlobalIPv4InterfaceName:(id)a3
{
  v9 = a3;
  v4 = [(CWFSCNetworkConfiguration *)self->_SCNetworkConfiguration IPv4InterfaceName];
  v5 = [MEMORY[0x1E695DF90] dictionary];
  [v5 setObject:v4 forKeyedSubscript:@"Result"];
  v6 = [v9 response];

  if (v6)
  {
    v7 = [v9 response];
    v8 = [v5 copy];
    (v7)[2](v7, 0, v8);
  }
}

- (void)__getGlobalIPv6InterfaceName:(id)a3
{
  v9 = a3;
  v4 = [(CWFSCNetworkConfiguration *)self->_SCNetworkConfiguration IPv6InterfaceName];
  v5 = [MEMORY[0x1E695DF90] dictionary];
  [v5 setObject:v4 forKeyedSubscript:@"Result"];
  v6 = [v9 response];

  if (v6)
  {
    v7 = [v9 response];
    v8 = [v5 copy];
    (v7)[2](v7, 0, v8);
  }
}

- (void)__getNetServiceID:(id)a3
{
  v16 = a3;
  v4 = [v16 requestParameters];
  v5 = [v4 interfaceName];

  if (v5)
  {
    v6 = [(CWFXPCRequestProxy *)self SCNetworkServiceWithInterfaceName:v5];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 serviceID];
LABEL_4:
      v9 = [MEMORY[0x1E695DF90] dictionary];
      [v9 setObject:v8 forKeyedSubscript:@"Result"];
      v10 = [v16 response];

      if (v10)
      {
        v11 = [v16 response];
        v12 = [v9 copy];
        (v11)[2](v11, 0, v12);
      }

      v7 = 0;
      goto LABEL_7;
    }
  }

  v13 = *MEMORY[0x1E696A798];
  v14 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
  v7 = CWFErrorWithDescription(v13, 6, v14);

  if (!v7)
  {
    v8 = 0;
    goto LABEL_4;
  }

  v15 = [v16 response];

  if (v15)
  {
    v8 = [v16 response];
    (v8)[2](v8, v7, 0);
LABEL_7:
  }
}

- (void)__getNetServiceName:(id)a3
{
  v16 = a3;
  v4 = [v16 requestParameters];
  v5 = [v4 interfaceName];

  if (v5)
  {
    v6 = [(CWFXPCRequestProxy *)self SCNetworkServiceWithInterfaceName:v5];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 serviceName];
LABEL_4:
      v9 = [MEMORY[0x1E695DF90] dictionary];
      [v9 setObject:v8 forKeyedSubscript:@"Result"];
      v10 = [v16 response];

      if (v10)
      {
        v11 = [v16 response];
        v12 = [v9 copy];
        (v11)[2](v11, 0, v12);
      }

      v7 = 0;
      goto LABEL_7;
    }
  }

  v13 = *MEMORY[0x1E696A798];
  v14 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
  v7 = CWFErrorWithDescription(v13, 6, v14);

  if (!v7)
  {
    v8 = 0;
    goto LABEL_4;
  }

  v15 = [v16 response];

  if (v15)
  {
    v8 = [v16 response];
    (v8)[2](v8, v7, 0);
LABEL_7:
  }
}

- (void)__getNetServiceEnabled:(id)a3
{
  v17 = a3;
  v4 = [v17 requestParameters];
  v5 = [v4 interfaceName];

  if (v5)
  {
    v6 = [(CWFXPCRequestProxy *)self SCNetworkServiceWithInterfaceName:v5];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 serviceID];
      v9 = v8 != 0;

      goto LABEL_4;
    }
  }

  v14 = *MEMORY[0x1E696A798];
  v15 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
  v9 = CWFErrorWithDescription(v14, 6, v15);

  if (!v9)
  {
LABEL_4:
    v10 = [MEMORY[0x1E695DF90] dictionary];
    v11 = [MEMORY[0x1E696AD98] numberWithBool:v9];
    [v10 setObject:v11 forKeyedSubscript:@"Result"];

    v9 = [v17 response];

    if (v9)
    {
      v12 = [v17 response];
      v13 = [v10 copy];
      (v12)[2](v12, 0, v13);

      v9 = 0;
    }

    goto LABEL_6;
  }

  v16 = [v17 response];

  if (v16)
  {
    v10 = [v17 response];
    v10[2](v10, v9, 0);
LABEL_6:
  }
}

- (void)__getGlobalIPv4NetServiceID:(id)a3
{
  v9 = a3;
  v4 = [(CWFSCNetworkConfiguration *)self->_SCNetworkConfiguration IPv4ServiceID];
  v5 = [MEMORY[0x1E695DF90] dictionary];
  [v5 setObject:v4 forKeyedSubscript:@"Result"];
  v6 = [v9 response];

  if (v6)
  {
    v7 = [v9 response];
    v8 = [v5 copy];
    (v7)[2](v7, 0, v8);
  }
}

- (void)__getGlobalIPv6NetServiceID:(id)a3
{
  v9 = a3;
  v4 = [(CWFSCNetworkConfiguration *)self->_SCNetworkConfiguration IPv6ServiceID];
  v5 = [MEMORY[0x1E695DF90] dictionary];
  [v5 setObject:v4 forKeyedSubscript:@"Result"];
  v6 = [v9 response];

  if (v6)
  {
    v7 = [v9 response];
    v8 = [v5 copy];
    (v7)[2](v7, 0, v8);
  }
}

- (void)__getGlobalIPv4NetServiceName:(id)a3
{
  v9 = a3;
  v4 = [(CWFSCNetworkConfiguration *)self->_SCNetworkConfiguration IPv4ServiceName];
  v5 = [MEMORY[0x1E695DF90] dictionary];
  [v5 setObject:v4 forKeyedSubscript:@"Result"];
  v6 = [v9 response];

  if (v6)
  {
    v7 = [v9 response];
    v8 = [v5 copy];
    (v7)[2](v7, 0, v8);
  }
}

- (void)__getGlobalIPv6NetServiceName:(id)a3
{
  v9 = a3;
  v4 = [(CWFSCNetworkConfiguration *)self->_SCNetworkConfiguration IPv6ServiceName];
  v5 = [MEMORY[0x1E695DF90] dictionary];
  [v5 setObject:v4 forKeyedSubscript:@"Result"];
  v6 = [v9 response];

  if (v6)
  {
    v7 = [v9 response];
    v8 = [v5 copy];
    (v7)[2](v7, 0, v8);
  }
}

- (void)__getGlobalDNSServerAddresses:(id)a3
{
  v9 = a3;
  v4 = [(CWFSCNetworkConfiguration *)self->_SCNetworkConfiguration DNSServerAddresses];
  v5 = [MEMORY[0x1E695DF90] dictionary];
  [v5 setObject:v4 forKeyedSubscript:@"Result"];
  v6 = [v9 response];

  if (v6)
  {
    v7 = [v9 response];
    v8 = [v5 copy];
    (v7)[2](v7, 0, v8);
  }
}

- (void)__getDNSServerAddresses:(id)a3
{
  v15 = a3;
  v4 = [v15 requestParameters];
  v5 = [v4 interfaceName];

  v6 = [(CWFXPCRequestProxy *)self SCNetworkServiceWithInterfaceName:v5];
  v7 = [v6 DNSServerAddresses];
  if (v6 | v7 || (v8 = *MEMORY[0x1E696A798], CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL), v9 = objc_claimAutoreleasedReturnValue(), CWFErrorWithDescription(v8, 6, v9), v10 = objc_claimAutoreleasedReturnValue(), v9, !v10))
  {
    v12 = [MEMORY[0x1E695DF90] dictionary];
    [v12 setObject:v7 forKeyedSubscript:@"Result"];
    v10 = [v15 response];

    if (v10)
    {
      v13 = [v15 response];
      v14 = [v12 copy];
      (v13)[2](v13, 0, v14);

      v10 = 0;
    }
  }

  else
  {
    v11 = [v15 response];

    if (!v11)
    {
      goto LABEL_8;
    }

    v12 = [v15 response];
    (v12)[2](v12, v10, 0);
  }

LABEL_8:
}

- (void)__getNetworkReachability:(id)a3
{
  v9 = a3;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CWFSCNetworkReachability flags](self->_SCNetworkReachability, "flags")}];
  v5 = [MEMORY[0x1E695DF90] dictionary];
  [v5 setObject:v4 forKeyedSubscript:@"Result"];
  v6 = [v9 response];

  if (v6)
  {
    v7 = [v9 response];
    v8 = [v5 copy];
    (v7)[2](v7, 0, v8);
  }
}

- (void)__getDHCPLeaseStartTime:(id)a3
{
  v16 = a3;
  v4 = [v16 requestParameters];
  v5 = [v4 interfaceName];

  if (v5)
  {
    v6 = [(CWFXPCRequestProxy *)self SCNetworkServiceWithInterfaceName:v5];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 DHCPLeaseStartTimestamp];
LABEL_4:
      v9 = [MEMORY[0x1E695DF90] dictionary];
      [v9 setObject:v8 forKeyedSubscript:@"Result"];
      v10 = [v16 response];

      if (v10)
      {
        v11 = [v16 response];
        v12 = [v9 copy];
        (v11)[2](v11, 0, v12);
      }

      v7 = 0;
      goto LABEL_7;
    }
  }

  v13 = *MEMORY[0x1E696A798];
  v14 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
  v7 = CWFErrorWithDescription(v13, 6, v14);

  if (!v7)
  {
    v8 = 0;
    goto LABEL_4;
  }

  v15 = [v16 response];

  if (v15)
  {
    v8 = [v16 response];
    (v8)[2](v8, v7, 0);
LABEL_7:
  }
}

- (void)__getDHCPLeaseExpirationTime:(id)a3
{
  v16 = a3;
  v4 = [v16 requestParameters];
  v5 = [v4 interfaceName];

  if (v5)
  {
    v6 = [(CWFXPCRequestProxy *)self SCNetworkServiceWithInterfaceName:v5];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 DHCPLeaseExpirationTimestamp];
LABEL_4:
      v9 = [MEMORY[0x1E695DF90] dictionary];
      [v9 setObject:v8 forKeyedSubscript:@"Result"];
      v10 = [v16 response];

      if (v10)
      {
        v11 = [v16 response];
        v12 = [v9 copy];
        (v11)[2](v11, 0, v12);
      }

      v7 = 0;
      goto LABEL_7;
    }
  }

  v13 = *MEMORY[0x1E696A798];
  v14 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
  v7 = CWFErrorWithDescription(v13, 6, v14);

  if (!v7)
  {
    v8 = 0;
    goto LABEL_4;
  }

  v15 = [v16 response];

  if (v15)
  {
    v8 = [v16 response];
    (v8)[2](v8, v7, 0);
LABEL_7:
  }
}

- (void)__getDHCPServerID:(id)a3
{
  v15 = a3;
  v4 = [v15 requestParameters];
  v5 = [v4 interfaceName];

  v6 = [(CWFXPCRequestProxy *)self SCNetworkServiceWithInterfaceName:v5];
  v7 = [v6 DHCPServerID];
  if (v6 | v7 || (v8 = *MEMORY[0x1E696A798], CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL), v9 = objc_claimAutoreleasedReturnValue(), CWFErrorWithDescription(v8, 6, v9), v10 = objc_claimAutoreleasedReturnValue(), v9, !v10))
  {
    v12 = [MEMORY[0x1E695DF90] dictionary];
    [v12 setObject:v7 forKeyedSubscript:@"Result"];
    v10 = [v15 response];

    if (v10)
    {
      v13 = [v15 response];
      v14 = [v12 copy];
      (v13)[2](v13, 0, v14);

      v10 = 0;
    }
  }

  else
  {
    v11 = [v15 response];

    if (!v11)
    {
      goto LABEL_8;
    }

    v12 = [v15 response];
    (v12)[2](v12, v10, 0);
  }

LABEL_8:
}

- (void)__getDHCPv6ServerID:(id)a3
{
  v15 = a3;
  v4 = [v15 requestParameters];
  v5 = [v4 interfaceName];

  v6 = [(CWFXPCRequestProxy *)self SCNetworkServiceWithInterfaceName:v5];
  v7 = [v6 DHCPv6ServerID];
  if (v6 | v7 || (v8 = *MEMORY[0x1E696A798], CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL), v9 = objc_claimAutoreleasedReturnValue(), CWFErrorWithDescription(v8, 6, v9), v10 = objc_claimAutoreleasedReturnValue(), v9, !v10))
  {
    v12 = [MEMORY[0x1E695DF90] dictionary];
    [v12 setObject:v7 forKeyedSubscript:@"Result"];
    v10 = [v15 response];

    if (v10)
    {
      v13 = [v15 response];
      v14 = [v12 copy];
      (v13)[2](v13, 0, v14);

      v10 = 0;
    }
  }

  else
  {
    v11 = [v15 response];

    if (!v11)
    {
      goto LABEL_8;
    }

    v12 = [v15 response];
    (v12)[2](v12, v10, 0);
  }

LABEL_8:
}

- (void)__getIPv4NetworkSignature:(id)a3
{
  v15 = a3;
  v4 = [v15 requestParameters];
  v5 = [v4 interfaceName];

  v6 = [(CWFXPCRequestProxy *)self SCNetworkServiceWithInterfaceName:v5];
  v7 = [v6 IPv4NetworkSignature];
  if (v6 | v7 || (v8 = *MEMORY[0x1E696A798], CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL), v9 = objc_claimAutoreleasedReturnValue(), CWFErrorWithDescription(v8, 6, v9), v10 = objc_claimAutoreleasedReturnValue(), v9, !v10))
  {
    v12 = [MEMORY[0x1E695DF90] dictionary];
    [v12 setObject:v7 forKeyedSubscript:@"Result"];
    v10 = [v15 response];

    if (v10)
    {
      v13 = [v15 response];
      v14 = [v12 copy];
      (v13)[2](v13, 0, v14);

      v10 = 0;
    }
  }

  else
  {
    v11 = [v15 response];

    if (!v11)
    {
      goto LABEL_8;
    }

    v12 = [v15 response];
    (v12)[2](v12, v10, 0);
  }

LABEL_8:
}

- (void)__getIPv6NetworkSignature:(id)a3
{
  v15 = a3;
  v4 = [v15 requestParameters];
  v5 = [v4 interfaceName];

  v6 = [(CWFXPCRequestProxy *)self SCNetworkServiceWithInterfaceName:v5];
  v7 = [v6 IPv6NetworkSignature];
  if (v6 | v7 || (v8 = *MEMORY[0x1E696A798], CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL), v9 = objc_claimAutoreleasedReturnValue(), CWFErrorWithDescription(v8, 6, v9), v10 = objc_claimAutoreleasedReturnValue(), v9, !v10))
  {
    v12 = [MEMORY[0x1E695DF90] dictionary];
    [v12 setObject:v7 forKeyedSubscript:@"Result"];
    v10 = [v15 response];

    if (v10)
    {
      v13 = [v15 response];
      v14 = [v12 copy];
      (v13)[2](v13, 0, v14);

      v10 = 0;
    }
  }

  else
  {
    v11 = [v15 response];

    if (!v11)
    {
      goto LABEL_8;
    }

    v12 = [v15 response];
    (v12)[2](v12, v10, 0);
  }

LABEL_8:
}

- (void)__getEAP8021XSupplicantState:(id)a3
{
  v4 = a3;
  v5 = [v4 requestParameters];
  v6 = [v5 interfaceName];

  if (v6)
  {
    v7 = [(CWFXPCRequestProxy *)self EAP8021XWithInterfaceName:v6];
    if (v7)
    {
      v8 = v7;
      v18 = 0;
      v9 = [v7 supplicantState:&v18];
      v10 = v18;
      if (v10)
      {
        goto LABEL_4;
      }

LABEL_7:
      v12 = [MEMORY[0x1E695DF90] dictionary];
      [v12 setObject:v9 forKeyedSubscript:@"Result"];
      v15 = [v4 response];

      if (v15)
      {
        v16 = [v4 response];
        v17 = [v12 copy];
        (v16)[2](v16, 0, v17);
      }

      goto LABEL_9;
    }
  }

  v13 = *MEMORY[0x1E696A798];
  v14 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
  v10 = CWFErrorWithDescription(v13, 6, v14);

  v8 = 0;
  v9 = 0;
  if (!v10)
  {
    goto LABEL_7;
  }

LABEL_4:
  v11 = [v4 response];

  if (v11)
  {
    v12 = [v4 response];
    (v12)[2](v12, v10, 0);
LABEL_9:
  }
}

- (void)__getEAP8021XControlMode:(id)a3
{
  v4 = a3;
  v5 = [v4 requestParameters];
  v6 = [v5 interfaceName];

  if (v6)
  {
    v7 = [(CWFXPCRequestProxy *)self EAP8021XWithInterfaceName:v6];
    if (v7)
    {
      v8 = v7;
      v18 = 0;
      v9 = [v7 controlMode:&v18];
      v10 = v18;
      if (v10)
      {
        goto LABEL_4;
      }

LABEL_7:
      v12 = [MEMORY[0x1E695DF90] dictionary];
      [v12 setObject:v9 forKeyedSubscript:@"Result"];
      v15 = [v4 response];

      if (v15)
      {
        v16 = [v4 response];
        v17 = [v12 copy];
        (v16)[2](v16, 0, v17);
      }

      goto LABEL_9;
    }
  }

  v13 = *MEMORY[0x1E696A798];
  v14 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
  v10 = CWFErrorWithDescription(v13, 6, v14);

  v8 = 0;
  v9 = 0;
  if (!v10)
  {
    goto LABEL_7;
  }

LABEL_4:
  v11 = [v4 response];

  if (v11)
  {
    v12 = [v4 response];
    (v12)[2](v12, v10, 0);
LABEL_9:
  }
}

- (void)__getEAP8021XControlState:(id)a3
{
  v4 = a3;
  v5 = [v4 requestParameters];
  v6 = [v5 interfaceName];

  if (v6)
  {
    v7 = [(CWFXPCRequestProxy *)self EAP8021XWithInterfaceName:v6];
    if (v7)
    {
      v8 = v7;
      v18 = 0;
      v9 = [v7 controlState:&v18];
      v10 = v18;
      if (v10)
      {
        goto LABEL_4;
      }

LABEL_7:
      v12 = [MEMORY[0x1E695DF90] dictionary];
      [v12 setObject:v9 forKeyedSubscript:@"Result"];
      v15 = [v4 response];

      if (v15)
      {
        v16 = [v4 response];
        v17 = [v12 copy];
        (v16)[2](v16, 0, v17);
      }

      goto LABEL_9;
    }
  }

  v13 = *MEMORY[0x1E696A798];
  v14 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
  v10 = CWFErrorWithDescription(v13, 6, v14);

  v8 = 0;
  v9 = 0;
  if (!v10)
  {
    goto LABEL_7;
  }

LABEL_4:
  v11 = [v4 response];

  if (v11)
  {
    v12 = [v4 response];
    (v12)[2](v12, v10, 0);
LABEL_9:
  }
}

- (void)__getEAP8021XClientStatus:(id)a3
{
  v4 = a3;
  v5 = [v4 requestParameters];
  v6 = [v5 interfaceName];

  if (v6)
  {
    v7 = [(CWFXPCRequestProxy *)self EAP8021XWithInterfaceName:v6];
    if (v7)
    {
      v8 = v7;
      v18 = 0;
      v9 = [v7 clientStatus:&v18];
      v10 = v18;
      if (v10)
      {
        goto LABEL_4;
      }

LABEL_7:
      v12 = [MEMORY[0x1E695DF90] dictionary];
      [v12 setObject:v9 forKeyedSubscript:@"Result"];
      v15 = [v4 response];

      if (v15)
      {
        v16 = [v4 response];
        v17 = [v12 copy];
        (v16)[2](v16, 0, v17);
      }

      goto LABEL_9;
    }
  }

  v13 = *MEMORY[0x1E696A798];
  v14 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
  v10 = CWFErrorWithDescription(v13, 6, v14);

  v8 = 0;
  v9 = 0;
  if (!v10)
  {
    goto LABEL_7;
  }

LABEL_4:
  v11 = [v4 response];

  if (v11)
  {
    v12 = [v4 response];
    (v12)[2](v12, v10, 0);
LABEL_9:
  }
}

- (void)__getRoamStatus:(id)a3
{
  v15 = a3;
  v4 = [v15 requestParameters];
  v5 = [v4 interfaceName];

  if (v5)
  {
    v6 = [(CWFXPCRequestProxy *)self __roamStatusWithInterfaceName:v5];
LABEL_3:
    v7 = [MEMORY[0x1E695DF90] dictionary];
    [v7 setObject:v6 forKeyedSubscript:@"Result"];
    v8 = [v15 response];

    if (v8)
    {
      v9 = [v15 response];
      v10 = [v7 copy];
      (v9)[2](v9, 0, v10);
    }

    v11 = 0;
    goto LABEL_6;
  }

  v12 = *MEMORY[0x1E696A798];
  v13 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
  v11 = CWFErrorWithDescription(v12, 6, v13);

  if (!v11)
  {
    v6 = 0;
    goto LABEL_3;
  }

  v14 = [v15 response];

  if (v14)
  {
    v6 = [v15 response];
    (v6)[2](v6, v11, 0);
LABEL_6:
  }
}

- (void)__getJoinStatus:(id)a3
{
  v15 = a3;
  v4 = [v15 requestParameters];
  v5 = [v4 interfaceName];

  if (v5)
  {
    v6 = [(CWFXPCRequestProxy *)self __joinStatusWithInterfaceName:v5];
LABEL_3:
    v7 = [MEMORY[0x1E695DF90] dictionary];
    [v7 setObject:v6 forKeyedSubscript:@"Result"];
    v8 = [v15 response];

    if (v8)
    {
      v9 = [v15 response];
      v10 = [v7 copy];
      (v9)[2](v9, 0, v10);
    }

    v11 = 0;
    goto LABEL_6;
  }

  v12 = *MEMORY[0x1E696A798];
  v13 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
  v11 = CWFErrorWithDescription(v12, 6, v13);

  if (!v11)
  {
    v6 = 0;
    goto LABEL_3;
  }

  v14 = [v15 response];

  if (v14)
  {
    v6 = [v15 response];
    (v6)[2](v6, v11, 0);
LABEL_6:
  }
}

- (void)__getAutoJoinStatus:(id)a3
{
  v15 = a3;
  v4 = [v15 requestParameters];
  v5 = [v4 interfaceName];

  if (v5)
  {
    v6 = [(CWFXPCRequestProxy *)self __autojoinStatusWithInterfaceName:v5];
LABEL_3:
    v7 = [MEMORY[0x1E695DF90] dictionary];
    [v7 setObject:v6 forKeyedSubscript:@"Result"];
    v8 = [v15 response];

    if (v8)
    {
      v9 = [v15 response];
      v10 = [v7 copy];
      (v9)[2](v9, 0, v10);
    }

    v11 = 0;
    goto LABEL_6;
  }

  v12 = *MEMORY[0x1E696A798];
  v13 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
  v11 = CWFErrorWithDescription(v12, 6, v13);

  if (!v11)
  {
    v6 = 0;
    goto LABEL_3;
  }

  v14 = [v15 response];

  if (v14)
  {
    v6 = [v15 response];
    (v6)[2](v6, v11, 0);
LABEL_6:
  }
}

- (void)__getLinkDownStatus:(id)a3
{
  v15 = a3;
  v4 = [v15 requestParameters];
  v5 = [v4 interfaceName];

  if (v5)
  {
    v6 = [(CWFXPCRequestProxy *)self __linkDownStatusWithInterfaceName:v5];
LABEL_3:
    v7 = [MEMORY[0x1E695DF90] dictionary];
    [v7 setObject:v6 forKeyedSubscript:@"Result"];
    v8 = [v15 response];

    if (v8)
    {
      v9 = [v15 response];
      v10 = [v7 copy];
      (v9)[2](v9, 0, v10);
    }

    v11 = 0;
    goto LABEL_6;
  }

  v12 = *MEMORY[0x1E696A798];
  v13 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
  v11 = CWFErrorWithDescription(v12, 6, v13);

  if (!v11)
  {
    v6 = 0;
    goto LABEL_3;
  }

  v14 = [v15 response];

  if (v14)
  {
    v6 = [v15 response];
    (v6)[2](v6, v11, 0);
LABEL_6:
  }
}

- (void)__getSSID:(id)a3 XPCConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 requestParameters];
  v9 = [v8 interfaceName];

  v38 = v7;
  if (v9 && ([(CWFXPCRequestProxy *)self apple80211WithInterfaceName:v9], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v11 = v10;
    v39 = 0;
    v12 = [v10 SSID:&v39];
    v13 = v39;
    if (v12)
    {
      if ([v7 serviceType] != 4)
      {
        v14 = 0;
        v17 = 0;
LABEL_10:
        v12 = v12;
        v23 = v12;
        goto LABEL_11;
      }

      v14 = [(CWFXPCRequestProxy *)self __currentNetworkProfileWithInterfaceName:v9];
      v15 = [v14 SSID];
      v16 = [v15 isEqualToData:v12];

      if (v16)
      {
        v17 = [v7 bundleID];
        if (!v17 || ([v14 bundleID], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "isEqualToString:", v17), v18, (v19 & 1) == 0))
        {
          v20 = *MEMORY[0x1E696A798];
          v21 = CWFErrorDescription(*MEMORY[0x1E696A798], 1uLL);
          v22 = CWFErrorWithDescription(v20, 1, v21);

          v23 = 0;
          v13 = v22;
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      v35 = *MEMORY[0x1E696A798];
      v36 = CWFErrorDescription(*MEMORY[0x1E696A798], 1uLL);
      v37 = CWFErrorWithDescription(v35, 1, v36);

      v17 = 0;
      v23 = 0;
      v13 = v37;
    }

    else
    {
      v14 = 0;
      v17 = 0;
      v23 = 0;
    }
  }

  else
  {
    v33 = *MEMORY[0x1E696A798];
    v34 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
    v13 = CWFErrorWithDescription(v33, 6, v34);

    v14 = 0;
    v17 = 0;
    v12 = 0;
    v23 = 0;
    v11 = 0;
  }

LABEL_11:
  if (!v13)
  {
    v25 = [MEMORY[0x1E695DF90] dictionary];
    [v25 setObject:v23 forKeyedSubscript:@"Result"];
    v26 = [v6 response];

    if (v26)
    {
      v27 = [v6 response];
      v28 = v11;
      v29 = v9;
      v30 = v6;
      v31 = v14;
      v32 = [v25 copy];
      (v27)[2](v27, 0, v32);

      v14 = v31;
      v6 = v30;
      v9 = v29;
      v11 = v28;
      v13 = 0;
    }

    goto LABEL_16;
  }

  v24 = [v6 response];

  if (v24)
  {
    v25 = [v6 response];
    (v25)[2](v25, v13, 0);
LABEL_16:
  }
}

- (void)__getSSIDForVendor:(id)a3 XPCConnection:(id)a4
{
  v33 = a3;
  v34 = a4;
  v6 = [v33 requestParameters];
  v7 = [v6 interfaceName];

  if (v7 && ([(CWFXPCRequestProxy *)self apple80211WithInterfaceName:v7], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v8;
    v36 = 0;
    v10 = [v8 SSID:&v36];
    v11 = v36;
    if (v10)
    {
      if ([v34 serviceType] != 4)
      {
        v16 = 0;
        v15 = 0;
        goto LABEL_10;
      }

      v12 = [(CWFXPCRequestProxy *)self __currentNetworkProfileWithInterfaceName:v7];
      v13 = [v12 SSID];
      v14 = [v13 isEqualToData:v10];

      if (v14)
      {
        v15 = [v34 bundleID];
        v16 = v12;
        if (!v15 || ([v12 bundleID], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "isEqualToString:", v15), v17, (v18 & 1) == 0))
        {
          v19 = *MEMORY[0x1E696A798];
          v20 = CWFErrorDescription(*MEMORY[0x1E696A798], 1uLL);
          v21 = CWFErrorWithDescription(v19, 1, v20);

          v22 = 0;
LABEL_11:
          v11 = v21;
          goto LABEL_12;
        }

LABEL_10:
        v35 = v11;
        v22 = [(CWFXPCRequestProxy *)self __hashedSSID:v10 XPCConnection:v34 error:&v35];
        v21 = v35;

        goto LABEL_11;
      }

      v30 = *MEMORY[0x1E696A798];
      v31 = CWFErrorDescription(*MEMORY[0x1E696A798], 1uLL);
      v32 = CWFErrorWithDescription(v30, 1, v31);

      v15 = 0;
      v22 = 0;
      v11 = v32;
      v16 = v12;
    }

    else
    {
      v16 = 0;
      v15 = 0;
      v22 = 0;
    }
  }

  else
  {
    v28 = *MEMORY[0x1E696A798];
    v29 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
    v11 = CWFErrorWithDescription(v28, 6, v29);

    v16 = 0;
    v15 = 0;
    v10 = 0;
    v22 = 0;
    v9 = 0;
  }

LABEL_12:
  if (!v11)
  {
    v24 = [MEMORY[0x1E695DF90] dictionary];
    [v24 setObject:v22 forKeyedSubscript:@"Result"];
    v25 = [v33 response];

    if (v25)
    {
      v26 = [v33 response];
      v27 = [v24 copy];
      (v26)[2](v26, 0, v27);
    }

    goto LABEL_17;
  }

  v23 = [v33 response];

  if (v23)
  {
    v24 = [v33 response];
    (v24)[2](v24, v11, 0);
LABEL_17:
  }
}

- (void)__getBSSID:(id)a3 XPCConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 requestParameters];
  v9 = [v8 interfaceName];

  v47 = v7;
  if (v9 && ([(CWFXPCRequestProxy *)self apple80211WithInterfaceName:v9], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v11 = v10;
    v49 = 0;
    v12 = [v10 SSID:&v49];
    v13 = v49;
    if (v12)
    {
      if ([v7 serviceType] != 4)
      {
        v17 = 0;
        v14 = 0;
        goto LABEL_12;
      }

      v14 = [(CWFXPCRequestProxy *)self __currentNetworkProfileWithInterfaceName:v9];
      v15 = [v14 SSID];
      v16 = [v15 isEqualToData:v12];

      if (v16)
      {
        v17 = [v7 bundleID];
        if (!v17 || ([v14 bundleID], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "isEqualToString:", v17), v18, (v19 & 1) == 0))
        {
          v29 = *MEMORY[0x1E696A798];
          v30 = CWFErrorDescription(*MEMORY[0x1E696A798], 1uLL);
          v27 = CWFErrorWithDescription(v29, 1, v30);

          goto LABEL_14;
        }

        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v21 = v20;
        v22 = [v14 addedAt];
        [v22 timeIntervalSinceReferenceDate];
        v24 = v21 - v23;

        if (v24 <= 0.0 || v24 > 300.0)
        {
          v25 = *MEMORY[0x1E696A798];
          v26 = CWFErrorDescription(*MEMORY[0x1E696A798], 1uLL);
          v27 = CWFErrorWithDescription(v25, 1, v26);

LABEL_14:
          v28 = 0;
          goto LABEL_15;
        }

LABEL_12:
        v48 = v13;
        v28 = [v11 BSSID:&v48];
        v27 = v48;

LABEL_15:
        v13 = v27;
        goto LABEL_16;
      }

      v43 = *MEMORY[0x1E696A798];
      v44 = CWFErrorDescription(*MEMORY[0x1E696A798], 1uLL);
      v45 = CWFErrorWithDescription(v43, 1, v44);

      v17 = 0;
      v28 = 0;
      v13 = v45;
    }

    else
    {
      v17 = 0;
      v28 = 0;
      v14 = 0;
    }
  }

  else
  {
    v41 = *MEMORY[0x1E696A798];
    v42 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
    v13 = CWFErrorWithDescription(v41, 6, v42);

    v17 = 0;
    v12 = 0;
    v28 = 0;
    v14 = 0;
    v11 = 0;
  }

LABEL_16:
  if (!v13)
  {
    v32 = [MEMORY[0x1E695DF90] dictionary];
    [v32 setObject:v28 forKeyedSubscript:@"Result"];
    v33 = [v6 response];

    if (v33)
    {
      v34 = [v6 response];
      v46 = v11;
      v35 = v9;
      v36 = v17;
      v37 = v6;
      v38 = v12;
      v39 = v14;
      v40 = [v32 copy];
      (v34)[2](v34, 0, v40);

      v14 = v39;
      v12 = v38;
      v6 = v37;
      v17 = v36;
      v9 = v35;
      v11 = v46;
    }

    goto LABEL_21;
  }

  v31 = [v6 response];

  if (v31)
  {
    v32 = [v6 response];
    (v32)[2](v32, v13, 0);
LABEL_21:
  }
}

- (void)__getBSSIDForVendor:(id)a3 XPCConnection:(id)a4
{
  v40 = a3;
  v41 = a4;
  v6 = [v40 requestParameters];
  v7 = [v6 interfaceName];

  if (v7 && ([(CWFXPCRequestProxy *)self apple80211WithInterfaceName:v7], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v8;
    v44 = 0;
    v10 = [v8 SSID:&v44];
    v11 = v44;
    v12 = v11;
    if (v10)
    {
      v43 = v11;
      v13 = [v9 BSSID:&v43];
      v14 = v43;

      if (v13)
      {
        if ([v41 serviceType] != 4)
        {
          v22 = 0;
          v19 = 0;
          goto LABEL_11;
        }

        v15 = [(CWFXPCRequestProxy *)self __currentNetworkProfileWithInterfaceName:v7];
        v16 = [v15 SSID];
        v17 = [v16 isEqualToData:v10];

        if (v17)
        {
          v18 = v10;
          v19 = [v41 bundleID];
          if (v19)
          {
            v20 = [v15 bundleID];
            v21 = [v20 isEqualToString:v19];

            if (v21)
            {
              v10 = v18;
              v22 = v15;
LABEL_11:
              v42 = v14;
              v23 = [(CWFXPCRequestProxy *)self __hashedBSSID:v13 XPCConnection:v41 error:&v42];
              v12 = v42;

              goto LABEL_14;
            }
          }

          v24 = *MEMORY[0x1E696A798];
          v25 = CWFErrorDescription(*MEMORY[0x1E696A798], 1uLL);
          v12 = CWFErrorWithDescription(v24, 1, v25);

          v23 = 0;
          v10 = v18;
        }

        else
        {
          v37 = *MEMORY[0x1E696A798];
          v38 = CWFErrorDescription(*MEMORY[0x1E696A798], 1uLL);
          v12 = CWFErrorWithDescription(v37, 1, v38);

          v19 = 0;
          v23 = 0;
        }

        v22 = v15;
      }

      else
      {
        v22 = 0;
        v19 = 0;
        v23 = 0;
        v12 = v14;
      }
    }

    else
    {
      v22 = 0;
      v19 = 0;
      v13 = 0;
      v23 = 0;
    }
  }

  else
  {
    v35 = *MEMORY[0x1E696A798];
    v36 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
    v12 = CWFErrorWithDescription(v35, 6, v36);

    v22 = 0;
    v19 = 0;
    v10 = 0;
    v13 = 0;
    v23 = 0;
    v9 = 0;
  }

LABEL_14:
  if (!v12)
  {
    v39 = v10;
    v27 = [MEMORY[0x1E695DF90] dictionary];
    [v27 setObject:v23 forKeyedSubscript:@"Result"];
    v28 = [v40 response];

    if (v28)
    {
      v29 = [v40 response];
      v30 = v19;
      v31 = v13;
      v32 = v22;
      v33 = v7;
      v34 = [v27 copy];
      (v29)[2](v29, 0, v34);

      v7 = v33;
      v22 = v32;
      v13 = v31;
      v19 = v30;
    }

    v10 = v39;
    goto LABEL_20;
  }

  v26 = [v40 response];

  if (v26)
  {
    v27 = [v40 response];
    (v27)[2](v27, v12, 0);
LABEL_20:
  }
}

- (void)__getLinkQualityMetric:(id)a3
{
  v15 = a3;
  v4 = [v15 requestParameters];
  v5 = [v4 interfaceName];

  if (v5)
  {
    v6 = [(CWFXPCRequestProxy *)self __linkQualityMetricWithInterfaceName:v5];
LABEL_3:
    v7 = [MEMORY[0x1E695DF90] dictionary];
    [v7 setObject:v6 forKeyedSubscript:@"Result"];
    v8 = [v15 response];

    if (v8)
    {
      v9 = [v15 response];
      v10 = [v7 copy];
      (v9)[2](v9, 0, v10);
    }

    v11 = 0;
    goto LABEL_6;
  }

  v12 = *MEMORY[0x1E696A798];
  v13 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
  v11 = CWFErrorWithDescription(v12, 6, v13);

  if (!v11)
  {
    v6 = 0;
    goto LABEL_3;
  }

  v14 = [v15 response];

  if (v14)
  {
    v6 = [v15 response];
    (v6)[2](v6, v11, 0);
LABEL_6:
  }
}

- (void)__getPlatformCapabilities:(id)a3
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DFA8] set];
  v6 = [(CWFXPCRequestProxy *)self apple80211WithInterfaceName:0];
  v7 = [v6 interfaceNames:0];

  v8 = [(CWFXPCRequestProxy *)self apple80211WithInterfaceName:0];
  v9 = [v8 virtualInterfaceNames:0];

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v45 objects:v51 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v46;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v46 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [(CWFXPCRequestProxy *)self apple80211WithInterfaceName:*(*(&v45 + 1) + 8 * i)];
        v16 = [v15 capabilities:0];

        if (v16)
        {
          [v5 addObjectsFromArray:v16];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v45 objects:v51 count:16];
    }

    while (v12);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v17 = v9;
  v18 = [v17 countByEnumeratingWithState:&v41 objects:v50 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v42;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v42 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [(CWFXPCRequestProxy *)self apple80211WithInterfaceName:*(*(&v41 + 1) + 8 * j), v41];
        v23 = [v22 capabilities:0];

        if (v23)
        {
          [v5 addObjectsFromArray:v23];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v41 objects:v50 count:16];
    }

    while (v19);
  }

  v24 = IOServiceNameMatching("pci14e4,4464");
  if (v24)
  {
    MatchingService = IOServiceGetMatchingService(*MEMORY[0x1E696CD60], v24);
    if (MatchingService)
    {
      v26 = MatchingService;
      v27 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"WiFiCapability", *MEMORY[0x1E695E480], 3u);
      if (v27)
      {
        v28 = v27;
        v29 = [v27 objectForKey:@"awdl"];
        v30 = [v29 BOOLValue];

        if (v30)
        {
          [v5 addObject:&unk_1F5BBCAC0];
        }

        v31 = [v28 objectForKey:{@"ranging", v41}];
        v32 = [v31 BOOLValue];

        if (v32)
        {
          [v5 addObject:&unk_1F5BBCAD8];
        }

        CFRelease(v28);
      }

      IOObjectRelease(v26);
    }
  }

  v33 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"integerValue" ascending:{1, v41}];
  v49 = v33;
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];
  v35 = [v5 sortedArrayUsingDescriptors:v34];

  v36 = [MEMORY[0x1E695DF90] dictionary];
  [v36 setObject:v35 forKeyedSubscript:@"Result"];
  v37 = [v4 response];

  if (v37)
  {
    v38 = [v4 response];
    v39 = [v36 copy];
    (v38)[2](v38, 0, v39);
  }

  v40 = *MEMORY[0x1E69E9840];
}

- (void)__updateCurrentKnownBSSWithIPConfigurationForInterfaceName:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  defaultQueue = self->_defaultQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E0CBC344;
  v7[3] = &unk_1E86E7058;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v8 = v6;
  [(NSOperationQueue *)defaultQueue addOperationSerializedByName:@"updateKnownNetwork" block:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)__getPrivateMACAddress:(id)a3
{
  v17 = a3;
  v4 = [v17 info];
  v5 = [v4 objectForKeyedSubscript:@"NetworkProfile"];

  if (v5)
  {
    v6 = [(CWFXPCRequestProxy *)self privateMACManager];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 privateMACAddressForNetworkProfile:v5];
LABEL_4:
      v9 = [MEMORY[0x1E695DF90] dictionary];
      [v9 setObject:v8 forKeyedSubscript:@"Result"];
      v10 = [v17 response];

      if (v10)
      {
        v11 = [v17 response];
        v12 = [v9 copy];
        (v11)[2](v11, 0, v12);
      }

      v7 = 0;
      goto LABEL_7;
    }

    v13 = 6;
  }

  else
  {
    v13 = 22;
  }

  v14 = *MEMORY[0x1E696A798];
  v15 = CWFErrorDescription(*MEMORY[0x1E696A798], v13);
  v7 = CWFErrorWithDescription(v14, v13, v15);

  if (!v7)
  {
    v8 = 0;
    goto LABEL_4;
  }

  v16 = [v17 response];

  if (v16)
  {
    v8 = [v17 response];
    (v8)[2](v8, v7, 0);
LABEL_7:
  }
}

- (void)__getPrivateMACAddressMode:(id)a3
{
  v17 = a3;
  v4 = [v17 info];
  v5 = [v4 objectForKeyedSubscript:@"NetworkProfile"];

  if (v5)
  {
    v6 = [(CWFXPCRequestProxy *)self privateMACManager];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 privateMACAddressModeForNetworkProfile:v5];

      goto LABEL_4;
    }

    v13 = 6;
  }

  else
  {
    v13 = 22;
  }

  v14 = *MEMORY[0x1E696A798];
  v15 = CWFErrorDescription(*MEMORY[0x1E696A798], v13);
  v8 = CWFErrorWithDescription(v14, v13, v15);

  if (!v8)
  {
LABEL_4:
    v9 = [MEMORY[0x1E695DF90] dictionary];
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:v8];
    [v9 setObject:v10 forKeyedSubscript:@"Result"];

    v8 = [v17 response];

    if (v8)
    {
      v11 = [v17 response];
      v12 = [v9 copy];
      (v11)[2](v11, 0, v12);

      v8 = 0;
    }

    goto LABEL_6;
  }

  v16 = [v17 response];

  if (v16)
  {
    v9 = [v17 response];
    (v9)[2](v9, v8, 0);
LABEL_6:
  }
}

- (void)__getPrivateMACAddressModeSystemSetting:(id)a3
{
  v14 = a3;
  v4 = [(CWFXPCRequestProxy *)self privateMACManager];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 systemSetting];
    goto LABEL_3;
  }

  v11 = *MEMORY[0x1E696A798];
  v12 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
  v6 = CWFErrorWithDescription(v11, 6, v12);

  if (!v6)
  {
LABEL_3:
    v7 = [MEMORY[0x1E695DF90] dictionary];
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:v6];
    [v7 setObject:v8 forKeyedSubscript:@"Result"];

    v6 = [v14 response];

    if (v6)
    {
      v9 = [v14 response];
      v10 = [v7 copy];
      (v9)[2](v9, 0, v10);

      v6 = 0;
    }

    goto LABEL_5;
  }

  v13 = [v14 response];

  if (v13)
  {
    v7 = [v14 response];
    (v7)[2](v7, v6, 0);
LABEL_5:
  }
}

- (void)__setPrivateMACAddressModeSystemSetting:(id)a3
{
  v15 = a3;
  v4 = [v15 info];
  v5 = [v4 objectForKeyedSubscript:@"PrivateMACMode"];

  if (v5)
  {
    v6 = [(CWFXPCRequestProxy *)self privateMACManager];
    if (v6)
    {
      v7 = v6;
      [v6 setSystemSetting:{objc_msgSend(v5, "integerValue")}];
      v8 = 0;
      goto LABEL_4;
    }

    v14 = *MEMORY[0x1E696A798];
    v7 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
    v12 = v14;
    v13 = 6;
  }

  else
  {
    v11 = *MEMORY[0x1E696A798];
    v7 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v12 = v11;
    v13 = 22;
  }

  v8 = CWFErrorWithDescription(v12, v13, v7);
LABEL_4:

  v9 = [v15 response];

  if (v9)
  {
    v10 = [v15 response];
    (v10)[2](v10, v8, 0);
  }
}

- (void)__setPrivateMACAddressUserJoinFailureUIState:(id)a3
{
  v16 = a3;
  v4 = [v16 info];
  v5 = [v4 objectForKeyedSubscript:@"NetworkProfile"];

  if (v5 && ([v16 info], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "objectForKeyedSubscript:", @"State"), v7 = objc_claimAutoreleasedReturnValue(), v6, v7))
  {
    v8 = [(CWFXPCRequestProxy *)self privateMACManager];
    if (v8)
    {
      v9 = v8;
      [v8 setUserJoinFailureUIState:objc_msgSend(v7 networkProfile:{"BOOLValue"), v5}];

      v10 = 0;
      v7 = v9;
    }

    else
    {
      v14 = *MEMORY[0x1E696A798];
      v15 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
      v10 = CWFErrorWithDescription(v14, 6, v15);
    }
  }

  else
  {
    v13 = *MEMORY[0x1E696A798];
    v7 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v10 = CWFErrorWithDescription(v13, 22, v7);
  }

  v11 = [v16 response];

  if (v11)
  {
    v12 = [v16 response];
    (v12)[2](v12, v10, 0);
  }
}

- (void)__setPrivateMACAddressMode:(id)a3
{
  v4 = a3;
  v5 = [v4 requestParameters];
  v6 = [v5 interfaceName];

  if (!v6)
  {
    v7 = 0;
    goto LABEL_13;
  }

  v7 = [(CWFXPCRequestProxy *)self apple80211WithInterfaceName:v6];
  if (!v7)
  {
LABEL_13:
    v9 = 0;
    v11 = 0;
    goto LABEL_14;
  }

  v8 = [v4 info];
  v9 = [v8 objectForKeyedSubscript:@"NetworkProfile"];

  if (!v9)
  {
    v11 = 0;
    goto LABEL_16;
  }

  v10 = [v4 info];
  v11 = [v10 objectForKeyedSubscript:@"PrivateMACMode"];

  if (!v11)
  {
LABEL_16:
    v20 = 22;
LABEL_17:
    v21 = *MEMORY[0x1E696A798];
    v22 = CWFErrorDescription(*MEMORY[0x1E696A798], v20);
    v18 = CWFErrorWithDescription(v21, v20, v22);

    if (v18)
    {
      v13 = [v4 response];

      if (!v13)
      {
        goto LABEL_11;
      }

      v23 = [v4 response];
      (v23)[2](v23, v18, 0);
    }

    v13 = 0;
    goto LABEL_11;
  }

  v12 = [(CWFXPCRequestProxy *)self privateMACManager];
  if (!v12)
  {
LABEL_14:
    v20 = 6;
    goto LABEL_17;
  }

  v13 = v12;
  v14 = [v9 addedAt];

  v15 = [v11 integerValue];
  if (v14)
  {
    [v9 setPrivateMACAddressModeUserSetting:v15];
    v16 = [MEMORY[0x1E695DF00] date];
    [v9 setPrivateMACAddressModeUserSettingUpdatedAt:v16];

    v17 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F5BBCB20, &unk_1F5BBCB38, 0}];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = sub_1E0CBDB14;
    v24[3] = &unk_1E86E84C0;
    v25 = v4;
    [(CWFXPCRequestProxy *)self __updateNetworkProfile:v9 updateProperties:v17 interfaceName:v6 reply:v24];

LABEL_10:
    v18 = 0;
    goto LABEL_11;
  }

  [v13 setTemporaryUserSetting:v15 networkProfile:v9];
  v18 = [v4 response];

  if (v18)
  {
    v19 = [v4 response];
    v19[2](v19, 0, 0);

    goto LABEL_10;
  }

LABEL_11:
}

- (void)__getQuickProbeRequired:(id)a3
{
  v36 = a3;
  if (_os_feature_enabled_impl())
  {
    v4 = [v36 requestParameters];
    v5 = [v4 interfaceName];

    if (v5)
    {
      v6 = [v36 info];
      v7 = [v6 objectForKeyedSubscript:@"NetworkProfile"];

      if (v7)
      {
        v8 = [(CWFXPCRequestProxy *)self __joinStatusWithInterfaceName:v5];
        v9 = [v8 knownNetworkProfile];

        v10 = [v9 identifier];
        v11 = [v7 identifier];
        v12 = v11;
        if (v10 == v11)
        {

          goto LABEL_10;
        }

        v13 = [v9 identifier];
        if (v13)
        {
          v14 = v13;
          v15 = [v7 identifier];
          if (v15)
          {
            v16 = v15;
            [v9 identifier];
            v18 = v17 = v5;
            v19 = [v7 identifier];
            v35 = [v18 isEqual:v19];

            v5 = v17;
            if ((v35 & 1) == 0)
            {
              goto LABEL_18;
            }

LABEL_10:
            v20 = [(CWFXPCRequestProxy *)self __joinStatusWithInterfaceName:v5];
            v21 = [v20 scanResult];

            v22 = [v21 privateMACAddress];
            if (v22 && [v9 privateMACAddressEvaluationState] && objc_msgSend(v9, "isCaptiveStateDetermined") && (objc_msgSend(v9, "isCaptive") & 1) == 0)
            {
              v34 = [v9 captiveWebsheetLoginDate];
              v23 = v34 == 0;
            }

            else
            {
              v23 = 0;
            }

            goto LABEL_23;
          }
        }
      }

      else
      {
        v9 = 0;
      }

LABEL_18:
      v24 = 22;
      goto LABEL_19;
    }

    v9 = 0;
    v7 = 0;
    v24 = 6;
  }

  else
  {
    v9 = 0;
    v7 = 0;
    v5 = 0;
    v24 = 45;
  }

LABEL_19:
  v25 = *MEMORY[0x1E696A798];
  v26 = CWFErrorDescription(*MEMORY[0x1E696A798], v24);
  v27 = CWFErrorWithDescription(v25, v24, v26);

  if (!v27)
  {
    v23 = 0;
LABEL_23:
    v29 = [MEMORY[0x1E695DF90] dictionary];
    v30 = [MEMORY[0x1E696AD98] numberWithBool:v23];
    [v29 setObject:v30 forKeyedSubscript:@"Result"];

    v31 = [v36 response];

    if (v31)
    {
      v32 = [v36 response];
      v33 = [v29 copy];
      (v32)[2](v32, 0, v33);
    }

    v27 = 0;
    goto LABEL_26;
  }

  v28 = [v36 response];

  if (!v28)
  {
    goto LABEL_27;
  }

  v29 = [v36 response];
  (v29)[2](v29, v27, 0);
LABEL_26:

LABEL_27:
}

- (void)__performAutoJoinWithParameters:(id)a3 interfaceName:(id)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(CWFXPCRequestProxy *)self delegate];
  if (v8)
  {
    v9 = objc_alloc_init(CWFXPCRequest);
    [(CWFXPCRequest *)v9 setType:177];
    v14 = @"AutoJoinParams";
    v15[0] = v6;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    [(CWFXPCRequest *)v9 setInfo:v10];

    v11 = objc_alloc_init(CWFRequestParameters);
    [(CWFRequestParameters *)v11 setInterfaceName:v7];
    [(CWFXPCRequest *)v9 setRequestParameters:v11];
    v12 = [MEMORY[0x1E695DF00] date];
    [(CWFXPCRequest *)v9 setReceivedAt:v12];

    [(CWFXPCRequest *)v9 setResponse:&unk_1F5B88F50];
    [v8 XPCRequestProxy:self XPCConnection:self->_internalRequestXPCConnection receivedXPCRequest:v9];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)__disassocWithReason:(int64_t)a3 interfaceName:(id)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(CWFXPCRequestProxy *)self delegate];
  if (v7)
  {
    v8 = objc_alloc_init(CWFXPCRequest);
    [(CWFXPCRequest *)v8 setType:63];
    v14 = @"DisassocReason";
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v15[0] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    [(CWFXPCRequest *)v8 setInfo:v10];

    v11 = objc_alloc_init(CWFRequestParameters);
    [(CWFRequestParameters *)v11 setInterfaceName:v6];
    [(CWFXPCRequest *)v8 setRequestParameters:v11];
    v12 = [MEMORY[0x1E695DF00] date];
    [(CWFXPCRequest *)v8 setReceivedAt:v12];

    [v7 XPCRequestProxy:self XPCConnection:self->_internalRequestXPCConnection receivedXPCRequest:v8];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)__updateNetworkProfile:(id)a3 updateProperties:(id)a4 interfaceName:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(CWFXPCRequestProxy *)self delegate];
  if (v14)
  {
    v15 = [MEMORY[0x1E695DF90] dictionary];
    [v15 setObject:v10 forKeyedSubscript:@"NetworkProfile"];
    [v15 setObject:v11 forKeyedSubscript:@"NetworkProfileProperties"];
    v16 = objc_alloc_init(CWFXPCRequest);
    [(CWFXPCRequest *)v16 setType:61];
    [(CWFXPCRequest *)v16 setInfo:v15];
    v17 = objc_alloc_init(CWFRequestParameters);
    [(CWFRequestParameters *)v17 setInterfaceName:v12];
    [(CWFXPCRequest *)v16 setRequestParameters:v17];
    v18 = [MEMORY[0x1E695DF00] date];
    [(CWFXPCRequest *)v16 setReceivedAt:v18];

    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = sub_1E0CBE444;
    v24 = &unk_1E86E8508;
    v25 = v10;
    v26 = v13;
    [(CWFXPCRequest *)v16 setResponse:&v21];
    [v14 XPCRequestProxy:self XPCConnection:self->_internalRequestXPCConnection receivedXPCRequest:{v16, v21, v22, v23, v24}];

LABEL_5:
    goto LABEL_6;
  }

  if (v13)
  {
    v19 = *MEMORY[0x1E696A798];
    v15 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
    v20 = CWFErrorWithDescription(v19, 6, v15);
    (*(v13 + 2))(v13, v20);

    goto LABEL_5;
  }

LABEL_6:
}

- (void)__updateMultipleKnownNetworks:(id)a3 updateProperties:(id)a4 interfaceName:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(CWFXPCRequestProxy *)self delegate];
  if (v14)
  {
    v15 = [MEMORY[0x1E695DF90] dictionary];
    [v15 setObject:v10 forKeyedSubscript:@"NetworkProfileList"];
    [v15 setObject:v11 forKeyedSubscript:@"NetworkProfileProperties"];
    v16 = objc_alloc_init(CWFXPCRequest);
    [(CWFXPCRequest *)v16 setType:272];
    [(CWFXPCRequest *)v16 setInfo:v15];
    v17 = objc_alloc_init(CWFRequestParameters);
    [(CWFRequestParameters *)v17 setInterfaceName:v12];
    [(CWFXPCRequest *)v16 setRequestParameters:v17];
    v18 = [MEMORY[0x1E695DF00] date];
    [(CWFXPCRequest *)v16 setReceivedAt:v18];

    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = sub_1E0CBE7E4;
    v24 = &unk_1E86E8508;
    v25 = v10;
    v26 = v13;
    [(CWFXPCRequest *)v16 setResponse:&v21];
    [v14 XPCRequestProxy:self XPCConnection:self->_internalRequestXPCConnection receivedXPCRequest:{v16, v21, v22, v23, v24}];

LABEL_5:
    goto LABEL_6;
  }

  if (v13)
  {
    v19 = *MEMORY[0x1E696A798];
    v15 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
    v20 = CWFErrorWithDescription(v19, 6, v15);
    (*(v13 + 2))(v13, v20);

    goto LABEL_5;
  }

LABEL_6:
}

- (void)__removeNetworkProfile:(id)a3 reason:(int64_t)a4 interfaceName:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [(CWFXPCRequestProxy *)self delegate];
  if (v13)
  {
    v14 = [MEMORY[0x1E695DF90] dictionary];
    [v14 setObject:v10 forKeyedSubscript:@"NetworkProfile"];
    v15 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    [v14 setObject:v15 forKeyedSubscript:@"RemoveReason"];

    v16 = objc_alloc_init(CWFXPCRequest);
    [(CWFXPCRequest *)v16 setType:60];
    [(CWFXPCRequest *)v16 setInfo:v14];
    v17 = objc_alloc_init(CWFRequestParameters);
    [(CWFRequestParameters *)v17 setInterfaceName:v11];
    [(CWFXPCRequest *)v16 setRequestParameters:v17];
    v18 = [MEMORY[0x1E695DF00] date];
    [(CWFXPCRequest *)v16 setReceivedAt:v18];

    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = sub_1E0CBEB98;
    v24 = &unk_1E86E8508;
    v25 = v10;
    v26 = v12;
    [(CWFXPCRequest *)v16 setResponse:&v21];
    [v13 XPCRequestProxy:self XPCConnection:self->_internalRequestXPCConnection receivedXPCRequest:{v16, v21, v22, v23, v24}];

LABEL_5:
    goto LABEL_6;
  }

  if (v12)
  {
    v19 = *MEMORY[0x1E696A798];
    v14 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
    v20 = CWFErrorWithDescription(v19, 6, v14);
    (*(v12 + 2))(v12, v20);

    goto LABEL_5;
  }

LABEL_6:
}

- (void)__privateMACEvaluationCompletedWithState:(int64_t)a3 knownNetwork:(id)a4 interfaceName:(id)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  if (_os_feature_enabled_impl() && [v8 privateMACAddressEvaluationState])
  {
    v10 = [v8 privateMACAddressEvaluationState];
    [v8 setPrivateMACAddressEvaluationState:a3];
    v11 = [MEMORY[0x1E695DF00] date];
    [v8 setPrivateMACAddressEvaluatedAt:v11];

    v12 = [MEMORY[0x1E695DFA8] set];
    [v12 addObject:&unk_1F5BBCB50];
    [v12 addObject:&unk_1F5BBCB68];
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
      v16 = sub_1E0BEF284(v10);
      v18 = sub_1E0BEF284(a3);
      _os_log_send_and_compose_impl();
    }

    [(CWFXPCRequestProxy *)self __updateNetworkProfile:v8 updateProperties:v12 interfaceName:v9 reply:0];
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)__reportQuickProbeResult:(id)a3
{
  v43 = a3;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v34 = *MEMORY[0x1E696A798];
    v35 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
    v36 = v34;
    v37 = 45;
LABEL_30:
    v27 = CWFErrorWithDescription(v36, v37, v35);

    v12 = 0;
    v25 = 0;
    v10 = 0;
    v5 = 0;
    goto LABEL_19;
  }

  v4 = [v43 requestParameters];
  v5 = [v4 interfaceName];

  if (!v5)
  {
    v38 = *MEMORY[0x1E696A798];
    v35 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
    v36 = v38;
    v37 = 6;
    goto LABEL_30;
  }

  v6 = [v43 info];
  v7 = [v6 objectForKeyedSubscript:@"Result"];
  v8 = [v7 BOOLValue];

  v9 = [v43 info];
  v10 = [v9 objectForKeyedSubscript:@"NetworkProfile"];

  if (!v10)
  {
    v39 = *MEMORY[0x1E696A798];
    v40 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v27 = CWFErrorWithDescription(v39, 22, v40);

    v12 = 0;
    v25 = 0;
    v10 = 0;
    goto LABEL_19;
  }

  v11 = [(CWFXPCRequestProxy *)self __joinStatusWithInterfaceName:v5];
  v12 = [v11 knownNetworkProfile];

  v13 = [v12 identifier];
  v14 = [v10 identifier];
  v15 = v14;
  if (v13 != v14)
  {
    v16 = [v12 identifier];
    if (v16)
    {
      v17 = v16;
      v18 = [v10 identifier];
      if (v18)
      {
        v19 = v18;
        [v12 identifier];
        v42 = v5;
        v21 = v20 = v8;
        [v10 identifier];
        v23 = v22 = self;
        v41 = [v21 isEqual:v23];

        self = v22;
        v8 = v20;
        v5 = v42;

        if ((v41 & 1) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_10;
      }
    }

LABEL_18:
    v28 = *MEMORY[0x1E696A798];
    v29 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v27 = CWFErrorWithDescription(v28, 22, v29);

    v25 = 0;
    goto LABEL_19;
  }

LABEL_10:
  v24 = [(CWFXPCRequestProxy *)self __joinStatusWithInterfaceName:v5];
  v25 = [v24 scanResult];

  v26 = [v25 privateMACAddress];
  if (v26 && [v12 privateMACAddressEvaluationState] && objc_msgSend(v12, "isCaptiveStateDetermined") && !objc_msgSend(v12, "isCaptive"))
  {
    v32 = [v12 captiveWebsheetLoginDate];

    if (!v32)
    {
      if (v8)
      {
        [(CWFXPCRequestProxy *)self __privateMACEvaluationCompletedWithState:0 knownNetwork:v12 interfaceName:v5];
      }

      else
      {
        [(CWFXPCRequestProxy *)self __privateMACEvaluationCompletedWithState:4 knownNetwork:v12 interfaceName:v5];
        v33 = [(CWFXPCRequestProxy *)self privateMACManager];
        [v33 submitPrivateMACStatsMetricWithEventType:@"InterfaceFailFallback" networkProfile:v12];
      }
    }
  }

  else
  {
  }

  v27 = 0;
LABEL_19:
  v30 = [v43 response];

  if (v30)
  {
    v31 = [v43 response];
    (v31)[2](v31, v27, 0);
  }
}

- (void)__setLQMConfig:(id)a3
{
  v4 = a3;
  v5 = [v4 requestParameters];
  v6 = [v5 interfaceName];

  v7 = [v4 info];
  v8 = [v7 objectForKeyedSubscript:@"LQMConfiguration"];

  if (v8)
  {
    v9 = [(CWFXPCRequestProxy *)self apple80211WithInterfaceName:v6];
    if (v9)
    {
      v10 = v9;
      v19 = 0;
      [v9 setLQMConfig:v8 error:&v19];
      v11 = v19;
      goto LABEL_4;
    }

    v18 = *MEMORY[0x1E696A798];
    v10 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
    v16 = v18;
    v17 = 6;
  }

  else
  {
    v15 = *MEMORY[0x1E696A798];
    v10 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v16 = v15;
    v17 = 22;
  }

  v11 = CWFErrorWithDescription(v16, v17, v10);
LABEL_4:
  v12 = v11;

  v13 = [v4 response];

  if (v13)
  {
    v14 = [v4 response];
    (v14)[2](v14, v12, 0);
  }
}

- (void)__privateMACSettingChangedForNetworkProfile:(id)a3 interfaceName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x1E696AAE0];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1E0CBF5FC;
  v16[3] = &unk_1E86E6060;
  v16[4] = self;
  v17 = v7;
  v18 = v6;
  v9 = v6;
  v10 = v7;
  v11 = [v8 blockOperationWithBlock:v16];
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0CBF834;
  block[3] = &unk_1E86E6420;
  block[4] = self;
  v15 = v11;
  v13 = v11;
  dispatch_async(mutexQueue, block);
}

- (void)privateMACEvaluationCheckConnectivityWithInterfaceName:(id)a3
{
  v4 = a3;
  if (_os_feature_enabled_impl())
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v6 = v5;
    v7 = [(CWFXPCRequestProxy *)self SCNetworkServiceWithInterfaceName:v4];
    v8 = [v7 IPv4Addresses];
    v9 = [v7 IPv4Router];
    v10 = [v7 IPv6Addresses];
    v11 = [v7 IPv6Router];
    mutexQueue = self->_mutexQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0CBFA10;
    block[3] = &unk_1E86E8530;
    block[4] = self;
    v18 = v4;
    v19 = v8;
    v20 = v10;
    v21 = v9;
    v22 = v11;
    v23 = v6;
    v13 = v11;
    v14 = v9;
    v15 = v10;
    v16 = v8;
    dispatch_async(mutexQueue, block);
  }
}

- (void)__startNetworkRelayBridgeWithHostAPConfiguration:(id)a3 interfaceName:(id)a4 reply:(id)a5
{
  v76 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (self->_netRBClient)
  {
    v26 = CWFGetOSLog();
    if (v26)
    {
      v27 = CWFGetOSLog();
    }

    else
    {
      v27 = MEMORY[0x1E69E9C10];
      v41 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *location = 0;
      _os_log_send_and_compose_impl();
    }

    v42 = *MEMORY[0x1E696A798];
    v43 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x25uLL);
    v24 = CWFErrorWithDescription(v42, 37, v43);

    goto LABEL_70;
  }

  if (!v8)
  {
    v28 = CWFGetOSLog();
    if (v28)
    {
      v29 = CWFGetOSLog();
    }

    else
    {
      v29 = MEMORY[0x1E69E9C10];
      v44 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *location = 136446722;
      *&location[4] = "[CWFXPCRequestProxy __startNetworkRelayBridgeWithHostAPConfiguration:interfaceName:reply:]";
      v66 = 2082;
      v67 = "CWFXPCRequestProxy.m";
      v68 = 1024;
      v69 = 8544;
      _os_log_send_and_compose_impl();
    }

    goto LABEL_38;
  }

  if (!v9)
  {
    v30 = CWFGetOSLog();
    if (v30)
    {
      v29 = CWFGetOSLog();
    }

    else
    {
      v29 = MEMORY[0x1E69E9C10];
      v47 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *location = 136446722;
      *&location[4] = "[CWFXPCRequestProxy __startNetworkRelayBridgeWithHostAPConfiguration:interfaceName:reply:]";
      v66 = 2082;
      v67 = "CWFXPCRequestProxy.m";
      v68 = 1024;
      v69 = 8549;
      _os_log_send_and_compose_impl();
    }

LABEL_38:

    v45 = *MEMORY[0x1E696A798];
    v46 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v24 = CWFErrorWithDescription(v45, 22, v46);

LABEL_70:
    v18 = 0;
    goto LABEL_71;
  }

  v12 = [v10 copy];
  netRBStartServiceReply = self->_netRBStartServiceReply;
  self->_netRBStartServiceReply = v12;

  objc_initWeak(location, self);
  v64 = 0;
  mutexQueue = self->_mutexQueue;
  objc_copyWeak(&v63, location);
  Internal = _NETRBClientCreateInternal();
  self->_netRBClient = Internal;
  if (!Internal)
  {
    v31 = CWFGetOSLog();
    if (v31)
    {
      v32 = CWFGetOSLog();
    }

    else
    {
      v32 = MEMORY[0x1E69E9C10];
      v48 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v74 = 67109120;
      v75 = v64;
      _os_log_send_and_compose_impl();
    }

    objc_destroyWeak(&v63);
    objc_destroyWeak(location);
    goto LABEL_51;
  }

  objc_destroyWeak(&v63);
  objc_destroyWeak(location);
  if ([v8 bridgeMode] == 201)
  {
    v74 = 0;
    v64 = 1020;
    netRBClient = self->_netRBClient;
    if ((_NETRBClientGetGlobalServiceState() & 1) == 0)
    {
      v37 = CWFGetOSLog();
      if (v37)
      {
        v38 = CWFGetOSLog();
      }

      else
      {
        v38 = MEMORY[0x1E69E9C10];
        v54 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        *location = 136446722;
        *&location[4] = "[CWFXPCRequestProxy __startNetworkRelayBridgeWithHostAPConfiguration:interfaceName:reply:]";
        v66 = 2082;
        v67 = "CWFXPCRequestProxy.m";
        v68 = 1024;
        v69 = 8625;
        _os_log_send_and_compose_impl();
      }

      v55 = 6;
      goto LABEL_69;
    }

    if (v64 == 1023)
    {
      v17 = self->_netRBClient;
      if (_NETRBClientIsAllowedMoreHost())
      {
        goto LABEL_9;
      }

      v40 = CWFGetOSLog();
      if (v40)
      {
        v38 = CWFGetOSLog();
      }

      else
      {
        v38 = MEMORY[0x1E69E9C10];
        v57 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        *location = 136446722;
        *&location[4] = "[CWFXPCRequestProxy __startNetworkRelayBridgeWithHostAPConfiguration:interfaceName:reply:]";
        v66 = 2082;
        v67 = "CWFXPCRequestProxy.m";
        v68 = 1024;
        v69 = 8634;
        goto LABEL_67;
      }
    }

    else
    {
      v39 = CWFGetOSLog();
      if (v39)
      {
        v38 = CWFGetOSLog();
      }

      else
      {
        v38 = MEMORY[0x1E69E9C10];
        v56 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        *location = 136447234;
        *&location[4] = "[CWFXPCRequestProxy __startNetworkRelayBridgeWithHostAPConfiguration:interfaceName:reply:]";
        v66 = 2082;
        v67 = "CWFXPCRequestProxy.m";
        v68 = 1024;
        v69 = 8629;
        v70 = 1024;
        v71 = v64;
        v72 = 1024;
        v73 = v74;
LABEL_67:
        v55 = 1;
        _os_log_send_and_compose_impl();
LABEL_69:

        v58 = *MEMORY[0x1E696A798];
        v59 = CWFErrorDescription(*MEMORY[0x1E696A798], v55);
        v24 = CWFErrorWithDescription(v58, v55, v59);

        goto LABEL_70;
      }
    }

    v55 = 1;
    goto LABEL_69;
  }

LABEL_9:
  v18 = xpc_dictionary_create(0, 0, 0);
  if (!v18)
  {
    v33 = CWFGetOSLog();
    if (v33)
    {
      v34 = CWFGetOSLog();
    }

    else
    {
      v34 = MEMORY[0x1E69E9C10];
      v49 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *location = 136446722;
      *&location[4] = "[CWFXPCRequestProxy __startNetworkRelayBridgeWithHostAPConfiguration:interfaceName:reply:]";
      v66 = 2082;
      v67 = "CWFXPCRequestProxy.m";
      v68 = 1024;
      v69 = 8641;
      _os_log_send_and_compose_impl();
    }

LABEL_51:
    v24 = 0;
    v18 = 0;
    goto LABEL_12;
  }

  v19 = *MEMORY[0x1E69B37A0];
  v20 = v9;
  xpc_dictionary_set_string(v18, v19, [v9 UTF8String]);
  xpc_dictionary_set_uint64(v18, *MEMORY[0x1E69B3798], 3uLL);
  v21 = self->_netRBClient;
  v22 = [v8 bridgeInterfaceName];
  v23 = v22;
  [v22 UTF8String];
  [v8 bridgeMode];
  [v8 bridgeType];
  LOBYTE(v21) = _NETRBClientStartService();

  if (v21)
  {
    v24 = 0;
    goto LABEL_12;
  }

  v35 = CWFGetOSLog();
  if (v35)
  {
    v36 = CWFGetOSLog();
  }

  else
  {
    v36 = MEMORY[0x1E69E9C10];
    v50 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    *location = 136446722;
    *&location[4] = "[CWFXPCRequestProxy __startNetworkRelayBridgeWithHostAPConfiguration:interfaceName:reply:]";
    v66 = 2082;
    v67 = "CWFXPCRequestProxy.m";
    v68 = 1024;
    v69 = 8648;
    _os_log_send_and_compose_impl();
  }

  v51 = *MEMORY[0x1E696A798];
  v52 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
  v24 = CWFErrorWithDescription(v51, 6, v52);

  v53 = self->_netRBClient;
  if ((_NETRBClientDestroy() & 1) == 0)
  {
    v60 = CWFGetOSLog();
    if (v60)
    {
      v61 = CWFGetOSLog();
    }

    else
    {
      v61 = MEMORY[0x1E69E9C10];
      v62 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      *location = 136446722;
      *&location[4] = "[CWFXPCRequestProxy __startNetworkRelayBridgeWithHostAPConfiguration:interfaceName:reply:]";
      v66 = 2082;
      v67 = "CWFXPCRequestProxy.m";
      v68 = 1024;
      v69 = 8650;
      _os_log_send_and_compose_impl();
    }
  }

  self->_netRBClient = 0;
LABEL_71:
  if (v11 && v24)
  {
    (v11)[2](v11, v24);
  }

LABEL_12:

  v25 = *MEMORY[0x1E69E9840];
}

- (void)__stopNetworkRelayBridgeForInterfaceName:(id)a3 reply:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!self->_netRBClient)
  {
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

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      _os_log_send_and_compose_impl();
    }

    v24 = *MEMORY[0x1E696A798];
    v25 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
    v26 = v24;
    v27 = 6;
    goto LABEL_27;
  }

  if (!v6)
  {
    v19 = CWFGetOSLog();
    if (v19)
    {
      v20 = CWFGetOSLog();
    }

    else
    {
      v20 = MEMORY[0x1E69E9C10];
      v28 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      _os_log_send_and_compose_impl();
    }

    v29 = *MEMORY[0x1E696A798];
    v25 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v26 = v29;
    v27 = 22;
LABEL_27:
    v15 = CWFErrorWithDescription(v26, v27, v25);

    goto LABEL_34;
  }

  v9 = [v7 copy];
  netRBStopServiceReply = self->_netRBStopServiceReply;
  self->_netRBStopServiceReply = v9;

  if (IOPMAssertionRelease(self->_netRBAssertionID))
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

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      _os_log_send_and_compose_impl();
    }
  }

  netRBClient = self->_netRBClient;
  if (_NETRBClientStopService())
  {
    v15 = 0;
    goto LABEL_12;
  }

  v21 = CWFGetOSLog();
  if (v21)
  {
    v22 = CWFGetOSLog();
  }

  else
  {
    v22 = MEMORY[0x1E69E9C10];
    v30 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    _os_log_send_and_compose_impl();
  }

  v31 = *MEMORY[0x1E696A798];
  v32 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
  v15 = CWFErrorWithDescription(v31, 6, v32);

  v33 = self->_netRBClient;
  if ((_NETRBClientSetHostCount() & 1) == 0)
  {
    v35 = CWFGetOSLog();
    if (v35)
    {
      v36 = CWFGetOSLog();
    }

    else
    {
      v36 = MEMORY[0x1E69E9C10];
      v39 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      _os_log_send_and_compose_impl();
    }
  }

  v34 = self->_netRBClient;
  if ((_NETRBClientDestroy() & 1) == 0)
  {
    v37 = CWFGetOSLog();
    if (v37)
    {
      v38 = CWFGetOSLog();
    }

    else
    {
      v38 = MEMORY[0x1E69E9C10];
      v40 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      _os_log_send_and_compose_impl();
    }
  }

  self->_netRBClient = 0;
LABEL_34:
  if (v8 && v15)
  {
    (v8)[2](v8, v15);
  }

LABEL_12:

  v16 = *MEMORY[0x1E69E9840];
}

- (void)__startHostAPMode:(id)a3 XPCConnection:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 info];
  v9 = [v8 objectForKeyedSubscript:@"HostAPConfiguration"];

  v10 = [(CWFXPCRequestProxy *)self delegate];
  if (v10)
  {
    v11 = objc_alloc_init(CWFXPCRequest);
    [(CWFXPCRequest *)v11 setType:220];
    v12 = [v6 requestParameters];
    [(CWFXPCRequest *)v11 setRequestParameters:v12];

    v13 = [v6 info];
    [(CWFXPCRequest *)v11 setInfo:v13];

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = sub_1E0CC1880;
    v24[3] = &unk_1E86E85D0;
    v25 = v9;
    v26 = self;
    v27 = v6;
    v14 = v10;
    v28 = v14;
    v15 = v7;
    v29 = v15;
    [(CWFXPCRequest *)v11 setResponse:v24];
    [v14 XPCRequestProxy:self XPCConnection:v15 receivedXPCRequest:v11];

    v16 = v25;
LABEL_10:

    goto LABEL_11;
  }

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

  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    sub_1E0BC2FCC([v6 type]);
    v31 = v30 = 138543362;
    _os_log_send_and_compose_impl();
  }

  v20 = [v6 response];

  if (v20)
  {
    v11 = [v6 response];
    v21 = *MEMORY[0x1E696A798];
    v16 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
    v22 = CWFErrorWithDescription(v21, 45, v16);
    (v11->super.super.super._iop.__nextOp)(v11, v22, 0);

    goto LABEL_10;
  }

LABEL_11:

  v23 = *MEMORY[0x1E69E9840];
}

- (void)__stopHostAPMode:(id)a3 XPCConnection:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(CWFXPCRequestProxy *)self delegate];
  if (v8)
  {
    v9 = objc_alloc_init(CWFXPCRequest);
    [(CWFXPCRequest *)v9 setType:221];
    v10 = [v6 requestParameters];
    [(CWFXPCRequest *)v9 setRequestParameters:v10];

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1E0CC2238;
    v19[3] = &unk_1E86E6988;
    v19[4] = self;
    v20 = v6;
    [(CWFXPCRequest *)v9 setResponse:v19];
    [v8 XPCRequestProxy:self XPCConnection:v7 receivedXPCRequest:v9];

LABEL_10:
    goto LABEL_11;
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

  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_1E0BC2FCC([v6 type]);
    v22 = v21 = 138543362;
    _os_log_send_and_compose_impl();
  }

  v14 = [v6 response];

  if (v14)
  {
    v9 = [v6 response];
    v15 = *MEMORY[0x1E696A798];
    v16 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
    v17 = CWFErrorWithDescription(v15, 45, v16);
    (v9->super.super.super._iop.__nextOp)(v9, v17, 0);

    goto LABEL_10;
  }

LABEL_11:

  v18 = *MEMORY[0x1E69E9840];
}

- (void)__logLqmSummary:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [(CWFXPCRequestProxy *)self __apple80211WithInterfaceName:a3];
  v4 = v3;
  if (v3 && ![v3 virtualInterfaceRole])
  {
    v21 = [v4 LQMSummary:0];
    if (v21)
    {
      v20 = [v21 bytes];
      v5 = (v20 + 160);
      v6 = 16;
      v7 = MEMORY[0x1E69E9C10];
      v8 = v20 + 160;
      do
      {
        if (*v5)
        {
          v9 = CWFGetOSLog();
          if (v9)
          {
            v10 = CWFGetOSLog();
          }

          else
          {
            v11 = v7;
            v10 = v7;
          }

          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            _os_log_send_and_compose_impl();
          }
        }

        v8 += 256;
        v5 += 256;
        --v6;
      }

      while (v6);
      v12 = (v20 + 4256);
      v13 = 5;
      v14 = MEMORY[0x1E69E9C10];
      v15 = v20 + 4256;
      do
      {
        if (*v12)
        {
          v16 = CWFGetOSLog();
          if (v16)
          {
            v17 = CWFGetOSLog();
          }

          else
          {
            v18 = v14;
            v17 = v14;
          }

          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            _os_log_send_and_compose_impl();
          }
        }

        v15 += 256;
        v12 += 256;
        --v13;
      }

      while (v13);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)__getCurrentScanResult:(id)a3 XPCConnection:(id)a4 reply:(id)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CWFXPCRequestProxy *)self delegate];
  if (v11)
  {
    v12 = objc_alloc_init(CWFXPCRequest);
    [(CWFXPCRequest *)v12 setType:57];
    v13 = [v8 requestParameters];
    [(CWFXPCRequest *)v12 setRequestParameters:v13];

    v14 = [v8 info];
    [(CWFXPCRequest *)v12 setInfo:v14];

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = sub_1E0CC2A70;
    v21[3] = &unk_1E86E6A50;
    v22 = v10;
    [(CWFXPCRequest *)v12 setResponse:v21];
    [v11 XPCRequestProxy:self XPCConnection:v9 receivedXPCRequest:v12];
    v15 = v22;
LABEL_10:

    goto LABEL_11;
  }

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

  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    sub_1E0BC2FCC([v8 type]);
    v24 = v23 = 138543362;
    _os_log_send_and_compose_impl();
  }

  if (v10)
  {
    v19 = *MEMORY[0x1E696A798];
    v12 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
    v15 = CWFErrorWithDescription(v19, 45, v12);
    (*(v10 + 2))(v10, v15, 0);
    goto LABEL_10;
  }

LABEL_11:

  v20 = *MEMORY[0x1E69E9840];
}

- (void)__getCurrentScanResult:(id)a3 XPCConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_1E0BC2D80;
  v27 = sub_1E0BC61FC;
  v28 = 0;
  v8 = [v6 requestParameters];
  v9 = [v8 interfaceName];

  if (v9 && ([(CWFXPCRequestProxy *)self apple80211WithInterfaceName:v9], v10 = objc_claimAutoreleasedReturnValue(), (v11 = v10) != 0))
  {
    v22 = 0;
    v12 = [v10 currentNetwork:&v22];
    v13 = v22;
    v14 = v24[5];
    v24[5] = v12;

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1E0CC2D84;
    v19[3] = &unk_1E86E85F8;
    v21 = &v23;
    v20 = v6;
    [(CWFXPCRequestProxy *)self __getCurrentScanResult:v20 XPCConnection:v7 reply:v19];
    v15 = v20;
  }

  else
  {
    v16 = *MEMORY[0x1E696A798];
    v17 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
    v13 = CWFErrorWithDescription(v16, 6, v17);

    v18 = [v6 response];

    if (!v18)
    {
      v11 = 0;
      goto LABEL_5;
    }

    v15 = [v6 response];
    (v15)[2](v15, v13, 0);
    v11 = 0;
  }

LABEL_5:
  _Block_object_dispose(&v23, 8);
}

- (void)__getNetworkWarningFlags:(id)a3 XPCConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_1E0BC2D80;
  v29 = sub_1E0BC61FC;
  v30 = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v24[3] = 0;
  v8 = [v6 requestParameters];
  v9 = [v8 interfaceName];

  if (v9 && ([(CWFXPCRequestProxy *)self apple80211WithInterfaceName:v9], v10 = objc_claimAutoreleasedReturnValue(), (v11 = v10) != 0))
  {
    v23 = 0;
    v12 = [v10 currentNetwork:&v23];
    v13 = v23;
    v14 = v26[5];
    v26[5] = v12;

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1E0CC3304;
    v19[3] = &unk_1E86E8648;
    v21 = &v25;
    v19[4] = self;
    v22 = v24;
    v20 = v6;
    [(CWFXPCRequestProxy *)self __getCurrentScanResult:v20 XPCConnection:v7 reply:v19];
  }

  else
  {
    v15 = *MEMORY[0x1E696A798];
    v16 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
    v13 = CWFErrorWithDescription(v15, 6, v16);

    v17 = [v6 response];

    if (v17)
    {
      v18 = [v6 response];
      (v18)[2](v18, v13, 0);
    }

    v11 = 0;
  }

  _Block_object_dispose(v24, 8);
  _Block_object_dispose(&v25, 8);
}

- (unint64_t)_updateCellularRankingState
{
  v3 = [(CWFXPCRequestProxy *)self cellularOutrankWiFiSymtpomsState];
  if (notify_get_state([(CWFXPCRequestProxy *)self cellularOutrankWiFiNotificationToken], &self->_cellularOutrankWiFiSymtpomsState))
  {
    return 0;
  }

  cellularOutrankWiFiSymtpomsState = self->_cellularOutrankWiFiSymtpomsState;
  if (v3 == cellularOutrankWiFiSymtpomsState || (self->_cellularOutrankWiFiSymtpomsState & 1) == 0)
  {
    return 0;
  }

  v7 = 0x20000;
  if ((cellularOutrankWiFiSymtpomsState & 0x800) == 0)
  {
    v7 = 0x10000;
  }

  if ((cellularOutrankWiFiSymtpomsState & 0x40000000) != 0)
  {
    return 0x40000;
  }

  else
  {
    return v7;
  }
}

- (void)__getKnownNetworkInfoForLocalNetworkPrompt:(id)a3 XPCConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 info];
  v9 = [v8 objectForKeyedSubscript:@"KnownNetworkInfoOptions"];

  v10 = [v9 objectForKeyedSubscript:@"DeviceDiscovery"];

  if (v10)
  {
    v11 = [v9 objectForKeyedSubscript:@"DeviceDiscovery"];
    v12 = [v11 BOOLValue];

    if (v12)
    {
      v13 = objc_alloc_init(CWFLocalDeviceDiscovery);
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = sub_1E0CC3BB8;
      v28[3] = &unk_1E86E8670;
      v29 = v6;
      [(CWFLocalDeviceDiscovery *)v13 setHandler:v28];
      [(CWFLocalDeviceDiscovery *)v13 activate];

      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
LABEL_12:

      goto LABEL_13;
    }
  }

  v18 = [CWFKnownNetworkPreparer alloc];
  v19 = [(CWFXPCRequestProxy *)self __knownNetworkProfiles];
  v16 = [(CWFKnownNetworkPreparer *)v18 initWithNetworkProfiles:v19];

  if (v16)
  {
    v15 = [(CWFKnownNetworkPreparer *)v16 localNetworkPromptProfiles];
    v20 = [(CWFKnownNetworkPreparer *)v16 prepareLocalNetworkProfilesForPresentation:v15];
    if (v20)
    {
      v17 = v20;
      goto LABEL_7;
    }

    v24 = 2;
  }

  else
  {
    v15 = 0;
    v24 = 6;
  }

  v25 = *MEMORY[0x1E696A798];
  v26 = CWFErrorDescription(*MEMORY[0x1E696A798], v24);
  v14 = CWFErrorWithDescription(v25, v24, v26);

  if (!v14)
  {
    v17 = 0;
LABEL_7:
    v21 = [MEMORY[0x1E695DF90] dictionary];
    [v21 setObject:v17 forKeyedSubscript:@"Result"];
    v14 = [v6 response];

    if (v14)
    {
      v22 = [v6 response];
      v23 = [v21 copy];
      (v22)[2](v22, 0, v23);

      v14 = 0;
    }

    goto LABEL_9;
  }

  v17 = [v6 response];

  if (v17)
  {
    v21 = [v6 response];
    (v21)[2](v21, v14, 0);
    v17 = 0;
LABEL_9:
  }

  if (objc_opt_class())
  {
    v27 = v7;
    v15 = v15;
    v17 = v17;
    v16 = v16;
    AnalyticsSendEventLazy();

    v13 = v27;
    goto LABEL_12;
  }

LABEL_13:
}

- (void)__getAutoJoinMetric:(id)a3
{
  v15 = a3;
  v4 = [(CWFXPCRequestProxy *)self autoJoinManager];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 metric];
LABEL_3:
    v7 = [MEMORY[0x1E695DF90] dictionary];
    [v7 setObject:v6 forKeyedSubscript:@"Result"];
    v8 = [v15 response];

    if (v8)
    {
      v9 = [v15 response];
      v10 = [v7 copy];
      (v9)[2](v9, 0, v10);
    }

    v11 = 0;
    goto LABEL_6;
  }

  v12 = *MEMORY[0x1E696A798];
  v13 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
  v11 = CWFErrorWithDescription(v12, 6, v13);

  if (!v11)
  {
    v6 = 0;
    goto LABEL_3;
  }

  v14 = [v15 response];

  if (v14)
  {
    v6 = [v15 response];
    (v6)[2](v6, v11, 0);
LABEL_6:
  }
}

- (void)__getAutoJoinStatistics:(id)a3
{
  v15 = a3;
  v4 = [(CWFXPCRequestProxy *)self autoJoinManager];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 statistics];
LABEL_3:
    v7 = [MEMORY[0x1E695DF90] dictionary];
    [v7 setObject:v6 forKeyedSubscript:@"Result"];
    v8 = [v15 response];

    if (v8)
    {
      v9 = [v15 response];
      v10 = [v7 copy];
      (v9)[2](v9, 0, v10);
    }

    v11 = 0;
    goto LABEL_6;
  }

  v12 = *MEMORY[0x1E696A798];
  v13 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
  v11 = CWFErrorWithDescription(v12, 6, v13);

  if (!v11)
  {
    v6 = 0;
    goto LABEL_3;
  }

  v14 = [v15 response];

  if (v14)
  {
    v6 = [v15 response];
    (v6)[2](v6, v11, 0);
LABEL_6:
  }
}

- (id)__hotspotClientManager
{
  hotspotClientManager = self->_hotspotClientManager;
  if (!hotspotClientManager)
  {
    v4 = +[CWFHotspotClientManager sharedInstance];
    v5 = self->_hotspotClientManager;
    self->_hotspotClientManager = v4;

    hotspotClientManager = self->_hotspotClientManager;
  }

  return hotspotClientManager;
}

- (void)__resetAutoJoinStatistics:(id)a3
{
  v11 = a3;
  v4 = [(CWFXPCRequestProxy *)self autoJoinManager];
  v5 = v4;
  if (v4)
  {
    [v4 resetStatistics];
    v6 = 0;
  }

  else
  {
    v9 = *MEMORY[0x1E696A798];
    v10 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
    v6 = CWFErrorWithDescription(v9, 6, v10);
  }

  v7 = [v11 response];

  if (v7)
  {
    v8 = [v11 response];
    (v8)[2](v8, v6, 0);
  }
}

- (void)__sendXPCEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 info];
  v6 = [v5 objectForKeyedSubscript:@"XPCEvent"];

  if (v6)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E0CC4824;
    v12[3] = &unk_1E86E84C0;
    v13 = v4;
    [(CWFXPCRequestProxy *)self __forwardXPCEvent:v6 reply:v12];

    v7 = 0;
  }

  else
  {
    v8 = *MEMORY[0x1E696A798];
    v9 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v7 = CWFErrorWithDescription(v8, 22, v9);

    if (v7)
    {
      v10 = [v4 response];

      if (v10)
      {
        v11 = [v4 response];
        (v11)[2](v11, v7, 0);
      }
    }
  }
}

- (void)__checkin:(id)a3 XPCConnection:(id)a4
{
  v20 = a3;
  v6 = a4;
  if ([v6 serviceType] == 9 || objc_msgSend(v6, "serviceType") == 10)
  {
    if (_os_feature_enabled_impl())
    {
      v7 = [v20 info];
      v8 = [v7 objectForKeyedSubscript:@"WiFiNetworkSharingClientID"];

      if (v8)
      {
        v9 = [(CWFXPCRequestProxy *)self wifiNetworkSharingManager];
        v10 = [v9 isClientIDAuthorizedForDeviceAccess:v8];

        if (v10)
        {
          v11 = [(CWFXPCRequestProxy *)self wifiNetworkSharingManager];
          v12 = [v11 isClientIDUsingSecureTransportForDeviceAccess:v8];

          if (v12)
          {
            v13 = 0;
LABEL_8:

            goto LABEL_10;
          }

          v16 = CWFWiFiNetworkSharingErrorDomain;
          v17 = 6;
        }

        else
        {
          v16 = CWFWiFiNetworkSharingErrorDomain;
          v17 = 8;
        }
      }

      else
      {
        v16 = MEMORY[0x1E696A798];
        v17 = 22;
      }

      v18 = *v16;
      v19 = CWFErrorDescription(*v16, v17);
      v13 = CWFErrorWithDescription(v18, v17, v19);

      goto LABEL_8;
    }

    v8 = CWFErrorDescription(@"WiFiNetworkSharingError", 3uLL);
    v13 = CWFErrorWithDescription(@"WiFiNetworkSharingError", 3, v8);
    goto LABEL_8;
  }

  v13 = 0;
LABEL_10:
  v14 = [v20 response];

  if (v14)
  {
    v15 = [v20 response];
    (v15)[2](v15, v13, 0);
  }
}

- (void)__getNetworkManagedByMDM:(id)a3
{
  v4 = a3;
  v16 = v4;
  if (self->_configProfileManager)
  {
    v5 = [v4 info];
    v6 = [v5 objectForKeyedSubscript:@"NetworkProfile"];

    if (v6)
    {
      v7 = [(CWFConfigurationProfileManager *)self->_configProfileManager isNetworkManagedByMDM:v6];

      goto LABEL_4;
    }

    v12 = 22;
  }

  else
  {
    v12 = 6;
  }

  v13 = *MEMORY[0x1E696A798];
  v14 = CWFErrorDescription(*MEMORY[0x1E696A798], v12);
  v7 = CWFErrorWithDescription(v13, v12, v14);

  if (!v7)
  {
LABEL_4:
    v8 = [MEMORY[0x1E695DF90] dictionary];
    v9 = [MEMORY[0x1E696AD98] numberWithBool:v7];
    [v8 setObject:v9 forKeyedSubscript:@"Result"];

    v7 = [v16 response];

    if (v7)
    {
      v10 = [v16 response];
      v11 = [v8 copy];
      (v10)[2](v10, 0, v11);

      v7 = 0;
    }

    goto LABEL_6;
  }

  v15 = [v16 response];

  if (v15)
  {
    v8 = [v16 response];
    v8[2](v8, v7, 0);
LABEL_6:
  }
}

- (void)__getDeviceSupervised:(id)a3
{
  v13 = a3;
  configProfileManager = self->_configProfileManager;
  if (configProfileManager)
  {
    v5 = [(CWFConfigurationProfileManager *)configProfileManager isDeviceSupervised];
    goto LABEL_3;
  }

  v10 = *MEMORY[0x1E696A798];
  v11 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
  v5 = CWFErrorWithDescription(v10, 6, v11);

  if (!v5)
  {
LABEL_3:
    v6 = [MEMORY[0x1E695DF90] dictionary];
    v7 = [MEMORY[0x1E696AD98] numberWithBool:v5];
    [v6 setObject:v7 forKeyedSubscript:@"Result"];

    v5 = [v13 response];

    if (v5)
    {
      v8 = [v13 response];
      v9 = [v6 copy];
      (v8)[2](v8, 0, v9);

      v5 = 0;
    }

    goto LABEL_5;
  }

  v12 = [v13 response];

  if (v12)
  {
    v6 = [v13 response];
    v6[2](v6, v5, 0);
LABEL_5:
  }
}

- (void)__getNearbyRecommendedNetworks:(id)a3
{
  v4 = a3;
  v5 = [(CWFXPCRequestProxy *)self wifiUserAgentConnection];

  if (v5)
  {
    v6 = [(CWFXPCRequestProxy *)self wifiUserAgentConnection];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CC4EC8;
    v7[3] = &unk_1E86E8448;
    v8 = v4;
    (v6)[2](v6, v7);
  }
}

- (void)__getRecommendedKnownNetworks:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_1E0BC2D80;
  v15 = sub_1E0BC61FC;
  v16 = 0;
  mutexQueue = self->_mutexQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1E0CC5290;
  v10[3] = &unk_1E86E6A28;
  v10[4] = self;
  v10[5] = &v11;
  dispatch_sync(mutexQueue, v10);
  v6 = [MEMORY[0x1E695DF90] dictionary];
  [v6 setObject:v12[5] forKeyedSubscript:@"Result"];
  v7 = [v4 response];

  if (v7)
  {
    v8 = [v4 response];
    v9 = [v6 copy];
    (v8)[2](v8, 0, v9);
  }

  _Block_object_dispose(&v11, 8);
}

- (void)__dumpLogs:(id)a3
{
  v4 = a3;
  v5 = [v4 info];
  v6 = [v5 objectForKeyedSubscript:@"DumpLogsURL"];

  if (v6)
  {
    v7 = [(CWFXPCRequestProxy *)self wifiUserAgentConnection];

    if (v7)
    {
      v8 = [(CWFXPCRequestProxy *)self wifiUserAgentConnection];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = sub_1E0CC5594;
      v14[3] = &unk_1E86E86E8;
      v15 = v6;
      v16 = v4;
      (v8)[2](v8, v14);
    }

    v9 = 0;
  }

  else
  {
    v10 = *MEMORY[0x1E696A798];
    v11 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v9 = CWFErrorWithDescription(v10, 22, v11);

    if (v9)
    {
      v12 = [v4 response];

      if (v12)
      {
        v13 = [v4 response];
        (v13)[2](v13, v9, 0);
      }
    }
  }
}

- (void)__getCloudNetworks:(id)a3
{
  v4 = a3;
  v5 = [(CWFXPCRequestProxy *)self wifiUserAgentConnection];

  if (v5)
  {
    v6 = [(CWFXPCRequestProxy *)self wifiUserAgentConnection];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CC5830;
    v7[3] = &unk_1E86E8448;
    v8 = v4;
    (v6)[2](v6, v7);
  }
}

- (void)__getCaptivePortalCredentials:(id)a3
{
  v4 = a3;
  v5 = [v4 info];
  v6 = [v5 objectForKeyedSubscript:@"NetworkProfile"];

  if (v6)
  {
    v7 = [(CWFXPCRequestProxy *)self wifiUserAgentConnection];

    if (v7)
    {
      v8 = [(CWFXPCRequestProxy *)self wifiUserAgentConnection];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = sub_1E0CC5C18;
      v14[3] = &unk_1E86E86E8;
      v15 = v6;
      v16 = v4;
      (v8)[2](v8, v14);
    }

    v9 = 0;
  }

  else
  {
    v10 = *MEMORY[0x1E696A798];
    v11 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v9 = CWFErrorWithDescription(v10, 22, v11);

    if (v9)
    {
      v12 = [v4 response];

      if (v12)
      {
        v13 = [v4 response];
        (v13)[2](v13, v9, 0);
      }
    }
  }
}

- (void)__setCaptivePortalCredentials:(id)a3
{
  v4 = a3;
  v5 = [v4 info];
  v6 = [v5 objectForKeyedSubscript:@"CaptivePortalCredentials"];

  v7 = [v4 info];
  v8 = [v7 objectForKeyedSubscript:@"NetworkProfile"];

  if (v8)
  {
    v9 = [(CWFXPCRequestProxy *)self wifiUserAgentConnection];

    if (v9)
    {
      v10 = [(CWFXPCRequestProxy *)self wifiUserAgentConnection];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = sub_1E0CC6058;
      v16[3] = &unk_1E86E8710;
      v17 = v6;
      v18 = v8;
      v19 = v4;
      (v10)[2](v10, v16);
    }

    v11 = 0;
  }

  else
  {
    v12 = *MEMORY[0x1E696A798];
    v13 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v11 = CWFErrorWithDescription(v12, 22, v13);

    if (v11)
    {
      v14 = [v4 response];

      if (v14)
      {
        v15 = [v4 response];
        (v15)[2](v15, v11, 0);
      }
    }
  }
}

- (void)__getNetworkOfInterestHomeState:(id)a3
{
  v18 = a3;
  v4 = [v18 info];
  v5 = [v4 objectForKeyedSubscript:@"NetworkProfile"];

  if (v5)
  {
    v6 = [(CWFXPCRequestProxy *)self noiManager];
    v7 = [v5 networkName];
    v8 = [v6 homeTypeForNetworkName:v7];

    v9 = [v5 networkOfInterestHomeState];
    if (v8)
    {
      if (v8 != v9)
      {
        [v5 setNetworkOfInterestHomeState:v8];
        v10 = [MEMORY[0x1E695DF00] date];
        [v5 setNetworkOfInterestHomeStateUpdatedAt:v10];
      }
    }

    else
    {
      v8 = v9;
    }

    goto LABEL_6;
  }

  v15 = *MEMORY[0x1E696A798];
  v16 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
  v8 = CWFErrorWithDescription(v15, 22, v16);

  if (!v8)
  {
LABEL_6:
    v11 = [MEMORY[0x1E695DF90] dictionary];
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:v8];
    [v11 setObject:v12 forKeyedSubscript:@"Result"];

    v8 = [v18 response];

    if (v8)
    {
      v13 = [v18 response];
      v14 = [v11 copy];
      (v13)[2](v13, 0, v14);

      v8 = 0;
    }

    goto LABEL_8;
  }

  v17 = [v18 response];

  if (v17)
  {
    v11 = [v18 response];
    (v11)[2](v11, v8, 0);
LABEL_8:
  }
}

- (void)__getNetworkOfInterestWorkState:(id)a3
{
  v18 = a3;
  v4 = [v18 info];
  v5 = [v4 objectForKeyedSubscript:@"NetworkProfile"];

  if (v5)
  {
    v6 = [(CWFXPCRequestProxy *)self noiManager];
    v7 = [v5 networkName];
    v8 = [v6 workTypeForNetworkName:v7];

    v9 = [v5 networkOfInterestWorkState];
    if (v8)
    {
      if (v8 != v9)
      {
        [v5 setNetworkOfInterestWorkState:v8];
        v10 = [MEMORY[0x1E695DF00] date];
        [v5 setNetworkOfInterestWorkStateUpdatedAt:v10];
      }
    }

    else
    {
      v8 = v9;
    }

    goto LABEL_6;
  }

  v15 = *MEMORY[0x1E696A798];
  v16 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
  v8 = CWFErrorWithDescription(v15, 22, v16);

  if (!v8)
  {
LABEL_6:
    v11 = [MEMORY[0x1E695DF90] dictionary];
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:v8];
    [v11 setObject:v12 forKeyedSubscript:@"Result"];

    v8 = [v18 response];

    if (v8)
    {
      v13 = [v18 response];
      v14 = [v11 copy];
      (v13)[2](v13, 0, v14);

      v8 = 0;
    }

    goto LABEL_8;
  }

  v17 = [v18 response];

  if (v17)
  {
    v11 = [v18 response];
    (v11)[2](v11, v8, 0);
LABEL_8:
  }
}

- (void)__getBrokenBackhaulState:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 response];

  if (v5)
  {
    v6 = [v4 response];
    v10 = @"Result";
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CWFBrokenBackhaulMonitor brokenBackhaulState](self->_bbhMonitor, "brokenBackhaulState")}];
    v11[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    (v6)[2](v6, 0, v8);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)__getBrokenBackhaulStateUpdatedAt:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CWFBrokenBackhaulMonitor *)self->_bbhMonitor brokenBackhaulStateUpdatedAt];
  v6 = [v4 response];

  if (v6)
  {
    v7 = [v4 response];
    v8 = v7;
    if (v5)
    {
      v11 = @"Result";
      v12[0] = v5;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
      (v8)[2](v8, 0, v9);
    }

    else
    {
      (*(v7 + 16))(v7, 0, 0);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)__confirmBrokenBackhaul:(id)a3
{
  v41[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 info];
  v6 = [v5 objectForKeyedSubscript:@"ProbeTimeout"];
  v7 = [v6 unsignedIntegerValue];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = 2000;
  }

  v9 = [v4 info];
  v10 = [v9 objectForKeyedSubscript:@"ProbeCount"];
  v11 = [v10 unsignedIntegerValue];

  if (v11 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  v13 = [v4 requestParameters];
  v14 = [v13 interfaceName];

  v15 = [(CWFXPCRequestProxy *)self SCNetworkServiceWithInterfaceName:v14];
  v16 = [v15 IPv4Addresses];
  v17 = [v15 IPv4Router];
  v18 = [v15 IPv6Addresses];
  v19 = [v15 IPv6Router];
  v35 = v19;
  if (v16 && v17 || v18 && v19)
  {
    bbhMonitor = self->_bbhMonitor;
    v21 = v16;
    v22 = v18;
    v23 = v14;
    v24 = v8;
    if (v17)
    {
      v25 = v17;
    }

    else
    {
      v25 = v19;
    }

    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = sub_1E0CC6BBC;
    v36[3] = &unk_1E86E8738;
    v37 = v4;
    v26 = v24;
    v14 = v23;
    v18 = v22;
    v16 = v21;
    [(CWFBrokenBackhaulMonitor *)bbhMonitor confirmBrokenBackhaulUsingTimeout:v26 count:v12 preflightPingAddress:v25 completion:v36];
    v27 = v37;
  }

  else
  {
    v29 = [v4 response];

    if (!v29)
    {
      goto LABEL_16;
    }

    v27 = [v4 response];
    v34 = MEMORY[0x1E696ABC0];
    v30 = *MEMORY[0x1E696A798];
    v40 = *MEMORY[0x1E696A578];
    v41[0] = @"WiFi has no IPv4/IPv6";
    v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1];
    v32 = [v34 errorWithDomain:v30 code:1 userInfo:v31];
    v38 = @"Result";
    v39 = &unk_1F5BBC958;
    v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    (v27)[2](v27, v32, v33);
  }

LABEL_16:
  v28 = *MEMORY[0x1E69E9840];
}

- (void)__removeUnusedKnownNetworks
{
  v58 = *MEMORY[0x1E69E9840];
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

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    LOWORD(v55) = 0;
    LODWORD(v48) = 2;
    v47 = &v55;
    _os_log_send_and_compose_impl();
  }

  v6 = [(CWFXPCRequestProxy *)self __apple80211WithVirtualInterfaceRole:0 parentInterfaceName:0];
  if (v6)
  {
    v7 = [(CWFXPCRequestProxy *)self __knownNetworkProfiles];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v51 objects:v57 count:16];
    if (!v8)
    {
      goto LABEL_62;
    }

    v9 = v8;
    v10 = MEMORY[0x1E69E9C10];
    v11 = *v52;
    while (1)
    {
      v12 = 0;
      do
      {
        if (*v52 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v51 + 1) + 8 * v12);
        if ([v13 isProfileBased])
        {
          v38 = CWFGetOSLog();
          if (v38)
          {
            v21 = CWFGetOSLog();
          }

          else
          {
            v41 = v10;
            v21 = v10;
          }

          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            v55 = 138412290;
            *v56 = v13;
            LODWORD(v48) = 12;
            v47 = &v55;
LABEL_41:
            _os_log_send_and_compose_impl();
          }

LABEL_47:

          goto LABEL_48;
        }

        if ([v13 isOpen] & 1) != 0 || (objc_msgSend(v13, "isOWE"))
        {
          if (([v13 isCaptive] & 1) != 0 || objc_msgSend(v13, "wasCaptive"))
          {
            v14 = [v13 lastJoinedOnAnyDeviceAt];
            [v14 timeIntervalSinceNow];
            v16 = v15;
            v17 = [v13 lastJoinedOnAnyDeviceAt];
            [v17 timeIntervalSinceNow];
            v19 = v18;

            if (v16 < 0.0)
            {
              if (v19 >= -63072000.0)
              {
LABEL_19:
                v20 = CWFGetOSLog();
                if (v20)
                {
                  v21 = CWFGetOSLog();
                }

                else
                {
                  v31 = v10;
                  v21 = v10;
                }

                if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
                {
                  v55 = 67109378;
                  *v56 = 730;
                  *&v56[4] = 2112;
                  *&v56[6] = v13;
                  LODWORD(v48) = 18;
                  v47 = &v55;
                  goto LABEL_41;
                }

                goto LABEL_47;
              }
            }

            else if (v19 <= 63072000.0)
            {
              goto LABEL_19;
            }

            v22 = CWFGetOSLog();
            if (v22)
            {
              v23 = CWFGetOSLog();
            }

            else
            {
              v32 = v10;
              v23 = v10;
            }

            if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              v55 = 67109378;
              *v56 = 730;
              *&v56[4] = 2112;
              *&v56[6] = v13;
              LODWORD(v48) = 18;
              v47 = &v55;
              _os_log_send_and_compose_impl();
            }

            v21 = [v6 interfaceName];
            v50[0] = MEMORY[0x1E69E9820];
            v50[1] = 3221225472;
            v50[2] = sub_1E0CC74C0;
            v50[3] = &unk_1E86E84C0;
            v50[4] = v13;
            v33 = v50;
LABEL_46:
            [(CWFXPCRequestProxy *)self __removeNetworkProfile:v13 reason:9 interfaceName:v21 reply:v33, v47, v48];
            goto LABEL_47;
          }

          v24 = [v13 lastJoinedOnAnyDeviceAt];
          [v24 timeIntervalSinceNow];
          v26 = v25;
          v27 = [v13 lastJoinedOnAnyDeviceAt];
          [v27 timeIntervalSinceNow];
          v29 = v28;

          if (v26 < 0.0)
          {
            if (v29 >= -3628800.0)
            {
LABEL_26:
              v30 = CWFGetOSLog();
              if (v30)
              {
                v21 = CWFGetOSLog();
              }

              else
              {
                v36 = v10;
                v21 = v10;
              }

              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
              {
                v55 = 67109378;
                *v56 = 42;
                *&v56[4] = 2112;
                *&v56[6] = v13;
                LODWORD(v48) = 18;
                v47 = &v55;
                goto LABEL_41;
              }

              goto LABEL_47;
            }
          }

          else if (v29 <= 3628800.0)
          {
            goto LABEL_26;
          }

          v34 = CWFGetOSLog();
          if (v34)
          {
            v35 = CWFGetOSLog();
          }

          else
          {
            v37 = v10;
            v35 = v10;
          }

          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            v55 = 67109378;
            *v56 = 42;
            *&v56[4] = 2112;
            *&v56[6] = v13;
            LODWORD(v48) = 18;
            v47 = &v55;
            _os_log_send_and_compose_impl();
          }

          v21 = [v6 interfaceName];
          v49[0] = MEMORY[0x1E69E9820];
          v49[1] = 3221225472;
          v49[2] = sub_1E0CC75CC;
          v49[3] = &unk_1E86E84C0;
          v49[4] = v13;
          v33 = v49;
          goto LABEL_46;
        }

        v39 = CWFGetOSLog();
        if (v39)
        {
          v40 = CWFGetOSLog();
        }

        else
        {
          v42 = v10;
          v40 = v10;
        }

        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
        {
          v55 = 138412290;
          *v56 = v13;
          LODWORD(v48) = 12;
          v47 = &v55;
          _os_log_send_and_compose_impl();
        }

LABEL_48:
        ++v12;
      }

      while (v9 != v12);
      v43 = [v7 countByEnumeratingWithState:&v51 objects:v57 count:16];
      v9 = v43;
      if (!v43)
      {
        goto LABEL_62;
      }
    }
  }

  v45 = CWFGetOSLog();
  if (v45)
  {
    v7 = CWFGetOSLog();
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v46 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v55) = 0;
    _os_log_send_and_compose_impl();
  }

LABEL_62:

  v44 = *MEMORY[0x1E69E9840];
}

- (void)__setUCMExtProfile:(id)a3
{
  v4 = a3;
  v5 = [v4 requestParameters];
  v6 = [v5 interfaceName];

  v7 = [(CWFXPCRequestProxy *)self apple80211WithInterfaceName:v6];
  if (!v7)
  {
    v16 = *MEMORY[0x1E696A798];
    v9 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
    v17 = v16;
    v18 = 6;
LABEL_11:
    v12 = CWFErrorWithDescription(v17, v18, v9);
    goto LABEL_5;
  }

  v8 = [v4 info];
  v9 = [v8 objectForKeyedSubscript:@"UCMExtProfile"];

  if (!v9)
  {
    v19 = *MEMORY[0x1E696A798];
    v9 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v17 = v19;
    v18 = 22;
    goto LABEL_11;
  }

  v10 = [v7 powerOn:0];
  v11 = [v10 BOOLValue];

  if (v11)
  {
    v22 = 0;
    [v7 setUCMExtProfile:v9 error:&v22];
    v12 = v22;
LABEL_5:
    v13 = v12;
    goto LABEL_6;
  }

  v20 = *MEMORY[0x1E696A798];
  v21 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x52uLL);
  v13 = CWFErrorWithDescription(v20, 82, v21);

LABEL_6:
  v14 = [v4 response];

  if (v14)
  {
    v15 = [v4 response];
    (v15)[2](v15, v13, 0);
  }
}

- (void)__getWiFiNetworkSharingNetworkList:(id)a3
{
  v21 = a3;
  if (_os_feature_enabled_impl())
  {
    v4 = [v21 info];
    v5 = [v4 objectForKeyedSubscript:@"WiFiNetworkSharingClientID"];

    if (v5)
    {
      v6 = [(CWFXPCRequestProxy *)self wifiNetworkSharingManager];
      v7 = [v6 isClientIDAuthorizedForWiFiNetworkSharing:v5];

      if (v7)
      {
        v8 = [(CWFXPCRequestProxy *)self wifiNetworkSharingManager];
        v9 = [v21 requestParameters];
        v10 = [v9 wifiNetworkSharingNetworkListUpdateEventPredicateData];
        v11 = [v8 networkListForClientID:v5 predicateData:v10];

LABEL_5:
        v12 = [MEMORY[0x1E695DF90] dictionary];
        [v12 setObject:v11 forKeyedSubscript:@"Result"];
        v13 = [v21 response];

        if (v13)
        {
          v14 = [v21 response];
          (v14)[2](v14, 0, v12);
        }

        v15 = 0;
        goto LABEL_8;
      }

      v16 = CWFWiFiNetworkSharingErrorDomain;
      v17 = 8;
    }

    else
    {
      v16 = MEMORY[0x1E696A798];
      v17 = 22;
    }
  }

  else
  {
    v5 = 0;
    v16 = CWFWiFiNetworkSharingErrorDomain;
    v17 = 3;
  }

  v18 = *v16;
  v19 = CWFErrorDescription(*v16, v17);
  v15 = CWFErrorWithDescription(v18, v17, v19);

  if (!v15)
  {
    v11 = 0;
    goto LABEL_5;
  }

  v20 = [v21 response];

  if (v20)
  {
    v11 = [v21 response];
    (v11)[2](v11, v15, 0);
LABEL_8:
  }
}

- (void)__getWiFiNetworkSharingAskToShareNetworkList:(id)a3
{
  v16 = a3;
  if (_os_feature_enabled_impl())
  {
    v4 = [v16 info];
    v5 = [v4 objectForKeyedSubscript:@"WiFiNetworkSharingClientID"];

    if (v5)
    {
      v6 = [(CWFXPCRequestProxy *)self wifiNetworkSharingManager];
      v7 = [v6 askToShareNetworkListForClientID:v5];

LABEL_4:
      v8 = [MEMORY[0x1E695DF90] dictionary];
      [v8 setObject:v7 forKeyedSubscript:@"Result"];
      v9 = [v16 response];

      if (v9)
      {
        v10 = [v16 response];
        (v10)[2](v10, 0, v8);
      }

      v5 = 0;
      goto LABEL_7;
    }

    v11 = MEMORY[0x1E696A798];
    v12 = 22;
  }

  else
  {
    v11 = CWFWiFiNetworkSharingErrorDomain;
    v12 = 3;
  }

  v13 = *v11;
  v14 = CWFErrorDescription(*v11, v12);
  v5 = CWFErrorWithDescription(v13, v12, v14);

  if (!v5)
  {
    v7 = 0;
    goto LABEL_4;
  }

  v15 = [v16 response];

  if (v15)
  {
    v7 = [v16 response];
    (v7)[2](v7, v5, 0);
LABEL_7:
  }
}

- (void)__getWiFiNetworkSharingAskToShareStatus:(id)a3
{
  v4 = a3;
  if (_os_feature_enabled_impl())
  {
    v5 = [v4 info];
    v6 = [v5 objectForKeyedSubscript:@"WiFiNetworkSharingClientID"];

    if (v6)
    {
      v7 = [v4 info];
      v8 = [v7 objectForKeyedSubscript:@"WiFiNetworkSharingNetworkID"];

      if (v8)
      {
        v9 = [(CWFXPCRequestProxy *)self wifiNetworkSharingManager];
        v22 = 0;
        v10 = [v9 askToShareStatusForClientID:v6 networkID:v8 timestamp:&v22];
        v11 = v22;

LABEL_5:
        v12 = [MEMORY[0x1E695DF90] dictionary];
        v13 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
        [v12 setObject:v13 forKeyedSubscript:@"WiFiNetworkSharingAskToShareStatus"];

        [v12 setObject:v11 forKeyedSubscript:@"Timestamp"];
        v14 = [v4 response];

        if (v14)
        {
          v15 = [v4 response];
          (v15)[2](v15, 0, v12);
        }

        v8 = 0;
        goto LABEL_8;
      }
    }

    v16 = MEMORY[0x1E696A798];
    v17 = 22;
  }

  else
  {
    v6 = 0;
    v16 = CWFWiFiNetworkSharingErrorDomain;
    v17 = 3;
  }

  v18 = *v16;
  v19 = CWFErrorDescription(*v16, v17);
  v8 = CWFErrorWithDescription(v18, v17, v19);

  if (!v8)
  {
    v11 = 0;
    v10 = 0;
    goto LABEL_5;
  }

  v20 = [v4 response];

  if (v20)
  {
    v21 = [v4 response];
    (v21)[2](v21, v8, 0);
  }

LABEL_8:
}

- (void)__setWiFiNetworkSharingAskToShareStatus:(id)a3
{
  v21 = a3;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v5 = CWFErrorDescription(@"WiFiNetworkSharingError", 3uLL);
    v14 = @"WiFiNetworkSharingError";
    v15 = 3;
LABEL_13:
    v11 = CWFErrorWithDescription(v14, v15, v5);
    goto LABEL_6;
  }

  v4 = [v21 info];
  v5 = [v4 objectForKeyedSubscript:@"WiFiNetworkSharingClientID"];

  if (!v5)
  {
    v16 = *MEMORY[0x1E696A798];
    v5 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v14 = v16;
    v15 = 22;
    goto LABEL_13;
  }

  v6 = [v21 info];
  v7 = [v6 objectForKeyedSubscript:@"WiFiNetworkSharingNetworkID"];

  if (v7)
  {
    v8 = [v21 info];
    v9 = [v8 objectForKeyedSubscript:@"WiFiNetworkSharingAskToShareStatus"];

    if (v9)
    {
      v10 = [(CWFXPCRequestProxy *)self wifiNetworkSharingManager];
      [v10 setAskToShareStatus:objc_msgSend(v9 clientID:"integerValue") networkID:{v5, v7}];

      v11 = 0;
    }

    else
    {
      v19 = *MEMORY[0x1E696A798];
      v20 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
      v11 = CWFErrorWithDescription(v19, 22, v20);
    }
  }

  else
  {
    v17 = *MEMORY[0x1E696A798];
    v18 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v11 = CWFErrorWithDescription(v17, 22, v18);
  }

LABEL_6:

  v12 = [v21 response];

  if (v12)
  {
    v13 = [v21 response];
    (v13)[2](v13, v11, 0);
  }
}

- (void)__askToShareWiFiNetworkSharingNetworkFromAppex:(id)a3
{
  v4 = a3;
  if (_os_feature_enabled_impl())
  {
    v5 = [v4 info];
    v6 = [v5 objectForKeyedSubscript:@"WiFiNetworkSharingClientID"];

    if (v6)
    {
      v7 = [(CWFXPCRequestProxy *)self wifiNetworkSharingManager];
      v8 = [v7 isClientIDAuthorizedForWiFiNetworkSharing:v6];

      if (v8)
      {
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = sub_1E0CC83D4;
        v19[3] = &unk_1E86E6420;
        v19[4] = self;
        v6 = v6;
        v20 = v6;
        [v4 setCancelationHandler:v19];
        v9 = [(CWFXPCRequestProxy *)self wifiNetworkSharingManager];
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = sub_1E0CC8428;
        v17[3] = &unk_1E86E8738;
        v18 = v4;
        [v9 askToShareFromAppexForClientID:v6 completion:v17];

        v10 = 0;
        goto LABEL_5;
      }

      v11 = CWFWiFiNetworkSharingErrorDomain;
      v12 = 8;
    }

    else
    {
      v11 = MEMORY[0x1E696A798];
      v12 = 22;
    }
  }

  else
  {
    v6 = 0;
    v11 = CWFWiFiNetworkSharingErrorDomain;
    v12 = 3;
  }

  v13 = *v11;
  v14 = CWFErrorDescription(*v11, v12);
  v10 = CWFErrorWithDescription(v13, v12, v14);

  if (v10)
  {
    v15 = [v4 response];

    if (v15)
    {
      v16 = [v4 response];
      (v16)[2](v16, v10, 0);
    }
  }

LABEL_5:
}

- (void)__askToShareWiFiNetworkSharingNetworkFromApp:(id)a3
{
  v4 = a3;
  if (_os_feature_enabled_impl())
  {
    v5 = [v4 info];
    v6 = [v5 objectForKeyedSubscript:@"WiFiNetworkSharingClientID"];

    if (v6)
    {
      v7 = [(CWFXPCRequestProxy *)self wifiNetworkSharingManager];
      v8 = [v7 isClientIDAuthorizedForWiFiNetworkSharing:v6];

      if (v8)
      {
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = sub_1E0CC8790;
        v19[3] = &unk_1E86E6420;
        v19[4] = self;
        v6 = v6;
        v20 = v6;
        [v4 setCancelationHandler:v19];
        v9 = [(CWFXPCRequestProxy *)self wifiNetworkSharingManager];
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = sub_1E0CC87E4;
        v17[3] = &unk_1E86E8738;
        v18 = v4;
        [v9 askToShareFromAppForClientID:v6 completion:v17];

        v10 = 0;
        goto LABEL_5;
      }

      v11 = CWFWiFiNetworkSharingErrorDomain;
      v12 = 8;
    }

    else
    {
      v11 = MEMORY[0x1E696A798];
      v12 = 22;
    }
  }

  else
  {
    v6 = 0;
    v11 = CWFWiFiNetworkSharingErrorDomain;
    v12 = 3;
  }

  v13 = *v11;
  v14 = CWFErrorDescription(*v11, v12);
  v10 = CWFErrorWithDescription(v13, v12, v14);

  if (v10)
  {
    v15 = [v4 response];

    if (v15)
    {
      v16 = [v4 response];
      (v16)[2](v16, v10, 0);
    }
  }

LABEL_5:
}

- (void)__acknowledgeWiFiNetworkSharingNetworkListUpdate:(id)a3
{
  v17 = a3;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v5 = CWFErrorDescription(@"WiFiNetworkSharingError", 3uLL);
    v12 = @"WiFiNetworkSharingError";
    v13 = 3;
LABEL_12:
    v9 = CWFErrorWithDescription(v12, v13, v5);
    goto LABEL_5;
  }

  v4 = [v17 info];
  v5 = [v4 objectForKeyedSubscript:@"WiFiNetworkSharingClientID"];

  if (!v5)
  {
    v14 = *MEMORY[0x1E696A798];
    v5 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v12 = v14;
    v13 = 22;
    goto LABEL_12;
  }

  v6 = [v17 info];
  v7 = [v6 objectForKeyedSubscript:@"WiFiNetworkSharingNetworkListUpdate"];

  if (v7)
  {
    v8 = [(CWFXPCRequestProxy *)self wifiNetworkSharingManager];
    [v8 acknowledgeNetworkListUpdate:v7 clientID:v5];

    v9 = 0;
  }

  else
  {
    v15 = *MEMORY[0x1E696A798];
    v16 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v9 = CWFErrorWithDescription(v15, 22, v16);
  }

LABEL_5:

  v10 = [v17 response];

  if (v10)
  {
    v11 = [v17 response];
    (v11)[2](v11, v9, 0);
  }
}

- (void)__getWiFiNetworkSharingAuthorizationLevel:(id)a3
{
  v16 = a3;
  if (_os_feature_enabled_impl())
  {
    v4 = [v16 info];
    v5 = [v4 objectForKeyedSubscript:@"WiFiNetworkSharingClientID"];

    if (v5)
    {
      v6 = [(CWFXPCRequestProxy *)self wifiNetworkSharingManager];
      v7 = [v6 authorizationLevelForClientID:v5];

LABEL_4:
      v8 = [MEMORY[0x1E695DF90] dictionary];
      [v8 setObject:v7 forKeyedSubscript:@"WiFiNetworkSharingAuthorizationLevel"];
      v9 = [v16 response];

      if (v9)
      {
        v10 = [v16 response];
        (v10)[2](v10, 0, v8);
      }

      v5 = 0;
      goto LABEL_7;
    }

    v11 = MEMORY[0x1E696A798];
    v12 = 22;
  }

  else
  {
    v11 = CWFWiFiNetworkSharingErrorDomain;
    v12 = 3;
  }

  v13 = *v11;
  v14 = CWFErrorDescription(*v11, v12);
  v5 = CWFErrorWithDescription(v13, v12, v14);

  if (!v5)
  {
    v7 = 0;
    goto LABEL_4;
  }

  v15 = [v16 response];

  if (v15)
  {
    v7 = [v16 response];
    (v7)[2](v7, v5, 0);
LABEL_7:
  }
}

- (void)__requestWiFiNetworkSharingAuthorization:(id)a3
{
  v4 = a3;
  if (_os_feature_enabled_impl())
  {
    v5 = [v4 info];
    v6 = [v5 objectForKeyedSubscript:@"WiFiNetworkSharingClientID"];

    if (v6)
    {
      v7 = [(CWFXPCRequestProxy *)self wifiNetworkSharingManager];
      v8 = [v7 isClientIDAuthorizedForDeviceAccess:v6];

      if (v8)
      {
        v9 = [(CWFXPCRequestProxy *)self wifiNetworkSharingManager];
        v10 = [v9 isClientIDUsingSecureTransportForDeviceAccess:v6];

        if (v10)
        {
          v21[0] = MEMORY[0x1E69E9820];
          v21[1] = 3221225472;
          v21[2] = sub_1E0CC8F30;
          v21[3] = &unk_1E86E6420;
          v21[4] = self;
          v6 = v6;
          v22 = v6;
          [v4 setCancelationHandler:v21];
          v11 = [(CWFXPCRequestProxy *)self wifiNetworkSharingManager];
          v19[0] = MEMORY[0x1E69E9820];
          v19[1] = 3221225472;
          v19[2] = sub_1E0CC8F84;
          v19[3] = &unk_1E86E8760;
          v20 = v4;
          [v11 requestAuthorizationForClientID:v6 completion:v19];

          v12 = 0;
          goto LABEL_6;
        }

        v13 = CWFWiFiNetworkSharingErrorDomain;
        v14 = 6;
      }

      else
      {
        v13 = CWFWiFiNetworkSharingErrorDomain;
        v14 = 8;
      }
    }

    else
    {
      v13 = MEMORY[0x1E696A798];
      v14 = 22;
    }
  }

  else
  {
    v6 = 0;
    v13 = CWFWiFiNetworkSharingErrorDomain;
    v14 = 3;
  }

  v15 = *v13;
  v16 = CWFErrorDescription(*v13, v14);
  v12 = CWFErrorWithDescription(v15, v14, v16);

  if (v12)
  {
    v17 = [v4 response];

    if (v17)
    {
      v18 = [v4 response];
      (v18)[2](v18, v12, 0);
    }
  }

LABEL_6:
}

@end