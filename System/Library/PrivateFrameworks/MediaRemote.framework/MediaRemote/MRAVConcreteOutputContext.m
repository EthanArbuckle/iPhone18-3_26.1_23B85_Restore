@interface MRAVConcreteOutputContext
+ (AVOutputContext)outputContextForLocalDevice;
+ (id)_sharedOutputContextFromType:(uint64_t)a1;
+ (id)createOutputContextWithUniqueIdentifier:(id)a3;
+ (id)iTunesContext;
+ (id)outputContextForLocalDeviceDataSource;
+ (id)sharedAudioPresentationContext;
+ (id)sharedSystemAudioContext;
+ (id)sharedSystemScreenContext;
+ (void)_initializeAVFNotificationForwarding;
+ (void)iTunesContext;
+ (void)setOutputContextForLocalDeviceDataSource:(id)a3;
- (AVOutputContext)avOutputContext;
- (BOOL)supportsMultipleBluetoothOutputDevices;
- (BOOL)supportsVolumeControl;
- (MRAVConcreteOutputContext)initWithAVOutputContext:(id)a3 type:(unsigned int)a4;
- (NSArray)concreteOutputDevices;
- (NSString)debugDescription;
- (NSString)description;
- (float)volume;
- (id)contextID;
- (id)predictedOutputDevice;
- (id)predictedOutputDeviceUIDs;
- (uint64_t)_unregisterNotifications;
- (unsigned)volumeControlCapabilities;
- (void)_addNotifications:(void *)a3 name:(void *)a4 object:;
- (void)_handleCanMuteDidChangeNotification:(id)a3;
- (void)_handleClusterMemberCanMuteDidChangeNotification:(id)a3;
- (void)_handleClusterMemberMutedDidChangeNotification:(id)a3;
- (void)_handleClusterMemberRoomVolumeDidChangeNotification:(id)a3;
- (void)_handleMutedDidChangeNotification:(id)a3;
- (void)_handleOutputContextCanSetVolumeDidChangeNotification:(id)a3;
- (void)_handleOutputContextSupportsVolumeDidChangeNotification:(id)a3;
- (void)_handleOutputContextVolumeControlTypeDidChangeNotification:(id)a3;
- (void)_handleOutputDeviceCanSetVolumeDidChangeNotification:(id)a3;
- (void)_handleOutputDeviceVolumeDidChangeNotification:(id)a3;
- (void)_handleOutputDevicesDidChangeNotification:(id)a3;
- (void)_handleOutputDevicesTimedOut:(uint64_t)a1;
- (void)_handlePredictedOutputDevicesDidChangeNotification:(id)a3;
- (void)_notifyPredictedOutputDeviceDidChange:(uint64_t)a1;
- (void)_outputContextChangeInitiatedNotification:(id)a3;
- (void)_postVolumeCapabilitiesChangedNotificationForUID:(void *)a1;
- (void)_postVolumeChangedNotificationForUID:(uint64_t)a1;
- (void)_postVolumeMutedChangedNotificationForUID:(uint64_t)a1;
- (void)_registerNotificationsForOutputContext:(uint64_t)a1;
- (void)_reloadOutputContext;
- (void)_reloadOutputDevices;
- (void)_reloadPredictedOutputDevice;
- (void)adjustVolume:(int64_t)a3 details:(id)a4;
- (void)dealloc;
- (void)modifyTopologyWithRequest:(id)a3 withReplyQueue:(id)a4 completion:(id)a5;
- (void)resetPredictedOutputDevice;
- (void)setAvOutputContext:(id)a3;
- (void)setConcreteOutputDevices:(id)a3;
- (void)setPredictedOutputDevice:(uint64_t)a1;
- (void)setVolume:(float)a3 details:(id)a4;
@end

@implementation MRAVConcreteOutputContext

+ (id)sharedAudioPresentationContext
{
  if (sharedAudioPresentationContext___once != -1)
  {
    +[MRAVConcreteOutputContext sharedAudioPresentationContext];
  }

  v3 = sharedAudioPresentationContext___context;

  return v3;
}

void __59__MRAVConcreteOutputContext_sharedAudioPresentationContext__block_invoke()
{
  v0 = +[MRUserSettings currentSettings];
  v1 = [v0 supportMultiplayerHost];

  if (v1)
  {
    +[MRAVConcreteOutputContext outputContextForLocalDevice];
  }

  else
  {
    [MEMORY[0x1E69587F0] sharedAudioPresentationOutputContext];
  }
  v2 = ;
  if (!v2)
  {
    v8 = _MRLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __59__MRAVConcreteOutputContext_sharedAudioPresentationContext__block_invoke_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }

    goto LABEL_9;
  }

  v3 = [[MRAVConcreteOutputContext alloc] initWithAVOutputContext:v2 type:1];
  v4 = sharedAudioPresentationContext___context;
  sharedAudioPresentationContext___context = v3;

  v5 = +[MRUserSettings currentSettings];
  v6 = [v5 supportMultiplayerHost];

  if (v6)
  {
    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 addObserver:sharedAudioPresentationContext___context selector:sel__handleLocalDeviceDidChangeOutputContextNotification_ name:@"MRAVOutputContextManagerLocalDeviceDidChangeOutputContextNotification" object:0];

    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 addObserver:sharedAudioPresentationContext___context selector:sel__handleLocalDeviceDidChangeOutputContextNotification_ name:@"kMRMediaRemoteServiceClientDidRestoreConnectionNotification" object:0];
LABEL_9:
  }
}

- (uint64_t)_unregisterNotifications
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 120);
    OUTLINED_FUNCTION_0_3();
    v5 = 3221225472;
    v6 = __53__MRAVConcreteOutputContext__unregisterNotifications__block_invoke;
    v7 = &unk_1E769D140;
    v8 = v1;
    [v3 enumerateKeysAndObjectsUsingBlock:v4];
    return [*(v1 + 120) removeAllObjects];
  }

  return result;
}

- (void)_reloadOutputDevices
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(MRAVConcreteOutputContext *)self avOutputContext];
  v5 = [v4 outputDevices];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        v12 = [MRAVConcreteOutputDevice alloc];
        v13 = [(MRAVConcreteOutputContext *)self avOutputContext];
        v14 = [(MRAVConcreteOutputDevice *)v12 initWithAVOutputDevice:v11 outputContext:v13];

        if (v14)
        {
          [v3 addObject:v14];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  [(MRAVConcreteOutputContext *)self setConcreteOutputDevices:v3];
  [(MRAVOutputContext *)self _reloadWithOutputDevices:v3];

  v15 = *MEMORY[0x1E69E9840];
}

- (AVOutputContext)avOutputContext
{
  v3 = +[MRUserSettings currentSettings];
  v4 = [v3 supportMultiplayerHost];

  if (v4)
  {
    os_unfair_lock_lock(&self->_avOutputContextLock);
    v5 = self->_avOutputContext;
    os_unfair_lock_unlock(&self->_avOutputContextLock);
  }

  else
  {
    v5 = self->_avOutputContext;
  }

  return v5;
}

- (BOOL)supportsVolumeControl
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__MRAVConcreteOutputContext_supportsVolumeControl__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_reloadPredictedOutputDevice
{
  if (a1)
  {
    v2 = [a1 avOutputContext];
    v7 = [v2 predictedOutputDevice];

    if (v7)
    {
      v3 = [MRAVConcreteOutputDevice alloc];
      v4 = [a1 avOutputContext];
      [(MRAVConcreteOutputDevice *)v3 initWithAVOutputDevice:v7 outputContext:v4];
      v5 = OUTLINED_FUNCTION_2_4();
      [(MRAVConcreteOutputContext *)v5 setPredictedOutputDevice:v6];
    }

    else
    {
      [(MRAVConcreteOutputContext *)a1 setPredictedOutputDevice:?];
    }
  }
}

