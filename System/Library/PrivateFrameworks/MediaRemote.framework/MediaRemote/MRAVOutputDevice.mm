@interface MRAVOutputDevice
+ (id)localDeviceLocalizedName;
- (BOOL)belongsToLocalCluster;
- (BOOL)canProxyEndpoint;
- (BOOL)containsUID:(id)d;
- (BOOL)discoveredDeviceIsPlaying;
- (BOOL)hasPlaceholderName;
- (BOOL)isAirpodsDevice;
- (BOOL)isAirpodsMaxDevice;
- (BOOL)isAuxiliary;
- (BOOL)isB238Device;
- (BOOL)isB620Device;
- (BOOL)isB825Device;
- (BOOL)isBeatsLegacyDevice;
- (BOOL)isEligibleForWHAPlayback;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualFuzzy:(id)fuzzy;
- (BOOL)isEqualToOutputDevice:(id)device denyList:(id)list addedProperties:(id *)properties removedProperties:(id *)removedProperties changedProperties:(id *)changedProperties;
- (BOOL)isHearingDevice;
- (BOOL)isHomePodMiniDevice;
- (BOOL)isKnown;
- (BOOL)isLocalDeviceOrBelongsToLocalCluster;
- (BOOL)isMultiRoom;
- (BOOL)isNearby;
- (BOOL)isPrimaryLocalDevice;
- (BOOL)isStudioDisplay;
- (BOOL)isSystemCaptureDevice;
- (BOOL)isVolumeMuted;
- (BOOL)isW3Device;
- (BOOL)shouldBeLocallyHosted;
- (BOOL)supportsMigration;
- (BOOL)wasDiscoveredInCache;
- (MRAVDistantOutputDevice)distantOutputDeviceRepresentation;
- (MRAVEndpoint)endpoint;
- (MRAVOutputDevice)outputDeviceWithSourceInfoFrom:(id)from;
- (MRRouteRecommendation)recommendation;
- (NSArray)allClusterMembersOutputDevices;
- (NSArray)clusterCompositionOutputDevices;
- (NSDictionary)jsonEncodableDictionaryRepresentation;
- (NSDictionary)roomsLookupTable;
- (NSString)baseGroupID;
- (NSString)baseParentGroupID;
- (NSString)capabilitiesDescription;
- (NSString)clusterMemberID;
- (NSString)composedTypeDescription;
- (NSString)debugName;
- (NSString)groupContextID;
- (NSString)groupID;
- (NSString)roleDescription;
- (_MRAVOutputDeviceDescriptorProtobuf)descriptor;
- (float)volume;
- (id)_clusterCompositionDescription;
- (id)_clusterRoomDescription;
- (id)batteryDescription;
- (id)clusterCompositionDescription;
- (id)description;
- (id)effectiveOutputDeviceForUID:(id)d;
- (id)mergingVolumeFrom:(id)from;
- (unint64_t)hash;
- (unsigned)volumeCapabilities;
- (void)adjustVolume:(int64_t)volume details:(id)details;
- (void)setCarPlayVideoActive:(BOOL)active completion:(id)completion;
- (void)setRecommendation:(id)recommendation;
- (void)setVolume:(float)volume details:(id)details;
- (void)setVolumeMuted:(BOOL)muted details:(id)details;
@end

@implementation MRAVOutputDevice

- (NSDictionary)roomsLookupTable
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  activatedClusterMembersOutputDevices = [(MRAVOutputDevice *)self activatedClusterMembersOutputDevices];
  v5 = [activatedClusterMembersOutputDevices countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(activatedClusterMembersOutputDevices);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        roomID = [v9 roomID];
        if (roomID)
        {
          v11 = [v3 objectForKeyedSubscript:roomID];
          if (!v11)
          {
            v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
            [v3 setObject:v11 forKeyedSubscript:roomID];
          }

          [v11 addObject:v9];
        }
      }

      v6 = [activatedClusterMembersOutputDevices countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v3;
}

