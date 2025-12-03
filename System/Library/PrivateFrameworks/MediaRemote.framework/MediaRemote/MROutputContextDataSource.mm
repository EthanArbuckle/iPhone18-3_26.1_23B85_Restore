@interface MROutputContextDataSource
+ (id)_notificationSerialQueue;
- (BOOL)isAirPlaying;
- (BOOL)volumeMutedForOutputDeviceID:(id)d error:(id *)error;
- (MRExternalOutputContextDataSource)externalOutputContextRepresentation;
- (OS_dispatch_queue)notificationQueue;
- (float)volumeForOutputDeviceUID:(id)d error:(id *)error;
- (id)debugDescription;
- (id)description;
- (id)descriptionForOutputDevice:(uint64_t)device;
- (id)outputDevicesForUID:(id)d;
- (unsigned)volumeControlCapabilitiesForOutputDeviceUID:(id)d error:(id *)error;
- (void)notifyDataSourceReloaded;
- (void)notifyOutputDeviceAdded:(void *)added;
- (void)notifyOutputDeviceChanged:(void *)changed;
- (void)notifyOutputDeviceRemoved:(void *)removed;
- (void)notifyVolumeCapabilitiesDidChange:(void *)change outputDevice:;
- (void)notifyVolumeDidChange:(float)change outputDevice:;
- (void)notifyVolumeMutedDidChange:(void *)change outputDevice:;
- (void)setNotificationQueue:(id)queue;
@end

@implementation MROutputContextDataSource

- (OS_dispatch_queue)notificationQueue
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  notificationQueue = selfCopy->_notificationQueue;
  if (notificationQueue)
  {
    v4 = notificationQueue;
  }

  else
  {
    objc_opt_class();
    v4 = +[MROutputContextDataSource _notificationSerialQueue];
  }

  v5 = v4;
  objc_sync_exit(selfCopy);

  return v5;
}

+ (id)_notificationSerialQueue
{
  objc_opt_self();
  if (_notificationSerialQueue___once_0 != -1)
  {
    +[MROutputContextDataSource _notificationSerialQueue];
  }

  v0 = _notificationSerialQueue___notificationSerialQueue_0;

  return v0;
}

void __53__MROutputContextDataSource__notificationSerialQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.MediaRemote.MROutputContextDataSource.NotificationQueue", v2);
  v1 = _notificationSerialQueue___notificationSerialQueue_0;
  _notificationSerialQueue___notificationSerialQueue_0 = v0;
}

void __53__MROutputContextDataSource_notifyDataSourceReloaded__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"MROutputContextDataSourceDidReloadNotification" object:*(a1 + 32) userInfo:0];
}

- (void)notifyDataSourceReloaded
{
  if (self)
  {
    notificationQueue = [self notificationQueue];
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_3_2();
    v5 = __53__MROutputContextDataSource_notifyDataSourceReloaded__block_invoke;
    v6 = &unk_1E769A228;
    selfCopy = self;
    dispatch_async(v3, block);
  }
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  uniqueIdentifier = [(MROutputContextDataSource *)self uniqueIdentifier];
  if ([(MROutputContextDataSource *)self isAirPlaying])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  [(MROutputContextDataSource *)self volume];
  v7 = v6;
  if ([(MROutputContextDataSource *)self isVolumeMuted])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v9 = MRMediaRemotePickedRouteVolumeControlCapabilitiesCopyDescription([(MROutputContextDataSource *)self volumeControlCapabilities]);
  outputDevices = [(MROutputContextDataSource *)self outputDevices];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __40__MROutputContextDataSource_description__block_invoke;
  v15[3] = &unk_1E769B6F8;
  v15[4] = self;
  v11 = [outputDevices msv_map:v15];
  v12 = MRCreateIndentedDebugDescriptionFromArray(v11);
  v13 = [v3 initWithFormat:@"<%p> %@\n  isAirPlaying = %@\n  volume = %f\n  volumeMuted = %@\n  volumeCapabilities = %@\n  outputDevices = %@\n", self, uniqueIdentifier, v5, *&v7, v8, v9, v12];

  return v13;
}

