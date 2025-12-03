@interface MRAVVirtualOutputDevice
- (BOOL)canAccessAppleMusic;
- (BOOL)canAccessRemoteAssets;
- (BOOL)canAccessiCloudMusicLibrary;
- (BOOL)canFetchMediaDataFromSender;
- (BOOL)canPlayEncryptedProgressiveDownloadAssets;
- (BOOL)canRelayCommunicationChannel;
- (BOOL)groupContainsGroupLeader;
- (BOOL)hasBatteryLevel;
- (BOOL)isAddedToHomeKit;
- (BOOL)isAirPlayReceiverSessionActive;
- (BOOL)isDeviceGroupable;
- (BOOL)isGroupLeader;
- (BOOL)isGroupable;
- (BOOL)isLocalDevice;
- (BOOL)isPickedOnPairedDevice;
- (BOOL)isProxyGroupPlayer;
- (BOOL)isRemoteControllable;
- (BOOL)isUsingJSONProtocol;
- (BOOL)isVolumeControlAvailable;
- (BOOL)parentGroupContainsDiscoverableLeader;
- (BOOL)presentsOptimizedUserInterfaceWhenPlayingFetchedAudioOnlyAssets;
- (BOOL)requiresAuthorization;
- (BOOL)supportsBluetoothSharing;
- (BOOL)supportsBufferedAirPlay;
- (BOOL)supportsExternalScreen;
- (BOOL)supportsRapport;
- (MRAVVirtualOutputDevice)initWithJSONData:(id)data pipeEndpoint:(id)endpoint;
- (float)batteryLevel;
- (float)volume;
- (id)MACAddress;
- (id)availableBluetoothListeningModes;
- (id)bluetoothID;
- (id)currentBluetoothListeningMode;
- (id)firmwareVersion;
- (id)groupID;
- (id)logicalDeviceID;
- (id)modelID;
- (id)modelSpecificInfo;
- (id)name;
- (id)parentGroupIdentifier;
- (id)playingPairedDeviceName;
- (id)uid;
- (unsigned)deviceSubtype;
- (unsigned)deviceType;
@end

@implementation MRAVVirtualOutputDevice