+ (void)_initializeAVFNotificationForwarding
{
  v0 = objc_opt_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__MRAVConcreteOutputContext__initializeAVFNotificationForwarding__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v0;
  if (_initializeAVFNotificationForwarding___once != -1)
  {
    dispatch_once(&_initializeAVFNotificationForwarding___once, block);
  }
}

void __65__MRAVConcreteOutputContext__initializeAVFNotificationForwarding__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() notificationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__MRAVConcreteOutputContext__initializeAVFNotificationForwarding__block_invoke_2;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = *(a1 + 32);
  dispatch_async(v3, block);
}

- (id)contextID
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__10;
  v10 = __Block_byref_object_dispose__10;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__MRAVConcreteOutputContext_contextID__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __65__MRAVConcreteOutputContext__initializeAVFNotificationForwarding__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = *MEMORY[0x1E69586A8];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65__MRAVConcreteOutputContext__initializeAVFNotificationForwarding__block_invoke_4;
  v13[3] = &unk_1E769D228;
  v4 = *(a1 + 32);
  v14 = &__block_literal_global_115;
  v15 = v4;
  v5 = [v2 addObserverForName:v3 object:0 queue:0 usingBlock:v13];

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  v7 = *MEMORY[0x1E69586B0];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__MRAVConcreteOutputContext__initializeAVFNotificationForwarding__block_invoke_6;
  v10[3] = &unk_1E769D228;
  v8 = *(a1 + 32);
  v11 = &__block_literal_global_115;
  v12 = v8;
  v9 = [v6 addObserverForName:v7 object:0 queue:0 usingBlock:v10];
}

- (id)predictedOutputDevice
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__10;
  v10 = __Block_byref_object_dispose__10;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__MRAVConcreteOutputContext_predictedOutputDevice__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

+ (id)sharedSystemAudioContext
{
  if (sharedSystemAudioContext___once != -1)
  {
    +[MRAVConcreteOutputContext sharedSystemAudioContext];
  }

  v3 = sharedSystemAudioContext___context;

  return v3;
}

void __65__MRAVConcreteOutputContext__initializeAVFNotificationForwarding__block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = [objc_opt_class() notificationQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__MRAVConcreteOutputContext__initializeAVFNotificationForwarding__block_invoke_7;
  v8[3] = &unk_1E769AB28;
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  dispatch_async(v5, v8);
}

void __65__MRAVConcreteOutputContext__initializeAVFNotificationForwarding__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = [objc_opt_class() notificationQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__MRAVConcreteOutputContext__initializeAVFNotificationForwarding__block_invoke_5;
  v8[3] = &unk_1E769AB28;
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  dispatch_async(v5, v8);
}

id __65__MRAVConcreteOutputContext__initializeAVFNotificationForwarding__block_invoke_3(uint64_t a1, void *a2)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = [a2 object];
  v3 = [v2 outputContextType];
  v4 = *MEMORY[0x1E69586E0];
  v11[0] = *MEMORY[0x1E69586D8];
  v11[1] = v4;
  v12[0] = &unk_1F15776C8;
  v12[1] = &unk_1F15776E0;
  v11[2] = *MEMORY[0x1E69586D0];
  v12[2] = &unk_1F15776F8;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];
  v6 = [v5 objectForKey:v3];
  v7 = [v6 unsignedIntegerValue];

  if (v7)
  {
    v8 = [MRAVConcreteOutputContext _sharedOutputContextFromType:v7];
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

void __65__MRAVConcreteOutputContext__initializeAVFNotificationForwarding__block_invoke_7(uint64_t a1)
{
  v1 = (*(*(a1 + 40) + 16))(*(a1 + 40), *(a1 + 32));
  [v1 _scheduleOutputContextDevicesDidChangeNotification];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(MRAVConcreteOutputContext *)self contextID];
  v6 = MRAVOutputContextTypeCopyDescription(self->_type);
  v7 = [(MRAVConcreteOutputContext *)self avOutputContext];
  v8 = [v3 stringWithFormat:@"<%@: %p uid=%@ type=%@ avOutputContext=%@>", v4, self, v5, v6, v7];

  return v8;
}

void __65__MRAVConcreteOutputContext__initializeAVFNotificationForwarding__block_invoke_5(uint64_t a1)
{
  v1 = (*(*(a1 + 40) + 16))(*(a1 + 40), *(a1 + 32));
  [v1 _scheduleOutputContextDeviceDidChangeNotification];
}

