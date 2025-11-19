@interface MRAVConcreteOutputDevice
- (AVOutputContext)outputContext;
- (BOOL)_loadLocalOverridesWithOutputContext:(void *)a3 outputDevice:;
- (BOOL)allowsHeadTrackedSpatialAudio;
- (BOOL)canAccessAppleMusic;
- (BOOL)canAccessRemoteAssets;
- (BOOL)canAccessiCloudMusicLibrary;
- (BOOL)canFetchMediaDataFromSender;
- (BOOL)canPlayEncryptedProgressiveDownloadAssets;
- (BOOL)canRelayCommunicationChannel;
- (BOOL)containsUID:(id)a3;
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
- (BOOL)setCurrentBluetoothListeningMode:(id)a3 error:(id *)a4;
- (BOOL)setHeadTrackedSpatialAudioMode:(id)a3 error:(id *)a4;
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
- (MRAVConcreteOutputDevice)initWithAVOutputDevice:(id)a3 outputContext:(id)a4;
- (float)batteryLevel;
- (float)volume;
- (id)MACAddress;
- (id)_playingPairedDeviceNameForAVOutputDevice:(uint64_t)a1;
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
- (id)initWithAVOutputDevice:(void *)a3 sourceInfo:(void *)a4 outputContext:;
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
- (void)adjustVolume:(int64_t)a3 details:(id)a4;
- (void)setVolume:(float)a3 details:(id)a4;
@end

@implementation MRAVConcreteOutputDevice

- (unsigned)deviceType
{
  v2 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  v3 = [v2 deviceType];
  if (v3 < 5)
  {
    v4 = v3 + 1;
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
    v4 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
    v5 = [v4 ID];
    v3 = MRComputeBaseRouteUIDWithDefaultSuffixes(v5);
  }

  return v3;
}

- (unsigned)deviceSubtype
{
  v2 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  v3 = MRAVOutputDeviceSubtypeFromAVSubtype([v2 deviceSubType]);

  return v3;
}

- (BOOL)isCarPlayVideoAllowed
{
  v2 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  v3 = [v2 isCarPlayVideoAllowed];

  return v3;
}

- (BOOL)canAccessRemoteAssets
{
  v2 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  v3 = [v2 canAccessRemoteAssets];

  return v3;
}

- (BOOL)canAccessAppleMusic
{
  v2 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  v3 = [v2 canAccessAppleMusic];

  return v3;
}

- (BOOL)canAccessiCloudMusicLibrary
{
  v2 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  v3 = [v2 canAccessiCloudMusicLibrary];

  return v3;
}

- (BOOL)canPlayEncryptedProgressiveDownloadAssets
{
  v2 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  v3 = [v2 canPlayEncryptedProgressiveDownloadAssets];

  return v3;
}

- (BOOL)canFetchMediaDataFromSender
{
  v2 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  v3 = [v2 canFetchMediaDataFromSender];

  return v3;
}

- (BOOL)presentsOptimizedUserInterfaceWhenPlayingFetchedAudioOnlyAssets
{
  v2 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  v3 = [v2 presentsOptimizedUserInterfaceWhenPlayingFetchedAudioOnlyAssets];

  return v3;
}

- (BOOL)isLocalDevice
{
  v2 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  IsAVOutputDeviceLocal = MROutputDeviceIsAVOutputDeviceLocal(v2);

  return IsAVOutputDeviceLocal;
}

- (id)name
{
  v3 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  v4 = [v3 airPlayProperties];
  v5 = [v4 objectForKeyedSubscript:@"GroupPublicName"];
  v6 = [v5 copy];

  if (![v6 length])
  {
    v7 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
    v8 = [v7 name];
    v9 = [v8 copy];

    v6 = v9;
  }

  if (![v6 length] && -[MRAVConcreteOutputDevice isLocalDevice](self, "isLocalDevice"))
  {
    v10 = +[MROrigin localOrigin];
    v11 = [MRDeviceInfoRequest cachedDeviceInfoForOrigin:v10];
    v12 = [v11 name];

    v6 = v12;
  }

  return v6;
}

