@interface MRDeviceInfo
+ (id)dataFromDeviceInfos:(id)infos;
+ (id)deviceInfosFromData:(id)data;
+ (int64_t)deviceClass;
- (BOOL)containsDevice:(id)device;
- (BOOL)containsLocalDevice;
- (BOOL)effectiveParentGroupContainsDiscoverableGroupLeader;
- (BOOL)hasPlaceholderGroupSession;
- (BOOL)isEqual:(id)equal;
- (BOOL)matchesUID:(id)d;
- (MRDeviceInfo)initWithCoder:(id)coder;
- (MRDeviceInfo)initWithData:(id)data;
- (MRDeviceInfo)initWithOutputDevice:(id)device;
- (MRDeviceInfo)initWithOutputDeviceDescription:(id)description;
- (MRDeviceInfo)initWithProtobuf:(id)protobuf;
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
- (id)copyWithZone:(_NSZone *)zone;
- (id)deltaDescriptionFromDeviceInfo:(id)info minimal:(BOOL)minimal;
- (id)description;
- (id)resolveOutputDeviceUIDs:(id)ds;
- (unint64_t)hash;
- (unsigned)deviceSubtype;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MRDeviceInfo

- (NSData)data
{
  protobuf = [(MRDeviceInfo *)self protobuf];
  data = [protobuf data];

  return data;
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
  name = [(MRDeviceInfo *)self name];
  v5 = [name copy];
  [(_MRDeviceInfoMessageProtobuf *)v3 setName:v5];

  identifier = [(MRDeviceInfo *)self identifier];
  v7 = [identifier copy];
  [(_MRDeviceInfoMessageProtobuf *)v3 setUniqueIdentifier:v7];

  localizedModelName = [(MRDeviceInfo *)self localizedModelName];
  v9 = [localizedModelName copy];
  [(_MRDeviceInfoMessageProtobuf *)v3 setLocalizedModelName:v9];

  buildVersion = [(MRDeviceInfo *)self buildVersion];
  v11 = [buildVersion copy];
  [(_MRDeviceInfoMessageProtobuf *)v3 setSystemBuildVersion:v11];

  bundleIdentifier = [(MRDeviceInfo *)self bundleIdentifier];
  v13 = [bundleIdentifier copy];
  [(_MRDeviceInfoMessageProtobuf *)v3 setApplicationBundleIdentifier:v13];

  bundleVersion = [(MRDeviceInfo *)self bundleVersion];
  v15 = [bundleVersion copy];
  [(_MRDeviceInfoMessageProtobuf *)v3 setApplicationBundleVersion:v15];

  systemMediaApplication = [(MRDeviceInfo *)self systemMediaApplication];
  v17 = [systemMediaApplication copy];
  [(_MRDeviceInfoMessageProtobuf *)v3 setSystemMediaApplication:v17];

  systemPodcastApplication = [(MRDeviceInfo *)self systemPodcastApplication];
  v19 = [systemPodcastApplication copy];
  [(_MRDeviceInfoMessageProtobuf *)v3 setSystemPodcastApplication:v19];

  systemBooksApplication = [(MRDeviceInfo *)self systemBooksApplication];
  v21 = [systemBooksApplication copy];
  [(_MRDeviceInfoMessageProtobuf *)v3 setSystemBooksApplication:v21];

  deviceUID = [(MRDeviceInfo *)self deviceUID];
  v23 = [deviceUID copy];
  [(_MRDeviceInfoMessageProtobuf *)v3 setDeviceUID:v23];

  managedConfigurationDeviceIdentifier = [(MRDeviceInfo *)self managedConfigurationDeviceIdentifier];
  v25 = [managedConfigurationDeviceIdentifier copy];
  [(_MRDeviceInfoMessageProtobuf *)v3 setManagedConfigDeviceID:v25];

  tightSyncUID = [(MRDeviceInfo *)self tightSyncUID];
  v27 = [tightSyncUID copy];
  [(_MRDeviceInfoMessageProtobuf *)v3 setTightSyncUID:v27];

  groupUID = [(MRDeviceInfo *)self groupUID];
  v29 = [groupUID copy];
  [(_MRDeviceInfoMessageProtobuf *)v3 setGroupUID:v29];

  airPlayGroupUID = [(MRDeviceInfo *)self airPlayGroupUID];
  [(_MRDeviceInfoMessageProtobuf *)v3 setAirPlayGroupID:airPlayGroupUID];

  groupName = [(MRDeviceInfo *)self groupName];
  v32 = [groupName copy];
  [(_MRDeviceInfoMessageProtobuf *)v3 setGroupName:v32];

  senderDefaultGroupUID = [(MRDeviceInfo *)self senderDefaultGroupUID];
  v34 = [senderDefaultGroupUID copy];
  [(_MRDeviceInfoMessageProtobuf *)v3 setSenderDefaultGroupUID:v34];

  bluetoothAddress = [(MRDeviceInfo *)self bluetoothAddress];
  v36 = [bluetoothAddress copy];
  [(_MRDeviceInfoMessageProtobuf *)v3 setBluetoothAddress:v36];

  airPlayReceivers = [(MRDeviceInfo *)self airPlayReceivers];
  v38 = [airPlayReceivers copy];
  [(_MRDeviceInfoMessageProtobuf *)v3 setAirplayReceivers:v38];

  linkAgent = [(MRDeviceInfo *)self linkAgent];
  v40 = [linkAgent copy];
  [(_MRDeviceInfoMessageProtobuf *)v3 setLinkAgent:v40];

  clusterID = [(MRDeviceInfo *)self clusterID];
  v42 = [clusterID copy];
  [(_MRDeviceInfoMessageProtobuf *)v3 setClusterID:v42];

  preferredClusterLeaderID = [(MRDeviceInfo *)self preferredClusterLeaderID];
  v44 = [preferredClusterLeaderID copy];
  [(_MRDeviceInfoMessageProtobuf *)v3 setClusterLeaderID:v44];

  computerName = [(MRDeviceInfo *)self computerName];
  v46 = [computerName copy];
  [(_MRDeviceInfoMessageProtobuf *)v3 setComputerName:v46];

  modelID = [(MRDeviceInfo *)self modelID];
  [(_MRDeviceInfoMessageProtobuf *)v3 setModelID:modelID];

  routingContextID = [(MRDeviceInfo *)self routingContextID];
  [(_MRDeviceInfoMessageProtobuf *)v3 setRoutingContextID:routingContextID];

  activeSystemEndpointUID = [(MRDeviceInfo *)self activeSystemEndpointUID];
  [(_MRDeviceInfoMessageProtobuf *)v3 setActiveSystemEndpointUID:activeSystemEndpointUID];

  groupSessionToken = [(MRDeviceInfo *)self groupSessionToken];

  if (groupSessionToken)
  {
    groupSessionToken2 = [(MRDeviceInfo *)self groupSessionToken];
    protobuf = [groupSessionToken2 protobuf];
    [(_MRDeviceInfoMessageProtobuf *)v3 setGroupSessionToken:protobuf];
  }

  leaderDeviceInfo = [(MRDeviceInfo *)self leaderDeviceInfo];

  if (leaderDeviceInfo)
  {
    leaderDeviceInfo2 = [(MRDeviceInfo *)self leaderDeviceInfo];
    protobuf2 = [leaderDeviceInfo2 protobuf];
    [(_MRDeviceInfoMessageProtobuf *)v3 setLeaderDeviceInfo:protobuf2];
  }

  groupedDevices = [(MRDeviceInfo *)self groupedDevices];
  v57 = [groupedDevices mr_map:&__block_literal_global_23_1];
  v58 = [v57 mutableCopy];
  [(_MRDeviceInfoMessageProtobuf *)v3 setGroupedDevices:v58];

  clusteredDevices = [(MRDeviceInfo *)self clusteredDevices];
  v60 = [clusteredDevices mr_map:&__block_literal_global_25_1];
  v61 = [v60 mutableCopy];
  [(_MRDeviceInfoMessageProtobuf *)v3 setClusteredDevices:v61];

  allClusteredDevices = [(MRDeviceInfo *)self allClusteredDevices];
  v63 = [allClusteredDevices mr_map:&__block_literal_global_27];
  v64 = [v63 mutableCopy];
  [(_MRDeviceInfoMessageProtobuf *)v3 setAllClusteredDevices:v64];

  return v3;
}

- (NSString)parentGroupID
{
  if ([(MRDeviceInfo *)self isAirPlayActive])
  {
    groupUID = [(MRDeviceInfo *)self groupUID];
  }

  else
  {
    groupUID = 0;
  }

  return groupUID;
}

- (BOOL)effectiveParentGroupContainsDiscoverableGroupLeader
{
  leaderDeviceInfo = [(MRDeviceInfo *)self leaderDeviceInfo];
  if (leaderDeviceInfo)
  {
    leaderDeviceInfo2 = [(MRDeviceInfo *)self leaderDeviceInfo];
    parentGroupContainsDiscoverableGroupLeader = [leaderDeviceInfo2 parentGroupContainsDiscoverableGroupLeader];
  }

  else
  {
    parentGroupContainsDiscoverableGroupLeader = [(MRDeviceInfo *)self parentGroupContainsDiscoverableGroupLeader];
  }

  return parentGroupContainsDiscoverableGroupLeader;
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

  deviceClass = [(MRDeviceInfo *)self deviceClass];
  if ((deviceClass - 1) > 6)
  {
    return 0;
  }

  else
  {
    return dword_1A2B80EA0[deviceClass - 1];
  }
}

- (NSString)WHAIdentifier
{
  clusterID = [(MRDeviceInfo *)self clusterID];
  v4 = clusterID;
  if (clusterID)
  {
    v5 = clusterID;
  }

  else
  {
    deviceUID = [(MRDeviceInfo *)self deviceUID];
    v7 = deviceUID;
    if (deviceUID)
    {
      identifier = deviceUID;
    }

    else
    {
      identifier = [(MRDeviceInfo *)self identifier];
    }

    v5 = identifier;
  }

  return v5;
}

