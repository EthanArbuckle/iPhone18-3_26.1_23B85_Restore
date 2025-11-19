@interface CWFInterface
+ (unsigned)logRedactionSetting;
+ (void)setLogRedactionDisabled:(BOOL)a3;
+ (void)setLogRedactionSetting:(unsigned __int8)a3;
- (BOOL)acknowledgeWiFiNetworkSharingNetworkListUpdate:(id)a3 error:(id *)a4;
- (BOOL)addKnownBSS:(id)a3 knownNetworkProfile:(id)a4 error:(id *)a5;
- (BOOL)addKnownNetworkProfile:(id)a3 error:(id *)a4;
- (BOOL)addKnownNetworksForMigration:(id)a3 error:(id *)a4;
- (BOOL)applyUserSettings:(id)a3 properties:(id)a4 error:(id *)a5;
- (BOOL)associateWithParameters:(id)a3 error:(id *)a4;
- (BOOL)beginActivity:(id)a3 error:(id *)a4;
- (BOOL)beginActivityType:(int64_t)a3 reason:(id)a4 error:(id *)a5;
- (BOOL)cancelRequestsWithUUID:(id)a3 error:(id *)a4;
- (BOOL)isDeviceSupervised;
- (BOOL)isNetworkManagedByMDM:(id)a3;
- (BOOL)isNetworkServiceEnabled;
- (BOOL)isQuickProbeRequiredForNetworkProfile:(id)a3;
- (BOOL)performAutoJoinWithParameters:(id)a3 error:(id *)a4;
- (BOOL)powerOn;
- (BOOL)removeKnownBSS:(id)a3 knownNetworkProfile:(id)a4 error:(id *)a5;
- (BOOL)removeKnownNetworkProfile:(id)a3 reason:(int64_t)a4 error:(id *)a5;
- (BOOL)setAWDLPeerTrafficRegistration:(id)a3 error:(id *)a4;
- (BOOL)setAutoHotspotMode:(int64_t)a3 error:(id *)a4;
- (BOOL)setBackgroundScanConfiguration:(id)a3 error:(id *)a4;
- (BOOL)setBlockedBands:(id)a3 error:(id *)a4;
- (BOOL)setCaptivePortalCredentials:(id)a3 knownNetworkProfile:(id)a4 error:(id *)a5;
- (BOOL)setChannel:(id)a3 error:(id *)a4;
- (BOOL)setCompanionCountryCode:(id)a3 error:(id *)a4;
- (BOOL)setLinkQualityMetricConfiguration:(id)a3 error:(id *)a4;
- (BOOL)setPassword:(id)a3 knownNetworkProfile:(id)a4 error:(id *)a5;
- (BOOL)setPrivateMACAddressMode:(int64_t)a3 networkProfile:(id)a4 error:(id *)a5;
- (BOOL)setPrivateMACAddressModeSystemSetting:(int64_t)a3 error:(id *)a4;
- (BOOL)setRangingIdentifier:(id)a3 error:(id *)a4;
- (BOOL)setThermalIndex:(int64_t)a3 error:(id *)a4;
- (BOOL)setUCMExtProfile:(id)a3 error:(id *)a4;
- (BOOL)setUserAutoJoinDisabled:(BOOL)a3 error:(id *)a4;
- (BOOL)setWiFiNetworkSharingAskToShareStatus:(int64_t)a3 networkID:(id)a4 error:(id *)a5;
- (BOOL)startAWDLPeerAssistedDiscoveryWithParameters:(id)a3 error:(id *)a4;
- (BOOL)startHostAPModeWithConfiguration:(id)a3 error:(id *)a4;
- (BOOL)startMonitoringEvent:(id)a3 error:(id *)a4;
- (BOOL)startMonitoringEventType:(int64_t)a3 error:(id *)a4;
- (BOOL)updateKnownBSS:(id)a3 knownNetworkProfile:(id)a4 properties:(id)a5 OSSpecificKeys:(id)a6 error:(id *)a7;
- (BOOL)updateKnownNetworkProfile:(id)a3 properties:(id)a4 OSSpecificKeys:(id)a5 error:(id *)a6;
- (BOOL)userAutoJoinDisabled;
- (BOOL)wakeOnWirelessEnabled;
- (CWFInterface)init;
- (CWFInterface)initWithServiceType:(int64_t)a3;
- (CWFInterface)initWithServiceType:(int64_t)a3 endpoint:(id)a4;
- (CWFInterface)initWithXPCClient:(id)a3 requestParameters:(id)a4;
- (double)rxRate;
- (double)txPower;
- (double)txRate;
- (id)AWDL;
- (id)AWDLAFTxMode;
- (id)AWDLAvailabilityWindowAPAlignment;
- (id)AWDLBTLEStateParameters;
- (id)AWDLContinuousElectionAlgorithmEnabled;
- (id)AWDLElectionID;
- (id)AWDLElectionMetric;
- (id)AWDLElectionParameters;
- (id)AWDLElectionRSSIThresholds;
- (id)AWDLEncryptionType;
- (id)AWDLExtensionStateMachineParameters;
- (id)AWDLGuardTime;
- (id)AWDLMasterChannel;
- (id)AWDLOpMode;
- (id)AWDLPeerDatabase;
- (id)AWDLPeerTrafficRegistration;
- (id)AWDLPreferredChannels;
- (id)AWDLPresenceMode;
- (id)AWDLSecondaryMasterChannel;
- (id)AWDLSidecarDiagnostics;
- (id)AWDLSocialTimeSlots;
- (id)AWDLStatistics;
- (id)AWDLStrategy;
- (id)AWDLSyncChannelSequence;
- (id)AWDLSyncEnabled;
- (id)AWDLSyncParameters;
- (id)AWDLSyncState;
- (id)BSSID;
- (id)BSSIDForVendor;
- (id)DHCPLeaseExpiresAt;
- (id)DHCPLeaseStartedAt;
- (id)DHCPServerID;
- (id)DHCPv6ServerID;
- (id)DNSServerAddresses;
- (id)IO80211ControllerInfo;
- (id)IO80211InterfaceInfo;
- (id)IPv4ARPResolvedHardwareAddress;
- (id)IPv4ARPResolvedIPAddress;
- (id)IPv4Addresses;
- (id)IPv4NetworkSignature;
- (id)IPv4RouterAddress;
- (id)IPv4SubnetMasks;
- (id)IPv6Addresses;
- (id)IPv6NetworkSignature;
- (id)IPv6RouterAddress;
- (id)LQMSummary;
- (id)MACAddress;
- (id)NANData;
- (id)SSID;
- (id)SSIDForVendor;
- (id)__adjustedRequestParameters;
- (id)_knownNetworkProfilesInSameLanAsNetworkName:(id)a3;
- (id)activities;
- (id)authType;
- (id)autoJoinStatistics;
- (id)auxiliaryInterface;
- (id)background;
- (id)backgroundScanCache;
- (id)backgroundScanConfiguration;
- (id)beaconCache;
- (id)blockedBands;
- (id)bluetoothCoexistenceConfig;
- (id)bluetoothCoexistenceProfiles2GHz;
- (id)bluetoothCoexistenceProfiles5GHz;
- (id)brokenBackhaulStateUpdatedAt;
- (id)cachedAutoJoinMetric;
- (id)cachedAutoJoinStatus;
- (id)cachedJoinStatus;
- (id)cachedLinkDownStatus;
- (id)cachedLinkQualityMetric;
- (id)cachedRoamStatus;
- (id)capabilities;
- (id)captivePortalCredentialsForKnownNetworkProfile:(id)a3 error:(id *)a4;
- (id)chainAck;
- (id)channel;
- (id)clearAutoJoinDenyListForNetwork:(id)a3 reason:(unint64_t)a4;
- (id)cloudNetworks;
- (id)countryCode;
- (id)currentKnownNetworkProfile;
- (id)currentScanResult;
- (id)desense;
- (id)desenseLevel;
- (id)deviceUUID;
- (id)eventHandler;
- (id)eventIDs;
- (id)getAutoJoinDenyList;
- (id)globalDNSServerAddresses;
- (id)globalIPv4Addresses;
- (id)globalIPv4InterfaceName;
- (id)globalIPv4NetworkServiceID;
- (id)globalIPv4NetworkServiceName;
- (id)globalIPv4RouterAddress;
- (id)globalIPv6Addresses;
- (id)globalIPv6InterfaceName;
- (id)globalIPv6NetworkServiceID;
- (id)globalIPv6NetworkServiceName;
- (id)globalIPv6RouterAddress;
- (id)hardwareMACAddress;
- (id)hardwareSupportedChannels;
- (id)highPriority;
- (id)hostAPStationList;
- (id)initForWiFiNetworkSharingAppExtensionWithAccessoryID:(id)a3;
- (id)initForWiFiNetworkSharingAppWithAccessoryID:(id)a3;
- (id)interfaceName;
- (id)interfaceNames;
- (id)knownNetworkInfoForLocalNetworkPromptWithOptions:(id)a3;
- (id)knownNetworkProfileMatchingNetworkProfile:(id)a3;
- (id)knownNetworkProfileMatchingScanResult:(id)a3;
- (id)knownNetworkProfilesForMigration;
- (id)knownNetworkProfilesInSameLanAsNetworkName:(id)a3;
- (id)knownNetworkProfilesWithNetworkSignature:(id)a3;
- (id)knownNetworkProfilesWithProperties:(id)a3;
- (id)leakyAPStats;
- (id)linkQualityMetricConfiguration;
- (id)lowPriority;
- (id)maxPHYModeDescription;
- (id)nearbyRecommendedNetworks;
- (id)networkName;
- (id)networkServiceID;
- (id)networkServiceName;
- (id)parentInterfaceName;
- (id)passwordForKnownNetworkProfile:(id)a3 error:(id *)a4;
- (id)perAntennaRSSI;
- (id)performANQPWithParameters:(id)a3 error:(id *)a4;
- (id)performNearbyDeviceDiscovery:(id)a3;
- (id)performRangingWithPeerList:(id)a3 timeout:(unint64_t)a4 error:(id *)a5;
- (id)performScanWithParameters:(id)a3 error:(id *)a4;
- (id)performSensingWithParameters:(id)a3 error:(id *)a4;
- (id)powerDebugInfo;
- (id)powerState;
- (id)powerTableInfo;
- (id)privateMACAddressForNetworkProfile:(id)a3;
- (id)rangingCapabilities;
- (id)recommendedKnownNetworks;
- (id)requestWiFiNetworkSharingAuthorizationAndReturnError:(id *)a3;
- (id)setAutoJoinDenyListForNetwork:(id)a3 reason:(unint64_t)a4;
- (id)supportedChannelsWithCountryCode:(id)a3;
- (id)systemActivities;
- (id)systemEventIDs;
- (id)txChainPower;
- (id)userInitiated;
- (id)userInteractive;
- (id)userSettings;
- (id)utility;
- (id)veryHighPriority;
- (id)veryLowPriority;
- (id)virtualInterfaceNames;
- (id)wifiAssistOverrideReasons;
- (id)wifiNetworkSharingAskToShareNetworkList;
- (id)wifiNetworkSharingAuthorizationLevel;
- (id)wifiNetworkSharingNetworkList;
- (int)EAP8021XClientStatus;
- (int)PHYMode;
- (int)bluetoothCoexistenceMode;
- (int)opMode;
- (int)powersave;
- (int)state;
- (int)supportedPHYModes;
- (int)virtualInterfaceRole;
- (int64_t)RSSI;
- (int64_t)WAPISubtype;
- (int64_t)WEPSubtype;
- (int64_t)askToShareWiFiNetworkSharingNetworkFromAppAndReturnError:(id *)a3;
- (int64_t)askToShareWiFiNetworkSharingNetworkFromAppexAndReturnError:(id *)a3;
- (int64_t)autoHotspotMode;
- (int64_t)brokenBackhaulState;
- (int64_t)confirmBrokenBackhaulUsingTimeout:(unint64_t)a3 count:(unint64_t)a4 error:(id *)a5;
- (int64_t)countryBandSupport;
- (int64_t)networkOfInterestHomeStateForKnownNetworkProfile:(id)a3;
- (int64_t)networkOfInterestWorkStateForKnownNetworkProfile:(id)a3;
- (int64_t)noise;
- (int64_t)privateMACAddressModeForNetworkProfile:(id)a3;
- (int64_t)privateMACAddressModeSystemSetting;
- (int64_t)thermalIndex;
- (int64_t)wifiNetworkSharingAskToShareStatusForNetworkID:(id)a3;
- (unint64_t)CCA;
- (unint64_t)DTIMInterval;
- (unint64_t)MCSIndex;
- (unint64_t)guardInterval;
- (unint64_t)maxLinkSpeed;
- (unint64_t)maxNSSForAP;
- (unint64_t)networkWarningFlags;
- (unint64_t)numberOfSpatialStreams;
- (unint64_t)securityType;
- (unint64_t)txNSS;
- (unint64_t)wifiUIStateFlags;
- (unsigned)EAP8021XControlMode;
- (unsigned)EAP8021XControlState;
- (unsigned)EAP8021XSupplicantState;
- (unsigned)__flagsForChannelBand:(unsigned int)a3 width:(int)a4;
- (unsigned)reachabilityFlags;
- (void)activate;
- (void)activateWithCompletion:(id)a3;
- (void)associateWithParameters:(id)a3 reply:(id)a4;
- (void)checkin;
- (void)checkinWithCompletion:(id)a3;
- (void)disassociateWithReason:(int64_t)a3;
- (void)dumpLogs:(id)a3;
- (void)endActivity:(id)a3;
- (void)endActivityType:(int64_t)a3;
- (void)endAllActivities;
- (void)performANQPWithParameters:(id)a3 reply:(id)a4;
- (void)performActivity:(id)a3 usingBlock:(id)a4;
- (void)performAutoJoinWithParameters:(id)a3 reply:(id)a4;
- (void)performRangingWithPeerList:(id)a3 timeout:(unint64_t)a4 reply:(id)a5;
- (void)performScanWithParameters:(id)a3 reply:(id)a4;
- (void)performSensingWithParameters:(id)a3 reply:(id)a4;
- (void)resetAutoJoinStatistics;
- (void)sendXPCEvent:(id)a3;
- (void)setEventHandler:(id)a3;
- (void)stopAWDLPeerAssistedDiscovery;
- (void)stopHostAPMode;
- (void)stopMonitoringAllEvents;
- (void)stopMonitoringEvent:(id)a3;
- (void)stopMonitoringEventType:(int64_t)a3;
@end

@implementation CWFInterface

- (CWFInterface)init
{
  v3 = [(CWFInterface *)self defaultServiceType];

  return [(CWFInterface *)self initWithServiceType:v3];
}

- (id)__adjustedRequestParameters
{
  v2 = [(CWFInterface *)self requestParameters];
  v3 = [v2 copy];

  return v3;
}

- (BOOL)powerOn
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:5])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B100];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0BC8FE0;
    v7[3] = &unk_1E86E8E58;
    v7[4] = &v8;
    [v3 queryPowerWithRequestParams:v4 reply:v7];
  }

  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

+ (unsigned)logRedactionSetting
{
  v2 = a1;
  objc_sync_enter(v2);
  v3 = byte_1ED7E3850;
  objc_sync_exit(v2);

  return v3;
}