- (id)tightSyncID
{
  v2 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  v3 = [v2 logicalDeviceID];
  v4 = [v3 copy];

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
    v5 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
    v6 = [v5 airPlayProperties];
    v7 = [v6 objectForKeyedSubscript:@"SupportsMultiplayer"];
    v8 = [v7 BOOLValue];

    return v8;
  }
}

- (id)airPlayGroupID
{
  groupUIDOverride = self->_groupUIDOverride;
  if (groupUIDOverride)
  {
    v3 = groupUIDOverride;
  }

  else
  {
    v4 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
    v3 = [v4 groupID];
  }

  return v3;
}

- (id)modelID
{
  v2 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  v3 = [v2 modelID];

  return v3;
}

- (id)MACAddress
{
  v2 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  v3 = [v2 identifyingMACAddress];

  return v3;
}

- (BOOL)isRemoteControllable
{
  v3 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  v4 = ([v3 canBeGroupLeader] & 1) != 0 || -[MRAVOutputDevice shouldBeLocallyHosted](self, "shouldBeLocallyHosted");

  return v4;
}

- (BOOL)canRelayCommunicationChannel
{
  v2 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  v3 = [v2 canRelayCommunicationChannel];

  return v3;
}

- (BOOL)supportsBufferedAirPlay
{
  v2 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  v3 = [v2 supportsBufferedAirPlay];

  return v3;
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
    v5 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
    v6 = [v5 isGroupLeader];

    return v6;
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
    v5 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
    v6 = [v5 groupContainsGroupLeader];

    return v6;
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
    v5 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
    v6 = [v5 airPlayProperties];
    v7 = [v6 objectForKeyedSubscript:@"ReceiverSessionIsActive"];
    v8 = [v7 BOOLValue];

    return v8;
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
    v5 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
    v6 = [v5 airPlayProperties];
    v7 = [v6 objectForKeyedSubscript:@"ParentGroupContainsDiscoverableLeader"];
    v8 = [v7 BOOLValue];

    return v8;
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
    v4 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
    v5 = [v4 airPlayProperties];
    v6 = [v5 objectForKeyedSubscript:@"ParentGroupUUID"];
    v3 = [v6 copy];
  }

  return v3;
}

- (BOOL)isGroupable
{
  v2 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  v3 = [v2 canBeGrouped];

  return v3;
}

- (BOOL)isDeviceGroupable
{
  v2 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  v3 = [v2 canBeGrouped];

  return v3;
}

