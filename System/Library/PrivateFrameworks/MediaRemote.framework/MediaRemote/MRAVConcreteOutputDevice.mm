@interface MRAVConcreteOutputDevice
- (AVOutputContext)outputContext;
- (BOOL)_loadLocalOverridesWithOutputContext:(void *)context outputDevice:;
- (BOOL)allowsHeadTrackedSpatialAudio;
- (BOOL)canAccessAppleMusic;
- (BOOL)canAccessRemoteAssets;
- (BOOL)canAccessiCloudMusicLibrary;
- (BOOL)canFetchMediaDataFromSender;
- (BOOL)canPlayEncryptedProgressiveDownloadAssets;
- (BOOL)canRelayCommunicationChannel;
- (BOOL)containsUID:(id)d;
- (BOOL)discoveredDeviceIsPlaying;
- (BOOL)discoveredOnSameInfra;
- (BOOL)groupContainsGroupLeader;
- (BOOL)hasBatteryLevel;
- (BOOL)isActivatedForContinuityScreen;
- (BOOL)isAddedToHomeKit;
- (BOOL)isAirPlayReceiverSessionActive;
- (BOOL)isAppleAccessory;
- (BOOL)isCarPlayVideoActive;
- (BOOL)isCarPlayVideoAllowed;
- (BOOL)isClusterLeader;
- (BOOL)isConversationDetectionEnabled;
- (BOOL)isDeviceGroupable;
- (BOOL)isGroupLeader;
- (BOOL)isGroupable;
- (BOOL)isHeadTrackedSpatialAudioActive;
- (BOOL)isLocalDevice;
- (BOOL)isPickedOnPairedDevice;
- (BOOL)isProxyGroupPlayer;
- (BOOL)isRemoteControllable;
- (BOOL)isVolumeMuted;
- (BOOL)parentGroupContainsDiscoverableLeader;
- (BOOL)presentsOptimizedUserInterfaceWhenPlayingFetchedAudioOnlyAssets;
- (BOOL)producesLowFidelityAudio;
- (BOOL)representsUGLSender;
- (BOOL)requiresAuthorization;
- (BOOL)setCurrentBluetoothListeningMode:(id)mode error:(id *)error;
- (BOOL)setHeadTrackedSpatialAudioMode:(id)mode error:(id *)error;
- (BOOL)supportsBluetoothSharing;
- (BOOL)supportsBufferedAirPlay;
- (BOOL)supportsConversationDetection;
- (BOOL)supportsEngageOnClusterActivation;
- (BOOL)supportsExternalScreen;
- (BOOL)supportsHAP;
- (BOOL)supportsHeadTrackedSpatialAudio;
- (BOOL)supportsMultiplayer;
- (BOOL)supportsRapport;
- (BOOL)supportsRapportRemoteControlTransport;
- (BOOL)supportsSharePlayHandoff;
- (BOOL)wasDiscoveredInCache;
- (MRAVConcreteOutputDevice)initWithAVOutputDevice:(id)device outputContext:(id)context;
- (float)batteryLevel;
- (float)volume;
- (id)MACAddress;
- (id)_playingPairedDeviceNameForAVOutputDevice:(uint64_t)device;
- (id)airPlayGroupID;
- (id)alternateTransportType;
- (id)availableBluetoothListeningModes;
- (id)bluetoothID;
- (id)clusterComposition;
- (id)clusterID;
- (id)currentBluetoothListeningMode;
- (id)deviceEnclosureColor;
- (id)dnsNames;
- (id)firmwareVersion;
- (id)headTrackedSpatialAudioMode;
- (id)initWithAVOutputDevice:(void *)device sourceInfo:(void *)info outputContext:;
- (id)logicalDeviceID;
- (id)modelID;
- (id)modelSpecificInfo;
- (id)name;
- (id)parentGroupIdentifier;
- (id)playingPairedDeviceName;
- (id)tightSyncID;
- (id)uid;
- (unint64_t)configuredClusterSize;
- (unsigned)clusterType;
- (unsigned)deviceSubtype;
- (unsigned)deviceType;
- (unsigned)volumeCapabilities;
- (void)adjustVolume:(int64_t)volume details:(id)details;
- (void)setVolume:(float)volume details:(id)details;
@end

@implementation MRAVConcreteOutputDevice

