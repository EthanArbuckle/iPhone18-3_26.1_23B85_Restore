@interface MRDeviceInfo
+ (id)dataFromDeviceInfos:(id)a3;
+ (id)deviceInfosFromData:(id)a3;
+ (int64_t)deviceClass;
- (BOOL)containsDevice:(id)a3;
- (BOOL)containsLocalDevice;
- (BOOL)effectiveParentGroupContainsDiscoverableGroupLeader;
- (BOOL)hasPlaceholderGroupSession;
- (BOOL)isEqual:(id)a3;
- (BOOL)matchesUID:(id)a3;
- (MRDeviceInfo)initWithCoder:(id)a3;
- (MRDeviceInfo)initWithData:(id)a3;
- (MRDeviceInfo)initWithOutputDevice:(id)a3;
- (MRDeviceInfo)initWithOutputDeviceDescription:(id)a3;
- (MRDeviceInfo)initWithProtobuf:(id)a3;
- (MRDeviceInfo)skeleton;
- (NSData)data;
- (NSDictionary)dictionaryRepresentation;
- (NSString)WHAIdentifier;
- (NSString)effectiveID;
- (NSString)effectiveIdentifer;
- (NSString)effectiveName;
- (NSString)minimalDescription;
- (NSString)mr_effectiveRoutingContextID;
- (NSString)parentGroupID;
- (_MRDeviceInfoMessageProtobuf)protobuf;
- (id)copyWithZone:(_NSZone *)a3;
- (id)deltaDescriptionFromDeviceInfo:(id)a3 minimal:(BOOL)a4;
- (id)description;
- (id)resolveOutputDeviceUIDs:(id)a3;
- (unint64_t)hash;
- (unsigned)deviceSubtype;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MRDeviceInfo

- (NSData)data
{
  v2 = [(MRDeviceInfo *)self protobuf];
  v3 = [v2 data];

  return v3;
}

- (_MRDeviceInfoMessageProtobuf)protobuf
{
  v3 = objc_alloc_init(_MRDeviceInfoMessageProtobuf);
  [(_MRDeviceInfoMessageProtobuf *)v3 setProtocolVersion:[(MRDeviceInfo *)self protocolVersion]];
  [(_MRDeviceInfoMessageProtobuf *)v3 setHasProtocolVersion:[(MRDeviceInfo *)self hasProtocolVersion]];
  [(_MRDeviceInfoMessageProtobuf *)v3 setDeviceClass:_MRDeviceInfoMessageProtobuf_DeviceClassFromModel([(MRDeviceInfo *)self deviceClass])];
  [(_MRDeviceInfoMessageProtobuf *)v3 setHasDeviceClass:[(MRDeviceInfo *)self hasDeviceClass]];
  [(_MRDeviceInfoMessageProtobuf *)v3 setTightlySyncedGroup:[(MRDeviceInfo *)self isTightSyncGroup]];
  [(_MRDeviceInfoMessageProtobuf *)v3 setHasTightlySyncedGroup:[(MRDeviceInfo *)self hasTightSyncGroup]];
  [(_MRDeviceInfoMessageProtobuf *)v3 setAllowsPairing:[(MRDeviceInfo *)self isPairingAllowed]];
  [(_MRDeviceInfoMessageProtobuf *)v3 setHasAllowsPairing:[(MRDeviceInfo *)self hasPairingAllowed]];
  [(_MRDeviceInfoMessageProtobuf *)v3 setSupportsSystemPairing:[(MRDeviceInfo *)self supportsSystemPairing]];
  [(_MRDeviceInfoMessageProtobuf *)v3 setHasSupportsSystemPairing:[(MRDeviceInfo *)self hasSupportsSystemPairing]];
  [(_MRDeviceInfoMessageProtobuf *)v3 setSupportsACL:[(MRDeviceInfo *)self supportsACL]];
  [(_MRDeviceInfoMessageProtobuf *)v3 setHasSupportsACL:[(MRDeviceInfo *)self hasSupportsACL]];
  [(_MRDeviceInfoMessageProtobuf *)v3 setSupportsSharedQueue:[(MRDeviceInfo *)self supportsSharedQueue]];
  [(_MRDeviceInfoMessageProtobuf *)v3 setHasSupportsSharedQueue:[(MRDeviceInfo *)self hasSupportsSharedQueue]];
  [(_MRDeviceInfoMessageProtobuf *)v3 setSharedQueueVersion:[(MRDeviceInfo *)self sharedQueueVersion]];
  [(_MRDeviceInfoMessageProtobuf *)v3 setHasSharedQueueVersion:[(MRDeviceInfo *)self hasSharedQueueVersion]];
  [(_MRDeviceInfoMessageProtobuf *)v3 setIsProxyGroupPlayer:[(MRDeviceInfo *)self isProxyGroupPlayer]];
  [(_MRDeviceInfoMessageProtobuf *)v3 setHasIsProxyGroupPlayer:[(MRDeviceInfo *)self hasProxyGroupPlayer]];
  [(_MRDeviceInfoMessageProtobuf *)v3 setConnected:[(MRDeviceInfo *)self isConnected]];
  [(_MRDeviceInfoMessageProtobuf *)v3 setHasConnected:[(MRDeviceInfo *)self hasConnected]];
  [(_MRDeviceInfoMessageProtobuf *)v3 setSupportsExtendedMotion:[(MRDeviceInfo *)self supportsExtendedMotion]];
  [(_MRDeviceInfoMessageProtobuf *)v3 setHasSupportsExtendedMotion:[(MRDeviceInfo *)self hasSupportsExtendedMotion]];
  [(_MRDeviceInfoMessageProtobuf *)v3 setLogicalDeviceCount:[(MRDeviceInfo *)self groupLogicalDeviceCount]];
  [(_MRDeviceInfoMessageProtobuf *)v3 setHasLogicalDeviceCount:[(MRDeviceInfo *)self hasGroupLogicalDeviceCount]];
  [(_MRDeviceInfoMessageProtobuf *)v3 setIsGroupLeader:[(MRDeviceInfo *)self isGroupLeader]];
  [(_MRDeviceInfoMessageProtobuf *)v3 setHasIsGroupLeader:[(MRDeviceInfo *)self hasGroupLeader]];
  [(_MRDeviceInfoMessageProtobuf *)v3 setIsAirplayActive:[(MRDeviceInfo *)self isAirPlayActive]];
  [(_MRDeviceInfoMessageProtobuf *)v3 setHasIsAirplayActive:[(MRDeviceInfo *)self hasAirPlayActive]];
  [(_MRDeviceInfoMessageProtobuf *)v3 setSupportsMultiplayer:[(MRDeviceInfo *)self supportsMultiplayer]];
  [(_MRDeviceInfoMessageProtobuf *)v3 setHasSupportsMultiplayer:[(MRDeviceInfo *)self hasSupportsMultiplayer]];
  [(_MRDeviceInfoMessageProtobuf *)v3 setParentGroupContainsDiscoverableGroupLeader:[(MRDeviceInfo *)self parentGroupContainsDiscoverableGroupLeader]];
  [(_MRDeviceInfoMessageProtobuf *)v3 setHasParentGroupContainsDiscoverableGroupLeader:[(MRDeviceInfo *)self hasParentGroupContainsDiscoverableGroupLeader]];
  [(_MRDeviceInfoMessageProtobuf *)v3 setGroupContainsDiscoverableGroupLeader:[(MRDeviceInfo *)self groupContainsDiscoverableGroupLeader]];
  [(_MRDeviceInfoMessageProtobuf *)v3 setHasGroupContainsDiscoverableGroupLeader:[(MRDeviceInfo *)self hasGroupContainsDiscoverableGroupLeader]];
  [(_MRDeviceInfoMessageProtobuf *)v3 setPreferredEncoding:[(MRDeviceInfo *)self preferredEncoding]== 1];
  [(_MRDeviceInfoMessageProtobuf *)v3 setHasPreferredEncoding:[(MRDeviceInfo *)self hasPreferredEncoding]];
  [(_MRDeviceInfoMessageProtobuf *)v3 setIsEligibleForHostingGroupSessionExcludingAcknowledgements:[(MRDeviceInfo *)self isEligibleForHostingGroupSessionExcludingAcknowledgements]];
  [(_MRDeviceInfoMessageProtobuf *)v3 setHasIsEligibleForHostingGroupSessionExcludingAcknowledgements:[(MRDeviceInfo *)self hasIsEligibleForHostingGroupSessionExcludingAcknowledgements]];
  [(_MRDeviceInfoMessageProtobuf *)v3 setClusterType:[(MRDeviceInfo *)self clusterType]];
  [(_MRDeviceInfoMessageProtobuf *)v3 setHasClusterType:[(MRDeviceInfo *)self hasClusterType]];
  [(_MRDeviceInfoMessageProtobuf *)v3 setIsClusterAware:[(MRDeviceInfo *)self isClusterAware]];
  [(_MRDeviceInfoMessageProtobuf *)v3 setHasIsClusterAware:[(MRDeviceInfo *)self hasIsClusterAware]];
  [(_MRDeviceInfoMessageProtobuf *)v3 setConfiguredClusterSize:[(MRDeviceInfo *)self configuredClusterSize]];
  [(_MRDeviceInfoMessageProtobuf *)v3 setHasConfiguredClusterSize:[(MRDeviceInfo *)self hasConfiguredClusterSize]];
  [(_MRDeviceInfoMessageProtobuf *)v3 setIsClusterLeader:[(MRDeviceInfo *)self isClusterLeader]];
  [(_MRDeviceInfoMessageProtobuf *)v3 setHasIsClusterLeader:[(MRDeviceInfo *)self isClusterLeader]];
  [(_MRDeviceInfoMessageProtobuf *)v3 setLastKnownClusterType:[(MRDeviceInfo *)self lastSupportedClusterType]];
  [(_MRDeviceInfoMessageProtobuf *)v3 setHasLastKnownClusterType:[(MRDeviceInfo *)self hasLastSupportedClusterType]];
  [(_MRDeviceInfoMessageProtobuf *)v3 setSupportsOutputContextSync:[(MRDeviceInfo *)self supportsOutputContextSync]];
  [(_MRDeviceInfoMessageProtobuf *)v3 setHasSupportsOutputContextSync:[(MRDeviceInfo *)self hasSupportsOutputContextSync]];
  [(_MRDeviceInfoMessageProtobuf *)v3 setLastSupportedMessageType:[(MRDeviceInfo *)self lastSupportedProtocolMessageType]];
  [(_MRDeviceInfoMessageProtobuf *)v3 setHasLastSupportedMessageType:[(MRDeviceInfo *)self hasLastSupportedProtocolMessageType]];
  [(_MRDeviceInfoMessageProtobuf *)v3 setParentGroupSupportsGroupCohesion:[(MRDeviceInfo *)self parentGroupSupportsGroupCohesion]];
  [(_MRDeviceInfoMessageProtobuf *)v3 setHasParentGroupSupportsGroupCohesion:[(MRDeviceInfo *)self hasParentGroupSupportsGroupCohesion]];
  v4 = [(MRDeviceInfo *)self name];
  v5 = [v4 copy];
  [(_MRDeviceInfoMessageProtobuf *)v3 setName:v5];

  v6 = [(MRDeviceInfo *)self identifier];
  v7 = [v6 copy];
  [(_MRDeviceInfoMessageProtobuf *)v3 setUniqueIdentifier:v7];

  v8 = [(MRDeviceInfo *)self localizedModelName];
  v9 = [v8 copy];
  [(_MRDeviceInfoMessageProtobuf *)v3 setLocalizedModelName:v9];

  v10 = [(MRDeviceInfo *)self buildVersion];
  v11 = [v10 copy];
  [(_MRDeviceInfoMessageProtobuf *)v3 setSystemBuildVersion:v11];

  v12 = [(MRDeviceInfo *)self bundleIdentifier];
  v13 = [v12 copy];
  [(_MRDeviceInfoMessageProtobuf *)v3 setApplicationBundleIdentifier:v13];

  v14 = [(MRDeviceInfo *)self bundleVersion];
  v15 = [v14 copy];
  [(_MRDeviceInfoMessageProtobuf *)v3 setApplicationBundleVersion:v15];

  v16 = [(MRDeviceInfo *)self systemMediaApplication];
  v17 = [v16 copy];
  [(_MRDeviceInfoMessageProtobuf *)v3 setSystemMediaApplication:v17];

  v18 = [(MRDeviceInfo *)self systemPodcastApplication];
  v19 = [v18 copy];
  [(_MRDeviceInfoMessageProtobuf *)v3 setSystemPodcastApplication:v19];

  v20 = [(MRDeviceInfo *)self systemBooksApplication];
  v21 = [v20 copy];
  [(_MRDeviceInfoMessageProtobuf *)v3 setSystemBooksApplication:v21];

  v22 = [(MRDeviceInfo *)self deviceUID];
  v23 = [v22 copy];
  [(_MRDeviceInfoMessageProtobuf *)v3 setDeviceUID:v23];

  v24 = [(MRDeviceInfo *)self managedConfigurationDeviceIdentifier];
  v25 = [v24 copy];
  [(_MRDeviceInfoMessageProtobuf *)v3 setManagedConfigDeviceID:v25];

  v26 = [(MRDeviceInfo *)self tightSyncUID];
  v27 = [v26 copy];
  [(_MRDeviceInfoMessageProtobuf *)v3 setTightSyncUID:v27];

  v28 = [(MRDeviceInfo *)self groupUID];
  v29 = [v28 copy];
  [(_MRDeviceInfoMessageProtobuf *)v3 setGroupUID:v29];

  v30 = [(MRDeviceInfo *)self airPlayGroupUID];
  [(_MRDeviceInfoMessageProtobuf *)v3 setAirPlayGroupID:v30];

  v31 = [(MRDeviceInfo *)self groupName];
  v32 = [v31 copy];
  [(_MRDeviceInfoMessageProtobuf *)v3 setGroupName:v32];

  v33 = [(MRDeviceInfo *)self senderDefaultGroupUID];
  v34 = [v33 copy];
  [(_MRDeviceInfoMessageProtobuf *)v3 setSenderDefaultGroupUID:v34];

  v35 = [(MRDeviceInfo *)self bluetoothAddress];
  v36 = [v35 copy];
  [(_MRDeviceInfoMessageProtobuf *)v3 setBluetoothAddress:v36];

  v37 = [(MRDeviceInfo *)self airPlayReceivers];
  v38 = [v37 copy];
  [(_MRDeviceInfoMessageProtobuf *)v3 setAirplayReceivers:v38];

  v39 = [(MRDeviceInfo *)self linkAgent];
  v40 = [v39 copy];
  [(_MRDeviceInfoMessageProtobuf *)v3 setLinkAgent:v40];

  v41 = [(MRDeviceInfo *)self clusterID];
  v42 = [v41 copy];
  [(_MRDeviceInfoMessageProtobuf *)v3 setClusterID:v42];

  v43 = [(MRDeviceInfo *)self preferredClusterLeaderID];
  v44 = [v43 copy];
  [(_MRDeviceInfoMessageProtobuf *)v3 setClusterLeaderID:v44];

  v45 = [(MRDeviceInfo *)self computerName];
  v46 = [v45 copy];
  [(_MRDeviceInfoMessageProtobuf *)v3 setComputerName:v46];

  v47 = [(MRDeviceInfo *)self modelID];
  [(_MRDeviceInfoMessageProtobuf *)v3 setModelID:v47];

  v48 = [(MRDeviceInfo *)self routingContextID];
  [(_MRDeviceInfoMessageProtobuf *)v3 setRoutingContextID:v48];

  v49 = [(MRDeviceInfo *)self activeSystemEndpointUID];
  [(_MRDeviceInfoMessageProtobuf *)v3 setActiveSystemEndpointUID:v49];

  v50 = [(MRDeviceInfo *)self groupSessionToken];

  if (v50)
  {
    v51 = [(MRDeviceInfo *)self groupSessionToken];
    v52 = [v51 protobuf];
    [(_MRDeviceInfoMessageProtobuf *)v3 setGroupSessionToken:v52];
  }

  v53 = [(MRDeviceInfo *)self leaderDeviceInfo];

  if (v53)
  {
    v54 = [(MRDeviceInfo *)self leaderDeviceInfo];
    v55 = [v54 protobuf];
    [(_MRDeviceInfoMessageProtobuf *)v3 setLeaderDeviceInfo:v55];
  }

  v56 = [(MRDeviceInfo *)self groupedDevices];
  v57 = [v56 mr_map:&__block_literal_global_23_1];
  v58 = [v57 mutableCopy];
  [(_MRDeviceInfoMessageProtobuf *)v3 setGroupedDevices:v58];

  v59 = [(MRDeviceInfo *)self clusteredDevices];
  v60 = [v59 mr_map:&__block_literal_global_25_1];
  v61 = [v60 mutableCopy];
  [(_MRDeviceInfoMessageProtobuf *)v3 setClusteredDevices:v61];

  v62 = [(MRDeviceInfo *)self allClusteredDevices];
  v63 = [v62 mr_map:&__block_literal_global_27];
  v64 = [v63 mutableCopy];
  [(_MRDeviceInfoMessageProtobuf *)v3 setAllClusteredDevices:v64];

  return v3;
}

