@interface MROutputContextDataSource
+ (id)_notificationSerialQueue;
- (BOOL)isAirPlaying;
- (BOOL)volumeMutedForOutputDeviceID:(id)a3 error:(id *)a4;
- (MRExternalOutputContextDataSource)externalOutputContextRepresentation;
- (OS_dispatch_queue)notificationQueue;
- (float)volumeForOutputDeviceUID:(id)a3 error:(id *)a4;
- (id)debugDescription;
- (id)description;
- (id)descriptionForOutputDevice:(uint64_t)a1;
- (id)outputDevicesForUID:(id)a3;
- (unsigned)volumeControlCapabilitiesForOutputDeviceUID:(id)a3 error:(id *)a4;
- (void)notifyDataSourceReloaded;
- (void)notifyOutputDeviceAdded:(void *)a1;
- (void)notifyOutputDeviceChanged:(void *)a1;
- (void)notifyOutputDeviceRemoved:(void *)a1;
- (void)notifyVolumeCapabilitiesDidChange:(void *)a3 outputDevice:;
- (void)notifyVolumeDidChange:(float)a3 outputDevice:;
- (void)notifyVolumeMutedDidChange:(void *)a3 outputDevice:;
- (void)setNotificationQueue:(id)a3;
@end

@implementation MROutputContextDataSource

- (OS_dispatch_queue)notificationQueue
{
  v2 = self;
  objc_sync_enter(v2);
  notificationQueue = v2->_notificationQueue;
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
  objc_sync_exit(v2);

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
  if (a1)
  {
    v2 = [a1 notificationQueue];
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_3_2();
    v5 = __53__MROutputContextDataSource_notifyDataSourceReloaded__block_invoke;
    v6 = &unk_1E769A228;
    v7 = a1;
    dispatch_async(v3, block);
  }
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(MROutputContextDataSource *)self uniqueIdentifier];
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
  v10 = [(MROutputContextDataSource *)self outputDevices];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __40__MROutputContextDataSource_description__block_invoke;
  v15[3] = &unk_1E769B6F8;
  v15[4] = self;
  v11 = [v10 msv_map:v15];
  v12 = MRCreateIndentedDebugDescriptionFromArray(v11);
  v13 = [v3 initWithFormat:@"<%p> %@\n  isAirPlaying = %@\n  volume = %f\n  volumeMuted = %@\n  volumeCapabilities = %@\n  outputDevices = %@\n", self, v4, v5, *&v7, v8, v9, v12];

  return v13;
}

- (BOOL)isAirPlaying
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(MROutputContextDataSource *)self outputDevices];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v8 + 1) + 8 * i) deviceType] == 1)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
  v5 = [(MROutputContextDataSource *)self uniqueIdentifier];
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
  v11 = [(MROutputContextDataSource *)self outputDevices];
  v12 = [v11 msv_map:&__block_literal_global_69];
  v13 = MRCreateIndentedDebugDescriptionFromArray(v12);
  v14 = [v3 initWithFormat:@"<%@:%p> %@\n  isAirPlaying = %@\n  volume = %f\n  volumeMuted = %@\n  volumeCapabilities = %@\n  outputDevices = %@\n", v4, self, v5, v6, *&v8, v9, v10, v13];

  return v14;
}

- (void)setNotificationQueue:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  notificationQueue = obj->_notificationQueue;
  obj->_notificationQueue = v4;

  objc_sync_exit(obj);
}

- (id)outputDevicesForUID:(id)a3
{
  v4 = a3;
  v5 = +[MRDeviceInfoRequest localDeviceInfo];
  v6 = [v5 deviceUID];
  v7 = v6;
  if (v6 == v4)
  {
    v8 = 1;
  }

  else
  {
    v8 = [v6 isEqual:v4];
  }

  v9 = [(MROutputContextDataSource *)self outputDevices];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __49__MROutputContextDataSource_outputDevicesForUID___block_invoke;
  v13[3] = &unk_1E769CD78;
  v15 = v8;
  v14 = v4;
  v10 = v4;
  v11 = [v9 msv_compactMap:v13];

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

- (float)volumeForOutputDeviceUID:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = [(MROutputContextDataSource *)self outputDevicesForUID:v6];
    v8 = [v7 firstObject];

    if (([v8 volumeCapabilities] & 2) != 0)
    {
      [v8 volume];
      v11 = v12;
      Error = 0;
    }

    else
    {
      if (v8)
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

  if (a4)
  {
    v14 = Error;
    *a4 = Error;
  }

  return v11;
}

- (unsigned)volumeControlCapabilitiesForOutputDeviceUID:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    v9 = [(MROutputContextDataSource *)self volumeControlCapabilities];
    Error = 0;
    if (!a4)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v7 = [(MROutputContextDataSource *)self outputDevicesForUID:v6];
  v8 = [v7 firstObject];

  if (v8)
  {
    v9 = [v8 volumeCapabilities];
    Error = 0;
  }

  else
  {
    Error = MRMediaRemoteCreateError(39);
    v9 = 0;
  }

  if (a4)
  {
LABEL_8:
    v11 = Error;
    *a4 = Error;
  }

LABEL_9:

  return v9;
}

