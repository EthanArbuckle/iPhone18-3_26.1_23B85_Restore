@interface MROutputContextController
+ (id)sharedOutputContextController;
- (BOOL)isOutputContextEmpty;
- (BOOL)isVolumeMuted;
- (MROutputContextController)initWithOutputContext:(id)context;
- (float)_onSerialQueue_calculateMasterVolume;
- (float)volume;
- (id)_onSerialQueue_localOutputDevice;
- (id)_onSerialQueue_performOperationForOutputDeviceUID:(int)d withCapabilities:(void *)capabilities systemOperation:(void *)operation deviceOperation:(void *)deviceOperation groupOperation:;
- (id)_performOperationForOutputDeviceUID:(uint64_t)d withCapabilities:(void *)capabilities systemOperation:(void *)operation deviceOperation:(void *)deviceOperation groupOperation:;
- (id)adjustVolume:(int64_t)volume outputDeviceUID:(id)d details:(id)details;
- (id)debugDescription;
- (id)description;
- (id)outputDevices;
- (id)setVolume:(float)volume outputDeviceUID:(id)d details:(id)details;
- (id)uniqueIdentifier;
- (uint64_t)_onSerialQueue_calculateGroupVolumeMuted;
- (uint64_t)_onSerialQueue_calculateMasterVolumeCapabilities;
- (uint64_t)_onSerialQueue_isLocalOutputDevice:(uint64_t)device;
- (unsigned)volumeControlCapabilities;
- (void)_handleLocalDeviceVolumeControlCapabilitiesDidChangeNotification:(id)notification;
- (void)_handleLocalDeviceVolumeDidChangeNotification:(id)notification;
- (void)_handleLocalDeviceVolumeMutedDidChangeNotification:(id)notification;
- (void)_handleOutputDeviceAddedNotification:(id)notification;
- (void)_handleOutputDeviceDidChangeNotification:(id)notification;
- (void)_handleOutputDeviceRemovedNotification:(id)notification;
- (void)_handleOutputDeviceVolumeControlCapabilitiesDidChangeNotification:(id)notification;
- (void)_handleOutputDeviceVolumeDidChangeNotification:(id)notification;
- (void)_handleOutputDeviceVolumeMutedDidChangeNotification:(id)notification;
- (void)_handleOutputDevicesReloadedNotification:(id)notification;
- (void)_handlePredictedOutputDeviceDidChangeNotification:(id)notification;
- (void)_inititalizeVolume;
- (void)_onSerialQueue_reevaluateGroupVolume;
- (void)_onSerialQueue_reevaluateGroupVolumeControlCapabilities;
- (void)_onSerialQueue_reevaluateGroupVolumeMuted;
- (void)_registerNotifications;
- (void)dealloc;
- (void)modifyTopologyWithRequest:(id)request completion:(id)completion;
- (void)setDesignatedGroupLeaderWhenContextEmpty:(id)empty;
- (void)setLocalVolume:(float)volume;
- (void)setLocalVolumeControlCapabilities:(unsigned int)capabilities;
- (void)setLocalVolumeMuted:(BOOL)muted;
@end

@implementation MROutputContextController

- (id)outputDevices
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__9;
  v10 = __Block_byref_object_dispose__9;
  outputDevices = [(MRAVOutputContext *)self->_outputContext outputDevices];
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v4 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v4;
}

void __42__MROutputContextController_outputDevices__block_invoke(uint64_t a1)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v2 = [(MROutputContextController *)*(a1 + 32) _onSerialQueue_localOutputDevice];
  v3 = v2;
  if (v2)
  {
    v4 = *(*(*(a1 + 40) + 8) + 40);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __42__MROutputContextController_outputDevices__block_invoke_2;
    v13[3] = &unk_1E769B6F8;
    v5 = v2;
    v14 = v5;
    v6 = [v4 msv_map:v13];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    if (![*(*(*(a1 + 40) + 8) + 40) count])
    {
      if ([*(a1 + 32) isLocalDeviceDesignatedGroupLeader])
      {
        v15[0] = v5;
        v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
        v10 = *(*(a1 + 40) + 8);
        v11 = *(v10 + 40);
        *(v10 + 40) = v9;
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)_onSerialQueue_localOutputDevice
{
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 64));
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __61__MROutputContextController__onSerialQueue_localOutputDevice__block_invoke;
    v14[3] = &unk_1E769CFE8;
    v14[4] = self;
    v14[5] = sel__onSerialQueue_localOutputDevice;
    v2 = MEMORY[0x1A58E3570](v14);
    outputDevicesSnapshot = [*(self + 24) outputDevicesSnapshot];
    if ([self isOutputContextEmpty])
    {
      if (![self isLocalDeviceDesignatedGroupLeader])
      {
        goto LABEL_5;
      }

      v4 = +[MRAVOutputContext sharedSystemAudioContext];
      outputDevices = [v4 outputDevices];
      v6 = [outputDevices msv_firstWhere:&__block_literal_global_303];

      if (!v6)
      {
        goto LABEL_5;
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_3();
      v10 = 3221225472;
      v11 = __61__MROutputContextController__onSerialQueue_localOutputDevice__block_invoke_3;
      v12 = &unk_1E769CDC0;
      selfCopy = self;
      v6 = [outputDevicesSnapshot msv_firstWhere:v9];
      if (!v6)
      {
LABEL_5:
        v7 = 0;
LABEL_8:

        goto LABEL_9;
      }
    }

    v7 = (v2)[2](v2, v6);

    goto LABEL_8;
  }

  v7 = 0;
LABEL_9:

  return v7;
}

- (BOOL)isOutputContextEmpty
{
  outputDevices = [(MRAVOutputContext *)self->_outputContext outputDevices];
  v3 = [outputDevices count] == 0;

  return v3;
}

MRAVDistantOutputDevice *__61__MROutputContextController__onSerialQueue_localOutputDevice__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    __61__MROutputContextController__onSerialQueue_localOutputDevice__block_invoke_cold_1(a1);
  }

  v4 = [v3 descriptor];
  v5 = v4;
  if ((*(*(a1 + 32) + 80) & 2) != 0)
  {
    [v4 setIsVolumeControlAvailable:1];
    LODWORD(v6) = *(*(a1 + 32) + 76);
    [v5 setVolume:v6];
    [v5 setVolumeMuted:*(*(a1 + 32) + 72)];
  }

  else
  {
    [v4 setIsVolumeControlAvailable:0];
    [v5 setHasIsVolumeControlAvailable:0];
    [v5 setVolume:0.0];
    [v5 setHasVolume:0];
    [v5 setVolumeMuted:0];
    [v5 setHasVolumeMuted:0];
  }

  [v5 setVolumeCapabilities:*(*(a1 + 32) + 80)];
  v7 = [[MRAVDistantOutputDevice alloc] initWithDescriptor:v5];

  return v7;
}

void *__42__MROutputContextController_outputDevices__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 uid];
  v6 = [v4 uid];
  v7 = v4;
  if ([v5 isEqualToString:v6])
  {
    v7 = *(a1 + 32);
  }

  v8 = v7;

  return v7;
}

+ (id)sharedOutputContextController
{
  if (sharedOutputContextController___once != -1)
  {
    +[MROutputContextController sharedOutputContextController];
  }

  v3 = sharedOutputContextController___outputContextController;

  return v3;
}

void __58__MROutputContextController_sharedOutputContextController__block_invoke()
{
  v0 = [MRSharedOutputContextController alloc];
  v3 = +[MRAVOutputContext sharedAudioPresentationContext];
  v1 = [(MROutputContextController *)v0 initWithOutputContext:v3];
  v2 = sharedOutputContextController___outputContextController;
  sharedOutputContextController___outputContextController = v1;
}

