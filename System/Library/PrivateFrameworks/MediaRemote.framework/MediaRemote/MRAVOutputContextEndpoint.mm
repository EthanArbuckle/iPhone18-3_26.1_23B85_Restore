@interface MRAVOutputContextEndpoint
- (BOOL)isRealized;
- (MRAVOutputContextEndpoint)initWithCoder:(id)a3;
- (MRAVOutputContextEndpoint)initWithOutputContext:(id)a3 uniqueIdentifier:(id)a4;
- (MROrigin)origin;
- (NSArray)outputDevices;
- (id)_externalOutputContext;
- (id)deviceInfo;
- (id)predictedOutputDevice;
- (id)predictedOutputDeviceUIDs;
- (void)_adjustOutputDeviceVolume:(int64_t)a3 outputDevice:(id)a4 details:(id)a5 queue:(id)a6 completion:(id)a7;
- (void)_handleDeviceInfoDidChange:(id)a3;
- (void)_modifyTopologyWithRequest:(id)a3 withReplyQueue:(id)a4 completion:(id)a5;
- (void)_reloadOutputDevicesFromContext;
- (void)_setOutputDeviceVolume:(float)a3 outputDevice:(id)a4 details:(id)a5 queue:(id)a6 completion:(id)a7;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)removeOutputDeviceFromParentGroup:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)requestGroupSessionWithDetails:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)resetPredictedOutputDevice;
- (void)setHeadTrackedSpatialAudioMode:(id)a3 outputDeviceUID:(id)a4 queue:(id)a5 completion:(id)a6;
- (void)setListeningMode:(id)a3 outputDeviceUID:(id)a4 queue:(id)a5 completion:(id)a6;
- (void)setOrigin:(id)a3;
- (void)setOutputContext:(id)a3;
- (void)setOutputContextController:(id)a3;
- (void)setOutputDevices:(id)a3;
@end

@implementation MRAVOutputContextEndpoint

- (id)deviceInfo
{
  v2 = [(MRAVOutputContextEndpoint *)self origin];
  v3 = [MRDeviceInfoRequest deviceInfoForOrigin:v2];

  return v3;
}

- (MROrigin)origin
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_origin;
  objc_sync_exit(v2);

  return v3;
}

- (NSArray)outputDevices
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSArray *)v2->_outputDevices copy];
  objc_sync_exit(v2);

  return v3;
}

- (void)_reloadOutputDevicesFromContext
{
  if (a1)
  {
    v2 = [a1[10] outputDevices];
    [a1 setOutputDevices:v2];
  }
}

- (id)predictedOutputDevice
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(MRAVConcreteOutputContext *)v2->_outputContext predictedOutputDevice];
  objc_sync_exit(v2);

  return v3;
}

- (id)predictedOutputDeviceUIDs
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(MRAVConcreteOutputContext *)v2->_outputContext predictedOutputDeviceUIDs];
  objc_sync_exit(v2);

  return v3;
}

- (MRAVOutputContextEndpoint)initWithOutputContext:(id)a3 uniqueIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = MRAVOutputContextEndpoint;
  v8 = [(MRAVEndpoint *)&v12 _init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 7, a4);
    [(MRAVOutputContextEndpoint *)v9 setOutputContext:v6];
    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    [v10 addObserver:v9 selector:sel__handleDeviceInfoDidChange_ name:@"kMRDeviceInfoDidChangeNotification" object:0];
  }

  return v9;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MRAVOutputContextEndpoint;
  [(MRAVOutputContextEndpoint *)&v4 dealloc];
}

- (void)setOutputContextController:(id)a3
{
  v8 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  v7 = v6;
  if (v5->_outputContextController)
  {
    [v6 removeObserver:v5 name:@"MROutputContextDataSourceDidReloadNotification" object:?];
  }

  objc_storeStrong(&v5->_outputContextController, a3);
  if (v5->_outputContextController)
  {
    [v7 addObserver:v5 selector:sel_outputContextDataSourceReloaded_ name:@"MROutputContextDataSourceDidReloadNotification" object:?];
  }

  [(MRAVEndpoint *)v5 setOutputContextDataSource:v8];

  objc_sync_exit(v5);
}

- (id)_externalOutputContext
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_outputContextController;
  objc_sync_exit(v2);

  return v3;
}

- (MRAVOutputContextEndpoint)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"outputContextUID"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uniqueIdentifier"];

  v7 = [MRAVConcreteOutputContext createOutputContextWithUniqueIdentifier:v5];
  v8 = [(MRAVOutputContextEndpoint *)self initWithOutputContext:v7 uniqueIdentifier:v6];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  outputContext = self->_outputContext;
  v6 = a3;
  v5 = [(MRAVOutputContext *)outputContext uniqueIdentifier];
  [v6 encodeObject:v5 forKey:@"outputContextUID"];

  [v6 encodeObject:self->_uniqueIdentifier forKey:@"uniqueIdentifier"];
}

