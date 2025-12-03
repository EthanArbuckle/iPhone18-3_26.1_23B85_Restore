@interface _MRAVOutputDeviceDescriptorProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsDeviceSubType:(id)type;
- (int)StringAsDeviceType:(id)type;
- (int)StringAsHostDeviceClass:(id)class;
- (int)StringAsTransportType:(id)type;
- (int)deviceSubType;
- (int)deviceType;
- (int)hostDeviceClass;
- (int)transportType;
- (unint64_t)hash;
- (void)addActivatedClusterMembers:(id)members;
- (void)addAllClusterMembers:(id)members;
- (void)addAvailableBluetoothListeningModes:(id)modes;
- (void)addClusterComposition:(id)composition;
- (void)addDnsNames:(id)names;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasAllowsHeadTrackedSpatialAudio:(BOOL)audio;
- (void)setHasCanAccessAppleMusic:(BOOL)music;
- (void)setHasCanAccessRemoteAssets:(BOOL)assets;
- (void)setHasCanAccessiCloudMusicLibrary:(BOOL)library;
- (void)setHasCanFetchMediaDataFromSender:(BOOL)sender;
- (void)setHasCanPlayEncryptedProgressiveDownloadAssets:(BOOL)assets;
- (void)setHasCanRelayCommunicationChannel:(BOOL)channel;
- (void)setHasClusterType:(BOOL)type;
- (void)setHasConfiguredClusterSize:(BOOL)size;
- (void)setHasConversationDetectionEnabled:(BOOL)enabled;
- (void)setHasDeviceIsPlaying:(BOOL)playing;
- (void)setHasDeviceSubType:(BOOL)type;
- (void)setHasDeviceType:(BOOL)type;
- (void)setHasDiscoveredOnSameInfra:(BOOL)infra;
- (void)setHasDistance:(BOOL)distance;
- (void)setHasEngageOnClusterActivate:(BOOL)activate;
- (void)setHasGroupContainsGroupLeader:(BOOL)leader;
- (void)setHasHostDeviceClass:(BOOL)class;
- (void)setHasIsAddedToHomeKit:(BOOL)kit;
- (void)setHasIsAirPlayReceiverSessionActive:(BOOL)active;
- (void)setHasIsAppleAccessory:(BOOL)accessory;
- (void)setHasIsClusterLeader:(BOOL)leader;
- (void)setHasIsDeviceGroupable:(BOOL)groupable;
- (void)setHasIsGroupLeader:(BOOL)leader;
- (void)setHasIsGroupable:(BOOL)groupable;
- (void)setHasIsHeadTrackedSpatialAudioActive:(BOOL)active;
- (void)setHasIsLocalDevice:(BOOL)device;
- (void)setHasIsPickedOnPairedDevice:(BOOL)device;
- (void)setHasIsProxyGroupPlayer:(BOOL)player;
- (void)setHasIsRemoteControllable:(BOOL)controllable;
- (void)setHasIsVolumeControlAvailable:(BOOL)available;
- (void)setHasParentGroupContainsDiscoverableLeader:(BOOL)leader;
- (void)setHasPickable:(BOOL)pickable;
- (void)setHasPresentsOptimizedUserInterfaceWhenPlayingFetchedAudioOnlyAssets:(BOOL)assets;
- (void)setHasProducesLowFidelityAudio:(BOOL)audio;
- (void)setHasRepresentsUGLSender:(BOOL)sender;
- (void)setHasRequiresAuthorization:(BOOL)authorization;
- (void)setHasShouldForceRemoteControlabillity:(BOOL)controlabillity;
- (void)setHasSupportsBluetoothSharing:(BOOL)sharing;
- (void)setHasSupportsBufferedAirPlay:(BOOL)play;
- (void)setHasSupportsConversationDetection:(BOOL)detection;
- (void)setHasSupportsExternalScreen:(BOOL)screen;
- (void)setHasSupportsHAP:(BOOL)p;
- (void)setHasSupportsHeadTrackedSpatialAudio:(BOOL)audio;
- (void)setHasSupportsMultiplayer:(BOOL)multiplayer;
- (void)setHasSupportsRapport:(BOOL)rapport;
- (void)setHasSupportsRapportRemoteControlTransport:(BOOL)transport;
- (void)setHasSupportsSharePlayHandoff:(BOOL)handoff;
- (void)setHasTransportType:(BOOL)type;
- (void)setHasUsingJSONProtocol:(BOOL)protocol;
- (void)setHasVolume:(BOOL)volume;
- (void)setHasVolumeCapabilities:(BOOL)capabilities;
- (void)setHasVolumeMuted:(BOOL)muted;
- (void)setHasWasDiscoveredInCache:(BOOL)cache;
- (void)writeTo:(id)to;
@end

@implementation _MRAVOutputDeviceDescriptorProtobuf

- (int)deviceType
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_deviceType;
  }

  else
  {
    return 0;
  }
}

- (int)deviceSubType
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_deviceSubType;
  }

  else
  {
    return 0;
  }
}

- (int)transportType
{
  if ((*&self->_has & 0x80) != 0)
  {
    return self->_transportType;
  }

  else
  {
    return 0;
  }
}

- (id)dictionaryRepresentation
{
  v146 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v5 = dictionary;
  name = self->_name;
  if (name)
  {
    [dictionary setObject:name forKey:@"name"];
  }

  uniqueIdentifier = self->_uniqueIdentifier;
  if (uniqueIdentifier)
  {
    [v5 setObject:uniqueIdentifier forKey:@"uniqueIdentifier"];
  }

  groupID = self->_groupID;
  if (groupID)
  {
    [v5 setObject:groupID forKey:@"groupID"];
  }

  modelID = self->_modelID;
  if (modelID)
  {
    [v5 setObject:modelID forKey:@"modelID"];
  }

  macAddress = self->_macAddress;
  if (macAddress)
  {
    [v5 setObject:macAddress forKey:@"macAddress"];
  }

  has = self->_has;
  if ((*&has & 0x1000) != 0)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:self->_canAccessRemoteAssets];
    [v5 setObject:v12 forKey:@"canAccessRemoteAssets"];

    has = self->_has;
    if ((*&has & 0x200000000) == 0)
    {
LABEL_13:
      if ((*&has & 0x8000000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_20;
    }
  }

  else if ((*&has & 0x200000000) == 0)
  {
    goto LABEL_13;
  }

  v13 = [MEMORY[0x1E696AD98] numberWithBool:self->_isRemoteControllable];
  [v5 setObject:v13 forKey:@"isRemoteControllable"];

  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_14:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_21;
  }

LABEL_20:
  v14 = [MEMORY[0x1E696AD98] numberWithBool:self->_isGroupLeader];
  [v5 setObject:v14 forKey:@"isGroupLeader"];

  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_15:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_22;
  }

LABEL_21:
  v15 = [MEMORY[0x1E696AD98] numberWithBool:self->_isGroupable];
  [v5 setObject:v15 forKey:@"isGroupable"];

  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_16:
    if ((*&has & 8) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_26;
  }

LABEL_22:
  deviceType = self->_deviceType;
  if (deviceType >= 6)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_deviceType];
  }

  else
  {
    v17 = off_1E76A4530[deviceType];
  }

  [v5 setObject:v17 forKey:@"deviceType"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_26:
    deviceSubType = self->_deviceSubType;
    if (deviceSubType >= 0x16)
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_deviceSubType];
    }

    else
    {
      v19 = off_1E76A4560[deviceSubType];
    }

    [v5 setObject:v19 forKey:@"deviceSubType"];
  }

LABEL_30:
  modelSpecificInfoData = self->_modelSpecificInfoData;
  if (modelSpecificInfoData)
  {
    [v5 setObject:modelSpecificInfoData forKey:@"modelSpecificInfoData"];
  }

  v21 = self->_has;
  if (*&v21)
  {
    *&v4 = self->_batteryLevel;
    v56 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
    [v5 setObject:v56 forKey:@"batteryLevel"];

    v21 = self->_has;
    if ((*&v21 & 0x40000000) == 0)
    {
LABEL_34:
      if ((*&v21 & 0x200000000000) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_100;
    }
  }

  else if ((*&v21 & 0x40000000) == 0)
  {
    goto LABEL_34;
  }

  v57 = [MEMORY[0x1E696AD98] numberWithBool:self->_isLocalDevice];
  [v5 setObject:v57 forKey:@"isLocalDevice"];

  v21 = self->_has;
  if ((*&v21 & 0x200000000000) == 0)
  {
LABEL_35:
    if ((*&v21 & 0x10000000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_101;
  }

LABEL_100:
  v58 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsExternalScreen];
  [v5 setObject:v58 forKey:@"supportsExternalScreen"];

  v21 = self->_has;
  if ((*&v21 & 0x10000000000) == 0)
  {
LABEL_36:
    if ((*&v21 & 0x20000000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_101:
  v59 = [MEMORY[0x1E696AD98] numberWithBool:self->_requiresAuthorization];
  [v5 setObject:v59 forKey:@"requiresAuthorization"];

  if ((*&self->_has & 0x20000000000) != 0)
  {
LABEL_37:
    v22 = [MEMORY[0x1E696AD98] numberWithBool:self->_shouldForceRemoteControlabillity];
    [v5 setObject:v22 forKey:@"shouldForceRemoteControlabillity"];
  }

LABEL_38:
  sourceInfo = self->_sourceInfo;
  if (sourceInfo)
  {
    dictionaryRepresentation = [(_MRAVOutputDeviceSourceInfoProtobuf *)sourceInfo dictionaryRepresentation];
    [v5 setObject:dictionaryRepresentation forKey:@"sourceInfo"];
  }

  v25 = self->_has;
  if ((*&v25 & 0x4000000) != 0)
  {
    v26 = [MEMORY[0x1E696AD98] numberWithBool:self->_isDeviceGroupable];
    [v5 setObject:v26 forKey:@"isDeviceGroupable"];

    v25 = self->_has;
  }

  if ((*&v25 & 0x10000) != 0)
  {
    v27 = [MEMORY[0x1E696AD98] numberWithBool:self->_canRelayCommunicationChannel];
    [v5 setObject:v27 forKey:@"canRelayCommunicationChannel"];
  }

  logicalDeviceID = self->_logicalDeviceID;
  if (logicalDeviceID)
  {
    [v5 setObject:logicalDeviceID forKey:@"logicalDeviceID"];
  }

  if (*(&self->_has + 4))
  {
    v29 = [MEMORY[0x1E696AD98] numberWithBool:self->_isProxyGroupPlayer];
    [v5 setObject:v29 forKey:@"isProxyGroupPlayer"];
  }

  firmwareVersion = self->_firmwareVersion;
  if (firmwareVersion)
  {
    [v5 setObject:firmwareVersion forKey:@"firmwareVersion"];
  }

  v31 = self->_has;
  if ((*&v31 & 0x100) != 0)
  {
    *&v4 = self->_volume;
    v60 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
    [v5 setObject:v60 forKey:@"volume"];

    v31 = self->_has;
    if ((*&v31 & 0x400000000) == 0)
    {
LABEL_52:
      if ((*&v31 & 0x800) == 0)
      {
        goto LABEL_53;
      }

      goto LABEL_105;
    }
  }

  else if ((*&v31 & 0x400000000) == 0)
  {
    goto LABEL_52;
  }

  v61 = [MEMORY[0x1E696AD98] numberWithBool:self->_isVolumeControlAvailable];
  [v5 setObject:v61 forKey:@"isVolumeControlAvailable"];

  v31 = self->_has;
  if ((*&v31 & 0x800) == 0)
  {
LABEL_53:
    if ((*&v31 & 0x2000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_106;
  }

LABEL_105:
  v62 = [MEMORY[0x1E696AD98] numberWithBool:self->_canAccessAppleMusic];
  [v5 setObject:v62 forKey:@"canAccessAppleMusic"];

  v31 = self->_has;
  if ((*&v31 & 0x2000) == 0)
  {
LABEL_54:
    if ((*&v31 & 0x200000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_107;
  }

LABEL_106:
  v63 = [MEMORY[0x1E696AD98] numberWithBool:self->_canAccessiCloudMusicLibrary];
  [v5 setObject:v63 forKey:@"canAccessiCloudMusicLibrary"];

  v31 = self->_has;
  if ((*&v31 & 0x200000) == 0)
  {
LABEL_55:
    if ((*&v31 & 0x80000000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_108;
  }

LABEL_107:
  v64 = [MEMORY[0x1E696AD98] numberWithBool:self->_groupContainsGroupLeader];
  [v5 setObject:v64 forKey:@"groupContainsGroupLeader"];

  v31 = self->_has;
  if ((*&v31 & 0x80000000000) == 0)
  {
LABEL_56:
    if ((*&v31 & 0x8000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_109;
  }

LABEL_108:
  v65 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsBufferedAirPlay];
  [v5 setObject:v65 forKey:@"supportsBufferedAirPlay"];

  v31 = self->_has;
  if ((*&v31 & 0x8000) == 0)
  {
LABEL_57:
    if ((*&v31 & 0x4000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_110;
  }

LABEL_109:
  v66 = [MEMORY[0x1E696AD98] numberWithBool:self->_canPlayEncryptedProgressiveDownloadAssets];
  [v5 setObject:v66 forKey:@"canPlayEncryptedProgressiveDownloadAssets"];

  v31 = self->_has;
  if ((*&v31 & 0x4000) == 0)
  {
LABEL_58:
    if ((*&v31 & 0x2000000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_111;
  }

LABEL_110:
  v67 = [MEMORY[0x1E696AD98] numberWithBool:self->_canFetchMediaDataFromSender];
  [v5 setObject:v67 forKey:@"canFetchMediaDataFromSender"];

  v31 = self->_has;
  if ((*&v31 & 0x2000000000) == 0)
  {
LABEL_59:
    if ((*&v31 & 0x800000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_60;
  }

LABEL_111:
  v68 = [MEMORY[0x1E696AD98] numberWithBool:self->_presentsOptimizedUserInterfaceWhenPlayingFetchedAudioOnlyAssets];
  [v5 setObject:v68 forKey:@"presentsOptimizedUserInterfaceWhenPlayingFetchedAudioOnlyAssets"];

  if ((*&self->_has & 0x800000) != 0)
  {
LABEL_60:
    v32 = [MEMORY[0x1E696AD98] numberWithBool:self->_isAirPlayReceiverSessionActive];
    [v5 setObject:v32 forKey:@"isAirPlayReceiverSessionActive"];
  }

LABEL_61:
  parentGroupIdentifier = self->_parentGroupIdentifier;
  if (parentGroupIdentifier)
  {
    [v5 setObject:parentGroupIdentifier forKey:@"parentGroupIdentifier"];
  }

  v34 = self->_has;
  if ((*&v34 & 0x800000000) != 0)
  {
    v69 = [MEMORY[0x1E696AD98] numberWithBool:self->_parentGroupContainsDiscoverableLeader];
    [v5 setObject:v69 forKey:@"parentGroupContainsDiscoverableLeader"];

    v34 = self->_has;
    if ((*&v34 & 0x400000) == 0)
    {
LABEL_65:
      if ((*&v34 & 0x200) == 0)
      {
        goto LABEL_67;
      }

      goto LABEL_66;
    }
  }

  else if ((*&v34 & 0x400000) == 0)
  {
    goto LABEL_65;
  }

  v70 = [MEMORY[0x1E696AD98] numberWithBool:self->_isAddedToHomeKit];
  [v5 setObject:v70 forKey:@"isAddedToHomeKit"];

  if ((*&self->_has & 0x200) != 0)
  {
LABEL_66:
    v35 = [MEMORY[0x1E696AD98] numberWithInt:self->_volumeCapabilities];
    [v5 setObject:v35 forKey:@"volumeCapabilities"];
  }

LABEL_67:
  bluetoothID = self->_bluetoothID;
  if (bluetoothID)
  {
    [v5 setObject:bluetoothID forKey:@"bluetoothID"];
  }

  v37 = self->_has;
  if ((*&v37 & 0x400000000000) != 0)
  {
    v38 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsHAP];
    [v5 setObject:v38 forKey:@"supportsHAP"];

    v37 = self->_has;
  }

  if ((*&v37 & 0x10000000000000) != 0)
  {
    v39 = [MEMORY[0x1E696AD98] numberWithBool:self->_usingJSONProtocol];
    [v5 setObject:v39 forKey:@"usingJSONProtocol"];
  }

  if ([(NSMutableArray *)self->_clusterCompositions count])
  {
    v41 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_clusterCompositions, "count")}];
    v139 = 0u;
    v140 = 0u;
    v141 = 0u;
    v142 = 0u;
    v42 = self->_clusterCompositions;
    v43 = [(NSMutableArray *)v42 countByEnumeratingWithState:&v139 objects:v145 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v140;
      do
      {
        for (i = 0; i != v44; ++i)
        {
          if (*v140 != v45)
          {
            objc_enumerationMutation(v42);
          }

          dictionaryRepresentation2 = [*(*(&v139 + 1) + 8 * i) dictionaryRepresentation];
          [v41 addObject:dictionaryRepresentation2];
        }

        v44 = [(NSMutableArray *)v42 countByEnumeratingWithState:&v139 objects:v145 count:16];
      }

      while (v44);
    }

    [v5 setObject:v41 forKey:@"clusterComposition"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v48 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_clusterType];
    [v5 setObject:v48 forKey:@"clusterType"];
  }

  primaryUID = self->_primaryUID;
  if (primaryUID)
  {
    [v5 setObject:primaryUID forKey:@"primaryUID"];
  }

  v50 = self->_has;
  if ((*&v50 & 4) != 0)
  {
    v51 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_configuredClusterSize];
    [v5 setObject:v51 forKey:@"configuredClusterSize"];

    v50 = self->_has;
  }

  if ((*&v50 & 0x4000000000000) != 0)
  {
    v52 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsRapportRemoteControlTransport];
    [v5 setObject:v52 forKey:@"supportsRapportRemoteControlTransport"];
  }

  currentBluetoothListeningMode = self->_currentBluetoothListeningMode;
  if (currentBluetoothListeningMode)
  {
    [v5 setObject:currentBluetoothListeningMode forKey:@"currentBluetoothListeningMode"];
  }

  availableBluetoothListeningModes = self->_availableBluetoothListeningModes;
  if (availableBluetoothListeningModes)
  {
    [v5 setObject:availableBluetoothListeningModes forKey:@"availableBluetoothListeningModes"];
  }

  v55 = self->_has;
  if ((*&v55 & 0x1000000000000) != 0)
  {
    v71 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsMultiplayer];
    [v5 setObject:v71 forKey:@"supportsMultiplayer"];

    v55 = self->_has;
    if ((*&v55 & 0x4000000000) == 0)
    {
LABEL_96:
      if ((*&v55 & 0x40) == 0)
      {
        goto LABEL_123;
      }

      goto LABEL_118;
    }
  }

  else if ((*&v55 & 0x4000000000) == 0)
  {
    goto LABEL_96;
  }

  v72 = [MEMORY[0x1E696AD98] numberWithBool:self->_producesLowFidelityAudio];
  [v5 setObject:v72 forKey:@"producesLowFidelityAudio"];

  if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_123;
  }

LABEL_118:
  v73 = self->_hostDeviceClass + 1;
  if (v73 < 0xF && ((0x7FFDu >> v73) & 1) != 0)
  {
    v74 = off_1E76A4610[v73];
  }

  else
  {
    v74 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_hostDeviceClass];
  }

  [v5 setObject:v74 forKey:@"hostDeviceClass"];

LABEL_123:
  airPlayGroupID = self->_airPlayGroupID;
  if (airPlayGroupID)
  {
    [v5 setObject:airPlayGroupID forKey:@"airPlayGroupID"];
  }

  v76 = self->_has;
  if ((*&v76 & 0x8000000000000) != 0)
  {
    v89 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsSharePlayHandoff];
    [v5 setObject:v89 forKey:@"supportsSharePlayHandoff"];

    v76 = self->_has;
    if ((*&v76 & 0x20) == 0)
    {
LABEL_127:
      if ((*&v76 & 0x80000) == 0)
      {
        goto LABEL_129;
      }

      goto LABEL_128;
    }
  }

  else if ((*&v76 & 0x20) == 0)
  {
    goto LABEL_127;
  }

  *&v40 = self->_distance;
  v90 = [MEMORY[0x1E696AD98] numberWithFloat:v40];
  [v5 setObject:v90 forKey:@"distance"];

  if ((*&self->_has & 0x80000) != 0)
  {
LABEL_128:
    v77 = [MEMORY[0x1E696AD98] numberWithBool:self->_discoveredOnSameInfra];
    [v5 setObject:v77 forKey:@"discoveredOnSameInfra"];
  }

LABEL_129:
  if ([(NSMutableArray *)self->_activatedClusterMembers count])
  {
    v78 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_activatedClusterMembers, "count")}];
    v135 = 0u;
    v136 = 0u;
    v137 = 0u;
    v138 = 0u;
    v79 = self->_activatedClusterMembers;
    v80 = [(NSMutableArray *)v79 countByEnumeratingWithState:&v135 objects:v144 count:16];
    if (v80)
    {
      v81 = v80;
      v82 = *v136;
      do
      {
        for (j = 0; j != v81; ++j)
        {
          if (*v136 != v82)
          {
            objc_enumerationMutation(v79);
          }

          dictionaryRepresentation3 = [*(*(&v135 + 1) + 8 * j) dictionaryRepresentation];
          [v78 addObject:dictionaryRepresentation3];
        }

        v81 = [(NSMutableArray *)v79 countByEnumeratingWithState:&v135 objects:v144 count:16];
      }

      while (v81);
    }

    [v5 setObject:v78 forKey:@"activatedClusterMembers"];
  }

  v85 = self->_has;
  if ((*&v85 & 0x1000000000) != 0)
  {
    v86 = [MEMORY[0x1E696AD98] numberWithBool:self->_pickable];
    [v5 setObject:v86 forKey:@"pickable"];

    v85 = self->_has;
  }

  if ((*&v85 & 0x80) != 0)
  {
    transportType = self->_transportType;
    if (transportType >= 9)
    {
      v88 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_transportType];
    }

    else
    {
      v88 = off_1E76A4688[transportType];
    }

    [v5 setObject:v88 forKey:@"transportType"];
  }

  clusterID = self->_clusterID;
  if (clusterID)
  {
    [v5 setObject:clusterID forKey:@"clusterID"];
  }

  v92 = self->_has;
  if ((*&v92 & 0x2000000) != 0)
  {
    v93 = [MEMORY[0x1E696AD98] numberWithBool:self->_isClusterLeader];
    [v5 setObject:v93 forKey:@"isClusterLeader"];

    v92 = self->_has;
  }

  if ((*&v92 & 0x1000000) != 0)
  {
    v94 = [MEMORY[0x1E696AD98] numberWithBool:self->_isAppleAccessory];
    [v5 setObject:v94 forKey:@"isAppleAccessory"];
  }

  parentUniqueIdentifier = self->_parentUniqueIdentifier;
  if (parentUniqueIdentifier)
  {
    [v5 setObject:parentUniqueIdentifier forKey:@"parentUniqueIdentifier"];
  }

  roomID = self->_roomID;
  if (roomID)
  {
    [v5 setObject:roomID forKey:@"roomID"];
  }

  roomName = self->_roomName;
  if (roomName)
  {
    [v5 setObject:roomName forKey:@"roomName"];
  }

  if ([(NSMutableArray *)self->_allClusterMembers count])
  {
    v98 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_allClusterMembers, "count")}];
    v131 = 0u;
    v132 = 0u;
    v133 = 0u;
    v134 = 0u;
    v99 = self->_allClusterMembers;
    v100 = [(NSMutableArray *)v99 countByEnumeratingWithState:&v131 objects:v143 count:16];
    if (v100)
    {
      v101 = v100;
      v102 = *v132;
      do
      {
        for (k = 0; k != v101; ++k)
        {
          if (*v132 != v102)
          {
            objc_enumerationMutation(v99);
          }

          dictionaryRepresentation4 = [*(*(&v131 + 1) + 8 * k) dictionaryRepresentation];
          [v98 addObject:dictionaryRepresentation4];
        }

        v101 = [(NSMutableArray *)v99 countByEnumeratingWithState:&v131 objects:v143 count:16];
      }

      while (v101);
    }

    [v5 setObject:v98 forKey:@"allClusterMembers"];
  }

  v105 = self->_has;
  if ((*&v105 & 0x100000000000) != 0)
  {
    v122 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsConversationDetection];
    [v5 setObject:v122 forKey:@"supportsConversationDetection"];

    v105 = self->_has;
    if ((*&v105 & 0x20000) == 0)
    {
LABEL_171:
      if ((*&v105 & 0x100000) == 0)
      {
        goto LABEL_172;
      }

      goto LABEL_201;
    }
  }

  else if ((*&v105 & 0x20000) == 0)
  {
    goto LABEL_171;
  }

  v123 = [MEMORY[0x1E696AD98] numberWithBool:self->_conversationDetectionEnabled];
  [v5 setObject:v123 forKey:@"conversationDetectionEnabled"];

  v105 = self->_has;
  if ((*&v105 & 0x100000) == 0)
  {
LABEL_172:
    if ((*&v105 & 0x20000000000000) == 0)
    {
      goto LABEL_174;
    }

    goto LABEL_173;
  }