- (BOOL)isAirPlaying
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  outputDevices = [(MROutputContextDataSource *)self outputDevices];
  v3 = [outputDevices countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(outputDevices);
        }

        if ([*(*(&v8 + 1) + 8 * i) deviceType] == 1)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [outputDevices countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v6 = *MEMORY[0x1E69E9840];
  return v3;
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  uniqueIdentifier = [(MROutputContextDataSource *)self uniqueIdentifier];
  if ([(MROutputContextDataSource *)self isAirPlaying])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [(MROutputContextDataSource *)self volume];
  v8 = v7;
  if ([(MROutputContextDataSource *)self isVolumeMuted])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v10 = MRMediaRemotePickedRouteVolumeControlCapabilitiesCopyDescription([(MROutputContextDataSource *)self volumeControlCapabilities]);
  outputDevices = [(MROutputContextDataSource *)self outputDevices];
  v12 = [outputDevices msv_map:&__block_literal_global_69];
  v13 = MRCreateIndentedDebugDescriptionFromArray(v12);
  v14 = [v3 initWithFormat:@"<%@:%p> %@\n  isAirPlaying = %@\n  volume = %f\n  volumeMuted = %@\n  volumeCapabilities = %@\n  outputDevices = %@\n", v4, self, uniqueIdentifier, v6, *&v8, v9, v10, v13];

  return v14;
}

- (void)setNotificationQueue:(id)queue
{
  queueCopy = queue;
  obj = self;
  objc_sync_enter(obj);
  notificationQueue = obj->_notificationQueue;
  obj->_notificationQueue = queueCopy;

  objc_sync_exit(obj);
}

- (id)outputDevicesForUID:(id)d
{
  dCopy = d;
  v5 = +[MRDeviceInfoRequest localDeviceInfo];
  deviceUID = [v5 deviceUID];
  v7 = deviceUID;
  if (deviceUID == dCopy)
  {
    v8 = 1;
  }

  else
  {
    v8 = [deviceUID isEqual:dCopy];
  }

  outputDevices = [(MROutputContextDataSource *)self outputDevices];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __49__MROutputContextDataSource_outputDevicesForUID___block_invoke;
  v13[3] = &unk_1E769CD78;
  v15 = v8;
  v14 = dCopy;
  v10 = dCopy;
  v11 = [outputDevices msv_compactMap:v13];

  return v11;
}

id __49__MROutputContextDataSource_outputDevicesForUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 40) == 1 && (([v3 isLocalDevice] & 1) != 0 || objc_msgSend(v4, "deviceType") != 1))
  {
    v6 = v4;
  }

  else
  {
    v5 = [v4 effectiveOutputDeviceForUID:*(a1 + 32)];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }
  }

  return v6;
}

- (float)volumeForOutputDeviceUID:(id)d error:(id *)error
{
  dCopy = d;
  if (dCopy)
  {
    v7 = [(MROutputContextDataSource *)self outputDevicesForUID:dCopy];
    firstObject = [v7 firstObject];

    if (([firstObject volumeCapabilities] & 2) != 0)
    {
      [firstObject volume];
      v11 = v12;
      Error = 0;
    }

    else
    {
      if (firstObject)
      {
        v9 = 37;
      }

      else
      {
        v9 = 39;
      }

      Error = MRMediaRemoteCreateError(v9);
      v11 = 0.0;
    }
  }

  else if (([(MROutputContextDataSource *)self volumeControlCapabilities]& 2) != 0)
  {
    [(MROutputContextDataSource *)self volume];
    v11 = v13;
    Error = 0;
  }

  else
  {
    Error = MRMediaRemoteCreateError(36);
    v11 = 0.0;
  }

  if (error)
  {
    v14 = Error;
    *error = Error;
  }

  return v11;
}