- (id)interfaceName
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_1E0BC2DB0;
  v13 = sub_1E0BC6214;
  v3 = [(CWFInterface *)self requestParameters];
  v14 = [v3 interfaceName];

  if (!v10[5] && [(CWFXPCClient *)self->_XPCClient allowRequestType:3])
  {
    v4 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B000];
    v5 = [(CWFInterface *)self __adjustedRequestParameters];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1E0BC6244;
    v8[3] = &unk_1E86E8EA8;
    v8[4] = &v9;
    [v4 queryInterfaceNameWithRequestParams:v5 reply:v8];
  }

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (id)wifiAssistOverrideReasons
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:236])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B5E0];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CF328C;
    v7[3] = &unk_1E86E7708;
    v7[4] = &v8;
    [v3 queryWiFiAssistOverrideReasonsWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (void)activate
{
  obj = self;
  objc_sync_enter(obj);
  if (![(CWFInterface *)obj isActivated])
  {
    [(CWFInterface *)obj setActivated:1];
    [(CWFXPCClient *)obj->_XPCClient activate];
    if ([(CWFInterface *)obj serviceType]== 8 || [(CWFInterface *)obj serviceType]== 11 || [(CWFInterface *)obj serviceType]== 9 || [(CWFInterface *)obj serviceType]== 10)
    {
      [(CWFInterface *)obj checkin];
    }
  }

  objc_sync_exit(obj);
}

- (id)currentKnownNetworkProfile
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:58])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B89930];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0BD46F0;
    v7[3] = &unk_1E86E8F20;
    v7[4] = &v8;
    [v3 queryCurrentKnownNetworkProfileWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)SSID
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:7])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B140];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0BD5A34;
    v7[3] = &unk_1E86E8F48;
    v7[4] = &v8;
    [v3 querySSIDWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (int64_t)RSSI
{
  v2 = [(CWFInterface *)self perAntennaRSSI];
  if ([v2 length] == 52)
  {
    v3 = [v2 bytes];
    v4 = 28;
    if (*(v3 + 4) == 1)
    {
      v4 = 12;
    }

    v5 = *(v3 + v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)perAntennaRSSI
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:18])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B1C0];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0BD5C58;
    v7[3] = &unk_1E86E8F48;
    v7[4] = &v8;
    [v3 queryRSSIWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (unint64_t)CCA
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:178])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B200];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0BD5DD0;
    v7[3] = &unk_1E86E8E58;
    v7[4] = &v8;
    [v3 queryCCAWithRequestParams:v4 reply:v7];
  }

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (int)PHYMode
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:29])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B892B0];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0BD5F1C;
    v7[3] = &unk_1E86E8E58;
    v7[4] = &v8;
    [v3 queryPHYModeWithRequestParams:v4 reply:v7];
  }

  v5 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (id)channel
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:16])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B340];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0BD60AC;
    v7[3] = &unk_1E86E8F70;
    v7[4] = &v8;
    [v3 queryChannelWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

+ (void)setLogRedactionSetting:(unsigned __int8)a3
{
  obj = a1;
  objc_sync_enter(obj);
  byte_1ED7E3850 = a3;
  objc_sync_exit(obj);
}

+ (void)setLogRedactionDisabled:(BOOL)a3
{
  v3 = a3;
  obj = a1;
  objc_sync_enter(obj);
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  [obj setLogRedactionSetting:v4];
  objc_sync_exit(obj);
}

- (CWFInterface)initWithXPCClient:(id)a3 requestParameters:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = CWFInterface;
  v9 = [(CWFInterface *)&v14 init];
  v10 = v9;
  if (!v7 || !v9 || ((objc_storeStrong(&v9->_XPCClient, a3), !v8) ? (v11 = objc_alloc_init(CWFRequestParameters)) : (v11 = v8), requestParameters = v10->_requestParameters, v10->_requestParameters = v11, requestParameters, !v10->_requestParameters))
  {
    [(CWFInterface *)v10 invalidate];

    v10 = 0;
  }

  return v10;
}

- (CWFInterface)initWithServiceType:(int64_t)a3
{
  v4 = [[CWFXPCClient alloc] initWithServiceType:a3];
  v5 = [(CWFInterface *)self initWithXPCClient:v4 requestParameters:0];

  return v5;
}

- (CWFInterface)initWithServiceType:(int64_t)a3 endpoint:(id)a4
{
  v6 = a4;
  v7 = [[CWFXPCClient alloc] initWithServiceType:a3 endpoint:v6];

  v8 = [(CWFInterface *)self initWithXPCClient:v7 requestParameters:0];
  return v8;
}

- (id)auxiliaryInterface
{
  v3 = [CWFInterface alloc];
  v4 = [(CWFInterface *)self XPCClient];
  v5 = [(CWFInterface *)self __adjustedRequestParameters];
  v6 = [(CWFInterface *)v3 initWithXPCClient:v4 requestParameters:v5];

  return v6;
}

- (id)AWDL
{
  v3 = [(CWFInterface *)self requestParameters];
  v4 = [v3 copy];

  [v4 setInterfaceName:0];
  [v4 setVirtualInterfaceRole:6];
  v5 = [CWFInterface alloc];
  v6 = [(CWFInterface *)self XPCClient];
  v7 = [(CWFInterface *)v5 initWithXPCClient:v6 requestParameters:v4];

  return v7;
}

- (id)NANData
{
  v3 = [(CWFInterface *)self requestParameters];
  v4 = [v3 copy];

  [v4 setInterfaceName:0];
  [v4 setVirtualInterfaceRole:10];
  v5 = [CWFInterface alloc];
  v6 = [(CWFInterface *)self XPCClient];
  v7 = [(CWFInterface *)v5 initWithXPCClient:v6 requestParameters:v4];

  return v7;
}

- (id)veryLowPriority
{
  v3 = [(CWFInterface *)self requestParameters];
  v4 = [v3 copy];

  [v4 setQueuePriority:-8];
  v5 = [CWFInterface alloc];
  v6 = [(CWFInterface *)self XPCClient];
  v7 = [(CWFInterface *)v5 initWithXPCClient:v6 requestParameters:v4];

  return v7;
}

- (id)lowPriority
{
  v3 = [(CWFInterface *)self requestParameters];
  v4 = [v3 copy];

  [v4 setQueuePriority:-4];
  v5 = [CWFInterface alloc];
  v6 = [(CWFInterface *)self XPCClient];
  v7 = [(CWFInterface *)v5 initWithXPCClient:v6 requestParameters:v4];

  return v7;
}

- (id)highPriority
{
  v3 = [(CWFInterface *)self requestParameters];
  v4 = [v3 copy];

  [v4 setQueuePriority:4];
  v5 = [CWFInterface alloc];
  v6 = [(CWFInterface *)self XPCClient];
  v7 = [(CWFInterface *)v5 initWithXPCClient:v6 requestParameters:v4];

  return v7;
}

- (id)veryHighPriority
{
  v3 = [(CWFInterface *)self requestParameters];
  v4 = [v3 copy];

  [v4 setQueuePriority:8];
  v5 = [CWFInterface alloc];
  v6 = [(CWFInterface *)self XPCClient];
  v7 = [(CWFInterface *)v5 initWithXPCClient:v6 requestParameters:v4];

  return v7;
}

- (id)background
{
  v3 = [(CWFInterface *)self requestParameters];
  v4 = [v3 copy];

  [v4 setQualityOfService:9];
  v5 = [CWFInterface alloc];
  v6 = [(CWFInterface *)self XPCClient];
  v7 = [(CWFInterface *)v5 initWithXPCClient:v6 requestParameters:v4];

  return v7;
}

- (id)utility
{
  v3 = [(CWFInterface *)self requestParameters];
  v4 = [v3 copy];

  [v4 setQualityOfService:17];
  v5 = [CWFInterface alloc];
  v6 = [(CWFInterface *)self XPCClient];
  v7 = [(CWFInterface *)v5 initWithXPCClient:v6 requestParameters:v4];

  return v7;
}

- (id)userInitiated
{
  v3 = [(CWFInterface *)self requestParameters];
  v4 = [v3 copy];

  [v4 setQualityOfService:25];
  v5 = [CWFInterface alloc];
  v6 = [(CWFInterface *)self XPCClient];
  v7 = [(CWFInterface *)v5 initWithXPCClient:v6 requestParameters:v4];

  return v7;
}

- (id)userInteractive
{
  v3 = [(CWFInterface *)self requestParameters];
  v4 = [v3 copy];

  [v4 setQualityOfService:33];
  v5 = [CWFInterface alloc];
  v6 = [(CWFInterface *)self XPCClient];
  v7 = [(CWFInterface *)v5 initWithXPCClient:v6 requestParameters:v4];

  return v7;
}

- (void)checkin
{
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:252])
  {
    XPCClient = self->_XPCClient;
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    [(CWFXPCClient *)XPCClient checkinWithRequestParameters:v4 error:0];
  }
}

- (void)checkinWithCompletion:(id)a3
{
  v9 = a3;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:252])
  {
    XPCClient = self->_XPCClient;
    v5 = [(CWFInterface *)self __adjustedRequestParameters];
    [(CWFXPCClient *)XPCClient checkinWithRequestParameters:v5 reply:v9];
  }

  else
  {
    v6 = v9;
    if (!v9)
    {
      goto LABEL_6;
    }

    v7 = *MEMORY[0x1E696A798];
    v5 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
    v8 = CWFErrorWithDescription(v7, 45, v5);
    (*(v9 + 2))(v9, v8);
  }

  v6 = v9;
LABEL_6:
}

- (void)sendXPCEvent:(id)a3
{
  v6 = a3;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:253])
  {
    v4 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B89C70];
    v5 = [(CWFInterface *)self __adjustedRequestParameters];
    [v4 sendXPCEvent:v6 requestParams:v5 reply:&unk_1F5B8AF80];
  }
}

- (void)activateWithCompletion:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  if (![(CWFInterface *)v4 isActivated]&& (([(CWFInterface *)v4 setActivated:1], [(CWFXPCClient *)v4->_XPCClient activate], [(CWFInterface *)v4 serviceType]== 8) || [(CWFInterface *)v4 serviceType]== 11 || [(CWFInterface *)v4 serviceType]== 9 || [(CWFInterface *)v4 serviceType]== 10))
  {
    [(CWFInterface *)v4 checkinWithCompletion:v5];
  }

  else if (v5)
  {
    v5[2](v5, 0);
  }

  objc_sync_exit(v4);
}

- (id)eventHandler
{
  v3 = [CWFEventID eventIDWithType:0 interfaceName:0];
  v4 = [(CWFInterface *)self eventHandlerWithEventID:v3];

  return v4;
}

- (void)setEventHandler:(id)a3
{
  v4 = a3;
  v5 = [CWFEventID eventIDWithType:0 interfaceName:0];
  [(CWFInterface *)self setEventHandler:v4 eventID:v5];
}

- (BOOL)cancelRequestsWithUUID:(id)a3 error:(id *)a4
{
  v6 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1E0BC2DB0;
  v21 = sub_1E0BC6214;
  v22 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:168])
  {
    XPCClient = self->_XPCClient;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1E0CEA128;
    v16[3] = &unk_1E86E8E30;
    v16[4] = &v17;
    v8 = [(CWFXPCClient *)XPCClient synchronousRemoteObjectProxyWithErrorHandler:v16];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1E0CEA138;
    v15[3] = &unk_1E86E8E30;
    v15[4] = &v17;
    [v8 cancelRequestsWithUUID:v6 reply:v15];
  }

  else
  {
    v12 = *MEMORY[0x1E696A798];
    v8 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
    v13 = CWFErrorWithDescription(v12, 45, v8);
    v14 = v18[5];
    v18[5] = v13;
  }

  v9 = v18[5];
  if (a4 && v9)
  {
    *a4 = v9;
    v9 = v18[5];
  }

  v10 = v9 == 0;
  _Block_object_dispose(&v17, 8);

  return v10;
}

- (int64_t)thermalIndex
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:35])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8AFA0];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CEA258;
    v7[3] = &unk_1E86E8E58;
    v7[4] = &v8;
    [v3 queryThermalIndexWithRequestParams:v4 reply:v7];
  }

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (int64_t)countryBandSupport
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:197])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8AFC0];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CEA3A8;
    v7[3] = &unk_1E86E8E58;
    v7[4] = &v8;
    [v3 queryCountryBandSupport:v4 reply:v7];
  }

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (BOOL)setThermalIndex:(int64_t)a3 error:(id *)a4
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1E0BC2DB0;
  v21 = sub_1E0BC6214;
  v22 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:36])
  {
    XPCClient = self->_XPCClient;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1E0CEA5E0;
    v16[3] = &unk_1E86E8E30;
    v16[4] = &v17;
    v8 = [(CWFXPCClient *)XPCClient synchronousRemoteObjectProxyWithErrorHandler:v16];
    v9 = [(CWFInterface *)self __adjustedRequestParameters];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1E0CEA5F0;
    v15[3] = &unk_1E86E8E30;
    v15[4] = &v17;
    [v8 setThermalIndex:a3 requestParams:v9 reply:v15];
  }

  else
  {
    v13 = *MEMORY[0x1E696A798];
    v8 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
    v14 = CWFErrorWithDescription(v13, 45, v8);
    v9 = v18[5];
    v18[5] = v14;
  }

  v10 = v18[5];
  if (a4 && v10)
  {
    *a4 = v10;
    v10 = v18[5];
  }

  v11 = v10 == 0;
  _Block_object_dispose(&v17, 8);

  return v11;
}

- (id)deviceUUID
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:145])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8AFE0];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CEA754;
    v7[3] = &unk_1E86E8E80;
    v7[4] = &v8;
    [v3 queryDeviceUUIDWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)interfaceNames
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:1])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B020];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CEA918;
    v7[3] = &unk_1E86E7708;
    v7[4] = &v8;
    [v3 queryInterfaceNamesWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)virtualInterfaceNames
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:2])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B040];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CEAAD8;
    v7[3] = &unk_1E86E7708;
    v7[4] = &v8;
    [v3 queryVirtualInterfaceNamesWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (BOOL)setChannel:(id)a3 error:(id *)a4
{
  v6 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1E0BC2DB0;
  v21 = sub_1E0BC6214;
  v22 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:17])
  {
    XPCClient = self->_XPCClient;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1E0CEAF5C;
    v16[3] = &unk_1E86E8E30;
    v16[4] = &v17;
    v8 = [(CWFXPCClient *)XPCClient synchronousRemoteObjectProxyWithErrorHandler:v16];
    v9 = [(CWFInterface *)self __adjustedRequestParameters];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1E0CEAF6C;
    v15[3] = &unk_1E86E8E30;
    v15[4] = &v17;
    [v8 setChannel:v6 requestParams:v9 reply:v15];
  }

  else
  {
    v13 = *MEMORY[0x1E696A798];
    v8 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
    v14 = CWFErrorWithDescription(v13, 45, v8);
    v9 = v18[5];
    v18[5] = v14;
  }

  v10 = v18[5];
  if (a4 && v10)
  {
    *a4 = v10;
    v10 = v18[5];
  }

  v11 = v10 == 0;
  _Block_object_dispose(&v17, 8);

  return v11;
}

- (id)performScanWithParameters:(id)a3 error:(id *)a4
{
  v6 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_1E0BC2DB0;
  v27 = sub_1E0BC6214;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1E0BC2DB0;
  v21 = sub_1E0BC6214;
  v22 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:64])
  {
    XPCClient = self->_XPCClient;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1E0CEB1EC;
    v16[3] = &unk_1E86E8E30;
    v16[4] = &v17;
    v8 = [(CWFXPCClient *)XPCClient synchronousRemoteObjectProxyWithErrorHandler:v16];
    v9 = [(CWFInterface *)self __adjustedRequestParameters];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1E0CEB1FC;
    v15[3] = &unk_1E86E8ED0;
    v15[4] = &v17;
    v15[5] = &v23;
    [v8 performScanWithParameters:v6 requestParams:v9 reply:v15];
  }

  else
  {
    v13 = *MEMORY[0x1E696A798];
    v8 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
    v14 = CWFErrorWithDescription(v13, 45, v8);
    v9 = v18[5];
    v18[5] = v14;
  }

  if (a4)
  {
    v10 = v18[5];
    if (v10)
    {
      *a4 = v10;
    }
  }

  v11 = v24[5];
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);

  return v11;
}