- (MRAVVirtualOutputDevice)initWithJSONData:(id)data pipeEndpoint:(id)endpoint
{
  dataCopy = data;
  endpointCopy = endpoint;
  v70.receiver = self;
  v70.super_class = MRAVVirtualOutputDevice;
  v9 = [(MRAVVirtualOutputDevice *)&v70 init];
  if (v9)
  {
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.mediaremote.MRAVOutputDevice", v10);
    accessSerialQueue = v9->_accessSerialQueue;
    v9->_accessSerialQueue = v11;

    objc_storeStrong(&v9->_jsonDeviceDefinition, data);
    v69 = 0;
    v13 = [MEMORY[0x1E696ACB0] JSONObjectWithData:dataCopy options:0 error:&v69];
    v14 = v69;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v13;
      v16 = [v15 objectForKeyedSubscript:@"uid"];
      uid = v9->_uid;
      v9->_uid = v16;

      v18 = [v15 objectForKeyedSubscript:@"modelID"];
      modelID = v9->_modelID;
      v9->_modelID = v18;

      v20 = [v15 objectForKeyedSubscript:@"firmwareVersion"];
      firmwareVersion = v9->_firmwareVersion;
      v9->_firmwareVersion = v20;

      v22 = [v15 objectForKeyedSubscript:@"logicalDeviceID"];
      logicalDeviceID = v9->_logicalDeviceID;
      v9->_logicalDeviceID = v22;

      v24 = [v15 objectForKeyedSubscript:@"groupID"];
      groupID = v9->_groupID;
      v9->_groupID = v24;

      v26 = [v15 objectForKeyedSubscript:@"MACAddress"];
      [v26 UTF8String];
      TextToHardwareAddress();

      v27 = [MEMORY[0x1E695DEF0] dataWithBytes:v68 length:6];
      MACAddress = v9->_MACAddress;
      v9->_MACAddress = v27;

      v29 = [v15 objectForKeyedSubscript:@"playingPairedDeviceName"];
      playingPairedDeviceName = v9->_playingPairedDeviceName;
      v9->_playingPairedDeviceName = v29;

      v31 = [v15 objectForKeyedSubscript:@"name"];
      name = v9->_name;
      v9->_name = v31;

      v33 = [v15 objectForKeyedSubscript:@"canAccessRemoteAssets"];
      v9->_canAccessRemoteAssets = [v33 BOOLValue];

      v34 = [v15 objectForKeyedSubscript:@"canAccessAppleMusic"];
      v9->_canAccessAppleMusic = [v34 BOOLValue];

      v35 = [v15 objectForKeyedSubscript:@"canAccessiCloudMusicLibrary"];
      v9->_canAccessiCloudMusicLibrary = [v35 BOOLValue];

      v36 = [v15 objectForKeyedSubscript:@"canPlayEncryptedProgressiveDownloadAssets"];
      v9->_canPlayEncryptedProgressiveDownloadAssets = [v36 BOOLValue];

      v37 = [v15 objectForKeyedSubscript:@"canFetchMediaDataFromSender"];
      v9->_canFetchMediaDataFromSender = [v37 BOOLValue];

      v38 = [v15 objectForKeyedSubscript:@"presentsOptimizedUserInterfaceWhenPlayingFetchedAudioOnlyAssets"];
      v9->_presentsOptimizedUserInterfaceWhenPlayingFetchedAudioOnlyAssets = [v38 BOOLValue];

      v39 = [v15 objectForKeyedSubscript:@"isRemoteControllable"];
      v9->_isRemoteControllable = [v39 BOOLValue];

      v40 = [v15 objectForKeyedSubscript:@"canRelayCommunicationChannel"];
      v9->_canRelayCommunicationChannel = [v40 BOOLValue];

      v41 = [v15 objectForKeyedSubscript:@"supportsBufferedAirPlay"];
      v9->_supportsBufferedAirPlay = [v41 BOOLValue];

      v42 = [v15 objectForKeyedSubscript:@"supportsRapport"];
      v9->_supportsRapport = [v42 BOOLValue];

      v43 = [v15 objectForKeyedSubscript:@"isAddedToHomeKit"];
      v9->_isAddedToHomeKit = [v43 BOOLValue];

      v44 = [v15 objectForKeyedSubscript:@"isGroupLeader"];
      v9->_isGroupLeader = [v44 BOOLValue];

      v45 = [v15 objectForKeyedSubscript:@"groupContainsGroupLeader"];
      v9->_groupContainsGroupLeader = [v45 BOOLValue];

      v46 = [v15 objectForKeyedSubscript:@"airPlayReceiver"];
      v9->_airPlayReceiver = [v46 BOOLValue];

      v47 = [v15 objectForKeyedSubscript:@"parentGroupIdentifier"];
      parentGroupIdentifier = v9->_parentGroupIdentifier;
      v9->_parentGroupIdentifier = v47;

      v49 = [v15 objectForKeyedSubscript:@"isGroupable"];
      v9->_isGroupable = [v49 BOOLValue];

      v50 = [v15 objectForKeyedSubscript:@"supportsBluetoothSharing"];
      v9->_supportsBluetoothSharing = [v50 BOOLValue];

      v51 = [v15 objectForKeyedSubscript:@"isProxyGroupPlayer"];
      v9->_isProxyGroupPlayer = [v51 BOOLValue];

      v52 = [v15 objectForKeyedSubscript:@"isPickedOnPairedDevice"];
      v9->_isPickedOnPairedDevice = [v52 BOOLValue];

      v53 = [v15 objectForKeyedSubscript:@"batteryLevel"];
      [v53 floatValue];
      v9->_batteryLevel = v54;

      v55 = [v15 objectForKeyedSubscript:@"hasBatteryLevel"];
      v9->_hasBatteryLevel = [v55 BOOLValue];

      v56 = [v15 objectForKeyedSubscript:@"isLocalDevice"];
      v9->_isLocalDevice = [v56 BOOLValue];

      v57 = [v15 objectForKeyedSubscript:@"supportsExternalScreen"];
      v9->_supportsExternalScreen = [v57 BOOLValue];

      v58 = [v15 objectForKeyedSubscript:@"deviceType"];
      v9->_deviceType = [v58 intValue];

      v59 = [v15 objectForKeyedSubscript:@"deviceSubType"];
      v9->_deviceSubType = [v59 intValue];

      v60 = [v15 objectForKeyedSubscript:@"requiresAuthorization"];
      v9->_requiresAuthorization = [v60 BOOLValue];

      v61 = [v15 objectForKeyedSubscript:@"isVolumeControlAvailable"];
      v9->_isVolumeControlAvailable = [v61 BOOLValue];

      v62 = [v15 objectForKeyedSubscript:@"volume"];
      [v62 floatValue];
      v9->_volume = v63;

      v64 = [v15 objectForKeyedSubscript:@"bluetoothID"];
      bluetoothID = v9->_bluetoothID;
      v9->_bluetoothID = v64;

      v66 = [v15 objectForKeyedSubscript:@"JSONProtocol"];

      v9->_isUsingJSONProtocol = [v66 BOOLValue];
    }

    objc_storeStrong(&v9->_pipeEndpoint, endpoint);
  }

  return v9;
}