- (BOOL)volumeMutedForOutputDeviceID:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    if (([(MROutputContextDataSource *)self volumeControlCapabilities]& 8) != 0)
    {
      v9 = [(MROutputContextDataSource *)self isVolumeMuted];
      Error = 0;
      if (!a4)
      {
        goto LABEL_12;
      }
    }

    else
    {
      Error = MRMediaRemoteCreateError(36);
      v9 = 0;
      if (!a4)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_11;
  }

  v7 = [(MROutputContextDataSource *)self outputDevicesForUID:v6];
  v8 = [v7 firstObject];

  if (([v8 volumeCapabilities] & 8) != 0)
  {
    v9 = 0;
    goto LABEL_9;
  }

  if (v8)
  {
    v9 = [v8 isVolumeMuted];
LABEL_9:
    Error = 0;
    goto LABEL_10;
  }

  Error = MRMediaRemoteCreateError(39);
  v9 = 0;
LABEL_10:

  if (a4)
  {
LABEL_11:
    v11 = Error;
    *a4 = Error;
  }

LABEL_12:

  return v9;
}

- (MRExternalOutputContextDataSource)externalOutputContextRepresentation
{
  v3 = [MRExternalOutputContextDataSource alloc];
  v4 = [(MROutputContextDataSource *)self uniqueIdentifier];
  v5 = [(MROutputContextDataSource *)self outputDevices];
  [(MROutputContextDataSource *)self volume];
  v7 = v6;
  v8 = [(MROutputContextDataSource *)self volumeControlCapabilities];
  v9 = [(MROutputContextDataSource *)self isVolumeMuted];
  LODWORD(v10) = v7;
  v11 = [(MRExternalOutputContextDataSource *)v3 initWithUniqueIdentifier:v4 outputDevices:v5 volume:v8 capabilities:v9 muted:v10];

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

- (id)descriptionForOutputDevice:(uint64_t)a1
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v5 = [v3 clusterComposition];
    v6 = [v5 count];

    if (v6)
    {
      v7 = MEMORY[0x1E696AEC0];
      v6 = [v3 clusterComposition];
      v8 = [v6 mr_map:&__block_literal_global_45];
      v9 = [v8 componentsJoinedByString:{@", "}];
      v10 = [v7 stringWithFormat:@" (%@)", v9];
    }

    else
    {
      v10 = &stru_1F1513E38;
    }

    v11 = objc_alloc(MEMORY[0x1E696AEC0]);
    v12 = [OUTLINED_FUNCTION_20() debugName];
    [v3 volume];
    v14 = v13;
    v15 = MRMediaRemotePickedRouteVolumeControlCapabilitiesCopyDescription([v3 volumeCapabilities]);
    v25 = v10;
    v16 = [v6 initWithFormat:@"%@%@, volume = %lf, volume capabilities = %@", v12, v10, *&v14, v15];

    [v4 appendString:v16];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v17 = [v3 activatedClusterMembersOutputDevices];
    v18 = [v17 countByEnumeratingWithState:&v26 objects:v30 count:16];
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
            objc_enumerationMutation(v17);
          }

          v22 = [(MROutputContextDataSource *)a1 descriptionForOutputDevice:?];
          [v4 appendFormat:@"\n  %@", v22];
        }

        v19 = [v17 countByEnumeratingWithState:&v26 objects:v30 count:16];
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