- (_MRAVOutputDeviceDescriptorProtobuf)descriptor
{
  v77 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(_MRAVOutputDeviceDescriptorProtobuf);
  name = [(MRAVOutputDevice *)self name];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setName:name];

  v5 = [(MRAVOutputDevice *)self uid];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setUniqueIdentifier:v5];

  tightSyncID = [(MRAVOutputDevice *)self tightSyncID];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setLogicalDeviceID:tightSyncID];

  groupID = [(MRAVOutputDevice *)self groupID];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setGroupID:groupID];

  modelID = [(MRAVOutputDevice *)self modelID];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setModelID:modelID];

  mACAddress = [(MRAVOutputDevice *)self MACAddress];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setMacAddress:mACAddress];

  [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setCanAccessRemoteAssets:[(MRAVOutputDevice *)self canAccessRemoteAssets]];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setCanAccessAppleMusic:[(MRAVOutputDevice *)self canAccessAppleMusic]];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setCanAccessiCloudMusicLibrary:[(MRAVOutputDevice *)self canAccessiCloudMusicLibrary]];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setCanPlayEncryptedProgressiveDownloadAssets:[(MRAVOutputDevice *)self canPlayEncryptedProgressiveDownloadAssets]];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setCanFetchMediaDataFromSender:[(MRAVOutputDevice *)self canFetchMediaDataFromSender]];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setPresentsOptimizedUserInterfaceWhenPlayingFetchedAudioOnlyAssets:[(MRAVOutputDevice *)self presentsOptimizedUserInterfaceWhenPlayingFetchedAudioOnlyAssets]];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setIsRemoteControllable:[(MRAVOutputDevice *)self isRemoteControllable]];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setCanRelayCommunicationChannel:[(MRAVOutputDevice *)self canRelayCommunicationChannel]];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setSupportsBufferedAirPlay:[(MRAVOutputDevice *)self supportsBufferedAirPlay]];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setIsGroupLeader:[(MRAVOutputDevice *)self isGroupLeader]];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setGroupContainsGroupLeader:[(MRAVOutputDevice *)self groupContainsGroupLeader]];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setIsAirPlayReceiverSessionActive:[(MRAVOutputDevice *)self isAirPlayReceiverSessionActive]];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setParentGroupContainsDiscoverableLeader:[(MRAVOutputDevice *)self parentGroupContainsDiscoverableLeader]];
  parentGroupIdentifier = [(MRAVOutputDevice *)self parentGroupIdentifier];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setParentGroupIdentifier:parentGroupIdentifier];

  [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setIsGroupable:[(MRAVOutputDevice *)self isGroupable]];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setIsDeviceGroupable:[(MRAVOutputDevice *)self isDeviceGroupable]];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setIsProxyGroupPlayer:[(MRAVOutputDevice *)self isProxyGroupPlayer]];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setDeviceType:[(MRAVOutputDevice *)self deviceType]];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setDeviceSubType:[(MRAVOutputDevice *)self deviceSubtype]];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setHostDeviceClass:_MRDeviceInfoMessageProtobuf_DeviceClassFromModel([(MRAVOutputDevice *)self hostDeviceClass])];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setIsAddedToHomeKit:[(MRAVOutputDevice *)self isAddedToHomeKit]];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setVolumeCapabilities:[(MRAVOutputDevice *)self volumeCapabilities]];
  if ([(MRAVOutputDevice *)self isVolumeControlAvailable]|| ([(MRAVOutputDevice *)self volumeCapabilities]& 2) != 0)
  {
    [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setIsVolumeControlAvailable:1];
    [(MRAVOutputDevice *)self volume];
    [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setVolume:?];
  }

  [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setVolumeMuted:[(MRAVOutputDevice *)self isVolumeMuted]];
  bluetoothID = [(MRAVOutputDevice *)self bluetoothID];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setBluetoothID:bluetoothID];

  [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setSupportsHAP:[(MRAVOutputDevice *)self supportsHAP]];
  modelSpecificInfo = [(MRAVOutputDevice *)self modelSpecificInfo];
  if ([modelSpecificInfo count])
  {
    v13 = MRCreateDataFromObject(modelSpecificInfo);
    [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setModelSpecificInfoData:v13];
  }

  if ([(MRAVOutputDevice *)self hasBatteryLevel])
  {
    [(MRAVOutputDevice *)self batteryLevel];
    [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setBatteryLevel:?];
  }

  [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setIsLocalDevice:[(MRAVOutputDevice *)self isLocalDevice]];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setSupportsExternalScreen:[(MRAVOutputDevice *)self supportsExternalScreen]];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setRequiresAuthorization:[(MRAVOutputDevice *)self requiresAuthorization]];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setUsingJSONProtocol:[(MRAVOutputDevice *)self isUsingJSONProtocol]];
  sourceInfo = [(MRAVOutputDevice *)self sourceInfo];
  v15 = objc_alloc_init(_MRAVOutputDeviceSourceInfoProtobuf);
  v56 = sourceInfo;
  -[_MRAVOutputDeviceSourceInfoProtobuf setMultipleBuiltInDevices:](v15, "setMultipleBuiltInDevices:", [sourceInfo multipleBuiltInDevices]);
  [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setSourceInfo:v15];
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  clusterComposition = [(MRAVOutputDevice *)self clusterComposition];
  v17 = [clusterComposition countByEnumeratingWithState:&v69 objects:v76 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v70;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v70 != v19)
        {
          objc_enumerationMutation(clusterComposition);
        }

        descriptor = [*(*(&v69 + 1) + 8 * i) descriptor];
        [(_MRAVOutputDeviceDescriptorProtobuf *)v3 addClusterComposition:descriptor];
      }

      v18 = [clusterComposition countByEnumeratingWithState:&v69 objects:v76 count:16];
    }

    while (v18);
  }

  [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setClusterType:[(MRAVOutputDevice *)self clusterType]];
  primaryID = [(MRAVOutputDevice *)self primaryID];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setPrimaryUID:primaryID];

  [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setConfiguredClusterSize:[(MRAVOutputDevice *)self configuredClusterSize]];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setSupportsRapportRemoteControlTransport:[(MRAVOutputDevice *)self supportsRapportRemoteControlTransport]];
  currentBluetoothListeningMode = [(MRAVOutputDevice *)self currentBluetoothListeningMode];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setCurrentBluetoothListeningMode:currentBluetoothListeningMode];

  availableBluetoothListeningModes = [(MRAVOutputDevice *)self availableBluetoothListeningModes];
  v25 = [availableBluetoothListeningModes mutableCopy];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setAvailableBluetoothListeningModes:v25];

  [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setSupportsMultiplayer:[(MRAVOutputDevice *)self supportsMultiplayer]];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setProducesLowFidelityAudio:[(MRAVOutputDevice *)self producesLowFidelityAudio]];
  airPlayGroupID = [(MRAVOutputDevice *)self airPlayGroupID];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setAirPlayGroupID:airPlayGroupID];

  [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setSupportsSharePlayHandoff:[(MRAVOutputDevice *)self supportsSharePlayHandoff]];
  if (![(MRAVOutputDevice *)self discoveredOnSameInfra])
  {
    [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setDiscoveredOnSameInfra:0];
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  activatedClusterMembersOutputDevices = [(MRAVOutputDevice *)self activatedClusterMembersOutputDevices];
  v28 = [activatedClusterMembersOutputDevices countByEnumeratingWithState:&v65 objects:v75 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v66;
    do
    {
      for (j = 0; j != v29; ++j)
      {
        if (*v66 != v30)
        {
          objc_enumerationMutation(activatedClusterMembersOutputDevices);
        }

        descriptor2 = [*(*(&v65 + 1) + 8 * j) descriptor];
        [(_MRAVOutputDeviceDescriptorProtobuf *)v3 addActivatedClusterMembers:descriptor2];
      }

      v29 = [activatedClusterMembersOutputDevices countByEnumeratingWithState:&v65 objects:v75 count:16];
    }

    while (v29);
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  allClusterMembers = [(MRAVOutputDevice *)self allClusterMembers];
  v34 = [allClusterMembers countByEnumeratingWithState:&v61 objects:v74 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v62;
    do
    {
      for (k = 0; k != v35; ++k)
      {
        if (*v62 != v36)
        {
          objc_enumerationMutation(allClusterMembers);
        }

        descriptor3 = [*(*(&v61 + 1) + 8 * k) descriptor];
        [(_MRAVOutputDeviceDescriptorProtobuf *)v3 addAllClusterMembers:descriptor3];
      }

      v35 = [allClusterMembers countByEnumeratingWithState:&v61 objects:v74 count:16];
    }

    while (v35);
  }

  [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setPickable:[(MRAVOutputDevice *)self isPickable]];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setTransportType:[(MRAVOutputDevice *)self transportType]];
  clusterID = [(MRAVOutputDevice *)self clusterID];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setClusterID:clusterID];

  [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setIsClusterLeader:[(MRAVOutputDevice *)self isClusterLeader]];
  parentUID = [(MRAVOutputDevice *)self parentUID];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setParentUniqueIdentifier:parentUID];

  roomID = [(MRAVOutputDevice *)self roomID];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setRoomID:roomID];

  roomName = [(MRAVOutputDevice *)self roomName];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setRoomName:roomName];

  [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setIsAppleAccessory:[(MRAVOutputDevice *)self isAppleAccessory]];
  if ([(MRAVOutputDevice *)self supportsEngageOnClusterActivation])
  {
    [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setEngageOnClusterActivate:1];
  }

  if ([(MRAVOutputDevice *)self supportsBluetoothSharing])
  {
    [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setSupportsBluetoothSharing:1];
  }

  deviceEnclosureColor = [(MRAVOutputDevice *)self deviceEnclosureColor];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setDeviceEnclosureColor:deviceEnclosureColor];

  playingPairedDeviceName = [(MRAVOutputDevice *)self playingPairedDeviceName];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setPlayingPairedDeviceName:playingPairedDeviceName];

  if ([(MRAVOutputDevice *)self supportsRapport])
  {
    [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setSupportsRapport:1];
  }

  if ([(MRAVOutputDevice *)self isPickedOnPairedDevice])
  {
    [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setIsPickedOnPairedDevice:1];
  }

  if ([(MRAVOutputDevice *)self supportsHeadTrackedSpatialAudio])
  {
    [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setSupportsHeadTrackedSpatialAudio:1];
  }

  if ([(MRAVOutputDevice *)self isHeadTrackedSpatialAudioActive])
  {
    [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setIsHeadTrackedSpatialAudioActive:1];
  }

  headTrackedSpatialAudioMode = [(MRAVOutputDevice *)self headTrackedSpatialAudioMode];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setHeadTrackedSpatialAudioMode:headTrackedSpatialAudioMode];

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  dnsNames = [(MRAVOutputDevice *)self dnsNames];
  v47 = [dnsNames countByEnumeratingWithState:&v57 objects:v73 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = *v58;
    do
    {
      for (m = 0; m != v48; ++m)
      {
        if (*v58 != v49)
        {
          objc_enumerationMutation(dnsNames);
        }

        v51 = *(*(&v57 + 1) + 8 * m);
        dnsNames2 = [(_MRAVOutputDeviceDescriptorProtobuf *)v3 dnsNames];
        [dnsNames2 addObject:v51];
      }

      v48 = [dnsNames countByEnumeratingWithState:&v57 objects:v73 count:16];
    }

    while (v48);
  }

  if ([(MRAVOutputDevice *)self supportsConversationDetection])
  {
    [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setSupportsConversationDetection:1];
  }

  if ([(MRAVOutputDevice *)self isConversationDetectionEnabled])
  {
    [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setConversationDetectionEnabled:1];
  }

  alternateTransportType = [(MRAVOutputDevice *)self alternateTransportType];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setAlternateTransportType:alternateTransportType];

  [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setDeviceIsPlaying:[(MRAVOutputDevice *)self discoveredDeviceIsPlaying]];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setWasDiscoveredInCache:[(MRAVOutputDevice *)self wasDiscoveredInCache]];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setRepresentsUGLSender:[(MRAVOutputDevice *)self representsUGLSender]];

  v54 = *MEMORY[0x1E69E9840];

  return v3;
}