- (NSString)parentGroupID
{
  if ([(MRDeviceInfo *)self isAirPlayActive])
  {
    v3 = [(MRDeviceInfo *)self groupUID];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)effectiveParentGroupContainsDiscoverableGroupLeader
{
  v3 = [(MRDeviceInfo *)self leaderDeviceInfo];
  if (v3)
  {
    v4 = [(MRDeviceInfo *)self leaderDeviceInfo];
    v5 = [v4 parentGroupContainsDiscoverableGroupLeader];
  }

  else
  {
    v5 = [(MRDeviceInfo *)self parentGroupContainsDiscoverableGroupLeader];
  }

  return v5;
}

+ (int64_t)deviceClass
{
  v2 = MGGetSInt32Answer();

  return _MRDeviceClassFromMGDeviceClass(v2);
}

- (unsigned)deviceSubtype
{
  if ([(MRDeviceInfo *)self clusterType])
  {
    return 15;
  }

  v4 = [(MRDeviceInfo *)self deviceClass];
  if ((v4 - 1) > 6)
  {
    return 0;
  }

  else
  {
    return dword_1A2B80EA0[v4 - 1];
  }
}

- (NSString)WHAIdentifier
{
  v3 = [(MRDeviceInfo *)self clusterID];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(MRDeviceInfo *)self deviceUID];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [(MRDeviceInfo *)self identifier];
    }

    v5 = v8;
  }

  return v5;
}

- (MRDeviceInfo)initWithOutputDevice:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = MRDeviceInfo;
  v5 = [(MRDeviceInfo *)&v22 init];
  if (v5)
  {
    v6 = [v4 name];
    [(MRDeviceInfo *)v5 setName:v6];

    v7 = [v4 primaryID];
    [(MRDeviceInfo *)v5 setDeviceUID:v7];

    v8 = [v4 modelID];
    [(MRDeviceInfo *)v5 setLocalizedModelName:v8];

    v9 = [v4 logicalDeviceID];
    [(MRDeviceInfo *)v5 setTightSyncUID:v9];

    v10 = [v4 groupID];
    [(MRDeviceInfo *)v5 setGroupUID:v10];

    v11 = [v4 airPlayGroupID];
    [(MRDeviceInfo *)v5 setAirPlayGroupUID:v11];

    v12 = [v4 modelID];
    [(MRDeviceInfo *)v5 setModelID:v12];

    if ([v4 clusterType])
    {
      -[MRDeviceInfo setClusterType:](v5, "setClusterType:", [v4 clusterType]);
      v13 = [v4 uid];
      [(MRDeviceInfo *)v5 setClusterID:v13];

      -[MRDeviceInfo setConfiguredClusterSize:](v5, "setConfiguredClusterSize:", [v4 configuredClusterSize]);
    }

    if ([v4 groupContainsGroupLeader])
    {
      [(MRDeviceInfo *)v5 setGroupContainsDiscoverableGroupLeader:1];
    }

    if ([v4 parentGroupContainsDiscoverableLeader])
    {
      [(MRDeviceInfo *)v5 setParentGroupContainsDiscoverableGroupLeader:1];
    }

    v14 = [v4 deviceSubtype];
    v15 = 7;
    if (v14 != 12)
    {
      v15 = -1;
    }

    if (v14 == 13)
    {
      v16 = 4;
    }

    else
    {
      v16 = v15;
    }

    [(MRDeviceInfo *)v5 setDeviceClass:v16];
    v17 = [v4 clusterCompositionOutputDevices];
    v18 = [v17 msv_map:&__block_literal_global_32];
    [(MRDeviceInfo *)v5 setClusteredDevices:v18];

    v19 = [v4 allClusterMembersOutputDevices];
    v20 = [v19 msv_map:&__block_literal_global_2];
    [(MRDeviceInfo *)v5 setAllClusteredDevices:v20];
  }

  return v5;
}

MRDeviceInfo *__37__MRDeviceInfo_initWithOutputDevice___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MRDeviceInfo alloc] initWithOutputDevice:v2];

  return v3;
}

MRDeviceInfo *__37__MRDeviceInfo_initWithOutputDevice___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MRDeviceInfo alloc] initWithOutputDevice:v2];

  return v3;
}

- (MRDeviceInfo)initWithOutputDeviceDescription:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MRDeviceInfo;
  v5 = [(MRDeviceInfo *)&v13 init];
  if (v5)
  {
    v6 = [v4 name];
    [(MRDeviceInfo *)v5 setName:v6];

    v7 = [v4 uid];
    [(MRDeviceInfo *)v5 setDeviceUID:v7];

    v8 = [v4 modelID];
    [(MRDeviceInfo *)v5 setModelID:v8];

    v9 = [v4 deviceSubtype];
    v10 = 7;
    if (v9 != 12)
    {
      v10 = -1;
    }

    if (v9 == 13)
    {
      v11 = 4;
    }

    else
    {
      v11 = v10;
    }

    [(MRDeviceInfo *)v5 setDeviceClass:v11];
  }

  return v5;
}