LABEL_201:
  v124 = [MEMORY[0x1E696AD98] numberWithBool:self->_engageOnClusterActivate];
  [v5 setObject:v124 forKey:@"engageOnClusterActivate"];

  if ((*&self->_has & 0x20000000000000) != 0)
  {
LABEL_173:
    v106 = [MEMORY[0x1E696AD98] numberWithBool:self->_volumeMuted];
    [v5 setObject:v106 forKey:@"volumeMuted"];
  }

LABEL_174:
  groupSessionInfo = self->_groupSessionInfo;
  if (groupSessionInfo)
  {
    dictionaryRepresentation5 = [(_MRGroupSessionInfoProtobuf *)groupSessionInfo dictionaryRepresentation];
    [v5 setObject:dictionaryRepresentation5 forKey:@"groupSessionInfo"];
  }

  if ((*(&self->_has + 5) & 4) != 0)
  {
    v109 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsBluetoothSharing];
    [v5 setObject:v109 forKey:@"supportsBluetoothSharing"];
  }

  deviceEnclosureColor = self->_deviceEnclosureColor;
  if (deviceEnclosureColor)
  {
    [v5 setObject:deviceEnclosureColor forKey:@"deviceEnclosureColor"];
  }

  playingPairedDeviceName = self->_playingPairedDeviceName;
  if (playingPairedDeviceName)
  {
    [v5 setObject:playingPairedDeviceName forKey:@"playingPairedDeviceName"];
  }

  v112 = self->_has;
  if ((*&v112 & 0x2000000000000) != 0)
  {
    v125 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsRapport];
    [v5 setObject:v125 forKey:@"supportsRapport"];

    v112 = self->_has;
    if ((*&v112 & 0x80000000) == 0)
    {
LABEL_184:
      if ((*&v112 & 0x800000000000) == 0)
      {
        goto LABEL_185;
      }

      goto LABEL_205;
    }
  }

  else if ((*&v112 & 0x80000000) == 0)
  {
    goto LABEL_184;
  }

  v126 = [MEMORY[0x1E696AD98] numberWithBool:self->_isPickedOnPairedDevice];
  [v5 setObject:v126 forKey:@"isPickedOnPairedDevice"];

  v112 = self->_has;
  if ((*&v112 & 0x800000000000) == 0)
  {
LABEL_185:
    if ((*&v112 & 0x400) == 0)
    {
      goto LABEL_186;
    }

    goto LABEL_206;
  }

LABEL_205:
  v127 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsHeadTrackedSpatialAudio];
  [v5 setObject:v127 forKey:@"supportsHeadTrackedSpatialAudio"];

  v112 = self->_has;
  if ((*&v112 & 0x400) == 0)
  {
LABEL_186:
    if ((*&v112 & 0x20000000) == 0)
    {
      goto LABEL_188;
    }

    goto LABEL_187;
  }

LABEL_206:
  v128 = [MEMORY[0x1E696AD98] numberWithBool:self->_allowsHeadTrackedSpatialAudio];
  [v5 setObject:v128 forKey:@"allowsHeadTrackedSpatialAudio"];

  if ((*&self->_has & 0x20000000) != 0)
  {
LABEL_187:
    v113 = [MEMORY[0x1E696AD98] numberWithBool:self->_isHeadTrackedSpatialAudioActive];
    [v5 setObject:v113 forKey:@"isHeadTrackedSpatialAudioActive"];
  }

LABEL_188:
  headTrackedSpatialAudioMode = self->_headTrackedSpatialAudioMode;
  if (headTrackedSpatialAudioMode)
  {
    [v5 setObject:headTrackedSpatialAudioMode forKey:@"headTrackedSpatialAudioMode"];
  }

  dnsNames = self->_dnsNames;
  if (dnsNames)
  {
    [v5 setObject:dnsNames forKey:@"dnsNames"];
  }

  alternateTransportType = self->_alternateTransportType;
  if (alternateTransportType)
  {
    [v5 setObject:alternateTransportType forKey:@"alternateTransportType"];
  }

  v117 = self->_has;
  if ((*&v117 & 0x40000) == 0)
  {
    if ((*&v117 & 0x40000000000000) == 0)
    {
      goto LABEL_196;
    }

LABEL_209:
    v130 = [MEMORY[0x1E696AD98] numberWithBool:self->_wasDiscoveredInCache];
    [v5 setObject:v130 forKey:@"wasDiscoveredInCache"];

    if ((*&self->_has & 0x8000000000) == 0)
    {
      goto LABEL_198;
    }

    goto LABEL_197;
  }

  v129 = [MEMORY[0x1E696AD98] numberWithBool:self->_deviceIsPlaying];
  [v5 setObject:v129 forKey:@"deviceIsPlaying"];

  v117 = self->_has;
  if ((*&v117 & 0x40000000000000) != 0)
  {
    goto LABEL_209;
  }

LABEL_196:
  if ((*&v117 & 0x8000000000) != 0)
  {
LABEL_197:
    v118 = [MEMORY[0x1E696AD98] numberWithBool:self->_representsUGLSender];
    [v5 setObject:v118 forKey:@"representsUGLSender"];
  }

LABEL_198:
  v119 = v5;

  v120 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRAVOutputDeviceDescriptorProtobuf;
  v4 = [(_MRAVOutputDeviceDescriptorProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRAVOutputDeviceDescriptorProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (int)hostDeviceClass
{
  if ((*&self->_has & 0x40) != 0)
  {
    return self->_hostDeviceClass;
  }

  else
  {
    return -1;
  }
}

- (void)setHasCanAccessRemoteAssets:(BOOL)assets
{
  v3 = 4096;
  if (!assets)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFEFFFLL | v3);
}

- (void)setHasIsRemoteControllable:(BOOL)controllable
{
  v3 = 0x200000000;
  if (!controllable)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFDFFFFFFFFLL | v3);
}

- (void)setHasIsGroupLeader:(BOOL)leader
{
  v3 = 0x8000000;
  if (!leader)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFF7FFFFFFLL | v3);
}

- (void)setHasIsGroupable:(BOOL)groupable
{
  v3 = 0x10000000;
  if (!groupable)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFEFFFFFFFLL | v3);
}

- (void)setHasDeviceType:(BOOL)type
{
  v3 = 16;
  if (!type)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFEFLL | v3);
}

- (int)StringAsDeviceType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"AirPlay"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"Bluetooth"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"CarPlay"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"BuiltIn"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"Wired"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasDeviceSubType:(BOOL)type
{
  v3 = 8;
  if (!type)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFF7 | v3);
}

- (int)StringAsDeviceSubType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Default"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"Speaker"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"Headphones"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"Headset"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"Receiver"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"LineOut"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"USB"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"DisplayPort"])
  {
    v4 = 7;
  }

  else if ([typeCopy isEqualToString:@"HDMI"])
  {
    v4 = 8;
  }

  else if ([typeCopy isEqualToString:@"LowEnergy"])
  {
    v4 = 9;
  }

  else if ([typeCopy isEqualToString:@"SPDIF"])
  {
    v4 = 10;
  }

  else if ([typeCopy isEqualToString:@"TV"])
  {
    v4 = 11;
  }

  else if ([typeCopy isEqualToString:@"HomePod"])
  {
    v4 = 12;
  }

  else if ([typeCopy isEqualToString:@"AppleTV"])
  {
    v4 = 13;
  }

  else if ([typeCopy isEqualToString:@"Vehicle"])
  {
    v4 = 14;
  }

  else if ([typeCopy isEqualToString:@"Cluster"])
  {
    v4 = 15;
  }

  else if ([typeCopy isEqualToString:@"SetTopBox"])
  {
    v4 = 16;
  }

  else if ([typeCopy isEqualToString:@"TVStick"])
  {
    v4 = 17;
  }

  else if ([typeCopy isEqualToString:@"Mac"])
  {
    v4 = 18;
  }

  else if ([typeCopy isEqualToString:@"iOS"])
  {
    v4 = 19;
  }

  else if ([typeCopy isEqualToString:@"Watch"])
  {
    v4 = 20;
  }

  else if ([typeCopy isEqualToString:@"Vision"])
  {
    v4 = 21;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasIsLocalDevice:(BOOL)device
{
  v3 = 0x40000000;
  if (!device)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFBFFFFFFFLL | v3);
}

- (void)setHasSupportsExternalScreen:(BOOL)screen
{
  v3 = 0x200000000000;
  if (!screen)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFFFFFFFFFFLL | v3);
}

- (void)setHasRequiresAuthorization:(BOOL)authorization
{
  v3 = 0x10000000000;
  if (!authorization)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFFFFFFFFFFLL | v3);
}

- (void)setHasShouldForceRemoteControlabillity:(BOOL)controlabillity
{
  v3 = 0x20000000000;
  if (!controlabillity)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFFFFFFFFFFLL | v3);
}

- (void)setHasIsDeviceGroupable:(BOOL)groupable
{
  v3 = 0x4000000;
  if (!groupable)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFBFFFFFFLL | v3);
}

- (void)setHasCanRelayCommunicationChannel:(BOOL)channel
{
  v3 = 0x10000;
  if (!channel)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFEFFFFLL | v3);
}

- (void)setHasIsProxyGroupPlayer:(BOOL)player
{
  v3 = 0x100000000;
  if (!player)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFEFFFFFFFFLL | v3);
}

- (void)setHasVolume:(BOOL)volume
{
  v3 = 256;
  if (!volume)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFEFFLL | v3);
}

- (void)setHasIsVolumeControlAvailable:(BOOL)available
{
  v3 = 0x400000000;
  if (!available)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFBFFFFFFFFLL | v3);
}

- (void)setHasCanAccessAppleMusic:(BOOL)music
{
  v3 = 2048;
  if (!music)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFF7FFLL | v3);
}

- (void)setHasCanAccessiCloudMusicLibrary:(BOOL)library
{
  v3 = 0x2000;
  if (!library)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFDFFFLL | v3);
}

- (void)setHasGroupContainsGroupLeader:(BOOL)leader
{
  v3 = 0x200000;
  if (!leader)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFDFFFFFLL | v3);
}

- (void)setHasSupportsBufferedAirPlay:(BOOL)play
{
  v3 = 0x80000000000;
  if (!play)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FFFFFFFFFFLL | v3);
}

- (void)setHasCanPlayEncryptedProgressiveDownloadAssets:(BOOL)assets
{
  v3 = 0x8000;
  if (!assets)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFF7FFFLL | v3);
}

- (void)setHasCanFetchMediaDataFromSender:(BOOL)sender
{
  v3 = 0x4000;
  if (!sender)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFBFFFLL | v3);
}

- (void)setHasPresentsOptimizedUserInterfaceWhenPlayingFetchedAudioOnlyAssets:(BOOL)assets
{
  v3 = 0x2000000000;
  if (!assets)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDFFFFFFFFFLL | v3);
}

- (void)setHasIsAirPlayReceiverSessionActive:(BOOL)active
{
  v3 = 0x800000;
  if (!active)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFF7FFFFFLL | v3);
}

- (void)setHasParentGroupContainsDiscoverableLeader:(BOOL)leader
{
  v3 = 0x800000000;
  if (!leader)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7FFFFFFFFLL | v3);
}

- (void)setHasIsAddedToHomeKit:(BOOL)kit
{
  v3 = 0x400000;
  if (!kit)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFBFFFFFLL | v3);
}

- (void)setHasVolumeCapabilities:(BOOL)capabilities
{
  v3 = 512;
  if (!capabilities)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFDFFLL | v3);
}

- (void)setHasSupportsHAP:(BOOL)p
{
  v3 = 0x400000000000;
  if (!p)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFFFFFFFFFFLL | v3);
}

- (void)setHasUsingJSONProtocol:(BOOL)protocol
{
  v3 = 0x10000000000000;
  if (!protocol)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFEFFFFFFFFFFFFFLL | v3);
}

- (void)addClusterComposition:(id)composition
{
  compositionCopy = composition;
  clusterCompositions = self->_clusterCompositions;
  v8 = compositionCopy;
  if (!clusterCompositions)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_clusterCompositions;
    self->_clusterCompositions = v6;

    compositionCopy = v8;
    clusterCompositions = self->_clusterCompositions;
  }

  [(NSMutableArray *)clusterCompositions addObject:compositionCopy];
}

- (void)setHasClusterType:(BOOL)type
{
  v3 = 2;
  if (!type)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFDLL | v3);
}

- (void)setHasConfiguredClusterSize:(BOOL)size
{
  v3 = 4;
  if (!size)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFBLL | v3);
}

- (void)setHasSupportsRapportRemoteControlTransport:(BOOL)transport
{
  v3 = 0x4000000000000;
  if (!transport)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFFFFFFFFFFLL | v3);
}

- (void)addAvailableBluetoothListeningModes:(id)modes
{
  modesCopy = modes;
  availableBluetoothListeningModes = self->_availableBluetoothListeningModes;
  v8 = modesCopy;
  if (!availableBluetoothListeningModes)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_availableBluetoothListeningModes;
    self->_availableBluetoothListeningModes = v6;

    modesCopy = v8;
    availableBluetoothListeningModes = self->_availableBluetoothListeningModes;
  }

  [(NSMutableArray *)availableBluetoothListeningModes addObject:modesCopy];
}

- (void)setHasSupportsMultiplayer:(BOOL)multiplayer
{
  v3 = 0x1000000000000;
  if (!multiplayer)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFFFFFFFFFFLL | v3);
}

- (void)setHasProducesLowFidelityAudio:(BOOL)audio
{
  v3 = 0x4000000000;
  if (!audio)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBFFFFFFFFFLL | v3);
}

- (void)setHasHostDeviceClass:(BOOL)class
{
  v3 = 64;
  if (!class)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFBFLL | v3);
}

- (int)StringAsHostDeviceClass:(id)class
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

- (void)setHasSupportsSharePlayHandoff:(BOOL)handoff
{
  v3 = 0x8000000000000;
  if (!handoff)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFFFFFFFFFFLL | v3);
}

- (void)setHasDistance:(BOOL)distance
{
  v3 = 32;
  if (!distance)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFDFLL | v3);
}

- (void)setHasDiscoveredOnSameInfra:(BOOL)infra
{
  v3 = 0x80000;
  if (!infra)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFF7FFFFLL | v3);
}

- (void)addActivatedClusterMembers:(id)members
{
  membersCopy = members;
  activatedClusterMembers = self->_activatedClusterMembers;
  v8 = membersCopy;
  if (!activatedClusterMembers)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_activatedClusterMembers;
    self->_activatedClusterMembers = v6;

    membersCopy = v8;
    activatedClusterMembers = self->_activatedClusterMembers;
  }

  [(NSMutableArray *)activatedClusterMembers addObject:membersCopy];
}

- (void)setHasPickable:(BOOL)pickable
{
  v3 = 0x1000000000;
  if (!pickable)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEFFFFFFFFFLL | v3);
}

- (void)setHasTransportType:(BOOL)type
{
  v3 = 128;
  if (!type)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFF7FLL | v3);
}

- (int)StringAsTransportType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"None"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"AirPlay"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"Rapport"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"Companion"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"IDS"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"OutputContext"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"GroupSession"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"SystemGroupSession"])
  {
    v4 = 7;
  }

  else if ([typeCopy isEqualToString:@"MRRelay"])
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasIsClusterLeader:(BOOL)leader
{
  v3 = 0x2000000;
  if (!leader)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFDFFFFFFLL | v3);
}

- (void)setHasIsAppleAccessory:(BOOL)accessory
{
  v3 = 0x1000000;
  if (!accessory)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFEFFFFFFLL | v3);
}

- (void)addAllClusterMembers:(id)members
{
  membersCopy = members;
  allClusterMembers = self->_allClusterMembers;
  v8 = membersCopy;
  if (!allClusterMembers)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_allClusterMembers;
    self->_allClusterMembers = v6;

    membersCopy = v8;
    allClusterMembers = self->_allClusterMembers;
  }

  [(NSMutableArray *)allClusterMembers addObject:membersCopy];
}

- (void)setHasSupportsConversationDetection:(BOOL)detection
{
  v3 = 0x100000000000;
  if (!detection)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFFFFFFFFFFLL | v3);
}

- (void)setHasConversationDetectionEnabled:(BOOL)enabled
{
  v3 = 0x20000;
  if (!enabled)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFDFFFFLL | v3);
}

- (void)setHasEngageOnClusterActivate:(BOOL)activate
{
  v3 = 0x100000;
  if (!activate)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFEFFFFFLL | v3);
}

- (void)setHasVolumeMuted:(BOOL)muted
{
  v3 = 0x20000000000000;
  if (!muted)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFDFFFFFFFFFFFFFLL | v3);
}

- (void)setHasSupportsBluetoothSharing:(BOOL)sharing
{
  v3 = 0x40000000000;
  if (!sharing)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFFFFFFFFFFLL | v3);
}

- (void)setHasSupportsRapport:(BOOL)rapport
{
  v3 = 0x2000000000000;
  if (!rapport)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFFFFFFFFFFLL | v3);
}

- (void)setHasIsPickedOnPairedDevice:(BOOL)device
{
  v3 = 0x80000000;
  if (!device)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFF7FFFFFFFLL | v3);
}

- (void)setHasSupportsHeadTrackedSpatialAudio:(BOOL)audio
{
  v3 = 0x800000000000;
  if (!audio)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFFFFFFFFFFLL | v3);
}

- (void)setHasAllowsHeadTrackedSpatialAudio:(BOOL)audio
{
  v3 = 1024;
  if (!audio)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFBFFLL | v3);
}

- (void)setHasIsHeadTrackedSpatialAudioActive:(BOOL)active
{
  v3 = 0x20000000;
  if (!active)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFDFFFFFFFLL | v3);
}

- (void)addDnsNames:(id)names
{
  namesCopy = names;
  dnsNames = self->_dnsNames;
  v8 = namesCopy;
  if (!dnsNames)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_dnsNames;
    self->_dnsNames = v6;

    namesCopy = v8;
    dnsNames = self->_dnsNames;
  }

  [(NSMutableArray *)dnsNames addObject:namesCopy];
}

- (void)setHasDeviceIsPlaying:(BOOL)playing
{
  v3 = 0x40000;
  if (!playing)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFBFFFFLL | v3);
}

- (void)setHasWasDiscoveredInCache:(BOOL)cache
{
  v3 = 0x40000000000000;
  if (!cache)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFBFFFFFFFFFFFFFLL | v3);
}

- (void)setHasRepresentsUGLSender:(BOOL)sender
{
  v3 = 0x8000000000;
  if (!sender)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7FFFFFFFFFLL | v3);
}

- (void)writeTo:(id)to
{
  v130 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_name)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_uniqueIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_groupID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_modelID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_macAddress)
  {
    PBDataWriterWriteDataField();
  }

  has = self->_has;
  if ((*&has & 0x1000) != 0)
  {
    canAccessRemoteAssets = self->_canAccessRemoteAssets;
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((*&has & 0x200000000) == 0)
    {
LABEL_13:
      if ((*&has & 0x8000000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_162;
    }
  }

  else if ((*&has & 0x200000000) == 0)
  {
    goto LABEL_13;
  }

  isRemoteControllable = self->_isRemoteControllable;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_14:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_163;
  }

LABEL_162:
  isGroupLeader = self->_isGroupLeader;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_15:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_164;
  }