- (NSString)groupID
{
  if ([(MRAVOutputDevice *)self supportsMultiplayer])
  {
    parentGroupIdentifier = [(MRAVOutputDevice *)self parentGroupIdentifier];
    if ([parentGroupIdentifier length])
    {
      goto LABEL_5;
    }
  }

  parentGroupIdentifier = [(MRAVOutputDevice *)self airPlayGroupID];
LABEL_5:

  return parentGroupIdentifier;
}

- (BOOL)shouldBeLocallyHosted
{
  v3 = +[MRUserSettings currentSettings];
  if ([v3 canHostMultiplayerStream] && -[MRAVOutputDevice isAuxiliary](self, "isAuxiliary"))
  {
    if (self)
    {
      v4 = ![(MRAVOutputDevice *)self canRelayCommunicationChannel];
    }

    else
    {
      LOBYTE(v4) = 1;
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

+ (id)localDeviceLocalizedName
{
  if (MSVDeviceIsAppleTV())
  {
    v2 = MRCopyDeviceName();
  }

  else
  {
    if (localDeviceLocalizedName___once != -1)
    {
      +[MRAVOutputDevice localDeviceLocalizedName];
    }

    v2 = localDeviceLocalizedName___localizedModelName;
  }

  return v2;
}

void __44__MRAVOutputDevice_localDeviceLocalizedName__block_invoke()
{
  v0 = MSVCopyLocalizedModelName();
  v1 = localDeviceLocalizedName___localizedModelName;
  localDeviceLocalizedName___localizedModelName = v0;
}

- (id)description
{
  v85 = MEMORY[0x1E696AEC0];
  v84 = objc_opt_class();
  isLocalDevice = [(MRAVOutputDevice *)self isLocalDevice];
  v4 = " ";
  if (isLocalDevice)
  {
    v4 = "(local) ";
  }

  v82 = v4;
  name = [(MRAVOutputDevice *)self name];
  v83 = [(MRAVOutputDevice *)self uid];
  supportsMultiplayer = [(MRAVOutputDevice *)self supportsMultiplayer];
  v7 = MEMORY[0x1E696AEC0];
  if (supportsMultiplayer)
  {
    airPlayGroupID = [(MRAVOutputDevice *)self airPlayGroupID];
    [v7 stringWithFormat:@"airplay_group_id=%@", airPlayGroupID];
  }

  else
  {
    airPlayGroupID = [(MRAVOutputDevice *)self groupID];
    [v7 stringWithFormat:@"group_id=%@", airPlayGroupID];
  }
  v8 = ;
  parentGroupIdentifier = [(MRAVOutputDevice *)self parentGroupIdentifier];
  if (parentGroupIdentifier)
  {
    parentGroupIdentifier2 = [OUTLINED_FUNCTION_3_3() parentGroupIdentifier];
    v9 = [v7 stringWithFormat:@"parent_group_id=%@ ", parentGroupIdentifier2];
  }

  else
  {
    v9 = &stru_1F1513E38;
  }

  bluetoothID = [(MRAVOutputDevice *)self bluetoothID];
  logicalDeviceID = [(MRAVOutputDevice *)self logicalDeviceID];
  if (logicalDeviceID)
  {
    logicalDeviceID2 = [OUTLINED_FUNCTION_3_3() logicalDeviceID];
    v91 = [v7 stringWithFormat:@" logical_id=%@", logicalDeviceID2];
  }

  else
  {
    v91 = &stru_1F1513E38;
  }

  v93 = MRAVOutputDeviceTypeCopyDescription([(MRAVOutputDevice *)self deviceType]);
  v92 = MRAVOutputDeviceSubtypeCopyDescription([(MRAVOutputDevice *)self deviceSubtype]);
  clusterComposition = [(MRAVOutputDevice *)self clusterComposition];
  if (clusterComposition)
  {
    clusterCompositionDescription = [(MRAVOutputDevice *)self clusterCompositionDescription];
  }

  else
  {
    clusterCompositionDescription = &stru_1F1513E38;
  }

  v11 = [(MRAVOutputDevice *)self clusterType]- 1;
  v87 = v8;
  if (v11 > 2)
  {
    v12 = @"None";
  }

  else
  {
    v12 = off_1E769BAE8[v11];
  }

  v78 = v12;
  [(MRAVOutputDevice *)self canAccessRemoteAssets];
  OUTLINED_FUNCTION_0_5();
  v77 = v13;
  [(MRAVOutputDevice *)self isRemoteControllable];
  OUTLINED_FUNCTION_0_5();
  v76 = v14;
  [(MRAVOutputDevice *)self canRelayCommunicationChannel];
  OUTLINED_FUNCTION_0_5();
  v75 = v15;
  [(MRAVOutputDevice *)self supportsBufferedAirPlay];
  OUTLINED_FUNCTION_0_5();
  v74 = v16;
  [(MRAVOutputDevice *)self isGroupable];
  OUTLINED_FUNCTION_0_5();
  v73 = v17;
  [(MRAVOutputDevice *)self isDeviceGroupable];
  OUTLINED_FUNCTION_0_5();
  v72 = v18;
  [(MRAVOutputDevice *)self isGroupLeader];
  OUTLINED_FUNCTION_0_5();
  v71 = v19;
  [(MRAVOutputDevice *)self isClusterLeader];
  OUTLINED_FUNCTION_0_5();
  v70 = v20;
  [(MRAVOutputDevice *)self groupContainsGroupLeader];
  OUTLINED_FUNCTION_0_5();
  v69 = v21;
  [(MRAVOutputDevice *)self isAirPlayReceiverSessionActive];
  OUTLINED_FUNCTION_0_5();
  v68 = v22;
  [(MRAVOutputDevice *)self parentGroupContainsDiscoverableLeader];
  OUTLINED_FUNCTION_0_5();
  v66 = v23;
  [(MRAVOutputDevice *)self isProxyGroupPlayer];
  OUTLINED_FUNCTION_0_5();
  v65 = v24;
  [(MRAVOutputDevice *)self canAccessAppleMusic];
  OUTLINED_FUNCTION_0_5();
  v64 = v25;
  [(MRAVOutputDevice *)self canAccessiCloudMusicLibrary];
  OUTLINED_FUNCTION_0_5();
  v63 = v26;
  [(MRAVOutputDevice *)self canPlayEncryptedProgressiveDownloadAssets];
  OUTLINED_FUNCTION_0_5();
  v62 = v27;
  [(MRAVOutputDevice *)self canFetchMediaDataFromSender];
  OUTLINED_FUNCTION_0_5();
  v61 = v28;
  [(MRAVOutputDevice *)self presentsOptimizedUserInterfaceWhenPlayingFetchedAudioOnlyAssets];
  OUTLINED_FUNCTION_0_5();
  v60 = v29;
  [(MRAVOutputDevice *)self isAddedToHomeKit];
  OUTLINED_FUNCTION_0_5();
  v59 = v30;
  [(MRAVOutputDevice *)self modelID];
  v67 = v31 = &stru_1F1513E38;
  if (v67)
  {
    modelID = [OUTLINED_FUNCTION_3_3() modelID];
    v89 = [v7 stringWithFormat:@" %@", modelID];
  }

  else
  {
    v89 = &stru_1F1513E38;
  }

  [(MRAVOutputDevice *)self supportsBluetoothSharing];
  OUTLINED_FUNCTION_0_5();
  v58 = v32;
  [(MRAVOutputDevice *)self isUsingJSONProtocol];
  OUTLINED_FUNCTION_0_5();
  v57 = v33;
  [(MRAVOutputDevice *)self supportsHAP];
  OUTLINED_FUNCTION_0_5();
  v56 = v34;
  [(MRAVOutputDevice *)self supportsMultiplayer];
  OUTLINED_FUNCTION_0_5();
  v55 = v35;
  batteryDescription = [(MRAVOutputDevice *)self batteryDescription];
  v37 = batteryDescription;
  if (batteryDescription)
  {
    v38 = batteryDescription;
  }

  else
  {
    v38 = &stru_1F1513E38;
  }

  v54 = v38;
  if ([(MRAVOutputDevice *)self transportType])
  {
    transportType = [(MRAVOutputDevice *)self transportType];
    if (transportType > 8)
    {
      v31 = @"Unknown";
    }

    else
    {
      v31 = off_1E769BB00[transportType];
    }
  }

  alternateTransportType = [(MRAVOutputDevice *)self alternateTransportType];
  v41 = alternateTransportType;
  v81 = v9;
  if (alternateTransportType == *MEMORY[0x1E6958718])
  {
    v43 = 1;
    v42 = &stru_1F1513E38;
  }

  else if ([alternateTransportType isEqual:?])
  {
    v42 = &stru_1F1513E38;
    v43 = 1;
  }

  else
  {
    alternateTransportType2 = [OUTLINED_FUNCTION_3_3() alternateTransportType];
    v42 = [v7 stringWithFormat:@" %@", alternateTransportType2];
    v43 = 0;
  }

  if ([(MRAVOutputDevice *)self discoveredOnSameInfra])
  {
    v44 = @" infra";
  }

  else
  {
    v44 = &stru_1F1513E38;
  }

  if ([(MRAVOutputDevice *)self wasDiscoveredInCache])
  {
    v45 = @" cached";
  }

  else
  {
    v45 = &stru_1F1513E38;
  }

  representsUGLSender = [(MRAVOutputDevice *)self representsUGLSender];
  v47 = @" UGL-sender";
  if (!representsUGLSender)
  {
    v47 = &stru_1F1513E38;
  }

  v48 = [v85 stringWithFormat:@"<%@:%p %s%@ uid=%@ %@ %@bluetooth_id=%@%@ type=%@ subtype=%@%@ clusterType=%@%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%@%s%s%s%s%@ %@%@%@%@%@>", v84, self, v82, name, v83, v87, v81, bluetoothID, v91, v93, v92, clusterCompositionDescription, v78, v77, v76, v75, v74, v73, v72, v71, v70, v69, v68, v66, v65, v64, v63, v62, v61, v60, v59, v89, v58, v57, v56, v55, v54, v31, v42, v44, v45, v47];
  if ((v43 & 1) == 0)
  {
  }

  if (v67)
  {
  }

  if (clusterComposition)
  {
  }

  if (logicalDeviceID)
  {
  }

  if (parentGroupIdentifier)
  {
  }

  return v48;
}

- (id)batteryDescription
{
  selfCopy = self;
  if (self)
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ([selfCopy hasBatteryLevel])
    {
      v3 = MEMORY[0x1E696AEC0];
      [selfCopy batteryLevel];
      v5 = [v3 stringWithFormat:@"s:%.2f", OUTLINED_FUNCTION_2_1(v4)];
      [v2 addObject:v5];
    }

    modelSpecificInfo = [selfCopy modelSpecificInfo];
    v7 = *MEMORY[0x1E6958700];
    v8 = [modelSpecificInfo objectForKeyedSubscript:*MEMORY[0x1E6958700]];

    if (v8)
    {
      v9 = MEMORY[0x1E696AEC0];
      modelSpecificInfo2 = [selfCopy modelSpecificInfo];
      v11 = [modelSpecificInfo2 objectForKeyedSubscript:v7];
      [v11 floatValue];
      v13 = [v9 stringWithFormat:@"c:%.2f", OUTLINED_FUNCTION_2_1(v12)];
      OUTLINED_FUNCTION_1_2(v13);
    }

    modelSpecificInfo3 = [selfCopy modelSpecificInfo];
    v15 = *MEMORY[0x1E6958708];
    v16 = [modelSpecificInfo3 objectForKeyedSubscript:*MEMORY[0x1E6958708]];

    if (v16)
    {
      v17 = MEMORY[0x1E696AEC0];
      modelSpecificInfo4 = [selfCopy modelSpecificInfo];
      v19 = [modelSpecificInfo4 objectForKeyedSubscript:v15];
      [v19 floatValue];
      v21 = [v17 stringWithFormat:@"l:%.2f", OUTLINED_FUNCTION_2_1(v20)];
      OUTLINED_FUNCTION_1_2(v21);
    }

    modelSpecificInfo5 = [selfCopy modelSpecificInfo];
    v23 = *MEMORY[0x1E6958710];
    v24 = [modelSpecificInfo5 objectForKeyedSubscript:*MEMORY[0x1E6958710]];

    if (v24)
    {
      v25 = MEMORY[0x1E696AEC0];
      modelSpecificInfo6 = [selfCopy modelSpecificInfo];
      v27 = [modelSpecificInfo6 objectForKeyedSubscript:v23];
      [v27 floatValue];
      v29 = [v25 stringWithFormat:@"r:%.2f", OUTLINED_FUNCTION_2_1(v28)];
      OUTLINED_FUNCTION_1_2(v29);
    }

    if ([v2 count])
    {
      v30 = MEMORY[0x1E696AEC0];
      v31 = [v2 componentsJoinedByString:@"|"];
      selfCopy = [v30 stringWithFormat:@" (batt %@)", v31];
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (unint64_t)hash
{
  v2 = [(MRAVOutputDevice *)self uid];
  v3 = [v2 hash];

  return v3;
}

- (NSString)debugName
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(MRAVOutputDevice *)self uid];
  name = [(MRAVOutputDevice *)self name];
  v6 = [v3 initWithFormat:@"%@ (%@)", v4, name];

  return v6;
}

- (id)_clusterCompositionDescription
{
  if (self)
  {
    configuredClusterSize = [self configuredClusterSize];
    clusterComposition = [self clusterComposition];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __50__MRAVOutputDevice__clusterCompositionDescription__block_invoke;
    v10[3] = &unk_1E769BA80;
    v10[4] = self;
    v4 = [clusterComposition mr_map:v10];
    v5 = [v4 componentsJoinedByString:@"|"];

    clusterComposition2 = [self clusterComposition];
    v7 = [clusterComposition2 count];

    if (v7 != configuredClusterSize)
    {
      v8 = [v5 stringByAppendingFormat:@" * expected: %lu", configuredClusterSize];

      v5 = v8;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)clusterCompositionDescription
{
  if (self)
  {
    _clusterCompositionDescription = [(MRAVOutputDevice *)self _clusterCompositionDescription];
    _clusterRoomDescription = [(MRAVOutputDevice *)self _clusterRoomDescription];
    if ([_clusterRoomDescription length])
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@, rooms=<%@>)", _clusterCompositionDescription, _clusterRoomDescription];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@)", _clusterCompositionDescription, v6];
    }
    v4 = ;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id __50__MRAVOutputDevice__clusterCompositionDescription__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E696AEC0];
  v5 = MRAVOutputDeviceSubtypeCopyDescription([v3 deviceSubtype]);
  v6 = [v3 uid];
  v7 = [v4 stringWithFormat:@"%@-%@", v5, v6];

  v8 = [*(a1 + 32) primaryID];
  v9 = [v3 uid];
  LODWORD(v6) = [v8 isEqual:v9];

  if (v6)
  {
    v10 = [v7 stringByAppendingString:@"^"];

    v7 = v10;
  }

  if ([v3 isClusterLeader])
  {
    v11 = [v7 stringByAppendingString:@"$"];

    v7 = v11;
  }

  return v7;
}

- (id)_clusterRoomDescription
{
  if (self)
  {
    roomOutputDevices = [self roomOutputDevices];
    v2 = [roomOutputDevices mr_map:&__block_literal_global_33];
    v3 = [v2 componentsJoinedByString:@"|"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isHearingDevice
{
  v2 = [(MRAVOutputDevice *)self uid];
  v3 = [v2 containsString:@"-tlea"];

  return v3;
}

- (BOOL)isBeatsLegacyDevice
{
  modelID = [(MRAVOutputDevice *)self modelID];
  v3 = [modelID componentsSeparatedByString:{@", "}];

  if ([v3 count] >= 2)
  {
    firstObject = [v3 firstObject];
    v6 = firstObject;
    if (firstObject)
    {
      if ([firstObject containsString:@"10507"])
      {
        v4 = 1;
      }

      else
      {
        v4 = [v6 containsString:@"204"];
      }
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isAirpodsDevice
{
  modelID = [(MRAVOutputDevice *)self modelID];
  v3 = [MRCBProductInfo isAirPodsDeviceWithModelID:modelID];

  return v3;
}

- (BOOL)isB825Device
{
  modelID = [(MRAVOutputDevice *)self modelID];
  v3 = [modelID containsString:{@"76, 4363"}];

  return v3;
}

- (BOOL)isStudioDisplay
{
  modelID = [(MRAVOutputDevice *)self modelID];
  v3 = [modelID containsString:@"Studio Display Audio Control"];

  return v3;
}

- (NSArray)clusterCompositionOutputDevices
{
  clusterComposition = [(MRAVOutputDevice *)self clusterComposition];
  v3 = [clusterComposition msv_map:&__block_literal_global_251];

  return v3;
}

- (NSArray)allClusterMembersOutputDevices
{
  allClusterMembers = [(MRAVOutputDevice *)self allClusterMembers];
  v3 = [allClusterMembers msv_map:&__block_literal_global_253];

  return v3;
}

- (BOOL)isPrimaryLocalDevice
{
  primaryID = [(MRAVOutputDevice *)self primaryID];
  v3 = MRMediaRemoteCopyDeviceUID();
  v4 = [primaryID isEqualToString:v3];

  return v4;
}

- (NSString)baseGroupID
{
  airPlayGroupID = [(MRAVOutputDevice *)self airPlayGroupID];
  v3 = MRComputeBaseGroupID(airPlayGroupID);

  return v3;
}

- (BOOL)isAuxiliary
{
  v3 = +[MRUserSettings currentSettings];
  v4 = [v3 isMultiplayerAware] && -[MRAVOutputDevice deviceType](self, "deviceType") == 1 && (-[MRAVOutputDevice deviceSubtype](self, "deviceSubtype") == 1 || -[MRAVOutputDevice deviceSubtype](self, "deviceSubtype") == 0);

  return v4;
}

- (NSString)groupContextID
{
  groupID = [(MRAVOutputDevice *)self groupID];
  v3 = MRComputeGroupContextID(groupID);

  return v3;
}

- (NSString)baseParentGroupID
{
  parentGroupIdentifier = [(MRAVOutputDevice *)self parentGroupIdentifier];
  v3 = MRComputeBaseGroupID(parentGroupIdentifier);

  return v3;
}

MRAVDistantOutputDevice *__51__MRAVOutputDevice_clusterCompositionOutputDevices__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MRAVDistantOutputDevice alloc];
  v4 = [v2 descriptor];

  v5 = [(MRAVDistantOutputDevice *)v3 initWithDescriptor:v4];

  return v5;
}

- (void)setVolume:(float)volume details:(id)details
{
  detailsCopy = details;
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRAVOutputDevice setVolume:details:]"];
  v8 = [v5 exceptionWithName:v6 reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (void)adjustVolume:(int64_t)volume details:(id)details
{
  detailsCopy = details;
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRAVOutputDevice adjustVolume:details:]"];
  v8 = [v5 exceptionWithName:v6 reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (void)setVolumeMuted:(BOOL)muted details:(id)details
{
  detailsCopy = details;
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRAVOutputDevice setVolumeMuted:details:]"];
  v8 = [v5 exceptionWithName:v6 reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (float)volume
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRAVOutputDevice volume]"];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (BOOL)isVolumeMuted
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRAVOutputDevice isVolumeMuted]"];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (unsigned)volumeCapabilities
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRAVOutputDevice volumeCapabilities]"];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (BOOL)discoveredDeviceIsPlaying
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRAVOutputDevice discoveredDeviceIsPlaying]"];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (BOOL)wasDiscoveredInCache
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRAVOutputDevice wasDiscoveredInCache]"];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (BOOL)isAirpodsMaxDevice
{
  modelID = [(MRAVOutputDevice *)self modelID];
  if ([MRCBProductInfo isAirPodsMaxDeviceWithModelID:modelID])
  {
    v4 = 1;
  }

  else
  {
    modelID2 = [(MRAVOutputDevice *)self modelID];
    uppercaseString = [modelID2 uppercaseString];
    v4 = [uppercaseString containsString:@"05AC:110C"];
  }

  return v4;
}

- (BOOL)belongsToLocalCluster
{
  clusterID = [(MRAVOutputDevice *)self clusterID];
  v3 = +[MRDeviceInfoRequest localDeviceInfo];
  clusterID2 = [v3 clusterID];
  v5 = [clusterID isEqual:clusterID2];

  return v5;
}

- (BOOL)isLocalDeviceOrBelongsToLocalCluster
{
  if ([(MRAVOutputDevice *)self isLocalDevice])
  {
    return 1;
  }

  return [(MRAVOutputDevice *)self belongsToLocalCluster];
}

- (BOOL)isHomePodMiniDevice
{
  modelID = [(MRAVOutputDevice *)self modelID];
  v3 = [modelID containsString:{@"AudioAccessory5, "}];

  return v3;
}

- (BOOL)isB238Device
{
  modelID = [(MRAVOutputDevice *)self modelID];
  v3 = [modelID containsString:{@"AudioAccessory1, "}];

  return v3;
}

- (BOOL)isB620Device
{
  modelID = [(MRAVOutputDevice *)self modelID];
  v3 = [modelID containsString:{@"AudioAccessory6, "}];

  return v3;
}

- (BOOL)isW3Device
{
  modelID = [(MRAVOutputDevice *)self modelID];
  v3 = [MRCBProductInfo isW3DeviceWithModelID:modelID];

  return v3;
}

- (BOOL)isSystemCaptureDevice
{
  v2 = [(MRAVOutputDevice *)self uid];
  v3 = [v2 isEqualToString:@"Valeria"];

  return v3;
}

- (void)setCarPlayVideoActive:(BOOL)active completion:(id)completion
{
  if (completion)
  {
    v5 = MEMORY[0x1E696ABC0];
    completionCopy = completion;
    v7 = [v5 alloc];
    v8 = MEMORY[0x1E696AEC0];
    v9 = objc_opt_class();
    v12 = NSStringFromClass(v9);
    v10 = [v8 stringWithFormat:@"Operation not implemented in %@", v12];
    v11 = [v7 initWithMRError:6 description:v10];
    (*(completion + 2))(completionCopy, v11);
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (self == v5)
    {
      v10 = 1;
    }

    else
    {
      v6 = [(MRAVOutputDevice *)self uid];
      if (v6)
      {
        v7 = [(MRAVOutputDevice *)v5 uid];
        if (v7)
        {
          v8 = [(MRAVOutputDevice *)self uid];
          v9 = [(MRAVOutputDevice *)v5 uid];
          v10 = [v8 isEqualToString:v9];
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)isEqualToOutputDevice:(id)device denyList:(id)list addedProperties:(id *)properties removedProperties:(id *)removedProperties changedProperties:(id *)changedProperties
{
  deviceCopy = device;
  listCopy = list;
  if ([(MRAVOutputDevice *)self isEqual:deviceCopy])
  {
    v14 = [listCopy count];
    descriptor = [(MRAVOutputDevice *)self descriptor];
    v16 = descriptor;
    if (changedProperties || removedProperties || properties || v14)
    {
      dictionaryRepresentation = [descriptor dictionaryRepresentation];
      v20 = [dictionaryRepresentation mutableCopy];

      descriptor2 = [deviceCopy descriptor];
      dictionaryRepresentation2 = [descriptor2 dictionaryRepresentation];
      v23 = [dictionaryRepresentation2 mutableCopy];

      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __103__MRAVOutputDevice_isEqualToOutputDevice_denyList_addedProperties_removedProperties_changedProperties___block_invoke;
      v38[3] = &unk_1E769BAC8;
      v39 = listCopy;
      v24 = MEMORY[0x1A58E3570](v38);
      (v24)[2](v24, v20);
      (v24)[2](v24, v23);
      v36 = 0;
      v37 = 0;
      v34 = v20;
      v35 = 0;
      MRDictionaryCalculateDeltas(v20, v23, &v37, &v36, &v35);
      v25 = v37;
      v26 = v36;
      v27 = v35;
      if (properties)
      {
        v28 = v25;
        *properties = v25;
      }

      if (removedProperties)
      {
        v29 = v26;
        *removedProperties = v26;
      }

      if (changedProperties)
      {
        v30 = v27;
        *changedProperties = v27;
      }

      v31 = [v25 count];
      v32 = [v26 count] + v31;
      v18 = v32 + [v27 count] == 0;
    }

    else
    {
      descriptor3 = [deviceCopy descriptor];
      v18 = [v16 isEqual:descriptor3];
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

void __103__MRAVOutputDevice_isEqualToOutputDevice_denyList_addedProperties_removedProperties_changedProperties___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 setObject:0 forKeyedSubscript:{*(*(&v10 + 1) + 8 * v8++), v10}];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)isEqualFuzzy:(id)fuzzy
{
  fuzzyCopy = fuzzy;
  selfCopy = self;
  v6 = fuzzyCopy;
  clusterType = [(MRAVOutputDevice *)selfCopy clusterType];
  if (clusterType == [v6 clusterType])
  {
    configuredClusterSize = [(MRAVOutputDevice *)selfCopy configuredClusterSize];
    v9 = configuredClusterSize == [v6 configuredClusterSize];
  }

  else
  {
    v9 = 0;
  }

  v10 = [(MRAVOutputDevice *)selfCopy uid];
  v11 = [v6 uid];
  v12 = [v10 isEqual:v11];

  v13 = [(MRAVOutputDevice *)selfCopy uid];
  if ([v13 length])
  {

LABEL_10:
    v17 = 0;
    goto LABEL_11;
  }

  v14 = [v6 uid];
  v15 = [v14 length];

  if (v15 || ![v6 isLocalDevice] || !-[MRAVOutputDevice isLocalDevice](selfCopy, "isLocalDevice"))
  {
    goto LABEL_10;
  }

  deviceType = [(MRAVOutputDevice *)selfCopy deviceType];
  v17 = deviceType == [v6 deviceType];
LABEL_11:
  v18 = v12 & v9 | v17;

  return v18 & 1;
}

- (id)mergingVolumeFrom:(id)from
{
  fromCopy = from;
  descriptor = [(MRAVOutputDevice *)self descriptor];
  __38__MRAVOutputDevice_mergingVolumeFrom___block_invoke(descriptor, descriptor, fromCopy);

  v6 = [[MRAVDistantOutputDevice alloc] initWithDescriptor:descriptor];

  return v6;
}

void __38__MRAVOutputDevice_mergingVolumeFrom___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  if (([v5 hasVolume] & 1) == 0)
  {
    [v4 volume];
    [v5 setVolume:?];
  }

  if (([v5 hasVolumeCapabilities] & 1) == 0)
  {
    [v5 setVolumeCapabilities:{objc_msgSend(v4, "volumeCapabilities")}];
  }

  if (([v5 hasVolumeMuted] & 1) == 0)
  {
    [v5 setVolumeMuted:{objc_msgSend(v4, "isVolumeMuted")}];
  }
}

- (MRAVDistantOutputDevice)distantOutputDeviceRepresentation
{
  v3 = [MRAVDistantOutputDevice alloc];
  descriptor = [(MRAVOutputDevice *)self descriptor];
  v5 = [(MRAVDistantOutputDevice *)v3 initWithDescriptor:descriptor];

  return v5;
}

- (NSString)capabilitiesDescription
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:7];
  if ([(MRAVOutputDevice *)self isGroupable])
  {
    [v3 addObject:@"groupable"];
  }

  if ([(MRAVOutputDevice *)self groupContainsGroupLeader])
  {
    [v3 addObject:@"discoverable-leader"];
  }

  if ([(MRAVOutputDevice *)self isRemoteControllable])
  {
    [v3 addObject:@"remote-controllable"];
  }

  if ([(MRAVOutputDevice *)self canRelayCommunicationChannel])
  {
    [v3 addObject:@"relayable"];
  }

  if ([(MRAVOutputDevice *)self canAccessAppleMusic])
  {
    [v3 addObject:@"music"];
  }

  if ([(MRAVOutputDevice *)self canAccessiCloudMusicLibrary])
  {
    [v3 addObject:@"iCML"];
  }

  if ([(MRAVOutputDevice *)self canAccessRemoteAssets])
  {
    [v3 addObject:@"remote-assets"];
  }

  if ([(MRAVOutputDevice *)self parentGroupContainsDiscoverableLeader])
  {
    [v3 addObject:@"discoverable-parent-leader"];
  }

  bluetoothID = [(MRAVOutputDevice *)self bluetoothID];

  if (bluetoothID)
  {
    [v3 addObject:@"bt-ad"];
  }

  if ([(MRAVOutputDevice *)self supportsBluetoothSharing])
  {
    [v3 addObject:@"bt-share"];
  }

  if ([(MRAVOutputDevice *)self supportsHAP])
  {
    [v3 addObject:@"HAP"];
  }

  if ([(MRAVOutputDevice *)self isUsingJSONProtocol])
  {
    [v3 addObject:@"JSON"];
  }

  if ([(MRAVOutputDevice *)self supportsMultiplayer])
  {
    [v3 addObject:@"multiplayer"];
  }

  transportType = [(MRAVOutputDevice *)self transportType];
  if (transportType > 8)
  {
    v6 = @"Unknown";
  }

  else
  {
    v6 = off_1E769BB00[transportType];
  }

  [v3 addObject:v6];
  if ([(MRAVOutputDevice *)self discoveredDeviceIsPlaying])
  {
    [v3 addObject:@"discoveredDeviceIsPlaying"];
  }

  if ([(MRAVOutputDevice *)self wasDiscoveredInCache])
  {
    [v3 addObject:@"wasDiscoveredInCache"];
  }

  if ([(MRAVOutputDevice *)self representsUGLSender])
  {
    [v3 addObject:@"representsUGLSender"];
  }

  v7 = [v3 componentsJoinedByString:@" "];

  return v7;
}

- (NSString)composedTypeDescription
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
  if (-[MRAVOutputDevice deviceType](self, "deviceType") == 2 && (-[MRAVOutputDevice modelID](self, "modelID"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 length], v4, v5))
  {
    modelID = [(MRAVOutputDevice *)self modelID];
  }

  else
  {
    v7 = MRAVOutputDeviceTypeCopyDescription([(MRAVOutputDevice *)self deviceType]);
    [v3 addObject:v7];

    if ([(MRAVOutputDevice *)self deviceType]== 1 && [(MRAVOutputDevice *)self supportsBufferedAirPlay])
    {
      [v3 addObject:@"2"];
    }

    modelID = MRAVOutputDeviceSubtypeCopyDescription([(MRAVOutputDevice *)self deviceSubtype]);
  }

  v8 = modelID;
  [v3 addObject:modelID];

  v9 = [v3 componentsJoinedByString:@" "];

  return v9;
}

- (NSString)roleDescription
{
  if ([(MRAVOutputDevice *)self isProxyGroupPlayer])
  {
    return @"proxy";
  }

  if ([(MRAVOutputDevice *)self isGroupLeader])
  {
    return @"leader";
  }

  if ([(MRAVOutputDevice *)self isAirPlayReceiverSessionActive])
  {
    return @"receiver";
  }

  return @"none";
}

- (NSDictionary)jsonEncodableDictionaryRepresentation
{
  v46[25] = *MEMORY[0x1E69E9840];
  v45[0] = @"name";
  name = [(MRAVOutputDevice *)self name];
  v44 = name;
  if (name)
  {
    v4 = name;
  }

  else
  {
    v4 = &stru_1F1513E38;
  }

  v46[0] = v4;
  v45[1] = @"uid";
  v5 = [(MRAVOutputDevice *)self uid];
  v43 = v5;
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = &stru_1F1513E38;
  }

  v46[1] = v6;
  v45[2] = @"group-id";
  groupID = [(MRAVOutputDevice *)self groupID];
  v42 = groupID;
  if (groupID)
  {
    v8 = groupID;
  }

  else
  {
    v8 = &stru_1F1513E38;
  }

  v46[2] = v8;
  v45[3] = @"type";
  v9 = MRAVOutputDeviceTypeCopyDescription([(MRAVOutputDevice *)self deviceType]);
  v41 = v9;
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = &stru_1F1513E38;
  }

  v46[3] = v10;
  v45[4] = @"subtype";
  v11 = MRAVOutputDeviceSubtypeCopyDescription([(MRAVOutputDevice *)self deviceSubtype]);
  v40 = v11;
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = &stru_1F1513E38;
  }

  v46[4] = v12;
  v45[5] = @"buffered-airplay";
  v39 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRAVOutputDevice supportsBufferedAirPlay](self, "supportsBufferedAirPlay")}];
  v46[5] = v39;
  v45[6] = @"group-leader";
  v38 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRAVOutputDevice isGroupLeader](self, "isGroupLeader")}];
  v46[6] = v38;
  v45[7] = @"remote-assets";
  v37 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRAVOutputDevice canAccessRemoteAssets](self, "canAccessRemoteAssets")}];
  v46[7] = v37;
  v45[8] = @"remote-controllable";
  v36 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRAVOutputDevice isRemoteControllable](self, "isRemoteControllable")}];
  v46[8] = v36;
  v45[9] = @"relayable";
  v35 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRAVOutputDevice canRelayCommunicationChannel](self, "canRelayCommunicationChannel")}];
  v46[9] = v35;
  v45[10] = @"groupable";
  v34 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRAVOutputDevice isGroupable](self, "isGroupable")}];
  v46[10] = v34;
  v45[11] = @"discoverable-leader";
  v33 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRAVOutputDevice groupContainsGroupLeader](self, "groupContainsGroupLeader")}];
  v46[11] = v33;
  v45[12] = @"airplay-receiving";
  v32 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRAVOutputDevice isAirPlayReceiverSessionActive](self, "isAirPlayReceiverSessionActive")}];
  v46[12] = v32;
  v45[13] = @"parent-group-id";
  parentGroupIdentifier = [(MRAVOutputDevice *)self parentGroupIdentifier];
  v14 = parentGroupIdentifier;
  if (parentGroupIdentifier)
  {
    v15 = parentGroupIdentifier;
  }

  else
  {
    v15 = &stru_1F1513E38;
  }

  v46[13] = v15;
  v45[14] = @"parent-group-discoverable-leader";
  v31 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRAVOutputDevice parentGroupContainsDiscoverableLeader](self, "parentGroupContainsDiscoverableLeader")}];
  v46[14] = v31;
  v45[15] = @"proxy";
  v30 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRAVOutputDevice isProxyGroupPlayer](self, "isProxyGroupPlayer")}];
  v46[15] = v30;
  v45[16] = @"music";
  v29 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRAVOutputDevice canAccessAppleMusic](self, "canAccessAppleMusic")}];
  v46[16] = v29;
  v45[17] = @"iCML";
  v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRAVOutputDevice canAccessiCloudMusicLibrary](self, "canAccessiCloudMusicLibrary")}];
  v46[17] = v16;
  v45[18] = @"is-added-to-home-kit";
  v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRAVOutputDevice isAddedToHomeKit](self, "isAddedToHomeKit")}];
  v46[18] = v17;
  v45[19] = @"bluetoothID";
  bluetoothID = [(MRAVOutputDevice *)self bluetoothID];
  v19 = bluetoothID;
  if (bluetoothID)
  {
    v20 = bluetoothID;
  }

  else
  {
    v20 = &stru_1F1513E38;
  }

  v46[19] = v20;
  v45[20] = @"supportsHAP";
  v21 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRAVOutputDevice supportsHAP](self, "supportsHAP")}];
  v46[20] = v21;
  v45[21] = @"modelID";
  modelID = [(MRAVOutputDevice *)self modelID];
  v46[21] = modelID;
  v45[22] = @"discoveredDeviceIsPlaying";
  v23 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRAVOutputDevice discoveredDeviceIsPlaying](self, "discoveredDeviceIsPlaying")}];
  v46[22] = v23;
  v45[23] = @"wasDiscoveredInCache";
  v24 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRAVOutputDevice wasDiscoveredInCache](self, "wasDiscoveredInCache")}];
  v46[23] = v24;
  v45[24] = @"representsUGLSender";
  v25 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRAVOutputDevice representsUGLSender](self, "representsUGLSender")}];
  v46[24] = v25;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:25];

  v27 = *MEMORY[0x1E69E9840];

  return v26;
}

