@interface _MRDeviceInfoMessageProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsDeviceClass:(id)class;
- (int)StringAsPreferredEncoding:(id)encoding;
- (int)deviceClass;
- (int)preferredEncoding;
- (unint64_t)hash;
- (unsigned)lastKnownClusterType;
- (void)addAirplayReceivers:(id)receivers;
- (void)addAllClusteredDevices:(id)devices;
- (void)addClusteredDevices:(id)devices;
- (void)addGroupedDevices:(id)devices;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasAllowsPairing:(BOOL)pairing;
- (void)setHasClusterType:(BOOL)type;
- (void)setHasConfiguredClusterSize:(BOOL)size;
- (void)setHasConnected:(BOOL)connected;
- (void)setHasDeviceClass:(BOOL)class;
- (void)setHasGroupContainsDiscoverableGroupLeader:(BOOL)leader;
- (void)setHasIsAirplayActive:(BOOL)active;
- (void)setHasIsClusterAware:(BOOL)aware;
- (void)setHasIsClusterLeader:(BOOL)leader;
- (void)setHasIsEligibleForHostingGroupSessionExcludingAcknowledgements:(BOOL)acknowledgements;
- (void)setHasIsGroupLeader:(BOOL)leader;
- (void)setHasIsProxyGroupPlayer:(BOOL)player;
- (void)setHasLastKnownClusterType:(BOOL)type;
- (void)setHasLastSupportedMessageType:(BOOL)type;
- (void)setHasLogicalDeviceCount:(BOOL)count;
- (void)setHasParentGroupContainsDiscoverableGroupLeader:(BOOL)leader;
- (void)setHasParentGroupSupportsGroupCohesion:(BOOL)cohesion;
- (void)setHasPreferredEncoding:(BOOL)encoding;
- (void)setHasSharedQueueVersion:(BOOL)version;
- (void)setHasSupportsACL:(BOOL)l;
- (void)setHasSupportsExtendedMotion:(BOOL)motion;
- (void)setHasSupportsMultiplayer:(BOOL)multiplayer;
- (void)setHasSupportsOutputContextSync:(BOOL)sync;
- (void)setHasSupportsSharedQueue:(BOOL)queue;
- (void)setHasSupportsSystemPairing:(BOOL)pairing;
- (void)setHasTightlySyncedGroup:(BOOL)group;
- (void)writeTo:(id)to;
@end

@implementation _MRDeviceInfoMessageProtobuf

- (int)deviceClass
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_deviceClass;
  }

  else
  {
    return -1;
  }
}

- (int)preferredEncoding
{
  if ((*&self->_has & 0x80) != 0)
  {
    return self->_preferredEncoding;
  }

  else
  {
    return 0;
  }
}

- (unsigned)lastKnownClusterType
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_lastKnownClusterType;
  }

  else
  {
    return 2;
  }
}

- (void)setHasLastSupportedMessageType:(BOOL)type
{
  if (type)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasSupportsSystemPairing:(BOOL)pairing
{
  if (pairing)
  {
    v3 = 0x2000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFDFFFFFF | v3);
}

- (void)setHasAllowsPairing:(BOOL)pairing
{
  if (pairing)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)setHasConnected:(BOOL)connected
{
  if (connected)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasSupportsACL:(BOOL)l
{
  if (l)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFEFFFFF | v3);
}

- (void)setHasSupportsSharedQueue:(BOOL)queue
{
  if (queue)
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFEFFFFFF | v3);
}

- (void)setHasSupportsExtendedMotion:(BOOL)motion
{
  if (motion)
  {
    v3 = 0x200000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFDFFFFF | v3);
}

- (void)setHasSharedQueueVersion:(BOOL)version
{
  if (version)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasDeviceClass:(BOOL)class
{
  if (class)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (int)StringAsDeviceClass:(id)class
{
  classCopy = class;
  if ([classCopy isEqualToString:@"Invalid"])
  {
    v4 = -1;
  }

  else if ([classCopy isEqualToString:@"iPhone"])
  {
    v4 = 1;
  }

  else if ([classCopy isEqualToString:@"iPod"])
  {
    v4 = 2;
  }

  else if ([classCopy isEqualToString:@"iPad"])
  {
    v4 = 3;
  }

  else if ([classCopy isEqualToString:@"AppleTV"])
  {
    v4 = 4;
  }

  else if ([classCopy isEqualToString:@"iFPGA"])
  {
    v4 = 5;
  }

  else if ([classCopy isEqualToString:@"Watch"])
  {
    v4 = 6;
  }

  else if ([classCopy isEqualToString:@"Accessory"])
  {
    v4 = 7;
  }

  else if ([classCopy isEqualToString:@"Bridge"])
  {
    v4 = 8;
  }

  else if ([classCopy isEqualToString:@"Mac"])
  {
    v4 = 9;
  }

  else if ([classCopy isEqualToString:@"Android"])
  {
    v4 = 10;
  }

  else if ([classCopy isEqualToString:@"Web"])
  {
    v4 = 11;
  }

  else if ([classCopy isEqualToString:@"AppleDisplay"])
  {
    v4 = 12;
  }

  else if ([classCopy isEqualToString:@"RealityDevice"])
  {
    v4 = 13;
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (void)setHasLogicalDeviceCount:(BOOL)count
{
  if (count)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (void)setHasTightlySyncedGroup:(BOOL)group
{
  if (group)
  {
    v3 = 0x4000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFBFFFFFF | v3);
}

- (void)setHasIsProxyGroupPlayer:(BOOL)player
{
  if (player)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (void)addGroupedDevices:(id)devices
{
  devicesCopy = devices;
  groupedDevices = self->_groupedDevices;
  v8 = devicesCopy;
  if (!groupedDevices)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_groupedDevices;
    self->_groupedDevices = v6;

    devicesCopy = v8;
    groupedDevices = self->_groupedDevices;
  }

  [(NSMutableArray *)groupedDevices addObject:devicesCopy];
}

- (void)setHasIsGroupLeader:(BOOL)leader
{
  if (leader)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasIsAirplayActive:(BOOL)active
{
  if (active)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)addAirplayReceivers:(id)receivers
{
  receiversCopy = receivers;
  airplayReceivers = self->_airplayReceivers;
  v8 = receiversCopy;
  if (!airplayReceivers)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_airplayReceivers;
    self->_airplayReceivers = v6;

    receiversCopy = v8;
    airplayReceivers = self->_airplayReceivers;
  }

  [(NSMutableArray *)airplayReceivers addObject:receiversCopy];
}

- (void)setHasClusterType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (void)setHasIsClusterAware:(BOOL)aware
{
  if (aware)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasSupportsMultiplayer:(BOOL)multiplayer
{
  if (multiplayer)
  {
    v3 = 0x400000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFBFFFFF | v3);
}

- (void)addClusteredDevices:(id)devices
{
  devicesCopy = devices;
  clusteredDevices = self->_clusteredDevices;
  v8 = devicesCopy;
  if (!clusteredDevices)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_clusteredDevices;
    self->_clusteredDevices = v6;

    devicesCopy = v8;
    clusteredDevices = self->_clusteredDevices;
  }

  [(NSMutableArray *)clusteredDevices addObject:devicesCopy];
}

- (void)setHasParentGroupContainsDiscoverableGroupLeader:(BOOL)leader
{
  if (leader)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFF | v3);
}

- (void)setHasGroupContainsDiscoverableGroupLeader:(BOOL)leader
{
  if (leader)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasLastKnownClusterType:(BOOL)type
{
  if (type)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)addAllClusteredDevices:(id)devices
{
  devicesCopy = devices;
  allClusteredDevices = self->_allClusteredDevices;
  v8 = devicesCopy;
  if (!allClusteredDevices)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_allClusteredDevices;
    self->_allClusteredDevices = v6;

    devicesCopy = v8;
    allClusteredDevices = self->_allClusteredDevices;
  }

  [(NSMutableArray *)allClusteredDevices addObject:devicesCopy];
}

- (void)setHasSupportsOutputContextSync:(BOOL)sync
{
  if (sync)
  {
    v3 = 0x800000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFF7FFFFF | v3);
}

- (void)setHasConfiguredClusterSize:(BOOL)size
{
  if (size)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (void)setHasPreferredEncoding:(BOOL)encoding
{
  if (encoding)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (int)StringAsPreferredEncoding:(id)encoding
{
  encodingCopy = encoding;
  if ([encodingCopy isEqualToString:@"Default"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [encodingCopy isEqualToString:@"JSON"];
  }

  return v4;
}

- (void)setHasIsClusterLeader:(BOOL)leader
{
  if (leader)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)setHasIsEligibleForHostingGroupSessionExcludingAcknowledgements:(BOOL)acknowledgements
{
  if (acknowledgements)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasParentGroupSupportsGroupCohesion:(BOOL)cohesion
{
  if (cohesion)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFF | v3);
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRDeviceInfoMessageProtobuf;
  v4 = [(_MRDeviceInfoMessageProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRDeviceInfoMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v110 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  uniqueIdentifier = self->_uniqueIdentifier;
  if (uniqueIdentifier)
  {
    [dictionary setObject:uniqueIdentifier forKey:@"uniqueIdentifier"];
  }

  name = self->_name;
  if (name)
  {
    [v4 setObject:name forKey:@"name"];
  }

  localizedModelName = self->_localizedModelName;
  if (localizedModelName)
  {
    [v4 setObject:localizedModelName forKey:@"localizedModelName"];
  }

  systemBuildVersion = self->_systemBuildVersion;
  if (systemBuildVersion)
  {
    [v4 setObject:systemBuildVersion forKey:@"systemBuildVersion"];
  }

  applicationBundleIdentifier = self->_applicationBundleIdentifier;
  if (applicationBundleIdentifier)
  {
    [v4 setObject:applicationBundleIdentifier forKey:@"applicationBundleIdentifier"];
  }

  applicationBundleVersion = self->_applicationBundleVersion;
  if (applicationBundleVersion)
  {
    [v4 setObject:applicationBundleVersion forKey:@"applicationBundleVersion"];
  }

  has = self->_has;
  if (*&has)
  {
    v71 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_protocolVersion];
    [v4 setObject:v71 forKey:@"protocolVersion"];

    has = self->_has;
    if ((*&has & 0x20) == 0)
    {
LABEL_15:
      if ((*&has & 0x2000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_117;
    }
  }

  else if ((*&has & 0x20) == 0)
  {
    goto LABEL_15;
  }

  v72 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_lastSupportedMessageType];
  [v4 setObject:v72 forKey:@"lastSupportedMessageType"];

  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_16:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_118;
  }

LABEL_117:
  v73 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsSystemPairing];
  [v4 setObject:v73 forKey:@"supportsSystemPairing"];

  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_17:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_118:
  v74 = [MEMORY[0x1E696AD98] numberWithBool:self->_allowsPairing];
  [v4 setObject:v74 forKey:@"allowsPairing"];

  if ((*&self->_has & 0x400) != 0)
  {
LABEL_18:
    v12 = [MEMORY[0x1E696AD98] numberWithBool:self->_connected];
    [v4 setObject:v12 forKey:@"connected"];
  }

LABEL_19:
  systemMediaApplication = self->_systemMediaApplication;
  if (systemMediaApplication)
  {
    [v4 setObject:systemMediaApplication forKey:@"systemMediaApplication"];
  }

  v14 = self->_has;
  if ((*&v14 & 0x100000) != 0)
  {
    v75 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsACL];
    [v4 setObject:v75 forKey:@"supportsACL"];

    v14 = self->_has;
    if ((*&v14 & 0x1000000) == 0)
    {
LABEL_23:
      if ((*&v14 & 0x200000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }
  }

  else if ((*&v14 & 0x1000000) == 0)
  {
    goto LABEL_23;
  }

  v76 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsSharedQueue];
  [v4 setObject:v76 forKey:@"supportsSharedQueue"];

  if ((*&self->_has & 0x200000) != 0)
  {
LABEL_24:
    v15 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsExtendedMotion];
    [v4 setObject:v15 forKey:@"supportsExtendedMotion"];
  }

LABEL_25:
  bluetoothAddress = self->_bluetoothAddress;
  if (bluetoothAddress)
  {
    [v4 setObject:bluetoothAddress forKey:@"bluetoothAddress"];
  }

  if (*(&self->_has + 1))
  {
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_sharedQueueVersion];
    [v4 setObject:v17 forKey:@"sharedQueueVersion"];
  }

  deviceUID = self->_deviceUID;
  if (deviceUID)
  {
    [v4 setObject:deviceUID forKey:@"deviceUID"];
  }

  managedConfigDeviceID = self->_managedConfigDeviceID;
  if (managedConfigDeviceID)
  {
    [v4 setObject:managedConfigDeviceID forKey:@"managedConfigDeviceID"];
  }

  v20 = self->_has;
  if ((*&v20 & 8) != 0)
  {
    v77 = self->_deviceClass + 1;
    if (v77 < 0xF && ((0x7FFDu >> v77) & 1) != 0)
    {
      v78 = off_1E76A1E78[v77];
    }

    else
    {
      v78 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_deviceClass];
    }

    [v4 setObject:v78 forKey:@"deviceClass"];

    v20 = self->_has;
    if ((*&v20 & 0x40) == 0)
    {
LABEL_35:
      if ((*&v20 & 0x4000000) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_132;
    }
  }

  else if ((*&v20 & 0x40) == 0)
  {
    goto LABEL_35;
  }

  v81 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_logicalDeviceCount];
  [v4 setObject:v81 forKey:@"logicalDeviceCount"];

  v20 = self->_has;
  if ((*&v20 & 0x4000000) == 0)
  {
LABEL_36:
    if ((*&v20 & 0x20000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_132:
  v82 = [MEMORY[0x1E696AD98] numberWithBool:self->_tightlySyncedGroup];
  [v4 setObject:v82 forKey:@"tightlySyncedGroup"];

  if ((*&self->_has & 0x20000) != 0)
  {
LABEL_37:
    v21 = [MEMORY[0x1E696AD98] numberWithBool:self->_isProxyGroupPlayer];
    [v4 setObject:v21 forKey:@"isProxyGroupPlayer"];
  }

LABEL_38:
  tightSyncUID = self->_tightSyncUID;
  if (tightSyncUID)
  {
    [v4 setObject:tightSyncUID forKey:@"tightSyncUID"];
  }

  groupUID = self->_groupUID;
  if (groupUID)
  {
    [v4 setObject:groupUID forKey:@"groupUID"];
  }

  groupName = self->_groupName;
  if (groupName)
  {
    [v4 setObject:groupName forKey:@"groupName"];
  }

  if ([(NSMutableArray *)self->_groupedDevices count])
  {
    v25 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_groupedDevices, "count")}];
    v103 = 0u;
    v104 = 0u;
    v105 = 0u;
    v106 = 0u;
    v26 = self->_groupedDevices;
    v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v103 objects:v109 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v104;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v104 != v29)
          {
            objc_enumerationMutation(v26);
          }

          dictionaryRepresentation = [*(*(&v103 + 1) + 8 * i) dictionaryRepresentation];
          [v25 addObject:dictionaryRepresentation];
        }

        v28 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v103 objects:v109 count:16];
      }

      while (v28);
    }

    [v4 setObject:v25 forKey:@"groupedDevices"];
  }

  v32 = self->_has;
  if ((*&v32 & 0x10000) != 0)
  {
    v33 = [MEMORY[0x1E696AD98] numberWithBool:self->_isGroupLeader];
    [v4 setObject:v33 forKey:@"isGroupLeader"];

    v32 = self->_has;
  }

  if ((*&v32 & 0x1000) != 0)
  {
    v34 = [MEMORY[0x1E696AD98] numberWithBool:self->_isAirplayActive];
    [v4 setObject:v34 forKey:@"isAirplayActive"];
  }

  systemPodcastApplication = self->_systemPodcastApplication;
  if (systemPodcastApplication)
  {
    [v4 setObject:systemPodcastApplication forKey:@"systemPodcastApplication"];
  }

  senderDefaultGroupUID = self->_senderDefaultGroupUID;
  if (senderDefaultGroupUID)
  {
    [v4 setObject:senderDefaultGroupUID forKey:@"senderDefaultGroupUID"];
  }

  airplayReceivers = self->_airplayReceivers;
  if (airplayReceivers)
  {
    [v4 setObject:airplayReceivers forKey:@"airplayReceivers"];
  }

  linkAgent = self->_linkAgent;
  if (linkAgent)
  {
    [v4 setObject:linkAgent forKey:@"linkAgent"];
  }

  clusterID = self->_clusterID;
  if (clusterID)
  {
    [v4 setObject:clusterID forKey:@"clusterID"];
  }

  clusterLeaderID = self->_clusterLeaderID;
  if (clusterLeaderID)
  {
    [v4 setObject:clusterLeaderID forKey:@"clusterLeaderID"];
  }

  v41 = self->_has;
  if ((*&v41 & 2) != 0)
  {
    v42 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_clusterType];
    [v4 setObject:v42 forKey:@"clusterType"];

    v41 = self->_has;
  }

  if ((*&v41 & 0x2000) != 0)
  {
    v43 = [MEMORY[0x1E696AD98] numberWithBool:self->_isClusterAware];
    [v4 setObject:v43 forKey:@"isClusterAware"];
  }

  modelID = self->_modelID;
  if (modelID)
  {
    [v4 setObject:modelID forKey:@"modelID"];
  }

  if ((*(&self->_has + 2) & 0x40) != 0)
  {
    v45 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsMultiplayer];
    [v4 setObject:v45 forKey:@"supportsMultiplayer"];
  }

  routingContextID = self->_routingContextID;
  if (routingContextID)
  {
    [v4 setObject:routingContextID forKey:@"routingContextID"];
  }

  airPlayGroupID = self->_airPlayGroupID;
  if (airPlayGroupID)
  {
    [v4 setObject:airPlayGroupID forKey:@"airPlayGroupID"];
  }

  systemBooksApplication = self->_systemBooksApplication;
  if (systemBooksApplication)
  {
    [v4 setObject:systemBooksApplication forKey:@"systemBooksApplication"];
  }

  if ([(NSMutableArray *)self->_clusteredDevices count])
  {
    v49 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_clusteredDevices, "count")}];
    v99 = 0u;
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v50 = self->_clusteredDevices;
    v51 = [(NSMutableArray *)v50 countByEnumeratingWithState:&v99 objects:v108 count:16];
    if (v51)
    {
      v52 = v51;
      v53 = *v100;
      do
      {
        for (j = 0; j != v52; ++j)
        {
          if (*v100 != v53)
          {
            objc_enumerationMutation(v50);
          }

          dictionaryRepresentation2 = [*(*(&v99 + 1) + 8 * j) dictionaryRepresentation];
          [v49 addObject:dictionaryRepresentation2];
        }

        v52 = [(NSMutableArray *)v50 countByEnumeratingWithState:&v99 objects:v108 count:16];
      }

      while (v52);
    }

    [v4 setObject:v49 forKey:@"clusteredDevices"];
  }

  v56 = self->_has;
  if ((*&v56 & 0x40000) != 0)
  {
    v79 = [MEMORY[0x1E696AD98] numberWithBool:self->_parentGroupContainsDiscoverableGroupLeader];
    [v4 setObject:v79 forKey:@"parentGroupContainsDiscoverableGroupLeader"];

    v56 = self->_has;
    if ((*&v56 & 0x800) == 0)
    {
LABEL_94:
      if ((*&v56 & 0x10) == 0)
      {
        goto LABEL_96;
      }

      goto LABEL_95;
    }
  }

  else if ((*&v56 & 0x800) == 0)
  {
    goto LABEL_94;
  }

  v80 = [MEMORY[0x1E696AD98] numberWithBool:self->_groupContainsDiscoverableGroupLeader];
  [v4 setObject:v80 forKey:@"groupContainsDiscoverableGroupLeader"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_95:
    v57 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_lastKnownClusterType];
    [v4 setObject:v57 forKey:@"lastKnownClusterType"];
  }