- (unsigned)volumeControlCapabilitiesForOutputDeviceUID:(id)d error:(id *)error
{
  dCopy = d;
  if (!dCopy)
  {
    volumeControlCapabilities = [(MROutputContextDataSource *)self volumeControlCapabilities];
    Error = 0;
    if (!error)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v7 = [(MROutputContextDataSource *)self outputDevicesForUID:dCopy];
  firstObject = [v7 firstObject];

  if (firstObject)
  {
    volumeControlCapabilities = [firstObject volumeCapabilities];
    Error = 0;
  }

  else
  {
    Error = MRMediaRemoteCreateError(39);
    volumeControlCapabilities = 0;
  }

  if (error)
  {
LABEL_8:
    v11 = Error;
    *error = Error;
  }

LABEL_9:

  return volumeControlCapabilities;
}

- (BOOL)volumeMutedForOutputDeviceID:(id)d error:(id *)error
{
  dCopy = d;
  if (!dCopy)
  {
    if (([(MROutputContextDataSource *)self volumeControlCapabilities]& 8) != 0)
    {
      isVolumeMuted = [(MROutputContextDataSource *)self isVolumeMuted];
      Error = 0;
      if (!error)
      {
        goto LABEL_12;
      }
    }

    else
    {
      Error = MRMediaRemoteCreateError(36);
      isVolumeMuted = 0;
      if (!error)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_11;
  }

  v7 = [(MROutputContextDataSource *)self outputDevicesForUID:dCopy];
  firstObject = [v7 firstObject];

  if (([firstObject volumeCapabilities] & 8) != 0)
  {
    isVolumeMuted = 0;
    goto LABEL_9;
  }

  if (firstObject)
  {
    isVolumeMuted = [firstObject isVolumeMuted];
LABEL_9:
    Error = 0;
    goto LABEL_10;
  }

  Error = MRMediaRemoteCreateError(39);
  isVolumeMuted = 0;
LABEL_10:

  if (error)
  {
LABEL_11:
    v11 = Error;
    *error = Error;
  }

LABEL_12:

  return isVolumeMuted;
}

- (MRExternalOutputContextDataSource)externalOutputContextRepresentation
{
  v3 = [MRExternalOutputContextDataSource alloc];
  uniqueIdentifier = [(MROutputContextDataSource *)self uniqueIdentifier];
  outputDevices = [(MROutputContextDataSource *)self outputDevices];
  [(MROutputContextDataSource *)self volume];
  v7 = v6;
  volumeControlCapabilities = [(MROutputContextDataSource *)self volumeControlCapabilities];
  isVolumeMuted = [(MROutputContextDataSource *)self isVolumeMuted];
  LODWORD(v10) = v7;
  v11 = [(MRExternalOutputContextDataSource *)v3 initWithUniqueIdentifier:uniqueIdentifier outputDevices:outputDevices volume:volumeControlCapabilities capabilities:isVolumeMuted muted:v10];

  return v11;
}

void __53__MROutputContextDataSource_notifyOutputDeviceAdded___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v6 = @"MROutputContextDataSourceOutputDeviceUserInfoKey";
  v7[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:@"MROutputContextDataSourceDidAddOutputDeviceNotification" object:*(a1 + 40) userInfo:v3];

  v5 = *MEMORY[0x1E69E9840];
}

void __55__MROutputContextDataSource_notifyOutputDeviceChanged___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v6 = @"MROutputContextDataSourceOutputDeviceUserInfoKey";
  v7[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:@"MROutputContextDataSourceDidChangeOutputDeviceNotification" object:*(a1 + 40) userInfo:v3];

  v5 = *MEMORY[0x1E69E9840];
}

void __55__MROutputContextDataSource_notifyOutputDeviceRemoved___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v6 = @"MROutputContextDataSourceOutputDeviceUserInfoKey";
  v7[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:@"MROutputContextDataSourceDidRemoveOutputDeviceNotification" object:*(a1 + 40) userInfo:v3];

  v5 = *MEMORY[0x1E69E9840];
}

void __64__MROutputContextDataSource_notifyVolumeDidChange_outputDevice___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"MROutputContextDataSourceOutputDeviceDidChangeVolumeNotification" object:*(a1 + 32) userInfo:*(a1 + 40)];
}

void __76__MROutputContextDataSource_notifyVolumeCapabilitiesDidChange_outputDevice___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"MROutputContextDataSourceOutputDeviceDidChangeVolumeControlCapabilitiesNotification" object:*(a1 + 32) userInfo:*(a1 + 40)];
}

void __69__MROutputContextDataSource_notifyVolumeMutedDidChange_outputDevice___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"MROutputContextDataSourceOutputDeviceDidChangeVolumeMutedNotification" object:*(a1 + 32) userInfo:*(a1 + 40)];
}