- (id)predictedOutputDeviceUIDs
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [(MRAVConcreteOutputContext *)self predictedOutputDevice];
  v3 = [v2 uid];

  if (v3)
  {
    v7[0] = v3;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

void __53__MRAVConcreteOutputContext_sharedSystemAudioContext__block_invoke()
{
  v0 = [MEMORY[0x1E69587F0] sharedSystemAudioContext];
  if (v0)
  {
    v1 = [[MRAVConcreteOutputContext alloc] initWithAVOutputContext:v0 type:2];
    v2 = sharedSystemAudioContext___context;
    sharedSystemAudioContext___context = v1;
  }

  else
  {
    v3 = _MRLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __53__MRAVConcreteOutputContext_sharedSystemAudioContext__block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

+ (id)sharedSystemScreenContext
{
  if (sharedSystemScreenContext___once != -1)
  {
    +[MRAVConcreteOutputContext sharedSystemScreenContext];
  }

  v3 = sharedSystemScreenContext___context;

  return v3;
}

void __54__MRAVConcreteOutputContext_sharedSystemScreenContext__block_invoke()
{
  v0 = [MEMORY[0x1E69587F0] sharedSystemScreenContext];
  if (v0)
  {
    v1 = [[MRAVConcreteOutputContext alloc] initWithAVOutputContext:v0 type:3];
    v2 = sharedSystemScreenContext___context;
    sharedSystemScreenContext___context = v1;
  }

  else
  {
    v3 = _MRLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __54__MRAVConcreteOutputContext_sharedSystemScreenContext__block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

+ (id)iTunesContext
{
  v2 = [MEMORY[0x1E69587F0] iTunesAudioContext];
  if (v2)
  {
    v3 = [[MRAVConcreteOutputContext alloc] initWithAVOutputContext:v2 type:4];
  }

  else
  {
    v4 = _MRLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(MRAVConcreteOutputContext *)v4 iTunesContext:v5];
    }

    v3 = 0;
  }

  return v3;
}

+ (id)createOutputContextWithUniqueIdentifier:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    v15 = 0;
    goto LABEL_19;
  }

  v4 = +[MRUserSettings currentSettings];
  v5 = [v4 supportMultiplayerHost];

  if ((v5 & 1) == 0)
  {
    v6 = +[MRAVConcreteOutputContext sharedAudioPresentationContext];
    v7 = [v6 uniqueIdentifier];
    v8 = v7;
    if (v7 == v3)
    {
    }

    else
    {
      v9 = [v7 isEqual:v3];

      if ((v9 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v16 = +[MRAVConcreteOutputContext sharedAudioPresentationContext];
    goto LABEL_14;
  }

LABEL_5:
  v10 = +[MRAVConcreteOutputContext sharedSystemAudioContext];
  v11 = [v10 uniqueIdentifier];
  v12 = v11;
  if (v11 == v3)
  {

    goto LABEL_11;
  }

  v13 = [v11 isEqual:v3];

  if (v13)
  {
LABEL_11:
    v16 = +[MRAVConcreteOutputContext sharedSystemAudioContext];
LABEL_14:
    v15 = v16;
    goto LABEL_19;
  }

  v14 = [MEMORY[0x1E69587F0] outputContextForID:v3];
  if (v14)
  {
    v15 = [[MRAVConcreteOutputContext alloc] initWithAVOutputContext:v14 type:5];
  }

  else
  {
    v17 = _MRLogForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(MRAVConcreteOutputContext *)v3 createOutputContextWithUniqueIdentifier:v17, v18, v19, v20, v21, v22, v23];
    }

    v15 = 0;
  }

LABEL_19:

  return v15;
}

- (MRAVConcreteOutputContext)initWithAVOutputContext:(id)a3 type:(unsigned int)a4
{
  v6 = a3;
  v22.receiver = self;
  v22.super_class = MRAVConcreteOutputContext;
  v7 = [(MRAVConcreteOutputContext *)&v22 init];
  v8 = v7;
  if (v7)
  {
    v7->_type = a4;
    v9 = objc_opt_class();
    Name = class_getName(v9);
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create(Name, v11);
    serialQueue = v8->_serialQueue;
    v8->_serialQueue = v12;

    v14 = [[MRAVOutputDeviceSourceInfo alloc] initWithMultipleBuiltInDevices:0 sourceType:1];
    outputDeviceSourceInfo = v8->_outputDeviceSourceInfo;
    v8->_outputDeviceSourceInfo = v14;

    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    notifications = v8->_notifications;
    v8->_notifications = v16;

    v18 = +[MRUserSettings currentSettings];
    LODWORD(v11) = [v18 supportMultiplayerHost];

    if (v11)
    {
      v8->_avOutputContextLock._os_unfair_lock_opaque = 0;
    }

    v19 = [MEMORY[0x1E696AD88] defaultCenter];
    [v19 addObserver:v8 selector:sel__handleDeviceInfoDidChangeNotification_ name:@"kMRActiveDeviceInfoDidChangeNotification" object:0];

    v20 = +[MRAVClusterController sharedController];
    [v20 registerObserver:v8];

    [(MRAVConcreteOutputContext *)v8 setAvOutputContext:v6];
    +[MRAVConcreteOutputContext _initializeAVFNotificationForwarding];
  }

  return v8;
}

- (void)dealloc
{
  [(MRAVConcreteOutputContext *)self _unregisterNotifications];
  v3.receiver = self;
  v3.super_class = MRAVConcreteOutputContext;
  [(MRAVConcreteOutputContext *)&v3 dealloc];
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(MRAVConcreteOutputContext *)self description];
  v5 = [(MRAVConcreteOutputContext *)self predictedOutputDeviceUIDs];
  v6 = [(MRAVOutputContext *)self outputDevices];
  v7 = [v3 stringWithFormat:@"%@ predicted=%@ outputDevices=%@", v4, v5, v6];

  return v7;
}

+ (void)setOutputContextForLocalDeviceDataSource:(id)a3
{
  v3 = MEMORY[0x1A58E3570](a3, a2);
  v4 = _outputContextForLocalDeviceDataSource;
  _outputContextForLocalDeviceDataSource = v3;
}

+ (id)outputContextForLocalDeviceDataSource
{
  v2 = MEMORY[0x1A58E3570](_outputContextForLocalDeviceDataSource, a2);

  return v2;
}

+ (AVOutputContext)outputContextForLocalDevice
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [v3 UUIDString];

  v5 = [MEMORY[0x1E695DF00] now];
  v6 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"outputContextForLocalDevice", v4];
  v7 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v31 = v6;
    _os_log_impl(&dword_1A2860000, v7, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v8 = [a1 outputContextForLocalDeviceDataSource];

  if (v8)
  {
    v9 = [a1 outputContextForLocalDeviceDataSource];
    v10 = v9[2]();
    v11 = 0;
  }

  else
  {
    v9 = MRCreateXPCMessage(0x300000000000025uLL);
    v12 = +[MRMediaRemoteServiceClient sharedServiceClient];
    v13 = [v12 service];
    v14 = [v13 mrXPCConnection];
    v29 = 0;
    v15 = [v14 sendSyncMessage:v9 error:&v29];
    v11 = v29;

    v16 = MRCreateStringFromXPCMessage(v15, "MRXPC_ROUTING_CONTEXT_UID_KEY");
    v17 = _MRLogForCategory(0xAuLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v31 = @"outputContextForLocalDevice";
      v32 = 2114;
      v33 = v4;
      v34 = 2112;
      v35 = v16;
      _os_log_impl(&dword_1A2860000, v17, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }

    v10 = [MEMORY[0x1E69587F0] outputContextForID:v16];
  }

  v18 = _MRLogForCategory(0xAuLL);
  v19 = v18;
  if (v11 || !v10)
  {
    if (v11)
    {
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      v20 = [MEMORY[0x1E695DF00] date];
      [v20 timeIntervalSinceDate:v5];
      *buf = 138544130;
      v31 = @"outputContextForLocalDevice";
      v32 = 2114;
      v33 = v4;
      v34 = 2114;
      v35 = v11;
      v36 = 2048;
      v37 = v25;
      _os_log_error_impl(&dword_1A2860000, v19, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", buf, 0x2Au);
      goto LABEL_18;
    }

    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    v20 = [MEMORY[0x1E695DF00] date];
    [v20 timeIntervalSinceDate:v5];
    *buf = 138543874;
    v31 = @"outputContextForLocalDevice";
    v32 = 2114;
    v33 = v4;
    v34 = 2048;
    v35 = v26;
    v22 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
    v23 = v19;
    v24 = 32;
  }

  else
  {
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    v20 = [MEMORY[0x1E695DF00] date];
    [v20 timeIntervalSinceDate:v5];
    *buf = 138544130;
    v31 = @"outputContextForLocalDevice";
    v32 = 2114;
    v33 = v4;
    v34 = 2112;
    v35 = v10;
    v36 = 2048;
    v37 = v21;
    v22 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
    v23 = v19;
    v24 = 42;
  }

  _os_log_impl(&dword_1A2860000, v23, OS_LOG_TYPE_DEFAULT, v22, buf, v24);
LABEL_18:

LABEL_19:
  v27 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)setAvOutputContext:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    [(MRAVConcreteOutputContext *)a2 setAvOutputContext:?];
  }

  if (self->_type == 1)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = MRAVOutputContextTypeCopyDescription(1u);
    v9 = [v7 stringWithFormat:@"OutputContext<%@-%p>", v8, self];

    v10 = _MRLogForCategory(0);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v11)
      {
        *buf = 138544130;
        v33 = v9;
        v34 = 2114;
        v35 = @"avOutputContext";
        v36 = 2112;
        v37 = v6;
        v38 = 2112;
        v39 = v6;
        v12 = "Set: %{public}@ setting %{public}@ from <%@> to <%@>";
        v13 = v10;
        v14 = 42;
        goto LABEL_9;
      }
    }

    else if (v11)
    {
      *buf = 138543874;
      v33 = v9;
      v34 = 2114;
      v35 = @"avOutputContext";
      v36 = 2112;
      v37 = 0;
      v12 = "Set: %{public}@ setting %{public}@ to <%@>";
      v13 = v10;
      v14 = 32;
LABEL_9:
      _os_log_impl(&dword_1A2860000, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
    }
  }

  v15 = +[MRUserSettings currentSettings];
  v16 = [v15 supportMultiplayerHost];

  if (v16)
  {
    os_unfair_lock_lock(&self->_avOutputContextLock);
    objc_storeStrong(&self->_avOutputContext, a3);
    os_unfair_lock_unlock(&self->_avOutputContextLock);
  }

  else
  {
    objc_storeStrong(&self->_avOutputContext, a3);
  }

  v17 = [v6 contextID];
  v18 = [v6 providesControlForAllVolumeFeatures];
  v19 = [v6 canSetVolume];
  v20 = [v6 volumeControlType];
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__MRAVConcreteOutputContext_setAvOutputContext___block_invoke;
  block[3] = &unk_1E769D0F0;
  v22 = 4 * (v20 == 2);
  block[4] = self;
  v27 = v17;
  if (v20 == 1)
  {
    v22 = 2;
  }

  v30 = v18;
  v31 = v19;
  v29 = v22;
  v28 = v6;
  v23 = v6;
  v24 = v17;
  dispatch_sync(serialQueue, block);
  [(MRAVConcreteOutputContext *)self _reloadOutputDevices];
  [(MRAVConcreteOutputContext *)self _reloadPredictedOutputDevice];
  [(MRAVOutputContext *)self _scheduleOutputContextDidChangeNotification];

  v25 = *MEMORY[0x1E69E9840];
}