- (void)performScanWithParameters:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:64])
  {
    XPCClient = self->_XPCClient;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1E0CEB438;
    v17[3] = &unk_1E86E7BB8;
    v9 = v7;
    v18 = v9;
    v10 = [(CWFXPCClient *)XPCClient remoteObjectProxyWithErrorHandler:v17];
    v11 = [(CWFInterface *)self __adjustedRequestParameters];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1E0CEB454;
    v15[3] = &unk_1E86E7A88;
    v16 = v9;
    [v10 performScanWithParameters:v6 requestParams:v11 reply:v15];
  }

  else if (v7)
  {
    v12 = *MEMORY[0x1E696A798];
    v13 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
    v14 = CWFErrorWithDescription(v12, 45, v13);
    (*(v7 + 2))(v7, v14, 0);
  }
}

- (id)performANQPWithParameters:(id)a3 error:(id *)a4
{
  v6 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_1E0BC2DB0;
  v27 = sub_1E0BC6214;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1E0BC2DB0;
  v21 = sub_1E0BC6214;
  v22 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:65])
  {
    XPCClient = self->_XPCClient;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1E0CEB6DC;
    v16[3] = &unk_1E86E8E30;
    v16[4] = &v17;
    v8 = [(CWFXPCClient *)XPCClient synchronousRemoteObjectProxyWithErrorHandler:v16];
    v9 = [(CWFInterface *)self __adjustedRequestParameters];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1E0CEB6EC;
    v15[3] = &unk_1E86E8ED0;
    v15[4] = &v17;
    v15[5] = &v23;
    [v8 performANQPWithParameters:v6 requestParams:v9 reply:v15];
  }

  else
  {
    v13 = *MEMORY[0x1E696A798];
    v8 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
    v14 = CWFErrorWithDescription(v13, 45, v8);
    v9 = v18[5];
    v18[5] = v14;
  }

  if (a4)
  {
    v10 = v18[5];
    if (v10)
    {
      *a4 = v10;
    }
  }

  v11 = v24[5];
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);

  return v11;
}

- (void)performANQPWithParameters:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:65])
  {
    XPCClient = self->_XPCClient;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1E0CEB928;
    v17[3] = &unk_1E86E7BB8;
    v9 = v7;
    v18 = v9;
    v10 = [(CWFXPCClient *)XPCClient remoteObjectProxyWithErrorHandler:v17];
    v11 = [(CWFInterface *)self __adjustedRequestParameters];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1E0CEB944;
    v15[3] = &unk_1E86E7A88;
    v16 = v9;
    [v10 performANQPWithParameters:v6 requestParams:v11 reply:v15];
  }

  else if (v7)
  {
    v12 = *MEMORY[0x1E696A798];
    v13 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
    v14 = CWFErrorWithDescription(v12, 45, v13);
    (*(v7 + 2))(v7, v14, 0);
  }
}

- (BOOL)associateWithParameters:(id)a3 error:(id *)a4
{
  v6 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1E0BC2DB0;
  v21 = sub_1E0BC6214;
  v22 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:62])
  {
    XPCClient = self->_XPCClient;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1E0CEBB5C;
    v16[3] = &unk_1E86E8E30;
    v16[4] = &v17;
    v8 = [(CWFXPCClient *)XPCClient synchronousRemoteObjectProxyWithErrorHandler:v16];
    v9 = [(CWFInterface *)self __adjustedRequestParameters];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1E0CEBB6C;
    v15[3] = &unk_1E86E8E30;
    v15[4] = &v17;
    [v8 associateWithParameters:v6 requestParams:v9 reply:v15];
  }

  else
  {
    v13 = *MEMORY[0x1E696A798];
    v8 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
    v14 = CWFErrorWithDescription(v13, 45, v8);
    v9 = v18[5];
    v18[5] = v14;
  }

  v10 = v18[5];
  if (a4 && v10)
  {
    *a4 = v10;
    v10 = v18[5];
  }

  v11 = v10 == 0;
  _Block_object_dispose(&v17, 8);

  return v11;
}

- (void)associateWithParameters:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:62])
  {
    XPCClient = self->_XPCClient;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1E0CEBD24;
    v17[3] = &unk_1E86E7BB8;
    v9 = v7;
    v18 = v9;
    v10 = [(CWFXPCClient *)XPCClient remoteObjectProxyWithErrorHandler:v17];
    v11 = [(CWFInterface *)self __adjustedRequestParameters];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1E0CEBD3C;
    v15[3] = &unk_1E86E7BB8;
    v16 = v9;
    [v10 associateWithParameters:v6 requestParams:v11 reply:v15];
  }

  else if (v7)
  {
    v12 = *MEMORY[0x1E696A798];
    v13 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
    v14 = CWFErrorWithDescription(v12, 45, v13);
    (*(v7 + 2))(v7, v14);
  }
}

- (void)disassociateWithReason:(int64_t)a3
{
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:63])
  {
    v6 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B060];
    v5 = [(CWFInterface *)self __adjustedRequestParameters];
    [v6 disassociateWithReason:a3 requestParams:v5 reply:&unk_1F5B8B080];
  }
}

- (id)currentScanResult
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:57])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B0C0];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CEC000;
    v7[3] = &unk_1E86E8EF8;
    v7[4] = &v8;
    [v3 queryCurrentScanResultWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)capabilities
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:4])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B0E0];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CEC1C4;
    v7[3] = &unk_1E86E7708;
    v7[4] = &v8;
    [v3 queryInterfaceCapabilitiesWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)powerState
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:147])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B120];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CEC388;
    v7[3] = &unk_1E86E8F48;
    v7[4] = &v8;
    [v3 queryPowerStateWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)networkName
{
  v2 = [(CWFInterface *)self SSID];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v2 encoding:4];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)SSIDForVendor
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:8])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B160];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CEC5B4;
    v7[3] = &unk_1E86E8EA8;
    v7[4] = &v8;
    [v3 querySSIDForVendorWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)BSSID
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:9])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B180];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CEC774;
    v7[3] = &unk_1E86E8EA8;
    v7[4] = &v8;
    [v3 queryBSSIDWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)BSSIDForVendor
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:10])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B1A0];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CEC934;
    v7[3] = &unk_1E86E8EA8;
    v7[4] = &v8;
    [v3 queryBSSIDForVendorWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (int64_t)noise
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:19])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B1E0];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CECAB4;
    v7[3] = &unk_1E86E8E58;
    v7[4] = &v8;
    [v3 queryNoiseWithRequestParams:v4 reply:v7];
  }

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (double)txRate
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:20])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B89330];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CECC10;
    v7[3] = &unk_1E86E8E58;
    v7[4] = &v8;
    [v3 queryTxRateWithRequestParams:v4 reply:v7];
  }

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (double)txPower
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:21])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B220];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CECD68;
    v7[3] = &unk_1E86E8E58;
    v7[4] = &v8;
    [v3 queryTxPowerWithRequestParams:v4 reply:v7];
  }

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (double)rxRate
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:187])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B240];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CECEC0;
    v7[3] = &unk_1E86E8E58;
    v7[4] = &v8;
    [v3 queryRxRateWithRequestParams:v4 reply:v7];
  }

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (id)authType
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:11])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B89310];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CED054;
    v7[3] = &unk_1E86E8F48;
    v7[4] = &v8;
    [v3 queryAuthTypeWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (unint64_t)securityType
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:12])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B260];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CED1D0;
    v7[3] = &unk_1E86E8E58;
    v7[4] = &v8;
    [v3 querySecurityWithRequestParams:v4 reply:v7];
  }

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (int64_t)WEPSubtype
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:13])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B280];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CED320;
    v7[3] = &unk_1E86E8E58;
    v7[4] = &v8;
    [v3 queryWEPSubtypeWithRequestParams:v4 reply:v7];
  }

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (int64_t)WAPISubtype
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:14])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B2A0];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CED470;
    v7[3] = &unk_1E86E8E58;
    v7[4] = &v8;
    [v3 queryWAPISubtypeWithRequestParams:v4 reply:v7];
  }

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (id)countryCode
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:22])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B2C0];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CED604;
    v7[3] = &unk_1E86E8EA8;
    v7[4] = &v8;
    [v3 queryCountryCodeWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (BOOL)setCompanionCountryCode:(id)a3 error:(id *)a4
{
  v6 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1E0BC2DB0;
  v21 = sub_1E0BC6214;
  v22 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:23])
  {
    XPCClient = self->_XPCClient;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1E0CED870;
    v16[3] = &unk_1E86E8E30;
    v16[4] = &v17;
    v8 = [(CWFXPCClient *)XPCClient synchronousRemoteObjectProxyWithErrorHandler:v16];
    v9 = [(CWFInterface *)self __adjustedRequestParameters];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1E0CED880;
    v15[3] = &unk_1E86E8E30;
    v15[4] = &v17;
    [v8 setCompanionCountryCode:v6 requestParams:v9 reply:v15];
  }

  else
  {
    v13 = *MEMORY[0x1E696A798];
    v8 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
    v14 = CWFErrorWithDescription(v13, 45, v8);
    v9 = v18[5];
    v18[5] = v14;
  }

  v10 = v18[5];
  if (a4 && v10)
  {
    *a4 = v10;
    v10 = v18[5];
  }

  v11 = v10 == 0;
  _Block_object_dispose(&v17, 8);

  return v11;
}

- (int)opMode
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:30])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B2E0];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CED9A0;
    v7[3] = &unk_1E86E8E58;
    v7[4] = &v8;
    [v3 queryOpModeWithRequestParams:v4 reply:v7];
  }

  v5 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (id)maxPHYModeDescription
{
  v2 = [(CWFInterface *)self PHYMode];
  if (v2)
  {
    if ((v2 & 0x200) != 0)
    {
      v3 = @"11BE";
    }

    else if ((v2 & 0x100) != 0)
    {
      v3 = @"11AX";
    }

    else if ((v2 & 0x80) != 0)
    {
      v3 = @"11AC";
    }

    else if ((v2 & 0x10) != 0)
    {
      v3 = @"11N";
    }

    else if ((v2 & 8) != 0)
    {
      v3 = @"11G";
    }

    else if ((v2 & 0x40) != 0)
    {
      v3 = @"TURBO_G";
    }

    else if ((v2 & 2) != 0)
    {
      v3 = @"11A";
    }

    else if ((v2 & 0x20) != 0)
    {
      v3 = @"TURBO_A";
    }

    else if ((v2 & 4) != 0)
    {
      v3 = @"11B";
    }

    else
    {
      v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%X)", v2];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (int)supportedPHYModes
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:28])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B300];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CEDBE0;
    v7[3] = &unk_1E86E8E58;
    v7[4] = &v8;
    [v3 querySupportedPHYModesWithRequestParams:v4 reply:v7];
  }

  v5 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (unint64_t)networkWarningFlags
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:256])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B320];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CEDD30;
    v7[3] = &unk_1E86E8E58;
    v7[4] = &v8;
    [v3 queryNetworkWarningFlagsWithRequestParams:v4 reply:v7];
  }

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (id)supportedChannelsWithCountryCode:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1E0BC2DB0;
  v14 = sub_1E0BC6214;
  v15 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:15])
  {
    v5 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B898D0];
    v6 = [(CWFInterface *)self __adjustedRequestParameters];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1E0CEDEE0;
    v9[3] = &unk_1E86E7708;
    v9[4] = &v10;
    [v5 querySupportedChannelsWithCountryCode:v4 requestParams:v6 reply:v9];
  }

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (id)hardwareSupportedChannels
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:210])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B89890];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CEE0A0;
    v7[3] = &unk_1E86E7708;
    v7[4] = &v8;
    [v3 queryHardwareSupportedChannelsWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (unsigned)__flagsForChannelBand:(unsigned int)a3 width:(int)a4
{
  if (a3 - 1 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = dword_1E0D81C20[a3 - 1];
  }

  v5 = v4 | 0x400;
  v6 = v4 | 0x800;
  if (a4 != 160)
  {
    v6 = v4;
  }

  if (a4 != 80)
  {
    v5 = v6;
  }

  v7 = v4 | 2;
  if (a4 == 40)
  {
    v4 |= 4u;
  }

  if (a4 == 20)
  {
    v4 = v7;
  }

  if (a4 <= 79)
  {
    return v4;
  }

  else
  {
    return v5;
  }
}

- (unint64_t)MCSIndex
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:26])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B89850];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CEE3F4;
    v7[3] = &unk_1E86E8E58;
    v7[4] = &v8;
    [v3 queryMCSIndexWithRequestParams:v4 reply:v7];
  }

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (unint64_t)guardInterval
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:25])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B89830];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CEE544;
    v7[3] = &unk_1E86E8E58;
    v7[4] = &v8;
    [v3 queryGuardIntervalWithRequestParams:v4 reply:v7];
  }

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (unint64_t)numberOfSpatialStreams
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:27])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B89810];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CEE694;
    v7[3] = &unk_1E86E8E58;
    v7[4] = &v8;
    [v3 queryNumberOfSpatialStreamsWithRequestParams:v4 reply:v7];
  }

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (unint64_t)DTIMInterval
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:24])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B897F0];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CEE7E4;
    v7[3] = &unk_1E86E8E58;
    v7[4] = &v8;
    [v3 queryDTIMIntervalWithRequestParams:v4 reply:v7];
  }

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (id)parentInterfaceName
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:32])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B897D0];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CEE978;
    v7[3] = &unk_1E86E8EA8;
    v7[4] = &v8;
    [v3 queryParentInterfaceNameWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (int)virtualInterfaceRole
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:31])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B89790];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CEEAF4;
    v7[3] = &unk_1E86E8E58;
    v7[4] = &v8;
    [v3 queryVirtualInterfaceRoleWithRequestParams:v4 reply:v7];
  }

  v5 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (id)MACAddress
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:33])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B89770];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CEEC88;
    v7[3] = &unk_1E86E8EA8;
    v7[4] = &v8;
    [v3 queryMACAddressWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)hardwareMACAddress
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:173])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B89750];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CEEE48;
    v7[3] = &unk_1E86E8EA8;
    v7[4] = &v8;
    [v3 queryHardwareMACAddressWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)IO80211ControllerInfo
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:114])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B89730];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CEF008;
    v7[3] = &unk_1E86E8F98;
    v7[4] = &v8;
    [v3 queryIO80211ControllerInfoWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)IO80211InterfaceInfo
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:115])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B360];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CEF1C8;
    v7[3] = &unk_1E86E8F98;
    v7[4] = &v8;
    [v3 queryIO80211InterfaceInfoWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)powerTableInfo
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:273])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B380];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CEF388;
    v7[3] = &unk_1E86E8F98;
    v7[4] = &v8;
    [v3 queryPowerTableInfoWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)cachedRoamStatus
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:142])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B3A0];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CEF548;
    v7[3] = &unk_1E86E8FC0;
    v7[4] = &v8;
    [v3 queryRoamStatusWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)cachedJoinStatus
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:143])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B89290];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CEF708;
    v7[3] = &unk_1E86E8FE8;
    v7[4] = &v8;
    [v3 queryJoinStatusWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)cachedAutoJoinStatus
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:144])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B3C0];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CEF8C8;
    v7[3] = &unk_1E86E9010;
    v7[4] = &v8;
    [v3 queryAutoJoinStatusWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (BOOL)wakeOnWirelessEnabled
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:38])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B896F0];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CEFA44;
    v7[3] = &unk_1E86E8E58;
    v7[4] = &v8;
    [v3 queryWoWEnabledWithRequestParams:v4 reply:v7];
  }

  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (id)cachedLinkDownStatus
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:37])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B89270];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CEFBD8;
    v7[3] = &unk_1E86E9038;
    v7[4] = &v8;
    [v3 queryLinkDownStatusWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)chainAck
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:148])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B3E0];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CEFD98;
    v7[3] = &unk_1E86E8F48;
    v7[4] = &v8;
    [v3 queryChainAckWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)txChainPower
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:149])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B896D0];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CEFF58;
    v7[3] = &unk_1E86E8F48;
    v7[4] = &v8;
    [v3 queryTxChainPowerWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)desense
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:150])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B400];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CF0118;
    v7[3] = &unk_1E86E8F48;
    v7[4] = &v8;
    [v3 queryDesenseWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)desenseLevel
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:151])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B896B0];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CF02D8;
    v7[3] = &unk_1E86E8F48;
    v7[4] = &v8;
    [v3 queryDesenseLevelWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)bluetoothCoexistenceConfig
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:152])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B89690];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CF0498;
    v7[3] = &unk_1E86E8F48;
    v7[4] = &v8;
    [v3 queryBluetoothCoexConfigWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)bluetoothCoexistenceProfiles2GHz
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:153])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B89250];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CF0658;
    v7[3] = &unk_1E86E8F48;
    v7[4] = &v8;
    [v3 queryBluetoothCoexProfiles2GHzWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)bluetoothCoexistenceProfiles5GHz
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:154])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B89670];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CF0818;
    v7[3] = &unk_1E86E8F48;
    v7[4] = &v8;
    [v3 queryBluetoothCoexProfiles5GHzWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (int)bluetoothCoexistenceMode
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:155])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B89230];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CF0994;
    v7[3] = &unk_1E86E8E58;
    v7[4] = &v8;
    [v3 queryBluetoothCoexModeWithRequestParams:v4 reply:v7];
  }

  v5 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (id)leakyAPStats
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:156])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B89650];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CF0B28;
    v7[3] = &unk_1E86E8F48;
    v7[4] = &v8;
    [v3 queryLeakyAPStatsWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)LQMSummary
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:175])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B89210];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CF0CE8;
    v7[3] = &unk_1E86E8F48;
    v7[4] = &v8;
    [v3 queryLQMSummaryWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)cachedLinkQualityMetric
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:167])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B89630];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CF0EA8;
    v7[3] = &unk_1E86E9060;
    v7[4] = &v8;
    [v3 queryLinkQualityMetricWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)powerDebugInfo
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:176])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B420];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CF1068;
    v7[3] = &unk_1E86E8F98;
    v7[4] = &v8;
    [v3 queryPowerDebugInfoWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (void)performAutoJoinWithParameters:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:177])
  {
    XPCClient = self->_XPCClient;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1E0CF127C;
    v17[3] = &unk_1E86E7BB8;
    v9 = v7;
    v18 = v9;
    v10 = [(CWFXPCClient *)XPCClient remoteObjectProxyWithErrorHandler:v17];
    v11 = [(CWFInterface *)self __adjustedRequestParameters];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1E0CF1294;
    v15[3] = &unk_1E86E7BB8;
    v16 = v9;
    [v10 performAutoJoinWithParameters:v6 requestParams:v11 reply:v15];
  }

  else if (v7)
  {
    v12 = *MEMORY[0x1E696A798];
    v13 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
    v14 = CWFErrorWithDescription(v12, 45, v13);
    (*(v7 + 2))(v7, v14);
  }
}