- (id)descriptionForOutputDevice:(uint64_t)device
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (device)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
    clusterComposition = [v3 clusterComposition];
    clusterComposition2 = [clusterComposition count];

    if (clusterComposition2)
    {
      v7 = MEMORY[0x1E696AEC0];
      clusterComposition2 = [v3 clusterComposition];
      v8 = [clusterComposition2 mr_map:&__block_literal_global_45];
      v9 = [v8 componentsJoinedByString:{@", "}];
      v10 = [v7 stringWithFormat:@" (%@)", v9];
    }

    else
    {
      v10 = &stru_1F1513E38;
    }

    v11 = objc_alloc(MEMORY[0x1E696AEC0]);
    debugName = [OUTLINED_FUNCTION_20() debugName];
    [v3 volume];
    v14 = v13;
    v15 = MRMediaRemotePickedRouteVolumeControlCapabilitiesCopyDescription([v3 volumeCapabilities]);
    v25 = v10;
    v16 = [clusterComposition2 initWithFormat:@"%@%@, volume = %lf, volume capabilities = %@", debugName, v10, *&v14, v15];

    [v4 appendString:v16];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    activatedClusterMembersOutputDevices = [v3 activatedClusterMembersOutputDevices];
    v18 = [activatedClusterMembersOutputDevices countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v27;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v27 != v20)
          {
            objc_enumerationMutation(activatedClusterMembersOutputDevices);
          }

          v22 = [(MROutputContextDataSource *)device descriptionForOutputDevice:?];
          [v4 appendFormat:@"\n  %@", v22];
        }

        v19 = [activatedClusterMembersOutputDevices countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v19);
    }
  }

  else
  {
    v4 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)notifyOutputDeviceAdded:(void *)added
{
  v56 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = v6;
  if (added)
  {
    if (!v6)
    {
      v2 = sel_notifyOutputDeviceAdded_;
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v50 = @"outputDevice";
      [currentHandler handleFailureInMethod:sel_notifyOutputDeviceAdded_ object:added file:@"MROutputContextDataSource.m" lineNumber:263 description:@"Invalid parameter not satisfying: %@"];
    }

    if (([added shouldLog] & 1) != 0 || (+[MRUserSettings currentSettings](MRUserSettings, "currentSettings"), v2 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v2, "verboseOutputContextDataSourceLogging"), v2, v8))
    {
      v9 = _MRLogForCategory(0);
      if (!OUTLINED_FUNCTION_30(v9))
      {
LABEL_10:

        if (([added shouldLog] & 1) != 0 || (+[MRUserSettings currentSettings](MRUserSettings, "currentSettings"), v2 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v2, "verboseOutputContextDataSourceLogging"), v2, v18))
        {
          v19 = _MRLogForCategory(0);
          if (!OUTLINED_FUNCTION_30(v19))
          {
LABEL_16:

            [added notificationQueue];
            objc_claimAutoreleasedReturnValue();
            OUTLINED_FUNCTION_6_1();
            v28 = v7;
            OUTLINED_FUNCTION_33(v28, v29, v30, v31, v32, v33, v34, v35, v50, v51, v52, 3221225472, __53__MROutputContextDataSource_notifyOutputDeviceAdded___block_invoke, &unk_1E769A4A0, v53, v55);

            goto LABEL_17;
          }

          objc_opt_class();
          OUTLINED_FUNCTION_1_8();
          v21 = v20;
          OUTLINED_FUNCTION_8_1();
          _os_log_impl(v22, v23, v24, v25, v26, 0x20u);
        }

        else
        {
          v27 = _MRLogForCategory(0);
          if (!OUTLINED_FUNCTION_31(v27))
          {
            goto LABEL_16;
          }

          objc_opt_class();
          OUTLINED_FUNCTION_1_8();
          v21 = v43;
          OUTLINED_FUNCTION_9_0();
          _os_log_debug_impl(v44, v45, v46, v47, v48, 0x20u);
        }

        goto LABEL_16;
      }

      v10 = objc_opt_class();
      [OUTLINED_FUNCTION_20() debugName];
      objc_claimAutoreleasedReturnValue();
      uniqueIdentifier = [OUTLINED_FUNCTION_21() uniqueIdentifier];
      OUTLINED_FUNCTION_0_10();
      OUTLINED_FUNCTION_8_1();
      _os_log_impl(v12, v13, v14, v15, v16, 0x2Au);
    }

    else
    {
      v17 = _MRLogForCategory(0);
      if (!OUTLINED_FUNCTION_31(v17))
      {
        goto LABEL_10;
      }

      v37 = objc_opt_class();
      [OUTLINED_FUNCTION_20() debugName];
      objc_claimAutoreleasedReturnValue();
      uniqueIdentifier = [OUTLINED_FUNCTION_21() uniqueIdentifier];
      OUTLINED_FUNCTION_0_10();
      OUTLINED_FUNCTION_9_0();
      _os_log_debug_impl(v38, v39, v40, v41, v42, 0x2Au);
    }

    goto LABEL_10;
  }

LABEL_17:

  v36 = *MEMORY[0x1E69E9840];
}