- (id)uid
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__30;
  v10 = __Block_byref_object_dispose__30;
  v11 = 0;
  accessSerialQueue = self->_accessSerialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30__MRAVVirtualOutputDevice_uid__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessSerialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)name
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__30;
  v10 = __Block_byref_object_dispose__30;
  v11 = 0;
  accessSerialQueue = self->_accessSerialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __31__MRAVVirtualOutputDevice_name__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessSerialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)logicalDeviceID
{
  v3 = +[MRUserSettings currentSettings];
  useClusterDevices = [v3 useClusterDevices];

  if (useClusterDevices)
  {
    v5 = 0;
  }

  else
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = __Block_byref_object_copy__30;
    v13 = __Block_byref_object_dispose__30;
    v14 = 0;
    accessSerialQueue = self->_accessSerialQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __42__MRAVVirtualOutputDevice_logicalDeviceID__block_invoke;
    v8[3] = &unk_1E769A2A0;
    v8[4] = self;
    v8[5] = &v9;
    dispatch_sync(accessSerialQueue, v8);
    v5 = v10[5];
    _Block_object_dispose(&v9, 8);
  }

  return v5;
}

- (id)modelID
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__30;
  v10 = __Block_byref_object_dispose__30;
  v11 = 0;
  accessSerialQueue = self->_accessSerialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__MRAVVirtualOutputDevice_modelID__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessSerialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)firmwareVersion
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__30;
  v10 = __Block_byref_object_dispose__30;
  v11 = 0;
  accessSerialQueue = self->_accessSerialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__MRAVVirtualOutputDevice_firmwareVersion__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessSerialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)groupID
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__30;
  v10 = __Block_byref_object_dispose__30;
  v11 = 0;
  accessSerialQueue = self->_accessSerialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__MRAVVirtualOutputDevice_groupID__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessSerialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)MACAddress
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__30;
  v10 = __Block_byref_object_dispose__30;
  v11 = 0;
  accessSerialQueue = self->_accessSerialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__MRAVVirtualOutputDevice_MACAddress__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessSerialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)modelSpecificInfo
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__30;
  v10 = __Block_byref_object_dispose__30;
  v11 = 0;
  accessSerialQueue = self->_accessSerialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__MRAVVirtualOutputDevice_modelSpecificInfo__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessSerialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)playingPairedDeviceName
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__30;
  v10 = __Block_byref_object_dispose__30;
  v11 = 0;
  accessSerialQueue = self->_accessSerialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__MRAVVirtualOutputDevice_playingPairedDeviceName__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessSerialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)canAccessRemoteAssets
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessSerialQueue = self->_accessSerialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__MRAVVirtualOutputDevice_canAccessRemoteAssets__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessSerialQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)canAccessAppleMusic
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessSerialQueue = self->_accessSerialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__MRAVVirtualOutputDevice_canAccessAppleMusic__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessSerialQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)canAccessiCloudMusicLibrary
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessSerialQueue = self->_accessSerialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__MRAVVirtualOutputDevice_canAccessiCloudMusicLibrary__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessSerialQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)canPlayEncryptedProgressiveDownloadAssets
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessSerialQueue = self->_accessSerialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68__MRAVVirtualOutputDevice_canPlayEncryptedProgressiveDownloadAssets__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessSerialQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)canFetchMediaDataFromSender
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessSerialQueue = self->_accessSerialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__MRAVVirtualOutputDevice_canFetchMediaDataFromSender__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessSerialQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)presentsOptimizedUserInterfaceWhenPlayingFetchedAudioOnlyAssets
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessSerialQueue = self->_accessSerialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __90__MRAVVirtualOutputDevice_presentsOptimizedUserInterfaceWhenPlayingFetchedAudioOnlyAssets__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessSerialQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isRemoteControllable
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessSerialQueue = self->_accessSerialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__MRAVVirtualOutputDevice_isRemoteControllable__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessSerialQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)canRelayCommunicationChannel
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessSerialQueue = self->_accessSerialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__MRAVVirtualOutputDevice_canRelayCommunicationChannel__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessSerialQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)supportsBufferedAirPlay
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessSerialQueue = self->_accessSerialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__MRAVVirtualOutputDevice_supportsBufferedAirPlay__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessSerialQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)supportsRapport
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessSerialQueue = self->_accessSerialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__MRAVVirtualOutputDevice_supportsRapport__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessSerialQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isAddedToHomeKit
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessSerialQueue = self->_accessSerialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__MRAVVirtualOutputDevice_isAddedToHomeKit__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessSerialQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isGroupLeader
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessSerialQueue = self->_accessSerialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__MRAVVirtualOutputDevice_isGroupLeader__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessSerialQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)groupContainsGroupLeader
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessSerialQueue = self->_accessSerialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__MRAVVirtualOutputDevice_groupContainsGroupLeader__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessSerialQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isAirPlayReceiverSessionActive
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessSerialQueue = self->_accessSerialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__MRAVVirtualOutputDevice_isAirPlayReceiverSessionActive__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessSerialQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)parentGroupContainsDiscoverableLeader
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessSerialQueue = self->_accessSerialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__MRAVVirtualOutputDevice_parentGroupContainsDiscoverableLeader__block_invoke;
  block[3] = &unk_1E769ADA8;
  block[4] = &v6;
  dispatch_sync(accessSerialQueue, block);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)parentGroupIdentifier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__30;
  v10 = __Block_byref_object_dispose__30;
  v11 = 0;
  accessSerialQueue = self->_accessSerialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__MRAVVirtualOutputDevice_parentGroupIdentifier__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessSerialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)isGroupable
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessSerialQueue = self->_accessSerialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__MRAVVirtualOutputDevice_isGroupable__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessSerialQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)supportsBluetoothSharing
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessSerialQueue = self->_accessSerialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__MRAVVirtualOutputDevice_supportsBluetoothSharing__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessSerialQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isProxyGroupPlayer
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessSerialQueue = self->_accessSerialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__MRAVVirtualOutputDevice_isProxyGroupPlayer__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessSerialQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isDeviceGroupable
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessSerialQueue = self->_accessSerialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__MRAVVirtualOutputDevice_isDeviceGroupable__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessSerialQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isPickedOnPairedDevice
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessSerialQueue = self->_accessSerialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__MRAVVirtualOutputDevice_isPickedOnPairedDevice__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessSerialQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)currentBluetoothListeningMode
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__30;
  v10 = __Block_byref_object_dispose__30;
  v11 = 0;
  accessSerialQueue = self->_accessSerialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__MRAVVirtualOutputDevice_currentBluetoothListeningMode__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessSerialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)availableBluetoothListeningModes
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__30;
  v10 = __Block_byref_object_dispose__30;
  v11 = 0;
  accessSerialQueue = self->_accessSerialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__MRAVVirtualOutputDevice_availableBluetoothListeningModes__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessSerialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __59__MRAVVirtualOutputDevice_availableBluetoothListeningModes__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 464) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (unsigned)deviceType
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessSerialQueue = self->_accessSerialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__MRAVVirtualOutputDevice_deviceType__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessSerialQueue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unsigned)deviceSubtype
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessSerialQueue = self->_accessSerialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__MRAVVirtualOutputDevice_deviceSubtype__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessSerialQueue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (float)batteryLevel
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessSerialQueue = self->_accessSerialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__MRAVVirtualOutputDevice_batteryLevel__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessSerialQueue, v5);
  v3 = v7[6];
  _Block_object_dispose(&v6, 8);
  return v3;
}