- (BOOL)performAutoJoinWithParameters:(id)a3 error:(id *)a4
{
  v6 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1E0BC2DB0;
  v21 = sub_1E0BC6214;
  v22 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:177])
  {
    XPCClient = self->_XPCClient;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1E0CF14AC;
    v16[3] = &unk_1E86E8E30;
    v16[4] = &v17;
    v8 = [(CWFXPCClient *)XPCClient synchronousRemoteObjectProxyWithErrorHandler:v16];
    v9 = [(CWFInterface *)self __adjustedRequestParameters];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1E0CF14BC;
    v15[3] = &unk_1E86E8E30;
    v15[4] = &v17;
    [v8 performAutoJoinWithParameters:v6 requestParams:v9 reply:v15];
  }

  else
  {
    v13 = *MEMORY[0x1E696A798];
    v8 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
    v14 = CWFErrorWithDescription(v13, 45, v8);
    v9 = v18[5];
    v18[5] = v14;
  }

  v10 = v18[5];
  if (a4 && v10)
  {
    *a4 = v10;
    v10 = v18[5];
  }

  v11 = v10 == 0;
  _Block_object_dispose(&v17, 8);

  return v11;
}

- (BOOL)userAutoJoinDisabled
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:179])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B440];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CF15DC;
    v7[3] = &unk_1E86E8E58;
    v7[4] = &v8;
    [v3 queryUserAutoJoinStateWithRequestParams:v4 reply:v7];
  }

  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (BOOL)setUserAutoJoinDisabled:(BOOL)a3 error:(id *)a4
{
  v5 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1E0BC2DB0;
  v21 = sub_1E0BC6214;
  v22 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:180])
  {
    XPCClient = self->_XPCClient;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1E0CF1814;
    v16[3] = &unk_1E86E8E30;
    v16[4] = &v17;
    v8 = [(CWFXPCClient *)XPCClient synchronousRemoteObjectProxyWithErrorHandler:v16];
    v9 = [(CWFInterface *)self __adjustedRequestParameters];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1E0CF1824;
    v15[3] = &unk_1E86E8E30;
    v15[4] = &v17;
    [v8 setUserAutoJoinState:!v5 requestParams:v9 reply:v15];
  }

  else
  {
    v13 = *MEMORY[0x1E696A798];
    v8 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
    v14 = CWFErrorWithDescription(v13, 45, v8);
    v9 = v18[5];
    v18[5] = v14;
  }

  v10 = v18[5];
  if (a4 && v10)
  {
    *a4 = v10;
    v10 = v18[5];
  }

  v11 = v10 == 0;
  _Block_object_dispose(&v17, 8);

  return v11;
}

- (int64_t)autoHotspotMode
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:182])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B460];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CF1944;
    v7[3] = &unk_1E86E8E58;
    v7[4] = &v8;
    [v3 queryAutoHotspotModeWithRequestParams:v4 reply:v7];
  }

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (BOOL)setAutoHotspotMode:(int64_t)a3 error:(id *)a4
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1E0BC2DB0;
  v21 = sub_1E0BC6214;
  v22 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:183])
  {
    XPCClient = self->_XPCClient;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1E0CF1B7C;
    v16[3] = &unk_1E86E8E30;
    v16[4] = &v17;
    v8 = [(CWFXPCClient *)XPCClient synchronousRemoteObjectProxyWithErrorHandler:v16];
    v9 = [(CWFInterface *)self __adjustedRequestParameters];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1E0CF1B8C;
    v15[3] = &unk_1E86E8E30;
    v15[4] = &v17;
    [v8 setAutoHotspotMode:a3 requestParams:v9 reply:v15];
  }

  else
  {
    v13 = *MEMORY[0x1E696A798];
    v8 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
    v14 = CWFErrorWithDescription(v13, 45, v8);
    v9 = v18[5];
    v18[5] = v14;
  }

  v10 = v18[5];
  if (a4 && v10)
  {
    *a4 = v10;
    v10 = v18[5];
  }

  v11 = v10 == 0;
  _Block_object_dispose(&v17, 8);

  return v11;
}

- (unint64_t)wifiUIStateFlags
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:185])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B480];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CF1CAC;
    v7[3] = &unk_1E86E8E58;
    v7[4] = &v8;
    [v3 queryWiFiUIStateFlagsWithRequestParams:v4 reply:v7];
  }

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (unint64_t)maxLinkSpeed
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:211])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B4A0];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CF1DFC;
    v7[3] = &unk_1E86E8E58;
    v7[4] = &v8;
    [v3 queryMaxLinkSpeedWithRequestParams:v4 reply:v7];
  }

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (int)state
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:212])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B4C0];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CF1F4C;
    v7[3] = &unk_1E86E8E58;
    v7[4] = &v8;
    [v3 queryStateWithRequestParams:v4 reply:v7];
  }

  v5 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (int)powersave
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:213])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B4E0];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CF209C;
    v7[3] = &unk_1E86E8E58;
    v7[4] = &v8;
    [v3 queryPowersaveWithRequestParams:v4 reply:v7];
  }

  v5 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (unint64_t)maxNSSForAP
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:214])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B500];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CF21EC;
    v7[3] = &unk_1E86E8E58;
    v7[4] = &v8;
    [v3 queryMaxNSSForAPWithRequestParams:v4 reply:v7];
  }

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (unint64_t)txNSS
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:215])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B520];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CF233C;
    v7[3] = &unk_1E86E8E58;
    v7[4] = &v8;
    [v3 queryTxNSSWithRequestParams:v4 reply:v7];
  }

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (id)beaconCache
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:216])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B540];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CF24D0;
    v7[3] = &unk_1E86E7708;
    v7[4] = &v8;
    [v3 queryBeaconCacheWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)backgroundScanCache
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:241])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B560];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CF2690;
    v7[3] = &unk_1E86E7708;
    v7[4] = &v8;
    [v3 queryBackgroundScanCacheWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (BOOL)setBackgroundScanConfiguration:(id)a3 error:(id *)a4
{
  v6 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1E0BC2DB0;
  v19 = sub_1E0BC6214;
  v20 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:244])
  {
    XPCClient = self->_XPCClient;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1E0CF28B8;
    v14[3] = &unk_1E86E8E30;
    v14[4] = &v15;
    v8 = [(CWFXPCClient *)XPCClient synchronousRemoteObjectProxyWithErrorHandler:v14];
    v9 = [(CWFInterface *)self __adjustedRequestParameters];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1E0CF28C8;
    v13[3] = &unk_1E86E8E30;
    v13[4] = &v15;
    [v8 setBackgroundScanConfiguration:v6 requestParams:v9 reply:v13];
  }

  v10 = v16[5];
  if (a4 && v10)
  {
    *a4 = v10;
    v10 = v16[5];
  }

  v11 = v10 == 0;
  _Block_object_dispose(&v15, 8);

  return v11;
}

- (id)backgroundScanConfiguration
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:241])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B580];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CF2A2C;
    v7[3] = &unk_1E86E9088;
    v7[4] = &v8;
    [v3 queryBackgroundScanConfigurationWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)blockedBands
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if (_os_feature_enabled_impl() && [(CWFXPCClient *)self->_XPCClient allowRequestType:217])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B5A0];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CF2C04;
    v7[3] = &unk_1E86E7708;
    v7[4] = &v8;
    [v3 queryBlockedBandsWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (BOOL)setBlockedBands:(id)a3 error:(id *)a4
{
  v6 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1E0BC2DB0;
  v21 = sub_1E0BC6214;
  v22 = 0;
  if (_os_feature_enabled_impl() && [(CWFXPCClient *)self->_XPCClient allowRequestType:218])
  {
    XPCClient = self->_XPCClient;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1E0CF2E88;
    v16[3] = &unk_1E86E8E30;
    v16[4] = &v17;
    v8 = [(CWFXPCClient *)XPCClient synchronousRemoteObjectProxyWithErrorHandler:v16];
    v9 = [(CWFInterface *)self __adjustedRequestParameters];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1E0CF2E98;
    v15[3] = &unk_1E86E8E30;
    v15[4] = &v17;
    [v8 setBlockedBands:v6 requestParams:v9 reply:v15];
  }

  else
  {
    v13 = *MEMORY[0x1E696A798];
    v8 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
    v14 = CWFErrorWithDescription(v13, 45, v8);
    v9 = v18[5];
    v18[5] = v14;
  }

  v10 = v18[5];
  if (a4 && v10)
  {
    *a4 = v10;
    v10 = v18[5];
  }

  v11 = v10 == 0;
  _Block_object_dispose(&v17, 8);

  return v11;
}

- (id)linkQualityMetricConfiguration
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:234])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B5C0];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CF2FFC;
    v7[3] = &unk_1E86E8F98;
    v7[4] = &v8;
    [v3 queryLQMConfigurationWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (BOOL)setLinkQualityMetricConfiguration:(id)a3 error:(id *)a4
{
  v6 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1E0BC2DB0;
  v21 = sub_1E0BC6214;
  v22 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:235])
  {
    XPCClient = self->_XPCClient;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1E0CF3268;
    v16[3] = &unk_1E86E8E30;
    v16[4] = &v17;
    v8 = [(CWFXPCClient *)XPCClient synchronousRemoteObjectProxyWithErrorHandler:v16];
    v9 = [(CWFInterface *)self __adjustedRequestParameters];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1E0CF3278;
    v15[3] = &unk_1E86E8E30;
    v15[4] = &v17;
    [v8 setLQMConfiguration:v6 requestParams:v9 reply:v15];
  }

  else
  {
    v13 = *MEMORY[0x1E696A798];
    v8 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
    v14 = CWFErrorWithDescription(v13, 45, v8);
    v9 = v18[5];
    v18[5] = v14;
  }

  v10 = v18[5];
  if (a4 && v10)
  {
    *a4 = v10;
    v10 = v18[5];
  }

  v11 = v10 == 0;
  _Block_object_dispose(&v17, 8);

  return v11;
}

- (void)dumpLogs:(id)a3
{
  v6 = a3;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:254])
  {
    v4 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B891B0];
    v5 = [(CWFInterface *)self __adjustedRequestParameters];
    [v4 dumpLogs:v6 requestParams:v5 reply:&unk_1F5B8B600];
  }
}

- (BOOL)beginActivity:(id)a3 error:(id *)a4
{
  XPCClient = self->_XPCClient;
  v7 = a3;
  v8 = [(CWFInterface *)self __adjustedRequestParameters];
  LOBYTE(a4) = [(CWFXPCClient *)XPCClient beginActivity:v7 requestParameters:v8 error:a4];

  return a4;
}

- (void)endActivity:(id)a3
{
  XPCClient = self->_XPCClient;
  v5 = a3;
  v6 = [(CWFInterface *)self __adjustedRequestParameters];
  [(CWFXPCClient *)XPCClient endActivity:v5 requestParameters:v6];
}

- (void)endAllActivities
{
  XPCClient = self->_XPCClient;
  v3 = [(CWFInterface *)self __adjustedRequestParameters];
  [(CWFXPCClient *)XPCClient endAllActivities:v3];
}

- (void)performActivity:(id)a3 usingBlock:(id)a4
{
  if (a3 && a4)
  {
    v6 = a4;
    v7 = a3;
    [(CWFInterface *)self beginActivity:v7 error:0];
    v6[2](v6);

    [(CWFInterface *)self endActivity:v7];
  }
}

- (BOOL)beginActivityType:(int64_t)a3 reason:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [(CWFInterface *)self requestParameters];
  v10 = [v9 UUID];
  v11 = [CWFActivity activityWithType:a3 reason:v8 UUID:v10];

  XPCClient = self->_XPCClient;
  v13 = [(CWFInterface *)self __adjustedRequestParameters];
  LOBYTE(a5) = [(CWFXPCClient *)XPCClient beginActivity:v11 requestParameters:v13 error:a5];

  return a5;
}

- (void)endActivityType:(int64_t)a3
{
  v5 = [(CWFInterface *)self requestParameters];
  v6 = [v5 UUID];
  v9 = [CWFActivity activityWithType:a3 reason:0 UUID:v6];

  XPCClient = self->_XPCClient;
  v8 = [(CWFInterface *)self __adjustedRequestParameters];
  [(CWFXPCClient *)XPCClient endActivity:v9 requestParameters:v8];
}