- (void)_registerNotificationsForOutputContext:(uint64_t)a1
{
  if (a1 && a2)
  {
    v3 = *MEMORY[0x1E69586A8];
    v6 = a2;
    [(MRAVConcreteOutputContext *)a1 _addNotifications:v3 name:v6 object:?];
    [(MRAVConcreteOutputContext *)a1 _addNotifications:*MEMORY[0x1E69586B0] name:v6 object:?];
    [(MRAVConcreteOutputContext *)a1 _addNotifications:*MEMORY[0x1E6958688] name:v6 object:?];
    [(MRAVConcreteOutputContext *)a1 _addNotifications:*MEMORY[0x1E69587C8] name:0 object:?];
    [(MRAVConcreteOutputContext *)a1 _addNotifications:*MEMORY[0x1E6958750] name:0 object:?];
    [(MRAVConcreteOutputContext *)a1 _addNotifications:*MEMORY[0x1E69587C0] name:0 object:?];
    [(MRAVConcreteOutputContext *)a1 _addNotifications:*MEMORY[0x1E69586E8] name:v6 object:?];
    [(MRAVConcreteOutputContext *)a1 _addNotifications:*MEMORY[0x1E6958678] name:v6 object:?];
    [(MRAVConcreteOutputContext *)a1 _addNotifications:*MEMORY[0x1E69586C0] name:v6 object:?];
    v4 = *MEMORY[0x1E6958748];
    [(MRAVConcreteOutputContext *)a1 _addNotifications:*MEMORY[0x1E6958748] name:0 object:?];
    v5 = *MEMORY[0x1E69587A8];
    [(MRAVConcreteOutputContext *)a1 _addNotifications:*MEMORY[0x1E69587A8] name:0 object:?];
    [(MRAVConcreteOutputContext *)a1 _addNotifications:v4 name:0 object:?];
    [(MRAVConcreteOutputContext *)a1 _addNotifications:v5 name:0 object:?];
    [(MRAVConcreteOutputContext *)a1 _addNotifications:*MEMORY[0x1E69586F8] name:0 object:?];
    [(MRAVConcreteOutputContext *)a1 _addNotifications:*MEMORY[0x1E69586B8] name:v6 object:?];
  }
}

- (NSArray)concreteOutputDevices
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__10;
  v10 = __Block_byref_object_dispose__10;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__MRAVConcreteOutputContext_concreteOutputDevices__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __50__MRAVConcreteOutputContext_concreteOutputDevices__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setConcreteOutputDevices:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__MRAVConcreteOutputContext_setConcreteOutputDevices___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(serialQueue, v7);
}

void __54__MRAVConcreteOutputContext_setConcreteOutputDevices___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = [*(a1 + 40) copy];
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  v4 = v3;
  objc_storeStrong((*(a1 + 32) + 40), v3);
  if (v2)
  {
  }
}

- (BOOL)supportsMultipleBluetoothOutputDevices
{
  v2 = [(MRAVConcreteOutputContext *)self avOutputContext];
  v3 = [v2 supportsMultipleBluetoothOutputDevices];

  return v3;
}

- (void)setPredictedOutputDevice:(uint64_t)a1
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v5 = *(a1 + 64);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__MRAVConcreteOutputContext_setPredictedOutputDevice___block_invoke;
    block[3] = &unk_1E769BBB8;
    v12 = &v13;
    block[4] = a1;
    v6 = v3;
    v11 = v6;
    dispatch_sync(v5, block);
    if (*(v14 + 24) == 1)
    {
      v7 = _MRLogForCategory(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [v6 uid];
        *buf = 138543618;
        v18 = v8;
        v19 = 2114;
        v20 = a1;
        _os_log_impl(&dword_1A2860000, v7, OS_LOG_TYPE_DEFAULT, "[ConcreteOutputContext] Predicted output device changed to: %{public}@ for context: %{public}@", buf, 0x16u);
      }

      [(MRAVConcreteOutputContext *)a1 _notifyPredictedOutputDeviceDidChange:v6];
    }

    _Block_object_dispose(&v13, 8);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __54__MRAVConcreteOutputContext_setPredictedOutputDevice___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) uid];
  v3 = [*(a1 + 40) uid];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = [v2 isEqual:v3] ^ 1;
  }

  *(*(*(a1 + 48) + 8) + 24) = v4;

  v5 = *(a1 + 40);
  v6 = (*(a1 + 32) + 48);

  objc_storeStrong(v6, v5);
}

- (void)modifyTopologyWithRequest:(id)a3 withReplyQueue:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [[MRAVOutputContextModification alloc] initWithRequest:v10];
  v12 = [v10 shouldWaitForUpdatedOutputDevices];

  if (v12)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __81__MRAVConcreteOutputContext_modifyTopologyWithRequest_withReplyQueue_completion___block_invoke_3;
    v22[3] = &unk_1E769B038;
    v13 = &v24;
    v23 = v8;
    v24 = v9;
    v22[4] = self;
    v14 = v8;
    v15 = v9;
    v16 = MEMORY[0x1A58E3570](v22);
    v17 = v23;
  }

  else
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __81__MRAVConcreteOutputContext_modifyTopologyWithRequest_withReplyQueue_completion___block_invoke;
    v25[3] = &unk_1E769AB50;
    v13 = &v27;
    v26 = v8;
    v27 = v9;
    v18 = v8;
    v19 = v9;
    v16 = MEMORY[0x1A58E3570](v25);
    v17 = v26;
  }

  v20 = qos_class_self();
  v21 = dispatch_get_global_queue(v20, 0);
  [(MRAVOutputContextModification *)v11 modifyWithOutputContext:self queue:v21 completion:v16];
}

void __81__MRAVConcreteOutputContext_modifyTopologyWithRequest_withReplyQueue_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (!v5)
    {
      v6 = MEMORY[0x1E69E96A0];
      v7 = MEMORY[0x1E69E96A0];
      v4 = *(a1 + 40);
    }

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __81__MRAVConcreteOutputContext_modifyTopologyWithRequest_withReplyQueue_completion___block_invoke_2;
    v8[3] = &unk_1E769AB28;
    v10 = v4;
    v9 = v3;
    dispatch_async(v6, v8);
    if (!v5)
    {
    }
  }
}