- (void)notifyOutputDeviceChanged:(void *)changed
{
  v56 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = v6;
  if (changed)
  {
    if (!v6)
    {
      v2 = sel_notifyOutputDeviceChanged_;
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v50 = @"outputDevice";
      [currentHandler handleFailureInMethod:sel_notifyOutputDeviceChanged_ object:changed file:@"MROutputContextDataSource.m" lineNumber:278 description:@"Invalid parameter not satisfying: %@"];
    }

    if (([changed shouldLog] & 1) != 0 || (+[MRUserSettings currentSettings](MRUserSettings, "currentSettings"), v2 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v2, "verboseOutputContextDataSourceLogging"), v2, v8))
    {
      v9 = _MRLogForCategory(0);
      if (!OUTLINED_FUNCTION_30(v9))
      {
LABEL_10:

        if (([changed shouldLog] & 1) != 0 || (+[MRUserSettings currentSettings](MRUserSettings, "currentSettings"), v2 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v2, "verboseOutputContextDataSourceLogging"), v2, v18))
        {
          v19 = _MRLogForCategory(0);
          if (!OUTLINED_FUNCTION_30(v19))
          {
LABEL_16:

            [changed notificationQueue];
            objc_claimAutoreleasedReturnValue();
            OUTLINED_FUNCTION_6_1();
            v28 = v7;
            OUTLINED_FUNCTION_33(v28, v29, v30, v31, v32, v33, v34, v35, v50, v51, v52, 3221225472, __55__MROutputContextDataSource_notifyOutputDeviceChanged___block_invoke, &unk_1E769A4A0, v53, v55);

            goto LABEL_17;
          }

          objc_opt_class();
          OUTLINED_FUNCTION_1_8();
          v21 = v20;
          OUTLINED_FUNCTION_8_1();
          _os_log_impl(v22, v23, v24, v25, v26, 0x20u);
        }

        else
        {
          v27 = _MRLogForCategory(0);
          if (!OUTLINED_FUNCTION_31(v27))
          {
            goto LABEL_16;
          }

          objc_opt_class();
          OUTLINED_FUNCTION_1_8();
          v21 = v43;
          OUTLINED_FUNCTION_9_0();
          _os_log_debug_impl(v44, v45, v46, v47, v48, 0x20u);
        }

        goto LABEL_16;
      }

      v10 = objc_opt_class();
      [OUTLINED_FUNCTION_20() debugName];
      objc_claimAutoreleasedReturnValue();
      uniqueIdentifier = [OUTLINED_FUNCTION_21() uniqueIdentifier];
      OUTLINED_FUNCTION_0_10();
      OUTLINED_FUNCTION_8_1();
      _os_log_impl(v12, v13, v14, v15, v16, 0x2Au);
    }

    else
    {
      v17 = _MRLogForCategory(0);
      if (!OUTLINED_FUNCTION_31(v17))
      {
        goto LABEL_10;
      }

      v37 = objc_opt_class();
      [OUTLINED_FUNCTION_20() debugName];
      objc_claimAutoreleasedReturnValue();
      uniqueIdentifier = [OUTLINED_FUNCTION_21() uniqueIdentifier];
      OUTLINED_FUNCTION_0_10();
      OUTLINED_FUNCTION_9_0();
      _os_log_debug_impl(v38, v39, v40, v41, v42, 0x2Au);
    }

    goto LABEL_10;
  }

LABEL_17:

  v36 = *MEMORY[0x1E69E9840];
}

- (void)notifyOutputDeviceRemoved:(void *)removed
{
  v56 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = v6;
  if (removed)
  {
    if (!v6)
    {
      v2 = sel_notifyOutputDeviceRemoved_;
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v50 = @"outputDevice";
      [currentHandler handleFailureInMethod:sel_notifyOutputDeviceRemoved_ object:removed file:@"MROutputContextDataSource.m" lineNumber:293 description:@"Invalid parameter not satisfying: %@"];
    }

    if (([removed shouldLog] & 1) != 0 || (+[MRUserSettings currentSettings](MRUserSettings, "currentSettings"), v2 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v2, "verboseOutputContextDataSourceLogging"), v2, v8))
    {
      v9 = _MRLogForCategory(0);
      if (!OUTLINED_FUNCTION_30(v9))
      {
LABEL_10:

        if (([removed shouldLog] & 1) != 0 || (+[MRUserSettings currentSettings](MRUserSettings, "currentSettings"), v2 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v2, "verboseOutputContextDataSourceLogging"), v2, v18))
        {
          v19 = _MRLogForCategory(0);
          if (!OUTLINED_FUNCTION_30(v19))
          {
LABEL_16:

            [removed notificationQueue];
            objc_claimAutoreleasedReturnValue();
            OUTLINED_FUNCTION_6_1();
            v28 = v7;
            OUTLINED_FUNCTION_33(v28, v29, v30, v31, v32, v33, v34, v35, v50, v51, v52, 3221225472, __55__MROutputContextDataSource_notifyOutputDeviceRemoved___block_invoke, &unk_1E769A4A0, v53, v55);

            goto LABEL_17;
          }

          objc_opt_class();
          OUTLINED_FUNCTION_1_8();
          v21 = v20;
          OUTLINED_FUNCTION_8_1();
          _os_log_impl(v22, v23, v24, v25, v26, 0x20u);
        }

        else
        {
          v27 = _MRLogForCategory(0);
          if (!OUTLINED_FUNCTION_31(v27))
          {
            goto LABEL_16;
          }

          objc_opt_class();
          OUTLINED_FUNCTION_1_8();
          v21 = v43;
          OUTLINED_FUNCTION_9_0();
          _os_log_debug_impl(v44, v45, v46, v47, v48, 0x20u);
        }

        goto LABEL_16;
      }

      v10 = objc_opt_class();
      [OUTLINED_FUNCTION_20() debugName];
      objc_claimAutoreleasedReturnValue();
      uniqueIdentifier = [OUTLINED_FUNCTION_21() uniqueIdentifier];
      OUTLINED_FUNCTION_0_10();
      OUTLINED_FUNCTION_8_1();
      _os_log_impl(v12, v13, v14, v15, v16, 0x2Au);
    }

    else
    {
      v17 = _MRLogForCategory(0);
      if (!OUTLINED_FUNCTION_31(v17))
      {
        goto LABEL_10;
      }

      v37 = objc_opt_class();
      [OUTLINED_FUNCTION_20() debugName];
      objc_claimAutoreleasedReturnValue();
      uniqueIdentifier = [OUTLINED_FUNCTION_21() uniqueIdentifier];
      OUTLINED_FUNCTION_0_10();
      OUTLINED_FUNCTION_9_0();
      _os_log_debug_impl(v38, v39, v40, v41, v42, 0x2Au);
    }

    goto LABEL_10;
  }