- (void)setOutputContext:(id)a3
{
  v7 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (v5->_outputContext != v7)
  {
    objc_storeStrong(&v5->_outputContext, a3);
    if (v7)
    {
      if ([(MRAVConcreteOutputContext *)v5->_outputContext type]== 1)
      {
        v6 = +[MROutputContextController sharedOutputContextController];
      }

      else
      {
        v6 = [[MROutputContextController alloc] initWithOutputContext:v7];
      }

      [(MRAVOutputContextEndpoint *)v5 setOutputContextController:v6];
    }
  }

  [(MRAVOutputContextEndpoint *)&v5->super.super.isa _reloadOutputDevicesFromContext];
  objc_sync_exit(v5);
}

- (void)setOrigin:(id)a3
{
  v6 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (v5->_origin != v6)
  {
    objc_storeStrong(&v5->_origin, a3);
  }

  objc_sync_exit(v5);
}

- (BOOL)isRealized
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_outputContext)
  {
    v3 = v2->_origin != 0;
  }

  else
  {
    v3 = 0;
  }

  objc_sync_exit(v2);

  return v3;
}

- (void)resetPredictedOutputDevice
{
  obj = self;
  objc_sync_enter(obj);
  [(MRAVConcreteOutputContext *)obj->_outputContext resetPredictedOutputDevice];
  objc_sync_exit(obj);
}

- (void)setOutputDevices:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  outputDevices = v5->_outputDevices;
  if (outputDevices != v4)
  {
    v7 = [(NSArray *)outputDevices firstObject];
    v8 = [(NSArray *)v4 copy];
    v9 = v5->_outputDevices;
    v5->_outputDevices = v8;

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v10 = v5->_outputDevices;
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v27 objects:v41 count:16];
    if (v11)
    {
      v12 = *v28;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v28 != v12)
          {
            objc_enumerationMutation(v10);
          }

          [*(*(&v27 + 1) + 8 * i) setEndpoint:{v5, v27}];
        }

        v11 = [(NSArray *)v10 countByEnumeratingWithState:&v27 objects:v41 count:16];
      }

      while (v11);
    }

    v14 = [(NSArray *)v4 firstObject];
    if (-[NSArray count](v4, "count") != 1 || [v14 deviceType] != 2)
    {
      goto LABEL_17;
    }

    v15 = [v7 modelID];
    v16 = [v14 modelID];
    v17 = v15;
    v18 = v16;
    v19 = v18;
    if (v17 == v18)
    {
    }

    else
    {
      v20 = [v17 isEqual:v18];

      if (v20)
      {
LABEL_17:
        [(MRAVEndpoint *)v5 scheduleEndpointOutputDevicesDidChangeNotification];

        goto LABEL_18;
      }

      v17 = _MRLogForCategory(0);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [(MRAVOutputContextEndpoint *)v5 uniqueIdentifier];
        v22 = [(MRAVEndpoint *)v5 localizedName];
        v23 = [v14 uid];
        v24 = [v14 name];
        v25 = [v14 modelID];
        *buf = 138544386;
        v32 = v21;
        v33 = 2114;
        v34 = v22;
        v35 = 2114;
        v36 = v23;
        v37 = 2114;
        v38 = v24;
        v39 = 2114;
        v40 = v25;
        _os_log_impl(&dword_1A2860000, v17, OS_LOG_TYPE_DEFAULT, "Updating Endpoint: %{public}@ | %{public}@ bt output device: %{public}@ | %{public}@ | %{public}@", buf, 0x34u);
      }
    }

    goto LABEL_17;
  }

LABEL_18:
  objc_sync_exit(v5);

  v26 = *MEMORY[0x1E69E9840];
}

- (void)requestGroupSessionWithDetails:(id)a3 queue:(id)a4 completion:(id)a5
{
  v6 = a4;
  v7 = a5;
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __77__MRAVOutputContextEndpoint_requestGroupSessionWithDetails_queue_completion___block_invoke;
  v15 = &unk_1E769B768;
  v16 = v6;
  v17 = v7;
  v8 = v7;
  v9 = v6;
  v10 = MEMORY[0x1A58E3570](&v12);
  v11 = MRGetSharedService();
  [v11 requestGroupSessionWithCompletion:{v10, v12, v13, v14, v15}];
}

void __77__MRAVOutputContextEndpoint_requestGroupSessionWithDetails_queue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__MRAVOutputContextEndpoint_requestGroupSessionWithDetails_queue_completion___block_invoke_2;
  block[3] = &unk_1E769AC18;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)_modifyTopologyWithRequest:(id)a3 withReplyQueue:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __82__MRAVOutputContextEndpoint__modifyTopologyWithRequest_withReplyQueue_completion___block_invoke;
  v17 = &unk_1E769AB50;
  v10 = v9;
  v19 = v10;
  v11 = v8;
  v18 = v11;
  v12 = a3;
  v13 = MEMORY[0x1A58E3570](&v14);
  if ([v12 shouldWaitForUpdatedOutputDevices])
  {
    [(MROutputContextController *)self->_outputContextController modifyTopologyWithRequest:v12 completion:v13];
  }

  else
  {
    [(MRAVConcreteOutputContext *)self->_outputContext modifyTopologyWithRequest:v12 withReplyQueue:v11 completion:v13];
  }
}