- (unsigned)deviceType
{
  avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  deviceType = [avOutputDevice deviceType];
  if (deviceType < 5)
  {
    v4 = deviceType + 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)uid
{
  uidOverride = self->_uidOverride;
  if (uidOverride)
  {
    v3 = uidOverride;
  }

  else
  {
    avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
    v5 = [avOutputDevice ID];
    v3 = MRComputeBaseRouteUIDWithDefaultSuffixes(v5);
  }

  return v3;
}

- (unsigned)deviceSubtype
{
  avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  v3 = MRAVOutputDeviceSubtypeFromAVSubtype([avOutputDevice deviceSubType]);

  return v3;
}

- (BOOL)isCarPlayVideoAllowed
{
  avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  isCarPlayVideoAllowed = [avOutputDevice isCarPlayVideoAllowed];

  return isCarPlayVideoAllowed;
}

- (BOOL)canAccessRemoteAssets
{
  avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  canAccessRemoteAssets = [avOutputDevice canAccessRemoteAssets];

  return canAccessRemoteAssets;
}

- (BOOL)canAccessAppleMusic
{
  avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  canAccessAppleMusic = [avOutputDevice canAccessAppleMusic];

  return canAccessAppleMusic;
}

- (BOOL)canAccessiCloudMusicLibrary
{
  avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  canAccessiCloudMusicLibrary = [avOutputDevice canAccessiCloudMusicLibrary];

  return canAccessiCloudMusicLibrary;
}

- (BOOL)canPlayEncryptedProgressiveDownloadAssets
{
  avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  canPlayEncryptedProgressiveDownloadAssets = [avOutputDevice canPlayEncryptedProgressiveDownloadAssets];

  return canPlayEncryptedProgressiveDownloadAssets;
}

- (BOOL)canFetchMediaDataFromSender
{
  avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  canFetchMediaDataFromSender = [avOutputDevice canFetchMediaDataFromSender];

  return canFetchMediaDataFromSender;
}

- (BOOL)presentsOptimizedUserInterfaceWhenPlayingFetchedAudioOnlyAssets
{
  avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  presentsOptimizedUserInterfaceWhenPlayingFetchedAudioOnlyAssets = [avOutputDevice presentsOptimizedUserInterfaceWhenPlayingFetchedAudioOnlyAssets];

  return presentsOptimizedUserInterfaceWhenPlayingFetchedAudioOnlyAssets;
}

- (BOOL)isLocalDevice
{
  avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  IsAVOutputDeviceLocal = MROutputDeviceIsAVOutputDeviceLocal(avOutputDevice);

  return IsAVOutputDeviceLocal;
}

- (id)name
{
  avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  airPlayProperties = [avOutputDevice airPlayProperties];
  v5 = [airPlayProperties objectForKeyedSubscript:@"GroupPublicName"];
  v6 = [v5 copy];

  if (![v6 length])
  {
    avOutputDevice2 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
    name = [avOutputDevice2 name];
    v9 = [name copy];

    v6 = v9;
  }

  if (![v6 length] && -[MRAVConcreteOutputDevice isLocalDevice](self, "isLocalDevice"))
  {
    v10 = +[MROrigin localOrigin];
    v11 = [MRDeviceInfoRequest cachedDeviceInfoForOrigin:v10];
    name2 = [v11 name];

    v6 = name2;
  }

  return v6;
}

- (id)tightSyncID
{
  avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  logicalDeviceID = [avOutputDevice logicalDeviceID];
  v4 = [logicalDeviceID copy];

  return v4;
}

- (BOOL)supportsMultiplayer
{
  if (self->_supportsMultiplayerOverride)
  {
    supportsMultiplayerOverride = self->_supportsMultiplayerOverride;

    return [(NSNumber *)supportsMultiplayerOverride BOOLValue];
  }

  else
  {
    avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
    airPlayProperties = [avOutputDevice airPlayProperties];
    v7 = [airPlayProperties objectForKeyedSubscript:@"SupportsMultiplayer"];
    bOOLValue = [v7 BOOLValue];

    return bOOLValue;
  }
}

- (id)airPlayGroupID
{
  groupUIDOverride = self->_groupUIDOverride;
  if (groupUIDOverride)
  {
    groupID = groupUIDOverride;
  }

  else
  {
    avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
    groupID = [avOutputDevice groupID];
  }

  return groupID;
}

- (id)modelID
{
  avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  modelID = [avOutputDevice modelID];

  return modelID;
}

- (id)MACAddress
{
  avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  identifyingMACAddress = [avOutputDevice identifyingMACAddress];

  return identifyingMACAddress;
}

- (BOOL)isRemoteControllable
{
  avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  v4 = ([avOutputDevice canBeGroupLeader] & 1) != 0 || -[MRAVOutputDevice shouldBeLocallyHosted](self, "shouldBeLocallyHosted");

  return v4;
}

- (BOOL)canRelayCommunicationChannel
{
  avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  canRelayCommunicationChannel = [avOutputDevice canRelayCommunicationChannel];

  return canRelayCommunicationChannel;
}

- (BOOL)supportsBufferedAirPlay
{
  avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  supportsBufferedAirPlay = [avOutputDevice supportsBufferedAirPlay];

  return supportsBufferedAirPlay;
}

- (BOOL)isGroupLeader
{
  if (self->_isGroupLeaderOverride)
  {
    isGroupLeaderOverride = self->_isGroupLeaderOverride;

    return [(NSNumber *)isGroupLeaderOverride BOOLValue];
  }

  else
  {
    avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
    isGroupLeader = [avOutputDevice isGroupLeader];

    return isGroupLeader;
  }
}

- (BOOL)groupContainsGroupLeader
{
  if (self->_groupContainsGroupLeaderOverride)
  {
    groupContainsGroupLeaderOverride = self->_groupContainsGroupLeaderOverride;

    return [(NSNumber *)groupContainsGroupLeaderOverride BOOLValue];
  }

  else
  {
    avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
    groupContainsGroupLeader = [avOutputDevice groupContainsGroupLeader];

    return groupContainsGroupLeader;
  }
}

- (BOOL)isAirPlayReceiverSessionActive
{
  if (self->_isAirPlayActiveOverride)
  {
    isAirPlayActiveOverride = self->_isAirPlayActiveOverride;

    return [(NSNumber *)isAirPlayActiveOverride BOOLValue];
  }

  else
  {
    avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
    airPlayProperties = [avOutputDevice airPlayProperties];
    v7 = [airPlayProperties objectForKeyedSubscript:@"ReceiverSessionIsActive"];
    bOOLValue = [v7 BOOLValue];

    return bOOLValue;
  }
}

- (BOOL)parentGroupContainsDiscoverableLeader
{
  if (self->_parentGroupContainsGroupLeaderOverride)
  {
    parentGroupContainsGroupLeaderOverride = self->_parentGroupContainsGroupLeaderOverride;

    return [(NSNumber *)parentGroupContainsGroupLeaderOverride BOOLValue];
  }

  else
  {
    avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
    airPlayProperties = [avOutputDevice airPlayProperties];
    v7 = [airPlayProperties objectForKeyedSubscript:@"ParentGroupContainsDiscoverableLeader"];
    bOOLValue = [v7 BOOLValue];

    return bOOLValue;
  }
}

- (id)parentGroupIdentifier
{
  parentGroupUIDOverride = self->_parentGroupUIDOverride;
  if (parentGroupUIDOverride)
  {
    v3 = parentGroupUIDOverride;
  }

  else
  {
    avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
    airPlayProperties = [avOutputDevice airPlayProperties];
    v6 = [airPlayProperties objectForKeyedSubscript:@"ParentGroupUUID"];
    v3 = [v6 copy];
  }

  return v3;
}

- (BOOL)isGroupable
{
  avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  canBeGrouped = [avOutputDevice canBeGrouped];

  return canBeGrouped;
}

- (BOOL)isDeviceGroupable
{
  avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  canBeGrouped = [avOutputDevice canBeGrouped];

  return canBeGrouped;
}

- (BOOL)isProxyGroupPlayer
{
  avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  if ([avOutputDevice isGroupLeader])
  {
    avOutputDevice2 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
    v5 = [avOutputDevice2 participatesInGroupPlayback] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)isAddedToHomeKit
{
  avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  airPlayProperties = [avOutputDevice airPlayProperties];
  v4 = [airPlayProperties objectForKeyedSubscript:@"SupportsHangdogRemoteControl"];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (unsigned)volumeCapabilities
{
  sourceInfo = [(MRAVConcreteOutputDevice *)self sourceInfo];
  sourceType = [sourceInfo sourceType];

  if (sourceType == 2)
  {
    return 0;
  }

  avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  volumeControlType = [avOutputDevice volumeControlType];
  if (volumeControlType == 2)
  {
    v8 = 5;
  }

  else
  {
    v8 = 0;
  }

  if (volumeControlType == 1)
  {
    v5 = 2;
  }

  else
  {
    v5 = v8;
  }

  return v5;
}

- (BOOL)isVolumeMuted
{
  sourceInfo = [(MRAVConcreteOutputDevice *)self sourceInfo];
  [sourceInfo sourceType];

  return 0;
}

- (id)bluetoothID
{
  avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  airPlayProperties = [avOutputDevice airPlayProperties];
  v4 = [airPlayProperties objectForKeyedSubscript:@"BluetoothIdentifier"];
  v5 = [v4 copy];

  return v5;
}

- (BOOL)supportsHAP
{
  avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  v3 = [avOutputDevice HAPConformance] == 2;

  return v3;
}

- (id)modelSpecificInfo
{
  avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  modelSpecificInformation = [avOutputDevice modelSpecificInformation];

  return modelSpecificInformation;
}

- (BOOL)hasBatteryLevel
{
  avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  hasBatteryLevel = [avOutputDevice hasBatteryLevel];

  return hasBatteryLevel;
}

- (BOOL)supportsExternalScreen
{
  avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  deviceFeatures = [avOutputDevice deviceFeatures];

  return (deviceFeatures >> 1) & 1;
}

- (BOOL)requiresAuthorization
{
  avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  requiresAuthorization = [avOutputDevice requiresAuthorization];

  return requiresAuthorization;
}

- (id)clusterComposition
{
  avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  clusteredDeviceDescriptions = [avOutputDevice clusteredDeviceDescriptions];
  v4 = [clusteredDeviceDescriptions mr_map:&__block_literal_global_50_0];

  return v4;
}

- (unsigned)clusterType
{
  avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  clusterType = [avOutputDevice clusterType];
  v4 = clusterType;
  if (clusterType < 3)
  {
    v4 = dword_1A2B810A0[clusterType];
  }

  return v4;
}

- (unint64_t)configuredClusterSize
{
  avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  configuredClusterSize = [avOutputDevice configuredClusterSize];

  return configuredClusterSize;
}

- (BOOL)supportsRapportRemoteControlTransport
{
  avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  airPlayProperties = [avOutputDevice airPlayProperties];
  v4 = [airPlayProperties objectForKeyedSubscript:@"SupportsRapportRemoteControlTransport"];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (id)currentBluetoothListeningMode
{
  avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  currentBluetoothListeningMode = [avOutputDevice currentBluetoothListeningMode];

  return currentBluetoothListeningMode;
}

- (id)availableBluetoothListeningModes
{
  avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  availableBluetoothListeningModes = [avOutputDevice availableBluetoothListeningModes];

  return availableBluetoothListeningModes;
}

- (BOOL)producesLowFidelityAudio
{
  avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  producesLowFidelityAudio = [avOutputDevice producesLowFidelityAudio];

  return producesLowFidelityAudio;
}

- (BOOL)supportsSharePlayHandoff
{
  avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  airPlayProperties = [avOutputDevice airPlayProperties];
  v4 = [airPlayProperties objectForKeyedSubscript:@"SupportsSharePlayHandoff"];

  if (v4)
  {
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (BOOL)discoveredOnSameInfra
{
  avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  airPlayProperties = [avOutputDevice airPlayProperties];
  v4 = [airPlayProperties objectForKeyedSubscript:@"IsDiscoveredOverInfra"];

  if (v4)
  {
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (id)clusterID
{
  clusterComposition = [(MRAVConcreteOutputDevice *)self clusterComposition];
  if ([clusterComposition count])
  {
    clusterID = 0;
  }

  else
  {
    avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
    clusterID = [avOutputDevice clusterID];
  }

  return clusterID;
}

- (BOOL)isClusterLeader
{
  avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  isClusterLeader = [avOutputDevice isClusterLeader];

  return isClusterLeader;
}

- (BOOL)isAppleAccessory
{
  avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  isAppleAccessory = [avOutputDevice isAppleAccessory];

  return isAppleAccessory;
}

- (BOOL)supportsEngageOnClusterActivation
{
  avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  airPlayProperties = [avOutputDevice airPlayProperties];
  v4 = [airPlayProperties objectForKeyedSubscript:@"SupportsClusterEngageOnActivation"];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (BOOL)supportsBluetoothSharing
{
  avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  supportsBluetoothSharing = [avOutputDevice supportsBluetoothSharing];

  return supportsBluetoothSharing;
}

- (id)deviceEnclosureColor
{
  avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  airPlayProperties = [avOutputDevice airPlayProperties];
  v4 = [airPlayProperties objectForKeyedSubscript:@"DeviceEnclosureColor"];

  return v4;
}

- (id)playingPairedDeviceName
{
  avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  v4 = [(MRAVConcreteOutputDevice *)self _playingPairedDeviceNameForAVOutputDevice:avOutputDevice];

  return v4;
}

- (BOOL)supportsRapport
{
  avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  airPlayProperties = [avOutputDevice airPlayProperties];
  v4 = [airPlayProperties objectForKeyedSubscript:@"SupportsRapportRemoteControl"];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (BOOL)isPickedOnPairedDevice
{
  avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  isInUseByPairedDevice = [avOutputDevice isInUseByPairedDevice];

  return isInUseByPairedDevice;
}

- (BOOL)supportsHeadTrackedSpatialAudio
{
  avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  supportsHeadTrackedSpatialAudio = [avOutputDevice supportsHeadTrackedSpatialAudio];

  return supportsHeadTrackedSpatialAudio;
}

- (BOOL)isHeadTrackedSpatialAudioActive
{
  avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  isHeadTrackedSpatialAudioActive = [avOutputDevice isHeadTrackedSpatialAudioActive];

  return isHeadTrackedSpatialAudioActive;
}

- (id)headTrackedSpatialAudioMode
{
  avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  headTrackedSpatialAudioMode = [avOutputDevice headTrackedSpatialAudioMode];

  return headTrackedSpatialAudioMode;
}

- (id)dnsNames
{
  avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  airPlayProperties = [avOutputDevice airPlayProperties];
  v4 = [airPlayProperties objectForKeyedSubscript:@"CUDNSNames"];
  v5 = [v4 copy];

  return v5;
}

- (BOOL)supportsConversationDetection
{
  avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  supportsConversationDetection = [avOutputDevice supportsConversationDetection];

  return supportsConversationDetection;
}

- (BOOL)isConversationDetectionEnabled
{
  avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  isConversationDetectionEnabled = [avOutputDevice isConversationDetectionEnabled];

  return isConversationDetectionEnabled;
}

- (id)alternateTransportType
{
  avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  alternateTransportType = [avOutputDevice alternateTransportType];

  return alternateTransportType;
}

- (BOOL)discoveredDeviceIsPlaying
{
  avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  airPlayProperties = [avOutputDevice airPlayProperties];
  v4 = [airPlayProperties objectForKeyedSubscript:@"ReceiverDeviceIsPlaying"];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (BOOL)wasDiscoveredInCache
{
  v3 = +[MRUserSettings currentSettings];
  if ([v3 supportDiscoveryCaching])
  {
    avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
    isCached = [avOutputDevice isCached];
  }

  else
  {
    isCached = 0;
  }

  return isCached;
}

- (id)logicalDeviceID
{
  v3 = +[MRUserSettings currentSettings];
  useClusterDevices = [v3 useClusterDevices];

  if (useClusterDevices)
  {
    tightSyncID = 0;
  }

  else
  {
    tightSyncID = [(MRAVConcreteOutputDevice *)self tightSyncID];
  }

  return tightSyncID;
}

MRAVOutputDeviceDescription *__46__MRAVConcreteOutputDevice_clusterComposition__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MRAVOutputDeviceDescription alloc] initWithAVDescription:v2];

  return v3;
}

- (MRAVConcreteOutputDevice)initWithAVOutputDevice:(id)device outputContext:(id)context
{
  deviceCopy = device;
  contextCopy = context;
  if (!contextCopy)
  {
    [MRAVConcreteOutputDevice initWithAVOutputDevice:a2 outputContext:self];
  }

  v9 = [[MRAVOutputDeviceSourceInfo alloc] initWithMultipleBuiltInDevices:0 sourceType:1];
  v10 = [(MRAVConcreteOutputDevice *)&self->super.super.isa initWithAVOutputDevice:deviceCopy sourceInfo:v9 outputContext:contextCopy];

  return v10;
}

BOOL __78__MRAVConcreteOutputDevice__loadLocalOverridesWithOutputContext_outputDevice___block_invoke_2(uint64_t a1)
{
  v2 = +[MRUserSettings currentSettings];
  if ([v2 supportMultiplayerHost])
  {

    goto LABEL_4;
  }

  v3 = [*(a1 + 32) outputContextType];
  v4 = *MEMORY[0x1E69586D0];

  if (v3 == v4)
  {
LABEL_4:
    v5 = +[MRUserSettings currentSettings];
    if ([v5 supportMultiplayerHost])
    {
      v6 = [*(a1 + 32) outputContextType];
      v7 = *MEMORY[0x1E69586C8];

      if (v6 != v7)
      {
        return 0;
      }
    }

    else
    {
    }

    v9 = [*(a1 + 32) outputDevices];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __78__MRAVConcreteOutputDevice__loadLocalOverridesWithOutputContext_outputDevice___block_invoke_3;
    v12[3] = &unk_1E769C820;
    v13 = *(a1 + 40);
    v10 = [v9 msv_firstWhere:v12];
    v8 = v10 != 0;

    return v8;
  }

  return 0;
}

uint64_t __78__MRAVConcreteOutputDevice__loadLocalOverridesWithOutputContext_outputDevice___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 ID];
  v4 = [*(a1 + 32) ID];
  v5 = [v3 isEqual:v4];

  return v5;
}

BOOL __78__MRAVConcreteOutputDevice__loadLocalOverridesWithOutputContext_outputDevice___block_invoke_4(uint64_t a1)
{
  if (*(a1 + 48) != 1)
  {
    return 0;
  }

  if ([*(a1 + 32) isLocalDevice])
  {
    return 1;
  }

  return [*(a1 + 40) deviceType] != 0;
}

- (id)firmwareVersion
{
  avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  firmwareVersion = [avOutputDevice firmwareVersion];

  return firmwareVersion;
}

- (BOOL)setCurrentBluetoothListeningMode:(id)mode error:(id *)error
{
  modeCopy = mode;
  avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  v13 = 0;
  v8 = [avOutputDevice setCurrentBluetoothListeningMode:modeCopy error:&v13];

  v9 = v13;
  v10 = 0;
  if ((v8 & 1) == 0)
  {
    v10 = [v9 mr_errorByEnvelopingWithMRError:43];
  }

  if (error)
  {
    v11 = v10;
    *error = v10;
  }

  return v8;
}

- (BOOL)allowsHeadTrackedSpatialAudio
{
  avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  allowsHeadTrackedSpatialAudio = [avOutputDevice allowsHeadTrackedSpatialAudio];

  return allowsHeadTrackedSpatialAudio;
}

- (BOOL)setHeadTrackedSpatialAudioMode:(id)mode error:(id *)error
{
  modeCopy = mode;
  avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  v12 = 0;
  v8 = [avOutputDevice setHeadTrackedSpatialAudioMode:modeCopy error:&v12];

  v9 = v12;
  if (error)
  {
    v10 = v9;
    *error = v9;
  }

  return v8;
}

- (float)batteryLevel
{
  avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  [avOutputDevice batteryLevel];
  v4 = v3;

  return v4;
}

- (BOOL)isCarPlayVideoActive
{
  avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  isCarPlayVideoActive = [avOutputDevice isCarPlayVideoActive];

  return isCarPlayVideoActive;
}

- (float)volume
{
  sourceInfo = [(MRAVConcreteOutputDevice *)self sourceInfo];
  sourceType = [sourceInfo sourceType];

  if (sourceType == 2)
  {
    return 0.0;
  }

  avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  [avOutputDevice volume];
  v8 = v7;

  return v8;
}

- (void)setVolume:(float)volume details:(id)details
{
  v25 = *MEMORY[0x1E69E9840];
  detailsCopy = details;
  sourceInfo = [(MRAVConcreteOutputDevice *)self sourceInfo];
  sourceType = [sourceInfo sourceType];

  v9 = objc_alloc(MEMORY[0x1E696AEC0]);
  debugName = [(MRAVOutputDevice *)self debugName];
  v11 = debugName;
  if (sourceType == 2)
  {
    volume = [v9 initWithFormat:@"%@ -> %lf will not work with AVOD sourced from Discovery", debugName, volume];

    v13 = objc_alloc(MEMORY[0x1E696AD60]);
    requestID = [detailsCopy requestID];

    avOutputDevice = [v13 initWithFormat:@"%@<%@>", @"ConcreteOutputDevice.setVolume", requestID];
    if (volume)
    {
      [avOutputDevice appendFormat:@" for %@", volume];
    }

    v16 = _MRLogForCategory(0xAuLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v24 = avOutputDevice;
      _os_log_impl(&dword_1A2860000, v16, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    volume = [v9 initWithFormat:@"%@ -> %lf", debugName, volume];

    v17 = objc_alloc(MEMORY[0x1E696AD60]);
    requestID2 = [detailsCopy requestID];

    v19 = [v17 initWithFormat:@"%@<%@>", @"ConcreteOutputDevice.setVolume", requestID2];
    if (volume)
    {
      [v19 appendFormat:@" for %@", volume];
    }

    v20 = _MRLogForCategory(0xAuLL);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v24 = v19;
      _os_log_impl(&dword_1A2860000, v20, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
    }

    avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
    *&v21 = volume;
    [avOutputDevice setVolume:v21];
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)adjustVolume:(int64_t)volume details:(id)details
{
  v25 = *MEMORY[0x1E69E9840];
  detailsCopy = details;
  sourceInfo = [(MRAVConcreteOutputDevice *)self sourceInfo];
  sourceType = [sourceInfo sourceType];

  v9 = objc_alloc(MEMORY[0x1E696AEC0]);
  debugName = [(MRAVOutputDevice *)self debugName];
  v11 = MRMediaRemoteVolumeControlAdjustmentDescription(volume);
  v12 = v11;
  if (sourceType == 2)
  {
    v13 = [v9 initWithFormat:@"%@ -> %@  will not work with AVOD sourced from Discovery", debugName, v11];

    v14 = objc_alloc(MEMORY[0x1E696AD60]);
    requestID = [detailsCopy requestID];

    avOutputDevice = [v14 initWithFormat:@"%@<%@>", @"ConcreteOutputDevice.adjustVolume", requestID];
    if (v13)
    {
      [avOutputDevice appendFormat:@" for %@", v13];
    }

    v17 = _MRLogForCategory(0xAuLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v24 = avOutputDevice;
      _os_log_impl(&dword_1A2860000, v17, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v13 = [v9 initWithFormat:@"%@ -> %@", debugName, v11];

    v18 = objc_alloc(MEMORY[0x1E696AD60]);
    requestID2 = [detailsCopy requestID];

    v20 = [v18 initWithFormat:@"%@<%@>", @"ConcreteOutputDevice.adjustVolume", requestID2];
    if (v13)
    {
      [v20 appendFormat:@" for %@", v13];
    }

    v21 = _MRLogForCategory(0xAuLL);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v24 = v20;
      _os_log_impl(&dword_1A2860000, v21, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
    }

    avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
    if ([avOutputDevice volumeControlType] == 2)
    {
      if ((volume - 1) > 2)
      {
        if ((volume - 4) <= 2)
        {
          [avOutputDevice decreaseVolumeByCount:1];
        }
      }

      else
      {
        [avOutputDevice increaseVolumeByCount:1];
      }
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (BOOL)containsUID:(id)d
{
  dCopy = d;
  avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  deviceID = [avOutputDevice deviceID];
  if ([deviceID isEqualToString:dCopy])
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = MRAVConcreteOutputDevice;
    v7 = [(MRAVOutputDevice *)&v9 containsUID:dCopy];
  }

  return v7;
}

- (BOOL)isActivatedForContinuityScreen
{
  avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  isActivatedForContinuityScreen = [avOutputDevice isActivatedForContinuityScreen];

  return isActivatedForContinuityScreen;
}

- (BOOL)representsUGLSender
{
  avOutputDevice = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  airPlayProperties = [avOutputDevice airPlayProperties];
  v4 = [airPlayProperties objectForKeyedSubscript:@"IsRepresentingUGLSender"];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (AVOutputContext)outputContext
{
  WeakRetained = objc_loadWeakRetained(&self->_outputContext);

  return WeakRetained;
}

- (id)initWithAVOutputDevice:(void *)device sourceInfo:(void *)info outputContext:
{
  v8 = a2;
  deviceCopy = device;
  infoCopy = info;
  if (!self)
  {
    goto LABEL_8;
  }

  v14.receiver = self;
  v14.super_class = MRAVConcreteOutputDevice;
  self = objc_msgSendSuper2(&v14, sel_init);
  if (!self)
  {
    goto LABEL_3;
  }

  if (!v8)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel_initWithAVOutputDevice_sourceInfo_outputContext_ object:self file:@"MRAVConcreteOutputDevice.m" lineNumber:67 description:{@"Invalid parameter not satisfying: %@", @"avOutputDevice"}];
  }

  objc_storeStrong(self + 38, a2);
  objc_storeStrong(self + 39, device);
  objc_storeWeak(self + 49, infoCopy);
  if ([(MRAVConcreteOutputDevice *)self _loadLocalOverridesWithOutputContext:infoCopy outputDevice:v8])
  {
LABEL_3:
    self = self;
    selfCopy = self;
  }

  else
  {
LABEL_8:
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)_loadLocalOverridesWithOutputContext:(void *)context outputDevice:
{
  v56 = *MEMORY[0x1E69E9840];
  v5 = a2;
  contextCopy = context;
  if (self)
  {
    IsMediaRemoteDaemon = MRProcessIsMediaRemoteDaemon();
    v8 = +[MROrigin localOrigin];
    if (IsMediaRemoteDaemon)
    {
      [MRDeviceInfoRequest cachedDeviceInfoForOrigin:v8];
    }

    else
    {
      [MRDeviceInfoRequest deviceInfoForOrigin:v8];
    }
    v9 = ;

    if ([contextCopy deviceSubType] != 15 && objc_msgSend(self, "isLocalDevice"))
    {
      deviceUID = [v9 deviceUID];
      OUTLINED_FUNCTION_2_12(deviceUID, 320);
      [self[40] length];
    }

    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __78__MRAVConcreteOutputDevice__loadLocalOverridesWithOutputContext_outputDevice___block_invoke_2;
    v45[3] = &unk_1E76A3130;
    v11 = v5;
    v46 = v11;
    v12 = contextCopy;
    v47 = v12;
    v13 = (__78__MRAVConcreteOutputDevice__loadLocalOverridesWithOutputContext_outputDevice___block_invoke_2)(v45);
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __78__MRAVConcreteOutputDevice__loadLocalOverridesWithOutputContext_outputDevice___block_invoke_4;
    v42[3] = &unk_1E76A3158;
    v44 = v13;
    v42[4] = self;
    v14 = v12;
    v43 = v14;
    if ((__78__MRAVConcreteOutputDevice__loadLocalOverridesWithOutputContext_outputDevice___block_invoke_4)(v42) && v9)
    {
      airPlayGroupUID = [v9 airPlayGroupUID];
      OUTLINED_FUNCTION_2_12(airPlayGroupUID, 328);
      parentGroupID = [v9 parentGroupID];
      OUTLINED_FUNCTION_2_12(parentGroupID, 336);
      [OUTLINED_FUNCTION_1_22() isGroupLeader];
      v17 = [OUTLINED_FUNCTION_0_22() numberWithBool:?];
      OUTLINED_FUNCTION_2_12(v17, 344);
      [OUTLINED_FUNCTION_1_22() isAirPlayActive];
      v18 = [OUTLINED_FUNCTION_0_22() numberWithBool:?];
      OUTLINED_FUNCTION_2_12(v18, 352);
      [OUTLINED_FUNCTION_1_22() isProxyGroupPlayer];
      v19 = [OUTLINED_FUNCTION_0_22() numberWithBool:?];
      OUTLINED_FUNCTION_2_12(v19, 360);
      [OUTLINED_FUNCTION_1_22() groupContainsDiscoverableGroupLeader];
      v20 = [OUTLINED_FUNCTION_0_22() numberWithBool:?];
      OUTLINED_FUNCTION_2_12(v20, 368);
      [OUTLINED_FUNCTION_1_22() parentGroupContainsDiscoverableGroupLeader];
      v21 = [OUTLINED_FUNCTION_0_22() numberWithBool:?];
      OUTLINED_FUNCTION_2_12(v21, 376);
      [OUTLINED_FUNCTION_1_22() supportsMultiplayer];
      v22 = [OUTLINED_FUNCTION_0_22() numberWithBool:?];
      OUTLINED_FUNCTION_2_12(v22, 384);
    }

    if (v13)
    {
      v23 = +[MRUserSettings currentSettings];
      canHostMultiplayerStream = [v23 canHostMultiplayerStream];

      if (canHostMultiplayerStream)
      {
        if (v9)
        {
          senderDefaultGroupUID = [v9 senderDefaultGroupUID];
          clusterType = [v9 clusterType];
          preferredClusterLeaderID = [v9 preferredClusterLeaderID];
          deviceUID2 = [v9 deviceUID];
        }

        else
        {
          senderDefaultGroupUID = MRMediaRemoteCopyLocalAirPlaySenderDefaultGroupIdentity();
          clusterType = MRMediaRemoteCopyLocalAirPlayReceiverClusterType();
          preferredClusterLeaderID = MRMediaRemoteCopyLocalClusterLeaderIdentity();
          deviceUID2 = MRMediaRemoteAirPlayReceiverCopyPairingIdentity();
        }

        v40 = deviceUID2;
        if (clusterType)
        {
          v28 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(deviceUID2, "isEqualToString:", preferredClusterLeaderID) ^ 1}];
        }

        else
        {
          v28 = 0;
        }

        v29 = [v11 ID];
        v30 = MRComputeGroupID(senderDefaultGroupUID, v28, v29);
        OUTLINED_FUNCTION_2_12(v30, 328);

        if (clusterType)
        {
        }

        if ([self[41] length])
        {
          v31 = self[41];
          groupID = [v14 groupID];
          LOBYTE(v31) = [v31 isEqualToString:groupID];

          if ((v31 & 1) == 0)
          {
            v33 = _MRLogForCategory(0);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              v36 = [v14 ID];
              name = [v14 name];
              groupID2 = [v14 groupID];
              v39 = self[41];
              *buf = 138413058;
              v49 = v36;
              v50 = 2112;
              v51 = name;
              v52 = 2112;
              v53 = groupID2;
              v54 = 2112;
              v55 = v39;
              _os_log_error_impl(&dword_1A2860000, v33, OS_LOG_TYPE_ERROR, "[MRAVConcreteOutputDevice] GroupID mismatch on %@:%@: %@ -> %@", buf, 0x2Au);
            }
          }
        }
      }
    }
  }

  v34 = *MEMORY[0x1E69E9840];
  return self != 0;
}

- (id)_playingPairedDeviceNameForAVOutputDevice:(uint64_t)device
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (device)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = [MEMORY[0x1E6958818] pairedDevicesConnectedToOutputDevice:{v3, 0}];
    name = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (name)
    {
      v6 = *v12;
      while (2)
      {
        for (i = 0; i != name; i = i + 1)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v11 + 1) + 8 * i);
          if ([v8 isPlaying])
          {
            name = [v8 name];
            goto LABEL_12;
          }
        }

        name = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (name)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    name = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return name;
}

- (void)initWithAVOutputDevice:(uint64_t)a1 outputContext:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MRAVConcreteOutputDevice.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"outputContext"}];
}

@end