- (void)_inititalizeVolume
{
  v39 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v3 = *(self + 48);
    *(self + 48) = v2;

    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5 = *(self + 56);
    *(self + 56) = v4;

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    outputDevices = [*(self + 24) outputDevices];
    v7 = [outputDevices countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v35;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v35 != v9)
          {
            objc_enumerationMutation(outputDevices);
          }

          v11 = *(*(&v34 + 1) + 8 * i);
          if ([v11 isVolumeControlAvailable])
          {
            v12 = [v11 uid];
            if (v12)
            {
              v13 = *(self + 48);
              v14 = MEMORY[0x1E696AD98];
              [v11 volume];
              v15 = [v14 numberWithFloat:?];
              [v13 setObject:v15 forKey:v12];

              v16 = *(self + 56);
              v17 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v11, "isVolumeMuted")}];
              [v16 setObject:v17 forKey:v12];
            }
          }
        }

        v8 = [outputDevices countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v8);
    }

    v18 = *(self + 64);
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __47__MROutputContextController__inititalizeVolume__block_invoke;
    v33[3] = &unk_1E769D010;
    v33[4] = self;
    MRMediaRemoteGetMediaPlaybackVolume(v18, v33);
    v19 = +[MROrigin localOrigin];
    v20 = *(self + 64);
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __47__MROutputContextController__inititalizeVolume__block_invoke_306;
    v32[3] = &unk_1E769D038;
    v32[4] = self;
    MRMediaRemoteGetPickedRoutedVolumeControlCapabilities(v19, v20, v32);

    v21 = *(self + 64);
    OUTLINED_FUNCTION_16();
    v28 = 3221225472;
    v29 = __47__MROutputContextController__inititalizeVolume__block_invoke_308;
    v30 = &unk_1E769D060;
    selfCopy = self;
    MRMediaRemoteGetSystemVolumeMuted(v22, v27);
    v23 = *(self + 64);
    OUTLINED_FUNCTION_1_0();
    v26[1] = 3221225472;
    v26[2] = __47__MROutputContextController__inititalizeVolume__block_invoke_310;
    v26[3] = &unk_1E769A228;
    v26[4] = self;
    dispatch_async(v24, v26);
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)_registerNotifications
{
  if (self)
  {
    MRMediaRemoteSetWantsVolumeControlNotifications(1);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__handleLocalDeviceVolumeDidChangeNotification_ name:@"kMRMediaRemotePickedRouteVolumeDidChangeNotification" object:0];
    [defaultCenter addObserver:self selector:sel__handleLocalDeviceVolumeControlCapabilitiesDidChangeNotification_ name:@"kMRMediaRemotePickedRouteVolumeControlAvailabilityDidChangeNotification" object:0];
    v2 = [defaultCenter addObserver:self selector:sel__handleLocalDeviceVolumeMutedDidChangeNotification_ name:@"MRMediaRemotePickedRouteVolumeMutedDidChangeNotification" object:0];
    v8 = OUTLINED_FUNCTION_11_0(v2, v3, v4, sel__handleOutputDeviceVolumeDidChangeNotification_, @"MRAVOutputContextVolumeDidChangeNotification", v5, v6, v7, v50, defaultCenter);
    v14 = OUTLINED_FUNCTION_11_0(v8, v9, v10, sel__handleOutputDeviceVolumeControlCapabilitiesDidChangeNotification_, @"MRAVOutputContextVolumeControlCapabilitiesDidChangeNotification", v11, v12, v13, v51, v59);
    v20 = OUTLINED_FUNCTION_11_0(v14, v15, v16, sel__handleOutputDeviceVolumeMutedDidChangeNotification_, @"MRAVOutputContextVolumeMutedDidChangeNotification", v17, v18, v19, v52, v60);
    v26 = OUTLINED_FUNCTION_11_0(v20, v21, v22, sel__handleOutputDeviceAddedNotification_, @"MRAVOutputContextDidAddOutputDeviceNotification", v23, v24, v25, v53, v61);
    v32 = OUTLINED_FUNCTION_11_0(v26, v27, v28, sel__handleOutputDeviceDidChangeNotification_, @"MRAVOutputContextOutputDeviceDidChangeNotification", v29, v30, v31, v54, v62);
    v38 = OUTLINED_FUNCTION_11_0(v32, v33, v34, sel__handleOutputDeviceRemovedNotification_, @"MRAVOutputContextDidRemoveOutputDeviceNotification", v35, v36, v37, v55, v63);
    v44 = OUTLINED_FUNCTION_11_0(v38, v39, v40, sel__handleOutputDevicesReloadedNotification_, @"kMRAVOutputContextDevicesDidChangeNotification", v41, v42, v43, v56, v64);
    OUTLINED_FUNCTION_11_0(v44, v45, v46, sel__handlePredictedOutputDeviceDidChangeNotification_, @"kMRAVOutputContextPredictedOutputDeviceDidChangeNotification", v47, v48, v49, v57, v65);
  }
}

- (void)_onSerialQueue_reevaluateGroupVolumeControlCapabilities
{
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 64));
    _onSerialQueue_calculateMasterVolumeCapabilities = [(MROutputContextController *)self _onSerialQueue_calculateMasterVolumeCapabilities];
    if (_onSerialQueue_calculateMasterVolumeCapabilities != *(self + 36))
    {
      *(self + 36) = _onSerialQueue_calculateMasterVolumeCapabilities;
      v3 = *(self + 36);
      v4 = OUTLINED_FUNCTION_35();

      [(MROutputContextDataSource *)v4 notifyVolumeCapabilitiesDidChange:v5 outputDevice:v6];
    }
  }
}

- (uint64_t)_onSerialQueue_calculateMasterVolumeCapabilities
{
  v39 = *MEMORY[0x1E69E9840];
  if (self)
  {
    dispatch_assert_queue_V2(self[8]);
    outputDevices = [(dispatch_queue_t *)self outputDevices];
    v4 = OUTLINED_FUNCTION_13_0(outputDevices, v3);
    if (v4)
    {
      v12 = v4;
      LODWORD(v13) = 0;
      OUTLINED_FUNCTION_32(v4, v5, v6, v7, v8, v9, v10, v11, v26, v28, v30);
      do
      {
        v22 = 0;
        do
        {
          OUTLINED_FUNCTION_14_0(volumeCapabilities, v15, v16, v17, v18, v19, v20, v21, v27, v29, v31);
          if (!v23)
          {
            objc_enumerationMutation(self);
          }

          volumeCapabilities = [*(v29 + 8 * v22) volumeCapabilities];
          v13 = volumeCapabilities | v13;
          ++v22;
        }

        while (v12 != v22);
        volumeCapabilities = OUTLINED_FUNCTION_12_0(volumeCapabilities, v15, v16, v17, v18, v19, v20, v21, v27, v29, v31, v32, v33, v34, v35, v36, v37, v38);
        v12 = volumeCapabilities;
      }

      while (volumeCapabilities);
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v24 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)_onSerialQueue_reevaluateGroupVolume
{
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 64));
    if ((*(self + 36) & 2) != 0)
    {
      _onSerialQueue_calculateMasterVolume = [(MROutputContextController *)self _onSerialQueue_calculateMasterVolume];
      v5 = OUTLINED_FUNCTION_36(_onSerialQueue_calculateMasterVolume);
      if (!(v7 ^ v8 | v6))
      {
        *(self + v4) = v5;
        v9 = *(self + *(v3 + 3416));

        [(MROutputContextDataSource *)self notifyVolumeDidChange:v9 outputDevice:?];
      }
    }
  }
}

- (void)_onSerialQueue_reevaluateGroupVolumeMuted
{
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 64));
    _onSerialQueue_calculateGroupVolumeMuted = [(MROutputContextController *)self _onSerialQueue_calculateGroupVolumeMuted];
    if (_onSerialQueue_calculateGroupVolumeMuted != *(self + 40))
    {
      *(self + 40) = _onSerialQueue_calculateGroupVolumeMuted;
      v3 = *(self + 40);
      v4 = OUTLINED_FUNCTION_35();

      [(MROutputContextDataSource *)v4 notifyVolumeMutedDidChange:v5 outputDevice:v6];
    }
  }
}