- (id)activities
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:112])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B89190];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CF3840;
    v7[3] = &unk_1E86E7708;
    v7[4] = &v8;
    [v3 queryActivitiesWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)systemActivities
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:113])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B620];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CF3A00;
    v7[3] = &unk_1E86E7708;
    v7[4] = &v8;
    [v3 querySystemActivitiesWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)eventIDs
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:98])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B640];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CF3BC0;
    v7[3] = &unk_1E86E90B0;
    v7[4] = &v8;
    [v3 queryEventIDsWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)systemEventIDs
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:99])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B660];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CF3D80;
    v7[3] = &unk_1E86E90B0;
    v7[4] = &v8;
    [v3 querySystemEventIDsWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (BOOL)startMonitoringEventType:(int64_t)a3 error:(id *)a4
{
  v6 = [CWFEventID eventIDWithType:a3 interfaceName:0];
  LOBYTE(a4) = [(CWFInterface *)self startMonitoringEvent:v6 error:a4];

  return a4;
}

- (BOOL)startMonitoringEvent:(id)a3 error:(id *)a4
{
  XPCClient = self->_XPCClient;
  v7 = a3;
  v8 = [(CWFInterface *)self __adjustedRequestParameters];
  LOBYTE(a4) = [(CWFXPCClient *)XPCClient startMonitoringEvent:v7 requestParameters:v8 error:a4];

  return a4;
}

- (void)stopMonitoringEventType:(int64_t)a3
{
  v4 = [CWFEventID eventIDWithType:a3 interfaceName:0];
  [(CWFInterface *)self stopMonitoringEvent:v4];
}

- (void)stopMonitoringEvent:(id)a3
{
  XPCClient = self->_XPCClient;
  v5 = a3;
  v6 = [(CWFInterface *)self __adjustedRequestParameters];
  [(CWFXPCClient *)XPCClient stopMonitoringEvent:v5 requestParameters:v6];
}

- (void)stopMonitoringAllEvents
{
  XPCClient = self->_XPCClient;
  v3 = [(CWFInterface *)self __adjustedRequestParameters];
  [(CWFXPCClient *)XPCClient stopMonitoringAllEvents:v3];
}

- (id)knownNetworkProfilesWithProperties:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1E0BC2DB0;
  v14 = sub_1E0BC6214;
  v15 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:54])
  {
    v5 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B89170];
    v6 = [(CWFInterface *)self __adjustedRequestParameters];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1E0CF4164;
    v9[3] = &unk_1E86E7708;
    v9[4] = &v10;
    [v5 queryKnownNetworkProfilesWithProperties:v4 requestParams:v6 reply:v9];
  }

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (id)knownNetworkProfileMatchingScanResult:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1E0BC2DB0;
  v14 = sub_1E0BC6214;
  v15 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:56])
  {
    v5 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B895B0];
    v6 = [(CWFInterface *)self __adjustedRequestParameters];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1E0CF433C;
    v9[3] = &unk_1E86E8F20;
    v9[4] = &v10;
    [v5 queryKnownNetworkProfileMatchingScanResult:v4 requestParams:v6 reply:v9];
  }

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (id)knownNetworkProfileMatchingNetworkProfile:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1E0BC2DB0;
  v14 = sub_1E0BC6214;
  v15 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:55])
  {
    v5 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B680];
    v6 = [(CWFInterface *)self __adjustedRequestParameters];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1E0CF4514;
    v9[3] = &unk_1E86E8F20;
    v9[4] = &v10;
    [v5 queryKnownNetworkProfileMatchingNetworkProfile:v4 requestParams:v6 reply:v9];
  }

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (BOOL)updateKnownNetworkProfile:(id)a3 properties:(id)a4 OSSpecificKeys:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_1E0BC2DB0;
  v27 = sub_1E0BC6214;
  v28 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:61])
  {
    XPCClient = self->_XPCClient;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = sub_1E0CF47B0;
    v22[3] = &unk_1E86E8E30;
    v22[4] = &v23;
    v14 = [(CWFXPCClient *)XPCClient synchronousRemoteObjectProxyWithErrorHandler:v22];
    v15 = [(CWFInterface *)self __adjustedRequestParameters];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = sub_1E0CF47C0;
    v21[3] = &unk_1E86E8E30;
    v21[4] = &v23;
    [v14 updateKnownNetworkProfile:v10 properties:v11 OSSpecificKeys:v12 requestParams:v15 reply:v21];
  }

  else
  {
    v19 = *MEMORY[0x1E696A798];
    v14 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
    v20 = CWFErrorWithDescription(v19, 45, v14);
    v15 = v24[5];
    v24[5] = v20;
  }

  v16 = v24[5];
  if (a6 && v16)
  {
    *a6 = v16;
    v16 = v24[5];
  }

  v17 = v16 == 0;
  _Block_object_dispose(&v23, 8);

  return v17;
}

- (BOOL)addKnownNetworkProfile:(id)a3 error:(id *)a4
{
  v6 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1E0BC2DB0;
  v21 = sub_1E0BC6214;
  v22 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:59])
  {
    XPCClient = self->_XPCClient;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1E0CF49DC;
    v16[3] = &unk_1E86E8E30;
    v16[4] = &v17;
    v8 = [(CWFXPCClient *)XPCClient synchronousRemoteObjectProxyWithErrorHandler:v16];
    v9 = [(CWFInterface *)self __adjustedRequestParameters];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1E0CF49EC;
    v15[3] = &unk_1E86E8E30;
    v15[4] = &v17;
    [v8 addKnownNetworkProfile:v6 requestParams:v9 reply:v15];
  }

  else
  {
    v13 = *MEMORY[0x1E696A798];
    v8 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
    v14 = CWFErrorWithDescription(v13, 45, v8);
    v9 = v18[5];
    v18[5] = v14;
  }

  v10 = v18[5];
  if (a4 && v10)
  {
    *a4 = v10;
    v10 = v18[5];
  }

  v11 = v10 == 0;
  _Block_object_dispose(&v17, 8);

  return v11;
}

- (BOOL)removeKnownNetworkProfile:(id)a3 reason:(int64_t)a4 error:(id *)a5
{
  v8 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1E0BC2DB0;
  v23 = sub_1E0BC6214;
  v24 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:60])
  {
    XPCClient = self->_XPCClient;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_1E0CF4C04;
    v18[3] = &unk_1E86E8E30;
    v18[4] = &v19;
    v10 = [(CWFXPCClient *)XPCClient synchronousRemoteObjectProxyWithErrorHandler:v18];
    v11 = [(CWFInterface *)self __adjustedRequestParameters];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1E0CF4C14;
    v17[3] = &unk_1E86E8E30;
    v17[4] = &v19;
    [v10 removeKnownNetworkProfile:v8 reason:a4 requestParams:v11 reply:v17];
  }

  else
  {
    v15 = *MEMORY[0x1E696A798];
    v10 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
    v16 = CWFErrorWithDescription(v15, 45, v10);
    v11 = v20[5];
    v20[5] = v16;
  }

  v12 = v20[5];
  if (a5 && v12)
  {
    *a5 = v12;
    v12 = v20[5];
  }

  v13 = v12 == 0;
  _Block_object_dispose(&v19, 8);

  return v13;
}

- (BOOL)updateKnownBSS:(id)a3 knownNetworkProfile:(id)a4 properties:(id)a5 OSSpecificKeys:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_1E0BC2DB0;
  v30 = sub_1E0BC6214;
  v31 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:200])
  {
    XPCClient = self->_XPCClient;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = sub_1E0CF4E68;
    v25[3] = &unk_1E86E8E30;
    v25[4] = &v26;
    v17 = [(CWFXPCClient *)XPCClient synchronousRemoteObjectProxyWithErrorHandler:v25];
    v18 = [(CWFInterface *)self __adjustedRequestParameters];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = sub_1E0CF4E78;
    v24[3] = &unk_1E86E8E30;
    v24[4] = &v26;
    [v17 updateKnownBSS:v12 knownNetworkProfile:v13 properties:v14 OSSpecificKeys:v15 requestParams:v18 reply:v24];
  }

  else
  {
    v22 = *MEMORY[0x1E696A798];
    v17 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
    v23 = CWFErrorWithDescription(v22, 45, v17);
    v18 = v27[5];
    v27[5] = v23;
  }

  v19 = v27[5];
  if (a7 && v19)
  {
    *a7 = v19;
    v19 = v27[5];
  }

  v20 = v19 == 0;
  _Block_object_dispose(&v26, 8);

  return v20;
}

- (BOOL)addKnownBSS:(id)a3 knownNetworkProfile:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_1E0BC2DB0;
  v24 = sub_1E0BC6214;
  v25 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:198])
  {
    XPCClient = self->_XPCClient;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1E0CF50A8;
    v19[3] = &unk_1E86E8E30;
    v19[4] = &v20;
    v11 = [(CWFXPCClient *)XPCClient synchronousRemoteObjectProxyWithErrorHandler:v19];
    v12 = [(CWFInterface *)self __adjustedRequestParameters];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_1E0CF50B8;
    v18[3] = &unk_1E86E8E30;
    v18[4] = &v20;
    [v11 addKnownBSS:v8 knownNetworkProfile:v9 requestParams:v12 reply:v18];
  }

  else
  {
    v16 = *MEMORY[0x1E696A798];
    v11 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
    v17 = CWFErrorWithDescription(v16, 45, v11);
    v12 = v21[5];
    v21[5] = v17;
  }

  v13 = v21[5];
  if (a5 && v13)
  {
    *a5 = v13;
    v13 = v21[5];
  }

  v14 = v13 == 0;
  _Block_object_dispose(&v20, 8);

  return v14;
}

- (BOOL)removeKnownBSS:(id)a3 knownNetworkProfile:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_1E0BC2DB0;
  v24 = sub_1E0BC6214;
  v25 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:199])
  {
    XPCClient = self->_XPCClient;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1E0CF52DC;
    v19[3] = &unk_1E86E8E30;
    v19[4] = &v20;
    v11 = [(CWFXPCClient *)XPCClient synchronousRemoteObjectProxyWithErrorHandler:v19];
    v12 = [(CWFInterface *)self __adjustedRequestParameters];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_1E0CF52EC;
    v18[3] = &unk_1E86E8E30;
    v18[4] = &v20;
    [v11 removeKnownBSS:v8 knownNetworkProfile:v9 requestParams:v12 reply:v18];
  }

  else
  {
    v16 = *MEMORY[0x1E696A798];
    v11 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
    v17 = CWFErrorWithDescription(v16, 45, v11);
    v12 = v21[5];
    v21[5] = v17;
  }

  v13 = v21[5];
  if (a5 && v13)
  {
    *a5 = v13;
    v13 = v21[5];
  }

  v14 = v13 == 0;
  _Block_object_dispose(&v20, 8);

  return v14;
}

- (id)passwordForKnownNetworkProfile:(id)a3 error:(id *)a4
{
  v6 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_1E0BC2DB0;
  v26 = sub_1E0BC6214;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1E0BC2DB0;
  v20 = sub_1E0BC6214;
  v21 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:201])
  {
    XPCClient = self->_XPCClient;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1E0CF553C;
    v15[3] = &unk_1E86E8E30;
    v15[4] = &v22;
    v8 = [(CWFXPCClient *)XPCClient synchronousRemoteObjectProxyWithErrorHandler:v15];
    v9 = [(CWFInterface *)self __adjustedRequestParameters];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1E0CF554C;
    v14[3] = &unk_1E86E90D8;
    v14[4] = &v22;
    v14[5] = &v16;
    [v8 queryPasswordForKnownNetworkProfile:v6 requestParams:v9 reply:v14];
  }

  v10 = v23[5];
  if (a4 && v10)
  {
    *a4 = v10;
    v10 = v23[5];
  }

  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = v17[5];
  }

  v12 = v11;
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);

  return v12;
}

- (BOOL)setPassword:(id)a3 knownNetworkProfile:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_1E0BC2DB0;
  v24 = sub_1E0BC6214;
  v25 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:202])
  {
    XPCClient = self->_XPCClient;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1E0CF57E8;
    v19[3] = &unk_1E86E8E30;
    v19[4] = &v20;
    v11 = [(CWFXPCClient *)XPCClient synchronousRemoteObjectProxyWithErrorHandler:v19];
    v12 = [(CWFInterface *)self __adjustedRequestParameters];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_1E0CF57F8;
    v18[3] = &unk_1E86E8E30;
    v18[4] = &v20;
    [v11 setPassword:v8 knownNetworkProfile:v9 requestParams:v12 reply:v18];
  }

  else
  {
    v16 = *MEMORY[0x1E696A798];
    v11 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
    v17 = CWFErrorWithDescription(v16, 45, v11);
    v12 = v21[5];
    v21[5] = v17;
  }

  v13 = v21[5];
  if (a5 && v13)
  {
    *a5 = v13;
    v13 = v21[5];
  }

  v14 = v13 == 0;
  _Block_object_dispose(&v20, 8);

  return v14;
}

- (id)knownNetworkInfoForLocalNetworkPromptWithOptions:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1E0BC2DB0;
  v14 = sub_1E0BC6214;
  v15 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:248])
  {
    v5 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B89590];
    v6 = [(CWFInterface *)self __adjustedRequestParameters];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1E0CF5974;
    v9[3] = &unk_1E86E8F98;
    v9[4] = &v10;
    [v5 queryKnownNetworkInfoForLocalNetworkPromptWithOptions:v4 requestParams:v6 reply:v9];
  }

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (id)_knownNetworkProfilesInSameLanAsNetworkName:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1E0BC2DB0;
  v17 = sub_1E0BC6214;
  v18 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:258])
  {
    v5 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B6A0];
    v6 = [(CWFInterface *)self __adjustedRequestParameters];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E0CF5F24;
    v12[3] = &unk_1E86E7708;
    v12[4] = &v13;
    [v5 queryKnownNetworksInSameLanAs:v4 requestParams:v6 reply:v12];
  }

  else
  {
    v10 = CWFGetOSLog();
    if (v10)
    {
      v5 = CWFGetOSLog();
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
      v11 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v19 = 136446722;
      v20 = "[CWFInterface _knownNetworkProfilesInSameLanAsNetworkName:]";
      v21 = 2082;
      v22 = "CWFInterface.m";
      v23 = 1024;
      v24 = 3216;
      _os_log_send_and_compose_impl();
    }
  }

  v7 = v14[5];
  _Block_object_dispose(&v13, 8);

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)knownNetworkProfilesInSameLanAsNetworkName:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v3 = [(CWFInterface *)self _knownNetworkProfilesInSameLanAsNetworkName:?];
  }

  else
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

    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      _os_log_send_and_compose_impl();
    }

    v3 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)knownNetworkProfilesWithNetworkSignature:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1E0BC2DB0;
  v19 = sub_1E0BC6214;
  v20 = 0;
  if (v4)
  {
    if ([(CWFXPCClient *)self->_XPCClient allowRequestType:259])
    {
      v5 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B6C0];
      v6 = [(CWFInterface *)self __adjustedRequestParameters];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = sub_1E0CF63D0;
      v14[3] = &unk_1E86E7708;
      v14[4] = &v15;
      [v5 queryKnownNetworksWithNetworkSignature:v4 requestParams:v6 reply:v14];

      goto LABEL_4;
    }

    v11 = CWFGetOSLog();
    if (v11)
    {
      v5 = CWFGetOSLog();
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
      v13 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    v21 = 136446722;
    v22 = "[CWFInterface knownNetworkProfilesWithNetworkSignature:]";
    v23 = 2082;
    v24 = "CWFInterface.m";
    v25 = 1024;
    v26 = 3260;
  }

  else
  {
    v10 = CWFGetOSLog();
    if (v10)
    {
      v5 = CWFGetOSLog();
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
      v12 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    v21 = 136446722;
    v22 = "[CWFInterface knownNetworkProfilesWithNetworkSignature:]";
    v23 = 2082;
    v24 = "CWFInterface.m";
    v25 = 1024;
    v26 = 3258;
  }

  _os_log_send_and_compose_impl();
LABEL_4:

  v7 = v16[5];
  _Block_object_dispose(&v15, 8);

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (BOOL)addKnownNetworksForMigration:(id)a3 error:(id *)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = a3;
  v5 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v33;
    v8 = *MEMORY[0x1E696A798];
    v9 = 1;
    while (1)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v33 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v11 = [[CWFNetworkProfile alloc] initWithMigrationData:*(*(&v32 + 1) + 8 * i)];
        if (v11)
        {
          v31 = 0;
          v12 = [(CWFInterface *)self addKnownNetworkProfile:v11 error:&v31];
          v13 = v31;
          if (v12)
          {
            goto LABEL_24;
          }

          v14 = CWFGetOSLog();
          if (v14)
          {
            v15 = CWFGetOSLog();
          }

          else
          {
            v15 = MEMORY[0x1E69E9C10];
            v20 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v21 = objc_alloc(MEMORY[0x1E696AEC0]);
            v22 = [(CWFNetworkProfile *)v11 SSID];
            v23 = [v21 initWithData:v22 encoding:4];
            v24 = v23;
            v36 = 138412546;
            v25 = @"<invalid-SSID>";
            if (v23)
            {
              v25 = v23;
            }

            v37 = v25;
            v38 = 2112;
            v39 = v13;
            _os_log_send_and_compose_impl();
          }

          if (a4)
          {
            v26 = v13;
            v9 = 0;
            *a4 = v13;
            goto LABEL_24;
          }
        }

        else
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
            LOWORD(v36) = 0;
            _os_log_send_and_compose_impl();
          }

          v19 = CWFErrorDescription(v8, 5uLL);
          *a4 = CWFErrorWithDescription(v8, 5, v19);

          v13 = 0;
        }

        v9 = 0;