LABEL_17:

  v36 = *MEMORY[0x1E69E9840];
}

- (void)notifyVolumeDidChange:(float)change outputDevice:
{
  v54 = *MEMORY[0x1E69E9840];
  v6 = a2;
  if (!self)
  {
    goto LABEL_19;
  }

  shouldLog = [self shouldLog];
  if (!v6)
  {
    if ((shouldLog & 1) != 0 || (+[MRUserSettings currentSettings](MRUserSettings, "currentSettings"), v3 = objc_claimAutoreleasedReturnValue(), v18 = [v3 verboseOutputContextDataSourceLogging], v3, v18))
    {
      v19 = _MRLogForCategory(0);
      if (!OUTLINED_FUNCTION_30(v19))
      {
        goto LABEL_16;
      }

      v20 = objc_opt_class();
      uniqueIdentifier = [self uniqueIdentifier];
      OUTLINED_FUNCTION_3_5();
      v52 = v22;
      changeCopy2 = change;
      OUTLINED_FUNCTION_19();
      OUTLINED_FUNCTION_8_1();
      _os_log_impl(v23, v24, v25, v26, v27, 0x2Au);
    }

    else
    {
      v34 = _MRLogForCategory(0);
      if (!OUTLINED_FUNCTION_31(v34))
      {
        goto LABEL_16;
      }

      v20 = objc_opt_class();
      uniqueIdentifier = [self uniqueIdentifier];
      OUTLINED_FUNCTION_3_5();
      v52 = v42;
      changeCopy2 = change;
      OUTLINED_FUNCTION_19();
      OUTLINED_FUNCTION_9_0();
      _os_log_debug_impl(v43, v44, v45, v46, v47, 0x2Au);
    }

    goto LABEL_16;
  }

  if ((shouldLog & 1) == 0)
  {
    v3 = +[MRUserSettings currentSettings];
    verboseOutputContextDataSourceLogging = [v3 verboseOutputContextDataSourceLogging];

    if (!verboseOutputContextDataSourceLogging)
    {
      v28 = _MRLogForCategory(0);
      if (!OUTLINED_FUNCTION_31(v28))
      {
        goto LABEL_16;
      }

      v10 = objc_opt_class();
      debugName = [v6 debugName];
      uniqueIdentifier2 = [self uniqueIdentifier];
      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_9_0();
      _os_log_debug_impl(v29, v30, v31, v32, v33, 0x34u);
      goto LABEL_7;
    }
  }

  v9 = _MRLogForCategory(0);
  if (OUTLINED_FUNCTION_30(v9))
  {
    v10 = objc_opt_class();
    debugName = [v6 debugName];
    uniqueIdentifier2 = [self uniqueIdentifier];
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v13, v14, v15, v16, v17, 0x34u);
LABEL_7:
  }

LABEL_16:

  v50 = @"MROutputContextDataSourceVolumeUserInfoKey";
  *&v35 = change;
  v51 = [MEMORY[0x1E696AD98] numberWithFloat:v35];
  OUTLINED_FUNCTION_28();
  v37 = [v36 dictionaryWithObjects:? forKeys:? count:?];
  v38 = [v37 mutableCopy];

  if (v6)
  {
    [v38 setObject:v6 forKeyedSubscript:@"MROutputContextDataSourceOutputDeviceUserInfoKey"];
  }

  notificationQueue = [self notificationQueue];
  OUTLINED_FUNCTION_1_0();
  v48[1] = 3221225472;
  v48[2] = __64__MROutputContextDataSource_notifyVolumeDidChange_outputDevice___block_invoke;
  v48[3] = &unk_1E769A4A0;
  v48[4] = self;
  v49 = v38;
  v40 = v38;
  dispatch_async(notificationQueue, v48);