- (MRDeviceInfo)initWithProtobuf:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v99.receiver = self;
    v99.super_class = MRDeviceInfo;
    v5 = [(MRDeviceInfo *)&v99 init];
    if (v5)
    {
      v5->_protocolVersion = [v4 protocolVersion];
      v5->_hasProtocolVersion = [v4 hasProtocolVersion];
      v5->_deviceClass = MRDeviceClassFromProtobuf([v4 deviceClass]);
      v5->_hasDeviceClass = [v4 hasDeviceClass];
      v5->_groupedDeviceCount = [v4 groupedDevicesCount];
      v5->_tightSyncGroup = [v4 tightlySyncedGroup];
      v5->_hasTightSyncGroup = [v4 hasTightlySyncedGroup];
      v5->_pairingAllowed = [v4 allowsPairing];
      v5->_hasPairingAllowed = [v4 hasAllowsPairing];
      v5->_supportsSystemPairing = [v4 supportsSystemPairing];
      v5->_hasSupportsSystemPairing = [v4 hasSupportsSystemPairing];
      v5->_supportsACL = [v4 supportsACL];
      v5->_hasSupportsACL = [v4 hasSupportsACL];
      v5->_supportsSharedQueue = [v4 supportsSharedQueue];
      v5->_hasSupportsSharedQueue = [v4 hasSupportsSharedQueue];
      v5->_sharedQueueVersion = [v4 sharedQueueVersion];
      v5->_hasSharedQueueVersion = [v4 hasSharedQueueVersion];
      v5->_proxyGroupPlayer = [v4 isProxyGroupPlayer];
      v5->_hasProxyGroupPlayer = [v4 hasIsProxyGroupPlayer];
      v5->_connected = [v4 connected];
      v5->_hasConnected = [v4 hasConnected];
      v5->_supportsExtendedMotion = [v4 supportsExtendedMotion];
      v5->_hasSupportsExtendedMotion = [v4 hasSupportsExtendedMotion];
      v5->_groupLogicalDeviceCount = [v4 logicalDeviceCount];
      v5->_hasGroupLogicalDeviceCount = [v4 hasLogicalDeviceCount];
      v5->_groupLeader = [v4 isGroupLeader];
      v5->_hasGroupLeader = [v4 hasIsGroupLeader];
      v5->_airPlayActive = [v4 isAirplayActive];
      v5->_hasAirPlayActive = [v4 hasIsAirplayActive];
      v5->_supportsMultiplayer = [v4 supportsMultiplayer];
      v5->_hasSupportsMultiplayer = [v4 hasSupportsMultiplayer];
      v5->_parentGroupContainsDiscoverableGroupLeader = [v4 parentGroupContainsDiscoverableGroupLeader];
      v5->_hasParentGroupContainsDiscoverableGroupLeader = [v4 hasParentGroupContainsDiscoverableGroupLeader];
      v5->_groupContainsDiscoverableGroupLeader = [v4 groupContainsDiscoverableGroupLeader];
      v5->_hasGroupContainsDiscoverableGroupLeader = [v4 hasGroupContainsDiscoverableGroupLeader];
      v5->_preferredEncoding = [v4 preferredEncoding] == 1;
      v5->_hasPreferredEncoding = [v4 hasPreferredEncoding];
      v5->_isEligibleForHostingGroupSessionExcludingAcknowledgements = [v4 isEligibleForHostingGroupSessionExcludingAcknowledgements];
      v5->_hasIsEligibleForHostingGroupSessionExcludingAcknowledgements = [v4 hasIsEligibleForHostingGroupSessionExcludingAcknowledgements];
      v5->_clusterType = [v4 clusterType];
      v5->_hasClusterType = [v4 hasClusterType];
      v5->_clusterAware = [v4 isClusterAware];
      v5->_hasIsClusterAware = [v4 hasIsClusterAware];
      v5->_configuredClusterSize = [v4 configuredClusterSize];
      v5->_hasConfiguredClusterSize = [v4 hasConfiguredClusterSize];
      v5->_clusterLeader = [v4 isClusterLeader];
      v5->_hasIsClusterLeader = [v4 hasIsClusterLeader];
      v5->_lastSupportedClusterType = [v4 lastKnownClusterType];
      v5->_hasLastSupportedClusterType = [v4 hasLastKnownClusterType];
      v5->_supportsOutputContextSync = [v4 supportsOutputContextSync];
      v5->_hasSupportsOutputContextSync = [v4 hasSupportsOutputContextSync];
      v5->_lastSupportedProtocolMessageType = [v4 lastSupportedMessageType];
      v5->_hasLastSupportedProtocolMessageType = [v4 hasLastSupportedMessageType];
      v5->_parentGroupSupportsGroupCohesion = [v4 parentGroupSupportsGroupCohesion];
      v5->_hasParentGroupSupportsGroupCohesion = [v4 hasParentGroupSupportsGroupCohesion];
      v6 = [v4 name];
      v7 = [v6 copy];
      name = v5->_name;
      v5->_name = v7;

      v9 = [v4 uniqueIdentifier];
      v10 = [v9 copy];
      identifier = v5->_identifier;
      v5->_identifier = v10;

      v12 = [v4 localizedModelName];
      v13 = [v12 copy];
      localizedModelName = v5->_localizedModelName;
      v5->_localizedModelName = v13;

      v15 = [v4 systemBuildVersion];
      v16 = [v15 copy];
      buildVersion = v5->_buildVersion;
      v5->_buildVersion = v16;

      v18 = [v4 applicationBundleIdentifier];
      v19 = [v18 copy];
      bundleIdentifier = v5->_bundleIdentifier;
      v5->_bundleIdentifier = v19;

      v21 = [v4 applicationBundleVersion];
      v22 = [v21 copy];
      bundleVersion = v5->_bundleVersion;
      v5->_bundleVersion = v22;

      v24 = [v4 systemMediaApplication];
      v25 = [v24 copy];
      systemMediaApplication = v5->_systemMediaApplication;
      v5->_systemMediaApplication = v25;

      v27 = [v4 systemPodcastApplication];
      v28 = [v27 copy];
      systemPodcastApplication = v5->_systemPodcastApplication;
      v5->_systemPodcastApplication = v28;

      v30 = [v4 systemBooksApplication];
      v31 = [v30 copy];
      systemBooksApplication = v5->_systemBooksApplication;
      v5->_systemBooksApplication = v31;

      v33 = [v4 deviceUID];
      v34 = [v33 copy];
      deviceUID = v5->_deviceUID;
      v5->_deviceUID = v34;

      v36 = [v4 managedConfigDeviceID];
      v37 = [v36 copy];
      managedConfigurationDeviceIdentifier = v5->_managedConfigurationDeviceIdentifier;
      v5->_managedConfigurationDeviceIdentifier = v37;

      v39 = [v4 tightSyncUID];
      v40 = [v39 copy];
      tightSyncUID = v5->_tightSyncUID;
      v5->_tightSyncUID = v40;

      v42 = [v4 groupUID];
      v43 = [v42 copy];
      groupUID = v5->_groupUID;
      v5->_groupUID = v43;

      v45 = [v4 airPlayGroupID];
      v46 = [v45 copy];
      airPlayGroupUID = v5->_airPlayGroupUID;
      v5->_airPlayGroupUID = v46;

      v48 = [v4 groupName];
      v49 = [v48 copy];
      groupName = v5->_groupName;
      v5->_groupName = v49;

      v51 = [v4 senderDefaultGroupUID];
      v52 = [v51 copy];
      senderDefaultGroupUID = v5->_senderDefaultGroupUID;
      v5->_senderDefaultGroupUID = v52;

      v54 = [v4 bluetoothAddress];
      v55 = [v54 copy];
      bluetoothAddress = v5->_bluetoothAddress;
      v5->_bluetoothAddress = v55;

      v57 = [v4 airplayReceivers];
      v58 = [v57 copy];
      airPlayReceivers = v5->_airPlayReceivers;
      v5->_airPlayReceivers = v58;

      v60 = [v4 linkAgent];
      v61 = [v60 copy];
      linkAgent = v5->_linkAgent;
      v5->_linkAgent = v61;

      v63 = [v4 clusterID];
      v64 = [v63 copy];
      clusterID = v5->_clusterID;
      v5->_clusterID = v64;

      v66 = [v4 clusterLeaderID];
      v67 = [v66 copy];
      preferredClusterLeaderID = v5->_preferredClusterLeaderID;
      v5->_preferredClusterLeaderID = v67;

      v69 = [v4 modelID];
      v70 = [v69 copy];
      modelID = v5->_modelID;
      v5->_modelID = v70;

      v72 = [v4 routingContextID];
      v73 = [v72 copy];
      routingContextID = v5->_routingContextID;
      v5->_routingContextID = v73;

      v75 = [v4 computerName];
      v76 = [v75 copy];
      computerName = v5->_computerName;
      v5->_computerName = v76;

      v78 = [v4 activeSystemEndpointUID];
      activeSystemEndpointUID = v5->_activeSystemEndpointUID;
      v5->_activeSystemEndpointUID = v78;

      v80 = [v4 groupSessionToken];
      if (v80)
      {
        v81 = [[MRGroupSessionToken alloc] initWithProtobuf:v80];
        groupSessionToken = v5->_groupSessionToken;
        v5->_groupSessionToken = v81;
      }

      v83 = [v4 leaderDeviceInfo];

      if (v83)
      {
        v84 = [MRDeviceInfo alloc];
        v85 = [v4 leaderDeviceInfo];
        v86 = [(MRDeviceInfo *)v84 initWithProtobuf:v85];
        leaderDeviceInfo = v5->_leaderDeviceInfo;
        v5->_leaderDeviceInfo = v86;
      }

      v88 = [v4 groupedDevices];
      v89 = [v88 mr_map:&__block_literal_global_6_0];
      groupedDevices = v5->_groupedDevices;
      v5->_groupedDevices = v89;

      v91 = [v4 clusteredDevices];
      v92 = [v91 mr_map:&__block_literal_global_8_1];
      clusteredDevices = v5->_clusteredDevices;
      v5->_clusteredDevices = v92;

      v94 = [v4 allClusteredDevices];
      v95 = [v94 mr_map:&__block_literal_global_10_0];
      allClusteredDevices = v5->_allClusteredDevices;
      v5->_allClusteredDevices = v95;
    }

    self = v5;
    v97 = self;
  }

  else
  {
    v97 = 0;
  }

  return v97;
}

MRDeviceInfo *__33__MRDeviceInfo_initWithProtobuf___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MRDeviceInfo alloc] initWithProtobuf:v2];

  return v3;
}

MRDeviceInfo *__33__MRDeviceInfo_initWithProtobuf___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MRDeviceInfo alloc] initWithProtobuf:v2];

  return v3;
}

MRDeviceInfo *__33__MRDeviceInfo_initWithProtobuf___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MRDeviceInfo alloc] initWithProtobuf:v2];

  return v3;
}

- (MRDeviceInfo)initWithData:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_MRDeviceInfoMessageProtobuf alloc] initWithData:v4];
    v6 = [(MRDeviceInfo *)self initWithProtobuf:v5];
  }

  else
  {
    v6 = [(MRDeviceInfo *)self initWithProtobuf:0];
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MRDeviceInfo *)self protobuf];
  [v4 encodeObject:v5 forKey:@"protobuf"];
}

- (MRDeviceInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [MRDeviceInfo alloc];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"protobuf"];

  v7 = [(MRDeviceInfo *)v5 initWithProtobuf:v6];
  return v7;
}

+ (id)deviceInfosFromData:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x1E695DFD8];
    v4 = a3;
    v5 = objc_opt_class();
    v6 = [v3 setWithObjects:{v5, objc_opt_class(), 0}];
    v7 = MSVUnarchivedObjectOfClasses();

    v8 = [v7 mr_map:&__block_literal_global_18];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

MRDeviceInfo *__36__MRDeviceInfo_deviceInfosFromData___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MRDeviceInfo alloc] initWithData:v2];

  return v3;
}