- (MRDeviceInfo)initWithOutputDevice:(id)device
{
  deviceCopy = device;
  v22.receiver = self;
  v22.super_class = MRDeviceInfo;
  v5 = [(MRDeviceInfo *)&v22 init];
  if (v5)
  {
    name = [deviceCopy name];
    [(MRDeviceInfo *)v5 setName:name];

    primaryID = [deviceCopy primaryID];
    [(MRDeviceInfo *)v5 setDeviceUID:primaryID];

    modelID = [deviceCopy modelID];
    [(MRDeviceInfo *)v5 setLocalizedModelName:modelID];

    logicalDeviceID = [deviceCopy logicalDeviceID];
    [(MRDeviceInfo *)v5 setTightSyncUID:logicalDeviceID];

    groupID = [deviceCopy groupID];
    [(MRDeviceInfo *)v5 setGroupUID:groupID];

    airPlayGroupID = [deviceCopy airPlayGroupID];
    [(MRDeviceInfo *)v5 setAirPlayGroupUID:airPlayGroupID];

    modelID2 = [deviceCopy modelID];
    [(MRDeviceInfo *)v5 setModelID:modelID2];

    if ([deviceCopy clusterType])
    {
      -[MRDeviceInfo setClusterType:](v5, "setClusterType:", [deviceCopy clusterType]);
      v13 = [deviceCopy uid];
      [(MRDeviceInfo *)v5 setClusterID:v13];

      -[MRDeviceInfo setConfiguredClusterSize:](v5, "setConfiguredClusterSize:", [deviceCopy configuredClusterSize]);
    }

    if ([deviceCopy groupContainsGroupLeader])
    {
      [(MRDeviceInfo *)v5 setGroupContainsDiscoverableGroupLeader:1];
    }

    if ([deviceCopy parentGroupContainsDiscoverableLeader])
    {
      [(MRDeviceInfo *)v5 setParentGroupContainsDiscoverableGroupLeader:1];
    }

    deviceSubtype = [deviceCopy deviceSubtype];
    v15 = 7;
    if (deviceSubtype != 12)
    {
      v15 = -1;
    }

    if (deviceSubtype == 13)
    {
      v16 = 4;
    }

    else
    {
      v16 = v15;
    }

    [(MRDeviceInfo *)v5 setDeviceClass:v16];
    clusterCompositionOutputDevices = [deviceCopy clusterCompositionOutputDevices];
    v18 = [clusterCompositionOutputDevices msv_map:&__block_literal_global_32];
    [(MRDeviceInfo *)v5 setClusteredDevices:v18];

    allClusterMembersOutputDevices = [deviceCopy allClusterMembersOutputDevices];
    v20 = [allClusterMembersOutputDevices msv_map:&__block_literal_global_2];
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

- (MRDeviceInfo)initWithOutputDeviceDescription:(id)description
{
  descriptionCopy = description;
  v13.receiver = self;
  v13.super_class = MRDeviceInfo;
  v5 = [(MRDeviceInfo *)&v13 init];
  if (v5)
  {
    name = [descriptionCopy name];
    [(MRDeviceInfo *)v5 setName:name];

    v7 = [descriptionCopy uid];
    [(MRDeviceInfo *)v5 setDeviceUID:v7];

    modelID = [descriptionCopy modelID];
    [(MRDeviceInfo *)v5 setModelID:modelID];

    deviceSubtype = [descriptionCopy deviceSubtype];
    v10 = 7;
    if (deviceSubtype != 12)
    {
      v10 = -1;
    }

    if (deviceSubtype == 13)
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

- (MRDeviceInfo)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  if (protobufCopy)
  {
    v99.receiver = self;
    v99.super_class = MRDeviceInfo;
    v5 = [(MRDeviceInfo *)&v99 init];
    if (v5)
    {
      v5->_protocolVersion = [protobufCopy protocolVersion];
      v5->_hasProtocolVersion = [protobufCopy hasProtocolVersion];
      v5->_deviceClass = MRDeviceClassFromProtobuf([protobufCopy deviceClass]);
      v5->_hasDeviceClass = [protobufCopy hasDeviceClass];
      v5->_groupedDeviceCount = [protobufCopy groupedDevicesCount];
      v5->_tightSyncGroup = [protobufCopy tightlySyncedGroup];
      v5->_hasTightSyncGroup = [protobufCopy hasTightlySyncedGroup];
      v5->_pairingAllowed = [protobufCopy allowsPairing];
      v5->_hasPairingAllowed = [protobufCopy hasAllowsPairing];
      v5->_supportsSystemPairing = [protobufCopy supportsSystemPairing];
      v5->_hasSupportsSystemPairing = [protobufCopy hasSupportsSystemPairing];
      v5->_supportsACL = [protobufCopy supportsACL];
      v5->_hasSupportsACL = [protobufCopy hasSupportsACL];
      v5->_supportsSharedQueue = [protobufCopy supportsSharedQueue];
      v5->_hasSupportsSharedQueue = [protobufCopy hasSupportsSharedQueue];
      v5->_sharedQueueVersion = [protobufCopy sharedQueueVersion];
      v5->_hasSharedQueueVersion = [protobufCopy hasSharedQueueVersion];
      v5->_proxyGroupPlayer = [protobufCopy isProxyGroupPlayer];
      v5->_hasProxyGroupPlayer = [protobufCopy hasIsProxyGroupPlayer];
      v5->_connected = [protobufCopy connected];
      v5->_hasConnected = [protobufCopy hasConnected];
      v5->_supportsExtendedMotion = [protobufCopy supportsExtendedMotion];
      v5->_hasSupportsExtendedMotion = [protobufCopy hasSupportsExtendedMotion];
      v5->_groupLogicalDeviceCount = [protobufCopy logicalDeviceCount];
      v5->_hasGroupLogicalDeviceCount = [protobufCopy hasLogicalDeviceCount];
      v5->_groupLeader = [protobufCopy isGroupLeader];
      v5->_hasGroupLeader = [protobufCopy hasIsGroupLeader];
      v5->_airPlayActive = [protobufCopy isAirplayActive];
      v5->_hasAirPlayActive = [protobufCopy hasIsAirplayActive];
      v5->_supportsMultiplayer = [protobufCopy supportsMultiplayer];
      v5->_hasSupportsMultiplayer = [protobufCopy hasSupportsMultiplayer];
      v5->_parentGroupContainsDiscoverableGroupLeader = [protobufCopy parentGroupContainsDiscoverableGroupLeader];
      v5->_hasParentGroupContainsDiscoverableGroupLeader = [protobufCopy hasParentGroupContainsDiscoverableGroupLeader];
      v5->_groupContainsDiscoverableGroupLeader = [protobufCopy groupContainsDiscoverableGroupLeader];
      v5->_hasGroupContainsDiscoverableGroupLeader = [protobufCopy hasGroupContainsDiscoverableGroupLeader];
      v5->_preferredEncoding = [protobufCopy preferredEncoding] == 1;
      v5->_hasPreferredEncoding = [protobufCopy hasPreferredEncoding];
      v5->_isEligibleForHostingGroupSessionExcludingAcknowledgements = [protobufCopy isEligibleForHostingGroupSessionExcludingAcknowledgements];
      v5->_hasIsEligibleForHostingGroupSessionExcludingAcknowledgements = [protobufCopy hasIsEligibleForHostingGroupSessionExcludingAcknowledgements];
      v5->_clusterType = [protobufCopy clusterType];
      v5->_hasClusterType = [protobufCopy hasClusterType];
      v5->_clusterAware = [protobufCopy isClusterAware];
      v5->_hasIsClusterAware = [protobufCopy hasIsClusterAware];
      v5->_configuredClusterSize = [protobufCopy configuredClusterSize];
      v5->_hasConfiguredClusterSize = [protobufCopy hasConfiguredClusterSize];
      v5->_clusterLeader = [protobufCopy isClusterLeader];
      v5->_hasIsClusterLeader = [protobufCopy hasIsClusterLeader];
      v5->_lastSupportedClusterType = [protobufCopy lastKnownClusterType];
      v5->_hasLastSupportedClusterType = [protobufCopy hasLastKnownClusterType];
      v5->_supportsOutputContextSync = [protobufCopy supportsOutputContextSync];
      v5->_hasSupportsOutputContextSync = [protobufCopy hasSupportsOutputContextSync];
      v5->_lastSupportedProtocolMessageType = [protobufCopy lastSupportedMessageType];
      v5->_hasLastSupportedProtocolMessageType = [protobufCopy hasLastSupportedMessageType];
      v5->_parentGroupSupportsGroupCohesion = [protobufCopy parentGroupSupportsGroupCohesion];
      v5->_hasParentGroupSupportsGroupCohesion = [protobufCopy hasParentGroupSupportsGroupCohesion];
      name = [protobufCopy name];
      v7 = [name copy];
      name = v5->_name;
      v5->_name = v7;

      uniqueIdentifier = [protobufCopy uniqueIdentifier];
      v10 = [uniqueIdentifier copy];
      identifier = v5->_identifier;
      v5->_identifier = v10;

      localizedModelName = [protobufCopy localizedModelName];
      v13 = [localizedModelName copy];
      localizedModelName = v5->_localizedModelName;
      v5->_localizedModelName = v13;

      systemBuildVersion = [protobufCopy systemBuildVersion];
      v16 = [systemBuildVersion copy];
      buildVersion = v5->_buildVersion;
      v5->_buildVersion = v16;

      applicationBundleIdentifier = [protobufCopy applicationBundleIdentifier];
      v19 = [applicationBundleIdentifier copy];
      bundleIdentifier = v5->_bundleIdentifier;
      v5->_bundleIdentifier = v19;

      applicationBundleVersion = [protobufCopy applicationBundleVersion];
      v22 = [applicationBundleVersion copy];
      bundleVersion = v5->_bundleVersion;
      v5->_bundleVersion = v22;

      systemMediaApplication = [protobufCopy systemMediaApplication];
      v25 = [systemMediaApplication copy];
      systemMediaApplication = v5->_systemMediaApplication;
      v5->_systemMediaApplication = v25;

      systemPodcastApplication = [protobufCopy systemPodcastApplication];
      v28 = [systemPodcastApplication copy];
      systemPodcastApplication = v5->_systemPodcastApplication;
      v5->_systemPodcastApplication = v28;

      systemBooksApplication = [protobufCopy systemBooksApplication];
      v31 = [systemBooksApplication copy];
      systemBooksApplication = v5->_systemBooksApplication;
      v5->_systemBooksApplication = v31;

      deviceUID = [protobufCopy deviceUID];
      v34 = [deviceUID copy];
      deviceUID = v5->_deviceUID;
      v5->_deviceUID = v34;

      managedConfigDeviceID = [protobufCopy managedConfigDeviceID];
      v37 = [managedConfigDeviceID copy];
      managedConfigurationDeviceIdentifier = v5->_managedConfigurationDeviceIdentifier;
      v5->_managedConfigurationDeviceIdentifier = v37;

      tightSyncUID = [protobufCopy tightSyncUID];
      v40 = [tightSyncUID copy];
      tightSyncUID = v5->_tightSyncUID;
      v5->_tightSyncUID = v40;

      groupUID = [protobufCopy groupUID];
      v43 = [groupUID copy];
      groupUID = v5->_groupUID;
      v5->_groupUID = v43;

      airPlayGroupID = [protobufCopy airPlayGroupID];
      v46 = [airPlayGroupID copy];
      airPlayGroupUID = v5->_airPlayGroupUID;
      v5->_airPlayGroupUID = v46;

      groupName = [protobufCopy groupName];
      v49 = [groupName copy];
      groupName = v5->_groupName;
      v5->_groupName = v49;

      senderDefaultGroupUID = [protobufCopy senderDefaultGroupUID];
      v52 = [senderDefaultGroupUID copy];
      senderDefaultGroupUID = v5->_senderDefaultGroupUID;
      v5->_senderDefaultGroupUID = v52;

      bluetoothAddress = [protobufCopy bluetoothAddress];
      v55 = [bluetoothAddress copy];
      bluetoothAddress = v5->_bluetoothAddress;
      v5->_bluetoothAddress = v55;

      airplayReceivers = [protobufCopy airplayReceivers];
      v58 = [airplayReceivers copy];
      airPlayReceivers = v5->_airPlayReceivers;
      v5->_airPlayReceivers = v58;

      linkAgent = [protobufCopy linkAgent];
      v61 = [linkAgent copy];
      linkAgent = v5->_linkAgent;
      v5->_linkAgent = v61;

      clusterID = [protobufCopy clusterID];
      v64 = [clusterID copy];
      clusterID = v5->_clusterID;
      v5->_clusterID = v64;

      clusterLeaderID = [protobufCopy clusterLeaderID];
      v67 = [clusterLeaderID copy];
      preferredClusterLeaderID = v5->_preferredClusterLeaderID;
      v5->_preferredClusterLeaderID = v67;

      modelID = [protobufCopy modelID];
      v70 = [modelID copy];
      modelID = v5->_modelID;
      v5->_modelID = v70;

      routingContextID = [protobufCopy routingContextID];
      v73 = [routingContextID copy];
      routingContextID = v5->_routingContextID;
      v5->_routingContextID = v73;

      computerName = [protobufCopy computerName];
      v76 = [computerName copy];
      computerName = v5->_computerName;
      v5->_computerName = v76;

      activeSystemEndpointUID = [protobufCopy activeSystemEndpointUID];
      activeSystemEndpointUID = v5->_activeSystemEndpointUID;
      v5->_activeSystemEndpointUID = activeSystemEndpointUID;

      groupSessionToken = [protobufCopy groupSessionToken];
      if (groupSessionToken)
      {
        v81 = [[MRGroupSessionToken alloc] initWithProtobuf:groupSessionToken];
        groupSessionToken = v5->_groupSessionToken;
        v5->_groupSessionToken = v81;
      }

      leaderDeviceInfo = [protobufCopy leaderDeviceInfo];

      if (leaderDeviceInfo)
      {
        v84 = [MRDeviceInfo alloc];
        leaderDeviceInfo2 = [protobufCopy leaderDeviceInfo];
        v86 = [(MRDeviceInfo *)v84 initWithProtobuf:leaderDeviceInfo2];
        leaderDeviceInfo = v5->_leaderDeviceInfo;
        v5->_leaderDeviceInfo = v86;
      }

      groupedDevices = [protobufCopy groupedDevices];
      v89 = [groupedDevices mr_map:&__block_literal_global_6_0];
      groupedDevices = v5->_groupedDevices;
      v5->_groupedDevices = v89;

      clusteredDevices = [protobufCopy clusteredDevices];
      v92 = [clusteredDevices mr_map:&__block_literal_global_8_1];
      clusteredDevices = v5->_clusteredDevices;
      v5->_clusteredDevices = v92;

      allClusteredDevices = [protobufCopy allClusteredDevices];
      v95 = [allClusteredDevices mr_map:&__block_literal_global_10_0];
      allClusteredDevices = v5->_allClusteredDevices;
      v5->_allClusteredDevices = v95;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
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

- (MRDeviceInfo)initWithData:(id)data
{
  dataCopy = data;
  if (dataCopy)
  {
    v5 = [[_MRDeviceInfoMessageProtobuf alloc] initWithData:dataCopy];
    v6 = [(MRDeviceInfo *)self initWithProtobuf:v5];
  }

  else
  {
    v6 = [(MRDeviceInfo *)self initWithProtobuf:0];
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  protobuf = [(MRDeviceInfo *)self protobuf];
  [coderCopy encodeObject:protobuf forKey:@"protobuf"];
}

- (MRDeviceInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [MRDeviceInfo alloc];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobuf"];

  v7 = [(MRDeviceInfo *)v5 initWithProtobuf:v6];
  return v7;
}

+ (id)deviceInfosFromData:(id)data
{
  if (data)
  {
    v3 = MEMORY[0x1E695DFD8];
    dataCopy = data;
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

+ (id)dataFromDeviceInfos:(id)infos
{
  if (infos)
  {
    v3 = [infos mr_map:&__block_literal_global_21_0];
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
  name = [(MRDeviceInfo *)self name];
  [v3 setObject:name forKeyedSubscript:@"name"];

  identifier = [(MRDeviceInfo *)self identifier];
  [v3 setObject:identifier forKeyedSubscript:@"identifier"];

  localizedModelName = [(MRDeviceInfo *)self localizedModelName];
  [v3 setObject:localizedModelName forKeyedSubscript:@"localizedModelName"];

  buildVersion = [(MRDeviceInfo *)self buildVersion];
  [v3 setObject:buildVersion forKeyedSubscript:@"buildVersion"];

  bundleIdentifier = [(MRDeviceInfo *)self bundleIdentifier];
  [v3 setObject:bundleIdentifier forKeyedSubscript:@"bundleIdentifier"];

  bundleVersion = [(MRDeviceInfo *)self bundleVersion];
  [v3 setObject:bundleVersion forKeyedSubscript:@"bundleVersion"];

  systemMediaApplication = [(MRDeviceInfo *)self systemMediaApplication];
  [v3 setObject:systemMediaApplication forKeyedSubscript:@"systemMediaApplication"];

  systemPodcastApplication = [(MRDeviceInfo *)self systemPodcastApplication];
  [v3 setObject:systemPodcastApplication forKeyedSubscript:@"systemPodcastApplication"];

  systemBooksApplication = [(MRDeviceInfo *)self systemBooksApplication];
  [v3 setObject:systemBooksApplication forKeyedSubscript:@"systemBooksApplication"];

  deviceUID = [(MRDeviceInfo *)self deviceUID];
  [v3 setObject:deviceUID forKeyedSubscript:@"deviceUID"];

  localReceiverPairingIdentity = [(MRDeviceInfo *)self localReceiverPairingIdentity];
  [v3 setObject:localReceiverPairingIdentity forKeyedSubscript:@"localReceiverPairingIdentity"];

  managedConfigurationDeviceIdentifier = [(MRDeviceInfo *)self managedConfigurationDeviceIdentifier];
  [v3 setObject:managedConfigurationDeviceIdentifier forKeyedSubscript:@"managedConfigurationDeviceIdentifier"];

  tightSyncUID = [(MRDeviceInfo *)self tightSyncUID];
  [v3 setObject:tightSyncUID forKeyedSubscript:@"tightSyncUID"];

  groupUID = [(MRDeviceInfo *)self groupUID];
  [v3 setObject:groupUID forKeyedSubscript:@"groupUID"];

  airPlayGroupUID = [(MRDeviceInfo *)self airPlayGroupUID];
  [v3 setObject:airPlayGroupUID forKeyedSubscript:@"airPlayGroupUID"];

  groupName = [(MRDeviceInfo *)self groupName];
  [v3 setObject:groupName forKeyedSubscript:@"groupName"];

  senderDefaultGroupUID = [(MRDeviceInfo *)self senderDefaultGroupUID];
  [v3 setObject:senderDefaultGroupUID forKeyedSubscript:@"senderDefaultGroupUID"];

  bluetoothAddress = [(MRDeviceInfo *)self bluetoothAddress];
  [v3 setObject:bluetoothAddress forKeyedSubscript:@"bluetoothAddress"];

  groupedDevices = [(MRDeviceInfo *)self groupedDevices];
  [v3 setObject:groupedDevices forKeyedSubscript:@"groupedDevices"];

  clusteredDevices = [(MRDeviceInfo *)self clusteredDevices];
  [v3 setObject:clusteredDevices forKeyedSubscript:@"clusteredDevices"];

  allClusteredDevices = [(MRDeviceInfo *)self allClusteredDevices];
  [v3 setObject:allClusteredDevices forKeyedSubscript:@"allClusteredDevices"];

  airPlayReceivers = [(MRDeviceInfo *)self airPlayReceivers];
  [v3 setObject:airPlayReceivers forKeyedSubscript:@"airPlayReceivers"];

  linkAgent = [(MRDeviceInfo *)self linkAgent];
  [v3 setObject:linkAgent forKeyedSubscript:@"linkAgent"];

  clusterID = [(MRDeviceInfo *)self clusterID];
  [v3 setObject:clusterID forKeyedSubscript:@"clusterID"];

  preferredClusterLeaderID = [(MRDeviceInfo *)self preferredClusterLeaderID];
  [v3 setObject:preferredClusterLeaderID forKeyedSubscript:@"clusterLeaderID"];

  modelID = [(MRDeviceInfo *)self modelID];
  [v3 setObject:modelID forKeyedSubscript:@"modelID"];

  routingContextID = [(MRDeviceInfo *)self routingContextID];
  [v3 setObject:routingContextID forKeyedSubscript:@"routingContextID"];

  parentGroupID = [(MRDeviceInfo *)self parentGroupID];
  [v3 setObject:parentGroupID forKeyedSubscript:@"parentGroupID"];

  computerName = [(MRDeviceInfo *)self computerName];
  [v3 setObject:computerName forKeyedSubscript:@"computerName"];

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

  groupSessionToken = [(MRDeviceInfo *)self groupSessionToken];
  [v3 setObject:groupSessionToken forKeyedSubscript:@"groupSessionToken"];

  if ([(MRDeviceInfo *)self isEligibleForHostingGroupSessionExcludingAcknowledgements])
  {
    v61 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRDeviceInfo isEligibleForHostingGroupSessionExcludingAcknowledgements](self, "isEligibleForHostingGroupSessionExcludingAcknowledgements")}];
    [v3 setObject:v61 forKeyedSubscript:@"isEligibleForHostingGroupSessionExcludingAcknowledgements"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"isEligibleForHostingGroupSessionExcludingAcknowledgements"];
  }

  activeSystemEndpointUID = [(MRDeviceInfo *)self activeSystemEndpointUID];
  [v3 setObject:activeSystemEndpointUID forKeyedSubscript:@"activeSystemEndpointUID"];

  leaderDeviceInfo = [(MRDeviceInfo *)self leaderDeviceInfo];
  dictionaryRepresentation = [leaderDeviceInfo dictionaryRepresentation];
  [v3 setObject:dictionaryRepresentation forKeyedSubscript:@"leaderDeviceInfo"];

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
  identifier = [(MRDeviceInfo *)self identifier];
  [(MRDeviceInfo *)v3 setIdentifier:identifier];

  name = [(MRDeviceInfo *)self name];

  if (name)
  {
    name2 = [(MRDeviceInfo *)self name];
    [(MRDeviceInfo *)v3 setName:name2];
  }

  deviceUID = [(MRDeviceInfo *)self deviceUID];

  if (deviceUID)
  {
    deviceUID2 = [(MRDeviceInfo *)self deviceUID];
    [(MRDeviceInfo *)v3 setDeviceUID:deviceUID2];
  }

  groupUID = [(MRDeviceInfo *)self groupUID];

  if (groupUID)
  {
    groupUID2 = [(MRDeviceInfo *)self groupUID];
    [(MRDeviceInfo *)v3 setGroupUID:groupUID2];
  }

  airPlayGroupUID = [(MRDeviceInfo *)self airPlayGroupUID];

  if (airPlayGroupUID)
  {
    airPlayGroupUID2 = [(MRDeviceInfo *)self airPlayGroupUID];
    [(MRDeviceInfo *)v3 setAirPlayGroupUID:airPlayGroupUID2];
  }

  groupName = [(MRDeviceInfo *)self groupName];

  if (groupName)
  {
    groupName2 = [(MRDeviceInfo *)self groupName];
    [(MRDeviceInfo *)v3 setGroupName:groupName2];
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

  tightSyncUID = [(MRDeviceInfo *)self tightSyncUID];

  if (tightSyncUID)
  {
    tightSyncUID2 = [(MRDeviceInfo *)self tightSyncUID];
    [(MRDeviceInfo *)v3 setTightSyncUID:tightSyncUID2];
  }

  routingContextID = [(MRDeviceInfo *)self routingContextID];

  if (routingContextID)
  {
    routingContextID2 = [(MRDeviceInfo *)self routingContextID];
    [(MRDeviceInfo *)v3 setRoutingContextID:routingContextID2];
  }

  return v3;
}

- (NSString)minimalDescription
{
  skeleton = [(MRDeviceInfo *)self skeleton];
  v3 = [skeleton description];

  return v3;
}

- (BOOL)hasPlaceholderGroupSession
{
  groupSessionToken = [(MRDeviceInfo *)self groupSessionToken];
  if (groupSessionToken)
  {
    isEligibleForHostingGroupSessionExcludingAcknowledgements = 0;
  }

  else
  {
    isEligibleForHostingGroupSessionExcludingAcknowledgements = [(MRDeviceInfo *)self isEligibleForHostingGroupSessionExcludingAcknowledgements];
  }

  return isEligibleForHostingGroupSessionExcludingAcknowledgements;
}

- (BOOL)containsLocalDevice
{
  v3 = MRMediaRemoteCopyDeviceUID();
  LOBYTE(self) = [(MRDeviceInfo *)self containsDevice:v3];

  return self;
}

- (BOOL)containsDevice:(id)device
{
  v38 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  clusterID = [(MRDeviceInfo *)self clusterID];
  v6 = [clusterID isEqual:deviceCopy];

  if ((v6 & 1) == 0)
  {
    deviceUID = [(MRDeviceInfo *)self deviceUID];
    v8 = [deviceUID isEqual:deviceCopy];

    if ((v8 & 1) == 0)
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      groupedDevices = [(MRDeviceInfo *)self groupedDevices];
      v11 = [groupedDevices countByEnumeratingWithState:&v31 objects:v37 count:16];
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
            objc_enumerationMutation(groupedDevices);
          }

          if ([*(*(&v31 + 1) + 8 * v14) containsDevice:deviceCopy])
          {
            break;
          }

          if (v12 == ++v14)
          {
            v12 = [groupedDevices countByEnumeratingWithState:&v31 objects:v37 count:16];
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
        groupedDevices = [(MRDeviceInfo *)self clusteredDevices];
        v15 = [groupedDevices countByEnumeratingWithState:&v27 objects:v36 count:16];
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
              objc_enumerationMutation(groupedDevices);
            }

            if ([*(*(&v27 + 1) + 8 * v18) containsDevice:deviceCopy])
            {
              break;
            }

            if (v16 == ++v18)
            {
              v16 = [groupedDevices countByEnumeratingWithState:&v27 objects:v36 count:16];
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
          groupedDevices = [(MRDeviceInfo *)self allClusteredDevices];
          v9 = [groupedDevices countByEnumeratingWithState:&v23 objects:v35 count:16];
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
              objc_enumerationMutation(groupedDevices);
            }

            if ([*(*(&v23 + 1) + 8 * v20) containsDevice:deviceCopy])
            {
              break;
            }

            if (v9 == ++v20)
            {
              v9 = [groupedDevices countByEnumeratingWithState:&v23 objects:v35 count:16];
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

- (BOOL)matchesUID:(id)d
{
  dCopy = d;
  deviceUID = [(MRDeviceInfo *)self deviceUID];
  if ([deviceUID isEqualToString:dCopy])
  {
    v6 = 1;
  }

  else
  {
    clusterID = [(MRDeviceInfo *)self clusterID];
    if ([clusterID isEqualToString:dCopy])
    {
      v6 = 1;
    }

    else
    {
      identifier = [(MRDeviceInfo *)self identifier];
      v6 = [identifier isEqualToString:dCopy];
    }
  }

  return v6;
}

- (id)resolveOutputDeviceUIDs:(id)ds
{
  dsCopy = ds;
  deviceUID = [(MRDeviceInfo *)self deviceUID];

  if (deviceUID)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __40__MRDeviceInfo_resolveOutputDeviceUIDs___block_invoke;
    v9[3] = &unk_1E769D2B0;
    v9[4] = self;
    v6 = [dsCopy msv_map:v9];
  }

  else
  {
    v6 = dsCopy;
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

- (id)deltaDescriptionFromDeviceInfo:(id)info minimal:(BOOL)minimal
{
  minimalCopy = minimal;
  infoCopy = info;
  dictionaryRepresentation = [infoCopy dictionaryRepresentation];
  dictionaryRepresentation2 = [(MRDeviceInfo *)self dictionaryRepresentation];
  v22 = 0;
  v23 = 0;
  v21 = 0;
  MRDictionaryCalculateDeltas(dictionaryRepresentation, dictionaryRepresentation2, &v23, &v22, &v21);
  v9 = v23;
  v10 = v22;
  v11 = v21;

  v12 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v13 = objc_alloc(MEMORY[0x1E696AEC0]);
  v14 = v13;
  if (minimalCopy)
  {
    skeleton = [(MRDeviceInfo *)self skeleton];
    v16 = [v14 initWithFormat:@"%@", skeleton];
    [v12 appendString:v16];
  }

  else
  {
    skeleton = [v13 initWithFormat:@"DeviceInfo changed from\n %@ \nto\n %@\n", infoCopy, self];
    [v12 appendString:skeleton];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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
  name = [(MRDeviceInfo *)self name];
  v7 = [name copyWithZone:zone];
  [v5 setName:v7];

  identifier = [(MRDeviceInfo *)self identifier];
  v9 = [identifier copyWithZone:zone];
  [v5 setIdentifier:v9];

  localizedModelName = [(MRDeviceInfo *)self localizedModelName];
  v11 = [localizedModelName copyWithZone:zone];
  [v5 setLocalizedModelName:v11];

  buildVersion = [(MRDeviceInfo *)self buildVersion];
  v13 = [buildVersion copyWithZone:zone];
  [v5 setBuildVersion:v13];

  bundleIdentifier = [(MRDeviceInfo *)self bundleIdentifier];
  v15 = [bundleIdentifier copyWithZone:zone];
  [v5 setBundleIdentifier:v15];

  bundleVersion = [(MRDeviceInfo *)self bundleVersion];
  v17 = [bundleVersion copyWithZone:zone];
  [v5 setBundleVersion:v17];

  systemMediaApplication = [(MRDeviceInfo *)self systemMediaApplication];
  v19 = [systemMediaApplication copyWithZone:zone];
  [v5 setSystemMediaApplication:v19];

  systemPodcastApplication = [(MRDeviceInfo *)self systemPodcastApplication];
  v21 = [systemPodcastApplication copyWithZone:zone];
  [v5 setSystemPodcastApplication:v21];

  systemBooksApplication = [(MRDeviceInfo *)self systemBooksApplication];
  v23 = [systemBooksApplication copyWithZone:zone];
  [v5 setSystemBooksApplication:v23];

  deviceUID = [(MRDeviceInfo *)self deviceUID];
  v25 = [deviceUID copyWithZone:zone];
  [v5 setDeviceUID:v25];

  localReceiverPairingIdentity = [(MRDeviceInfo *)self localReceiverPairingIdentity];
  v27 = [localReceiverPairingIdentity copyWithZone:zone];
  [v5 setLocalReceiverPairingIdentity:v27];

  managedConfigurationDeviceIdentifier = [(MRDeviceInfo *)self managedConfigurationDeviceIdentifier];
  v29 = [managedConfigurationDeviceIdentifier copyWithZone:zone];
  [v5 setManagedConfigurationDeviceIdentifier:v29];

  tightSyncUID = [(MRDeviceInfo *)self tightSyncUID];
  v31 = [tightSyncUID copyWithZone:zone];
  [v5 setTightSyncUID:v31];

  groupUID = [(MRDeviceInfo *)self groupUID];
  v33 = [groupUID copyWithZone:zone];
  [v5 setGroupUID:v33];

  airPlayGroupUID = [(MRDeviceInfo *)self airPlayGroupUID];
  v35 = [airPlayGroupUID copyWithZone:zone];
  [v5 setAirPlayGroupUID:v35];

  groupName = [(MRDeviceInfo *)self groupName];
  v37 = [groupName copyWithZone:zone];
  [v5 setGroupName:v37];

  senderDefaultGroupUID = [(MRDeviceInfo *)self senderDefaultGroupUID];
  v39 = [senderDefaultGroupUID copyWithZone:zone];
  [v5 setSenderDefaultGroupUID:v39];

  bluetoothAddress = [(MRDeviceInfo *)self bluetoothAddress];
  v41 = [bluetoothAddress copyWithZone:zone];
  [v5 setBluetoothAddress:v41];

  groupedDevices = [(MRDeviceInfo *)self groupedDevices];
  v43 = [groupedDevices copyWithZone:zone];
  [v5 setGroupedDevices:v43];

  clusteredDevices = [(MRDeviceInfo *)self clusteredDevices];
  v45 = [clusteredDevices copyWithZone:zone];
  [v5 setClusteredDevices:v45];

  allClusteredDevices = [(MRDeviceInfo *)self allClusteredDevices];
  v47 = [allClusteredDevices copyWithZone:zone];
  [v5 setAllClusteredDevices:v47];

  airPlayReceivers = [(MRDeviceInfo *)self airPlayReceivers];
  v49 = [airPlayReceivers copyWithZone:zone];
  [v5 setAirPlayReceivers:v49];

  linkAgent = [(MRDeviceInfo *)self linkAgent];
  v51 = [linkAgent copyWithZone:zone];
  [v5 setLinkAgent:v51];

  clusterID = [(MRDeviceInfo *)self clusterID];
  v53 = [clusterID copyWithZone:zone];
  [v5 setClusterID:v53];

  preferredClusterLeaderID = [(MRDeviceInfo *)self preferredClusterLeaderID];
  v55 = [preferredClusterLeaderID copyWithZone:zone];
  [v5 setPreferredClusterLeaderID:v55];

  modelID = [(MRDeviceInfo *)self modelID];
  v57 = [modelID copyWithZone:zone];
  [v5 setModelID:v57];

  routingContextID = [(MRDeviceInfo *)self routingContextID];
  v59 = [routingContextID copyWithZone:zone];
  [v5 setRoutingContextID:v59];

  computerName = [(MRDeviceInfo *)self computerName];
  v61 = [computerName copyWithZone:zone];
  [v5 setComputerName:v61];

  groupSessionToken = [(MRDeviceInfo *)self groupSessionToken];
  v63 = [groupSessionToken copyWithZone:zone];
  [v5 setGroupSessionToken:v63];

  leaderDeviceInfo = [(MRDeviceInfo *)self leaderDeviceInfo];
  v65 = [leaderDeviceInfo copyWithZone:zone];
  [v5 setLeaderDeviceInfo:v65];

  activeSystemEndpointUID = [(MRDeviceInfo *)self activeSystemEndpointUID];
  v67 = [activeSystemEndpointUID copyWithZone:zone];
  [v5 setActiveSystemEndpointUID:v67];

  return v5;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  protobuf = [(MRDeviceInfo *)self protobuf];
  v6 = [v3 initWithFormat:@"<%@: %p> %@", v4, self, protobuf];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy != self)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_217;
    }

    hasDeviceClass = [(MRDeviceInfo *)equalCopy hasDeviceClass];
    if (hasDeviceClass != [(MRDeviceInfo *)self hasDeviceClass])
    {
      goto LABEL_217;
    }

    if ([(MRDeviceInfo *)equalCopy hasDeviceClass])
    {
      if ([(MRDeviceInfo *)self hasDeviceClass])
      {
        deviceClass = [(MRDeviceInfo *)equalCopy deviceClass];
        if (deviceClass != [(MRDeviceInfo *)self deviceClass])
        {
          goto LABEL_217;
        }
      }
    }

    hasProtocolVersion = [(MRDeviceInfo *)equalCopy hasProtocolVersion];
    if (hasProtocolVersion != [(MRDeviceInfo *)self hasProtocolVersion])
    {
      goto LABEL_217;
    }

    if ([(MRDeviceInfo *)equalCopy hasProtocolVersion])
    {
      if ([(MRDeviceInfo *)self hasProtocolVersion])
      {
        protocolVersion = [(MRDeviceInfo *)equalCopy protocolVersion];
        if (protocolVersion != [(MRDeviceInfo *)self protocolVersion])
        {
          goto LABEL_217;
        }
      }
    }

    hasGroupedDeviceCount = [(MRDeviceInfo *)equalCopy hasGroupedDeviceCount];
    if (hasGroupedDeviceCount != [(MRDeviceInfo *)self hasGroupedDeviceCount])
    {
      goto LABEL_217;
    }

    if ([(MRDeviceInfo *)equalCopy hasGroupedDeviceCount])
    {
      if ([(MRDeviceInfo *)self hasGroupedDeviceCount])
      {
        groupedDeviceCount = [(MRDeviceInfo *)equalCopy groupedDeviceCount];
        if (groupedDeviceCount != [(MRDeviceInfo *)self groupedDeviceCount])
        {
          goto LABEL_217;
        }
      }
    }

    hasSharedQueueVersion = [(MRDeviceInfo *)equalCopy hasSharedQueueVersion];
    if (hasSharedQueueVersion != [(MRDeviceInfo *)self hasSharedQueueVersion])
    {
      goto LABEL_217;
    }

    if ([(MRDeviceInfo *)equalCopy hasSharedQueueVersion])
    {
      if ([(MRDeviceInfo *)self hasSharedQueueVersion])
      {
        sharedQueueVersion = [(MRDeviceInfo *)equalCopy sharedQueueVersion];
        if (sharedQueueVersion != [(MRDeviceInfo *)self sharedQueueVersion])
        {
          goto LABEL_217;
        }
      }
    }

    hasGroupLogicalDeviceCount = [(MRDeviceInfo *)equalCopy hasGroupLogicalDeviceCount];
    if (hasGroupLogicalDeviceCount != [(MRDeviceInfo *)self hasGroupLogicalDeviceCount])
    {
      goto LABEL_217;
    }

    if ([(MRDeviceInfo *)equalCopy hasGroupLogicalDeviceCount])
    {
      if ([(MRDeviceInfo *)self hasGroupLogicalDeviceCount])
      {
        groupLogicalDeviceCount = [(MRDeviceInfo *)equalCopy groupLogicalDeviceCount];
        if (groupLogicalDeviceCount != [(MRDeviceInfo *)self groupLogicalDeviceCount])
        {
          goto LABEL_217;
        }
      }
    }

    hasSupportsSystemPairing = [(MRDeviceInfo *)equalCopy hasSupportsSystemPairing];
    if (hasSupportsSystemPairing != [(MRDeviceInfo *)self hasSupportsSystemPairing])
    {
      goto LABEL_217;
    }

    if ([(MRDeviceInfo *)equalCopy hasSupportsSystemPairing])
    {
      if ([(MRDeviceInfo *)self hasSupportsSystemPairing])
      {
        supportsSystemPairing = [(MRDeviceInfo *)equalCopy supportsSystemPairing];
        if (supportsSystemPairing != [(MRDeviceInfo *)self supportsSystemPairing])
        {
          goto LABEL_217;
        }
      }
    }

    hasSupportsACL = [(MRDeviceInfo *)equalCopy hasSupportsACL];
    if (hasSupportsACL != [(MRDeviceInfo *)self hasSupportsACL])
    {
      goto LABEL_217;
    }

    if ([(MRDeviceInfo *)equalCopy hasSupportsACL])
    {
      if ([(MRDeviceInfo *)self hasSupportsACL])
      {
        supportsACL = [(MRDeviceInfo *)equalCopy supportsACL];
        if (supportsACL != [(MRDeviceInfo *)self supportsACL])
        {
          goto LABEL_217;
        }
      }
    }

    hasSupportsSharedQueue = [(MRDeviceInfo *)equalCopy hasSupportsSharedQueue];
    if (hasSupportsSharedQueue != [(MRDeviceInfo *)self hasSupportsSharedQueue])
    {
      goto LABEL_217;
    }

    if ([(MRDeviceInfo *)equalCopy hasSupportsSharedQueue])
    {
      if ([(MRDeviceInfo *)self hasSupportsSharedQueue])
      {
        supportsSharedQueue = [(MRDeviceInfo *)equalCopy supportsSharedQueue];
        if (supportsSharedQueue != [(MRDeviceInfo *)self supportsSharedQueue])
        {
          goto LABEL_217;
        }
      }
    }

    hasSupportsExtendedMotion = [(MRDeviceInfo *)equalCopy hasSupportsExtendedMotion];
    if (hasSupportsExtendedMotion != [(MRDeviceInfo *)self hasSupportsExtendedMotion])
    {
      goto LABEL_217;
    }

    if ([(MRDeviceInfo *)equalCopy hasSupportsExtendedMotion])
    {
      if ([(MRDeviceInfo *)self hasSupportsExtendedMotion])
      {
        supportsExtendedMotion = [(MRDeviceInfo *)equalCopy supportsExtendedMotion];
        if (supportsExtendedMotion != [(MRDeviceInfo *)self supportsExtendedMotion])
        {
          goto LABEL_217;
        }
      }
    }

    hasTightSyncGroup = [(MRDeviceInfo *)equalCopy hasTightSyncGroup];
    if (hasTightSyncGroup != [(MRDeviceInfo *)self hasTightSyncGroup])
    {
      goto LABEL_217;
    }

    if ([(MRDeviceInfo *)equalCopy hasTightSyncGroup])
    {
      if ([(MRDeviceInfo *)self hasTightSyncGroup])
      {
        isTightSyncGroup = [(MRDeviceInfo *)equalCopy isTightSyncGroup];
        if (isTightSyncGroup != [(MRDeviceInfo *)self isTightSyncGroup])
        {
          goto LABEL_217;
        }
      }
    }

    hasPairingAllowed = [(MRDeviceInfo *)equalCopy hasPairingAllowed];
    if (hasPairingAllowed != [(MRDeviceInfo *)self hasPairingAllowed])
    {
      goto LABEL_217;
    }

    if ([(MRDeviceInfo *)equalCopy hasPairingAllowed])
    {
      if ([(MRDeviceInfo *)self hasPairingAllowed])
      {
        isPairingAllowed = [(MRDeviceInfo *)equalCopy isPairingAllowed];
        if (isPairingAllowed != [(MRDeviceInfo *)self isPairingAllowed])
        {
          goto LABEL_217;
        }
      }
    }

    hasProxyGroupPlayer = [(MRDeviceInfo *)equalCopy hasProxyGroupPlayer];
    if (hasProxyGroupPlayer != [(MRDeviceInfo *)self hasProxyGroupPlayer])
    {
      goto LABEL_217;
    }

    if ([(MRDeviceInfo *)equalCopy hasProxyGroupPlayer])
    {
      if ([(MRDeviceInfo *)self hasProxyGroupPlayer])
      {
        isProxyGroupPlayer = [(MRDeviceInfo *)equalCopy isProxyGroupPlayer];
        if (isProxyGroupPlayer != [(MRDeviceInfo *)self isProxyGroupPlayer])
        {
          goto LABEL_217;
        }
      }
    }

    hasConnected = [(MRDeviceInfo *)equalCopy hasConnected];
    if (hasConnected != [(MRDeviceInfo *)self hasConnected])
    {
      goto LABEL_217;
    }

    if ([(MRDeviceInfo *)equalCopy hasConnected])
    {
      if ([(MRDeviceInfo *)self hasConnected])
      {
        isConnected = [(MRDeviceInfo *)equalCopy isConnected];
        if (isConnected != [(MRDeviceInfo *)self isConnected])
        {
          goto LABEL_217;
        }
      }
    }

    hasGroupLeader = [(MRDeviceInfo *)equalCopy hasGroupLeader];
    if (hasGroupLeader != [(MRDeviceInfo *)self hasGroupLeader])
    {
      goto LABEL_217;
    }

    if ([(MRDeviceInfo *)equalCopy hasGroupLeader])
    {
      if ([(MRDeviceInfo *)self hasGroupLeader])
      {
        isGroupLeader = [(MRDeviceInfo *)equalCopy isGroupLeader];
        if (isGroupLeader != [(MRDeviceInfo *)self isGroupLeader])
        {
          goto LABEL_217;
        }
      }
    }

    hasAirPlayActive = [(MRDeviceInfo *)equalCopy hasAirPlayActive];
    if (hasAirPlayActive != [(MRDeviceInfo *)self hasAirPlayActive])
    {
      goto LABEL_217;
    }

    if ([(MRDeviceInfo *)equalCopy hasAirPlayActive])
    {
      if ([(MRDeviceInfo *)self hasAirPlayActive])
      {
        isAirPlayActive = [(MRDeviceInfo *)equalCopy isAirPlayActive];
        if (isAirPlayActive != [(MRDeviceInfo *)self isAirPlayActive])
        {
          goto LABEL_217;
        }
      }
    }

    hasSupportsMultiplayer = [(MRDeviceInfo *)equalCopy hasSupportsMultiplayer];
    if (hasSupportsMultiplayer != [(MRDeviceInfo *)self hasSupportsMultiplayer])
    {
      goto LABEL_217;
    }

    if ([(MRDeviceInfo *)equalCopy hasSupportsMultiplayer])
    {
      if ([(MRDeviceInfo *)self hasSupportsMultiplayer])
      {
        supportsMultiplayer = [(MRDeviceInfo *)equalCopy supportsMultiplayer];
        if (supportsMultiplayer != [(MRDeviceInfo *)self supportsMultiplayer])
        {
          goto LABEL_217;
        }
      }
    }

    hasParentGroupContainsDiscoverableGroupLeader = [(MRDeviceInfo *)equalCopy hasParentGroupContainsDiscoverableGroupLeader];
    if (hasParentGroupContainsDiscoverableGroupLeader != [(MRDeviceInfo *)self hasParentGroupContainsDiscoverableGroupLeader])
    {
      goto LABEL_217;
    }

    if ([(MRDeviceInfo *)equalCopy hasParentGroupContainsDiscoverableGroupLeader])
    {
      if ([(MRDeviceInfo *)self hasParentGroupContainsDiscoverableGroupLeader])
      {
        parentGroupContainsDiscoverableGroupLeader = [(MRDeviceInfo *)equalCopy parentGroupContainsDiscoverableGroupLeader];
        if (parentGroupContainsDiscoverableGroupLeader != [(MRDeviceInfo *)self parentGroupContainsDiscoverableGroupLeader])
        {
          goto LABEL_217;
        }
      }
    }

    hasGroupContainsDiscoverableGroupLeader = [(MRDeviceInfo *)equalCopy hasGroupContainsDiscoverableGroupLeader];
    if (hasGroupContainsDiscoverableGroupLeader != [(MRDeviceInfo *)self hasGroupContainsDiscoverableGroupLeader])
    {
      goto LABEL_217;
    }

    if ([(MRDeviceInfo *)equalCopy hasGroupContainsDiscoverableGroupLeader])
    {
      if ([(MRDeviceInfo *)self hasGroupContainsDiscoverableGroupLeader])
      {
        groupContainsDiscoverableGroupLeader = [(MRDeviceInfo *)equalCopy groupContainsDiscoverableGroupLeader];
        if (groupContainsDiscoverableGroupLeader != [(MRDeviceInfo *)self groupContainsDiscoverableGroupLeader])
        {
          goto LABEL_217;
        }
      }
    }

    hasClusterType = [(MRDeviceInfo *)equalCopy hasClusterType];
    if (hasClusterType != [(MRDeviceInfo *)self hasClusterType])
    {
      goto LABEL_217;
    }

    clusterType = [(MRDeviceInfo *)equalCopy clusterType];
    if (clusterType != [(MRDeviceInfo *)self clusterType])
    {
      goto LABEL_217;
    }

    hasIsClusterAware = [(MRDeviceInfo *)equalCopy hasIsClusterAware];
    if (hasIsClusterAware != [(MRDeviceInfo *)self hasIsClusterAware])
    {
      goto LABEL_217;
    }

    isClusterAware = [(MRDeviceInfo *)equalCopy isClusterAware];
    if (isClusterAware != [(MRDeviceInfo *)self isClusterAware])
    {
      goto LABEL_217;
    }

    hasConfiguredClusterSize = [(MRDeviceInfo *)equalCopy hasConfiguredClusterSize];
    if (hasConfiguredClusterSize != [(MRDeviceInfo *)self hasConfiguredClusterSize])
    {
      goto LABEL_217;
    }

    configuredClusterSize = [(MRDeviceInfo *)equalCopy configuredClusterSize];
    if (configuredClusterSize != [(MRDeviceInfo *)self configuredClusterSize])
    {
      goto LABEL_217;
    }

    hasIsClusterLeader = [(MRDeviceInfo *)equalCopy hasIsClusterLeader];
    if (hasIsClusterLeader != [(MRDeviceInfo *)self hasIsClusterLeader])
    {
      goto LABEL_217;
    }

    isClusterLeader = [(MRDeviceInfo *)equalCopy isClusterLeader];
    if (isClusterLeader != [(MRDeviceInfo *)self isClusterLeader])
    {
      goto LABEL_217;
    }

    hasLastSupportedClusterType = [(MRDeviceInfo *)equalCopy hasLastSupportedClusterType];
    if (hasLastSupportedClusterType != [(MRDeviceInfo *)self hasLastSupportedClusterType])
    {
      goto LABEL_217;
    }

    lastSupportedClusterType = [(MRDeviceInfo *)equalCopy lastSupportedClusterType];
    if (lastSupportedClusterType != [(MRDeviceInfo *)self lastSupportedClusterType])
    {
      goto LABEL_217;
    }

    hasSupportsOutputContextSync = [(MRDeviceInfo *)equalCopy hasSupportsOutputContextSync];
    if (hasSupportsOutputContextSync != [(MRDeviceInfo *)self hasSupportsOutputContextSync])
    {
      goto LABEL_217;
    }

    supportsOutputContextSync = [(MRDeviceInfo *)equalCopy supportsOutputContextSync];
    if (supportsOutputContextSync != [(MRDeviceInfo *)self supportsOutputContextSync])
    {
      goto LABEL_217;
    }

    hasLastSupportedProtocolMessageType = [(MRDeviceInfo *)equalCopy hasLastSupportedProtocolMessageType];
    if (hasLastSupportedProtocolMessageType != [(MRDeviceInfo *)self hasLastSupportedProtocolMessageType])
    {
      goto LABEL_217;
    }

    lastSupportedProtocolMessageType = [(MRDeviceInfo *)equalCopy lastSupportedProtocolMessageType];
    if (lastSupportedProtocolMessageType != [(MRDeviceInfo *)self lastSupportedProtocolMessageType])
    {
      goto LABEL_217;
    }

    hasParentGroupSupportsGroupCohesion = [(MRDeviceInfo *)equalCopy hasParentGroupSupportsGroupCohesion];
    if (hasParentGroupSupportsGroupCohesion != [(MRDeviceInfo *)self hasParentGroupSupportsGroupCohesion])
    {
      goto LABEL_217;
    }

    parentGroupSupportsGroupCohesion = [(MRDeviceInfo *)equalCopy parentGroupSupportsGroupCohesion];
    if (parentGroupSupportsGroupCohesion != [(MRDeviceInfo *)self parentGroupSupportsGroupCohesion])
    {
      goto LABEL_217;
    }

    name = [(MRDeviceInfo *)equalCopy name];
    name2 = [(MRDeviceInfo *)self name];
    v59 = name2;
    if (name == name2)
    {
    }

    else
    {
      name3 = [(MRDeviceInfo *)equalCopy name];
      name4 = [(MRDeviceInfo *)self name];
      v62 = [name3 isEqualToString:name4];

      if (!v62)
      {
LABEL_217:
        LOBYTE(v63) = 0;
        goto LABEL_218;
      }
    }

    identifier = [(MRDeviceInfo *)equalCopy identifier];
    identifier2 = [(MRDeviceInfo *)self identifier];
    v66 = identifier2;
    if (identifier == identifier2)
    {
    }

    else
    {
      identifier3 = [(MRDeviceInfo *)equalCopy identifier];
      identifier4 = [(MRDeviceInfo *)self identifier];
      v69 = [identifier3 isEqualToString:identifier4];

      if (!v69)
      {
        goto LABEL_217;
      }
    }

    localizedModelName = [(MRDeviceInfo *)equalCopy localizedModelName];
    localizedModelName2 = [(MRDeviceInfo *)self localizedModelName];
    v72 = localizedModelName2;
    if (localizedModelName == localizedModelName2)
    {
    }

    else
    {
      localizedModelName3 = [(MRDeviceInfo *)equalCopy localizedModelName];
      localizedModelName4 = [(MRDeviceInfo *)self localizedModelName];
      v75 = [localizedModelName3 isEqualToString:localizedModelName4];

      if (!v75)
      {
        goto LABEL_217;
      }
    }

    buildVersion = [(MRDeviceInfo *)equalCopy buildVersion];
    buildVersion2 = [(MRDeviceInfo *)self buildVersion];
    v78 = buildVersion2;
    if (buildVersion == buildVersion2)
    {
    }

    else
    {
      buildVersion3 = [(MRDeviceInfo *)equalCopy buildVersion];
      buildVersion4 = [(MRDeviceInfo *)self buildVersion];
      v81 = [buildVersion3 isEqualToString:buildVersion4];

      if (!v81)
      {
        goto LABEL_217;
      }
    }

    bundleIdentifier = [(MRDeviceInfo *)equalCopy bundleIdentifier];
    bundleIdentifier2 = [(MRDeviceInfo *)self bundleIdentifier];
    v84 = bundleIdentifier2;
    if (bundleIdentifier == bundleIdentifier2)
    {
    }

    else
    {
      bundleIdentifier3 = [(MRDeviceInfo *)equalCopy bundleIdentifier];
      bundleIdentifier4 = [(MRDeviceInfo *)self bundleIdentifier];
      v87 = [bundleIdentifier3 isEqualToString:bundleIdentifier4];

      if (!v87)
      {
        goto LABEL_217;
      }
    }

    bundleVersion = [(MRDeviceInfo *)equalCopy bundleVersion];
    bundleVersion2 = [(MRDeviceInfo *)self bundleVersion];
    v90 = bundleVersion2;
    if (bundleVersion == bundleVersion2)
    {
    }

    else
    {
      bundleVersion3 = [(MRDeviceInfo *)equalCopy bundleVersion];
      bundleVersion4 = [(MRDeviceInfo *)self bundleVersion];
      v93 = [bundleVersion3 isEqualToString:bundleVersion4];

      if (!v93)
      {
        goto LABEL_217;
      }
    }

    systemMediaApplication = [(MRDeviceInfo *)equalCopy systemMediaApplication];
    systemMediaApplication2 = [(MRDeviceInfo *)self systemMediaApplication];
    v96 = systemMediaApplication2;
    if (systemMediaApplication == systemMediaApplication2)
    {
    }

    else
    {
      systemMediaApplication3 = [(MRDeviceInfo *)equalCopy systemMediaApplication];
      systemMediaApplication4 = [(MRDeviceInfo *)self systemMediaApplication];
      v99 = [systemMediaApplication3 isEqualToString:systemMediaApplication4];

      if (!v99)
      {
        goto LABEL_217;
      }
    }

    systemPodcastApplication = [(MRDeviceInfo *)equalCopy systemPodcastApplication];
    systemPodcastApplication2 = [(MRDeviceInfo *)self systemPodcastApplication];
    v102 = systemPodcastApplication2;
    if (systemPodcastApplication == systemPodcastApplication2)
    {
    }

    else
    {
      systemPodcastApplication3 = [(MRDeviceInfo *)equalCopy systemPodcastApplication];
      systemPodcastApplication4 = [(MRDeviceInfo *)self systemPodcastApplication];
      v105 = [systemPodcastApplication3 isEqualToString:systemPodcastApplication4];

      if (!v105)
      {
        goto LABEL_217;
      }
    }

    systemBooksApplication = [(MRDeviceInfo *)equalCopy systemBooksApplication];
    systemBooksApplication2 = [(MRDeviceInfo *)self systemBooksApplication];
    v108 = systemBooksApplication2;
    if (systemBooksApplication == systemBooksApplication2)
    {
    }

    else
    {
      systemBooksApplication3 = [(MRDeviceInfo *)equalCopy systemBooksApplication];
      systemBooksApplication4 = [(MRDeviceInfo *)self systemBooksApplication];
      v111 = [systemBooksApplication3 isEqualToString:systemBooksApplication4];

      if (!v111)
      {
        goto LABEL_217;
      }
    }

    deviceUID = [(MRDeviceInfo *)equalCopy deviceUID];
    deviceUID2 = [(MRDeviceInfo *)self deviceUID];
    v114 = deviceUID2;
    if (deviceUID == deviceUID2)
    {
    }

    else
    {
      deviceUID3 = [(MRDeviceInfo *)equalCopy deviceUID];
      deviceUID4 = [(MRDeviceInfo *)self deviceUID];
      v117 = [deviceUID3 isEqualToString:deviceUID4];

      if (!v117)
      {
        goto LABEL_217;
      }
    }

    localReceiverPairingIdentity = [(MRDeviceInfo *)equalCopy localReceiverPairingIdentity];
    localReceiverPairingIdentity2 = [(MRDeviceInfo *)self localReceiverPairingIdentity];
    v120 = localReceiverPairingIdentity2;
    if (localReceiverPairingIdentity == localReceiverPairingIdentity2)
    {
    }

    else
    {
      localReceiverPairingIdentity3 = [(MRDeviceInfo *)equalCopy localReceiverPairingIdentity];
      localReceiverPairingIdentity4 = [(MRDeviceInfo *)self localReceiverPairingIdentity];
      v123 = [localReceiverPairingIdentity3 isEqualToString:localReceiverPairingIdentity4];

      if (!v123)
      {
        goto LABEL_217;
      }
    }

    managedConfigurationDeviceIdentifier = [(MRDeviceInfo *)equalCopy managedConfigurationDeviceIdentifier];
    managedConfigurationDeviceIdentifier2 = [(MRDeviceInfo *)self managedConfigurationDeviceIdentifier];
    v126 = managedConfigurationDeviceIdentifier2;
    if (managedConfigurationDeviceIdentifier == managedConfigurationDeviceIdentifier2)
    {
    }

    else
    {
      managedConfigurationDeviceIdentifier3 = [(MRDeviceInfo *)equalCopy managedConfigurationDeviceIdentifier];
      managedConfigurationDeviceIdentifier4 = [(MRDeviceInfo *)self managedConfigurationDeviceIdentifier];
      v129 = [managedConfigurationDeviceIdentifier3 isEqualToString:managedConfigurationDeviceIdentifier4];

      if (!v129)
      {
        goto LABEL_217;
      }
    }

    tightSyncUID = [(MRDeviceInfo *)equalCopy tightSyncUID];
    tightSyncUID2 = [(MRDeviceInfo *)self tightSyncUID];
    v132 = tightSyncUID2;
    if (tightSyncUID == tightSyncUID2)
    {
    }

    else
    {
      tightSyncUID3 = [(MRDeviceInfo *)equalCopy tightSyncUID];
      tightSyncUID4 = [(MRDeviceInfo *)self tightSyncUID];
      v135 = [tightSyncUID3 isEqualToString:tightSyncUID4];

      if (!v135)
      {
        goto LABEL_217;
      }
    }

    groupUID = [(MRDeviceInfo *)equalCopy groupUID];
    groupUID2 = [(MRDeviceInfo *)self groupUID];
    v138 = groupUID2;
    if (groupUID == groupUID2)
    {
    }

    else
    {
      groupUID3 = [(MRDeviceInfo *)equalCopy groupUID];
      groupUID4 = [(MRDeviceInfo *)self groupUID];
      v141 = [groupUID3 isEqualToString:groupUID4];

      if (!v141)
      {
        goto LABEL_217;
      }
    }

    airPlayGroupUID = [(MRDeviceInfo *)equalCopy airPlayGroupUID];
    airPlayGroupUID2 = [(MRDeviceInfo *)self airPlayGroupUID];
    v144 = airPlayGroupUID2;
    if (airPlayGroupUID == airPlayGroupUID2)
    {
    }

    else
    {
      airPlayGroupUID3 = [(MRDeviceInfo *)equalCopy airPlayGroupUID];
      airPlayGroupUID4 = [(MRDeviceInfo *)self airPlayGroupUID];
      v147 = [airPlayGroupUID3 isEqualToString:airPlayGroupUID4];

      if (!v147)
      {
        goto LABEL_217;
      }
    }

    groupName = [(MRDeviceInfo *)equalCopy groupName];
    groupName2 = [(MRDeviceInfo *)self groupName];
    v150 = groupName2;
    if (groupName == groupName2)
    {
    }

    else
    {
      groupName3 = [(MRDeviceInfo *)equalCopy groupName];
      groupName4 = [(MRDeviceInfo *)self groupName];
      v153 = [groupName3 isEqualToString:groupName4];

      if (!v153)
      {
        goto LABEL_217;
      }
    }

    senderDefaultGroupUID = [(MRDeviceInfo *)equalCopy senderDefaultGroupUID];
    senderDefaultGroupUID2 = [(MRDeviceInfo *)self senderDefaultGroupUID];
    v156 = senderDefaultGroupUID2;
    if (senderDefaultGroupUID == senderDefaultGroupUID2)
    {
    }

    else
    {
      senderDefaultGroupUID3 = [(MRDeviceInfo *)equalCopy senderDefaultGroupUID];
      senderDefaultGroupUID4 = [(MRDeviceInfo *)self senderDefaultGroupUID];
      v159 = [senderDefaultGroupUID3 isEqualToString:senderDefaultGroupUID4];

      if (!v159)
      {
        goto LABEL_217;
      }
    }

    bluetoothAddress = [(MRDeviceInfo *)equalCopy bluetoothAddress];
    bluetoothAddress2 = [(MRDeviceInfo *)self bluetoothAddress];
    v162 = bluetoothAddress2;
    if (bluetoothAddress == bluetoothAddress2)
    {
    }

    else
    {
      bluetoothAddress3 = [(MRDeviceInfo *)equalCopy bluetoothAddress];
      bluetoothAddress4 = [(MRDeviceInfo *)self bluetoothAddress];
      v165 = [bluetoothAddress3 isEqualToData:bluetoothAddress4];

      if (!v165)
      {
        goto LABEL_217;
      }
    }

    groupedDevices = [(MRDeviceInfo *)equalCopy groupedDevices];
    groupedDevices2 = [(MRDeviceInfo *)self groupedDevices];
    v168 = groupedDevices2;
    if (groupedDevices == groupedDevices2)
    {
    }

    else
    {
      groupedDevices3 = [(MRDeviceInfo *)equalCopy groupedDevices];
      groupedDevices4 = [(MRDeviceInfo *)self groupedDevices];
      v171 = [groupedDevices3 isEqualToArray:groupedDevices4];

      if (!v171)
      {
        goto LABEL_217;
      }
    }

    clusteredDevices = [(MRDeviceInfo *)equalCopy clusteredDevices];
    clusteredDevices2 = [(MRDeviceInfo *)self clusteredDevices];
    v174 = clusteredDevices2;
    if (clusteredDevices == clusteredDevices2)
    {
    }

    else
    {
      clusteredDevices3 = [(MRDeviceInfo *)equalCopy clusteredDevices];
      clusteredDevices4 = [(MRDeviceInfo *)self clusteredDevices];
      v177 = [clusteredDevices3 isEqualToArray:clusteredDevices4];

      if (!v177)
      {
        goto LABEL_217;
      }
    }

    allClusteredDevices = [(MRDeviceInfo *)equalCopy allClusteredDevices];
    allClusteredDevices2 = [(MRDeviceInfo *)self allClusteredDevices];
    v180 = allClusteredDevices2;
    if (allClusteredDevices == allClusteredDevices2)
    {
    }

    else
    {
      allClusteredDevices3 = [(MRDeviceInfo *)equalCopy allClusteredDevices];
      allClusteredDevices4 = [(MRDeviceInfo *)self allClusteredDevices];
      v183 = [allClusteredDevices3 isEqualToArray:allClusteredDevices4];

      if (!v183)
      {
        goto LABEL_217;
      }
    }

    airPlayReceivers = [(MRDeviceInfo *)equalCopy airPlayReceivers];
    airPlayReceivers2 = [(MRDeviceInfo *)self airPlayReceivers];
    v186 = airPlayReceivers2;
    if (airPlayReceivers == airPlayReceivers2)
    {
    }

    else
    {
      airPlayReceivers3 = [(MRDeviceInfo *)equalCopy airPlayReceivers];
      airPlayReceivers4 = [(MRDeviceInfo *)self airPlayReceivers];
      v189 = [airPlayReceivers3 isEqualToArray:airPlayReceivers4];

      if (!v189)
      {
        goto LABEL_217;
      }
    }

    linkAgent = [(MRDeviceInfo *)equalCopy linkAgent];
    linkAgent2 = [(MRDeviceInfo *)self linkAgent];
    v192 = linkAgent2;
    if (linkAgent == linkAgent2)
    {
    }

    else
    {
      linkAgent3 = [(MRDeviceInfo *)equalCopy linkAgent];
      linkAgent4 = [(MRDeviceInfo *)self linkAgent];
      v195 = [linkAgent3 isEqualToString:linkAgent4];

      if (!v195)
      {
        goto LABEL_217;
      }
    }

    clusterID = [(MRDeviceInfo *)equalCopy clusterID];
    clusterID2 = [(MRDeviceInfo *)self clusterID];
    v198 = clusterID2;
    if (clusterID == clusterID2)
    {
    }

    else
    {
      clusterID3 = [(MRDeviceInfo *)equalCopy clusterID];
      clusterID4 = [(MRDeviceInfo *)self clusterID];
      v201 = [clusterID3 isEqualToString:clusterID4];

      if (!v201)
      {
        goto LABEL_217;
      }
    }

    preferredClusterLeaderID = [(MRDeviceInfo *)equalCopy preferredClusterLeaderID];
    preferredClusterLeaderID2 = [(MRDeviceInfo *)self preferredClusterLeaderID];
    v204 = preferredClusterLeaderID2;
    if (preferredClusterLeaderID == preferredClusterLeaderID2)
    {
    }

    else
    {
      preferredClusterLeaderID3 = [(MRDeviceInfo *)equalCopy preferredClusterLeaderID];
      preferredClusterLeaderID4 = [(MRDeviceInfo *)self preferredClusterLeaderID];
      v207 = [preferredClusterLeaderID3 isEqualToString:preferredClusterLeaderID4];

      if (!v207)
      {
        goto LABEL_217;
      }
    }

    computerName = [(MRDeviceInfo *)equalCopy computerName];
    computerName2 = [(MRDeviceInfo *)self computerName];
    v210 = computerName2;
    if (computerName == computerName2)
    {
    }

    else
    {
      computerName3 = [(MRDeviceInfo *)equalCopy computerName];
      computerName4 = [(MRDeviceInfo *)self computerName];
      v213 = [computerName3 isEqualToString:computerName4];

      if (!v213)
      {
        goto LABEL_217;
      }
    }

    modelID = [(MRDeviceInfo *)equalCopy modelID];
    modelID2 = [(MRDeviceInfo *)self modelID];
    v216 = modelID;
    v217 = modelID2;
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

    routingContextID = [(MRDeviceInfo *)equalCopy routingContextID];
    routingContextID2 = [(MRDeviceInfo *)self routingContextID];
    v222 = routingContextID;
    v223 = routingContextID2;
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

    groupSessionToken = [(MRDeviceInfo *)equalCopy groupSessionToken];
    groupSessionToken2 = [(MRDeviceInfo *)self groupSessionToken];
    v228 = groupSessionToken;
    v229 = groupSessionToken2;
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

    leaderDeviceInfo = [(MRDeviceInfo *)equalCopy leaderDeviceInfo];
    leaderDeviceInfo2 = [(MRDeviceInfo *)self leaderDeviceInfo];
    v234 = leaderDeviceInfo;
    v235 = leaderDeviceInfo2;
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

    activeSystemEndpointUID = [(MRDeviceInfo *)equalCopy activeSystemEndpointUID];
    activeSystemEndpointUID2 = [(MRDeviceInfo *)self activeSystemEndpointUID];
    v240 = activeSystemEndpointUID;
    v241 = activeSystemEndpointUID2;
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

    hasIsEligibleForHostingGroupSessionExcludingAcknowledgements = [(MRDeviceInfo *)equalCopy hasIsEligibleForHostingGroupSessionExcludingAcknowledgements];
    if (hasIsEligibleForHostingGroupSessionExcludingAcknowledgements == [(MRDeviceInfo *)self hasIsEligibleForHostingGroupSessionExcludingAcknowledgements])
    {
      isEligibleForHostingGroupSessionExcludingAcknowledgements = [(MRDeviceInfo *)equalCopy isEligibleForHostingGroupSessionExcludingAcknowledgements];
      v63 = isEligibleForHostingGroupSessionExcludingAcknowledgements ^ [(MRDeviceInfo *)self isEligibleForHostingGroupSessionExcludingAcknowledgements]^ 1;
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
  wHAIdentifier = [(MRDeviceInfo *)self WHAIdentifier];
  v3 = [wHAIdentifier hash];

  return v3;
}

- (NSString)mr_effectiveRoutingContextID
{
  if ((([(MRDeviceInfo *)self clusterType]- 1) & 0xFFFFFFFD) != 0 || [(MRDeviceInfo *)self isClusterLeader])
  {
    routingContextID = [(MRDeviceInfo *)self routingContextID];
  }

  else
  {
    routingContextID = 0;
  }

  return routingContextID;
}

- (NSString)effectiveID
{
  clusterID = [(MRDeviceInfo *)self clusterID];
  v4 = clusterID;
  if (clusterID)
  {
    v5 = clusterID;
  }

  else
  {
    deviceUID = [(MRDeviceInfo *)self deviceUID];
    v7 = deviceUID;
    if (deviceUID)
    {
      v5 = deviceUID;
    }

    else
    {
      v8 = +[MRAVLocalEndpoint sharedLocalEndpoint];
      outputDevices = [v8 outputDevices];
      firstObject = [outputDevices firstObject];
      v5 = [firstObject uid];
    }
  }

  return v5;
}

- (NSString)effectiveName
{
  computerName = [(MRDeviceInfo *)self computerName];
  v4 = computerName;
  if (computerName)
  {
    name = computerName;
  }

  else
  {
    name = [(MRDeviceInfo *)self name];
  }

  v6 = name;

  v7 = objc_alloc(MEMORY[0x1E696AEC0]);
  if ([(MRDeviceInfo *)self isProxyGroupPlayer])
  {
    deviceUID = [(MRDeviceInfo *)self deviceUID];
    v9 = @"(Proxy)";
    if (!deviceUID)
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
  deviceUID = [(MRDeviceInfo *)self deviceUID];
  v4 = deviceUID;
  if (deviceUID)
  {
    identifier = deviceUID;
  }

  else
  {
    identifier = [(MRDeviceInfo *)self identifier];
  }

  v6 = identifier;

  return v6;
}

@end