void __82__MRAVOutputContextEndpoint__modifyTopologyWithRequest_withReplyQueue_completion___block_invoke(uint64_t a1, void *a2)
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
    v8[2] = __82__MRAVOutputContextEndpoint__modifyTopologyWithRequest_withReplyQueue_completion___block_invoke_2;
    v8[3] = &unk_1E769AB28;
    v10 = v4;
    v9 = v3;
    dispatch_async(v6, v8);
    if (!v5)
    {
    }
  }
}

- (void)_setOutputDeviceVolume:(float)a3 outputDevice:(id)a4 details:(id)a5 queue:(id)a6 completion:(id)a7
{
  v12 = a6;
  v13 = a7;
  *&v14 = a3;
  v15 = [(MROutputContextController *)self->_outputContextController setVolume:a4 outputDeviceUID:a5 details:v14];
  if (v13)
  {
    v16 = v12;
    if (!v12)
    {
      v16 = MEMORY[0x1E69E96A0];
      v17 = MEMORY[0x1E69E96A0];
    }

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __90__MRAVOutputContextEndpoint__setOutputDeviceVolume_outputDevice_details_queue_completion___block_invoke;
    v18[3] = &unk_1E769AB28;
    v20 = v13;
    v19 = v15;
    dispatch_async(v16, v18);
    if (!v12)
    {
    }
  }
}

- (void)_adjustOutputDeviceVolume:(int64_t)a3 outputDevice:(id)a4 details:(id)a5 queue:(id)a6 completion:(id)a7
{
  v12 = a6;
  v13 = a7;
  v14 = [(MROutputContextController *)self->_outputContextController adjustVolume:a3 outputDeviceUID:a4 details:a5];
  if (v13)
  {
    v15 = v12;
    if (!v12)
    {
      v15 = MEMORY[0x1E69E96A0];
      v16 = MEMORY[0x1E69E96A0];
    }

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __93__MRAVOutputContextEndpoint__adjustOutputDeviceVolume_outputDevice_details_queue_completion___block_invoke;
    v17[3] = &unk_1E769AB28;
    v19 = v13;
    v18 = v14;
    dispatch_async(v15, v17);
    if (!v12)
    {
    }
  }
}

- (void)removeOutputDeviceFromParentGroup:(id)a3 queue:(id)a4 completion:(id)a5
{
  v6 = a5;
  v7 = a4;
  notify_post([@"kAirPlayWHANotification_BreakAwayFromCurrentGroup" UTF8String]);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__MRAVOutputContextEndpoint_removeOutputDeviceFromParentGroup_queue_completion___block_invoke;
  block[3] = &unk_1E769AD58;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)setListeningMode:(id)a3 outputDeviceUID:(id)a4 queue:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [(MRAVEndpoint *)self outputDeviceWithUID:a4];
  v14 = v13;
  if (v13)
  {
    v21 = 0;
    [v13 setCurrentBluetoothListeningMode:v10 error:&v21];
    v15 = v21;
  }

  else
  {
    v15 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:39];
  }

  v16 = v15;
  if (v12)
  {
    if (!v11)
    {
      v11 = MEMORY[0x1E69E96A0];
      v17 = MEMORY[0x1E69E96A0];
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __79__MRAVOutputContextEndpoint_setListeningMode_outputDeviceUID_queue_completion___block_invoke;
    block[3] = &unk_1E769AB28;
    v20 = v12;
    v19 = v16;
    dispatch_async(v11, block);
  }
}

- (void)setHeadTrackedSpatialAudioMode:(id)a3 outputDeviceUID:(id)a4 queue:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [(MRAVEndpoint *)self outputDeviceWithUID:a4];
  v14 = v13;
  if (v13)
  {
    v21 = 0;
    [v13 setHeadTrackedSpatialAudioMode:v10 error:&v21];
    v15 = v21;
  }

  else
  {
    v15 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:39];
  }

  v16 = v15;
  if (v12)
  {
    if (!v11)
    {
      v11 = MEMORY[0x1E69E96A0];
      v17 = MEMORY[0x1E69E96A0];
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __93__MRAVOutputContextEndpoint_setHeadTrackedSpatialAudioMode_outputDeviceUID_queue_completion___block_invoke;
    block[3] = &unk_1E769AB28;
    v20 = v12;
    v19 = v16;
    dispatch_async(v11, block);
  }
}

- (void)_handleDeviceInfoDidChange:(id)a3
{
  v11 = a3;
  v4 = [v11 userInfo];
  v5 = MRGetOriginFromUserInfo(v4);

  v6 = [(MRAVOutputContextEndpoint *)self origin];
  if ([v5 isEqual:v6])
  {
    v7 = [v11 userInfo];
    v8 = [v7 objectForKeyedSubscript:@"kMRPairedDeviceUserInfoKey"];

    v9 = [v11 userInfo];
    v10 = [v9 objectForKeyedSubscript:@"kMRPreviousPairedDeviceUserInfoDataKey"];

    [objc_opt_class() _notifyDeviceInfoDidChange:v8 previousDeviceInfo:v10 endpoint:self];
  }
}

@end