+ (id)dataFromDeviceInfos:(id)a3
{
  if (a3)
  {
    v3 = [a3 mr_map:&__block_literal_global_21_0];
    v4 = MSVArchivedDataWithRootObject();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(MRDeviceInfo *)self name];
  [v3 setObject:v4 forKeyedSubscript:@"name"];

  v5 = [(MRDeviceInfo *)self identifier];
  [v3 setObject:v5 forKeyedSubscript:@"identifier"];

  v6 = [(MRDeviceInfo *)self localizedModelName];
  [v3 setObject:v6 forKeyedSubscript:@"localizedModelName"];

  v7 = [(MRDeviceInfo *)self buildVersion];
  [v3 setObject:v7 forKeyedSubscript:@"buildVersion"];

  v8 = [(MRDeviceInfo *)self bundleIdentifier];
  [v3 setObject:v8 forKeyedSubscript:@"bundleIdentifier"];

  v9 = [(MRDeviceInfo *)self bundleVersion];
  [v3 setObject:v9 forKeyedSubscript:@"bundleVersion"];

  v10 = [(MRDeviceInfo *)self systemMediaApplication];
  [v3 setObject:v10 forKeyedSubscript:@"systemMediaApplication"];

  v11 = [(MRDeviceInfo *)self systemPodcastApplication];
  [v3 setObject:v11 forKeyedSubscript:@"systemPodcastApplication"];

  v12 = [(MRDeviceInfo *)self systemBooksApplication];
  [v3 setObject:v12 forKeyedSubscript:@"systemBooksApplication"];

  v13 = [(MRDeviceInfo *)self deviceUID];
  [v3 setObject:v13 forKeyedSubscript:@"deviceUID"];

  v14 = [(MRDeviceInfo *)self localReceiverPairingIdentity];
  [v3 setObject:v14 forKeyedSubscript:@"localReceiverPairingIdentity"];

  v15 = [(MRDeviceInfo *)self managedConfigurationDeviceIdentifier];
  [v3 setObject:v15 forKeyedSubscript:@"managedConfigurationDeviceIdentifier"];

  v16 = [(MRDeviceInfo *)self tightSyncUID];
  [v3 setObject:v16 forKeyedSubscript:@"tightSyncUID"];

  v17 = [(MRDeviceInfo *)self groupUID];
  [v3 setObject:v17 forKeyedSubscript:@"groupUID"];

  v18 = [(MRDeviceInfo *)self airPlayGroupUID];
  [v3 setObject:v18 forKeyedSubscript:@"airPlayGroupUID"];

  v19 = [(MRDeviceInfo *)self groupName];
  [v3 setObject:v19 forKeyedSubscript:@"groupName"];

  v20 = [(MRDeviceInfo *)self senderDefaultGroupUID];
  [v3 setObject:v20 forKeyedSubscript:@"senderDefaultGroupUID"];

  v21 = [(MRDeviceInfo *)self bluetoothAddress];
  [v3 setObject:v21 forKeyedSubscript:@"bluetoothAddress"];

  v22 = [(MRDeviceInfo *)self groupedDevices];
  [v3 setObject:v22 forKeyedSubscript:@"groupedDevices"];

  v23 = [(MRDeviceInfo *)self clusteredDevices];
  [v3 setObject:v23 forKeyedSubscript:@"clusteredDevices"];

  v24 = [(MRDeviceInfo *)self allClusteredDevices];
  [v3 setObject:v24 forKeyedSubscript:@"allClusteredDevices"];

  v25 = [(MRDeviceInfo *)self airPlayReceivers];
  [v3 setObject:v25 forKeyedSubscript:@"airPlayReceivers"];

  v26 = [(MRDeviceInfo *)self linkAgent];
  [v3 setObject:v26 forKeyedSubscript:@"linkAgent"];

  v27 = [(MRDeviceInfo *)self clusterID];
  [v3 setObject:v27 forKeyedSubscript:@"clusterID"];

  v28 = [(MRDeviceInfo *)self preferredClusterLeaderID];
  [v3 setObject:v28 forKeyedSubscript:@"clusterLeaderID"];

  v29 = [(MRDeviceInfo *)self modelID];
  [v3 setObject:v29 forKeyedSubscript:@"modelID"];

  v30 = [(MRDeviceInfo *)self routingContextID];
  [v3 setObject:v30 forKeyedSubscript:@"routingContextID"];

  v31 = [(MRDeviceInfo *)self parentGroupID];
  [v3 setObject:v31 forKeyedSubscript:@"parentGroupID"];

  v32 = [(MRDeviceInfo *)self computerName];
  [v3 setObject:v32 forKeyedSubscript:@"computerName"];

  if ([(MRDeviceInfo *)self hasDeviceClass])
  {
    v33 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MRDeviceInfo deviceClass](self, "deviceClass")}];
    [v3 setObject:v33 forKeyedSubscript:@"deviceClass"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"deviceClass"];
  }

  if ([(MRDeviceInfo *)self hasProtocolVersion])
  {
    v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MRDeviceInfo protocolVersion](self, "protocolVersion")}];
    [v3 setObject:v34 forKeyedSubscript:@"protocolVersion"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"protocolVersion"];
  }

  if ([(MRDeviceInfo *)self hasGroupedDeviceCount])
  {
    v35 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MRDeviceInfo groupedDeviceCount](self, "groupedDeviceCount")}];
    [v3 setObject:v35 forKeyedSubscript:@"groupedDeviceCount"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"groupedDeviceCount"];
  }

  if ([(MRDeviceInfo *)self hasSharedQueueVersion])
  {
    v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MRDeviceInfo sharedQueueVersion](self, "sharedQueueVersion")}];
    [v3 setObject:v36 forKeyedSubscript:@"sharedQueueVersion"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"sharedQueueVersion"];
  }

  if ([(MRDeviceInfo *)self hasGroupLogicalDeviceCount])
  {
    v37 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MRDeviceInfo groupLogicalDeviceCount](self, "groupLogicalDeviceCount")}];
    [v3 setObject:v37 forKeyedSubscript:@"groupLogicalDeviceCount"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"groupLogicalDeviceCount"];
  }

  if ([(MRDeviceInfo *)self hasSupportsSystemPairing])
  {
    v38 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRDeviceInfo supportsSystemPairing](self, "supportsSystemPairing")}];
    [v3 setObject:v38 forKeyedSubscript:@"supportsSystemPairing"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"supportsSystemPairing"];
  }

  if ([(MRDeviceInfo *)self hasSupportsACL])
  {
    v39 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRDeviceInfo supportsACL](self, "supportsACL")}];
    [v3 setObject:v39 forKeyedSubscript:@"supportsACL"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"supportsACL"];
  }

  if ([(MRDeviceInfo *)self hasSupportsSharedQueue])
  {
    v40 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRDeviceInfo supportsSharedQueue](self, "supportsSharedQueue")}];
    [v3 setObject:v40 forKeyedSubscript:@"supportsSharedQueue"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"supportsSharedQueue"];
  }

  if ([(MRDeviceInfo *)self hasSupportsExtendedMotion])
  {
    v41 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRDeviceInfo supportsExtendedMotion](self, "supportsExtendedMotion")}];
    [v3 setObject:v41 forKeyedSubscript:@"supportsExtendedMotion"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"supportsExtendedMotion"];
  }

  if ([(MRDeviceInfo *)self hasTightSyncGroup])
  {
    v42 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRDeviceInfo isTightSyncGroup](self, "isTightSyncGroup")}];
    [v3 setObject:v42 forKeyedSubscript:@"tightSyncGroup"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"tightSyncGroup"];
  }

  if ([(MRDeviceInfo *)self hasPairingAllowed])
  {
    v43 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRDeviceInfo isPairingAllowed](self, "isPairingAllowed")}];
    [v3 setObject:v43 forKeyedSubscript:@"pairingAllowed"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"pairingAllowed"];
  }

  if ([(MRDeviceInfo *)self hasProxyGroupPlayer])
  {
    v44 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRDeviceInfo isProxyGroupPlayer](self, "isProxyGroupPlayer")}];
    [v3 setObject:v44 forKeyedSubscript:@"proxyGroupPlayer"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"proxyGroupPlayer"];
  }

  if ([(MRDeviceInfo *)self hasConnected])
  {
    v45 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRDeviceInfo isConnected](self, "isConnected")}];
    [v3 setObject:v45 forKeyedSubscript:@"connected"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"connected"];
  }

  if ([(MRDeviceInfo *)self hasGroupLeader])
  {
    v46 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRDeviceInfo isGroupLeader](self, "isGroupLeader")}];
    [v3 setObject:v46 forKeyedSubscript:@"groupLeader"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"groupLeader"];
  }

  if ([(MRDeviceInfo *)self hasAirPlayActive])
  {
    v47 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRDeviceInfo isAirPlayActive](self, "isAirPlayActive")}];
    [v3 setObject:v47 forKeyedSubscript:@"airPlayActive"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"airPlayActive"];
  }

  if ([(MRDeviceInfo *)self clusterType])
  {
    v48 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MRDeviceInfo clusterType](self, "clusterType")}];
    [v3 setObject:v48 forKeyedSubscript:@"clusterType"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"clusterType"];
  }

  if ([(MRDeviceInfo *)self isClusterAware])
  {
    v49 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRDeviceInfo isClusterAware](self, "isClusterAware")}];
    [v3 setObject:v49 forKeyedSubscript:@"clusterAware"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"clusterAware"];
  }

  if ([(MRDeviceInfo *)self configuredClusterSize])
  {
    v50 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MRDeviceInfo configuredClusterSize](self, "configuredClusterSize")}];
    [v3 setObject:v50 forKeyedSubscript:@"configuredClusterSize"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"configuredClusterSize"];
  }

  if ([(MRDeviceInfo *)self isClusterLeader])
  {
    v51 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRDeviceInfo isClusterLeader](self, "isClusterLeader")}];
    [v3 setObject:v51 forKeyedSubscript:@"clusterLeader"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"clusterLeader"];
  }

  if ([(MRDeviceInfo *)self hasSupportsMultiplayer])
  {
    v52 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRDeviceInfo supportsMultiplayer](self, "supportsMultiplayer")}];
    [v3 setObject:v52 forKeyedSubscript:@"supportsMultiplayer"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"supportsMultiplayer"];
  }

  if ([(MRDeviceInfo *)self hasParentGroupContainsDiscoverableGroupLeader])
  {
    v53 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRDeviceInfo parentGroupContainsDiscoverableGroupLeader](self, "parentGroupContainsDiscoverableGroupLeader")}];
    [v3 setObject:v53 forKeyedSubscript:@"parentGroupContainsGroupLeader"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"parentGroupContainsGroupLeader"];
  }

  if ([(MRDeviceInfo *)self hasGroupContainsDiscoverableGroupLeader])
  {
    v54 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRDeviceInfo groupContainsDiscoverableGroupLeader](self, "groupContainsDiscoverableGroupLeader")}];
    [v3 setObject:v54 forKeyedSubscript:@"groupContainsGroupLeader"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"groupContainsGroupLeader"];
  }

  if ([(MRDeviceInfo *)self hasPreferredEncoding])
  {
    v55 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MRDeviceInfo preferredEncoding](self, "preferredEncoding")}];
    [v3 setObject:v55 forKeyedSubscript:@"preferredEncoding"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"preferredEncoding"];
  }

  if ([(MRDeviceInfo *)self lastSupportedClusterType])
  {
    v56 = off_1E769D2D0[[(MRDeviceInfo *)self lastSupportedClusterType]];
    v57 = v3;
  }

  else
  {
    v57 = v3;
    v56 = 0;
  }

  [v57 setObject:v56 forKeyedSubscript:@"lastSupportedClusterType"];
  if ([(MRDeviceInfo *)self supportsOutputContextSync])
  {
    v58 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRDeviceInfo supportsOutputContextSync](self, "supportsOutputContextSync")}];
    [v3 setObject:v58 forKeyedSubscript:@"supportsOutputContextSync"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"supportsOutputContextSync"];
  }

  if ([(MRDeviceInfo *)self lastSupportedProtocolMessageType])
  {
    v59 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MRDeviceInfo lastSupportedProtocolMessageType](self, "lastSupportedProtocolMessageType")}];
    [v3 setObject:v59 forKeyedSubscript:@"lastSupportedMessageType"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"lastSupportedMessageType"];
  }

  v60 = [(MRDeviceInfo *)self groupSessionToken];
  [v3 setObject:v60 forKeyedSubscript:@"groupSessionToken"];

  if ([(MRDeviceInfo *)self isEligibleForHostingGroupSessionExcludingAcknowledgements])
  {
    v61 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRDeviceInfo isEligibleForHostingGroupSessionExcludingAcknowledgements](self, "isEligibleForHostingGroupSessionExcludingAcknowledgements")}];
    [v3 setObject:v61 forKeyedSubscript:@"isEligibleForHostingGroupSessionExcludingAcknowledgements"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"isEligibleForHostingGroupSessionExcludingAcknowledgements"];
  }

  v62 = [(MRDeviceInfo *)self activeSystemEndpointUID];
  [v3 setObject:v62 forKeyedSubscript:@"activeSystemEndpointUID"];

  v63 = [(MRDeviceInfo *)self leaderDeviceInfo];
  v64 = [v63 dictionaryRepresentation];
  [v3 setObject:v64 forKeyedSubscript:@"leaderDeviceInfo"];

  if ([(MRDeviceInfo *)self hasParentGroupSupportsGroupCohesion])
  {
    v65 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRDeviceInfo parentGroupSupportsGroupCohesion](self, "parentGroupSupportsGroupCohesion")}];
    [v3 setObject:v65 forKeyedSubscript:@"parentGroupSupportsGroupCohesion"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"parentGroupSupportsGroupCohesion"];
  }

  return v3;
}

- (MRDeviceInfo)skeleton
{
  v3 = objc_alloc_init(MRDeviceInfo);
  v4 = [(MRDeviceInfo *)self identifier];
  [(MRDeviceInfo *)v3 setIdentifier:v4];

  v5 = [(MRDeviceInfo *)self name];

  if (v5)
  {
    v6 = [(MRDeviceInfo *)self name];
    [(MRDeviceInfo *)v3 setName:v6];
  }

  v7 = [(MRDeviceInfo *)self deviceUID];

  if (v7)
  {
    v8 = [(MRDeviceInfo *)self deviceUID];
    [(MRDeviceInfo *)v3 setDeviceUID:v8];
  }

  v9 = [(MRDeviceInfo *)self groupUID];

  if (v9)
  {
    v10 = [(MRDeviceInfo *)self groupUID];
    [(MRDeviceInfo *)v3 setGroupUID:v10];
  }

  v11 = [(MRDeviceInfo *)self airPlayGroupUID];

  if (v11)
  {
    v12 = [(MRDeviceInfo *)self airPlayGroupUID];
    [(MRDeviceInfo *)v3 setAirPlayGroupUID:v12];
  }

  v13 = [(MRDeviceInfo *)self groupName];

  if (v13)
  {
    v14 = [(MRDeviceInfo *)self groupName];
    [(MRDeviceInfo *)v3 setGroupName:v14];
  }

  if ([(MRDeviceInfo *)self isProxyGroupPlayer])
  {
    [(MRDeviceInfo *)v3 setProxyGroupPlayer:1];
  }

  if ([(MRDeviceInfo *)self isAirPlayActive])
  {
    [(MRDeviceInfo *)v3 setAirPlayActive:1];
  }

  if ([(MRDeviceInfo *)self isGroupLeader])
  {
    [(MRDeviceInfo *)v3 setGroupLeader:1];
  }

  v15 = [(MRDeviceInfo *)self tightSyncUID];

  if (v15)
  {
    v16 = [(MRDeviceInfo *)self tightSyncUID];
    [(MRDeviceInfo *)v3 setTightSyncUID:v16];
  }

  v17 = [(MRDeviceInfo *)self routingContextID];

  if (v17)
  {
    v18 = [(MRDeviceInfo *)self routingContextID];
    [(MRDeviceInfo *)v3 setRoutingContextID:v18];
  }

  return v3;
}

- (NSString)minimalDescription
{
  v2 = [(MRDeviceInfo *)self skeleton];
  v3 = [v2 description];

  return v3;
}