- (uint64_t)_onSerialQueue_calculateGroupVolumeMuted
{
  v39 = *MEMORY[0x1E69E9840];
  if (self)
  {
    dispatch_assert_queue_V2(self[8]);
    outputDevices = [(dispatch_queue_t *)self outputDevices];
    v4 = OUTLINED_FUNCTION_13_0(outputDevices, v3);
    v12 = v4;
    if (v4)
    {
      v13 = 0;
      OUTLINED_FUNCTION_32(v4, v5, v6, v7, v8, v9, v10, v11, v26, v28, v30);
      do
      {
        v22 = 0;
        do
        {
          OUTLINED_FUNCTION_14_0(isVolumeMuted, v15, v16, v17, v18, v19, v20, v21, v27, v29, v31);
          if (!v23)
          {
            objc_enumerationMutation(self);
          }

          isVolumeMuted = [*(v29 + 8 * v22) isVolumeMuted];
          v13 |= isVolumeMuted;
          ++v22;
        }

        while (v12 != v22);
        isVolumeMuted = OUTLINED_FUNCTION_12_0(isVolumeMuted, v15, v16, v17, v18, v19, v20, v21, v27, v29, v31, v32, v33, v34, v35, v36, v37, v38);
        v12 = isVolumeMuted;
      }

      while (isVolumeMuted);
      v12 = v13 & 1;
    }
  }

  else
  {
    v12 = 0;
  }

  v24 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t __47__MROutputContextController__inititalizeVolume__block_invoke(uint64_t result, float a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if ((*(*(result + 32) + 41) & 1) == 0)
  {
    v3 = result;
    v4 = _MRLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(v3 + 32);
      v6 = objc_opt_class();
      v7 = *(v3 + 32);
      v11 = 138543874;
      v12 = v6;
      v13 = 2048;
      v14 = v7;
      v15 = 2048;
      v16 = a2;
      v8 = v6;
      _os_log_impl(&dword_1A2860000, v4, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> Initializing volume with %f", &v11, 0x20u);
    }

    *&v9 = a2;
    result = [*(v3 + 32) setLocalVolume:v9];
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (float)_onSerialQueue_calculateMasterVolume
{
  v42 = *MEMORY[0x1E69E9840];
  if (self)
  {
    dispatch_assert_queue_V2(self[8]);
    outputDevices = [(dispatch_queue_t *)self outputDevices];
    v4 = OUTLINED_FUNCTION_13_0(outputDevices, v3);
    if (v4)
    {
      v12 = v4;
      OUTLINED_FUNCTION_32(v4, v5, v6, v7, v8, v9, v10, v11, v29, v31, v33);
      v21 = 0.0;
      do
      {
        v22 = 0;
        do
        {
          OUTLINED_FUNCTION_14_0(volume, v14, v15, v16, v17, v18, v19, v20, v30, v32, v34);
          if (!v23)
          {
            objc_enumerationMutation(self);
          }

          v24 = *(v32 + 8 * v22);
          volume = [v24 volume];
          if (v21 <= v25)
          {
            volume = [v24 volume];
            v21 = v26;
          }

          ++v22;
        }

        while (v12 != v22);
        volume = OUTLINED_FUNCTION_12_0(volume, v14, v15, v16, v17, v18, v19, v20, v30, v32, v34, v35, v36, v37, v38, v39, v40, v41);
        v12 = volume;
      }

      while (volume);
    }

    else
    {
      v21 = 0.0;
    }
  }

  else
  {
    v21 = 0.0;
  }

  v27 = *MEMORY[0x1E69E9840];
  return v21;
}

- (unsigned)volumeControlCapabilities
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v3;
}

- (float)volume
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = v6[6];
  _Block_object_dispose(&v5, 8);
  return v3;
}

float __35__MROutputContextController_volume__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 32);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void __40__MROutputContextController_description__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v12.receiver = *(a1 + 32);
  v12.super_class = MROutputContextController;
  v3 = objc_msgSendSuper2(&v12, sel_description);
  v4 = [*(*(a1 + 32) + 24) supportsVolumeControl];
  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = *(v5 + 76);
  v8 = MRMediaRemotePickedRouteVolumeControlCapabilitiesCopyDescription(*(v5 + 80));
  v9 = [v2 initWithFormat:@"%@ outputContextSupportsVolumeControl = %@ localVolume = %lf, localVolumeCapabilities = %@ localVolumeMute = %u", v3, v6, *&v7, v8, *(*(a1 + 32) + 72)];
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

- (BOOL)isVolumeMuted
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v3;
}

void __45__MROutputContextController_uniqueIdentifier__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) uniqueIdentifier];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)uniqueIdentifier
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__9;
  v9 = __Block_byref_object_dispose__9;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

- (id)description
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__9;
  v9 = __Block_byref_object_dispose__9;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

- (MROutputContextController)initWithOutputContext:(id)context
{
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = MROutputContextController;
  v6 = [(MROutputContextController *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_outputContext, context);
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.MediaRemote.MROutputContextController.serialQueue", v9);
    serialQueue = v7->_serialQueue;
    v7->_serialQueue = v10;

    [(MROutputContextDataSource *)v7 setShouldLog:MRProcessIsMediaRemoteDaemon()];
    [(MROutputContextController *)v7 _inititalizeVolume];
    [(MROutputContextController *)v7 _registerNotifications];
  }

  return v7;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = MROutputContextController;
  [(MROutputContextController *)&v4 dealloc];
}

- (id)debugDescription
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__9;
  v9 = __Block_byref_object_dispose__9;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

void __45__MROutputContextController_debugDescription__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v18.receiver = *(a1 + 32);
  v18.super_class = MROutputContextController;
  v3 = objc_msgSendSuper2(&v18, sel_debugDescription);
  v4 = *(a1 + 32);
  v5 = v4[11];
  if ([v4 isLocalDeviceDesignatedGroupLeader])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = [*(*(a1 + 32) + 24) supportsVolumeControl];
  v8 = *(a1 + 32);
  if (v7)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v10 = *(v8 + 76);
  v11 = MRMediaRemotePickedRouteVolumeControlCapabilitiesCopyDescription(*(v8 + 80));
  v12 = *(a1 + 32);
  v13 = *(v12 + 72);
  v14 = [*(v12 + 24) mr_formattedDebugDescription];
  v15 = [v2 initWithFormat:@"%@\n  designatedGroupLeader = %@\n  isLocalDeviceDesignatedGroupLeader = %@\n  outputContextSupportsVolumeControl = %@\n  localVolume = %lf\n  localVolumeCapabilities = %@\n  localVolumeMute = %u\n  OutputContext = %@\n", v3, v5, v6, v9, *&v10, v11, v13, v14];
  v16 = *(*(a1 + 40) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;
}

- (void)setDesignatedGroupLeaderWhenContextEmpty:(id)empty
{
  emptyCopy = empty;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__MROutputContextController_setDesignatedGroupLeaderWhenContextEmpty___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v7[4] = self;
  v8 = emptyCopy;
  v6 = emptyCopy;
  dispatch_sync(serialQueue, v7);
}