- (BOOL)canProxyEndpoint
{
  supportsRapportRemoteControlTransport = [(MRAVOutputDevice *)self supportsRapportRemoteControlTransport];
  if (supportsRapportRemoteControlTransport)
  {
    LOBYTE(supportsRapportRemoteControlTransport) = [(MRAVOutputDevice *)self deviceSubtype]== 12;
  }

  return supportsRapportRemoteControlTransport;
}

- (BOOL)containsUID:(id)d
{
  dCopy = d;
  v5 = [(MRAVOutputDevice *)self uid];
  if ([v5 isEqualToString:dCopy])
  {
    v6 = 1;
  }

  else
  {
    primaryID = [(MRAVOutputDevice *)self primaryID];
    if ([primaryID isEqualToString:dCopy])
    {
      v6 = 1;
    }

    else
    {
      allClusterMembers = [(MRAVOutputDevice *)self allClusterMembers];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __32__MRAVOutputDevice_containsUID___block_invoke;
      v18[3] = &unk_1E769A150;
      v9 = dCopy;
      v19 = v9;
      if ([allClusterMembers mr_any:v18])
      {
        v6 = 1;
      }

      else
      {
        clusterComposition = [(MRAVOutputDevice *)self clusterComposition];
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __32__MRAVOutputDevice_containsUID___block_invoke_2;
        v16[3] = &unk_1E769A150;
        v11 = v9;
        v17 = v11;
        if ([clusterComposition mr_any:v16])
        {
          v6 = 1;
        }

        else
        {
          allClusterMembers2 = [(MRAVOutputDevice *)self allClusterMembers];
          v14[0] = MEMORY[0x1E69E9820];
          v14[1] = 3221225472;
          v14[2] = __32__MRAVOutputDevice_containsUID___block_invoke_3;
          v14[3] = &unk_1E769A150;
          v15 = v11;
          v6 = [allClusterMembers2 mr_any:v14];
        }
      }
    }
  }

  return v6;
}