LABEL_96:
  if ([(NSMutableArray *)self->_allClusteredDevices count])
  {
    v58 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_allClusteredDevices, "count")}];
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v59 = self->_allClusteredDevices;
    v60 = [(NSMutableArray *)v59 countByEnumeratingWithState:&v95 objects:v107 count:16];
    if (v60)
    {
      v61 = v60;
      v62 = *v96;
      do
      {
        for (k = 0; k != v61; ++k)
        {
          if (*v96 != v62)
          {
            objc_enumerationMutation(v59);
          }

          dictionaryRepresentation3 = [*(*(&v95 + 1) + 8 * k) dictionaryRepresentation];
          [v58 addObject:dictionaryRepresentation3];
        }

        v61 = [(NSMutableArray *)v59 countByEnumeratingWithState:&v95 objects:v107 count:16];
      }

      while (v61);
    }

    [v4 setObject:v58 forKey:@"allClusteredDevices"];
  }

  if ((*(&self->_has + 2) & 0x80) != 0)
  {
    v65 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsOutputContextSync];
    [v4 setObject:v65 forKey:@"supportsOutputContextSync"];
  }

  computerName = self->_computerName;
  if (computerName)
  {
    [v4 setObject:computerName forKey:@"computerName"];
  }

  v67 = self->_has;
  if ((*&v67 & 4) != 0)
  {
    v68 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_configuredClusterSize];
    [v4 setObject:v68 forKey:@"configuredClusterSize"];

    v67 = self->_has;
  }

  if ((*&v67 & 0x80) != 0)
  {
    preferredEncoding = self->_preferredEncoding;
    if (preferredEncoding)
    {
      if (preferredEncoding == 1)
      {
        v70 = @"JSON";
      }

      else
      {
        v70 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_preferredEncoding];
      }
    }

    else
    {
      v70 = @"Default";
    }

    [v4 setObject:v70 forKey:@"preferredEncoding"];
  }

  groupSessionToken = self->_groupSessionToken;
  if (groupSessionToken)
  {
    dictionaryRepresentation4 = [(_MRGroupSessionTokenProtobuf *)groupSessionToken dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation4 forKey:@"groupSessionToken"];
  }

  leaderDeviceInfo = self->_leaderDeviceInfo;
  if (leaderDeviceInfo)
  {
    dictionaryRepresentation5 = [(_MRDeviceInfoMessageProtobuf *)leaderDeviceInfo dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation5 forKey:@"leaderDeviceInfo"];
  }

  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    v87 = [MEMORY[0x1E696AD98] numberWithBool:self->_isClusterLeader];
    [v4 setObject:v87 forKey:@"isClusterLeader"];
  }

  activeSystemEndpointUID = self->_activeSystemEndpointUID;
  if (activeSystemEndpointUID)
  {
    [v4 setObject:activeSystemEndpointUID forKey:@"activeSystemEndpointUID"];
  }

  v89 = self->_has;
  if ((*&v89 & 0x8000) != 0)
  {
    v90 = [MEMORY[0x1E696AD98] numberWithBool:self->_isEligibleForHostingGroupSessionExcludingAcknowledgements];
    [v4 setObject:v90 forKey:@"isEligibleForHostingGroupSessionExcludingAcknowledgements"];

    v89 = self->_has;
  }

  if ((*&v89 & 0x80000) != 0)
  {
    v91 = [MEMORY[0x1E696AD98] numberWithBool:self->_parentGroupSupportsGroupCohesion];
    [v4 setObject:v91 forKey:@"parentGroupSupportsGroupCohesion"];
  }

  v92 = v4;

  v93 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)writeTo:(id)to
{
  v85 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_uniqueIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_name)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_localizedModelName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_systemBuildVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_applicationBundleIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_applicationBundleVersion)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (*&has)
  {
    protocolVersion = self->_protocolVersion;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((*&has & 0x20) == 0)
    {
LABEL_15:
      if ((*&has & 0x2000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_127;
    }
  }

  else if ((*&has & 0x20) == 0)
  {
    goto LABEL_15;
  }

  lastSupportedMessageType = self->_lastSupportedMessageType;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_16:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_128;
  }

LABEL_127:
  supportsSystemPairing = self->_supportsSystemPairing;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_17:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_128:
  allowsPairing = self->_allowsPairing;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_18:
    connected = self->_connected;
    PBDataWriterWriteBOOLField();
  }