- (id)_performOperationForOutputDeviceUID:(uint64_t)d withCapabilities:(void *)capabilities systemOperation:(void *)operation deviceOperation:(void *)deviceOperation groupOperation:
{
  v10 = a2;
  capabilitiesCopy = capabilities;
  operationCopy = operation;
  deviceOperationCopy = deviceOperation;
  if (self)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__9;
    v25 = __Block_byref_object_dispose__9;
    v26 = 0;
    v14 = *(self + 64);
    v17 = v10;
    v18 = capabilitiesCopy;
    v19 = operationCopy;
    v20 = deviceOperationCopy;
    msv_dispatch_sync_on_queue();
    v15 = v22[5];

    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)setVolume:(float)volume outputDeviceUID:(id)d details:(id)details
{
  v68 = *MEMORY[0x1E69E9840];
  dCopy = d;
  detailsCopy = details;
  v10 = [MEMORY[0x1E695DF00] now];
  v11 = @"outputContextController.setOutputDeviceVolume";
  if (!dCopy)
  {
    v11 = @"outputContextController.setVolume";
  }

  v12 = v11;
  v13 = objc_alloc(MEMORY[0x1E696AEC0]);
  v14 = objc_opt_class();
  uniqueIdentifier = [(MROutputContextController *)self uniqueIdentifier];
  v16 = uniqueIdentifier;
  volumeCopy = volume;
  if (dCopy)
  {
    volume = [v13 initWithFormat:@"<%@:%p> endpont=%@, outputDevice=%@ -> volume=%lf", volumeCopy, v14, self, uniqueIdentifier, dCopy, volume];
  }

  else
  {
    volume = [v13 initWithFormat:@"<%@:%p> endpoint=%@ -> volume=%lf", volumeCopy, v14, self, uniqueIdentifier, volume, v46];
  }

  v19 = volume;

  v20 = objc_alloc(MEMORY[0x1E696AD60]);
  requestID = [detailsCopy requestID];
  v22 = [v20 initWithFormat:@"%@<%@>", v12, requestID];

  if (v19)
  {
    [(__CFString *)v22 appendFormat:@" for %@", v19];
  }

  v23 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v59 = v22;
    _os_log_impl(&dword_1A2860000, v23, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __63__MROutputContextController_setVolume_outputDeviceUID_details___block_invoke;
  v56[3] = &__block_descriptor_36_e5_v8__0l;
  volumeCopy2 = volume;
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __63__MROutputContextController_setVolume_outputDeviceUID_details___block_invoke_2;
  v53[3] = &unk_1E769CE28;
  volumeCopy3 = volume;
  v54 = detailsCopy;
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __63__MROutputContextController_setVolume_outputDeviceUID_details___block_invoke_3;
  v50[3] = &unk_1E769CF28;
  volumeCopy4 = volume;
  v24 = v54;
  v51 = v24;
  v25 = [(MROutputContextController *)self _performOperationForOutputDeviceUID:dCopy withCapabilities:2 systemOperation:v56 deviceOperation:v53 groupOperation:v50];
  v26 = _MRLogForCategory(0xAuLL);
  v27 = v26;
  if (v25)
  {
    v28 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    if (v19)
    {
      if (v28)
      {
        requestID2 = [v24 requestID];
        date = [MEMORY[0x1E695DF00] date];
        [date timeIntervalSinceDate:v10];
        *buf = 138544386;
        v59 = v12;
        v60 = 2114;
        v29 = requestID2;
        selfCopy = requestID2;
        v62 = 2114;
        selfCopy2 = v25;
        v64 = 2114;
        v65 = v19;
        v66 = 2048;
        v67 = v30;
        v31 = "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds";
        v32 = v27;
        v33 = 52;
LABEL_28:
        _os_log_error_impl(&dword_1A2860000, v32, OS_LOG_TYPE_ERROR, v31, buf, v33);
      }
    }

    else if (v28)
    {
      requestID3 = [v24 requestID];
      date = [MEMORY[0x1E695DF00] date];
      [date timeIntervalSinceDate:v10];
      *buf = 138544130;
      v59 = v12;
      v60 = 2114;
      v29 = requestID3;
      selfCopy = requestID3;
      v62 = 2114;
      selfCopy2 = v25;
      v64 = 2048;
      v65 = v45;
      v31 = "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds";
      v32 = v27;
      v33 = 42;
      goto LABEL_28;
    }

    v27 = _MRLogForCategory(0);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    v41 = objc_opt_class();
    *buf = 138543874;
    v59 = v41;
    v60 = 2048;
    selfCopy = self;
    v62 = 2114;
    selfCopy2 = self;
    requestID4 = v41;
    _os_log_impl(&dword_1A2860000, v27, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> Existing State: %{public}@", buf, 0x20u);
    goto LABEL_23;
  }

  v34 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
  if (v19)
  {
    if (!v34)
    {
      goto LABEL_24;
    }

    requestID4 = [v24 requestID];
    date2 = [MEMORY[0x1E695DF00] date];
    [date2 timeIntervalSinceDate:v10];
    *buf = 138544130;
    v59 = v12;
    v60 = 2114;
    selfCopy = requestID4;
    v62 = 2114;
    selfCopy2 = v19;
    v64 = 2048;
    v65 = v37;
    v38 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
    v39 = v27;
    v40 = 42;
  }

  else
  {
    if (!v34)
    {
      goto LABEL_24;
    }

    requestID4 = [v24 requestID];
    date2 = [MEMORY[0x1E695DF00] date];
    [date2 timeIntervalSinceDate:v10];
    *buf = 138543874;
    v59 = v12;
    v60 = 2114;
    selfCopy = requestID4;
    v62 = 2048;
    selfCopy2 = v42;
    v38 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
    v39 = v27;
    v40 = 32;
  }

  _os_log_impl(&dword_1A2860000, v39, OS_LOG_TYPE_DEFAULT, v38, buf, v40);

LABEL_23:
LABEL_24:

  v43 = *MEMORY[0x1E69E9840];

  return v25;
}

- (id)adjustVolume:(int64_t)volume outputDeviceUID:(id)d details:(id)details
{
  v65 = *MEMORY[0x1E69E9840];
  dCopy = d;
  detailsCopy = details;
  v10 = [MEMORY[0x1E695DF00] now];
  v11 = @"outputContextController.adjustOutputDeviceVolume";
  if (!dCopy)
  {
    v11 = @"outputContextController.adjustVolume";
  }

  v12 = v11;
  v13 = objc_alloc(MEMORY[0x1E696AEC0]);
  v14 = objc_opt_class();
  uniqueIdentifier = [(MROutputContextController *)self uniqueIdentifier];
  v16 = MRMediaRemoteVolumeControlAdjustmentDescription(volume);
  v17 = v16;
  if (dCopy)
  {
    v18 = [v13 initWithFormat:@"<%@:%p> endpont=%@, outputDevice=%@ -> adjustment=%@", v14, self, uniqueIdentifier, dCopy, v16];
  }

  else
  {
    v18 = [v13 initWithFormat:@"<%@:%p> endpoint=%@ -> adjustment=%@", v14, self, uniqueIdentifier, v16, v46];
  }

  v19 = v18;

  v20 = objc_alloc(MEMORY[0x1E696AD60]);
  requestID = [detailsCopy requestID];
  v22 = [v20 initWithFormat:@"%@<%@>", v12, requestID];

  if (v19)
  {
    [(__CFString *)v22 appendFormat:@" for %@", v19];
  }

  v23 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v56 = v22;
    _os_log_impl(&dword_1A2860000, v23, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __66__MROutputContextController_adjustVolume_outputDeviceUID_details___block_invoke;
  v54[3] = &__block_descriptor_40_e5_v8__0l;
  v54[4] = volume;
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __66__MROutputContextController_adjustVolume_outputDeviceUID_details___block_invoke_2;
  v51[3] = &unk_1E769CF50;
  volumeCopy = volume;
  v52 = detailsCopy;
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __66__MROutputContextController_adjustVolume_outputDeviceUID_details___block_invoke_3;
  v48[3] = &unk_1E769CF78;
  volumeCopy2 = volume;
  v24 = v52;
  v49 = v24;
  v25 = [(MROutputContextController *)self _performOperationForOutputDeviceUID:dCopy withCapabilities:4 systemOperation:v54 deviceOperation:v51 groupOperation:v48];
  v26 = _MRLogForCategory(0xAuLL);
  v27 = v26;
  if (v25)
  {
    v28 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    if (v19)
    {
      if (v28)
      {
        requestID2 = [v24 requestID];
        date = [MEMORY[0x1E695DF00] date];
        [date timeIntervalSinceDate:v10];
        *buf = 138544386;
        v56 = v12;
        v57 = 2114;
        selfCopy = requestID2;
        v59 = 2114;
        selfCopy2 = v25;
        v61 = 2114;
        v62 = v19;
        v63 = 2048;
        v64 = v30;
        v31 = "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds";
        v32 = v27;
        v33 = 52;
LABEL_28:
        _os_log_error_impl(&dword_1A2860000, v32, OS_LOG_TYPE_ERROR, v31, buf, v33);
      }
    }

    else if (v28)
    {
      requestID2 = [v24 requestID];
      date = [MEMORY[0x1E695DF00] date];
      [date timeIntervalSinceDate:v10];
      *buf = 138544130;
      v56 = v12;
      v57 = 2114;
      selfCopy = requestID2;
      v59 = 2114;
      selfCopy2 = v25;
      v61 = 2048;
      v62 = v45;
      v31 = "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds";
      v32 = v27;
      v33 = 42;
      goto LABEL_28;
    }

    v27 = _MRLogForCategory(0);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    v41 = objc_opt_class();
    *buf = 138543874;
    v56 = v41;
    v57 = 2048;
    selfCopy = self;
    v59 = 2114;
    selfCopy2 = self;
    requestID3 = v41;
    _os_log_impl(&dword_1A2860000, v27, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> Existing State: %{public}@", buf, 0x20u);
    goto LABEL_23;
  }

  v34 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
  if (v19)
  {
    if (!v34)
    {
      goto LABEL_24;
    }

    requestID3 = [v24 requestID];
    date2 = [MEMORY[0x1E695DF00] date];
    [date2 timeIntervalSinceDate:v10];
    *buf = 138544130;
    v56 = v12;
    v57 = 2114;
    selfCopy = requestID3;
    v59 = 2114;
    selfCopy2 = v19;
    v61 = 2048;
    v62 = v37;
    v38 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
    v39 = v27;
    v40 = 42;
  }

  else
  {
    if (!v34)
    {
      goto LABEL_24;
    }

    requestID3 = [v24 requestID];
    date2 = [MEMORY[0x1E695DF00] date];
    [date2 timeIntervalSinceDate:v10];
    *buf = 138543874;
    v56 = v12;
    v57 = 2114;
    selfCopy = requestID3;
    v59 = 2048;
    selfCopy2 = v42;
    v38 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
    v39 = v27;
    v40 = 32;
  }

  _os_log_impl(&dword_1A2860000, v39, OS_LOG_TYPE_DEFAULT, v38, buf, v40);

LABEL_23:
LABEL_24:

  v43 = *MEMORY[0x1E69E9840];

  return v25;
}

- (void)modifyTopologyWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  outputContext = self->_outputContext;
  serialQueue = self->_serialQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66__MROutputContextController_modifyTopologyWithRequest_completion___block_invoke;
  v10[3] = &unk_1E769AB50;
  v10[4] = self;
  v11 = completionCopy;
  v9 = completionCopy;
  [(MRAVOutputContext *)outputContext modifyTopologyWithRequest:request withReplyQueue:serialQueue completion:v10];
}

void __66__MROutputContextController_modifyTopologyWithRequest_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 40))
  {
    v4 = [*(a1 + 32) notificationQueue];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __66__MROutputContextController_modifyTopologyWithRequest_completion___block_invoke_2;
    v5[3] = &unk_1E769AB28;
    v7 = *(a1 + 40);
    v6 = v3;
    dispatch_async(v4, v5);
  }
}

- (void)_handleLocalDeviceVolumeDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"kMRMediaRemoteOriginUserInfoKey"];

  if ([v6 isLocal])
  {
    serialQueue = self->_serialQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __75__MROutputContextController__handleLocalDeviceVolumeDidChangeNotification___block_invoke;
    v8[3] = &unk_1E769A4A0;
    v8[4] = self;
    v9 = notificationCopy;
    dispatch_async(serialQueue, v8);
  }
}

void __75__MROutputContextController__handleLocalDeviceVolumeDidChangeNotification___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 40) userInfo];
  v2 = [v3 objectForKeyedSubscript:@"kMRMediaRemotePickedRouteVolumeUserInfoKey"];
  [v2 floatValue];
  [*(a1 + 32) setLocalVolume:?];
}

- (void)_handleLocalDeviceVolumeControlCapabilitiesDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"kMRMediaRemoteOriginUserInfoKey"];

  if ([v6 isLocal])
  {
    serialQueue = self->_serialQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __94__MROutputContextController__handleLocalDeviceVolumeControlCapabilitiesDidChangeNotification___block_invoke;
    v8[3] = &unk_1E769A4A0;
    v8[4] = self;
    v9 = notificationCopy;
    dispatch_async(serialQueue, v8);
  }
}

void __94__MROutputContextController__handleLocalDeviceVolumeControlCapabilitiesDidChangeNotification___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 40) userInfo];
  v2 = [v3 objectForKeyedSubscript:@"kMRMediaRemotePickedRouteVolumeControlCapabilitiesUserInfoKey"];
  [*(a1 + 32) setLocalVolumeControlCapabilities:{objc_msgSend(v2, "intValue")}];
}

- (void)_handleLocalDeviceVolumeMutedDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"kMRMediaRemoteOriginUserInfoKey"];

  if ([v6 isLocal])
  {
    serialQueue = self->_serialQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __80__MROutputContextController__handleLocalDeviceVolumeMutedDidChangeNotification___block_invoke;
    v8[3] = &unk_1E769A4A0;
    v8[4] = self;
    v9 = notificationCopy;
    dispatch_async(serialQueue, v8);
  }
}

void __80__MROutputContextController__handleLocalDeviceVolumeMutedDidChangeNotification___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 40) userInfo];
  v2 = [v3 objectForKeyedSubscript:@"_MRMediaRemotePickedRouteIsMutedUserInfoKey"];
  [*(a1 + 32) setLocalVolumeMuted:{objc_msgSend(v2, "BOOLValue")}];
}

- (void)_handleOutputDeviceVolumeControlCapabilitiesDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __95__MROutputContextController__handleOutputDeviceVolumeControlCapabilitiesDidChangeNotification___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(serialQueue, v7);
}

- (void)_handleOutputDeviceVolumeDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __76__MROutputContextController__handleOutputDeviceVolumeDidChangeNotification___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(serialQueue, v7);
}

- (void)_handleOutputDeviceVolumeMutedDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __81__MROutputContextController__handleOutputDeviceVolumeMutedDidChangeNotification___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(serialQueue, v7);
}

- (void)_handleOutputDeviceAddedNotification:(id)notification
{
  notificationCopy = notification;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__MROutputContextController__handleOutputDeviceAddedNotification___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(serialQueue, v7);
}

- (void)_handleOutputDeviceDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__MROutputContextController__handleOutputDeviceDidChangeNotification___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(serialQueue, v7);
}

- (void)_handleOutputDeviceRemovedNotification:(id)notification
{
  notificationCopy = notification;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__MROutputContextController__handleOutputDeviceRemovedNotification___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(serialQueue, v7);
}

- (void)_handleOutputDevicesReloadedNotification:(id)notification
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__MROutputContextController__handleOutputDevicesReloadedNotification___block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

- (void)_handlePredictedOutputDeviceDidChangeNotification:(id)notification
{
  v4 = MEMORY[0x1E695DF90];
  notificationCopy = notification;
  v6 = objc_alloc_init(v4);
  userInfo = [notificationCopy userInfo];

  v8 = [userInfo objectForKeyedSubscript:@"MRAVOutputContextOutputDeviceUserInfoKey"];

  [v6 setObject:v8 forKeyedSubscript:@"MROutputContextDataSourceOutputDeviceUserInfoKey"];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __79__MROutputContextController__handlePredictedOutputDeviceDidChangeNotification___block_invoke;
  v10[3] = &unk_1E769A4A0;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
}

void __79__MROutputContextController__handlePredictedOutputDeviceDidChangeNotification___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"MROutputContextDataSourceDidChangePredictedOutputDeviceNotification" object:*(a1 + 32) userInfo:*(a1 + 40)];
}