- (id)effectiveOutputDeviceForUID:(id)d
{
  v33 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  rooms = [(MRAVOutputDevice *)self rooms];
  v6 = [rooms countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v28 != v8)
      {
        objc_enumerationMutation(rooms);
      }

      v10 = *(*(&v27 + 1) + 8 * v9);
      v11 = [v10 uid];
      v12 = [v11 isEqual:dCopy];

      if (v12)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [rooms countByEnumeratingWithState:&v27 objects:v32 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    rooms = [(MRAVOutputDevice *)self activatedClusterMembersOutputDevices];
    v13 = [rooms countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (!v13)
    {
LABEL_17:

      if ([(MRAVOutputDevice *)self containsUID:dCopy])
      {
        selfCopy = self;
      }

      else
      {
        selfCopy = 0;
      }

      v20 = selfCopy;
      goto LABEL_22;
    }

    v14 = v13;
    v15 = *v24;
LABEL_11:
    v16 = 0;
    while (1)
    {
      if (*v24 != v15)
      {
        objc_enumerationMutation(rooms);
      }

      v10 = *(*(&v23 + 1) + 8 * v16);
      v17 = [v10 uid];
      v18 = [v17 isEqual:dCopy];

      if (v18)
      {
        break;
      }

      if (v14 == ++v16)
      {
        v14 = [rooms countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v14)
        {
          goto LABEL_11;
        }

        goto LABEL_17;
      }
    }
  }

  v20 = v10;

LABEL_22:
  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (NSString)clusterMemberID
{
  groupID = [(MRAVOutputDevice *)self groupID];
  v3 = MRComputeClusterMemberID(groupID);

  return v3;
}

- (BOOL)isEligibleForWHAPlayback
{
  isGroupable = [(MRAVOutputDevice *)self isGroupable];
  if (isGroupable)
  {
    if ([(MRAVOutputDevice *)self deviceType]== 1)
    {
      if (!self || (isGroupable = [(MRAVOutputDevice *)self deviceSubtype], isGroupable > 0xF) || (v4 = isGroupable, LOBYTE(isGroupable) = 1, ((1 << v4) & 0xB000) == 0))
      {

        LOBYTE(isGroupable) = [(MRAVOutputDevice *)self isAuxiliary];
      }
    }

    else
    {
      LOBYTE(isGroupable) = 0;
    }
  }

  return isGroupable;
}

- (BOOL)isNearby
{
  v3 = +[MRUserSettings currentSettings];
  supportRouteRecommendations = [v3 supportRouteRecommendations];

  if (!supportRouteRecommendations)
  {
    return 0;
  }

  recommendation = [(MRAVOutputDevice *)self recommendation];

  if (!recommendation)
  {
    return 0;
  }

  recommendation2 = [(MRAVOutputDevice *)self recommendation];
  v7 = ([recommendation2 classification] - 2) < 3;

  return v7;
}

- (BOOL)isKnown
{
  v3 = +[MRUserSettings currentSettings];
  supportRouteRecommendations = [v3 supportRouteRecommendations];

  if ((supportRouteRecommendations & 1) != 0 && ([(MRAVOutputDevice *)self recommendation], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    recommendation = [(MRAVOutputDevice *)self recommendation];
    v7 = [recommendation classification] != 1;

    return v7;
  }

  else
  {

    return [(MRAVOutputDevice *)self discoveredOnSameInfra];
  }
}

MRAVDistantOutputDevice *__50__MRAVOutputDevice_allClusterMembersOutputDevices__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MRAVDistantOutputDevice alloc];
  v4 = [v2 descriptor];

  v5 = [(MRAVDistantOutputDevice *)v3 initWithDescriptor:v4];

  return v5;
}

- (BOOL)isMultiRoom
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  roomID = [(MRAVOutputDevice *)self roomID];

  if (roomID)
  {
    roomID2 = [(MRAVOutputDevice *)self roomID];
    [v3 addObject:roomID2];
  }

  activatedClusterMembersOutputDevices = [(MRAVOutputDevice *)self activatedClusterMembersOutputDevices];
  v7 = [activatedClusterMembersOutputDevices msv_compactMap:&__block_literal_global_257];
  [v3 addObjectsFromArray:v7];

  LOBYTE(activatedClusterMembersOutputDevices) = [v3 count] > 1;
  return activatedClusterMembersOutputDevices;
}