void __81__MRAVConcreteOutputContext_modifyTopologyWithRequest_withReplyQueue_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 48))
  {
    v4 = *(a1 + 32);
    v5 = [objc_opt_class() notificationQueue];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __81__MRAVConcreteOutputContext_modifyTopologyWithRequest_withReplyQueue_completion___block_invoke_4;
    v9[3] = &unk_1E769D118;
    v6 = v3;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v10 = v6;
    v11 = v7;
    v12 = v8;
    v13 = *(a1 + 48);
    dispatch_async(v5, v9);
  }
}

void __81__MRAVConcreteOutputContext_modifyTopologyWithRequest_withReplyQueue_completion___block_invoke_4(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    [*(a1 + 40) _reloadOutputDevices];
  }

  v2 = *(a1 + 48);
  v3 = v2;
  if (!v2)
  {
    v3 = MEMORY[0x1E69E96A0];
    v4 = MEMORY[0x1E69E96A0];
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __81__MRAVConcreteOutputContext_modifyTopologyWithRequest_withReplyQueue_completion___block_invoke_5;
  v5[3] = &unk_1E769AB28;
  v7 = *(a1 + 56);
  v6 = *(a1 + 32);
  dispatch_async(v3, v5);
  if (!v2)
  {
  }
}

- (void)resetPredictedOutputDevice
{
  v2 = [(MRAVConcreteOutputContext *)self avOutputContext];
  [v2 resetPredictedOutputDevice];
}

- (unsigned)volumeControlCapabilities
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__MRAVConcreteOutputContext_volumeControlCapabilities__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (float)volume
{
  if (![(MRAVOutputContext *)self isVolumeControlAvailable])
  {
    return 0.0;
  }

  v3 = [(MRAVConcreteOutputContext *)self avOutputContext];
  [v3 volume];
  v5 = v4;

  return v5;
}

- (void)setVolume:(float)a3 details:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AEC0];
  v7 = a4;
  v8 = [v6 alloc];
  v9 = [(MRAVConcreteOutputContext *)self contextID];
  v10 = [v8 initWithFormat:@"%@ -> %lf", v9, a3];

  v11 = objc_alloc(MEMORY[0x1E696AD60]);
  v12 = [v7 requestID];

  v13 = [v11 initWithFormat:@"%@<%@>", @"ConcreteOutputContext.setVolume", v12];
  if (v10)
  {
    [v13 appendFormat:@" for %@", v10];
  }

  v14 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v19 = v13;
    _os_log_impl(&dword_1A2860000, v14, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  if ([(MRAVOutputContext *)self isVolumeControlAvailable])
  {
    v15 = [(MRAVConcreteOutputContext *)self avOutputContext];
    *&v16 = a3;
    [v15 setVolume:v16];
  }

  else
  {
    v15 = _MRLogForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A2860000, v15, OS_LOG_TYPE_DEFAULT, "[ConcreteOutputContext] Volume control is not available, ignoring setVolume request.", buf, 2u);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)adjustVolume:(int64_t)a3 details:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AEC0];
  v7 = a4;
  v8 = [v6 alloc];
  v9 = [(MRAVConcreteOutputContext *)self contextID];
  v10 = MRMediaRemoteVolumeControlAdjustmentDescription(a3);
  v11 = [v8 initWithFormat:@"%@ -> %@", v9, v10];

  v12 = objc_alloc(MEMORY[0x1E696AD60]);
  v13 = [v7 requestID];

  v14 = [v12 initWithFormat:@"%@<%@>", @"ConcreteOutputContext.adjustVolume", v13];
  if (v11)
  {
    [v14 appendFormat:@" for %@", v11];
  }

  v15 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v19 = v14;
    _os_log_impl(&dword_1A2860000, v15, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v16 = [(MRAVConcreteOutputContext *)self avOutputContext];
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

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_handleOutputDevicesDidChangeNotification:(id)a3
{
  v12 = a3;
  v4 = MRMediaRemoteCopyDeviceUID();

  v5 = +[MRAVConcreteOutputContext sharedAudioPresentationContext];

  if (MRProcessIsMediaRemoteDaemon())
  {
    if (v5 == self && v4 == 0)
    {
      v7 = [v12 userInfo];
      v8 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69586A0]];
      v9 = [v8 isEqualToString:*MEMORY[0x1E6958698]];

      if (v9)
      {
        v10 = [v12 userInfo];
        v11 = [v10 objectForKeyedSubscript:*MEMORY[0x1E6958690]];

        [(MRAVConcreteOutputContext *)self _handleOutputDevicesTimedOut:v11];
      }
    }
  }

  [(MRAVOutputContext *)self _scheduleOutputContextDevicesDidChangeNotification];
}

- (void)_handleOutputDevicesTimedOut:(uint64_t)a1
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v4 = _MRLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v3;
      _os_log_impl(&dword_1A2860000, v4, OS_LOG_TYPE_DEFAULT, "[ConcreteOutputContext] AirPlay routes timed out: %{public}@", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v15 = 0x2020000000;
    v16 = 0;
    v5 = *(a1 + 64);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__MRAVConcreteOutputContext__handleOutputDevicesTimedOut___block_invoke;
    block[3] = &unk_1E769D1B8;
    block[4] = a1;
    v6 = v3;
    v12 = v6;
    p_buf = &buf;
    dispatch_sync(v5, block);
    if (*(*(&buf + 1) + 24) == 1)
    {
      v7 = *(a1 + 64);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __58__MRAVConcreteOutputContext__handleOutputDevicesTimedOut___block_invoke_2;
      v9[3] = &unk_1E769D1E0;
      v9[4] = a1;
      v10 = v6;
      [MRAVEndpoint createEndpointWithOutputDeviceUIDs:v10 queue:v7 completion:v9];
    }

    _Block_object_dispose(&buf, 8);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_addNotifications:(void *)a3 name:(void *)a4 object:
{
  v10 = a3;
  v7 = a4;
  if (a1 && v10)
  {
    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 addObserver:a1 selector:a2 name:v10 object:v7];

    if (v7)
    {
      [*(a1 + 120) setObject:v7 forKeyedSubscript:v10];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [*(a1 + 120) setObject:v9 forKeyedSubscript:v10];
    }
  }
}

void __53__MRAVConcreteOutputContext__unregisterNotifications__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E696AD88];
  v6 = a3;
  v7 = a2;
  v11 = [v5 defaultCenter];
  v8 = *(a1 + 32);
  v9 = [MEMORY[0x1E695DFB0] null];
  if ([v6 isEqual:v9])
  {
    v10 = 0;
  }

  else
  {
    v10 = v6;
  }

  [v11 removeObserver:v8 name:v7 object:v10];
}