LABEL_163:
  isGroupable = self->_isGroupable;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_16:
    if ((*&has & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_164:
  deviceType = self->_deviceType;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_17:
    deviceSubType = self->_deviceSubType;
    PBDataWriterWriteInt32Field();
  }

LABEL_18:
  if (self->_modelSpecificInfoData)
  {
    PBDataWriterWriteDataField();
  }

  v7 = self->_has;
  if (*&v7)
  {
    batteryLevel = self->_batteryLevel;
    PBDataWriterWriteFloatField();
    v7 = self->_has;
    if ((*&v7 & 0x40000000) == 0)
    {
LABEL_22:
      if ((*&v7 & 0x200000000000) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_168;
    }
  }

  else if ((*&v7 & 0x40000000) == 0)
  {
    goto LABEL_22;
  }

  isLocalDevice = self->_isLocalDevice;
  PBDataWriterWriteBOOLField();
  v7 = self->_has;
  if ((*&v7 & 0x200000000000) == 0)
  {
LABEL_23:
    if ((*&v7 & 0x10000000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_169;
  }

LABEL_168:
  supportsExternalScreen = self->_supportsExternalScreen;
  PBDataWriterWriteBOOLField();
  v7 = self->_has;
  if ((*&v7 & 0x10000000000) == 0)
  {
LABEL_24:
    if ((*&v7 & 0x20000000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_169:
  requiresAuthorization = self->_requiresAuthorization;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x20000000000) != 0)
  {
LABEL_25:
    shouldForceRemoteControlabillity = self->_shouldForceRemoteControlabillity;
    PBDataWriterWriteBOOLField();
  }

LABEL_26:
  if (self->_sourceInfo)
  {
    PBDataWriterWriteSubmessage();
  }

  v9 = self->_has;
  if ((*&v9 & 0x4000000) != 0)
  {
    isDeviceGroupable = self->_isDeviceGroupable;
    PBDataWriterWriteBOOLField();
    v9 = self->_has;
  }

  if ((*&v9 & 0x10000) != 0)
  {
    canRelayCommunicationChannel = self->_canRelayCommunicationChannel;
    PBDataWriterWriteBOOLField();
  }

  if (self->_logicalDeviceID)
  {
    PBDataWriterWriteStringField();
  }

  if (*(&self->_has + 4))
  {
    isProxyGroupPlayer = self->_isProxyGroupPlayer;
    PBDataWriterWriteBOOLField();
  }

  if (self->_firmwareVersion)
  {
    PBDataWriterWriteStringField();
  }

  v13 = self->_has;
  if ((*&v13 & 0x100) != 0)
  {
    volume = self->_volume;
    PBDataWriterWriteFloatField();
    v13 = self->_has;
    if ((*&v13 & 0x400000000) == 0)
    {
LABEL_40:
      if ((*&v13 & 0x800) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_173;
    }
  }

  else if ((*&v13 & 0x400000000) == 0)
  {
    goto LABEL_40;
  }

  isVolumeControlAvailable = self->_isVolumeControlAvailable;
  PBDataWriterWriteBOOLField();
  v13 = self->_has;
  if ((*&v13 & 0x800) == 0)
  {
LABEL_41:
    if ((*&v13 & 0x2000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_174;
  }

LABEL_173:
  canAccessAppleMusic = self->_canAccessAppleMusic;
  PBDataWriterWriteBOOLField();
  v13 = self->_has;
  if ((*&v13 & 0x2000) == 0)
  {
LABEL_42:
    if ((*&v13 & 0x200000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_175;
  }

LABEL_174:
  canAccessiCloudMusicLibrary = self->_canAccessiCloudMusicLibrary;
  PBDataWriterWriteBOOLField();
  v13 = self->_has;
  if ((*&v13 & 0x200000) == 0)
  {
LABEL_43:
    if ((*&v13 & 0x80000000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_176;
  }

LABEL_175:
  groupContainsGroupLeader = self->_groupContainsGroupLeader;
  PBDataWriterWriteBOOLField();
  v13 = self->_has;
  if ((*&v13 & 0x80000000000) == 0)
  {
LABEL_44:
    if ((*&v13 & 0x8000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_177;
  }

LABEL_176:
  supportsBufferedAirPlay = self->_supportsBufferedAirPlay;
  PBDataWriterWriteBOOLField();
  v13 = self->_has;
  if ((*&v13 & 0x8000) == 0)
  {
LABEL_45:
    if ((*&v13 & 0x4000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_178;
  }

LABEL_177:
  canPlayEncryptedProgressiveDownloadAssets = self->_canPlayEncryptedProgressiveDownloadAssets;
  PBDataWriterWriteBOOLField();
  v13 = self->_has;
  if ((*&v13 & 0x4000) == 0)
  {
LABEL_46:
    if ((*&v13 & 0x2000000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_179;
  }

LABEL_178:
  canFetchMediaDataFromSender = self->_canFetchMediaDataFromSender;
  PBDataWriterWriteBOOLField();
  v13 = self->_has;
  if ((*&v13 & 0x2000000000) == 0)
  {
LABEL_47:
    if ((*&v13 & 0x800000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

LABEL_179:
  presentsOptimizedUserInterfaceWhenPlayingFetchedAudioOnlyAssets = self->_presentsOptimizedUserInterfaceWhenPlayingFetchedAudioOnlyAssets;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x800000) != 0)
  {
LABEL_48:
    isAirPlayReceiverSessionActive = self->_isAirPlayReceiverSessionActive;
    PBDataWriterWriteBOOLField();
  }

LABEL_49:
  if (self->_parentGroupIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v15 = self->_has;
  if ((*&v15 & 0x800000000) != 0)
  {
    parentGroupContainsDiscoverableLeader = self->_parentGroupContainsDiscoverableLeader;
    PBDataWriterWriteBOOLField();
    v15 = self->_has;
    if ((*&v15 & 0x400000) == 0)
    {
LABEL_53:
      if ((*&v15 & 0x200) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_54;
    }
  }

  else if ((*&v15 & 0x400000) == 0)
  {
    goto LABEL_53;
  }

  isAddedToHomeKit = self->_isAddedToHomeKit;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_54:
    volumeCapabilities = self->_volumeCapabilities;
    PBDataWriterWriteInt32Field();
  }

LABEL_55:
  if (self->_bluetoothID)
  {
    PBDataWriterWriteStringField();
  }

  v17 = self->_has;
  if ((*&v17 & 0x400000000000) != 0)
  {
    supportsHAP = self->_supportsHAP;
    PBDataWriterWriteBOOLField();
    v17 = self->_has;
  }

  if ((*&v17 & 0x10000000000000) != 0)
  {
    usingJSONProtocol = self->_usingJSONProtocol;
    PBDataWriterWriteBOOLField();
  }

  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  v20 = self->_clusterCompositions;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v121 objects:v129 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v122;
    do
    {
      v24 = 0;
      do
      {
        if (*v122 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v121 + 1) + 8 * v24);
        PBDataWriterWriteSubmessage();
        ++v24;
      }

      while (v22 != v24);
      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v121 objects:v129 count:16];
    }

    while (v22);
  }

  if ((*&self->_has & 2) != 0)
  {
    clusterType = self->_clusterType;
    PBDataWriterWriteUint32Field();
  }

  if (self->_primaryUID)
  {
    PBDataWriterWriteStringField();
  }

  v27 = self->_has;
  if ((*&v27 & 4) != 0)
  {
    configuredClusterSize = self->_configuredClusterSize;
    PBDataWriterWriteUint32Field();
    v27 = self->_has;
  }

  if ((*&v27 & 0x4000000000000) != 0)
  {
    supportsRapportRemoteControlTransport = self->_supportsRapportRemoteControlTransport;
    PBDataWriterWriteBOOLField();
  }

  if (self->_currentBluetoothListeningMode)
  {
    PBDataWriterWriteStringField();
  }

  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  v30 = self->_availableBluetoothListeningModes;
  v31 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v117 objects:v128 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v118;
    do
    {
      v34 = 0;
      do
      {
        if (*v118 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v117 + 1) + 8 * v34);
        PBDataWriterWriteStringField();
        ++v34;
      }

      while (v32 != v34);
      v32 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v117 objects:v128 count:16];
    }

    while (v32);
  }

  v36 = self->_has;
  if ((*&v36 & 0x1000000000000) != 0)
  {
    supportsMultiplayer = self->_supportsMultiplayer;
    PBDataWriterWriteBOOLField();
    v36 = self->_has;
    if ((*&v36 & 0x4000000000) == 0)
    {
LABEL_87:
      if ((*&v36 & 0x40) == 0)
      {
        goto LABEL_89;
      }

      goto LABEL_88;
    }
  }

  else if ((*&v36 & 0x4000000000) == 0)
  {
    goto LABEL_87;
  }

  producesLowFidelityAudio = self->_producesLowFidelityAudio;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_88:
    hostDeviceClass = self->_hostDeviceClass;
    PBDataWriterWriteInt32Field();
  }

LABEL_89:
  if (self->_airPlayGroupID)
  {
    PBDataWriterWriteStringField();
  }

  v38 = self->_has;
  if ((*&v38 & 0x8000000000000) != 0)
  {
    supportsSharePlayHandoff = self->_supportsSharePlayHandoff;
    PBDataWriterWriteBOOLField();
    v38 = self->_has;
    if ((*&v38 & 0x20) == 0)
    {
LABEL_93:
      if ((*&v38 & 0x80000) == 0)
      {
        goto LABEL_95;
      }

      goto LABEL_94;
    }
  }

  else if ((*&v38 & 0x20) == 0)
  {
    goto LABEL_93;
  }

  distance = self->_distance;
  PBDataWriterWriteFloatField();
  if ((*&self->_has & 0x80000) != 0)
  {
LABEL_94:
    discoveredOnSameInfra = self->_discoveredOnSameInfra;
    PBDataWriterWriteBOOLField();
  }

LABEL_95:
  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  v40 = self->_activatedClusterMembers;
  v41 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v113 objects:v127 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v114;
    do
    {
      v44 = 0;
      do
      {
        if (*v114 != v43)
        {
          objc_enumerationMutation(v40);
        }

        v45 = *(*(&v113 + 1) + 8 * v44);
        PBDataWriterWriteSubmessage();
        ++v44;
      }

      while (v42 != v44);
      v42 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v113 objects:v127 count:16];
    }

    while (v42);
  }

  v46 = self->_has;
  if ((*&v46 & 0x1000000000) != 0)
  {
    pickable = self->_pickable;
    PBDataWriterWriteBOOLField();
    v46 = self->_has;
  }

  if ((*&v46 & 0x80) != 0)
  {
    transportType = self->_transportType;
    PBDataWriterWriteInt32Field();
  }

  if (self->_clusterID)
  {
    PBDataWriterWriteStringField();
  }

  v49 = self->_has;
  if ((*&v49 & 0x2000000) != 0)
  {
    isClusterLeader = self->_isClusterLeader;
    PBDataWriterWriteBOOLField();
    v49 = self->_has;
  }

  if ((*&v49 & 0x1000000) != 0)
  {
    isAppleAccessory = self->_isAppleAccessory;
    PBDataWriterWriteBOOLField();
  }

  if (self->_parentUniqueIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_roomID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_roomName)
  {
    PBDataWriterWriteStringField();
  }

  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v52 = self->_allClusterMembers;
  v53 = [(NSMutableArray *)v52 countByEnumeratingWithState:&v109 objects:v126 count:16];
  if (v53)
  {
    v54 = v53;
    v55 = *v110;
    do
    {
      v56 = 0;
      do
      {
        if (*v110 != v55)
        {
          objc_enumerationMutation(v52);
        }

        v57 = *(*(&v109 + 1) + 8 * v56);
        PBDataWriterWriteSubmessage();
        ++v56;
      }

      while (v54 != v56);
      v54 = [(NSMutableArray *)v52 countByEnumeratingWithState:&v109 objects:v126 count:16];
    }

    while (v54);
  }

  v58 = self->_has;
  if ((*&v58 & 0x100000000000) != 0)
  {
    supportsConversationDetection = self->_supportsConversationDetection;
    PBDataWriterWriteBOOLField();
    v58 = self->_has;
    if ((*&v58 & 0x20000) == 0)
    {
LABEL_127:
      if ((*&v58 & 0x100000) == 0)
      {
        goto LABEL_128;
      }

      goto LABEL_192;
    }
  }

  else if ((*&v58 & 0x20000) == 0)
  {
    goto LABEL_127;
  }

  conversationDetectionEnabled = self->_conversationDetectionEnabled;
  PBDataWriterWriteBOOLField();
  v58 = self->_has;
  if ((*&v58 & 0x100000) == 0)
  {
LABEL_128:
    if ((*&v58 & 0x20000000000000) == 0)
    {
      goto LABEL_130;
    }

    goto LABEL_129;
  }

LABEL_192:
  engageOnClusterActivate = self->_engageOnClusterActivate;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x20000000000000) != 0)
  {
LABEL_129:
    volumeMuted = self->_volumeMuted;
    PBDataWriterWriteBOOLField();
  }

LABEL_130:
  if (self->_groupSessionInfo)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*(&self->_has + 5) & 4) != 0)
  {
    supportsBluetoothSharing = self->_supportsBluetoothSharing;
    PBDataWriterWriteBOOLField();
  }

  if (self->_deviceEnclosureColor)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_playingPairedDeviceName)
  {
    PBDataWriterWriteStringField();
  }

  v61 = self->_has;
  if ((*&v61 & 0x2000000000000) != 0)
  {
    supportsRapport = self->_supportsRapport;
    PBDataWriterWriteBOOLField();
    v61 = self->_has;
    if ((*&v61 & 0x80000000) == 0)
    {
LABEL_140:
      if ((*&v61 & 0x800000000000) == 0)
      {
        goto LABEL_141;
      }

      goto LABEL_196;
    }
  }

  else if ((*&v61 & 0x80000000) == 0)
  {
    goto LABEL_140;
  }

  isPickedOnPairedDevice = self->_isPickedOnPairedDevice;
  PBDataWriterWriteBOOLField();
  v61 = self->_has;
  if ((*&v61 & 0x800000000000) == 0)
  {
LABEL_141:
    if ((*&v61 & 0x400) == 0)
    {
      goto LABEL_142;
    }

    goto LABEL_197;
  }

LABEL_196:
  supportsHeadTrackedSpatialAudio = self->_supportsHeadTrackedSpatialAudio;
  PBDataWriterWriteBOOLField();
  v61 = self->_has;
  if ((*&v61 & 0x400) == 0)
  {
LABEL_142:
    if ((*&v61 & 0x20000000) == 0)
    {
      goto LABEL_144;
    }

    goto LABEL_143;
  }

LABEL_197:
  allowsHeadTrackedSpatialAudio = self->_allowsHeadTrackedSpatialAudio;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x20000000) != 0)
  {
LABEL_143:
    isHeadTrackedSpatialAudioActive = self->_isHeadTrackedSpatialAudioActive;
    PBDataWriterWriteBOOLField();
  }

LABEL_144:
  if (self->_headTrackedSpatialAudioMode)
  {
    PBDataWriterWriteStringField();
  }

  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v63 = self->_dnsNames;
  v64 = [(NSMutableArray *)v63 countByEnumeratingWithState:&v105 objects:v125 count:16];
  if (v64)
  {
    v65 = v64;
    v66 = *v106;
    do
    {
      v67 = 0;
      do
      {
        if (*v106 != v66)
        {
          objc_enumerationMutation(v63);
        }

        v68 = *(*(&v105 + 1) + 8 * v67);
        PBDataWriterWriteStringField();
        ++v67;
      }

      while (v65 != v67);
      v65 = [(NSMutableArray *)v63 countByEnumeratingWithState:&v105 objects:v125 count:16];
    }

    while (v65);
  }

  if (self->_alternateTransportType)
  {
    PBDataWriterWriteStringField();
  }

  v69 = self->_has;
  if ((*&v69 & 0x40000) == 0)
  {
    if ((*&v69 & 0x40000000000000) == 0)
    {
      goto LABEL_157;
    }

LABEL_200:
    wasDiscoveredInCache = self->_wasDiscoveredInCache;
    PBDataWriterWriteBOOLField();
    if ((*&self->_has & 0x8000000000) == 0)
    {
      goto LABEL_159;
    }

    goto LABEL_158;
  }

  deviceIsPlaying = self->_deviceIsPlaying;
  PBDataWriterWriteBOOLField();
  v69 = self->_has;
  if ((*&v69 & 0x40000000000000) != 0)
  {
    goto LABEL_200;
  }

LABEL_157:
  if ((*&v69 & 0x8000000000) != 0)
  {
LABEL_158:
    representsUGLSender = self->_representsUGLSender;
    PBDataWriterWriteBOOLField();
  }

LABEL_159:

  v71 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v43 = toCopy;
  if (self->_name)
  {
    [toCopy setName:?];
    toCopy = v43;
  }

  if (self->_uniqueIdentifier)
  {
    [v43 setUniqueIdentifier:?];
    toCopy = v43;
  }

  if (self->_groupID)
  {
    [v43 setGroupID:?];
    toCopy = v43;
  }

  if (self->_modelID)
  {
    [v43 setModelID:?];
    toCopy = v43;
  }

  if (self->_macAddress)
  {
    [v43 setMacAddress:?];
    toCopy = v43;
  }

  has = self->_has;
  if ((*&has & 0x1000) != 0)
  {
    *(toCopy + 290) = self->_canAccessRemoteAssets;
    *(toCopy + 42) |= 0x1000uLL;
    has = self->_has;
    if ((*&has & 0x200000000) == 0)
    {
LABEL_13:
      if ((*&has & 0x8000000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_149;
    }
  }

  else if ((*&has & 0x200000000) == 0)
  {
    goto LABEL_13;
  }

  *(toCopy + 311) = self->_isRemoteControllable;
  *(toCopy + 42) |= 0x200000000uLL;
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_14:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_150;
  }

LABEL_149:
  *(toCopy + 305) = self->_isGroupLeader;
  *(toCopy + 42) |= 0x8000000uLL;
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_15:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_151;
  }

LABEL_150:
  *(toCopy + 306) = self->_isGroupable;
  *(toCopy + 42) |= 0x10000000uLL;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_16:
    if ((*&has & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_151:
  *(toCopy + 27) = self->_deviceType;
  *(toCopy + 42) |= 0x10uLL;
  if ((*&self->_has & 8) != 0)
  {
LABEL_17:
    *(toCopy + 26) = self->_deviceSubType;
    *(toCopy + 42) |= 8uLL;
  }

LABEL_18:
  if (self->_modelSpecificInfoData)
  {
    [v43 setModelSpecificInfoData:?];
    toCopy = v43;
  }

  v6 = self->_has;
  if (*&v6)
  {
    *(toCopy + 12) = LODWORD(self->_batteryLevel);
    *(toCopy + 42) |= 1uLL;
    v6 = self->_has;
    if ((*&v6 & 0x40000000) == 0)
    {
LABEL_22:
      if ((*&v6 & 0x200000000000) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_155;
    }
  }

  else if ((*&v6 & 0x40000000) == 0)
  {
    goto LABEL_22;
  }

  *(toCopy + 308) = self->_isLocalDevice;
  *(toCopy + 42) |= 0x40000000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x200000000000) == 0)
  {
LABEL_23:
    if ((*&v6 & 0x10000000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_156;
  }

LABEL_155:
  *(toCopy + 323) = self->_supportsExternalScreen;
  *(toCopy + 42) |= 0x200000000000uLL;
  v6 = self->_has;
  if ((*&v6 & 0x10000000000) == 0)
  {
LABEL_24:
    if ((*&v6 & 0x20000000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_156:
  *(toCopy + 318) = self->_requiresAuthorization;
  *(toCopy + 42) |= 0x10000000000uLL;
  if ((*&self->_has & 0x20000000000) != 0)
  {
LABEL_25:
    *(toCopy + 319) = self->_shouldForceRemoteControlabillity;
    *(toCopy + 42) |= 0x20000000000uLL;
  }

LABEL_26:
  if (self->_sourceInfo)
  {
    [v43 setSourceInfo:?];
    toCopy = v43;
  }

  v7 = self->_has;
  if ((*&v7 & 0x4000000) != 0)
  {
    *(toCopy + 304) = self->_isDeviceGroupable;
    *(toCopy + 42) |= 0x4000000uLL;
    v7 = self->_has;
  }

  if ((*&v7 & 0x10000) != 0)
  {
    *(toCopy + 294) = self->_canRelayCommunicationChannel;
    *(toCopy + 42) |= 0x10000uLL;
  }

  if (self->_logicalDeviceID)
  {
    [v43 setLogicalDeviceID:?];
    toCopy = v43;
  }

  if (*(&self->_has + 4))
  {
    *(toCopy + 310) = self->_isProxyGroupPlayer;
    *(toCopy + 42) |= 0x100000000uLL;
  }

  if (self->_firmwareVersion)
  {
    [v43 setFirmwareVersion:?];
    toCopy = v43;
  }

  v8 = self->_has;
  if ((*&v8 & 0x100) != 0)
  {
    *(toCopy + 70) = LODWORD(self->_volume);
    *(toCopy + 42) |= 0x100uLL;
    v8 = self->_has;
    if ((*&v8 & 0x400000000) == 0)
    {
LABEL_40:
      if ((*&v8 & 0x800) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_160;
    }
  }

  else if ((*&v8 & 0x400000000) == 0)
  {
    goto LABEL_40;
  }

  *(toCopy + 312) = self->_isVolumeControlAvailable;
  *(toCopy + 42) |= 0x400000000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x800) == 0)
  {
LABEL_41:
    if ((*&v8 & 0x2000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_161;
  }

LABEL_160:
  *(toCopy + 289) = self->_canAccessAppleMusic;
  *(toCopy + 42) |= 0x800uLL;
  v8 = self->_has;
  if ((*&v8 & 0x2000) == 0)
  {
LABEL_42:
    if ((*&v8 & 0x200000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_162;
  }

LABEL_161:
  *(toCopy + 291) = self->_canAccessiCloudMusicLibrary;
  *(toCopy + 42) |= 0x2000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x200000) == 0)
  {
LABEL_43:
    if ((*&v8 & 0x80000000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_163;
  }

LABEL_162:
  *(toCopy + 299) = self->_groupContainsGroupLeader;
  *(toCopy + 42) |= 0x200000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x80000000000) == 0)
  {
LABEL_44:
    if ((*&v8 & 0x8000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_164;
  }

LABEL_163:
  *(toCopy + 321) = self->_supportsBufferedAirPlay;
  *(toCopy + 42) |= 0x80000000000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x8000) == 0)
  {
LABEL_45:
    if ((*&v8 & 0x4000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_165;
  }

LABEL_164:
  *(toCopy + 293) = self->_canPlayEncryptedProgressiveDownloadAssets;
  *(toCopy + 42) |= 0x8000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x4000) == 0)
  {
LABEL_46:
    if ((*&v8 & 0x2000000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_166;
  }

LABEL_165:
  *(toCopy + 292) = self->_canFetchMediaDataFromSender;
  *(toCopy + 42) |= 0x4000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x2000000000) == 0)
  {
LABEL_47:
    if ((*&v8 & 0x800000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

LABEL_166:
  *(toCopy + 315) = self->_presentsOptimizedUserInterfaceWhenPlayingFetchedAudioOnlyAssets;
  *(toCopy + 42) |= 0x2000000000uLL;
  if ((*&self->_has & 0x800000) != 0)
  {
LABEL_48:
    *(toCopy + 301) = self->_isAirPlayReceiverSessionActive;
    *(toCopy + 42) |= 0x800000uLL;
  }

LABEL_49:
  if (self->_parentGroupIdentifier)
  {
    [v43 setParentGroupIdentifier:?];
    toCopy = v43;
  }

  v9 = self->_has;
  if ((*&v9 & 0x800000000) != 0)
  {
    *(toCopy + 313) = self->_parentGroupContainsDiscoverableLeader;
    *(toCopy + 42) |= 0x800000000uLL;
    v9 = self->_has;
    if ((*&v9 & 0x400000) == 0)
    {
LABEL_53:
      if ((*&v9 & 0x200) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_54;
    }
  }

  else if ((*&v9 & 0x400000) == 0)
  {
    goto LABEL_53;
  }

  *(toCopy + 300) = self->_isAddedToHomeKit;
  *(toCopy + 42) |= 0x400000uLL;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_54:
    *(toCopy + 71) = self->_volumeCapabilities;
    *(toCopy + 42) |= 0x200uLL;
  }

LABEL_55:
  if (self->_bluetoothID)
  {
    [v43 setBluetoothID:?];
    toCopy = v43;
  }

  v10 = self->_has;
  if ((*&v10 & 0x400000000000) != 0)
  {
    *(toCopy + 324) = self->_supportsHAP;
    *(toCopy + 42) |= 0x400000000000uLL;
    v10 = self->_has;
  }

  if ((*&v10 & 0x10000000000000) != 0)
  {
    *(toCopy + 330) = self->_usingJSONProtocol;
    *(toCopy + 42) |= 0x10000000000000uLL;
  }

  if ([(_MRAVOutputDeviceDescriptorProtobuf *)self clusterCompositionsCount])
  {
    [v43 clearClusterCompositions];
    clusterCompositionsCount = [(_MRAVOutputDeviceDescriptorProtobuf *)self clusterCompositionsCount];
    if (clusterCompositionsCount)
    {
      v12 = clusterCompositionsCount;
      for (i = 0; i != v12; ++i)
      {
        v14 = [(_MRAVOutputDeviceDescriptorProtobuf *)self clusterCompositionAtIndex:i];
        [v43 addClusterComposition:v14];
      }
    }
  }

  v15 = v43;
  if ((*&self->_has & 2) != 0)
  {
    *(v43 + 20) = self->_clusterType;
    *(v43 + 42) |= 2uLL;
  }

  if (self->_primaryUID)
  {
    [v43 setPrimaryUID:?];
    v15 = v43;
  }

  v16 = self->_has;
  if ((*&v16 & 4) != 0)
  {
    v15[21] = self->_configuredClusterSize;
    *(v15 + 42) |= 4uLL;
    v16 = self->_has;
  }

  if ((*&v16 & 0x4000000000000) != 0)
  {
    *(v15 + 328) = self->_supportsRapportRemoteControlTransport;
    *(v15 + 42) |= 0x4000000000000uLL;
  }

  if (self->_currentBluetoothListeningMode)
  {
    [v43 setCurrentBluetoothListeningMode:?];
  }

  if ([(_MRAVOutputDeviceDescriptorProtobuf *)self availableBluetoothListeningModesCount])
  {
    [v43 clearAvailableBluetoothListeningModes];
    availableBluetoothListeningModesCount = [(_MRAVOutputDeviceDescriptorProtobuf *)self availableBluetoothListeningModesCount];
    if (availableBluetoothListeningModesCount)
    {
      v18 = availableBluetoothListeningModesCount;
      for (j = 0; j != v18; ++j)
      {
        v20 = [(_MRAVOutputDeviceDescriptorProtobuf *)self availableBluetoothListeningModesAtIndex:j];
        [v43 addAvailableBluetoothListeningModes:v20];
      }
    }
  }

  v21 = self->_has;
  v22 = v43;
  if ((*&v21 & 0x1000000000000) != 0)
  {
    *(v43 + 326) = self->_supportsMultiplayer;
    *(v43 + 42) |= 0x1000000000000uLL;
    v21 = self->_has;
    if ((*&v21 & 0x4000000000) == 0)
    {
LABEL_81:
      if ((*&v21 & 0x40) == 0)
      {
        goto LABEL_83;
      }

      goto LABEL_82;
    }
  }

  else if ((*&v21 & 0x4000000000) == 0)
  {
    goto LABEL_81;
  }

  *(v43 + 316) = self->_producesLowFidelityAudio;
  *(v43 + 42) |= 0x4000000000uLL;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_82:
    *(v43 + 40) = self->_hostDeviceClass;
    *(v43 + 42) |= 0x40uLL;
  }

LABEL_83:
  if (self->_airPlayGroupID)
  {
    [v43 setAirPlayGroupID:?];
    v22 = v43;
  }

  v23 = self->_has;
  if ((*&v23 & 0x8000000000000) == 0)
  {
    if ((*&v23 & 0x20) == 0)
    {
      goto LABEL_87;
    }

LABEL_175:
    v22[28] = LODWORD(self->_distance);
    *(v22 + 42) |= 0x20uLL;
    if ((*&self->_has & 0x80000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_88;
  }

  *(v22 + 329) = self->_supportsSharePlayHandoff;
  *(v22 + 42) |= 0x8000000000000uLL;
  v23 = self->_has;
  if ((*&v23 & 0x20) != 0)
  {
    goto LABEL_175;
  }

LABEL_87:
  if ((*&v23 & 0x80000) != 0)
  {
LABEL_88:
    *(v22 + 297) = self->_discoveredOnSameInfra;
    *(v22 + 42) |= 0x80000uLL;
  }

LABEL_89:
  if ([(_MRAVOutputDeviceDescriptorProtobuf *)self activatedClusterMembersCount])
  {
    [v43 clearActivatedClusterMembers];
    activatedClusterMembersCount = [(_MRAVOutputDeviceDescriptorProtobuf *)self activatedClusterMembersCount];
    if (activatedClusterMembersCount)
    {
      v25 = activatedClusterMembersCount;
      for (k = 0; k != v25; ++k)
      {
        v27 = [(_MRAVOutputDeviceDescriptorProtobuf *)self activatedClusterMembersAtIndex:k];
        [v43 addActivatedClusterMembers:v27];
      }
    }
  }

  v28 = self->_has;
  v29 = v43;
  if ((*&v28 & 0x1000000000) != 0)
  {
    *(v43 + 314) = self->_pickable;
    *(v43 + 42) |= 0x1000000000uLL;
    v28 = self->_has;
  }

  if ((*&v28 & 0x80) != 0)
  {
    *(v43 + 66) = self->_transportType;
    *(v43 + 42) |= 0x80uLL;
  }

  if (self->_clusterID)
  {
    [v43 setClusterID:?];
    v29 = v43;
  }

  v30 = self->_has;
  if ((*&v30 & 0x2000000) != 0)
  {
    v29[303] = self->_isClusterLeader;
    *(v29 + 42) |= 0x2000000uLL;
    v30 = self->_has;
  }

  if ((*&v30 & 0x1000000) != 0)
  {
    v29[302] = self->_isAppleAccessory;
    *(v29 + 42) |= 0x1000000uLL;
  }

  if (self->_parentUniqueIdentifier)
  {
    [v43 setParentUniqueIdentifier:?];
  }

  if (self->_roomID)
  {
    [v43 setRoomID:?];
  }

  if (self->_roomName)
  {
    [v43 setRoomName:?];
  }

  if ([(_MRAVOutputDeviceDescriptorProtobuf *)self allClusterMembersCount])
  {
    [v43 clearAllClusterMembers];
    allClusterMembersCount = [(_MRAVOutputDeviceDescriptorProtobuf *)self allClusterMembersCount];
    if (allClusterMembersCount)
    {
      v32 = allClusterMembersCount;
      for (m = 0; m != v32; ++m)
      {
        v34 = [(_MRAVOutputDeviceDescriptorProtobuf *)self allClusterMembersAtIndex:m];
        [v43 addAllClusterMembers:v34];
      }
    }
  }

  v35 = self->_has;
  v36 = v43;
  if ((*&v35 & 0x100000000000) != 0)
  {
    *(v43 + 322) = self->_supportsConversationDetection;
    *(v43 + 42) |= 0x100000000000uLL;
    v35 = self->_has;
    if ((*&v35 & 0x20000) == 0)
    {
LABEL_115:
      if ((*&v35 & 0x100000) == 0)
      {
        goto LABEL_116;
      }

      goto LABEL_179;
    }
  }

  else if ((*&v35 & 0x20000) == 0)
  {
    goto LABEL_115;
  }

  *(v43 + 295) = self->_conversationDetectionEnabled;
  *(v43 + 42) |= 0x20000uLL;
  v35 = self->_has;
  if ((*&v35 & 0x100000) == 0)
  {
LABEL_116:
    if ((*&v35 & 0x20000000000000) == 0)
    {
      goto LABEL_118;
    }

    goto LABEL_117;
  }

LABEL_179:
  *(v43 + 298) = self->_engageOnClusterActivate;
  *(v43 + 42) |= 0x100000uLL;
  if ((*&self->_has & 0x20000000000000) != 0)
  {
LABEL_117:
    *(v43 + 331) = self->_volumeMuted;
    *(v43 + 42) |= 0x20000000000000uLL;
  }

LABEL_118:
  if (self->_groupSessionInfo)
  {
    [v43 setGroupSessionInfo:?];
    v36 = v43;
  }

  if ((*(&self->_has + 5) & 4) != 0)
  {
    v36[320] = self->_supportsBluetoothSharing;
    *(v36 + 42) |= 0x40000000000uLL;
  }

  if (self->_deviceEnclosureColor)
  {
    [v43 setDeviceEnclosureColor:?];
    v36 = v43;
  }

  if (self->_playingPairedDeviceName)
  {
    [v43 setPlayingPairedDeviceName:?];
    v36 = v43;
  }

  v37 = self->_has;
  if ((*&v37 & 0x2000000000000) != 0)
  {
    v36[327] = self->_supportsRapport;
    *(v36 + 42) |= 0x2000000000000uLL;
    v37 = self->_has;
    if ((*&v37 & 0x80000000) == 0)
    {
LABEL_128:
      if ((*&v37 & 0x800000000000) == 0)
      {
        goto LABEL_129;
      }

      goto LABEL_183;
    }
  }

  else if ((*&v37 & 0x80000000) == 0)
  {
    goto LABEL_128;
  }

  v36[309] = self->_isPickedOnPairedDevice;
  *(v36 + 42) |= 0x80000000uLL;
  v37 = self->_has;
  if ((*&v37 & 0x800000000000) == 0)
  {
LABEL_129:
    if ((*&v37 & 0x400) == 0)
    {
      goto LABEL_130;
    }

    goto LABEL_184;
  }

LABEL_183:
  v36[325] = self->_supportsHeadTrackedSpatialAudio;
  *(v36 + 42) |= 0x800000000000uLL;
  v37 = self->_has;
  if ((*&v37 & 0x400) == 0)
  {
LABEL_130:
    if ((*&v37 & 0x20000000) == 0)
    {
      goto LABEL_132;
    }

    goto LABEL_131;
  }

LABEL_184:
  v36[288] = self->_allowsHeadTrackedSpatialAudio;
  *(v36 + 42) |= 0x400uLL;
  if ((*&self->_has & 0x20000000) != 0)
  {
LABEL_131:
    v36[307] = self->_isHeadTrackedSpatialAudioActive;
    *(v36 + 42) |= 0x20000000uLL;
  }

LABEL_132:
  if (self->_headTrackedSpatialAudioMode)
  {
    [v43 setHeadTrackedSpatialAudioMode:?];
  }

  if ([(_MRAVOutputDeviceDescriptorProtobuf *)self dnsNamesCount])
  {
    [v43 clearDnsNames];
    dnsNamesCount = [(_MRAVOutputDeviceDescriptorProtobuf *)self dnsNamesCount];
    if (dnsNamesCount)
    {
      v39 = dnsNamesCount;
      for (n = 0; n != v39; ++n)
      {
        v41 = [(_MRAVOutputDeviceDescriptorProtobuf *)self dnsNamesAtIndex:n];
        [v43 addDnsNames:v41];
      }
    }
  }

  if (self->_alternateTransportType)
  {
    [v43 setAlternateTransportType:?];
  }

  v42 = self->_has;
  if ((*&v42 & 0x40000) != 0)
  {
    *(v43 + 296) = self->_deviceIsPlaying;
    *(v43 + 42) |= 0x40000uLL;
    v42 = self->_has;
    if ((*&v42 & 0x40000000000000) == 0)
    {
LABEL_142:
      if ((*&v42 & 0x8000000000) == 0)
      {
        goto LABEL_144;
      }

      goto LABEL_143;
    }
  }

  else if ((*&v42 & 0x40000000000000) == 0)
  {
    goto LABEL_142;
  }

  *(v43 + 332) = self->_wasDiscoveredInCache;
  *(v43 + 42) |= 0x40000000000000uLL;
  if ((*&self->_has & 0x8000000000) != 0)
  {
LABEL_143:
    *(v43 + 317) = self->_representsUGLSender;
    *(v43 + 42) |= 0x8000000000uLL;
  }

LABEL_144:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v124 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_name copyWithZone:zone];
  v7 = *(v5 + 200);
  *(v5 + 200) = v6;

  v8 = [(NSString *)self->_uniqueIdentifier copyWithZone:zone];
  v9 = *(v5 + 272);
  *(v5 + 272) = v8;

  v10 = [(NSString *)self->_groupID copyWithZone:zone];
  v11 = *(v5 + 136);
  *(v5 + 136) = v10;

  v12 = [(NSString *)self->_modelID copyWithZone:zone];
  v13 = *(v5 + 184);
  *(v5 + 184) = v12;

  v14 = [(NSData *)self->_macAddress copyWithZone:zone];
  v15 = *(v5 + 176);
  *(v5 + 176) = v14;

  has = self->_has;
  if ((*&has & 0x1000) != 0)
  {
    *(v5 + 290) = self->_canAccessRemoteAssets;
    *(v5 + 336) |= 0x1000uLL;
    has = self->_has;
    if ((*&has & 0x200000000) == 0)
    {
LABEL_3:
      if ((*&has & 0x8000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_116;
    }
  }

  else if ((*&has & 0x200000000) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 311) = self->_isRemoteControllable;
  *(v5 + 336) |= 0x200000000uLL;
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_4:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_117;
  }

LABEL_116:
  *(v5 + 305) = self->_isGroupLeader;
  *(v5 + 336) |= 0x8000000uLL;
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_5:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_118;
  }

LABEL_117:
  *(v5 + 306) = self->_isGroupable;
  *(v5 + 336) |= 0x10000000uLL;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_6:
    if ((*&has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_118:
  *(v5 + 108) = self->_deviceType;
  *(v5 + 336) |= 0x10uLL;
  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    *(v5 + 104) = self->_deviceSubType;
    *(v5 + 336) |= 8uLL;
  }

LABEL_8:
  v17 = [(NSData *)self->_modelSpecificInfoData copyWithZone:zone];
  v18 = *(v5 + 192);
  *(v5 + 192) = v17;

  v19 = self->_has;
  if (*&v19)
  {
    *(v5 + 48) = self->_batteryLevel;
    *(v5 + 336) |= 1uLL;
    v19 = self->_has;
    if ((*&v19 & 0x40000000) == 0)
    {
LABEL_10:
      if ((*&v19 & 0x200000000000) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_122;
    }
  }

  else if ((*&v19 & 0x40000000) == 0)
  {
    goto LABEL_10;
  }

  *(v5 + 308) = self->_isLocalDevice;
  *(v5 + 336) |= 0x40000000uLL;
  v19 = self->_has;
  if ((*&v19 & 0x200000000000) == 0)
  {
LABEL_11:
    if ((*&v19 & 0x10000000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_123;
  }

LABEL_122:
  *(v5 + 323) = self->_supportsExternalScreen;
  *(v5 + 336) |= 0x200000000000uLL;
  v19 = self->_has;
  if ((*&v19 & 0x10000000000) == 0)
  {
LABEL_12:
    if ((*&v19 & 0x20000000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_123:
  *(v5 + 318) = self->_requiresAuthorization;
  *(v5 + 336) |= 0x10000000000uLL;
  if ((*&self->_has & 0x20000000000) != 0)
  {
LABEL_13:
    *(v5 + 319) = self->_shouldForceRemoteControlabillity;
    *(v5 + 336) |= 0x20000000000uLL;
  }

LABEL_14:
  v20 = [(_MRAVOutputDeviceSourceInfoProtobuf *)self->_sourceInfo copyWithZone:zone];
  v21 = *(v5 + 256);
  *(v5 + 256) = v20;

  v22 = self->_has;
  if ((*&v22 & 0x4000000) != 0)
  {
    *(v5 + 304) = self->_isDeviceGroupable;
    *(v5 + 336) |= 0x4000000uLL;
    v22 = self->_has;
  }

  if ((*&v22 & 0x10000) != 0)
  {
    *(v5 + 294) = self->_canRelayCommunicationChannel;
    *(v5 + 336) |= 0x10000uLL;
  }

  v23 = [(NSString *)self->_logicalDeviceID copyWithZone:zone];
  v24 = *(v5 + 168);
  *(v5 + 168) = v23;

  if (*(&self->_has + 4))
  {
    *(v5 + 310) = self->_isProxyGroupPlayer;
    *(v5 + 336) |= 0x100000000uLL;
  }

  v25 = [(NSString *)self->_firmwareVersion copyWithZone:zone];
  v26 = *(v5 + 128);
  *(v5 + 128) = v25;

  v27 = self->_has;
  if ((*&v27 & 0x100) != 0)
  {
    *(v5 + 280) = self->_volume;
    *(v5 + 336) |= 0x100uLL;
    v27 = self->_has;
    if ((*&v27 & 0x400000000) == 0)
    {
LABEL_22:
      if ((*&v27 & 0x800) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_127;
    }
  }

  else if ((*&v27 & 0x400000000) == 0)
  {
    goto LABEL_22;
  }

  *(v5 + 312) = self->_isVolumeControlAvailable;
  *(v5 + 336) |= 0x400000000uLL;
  v27 = self->_has;
  if ((*&v27 & 0x800) == 0)
  {
LABEL_23:
    if ((*&v27 & 0x2000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_128;
  }

LABEL_127:
  *(v5 + 289) = self->_canAccessAppleMusic;
  *(v5 + 336) |= 0x800uLL;
  v27 = self->_has;
  if ((*&v27 & 0x2000) == 0)
  {
LABEL_24:
    if ((*&v27 & 0x200000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_129;
  }

LABEL_128:
  *(v5 + 291) = self->_canAccessiCloudMusicLibrary;
  *(v5 + 336) |= 0x2000uLL;
  v27 = self->_has;
  if ((*&v27 & 0x200000) == 0)
  {
LABEL_25:
    if ((*&v27 & 0x80000000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_130;
  }

LABEL_129:
  *(v5 + 299) = self->_groupContainsGroupLeader;
  *(v5 + 336) |= 0x200000uLL;
  v27 = self->_has;
  if ((*&v27 & 0x80000000000) == 0)
  {
LABEL_26:
    if ((*&v27 & 0x8000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_131;
  }

LABEL_130:
  *(v5 + 321) = self->_supportsBufferedAirPlay;
  *(v5 + 336) |= 0x80000000000uLL;
  v27 = self->_has;
  if ((*&v27 & 0x8000) == 0)
  {
LABEL_27:
    if ((*&v27 & 0x4000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_132;
  }

LABEL_131:
  *(v5 + 293) = self->_canPlayEncryptedProgressiveDownloadAssets;
  *(v5 + 336) |= 0x8000uLL;
  v27 = self->_has;
  if ((*&v27 & 0x4000) == 0)
  {
LABEL_28:
    if ((*&v27 & 0x2000000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_133;
  }

LABEL_132:
  *(v5 + 292) = self->_canFetchMediaDataFromSender;
  *(v5 + 336) |= 0x4000uLL;
  v27 = self->_has;
  if ((*&v27 & 0x2000000000) == 0)
  {
LABEL_29:
    if ((*&v27 & 0x800000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_133:
  *(v5 + 315) = self->_presentsOptimizedUserInterfaceWhenPlayingFetchedAudioOnlyAssets;
  *(v5 + 336) |= 0x2000000000uLL;
  if ((*&self->_has & 0x800000) != 0)
  {
LABEL_30:
    *(v5 + 301) = self->_isAirPlayReceiverSessionActive;
    *(v5 + 336) |= 0x800000uLL;
  }

LABEL_31:
  v28 = [(NSString *)self->_parentGroupIdentifier copyWithZone:zone];
  v29 = *(v5 + 208);
  *(v5 + 208) = v28;

  v30 = self->_has;
  if ((*&v30 & 0x800000000) != 0)
  {
    *(v5 + 313) = self->_parentGroupContainsDiscoverableLeader;
    *(v5 + 336) |= 0x800000000uLL;
    v30 = self->_has;
    if ((*&v30 & 0x400000) == 0)
    {
LABEL_33:
      if ((*&v30 & 0x200) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }
  }

  else if ((*&v30 & 0x400000) == 0)
  {
    goto LABEL_33;
  }

  *(v5 + 300) = self->_isAddedToHomeKit;
  *(v5 + 336) |= 0x400000uLL;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_34:
    *(v5 + 284) = self->_volumeCapabilities;
    *(v5 + 336) |= 0x200uLL;
  }

LABEL_35:
  v31 = [(NSString *)self->_bluetoothID copyWithZone:zone];
  v32 = *(v5 + 56);
  *(v5 + 56) = v31;

  v33 = self->_has;
  if ((*&v33 & 0x400000000000) != 0)
  {
    *(v5 + 324) = self->_supportsHAP;
    *(v5 + 336) |= 0x400000000000uLL;
    v33 = self->_has;
  }

  if ((*&v33 & 0x10000000000000) != 0)
  {
    *(v5 + 330) = self->_usingJSONProtocol;
    *(v5 + 336) |= 0x10000000000000uLL;
  }

  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  v34 = self->_clusterCompositions;
  v35 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v115 objects:v123 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v116;
    do
    {
      v38 = 0;
      do
      {
        if (*v116 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = [*(*(&v115 + 1) + 8 * v38) copyWithZone:zone];
        [v5 addClusterComposition:v39];

        ++v38;
      }

      while (v36 != v38);
      v36 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v115 objects:v123 count:16];
    }

    while (v36);
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 80) = self->_clusterType;
    *(v5 + 336) |= 2uLL;
  }

  v40 = [(NSString *)self->_primaryUID copyWithZone:zone];
  v41 = *(v5 + 232);
  *(v5 + 232) = v40;

  v42 = self->_has;
  if ((*&v42 & 4) != 0)
  {
    *(v5 + 84) = self->_configuredClusterSize;
    *(v5 + 336) |= 4uLL;
    v42 = self->_has;
  }

  if ((*&v42 & 0x4000000000000) != 0)
  {
    *(v5 + 328) = self->_supportsRapportRemoteControlTransport;
    *(v5 + 336) |= 0x4000000000000uLL;
  }

  v43 = [(NSString *)self->_currentBluetoothListeningMode copyWithZone:zone];
  v44 = *(v5 + 88);
  *(v5 + 88) = v43;

  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v45 = self->_availableBluetoothListeningModes;
  v46 = [(NSMutableArray *)v45 countByEnumeratingWithState:&v111 objects:v122 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v112;
    do
    {
      v49 = 0;
      do
      {
        if (*v112 != v48)
        {
          objc_enumerationMutation(v45);
        }

        v50 = [*(*(&v111 + 1) + 8 * v49) copyWithZone:zone];
        [v5 addAvailableBluetoothListeningModes:v50];

        ++v49;
      }

      while (v47 != v49);
      v47 = [(NSMutableArray *)v45 countByEnumeratingWithState:&v111 objects:v122 count:16];
    }

    while (v47);
  }

  v51 = self->_has;
  if ((*&v51 & 0x1000000000000) != 0)
  {
    *(v5 + 326) = self->_supportsMultiplayer;
    *(v5 + 336) |= 0x1000000000000uLL;
    v51 = self->_has;
    if ((*&v51 & 0x4000000000) == 0)
    {
LABEL_61:
      if ((*&v51 & 0x40) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }
  }

  else if ((*&v51 & 0x4000000000) == 0)
  {
    goto LABEL_61;
  }

  *(v5 + 316) = self->_producesLowFidelityAudio;
  *(v5 + 336) |= 0x4000000000uLL;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_62:
    *(v5 + 160) = self->_hostDeviceClass;
    *(v5 + 336) |= 0x40uLL;
  }

LABEL_63:
  v52 = [(NSString *)self->_airPlayGroupID copyWithZone:zone];
  v53 = *(v5 + 16);
  *(v5 + 16) = v52;

  v54 = self->_has;
  if ((*&v54 & 0x8000000000000) != 0)
  {
    *(v5 + 329) = self->_supportsSharePlayHandoff;
    *(v5 + 336) |= 0x8000000000000uLL;
    v54 = self->_has;
    if ((*&v54 & 0x20) == 0)
    {
LABEL_65:
      if ((*&v54 & 0x80000) == 0)
      {
        goto LABEL_67;
      }

      goto LABEL_66;
    }
  }

  else if ((*&v54 & 0x20) == 0)
  {
    goto LABEL_65;
  }

  *(v5 + 112) = self->_distance;
  *(v5 + 336) |= 0x20uLL;
  if ((*&self->_has & 0x80000) != 0)
  {
LABEL_66:
    *(v5 + 297) = self->_discoveredOnSameInfra;
    *(v5 + 336) |= 0x80000uLL;
  }

LABEL_67:
  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v55 = self->_activatedClusterMembers;
  v56 = [(NSMutableArray *)v55 countByEnumeratingWithState:&v107 objects:v121 count:16];
  if (v56)
  {
    v57 = v56;
    v58 = *v108;
    do
    {
      v59 = 0;
      do
      {
        if (*v108 != v58)
        {
          objc_enumerationMutation(v55);
        }

        v60 = [*(*(&v107 + 1) + 8 * v59) copyWithZone:zone];
        [v5 addActivatedClusterMembers:v60];

        ++v59;
      }

      while (v57 != v59);
      v57 = [(NSMutableArray *)v55 countByEnumeratingWithState:&v107 objects:v121 count:16];
    }

    while (v57);
  }

  v61 = self->_has;
  if ((*&v61 & 0x1000000000) != 0)
  {
    *(v5 + 314) = self->_pickable;
    *(v5 + 336) |= 0x1000000000uLL;
    v61 = self->_has;
  }

  if ((*&v61 & 0x80) != 0)
  {
    *(v5 + 264) = self->_transportType;
    *(v5 + 336) |= 0x80uLL;
  }

  v62 = [(NSString *)self->_clusterID copyWithZone:zone];
  v63 = *(v5 + 72);
  *(v5 + 72) = v62;

  v64 = self->_has;
  if ((*&v64 & 0x2000000) != 0)
  {
    *(v5 + 303) = self->_isClusterLeader;
    *(v5 + 336) |= 0x2000000uLL;
    v64 = self->_has;
  }

  if ((*&v64 & 0x1000000) != 0)
  {
    *(v5 + 302) = self->_isAppleAccessory;
    *(v5 + 336) |= 0x1000000uLL;
  }

  v65 = [(NSString *)self->_parentUniqueIdentifier copyWithZone:zone];
  v66 = *(v5 + 216);
  *(v5 + 216) = v65;

  v67 = [(NSString *)self->_roomID copyWithZone:zone];
  v68 = *(v5 + 240);
  *(v5 + 240) = v67;

  v69 = [(NSString *)self->_roomName copyWithZone:zone];
  v70 = *(v5 + 248);
  *(v5 + 248) = v69;

  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v71 = self->_allClusterMembers;
  v72 = [(NSMutableArray *)v71 countByEnumeratingWithState:&v103 objects:v120 count:16];
  if (v72)
  {
    v73 = v72;
    v74 = *v104;
    do
    {
      v75 = 0;
      do
      {
        if (*v104 != v74)
        {
          objc_enumerationMutation(v71);
        }

        v76 = [*(*(&v103 + 1) + 8 * v75) copyWithZone:zone];
        [v5 addAllClusterMembers:v76];

        ++v75;
      }

      while (v73 != v75);
      v73 = [(NSMutableArray *)v71 countByEnumeratingWithState:&v103 objects:v120 count:16];
    }

    while (v73);
  }

  v77 = self->_has;
  if ((*&v77 & 0x100000000000) != 0)
  {
    *(v5 + 322) = self->_supportsConversationDetection;
    *(v5 + 336) |= 0x100000000000uLL;
    v77 = self->_has;
    if ((*&v77 & 0x20000) == 0)
    {
LABEL_91:
      if ((*&v77 & 0x100000) == 0)
      {
        goto LABEL_92;
      }

      goto LABEL_146;
    }
  }

  else if ((*&v77 & 0x20000) == 0)
  {
    goto LABEL_91;
  }

  *(v5 + 295) = self->_conversationDetectionEnabled;
  *(v5 + 336) |= 0x20000uLL;
  v77 = self->_has;
  if ((*&v77 & 0x100000) == 0)
  {
LABEL_92:
    if ((*&v77 & 0x20000000000000) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_93;
  }

LABEL_146:
  *(v5 + 298) = self->_engageOnClusterActivate;
  *(v5 + 336) |= 0x100000uLL;
  if ((*&self->_has & 0x20000000000000) != 0)
  {
LABEL_93:
    *(v5 + 331) = self->_volumeMuted;
    *(v5 + 336) |= 0x20000000000000uLL;
  }

LABEL_94:
  v78 = [(_MRGroupSessionInfoProtobuf *)self->_groupSessionInfo copyWithZone:zone];
  v79 = *(v5 + 144);
  *(v5 + 144) = v78;

  if ((*(&self->_has + 5) & 4) != 0)
  {
    *(v5 + 320) = self->_supportsBluetoothSharing;
    *(v5 + 336) |= 0x40000000000uLL;
  }

  v80 = [(NSString *)self->_deviceEnclosureColor copyWithZone:zone];
  v81 = *(v5 + 96);
  *(v5 + 96) = v80;

  v82 = [(NSString *)self->_playingPairedDeviceName copyWithZone:zone];
  v83 = *(v5 + 224);
  *(v5 + 224) = v82;

  v84 = self->_has;
  if ((*&v84 & 0x2000000000000) != 0)
  {
    *(v5 + 327) = self->_supportsRapport;
    *(v5 + 336) |= 0x2000000000000uLL;
    v84 = self->_has;
    if ((*&v84 & 0x80000000) == 0)
    {
LABEL_98:
      if ((*&v84 & 0x800000000000) == 0)
      {
        goto LABEL_99;
      }

      goto LABEL_150;
    }
  }

  else if ((*&v84 & 0x80000000) == 0)
  {
    goto LABEL_98;
  }

  *(v5 + 309) = self->_isPickedOnPairedDevice;
  *(v5 + 336) |= 0x80000000uLL;
  v84 = self->_has;
  if ((*&v84 & 0x800000000000) == 0)
  {
LABEL_99:
    if ((*&v84 & 0x400) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_151;
  }

LABEL_150:
  *(v5 + 325) = self->_supportsHeadTrackedSpatialAudio;
  *(v5 + 336) |= 0x800000000000uLL;
  v84 = self->_has;
  if ((*&v84 & 0x400) == 0)
  {
LABEL_100:
    if ((*&v84 & 0x20000000) == 0)
    {
      goto LABEL_102;
    }

    goto LABEL_101;
  }

LABEL_151:
  *(v5 + 288) = self->_allowsHeadTrackedSpatialAudio;
  *(v5 + 336) |= 0x400uLL;
  if ((*&self->_has & 0x20000000) != 0)
  {
LABEL_101:
    *(v5 + 307) = self->_isHeadTrackedSpatialAudioActive;
    *(v5 + 336) |= 0x20000000uLL;
  }

LABEL_102:
  v85 = [(NSString *)self->_headTrackedSpatialAudioMode copyWithZone:zone];
  v86 = *(v5 + 152);
  *(v5 + 152) = v85;

  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v87 = self->_dnsNames;
  v88 = [(NSMutableArray *)v87 countByEnumeratingWithState:&v99 objects:v119 count:16];
  if (v88)
  {
    v89 = v88;
    v90 = *v100;
    do
    {
      v91 = 0;
      do
      {
        if (*v100 != v90)
        {
          objc_enumerationMutation(v87);
        }

        v92 = [*(*(&v99 + 1) + 8 * v91) copyWithZone:{zone, v99}];
        [v5 addDnsNames:v92];

        ++v91;
      }

      while (v89 != v91);
      v89 = [(NSMutableArray *)v87 countByEnumeratingWithState:&v99 objects:v119 count:16];
    }

    while (v89);
  }

  v93 = [(NSString *)self->_alternateTransportType copyWithZone:zone];
  v94 = *(v5 + 32);
  *(v5 + 32) = v93;

  v95 = self->_has;
  if ((*&v95 & 0x40000) == 0)
  {
    if ((*&v95 & 0x40000000000000) == 0)
    {
      goto LABEL_111;
    }

LABEL_154:
    *(v5 + 332) = self->_wasDiscoveredInCache;
    *(v5 + 336) |= 0x40000000000000uLL;
    if ((*&self->_has & 0x8000000000) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_112;
  }

  *(v5 + 296) = self->_deviceIsPlaying;
  *(v5 + 336) |= 0x40000uLL;
  v95 = self->_has;
  if ((*&v95 & 0x40000000000000) != 0)
  {
    goto LABEL_154;
  }

LABEL_111:
  if ((*&v95 & 0x8000000000) != 0)
  {
LABEL_112:
    *(v5 + 317) = self->_representsUGLSender;
    *(v5 + 336) |= 0x8000000000uLL;
  }

LABEL_113:
  v96 = v5;

  v97 = *MEMORY[0x1E69E9840];
  return v96;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_477;
  }

  name = self->_name;
  if (name | *(equalCopy + 25))
  {
    if (![(NSString *)name isEqual:?])
    {
      goto LABEL_477;
    }
  }

  uniqueIdentifier = self->_uniqueIdentifier;
  if (uniqueIdentifier | *(equalCopy + 34))
  {
    if (![(NSString *)uniqueIdentifier isEqual:?])
    {
      goto LABEL_477;
    }
  }

  groupID = self->_groupID;
  if (groupID | *(equalCopy + 17))
  {
    if (![(NSString *)groupID isEqual:?])
    {
      goto LABEL_477;
    }
  }

  modelID = self->_modelID;
  if (modelID | *(equalCopy + 23))
  {
    if (![(NSString *)modelID isEqual:?])
    {
      goto LABEL_477;
    }
  }

  macAddress = self->_macAddress;
  if (macAddress | *(equalCopy + 22))
  {
    if (![(NSData *)macAddress isEqual:?])
    {
      goto LABEL_477;
    }
  }

  has = self->_has;
  v11 = *(equalCopy + 42);
  if ((*&has & 0x1000) != 0)
  {
    if ((v11 & 0x1000) == 0)
    {
      goto LABEL_477;
    }

    v12 = *(equalCopy + 290);
    if (self->_canAccessRemoteAssets)
    {
      if ((*(equalCopy + 290) & 1) == 0)
      {
        goto LABEL_477;
      }
    }

    else if (*(equalCopy + 290))
    {
      goto LABEL_477;
    }
  }

  else if ((v11 & 0x1000) != 0)
  {
    goto LABEL_477;
  }

  if ((*&has & 0x200000000) != 0)
  {
    if ((v11 & 0x200000000) == 0)
    {
      goto LABEL_477;
    }

    v13 = *(equalCopy + 311);
    if (self->_isRemoteControllable)
    {
      if ((*(equalCopy + 311) & 1) == 0)
      {
        goto LABEL_477;
      }
    }

    else if (*(equalCopy + 311))
    {
      goto LABEL_477;
    }
  }

  else if ((v11 & 0x200000000) != 0)
  {
    goto LABEL_477;
  }

  if ((*&has & 0x8000000) != 0)
  {
    if ((v11 & 0x8000000) == 0)
    {
      goto LABEL_477;
    }

    v14 = *(equalCopy + 305);
    if (self->_isGroupLeader)
    {
      if ((*(equalCopy + 305) & 1) == 0)
      {
        goto LABEL_477;
      }
    }

    else if (*(equalCopy + 305))
    {
      goto LABEL_477;
    }
  }

  else if ((v11 & 0x8000000) != 0)
  {
    goto LABEL_477;
  }

  if ((*&has & 0x10000000) != 0)
  {
    if ((v11 & 0x10000000) == 0)
    {
      goto LABEL_477;
    }

    v15 = *(equalCopy + 306);
    if (self->_isGroupable)
    {
      if ((*(equalCopy + 306) & 1) == 0)
      {
        goto LABEL_477;
      }
    }

    else if (*(equalCopy + 306))
    {
      goto LABEL_477;
    }
  }

  else if ((v11 & 0x10000000) != 0)
  {
    goto LABEL_477;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v11 & 0x10) == 0 || self->_deviceType != *(equalCopy + 27))
    {
      goto LABEL_477;
    }
  }

  else if ((v11 & 0x10) != 0)
  {
    goto LABEL_477;
  }

  if ((*&has & 8) != 0)
  {
    if ((v11 & 8) == 0 || self->_deviceSubType != *(equalCopy + 26))
    {
      goto LABEL_477;
    }
  }

  else if ((v11 & 8) != 0)
  {
    goto LABEL_477;
  }

  modelSpecificInfoData = self->_modelSpecificInfoData;
  if (modelSpecificInfoData | *(equalCopy + 24))
  {
    if (![(NSData *)modelSpecificInfoData isEqual:?])
    {
      goto LABEL_477;
    }

    has = self->_has;
  }

  v17 = *(equalCopy + 42);
  if (*&has)
  {
    if ((v17 & 1) == 0 || self->_batteryLevel != *(equalCopy + 12))
    {
      goto LABEL_477;
    }
  }

  else if (v17)
  {
    goto LABEL_477;
  }

  if ((*&has & 0x40000000) != 0)
  {
    if ((v17 & 0x40000000) == 0)
    {
      goto LABEL_477;
    }

    v24 = *(equalCopy + 308);
    if (self->_isLocalDevice)
    {
      if ((*(equalCopy + 308) & 1) == 0)
      {
        goto LABEL_477;
      }
    }

    else if (*(equalCopy + 308))
    {
      goto LABEL_477;
    }
  }

  else if ((v17 & 0x40000000) != 0)
  {
    goto LABEL_477;
  }

  if ((*&has & 0x200000000000) != 0)
  {
    if ((v17 & 0x200000000000) == 0)
    {
      goto LABEL_477;
    }

    v25 = *(equalCopy + 323);
    if (self->_supportsExternalScreen)
    {
      if ((*(equalCopy + 323) & 1) == 0)
      {
        goto LABEL_477;
      }
    }

    else if (*(equalCopy + 323))
    {
      goto LABEL_477;
    }
  }

  else if ((v17 & 0x200000000000) != 0)
  {
    goto LABEL_477;
  }

  if ((*&has & 0x10000000000) != 0)
  {
    if ((v17 & 0x10000000000) == 0)
    {
      goto LABEL_477;
    }

    v26 = *(equalCopy + 318);
    if (self->_requiresAuthorization)
    {
      if ((*(equalCopy + 318) & 1) == 0)
      {
        goto LABEL_477;
      }
    }

    else if (*(equalCopy + 318))
    {
      goto LABEL_477;
    }
  }

  else if ((v17 & 0x10000000000) != 0)
  {
    goto LABEL_477;
  }

  if ((*&has & 0x20000000000) != 0)
  {
    if ((v17 & 0x20000000000) == 0)
    {
      goto LABEL_477;
    }

    v27 = *(equalCopy + 319);
    if (self->_shouldForceRemoteControlabillity)
    {
      if ((*(equalCopy + 319) & 1) == 0)
      {
        goto LABEL_477;
      }
    }

    else if (*(equalCopy + 319))
    {
      goto LABEL_477;
    }
  }

  else if ((v17 & 0x20000000000) != 0)
  {
    goto LABEL_477;
  }

  sourceInfo = self->_sourceInfo;
  if (sourceInfo | *(equalCopy + 32))
  {
    if (![(_MRAVOutputDeviceSourceInfoProtobuf *)sourceInfo isEqual:?])
    {
      goto LABEL_477;
    }

    has = self->_has;
  }

  v19 = *(equalCopy + 42);
  if ((*&has & 0x4000000) != 0)
  {
    if ((v19 & 0x4000000) == 0)
    {
      goto LABEL_477;
    }

    v28 = *(equalCopy + 304);
    if (self->_isDeviceGroupable)
    {
      if ((*(equalCopy + 304) & 1) == 0)
      {
        goto LABEL_477;
      }
    }

    else if (*(equalCopy + 304))
    {
      goto LABEL_477;
    }
  }

  else if ((v19 & 0x4000000) != 0)
  {
    goto LABEL_477;
  }

  if ((*&has & 0x10000) != 0)
  {
    if ((v19 & 0x10000) == 0)
    {
      goto LABEL_477;
    }

    v29 = *(equalCopy + 294);
    if (self->_canRelayCommunicationChannel)
    {
      if ((*(equalCopy + 294) & 1) == 0)
      {
        goto LABEL_477;
      }
    }

    else if (*(equalCopy + 294))
    {
      goto LABEL_477;
    }
  }

  else if ((v19 & 0x10000) != 0)
  {
    goto LABEL_477;
  }

  logicalDeviceID = self->_logicalDeviceID;
  if (logicalDeviceID | *(equalCopy + 21))
  {
    if (![(NSString *)logicalDeviceID isEqual:?])
    {
      goto LABEL_477;
    }

    has = self->_has;
  }

  v21 = *(equalCopy + 42);
  if ((*&has & 0x100000000) != 0)
  {
    if ((v21 & 0x100000000) == 0)
    {
      goto LABEL_477;
    }

    v30 = *(equalCopy + 310);
    if (self->_isProxyGroupPlayer)
    {
      if ((*(equalCopy + 310) & 1) == 0)
      {
        goto LABEL_477;
      }
    }

    else if (*(equalCopy + 310))
    {
      goto LABEL_477;
    }
  }

  else if ((v21 & 0x100000000) != 0)
  {
    goto LABEL_477;
  }

  firmwareVersion = self->_firmwareVersion;
  if (firmwareVersion | *(equalCopy + 16))
  {
    if (![(NSString *)firmwareVersion isEqual:?])
    {
      goto LABEL_477;
    }

    has = self->_has;
  }

  v23 = *(equalCopy + 42);
  if ((*&has & 0x100) != 0)
  {
    if ((v23 & 0x100) == 0 || self->_volume != *(equalCopy + 70))
    {
      goto LABEL_477;
    }
  }

  else if ((v23 & 0x100) != 0)
  {
    goto LABEL_477;
  }

  if ((*&has & 0x400000000) != 0)
  {
    if ((v23 & 0x400000000) == 0)
    {
      goto LABEL_477;
    }

    v31 = *(equalCopy + 312);
    if (self->_isVolumeControlAvailable)
    {
      if ((*(equalCopy + 312) & 1) == 0)
      {
        goto LABEL_477;
      }
    }

    else if (*(equalCopy + 312))
    {
      goto LABEL_477;
    }
  }

  else if ((v23 & 0x400000000) != 0)
  {
    goto LABEL_477;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v23 & 0x800) == 0)
    {
      goto LABEL_477;
    }

    v32 = *(equalCopy + 289);
    if (self->_canAccessAppleMusic)
    {
      if ((*(equalCopy + 289) & 1) == 0)
      {
        goto LABEL_477;
      }
    }

    else if (*(equalCopy + 289))
    {
      goto LABEL_477;
    }
  }

  else if ((v23 & 0x800) != 0)
  {
    goto LABEL_477;
  }

  if ((*&has & 0x2000) != 0)
  {
    if ((v23 & 0x2000) == 0)
    {
      goto LABEL_477;
    }

    v33 = *(equalCopy + 291);
    if (self->_canAccessiCloudMusicLibrary)
    {
      if ((*(equalCopy + 291) & 1) == 0)
      {
        goto LABEL_477;
      }
    }

    else if (*(equalCopy + 291))
    {
      goto LABEL_477;
    }
  }

  else if ((v23 & 0x2000) != 0)
  {
    goto LABEL_477;
  }

  if ((*&has & 0x200000) != 0)
  {
    if ((v23 & 0x200000) == 0)
    {
      goto LABEL_477;
    }

    v34 = *(equalCopy + 299);
    if (self->_groupContainsGroupLeader)
    {
      if ((*(equalCopy + 299) & 1) == 0)
      {
        goto LABEL_477;
      }
    }

    else if (*(equalCopy + 299))
    {
      goto LABEL_477;
    }
  }

  else if ((v23 & 0x200000) != 0)
  {
    goto LABEL_477;
  }

  if ((*&has & 0x80000000000) != 0)
  {
    if ((v23 & 0x80000000000) == 0)
    {
      goto LABEL_477;
    }

    v35 = *(equalCopy + 321);
    if (self->_supportsBufferedAirPlay)
    {
      if ((*(equalCopy + 321) & 1) == 0)
      {
        goto LABEL_477;
      }
    }

    else if (*(equalCopy + 321))
    {
      goto LABEL_477;
    }
  }

  else if ((v23 & 0x80000000000) != 0)
  {
    goto LABEL_477;
  }

  if ((*&has & 0x8000) != 0)
  {
    if ((v23 & 0x8000) == 0)
    {
      goto LABEL_477;
    }

    v36 = *(equalCopy + 293);
    if (self->_canPlayEncryptedProgressiveDownloadAssets)
    {
      if ((*(equalCopy + 293) & 1) == 0)
      {
        goto LABEL_477;
      }
    }

    else if (*(equalCopy + 293))
    {
      goto LABEL_477;
    }
  }

  else if ((v23 & 0x8000) != 0)
  {
    goto LABEL_477;
  }

  if ((*&has & 0x4000) != 0)
  {
    if ((v23 & 0x4000) == 0)
    {
      goto LABEL_477;
    }

    v39 = *(equalCopy + 292);
    if (self->_canFetchMediaDataFromSender)
    {
      if ((*(equalCopy + 292) & 1) == 0)
      {
        goto LABEL_477;
      }
    }

    else if (*(equalCopy + 292))
    {
      goto LABEL_477;
    }
  }

  else if ((v23 & 0x4000) != 0)
  {
    goto LABEL_477;
  }

  if ((*&has & 0x2000000000) != 0)
  {
    if ((v23 & 0x2000000000) == 0)
    {
      goto LABEL_477;
    }

    v40 = *(equalCopy + 315);
    if (self->_presentsOptimizedUserInterfaceWhenPlayingFetchedAudioOnlyAssets)
    {
      if ((*(equalCopy + 315) & 1) == 0)
      {
        goto LABEL_477;
      }
    }

    else if (*(equalCopy + 315))
    {
      goto LABEL_477;
    }
  }

  else if ((v23 & 0x2000000000) != 0)
  {
    goto LABEL_477;
  }

  if ((*&has & 0x800000) != 0)
  {
    if ((v23 & 0x800000) == 0)
    {
      goto LABEL_477;
    }

    v41 = *(equalCopy + 301);
    if (self->_isAirPlayReceiverSessionActive)
    {
      if ((*(equalCopy + 301) & 1) == 0)
      {
        goto LABEL_477;
      }
    }

    else if (*(equalCopy + 301))
    {
      goto LABEL_477;
    }
  }

  else if ((v23 & 0x800000) != 0)
  {
    goto LABEL_477;
  }

  parentGroupIdentifier = self->_parentGroupIdentifier;
  if (parentGroupIdentifier | *(equalCopy + 26))
  {
    if (![(NSString *)parentGroupIdentifier isEqual:?])
    {
      goto LABEL_477;
    }

    has = self->_has;
  }

  v38 = *(equalCopy + 42);
  if ((*&has & 0x800000000) != 0)
  {
    if ((v38 & 0x800000000) == 0)
    {
      goto LABEL_477;
    }

    v42 = *(equalCopy + 313);
    if (self->_parentGroupContainsDiscoverableLeader)
    {
      if ((*(equalCopy + 313) & 1) == 0)
      {
        goto LABEL_477;
      }
    }

    else if (*(equalCopy + 313))
    {
      goto LABEL_477;
    }
  }

  else if ((v38 & 0x800000000) != 0)
  {
    goto LABEL_477;
  }

  if ((*&has & 0x400000) != 0)
  {
    if ((v38 & 0x400000) == 0)
    {
      goto LABEL_477;
    }

    v43 = *(equalCopy + 300);
    if (self->_isAddedToHomeKit)
    {
      if ((*(equalCopy + 300) & 1) == 0)
      {
        goto LABEL_477;
      }
    }

    else if (*(equalCopy + 300))
    {
      goto LABEL_477;
    }
  }

  else if ((v38 & 0x400000) != 0)
  {
    goto LABEL_477;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v38 & 0x200) == 0 || self->_volumeCapabilities != *(equalCopy + 71))
    {
      goto LABEL_477;
    }
  }

  else if ((v38 & 0x200) != 0)
  {
    goto LABEL_477;
  }

  bluetoothID = self->_bluetoothID;
  if (bluetoothID | *(equalCopy + 7))
  {
    if (![(NSString *)bluetoothID isEqual:?])
    {
      goto LABEL_477;
    }

    has = self->_has;
  }

  v45 = *(equalCopy + 42);
  if ((*&has & 0x400000000000) != 0)
  {
    if ((v45 & 0x400000000000) == 0)
    {
      goto LABEL_477;
    }

    v46 = *(equalCopy + 324);
    if (self->_supportsHAP)
    {
      if ((*(equalCopy + 324) & 1) == 0)
      {
        goto LABEL_477;
      }
    }

    else if (*(equalCopy + 324))
    {
      goto LABEL_477;
    }
  }

  else if ((v45 & 0x400000000000) != 0)
  {
    goto LABEL_477;
  }

  if ((*&has & 0x10000000000000) != 0)
  {
    if ((v45 & 0x10000000000000) == 0)
    {
      goto LABEL_477;
    }

    v47 = *(equalCopy + 330);
    if (self->_usingJSONProtocol)
    {
      if ((*(equalCopy + 330) & 1) == 0)
      {
        goto LABEL_477;
      }
    }

    else if (*(equalCopy + 330))
    {
      goto LABEL_477;
    }
  }

  else if ((v45 & 0x10000000000000) != 0)
  {
    goto LABEL_477;
  }

  clusterCompositions = self->_clusterCompositions;
  if (clusterCompositions | *(equalCopy + 8))
  {
    if (![(NSMutableArray *)clusterCompositions isEqual:?])
    {
      goto LABEL_477;
    }

    has = self->_has;
  }

  v49 = *(equalCopy + 42);
  if ((*&has & 2) != 0)
  {
    if ((v49 & 2) == 0 || self->_clusterType != *(equalCopy + 20))
    {
      goto LABEL_477;
    }
  }

  else if ((v49 & 2) != 0)
  {
    goto LABEL_477;
  }

  primaryUID = self->_primaryUID;
  if (primaryUID | *(equalCopy + 29))
  {
    if (![(NSString *)primaryUID isEqual:?])
    {
      goto LABEL_477;
    }

    has = self->_has;
  }

  v51 = *(equalCopy + 42);
  if ((*&has & 4) != 0)
  {
    if ((v51 & 4) == 0 || self->_configuredClusterSize != *(equalCopy + 21))
    {
      goto LABEL_477;
    }
  }

  else if ((v51 & 4) != 0)
  {
    goto LABEL_477;
  }

  if ((*&has & 0x4000000000000) != 0)
  {
    if ((v51 & 0x4000000000000) == 0)
    {
      goto LABEL_477;
    }

    v52 = *(equalCopy + 328);
    if (self->_supportsRapportRemoteControlTransport)
    {
      if ((*(equalCopy + 328) & 1) == 0)
      {
        goto LABEL_477;
      }
    }

    else if (*(equalCopy + 328))
    {
      goto LABEL_477;
    }
  }

  else if ((v51 & 0x4000000000000) != 0)
  {
    goto LABEL_477;
  }

  currentBluetoothListeningMode = self->_currentBluetoothListeningMode;
  if (currentBluetoothListeningMode | *(equalCopy + 11) && ![(NSString *)currentBluetoothListeningMode isEqual:?])
  {
    goto LABEL_477;
  }

  availableBluetoothListeningModes = self->_availableBluetoothListeningModes;
  if (availableBluetoothListeningModes | *(equalCopy + 5))
  {
    if (![(NSMutableArray *)availableBluetoothListeningModes isEqual:?])
    {
      goto LABEL_477;
    }
  }

  v55 = self->_has;
  v56 = *(equalCopy + 42);
  if ((*&v55 & 0x1000000000000) != 0)
  {
    if ((v56 & 0x1000000000000) == 0)
    {
      goto LABEL_477;
    }

    v57 = *(equalCopy + 326);
    if (self->_supportsMultiplayer)
    {
      if ((*(equalCopy + 326) & 1) == 0)
      {
        goto LABEL_477;
      }
    }

    else if (*(equalCopy + 326))
    {
      goto LABEL_477;
    }
  }

  else if ((v56 & 0x1000000000000) != 0)
  {
    goto LABEL_477;
  }

  if ((*&v55 & 0x4000000000) != 0)
  {
    if ((v56 & 0x4000000000) == 0)
    {
      goto LABEL_477;
    }

    v58 = *(equalCopy + 316);
    if (self->_producesLowFidelityAudio)
    {
      if ((*(equalCopy + 316) & 1) == 0)
      {
        goto LABEL_477;
      }
    }

    else if (*(equalCopy + 316))
    {
      goto LABEL_477;
    }
  }

  else if ((v56 & 0x4000000000) != 0)
  {
    goto LABEL_477;
  }

  if ((*&v55 & 0x40) != 0)
  {
    if ((v56 & 0x40) == 0 || self->_hostDeviceClass != *(equalCopy + 40))
    {
      goto LABEL_477;
    }
  }

  else if ((v56 & 0x40) != 0)
  {
    goto LABEL_477;
  }

  airPlayGroupID = self->_airPlayGroupID;
  if (airPlayGroupID | *(equalCopy + 2))
  {
    if (![(NSString *)airPlayGroupID isEqual:?])
    {
      goto LABEL_477;
    }

    v55 = self->_has;
  }

  v60 = *(equalCopy + 42);
  if ((*&v55 & 0x8000000000000) != 0)
  {
    if ((v60 & 0x8000000000000) == 0)
    {
      goto LABEL_477;
    }

    v61 = *(equalCopy + 329);
    if (self->_supportsSharePlayHandoff)
    {
      if ((*(equalCopy + 329) & 1) == 0)
      {
        goto LABEL_477;
      }
    }

    else if (*(equalCopy + 329))
    {
      goto LABEL_477;
    }
  }

  else if ((v60 & 0x8000000000000) != 0)
  {
    goto LABEL_477;
  }

  if ((*&v55 & 0x20) != 0)
  {
    if ((v60 & 0x20) == 0 || self->_distance != *(equalCopy + 28))
    {
      goto LABEL_477;
    }
  }

  else if ((v60 & 0x20) != 0)
  {
    goto LABEL_477;
  }

  if ((*&v55 & 0x80000) != 0)
  {
    if ((v60 & 0x80000) == 0)
    {
      goto LABEL_477;
    }

    v62 = *(equalCopy + 297);
    if (self->_discoveredOnSameInfra)
    {
      if ((*(equalCopy + 297) & 1) == 0)
      {
        goto LABEL_477;
      }
    }

    else if (*(equalCopy + 297))
    {
      goto LABEL_477;
    }
  }

  else if ((v60 & 0x80000) != 0)
  {
    goto LABEL_477;
  }

  activatedClusterMembers = self->_activatedClusterMembers;
  if (activatedClusterMembers | *(equalCopy + 1))
  {
    if (![(NSMutableArray *)activatedClusterMembers isEqual:?])
    {
      goto LABEL_477;
    }

    v55 = self->_has;
  }

  v64 = *(equalCopy + 42);
  if ((*&v55 & 0x1000000000) != 0)
  {
    if ((v64 & 0x1000000000) == 0)
    {
      goto LABEL_477;
    }

    v65 = *(equalCopy + 314);
    if (self->_pickable)
    {
      if ((*(equalCopy + 314) & 1) == 0)
      {
        goto LABEL_477;
      }
    }

    else if (*(equalCopy + 314))
    {
      goto LABEL_477;
    }
  }

  else if ((v64 & 0x1000000000) != 0)
  {
    goto LABEL_477;
  }

  if ((*&v55 & 0x80) != 0)
  {
    if ((v64 & 0x80) == 0 || self->_transportType != *(equalCopy + 66))
    {
      goto LABEL_477;
    }
  }

  else if ((v64 & 0x80) != 0)
  {
    goto LABEL_477;
  }

  clusterID = self->_clusterID;
  if (clusterID | *(equalCopy + 9))
  {
    if (![(NSString *)clusterID isEqual:?])
    {
      goto LABEL_477;
    }

    v55 = self->_has;
  }

  v67 = *(equalCopy + 42);
  if ((*&v55 & 0x2000000) != 0)
  {
    if ((v67 & 0x2000000) == 0)
    {
      goto LABEL_477;
    }

    v68 = *(equalCopy + 303);
    if (self->_isClusterLeader)
    {
      if ((*(equalCopy + 303) & 1) == 0)
      {
        goto LABEL_477;
      }
    }

    else if (*(equalCopy + 303))
    {
      goto LABEL_477;
    }
  }

  else if ((v67 & 0x2000000) != 0)
  {
    goto LABEL_477;
  }

  if ((*&v55 & 0x1000000) != 0)
  {
    if ((v67 & 0x1000000) == 0)
    {
      goto LABEL_477;
    }

    v69 = *(equalCopy + 302);
    if (self->_isAppleAccessory)
    {
      if ((*(equalCopy + 302) & 1) == 0)
      {
        goto LABEL_477;
      }
    }

    else if (*(equalCopy + 302))
    {
      goto LABEL_477;
    }
  }

  else if ((v67 & 0x1000000) != 0)
  {
    goto LABEL_477;
  }

  parentUniqueIdentifier = self->_parentUniqueIdentifier;
  if (parentUniqueIdentifier | *(equalCopy + 27) && ![(NSString *)parentUniqueIdentifier isEqual:?])
  {
    goto LABEL_477;
  }

  roomID = self->_roomID;
  if (roomID | *(equalCopy + 30))
  {
    if (![(NSString *)roomID isEqual:?])
    {
      goto LABEL_477;
    }
  }

  roomName = self->_roomName;
  if (roomName | *(equalCopy + 31))
  {
    if (![(NSString *)roomName isEqual:?])
    {
      goto LABEL_477;
    }
  }

  allClusterMembers = self->_allClusterMembers;
  if (allClusterMembers | *(equalCopy + 3))
  {
    if (![(NSMutableArray *)allClusterMembers isEqual:?])
    {
      goto LABEL_477;
    }
  }

  v74 = self->_has;
  v75 = *(equalCopy + 42);
  if ((*&v74 & 0x100000000000) != 0)
  {
    if ((v75 & 0x100000000000) == 0)
    {
      goto LABEL_477;
    }

    v76 = *(equalCopy + 322);
    if (self->_supportsConversationDetection)
    {
      if ((*(equalCopy + 322) & 1) == 0)
      {
        goto LABEL_477;
      }
    }

    else if (*(equalCopy + 322))
    {
      goto LABEL_477;
    }
  }

  else if ((v75 & 0x100000000000) != 0)
  {
    goto LABEL_477;
  }

  if ((*&v74 & 0x20000) != 0)
  {
    if ((v75 & 0x20000) == 0)
    {
      goto LABEL_477;
    }

    v77 = *(equalCopy + 295);
    if (self->_conversationDetectionEnabled)
    {
      if ((*(equalCopy + 295) & 1) == 0)
      {
        goto LABEL_477;
      }
    }

    else if (*(equalCopy + 295))
    {
      goto LABEL_477;
    }
  }

  else if ((v75 & 0x20000) != 0)
  {
    goto LABEL_477;
  }

  if ((*&v74 & 0x100000) != 0)
  {
    if ((v75 & 0x100000) == 0)
    {
      goto LABEL_477;
    }

    v78 = *(equalCopy + 298);
    if (self->_engageOnClusterActivate)
    {
      if ((*(equalCopy + 298) & 1) == 0)
      {
        goto LABEL_477;
      }
    }

    else if (*(equalCopy + 298))
    {
      goto LABEL_477;
    }
  }

  else if ((v75 & 0x100000) != 0)
  {
    goto LABEL_477;
  }

  if ((*&v74 & 0x20000000000000) != 0)
  {
    if ((v75 & 0x20000000000000) == 0)
    {
      goto LABEL_477;
    }

    v79 = *(equalCopy + 331);
    if (self->_volumeMuted)
    {
      if ((*(equalCopy + 331) & 1) == 0)
      {
        goto LABEL_477;
      }
    }

    else if (*(equalCopy + 331))
    {
      goto LABEL_477;
    }
  }

  else if ((v75 & 0x20000000000000) != 0)
  {
    goto LABEL_477;
  }

  groupSessionInfo = self->_groupSessionInfo;
  if (groupSessionInfo | *(equalCopy + 18))
  {
    if (![(_MRGroupSessionInfoProtobuf *)groupSessionInfo isEqual:?])
    {
      goto LABEL_477;
    }

    v74 = self->_has;
  }

  v81 = *(equalCopy + 42);
  if ((*&v74 & 0x40000000000) != 0)
  {
    if ((v81 & 0x40000000000) == 0)
    {
      goto LABEL_477;
    }

    v82 = *(equalCopy + 320);
    if (self->_supportsBluetoothSharing)
    {
      if ((*(equalCopy + 320) & 1) == 0)
      {
        goto LABEL_477;
      }
    }

    else if (*(equalCopy + 320))
    {
      goto LABEL_477;
    }
  }

  else if ((v81 & 0x40000000000) != 0)
  {
    goto LABEL_477;
  }

  deviceEnclosureColor = self->_deviceEnclosureColor;
  if (deviceEnclosureColor | *(equalCopy + 12) && ![(NSString *)deviceEnclosureColor isEqual:?])
  {
    goto LABEL_477;
  }

  playingPairedDeviceName = self->_playingPairedDeviceName;
  if (playingPairedDeviceName | *(equalCopy + 28))
  {
    if (![(NSString *)playingPairedDeviceName isEqual:?])
    {
      goto LABEL_477;
    }
  }

  v85 = self->_has;
  v86 = *(equalCopy + 42);
  if ((*&v85 & 0x2000000000000) != 0)
  {
    if ((v86 & 0x2000000000000) == 0)
    {
      goto LABEL_477;
    }

    v87 = *(equalCopy + 327);
    if (self->_supportsRapport)
    {
      if ((*(equalCopy + 327) & 1) == 0)
      {
        goto LABEL_477;
      }
    }

    else if (*(equalCopy + 327))
    {
      goto LABEL_477;
    }
  }

  else if ((v86 & 0x2000000000000) != 0)
  {
    goto LABEL_477;
  }

  if ((*&v85 & 0x80000000) != 0)
  {
    if ((v86 & 0x80000000) == 0)
    {
      goto LABEL_477;
    }

    v88 = *(equalCopy + 309);
    if (self->_isPickedOnPairedDevice)
    {
      if ((*(equalCopy + 309) & 1) == 0)
      {
        goto LABEL_477;
      }
    }

    else if (*(equalCopy + 309))
    {
      goto LABEL_477;
    }
  }

  else if ((v86 & 0x80000000) != 0)
  {
    goto LABEL_477;
  }

  if ((*&v85 & 0x800000000000) != 0)
  {
    if ((v86 & 0x800000000000) == 0)
    {
      goto LABEL_477;
    }

    v89 = *(equalCopy + 325);
    if (self->_supportsHeadTrackedSpatialAudio)
    {
      if ((*(equalCopy + 325) & 1) == 0)
      {
        goto LABEL_477;
      }
    }

    else if (*(equalCopy + 325))
    {
      goto LABEL_477;
    }
  }

  else if ((v86 & 0x800000000000) != 0)
  {
    goto LABEL_477;
  }

  if ((*&v85 & 0x400) != 0)
  {
    if ((v86 & 0x400) == 0)
    {
      goto LABEL_477;
    }

    v90 = *(equalCopy + 288);
    if (self->_allowsHeadTrackedSpatialAudio)
    {
      if ((*(equalCopy + 288) & 1) == 0)
      {
        goto LABEL_477;
      }
    }

    else if (*(equalCopy + 288))
    {
      goto LABEL_477;
    }
  }

  else if ((v86 & 0x400) != 0)
  {
    goto LABEL_477;
  }

  if ((*&v85 & 0x20000000) != 0)
  {
    if ((v86 & 0x20000000) == 0)
    {
      goto LABEL_477;
    }

    v91 = *(equalCopy + 307);
    if (self->_isHeadTrackedSpatialAudioActive)
    {
      if ((*(equalCopy + 307) & 1) == 0)
      {
        goto LABEL_477;
      }
    }

    else if (*(equalCopy + 307))
    {
      goto LABEL_477;
    }
  }

  else if ((v86 & 0x20000000) != 0)
  {
    goto LABEL_477;
  }

  headTrackedSpatialAudioMode = self->_headTrackedSpatialAudioMode;
  if (headTrackedSpatialAudioMode | *(equalCopy + 19) && ![(NSString *)headTrackedSpatialAudioMode isEqual:?])
  {
    goto LABEL_477;
  }

  dnsNames = self->_dnsNames;
  if (dnsNames | *(equalCopy + 15))
  {
    if (![(NSMutableArray *)dnsNames isEqual:?])
    {
      goto LABEL_477;
    }
  }

  alternateTransportType = self->_alternateTransportType;
  if (alternateTransportType | *(equalCopy + 4))
  {
    if (![(NSString *)alternateTransportType isEqual:?])
    {
      goto LABEL_477;
    }
  }

  v95 = self->_has;
  v96 = *(equalCopy + 42);
  if ((*&v95 & 0x40000) != 0)
  {
    if ((v96 & 0x40000) == 0)
    {
      goto LABEL_477;
    }

    v97 = *(equalCopy + 296);
    if (self->_deviceIsPlaying)
    {
      if ((*(equalCopy + 296) & 1) == 0)
      {
        goto LABEL_477;
      }
    }

    else if (*(equalCopy + 296))
    {
      goto LABEL_477;
    }
  }

  else if ((v96 & 0x40000) != 0)
  {
    goto LABEL_477;
  }

  if ((*&v95 & 0x40000000000000) != 0)
  {
    if ((v96 & 0x40000000000000) == 0)
    {
      goto LABEL_477;
    }

    v98 = *(equalCopy + 332);
    if (self->_wasDiscoveredInCache)
    {
      if ((*(equalCopy + 332) & 1) == 0)
      {
        goto LABEL_477;
      }
    }

    else if (*(equalCopy + 332))
    {
      goto LABEL_477;
    }
  }

  else if ((v96 & 0x40000000000000) != 0)
  {
    goto LABEL_477;
  }

  if ((*&v95 & 0x8000000000) != 0)
  {
    if ((v96 & 0x8000000000) != 0)
    {
      if (self->_representsUGLSender)
      {
        if ((*(equalCopy + 317) & 1) == 0)
        {
          goto LABEL_477;
        }
      }

      else if (*(equalCopy + 317))
      {
        goto LABEL_477;
      }

      v99 = 1;
      goto LABEL_478;
    }

LABEL_477:
    v99 = 0;
    goto LABEL_478;
  }

  v99 = (v96 & 0x8000000000) == 0;
LABEL_478:

  return v99;
}

- (unint64_t)hash
{
  v118 = [(NSString *)self->_name hash];
  v117 = [(NSString *)self->_uniqueIdentifier hash];
  v116 = [(NSString *)self->_groupID hash];
  v115 = [(NSString *)self->_modelID hash];
  v114 = [(NSData *)self->_macAddress hash];
  has = self->_has;
  if ((*&has & 0x1000) != 0)
  {
    v113 = 2654435761 * self->_canAccessRemoteAssets;
    if ((*&has & 0x200000000) != 0)
    {
LABEL_3:
      v112 = 2654435761 * self->_isRemoteControllable;
      if ((*&has & 0x8000000) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v113 = 0;
    if ((*&has & 0x200000000) != 0)
    {
      goto LABEL_3;
    }
  }

  v112 = 0;
  if ((*&has & 0x8000000) != 0)
  {
LABEL_4:
    v111 = 2654435761 * self->_isGroupLeader;
    if ((*&has & 0x10000000) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v111 = 0;
  if ((*&has & 0x10000000) != 0)
  {
LABEL_5:
    v110 = 2654435761 * self->_isGroupable;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v109 = 0;
    if ((*&has & 8) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_11:
  v110 = 0;
  if ((*&has & 0x10) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v109 = 2654435761 * self->_deviceType;
  if ((*&has & 8) != 0)
  {
LABEL_7:
    v108 = 2654435761 * self->_deviceSubType;
    goto LABEL_14;
  }

LABEL_13:
  v108 = 0;
LABEL_14:
  v107 = [(NSData *)self->_modelSpecificInfoData hash];
  v6 = self->_has;
  if (*&v6)
  {
    batteryLevel = self->_batteryLevel;
    if (batteryLevel < 0.0)
    {
      batteryLevel = -batteryLevel;
    }

    *v4.i32 = floorf(batteryLevel + 0.5);
    v9 = (batteryLevel - *v4.i32) * 1.8447e19;
    *v5.i32 = *v4.i32 - (truncf(*v4.i32 * 5.421e-20) * 1.8447e19);
    v10.i64[0] = 0x8000000080000000;
    v10.i64[1] = 0x8000000080000000;
    v7 = 2654435761u * *vbslq_s8(v10, v5, v4).i32;
    if (v9 >= 0.0)
    {
      if (v9 > 0.0)
      {
        v7 += v9;
      }
    }

    else
    {
      v7 -= fabsf(v9);
    }
  }

  else
  {
    v7 = 0;
  }

  if ((*&v6 & 0x40000000) == 0)
  {
    v105 = 0;
    if ((*&v6 & 0x200000000000) != 0)
    {
      goto LABEL_24;
    }

LABEL_27:
    v104 = 0;
    if ((*&v6 & 0x10000000000) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_28;
  }

  v105 = 2654435761 * self->_isLocalDevice;
  if ((*&v6 & 0x200000000000) == 0)
  {
    goto LABEL_27;
  }

LABEL_24:
  v104 = 2654435761 * self->_supportsExternalScreen;
  if ((*&v6 & 0x10000000000) != 0)
  {
LABEL_25:
    v103 = 2654435761 * self->_requiresAuthorization;
    goto LABEL_29;
  }

LABEL_28:
  v103 = 0;
LABEL_29:
  v106 = v7;
  if ((*&v6 & 0x20000000000) != 0)
  {
    v102 = 2654435761 * self->_shouldForceRemoteControlabillity;
  }

  else
  {
    v102 = 0;
  }

  v101 = [(_MRAVOutputDeviceSourceInfoProtobuf *)self->_sourceInfo hash];
  v11 = self->_has;
  if ((*&v11 & 0x4000000) != 0)
  {
    v100 = 2654435761 * self->_isDeviceGroupable;
    if ((*&v11 & 0x10000) != 0)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v100 = 0;
    if ((*&v11 & 0x10000) != 0)
    {
LABEL_34:
      v99 = 2654435761 * self->_canRelayCommunicationChannel;
      goto LABEL_37;
    }
  }

  v99 = 0;
LABEL_37:
  v98 = [(NSString *)self->_logicalDeviceID hash];
  if (*(&self->_has + 4))
  {
    v97 = 2654435761 * self->_isProxyGroupPlayer;
  }

  else
  {
    v97 = 0;
  }

  v96 = [(NSString *)self->_firmwareVersion hash];
  v14 = self->_has;
  if ((*&v14 & 0x100) != 0)
  {
    volume = self->_volume;
    if (volume < 0.0)
    {
      volume = -volume;
    }

    *v12.i32 = floorf(volume + 0.5);
    v17 = (volume - *v12.i32) * 1.8447e19;
    *v13.i32 = *v12.i32 - (truncf(*v12.i32 * 5.421e-20) * 1.8447e19);
    v18.i64[0] = 0x8000000080000000;
    v18.i64[1] = 0x8000000080000000;
    v15 = 2654435761u * *vbslq_s8(v18, v13, v12).i32;
    if (v17 >= 0.0)
    {
      if (v17 > 0.0)
      {
        v15 += v17;
      }
    }

    else
    {
      v15 -= fabsf(v17);
    }
  }

  else
  {
    v15 = 0;
  }

  if ((*&v14 & 0x400000000) != 0)
  {
    v94 = 2654435761 * self->_isVolumeControlAvailable;
    if ((*&v14 & 0x800) != 0)
    {
LABEL_50:
      v93 = 2654435761 * self->_canAccessAppleMusic;
      if ((*&v14 & 0x2000) != 0)
      {
        goto LABEL_51;
      }

      goto LABEL_59;
    }
  }

  else
  {
    v94 = 0;
    if ((*&v14 & 0x800) != 0)
    {
      goto LABEL_50;
    }
  }

  v93 = 0;
  if ((*&v14 & 0x2000) != 0)
  {
LABEL_51:
    v92 = 2654435761 * self->_canAccessiCloudMusicLibrary;
    if ((*&v14 & 0x200000) != 0)
    {
      goto LABEL_52;
    }

    goto LABEL_60;
  }

LABEL_59:
  v92 = 0;
  if ((*&v14 & 0x200000) != 0)
  {
LABEL_52:
    v91 = 2654435761 * self->_groupContainsGroupLeader;
    if ((*&v14 & 0x80000000000) != 0)
    {
      goto LABEL_53;
    }

    goto LABEL_61;
  }

LABEL_60:
  v91 = 0;
  if ((*&v14 & 0x80000000000) != 0)
  {
LABEL_53:
    v90 = 2654435761 * self->_supportsBufferedAirPlay;
    if ((*&v14 & 0x8000) != 0)
    {
      goto LABEL_54;
    }

    goto LABEL_62;
  }

LABEL_61:
  v90 = 0;
  if ((*&v14 & 0x8000) != 0)
  {
LABEL_54:
    v89 = 2654435761 * self->_canPlayEncryptedProgressiveDownloadAssets;
    if ((*&v14 & 0x4000) != 0)
    {
      goto LABEL_55;
    }

LABEL_63:
    v88 = 0;
    if ((*&v14 & 0x2000000000) != 0)
    {
      goto LABEL_56;
    }

    goto LABEL_64;
  }

LABEL_62:
  v89 = 0;
  if ((*&v14 & 0x4000) == 0)
  {
    goto LABEL_63;
  }

LABEL_55:
  v88 = 2654435761 * self->_canFetchMediaDataFromSender;
  if ((*&v14 & 0x2000000000) != 0)
  {
LABEL_56:
    v87 = 2654435761 * self->_presentsOptimizedUserInterfaceWhenPlayingFetchedAudioOnlyAssets;
    goto LABEL_65;
  }

LABEL_64:
  v87 = 0;
LABEL_65:
  v95 = v15;
  if ((*&v14 & 0x800000) != 0)
  {
    v86 = 2654435761 * self->_isAirPlayReceiverSessionActive;
  }

  else
  {
    v86 = 0;
  }

  v85 = [(NSString *)self->_parentGroupIdentifier hash];
  v19 = self->_has;
  if ((*&v19 & 0x800000000) == 0)
  {
    v84 = 0;
    if ((*&v19 & 0x400000) != 0)
    {
      goto LABEL_70;
    }

LABEL_73:
    v83 = 0;
    if ((*&v19 & 0x200) != 0)
    {
      goto LABEL_71;
    }

    goto LABEL_74;
  }

  v84 = 2654435761 * self->_parentGroupContainsDiscoverableLeader;
  if ((*&v19 & 0x400000) == 0)
  {
    goto LABEL_73;
  }

LABEL_70:
  v83 = 2654435761 * self->_isAddedToHomeKit;
  if ((*&v19 & 0x200) != 0)
  {
LABEL_71:
    v82 = 2654435761 * self->_volumeCapabilities;
    goto LABEL_75;
  }

LABEL_74:
  v82 = 0;
LABEL_75:
  v81 = [(NSString *)self->_bluetoothID hash];
  v20 = self->_has;
  if ((*&v20 & 0x400000000000) != 0)
  {
    v80 = 2654435761 * self->_supportsHAP;
    if ((*&v20 & 0x10000000000000) != 0)
    {
      goto LABEL_77;
    }
  }

  else
  {
    v80 = 0;
    if ((*&v20 & 0x10000000000000) != 0)
    {
LABEL_77:
      v79 = 2654435761 * self->_usingJSONProtocol;
      goto LABEL_80;
    }
  }

  v79 = 0;
LABEL_80:
  v78 = [(NSMutableArray *)self->_clusterCompositions hash];
  if ((*&self->_has & 2) != 0)
  {
    v77 = 2654435761 * self->_clusterType;
  }

  else
  {
    v77 = 0;
  }

  v76 = [(NSString *)self->_primaryUID hash];
  v21 = self->_has;
  if ((*&v21 & 4) != 0)
  {
    v75 = 2654435761 * self->_configuredClusterSize;
    if ((*&v21 & 0x4000000000000) != 0)
    {
      goto LABEL_85;
    }
  }

  else
  {
    v75 = 0;
    if ((*&v21 & 0x4000000000000) != 0)
    {
LABEL_85:
      v74 = 2654435761 * self->_supportsRapportRemoteControlTransport;
      goto LABEL_88;
    }
  }

  v74 = 0;
LABEL_88:
  v73 = [(NSString *)self->_currentBluetoothListeningMode hash];
  v72 = [(NSMutableArray *)self->_availableBluetoothListeningModes hash];
  v22 = self->_has;
  if ((*&v22 & 0x1000000000000) == 0)
  {
    v71 = 0;
    if ((*&v22 & 0x4000000000) != 0)
    {
      goto LABEL_90;
    }

LABEL_93:
    v70 = 0;
    if ((*&v22 & 0x40) != 0)
    {
      goto LABEL_91;
    }

    goto LABEL_94;
  }

  v71 = 2654435761 * self->_supportsMultiplayer;
  if ((*&v22 & 0x4000000000) == 0)
  {
    goto LABEL_93;
  }

LABEL_90:
  v70 = 2654435761 * self->_producesLowFidelityAudio;
  if ((*&v22 & 0x40) != 0)
  {
LABEL_91:
    v69 = 2654435761 * self->_hostDeviceClass;
    goto LABEL_95;
  }

LABEL_94:
  v69 = 0;
LABEL_95:
  v68 = [(NSString *)self->_airPlayGroupID hash];
  v25 = self->_has;
  if ((*&v25 & 0x8000000000000) != 0)
  {
    v67 = 2654435761 * self->_supportsSharePlayHandoff;
    if ((*&v25 & 0x20) != 0)
    {
      goto LABEL_97;
    }

LABEL_102:
    v29 = 0;
    goto LABEL_103;
  }

  v67 = 0;
  if ((*&v25 & 0x20) == 0)
  {
    goto LABEL_102;
  }

LABEL_97:
  distance = self->_distance;
  if (distance < 0.0)
  {
    distance = -distance;
  }

  *v23.i32 = floorf(distance + 0.5);
  v27 = (distance - *v23.i32) * 1.8447e19;
  *v24.i32 = *v23.i32 - (truncf(*v23.i32 * 5.421e-20) * 1.8447e19);
  v28.i64[0] = 0x8000000080000000;
  v28.i64[1] = 0x8000000080000000;
  v29 = 2654435761u * *vbslq_s8(v28, v24, v23).i32;
  if (v27 >= 0.0)
  {
    if (v27 > 0.0)
    {
      v29 += v27;
    }
  }

  else
  {
    v29 -= fabsf(v27);
  }

LABEL_103:
  v66 = v29;
  if ((*&v25 & 0x80000) != 0)
  {
    v65 = 2654435761 * self->_discoveredOnSameInfra;
  }

  else
  {
    v65 = 0;
  }

  v64 = [(NSMutableArray *)self->_activatedClusterMembers hash];
  v30 = self->_has;
  if ((*&v30 & 0x1000000000) != 0)
  {
    v63 = 2654435761 * self->_pickable;
    if ((*&v30 & 0x80) != 0)
    {
      goto LABEL_108;
    }
  }

  else
  {
    v63 = 0;
    if ((*&v30 & 0x80) != 0)
    {
LABEL_108:
      v62 = 2654435761 * self->_transportType;
      goto LABEL_111;
    }
  }

  v62 = 0;
LABEL_111:
  v61 = [(NSString *)self->_clusterID hash];
  v31 = self->_has;
  if ((*&v31 & 0x2000000) != 0)
  {
    v60 = 2654435761 * self->_isClusterLeader;
    if ((*&v31 & 0x1000000) != 0)
    {
      goto LABEL_113;
    }
  }

  else
  {
    v60 = 0;
    if ((*&v31 & 0x1000000) != 0)
    {
LABEL_113:
      v59 = 2654435761 * self->_isAppleAccessory;
      goto LABEL_116;
    }
  }

  v59 = 0;
LABEL_116:
  v58 = [(NSString *)self->_parentUniqueIdentifier hash];
  v57 = [(NSString *)self->_roomID hash];
  v56 = [(NSString *)self->_roomName hash];
  v55 = [(NSMutableArray *)self->_allClusterMembers hash];
  v32 = self->_has;
  if ((*&v32 & 0x100000000000) != 0)
  {
    v54 = 2654435761 * self->_supportsConversationDetection;
    if ((*&v32 & 0x20000) != 0)
    {
LABEL_118:
      v53 = 2654435761 * self->_conversationDetectionEnabled;
      if ((*&v32 & 0x100000) != 0)
      {
        goto LABEL_119;
      }

LABEL_123:
      v52 = 0;
      if ((*&v32 & 0x20000000000000) != 0)
      {
        goto LABEL_120;
      }

      goto LABEL_124;
    }
  }

  else
  {
    v54 = 0;
    if ((*&v32 & 0x20000) != 0)
    {
      goto LABEL_118;
    }
  }

  v53 = 0;
  if ((*&v32 & 0x100000) == 0)
  {
    goto LABEL_123;
  }

LABEL_119:
  v52 = 2654435761 * self->_engageOnClusterActivate;
  if ((*&v32 & 0x20000000000000) != 0)
  {
LABEL_120:
    v51 = 2654435761 * self->_volumeMuted;
    goto LABEL_125;
  }

LABEL_124:
  v51 = 0;
LABEL_125:
  v50 = [(_MRGroupSessionInfoProtobuf *)self->_groupSessionInfo hash];
  if ((*(&self->_has + 5) & 4) != 0)
  {
    v49 = 2654435761 * self->_supportsBluetoothSharing;
  }

  else
  {
    v49 = 0;
  }

  v48 = [(NSString *)self->_deviceEnclosureColor hash];
  v47 = [(NSString *)self->_playingPairedDeviceName hash];
  v33 = self->_has;
  if ((*&v33 & 0x2000000000000) != 0)
  {
    v34 = 2654435761 * self->_supportsRapport;
    if ((*&v33 & 0x80000000) != 0)
    {
LABEL_130:
      v35 = 2654435761 * self->_isPickedOnPairedDevice;
      if ((*&v33 & 0x800000000000) != 0)
      {
        goto LABEL_131;
      }

      goto LABEL_136;
    }
  }

  else
  {
    v34 = 0;
    if ((*&v33 & 0x80000000) != 0)
    {
      goto LABEL_130;
    }
  }

  v35 = 0;
  if ((*&v33 & 0x800000000000) != 0)
  {
LABEL_131:
    v36 = 2654435761 * self->_supportsHeadTrackedSpatialAudio;
    if ((*&v33 & 0x400) != 0)
    {
      goto LABEL_132;
    }

LABEL_137:
    v37 = 0;
    if ((*&v33 & 0x20000000) != 0)
    {
      goto LABEL_133;
    }

    goto LABEL_138;
  }

LABEL_136:
  v36 = 0;
  if ((*&v33 & 0x400) == 0)
  {
    goto LABEL_137;
  }

LABEL_132:
  v37 = 2654435761 * self->_allowsHeadTrackedSpatialAudio;
  if ((*&v33 & 0x20000000) != 0)
  {
LABEL_133:
    v38 = 2654435761 * self->_isHeadTrackedSpatialAudioActive;
    goto LABEL_139;
  }

LABEL_138:
  v38 = 0;
LABEL_139:
  v39 = [(NSString *)self->_headTrackedSpatialAudioMode hash];
  v40 = [(NSMutableArray *)self->_dnsNames hash];
  v41 = [(NSString *)self->_alternateTransportType hash];
  v42 = self->_has;
  if ((*&v42 & 0x40000) == 0)
  {
    v43 = 0;
    if ((*&v42 & 0x40000000000000) != 0)
    {
      goto LABEL_141;
    }

LABEL_144:
    v44 = 0;
    if ((*&v42 & 0x8000000000) != 0)
    {
      goto LABEL_142;
    }

LABEL_145:
    v45 = 0;
    return v117 ^ v118 ^ v116 ^ v115 ^ v114 ^ v113 ^ v112 ^ v111 ^ v110 ^ v109 ^ v108 ^ v107 ^ v106 ^ v105 ^ v104 ^ v103 ^ v102 ^ v101 ^ v100 ^ v99 ^ v98 ^ v97 ^ v96 ^ v95 ^ v94 ^ v93 ^ v92 ^ v91 ^ v90 ^ v89 ^ v88 ^ v87 ^ v86 ^ v85 ^ v84 ^ v83 ^ v82 ^ v81 ^ v80 ^ v79 ^ v78 ^ v77 ^ v76 ^ v75 ^ v74 ^ v73 ^ v72 ^ v71 ^ v70 ^ v69 ^ v68 ^ v67 ^ v66 ^ v65 ^ v64 ^ v63 ^ v62 ^ v61 ^ v60 ^ v59 ^ v58 ^ v57 ^ v56 ^ v55 ^ v54 ^ v53 ^ v52 ^ v51 ^ v50 ^ v49 ^ v48 ^ v47 ^ v34 ^ v35 ^ v36 ^ v37 ^ v38 ^ v39 ^ v40 ^ v41 ^ v43 ^ v44 ^ v45;
  }

  v43 = 2654435761 * self->_deviceIsPlaying;
  if ((*&v42 & 0x40000000000000) == 0)
  {
    goto LABEL_144;
  }

LABEL_141:
  v44 = 2654435761 * self->_wasDiscoveredInCache;
  if ((*&v42 & 0x8000000000) == 0)
  {
    goto LABEL_145;
  }

LABEL_142:
  v45 = 2654435761 * self->_representsUGLSender;
  return v117 ^ v118 ^ v116 ^ v115 ^ v114 ^ v113 ^ v112 ^ v111 ^ v110 ^ v109 ^ v108 ^ v107 ^ v106 ^ v105 ^ v104 ^ v103 ^ v102 ^ v101 ^ v100 ^ v99 ^ v98 ^ v97 ^ v96 ^ v95 ^ v94 ^ v93 ^ v92 ^ v91 ^ v90 ^ v89 ^ v88 ^ v87 ^ v86 ^ v85 ^ v84 ^ v83 ^ v82 ^ v81 ^ v80 ^ v79 ^ v78 ^ v77 ^ v76 ^ v75 ^ v74 ^ v73 ^ v72 ^ v71 ^ v70 ^ v69 ^ v68 ^ v67 ^ v66 ^ v65 ^ v64 ^ v63 ^ v62 ^ v61 ^ v60 ^ v59 ^ v58 ^ v57 ^ v56 ^ v55 ^ v54 ^ v53 ^ v52 ^ v51 ^ v50 ^ v49 ^ v48 ^ v47 ^ v34 ^ v35 ^ v36 ^ v37 ^ v38 ^ v39 ^ v40 ^ v41 ^ v43 ^ v44 ^ v45;
}

- (void)mergeFrom:(id)from
{
  v74 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (*(fromCopy + 25))
  {
    [(_MRAVOutputDeviceDescriptorProtobuf *)self setName:?];
  }

  if (*(fromCopy + 34))
  {
    [(_MRAVOutputDeviceDescriptorProtobuf *)self setUniqueIdentifier:?];
  }

  if (*(fromCopy + 17))
  {
    [(_MRAVOutputDeviceDescriptorProtobuf *)self setGroupID:?];
  }

  if (*(fromCopy + 23))
  {
    [(_MRAVOutputDeviceDescriptorProtobuf *)self setModelID:?];
  }

  if (*(fromCopy + 22))
  {
    [(_MRAVOutputDeviceDescriptorProtobuf *)self setMacAddress:?];
  }

  v5 = *(fromCopy + 42);
  if ((v5 & 0x1000) != 0)
  {
    self->_canAccessRemoteAssets = *(fromCopy + 290);
    *&self->_has |= 0x1000uLL;
    v5 = *(fromCopy + 42);
    if ((v5 & 0x200000000) == 0)
    {
LABEL_13:
      if ((v5 & 0x8000000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_31;
    }
  }

  else if ((v5 & 0x200000000) == 0)
  {
    goto LABEL_13;
  }

  self->_isRemoteControllable = *(fromCopy + 311);
  *&self->_has |= 0x200000000uLL;
  v5 = *(fromCopy + 42);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_14:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  self->_isGroupLeader = *(fromCopy + 305);
  *&self->_has |= 0x8000000uLL;
  v5 = *(fromCopy + 42);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_15:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_isGroupable = *(fromCopy + 306);
  *&self->_has |= 0x10000000uLL;
  v5 = *(fromCopy + 42);
  if ((v5 & 0x10) == 0)
  {
LABEL_16:
    if ((v5 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_33:
  self->_deviceType = *(fromCopy + 27);
  *&self->_has |= 0x10uLL;
  if ((*(fromCopy + 42) & 8) != 0)
  {
LABEL_17:
    self->_deviceSubType = *(fromCopy + 26);
    *&self->_has |= 8uLL;
  }

LABEL_18:
  if (*(fromCopy + 24))
  {
    [(_MRAVOutputDeviceDescriptorProtobuf *)self setModelSpecificInfoData:?];
  }

  v6 = *(fromCopy + 42);
  if (v6)
  {
    self->_batteryLevel = *(fromCopy + 12);
    *&self->_has |= 1uLL;
    v6 = *(fromCopy + 42);
    if ((v6 & 0x40000000) == 0)
    {
LABEL_22:
      if ((v6 & 0x200000000000) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_37;
    }
  }

  else if ((v6 & 0x40000000) == 0)
  {
    goto LABEL_22;
  }

  self->_isLocalDevice = *(fromCopy + 308);
  *&self->_has |= 0x40000000uLL;
  v6 = *(fromCopy + 42);
  if ((v6 & 0x200000000000) == 0)
  {
LABEL_23:
    if ((v6 & 0x10000000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_38;
  }

LABEL_37:
  self->_supportsExternalScreen = *(fromCopy + 323);
  *&self->_has |= 0x200000000000uLL;
  v6 = *(fromCopy + 42);
  if ((v6 & 0x10000000000) == 0)
  {
LABEL_24:
    if ((v6 & 0x20000000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_38:
  self->_requiresAuthorization = *(fromCopy + 318);
  *&self->_has |= 0x10000000000uLL;
  if ((*(fromCopy + 42) & 0x20000000000) != 0)
  {
LABEL_25:
    self->_shouldForceRemoteControlabillity = *(fromCopy + 319);
    *&self->_has |= 0x20000000000uLL;
  }

LABEL_26:
  sourceInfo = self->_sourceInfo;
  v8 = *(fromCopy + 32);
  if (sourceInfo)
  {
    if (v8)
    {
      [(_MRAVOutputDeviceSourceInfoProtobuf *)sourceInfo mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(_MRAVOutputDeviceDescriptorProtobuf *)self setSourceInfo:?];
  }

  v9 = *(fromCopy + 42);
  if ((v9 & 0x4000000) != 0)
  {
    self->_isDeviceGroupable = *(fromCopy + 304);
    *&self->_has |= 0x4000000uLL;
    v9 = *(fromCopy + 42);
  }

  if ((v9 & 0x10000) != 0)
  {
    self->_canRelayCommunicationChannel = *(fromCopy + 294);
    *&self->_has |= 0x10000uLL;
  }

  if (*(fromCopy + 21))
  {
    [(_MRAVOutputDeviceDescriptorProtobuf *)self setLogicalDeviceID:?];
  }

  if (*(fromCopy + 340))
  {
    self->_isProxyGroupPlayer = *(fromCopy + 310);
    *&self->_has |= 0x100000000uLL;
  }

  if (*(fromCopy + 16))
  {
    [(_MRAVOutputDeviceDescriptorProtobuf *)self setFirmwareVersion:?];
  }

  v10 = *(fromCopy + 42);
  if ((v10 & 0x100) != 0)
  {
    self->_volume = *(fromCopy + 70);
    *&self->_has |= 0x100uLL;
    v10 = *(fromCopy + 42);
    if ((v10 & 0x400000000) == 0)
    {
LABEL_54:
      if ((v10 & 0x800) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_149;
    }
  }

  else if ((v10 & 0x400000000) == 0)
  {
    goto LABEL_54;
  }

  self->_isVolumeControlAvailable = *(fromCopy + 312);
  *&self->_has |= 0x400000000uLL;
  v10 = *(fromCopy + 42);
  if ((v10 & 0x800) == 0)
  {
LABEL_55:
    if ((v10 & 0x2000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_150;
  }

LABEL_149:
  self->_canAccessAppleMusic = *(fromCopy + 289);
  *&self->_has |= 0x800uLL;
  v10 = *(fromCopy + 42);
  if ((v10 & 0x2000) == 0)
  {
LABEL_56:
    if ((v10 & 0x200000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_151;
  }

LABEL_150:
  self->_canAccessiCloudMusicLibrary = *(fromCopy + 291);
  *&self->_has |= 0x2000uLL;
  v10 = *(fromCopy + 42);
  if ((v10 & 0x200000) == 0)
  {
LABEL_57:
    if ((v10 & 0x80000000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_152;
  }

LABEL_151:
  self->_groupContainsGroupLeader = *(fromCopy + 299);
  *&self->_has |= 0x200000uLL;
  v10 = *(fromCopy + 42);
  if ((v10 & 0x80000000000) == 0)
  {
LABEL_58:
    if ((v10 & 0x8000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_153;
  }

LABEL_152:
  self->_supportsBufferedAirPlay = *(fromCopy + 321);
  *&self->_has |= 0x80000000000uLL;
  v10 = *(fromCopy + 42);
  if ((v10 & 0x8000) == 0)
  {
LABEL_59:
    if ((v10 & 0x4000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_154;
  }

LABEL_153:
  self->_canPlayEncryptedProgressiveDownloadAssets = *(fromCopy + 293);
  *&self->_has |= 0x8000uLL;
  v10 = *(fromCopy + 42);
  if ((v10 & 0x4000) == 0)
  {
LABEL_60:
    if ((v10 & 0x2000000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_155;
  }

LABEL_154:
  self->_canFetchMediaDataFromSender = *(fromCopy + 292);
  *&self->_has |= 0x4000uLL;
  v10 = *(fromCopy + 42);
  if ((v10 & 0x2000000000) == 0)
  {
LABEL_61:
    if ((v10 & 0x800000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_62;
  }

LABEL_155:
  self->_presentsOptimizedUserInterfaceWhenPlayingFetchedAudioOnlyAssets = *(fromCopy + 315);
  *&self->_has |= 0x2000000000uLL;
  if ((*(fromCopy + 42) & 0x800000) != 0)
  {
LABEL_62:
    self->_isAirPlayReceiverSessionActive = *(fromCopy + 301);
    *&self->_has |= 0x800000uLL;
  }

LABEL_63:
  if (*(fromCopy + 26))
  {
    [(_MRAVOutputDeviceDescriptorProtobuf *)self setParentGroupIdentifier:?];
  }

  v11 = *(fromCopy + 42);
  if ((v11 & 0x800000000) != 0)
  {
    self->_parentGroupContainsDiscoverableLeader = *(fromCopy + 313);
    *&self->_has |= 0x800000000uLL;
    v11 = *(fromCopy + 42);
    if ((v11 & 0x400000) == 0)
    {
LABEL_67:
      if ((v11 & 0x200) == 0)
      {
        goto LABEL_69;
      }

      goto LABEL_68;
    }
  }

  else if ((v11 & 0x400000) == 0)
  {
    goto LABEL_67;
  }

  self->_isAddedToHomeKit = *(fromCopy + 300);
  *&self->_has |= 0x400000uLL;
  if ((*(fromCopy + 42) & 0x200) != 0)
  {
LABEL_68:
    self->_volumeCapabilities = *(fromCopy + 71);
    *&self->_has |= 0x200uLL;
  }

LABEL_69:
  if (*(fromCopy + 7))
  {
    [(_MRAVOutputDeviceDescriptorProtobuf *)self setBluetoothID:?];
  }

  v12 = *(fromCopy + 42);
  if ((v12 & 0x400000000000) != 0)
  {
    self->_supportsHAP = *(fromCopy + 324);
    *&self->_has |= 0x400000000000uLL;
    v12 = *(fromCopy + 42);
  }

  if ((v12 & 0x10000000000000) != 0)
  {
    self->_usingJSONProtocol = *(fromCopy + 330);
    *&self->_has |= 0x10000000000000uLL;
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v13 = *(fromCopy + 8);
  v14 = [v13 countByEnumeratingWithState:&v65 objects:v73 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v66;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v66 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [(_MRAVOutputDeviceDescriptorProtobuf *)self addClusterComposition:*(*(&v65 + 1) + 8 * i)];
      }

      v15 = [v13 countByEnumeratingWithState:&v65 objects:v73 count:16];
    }

    while (v15);
  }

  if ((*(fromCopy + 336) & 2) != 0)
  {
    self->_clusterType = *(fromCopy + 20);
    *&self->_has |= 2uLL;
  }

  if (*(fromCopy + 29))
  {
    [(_MRAVOutputDeviceDescriptorProtobuf *)self setPrimaryUID:?];
  }

  v18 = *(fromCopy + 42);
  if ((v18 & 4) != 0)
  {
    self->_configuredClusterSize = *(fromCopy + 21);
    *&self->_has |= 4uLL;
    v18 = *(fromCopy + 42);
  }

  if ((v18 & 0x4000000000000) != 0)
  {
    self->_supportsRapportRemoteControlTransport = *(fromCopy + 328);
    *&self->_has |= 0x4000000000000uLL;
  }

  if (*(fromCopy + 11))
  {
    [(_MRAVOutputDeviceDescriptorProtobuf *)self setCurrentBluetoothListeningMode:?];
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v19 = *(fromCopy + 5);
  v20 = [v19 countByEnumeratingWithState:&v61 objects:v72 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v62;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v62 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [(_MRAVOutputDeviceDescriptorProtobuf *)self addAvailableBluetoothListeningModes:*(*(&v61 + 1) + 8 * j)];
      }

      v21 = [v19 countByEnumeratingWithState:&v61 objects:v72 count:16];
    }

    while (v21);
  }

  v24 = *(fromCopy + 42);
  if ((v24 & 0x1000000000000) != 0)
  {
    self->_supportsMultiplayer = *(fromCopy + 326);
    *&self->_has |= 0x1000000000000uLL;
    v24 = *(fromCopy + 42);
    if ((v24 & 0x4000000000) == 0)
    {
LABEL_101:
      if ((v24 & 0x40) == 0)
      {
        goto LABEL_103;
      }

      goto LABEL_102;
    }
  }

  else if ((v24 & 0x4000000000) == 0)
  {
    goto LABEL_101;
  }

  self->_producesLowFidelityAudio = *(fromCopy + 316);
  *&self->_has |= 0x4000000000uLL;
  if ((*(fromCopy + 42) & 0x40) != 0)
  {
LABEL_102:
    self->_hostDeviceClass = *(fromCopy + 40);
    *&self->_has |= 0x40uLL;
  }

LABEL_103:
  if (*(fromCopy + 2))
  {
    [(_MRAVOutputDeviceDescriptorProtobuf *)self setAirPlayGroupID:?];
  }

  v25 = *(fromCopy + 42);
  if ((v25 & 0x8000000000000) != 0)
  {
    self->_supportsSharePlayHandoff = *(fromCopy + 329);
    *&self->_has |= 0x8000000000000uLL;
    v25 = *(fromCopy + 42);
    if ((v25 & 0x20) == 0)
    {
LABEL_107:
      if ((v25 & 0x80000) == 0)
      {
        goto LABEL_109;
      }

      goto LABEL_108;
    }
  }

  else if ((v25 & 0x20) == 0)
  {
    goto LABEL_107;
  }

  self->_distance = *(fromCopy + 28);
  *&self->_has |= 0x20uLL;
  if ((*(fromCopy + 42) & 0x80000) != 0)
  {
LABEL_108:
    self->_discoveredOnSameInfra = *(fromCopy + 297);
    *&self->_has |= 0x80000uLL;
  }

LABEL_109:
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v26 = *(fromCopy + 1);
  v27 = [v26 countByEnumeratingWithState:&v57 objects:v71 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v58;
    do
    {
      for (k = 0; k != v28; ++k)
      {
        if (*v58 != v29)
        {
          objc_enumerationMutation(v26);
        }

        [(_MRAVOutputDeviceDescriptorProtobuf *)self addActivatedClusterMembers:*(*(&v57 + 1) + 8 * k)];
      }

      v28 = [v26 countByEnumeratingWithState:&v57 objects:v71 count:16];
    }

    while (v28);
  }

  v31 = *(fromCopy + 42);
  if ((v31 & 0x1000000000) != 0)
  {
    self->_pickable = *(fromCopy + 314);
    *&self->_has |= 0x1000000000uLL;
    v31 = *(fromCopy + 42);
  }

  if ((v31 & 0x80) != 0)
  {
    self->_transportType = *(fromCopy + 66);
    *&self->_has |= 0x80uLL;
  }

  if (*(fromCopy + 9))
  {
    [(_MRAVOutputDeviceDescriptorProtobuf *)self setClusterID:?];
  }

  v32 = *(fromCopy + 42);
  if ((v32 & 0x2000000) != 0)
  {
    self->_isClusterLeader = *(fromCopy + 303);
    *&self->_has |= 0x2000000uLL;
    v32 = *(fromCopy + 42);
  }

  if ((v32 & 0x1000000) != 0)
  {
    self->_isAppleAccessory = *(fromCopy + 302);
    *&self->_has |= 0x1000000uLL;
  }

  if (*(fromCopy + 27))
  {
    [(_MRAVOutputDeviceDescriptorProtobuf *)self setParentUniqueIdentifier:?];
  }

  if (*(fromCopy + 30))
  {
    [(_MRAVOutputDeviceDescriptorProtobuf *)self setRoomID:?];
  }

  if (*(fromCopy + 31))
  {
    [(_MRAVOutputDeviceDescriptorProtobuf *)self setRoomName:?];
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v33 = *(fromCopy + 3);
  v34 = [v33 countByEnumeratingWithState:&v53 objects:v70 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v54;
    do
    {
      for (m = 0; m != v35; ++m)
      {
        if (*v54 != v36)
        {
          objc_enumerationMutation(v33);
        }

        [(_MRAVOutputDeviceDescriptorProtobuf *)self addAllClusterMembers:*(*(&v53 + 1) + 8 * m)];
      }

      v35 = [v33 countByEnumeratingWithState:&v53 objects:v70 count:16];
    }

    while (v35);
  }

  v38 = *(fromCopy + 42);
  if ((v38 & 0x100000000000) != 0)
  {
    self->_supportsConversationDetection = *(fromCopy + 322);
    *&self->_has |= 0x100000000000uLL;
    v38 = *(fromCopy + 42);
    if ((v38 & 0x20000) == 0)
    {
LABEL_141:
      if ((v38 & 0x100000) == 0)
      {
        goto LABEL_142;
      }

      goto LABEL_168;
    }
  }

  else if ((v38 & 0x20000) == 0)
  {
    goto LABEL_141;
  }

  self->_conversationDetectionEnabled = *(fromCopy + 295);
  *&self->_has |= 0x20000uLL;
  v38 = *(fromCopy + 42);
  if ((v38 & 0x100000) == 0)
  {
LABEL_142:
    if ((v38 & 0x20000000000000) == 0)
    {
      goto LABEL_144;
    }

    goto LABEL_143;
  }

LABEL_168:
  self->_engageOnClusterActivate = *(fromCopy + 298);
  *&self->_has |= 0x100000uLL;
  if ((*(fromCopy + 42) & 0x20000000000000) != 0)
  {
LABEL_143:
    self->_volumeMuted = *(fromCopy + 331);
    *&self->_has |= 0x20000000000000uLL;
  }

LABEL_144:
  groupSessionInfo = self->_groupSessionInfo;
  v40 = *(fromCopy + 18);
  if (groupSessionInfo)
  {
    if (v40)
    {
      [(_MRGroupSessionInfoProtobuf *)groupSessionInfo mergeFrom:?];
    }
  }

  else if (v40)
  {
    [(_MRAVOutputDeviceDescriptorProtobuf *)self setGroupSessionInfo:?];
  }

  if ((*(fromCopy + 341) & 4) != 0)
  {
    self->_supportsBluetoothSharing = *(fromCopy + 320);
    *&self->_has |= 0x40000000000uLL;
  }

  if (*(fromCopy + 12))
  {
    [(_MRAVOutputDeviceDescriptorProtobuf *)self setDeviceEnclosureColor:?];
  }

  if (*(fromCopy + 28))
  {
    [(_MRAVOutputDeviceDescriptorProtobuf *)self setPlayingPairedDeviceName:?];
  }

  v41 = *(fromCopy + 42);
  if ((v41 & 0x2000000000000) != 0)
  {
    self->_supportsRapport = *(fromCopy + 327);
    *&self->_has |= 0x2000000000000uLL;
    v41 = *(fromCopy + 42);
    if ((v41 & 0x80000000) == 0)
    {
LABEL_180:
      if ((v41 & 0x800000000000) == 0)
      {
        goto LABEL_181;
      }

      goto LABEL_202;
    }
  }

  else if ((v41 & 0x80000000) == 0)
  {
    goto LABEL_180;
  }

  self->_isPickedOnPairedDevice = *(fromCopy + 309);
  *&self->_has |= 0x80000000uLL;
  v41 = *(fromCopy + 42);
  if ((v41 & 0x800000000000) == 0)
  {
LABEL_181:
    if ((v41 & 0x400) == 0)
    {
      goto LABEL_182;
    }

    goto LABEL_203;
  }

LABEL_202:
  self->_supportsHeadTrackedSpatialAudio = *(fromCopy + 325);
  *&self->_has |= 0x800000000000uLL;
  v41 = *(fromCopy + 42);
  if ((v41 & 0x400) == 0)
  {
LABEL_182:
    if ((v41 & 0x20000000) == 0)
    {
      goto LABEL_184;
    }

    goto LABEL_183;
  }

LABEL_203:
  self->_allowsHeadTrackedSpatialAudio = *(fromCopy + 288);
  *&self->_has |= 0x400uLL;
  if ((*(fromCopy + 42) & 0x20000000) != 0)
  {
LABEL_183:
    self->_isHeadTrackedSpatialAudioActive = *(fromCopy + 307);
    *&self->_has |= 0x20000000uLL;
  }

LABEL_184:
  if (*(fromCopy + 19))
  {
    [(_MRAVOutputDeviceDescriptorProtobuf *)self setHeadTrackedSpatialAudioMode:?];
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v42 = *(fromCopy + 15);
  v43 = [v42 countByEnumeratingWithState:&v49 objects:v69 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v50;
    do
    {
      for (n = 0; n != v44; ++n)
      {
        if (*v50 != v45)
        {
          objc_enumerationMutation(v42);
        }

        [(_MRAVOutputDeviceDescriptorProtobuf *)self addDnsNames:*(*(&v49 + 1) + 8 * n), v49];
      }

      v44 = [v42 countByEnumeratingWithState:&v49 objects:v69 count:16];
    }

    while (v44);
  }

  if (*(fromCopy + 4))
  {
    [(_MRAVOutputDeviceDescriptorProtobuf *)self setAlternateTransportType:?];
  }

  v47 = *(fromCopy + 42);
  if ((v47 & 0x40000) == 0)
  {
    if ((v47 & 0x40000000000000) == 0)
    {
      goto LABEL_197;
    }

LABEL_206:
    self->_wasDiscoveredInCache = *(fromCopy + 332);
    *&self->_has |= 0x40000000000000uLL;
    if ((*(fromCopy + 42) & 0x8000000000) == 0)
    {
      goto LABEL_199;
    }

    goto LABEL_198;
  }

  self->_deviceIsPlaying = *(fromCopy + 296);
  *&self->_has |= 0x40000uLL;
  v47 = *(fromCopy + 42);
  if ((v47 & 0x40000000000000) != 0)
  {
    goto LABEL_206;
  }

LABEL_197:
  if ((v47 & 0x8000000000) != 0)
  {
LABEL_198:
    self->_representsUGLSender = *(fromCopy + 317);
    *&self->_has |= 0x8000000000uLL;
  }

LABEL_199:

  v48 = *MEMORY[0x1E69E9840];
}

@end