LABEL_24:
      }

      v6 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
      if (!v6)
      {
        goto LABEL_28;
      }
    }
  }

  v9 = 1;
LABEL_28:

  v27 = *MEMORY[0x1E69E9840];
  return v9 & 1;
}

- (id)knownNetworkProfilesForMigration
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = [MEMORY[0x1E695DF70] array];
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:54])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B89110];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CF69CC;
    v7[3] = &unk_1E86E7708;
    v7[4] = &v8;
    [v3 queryKnownNetworkProfilesWithProperties:0 requestParams:v4 reply:v7];
  }

  v5 = [v9[5] copy];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)cloudNetworks
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:255])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B6E0];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CF6DB8;
    v7[3] = &unk_1E86E7708;
    v7[4] = &v8;
    [v3 getCloudNetworksWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)nearbyRecommendedNetworks
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:260])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B700];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CF6F78;
    v7[3] = &unk_1E86E7708;
    v7[4] = &v8;
    [v3 getNearbyRecommendedNetworksWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)recommendedKnownNetworks
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:266])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B720];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CF7138;
    v7[3] = &unk_1E86E7708;
    v7[4] = &v8;
    [v3 getRecommendedKnownNetworksWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)networkServiceID
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:120])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B740];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CF72F8;
    v7[3] = &unk_1E86E8EA8;
    v7[4] = &v8;
    [v3 queryNetworkServiceIDWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)networkServiceName
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:121])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B760];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CF74B8;
    v7[3] = &unk_1E86E8EA8;
    v7[4] = &v8;
    [v3 queryNetworkServiceNameWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (BOOL)isNetworkServiceEnabled
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:122])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B780];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CF7634;
    v7[3] = &unk_1E86E8E58;
    v7[4] = &v8;
    [v3 queryIsNetworkServiceEnabledWithRequestParams:v4 reply:v7];
  }

  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (id)IPv4RouterAddress
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:117])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B7A0];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CF77C8;
    v7[3] = &unk_1E86E8EA8;
    v7[4] = &v8;
    [v3 queryIPv4RouterWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)IPv4Addresses
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:116])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B7C0];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CF7988;
    v7[3] = &unk_1E86E7708;
    v7[4] = &v8;
    [v3 queryIPv4AddressesWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)IPv4SubnetMasks
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:203])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B7E0];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CF7B48;
    v7[3] = &unk_1E86E7708;
    v7[4] = &v8;
    [v3 queryIPv4SubnetMasksWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)IPv4ARPResolvedHardwareAddress
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:204])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B800];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CF7D08;
    v7[3] = &unk_1E86E8EA8;
    v7[4] = &v8;
    [v3 queryIPv4ARPResolvedHardwareAddressWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)IPv4ARPResolvedIPAddress
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:205])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B820];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CF7EC8;
    v7[3] = &unk_1E86E8EA8;
    v7[4] = &v8;
    [v3 queryIPv4ARPResolvedIPAddressWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)IPv6RouterAddress
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:119])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B840];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CF8088;
    v7[3] = &unk_1E86E8EA8;
    v7[4] = &v8;
    [v3 queryIPv6RouterWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)IPv6Addresses
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:118])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B860];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CF8248;
    v7[3] = &unk_1E86E7708;
    v7[4] = &v8;
    [v3 queryIPv6AddressesWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)DNSServerAddresses
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:125])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B890F0];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CF8408;
    v7[3] = &unk_1E86E7708;
    v7[4] = &v8;
    [v3 queryDNSServerAddressesWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)DHCPLeaseStartedAt
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:123])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B880];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CF85C8;
    v7[3] = &unk_1E86E9128;
    v7[4] = &v8;
    [v3 queryDHCPLeaseStartTimeWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)DHCPLeaseExpiresAt
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:124])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B8A0];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CF8788;
    v7[3] = &unk_1E86E9128;
    v7[4] = &v8;
    [v3 queryDHCPLeaseExpirationTimeWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)DHCPServerID
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:206])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B8C0];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CF8948;
    v7[3] = &unk_1E86E8F48;
    v7[4] = &v8;
    [v3 queryDHCPServerIDWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)DHCPv6ServerID
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:207])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B8E0];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CF8B08;
    v7[3] = &unk_1E86E8F48;
    v7[4] = &v8;
    [v3 queryDHCPv6ServerIDWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)IPv4NetworkSignature
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:208])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B900];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CF8CC8;
    v7[3] = &unk_1E86E8EA8;
    v7[4] = &v8;
    [v3 queryIPv4NetworkSignatureWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)IPv6NetworkSignature
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:209])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B920];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CF8E88;
    v7[3] = &unk_1E86E8EA8;
    v7[4] = &v8;
    [v3 queryIPv6NetworkSignatureWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)globalIPv4InterfaceName
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:130])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B940];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CF9048;
    v7[3] = &unk_1E86E8EA8;
    v7[4] = &v8;
    [v3 queryGlobalIPv4InterfaceNameWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)globalIPv4NetworkServiceID
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:128])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B960];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CF9208;
    v7[3] = &unk_1E86E8EA8;
    v7[4] = &v8;
    [v3 queryGlobalIPv4NetworkServiceIDWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)globalIPv4NetworkServiceName
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:129])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B980];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CF93C8;
    v7[3] = &unk_1E86E8EA8;
    v7[4] = &v8;
    [v3 queryGlobalIPv4NetworkServiceNameWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)globalIPv4RouterAddress
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:127])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B9A0];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CF9588;
    v7[3] = &unk_1E86E8EA8;
    v7[4] = &v8;
    [v3 queryGlobalIPv4RouterWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)globalIPv4Addresses
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:126])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B9C0];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CF9748;
    v7[3] = &unk_1E86E7708;
    v7[4] = &v8;
    [v3 queryGlobalIPv4AddressesWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)globalIPv6InterfaceName
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:135])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8B9E0];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CF9908;
    v7[3] = &unk_1E86E8EA8;
    v7[4] = &v8;
    [v3 queryGlobalIPv6InterfaceNameWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)globalIPv6NetworkServiceID
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:133])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8BA00];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CF9AC8;
    v7[3] = &unk_1E86E8EA8;
    v7[4] = &v8;
    [v3 queryGlobalIPv6NetworkServiceIDWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)globalIPv6NetworkServiceName
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:134])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8BA20];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CF9C88;
    v7[3] = &unk_1E86E8EA8;
    v7[4] = &v8;
    [v3 queryGlobalIPv6NetworkServiceNameWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)globalIPv6RouterAddress
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:132])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8BA40];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CF9E48;
    v7[3] = &unk_1E86E8EA8;
    v7[4] = &v8;
    [v3 queryGlobalIPv6RouterWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)globalIPv6Addresses
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:131])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8BA60];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CFA008;
    v7[3] = &unk_1E86E7708;
    v7[4] = &v8;
    [v3 queryGlobalIPv6AddressesWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)globalDNSServerAddresses
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:136])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8BA80];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CFA1C8;
    v7[3] = &unk_1E86E7708;
    v7[4] = &v8;
    [v3 queryGlobalDNSServerAddressesWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (unsigned)reachabilityFlags
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:137])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8BAA0];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CFA344;
    v7[3] = &unk_1E86E8E58;
    v7[4] = &v8;
    [v3 queryNetworkReachabilityWithRequestParams:v4 reply:v7];
  }

  v5 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (unsigned)EAP8021XSupplicantState
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:138])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8BAC0];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CFA4C8;
    v7[3] = &unk_1E86E8E58;
    v7[4] = &v8;
    [v3 queryEAP8021XSupplicantStateWithRequestParams:v4 reply:v7];
  }

  v5 = [v9[5] unsignedIntValue];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (unsigned)EAP8021XControlMode
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:139])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8BAE0];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CFA678;
    v7[3] = &unk_1E86E8E58;
    v7[4] = &v8;
    [v3 queryEAP8021XControlModeWithRequestParams:v4 reply:v7];
  }

  v5 = [v9[5] unsignedIntValue];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (unsigned)EAP8021XControlState
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:140])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8BB00];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CFA828;
    v7[3] = &unk_1E86E8E58;
    v7[4] = &v8;
    [v3 queryEAP8021XControlStateWithRequestParams:v4 reply:v7];
  }

  v5 = [v9[5] unsignedIntValue];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (int)EAP8021XClientStatus
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:141])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8BB20];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CFA9D8;
    v7[3] = &unk_1E86E8E58;
    v7[4] = &v8;
    [v3 queryEAP8021XClientStatusWithRequestParams:v4 reply:v7];
  }

  v5 = [v9[5] intValue];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (BOOL)startAWDLPeerAssistedDiscoveryWithParameters:(id)a3 error:(id *)a4
{
  v6 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1E0BC2DB0;
  v21 = sub_1E0BC6214;
  v22 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:66])
  {
    XPCClient = self->_XPCClient;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1E0CFAC44;
    v16[3] = &unk_1E86E8E30;
    v16[4] = &v17;
    v8 = [(CWFXPCClient *)XPCClient synchronousRemoteObjectProxyWithErrorHandler:v16];
    v9 = [(CWFInterface *)self __adjustedRequestParameters];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1E0CFAC54;
    v15[3] = &unk_1E86E8E30;
    v15[4] = &v17;
    [v8 startAWDLPeerAssistedDiscoveryWithParameters:v6 requestParams:v9 reply:v15];
  }

  else
  {
    v13 = *MEMORY[0x1E696A798];
    v8 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
    v14 = CWFErrorWithDescription(v13, 45, v8);
    v9 = v18[5];
    v18[5] = v14;
  }

  v10 = v18[5];
  if (a4 && v10)
  {
    *a4 = v10;
    v10 = v18[5];
  }

  v11 = v10 == 0;
  _Block_object_dispose(&v17, 8);

  return v11;
}

- (void)stopAWDLPeerAssistedDiscovery
{
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:67])
  {
    v4 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8BB40];
    v3 = [(CWFInterface *)self __adjustedRequestParameters];
    [v4 stopAWDLPeerAssistedDiscoveryWithRequestParams:v3 reply:&unk_1F5B8BB60];
  }
}

- (BOOL)setAWDLPeerTrafficRegistration:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!self->_awdlServiceManager)
  {
    v7 = objc_alloc_init(MEMORY[0x1E69E30E8]);
    awdlServiceManager = self->_awdlServiceManager;
    self->_awdlServiceManager = v7;
  }

  v15 = 0;
  v9 = [objc_alloc(MEMORY[0x1E69E30F0]) initWithDictionary:objc_msgSend(v6 isActive:{"serializedRegistrationInfo"), &v15}];
  if (v9)
  {
    v10 = self->_awdlServiceManager;
    if (v15 == 1)
    {
      v11 = [(AWDLServiceDiscoveryManager *)v10 setTrafficRegistration:v9 error:a4];
    }

    else
    {
      v11 = [(AWDLServiceDiscoveryManager *)v10 clearTrafficRegistration:v9 error:a4];
    }

    LOBYTE(a4) = v11;
  }

  else if (a4)
  {
    v12 = *MEMORY[0x1E696A798];
    v13 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    *a4 = CWFErrorWithDescription(v12, 22, v13);

    LOBYTE(a4) = 0;
  }

  return a4;
}

- (id)AWDLPreferredChannels
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:40])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8BB80];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CFAF74;
    v7[3] = &unk_1E86E8F48;
    v7[4] = &v8;
    [v3 queryAWDLPreferredChannelsWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)AWDLSyncEnabled
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:39])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8BBA0];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CFB134;
    v7[3] = &unk_1E86E8F48;
    v7[4] = &v8;
    [v3 queryAWDLSyncEnabledWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)AWDLSyncState
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:41])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B89550];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CFB2F4;
    v7[3] = &unk_1E86E8F48;
    v7[4] = &v8;
    [v3 queryAWDLSyncStateWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)AWDLSyncChannelSequence
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:42])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8BBC0];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CFB4B4;
    v7[3] = &unk_1E86E8F48;
    v7[4] = &v8;
    [v3 queryAWDLSyncChannelSequenceWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)AWDLStrategy
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:44])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B89530];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CFB674;
    v7[3] = &unk_1E86E8F48;
    v7[4] = &v8;
    [v3 queryAWDLStrategyWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)AWDLElectionParameters
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:45])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8BBE0];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CFB834;
    v7[3] = &unk_1E86E8F48;
    v7[4] = &v8;
    [v3 queryAWDLElectionParametersWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)AWDLPeerDatabase
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:48])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B89510];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CFB9F4;
    v7[3] = &unk_1E86E8F48;
    v7[4] = &v8;
    [v3 queryAWDLPeerDatabaseWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)AWDLSocialTimeSlots
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:49])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8BC00];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CFBBB4;
    v7[3] = &unk_1E86E8F48;
    v7[4] = &v8;
    [v3 queryAWDLSocialTimeSlotsWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)AWDLElectionID
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:46])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8BC20];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CFBD74;
    v7[3] = &unk_1E86E8F48;
    v7[4] = &v8;
    [v3 queryAWDLElectionIDWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)AWDLElectionRSSIThresholds
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:47])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8BC40];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CFBF34;
    v7[3] = &unk_1E86E8F48;
    v7[4] = &v8;
    [v3 queryAWDLElectionRSSIThresholdsWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)AWDLMasterChannel
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:50])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8BC60];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CFC0F4;
    v7[3] = &unk_1E86E8F48;
    v7[4] = &v8;
    [v3 queryAWDLMasterChannelWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)AWDLSecondaryMasterChannel
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:51])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8BC80];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CFC2B4;
    v7[3] = &unk_1E86E8F48;
    v7[4] = &v8;
    [v3 queryAWDLSecondaryMasterChannelWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)AWDLOpMode
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:52])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8BCA0];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CFC474;
    v7[3] = &unk_1E86E8F48;
    v7[4] = &v8;
    [v3 queryAWDLOpModeWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)AWDLSyncParameters
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:43])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8BCC0];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CFC634;
    v7[3] = &unk_1E86E8F48;
    v7[4] = &v8;
    [v3 queryAWDLSyncParametersWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)AWDLStatistics
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:53])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8BCE0];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CFC7F4;
    v7[3] = &unk_1E86E8F48;
    v7[4] = &v8;
    [v3 queryAWDLStatisticsWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)AWDLSidecarDiagnostics
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:146])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8BD00];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CFC9B4;
    v7[3] = &unk_1E86E8F48;
    v7[4] = &v8;
    [v3 queryAWDLSidecarDiagnosticsWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)AWDLExtensionStateMachineParameters
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:157])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8BD20];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CFCB74;
    v7[3] = &unk_1E86E8F48;
    v7[4] = &v8;
    [v3 queryAWDLExtensionStateMachineParamsWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)AWDLElectionMetric
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:158])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8BD40];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CFCD34;
    v7[3] = &unk_1E86E8F48;
    v7[4] = &v8;
    [v3 queryAWDLElectionMetricWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)AWDLPresenceMode
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:159])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8BD60];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CFCEF4;
    v7[3] = &unk_1E86E8F48;
    v7[4] = &v8;
    [v3 queryAWDLPresenceModeWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)AWDLGuardTime
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:160])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8BD80];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CFD0B4;
    v7[3] = &unk_1E86E8F48;
    v7[4] = &v8;
    [v3 queryAWDLGuardTimeWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)AWDLAvailabilityWindowAPAlignment
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:161])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8BDA0];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CFD274;
    v7[3] = &unk_1E86E8F48;
    v7[4] = &v8;
    [v3 queryAWDLAvailabilityWindowAPAlignmentWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)AWDLContinuousElectionAlgorithmEnabled
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:162])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8BDC0];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CFD434;
    v7[3] = &unk_1E86E8F48;
    v7[4] = &v8;
    [v3 queryAWDLContinuousElectionAlgorithmEnabledWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)AWDLAFTxMode
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:163])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8BDE0];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CFD5F4;
    v7[3] = &unk_1E86E8F48;
    v7[4] = &v8;
    [v3 queryAWDLAFTxModeWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)AWDLPeerTrafficRegistration
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:164])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8BE00];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CFD7B4;
    v7[3] = &unk_1E86E8F48;
    v7[4] = &v8;
    [v3 queryAWDLPeerTrafficRegistrationWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)AWDLEncryptionType
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:165])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8BE20];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CFD974;
    v7[3] = &unk_1E86E8F48;
    v7[4] = &v8;
    [v3 queryAWDLEncryptionTypeWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)AWDLBTLEStateParameters
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:166])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8BE40];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CFDB34;
    v7[3] = &unk_1E86E8F48;
    v7[4] = &v8;
    [v3 queryAWDLBTLEStateParamsWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)rangingCapabilities
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:34])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8BE60];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CFDCF4;
    v7[3] = &unk_1E86E8F48;
    v7[4] = &v8;
    [v3 queryRangingCapabilitiesWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (void)performRangingWithPeerList:(id)a3 timeout:(unint64_t)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:69])
  {
    XPCClient = self->_XPCClient;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1E0CFE144;
    v19[3] = &unk_1E86E7BB8;
    v11 = v9;
    v20 = v11;
    v12 = [(CWFXPCClient *)XPCClient synchronousRemoteObjectProxyWithErrorHandler:v19];
    v13 = [(CWFInterface *)self __adjustedRequestParameters];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1E0CFE160;
    v17[3] = &unk_1E86E7A88;
    v18 = v11;
    [v12 performRangingWithPeerList:v8 timeout:a4 requestParams:v13 reply:v17];
  }

  else if (v9)
  {
    v14 = *MEMORY[0x1E696A798];
    v15 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
    v16 = CWFErrorWithDescription(v14, 45, v15);
    (*(v9 + 2))(v9, v16, 0);
  }
}