- (void)setLocalVolumeControlCapabilities:(unsigned int)capabilities
{
  v29 = *MEMORY[0x1E69E9840];
  if (-[MROutputContextDataSource shouldLog](self, "shouldLog") || (+[MRUserSettings currentSettings](MRUserSettings, "currentSettings"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 verboseOutputContextDataSourceLogging], v5, v6))
  {
    v7 = _MRLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = v8;
      v10 = MRMediaRemotePickedRouteVolumeControlCapabilitiesCopyDescription(capabilities);
      *&v23 = 5.8383e-34;
      v24 = v8;
      v25 = 2048;
      selfCopy = self;
      v27 = 2112;
      v28 = v10;
      _os_log_impl(&dword_1A2860000, v7, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> Observed localVolumeCapabilities changed to <%@>", &v23, 0x20u);
    }
  }

  else
  {
    v7 = _MRLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(MROutputContextController *)self setLocalVolumeControlCapabilities:capabilities];
    }
  }

  dispatch_assert_queue_V2(self->_serialQueue);
  localVolumeControlCapabilities = self->_localVolumeControlCapabilities;
  if (!self->_localVolumeControlCapabilitiesInitialized || localVolumeControlCapabilities != capabilities)
  {
    self->_localVolumeControlCapabilitiesInitialized = 1;
    self->_localVolumeControlCapabilities = capabilities;
    _onSerialQueue_localOutputDevice = [(MROutputContextController *)self _onSerialQueue_localOutputDevice];
    v15 = _onSerialQueue_localOutputDevice;
    if (_onSerialQueue_localOutputDevice)
    {
      volumeCapabilities = [_onSerialQueue_localOutputDevice volumeCapabilities];
      if (volumeCapabilities != self->_localVolumeControlCapabilities)
      {
        [MROutputContextController setLocalVolumeControlCapabilities:];
        volumeCapabilities = v23;
      }

      [(MROutputContextDataSource *)self notifyVolumeCapabilitiesDidChange:volumeCapabilities outputDevice:v15];
      [(MROutputContextController *)self _onSerialQueue_reevaluateGroupVolumeControlCapabilities];
      v17 = self->_localVolumeControlCapabilities;
      if ((v17 & 2) != 0 && (localVolumeControlCapabilities & 2) == 0 && self->_localVolumeInitialized)
      {
        [v15 volume];
        v19 = v18;
        localVolume = self->_localVolume;
        if (vabds_f32(v19, localVolume) >= 0.00000011921)
        {
          [MROutputContextController setLocalVolumeControlCapabilities:];
          localVolume = *&v23;
        }

        [(MROutputContextDataSource *)self notifyVolumeDidChange:v15 outputDevice:localVolume];
        v17 = self->_localVolumeControlCapabilities;
      }

      if ((v17 & 8) != 0 && (localVolumeControlCapabilities & 8) == 0 && self->_localVolumeMutedInitialized)
      {
        isVolumeMuted = [v15 isVolumeMuted];
        localVolumeMuted = self->_localVolumeMuted;
        if (localVolumeMuted != isVolumeMuted)
        {
          [MROutputContextController setLocalVolumeControlCapabilities:];
          localVolumeMuted = v23;
        }

        [(MROutputContextDataSource *)self notifyVolumeMutedDidChange:v15 outputDevice:?];
      }

      [(MROutputContextController *)self _onSerialQueue_reevaluateGroupVolume];
      [(MROutputContextController *)self _onSerialQueue_reevaluateGroupVolumeMuted];
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)setLocalVolume:(float)volume
{
  v19 = *MEMORY[0x1E69E9840];
  if (-[MROutputContextDataSource shouldLog](self, "shouldLog") || (+[MRUserSettings currentSettings](MRUserSettings, "currentSettings"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 verboseOutputContextDataSourceLogging], v6, v7))
  {
    v8 = _MRLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 138543874;
      *&v17[4] = objc_opt_class();
      *&v17[12] = 2048;
      *&v17[14] = self;
      *&v17[22] = 2048;
      volumeCopy = volume;
      v9 = *&v17[4];
      _os_log_impl(&dword_1A2860000, v8, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> Observed localVolume changed to <%f>", v17, 0x20u);
    }
  }

  else
  {
    v8 = _MRLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [MROutputContextController setLocalVolume:];
    }
  }

  dispatch_assert_queue_V2(self->_serialQueue);
  if (!self->_localVolumeInitialized || vabds_f32(volume, self->_localVolume) > 0.00000011921)
  {
    self->_localVolumeInitialized = 1;
    p_localVolume = &self->_localVolume;
    self->_localVolume = volume;
    _onSerialQueue_localOutputDevice = [(MROutputContextController *)self _onSerialQueue_localOutputDevice];
    v13 = _onSerialQueue_localOutputDevice;
    if (_onSerialQueue_localOutputDevice)
    {
      if ([_onSerialQueue_localOutputDevice volumeCapabilities] != self->_localVolumeControlCapabilities)
      {
        [(MROutputContextController *)a2 setLocalVolume:?];
      }

      if (([v13 volumeCapabilities] & 2) != 0)
      {
        [v13 volume];
        v15 = v14;
        v16 = *p_localVolume;
        if (vabds_f32(v15, *p_localVolume) >= 0.00000011921)
        {
          [MROutputContextController setLocalVolume:];
          v16 = *v17;
        }

        [(MROutputContextDataSource *)self notifyVolumeDidChange:v13 outputDevice:v16];
      }

      [(MROutputContextController *)self _onSerialQueue_reevaluateGroupVolume];
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)setLocalVolumeMuted:(BOOL)muted
{
  mutedCopy = muted;
  v19 = *MEMORY[0x1E69E9840];
  if (-[MROutputContextDataSource shouldLog](self, "shouldLog") || (+[MRUserSettings currentSettings](MRUserSettings, "currentSettings"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 verboseOutputContextDataSourceLogging], v5, v6))
  {
    v7 = _MRLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = @"NO";
      *v17 = 138543874;
      *&v17[4] = v8;
      if (mutedCopy)
      {
        v9 = @"YES";
      }

      *&v17[12] = 2048;
      *&v17[14] = self;
      *&v17[22] = 2112;
      v18 = v9;
      v10 = v8;
      _os_log_impl(&dword_1A2860000, v7, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> Observed localVolumeMuted changed to <%@>", v17, 0x20u);
    }
  }

  else
  {
    v7 = _MRLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [MROutputContextController setLocalVolumeMuted:];
    }
  }

  dispatch_assert_queue_V2(self->_serialQueue);
  if (!self->_localVolumeMutedInitialized || self->_localVolumeMuted != mutedCopy)
  {
    self->_localVolumeMutedInitialized = 1;
    self->_localVolumeMuted = mutedCopy;
    _onSerialQueue_localOutputDevice = [(MROutputContextController *)self _onSerialQueue_localOutputDevice];
    v13 = _onSerialQueue_localOutputDevice;
    if (!_onSerialQueue_localOutputDevice)
    {
LABEL_13:

      goto LABEL_11;
    }

    volumeCapabilities = [_onSerialQueue_localOutputDevice volumeCapabilities];
    if (volumeCapabilities == self->_localVolumeControlCapabilities)
    {
      if ((volumeCapabilities & 8) != 0)
      {
LABEL_16:
        isVolumeMuted = [v13 isVolumeMuted];
        localVolumeMuted = self->_localVolumeMuted;
        if (localVolumeMuted != isVolumeMuted)
        {
          [MROutputContextController setLocalVolumeMuted:];
          localVolumeMuted = v17[0];
        }

        [(MROutputContextDataSource *)self notifyVolumeMutedDidChange:v13 outputDevice:?];
      }
    }

    else
    {
      [MROutputContextController setLocalVolumeMuted:];
      if ((v17[0] & 8) != 0)
      {
        goto LABEL_16;
      }
    }

    [(MROutputContextController *)self _onSerialQueue_reevaluateGroupVolumeMuted];
    goto LABEL_13;
  }

LABEL_11:
  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __64__MROutputContextController__onSerialQueue_isLocalOutputDevice___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 uid];
  v5 = [v3 containsUID:v4];

  return v5;
}