- (BOOL)hasPlaceholderGroupSession
{
  v3 = [(MRDeviceInfo *)self groupSessionToken];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(MRDeviceInfo *)self isEligibleForHostingGroupSessionExcludingAcknowledgements];
  }

  return v4;
}

- (BOOL)containsLocalDevice
{
  v3 = MRMediaRemoteCopyDeviceUID();
  LOBYTE(self) = [(MRDeviceInfo *)self containsDevice:v3];

  return self;
}

- (BOOL)containsDevice:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MRDeviceInfo *)self clusterID];
  v6 = [v5 isEqual:v4];

  if ((v6 & 1) == 0)
  {
    v7 = [(MRDeviceInfo *)self deviceUID];
    v8 = [v7 isEqual:v4];

    if ((v8 & 1) == 0)
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v10 = [(MRDeviceInfo *)self groupedDevices];
      v11 = [v10 countByEnumeratingWithState:&v31 objects:v37 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v32;
LABEL_6:
        v14 = 0;
        while (1)
        {
          if (*v32 != v13)
          {
            objc_enumerationMutation(v10);
          }

          if ([*(*(&v31 + 1) + 8 * v14) containsDevice:v4])
          {
            break;
          }

          if (v12 == ++v14)
          {
            v12 = [v10 countByEnumeratingWithState:&v31 objects:v37 count:16];
            if (v12)
            {
              goto LABEL_6;
            }

            goto LABEL_12;
          }
        }
      }

      else
      {
LABEL_12:

        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v10 = [(MRDeviceInfo *)self clusteredDevices];
        v15 = [v10 countByEnumeratingWithState:&v27 objects:v36 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v28;
LABEL_14:
          v18 = 0;
          while (1)
          {
            if (*v28 != v17)
            {
              objc_enumerationMutation(v10);
            }

            if ([*(*(&v27 + 1) + 8 * v18) containsDevice:v4])
            {
              break;
            }

            if (v16 == ++v18)
            {
              v16 = [v10 countByEnumeratingWithState:&v27 objects:v36 count:16];
              if (v16)
              {
                goto LABEL_14;
              }

              goto LABEL_20;
            }
          }
        }

        else
        {
LABEL_20:

          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          v10 = [(MRDeviceInfo *)self allClusteredDevices];
          v9 = [v10 countByEnumeratingWithState:&v23 objects:v35 count:16];
          if (!v9)
          {
LABEL_30:

            goto LABEL_31;
          }

          v19 = *v24;
LABEL_22:
          v20 = 0;
          while (1)
          {
            if (*v24 != v19)
            {
              objc_enumerationMutation(v10);
            }

            if ([*(*(&v23 + 1) + 8 * v20) containsDevice:v4])
            {
              break;
            }

            if (v9 == ++v20)
            {
              v9 = [v10 countByEnumeratingWithState:&v23 objects:v35 count:16];
              if (v9)
              {
                goto LABEL_22;
              }

              goto LABEL_30;
            }
          }
        }
      }

      LOBYTE(v9) = 1;
      goto LABEL_30;
    }
  }

  LOBYTE(v9) = 1;
LABEL_31:

  v21 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)matchesUID:(id)a3
{
  v4 = a3;
  v5 = [(MRDeviceInfo *)self deviceUID];
  if ([v5 isEqualToString:v4])
  {
    v6 = 1;
  }

  else
  {
    v7 = [(MRDeviceInfo *)self clusterID];
    if ([v7 isEqualToString:v4])
    {
      v6 = 1;
    }

    else
    {
      v8 = [(MRDeviceInfo *)self identifier];
      v6 = [v8 isEqualToString:v4];
    }
  }

  return v6;
}

- (id)resolveOutputDeviceUIDs:(id)a3
{
  v4 = a3;
  v5 = [(MRDeviceInfo *)self deviceUID];

  if (v5)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __40__MRDeviceInfo_resolveOutputDeviceUIDs___block_invoke;
    v9[3] = &unk_1E769D2B0;
    v9[4] = self;
    v6 = [v4 msv_map:v9];
  }

  else
  {
    v6 = v4;
  }

  v7 = v6;

  return v7;
}

id __40__MRDeviceInfo_resolveOutputDeviceUIDs___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isEqualToString:@"LOCAL_DEVICE"] || (+[MRAVOutputDevice localDeviceUID](MRAVOutputDevice, "localDeviceUID"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v3, "isEqualToString:", v4), v4, v5))
  {
    v6 = [*(a1 + 32) deviceUID];
  }

  else
  {
    v6 = v3;
  }

  v7 = v6;

  return v7;
}