LABEL_19:
  v41 = *MEMORY[0x1E69E9840];
}

- (void)notifyVolumeCapabilitiesDidChange:(void *)change outputDevice:
{
  v65 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  if (!self)
  {
    goto LABEL_25;
  }

  v6 = MRMediaRemotePickedRouteVolumeControlCapabilitiesCopyDescription(a2);
  shouldLog = [self shouldLog];
  if (!changeCopy)
  {
    if ((shouldLog & 1) != 0 || (+[MRUserSettings currentSettings](MRUserSettings, "currentSettings"), v19 = objc_claimAutoreleasedReturnValue(), v20 = [v19 verboseOutputContextDataSourceLogging], v19, v20))
    {
      v10 = _MRLogForCategory(0);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }

      v21 = objc_opt_class();
      v22 = v21;
      uniqueIdentifier = [self uniqueIdentifier];
      v62 = 138544130;
      v63 = v21;
      OUTLINED_FUNCTION_5_3();
      selfCopy2 = v6;
      OUTLINED_FUNCTION_19();
      OUTLINED_FUNCTION_26();
      _os_log_impl(v24, v25, OS_LOG_TYPE_DEFAULT, v26, v27, 0x2Au);
    }

    else
    {
      v10 = _MRLogForCategory(0);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_16;
      }

      v53 = objc_opt_class();
      v22 = v53;
      uniqueIdentifier = [self uniqueIdentifier];
      v62 = 138544130;
      v63 = v53;
      OUTLINED_FUNCTION_5_3();
      selfCopy2 = v6;
      OUTLINED_FUNCTION_19();
      OUTLINED_FUNCTION_26();
      _os_log_debug_impl(v54, v55, OS_LOG_TYPE_DEBUG, v56, v57, 0x2Au);
    }

    goto LABEL_16;
  }

  if ((shouldLog & 1) == 0)
  {
    v8 = +[MRUserSettings currentSettings];
    verboseOutputContextDataSourceLogging = [v8 verboseOutputContextDataSourceLogging];

    if (!verboseOutputContextDataSourceLogging)
    {
      v10 = _MRLogForCategory(0);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_16;
      }

      v28 = objc_opt_class();
      v12 = v28;
      debugName = [changeCopy debugName];
      uniqueIdentifier2 = [self uniqueIdentifier];
      v62 = 138544386;
      v63 = v28;
      OUTLINED_FUNCTION_5_3();
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_26();
      _os_log_debug_impl(v29, v30, OS_LOG_TYPE_DEBUG, v31, v32, 0x34u);
      goto LABEL_7;
    }
  }

  v10 = _MRLogForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = v11;
    debugName = [changeCopy debugName];
    uniqueIdentifier2 = [self uniqueIdentifier];
    v62 = 138544386;
    v63 = v11;
    OUTLINED_FUNCTION_5_3();
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_26();
    _os_log_impl(v15, v16, OS_LOG_TYPE_DEFAULT, v17, v18, 0x34u);
LABEL_7:
  }

LABEL_16:

  if (([self shouldLog] & 1) == 0)
  {
    v33 = +[MRUserSettings currentSettings];
    verboseOutputContextDataSourceLogging2 = [v33 verboseOutputContextDataSourceLogging];

    if (!verboseOutputContextDataSourceLogging2)
    {
      v35 = _MRLogForCategory(0);
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_22;
      }

      v62 = 138543874;
      v63 = objc_opt_class();
      OUTLINED_FUNCTION_5_3();
      selfCopy2 = self;
      v37 = v48;
      OUTLINED_FUNCTION_26();
      _os_log_debug_impl(v49, v50, OS_LOG_TYPE_DEBUG, v51, v52, 0x20u);
      goto LABEL_20;
    }
  }

  v35 = _MRLogForCategory(0);
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v62 = 138543874;
    v63 = objc_opt_class();
    OUTLINED_FUNCTION_5_3();
    selfCopy2 = self;
    v37 = v36;
    OUTLINED_FUNCTION_26();
    _os_log_impl(v38, v39, OS_LOG_TYPE_DEFAULT, v40, v41, 0x20u);
LABEL_20:
  }