- (id)performRangingWithPeerList:(id)a3 timeout:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_1E0BC2DB0;
  v29 = sub_1E0BC6214;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1E0BC2DB0;
  v23 = sub_1E0BC6214;
  v24 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:69])
  {
    XPCClient = self->_XPCClient;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_1E0CFE3F0;
    v18[3] = &unk_1E86E8E30;
    v18[4] = &v19;
    v10 = [(CWFXPCClient *)XPCClient synchronousRemoteObjectProxyWithErrorHandler:v18];
    v11 = [(CWFInterface *)self __adjustedRequestParameters];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1E0CFE400;
    v17[3] = &unk_1E86E8ED0;
    v17[4] = &v19;
    v17[5] = &v25;
    [v10 performRangingWithPeerList:v8 timeout:a4 requestParams:v11 reply:v17];
  }

  else
  {
    v15 = *MEMORY[0x1E696A798];
    v10 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
    v16 = CWFErrorWithDescription(v15, 45, v10);
    v11 = v20[5];
    v20[5] = v16;
  }

  if (a5)
  {
    v12 = v20[5];
    if (v12)
    {
      *a5 = v12;
    }
  }

  v13 = v26[5];
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);

  return v13;
}

- (BOOL)setRangingIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1E0BC2DB0;
  v21 = sub_1E0BC6214;
  v22 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:174])
  {
    XPCClient = self->_XPCClient;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1E0CFE688;
    v16[3] = &unk_1E86E8E30;
    v16[4] = &v17;
    v8 = [(CWFXPCClient *)XPCClient synchronousRemoteObjectProxyWithErrorHandler:v16];
    v9 = [(CWFInterface *)self __adjustedRequestParameters];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1E0CFE698;
    v15[3] = &unk_1E86E8E30;
    v15[4] = &v17;
    [v8 setRangingIdentifier:v6 requestParams:v9 reply:v15];
  }

  else
  {
    v13 = *MEMORY[0x1E696A798];
    v8 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
    v14 = CWFErrorWithDescription(v13, 45, v8);
    v9 = v18[5];
    v18[5] = v14;
  }

  v10 = v18[5];
  if (a4 && v10)
  {
    *a4 = v10;
    v10 = v18[5];
  }

  v11 = v10 == 0;
  _Block_object_dispose(&v17, 8);

  return v11;
}

- (id)performSensingWithParameters:(id)a3 error:(id *)a4
{
  v6 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_1E0BC2DB0;
  v27 = sub_1E0BC6214;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1E0BC2DB0;
  v21 = sub_1E0BC6214;
  v22 = 0;
  if (_os_feature_enabled_impl() && [(CWFXPCClient *)self->_XPCClient allowRequestType:188])
  {
    XPCClient = self->_XPCClient;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1E0CFE930;
    v16[3] = &unk_1E86E8E30;
    v16[4] = &v17;
    v8 = [(CWFXPCClient *)XPCClient synchronousRemoteObjectProxyWithErrorHandler:v16];
    v9 = [(CWFInterface *)self __adjustedRequestParameters];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1E0CFE940;
    v15[3] = &unk_1E86E9150;
    v15[4] = &v17;
    v15[5] = &v23;
    [v8 performSensingWithParameters:v6 requestParams:v9 reply:v15];
  }

  else
  {
    v13 = *MEMORY[0x1E696A798];
    v8 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
    v14 = CWFErrorWithDescription(v13, 45, v8);
    v9 = v18[5];
    v18[5] = v14;
  }

  if (a4)
  {
    v10 = v18[5];
    if (v10)
    {
      *a4 = v10;
    }
  }

  v11 = v24[5];
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);

  return v11;
}

- (void)performSensingWithParameters:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (_os_feature_enabled_impl() && [(CWFXPCClient *)self->_XPCClient allowRequestType:188])
  {
    XPCClient = self->_XPCClient;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1E0CFEB94;
    v17[3] = &unk_1E86E7BB8;
    v9 = v7;
    v18 = v9;
    v10 = [(CWFXPCClient *)XPCClient remoteObjectProxyWithErrorHandler:v17];
    v11 = [(CWFInterface *)self __adjustedRequestParameters];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1E0CFEBB0;
    v15[3] = &unk_1E86E9178;
    v16 = v9;
    [v10 performSensingWithParameters:v6 requestParams:v11 reply:v15];
  }

  else if (v7)
  {
    v12 = *MEMORY[0x1E696A798];
    v13 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
    v14 = CWFErrorWithDescription(v12, 45, v13);
    (*(v7 + 2))(v7, v14, 0);
  }
}

- (id)performNearbyDeviceDiscovery:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1E0BC2DB0;
  v19 = sub_1E0BC6214;
  v5 = *MEMORY[0x1E696A798];
  v6 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x3DuLL);
  v20 = CWFErrorWithDescription(v5, 61, v6);

  if (_os_feature_enabled_impl() && [(CWFXPCClient *)self->_XPCClient allowRequestType:238])
  {
    XPCClient = self->_XPCClient;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1E0CFEDFC;
    v14[3] = &unk_1E86E8E30;
    v14[4] = &v15;
    v8 = [(CWFXPCClient *)XPCClient synchronousRemoteObjectProxyWithErrorHandler:v14];
    v9 = [(CWFInterface *)self __adjustedRequestParameters];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1E0CFEE0C;
    v13[3] = &unk_1E86E8E30;
    v13[4] = &v15;
    [v8 performNearbyDeviceDiscovery:v4 requestParams:v9 reply:v13];
  }

  else
  {
    v8 = CWFErrorDescription(v5, 0x2DuLL);
    v12 = CWFErrorWithDescription(v5, 45, v8);
    v9 = v16[5];
    v16[5] = v12;
  }

  v10 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v10;
}

- (id)cachedAutoJoinMetric
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:193])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8BE80];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CFEF70;
    v7[3] = &unk_1E86E91A0;
    v7[4] = &v8;
    [v3 queryAutoJoinMetricWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)autoJoinStatistics
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:194])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B89490];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CFF130;
    v7[3] = &unk_1E86E91C8;
    v7[4] = &v8;
    [v3 queryAutoJoinStatisticsWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (void)resetAutoJoinStatistics
{
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:195])
  {
    v4 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8BEA0];
    v3 = [(CWFInterface *)self __adjustedRequestParameters];
    [v4 resetAutoJoinStatisticsWithRequestParams:v3 reply:&unk_1F5B8BEC0];
  }
}

- (id)userSettings
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:189])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8BEE0];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CFF394;
    v7[3] = &unk_1E86E91F0;
    v7[4] = &v8;
    [v3 queryUserSettingsWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (BOOL)applyUserSettings:(id)a3 properties:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_1E0BC2DB0;
  v24 = sub_1E0BC6214;
  v25 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:190])
  {
    XPCClient = self->_XPCClient;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1E0CFF614;
    v19[3] = &unk_1E86E8E30;
    v19[4] = &v20;
    v11 = [(CWFXPCClient *)XPCClient synchronousRemoteObjectProxyWithErrorHandler:v19];
    v12 = [(CWFInterface *)self __adjustedRequestParameters];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_1E0CFF624;
    v18[3] = &unk_1E86E8E30;
    v18[4] = &v20;
    [v11 setUserSettings:v8 properties:v9 requestParams:v12 reply:v18];
  }

  else
  {
    v16 = *MEMORY[0x1E696A798];
    v11 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
    v17 = CWFErrorWithDescription(v16, 45, v11);
    v12 = v21[5];
    v21[5] = v17;
  }

  v13 = v21[5];
  if (a5 && v13)
  {
    *a5 = v13;
    v13 = v21[5];
  }

  v14 = v13 == 0;
  _Block_object_dispose(&v20, 8);

  return v14;
}

- (BOOL)startHostAPModeWithConfiguration:(id)a3 error:(id *)a4
{
  v6 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1E0BC2DB0;
  v21 = sub_1E0BC6214;
  v22 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:220])
  {
    XPCClient = self->_XPCClient;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1E0CFF834;
    v16[3] = &unk_1E86E8E30;
    v16[4] = &v17;
    v8 = [(CWFXPCClient *)XPCClient synchronousRemoteObjectProxyWithErrorHandler:v16];
    v9 = [(CWFInterface *)self __adjustedRequestParameters];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1E0CFF844;
    v15[3] = &unk_1E86E8E30;
    v15[4] = &v17;
    [v8 startHostAPModeWithConfiguration:v6 requestParams:v9 reply:v15];
  }

  else
  {
    v13 = *MEMORY[0x1E696A798];
    v8 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
    v14 = CWFErrorWithDescription(v13, 45, v8);
    v9 = v18[5];
    v18[5] = v14;
  }

  v10 = v18[5];
  if (a4 && v10)
  {
    *a4 = v10;
    v10 = v18[5];
  }

  v11 = v10 == 0;
  _Block_object_dispose(&v17, 8);

  return v11;
}

- (void)stopHostAPMode
{
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:221])
  {
    v4 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B89050];
    v3 = [(CWFInterface *)self __adjustedRequestParameters];
    [v4 stopHostAPModeWithRequestParams:v3 reply:&unk_1F5B89430];
  }
}

- (id)hostAPStationList
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:233])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B89010];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CFFA4C;
    v7[3] = &unk_1E86E7708;
    v7[4] = &v8;
    [v3 queryHostAPStationListWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)privateMACAddressForNetworkProfile:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1E0BC2DB0;
  v14 = sub_1E0BC6214;
  v15 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:222])
  {
    v5 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B893F0];
    v6 = [(CWFInterface *)self __adjustedRequestParameters];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1E0CFFC24;
    v9[3] = &unk_1E86E8EA8;
    v9[4] = &v10;
    [v5 queryPrivateMACAddressForNetworkProfile:v4 requestParams:v6 reply:v9];
  }

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (int64_t)privateMACAddressModeForNetworkProfile:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:223])
  {
    v5 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B88FD0];
    v6 = [(CWFInterface *)self __adjustedRequestParameters];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1E0CFFDB8;
    v9[3] = &unk_1E86E8E58;
    v9[4] = &v10;
    [v5 queryPrivateMACAddressModeForNetworkProfile:v4 requestParams:v6 reply:v9];
  }

  v7 = v11[3];
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (BOOL)setPrivateMACAddressMode:(int64_t)a3 networkProfile:(id)a4 error:(id *)a5
{
  v8 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1E0BC2DB0;
  v23 = sub_1E0BC6214;
  v24 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:224])
  {
    XPCClient = self->_XPCClient;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_1E0D00000;
    v18[3] = &unk_1E86E8E30;
    v18[4] = &v19;
    v10 = [(CWFXPCClient *)XPCClient synchronousRemoteObjectProxyWithErrorHandler:v18];
    v11 = [(CWFInterface *)self __adjustedRequestParameters];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1E0D00010;
    v17[3] = &unk_1E86E8E30;
    v17[4] = &v19;
    [v10 setPrivateMACAddressMode:a3 networkProfile:v8 requestParams:v11 reply:v17];
  }

  else
  {
    v15 = *MEMORY[0x1E696A798];
    v10 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
    v16 = CWFErrorWithDescription(v15, 45, v10);
    v11 = v20[5];
    v20[5] = v16;
  }

  v12 = v20[5];
  if (a5 && v12)
  {
    *a5 = v12;
    v12 = v20[5];
  }

  v13 = v12 == 0;
  _Block_object_dispose(&v19, 8);

  return v13;
}

- (int64_t)privateMACAddressModeSystemSetting
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:225])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B893B0];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0D00130;
    v7[3] = &unk_1E86E8E58;
    v7[4] = &v8;
    [v3 queryPrivateMACAddressModeSystemSettingWithRequestParams:v4 reply:v7];
  }

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (BOOL)setPrivateMACAddressModeSystemSetting:(int64_t)a3 error:(id *)a4
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1E0BC2DB0;
  v21 = sub_1E0BC6214;
  v22 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:226])
  {
    XPCClient = self->_XPCClient;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1E0D00368;
    v16[3] = &unk_1E86E8E30;
    v16[4] = &v17;
    v8 = [(CWFXPCClient *)XPCClient synchronousRemoteObjectProxyWithErrorHandler:v16];
    v9 = [(CWFInterface *)self __adjustedRequestParameters];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1E0D00378;
    v15[3] = &unk_1E86E8E30;
    v15[4] = &v17;
    [v8 setPrivateMACAddressModeSystemSetting:a3 requestParams:v9 reply:v15];
  }

  else
  {
    v13 = *MEMORY[0x1E696A798];
    v8 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
    v14 = CWFErrorWithDescription(v13, 45, v8);
    v9 = v18[5];
    v18[5] = v14;
  }

  v10 = v18[5];
  if (a4 && v10)
  {
    *a4 = v10;
    v10 = v18[5];
  }

  v11 = v10 == 0;
  _Block_object_dispose(&v17, 8);

  return v11;
}

- (BOOL)isQuickProbeRequiredForNetworkProfile:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:228])
  {
    v5 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B88F90];
    v6 = [(CWFInterface *)self __adjustedRequestParameters];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1E0D00564;
    v9[3] = &unk_1E86E8E58;
    v9[4] = &v10;
    [v5 queryIsQuickProbeRequiredForNetworkProfile:v4 requestParams:v6 reply:v9];
  }

  v7 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (id)getAutoJoinDenyList
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:245])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B89370];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0D00920;
    v7[3] = &unk_1E86E7708;
    v7[4] = &v8;
    [v3 queryAutoJoinDenyListWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)setAutoJoinDenyListForNetwork:(id)a3 reason:(unint64_t)a4
{
  v6 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1E0BC2DB0;
  v16 = sub_1E0BC6214;
  v17 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:246])
  {
    v7 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8BF00];
    v8 = [(CWFInterface *)self __adjustedRequestParameters];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1E0D00B1C;
    v11[3] = &unk_1E86E7708;
    v11[4] = &v12;
    [v7 setAutoJoinDenyListForNetwork:v6 reason:a4 requestParams:v8 reply:v11];
  }

  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v9;
}