- (BOOL)isProxyGroupPlayer
{
  v3 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  if ([v3 isGroupLeader])
  {
    v4 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
    v5 = [v4 participatesInGroupPlayback] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)isAddedToHomeKit
{
  v2 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  v3 = [v2 airPlayProperties];
  v4 = [v3 objectForKeyedSubscript:@"SupportsHangdogRemoteControl"];
  v5 = [v4 BOOLValue];

  return v5;
}

- (unsigned)volumeCapabilities
{
  v3 = [(MRAVConcreteOutputDevice *)self sourceInfo];
  v4 = [v3 sourceType];

  if (v4 == 2)
  {
    return 0;
  }

  v6 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  v7 = [v6 volumeControlType];
  if (v7 == 2)
  {
    v8 = 5;
  }

  else
  {
    v8 = 0;
  }

  if (v7 == 1)
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
  v2 = [(MRAVConcreteOutputDevice *)self sourceInfo];
  [v2 sourceType];

  return 0;
}

- (id)bluetoothID
{
  v2 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  v3 = [v2 airPlayProperties];
  v4 = [v3 objectForKeyedSubscript:@"BluetoothIdentifier"];
  v5 = [v4 copy];

  return v5;
}

- (BOOL)supportsHAP
{
  v2 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  v3 = [v2 HAPConformance] == 2;

  return v3;
}

- (id)modelSpecificInfo
{
  v2 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  v3 = [v2 modelSpecificInformation];

  return v3;
}

- (BOOL)hasBatteryLevel
{
  v2 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  v3 = [v2 hasBatteryLevel];

  return v3;
}

- (BOOL)supportsExternalScreen
{
  v2 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  v3 = [v2 deviceFeatures];

  return (v3 >> 1) & 1;
}

- (BOOL)requiresAuthorization
{
  v2 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  v3 = [v2 requiresAuthorization];

  return v3;
}

- (id)clusterComposition
{
  v2 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  v3 = [v2 clusteredDeviceDescriptions];
  v4 = [v3 mr_map:&__block_literal_global_50_0];

  return v4;
}

- (unsigned)clusterType
{
  v2 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  v3 = [v2 clusterType];
  v4 = v3;
  if (v3 < 3)
  {
    v4 = dword_1A2B810A0[v3];
  }

  return v4;
}

- (unint64_t)configuredClusterSize
{
  v2 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  v3 = [v2 configuredClusterSize];

  return v3;
}

- (BOOL)supportsRapportRemoteControlTransport
{
  v2 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  v3 = [v2 airPlayProperties];
  v4 = [v3 objectForKeyedSubscript:@"SupportsRapportRemoteControlTransport"];
  v5 = [v4 BOOLValue];

  return v5;
}

- (id)currentBluetoothListeningMode
{
  v2 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  v3 = [v2 currentBluetoothListeningMode];

  return v3;
}

- (id)availableBluetoothListeningModes
{
  v2 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  v3 = [v2 availableBluetoothListeningModes];

  return v3;
}

- (BOOL)producesLowFidelityAudio
{
  v2 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  v3 = [v2 producesLowFidelityAudio];

  return v3;
}

- (BOOL)supportsSharePlayHandoff
{
  v2 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  v3 = [v2 airPlayProperties];
  v4 = [v3 objectForKeyedSubscript:@"SupportsSharePlayHandoff"];

  if (v4)
  {
    v5 = [v4 BOOLValue];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (BOOL)discoveredOnSameInfra
{
  v2 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  v3 = [v2 airPlayProperties];
  v4 = [v3 objectForKeyedSubscript:@"IsDiscoveredOverInfra"];

  if (v4)
  {
    v5 = [v4 BOOLValue];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)clusterID
{
  v3 = [(MRAVConcreteOutputDevice *)self clusterComposition];
  if ([v3 count])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
    v4 = [v5 clusterID];
  }

  return v4;
}

- (BOOL)isClusterLeader
{
  v2 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  v3 = [v2 isClusterLeader];

  return v3;
}

- (BOOL)isAppleAccessory
{
  v2 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  v3 = [v2 isAppleAccessory];

  return v3;
}

- (BOOL)supportsEngageOnClusterActivation
{
  v2 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  v3 = [v2 airPlayProperties];
  v4 = [v3 objectForKeyedSubscript:@"SupportsClusterEngageOnActivation"];
  v5 = [v4 BOOLValue];

  return v5;
}

- (BOOL)supportsBluetoothSharing
{
  v2 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  v3 = [v2 supportsBluetoothSharing];

  return v3;
}

- (id)deviceEnclosureColor
{
  v2 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  v3 = [v2 airPlayProperties];
  v4 = [v3 objectForKeyedSubscript:@"DeviceEnclosureColor"];

  return v4;
}

- (id)playingPairedDeviceName
{
  v3 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  v4 = [(MRAVConcreteOutputDevice *)self _playingPairedDeviceNameForAVOutputDevice:v3];

  return v4;
}

- (BOOL)supportsRapport
{
  v2 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  v3 = [v2 airPlayProperties];
  v4 = [v3 objectForKeyedSubscript:@"SupportsRapportRemoteControl"];
  v5 = [v4 BOOLValue];

  return v5;
}

- (BOOL)isPickedOnPairedDevice
{
  v2 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  v3 = [v2 isInUseByPairedDevice];

  return v3;
}

- (BOOL)supportsHeadTrackedSpatialAudio
{
  v2 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  v3 = [v2 supportsHeadTrackedSpatialAudio];

  return v3;
}

- (BOOL)isHeadTrackedSpatialAudioActive
{
  v2 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  v3 = [v2 isHeadTrackedSpatialAudioActive];

  return v3;
}

- (id)headTrackedSpatialAudioMode
{
  v2 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  v3 = [v2 headTrackedSpatialAudioMode];

  return v3;
}

- (id)dnsNames
{
  v2 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  v3 = [v2 airPlayProperties];
  v4 = [v3 objectForKeyedSubscript:@"CUDNSNames"];
  v5 = [v4 copy];

  return v5;
}

- (BOOL)supportsConversationDetection
{
  v2 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  v3 = [v2 supportsConversationDetection];

  return v3;
}

- (BOOL)isConversationDetectionEnabled
{
  v2 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  v3 = [v2 isConversationDetectionEnabled];

  return v3;
}

- (id)alternateTransportType
{
  v2 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  v3 = [v2 alternateTransportType];

  return v3;
}

- (BOOL)discoveredDeviceIsPlaying
{
  v2 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  v3 = [v2 airPlayProperties];
  v4 = [v3 objectForKeyedSubscript:@"ReceiverDeviceIsPlaying"];
  v5 = [v4 BOOLValue];

  return v5;
}

- (BOOL)wasDiscoveredInCache
{
  v3 = +[MRUserSettings currentSettings];
  if ([v3 supportDiscoveryCaching])
  {
    v4 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
    v5 = [v4 isCached];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)logicalDeviceID
{
  v3 = +[MRUserSettings currentSettings];
  v4 = [v3 useClusterDevices];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(MRAVConcreteOutputDevice *)self tightSyncID];
  }

  return v5;
}

MRAVOutputDeviceDescription *__46__MRAVConcreteOutputDevice_clusterComposition__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MRAVOutputDeviceDescription alloc] initWithAVDescription:v2];

  return v3;
}