- (void)_handleOutputContextCanSetVolumeDidChangeNotification:(id)a3
{
  v31[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MRAVConcreteOutputContext *)self avOutputContext];
  v6 = [v5 canSetVolume];

  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  serialQueue = self->_serialQueue;
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __83__MRAVConcreteOutputContext__handleOutputContextCanSetVolumeDidChangeNotification___block_invoke;
  v16 = &unk_1E769D190;
  v21 = v6;
  v17 = self;
  v19 = &v22;
  v20 = &v26;
  v8 = v4;
  v18 = v8;
  dispatch_sync(serialQueue, &v13);
  if (*(v27 + 24) == 1)
  {
    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    v30 = @"MRAVOutputContextVolumeControlCapabilitiesUserInfoKey";
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v23 + 6)];
    v31[0] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    [v9 postNotificationName:@"MRAVOutputContextVolumeControlCapabilitiesDidChangeNotification" object:self userInfo:v11];
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_handleOutputContextSupportsVolumeDidChangeNotification:(id)a3
{
  v31[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MRAVConcreteOutputContext *)self avOutputContext];
  v6 = [v5 providesControlForAllVolumeFeatures];

  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  serialQueue = self->_serialQueue;
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __85__MRAVConcreteOutputContext__handleOutputContextSupportsVolumeDidChangeNotification___block_invoke;
  v16 = &unk_1E769D190;
  v21 = v6;
  v17 = self;
  v19 = &v22;
  v20 = &v26;
  v8 = v4;
  v18 = v8;
  dispatch_sync(serialQueue, &v13);
  if (*(v27 + 24) == 1)
  {
    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    v30 = @"MRAVOutputContextVolumeControlCapabilitiesUserInfoKey";
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v23 + 6)];
    v31[0] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    [v9 postNotificationName:@"MRAVOutputContextVolumeControlCapabilitiesDidChangeNotification" object:self userInfo:v11];
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_handleOutputDeviceCanSetVolumeDidChangeNotification:(id)a3
{
  v5 = [a3 object];
  v4 = [v5 deviceID];
  [(MRAVConcreteOutputContext *)self _postVolumeCapabilitiesChangedNotificationForUID:v4];
}

- (void)_handleOutputDeviceVolumeDidChangeNotification:(id)a3
{
  v5 = [a3 object];
  v4 = [v5 deviceID];
  [(MRAVConcreteOutputContext *)self _postVolumeChangedNotificationForUID:v4];
}

- (void)_handleMutedDidChangeNotification:(id)a3
{
  v5 = [a3 object];
  v4 = [v5 deviceID];
  [(MRAVConcreteOutputContext *)self _postVolumeMutedChangedNotificationForUID:v4];
}

unint64_t __58__MRAVConcreteOutputContext__handleOutputDevicesTimedOut___block_invoke(unint64_t result)
{
  if ((*(*(result + 32) + 73) & 1) == 0)
  {
    v1 = result;
    result = [*(result + 40) count];
    if (result >= 2)
    {
      *(*(v1 + 32) + 73) = 1;
      *(*(*(v1 + 48) + 8) + 24) = 1;
    }
  }

  return result;
}

void __58__MRAVConcreteOutputContext__handleOutputDevicesTimedOut___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  *(*(a1 + 32) + 73) = 0;
  v7 = _MRLogForCategory(0);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __58__MRAVConcreteOutputContext__handleOutputDevicesTimedOut___block_invoke_2_cold_1(a1, v6, v8);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = v5;
    _os_log_impl(&dword_1A2860000, v8, OS_LOG_TYPE_DEFAULT, "[ConcreteOutputContext] Created endpoint for disconnected devices: %{public}@", &v10, 0xCu);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __67__MRAVConcreteOutputContext__notifyPredictedOutputDeviceDidChange___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v6 = @"MRAVOutputContextOutputDeviceUserInfoKey";
    v7[0] = v2;
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  }

  else
  {
    v3 = MEMORY[0x1E695E0F8];
  }

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:@"kMRAVOutputContextPredictedOutputDeviceDidChangeNotification" object:*(a1 + 40) userInfo:v3];

  v5 = *MEMORY[0x1E69E9840];
}

void __49__MRAVConcreteOutputContext__reloadOutputContext__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.mediaremote.outputcontext.reloadOutputContext", v2);
  v1 = _MergedGlobals;
  _MergedGlobals = v0;
}

void __49__MRAVConcreteOutputContext__reloadOutputContext__block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() outputContextForLocalDevice];
  if (v3 || (v4 = *(a1 + 32), [objc_opt_class() outputContextForLocalDevice], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v3;
    v6 = _MRLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      *buf = 138543618;
      v14 = v7;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_1A2860000, v6, OS_LOG_TYPE_DEFAULT, "[ConcreteOutputContext] %{public}@ Reloading with output context: %@", buf, 0x16u);
    }

    [*(a1 + 32) setAvOutputContext:v5];
  }

  else
  {
    objc_initWeak(buf, *(a1 + 32));
    v9 = dispatch_time(0, 10000000000);
    v10 = _MergedGlobals;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__MRAVConcreteOutputContext__reloadOutputContext__block_invoke_3;
    block[3] = &unk_1E769B178;
    objc_copyWeak(&v12, buf);
    dispatch_after(v9, v10, block);
    objc_destroyWeak(&v12);
    objc_destroyWeak(buf);
  }

  v8 = *MEMORY[0x1E69E9840];
}

+ (id)_sharedOutputContextFromType:(uint64_t)a1
{
  objc_opt_self();
  switch(a2)
  {
    case 3:
      v3 = +[MRAVConcreteOutputContext sharedSystemScreenContext];
      break;
    case 2:
      v3 = +[MRAVConcreteOutputContext sharedSystemAudioContext];
      break;
    case 1:
      v3 = +[MRAVConcreteOutputContext sharedAudioPresentationContext];
      break;
    default:
      v3 = 0;
      break;
  }

  return v3;
}

void __48__MRAVConcreteOutputContext_setAvOutputContext___block_invoke(uint64_t a1)
{
  [(MRAVConcreteOutputContext *)*(a1 + 32) _unregisterNotifications];
  objc_storeStrong((*(a1 + 32) + 96), *(a1 + 40));
  *(*(a1 + 32) + 104) = *(a1 + 60);
  *(*(a1 + 32) + 105) = *(a1 + 61);
  *(*(a1 + 32) + 108) = *(a1 + 56);
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);

  [(MRAVConcreteOutputContext *)v2 _registerNotificationsForOutputContext:v3];
}

- (void)_notifyPredictedOutputDeviceDidChange:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [objc_opt_class() notificationQueue];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __67__MRAVConcreteOutputContext__notifyPredictedOutputDeviceDidChange___block_invoke;
    v5[3] = &unk_1E769A4A0;
    v6 = v3;
    v7 = a1;
    dispatch_async(v4, v5);
  }
}

uint64_t __54__MRAVConcreteOutputContext_volumeControlCapabilities__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (*(v1 + 104) == 1 && *(v1 + 105) == 1)
    {
      LODWORD(v1) = *(v1 + 108);
    }

    else
    {
      LODWORD(v1) = 0;
    }
  }

  *(*(*(result + 40) + 8) + 24) = v1;
  return result;
}

- (void)_outputContextChangeInitiatedNotification:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self && ((MRProcessIsMediaRemoteDaemon() & 1) != 0 || [(MRAVConcreteOutputContext *)self type]== 3))
  {
    v5 = _MRLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543618;
      v8 = v4;
      v9 = 2114;
      v10 = self;
      _os_log_impl(&dword_1A2860000, v5, OS_LOG_TYPE_DEFAULT, "[ConcreteOutputContext] Received output context change initiated notification: %{public}@ for context: %{public}@", &v7, 0x16u);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_handleOutputContextVolumeControlTypeDidChangeNotification:(id)a3
{
  v35[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MRAVConcreteOutputContext *)self avOutputContext];
  v6 = v5;
  if (self)
  {
    [v5 volumeControlType];
    OUTLINED_FUNCTION_12_1();
    if (v9)
    {
      v10 = v8;
    }

    else
    {
      v10 = v7;
    }
  }

  else
  {
    v10 = 0;
  }

  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  serialQueue = self->_serialQueue;
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __88__MRAVConcreteOutputContext__handleOutputContextVolumeControlTypeDidChangeNotification___block_invoke;
  v20 = &unk_1E769D168;
  v25 = v10;
  v21 = self;
  v23 = &v26;
  v24 = &v30;
  v12 = v4;
  v22 = v12;
  dispatch_sync(serialQueue, &v17);
  if (*(v31 + 24) == 1)
  {
    v13 = [MEMORY[0x1E696AD88] defaultCenter];
    v34 = @"MRAVOutputContextVolumeControlCapabilitiesUserInfoKey";
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v27 + 6)];
    v35[0] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
    [v13 postNotificationName:@"MRAVOutputContextVolumeControlCapabilitiesDidChangeNotification" object:self userInfo:v15];
  }

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);

  v16 = *MEMORY[0x1E69E9840];
}