uint64_t __47__MROutputContextController__inititalizeVolume__block_invoke_306(uint64_t result, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if ((*(*(result + 32) + 42) & 1) == 0)
  {
    v3 = result;
    v4 = _MRLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(v3 + 32);
      v6 = objc_opt_class();
      v7 = *(v3 + 32);
      v8 = v6;
      v9 = MRMediaRemotePickedRouteVolumeControlCapabilitiesCopyDescription(a2);
      v11 = 138543874;
      v12 = v6;
      v13 = 2048;
      v14 = v7;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&dword_1A2860000, v4, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> Initializing volumeCapabilities with %@", &v11, 0x20u);
    }

    result = [*(v3 + 32) setLocalVolumeControlCapabilities:a2];
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __47__MROutputContextController__inititalizeVolume__block_invoke_308(uint64_t result, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if ((*(*(result + 32) + 72) & 1) == 0)
  {
    v3 = result;
    v4 = _MRLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(v3 + 32);
      v6 = objc_opt_class();
      v7 = *(v3 + 32);
      v8 = @"NO";
      v11 = 138543874;
      v12 = v6;
      if (a2)
      {
        v8 = @"YES";
      }

      v13 = 2048;
      v14 = v7;
      v15 = 2112;
      v16 = v8;
      v9 = v6;
      _os_log_impl(&dword_1A2860000, v4, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> Initializing volumeMuted with %@", &v11, 0x20u);
    }

    result = [*(v3 + 32) setLocalVolumeMuted:a2];
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)_onSerialQueue_performOperationForOutputDeviceUID:(int)d withCapabilities:(void *)capabilities systemOperation:(void *)operation deviceOperation:(void *)deviceOperation groupOperation:
{
  v42 = *MEMORY[0x1E69E9840];
  v11 = a2;
  capabilitiesCopy = capabilities;
  operationCopy = operation;
  deviceOperationCopy = deviceOperation;
  if (!self)
  {
    goto LABEL_37;
  }

  dispatch_assert_queue_V2(*(self + 64));
  if (!v11)
  {
    OUTLINED_FUNCTION_37(36);
    if (v21)
    {
      v26 = 36;
    }

    else
    {
      if ([*(self + 24) supportsVolumeControl])
      {
        outputDevices = [*(self + 24) outputDevices];
        if ([outputDevices count] <= 1)
        {
          OUTLINED_FUNCTION_16();
          v33 = 3221225472;
          v34 = __143__MROutputContextController__onSerialQueue_performOperationForOutputDeviceUID_withCapabilities_systemOperation_deviceOperation_groupOperation___block_invoke;
          v35 = &unk_1E769CDC0;
          selfCopy = self;
          v24 = [outputDevices msv_firstWhere:v32];

          if (v24)
          {
            if (_onSerialQueue_performOperationForOutputDeviceUID_withCapabilities_systemOperation_deviceOperation_groupOperation__onceToken != -1)
            {
              dispatch_once(&_onSerialQueue_performOperationForOutputDeviceUID_withCapabilities_systemOperation_deviceOperation_groupOperation__onceToken, &__block_literal_global_227);
            }
          }
        }

        deviceOperationCopy[2](deviceOperationCopy, *(self + 24));

        goto LABEL_37;
      }

      OUTLINED_FUNCTION_37(80);
      if (!v21)
      {
        capabilitiesCopy[2]();
LABEL_37:
        Error = 0;
        goto LABEL_40;
      }

      v26 = 37;
    }

    Error = MRMediaRemoteCreateError(v26);
    goto LABEL_40;
  }

  v13 = [self outputDevicesForUID:v11];
  if ([v13 count])
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v29 = v13;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (!v15)
    {
      Error = 0;
      goto LABEL_32;
    }

    v16 = v15;
    Error = 0;
    v18 = *v38;
    while (1)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v38 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v37 + 1) + 8 * i);
        if ([(MROutputContextController *)self _onSerialQueue_isLocalOutputDevice:v20])
        {
          OUTLINED_FUNCTION_37(80);
          if (!v21)
          {
            capabilitiesCopy[2]();
            continue;
          }
        }

        else if (([v20 volumeCapabilities] & d) != 0)
        {
          operationCopy[2](operationCopy, v20);
          continue;
        }

        v22 = MRMediaRemoteCreateError(37);

        Error = v22;
      }

      v16 = [v14 countByEnumeratingWithState:&v37 objects:v41 count:16];
      if (!v16)
      {
LABEL_32:

        v13 = v29;
        goto LABEL_33;
      }
    }
  }

  if ([self isOutputContextEmpty] && objc_msgSend(self, "isLocalDeviceDesignatedGroupLeader"))
  {
    OUTLINED_FUNCTION_37(80);
    if (!v21)
    {
      capabilitiesCopy[2]();
      Error = 0;
      goto LABEL_33;
    }

    v25 = 37;
  }

  else
  {
    v25 = 39;
  }

  Error = MRMediaRemoteCreateError(v25);
LABEL_33:

LABEL_40:
  v27 = *MEMORY[0x1E69E9840];

  return Error;
}

- (uint64_t)_onSerialQueue_isLocalOutputDevice:(uint64_t)device
{
  v3 = a2;
  if (device)
  {
    if (([*(device + 24) supportsVolumeControl] & 1) == 0)
    {
      outputDevices = [*(device + 24) outputDevices];
      OUTLINED_FUNCTION_0_3();
      OUTLINED_FUNCTION_3_2();
      v9 = __64__MROutputContextController__onSerialQueue_isLocalOutputDevice___block_invoke;
      v10 = &unk_1E769CDC0;
      v11 = v3;
      v5 = [outputDevices msv_firstWhere:v8];
      if (v5)
      {

        device = 1;
        v6 = v11;
LABEL_10:

        goto LABEL_12;
      }
    }

    if ([v3 deviceType] != 1)
    {
      if (![v3 supportsBluetoothSharing])
      {
        device = 1;
        goto LABEL_12;
      }

      outputDevices = [*(device + 24) outputDevices];
      v6 = [outputDevices msv_filter:&__block_literal_global_299];
      device = [v6 count] < 2;
      goto LABEL_10;
    }

    device = 0;
  }

LABEL_12:

  return device;
}

void __129__MROutputContextController__performOperationForOutputDeviceUID_withCapabilities_systemOperation_deviceOperation_groupOperation___block_invoke(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_5_2(a1);
  v3 = [(MROutputContextController *)v2 _onSerialQueue_performOperationForOutputDeviceUID:*(v1 + 80) withCapabilities:*(v1 + 48) systemOperation:*(v1 + 56) deviceOperation:*(v1 + 64) groupOperation:?];
  v4 = *(*(v1 + 72) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __95__MROutputContextController__handleOutputDeviceVolumeControlCapabilitiesDidChangeNotification___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"MRAVOutputContextOutputDeviceUserInfoKey"];

  if (([(MROutputContextController *)*(a1 + 40) _onSerialQueue_isLocalOutputDevice:v3]& 1) == 0)
  {
    v5 = [*(a1 + 32) userInfo];
    v6 = [v5 objectForKeyedSubscript:@"MRAVOutputContextVolumeControlCapabilitiesUserInfoKey"];
    v7 = [v6 intValue];

    if (v3)
    {
      [(MROutputContextDataSource *)*(a1 + 40) notifyVolumeCapabilitiesDidChange:v7 outputDevice:v3];
      if ((v7 & 2) != 0)
      {
        v16 = *(a1 + 40);
        [v3 volume];
        [(MROutputContextDataSource *)v16 notifyVolumeDidChange:v3 outputDevice:v17];
      }

      if ((v7 & 8) != 0)
      {
        -[MROutputContextDataSource notifyVolumeMutedDidChange:outputDevice:](*(a1 + 40), [v3 isVolumeMuted], v3);
      }
    }

    else
    {
      v8 = [*(a1 + 40) outputDevices];
      v9 = [v8 countByEnumeratingWithState:v20 objects:v22 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v21;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v21 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(v20[1] + 8 * i);
            -[MROutputContextDataSource notifyVolumeCapabilitiesDidChange:outputDevice:](*(a1 + 40), [v13 volumeCapabilities], v13);
            if (([v13 volumeCapabilities] & 2) != 0)
            {
              v14 = *(a1 + 40);
              [v13 volume];
              [(MROutputContextDataSource *)v14 notifyVolumeDidChange:v13 outputDevice:v15];
            }

            if (([v13 volumeCapabilities] & 8) != 0)
            {
              -[MROutputContextDataSource notifyVolumeMutedDidChange:outputDevice:](*(a1 + 40), [v13 isVolumeMuted], v13);
            }
          }

          v10 = [v8 countByEnumeratingWithState:v20 objects:v22 count:16];
        }

        while (v10);
      }
    }

    [(MROutputContextController *)*(a1 + 40) _onSerialQueue_reevaluateGroupVolumeControlCapabilities];
    v18 = *(a1 + 40);
    v19 = *(v18 + 36);
    if ((v19 & 2) != 0)
    {
      [(MROutputContextController *)v18 _onSerialQueue_reevaluateGroupVolume];
      v18 = *(a1 + 40);
      if ((*(v18 + 36) & 8) == 0)
      {
        goto LABEL_2;
      }
    }

    else if ((v19 & 8) == 0)
    {
      goto LABEL_2;
    }

    [(MROutputContextController *)v18 _onSerialQueue_reevaluateGroupVolumeMuted];
  }

LABEL_2:

  v4 = *MEMORY[0x1E69E9840];
}

void __76__MROutputContextController__handleOutputDeviceVolumeDidChangeNotification___block_invoke(uint64_t a1)
{
  v2 = [OUTLINED_FUNCTION_5_2(a1) userInfo];
  v14 = [v2 objectForKeyedSubscript:@"MRAVOutputContextOutputDeviceUserInfoKey"];

  if (([(MROutputContextController *)*(v1 + 40) _onSerialQueue_isLocalOutputDevice:v14]& 1) == 0)
  {
    v3 = [*(v1 + 32) userInfo];
    v4 = [v3 objectForKeyedSubscript:@"MRAVOutputContextVolumeUserInfoKey"];
    [v4 floatValue];
    v6 = v5;

    v7 = [v14 uid];
    if (v7)
    {
      v8 = [*(*(v1 + 40) + 48) objectForKey:v7];
      [v8 floatValue];
      v10 = v9;

      if (vabds_f32(v10, v6) > 0.00000011921)
      {
        v12 = *(*(v1 + 40) + 48);
        *&v11 = v6;
        v13 = [MEMORY[0x1E696AD98] numberWithFloat:v11];
        [v12 setObject:v13 forKey:v7];

        goto LABEL_6;
      }
    }

    else if (vabds_f32(-1.0, v6) > 0.00000011921)
    {
LABEL_6:
      if (([v14 volumeCapabilities] & 2) != 0)
      {
        [(MROutputContextDataSource *)*(v1 + 40) notifyVolumeDidChange:v14 outputDevice:v6];
        [(MROutputContextController *)*(v1 + 40) _onSerialQueue_reevaluateGroupVolume];
      }
    }
  }
}