- (MRAVConcreteOutputDevice)initWithAVOutputDevice:(id)a3 outputContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    [MRAVConcreteOutputDevice initWithAVOutputDevice:a2 outputContext:self];
  }

  v9 = [[MRAVOutputDeviceSourceInfo alloc] initWithMultipleBuiltInDevices:0 sourceType:1];
  v10 = [(MRAVConcreteOutputDevice *)&self->super.super.isa initWithAVOutputDevice:v7 sourceInfo:v9 outputContext:v8];

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
  v2 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  v3 = [v2 firmwareVersion];

  return v3;
}

- (BOOL)setCurrentBluetoothListeningMode:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  v13 = 0;
  v8 = [v7 setCurrentBluetoothListeningMode:v6 error:&v13];

  v9 = v13;
  v10 = 0;
  if ((v8 & 1) == 0)
  {
    v10 = [v9 mr_errorByEnvelopingWithMRError:43];
  }

  if (a4)
  {
    v11 = v10;
    *a4 = v10;
  }

  return v8;
}

- (BOOL)allowsHeadTrackedSpatialAudio
{
  v2 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  v3 = [v2 allowsHeadTrackedSpatialAudio];

  return v3;
}

- (BOOL)setHeadTrackedSpatialAudioMode:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  v12 = 0;
  v8 = [v7 setHeadTrackedSpatialAudioMode:v6 error:&v12];

  v9 = v12;
  if (a4)
  {
    v10 = v9;
    *a4 = v9;
  }

  return v8;
}

- (float)batteryLevel
{
  v2 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  [v2 batteryLevel];
  v4 = v3;

  return v4;
}

- (BOOL)isCarPlayVideoActive
{
  v2 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  v3 = [v2 isCarPlayVideoActive];

  return v3;
}

- (float)volume
{
  v3 = [(MRAVConcreteOutputDevice *)self sourceInfo];
  v4 = [v3 sourceType];

  if (v4 == 2)
  {
    return 0.0;
  }

  v6 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  [v6 volume];
  v8 = v7;

  return v8;
}