LABEL_19:
  if (self->_systemMediaApplication)
  {
    PBDataWriterWriteStringField();
  }

  v7 = self->_has;
  if ((*&v7 & 0x100000) != 0)
  {
    supportsACL = self->_supportsACL;
    PBDataWriterWriteBOOLField();
    v7 = self->_has;
    if ((*&v7 & 0x1000000) == 0)
    {
LABEL_23:
      if ((*&v7 & 0x200000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }
  }

  else if ((*&v7 & 0x1000000) == 0)
  {
    goto LABEL_23;
  }

  supportsSharedQueue = self->_supportsSharedQueue;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x200000) != 0)
  {
LABEL_24:
    supportsExtendedMotion = self->_supportsExtendedMotion;
    PBDataWriterWriteBOOLField();
  }

LABEL_25:
  if (self->_bluetoothAddress)
  {
    PBDataWriterWriteDataField();
  }

  if (*(&self->_has + 1))
  {
    sharedQueueVersion = self->_sharedQueueVersion;
    PBDataWriterWriteUint32Field();
  }

  if (self->_deviceUID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_managedConfigDeviceID)
  {
    PBDataWriterWriteStringField();
  }

  v10 = self->_has;
  if ((*&v10 & 8) != 0)
  {
    deviceClass = self->_deviceClass;
    PBDataWriterWriteInt32Field();
    v10 = self->_has;
    if ((*&v10 & 0x40) == 0)
    {
LABEL_35:
      if ((*&v10 & 0x4000000) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_135;
    }
  }

  else if ((*&v10 & 0x40) == 0)
  {
    goto LABEL_35;
  }

  logicalDeviceCount = self->_logicalDeviceCount;
  PBDataWriterWriteUint32Field();
  v10 = self->_has;
  if ((*&v10 & 0x4000000) == 0)
  {
LABEL_36:
    if ((*&v10 & 0x20000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_135:
  tightlySyncedGroup = self->_tightlySyncedGroup;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x20000) != 0)
  {
LABEL_37:
    isProxyGroupPlayer = self->_isProxyGroupPlayer;
    PBDataWriterWriteBOOLField();
  }

LABEL_38:
  if (self->_tightSyncUID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_groupUID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_groupName)
  {
    PBDataWriterWriteStringField();
  }

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v12 = self->_groupedDevices;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v77 objects:v84 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v78;
    do
    {
      v16 = 0;
      do
      {
        if (*v78 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v77 + 1) + 8 * v16);
        PBDataWriterWriteSubmessage();
        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v77 objects:v84 count:16];
    }

    while (v14);
  }

  v18 = self->_has;
  if ((*&v18 & 0x10000) != 0)
  {
    isGroupLeader = self->_isGroupLeader;
    PBDataWriterWriteBOOLField();
    v18 = self->_has;
  }

  if ((*&v18 & 0x1000) != 0)
  {
    isAirplayActive = self->_isAirplayActive;
    PBDataWriterWriteBOOLField();
  }

  if (self->_systemPodcastApplication)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_senderDefaultGroupUID)
  {
    PBDataWriterWriteStringField();
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v21 = self->_airplayReceivers;
  v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v73 objects:v83 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v74;
    do
    {
      v25 = 0;
      do
      {
        if (*v74 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v73 + 1) + 8 * v25);
        PBDataWriterWriteStringField();
        ++v25;
      }

      while (v23 != v25);
      v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v73 objects:v83 count:16];
    }

    while (v23);
  }

  if (self->_linkAgent)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_clusterID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_clusterLeaderID)
  {
    PBDataWriterWriteStringField();
  }

  v27 = self->_has;
  if ((*&v27 & 2) != 0)
  {
    clusterType = self->_clusterType;
    PBDataWriterWriteUint32Field();
    v27 = self->_has;
  }

  if ((*&v27 & 0x2000) != 0)
  {
    isClusterAware = self->_isClusterAware;
    PBDataWriterWriteBOOLField();
  }

  if (self->_modelID)
  {
    PBDataWriterWriteStringField();
  }

  if ((*(&self->_has + 2) & 0x40) != 0)
  {
    supportsMultiplayer = self->_supportsMultiplayer;
    PBDataWriterWriteBOOLField();
  }

  if (self->_routingContextID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_airPlayGroupID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_systemBooksApplication)
  {
    PBDataWriterWriteStringField();
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v31 = self->_clusteredDevices;
  v32 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v69 objects:v82 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v70;
    do
    {
      v35 = 0;
      do
      {
        if (*v70 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = *(*(&v69 + 1) + 8 * v35);
        PBDataWriterWriteSubmessage();
        ++v35;
      }

      while (v33 != v35);
      v33 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v69 objects:v82 count:16];
    }

    while (v33);
  }

  v37 = self->_has;
  if ((*&v37 & 0x40000) != 0)
  {
    parentGroupContainsDiscoverableGroupLeader = self->_parentGroupContainsDiscoverableGroupLeader;
    PBDataWriterWriteBOOLField();
    v37 = self->_has;
    if ((*&v37 & 0x800) == 0)
    {
LABEL_95:
      if ((*&v37 & 0x10) == 0)
      {
        goto LABEL_97;
      }

      goto LABEL_96;
    }
  }

  else if ((*&v37 & 0x800) == 0)
  {
    goto LABEL_95;
  }

  groupContainsDiscoverableGroupLeader = self->_groupContainsDiscoverableGroupLeader;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_96:
    lastKnownClusterType = self->_lastKnownClusterType;
    PBDataWriterWriteUint32Field();
  }

LABEL_97:
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v39 = self->_allClusteredDevices;
  v40 = [(NSMutableArray *)v39 countByEnumeratingWithState:&v65 objects:v81 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v66;
    do
    {
      v43 = 0;
      do
      {
        if (*v66 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = *(*(&v65 + 1) + 8 * v43);
        PBDataWriterWriteSubmessage();
        ++v43;
      }

      while (v41 != v43);
      v41 = [(NSMutableArray *)v39 countByEnumeratingWithState:&v65 objects:v81 count:16];
    }

    while (v41);
  }

  if ((*(&self->_has + 2) & 0x80) != 0)
  {
    supportsOutputContextSync = self->_supportsOutputContextSync;
    PBDataWriterWriteBOOLField();
  }

  if (self->_computerName)
  {
    PBDataWriterWriteStringField();
  }

  v46 = self->_has;
  if ((*&v46 & 4) != 0)
  {
    configuredClusterSize = self->_configuredClusterSize;
    PBDataWriterWriteUint32Field();
    v46 = self->_has;
  }

  if ((*&v46 & 0x80) != 0)
  {
    preferredEncoding = self->_preferredEncoding;
    PBDataWriterWriteInt32Field();
  }

  if (self->_groupSessionToken)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_leaderDeviceInfo)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    isClusterLeader = self->_isClusterLeader;
    PBDataWriterWriteBOOLField();
  }

  if (self->_activeSystemEndpointUID)
  {
    PBDataWriterWriteStringField();
  }

  v50 = self->_has;
  if ((*&v50 & 0x8000) != 0)
  {
    isEligibleForHostingGroupSessionExcludingAcknowledgements = self->_isEligibleForHostingGroupSessionExcludingAcknowledgements;
    PBDataWriterWriteBOOLField();
    v50 = self->_has;
  }

  if ((*&v50 & 0x80000) != 0)
  {
    parentGroupSupportsGroupCohesion = self->_parentGroupSupportsGroupCohesion;
    PBDataWriterWriteBOOLField();
  }

  v53 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v31 = toCopy;
  if (self->_uniqueIdentifier)
  {
    [toCopy setUniqueIdentifier:?];
    toCopy = v31;
  }

  if (self->_name)
  {
    [v31 setName:?];
    toCopy = v31;
  }

  if (self->_localizedModelName)
  {
    [v31 setLocalizedModelName:?];
    toCopy = v31;
  }

  if (self->_systemBuildVersion)
  {
    [v31 setSystemBuildVersion:?];
    toCopy = v31;
  }

  if (self->_applicationBundleIdentifier)
  {
    [v31 setApplicationBundleIdentifier:?];
    toCopy = v31;
  }

  if (self->_applicationBundleVersion)
  {
    [v31 setApplicationBundleVersion:?];
    toCopy = v31;
  }

  has = self->_has;
  if (*&has)
  {
    *(toCopy + 1) = self->_protocolVersion;
    *(toCopy + 81) |= 1u;
    has = self->_has;
    if ((*&has & 0x20) == 0)
    {
LABEL_15:
      if ((*&has & 0x2000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_117;
    }
  }

  else if ((*&has & 0x20) == 0)
  {
    goto LABEL_15;
  }

  *(toCopy + 41) = self->_lastSupportedMessageType;
  *(toCopy + 81) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_16:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_118;
  }

LABEL_117:
  *(toCopy + 320) = self->_supportsSystemPairing;
  *(toCopy + 81) |= 0x2000000u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_17:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_118:
  *(toCopy + 304) = self->_allowsPairing;
  *(toCopy + 81) |= 0x200u;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_18:
    *(toCopy + 305) = self->_connected;
    *(toCopy + 81) |= 0x400u;
  }