- (MRRouteRecommendation)recommendation
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_recommendation;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setRecommendation:(id)recommendation
{
  recommendationCopy = recommendation;
  obj = self;
  objc_sync_enter(obj);
  recommendation = obj->_recommendation;
  obj->_recommendation = recommendationCopy;

  objc_sync_exit(obj);
}

- (MRAVOutputDevice)outputDeviceWithSourceInfoFrom:(id)from
{
  fromCopy = from;
  descriptor = [(MRAVOutputDevice *)self descriptor];
  descriptor2 = [fromCopy descriptor];

  sourceInfo = [descriptor2 sourceInfo];
  [descriptor setSourceInfo:sourceInfo];

  v8 = [[MRAVDistantOutputDevice alloc] initWithDescriptor:descriptor];

  return v8;
}

- (BOOL)hasPlaceholderName
{
  name = [(MRAVOutputDevice *)self name];
  v3 = [name isEqualToString:@"UGL iPhone"];

  return v3;
}

- (MRAVEndpoint)endpoint
{
  WeakRetained = objc_loadWeakRetained(&self->_endpoint);

  return WeakRetained;
}

- (BOOL)supportsMigration
{
  v3 = self && [(MRAVOutputDevice *)self canRelayCommunicationChannel]&& [(MRAVOutputDevice *)self groupContainsGroupLeader];
  if ([(MRAVOutputDevice *)self isGroupable])
  {
    deviceType = [(MRAVOutputDevice *)self deviceType];
    v5 = deviceType == 1 && v3;
    if (self && deviceType == 1)
    {
      deviceSubtype = [(MRAVOutputDevice *)self deviceSubtype];
      v8 = deviceSubtype == 15 || (deviceSubtype & 0xFFFFFFFE) == 12;
      return v8 || v3;
    }
  }

  else
  {
    return 0;
  }

  return v5;
}

@end