- (void)setVolume:(float)a3 details:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(MRAVConcreteOutputDevice *)self sourceInfo];
  v8 = [v7 sourceType];

  v9 = objc_alloc(MEMORY[0x1E696AEC0]);
  v10 = [(MRAVOutputDevice *)self debugName];
  v11 = v10;
  if (v8 == 2)
  {
    v12 = [v9 initWithFormat:@"%@ -> %lf will not work with AVOD sourced from Discovery", v10, a3];

    v13 = objc_alloc(MEMORY[0x1E696AD60]);
    v14 = [v6 requestID];

    v15 = [v13 initWithFormat:@"%@<%@>", @"ConcreteOutputDevice.setVolume", v14];
    if (v12)
    {
      [v15 appendFormat:@" for %@", v12];
    }

    v16 = _MRLogForCategory(0xAuLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v24 = v15;
      _os_log_impl(&dword_1A2860000, v16, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v12 = [v9 initWithFormat:@"%@ -> %lf", v10, a3];

    v17 = objc_alloc(MEMORY[0x1E696AD60]);
    v18 = [v6 requestID];

    v19 = [v17 initWithFormat:@"%@<%@>", @"ConcreteOutputDevice.setVolume", v18];
    if (v12)
    {
      [v19 appendFormat:@" for %@", v12];
    }

    v20 = _MRLogForCategory(0xAuLL);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v24 = v19;
      _os_log_impl(&dword_1A2860000, v20, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
    }

    v15 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
    *&v21 = a3;
    [v15 setVolume:v21];
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)adjustVolume:(int64_t)a3 details:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(MRAVConcreteOutputDevice *)self sourceInfo];
  v8 = [v7 sourceType];

  v9 = objc_alloc(MEMORY[0x1E696AEC0]);
  v10 = [(MRAVOutputDevice *)self debugName];
  v11 = MRMediaRemoteVolumeControlAdjustmentDescription(a3);
  v12 = v11;
  if (v8 == 2)
  {
    v13 = [v9 initWithFormat:@"%@ -> %@  will not work with AVOD sourced from Discovery", v10, v11];

    v14 = objc_alloc(MEMORY[0x1E696AD60]);
    v15 = [v6 requestID];

    v16 = [v14 initWithFormat:@"%@<%@>", @"ConcreteOutputDevice.adjustVolume", v15];
    if (v13)
    {
      [v16 appendFormat:@" for %@", v13];
    }

    v17 = _MRLogForCategory(0xAuLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v24 = v16;
      _os_log_impl(&dword_1A2860000, v17, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v13 = [v9 initWithFormat:@"%@ -> %@", v10, v11];

    v18 = objc_alloc(MEMORY[0x1E696AD60]);
    v19 = [v6 requestID];

    v20 = [v18 initWithFormat:@"%@<%@>", @"ConcreteOutputDevice.adjustVolume", v19];
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

    v16 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
    if ([v16 volumeControlType] == 2)
    {
      if ((a3 - 1) > 2)
      {
        if ((a3 - 4) <= 2)
        {
          [v16 decreaseVolumeByCount:1];
        }
      }

      else
      {
        [v16 increaseVolumeByCount:1];
      }
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (BOOL)containsUID:(id)a3
{
  v4 = a3;
  v5 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  v6 = [v5 deviceID];
  if ([v6 isEqualToString:v4])
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = MRAVConcreteOutputDevice;
    v7 = [(MRAVOutputDevice *)&v9 containsUID:v4];
  }

  return v7;
}

- (BOOL)isActivatedForContinuityScreen
{
  v2 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  v3 = [v2 isActivatedForContinuityScreen];

  return v3;
}

- (BOOL)representsUGLSender
{
  v2 = [(MRAVConcreteOutputDevice *)self avOutputDevice];
  v3 = [v2 airPlayProperties];
  v4 = [v3 objectForKeyedSubscript:@"IsRepresentingUGLSender"];
  v5 = [v4 BOOLValue];

  return v5;
}

- (AVOutputContext)outputContext
{
  WeakRetained = objc_loadWeakRetained(&self->_outputContext);

  return WeakRetained;
}

- (id)initWithAVOutputDevice:(void *)a3 sourceInfo:(void *)a4 outputContext:
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (!a1)
  {
    goto LABEL_8;
  }

  v14.receiver = a1;
  v14.super_class = MRAVConcreteOutputDevice;
  a1 = objc_msgSendSuper2(&v14, sel_init);
  if (!a1)
  {
    goto LABEL_3;
  }

  if (!v8)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:sel_initWithAVOutputDevice_sourceInfo_outputContext_ object:a1 file:@"MRAVConcreteOutputDevice.m" lineNumber:67 description:{@"Invalid parameter not satisfying: %@", @"avOutputDevice"}];
  }

  objc_storeStrong(a1 + 38, a2);
  objc_storeStrong(a1 + 39, a3);
  objc_storeWeak(a1 + 49, v10);
  if ([(MRAVConcreteOutputDevice *)a1 _loadLocalOverridesWithOutputContext:v10 outputDevice:v8])
  {
LABEL_3:
    a1 = a1;
    v11 = a1;
  }

  else
  {
LABEL_8:
    v11 = 0;
  }

  return v11;
}

- (BOOL)_loadLocalOverridesWithOutputContext:(void *)a3 outputDevice:
{
  v56 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (a1)
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

    if ([v6 deviceSubType] != 15 && objc_msgSend(a1, "isLocalDevice"))
    {
      v10 = [v9 deviceUID];
      OUTLINED_FUNCTION_2_12(v10, 320);
      [a1[40] length];
    }

    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __78__MRAVConcreteOutputDevice__loadLocalOverridesWithOutputContext_outputDevice___block_invoke_2;
    v45[3] = &unk_1E76A3130;
    v11 = v5;
    v46 = v11;
    v12 = v6;
    v47 = v12;
    v13 = (__78__MRAVConcreteOutputDevice__loadLocalOverridesWithOutputContext_outputDevice___block_invoke_2)(v45);
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __78__MRAVConcreteOutputDevice__loadLocalOverridesWithOutputContext_outputDevice___block_invoke_4;
    v42[3] = &unk_1E76A3158;
    v44 = v13;
    v42[4] = a1;
    v14 = v12;
    v43 = v14;
    if ((__78__MRAVConcreteOutputDevice__loadLocalOverridesWithOutputContext_outputDevice___block_invoke_4)(v42) && v9)
    {
      v15 = [v9 airPlayGroupUID];
      OUTLINED_FUNCTION_2_12(v15, 328);
      v16 = [v9 parentGroupID];
      OUTLINED_FUNCTION_2_12(v16, 336);
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
      v24 = [v23 canHostMultiplayerStream];

      if (v24)
      {
        if (v9)
        {
          v25 = [v9 senderDefaultGroupUID];
          v26 = [v9 clusterType];
          v41 = [v9 preferredClusterLeaderID];
          v27 = [v9 deviceUID];
        }

        else
        {
          v25 = MRMediaRemoteCopyLocalAirPlaySenderDefaultGroupIdentity();
          v26 = MRMediaRemoteCopyLocalAirPlayReceiverClusterType();
          v41 = MRMediaRemoteCopyLocalClusterLeaderIdentity();
          v27 = MRMediaRemoteAirPlayReceiverCopyPairingIdentity();
        }

        v40 = v27;
        if (v26)
        {
          v28 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v27, "isEqualToString:", v41) ^ 1}];
        }

        else
        {
          v28 = 0;
        }

        v29 = [v11 ID];
        v30 = MRComputeGroupID(v25, v28, v29);
        OUTLINED_FUNCTION_2_12(v30, 328);

        if (v26)
        {
        }

        if ([a1[41] length])
        {
          v31 = a1[41];
          v32 = [v14 groupID];
          LOBYTE(v31) = [v31 isEqualToString:v32];

          if ((v31 & 1) == 0)
          {
            v33 = _MRLogForCategory(0);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              v36 = [v14 ID];
              v37 = [v14 name];
              v38 = [v14 groupID];
              v39 = a1[41];
              *buf = 138413058;
              v49 = v36;
              v50 = 2112;
              v51 = v37;
              v52 = 2112;
              v53 = v38;
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
  return a1 != 0;
}

- (id)_playingPairedDeviceNameForAVOutputDevice:(uint64_t)a1
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = [MEMORY[0x1E6958818] pairedDevicesConnectedToOutputDevice:{v3, 0}];
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = *v12;
      while (2)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v11 + 1) + 8 * i);
          if ([v8 isPlaying])
          {
            v5 = [v8 name];
            goto LABEL_12;
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v5)
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
    v5 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)initWithAVOutputDevice:(uint64_t)a1 outputContext:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MRAVConcreteOutputDevice.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"outputContext"}];
}

@end