LABEL_19:
  if (self->_systemMediaApplication)
  {
    [v31 setSystemMediaApplication:?];
    toCopy = v31;
  }

  v6 = self->_has;
  if ((*&v6 & 0x100000) != 0)
  {
    *(toCopy + 315) = self->_supportsACL;
    *(toCopy + 81) |= 0x100000u;
    v6 = self->_has;
    if ((*&v6 & 0x1000000) == 0)
    {
LABEL_23:
      if ((*&v6 & 0x200000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }
  }

  else if ((*&v6 & 0x1000000) == 0)
  {
    goto LABEL_23;
  }

  *(toCopy + 319) = self->_supportsSharedQueue;
  *(toCopy + 81) |= 0x1000000u;
  if ((*&self->_has & 0x200000) != 0)
  {
LABEL_24:
    *(toCopy + 316) = self->_supportsExtendedMotion;
    *(toCopy + 81) |= 0x200000u;
  }

LABEL_25:
  if (self->_bluetoothAddress)
  {
    [v31 setBluetoothAddress:?];
    toCopy = v31;
  }

  if (*(&self->_has + 1))
  {
    *(toCopy + 62) = self->_sharedQueueVersion;
    *(toCopy + 81) |= 0x100u;
  }

  if (self->_deviceUID)
  {
    [v31 setDeviceUID:?];
    toCopy = v31;
  }

  if (self->_managedConfigDeviceID)
  {
    [v31 setManagedConfigDeviceID:?];
    toCopy = v31;
  }

  v7 = self->_has;
  if ((*&v7 & 8) != 0)
  {
    *(toCopy + 29) = self->_deviceClass;
    *(toCopy + 81) |= 8u;
    v7 = self->_has;
    if ((*&v7 & 0x40) == 0)
    {
LABEL_35:
      if ((*&v7 & 0x4000000) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_125;
    }
  }

  else if ((*&v7 & 0x40) == 0)
  {
    goto LABEL_35;
  }

  *(toCopy + 48) = self->_logicalDeviceCount;
  *(toCopy + 81) |= 0x40u;
  v7 = self->_has;
  if ((*&v7 & 0x4000000) == 0)
  {
LABEL_36:
    if ((*&v7 & 0x20000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_125:
  *(toCopy + 321) = self->_tightlySyncedGroup;
  *(toCopy + 81) |= 0x4000000u;
  if ((*&self->_has & 0x20000) != 0)
  {
LABEL_37:
    *(toCopy + 312) = self->_isProxyGroupPlayer;
    *(toCopy + 81) |= 0x20000u;
  }

LABEL_38:
  if (self->_tightSyncUID)
  {
    [v31 setTightSyncUID:?];
  }

  if (self->_groupUID)
  {
    [v31 setGroupUID:?];
  }

  if (self->_groupName)
  {
    [v31 setGroupName:?];
  }

  if ([(_MRDeviceInfoMessageProtobuf *)self groupedDevicesCount])
  {
    [v31 clearGroupedDevices];
    groupedDevicesCount = [(_MRDeviceInfoMessageProtobuf *)self groupedDevicesCount];
    if (groupedDevicesCount)
    {
      v9 = groupedDevicesCount;
      for (i = 0; i != v9; ++i)
      {
        v11 = [(_MRDeviceInfoMessageProtobuf *)self groupedDevicesAtIndex:i];
        [v31 addGroupedDevices:v11];
      }
    }
  }

  v12 = self->_has;
  if ((*&v12 & 0x10000) != 0)
  {
    *(v31 + 311) = self->_isGroupLeader;
    *(v31 + 81) |= 0x10000u;
    v12 = self->_has;
  }

  if ((*&v12 & 0x1000) != 0)
  {
    *(v31 + 307) = self->_isAirplayActive;
    *(v31 + 81) |= 0x1000u;
  }

  if (self->_systemPodcastApplication)
  {
    [v31 setSystemPodcastApplication:?];
  }

  if (self->_senderDefaultGroupUID)
  {
    [v31 setSenderDefaultGroupUID:?];
  }

  if ([(_MRDeviceInfoMessageProtobuf *)self airplayReceiversCount])
  {
    [v31 clearAirplayReceivers];
    airplayReceiversCount = [(_MRDeviceInfoMessageProtobuf *)self airplayReceiversCount];
    if (airplayReceiversCount)
    {
      v14 = airplayReceiversCount;
      for (j = 0; j != v14; ++j)
      {
        v16 = [(_MRDeviceInfoMessageProtobuf *)self airplayReceiversAtIndex:j];
        [v31 addAirplayReceivers:v16];
      }
    }
  }

  if (self->_linkAgent)
  {
    [v31 setLinkAgent:?];
  }

  v17 = v31;
  if (self->_clusterID)
  {
    [v31 setClusterID:?];
    v17 = v31;
  }

  if (self->_clusterLeaderID)
  {
    [v31 setClusterLeaderID:?];
    v17 = v31;
  }

  v18 = self->_has;
  if ((*&v18 & 2) != 0)
  {
    v17[22] = self->_clusterType;
    v17[81] |= 2u;
    v18 = self->_has;
  }

  if ((*&v18 & 0x2000) != 0)
  {
    *(v17 + 308) = self->_isClusterAware;
    v17[81] |= 0x2000u;
  }

  if (self->_modelID)
  {
    [v31 setModelID:?];
    v17 = v31;
  }

  if ((*(&self->_has + 2) & 0x40) != 0)
  {
    *(v17 + 317) = self->_supportsMultiplayer;
    v17[81] |= 0x400000u;
  }

  if (self->_routingContextID)
  {
    [v31 setRoutingContextID:?];
  }

  if (self->_airPlayGroupID)
  {
    [v31 setAirPlayGroupID:?];
  }

  if (self->_systemBooksApplication)
  {
    [v31 setSystemBooksApplication:?];
  }

  if ([(_MRDeviceInfoMessageProtobuf *)self clusteredDevicesCount])
  {
    [v31 clearClusteredDevices];
    clusteredDevicesCount = [(_MRDeviceInfoMessageProtobuf *)self clusteredDevicesCount];
    if (clusteredDevicesCount)
    {
      v20 = clusteredDevicesCount;
      for (k = 0; k != v20; ++k)
      {
        v22 = [(_MRDeviceInfoMessageProtobuf *)self clusteredDevicesAtIndex:k];
        [v31 addClusteredDevices:v22];
      }
    }
  }

  v23 = self->_has;
  if ((*&v23 & 0x40000) == 0)
  {
    if ((*&v23 & 0x800) == 0)
    {
      goto LABEL_86;
    }

LABEL_128:
    *(v31 + 306) = self->_groupContainsDiscoverableGroupLeader;
    *(v31 + 81) |= 0x800u;
    if ((*&self->_has & 0x10) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_87;
  }

  *(v31 + 313) = self->_parentGroupContainsDiscoverableGroupLeader;
  *(v31 + 81) |= 0x40000u;
  v23 = self->_has;
  if ((*&v23 & 0x800) != 0)
  {
    goto LABEL_128;
  }

LABEL_86:
  if ((*&v23 & 0x10) != 0)
  {
LABEL_87:
    *(v31 + 40) = self->_lastKnownClusterType;
    *(v31 + 81) |= 0x10u;
  }

LABEL_88:
  if ([(_MRDeviceInfoMessageProtobuf *)self allClusteredDevicesCount])
  {
    [v31 clearAllClusteredDevices];
    allClusteredDevicesCount = [(_MRDeviceInfoMessageProtobuf *)self allClusteredDevicesCount];
    if (allClusteredDevicesCount)
    {
      v25 = allClusteredDevicesCount;
      for (m = 0; m != v25; ++m)
      {
        v27 = [(_MRDeviceInfoMessageProtobuf *)self allClusteredDevicesAtIndex:m];
        [v31 addAllClusteredDevices:v27];
      }
    }
  }

  v28 = v31;
  if ((*(&self->_has + 2) & 0x80) != 0)
  {
    *(v31 + 318) = self->_supportsOutputContextSync;
    *(v31 + 81) |= 0x800000u;
  }

  if (self->_computerName)
  {
    [v31 setComputerName:?];
    v28 = v31;
  }

  v29 = self->_has;
  if ((*&v29 & 4) != 0)
  {
    v28[28] = self->_configuredClusterSize;
    v28[81] |= 4u;
    v29 = self->_has;
  }

  if ((*&v29 & 0x80) != 0)
  {
    v28[56] = self->_preferredEncoding;
    v28[81] |= 0x80u;
  }

  if (self->_groupSessionToken)
  {
    [v31 setGroupSessionToken:?];
    v28 = v31;
  }

  if (self->_leaderDeviceInfo)
  {
    [v31 setLeaderDeviceInfo:?];
    v28 = v31;
  }

  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    *(v28 + 309) = self->_isClusterLeader;
    v28[81] |= 0x4000u;
  }

  if (self->_activeSystemEndpointUID)
  {
    [v31 setActiveSystemEndpointUID:?];
    v28 = v31;
  }

  v30 = self->_has;
  if ((*&v30 & 0x8000) != 0)
  {
    *(v28 + 310) = self->_isEligibleForHostingGroupSessionExcludingAcknowledgements;
    v28[81] |= 0x8000u;
    v30 = self->_has;
  }

  if ((*&v30 & 0x80000) != 0)
  {
    *(v28 + 314) = self->_parentGroupSupportsGroupCohesion;
    v28[81] |= 0x80000u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v113 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_uniqueIdentifier copyWithZone:zone];
  v7 = *(v5 + 296);
  *(v5 + 296) = v6;

  v8 = [(NSString *)self->_name copyWithZone:zone];
  v9 = *(v5 + 216);
  *(v5 + 216) = v8;

  v10 = [(NSString *)self->_localizedModelName copyWithZone:zone];
  v11 = *(v5 + 184);
  *(v5 + 184) = v10;

  v12 = [(NSString *)self->_systemBuildVersion copyWithZone:zone];
  v13 = *(v5 + 264);
  *(v5 + 264) = v12;

  v14 = [(NSString *)self->_applicationBundleIdentifier copyWithZone:zone];
  v15 = *(v5 + 48);
  *(v5 + 48) = v14;

  v16 = [(NSString *)self->_applicationBundleVersion copyWithZone:zone];
  v17 = *(v5 + 56);
  *(v5 + 56) = v16;

  has = self->_has;
  if (*&has)
  {
    *(v5 + 8) = self->_protocolVersion;
    *(v5 + 324) |= 1u;
    has = self->_has;
    if ((*&has & 0x20) == 0)
    {
LABEL_3:
      if ((*&has & 0x2000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_75;
    }
  }

  else if ((*&has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 164) = self->_lastSupportedMessageType;
  *(v5 + 324) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_4:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_76;
  }

LABEL_75:
  *(v5 + 320) = self->_supportsSystemPairing;
  *(v5 + 324) |= 0x2000000u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_5:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_76:
  *(v5 + 304) = self->_allowsPairing;
  *(v5 + 324) |= 0x200u;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_6:
    *(v5 + 305) = self->_connected;
    *(v5 + 324) |= 0x400u;
  }

LABEL_7:
  v19 = [(NSString *)self->_systemMediaApplication copyWithZone:zone];
  v20 = *(v5 + 272);
  *(v5 + 272) = v19;

  v21 = self->_has;
  if ((*&v21 & 0x100000) != 0)
  {
    *(v5 + 315) = self->_supportsACL;
    *(v5 + 324) |= 0x100000u;
    v21 = self->_has;
    if ((*&v21 & 0x1000000) == 0)
    {
LABEL_9:
      if ((*&v21 & 0x200000) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*&v21 & 0x1000000) == 0)
  {
    goto LABEL_9;
  }

  *(v5 + 319) = self->_supportsSharedQueue;
  *(v5 + 324) |= 0x1000000u;
  if ((*&self->_has & 0x200000) != 0)
  {
LABEL_10:
    *(v5 + 316) = self->_supportsExtendedMotion;
    *(v5 + 324) |= 0x200000u;
  }

LABEL_11:
  v22 = [(NSData *)self->_bluetoothAddress copyWithZone:zone];
  v23 = *(v5 + 64);
  *(v5 + 64) = v22;

  if (*(&self->_has + 1))
  {
    *(v5 + 248) = self->_sharedQueueVersion;
    *(v5 + 324) |= 0x100u;
  }

  v24 = [(NSString *)self->_deviceUID copyWithZone:zone];
  v25 = *(v5 + 120);
  *(v5 + 120) = v24;

  v26 = [(NSString *)self->_managedConfigDeviceID copyWithZone:zone];
  v27 = *(v5 + 200);
  *(v5 + 200) = v26;

  v28 = self->_has;
  if ((*&v28 & 8) != 0)
  {
    *(v5 + 116) = self->_deviceClass;
    *(v5 + 324) |= 8u;
    v28 = self->_has;
    if ((*&v28 & 0x40) == 0)
    {
LABEL_15:
      if ((*&v28 & 0x4000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_83;
    }
  }

  else if ((*&v28 & 0x40) == 0)
  {
    goto LABEL_15;
  }

  *(v5 + 192) = self->_logicalDeviceCount;
  *(v5 + 324) |= 0x40u;
  v28 = self->_has;
  if ((*&v28 & 0x4000000) == 0)
  {
LABEL_16:
    if ((*&v28 & 0x20000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_83:
  *(v5 + 321) = self->_tightlySyncedGroup;
  *(v5 + 324) |= 0x4000000u;
  if ((*&self->_has & 0x20000) != 0)
  {
LABEL_17:
    *(v5 + 312) = self->_isProxyGroupPlayer;
    *(v5 + 324) |= 0x20000u;
  }

LABEL_18:
  v29 = [(NSString *)self->_tightSyncUID copyWithZone:zone];
  v30 = *(v5 + 288);
  *(v5 + 288) = v29;

  v31 = [(NSString *)self->_groupUID copyWithZone:zone];
  v32 = *(v5 + 144);
  *(v5 + 144) = v31;

  v33 = [(NSString *)self->_groupName copyWithZone:zone];
  v34 = *(v5 + 128);
  *(v5 + 128) = v33;

  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v35 = self->_groupedDevices;
  v36 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v105 objects:v112 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v106;
    do
    {
      v39 = 0;
      do
      {
        if (*v106 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = [*(*(&v105 + 1) + 8 * v39) copyWithZone:zone];
        [v5 addGroupedDevices:v40];

        ++v39;
      }

      while (v37 != v39);
      v37 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v105 objects:v112 count:16];
    }

    while (v37);
  }

  v41 = self->_has;
  if ((*&v41 & 0x10000) != 0)
  {
    *(v5 + 311) = self->_isGroupLeader;
    *(v5 + 324) |= 0x10000u;
    v41 = self->_has;
  }

  if ((*&v41 & 0x1000) != 0)
  {
    *(v5 + 307) = self->_isAirplayActive;
    *(v5 + 324) |= 0x1000u;
  }

  v42 = [(NSString *)self->_systemPodcastApplication copyWithZone:zone];
  v43 = *(v5 + 280);
  *(v5 + 280) = v42;

  v44 = [(NSString *)self->_senderDefaultGroupUID copyWithZone:zone];
  v45 = *(v5 + 240);
  *(v5 + 240) = v44;

  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v46 = self->_airplayReceivers;
  v47 = [(NSMutableArray *)v46 countByEnumeratingWithState:&v101 objects:v111 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = *v102;
    do
    {
      v50 = 0;
      do
      {
        if (*v102 != v49)
        {
          objc_enumerationMutation(v46);
        }

        v51 = [*(*(&v101 + 1) + 8 * v50) copyWithZone:zone];
        [v5 addAirplayReceivers:v51];

        ++v50;
      }

      while (v48 != v50);
      v48 = [(NSMutableArray *)v46 countByEnumeratingWithState:&v101 objects:v111 count:16];
    }

    while (v48);
  }

  v52 = [(NSString *)self->_linkAgent copyWithZone:zone];
  v53 = *(v5 + 176);
  *(v5 + 176) = v52;

  v54 = [(NSString *)self->_clusterID copyWithZone:zone];
  v55 = *(v5 + 72);
  *(v5 + 72) = v54;

  v56 = [(NSString *)self->_clusterLeaderID copyWithZone:zone];
  v57 = *(v5 + 80);
  *(v5 + 80) = v56;

  v58 = self->_has;
  if ((*&v58 & 2) != 0)
  {
    *(v5 + 88) = self->_clusterType;
    *(v5 + 324) |= 2u;
    v58 = self->_has;
  }

  if ((*&v58 & 0x2000) != 0)
  {
    *(v5 + 308) = self->_isClusterAware;
    *(v5 + 324) |= 0x2000u;
  }

  v59 = [(NSString *)self->_modelID copyWithZone:zone];
  v60 = *(v5 + 208);
  *(v5 + 208) = v59;

  if ((*(&self->_has + 2) & 0x40) != 0)
  {
    *(v5 + 317) = self->_supportsMultiplayer;
    *(v5 + 324) |= 0x400000u;
  }

  v61 = [(NSString *)self->_routingContextID copyWithZone:zone];
  v62 = *(v5 + 232);
  *(v5 + 232) = v61;

  v63 = [(NSString *)self->_airPlayGroupID copyWithZone:zone];
  v64 = *(v5 + 24);
  *(v5 + 24) = v63;

  v65 = [(NSString *)self->_systemBooksApplication copyWithZone:zone];
  v66 = *(v5 + 256);
  *(v5 + 256) = v65;

  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v67 = self->_clusteredDevices;
  v68 = [(NSMutableArray *)v67 countByEnumeratingWithState:&v97 objects:v110 count:16];
  if (v68)
  {
    v69 = v68;
    v70 = *v98;
    do
    {
      v71 = 0;
      do
      {
        if (*v98 != v70)
        {
          objc_enumerationMutation(v67);
        }

        v72 = [*(*(&v97 + 1) + 8 * v71) copyWithZone:zone];
        [v5 addClusteredDevices:v72];

        ++v71;
      }

      while (v69 != v71);
      v69 = [(NSMutableArray *)v67 countByEnumeratingWithState:&v97 objects:v110 count:16];
    }

    while (v69);
  }

  v73 = self->_has;
  if ((*&v73 & 0x40000) != 0)
  {
    *(v5 + 313) = self->_parentGroupContainsDiscoverableGroupLeader;
    *(v5 + 324) |= 0x40000u;
    v73 = self->_has;
    if ((*&v73 & 0x800) == 0)
    {
LABEL_51:
      if ((*&v73 & 0x10) == 0)
      {
        goto LABEL_53;
      }

      goto LABEL_52;
    }
  }

  else if ((*&v73 & 0x800) == 0)
  {
    goto LABEL_51;
  }

  *(v5 + 306) = self->_groupContainsDiscoverableGroupLeader;
  *(v5 + 324) |= 0x800u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_52:
    *(v5 + 160) = self->_lastKnownClusterType;
    *(v5 + 324) |= 0x10u;
  }

LABEL_53:
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v74 = self->_allClusteredDevices;
  v75 = [(NSMutableArray *)v74 countByEnumeratingWithState:&v93 objects:v109 count:16];
  if (v75)
  {
    v76 = v75;
    v77 = *v94;
    do
    {
      v78 = 0;
      do
      {
        if (*v94 != v77)
        {
          objc_enumerationMutation(v74);
        }

        v79 = [*(*(&v93 + 1) + 8 * v78) copyWithZone:{zone, v93}];
        [v5 addAllClusteredDevices:v79];

        ++v78;
      }

      while (v76 != v78);
      v76 = [(NSMutableArray *)v74 countByEnumeratingWithState:&v93 objects:v109 count:16];
    }

    while (v76);
  }

  if ((*(&self->_has + 2) & 0x80) != 0)
  {
    *(v5 + 318) = self->_supportsOutputContextSync;
    *(v5 + 324) |= 0x800000u;
  }

  v80 = [(NSString *)self->_computerName copyWithZone:zone, v93];
  v81 = *(v5 + 104);
  *(v5 + 104) = v80;

  v82 = self->_has;
  if ((*&v82 & 4) != 0)
  {
    *(v5 + 112) = self->_configuredClusterSize;
    *(v5 + 324) |= 4u;
    v82 = self->_has;
  }

  if ((*&v82 & 0x80) != 0)
  {
    *(v5 + 224) = self->_preferredEncoding;
    *(v5 + 324) |= 0x80u;
  }

  v83 = [(_MRGroupSessionTokenProtobuf *)self->_groupSessionToken copyWithZone:zone];
  v84 = *(v5 + 136);
  *(v5 + 136) = v83;

  v85 = [(_MRDeviceInfoMessageProtobuf *)self->_leaderDeviceInfo copyWithZone:zone];
  v86 = *(v5 + 168);
  *(v5 + 168) = v85;

  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    *(v5 + 309) = self->_isClusterLeader;
    *(v5 + 324) |= 0x4000u;
  }

  v87 = [(NSString *)self->_activeSystemEndpointUID copyWithZone:zone];
  v88 = *(v5 + 16);
  *(v5 + 16) = v87;

  v89 = self->_has;
  if ((*&v89 & 0x8000) != 0)
  {
    *(v5 + 310) = self->_isEligibleForHostingGroupSessionExcludingAcknowledgements;
    *(v5 + 324) |= 0x8000u;
    v89 = self->_has;
  }

  if ((*&v89 & 0x80000) != 0)
  {
    *(v5 + 314) = self->_parentGroupSupportsGroupCohesion;
    *(v5 + 324) |= 0x80000u;
  }

  v90 = v5;

  v91 = *MEMORY[0x1E69E9840];
  return v90;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_89;
  }

  uniqueIdentifier = self->_uniqueIdentifier;
  if (uniqueIdentifier | *(equalCopy + 37))
  {
    if (![(NSString *)uniqueIdentifier isEqual:?])
    {
      goto LABEL_89;
    }
  }

  name = self->_name;
  if (name | *(equalCopy + 27))
  {
    if (![(NSString *)name isEqual:?])
    {
      goto LABEL_89;
    }
  }

  localizedModelName = self->_localizedModelName;
  if (localizedModelName | *(equalCopy + 23))
  {
    if (![(NSString *)localizedModelName isEqual:?])
    {
      goto LABEL_89;
    }
  }

  systemBuildVersion = self->_systemBuildVersion;
  if (systemBuildVersion | *(equalCopy + 33))
  {
    if (![(NSString *)systemBuildVersion isEqual:?])
    {
      goto LABEL_89;
    }
  }

  applicationBundleIdentifier = self->_applicationBundleIdentifier;
  if (applicationBundleIdentifier | *(equalCopy + 6))
  {
    if (![(NSString *)applicationBundleIdentifier isEqual:?])
    {
      goto LABEL_89;
    }
  }

  applicationBundleVersion = self->_applicationBundleVersion;
  if (applicationBundleVersion | *(equalCopy + 7))
  {
    if (![(NSString *)applicationBundleVersion isEqual:?])
    {
      goto LABEL_89;
    }
  }

  has = self->_has;
  v12 = *(equalCopy + 81);
  if (*&has)
  {
    if ((v12 & 1) == 0 || self->_protocolVersion != *(equalCopy + 1))
    {
      goto LABEL_89;
    }
  }

  else if (v12)
  {
    goto LABEL_89;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v12 & 0x20) == 0 || self->_lastSupportedMessageType != *(equalCopy + 41))
    {
      goto LABEL_89;
    }
  }

  else if ((v12 & 0x20) != 0)
  {
    goto LABEL_89;
  }

  if ((*&has & 0x2000000) != 0)
  {
    if ((v12 & 0x2000000) == 0)
    {
      goto LABEL_89;
    }

    v17 = *(equalCopy + 320);
    if (self->_supportsSystemPairing)
    {
      if ((*(equalCopy + 320) & 1) == 0)
      {
        goto LABEL_89;
      }
    }

    else if (*(equalCopy + 320))
    {
      goto LABEL_89;
    }
  }

  else if ((v12 & 0x2000000) != 0)
  {
    goto LABEL_89;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v12 & 0x200) == 0)
    {
      goto LABEL_89;
    }

    v18 = *(equalCopy + 304);
    if (self->_allowsPairing)
    {
      if ((*(equalCopy + 304) & 1) == 0)
      {
        goto LABEL_89;
      }
    }

    else if (*(equalCopy + 304))
    {
      goto LABEL_89;
    }
  }

  else if ((v12 & 0x200) != 0)
  {
    goto LABEL_89;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v12 & 0x400) == 0)
    {
      goto LABEL_89;
    }

    v19 = *(equalCopy + 305);
    if (self->_connected)
    {
      if ((*(equalCopy + 305) & 1) == 0)
      {
        goto LABEL_89;
      }
    }

    else if (*(equalCopy + 305))
    {
      goto LABEL_89;
    }
  }

  else if ((v12 & 0x400) != 0)
  {
    goto LABEL_89;
  }

  systemMediaApplication = self->_systemMediaApplication;
  if (systemMediaApplication | *(equalCopy + 34))
  {
    if (![(NSString *)systemMediaApplication isEqual:?])
    {
      goto LABEL_89;
    }

    has = self->_has;
  }

  v14 = *(equalCopy + 81);
  if ((*&has & 0x100000) != 0)
  {
    if ((v14 & 0x100000) == 0)
    {
      goto LABEL_89;
    }

    v20 = *(equalCopy + 315);
    if (self->_supportsACL)
    {
      if ((*(equalCopy + 315) & 1) == 0)
      {
        goto LABEL_89;
      }
    }

    else if (*(equalCopy + 315))
    {
      goto LABEL_89;
    }
  }

  else if ((v14 & 0x100000) != 0)
  {
    goto LABEL_89;
  }

  if ((*&has & 0x1000000) != 0)
  {
    if ((v14 & 0x1000000) == 0)
    {
      goto LABEL_89;
    }

    v21 = *(equalCopy + 319);
    if (self->_supportsSharedQueue)
    {
      if ((*(equalCopy + 319) & 1) == 0)
      {
        goto LABEL_89;
      }
    }

    else if (*(equalCopy + 319))
    {
      goto LABEL_89;
    }
  }

  else if ((v14 & 0x1000000) != 0)
  {
    goto LABEL_89;
  }

  if ((*&has & 0x200000) != 0)
  {
    if ((v14 & 0x200000) == 0)
    {
      goto LABEL_89;
    }

    v22 = *(equalCopy + 316);
    if (self->_supportsExtendedMotion)
    {
      if ((*(equalCopy + 316) & 1) == 0)
      {
        goto LABEL_89;
      }
    }

    else if (*(equalCopy + 316))
    {
      goto LABEL_89;
    }
  }

  else if ((v14 & 0x200000) != 0)
  {
    goto LABEL_89;
  }

  bluetoothAddress = self->_bluetoothAddress;
  if (bluetoothAddress | *(equalCopy + 8))
  {
    if (![(NSData *)bluetoothAddress isEqual:?])
    {
      goto LABEL_89;
    }

    has = self->_has;
  }

  v16 = *(equalCopy + 81);
  if ((*&has & 0x100) != 0)
  {
    if ((v16 & 0x100) == 0 || self->_sharedQueueVersion != *(equalCopy + 62))
    {
      goto LABEL_89;
    }
  }

  else if ((v16 & 0x100) != 0)
  {
    goto LABEL_89;
  }

  deviceUID = self->_deviceUID;
  if (deviceUID | *(equalCopy + 15) && ![(NSString *)deviceUID isEqual:?])
  {
    goto LABEL_89;
  }

  managedConfigDeviceID = self->_managedConfigDeviceID;
  if (managedConfigDeviceID | *(equalCopy + 25))
  {
    if (![(NSString *)managedConfigDeviceID isEqual:?])
    {
      goto LABEL_89;
    }
  }

  v25 = self->_has;
  v26 = *(equalCopy + 81);
  if ((*&v25 & 8) != 0)
  {
    if ((v26 & 8) == 0 || self->_deviceClass != *(equalCopy + 29))
    {
      goto LABEL_89;
    }
  }

  else if ((v26 & 8) != 0)
  {
    goto LABEL_89;
  }

  if ((*&v25 & 0x40) != 0)
  {
    if ((v26 & 0x40) == 0 || self->_logicalDeviceCount != *(equalCopy + 48))
    {
      goto LABEL_89;
    }
  }

  else if ((v26 & 0x40) != 0)
  {
    goto LABEL_89;
  }

  if ((*&v25 & 0x4000000) != 0)
  {
    if ((v26 & 0x4000000) == 0)
    {
      goto LABEL_89;
    }

    v29 = *(equalCopy + 321);
    if (self->_tightlySyncedGroup)
    {
      if ((*(equalCopy + 321) & 1) == 0)
      {
        goto LABEL_89;
      }
    }

    else if (*(equalCopy + 321))
    {
      goto LABEL_89;
    }
  }

  else if ((v26 & 0x4000000) != 0)
  {
    goto LABEL_89;
  }

  if ((*&v25 & 0x20000) != 0)
  {
    if ((v26 & 0x20000) == 0)
    {
      goto LABEL_89;
    }

    v30 = *(equalCopy + 312);
    if (self->_isProxyGroupPlayer)
    {
      if ((*(equalCopy + 312) & 1) == 0)
      {
        goto LABEL_89;
      }
    }

    else if (*(equalCopy + 312))
    {
      goto LABEL_89;
    }
  }

  else if ((v26 & 0x20000) != 0)
  {
    goto LABEL_89;
  }

  tightSyncUID = self->_tightSyncUID;
  if (tightSyncUID | *(equalCopy + 36) && ![(NSString *)tightSyncUID isEqual:?])
  {
    goto LABEL_89;
  }

  groupUID = self->_groupUID;
  if (groupUID | *(equalCopy + 18))
  {
    if (![(NSString *)groupUID isEqual:?])
    {
      goto LABEL_89;
    }
  }

  groupName = self->_groupName;
  if (groupName | *(equalCopy + 16))
  {
    if (![(NSString *)groupName isEqual:?])
    {
      goto LABEL_89;
    }
  }

  groupedDevices = self->_groupedDevices;
  if (groupedDevices | *(equalCopy + 19))
  {
    if (![(NSMutableArray *)groupedDevices isEqual:?])
    {
      goto LABEL_89;
    }
  }

  v35 = self->_has;
  v36 = *(equalCopy + 81);
  if ((*&v35 & 0x10000) != 0)
  {
    if ((v36 & 0x10000) == 0)
    {
      goto LABEL_89;
    }

    v37 = *(equalCopy + 311);
    if (self->_isGroupLeader)
    {
      if ((*(equalCopy + 311) & 1) == 0)
      {
        goto LABEL_89;
      }
    }

    else if (*(equalCopy + 311))
    {
      goto LABEL_89;
    }
  }

  else if ((v36 & 0x10000) != 0)
  {
    goto LABEL_89;
  }

  if ((*&v35 & 0x1000) != 0)
  {
    if ((v36 & 0x1000) == 0)
    {
      goto LABEL_89;
    }

    v38 = *(equalCopy + 307);
    if (self->_isAirplayActive)
    {
      if ((*(equalCopy + 307) & 1) == 0)
      {
        goto LABEL_89;
      }
    }

    else if (*(equalCopy + 307))
    {
      goto LABEL_89;
    }
  }

  else if ((v36 & 0x1000) != 0)
  {
    goto LABEL_89;
  }

  systemPodcastApplication = self->_systemPodcastApplication;
  if (systemPodcastApplication | *(equalCopy + 35) && ![(NSString *)systemPodcastApplication isEqual:?])
  {
    goto LABEL_89;
  }

  senderDefaultGroupUID = self->_senderDefaultGroupUID;
  if (senderDefaultGroupUID | *(equalCopy + 30))
  {
    if (![(NSString *)senderDefaultGroupUID isEqual:?])
    {
      goto LABEL_89;
    }
  }

  airplayReceivers = self->_airplayReceivers;
  if (airplayReceivers | *(equalCopy + 4))
  {
    if (![(NSMutableArray *)airplayReceivers isEqual:?])
    {
      goto LABEL_89;
    }
  }

  linkAgent = self->_linkAgent;
  if (linkAgent | *(equalCopy + 22))
  {
    if (![(NSString *)linkAgent isEqual:?])
    {
      goto LABEL_89;
    }
  }

  clusterID = self->_clusterID;
  if (clusterID | *(equalCopy + 9))
  {
    if (![(NSString *)clusterID isEqual:?])
    {
      goto LABEL_89;
    }
  }

  clusterLeaderID = self->_clusterLeaderID;
  if (clusterLeaderID | *(equalCopy + 10))
  {
    if (![(NSString *)clusterLeaderID isEqual:?])
    {
      goto LABEL_89;
    }
  }

  v45 = self->_has;
  v46 = *(equalCopy + 81);
  if ((*&v45 & 2) != 0)
  {
    if ((v46 & 2) == 0 || self->_clusterType != *(equalCopy + 22))
    {
      goto LABEL_89;
    }
  }

  else if ((v46 & 2) != 0)
  {
    goto LABEL_89;
  }

  if ((*&v45 & 0x2000) != 0)
  {
    if ((v46 & 0x2000) == 0)
    {
      goto LABEL_89;
    }

    v49 = *(equalCopy + 308);
    if (self->_isClusterAware)
    {
      if ((*(equalCopy + 308) & 1) == 0)
      {
        goto LABEL_89;
      }
    }

    else if (*(equalCopy + 308))
    {
      goto LABEL_89;
    }
  }

  else if ((v46 & 0x2000) != 0)
  {
    goto LABEL_89;
  }

  modelID = self->_modelID;
  if (modelID | *(equalCopy + 26))
  {
    if (![(NSString *)modelID isEqual:?])
    {
      goto LABEL_89;
    }

    v45 = self->_has;
  }

  v48 = *(equalCopy + 81);
  if ((*&v45 & 0x400000) != 0)
  {
    if ((v48 & 0x400000) == 0)
    {
      goto LABEL_89;
    }

    v50 = *(equalCopy + 317);
    if (self->_supportsMultiplayer)
    {
      if ((*(equalCopy + 317) & 1) == 0)
      {
        goto LABEL_89;
      }
    }

    else if (*(equalCopy + 317))
    {
      goto LABEL_89;
    }
  }

  else if ((v48 & 0x400000) != 0)
  {
    goto LABEL_89;
  }

  routingContextID = self->_routingContextID;
  if (routingContextID | *(equalCopy + 29) && ![(NSString *)routingContextID isEqual:?])
  {
    goto LABEL_89;
  }

  airPlayGroupID = self->_airPlayGroupID;
  if (airPlayGroupID | *(equalCopy + 3))
  {
    if (![(NSString *)airPlayGroupID isEqual:?])
    {
      goto LABEL_89;
    }
  }

  systemBooksApplication = self->_systemBooksApplication;
  if (systemBooksApplication | *(equalCopy + 32))
  {
    if (![(NSString *)systemBooksApplication isEqual:?])
    {
      goto LABEL_89;
    }
  }

  clusteredDevices = self->_clusteredDevices;
  if (clusteredDevices | *(equalCopy + 12))
  {
    if (![(NSMutableArray *)clusteredDevices isEqual:?])
    {
      goto LABEL_89;
    }
  }

  v55 = self->_has;
  v56 = *(equalCopy + 81);
  if ((*&v55 & 0x40000) != 0)
  {
    if ((v56 & 0x40000) == 0)
    {
      goto LABEL_89;
    }

    v57 = *(equalCopy + 313);
    if (self->_parentGroupContainsDiscoverableGroupLeader)
    {
      if ((*(equalCopy + 313) & 1) == 0)
      {
        goto LABEL_89;
      }
    }

    else if (*(equalCopy + 313))
    {
      goto LABEL_89;
    }
  }

  else if ((v56 & 0x40000) != 0)
  {
    goto LABEL_89;
  }

  if ((*&v55 & 0x800) != 0)
  {
    if ((v56 & 0x800) == 0)
    {
      goto LABEL_89;
    }

    v58 = *(equalCopy + 306);
    if (self->_groupContainsDiscoverableGroupLeader)
    {
      if ((*(equalCopy + 306) & 1) == 0)
      {
        goto LABEL_89;
      }
    }

    else if (*(equalCopy + 306))
    {
      goto LABEL_89;
    }
  }

  else if ((v56 & 0x800) != 0)
  {
    goto LABEL_89;
  }

  if ((*&v55 & 0x10) != 0)
  {
    if ((v56 & 0x10) == 0 || self->_lastKnownClusterType != *(equalCopy + 40))
    {
      goto LABEL_89;
    }
  }

  else if ((v56 & 0x10) != 0)
  {
    goto LABEL_89;
  }

  allClusteredDevices = self->_allClusteredDevices;
  if (allClusteredDevices | *(equalCopy + 5))
  {
    if (![(NSMutableArray *)allClusteredDevices isEqual:?])
    {
      goto LABEL_89;
    }

    v55 = self->_has;
  }

  v60 = *(equalCopy + 81);
  if ((*&v55 & 0x800000) != 0)
  {
    if ((v60 & 0x800000) == 0)
    {
      goto LABEL_89;
    }

    v63 = *(equalCopy + 318);
    if (self->_supportsOutputContextSync)
    {
      if ((*(equalCopy + 318) & 1) == 0)
      {
        goto LABEL_89;
      }
    }

    else if (*(equalCopy + 318))
    {
      goto LABEL_89;
    }
  }

  else if ((v60 & 0x800000) != 0)
  {
    goto LABEL_89;
  }

  computerName = self->_computerName;
  if (computerName | *(equalCopy + 13))
  {
    if (![(NSString *)computerName isEqual:?])
    {
      goto LABEL_89;
    }

    v55 = self->_has;
  }

  v62 = *(equalCopy + 81);
  if ((*&v55 & 4) != 0)
  {
    if ((v62 & 4) == 0 || self->_configuredClusterSize != *(equalCopy + 28))
    {
      goto LABEL_89;
    }
  }

  else if ((v62 & 4) != 0)
  {
    goto LABEL_89;
  }

  if ((*&v55 & 0x80) != 0)
  {
    if ((v62 & 0x80) == 0 || self->_preferredEncoding != *(equalCopy + 56))
    {
      goto LABEL_89;
    }
  }

  else if ((v62 & 0x80) != 0)
  {
    goto LABEL_89;
  }

  groupSessionToken = self->_groupSessionToken;
  if (groupSessionToken | *(equalCopy + 17) && ![(_MRGroupSessionTokenProtobuf *)groupSessionToken isEqual:?])
  {
    goto LABEL_89;
  }

  leaderDeviceInfo = self->_leaderDeviceInfo;
  if (leaderDeviceInfo | *(equalCopy + 21))
  {
    if (![(_MRDeviceInfoMessageProtobuf *)leaderDeviceInfo isEqual:?])
    {
      goto LABEL_89;
    }
  }

  v66 = self->_has;
  v67 = *(equalCopy + 81);
  if ((*&v66 & 0x4000) != 0)
  {
    if ((v67 & 0x4000) == 0)
    {
      goto LABEL_89;
    }

    v68 = *(equalCopy + 309);
    if (self->_isClusterLeader)
    {
      if ((*(equalCopy + 309) & 1) == 0)
      {
        goto LABEL_89;
      }
    }

    else if (*(equalCopy + 309))
    {
      goto LABEL_89;
    }
  }

  else if ((v67 & 0x4000) != 0)
  {
    goto LABEL_89;
  }

  activeSystemEndpointUID = self->_activeSystemEndpointUID;
  if (activeSystemEndpointUID | *(equalCopy + 2))
  {
    if (![(NSString *)activeSystemEndpointUID isEqual:?])
    {
      goto LABEL_89;
    }

    v66 = self->_has;
  }

  v70 = *(equalCopy + 81);
  if ((*&v66 & 0x8000) != 0)
  {
    if ((v70 & 0x8000) == 0)
    {
      goto LABEL_89;
    }

    v71 = *(equalCopy + 310);
    if (self->_isEligibleForHostingGroupSessionExcludingAcknowledgements)
    {
      if ((*(equalCopy + 310) & 1) == 0)
      {
        goto LABEL_89;
      }
    }

    else if (*(equalCopy + 310))
    {
      goto LABEL_89;
    }
  }

  else if ((v70 & 0x8000) != 0)
  {
    goto LABEL_89;
  }

  if ((*&v66 & 0x80000) == 0)
  {
    v27 = (v70 & 0x80000) == 0;
    goto LABEL_90;
  }

  if ((v70 & 0x80000) != 0)
  {
    if (self->_parentGroupSupportsGroupCohesion)
    {
      if (*(equalCopy + 314))
      {
        goto LABEL_257;
      }
    }

    else if (!*(equalCopy + 314))
    {
LABEL_257:
      v27 = 1;
      goto LABEL_90;
    }
  }

LABEL_89:
  v27 = 0;
LABEL_90:

  return v27;
}

- (unint64_t)hash
{
  v69 = [(NSString *)self->_uniqueIdentifier hash];
  v68 = [(NSString *)self->_name hash];
  v67 = [(NSString *)self->_localizedModelName hash];
  v66 = [(NSString *)self->_systemBuildVersion hash];
  v65 = [(NSString *)self->_applicationBundleIdentifier hash];
  v64 = [(NSString *)self->_applicationBundleVersion hash];
  has = self->_has;
  if (*&has)
  {
    v63 = 2654435761u * self->_protocolVersion;
    if ((*&has & 0x20) != 0)
    {
LABEL_3:
      v62 = 2654435761 * self->_lastSupportedMessageType;
      if ((*&has & 0x2000000) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v63 = 0;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_3;
    }
  }

  v62 = 0;
  if ((*&has & 0x2000000) != 0)
  {
LABEL_4:
    v61 = 2654435761 * self->_supportsSystemPairing;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v60 = 0;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_9:
  v61 = 0;
  if ((*&has & 0x200) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v60 = 2654435761 * self->_allowsPairing;
  if ((*&has & 0x400) != 0)
  {
LABEL_6:
    v59 = 2654435761 * self->_connected;
    goto LABEL_12;
  }

LABEL_11:
  v59 = 0;
LABEL_12:
  v58 = [(NSString *)self->_systemMediaApplication hash];
  v4 = self->_has;
  if ((*&v4 & 0x100000) == 0)
  {
    v57 = 0;
    if ((*&v4 & 0x1000000) != 0)
    {
      goto LABEL_14;
    }

LABEL_17:
    v56 = 0;
    if ((*&v4 & 0x200000) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  v57 = 2654435761 * self->_supportsACL;
  if ((*&v4 & 0x1000000) == 0)
  {
    goto LABEL_17;
  }

LABEL_14:
  v56 = 2654435761 * self->_supportsSharedQueue;
  if ((*&v4 & 0x200000) != 0)
  {
LABEL_15:
    v55 = 2654435761 * self->_supportsExtendedMotion;
    goto LABEL_19;
  }

LABEL_18:
  v55 = 0;
LABEL_19:
  v54 = [(NSData *)self->_bluetoothAddress hash];
  if (*(&self->_has + 1))
  {
    v53 = 2654435761 * self->_sharedQueueVersion;
  }

  else
  {
    v53 = 0;
  }

  v52 = [(NSString *)self->_deviceUID hash];
  v51 = [(NSString *)self->_managedConfigDeviceID hash];
  v5 = self->_has;
  if ((*&v5 & 8) != 0)
  {
    v50 = 2654435761 * self->_deviceClass;
    if ((*&v5 & 0x40) != 0)
    {
LABEL_24:
      v49 = 2654435761 * self->_logicalDeviceCount;
      if ((*&v5 & 0x4000000) != 0)
      {
        goto LABEL_25;
      }

LABEL_29:
      v48 = 0;
      if ((*&v5 & 0x20000) != 0)
      {
        goto LABEL_26;
      }

      goto LABEL_30;
    }
  }

  else
  {
    v50 = 0;
    if ((*&v5 & 0x40) != 0)
    {
      goto LABEL_24;
    }
  }

  v49 = 0;
  if ((*&v5 & 0x4000000) == 0)
  {
    goto LABEL_29;
  }

LABEL_25:
  v48 = 2654435761 * self->_tightlySyncedGroup;
  if ((*&v5 & 0x20000) != 0)
  {
LABEL_26:
    v47 = 2654435761 * self->_isProxyGroupPlayer;
    goto LABEL_31;
  }

LABEL_30:
  v47 = 0;
LABEL_31:
  v46 = [(NSString *)self->_tightSyncUID hash];
  v45 = [(NSString *)self->_groupUID hash];
  v44 = [(NSString *)self->_groupName hash];
  v43 = [(NSMutableArray *)self->_groupedDevices hash];
  v6 = self->_has;
  if ((*&v6 & 0x10000) != 0)
  {
    v42 = 2654435761 * self->_isGroupLeader;
    if ((*&v6 & 0x1000) != 0)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v42 = 0;
    if ((*&v6 & 0x1000) != 0)
    {
LABEL_33:
      v41 = 2654435761 * self->_isAirplayActive;
      goto LABEL_36;
    }
  }

  v41 = 0;
LABEL_36:
  v40 = [(NSString *)self->_systemPodcastApplication hash];
  v39 = [(NSString *)self->_senderDefaultGroupUID hash];
  v38 = [(NSMutableArray *)self->_airplayReceivers hash];
  v37 = [(NSString *)self->_linkAgent hash];
  v36 = [(NSString *)self->_clusterID hash];
  v35 = [(NSString *)self->_clusterLeaderID hash];
  v7 = self->_has;
  if ((*&v7 & 2) != 0)
  {
    v34 = 2654435761 * self->_clusterType;
    if ((*&v7 & 0x2000) != 0)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v34 = 0;
    if ((*&v7 & 0x2000) != 0)
    {
LABEL_38:
      v33 = 2654435761 * self->_isClusterAware;
      goto LABEL_41;
    }
  }

  v33 = 0;
LABEL_41:
  v32 = [(NSString *)self->_modelID hash];
  if ((*(&self->_has + 2) & 0x40) != 0)
  {
    v31 = 2654435761 * self->_supportsMultiplayer;
  }

  else
  {
    v31 = 0;
  }

  v30 = [(NSString *)self->_routingContextID hash];
  v29 = [(NSString *)self->_airPlayGroupID hash];
  v28 = [(NSString *)self->_systemBooksApplication hash];
  v27 = [(NSMutableArray *)self->_clusteredDevices hash];
  v8 = self->_has;
  if ((*&v8 & 0x40000) == 0)
  {
    v26 = 0;
    if ((*&v8 & 0x800) != 0)
    {
      goto LABEL_46;
    }

LABEL_49:
    v25 = 0;
    if ((*&v8 & 0x10) != 0)
    {
      goto LABEL_47;
    }

    goto LABEL_50;
  }

  v26 = 2654435761 * self->_parentGroupContainsDiscoverableGroupLeader;
  if ((*&v8 & 0x800) == 0)
  {
    goto LABEL_49;
  }

LABEL_46:
  v25 = 2654435761 * self->_groupContainsDiscoverableGroupLeader;
  if ((*&v8 & 0x10) != 0)
  {
LABEL_47:
    v24 = 2654435761 * self->_lastKnownClusterType;
    goto LABEL_51;
  }

LABEL_50:
  v24 = 0;
LABEL_51:
  v22 = [(NSMutableArray *)self->_allClusteredDevices hash];
  if ((*(&self->_has + 2) & 0x80) != 0)
  {
    v9 = 2654435761 * self->_supportsOutputContextSync;
  }

  else
  {
    v9 = 0;
  }

  v10 = [(NSString *)self->_computerName hash];
  v11 = self->_has;
  if ((*&v11 & 4) != 0)
  {
    v12 = 2654435761 * self->_configuredClusterSize;
    if ((*&v11 & 0x80) != 0)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v12 = 0;
    if ((*&v11 & 0x80) != 0)
    {
LABEL_56:
      v13 = 2654435761 * self->_preferredEncoding;
      goto LABEL_59;
    }
  }

  v13 = 0;
LABEL_59:
  v14 = [(_MRGroupSessionTokenProtobuf *)self->_groupSessionToken hash];
  v15 = [(_MRDeviceInfoMessageProtobuf *)self->_leaderDeviceInfo hash];
  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    v16 = 2654435761 * self->_isClusterLeader;
  }

  else
  {
    v16 = 0;
  }

  v17 = [(NSString *)self->_activeSystemEndpointUID hash];
  v18 = self->_has;
  if ((*&v18 & 0x8000) != 0)
  {
    v19 = 2654435761 * self->_isEligibleForHostingGroupSessionExcludingAcknowledgements;
    if ((*&v18 & 0x80000) != 0)
    {
      goto LABEL_64;
    }

LABEL_66:
    v20 = 0;
    return v68 ^ v69 ^ v67 ^ v66 ^ v65 ^ v64 ^ v63 ^ v62 ^ v61 ^ v60 ^ v59 ^ v58 ^ v57 ^ v56 ^ v55 ^ v54 ^ v53 ^ v52 ^ v51 ^ v50 ^ v49 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v9 ^ v10 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v19 ^ v20;
  }

  v19 = 0;
  if ((*&v18 & 0x80000) == 0)
  {
    goto LABEL_66;
  }

LABEL_64:
  v20 = 2654435761 * self->_parentGroupSupportsGroupCohesion;
  return v68 ^ v69 ^ v67 ^ v66 ^ v65 ^ v64 ^ v63 ^ v62 ^ v61 ^ v60 ^ v59 ^ v58 ^ v57 ^ v56 ^ v55 ^ v54 ^ v53 ^ v52 ^ v51 ^ v50 ^ v49 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v9 ^ v10 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v19 ^ v20;
}

- (void)mergeFrom:(id)from
{
  v58 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (*(fromCopy + 37))
  {
    [(_MRDeviceInfoMessageProtobuf *)self setUniqueIdentifier:?];
  }

  if (*(fromCopy + 27))
  {
    [(_MRDeviceInfoMessageProtobuf *)self setName:?];
  }

  if (*(fromCopy + 23))
  {
    [(_MRDeviceInfoMessageProtobuf *)self setLocalizedModelName:?];
  }

  if (*(fromCopy + 33))
  {
    [(_MRDeviceInfoMessageProtobuf *)self setSystemBuildVersion:?];
  }

  if (*(fromCopy + 6))
  {
    [(_MRDeviceInfoMessageProtobuf *)self setApplicationBundleIdentifier:?];
  }

  if (*(fromCopy + 7))
  {
    [(_MRDeviceInfoMessageProtobuf *)self setApplicationBundleVersion:?];
  }

  v5 = *(fromCopy + 81);
  if (v5)
  {
    self->_protocolVersion = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 81);
    if ((v5 & 0x20) == 0)
    {
LABEL_15:
      if ((v5 & 0x2000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_117;
    }
  }

  else if ((v5 & 0x20) == 0)
  {
    goto LABEL_15;
  }

  self->_lastSupportedMessageType = *(fromCopy + 41);
  *&self->_has |= 0x20u;
  v5 = *(fromCopy + 81);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_16:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_118;
  }

LABEL_117:
  self->_supportsSystemPairing = *(fromCopy + 320);
  *&self->_has |= 0x2000000u;
  v5 = *(fromCopy + 81);
  if ((v5 & 0x200) == 0)
  {
LABEL_17:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_118:
  self->_allowsPairing = *(fromCopy + 304);
  *&self->_has |= 0x200u;
  if ((*(fromCopy + 81) & 0x400) != 0)
  {
LABEL_18:
    self->_connected = *(fromCopy + 305);
    *&self->_has |= 0x400u;
  }

LABEL_19:
  if (*(fromCopy + 34))
  {
    [(_MRDeviceInfoMessageProtobuf *)self setSystemMediaApplication:?];
  }

  v6 = *(fromCopy + 81);
  if ((v6 & 0x100000) != 0)
  {
    self->_supportsACL = *(fromCopy + 315);
    *&self->_has |= 0x100000u;
    v6 = *(fromCopy + 81);
    if ((v6 & 0x1000000) == 0)
    {
LABEL_23:
      if ((v6 & 0x200000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }
  }

  else if ((v6 & 0x1000000) == 0)
  {
    goto LABEL_23;
  }

  self->_supportsSharedQueue = *(fromCopy + 319);
  *&self->_has |= 0x1000000u;
  if ((*(fromCopy + 81) & 0x200000) != 0)
  {
LABEL_24:
    self->_supportsExtendedMotion = *(fromCopy + 316);
    *&self->_has |= 0x200000u;
  }

LABEL_25:
  if (*(fromCopy + 8))
  {
    [(_MRDeviceInfoMessageProtobuf *)self setBluetoothAddress:?];
  }

  if (*(fromCopy + 325))
  {
    self->_sharedQueueVersion = *(fromCopy + 62);
    *&self->_has |= 0x100u;
  }

  if (*(fromCopy + 15))
  {
    [(_MRDeviceInfoMessageProtobuf *)self setDeviceUID:?];
  }

  if (*(fromCopy + 25))
  {
    [(_MRDeviceInfoMessageProtobuf *)self setManagedConfigDeviceID:?];
  }

  v7 = *(fromCopy + 81);
  if ((v7 & 8) != 0)
  {
    self->_deviceClass = *(fromCopy + 29);
    *&self->_has |= 8u;
    v7 = *(fromCopy + 81);
    if ((v7 & 0x40) == 0)
    {
LABEL_35:
      if ((v7 & 0x4000000) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_125;
    }
  }

  else if ((v7 & 0x40) == 0)
  {
    goto LABEL_35;
  }

  self->_logicalDeviceCount = *(fromCopy + 48);
  *&self->_has |= 0x40u;
  v7 = *(fromCopy + 81);
  if ((v7 & 0x4000000) == 0)
  {
LABEL_36:
    if ((v7 & 0x20000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_125:
  self->_tightlySyncedGroup = *(fromCopy + 321);
  *&self->_has |= 0x4000000u;
  if ((*(fromCopy + 81) & 0x20000) != 0)
  {
LABEL_37:
    self->_isProxyGroupPlayer = *(fromCopy + 312);
    *&self->_has |= 0x20000u;
  }

LABEL_38:
  if (*(fromCopy + 36))
  {
    [(_MRDeviceInfoMessageProtobuf *)self setTightSyncUID:?];
  }

  if (*(fromCopy + 18))
  {
    [(_MRDeviceInfoMessageProtobuf *)self setGroupUID:?];
  }

  if (*(fromCopy + 16))
  {
    [(_MRDeviceInfoMessageProtobuf *)self setGroupName:?];
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v8 = *(fromCopy + 19);
  v9 = [v8 countByEnumeratingWithState:&v50 objects:v57 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v51;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v51 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(_MRDeviceInfoMessageProtobuf *)self addGroupedDevices:*(*(&v50 + 1) + 8 * i)];
      }

      v10 = [v8 countByEnumeratingWithState:&v50 objects:v57 count:16];
    }

    while (v10);
  }

  v13 = *(fromCopy + 81);
  if ((v13 & 0x10000) != 0)
  {
    self->_isGroupLeader = *(fromCopy + 311);
    *&self->_has |= 0x10000u;
    v13 = *(fromCopy + 81);
  }

  if ((v13 & 0x1000) != 0)
  {
    self->_isAirplayActive = *(fromCopy + 307);
    *&self->_has |= 0x1000u;
  }

  if (*(fromCopy + 35))
  {
    [(_MRDeviceInfoMessageProtobuf *)self setSystemPodcastApplication:?];
  }

  if (*(fromCopy + 30))
  {
    [(_MRDeviceInfoMessageProtobuf *)self setSenderDefaultGroupUID:?];
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v14 = *(fromCopy + 4);
  v15 = [v14 countByEnumeratingWithState:&v46 objects:v56 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v47;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v47 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [(_MRDeviceInfoMessageProtobuf *)self addAirplayReceivers:*(*(&v46 + 1) + 8 * j)];
      }

      v16 = [v14 countByEnumeratingWithState:&v46 objects:v56 count:16];
    }

    while (v16);
  }

  if (*(fromCopy + 22))
  {
    [(_MRDeviceInfoMessageProtobuf *)self setLinkAgent:?];
  }

  if (*(fromCopy + 9))
  {
    [(_MRDeviceInfoMessageProtobuf *)self setClusterID:?];
  }

  if (*(fromCopy + 10))
  {
    [(_MRDeviceInfoMessageProtobuf *)self setClusterLeaderID:?];
  }

  v19 = *(fromCopy + 81);
  if ((v19 & 2) != 0)
  {
    self->_clusterType = *(fromCopy + 22);
    *&self->_has |= 2u;
    v19 = *(fromCopy + 81);
  }

  if ((v19 & 0x2000) != 0)
  {
    self->_isClusterAware = *(fromCopy + 308);
    *&self->_has |= 0x2000u;
  }

  if (*(fromCopy + 26))
  {
    [(_MRDeviceInfoMessageProtobuf *)self setModelID:?];
  }

  if ((*(fromCopy + 326) & 0x40) != 0)
  {
    self->_supportsMultiplayer = *(fromCopy + 317);
    *&self->_has |= 0x400000u;
  }

  if (*(fromCopy + 29))
  {
    [(_MRDeviceInfoMessageProtobuf *)self setRoutingContextID:?];
  }

  if (*(fromCopy + 3))
  {
    [(_MRDeviceInfoMessageProtobuf *)self setAirPlayGroupID:?];
  }

  if (*(fromCopy + 32))
  {
    [(_MRDeviceInfoMessageProtobuf *)self setSystemBooksApplication:?];
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v20 = *(fromCopy + 12);
  v21 = [v20 countByEnumeratingWithState:&v42 objects:v55 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v43;
    do
    {
      for (k = 0; k != v22; ++k)
      {
        if (*v43 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [(_MRDeviceInfoMessageProtobuf *)self addClusteredDevices:*(*(&v42 + 1) + 8 * k)];
      }

      v22 = [v20 countByEnumeratingWithState:&v42 objects:v55 count:16];
    }

    while (v22);
  }

  v25 = *(fromCopy + 81);
  if ((v25 & 0x40000) != 0)
  {
    self->_parentGroupContainsDiscoverableGroupLeader = *(fromCopy + 313);
    *&self->_has |= 0x40000u;
    v25 = *(fromCopy + 81);
    if ((v25 & 0x800) == 0)
    {
LABEL_95:
      if ((v25 & 0x10) == 0)
      {
        goto LABEL_97;
      }

      goto LABEL_96;
    }
  }

  else if ((v25 & 0x800) == 0)
  {
    goto LABEL_95;
  }

  self->_groupContainsDiscoverableGroupLeader = *(fromCopy + 306);
  *&self->_has |= 0x800u;
  if ((*(fromCopy + 81) & 0x10) != 0)
  {
LABEL_96:
    self->_lastKnownClusterType = *(fromCopy + 40);
    *&self->_has |= 0x10u;
  }

LABEL_97:
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v26 = *(fromCopy + 5);
  v27 = [v26 countByEnumeratingWithState:&v38 objects:v54 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v39;
    do
    {
      for (m = 0; m != v28; ++m)
      {
        if (*v39 != v29)
        {
          objc_enumerationMutation(v26);
        }

        [(_MRDeviceInfoMessageProtobuf *)self addAllClusteredDevices:*(*(&v38 + 1) + 8 * m), v38];
      }

      v28 = [v26 countByEnumeratingWithState:&v38 objects:v54 count:16];
    }

    while (v28);
  }

  if ((*(fromCopy + 326) & 0x80) != 0)
  {
    self->_supportsOutputContextSync = *(fromCopy + 318);
    *&self->_has |= 0x800000u;
  }

  if (*(fromCopy + 13))
  {
    [(_MRDeviceInfoMessageProtobuf *)self setComputerName:?];
  }

  v31 = *(fromCopy + 81);
  if ((v31 & 4) != 0)
  {
    self->_configuredClusterSize = *(fromCopy + 28);
    *&self->_has |= 4u;
    v31 = *(fromCopy + 81);
  }

  if ((v31 & 0x80) != 0)
  {
    self->_preferredEncoding = *(fromCopy + 56);
    *&self->_has |= 0x80u;
  }

  groupSessionToken = self->_groupSessionToken;
  v33 = *(fromCopy + 17);
  if (groupSessionToken)
  {
    if (v33)
    {
      [(_MRGroupSessionTokenProtobuf *)groupSessionToken mergeFrom:?];
    }
  }

  else if (v33)
  {
    [(_MRDeviceInfoMessageProtobuf *)self setGroupSessionToken:?];
  }

  leaderDeviceInfo = self->_leaderDeviceInfo;
  v35 = *(fromCopy + 21);
  if (leaderDeviceInfo)
  {
    if (v35)
    {
      [(_MRDeviceInfoMessageProtobuf *)leaderDeviceInfo mergeFrom:?];
    }
  }

  else if (v35)
  {
    [(_MRDeviceInfoMessageProtobuf *)self setLeaderDeviceInfo:?];
  }

  if ((*(fromCopy + 325) & 0x40) != 0)
  {
    self->_isClusterLeader = *(fromCopy + 309);
    *&self->_has |= 0x4000u;
  }

  if (*(fromCopy + 2))
  {
    [(_MRDeviceInfoMessageProtobuf *)self setActiveSystemEndpointUID:?];
  }

  v36 = *(fromCopy + 81);
  if ((v36 & 0x8000) != 0)
  {
    self->_isEligibleForHostingGroupSessionExcludingAcknowledgements = *(fromCopy + 310);
    *&self->_has |= 0x8000u;
    v36 = *(fromCopy + 81);
  }

  if ((v36 & 0x80000) != 0)
  {
    self->_parentGroupSupportsGroupCohesion = *(fromCopy + 314);
    *&self->_has |= 0x80000u;
  }

  v37 = *MEMORY[0x1E69E9840];
}

@end