float __39__MRAVVirtualOutputDevice_batteryLevel__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 412);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)hasBatteryLevel
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessSerialQueue = self->_accessSerialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__MRAVVirtualOutputDevice_hasBatteryLevel__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessSerialQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isLocalDevice
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessSerialQueue = self->_accessSerialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__MRAVVirtualOutputDevice_isLocalDevice__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessSerialQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)supportsExternalScreen
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessSerialQueue = self->_accessSerialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__MRAVVirtualOutputDevice_supportsExternalScreen__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessSerialQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)requiresAuthorization
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessSerialQueue = self->_accessSerialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__MRAVVirtualOutputDevice_requiresAuthorization__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessSerialQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isVolumeControlAvailable
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessSerialQueue = self->_accessSerialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__MRAVVirtualOutputDevice_isVolumeControlAvailable__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessSerialQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (float)volume
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessSerialQueue = self->_accessSerialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__MRAVVirtualOutputDevice_volume__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessSerialQueue, v5);
  v3 = v7[6];
  _Block_object_dispose(&v6, 8);
  return v3;
}

float __33__MRAVVirtualOutputDevice_volume__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 432);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)bluetoothID
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__30;
  v10 = __Block_byref_object_dispose__30;
  v11 = 0;
  accessSerialQueue = self->_accessSerialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__MRAVVirtualOutputDevice_bluetoothID__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessSerialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)isUsingJSONProtocol
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessSerialQueue = self->_accessSerialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__MRAVVirtualOutputDevice_isUsingJSONProtocol__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessSerialQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

@end