void __88__MRAVConcreteOutputContext__handleOutputContextVolumeControlTypeDidChangeNotification___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (v3 && *(v3 + 104) == 1 && *(v3 + 105) == 1)
  {
    v4 = *(v3 + 108);
  }

  else
  {
    v4 = 0;
  }

  *(v3 + 108) = *(a1 + 64);
  if (*(a1 + 32))
  {
    OUTLINED_FUNCTION_13_1();
    if (v5)
    {
      OUTLINED_FUNCTION_13_1();
      if (v5)
      {
        v7 = *(v6 + 108);
      }
    }
  }

  OUTLINED_FUNCTION_1_9(v4);
  if (v1 && ((MRProcessIsMediaRemoteDaemon() & 1) != 0 || [v1 type] == 3))
  {
    v8 = _MRLogForCategory(0);
    if (OUTLINED_FUNCTION_15(v8))
    {
      v9 = *(a1 + 32);
      v10 = *(v9 + 104);
      v11 = *(v9 + 105);
      v12 = MRMediaRemotePickedRouteVolumeControlCapabilitiesCopyDescription(*(v9 + 108));
      v13 = OUTLINED_FUNCTION_8_2(v12);
      v14 = MRMediaRemotePickedRouteVolumeControlCapabilitiesCopyDescription(-351694848);
      v15 = *(*(a1 + 32) + 96);
      v16 = [*(a1 + 40) name];

      OUTLINED_FUNCTION_0_11();
      OUTLINED_FUNCTION_5_4();
      _os_log_impl(v17, v18, v19, v20, v21, 0x36u);
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __83__MRAVConcreteOutputContext__handleOutputContextCanSetVolumeDidChangeNotification___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (v3)
  {
    if (*(v3 + 104) == 1 && *(v3 + 105) == 1)
    {
      v4 = *(v3 + 108);
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

  *(v3 + 105) = *(a1 + 64);
  if (*(a1 + 32))
  {
    OUTLINED_FUNCTION_13_1();
    if (v6)
    {
      if (*(v5 + 105) == 1)
      {
        v7 = *(v5 + 108);
      }
    }
  }

  OUTLINED_FUNCTION_1_9(v4);
  if (v1 && ((MRProcessIsMediaRemoteDaemon() & 1) != 0 || [v1 type] == 3))
  {
    v8 = _MRLogForCategory(0);
    if (OUTLINED_FUNCTION_15(v8))
    {
      v9 = *(a1 + 32);
      v10 = *(v9 + 104);
      v11 = *(v9 + 105);
      v12 = MRMediaRemotePickedRouteVolumeControlCapabilitiesCopyDescription(*(v9 + 108));
      v13 = OUTLINED_FUNCTION_8_2(v12);
      v14 = MRMediaRemotePickedRouteVolumeControlCapabilitiesCopyDescription(-351694848);
      v15 = *(*(a1 + 32) + 96);
      v16 = [*(a1 + 40) name];

      OUTLINED_FUNCTION_0_11();
      OUTLINED_FUNCTION_5_4();
      _os_log_impl(v17, v18, v19, v20, v21, 0x36u);
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __85__MRAVConcreteOutputContext__handleOutputContextSupportsVolumeDidChangeNotification___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (v3 && *(v3 + 104) == 1 && *(v3 + 105) == 1)
  {
    v4 = *(v3 + 108);
  }

  else
  {
    v4 = 0;
  }

  *(v3 + 104) = *(a1 + 64);
  v5 = *(a1 + 32);
  if (v5)
  {
    if (*(v5 + 104) == 1)
    {
      OUTLINED_FUNCTION_13_1();
      if (v7)
      {
        v8 = *(v6 + 108);
      }
    }
  }

  OUTLINED_FUNCTION_1_9(v4);
  if (v1 && ((MRProcessIsMediaRemoteDaemon() & 1) != 0 || [v1 type] == 3))
  {
    v9 = _MRLogForCategory(0);
    if (OUTLINED_FUNCTION_15(v9))
    {
      v10 = *(a1 + 32);
      v11 = *(v10 + 104);
      v12 = *(v10 + 105);
      v13 = MRMediaRemotePickedRouteVolumeControlCapabilitiesCopyDescription(*(v10 + 108));
      v14 = OUTLINED_FUNCTION_8_2(v13);
      v15 = MRMediaRemotePickedRouteVolumeControlCapabilitiesCopyDescription(104);
      v16 = *(*(a1 + 32) + 96);
      v17 = [*(a1 + 40) name];

      OUTLINED_FUNCTION_0_11();
      OUTLINED_FUNCTION_5_4();
      _os_log_impl(v18, v19, v20, v21, v22, 0x36u);
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)_postVolumeCapabilitiesChangedNotificationForUID:(void *)a1
{
  v53 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (a1)
  {
    v6 = [OUTLINED_FUNCTION_6_2() concreteOutputDevices];
    v7 = [v6 countByEnumeratingWithState:&v41 objects:v52 count:16];
    if (v7)
    {
      OUTLINED_FUNCTION_11_1(v7, v8, v9, v10, v11, v12, v13, v14, v41, v42, v43);
      while (2)
      {
        v23 = 0;
        do
        {
          OUTLINED_FUNCTION_10_2(v15, v16, v17, v18, v19, v20, v21, v22, v41, v42, v43);
          if (!v32)
          {
            objc_enumerationMutation(v6);
          }

          v15 = [OUTLINED_FUNCTION_9_1(v24 v25];
          if (v15)
          {
            v33 = v15;
            if ((MRProcessIsMediaRemoteDaemon() & 1) != 0 || [a1 type] == 3)
            {
              v34 = _MRLogForCategory(0);
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
              {
                v35 = [v33 uid];
                v36 = [v33 isVolumeControlAvailable];
                v3 = [a1 contextID];
                *buf = 138543874;
                v47 = v35;
                v48 = 1024;
                v49 = v36;
                v50 = 2114;
                v51 = v3;
                _os_log_impl(&dword_1A2860000, v34, OS_LOG_TYPE_DEFAULT, "[ConcreteOutputContext] Output device %{public}@ did change isVolumeControlAvailable to %{BOOL}u for context: %{public}@", buf, 0x1Cu);
              }
            }

            v37 = [MEMORY[0x1E696AD88] defaultCenter];
            v44[0] = @"MRAVOutputContextOutputDeviceUserInfoKey";
            v44[1] = @"MRAVOutputContextVolumeControlCapabilitiesUserInfoKey";
            v45[0] = v33;
            v38 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v33, "volumeCapabilities")}];
            v45[1] = v38;
            v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:2];
            OUTLINED_FUNCTION_4_3(v39);

            goto LABEL_17;
          }

          ++v23;
        }

        while (v2 != v23);
        v15 = [v6 countByEnumeratingWithState:&v41 objects:v52 count:16];
        v2 = v15;
        if (v15)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:
  }

  v40 = *MEMORY[0x1E69E9840];
}

- (void)_handleCanMuteDidChangeNotification:(id)a3
{
  v6 = [a3 object];
  [v6 ID];
  objc_claimAutoreleasedReturnValue();
  v4 = OUTLINED_FUNCTION_2_4();
  [(MRAVConcreteOutputContext *)v4 _postVolumeCapabilitiesChangedNotificationForUID:v5];
}

- (void)_handleClusterMemberCanMuteDidChangeNotification:(id)a3
{
  v6 = [a3 object];
  [v6 ID];
  objc_claimAutoreleasedReturnValue();
  v4 = OUTLINED_FUNCTION_2_4();
  [(MRAVConcreteOutputContext *)v4 _postVolumeCapabilitiesChangedNotificationForUID:v5];
}

- (void)_postVolumeChangedNotificationForUID:(uint64_t)a1
{
  v49[18] = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (a1)
  {
    v6 = [OUTLINED_FUNCTION_6_2() concreteOutputDevices];
    OUTLINED_FUNCTION_14_1();
    v8 = [v7 countByEnumeratingWithState:? objects:? count:?];
    if (v8)
    {
      OUTLINED_FUNCTION_11_1(v8, v9, v10, v11, v12, v13, v14, v15, v40, v43, v46);
      while (2)
      {
        v24 = 0;
        do
        {
          OUTLINED_FUNCTION_10_2(v16, v17, v18, v19, v20, v21, v22, v23, v41, v44, v47);
          if (!v33)
          {
            objc_enumerationMutation(v6);
          }

          v16 = [OUTLINED_FUNCTION_9_1(v25 v26];
          if (v16)
          {
            v34 = v16;
            v35 = [MEMORY[0x1E696AD88] defaultCenter];
            v48[0] = @"MRAVOutputContextOutputDeviceUserInfoKey";
            v48[1] = @"MRAVOutputContextVolumeUserInfoKey";
            v49[0] = v34;
            v36 = MEMORY[0x1E696AD98];
            [v34 volume];
            v37 = [v36 numberWithFloat:?];
            v49[1] = v37;
            v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:2];
            OUTLINED_FUNCTION_4_3(v38);

            goto LABEL_12;
          }

          ++v24;
        }

        while (v2 != v24);
        OUTLINED_FUNCTION_14_1();
        v16 = [v6 countByEnumeratingWithState:? objects:? count:?];
        v2 = v16;
        if (v16)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  v39 = *MEMORY[0x1E69E9840];
}

- (void)_handleClusterMemberRoomVolumeDidChangeNotification:(id)a3
{
  v4 = a3;
  v9 = [v4 object];
  v5 = [v4 userInfo];

  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69586F0]];

  v7 = [v9 ID];
  v8 = [MRAVRoomOutputDevice calculateOutputDeviceIDFromOutputDeviceID:v7 withRoomID:v6];

  [(MRAVConcreteOutputContext *)self _postVolumeChangedNotificationForUID:v8];
}

- (void)_postVolumeMutedChangedNotificationForUID:(uint64_t)a1
{
  v48[18] = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (a1)
  {
    v6 = [OUTLINED_FUNCTION_6_2() concreteOutputDevices];
    OUTLINED_FUNCTION_14_1();
    v8 = [v7 countByEnumeratingWithState:? objects:? count:?];
    if (v8)
    {
      OUTLINED_FUNCTION_11_1(v8, v9, v10, v11, v12, v13, v14, v15, v39, v42, v45);
      while (2)
      {
        v24 = 0;
        do
        {
          OUTLINED_FUNCTION_10_2(v16, v17, v18, v19, v20, v21, v22, v23, v40, v43, v46);
          if (!v33)
          {
            objc_enumerationMutation(v6);
          }

          v16 = [OUTLINED_FUNCTION_9_1(v25 v26];
          if (v16)
          {
            v34 = v16;
            v35 = [MEMORY[0x1E696AD88] defaultCenter];
            v47[0] = @"MRAVOutputContextOutputDeviceUserInfoKey";
            v47[1] = @"MRAVOutputContextVolumeMutedUserInfoKey";
            v48[0] = v34;
            v36 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v34, "isVolumeMuted")}];
            v48[1] = v36;
            v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:2];
            OUTLINED_FUNCTION_4_3(v37);

            goto LABEL_12;
          }

          ++v24;
        }

        while (v2 != v24);
        OUTLINED_FUNCTION_14_1();
        v16 = [v6 countByEnumeratingWithState:? objects:? count:?];
        v2 = v16;
        if (v16)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  v38 = *MEMORY[0x1E69E9840];
}

- (void)_handleClusterMemberMutedDidChangeNotification:(id)a3
{
  v6 = [a3 object];
  [v6 ID];
  objc_claimAutoreleasedReturnValue();
  v4 = OUTLINED_FUNCTION_2_4();
  [(MRAVConcreteOutputContext *)v4 _postVolumeMutedChangedNotificationForUID:v5];
}

- (void)_handlePredictedOutputDevicesDidChangeNotification:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = _MRLogForCategory(0);
  if (OUTLINED_FUNCTION_15(v5))
  {
    v14 = [(MRAVConcreteOutputContext *)self predictedOutputDeviceUIDs];
    OUTLINED_FUNCTION_5_4();
    _os_log_impl(v6, v7, v8, v9, v10, 0x16u);
  }

  [(MRAVConcreteOutputContext *)self predictedOutputDevice];
  objc_claimAutoreleasedReturnValue();
  v11 = OUTLINED_FUNCTION_2_4();
  [(MRAVConcreteOutputContext *)v11 _notifyPredictedOutputDeviceDidChange:v12];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_reloadOutputContext
{
  if (a1)
  {
    if (qword_1ED7E8080 != -1)
    {
      dispatch_once(&qword_1ED7E8080, &__block_literal_global_109);
    }

    OUTLINED_FUNCTION_0_3();
    v4 = 3221225472;
    v5 = __49__MRAVConcreteOutputContext__reloadOutputContext__block_invoke_2;
    v6 = &unk_1E769A228;
    v7 = a1;
    dispatch_async(v2, block);
  }
}

void __49__MRAVConcreteOutputContext__reloadOutputContext__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(MRAVConcreteOutputContext *)WeakRetained _reloadOutputContext];
}

void __59__MRAVConcreteOutputContext_sharedAudioPresentationContext__block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5(&dword_1A2860000, a1, a3, "[ConcreteOutputContext] WARNING: AVF context unavailable for %{public}s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __53__MRAVConcreteOutputContext_sharedSystemAudioContext__block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5(&dword_1A2860000, a1, a3, "[ConcreteOutputContext] WARNING: AVF context unavailable for %{public}s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __54__MRAVConcreteOutputContext_sharedSystemScreenContext__block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5(&dword_1A2860000, a1, a3, "[ConcreteOutputContext] WARNING: AVF context unavailable for %{public}s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

+ (void)iTunesContext
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5(&dword_1A2860000, a1, a3, "[ConcreteOutputContext] WARNING: AVF context unavailable for %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

+ (void)createOutputContextWithUniqueIdentifier:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5(&dword_1A2860000, a2, a3, "[ConcreteOutputContext] WARNING: AVF context unavailable for %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setAvOutputContext:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MRAVConcreteOutputContext.m" lineNumber:294 description:{@"Invalid parameter not satisfying: %@", @"avOutputContext"}];
}

void __58__MRAVConcreteOutputContext__handleOutputDevicesTimedOut___block_invoke_2_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  v5 = 138543618;
  v6 = v3;
  v7 = 2114;
  v8 = a2;
  _os_log_error_impl(&dword_1A2860000, log, OS_LOG_TYPE_ERROR, "[ConcreteOutputContext] Failed to create endpoint for disconnected devices (%{public}@): %{public}@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

@end