- (id)deltaDescriptionFromDeviceInfo:(id)a3 minimal:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 dictionaryRepresentation];
  v8 = [(MRDeviceInfo *)self dictionaryRepresentation];
  v22 = 0;
  v23 = 0;
  v21 = 0;
  MRDictionaryCalculateDeltas(v7, v8, &v23, &v22, &v21);
  v9 = v23;
  v10 = v22;
  v11 = v21;

  v12 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v13 = objc_alloc(MEMORY[0x1E696AEC0]);
  v14 = v13;
  if (v4)
  {
    v15 = [(MRDeviceInfo *)self skeleton];
    v16 = [v14 initWithFormat:@"%@", v15];
    [v12 appendString:v16];
  }

  else
  {
    v15 = [v13 initWithFormat:@"DeviceInfo changed from\n %@ \nto\n %@\n", v6, self];
    [v12 appendString:v15];
  }

  if ([v9 count])
  {
    [v12 appendString:@"\n"];
    [v12 appendString:@"Added Fields:\n"];
    v17 = [v9 description];
    [v12 appendString:v17];
  }

  if ([v10 count])
  {
    [v12 appendString:@"\n"];
    [v12 appendString:@"Removed Fields: \n"];
    v18 = [v10 description];
    [v12 appendString:v18];
  }

  if ([v11 count])
  {
    [v12 appendString:@"\n"];
    [v12 appendString:@"Updated values: \n"];
    v19 = [v11 description];
    [v12 appendString:v19];
  }

  [v12 appendString:@"\n"];

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v5 setDeviceClass:{-[MRDeviceInfo deviceClass](self, "deviceClass")}];
  [v5 setHasDeviceClass:{-[MRDeviceInfo hasDeviceClass](self, "hasDeviceClass")}];
  [v5 setProtocolVersion:{-[MRDeviceInfo protocolVersion](self, "protocolVersion")}];
  [v5 setHasProtocolVersion:{-[MRDeviceInfo hasProtocolVersion](self, "hasProtocolVersion")}];
  [v5 setGroupedDeviceCount:{-[MRDeviceInfo groupedDeviceCount](self, "groupedDeviceCount")}];
  [v5 setHasGroupedDeviceCount:{-[MRDeviceInfo hasGroupedDeviceCount](self, "hasGroupedDeviceCount")}];
  [v5 setSharedQueueVersion:{-[MRDeviceInfo sharedQueueVersion](self, "sharedQueueVersion")}];
  [v5 setHasSharedQueueVersion:{-[MRDeviceInfo hasSharedQueueVersion](self, "hasSharedQueueVersion")}];
  [v5 setGroupLogicalDeviceCount:{-[MRDeviceInfo groupLogicalDeviceCount](self, "groupLogicalDeviceCount")}];
  [v5 setHasGroupLogicalDeviceCount:{-[MRDeviceInfo hasGroupLogicalDeviceCount](self, "hasGroupLogicalDeviceCount")}];
  [v5 setSupportsSystemPairing:{-[MRDeviceInfo supportsSystemPairing](self, "supportsSystemPairing")}];
  [v5 setHasSupportsSystemPairing:{-[MRDeviceInfo hasSupportsSystemPairing](self, "hasSupportsSystemPairing")}];
  [v5 setSupportsACL:{-[MRDeviceInfo supportsACL](self, "supportsACL")}];
  [v5 setHasSupportsACL:{-[MRDeviceInfo hasSupportsACL](self, "hasSupportsACL")}];
  [v5 setSupportsSharedQueue:{-[MRDeviceInfo supportsSharedQueue](self, "supportsSharedQueue")}];
  [v5 setHasSupportsSharedQueue:{-[MRDeviceInfo hasSupportsSharedQueue](self, "hasSupportsSharedQueue")}];
  [v5 setSupportsExtendedMotion:{-[MRDeviceInfo supportsExtendedMotion](self, "supportsExtendedMotion")}];
  [v5 setHasSupportsExtendedMotion:{-[MRDeviceInfo hasSupportsExtendedMotion](self, "hasSupportsExtendedMotion")}];
  [v5 setTightSyncGroup:{-[MRDeviceInfo isTightSyncGroup](self, "isTightSyncGroup")}];
  [v5 setHasTightSyncGroup:{-[MRDeviceInfo hasTightSyncGroup](self, "hasTightSyncGroup")}];
  [v5 setPairingAllowed:{-[MRDeviceInfo isPairingAllowed](self, "isPairingAllowed")}];
  [v5 setHasPairingAllowed:{-[MRDeviceInfo hasPairingAllowed](self, "hasPairingAllowed")}];
  [v5 setProxyGroupPlayer:{-[MRDeviceInfo isProxyGroupPlayer](self, "isProxyGroupPlayer")}];
  [v5 setHasProxyGroupPlayer:{-[MRDeviceInfo hasProxyGroupPlayer](self, "hasProxyGroupPlayer")}];
  [v5 setConnected:{-[MRDeviceInfo isConnected](self, "isConnected")}];
  [v5 setHasConnected:{-[MRDeviceInfo hasConnected](self, "hasConnected")}];
  [v5 setGroupLeader:{-[MRDeviceInfo isGroupLeader](self, "isGroupLeader")}];
  [v5 setHasGroupLeader:{-[MRDeviceInfo hasGroupLeader](self, "hasGroupLeader")}];
  [v5 setAirPlayActive:{-[MRDeviceInfo isAirPlayActive](self, "isAirPlayActive")}];
  [v5 setHasAirPlayActive:{-[MRDeviceInfo hasAirPlayActive](self, "hasAirPlayActive")}];
  [v5 setSupportsMultiplayer:{-[MRDeviceInfo supportsMultiplayer](self, "supportsMultiplayer")}];
  [v5 setHasSupportsMultiplayer:{-[MRDeviceInfo hasSupportsMultiplayer](self, "hasSupportsMultiplayer")}];
  [v5 setParentGroupContainsDiscoverableGroupLeader:{-[MRDeviceInfo parentGroupContainsDiscoverableGroupLeader](self, "parentGroupContainsDiscoverableGroupLeader")}];
  [v5 setHasParentGroupContainsDiscoverableGroupLeader:{-[MRDeviceInfo hasParentGroupContainsDiscoverableGroupLeader](self, "hasParentGroupContainsDiscoverableGroupLeader")}];
  [v5 setGroupContainsDiscoverableGroupLeader:{-[MRDeviceInfo groupContainsDiscoverableGroupLeader](self, "groupContainsDiscoverableGroupLeader")}];
  [v5 setHasGroupContainsDiscoverableGroupLeader:{-[MRDeviceInfo hasGroupContainsDiscoverableGroupLeader](self, "hasGroupContainsDiscoverableGroupLeader")}];
  [v5 setIsEligibleForHostingGroupSessionExcludingAcknowledgements:{-[MRDeviceInfo isEligibleForHostingGroupSessionExcludingAcknowledgements](self, "isEligibleForHostingGroupSessionExcludingAcknowledgements")}];
  [v5 setHasIsEligibleForHostingGroupSessionExcludingAcknowledgements:{-[MRDeviceInfo hasIsEligibleForHostingGroupSessionExcludingAcknowledgements](self, "hasIsEligibleForHostingGroupSessionExcludingAcknowledgements")}];
  [v5 setClusterType:{-[MRDeviceInfo clusterType](self, "clusterType")}];
  [v5 setHasClusterType:{-[MRDeviceInfo hasClusterType](self, "hasClusterType")}];
  [v5 setClusterAware:{-[MRDeviceInfo isClusterAware](self, "isClusterAware")}];
  [v5 setHasIsClusterAware:{-[MRDeviceInfo hasIsClusterAware](self, "hasIsClusterAware")}];
  [v5 setClusterLeader:{-[MRDeviceInfo isClusterLeader](self, "isClusterLeader")}];
  [v5 setHasIsClusterLeader:{-[MRDeviceInfo hasIsClusterLeader](self, "hasIsClusterLeader")}];
  [v5 setConfiguredClusterSize:{-[MRDeviceInfo configuredClusterSize](self, "configuredClusterSize")}];
  [v5 setHasConfiguredClusterSize:{-[MRDeviceInfo hasConfiguredClusterSize](self, "hasConfiguredClusterSize")}];
  [v5 setLastSupportedClusterType:{-[MRDeviceInfo lastSupportedClusterType](self, "lastSupportedClusterType")}];
  [v5 setHasLastSupportedClusterType:{-[MRDeviceInfo hasLastSupportedClusterType](self, "hasLastSupportedClusterType")}];
  [v5 setSupportsOutputContextSync:{-[MRDeviceInfo supportsOutputContextSync](self, "supportsOutputContextSync")}];
  [v5 setHasSupportsOutputContextSync:{-[MRDeviceInfo hasSupportsOutputContextSync](self, "hasSupportsOutputContextSync")}];
  [v5 setLastSupportedProtocolMessageType:{-[MRDeviceInfo lastSupportedProtocolMessageType](self, "lastSupportedProtocolMessageType")}];
  [v5 setHasLastSupportedProtocolMessageType:{-[MRDeviceInfo hasLastSupportedProtocolMessageType](self, "hasLastSupportedProtocolMessageType")}];
  [v5 setParentGroupSupportsGroupCohesion:{-[MRDeviceInfo parentGroupSupportsGroupCohesion](self, "parentGroupSupportsGroupCohesion")}];
  [v5 setHasParentGroupSupportsGroupCohesion:{-[MRDeviceInfo hasParentGroupSupportsGroupCohesion](self, "hasParentGroupSupportsGroupCohesion")}];
  v6 = [(MRDeviceInfo *)self name];
  v7 = [v6 copyWithZone:a3];
  [v5 setName:v7];

  v8 = [(MRDeviceInfo *)self identifier];
  v9 = [v8 copyWithZone:a3];
  [v5 setIdentifier:v9];

  v10 = [(MRDeviceInfo *)self localizedModelName];
  v11 = [v10 copyWithZone:a3];
  [v5 setLocalizedModelName:v11];

  v12 = [(MRDeviceInfo *)self buildVersion];
  v13 = [v12 copyWithZone:a3];
  [v5 setBuildVersion:v13];

  v14 = [(MRDeviceInfo *)self bundleIdentifier];
  v15 = [v14 copyWithZone:a3];
  [v5 setBundleIdentifier:v15];

  v16 = [(MRDeviceInfo *)self bundleVersion];
  v17 = [v16 copyWithZone:a3];
  [v5 setBundleVersion:v17];

  v18 = [(MRDeviceInfo *)self systemMediaApplication];
  v19 = [v18 copyWithZone:a3];
  [v5 setSystemMediaApplication:v19];

  v20 = [(MRDeviceInfo *)self systemPodcastApplication];
  v21 = [v20 copyWithZone:a3];
  [v5 setSystemPodcastApplication:v21];

  v22 = [(MRDeviceInfo *)self systemBooksApplication];
  v23 = [v22 copyWithZone:a3];
  [v5 setSystemBooksApplication:v23];

  v24 = [(MRDeviceInfo *)self deviceUID];
  v25 = [v24 copyWithZone:a3];
  [v5 setDeviceUID:v25];

  v26 = [(MRDeviceInfo *)self localReceiverPairingIdentity];
  v27 = [v26 copyWithZone:a3];
  [v5 setLocalReceiverPairingIdentity:v27];

  v28 = [(MRDeviceInfo *)self managedConfigurationDeviceIdentifier];
  v29 = [v28 copyWithZone:a3];
  [v5 setManagedConfigurationDeviceIdentifier:v29];

  v30 = [(MRDeviceInfo *)self tightSyncUID];
  v31 = [v30 copyWithZone:a3];
  [v5 setTightSyncUID:v31];

  v32 = [(MRDeviceInfo *)self groupUID];
  v33 = [v32 copyWithZone:a3];
  [v5 setGroupUID:v33];

  v34 = [(MRDeviceInfo *)self airPlayGroupUID];
  v35 = [v34 copyWithZone:a3];
  [v5 setAirPlayGroupUID:v35];

  v36 = [(MRDeviceInfo *)self groupName];
  v37 = [v36 copyWithZone:a3];
  [v5 setGroupName:v37];

  v38 = [(MRDeviceInfo *)self senderDefaultGroupUID];
  v39 = [v38 copyWithZone:a3];
  [v5 setSenderDefaultGroupUID:v39];

  v40 = [(MRDeviceInfo *)self bluetoothAddress];
  v41 = [v40 copyWithZone:a3];
  [v5 setBluetoothAddress:v41];

  v42 = [(MRDeviceInfo *)self groupedDevices];
  v43 = [v42 copyWithZone:a3];
  [v5 setGroupedDevices:v43];

  v44 = [(MRDeviceInfo *)self clusteredDevices];
  v45 = [v44 copyWithZone:a3];
  [v5 setClusteredDevices:v45];

  v46 = [(MRDeviceInfo *)self allClusteredDevices];
  v47 = [v46 copyWithZone:a3];
  [v5 setAllClusteredDevices:v47];

  v48 = [(MRDeviceInfo *)self airPlayReceivers];
  v49 = [v48 copyWithZone:a3];
  [v5 setAirPlayReceivers:v49];

  v50 = [(MRDeviceInfo *)self linkAgent];
  v51 = [v50 copyWithZone:a3];
  [v5 setLinkAgent:v51];

  v52 = [(MRDeviceInfo *)self clusterID];
  v53 = [v52 copyWithZone:a3];
  [v5 setClusterID:v53];

  v54 = [(MRDeviceInfo *)self preferredClusterLeaderID];
  v55 = [v54 copyWithZone:a3];
  [v5 setPreferredClusterLeaderID:v55];

  v56 = [(MRDeviceInfo *)self modelID];
  v57 = [v56 copyWithZone:a3];
  [v5 setModelID:v57];

  v58 = [(MRDeviceInfo *)self routingContextID];
  v59 = [v58 copyWithZone:a3];
  [v5 setRoutingContextID:v59];

  v60 = [(MRDeviceInfo *)self computerName];
  v61 = [v60 copyWithZone:a3];
  [v5 setComputerName:v61];

  v62 = [(MRDeviceInfo *)self groupSessionToken];
  v63 = [v62 copyWithZone:a3];
  [v5 setGroupSessionToken:v63];

  v64 = [(MRDeviceInfo *)self leaderDeviceInfo];
  v65 = [v64 copyWithZone:a3];
  [v5 setLeaderDeviceInfo:v65];

  v66 = [(MRDeviceInfo *)self activeSystemEndpointUID];
  v67 = [v66 copyWithZone:a3];
  [v5 setActiveSystemEndpointUID:v67];

  return v5;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = [(MRDeviceInfo *)self protobuf];
  v6 = [v3 initWithFormat:@"<%@: %p> %@", v4, self, v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 != self)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_217;
    }

    v5 = [(MRDeviceInfo *)v4 hasDeviceClass];
    if (v5 != [(MRDeviceInfo *)self hasDeviceClass])
    {
      goto LABEL_217;
    }

    if ([(MRDeviceInfo *)v4 hasDeviceClass])
    {
      if ([(MRDeviceInfo *)self hasDeviceClass])
      {
        v6 = [(MRDeviceInfo *)v4 deviceClass];
        if (v6 != [(MRDeviceInfo *)self deviceClass])
        {
          goto LABEL_217;
        }
      }
    }

    v7 = [(MRDeviceInfo *)v4 hasProtocolVersion];
    if (v7 != [(MRDeviceInfo *)self hasProtocolVersion])
    {
      goto LABEL_217;
    }

    if ([(MRDeviceInfo *)v4 hasProtocolVersion])
    {
      if ([(MRDeviceInfo *)self hasProtocolVersion])
      {
        v8 = [(MRDeviceInfo *)v4 protocolVersion];
        if (v8 != [(MRDeviceInfo *)self protocolVersion])
        {
          goto LABEL_217;
        }
      }
    }

    v9 = [(MRDeviceInfo *)v4 hasGroupedDeviceCount];
    if (v9 != [(MRDeviceInfo *)self hasGroupedDeviceCount])
    {
      goto LABEL_217;
    }

    if ([(MRDeviceInfo *)v4 hasGroupedDeviceCount])
    {
      if ([(MRDeviceInfo *)self hasGroupedDeviceCount])
      {
        v10 = [(MRDeviceInfo *)v4 groupedDeviceCount];
        if (v10 != [(MRDeviceInfo *)self groupedDeviceCount])
        {
          goto LABEL_217;
        }
      }
    }

    v11 = [(MRDeviceInfo *)v4 hasSharedQueueVersion];
    if (v11 != [(MRDeviceInfo *)self hasSharedQueueVersion])
    {
      goto LABEL_217;
    }

    if ([(MRDeviceInfo *)v4 hasSharedQueueVersion])
    {
      if ([(MRDeviceInfo *)self hasSharedQueueVersion])
      {
        v12 = [(MRDeviceInfo *)v4 sharedQueueVersion];
        if (v12 != [(MRDeviceInfo *)self sharedQueueVersion])
        {
          goto LABEL_217;
        }
      }
    }

    v13 = [(MRDeviceInfo *)v4 hasGroupLogicalDeviceCount];
    if (v13 != [(MRDeviceInfo *)self hasGroupLogicalDeviceCount])
    {
      goto LABEL_217;
    }

    if ([(MRDeviceInfo *)v4 hasGroupLogicalDeviceCount])
    {
      if ([(MRDeviceInfo *)self hasGroupLogicalDeviceCount])
      {
        v14 = [(MRDeviceInfo *)v4 groupLogicalDeviceCount];
        if (v14 != [(MRDeviceInfo *)self groupLogicalDeviceCount])
        {
          goto LABEL_217;
        }
      }
    }

    v15 = [(MRDeviceInfo *)v4 hasSupportsSystemPairing];
    if (v15 != [(MRDeviceInfo *)self hasSupportsSystemPairing])
    {
      goto LABEL_217;
    }

    if ([(MRDeviceInfo *)v4 hasSupportsSystemPairing])
    {
      if ([(MRDeviceInfo *)self hasSupportsSystemPairing])
      {
        v16 = [(MRDeviceInfo *)v4 supportsSystemPairing];
        if (v16 != [(MRDeviceInfo *)self supportsSystemPairing])
        {
          goto LABEL_217;
        }
      }
    }

    v17 = [(MRDeviceInfo *)v4 hasSupportsACL];
    if (v17 != [(MRDeviceInfo *)self hasSupportsACL])
    {
      goto LABEL_217;
    }

    if ([(MRDeviceInfo *)v4 hasSupportsACL])
    {
      if ([(MRDeviceInfo *)self hasSupportsACL])
      {
        v18 = [(MRDeviceInfo *)v4 supportsACL];
        if (v18 != [(MRDeviceInfo *)self supportsACL])
        {
          goto LABEL_217;
        }
      }
    }

    v19 = [(MRDeviceInfo *)v4 hasSupportsSharedQueue];
    if (v19 != [(MRDeviceInfo *)self hasSupportsSharedQueue])
    {
      goto LABEL_217;
    }

    if ([(MRDeviceInfo *)v4 hasSupportsSharedQueue])
    {
      if ([(MRDeviceInfo *)self hasSupportsSharedQueue])
      {
        v20 = [(MRDeviceInfo *)v4 supportsSharedQueue];
        if (v20 != [(MRDeviceInfo *)self supportsSharedQueue])
        {
          goto LABEL_217;
        }
      }
    }

    v21 = [(MRDeviceInfo *)v4 hasSupportsExtendedMotion];
    if (v21 != [(MRDeviceInfo *)self hasSupportsExtendedMotion])
    {
      goto LABEL_217;
    }

    if ([(MRDeviceInfo *)v4 hasSupportsExtendedMotion])
    {
      if ([(MRDeviceInfo *)self hasSupportsExtendedMotion])
      {
        v22 = [(MRDeviceInfo *)v4 supportsExtendedMotion];
        if (v22 != [(MRDeviceInfo *)self supportsExtendedMotion])
        {
          goto LABEL_217;
        }
      }
    }

    v23 = [(MRDeviceInfo *)v4 hasTightSyncGroup];
    if (v23 != [(MRDeviceInfo *)self hasTightSyncGroup])
    {
      goto LABEL_217;
    }

    if ([(MRDeviceInfo *)v4 hasTightSyncGroup])
    {
      if ([(MRDeviceInfo *)self hasTightSyncGroup])
      {
        v24 = [(MRDeviceInfo *)v4 isTightSyncGroup];
        if (v24 != [(MRDeviceInfo *)self isTightSyncGroup])
        {
          goto LABEL_217;
        }
      }
    }

    v25 = [(MRDeviceInfo *)v4 hasPairingAllowed];
    if (v25 != [(MRDeviceInfo *)self hasPairingAllowed])
    {
      goto LABEL_217;
    }

    if ([(MRDeviceInfo *)v4 hasPairingAllowed])
    {
      if ([(MRDeviceInfo *)self hasPairingAllowed])
      {
        v26 = [(MRDeviceInfo *)v4 isPairingAllowed];
        if (v26 != [(MRDeviceInfo *)self isPairingAllowed])
        {
          goto LABEL_217;
        }
      }
    }

    v27 = [(MRDeviceInfo *)v4 hasProxyGroupPlayer];
    if (v27 != [(MRDeviceInfo *)self hasProxyGroupPlayer])
    {
      goto LABEL_217;
    }

    if ([(MRDeviceInfo *)v4 hasProxyGroupPlayer])
    {
      if ([(MRDeviceInfo *)self hasProxyGroupPlayer])
      {
        v28 = [(MRDeviceInfo *)v4 isProxyGroupPlayer];
        if (v28 != [(MRDeviceInfo *)self isProxyGroupPlayer])
        {
          goto LABEL_217;
        }
      }
    }

    v29 = [(MRDeviceInfo *)v4 hasConnected];
    if (v29 != [(MRDeviceInfo *)self hasConnected])
    {
      goto LABEL_217;
    }

    if ([(MRDeviceInfo *)v4 hasConnected])
    {
      if ([(MRDeviceInfo *)self hasConnected])
      {
        v30 = [(MRDeviceInfo *)v4 isConnected];
        if (v30 != [(MRDeviceInfo *)self isConnected])
        {
          goto LABEL_217;
        }
      }
    }

    v31 = [(MRDeviceInfo *)v4 hasGroupLeader];
    if (v31 != [(MRDeviceInfo *)self hasGroupLeader])
    {
      goto LABEL_217;
    }

    if ([(MRDeviceInfo *)v4 hasGroupLeader])
    {
      if ([(MRDeviceInfo *)self hasGroupLeader])
      {
        v32 = [(MRDeviceInfo *)v4 isGroupLeader];
        if (v32 != [(MRDeviceInfo *)self isGroupLeader])
        {
          goto LABEL_217;
        }
      }
    }

    v33 = [(MRDeviceInfo *)v4 hasAirPlayActive];
    if (v33 != [(MRDeviceInfo *)self hasAirPlayActive])
    {
      goto LABEL_217;
    }

    if ([(MRDeviceInfo *)v4 hasAirPlayActive])
    {
      if ([(MRDeviceInfo *)self hasAirPlayActive])
      {
        v34 = [(MRDeviceInfo *)v4 isAirPlayActive];
        if (v34 != [(MRDeviceInfo *)self isAirPlayActive])
        {
          goto LABEL_217;
        }
      }
    }

    v35 = [(MRDeviceInfo *)v4 hasSupportsMultiplayer];
    if (v35 != [(MRDeviceInfo *)self hasSupportsMultiplayer])
    {
      goto LABEL_217;
    }

    if ([(MRDeviceInfo *)v4 hasSupportsMultiplayer])
    {
      if ([(MRDeviceInfo *)self hasSupportsMultiplayer])
      {
        v36 = [(MRDeviceInfo *)v4 supportsMultiplayer];
        if (v36 != [(MRDeviceInfo *)self supportsMultiplayer])
        {
          goto LABEL_217;
        }
      }
    }

    v37 = [(MRDeviceInfo *)v4 hasParentGroupContainsDiscoverableGroupLeader];
    if (v37 != [(MRDeviceInfo *)self hasParentGroupContainsDiscoverableGroupLeader])
    {
      goto LABEL_217;
    }

    if ([(MRDeviceInfo *)v4 hasParentGroupContainsDiscoverableGroupLeader])
    {
      if ([(MRDeviceInfo *)self hasParentGroupContainsDiscoverableGroupLeader])
      {
        v38 = [(MRDeviceInfo *)v4 parentGroupContainsDiscoverableGroupLeader];
        if (v38 != [(MRDeviceInfo *)self parentGroupContainsDiscoverableGroupLeader])
        {
          goto LABEL_217;
        }
      }
    }

    v39 = [(MRDeviceInfo *)v4 hasGroupContainsDiscoverableGroupLeader];
    if (v39 != [(MRDeviceInfo *)self hasGroupContainsDiscoverableGroupLeader])
    {
      goto LABEL_217;
    }

    if ([(MRDeviceInfo *)v4 hasGroupContainsDiscoverableGroupLeader])
    {
      if ([(MRDeviceInfo *)self hasGroupContainsDiscoverableGroupLeader])
      {
        v40 = [(MRDeviceInfo *)v4 groupContainsDiscoverableGroupLeader];
        if (v40 != [(MRDeviceInfo *)self groupContainsDiscoverableGroupLeader])
        {
          goto LABEL_217;
        }
      }
    }

    v41 = [(MRDeviceInfo *)v4 hasClusterType];
    if (v41 != [(MRDeviceInfo *)self hasClusterType])
    {
      goto LABEL_217;
    }

    v42 = [(MRDeviceInfo *)v4 clusterType];
    if (v42 != [(MRDeviceInfo *)self clusterType])
    {
      goto LABEL_217;
    }

    v43 = [(MRDeviceInfo *)v4 hasIsClusterAware];
    if (v43 != [(MRDeviceInfo *)self hasIsClusterAware])
    {
      goto LABEL_217;
    }

    v44 = [(MRDeviceInfo *)v4 isClusterAware];
    if (v44 != [(MRDeviceInfo *)self isClusterAware])
    {
      goto LABEL_217;
    }

    v45 = [(MRDeviceInfo *)v4 hasConfiguredClusterSize];
    if (v45 != [(MRDeviceInfo *)self hasConfiguredClusterSize])
    {
      goto LABEL_217;
    }

    v46 = [(MRDeviceInfo *)v4 configuredClusterSize];
    if (v46 != [(MRDeviceInfo *)self configuredClusterSize])
    {
      goto LABEL_217;
    }

    v47 = [(MRDeviceInfo *)v4 hasIsClusterLeader];
    if (v47 != [(MRDeviceInfo *)self hasIsClusterLeader])
    {
      goto LABEL_217;
    }

    v48 = [(MRDeviceInfo *)v4 isClusterLeader];
    if (v48 != [(MRDeviceInfo *)self isClusterLeader])
    {
      goto LABEL_217;
    }

    v49 = [(MRDeviceInfo *)v4 hasLastSupportedClusterType];
    if (v49 != [(MRDeviceInfo *)self hasLastSupportedClusterType])
    {
      goto LABEL_217;
    }

    v50 = [(MRDeviceInfo *)v4 lastSupportedClusterType];
    if (v50 != [(MRDeviceInfo *)self lastSupportedClusterType])
    {
      goto LABEL_217;
    }

    v51 = [(MRDeviceInfo *)v4 hasSupportsOutputContextSync];
    if (v51 != [(MRDeviceInfo *)self hasSupportsOutputContextSync])
    {
      goto LABEL_217;
    }

    v52 = [(MRDeviceInfo *)v4 supportsOutputContextSync];
    if (v52 != [(MRDeviceInfo *)self supportsOutputContextSync])
    {
      goto LABEL_217;
    }

    v53 = [(MRDeviceInfo *)v4 hasLastSupportedProtocolMessageType];
    if (v53 != [(MRDeviceInfo *)self hasLastSupportedProtocolMessageType])
    {
      goto LABEL_217;
    }

    v54 = [(MRDeviceInfo *)v4 lastSupportedProtocolMessageType];
    if (v54 != [(MRDeviceInfo *)self lastSupportedProtocolMessageType])
    {
      goto LABEL_217;
    }

    v55 = [(MRDeviceInfo *)v4 hasParentGroupSupportsGroupCohesion];
    if (v55 != [(MRDeviceInfo *)self hasParentGroupSupportsGroupCohesion])
    {
      goto LABEL_217;
    }

    v56 = [(MRDeviceInfo *)v4 parentGroupSupportsGroupCohesion];
    if (v56 != [(MRDeviceInfo *)self parentGroupSupportsGroupCohesion])
    {
      goto LABEL_217;
    }

    v57 = [(MRDeviceInfo *)v4 name];
    v58 = [(MRDeviceInfo *)self name];
    v59 = v58;
    if (v57 == v58)
    {
    }

    else
    {
      v60 = [(MRDeviceInfo *)v4 name];
      v61 = [(MRDeviceInfo *)self name];
      v62 = [v60 isEqualToString:v61];

      if (!v62)
      {
LABEL_217:
        LOBYTE(v63) = 0;
        goto LABEL_218;
      }
    }

    v64 = [(MRDeviceInfo *)v4 identifier];
    v65 = [(MRDeviceInfo *)self identifier];
    v66 = v65;
    if (v64 == v65)
    {
    }

    else
    {
      v67 = [(MRDeviceInfo *)v4 identifier];
      v68 = [(MRDeviceInfo *)self identifier];
      v69 = [v67 isEqualToString:v68];

      if (!v69)
      {
        goto LABEL_217;
      }
    }

    v70 = [(MRDeviceInfo *)v4 localizedModelName];
    v71 = [(MRDeviceInfo *)self localizedModelName];
    v72 = v71;
    if (v70 == v71)
    {
    }

    else
    {
      v73 = [(MRDeviceInfo *)v4 localizedModelName];
      v74 = [(MRDeviceInfo *)self localizedModelName];
      v75 = [v73 isEqualToString:v74];

      if (!v75)
      {
        goto LABEL_217;
      }
    }

    v76 = [(MRDeviceInfo *)v4 buildVersion];
    v77 = [(MRDeviceInfo *)self buildVersion];
    v78 = v77;
    if (v76 == v77)
    {
    }

    else
    {
      v79 = [(MRDeviceInfo *)v4 buildVersion];
      v80 = [(MRDeviceInfo *)self buildVersion];
      v81 = [v79 isEqualToString:v80];

      if (!v81)
      {
        goto LABEL_217;
      }
    }

    v82 = [(MRDeviceInfo *)v4 bundleIdentifier];
    v83 = [(MRDeviceInfo *)self bundleIdentifier];
    v84 = v83;
    if (v82 == v83)
    {
    }

    else
    {
      v85 = [(MRDeviceInfo *)v4 bundleIdentifier];
      v86 = [(MRDeviceInfo *)self bundleIdentifier];
      v87 = [v85 isEqualToString:v86];

      if (!v87)
      {
        goto LABEL_217;
      }
    }

    v88 = [(MRDeviceInfo *)v4 bundleVersion];
    v89 = [(MRDeviceInfo *)self bundleVersion];
    v90 = v89;
    if (v88 == v89)
    {
    }

    else
    {
      v91 = [(MRDeviceInfo *)v4 bundleVersion];
      v92 = [(MRDeviceInfo *)self bundleVersion];
      v93 = [v91 isEqualToString:v92];

      if (!v93)
      {
        goto LABEL_217;
      }
    }

    v94 = [(MRDeviceInfo *)v4 systemMediaApplication];
    v95 = [(MRDeviceInfo *)self systemMediaApplication];
    v96 = v95;
    if (v94 == v95)
    {
    }

    else
    {
      v97 = [(MRDeviceInfo *)v4 systemMediaApplication];
      v98 = [(MRDeviceInfo *)self systemMediaApplication];
      v99 = [v97 isEqualToString:v98];

      if (!v99)
      {
        goto LABEL_217;
      }
    }

    v100 = [(MRDeviceInfo *)v4 systemPodcastApplication];
    v101 = [(MRDeviceInfo *)self systemPodcastApplication];
    v102 = v101;
    if (v100 == v101)
    {
    }

    else
    {
      v103 = [(MRDeviceInfo *)v4 systemPodcastApplication];
      v104 = [(MRDeviceInfo *)self systemPodcastApplication];
      v105 = [v103 isEqualToString:v104];

      if (!v105)
      {
        goto LABEL_217;
      }
    }

    v106 = [(MRDeviceInfo *)v4 systemBooksApplication];
    v107 = [(MRDeviceInfo *)self systemBooksApplication];
    v108 = v107;
    if (v106 == v107)
    {
    }

    else
    {
      v109 = [(MRDeviceInfo *)v4 systemBooksApplication];
      v110 = [(MRDeviceInfo *)self systemBooksApplication];
      v111 = [v109 isEqualToString:v110];

      if (!v111)
      {
        goto LABEL_217;
      }
    }

    v112 = [(MRDeviceInfo *)v4 deviceUID];
    v113 = [(MRDeviceInfo *)self deviceUID];
    v114 = v113;
    if (v112 == v113)
    {
    }

    else
    {
      v115 = [(MRDeviceInfo *)v4 deviceUID];
      v116 = [(MRDeviceInfo *)self deviceUID];
      v117 = [v115 isEqualToString:v116];

      if (!v117)
      {
        goto LABEL_217;
      }
    }

    v118 = [(MRDeviceInfo *)v4 localReceiverPairingIdentity];
    v119 = [(MRDeviceInfo *)self localReceiverPairingIdentity];
    v120 = v119;
    if (v118 == v119)
    {
    }

    else
    {
      v121 = [(MRDeviceInfo *)v4 localReceiverPairingIdentity];
      v122 = [(MRDeviceInfo *)self localReceiverPairingIdentity];
      v123 = [v121 isEqualToString:v122];

      if (!v123)
      {
        goto LABEL_217;
      }
    }

    v124 = [(MRDeviceInfo *)v4 managedConfigurationDeviceIdentifier];
    v125 = [(MRDeviceInfo *)self managedConfigurationDeviceIdentifier];
    v126 = v125;
    if (v124 == v125)
    {
    }

    else
    {
      v127 = [(MRDeviceInfo *)v4 managedConfigurationDeviceIdentifier];
      v128 = [(MRDeviceInfo *)self managedConfigurationDeviceIdentifier];
      v129 = [v127 isEqualToString:v128];

      if (!v129)
      {
        goto LABEL_217;
      }
    }

    v130 = [(MRDeviceInfo *)v4 tightSyncUID];
    v131 = [(MRDeviceInfo *)self tightSyncUID];
    v132 = v131;
    if (v130 == v131)
    {
    }

    else
    {
      v133 = [(MRDeviceInfo *)v4 tightSyncUID];
      v134 = [(MRDeviceInfo *)self tightSyncUID];
      v135 = [v133 isEqualToString:v134];

      if (!v135)
      {
        goto LABEL_217;
      }
    }

    v136 = [(MRDeviceInfo *)v4 groupUID];
    v137 = [(MRDeviceInfo *)self groupUID];
    v138 = v137;
    if (v136 == v137)
    {
    }

    else
    {
      v139 = [(MRDeviceInfo *)v4 groupUID];
      v140 = [(MRDeviceInfo *)self groupUID];
      v141 = [v139 isEqualToString:v140];

      if (!v141)
      {
        goto LABEL_217;
      }
    }

    v142 = [(MRDeviceInfo *)v4 airPlayGroupUID];
    v143 = [(MRDeviceInfo *)self airPlayGroupUID];
    v144 = v143;
    if (v142 == v143)
    {
    }

    else
    {
      v145 = [(MRDeviceInfo *)v4 airPlayGroupUID];
      v146 = [(MRDeviceInfo *)self airPlayGroupUID];
      v147 = [v145 isEqualToString:v146];

      if (!v147)
      {
        goto LABEL_217;
      }
    }

    v148 = [(MRDeviceInfo *)v4 groupName];
    v149 = [(MRDeviceInfo *)self groupName];
    v150 = v149;
    if (v148 == v149)
    {
    }

    else
    {
      v151 = [(MRDeviceInfo *)v4 groupName];
      v152 = [(MRDeviceInfo *)self groupName];
      v153 = [v151 isEqualToString:v152];

      if (!v153)
      {
        goto LABEL_217;
      }
    }

    v154 = [(MRDeviceInfo *)v4 senderDefaultGroupUID];
    v155 = [(MRDeviceInfo *)self senderDefaultGroupUID];
    v156 = v155;
    if (v154 == v155)
    {
    }

    else
    {
      v157 = [(MRDeviceInfo *)v4 senderDefaultGroupUID];
      v158 = [(MRDeviceInfo *)self senderDefaultGroupUID];
      v159 = [v157 isEqualToString:v158];

      if (!v159)
      {
        goto LABEL_217;
      }
    }

    v160 = [(MRDeviceInfo *)v4 bluetoothAddress];
    v161 = [(MRDeviceInfo *)self bluetoothAddress];
    v162 = v161;
    if (v160 == v161)
    {
    }

    else
    {
      v163 = [(MRDeviceInfo *)v4 bluetoothAddress];
      v164 = [(MRDeviceInfo *)self bluetoothAddress];
      v165 = [v163 isEqualToData:v164];

      if (!v165)
      {
        goto LABEL_217;
      }
    }

    v166 = [(MRDeviceInfo *)v4 groupedDevices];
    v167 = [(MRDeviceInfo *)self groupedDevices];
    v168 = v167;
    if (v166 == v167)
    {
    }

    else
    {
      v169 = [(MRDeviceInfo *)v4 groupedDevices];
      v170 = [(MRDeviceInfo *)self groupedDevices];
      v171 = [v169 isEqualToArray:v170];

      if (!v171)
      {
        goto LABEL_217;
      }
    }

    v172 = [(MRDeviceInfo *)v4 clusteredDevices];
    v173 = [(MRDeviceInfo *)self clusteredDevices];
    v174 = v173;
    if (v172 == v173)
    {
    }

    else
    {
      v175 = [(MRDeviceInfo *)v4 clusteredDevices];
      v176 = [(MRDeviceInfo *)self clusteredDevices];
      v177 = [v175 isEqualToArray:v176];

      if (!v177)
      {
        goto LABEL_217;
      }
    }

    v178 = [(MRDeviceInfo *)v4 allClusteredDevices];
    v179 = [(MRDeviceInfo *)self allClusteredDevices];
    v180 = v179;
    if (v178 == v179)
    {
    }

    else
    {
      v181 = [(MRDeviceInfo *)v4 allClusteredDevices];
      v182 = [(MRDeviceInfo *)self allClusteredDevices];
      v183 = [v181 isEqualToArray:v182];

      if (!v183)
      {
        goto LABEL_217;
      }
    }

    v184 = [(MRDeviceInfo *)v4 airPlayReceivers];
    v185 = [(MRDeviceInfo *)self airPlayReceivers];
    v186 = v185;
    if (v184 == v185)
    {
    }

    else
    {
      v187 = [(MRDeviceInfo *)v4 airPlayReceivers];
      v188 = [(MRDeviceInfo *)self airPlayReceivers];
      v189 = [v187 isEqualToArray:v188];

      if (!v189)
      {
        goto LABEL_217;
      }
    }

    v190 = [(MRDeviceInfo *)v4 linkAgent];
    v191 = [(MRDeviceInfo *)self linkAgent];
    v192 = v191;
    if (v190 == v191)
    {
    }

    else
    {
      v193 = [(MRDeviceInfo *)v4 linkAgent];
      v194 = [(MRDeviceInfo *)self linkAgent];
      v195 = [v193 isEqualToString:v194];

      if (!v195)
      {
        goto LABEL_217;
      }
    }

    v196 = [(MRDeviceInfo *)v4 clusterID];
    v197 = [(MRDeviceInfo *)self clusterID];
    v198 = v197;
    if (v196 == v197)
    {
    }

    else
    {
      v199 = [(MRDeviceInfo *)v4 clusterID];
      v200 = [(MRDeviceInfo *)self clusterID];
      v201 = [v199 isEqualToString:v200];

      if (!v201)
      {
        goto LABEL_217;
      }
    }

    v202 = [(MRDeviceInfo *)v4 preferredClusterLeaderID];
    v203 = [(MRDeviceInfo *)self preferredClusterLeaderID];
    v204 = v203;
    if (v202 == v203)
    {
    }

    else
    {
      v205 = [(MRDeviceInfo *)v4 preferredClusterLeaderID];
      v206 = [(MRDeviceInfo *)self preferredClusterLeaderID];
      v207 = [v205 isEqualToString:v206];

      if (!v207)
      {
        goto LABEL_217;
      }
    }

    v208 = [(MRDeviceInfo *)v4 computerName];
    v209 = [(MRDeviceInfo *)self computerName];
    v210 = v209;
    if (v208 == v209)
    {
    }

    else
    {
      v211 = [(MRDeviceInfo *)v4 computerName];
      v212 = [(MRDeviceInfo *)self computerName];
      v213 = [v211 isEqualToString:v212];

      if (!v213)
      {
        goto LABEL_217;
      }
    }

    v214 = [(MRDeviceInfo *)v4 modelID];
    v215 = [(MRDeviceInfo *)self modelID];
    v216 = v214;
    v217 = v215;
    v218 = v217;
    if (v216 == v217)
    {
    }

    else
    {
      v219 = [v216 isEqual:v217];

      if ((v219 & 1) == 0)
      {
        goto LABEL_217;
      }
    }

    v220 = [(MRDeviceInfo *)v4 routingContextID];
    v221 = [(MRDeviceInfo *)self routingContextID];
    v222 = v220;
    v223 = v221;
    v224 = v223;
    if (v222 == v223)
    {
    }

    else
    {
      v225 = [v222 isEqual:v223];

      if ((v225 & 1) == 0)
      {
        goto LABEL_217;
      }
    }

    v226 = [(MRDeviceInfo *)v4 groupSessionToken];
    v227 = [(MRDeviceInfo *)self groupSessionToken];
    v228 = v226;
    v229 = v227;
    v230 = v229;
    if (v228 == v229)
    {
    }

    else
    {
      v231 = [v228 isEqual:v229];

      if ((v231 & 1) == 0)
      {
        goto LABEL_217;
      }
    }

    v232 = [(MRDeviceInfo *)v4 leaderDeviceInfo];
    v233 = [(MRDeviceInfo *)self leaderDeviceInfo];
    v234 = v232;
    v235 = v233;
    v236 = v235;
    if (v234 == v235)
    {
    }

    else
    {
      v237 = [v234 isEqual:v235];

      if ((v237 & 1) == 0)
      {
        goto LABEL_217;
      }
    }

    v238 = [(MRDeviceInfo *)v4 activeSystemEndpointUID];
    v239 = [(MRDeviceInfo *)self activeSystemEndpointUID];
    v240 = v238;
    v241 = v239;
    v242 = v241;
    if (v240 == v241)
    {
    }

    else
    {
      v243 = [v240 isEqual:v241];

      if ((v243 & 1) == 0)
      {
        goto LABEL_217;
      }
    }

    v244 = [(MRDeviceInfo *)v4 hasIsEligibleForHostingGroupSessionExcludingAcknowledgements];
    if (v244 == [(MRDeviceInfo *)self hasIsEligibleForHostingGroupSessionExcludingAcknowledgements])
    {
      v246 = [(MRDeviceInfo *)v4 isEligibleForHostingGroupSessionExcludingAcknowledgements];
      v63 = v246 ^ [(MRDeviceInfo *)self isEligibleForHostingGroupSessionExcludingAcknowledgements]^ 1;
      goto LABEL_218;
    }

    goto LABEL_217;
  }

  LOBYTE(v63) = 1;