- (void)notifyOutputDeviceAdded:(void *)a1
{
  v56 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = v6;
  if (a1)
  {
    if (!v6)
    {
      v2 = sel_notifyOutputDeviceAdded_;
      v49 = [MEMORY[0x1E696AAA8] currentHandler];
      v50 = @"outputDevice";
      [v49 handleFailureInMethod:sel_notifyOutputDeviceAdded_ object:a1 file:@"MROutputContextDataSource.m" lineNumber:263 description:@"Invalid parameter not satisfying: %@"];
    }

    if (([a1 shouldLog] & 1) != 0 || (+[MRUserSettings currentSettings](MRUserSettings, "currentSettings"), v2 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v2, "verboseOutputContextDataSourceLogging"), v2, v8))
    {
      v9 = _MRLogForCategory(0);
      if (!OUTLINED_FUNCTION_30(v9))
      {
LABEL_10:

        if (([a1 shouldLog] & 1) != 0 || (+[MRUserSettings currentSettings](MRUserSettings, "currentSettings"), v2 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v2, "verboseOutputContextDataSourceLogging"), v2, v18))
        {
          v19 = _MRLogForCategory(0);
          if (!OUTLINED_FUNCTION_30(v19))
          {
LABEL_16:

            [a1 notificationQueue];
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
      v11 = [OUTLINED_FUNCTION_21() uniqueIdentifier];
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
      v11 = [OUTLINED_FUNCTION_21() uniqueIdentifier];
      OUTLINED_FUNCTION_0_10();
      OUTLINED_FUNCTION_9_0();
      _os_log_debug_impl(v38, v39, v40, v41, v42, 0x2Au);
    }

    goto LABEL_10;
  }

LABEL_17:

  v36 = *MEMORY[0x1E69E9840];
}

- (void)notifyOutputDeviceChanged:(void *)a1
{
  v56 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = v6;
  if (a1)
  {
    if (!v6)
    {
      v2 = sel_notifyOutputDeviceChanged_;
      v49 = [MEMORY[0x1E696AAA8] currentHandler];
      v50 = @"outputDevice";
      [v49 handleFailureInMethod:sel_notifyOutputDeviceChanged_ object:a1 file:@"MROutputContextDataSource.m" lineNumber:278 description:@"Invalid parameter not satisfying: %@"];
    }

    if (([a1 shouldLog] & 1) != 0 || (+[MRUserSettings currentSettings](MRUserSettings, "currentSettings"), v2 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v2, "verboseOutputContextDataSourceLogging"), v2, v8))
    {
      v9 = _MRLogForCategory(0);
      if (!OUTLINED_FUNCTION_30(v9))
      {
LABEL_10:

        if (([a1 shouldLog] & 1) != 0 || (+[MRUserSettings currentSettings](MRUserSettings, "currentSettings"), v2 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v2, "verboseOutputContextDataSourceLogging"), v2, v18))
        {
          v19 = _MRLogForCategory(0);
          if (!OUTLINED_FUNCTION_30(v19))
          {
LABEL_16:

            [a1 notificationQueue];
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
      v11 = [OUTLINED_FUNCTION_21() uniqueIdentifier];
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
      v11 = [OUTLINED_FUNCTION_21() uniqueIdentifier];
      OUTLINED_FUNCTION_0_10();
      OUTLINED_FUNCTION_9_0();
      _os_log_debug_impl(v38, v39, v40, v41, v42, 0x2Au);
    }

    goto LABEL_10;
  }

LABEL_17:

  v36 = *MEMORY[0x1E69E9840];
}

- (void)notifyOutputDeviceRemoved:(void *)a1
{
  v56 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = v6;
  if (a1)
  {
    if (!v6)
    {
      v2 = sel_notifyOutputDeviceRemoved_;
      v49 = [MEMORY[0x1E696AAA8] currentHandler];
      v50 = @"outputDevice";
      [v49 handleFailureInMethod:sel_notifyOutputDeviceRemoved_ object:a1 file:@"MROutputContextDataSource.m" lineNumber:293 description:@"Invalid parameter not satisfying: %@"];
    }

    if (([a1 shouldLog] & 1) != 0 || (+[MRUserSettings currentSettings](MRUserSettings, "currentSettings"), v2 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v2, "verboseOutputContextDataSourceLogging"), v2, v8))
    {
      v9 = _MRLogForCategory(0);
      if (!OUTLINED_FUNCTION_30(v9))
      {
LABEL_10:

        if (([a1 shouldLog] & 1) != 0 || (+[MRUserSettings currentSettings](MRUserSettings, "currentSettings"), v2 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v2, "verboseOutputContextDataSourceLogging"), v2, v18))
        {
          v19 = _MRLogForCategory(0);
          if (!OUTLINED_FUNCTION_30(v19))
          {
LABEL_16:

            [a1 notificationQueue];
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
      v11 = [OUTLINED_FUNCTION_21() uniqueIdentifier];
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
      v11 = [OUTLINED_FUNCTION_21() uniqueIdentifier];
      OUTLINED_FUNCTION_0_10();
      OUTLINED_FUNCTION_9_0();
      _os_log_debug_impl(v38, v39, v40, v41, v42, 0x2Au);
    }

    goto LABEL_10;
  }

LABEL_17:

  v36 = *MEMORY[0x1E69E9840];
}

- (void)notifyVolumeDidChange:(float)a3 outputDevice:
{
  v54 = *MEMORY[0x1E69E9840];
  v6 = a2;
  if (!a1)
  {
    goto LABEL_19;
  }

  v7 = [a1 shouldLog];
  if (!v6)
  {
    if ((v7 & 1) != 0 || (+[MRUserSettings currentSettings](MRUserSettings, "currentSettings"), v3 = objc_claimAutoreleasedReturnValue(), v18 = [v3 verboseOutputContextDataSourceLogging], v3, v18))
    {
      v19 = _MRLogForCategory(0);
      if (!OUTLINED_FUNCTION_30(v19))
      {
        goto LABEL_16;
      }

      v20 = objc_opt_class();
      v21 = [a1 uniqueIdentifier];
      OUTLINED_FUNCTION_3_5();
      v52 = v22;
      v53 = a3;
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
      v21 = [a1 uniqueIdentifier];
      OUTLINED_FUNCTION_3_5();
      v52 = v42;
      v53 = a3;
      OUTLINED_FUNCTION_19();
      OUTLINED_FUNCTION_9_0();
      _os_log_debug_impl(v43, v44, v45, v46, v47, 0x2Au);
    }

    goto LABEL_16;
  }

  if ((v7 & 1) == 0)
  {
    v3 = +[MRUserSettings currentSettings];
    v8 = [v3 verboseOutputContextDataSourceLogging];

    if (!v8)
    {
      v28 = _MRLogForCategory(0);
      if (!OUTLINED_FUNCTION_31(v28))
      {
        goto LABEL_16;
      }

      v10 = objc_opt_class();
      v11 = [v6 debugName];
      v12 = [a1 uniqueIdentifier];
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
    v11 = [v6 debugName];
    v12 = [a1 uniqueIdentifier];
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v13, v14, v15, v16, v17, 0x34u);
LABEL_7:
  }

LABEL_16:

  v50 = @"MROutputContextDataSourceVolumeUserInfoKey";
  *&v35 = a3;
  v51 = [MEMORY[0x1E696AD98] numberWithFloat:v35];
  OUTLINED_FUNCTION_28();
  v37 = [v36 dictionaryWithObjects:? forKeys:? count:?];
  v38 = [v37 mutableCopy];

  if (v6)
  {
    [v38 setObject:v6 forKeyedSubscript:@"MROutputContextDataSourceOutputDeviceUserInfoKey"];
  }

  v39 = [a1 notificationQueue];
  OUTLINED_FUNCTION_1_0();
  v48[1] = 3221225472;
  v48[2] = __64__MROutputContextDataSource_notifyVolumeDidChange_outputDevice___block_invoke;
  v48[3] = &unk_1E769A4A0;
  v48[4] = a1;
  v49 = v38;
  v40 = v38;
  dispatch_async(v39, v48);

LABEL_19:
  v41 = *MEMORY[0x1E69E9840];
}

- (void)notifyVolumeCapabilitiesDidChange:(void *)a3 outputDevice:
{
  v65 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!a1)
  {
    goto LABEL_25;
  }

  v6 = MRMediaRemotePickedRouteVolumeControlCapabilitiesCopyDescription(a2);
  v7 = [a1 shouldLog];
  if (!v5)
  {
    if ((v7 & 1) != 0 || (+[MRUserSettings currentSettings](MRUserSettings, "currentSettings"), v19 = objc_claimAutoreleasedReturnValue(), v20 = [v19 verboseOutputContextDataSourceLogging], v19, v20))
    {
      v10 = _MRLogForCategory(0);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }

      v21 = objc_opt_class();
      v22 = v21;
      v23 = [a1 uniqueIdentifier];
      v62 = 138544130;
      v63 = v21;
      OUTLINED_FUNCTION_5_3();
      v64 = v6;
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
      v23 = [a1 uniqueIdentifier];
      v62 = 138544130;
      v63 = v53;
      OUTLINED_FUNCTION_5_3();
      v64 = v6;
      OUTLINED_FUNCTION_19();
      OUTLINED_FUNCTION_26();
      _os_log_debug_impl(v54, v55, OS_LOG_TYPE_DEBUG, v56, v57, 0x2Au);
    }

    goto LABEL_16;
  }

  if ((v7 & 1) == 0)
  {
    v8 = +[MRUserSettings currentSettings];
    v9 = [v8 verboseOutputContextDataSourceLogging];

    if (!v9)
    {
      v10 = _MRLogForCategory(0);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_16;
      }

      v28 = objc_opt_class();
      v12 = v28;
      v13 = [v5 debugName];
      v14 = [a1 uniqueIdentifier];
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
    v13 = [v5 debugName];
    v14 = [a1 uniqueIdentifier];
    v62 = 138544386;
    v63 = v11;
    OUTLINED_FUNCTION_5_3();
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_26();
    _os_log_impl(v15, v16, OS_LOG_TYPE_DEFAULT, v17, v18, 0x34u);
LABEL_7:
  }

LABEL_16:

  if (([a1 shouldLog] & 1) == 0)
  {
    v33 = +[MRUserSettings currentSettings];
    v34 = [v33 verboseOutputContextDataSourceLogging];

    if (!v34)
    {
      v35 = _MRLogForCategory(0);
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_22;
      }

      v62 = 138543874;
      v63 = objc_opt_class();
      OUTLINED_FUNCTION_5_3();
      v64 = a1;
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
    v64 = a1;
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

  if (v5)
  {
    [v44 setObject:v5 forKeyedSubscript:@"MROutputContextDataSourceOutputDeviceUserInfoKey"];
  }

  v45 = [a1 notificationQueue];
  OUTLINED_FUNCTION_1_0();
  v58[1] = 3221225472;
  v58[2] = __76__MROutputContextDataSource_notifyVolumeCapabilitiesDidChange_outputDevice___block_invoke;
  v58[3] = &unk_1E769A4A0;
  v58[4] = a1;
  v59 = v44;
  v46 = v44;
  dispatch_async(v45, v58);

LABEL_25:
  v47 = *MEMORY[0x1E69E9840];
}

- (void)notifyVolumeMutedDidChange:(void *)a3 outputDevice:
{
  v50 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (!a1)
  {
    goto LABEL_19;
  }

  v8 = [a1 shouldLog];
  if (!v7)
  {
    if ((v8 & 1) != 0 || (+[MRUserSettings currentSettings](MRUserSettings, "currentSettings"), v19 = objc_claimAutoreleasedReturnValue(), v20 = [v19 verboseOutputContextDataSourceLogging], v19, v20))
    {
      v10 = _MRLogForCategory(0);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }

      v21 = objc_opt_class();
      v22 = [OUTLINED_FUNCTION_21() uniqueIdentifier];
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
      v22 = [OUTLINED_FUNCTION_21() uniqueIdentifier];
      v48 = 138544130;
      OUTLINED_FUNCTION_15_1();
      OUTLINED_FUNCTION_38();
      _os_log_debug_impl(v40, v41, OS_LOG_TYPE_DEBUG, v42, v43, 0x2Au);
    }

    goto LABEL_16;
  }

  if ((v8 & 1) == 0)
  {
    v9 = +[MRUserSettings currentSettings];
    v3 = [v9 verboseOutputContextDataSourceLogging];

    if (!v3)
    {
      v10 = _MRLogForCategory(0);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_16;
      }

      v27 = objc_opt_class();
      v28 = v27;
      v13 = [OUTLINED_FUNCTION_20() debugName];
      v14 = [a1 uniqueIdentifier];
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
    v13 = [OUTLINED_FUNCTION_20() debugName];
    v14 = [a1 uniqueIdentifier];
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

  if (v7)
  {
    [v35 setObject:v7 forKeyedSubscript:@"MROutputContextDataSourceOutputDeviceUserInfoKey"];
  }

  v36 = [a1 notificationQueue];
  OUTLINED_FUNCTION_1_0();
  v44[1] = 3221225472;
  v44[2] = __69__MROutputContextDataSource_notifyVolumeMutedDidChange_outputDevice___block_invoke;
  v44[3] = &unk_1E769A4A0;
  v44[4] = a1;
  v45 = v35;
  v37 = v35;
  dispatch_async(v36, v44);

LABEL_19:
  v38 = *MEMORY[0x1E69E9840];
}

@end