LABEL_22:

  v60 = @"MROutputContextDataSourceVolumeCapabilitiesUserInfoKey";
  v61 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
  OUTLINED_FUNCTION_28();
  v43 = [v42 dictionaryWithObjects:? forKeys:? count:?];
  v44 = [v43 mutableCopy];

  if (changeCopy)
  {
    [v44 setObject:changeCopy forKeyedSubscript:@"MROutputContextDataSourceOutputDeviceUserInfoKey"];
  }

  notificationQueue = [self notificationQueue];
  OUTLINED_FUNCTION_1_0();
  v58[1] = 3221225472;
  v58[2] = __76__MROutputContextDataSource_notifyVolumeCapabilitiesDidChange_outputDevice___block_invoke;
  v58[3] = &unk_1E769A4A0;
  v58[4] = self;
  v59 = v44;
  v46 = v44;
  dispatch_async(notificationQueue, v58);

LABEL_25:
  v47 = *MEMORY[0x1E69E9840];
}

- (void)notifyVolumeMutedDidChange:(void *)change outputDevice:
{
  v50 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  if (!self)
  {
    goto LABEL_19;
  }

  shouldLog = [self shouldLog];
  if (!changeCopy)
  {
    if ((shouldLog & 1) != 0 || (+[MRUserSettings currentSettings](MRUserSettings, "currentSettings"), v19 = objc_claimAutoreleasedReturnValue(), v20 = [v19 verboseOutputContextDataSourceLogging], v19, v20))
    {
      v10 = _MRLogForCategory(0);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }

      v21 = objc_opt_class();
      uniqueIdentifier = [OUTLINED_FUNCTION_21() uniqueIdentifier];
      v48 = 138544130;
      OUTLINED_FUNCTION_15_1();
      OUTLINED_FUNCTION_38();
      _os_log_impl(v23, v24, OS_LOG_TYPE_DEFAULT, v25, v26, 0x2Au);
    }

    else
    {
      v10 = _MRLogForCategory(0);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_16;
      }

      v39 = objc_opt_class();
      uniqueIdentifier = [OUTLINED_FUNCTION_21() uniqueIdentifier];
      v48 = 138544130;
      OUTLINED_FUNCTION_15_1();
      OUTLINED_FUNCTION_38();
      _os_log_debug_impl(v40, v41, OS_LOG_TYPE_DEBUG, v42, v43, 0x2Au);
    }

    goto LABEL_16;
  }

  if ((shouldLog & 1) == 0)
  {
    v9 = +[MRUserSettings currentSettings];
    verboseOutputContextDataSourceLogging = [v9 verboseOutputContextDataSourceLogging];

    if (!verboseOutputContextDataSourceLogging)
    {
      v10 = _MRLogForCategory(0);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_16;
      }

      v27 = objc_opt_class();
      v28 = v27;
      debugName = [OUTLINED_FUNCTION_20() debugName];
      uniqueIdentifier2 = [self uniqueIdentifier];
      v48 = 138544386;
      v49 = v27;
      OUTLINED_FUNCTION_1_8();
      OUTLINED_FUNCTION_25();
      OUTLINED_FUNCTION_38();
      _os_log_debug_impl(v29, v30, OS_LOG_TYPE_DEBUG, v31, v32, 0x34u);
      goto LABEL_7;
    }
  }

  v10 = _MRLogForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = v11;
    debugName = [OUTLINED_FUNCTION_20() debugName];
    uniqueIdentifier2 = [self uniqueIdentifier];
    v48 = 138544386;
    v49 = v11;
    OUTLINED_FUNCTION_1_8();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_38();
    _os_log_impl(v15, v16, OS_LOG_TYPE_DEFAULT, v17, v18, 0x34u);
LABEL_7:
  }

LABEL_16:

  v46 = @"MROutputContextDataSourceVolumeMutedUserInfoKey";
  v47 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  OUTLINED_FUNCTION_28();
  v34 = [v33 dictionaryWithObjects:? forKeys:? count:?];
  v35 = [v34 mutableCopy];

  if (changeCopy)
  {
    [v35 setObject:changeCopy forKeyedSubscript:@"MROutputContextDataSourceOutputDeviceUserInfoKey"];
  }

  notificationQueue = [self notificationQueue];
  OUTLINED_FUNCTION_1_0();
  v44[1] = 3221225472;
  v44[2] = __69__MROutputContextDataSource_notifyVolumeMutedDidChange_outputDevice___block_invoke;
  v44[3] = &unk_1E769A4A0;
  v44[4] = self;
  v45 = v35;
  v37 = v35;
  dispatch_async(notificationQueue, v44);

LABEL_19:
  v38 = *MEMORY[0x1E69E9840];
}

@end