LABEL_218:

  return v63;
}

- (unint64_t)hash
{
  v2 = [(MRDeviceInfo *)self WHAIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (NSString)mr_effectiveRoutingContextID
{
  if ((([(MRDeviceInfo *)self clusterType]- 1) & 0xFFFFFFFD) != 0 || [(MRDeviceInfo *)self isClusterLeader])
  {
    v3 = [(MRDeviceInfo *)self routingContextID];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)effectiveID
{
  v3 = [(MRDeviceInfo *)self clusterID];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(MRDeviceInfo *)self deviceUID];
    v7 = v6;
    if (v6)
    {
      v5 = v6;
    }

    else
    {
      v8 = +[MRAVLocalEndpoint sharedLocalEndpoint];
      v9 = [v8 outputDevices];
      v10 = [v9 firstObject];
      v5 = [v10 uid];
    }
  }

  return v5;
}

- (NSString)effectiveName
{
  v3 = [(MRDeviceInfo *)self computerName];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(MRDeviceInfo *)self name];
  }

  v6 = v5;

  v7 = objc_alloc(MEMORY[0x1E696AEC0]);
  if ([(MRDeviceInfo *)self isProxyGroupPlayer])
  {
    v8 = [(MRDeviceInfo *)self deviceUID];
    v9 = @"(Proxy)";
    if (!v8)
    {
      v9 = &stru_1F1513E38;
    }

    v10 = [v7 initWithFormat:@"%@%@", v6, v9];
  }

  else
  {
    v10 = [v7 initWithFormat:@"%@%@", v6, &stru_1F1513E38];
  }

  return v10;
}

- (NSString)effectiveIdentifer
{
  v3 = [(MRDeviceInfo *)self deviceUID];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(MRDeviceInfo *)self identifier];
  }

  v6 = v5;

  return v6;
}

@end