void __81__MROutputContextController__handleOutputDeviceVolumeMutedDidChangeNotification___block_invoke()
{
  OUTLINED_FUNCTION_40();
  v2 = [OUTLINED_FUNCTION_5_2(v1) userInfo];
  v12 = [v2 objectForKeyedSubscript:@"MRAVOutputContextOutputDeviceUserInfoKey"];

  if (([(MROutputContextController *)*(v0 + 40) _onSerialQueue_isLocalOutputDevice:v12]& 1) == 0)
  {
    v3 = [*(v0 + 32) userInfo];
    v4 = [v3 objectForKeyedSubscript:@"MRAVOutputContextVolumeMutedUserInfoKey"];
    v5 = [v4 BOOLValue];

    v6 = [v12 uid];
    if (v6)
    {
      v7 = [*(*(v0 + 40) + 56) objectForKey:v6];
      v8 = [v7 BOOLValue];

      if (v5 != v8)
      {
        v9 = *(*(v0 + 40) + 56);
        [MEMORY[0x1E696AD98] numberWithBool:v5];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_29() setObject:? forKey:?];

        goto LABEL_6;
      }
    }

    else if (v5)
    {
LABEL_6:
      if (([v12 volumeCapabilities] & 8) != 0)
      {
        [(MROutputContextDataSource *)*(v0 + 40) notifyVolumeMutedDidChange:v5 outputDevice:v12];
        [(MROutputContextController *)*(v0 + 40) _onSerialQueue_reevaluateGroupVolumeMuted];
      }
    }
  }

  OUTLINED_FUNCTION_39();
}

void __66__MROutputContextController__handleOutputDeviceAddedNotification___block_invoke(uint64_t a1)
{
  v2 = [OUTLINED_FUNCTION_5_2(a1) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"MRAVOutputContextOutputDeviceUserInfoKey"];

  v4 = [v3 uid];
  if (v4)
  {
    v5 = *(*(v1 + 40) + 48);
    v6 = MEMORY[0x1E696AD98];
    [v3 volume];
    [v6 numberWithFloat:?];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_29() setObject:? forKey:?];

    v7 = *(*(v1 + 40) + 56);
    v8 = MEMORY[0x1E696AD98];
    [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v3, "isVolumeMuted")}];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_29() setObject:? forKey:?];
  }

  v9 = [*(v1 + 40) outputDevices];
  v10 = [v9 mr_allOutputDevices];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3_2();
  v15 = __66__MROutputContextController__handleOutputDeviceAddedNotification___block_invoke_2;
  v16 = &unk_1E769CDC0;
  v17 = v3;
  v11 = v3;
  v12 = [v10 msv_firstWhere:v14];

  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v11;
  }

  [(MROutputContextDataSource *)*(v1 + 40) notifyOutputDeviceAdded:v13];
  [(MROutputContextController *)*(v1 + 40) _onSerialQueue_reevaluateGroupVolumeControlCapabilities];
  [(MROutputContextController *)*(v1 + 40) _onSerialQueue_reevaluateGroupVolume];
}

void __70__MROutputContextController__handleOutputDeviceDidChangeNotification___block_invoke(uint64_t a1)
{
  v2 = [OUTLINED_FUNCTION_5_2(a1) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"MRAVOutputContextOutputDeviceUserInfoKey"];

  v4 = [*(v1 + 40) outputDevices];
  v5 = [v4 mr_allOutputDevices];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3_2();
  v10 = __70__MROutputContextController__handleOutputDeviceDidChangeNotification___block_invoke_2;
  v11 = &unk_1E769CDC0;
  v12 = v3;
  v6 = v3;
  v7 = [v5 msv_firstWhere:v9];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  [(MROutputContextDataSource *)*(v1 + 40) notifyOutputDeviceChanged:v8];
}

void __68__MROutputContextController__handleOutputDeviceRemovedNotification___block_invoke(uint64_t a1)
{
  v2 = [OUTLINED_FUNCTION_5_2(a1) userInfo];
  v4 = [v2 objectForKeyedSubscript:@"MRAVOutputContextOutputDeviceUserInfoKey"];

  v3 = [v4 uid];
  if (v3)
  {
    [*(*(v1 + 40) + 48) removeObjectForKey:v3];
    [*(*(v1 + 40) + 56) removeObjectForKey:v3];
  }

  [(MROutputContextDataSource *)*(v1 + 40) notifyOutputDeviceRemoved:v4];
  [(MROutputContextController *)*(v1 + 40) _onSerialQueue_reevaluateGroupVolume];
  [(MROutputContextController *)*(v1 + 40) _onSerialQueue_reevaluateGroupVolumeControlCapabilities];
}

void __47__MROutputContextController__inititalizeVolume__block_invoke_310(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_5_2(a1);
  [(MROutputContextController *)v2 _onSerialQueue_reevaluateGroupVolumeControlCapabilities];
  [(MROutputContextController *)*(v1 + 32) _onSerialQueue_reevaluateGroupVolume];
  v3 = *(v1 + 32);

  [(MROutputContextController *)v3 _onSerialQueue_reevaluateGroupVolumeMuted];
}

- (void)setLocalVolumeControlCapabilities:(uint64_t)a1 .cold.1(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v11 = MRMediaRemotePickedRouteVolumeControlCapabilitiesCopyDescription(a2);
  OUTLINED_FUNCTION_23(&dword_1A2860000, v4, v5, "<%{public}@: %p> Observed localVolumeCapabilities changed to <%@>", v6, v7, v8, v9, 2u);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)setLocalVolumeControlCapabilities:.cold.2()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_7();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_24();
  [v3 handleFailureInMethod:? object:? file:? lineNumber:? description:?];

  *v0 = *v1;
  OUTLINED_FUNCTION_39();
}

- (void)setLocalVolumeControlCapabilities:.cold.3()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_7();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_24();
  [v3 handleFailureInMethod:? object:? file:? lineNumber:? description:?];

  *v0 = *v1;
  OUTLINED_FUNCTION_39();
}

- (void)setLocalVolumeControlCapabilities:.cold.4()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_7();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_24();
  [v3 handleFailureInMethod:? object:? file:? lineNumber:? description:?];

  *v0 = *v1 & 1;
  OUTLINED_FUNCTION_39();
}

- (void)setLocalVolume:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  OUTLINED_FUNCTION_23(&dword_1A2860000, v1, v2, "<%{public}@: %p> Observed localVolume changed to <%f>", v3, v4, v5, v6, 2u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setLocalVolume:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MROutputContextDataSource.m" lineNumber:1372 description:{@"Invalid parameter not satisfying: %@", @"localOutputDevice.volumeCapabilities == _localVolumeControlCapabilities"}];
}

- (void)setLocalVolume:.cold.3()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_7();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_24();
  [v3 handleFailureInMethod:? object:? file:? lineNumber:? description:?];

  *v0 = *v1;
  OUTLINED_FUNCTION_39();
}

- (void)setLocalVolumeMuted:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  OUTLINED_FUNCTION_23(&dword_1A2860000, v1, v2, "<%{public}@: %p> Observed localVolumeMuted changed to <%@>", v3, v4, v5, v6, 2u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setLocalVolumeMuted:.cold.2()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_7();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_24();
  [v3 handleFailureInMethod:? object:? file:? lineNumber:? description:?];

  *v0 = *v1;
  OUTLINED_FUNCTION_39();
}

- (void)setLocalVolumeMuted:.cold.3()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_7();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_24();
  [v3 handleFailureInMethod:? object:? file:? lineNumber:? description:?];

  *v0 = *v1 & 1;
  OUTLINED_FUNCTION_39();
}

void __61__MROutputContextController__onSerialQueue_localOutputDevice__block_invoke_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"MROutputContextDataSource.m" lineNumber:1511 description:{@"Invalid parameter not satisfying: %@", @"outputDevice"}];
}

@end