- (id)clearAutoJoinDenyListForNetwork:(id)a3 reason:(unint64_t)a4
{
  v6 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1E0BC2DB0;
  v16 = sub_1E0BC6214;
  v17 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:247])
  {
    v7 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8BF20];
    v8 = [(CWFInterface *)self __adjustedRequestParameters];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1E0D00D18;
    v11[3] = &unk_1E86E7708;
    v11[4] = &v12;
    [v7 clearAutoJoinDenyListForNetwork:v6 reason:a4 requestParams:v8 reply:v11];
  }

  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v9;
}

- (BOOL)isNetworkManagedByMDM:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:250])
  {
    v5 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8BF40];
    v6 = [(CWFInterface *)self __adjustedRequestParameters];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1E0D00EC8;
    v9[3] = &unk_1E86E8E58;
    v9[4] = &v10;
    [v5 queryNetworkManagedByMDM:v4 requestParams:v6 reply:v9];
  }

  v7 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (BOOL)isDeviceSupervised
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:251])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8BF60];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0D01018;
    v7[3] = &unk_1E86E8E58;
    v7[4] = &v8;
    [v3 queryDeviceSupervisedWithRequestParams:v4 reply:v7];
  }

  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (id)captivePortalCredentialsForKnownNetworkProfile:(id)a3 error:(id *)a4
{
  v6 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_1E0BC2DB0;
  v26 = sub_1E0BC6214;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1E0BC2DB0;
  v20 = sub_1E0BC6214;
  v21 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:262])
  {
    XPCClient = self->_XPCClient;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1E0D01328;
    v15[3] = &unk_1E86E8E30;
    v15[4] = &v22;
    v8 = [(CWFXPCClient *)XPCClient synchronousRemoteObjectProxyWithErrorHandler:v15];
    v9 = [(CWFInterface *)self __adjustedRequestParameters];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1E0D01338;
    v14[3] = &unk_1E86E9218;
    v14[4] = &v22;
    v14[5] = &v16;
    [v8 queryCaptivePortalCredentialsForKnownNetworkProfile:v6 requestParams:v9 reply:v14];
  }

  v10 = v23[5];
  if (a4 && v10)
  {
    *a4 = v10;
    v10 = v23[5];
  }

  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = v17[5];
  }

  v12 = v11;
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);

  return v12;
}

- (BOOL)setCaptivePortalCredentials:(id)a3 knownNetworkProfile:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_1E0BC2DB0;
  v24 = sub_1E0BC6214;
  v25 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:263])
  {
    XPCClient = self->_XPCClient;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1E0D015D4;
    v19[3] = &unk_1E86E8E30;
    v19[4] = &v20;
    v11 = [(CWFXPCClient *)XPCClient synchronousRemoteObjectProxyWithErrorHandler:v19];
    v12 = [(CWFInterface *)self __adjustedRequestParameters];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_1E0D015E4;
    v18[3] = &unk_1E86E8E30;
    v18[4] = &v20;
    [v11 setCaptivePortalCredentials:v8 knownNetworkProfile:v9 requestParams:v12 reply:v18];
  }

  else
  {
    v16 = *MEMORY[0x1E696A798];
    v11 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
    v17 = CWFErrorWithDescription(v16, 45, v11);
    v12 = v21[5];
    v21[5] = v17;
  }

  v13 = v21[5];
  if (a5 && v13)
  {
    *a5 = v13;
    v13 = v21[5];
  }

  v14 = v13 == 0;
  _Block_object_dispose(&v20, 8);

  return v14;
}

- (int64_t)networkOfInterestHomeStateForKnownNetworkProfile:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_1E0BC2DB0;
  v15 = sub_1E0BC6214;
  v16 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:264])
  {
    v5 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8BF80];
    v6 = [(CWFInterface *)self __adjustedRequestParameters];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1E0D0175C;
    v10[3] = &unk_1E86E8E58;
    v10[4] = &v11;
    [v5 queryNetworkOfInterestHomeStateForKnownNetworkProfile:v4 requestParams:v6 reply:v10];
  }

  v7 = v12[5];
  if (v7)
  {
    v8 = [v7 integerValue];
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v11, 8);

  return v8;
}

- (int64_t)networkOfInterestWorkStateForKnownNetworkProfile:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_1E0BC2DB0;
  v15 = sub_1E0BC6214;
  v16 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:265])
  {
    v5 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8BFA0];
    v6 = [(CWFInterface *)self __adjustedRequestParameters];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1E0D01930;
    v10[3] = &unk_1E86E8E58;
    v10[4] = &v11;
    [v5 queryNetworkOfInterestWorkStateForKnownNetworkProfile:v4 requestParams:v6 reply:v10];
  }

  v7 = v12[5];
  if (v7)
  {
    v8 = [v7 integerValue];
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v11, 8);

  return v8;
}

- (int64_t)brokenBackhaulState
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:268])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8BFC0];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0D01AAC;
    v7[3] = &unk_1E86E8E58;
    v7[4] = &v8;
    [v3 queryBrokenBackhaulStateWithRequestParams:v4 reply:v7];
  }

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (id)brokenBackhaulStateUpdatedAt
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:269])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B88F70];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0D01C40;
    v7[3] = &unk_1E86E9128;
    v7[4] = &v8;
    [v3 queryBrokenBackhaulStateTimestampWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (int64_t)confirmBrokenBackhaulUsingTimeout:(unint64_t)a3 count:(unint64_t)a4 error:(id *)a5
{
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1E0BC2DB0;
  v23 = sub_1E0BC6214;
  v24 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:271])
  {
    XPCClient = self->_XPCClient;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_1E0D01EE0;
    v18[3] = &unk_1E86E8E30;
    v18[4] = &v19;
    v10 = [(CWFXPCClient *)XPCClient synchronousRemoteObjectProxyWithErrorHandler:v18];
    v11 = [(CWFInterface *)self __adjustedRequestParameters];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1E0D01EF0;
    v17[3] = &unk_1E86E9240;
    v17[4] = &v19;
    v17[5] = &v25;
    [v10 confirmBrokenBackhaulUsingTimeout:a3 count:a4 requestParams:v11 reply:v17];
  }

  else
  {
    v15 = *MEMORY[0x1E696A798];
    v10 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
    v16 = CWFErrorWithDescription(v15, 45, v10);
    v11 = v20[5];
    v20[5] = v16;
  }

  if (a5)
  {
    v12 = v20[5];
    if (v12)
    {
      *a5 = v12;
    }
  }

  v13 = v26[3];
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);
  return v13;
}

- (BOOL)setUCMExtProfile:(id)a3 error:(id *)a4
{
  v6 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1E0BC2DB0;
  v21 = sub_1E0BC6214;
  v22 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:275])
  {
    XPCClient = self->_XPCClient;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1E0D02150;
    v16[3] = &unk_1E86E8E30;
    v16[4] = &v17;
    v8 = [(CWFXPCClient *)XPCClient synchronousRemoteObjectProxyWithErrorHandler:v16];
    v9 = [(CWFInterface *)self __adjustedRequestParameters];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1E0D02160;
    v15[3] = &unk_1E86E8E30;
    v15[4] = &v17;
    [v8 setUCMExtProfile:v6 requestParams:v9 error:v15];
  }

  else
  {
    v13 = *MEMORY[0x1E696A798];
    v8 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
    v14 = CWFErrorWithDescription(v13, 45, v8);
    v9 = v18[5];
    v18[5] = v14;
  }

  v10 = v18[5];
  if (a4 && v10)
  {
    *a4 = v10;
    v10 = v18[5];
  }

  v11 = v10 == 0;
  _Block_object_dispose(&v17, 8);

  return v11;
}

- (id)initForWiFiNetworkSharingAppExtensionWithAccessoryID:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(CWFRequestParameters);
  [(CWFRequestParameters *)v5 setWifiNetworkSharingAccessoryID:v4];

  v6 = [[CWFXPCClient alloc] initWithServiceType:10];
  v7 = [(CWFInterface *)self initWithXPCClient:v6 requestParameters:v5];

  return v7;
}

- (id)initForWiFiNetworkSharingAppWithAccessoryID:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(CWFRequestParameters);
  [(CWFRequestParameters *)v5 setWifiNetworkSharingAccessoryID:v4];

  v6 = [[CWFXPCClient alloc] initWithServiceType:9];
  v7 = [(CWFInterface *)self initWithXPCClient:v6 requestParameters:v5];

  return v7;
}

- (BOOL)acknowledgeWiFiNetworkSharingNetworkListUpdate:(id)a3 error:(id *)a4
{
  v6 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1E0BC2DB0;
  v21 = sub_1E0BC6214;
  v22 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:283])
  {
    XPCClient = self->_XPCClient;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1E0D024E4;
    v16[3] = &unk_1E86E8E30;
    v16[4] = &v17;
    v8 = [(CWFXPCClient *)XPCClient synchronousRemoteObjectProxyWithErrorHandler:v16];
    v9 = [(CWFInterface *)self __adjustedRequestParameters];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1E0D024F4;
    v15[3] = &unk_1E86E8E30;
    v15[4] = &v17;
    [v8 acknowledgeWiFiNetworkSharingNetworkListUpdate:v6 requestParams:v9 reply:v15];
  }

  else
  {
    v13 = *MEMORY[0x1E696A798];
    v8 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
    v14 = CWFErrorWithDescription(v13, 45, v8);
    v9 = v18[5];
    v18[5] = v14;
  }

  v10 = v18[5];
  if (a4 && v10)
  {
    *a4 = v10;
    v10 = v18[5];
  }

  v11 = v10 == 0;
  _Block_object_dispose(&v17, 8);

  return v11;
}

- (id)wifiNetworkSharingNetworkList
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:281])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8BFE0];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0D02658;
    v7[3] = &unk_1E86E7708;
    v7[4] = &v8;
    [v3 wifiNetworkSharingNetworkListWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)wifiNetworkSharingAskToShareNetworkList
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:284])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8C000];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0D027C0;
    v7[3] = &unk_1E86E7708;
    v7[4] = &v8;
    [v3 wifiNetworkSharingAskToShareNetworkListWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (int64_t)askToShareWiFiNetworkSharingNetworkFromAppexAndReturnError:(id *)a3
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1E0BC2DB0;
  v19 = sub_1E0BC6214;
  v20 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:276])
  {
    XPCClient = self->_XPCClient;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1E0D029F0;
    v14[3] = &unk_1E86E8E30;
    v14[4] = &v15;
    v6 = [(CWFXPCClient *)XPCClient synchronousRemoteObjectProxyWithErrorHandler:v14];
    v7 = [(CWFInterface *)self __adjustedRequestParameters];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1E0D02A00;
    v13[3] = &unk_1E86E9240;
    v13[4] = &v15;
    v13[5] = &v21;
    [v6 askToShareWiFiNetworkSharingNetworkFromAppexWithRequestParams:v7 reply:v13];
  }

  else
  {
    v11 = *MEMORY[0x1E696A798];
    v6 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
    v12 = CWFErrorWithDescription(v11, 45, v6);
    v7 = v16[5];
    v16[5] = v12;
  }

  if (a3)
  {
    v8 = v16[5];
    if (v8)
    {
      *a3 = v8;
    }
  }

  v9 = v22[3];
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
  return v9;
}

- (int64_t)askToShareWiFiNetworkSharingNetworkFromAppAndReturnError:(id *)a3
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1E0BC2DB0;
  v19 = sub_1E0BC6214;
  v20 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:277])
  {
    XPCClient = self->_XPCClient;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1E0D02C7C;
    v14[3] = &unk_1E86E8E30;
    v14[4] = &v15;
    v6 = [(CWFXPCClient *)XPCClient synchronousRemoteObjectProxyWithErrorHandler:v14];
    v7 = [(CWFInterface *)self __adjustedRequestParameters];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1E0D02C8C;
    v13[3] = &unk_1E86E9240;
    v13[4] = &v15;
    v13[5] = &v21;
    [v6 askToShareWiFiNetworkSharingNetworkFromAppWithRequestParams:v7 reply:v13];
  }

  else
  {
    v11 = *MEMORY[0x1E696A798];
    v6 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
    v12 = CWFErrorWithDescription(v11, 45, v6);
    v7 = v16[5];
    v16[5] = v12;
  }

  if (a3)
  {
    v8 = v16[5];
    if (v8)
    {
      *a3 = v8;
    }
  }

  v9 = v22[3];
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
  return v9;
}

- (int64_t)wifiNetworkSharingAskToShareStatusForNetworkID:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:278])
  {
    v5 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8C020];
    v6 = [(CWFInterface *)self __adjustedRequestParameters];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1E0D02E14;
    v9[3] = &unk_1E86E9268;
    v9[4] = &v10;
    [v5 wifiNetworkSharingAskToShareStatusForNetworkID:v4 requestParams:v6 reply:v9];
  }

  v7 = v11[3];
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (BOOL)setWiFiNetworkSharingAskToShareStatus:(int64_t)a3 networkID:(id)a4 error:(id *)a5
{
  v8 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1E0BC2DB0;
  v23 = sub_1E0BC6214;
  v24 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:279])
  {
    XPCClient = self->_XPCClient;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_1E0D0302C;
    v18[3] = &unk_1E86E8E30;
    v18[4] = &v19;
    v10 = [(CWFXPCClient *)XPCClient synchronousRemoteObjectProxyWithErrorHandler:v18];
    v11 = [(CWFInterface *)self __adjustedRequestParameters];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1E0D0303C;
    v17[3] = &unk_1E86E8E30;
    v17[4] = &v19;
    [v10 setWiFiNetworkSharingAskToShareStatus:a3 networkID:v8 requestParams:v11 reply:v17];
  }

  else
  {
    v15 = *MEMORY[0x1E696A798];
    v10 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
    v16 = CWFErrorWithDescription(v15, 45, v10);
    v11 = v20[5];
    v20[5] = v16;
  }

  v12 = v20[5];
  if (a5 && v12)
  {
    *a5 = v12;
    v12 = v20[5];
  }

  v13 = v12 == 0;
  _Block_object_dispose(&v19, 8);

  return v13;
}

- (id)wifiNetworkSharingAuthorizationLevel
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1E0BC2DB0;
  v12 = sub_1E0BC6214;
  v13 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:287])
  {
    v3 = [(CWFXPCClient *)self->_XPCClient synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8C040];
    v4 = [(CWFInterface *)self __adjustedRequestParameters];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0D031A0;
    v7[3] = &unk_1E86E8E58;
    v7[4] = &v8;
    [v3 wifiNetworkSharingAuthorizationLevelWithRequestParams:v4 reply:v7];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)requestWiFiNetworkSharingAuthorizationAndReturnError:(id *)a3
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_1E0BC2DB0;
  v25 = sub_1E0BC6214;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1E0BC2DB0;
  v19 = sub_1E0BC6214;
  v20 = 0;
  if ([(CWFXPCClient *)self->_XPCClient allowRequestType:289])
  {
    XPCClient = self->_XPCClient;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1E0D0340C;
    v14[3] = &unk_1E86E8E30;
    v14[4] = &v15;
    v6 = [(CWFXPCClient *)XPCClient synchronousRemoteObjectProxyWithErrorHandler:v14];
    v7 = [(CWFInterface *)self __adjustedRequestParameters];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1E0D0341C;
    v13[3] = &unk_1E86E9290;
    v13[4] = &v15;
    v13[5] = &v21;
    [v6 requestWiFiNetworkSharingAuthorizationWithRequestParams:v7 reply:v13];
  }

  else
  {
    v11 = *MEMORY[0x1E696A798];
    v6 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
    v12 = CWFErrorWithDescription(v11, 45, v6);
    v7 = v16[5];
    v16[5] = v12;
  }

  if (a3)
  {
    v8 = v16[5];
    if (v8)
    {
      *a3 = v8;
    }
  }

  v9 = v22[5];
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);

  return v9;
}

@end