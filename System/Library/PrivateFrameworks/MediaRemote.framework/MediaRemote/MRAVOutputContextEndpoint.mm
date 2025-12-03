@interface MRAVOutputContextEndpoint
- (BOOL)isRealized;
- (MRAVOutputContextEndpoint)initWithCoder:(id)coder;
- (MRAVOutputContextEndpoint)initWithOutputContext:(id)context uniqueIdentifier:(id)identifier;
- (MROrigin)origin;
- (NSArray)outputDevices;
- (id)_externalOutputContext;
- (id)deviceInfo;
- (id)predictedOutputDevice;
- (id)predictedOutputDeviceUIDs;
- (void)_adjustOutputDeviceVolume:(int64_t)volume outputDevice:(id)device details:(id)details queue:(id)queue completion:(id)completion;
- (void)_handleDeviceInfoDidChange:(id)change;
- (void)_modifyTopologyWithRequest:(id)request withReplyQueue:(id)queue completion:(id)completion;
- (void)_reloadOutputDevicesFromContext;
- (void)_setOutputDeviceVolume:(float)volume outputDevice:(id)device details:(id)details queue:(id)queue completion:(id)completion;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)removeOutputDeviceFromParentGroup:(id)group queue:(id)queue completion:(id)completion;
- (void)requestGroupSessionWithDetails:(id)details queue:(id)queue completion:(id)completion;
- (void)resetPredictedOutputDevice;
- (void)setHeadTrackedSpatialAudioMode:(id)mode outputDeviceUID:(id)d queue:(id)queue completion:(id)completion;
- (void)setListeningMode:(id)mode outputDeviceUID:(id)d queue:(id)queue completion:(id)completion;
- (void)setOrigin:(id)origin;
- (void)setOutputContext:(id)context;
- (void)setOutputContextController:(id)controller;
- (void)setOutputDevices:(id)devices;
@end

@implementation MRAVOutputContextEndpoint

- (id)deviceInfo
{
  origin = [(MRAVOutputContextEndpoint *)self origin];
  v3 = [MRDeviceInfoRequest deviceInfoForOrigin:origin];

  return v3;
}

- (MROrigin)origin
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_origin;
  objc_sync_exit(selfCopy);

  return v3;
}

- (NSArray)outputDevices
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSArray *)selfCopy->_outputDevices copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)_reloadOutputDevicesFromContext
{
  if (self)
  {
    outputDevices = [self[10] outputDevices];
    [self setOutputDevices:outputDevices];
  }
}

- (id)predictedOutputDevice
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  predictedOutputDevice = [(MRAVConcreteOutputContext *)selfCopy->_outputContext predictedOutputDevice];
  objc_sync_exit(selfCopy);

  return predictedOutputDevice;
}

- (id)predictedOutputDeviceUIDs
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  predictedOutputDeviceUIDs = [(MRAVConcreteOutputContext *)selfCopy->_outputContext predictedOutputDeviceUIDs];
  objc_sync_exit(selfCopy);

  return predictedOutputDeviceUIDs;
}

- (MRAVOutputContextEndpoint)initWithOutputContext:(id)context uniqueIdentifier:(id)identifier
{
  contextCopy = context;
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = MRAVOutputContextEndpoint;
  _init = [(MRAVEndpoint *)&v12 _init];
  v9 = _init;
  if (_init)
  {
    objc_storeStrong(_init + 7, identifier);
    [(MRAVOutputContextEndpoint *)v9 setOutputContext:contextCopy];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v9 selector:sel__handleDeviceInfoDidChange_ name:@"kMRDeviceInfoDidChangeNotification" object:0];
  }

  return v9;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = MRAVOutputContextEndpoint;
  [(MRAVOutputContextEndpoint *)&v4 dealloc];
}

- (void)setOutputContextController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v7 = defaultCenter;
  if (selfCopy->_outputContextController)
  {
    [defaultCenter removeObserver:selfCopy name:@"MROutputContextDataSourceDidReloadNotification" object:?];
  }

  objc_storeStrong(&selfCopy->_outputContextController, controller);
  if (selfCopy->_outputContextController)
  {
    [v7 addObserver:selfCopy selector:sel_outputContextDataSourceReloaded_ name:@"MROutputContextDataSourceDidReloadNotification" object:?];
  }

  [(MRAVEndpoint *)selfCopy setOutputContextDataSource:controllerCopy];

  objc_sync_exit(selfCopy);
}

- (id)_externalOutputContext
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_outputContextController;
  objc_sync_exit(selfCopy);

  return v3;
}

- (MRAVOutputContextEndpoint)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"outputContextUID"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uniqueIdentifier"];

  v7 = [MRAVConcreteOutputContext createOutputContextWithUniqueIdentifier:v5];
  v8 = [(MRAVOutputContextEndpoint *)self initWithOutputContext:v7 uniqueIdentifier:v6];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  outputContext = self->_outputContext;
  coderCopy = coder;
  uniqueIdentifier = [(MRAVOutputContext *)outputContext uniqueIdentifier];
  [coderCopy encodeObject:uniqueIdentifier forKey:@"outputContextUID"];

  [coderCopy encodeObject:self->_uniqueIdentifier forKey:@"uniqueIdentifier"];
}

- (void)setOutputContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_outputContext != contextCopy)
  {
    objc_storeStrong(&selfCopy->_outputContext, context);
    if (contextCopy)
    {
      if ([(MRAVConcreteOutputContext *)selfCopy->_outputContext type]== 1)
      {
        v6 = +[MROutputContextController sharedOutputContextController];
      }

      else
      {
        v6 = [[MROutputContextController alloc] initWithOutputContext:contextCopy];
      }

      [(MRAVOutputContextEndpoint *)selfCopy setOutputContextController:v6];
    }
  }

  [(MRAVOutputContextEndpoint *)&selfCopy->super.super.isa _reloadOutputDevicesFromContext];
  objc_sync_exit(selfCopy);
}

- (void)setOrigin:(id)origin
{
  originCopy = origin;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_origin != originCopy)
  {
    objc_storeStrong(&selfCopy->_origin, origin);
  }

  objc_sync_exit(selfCopy);
}

- (BOOL)isRealized
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_outputContext)
  {
    v3 = selfCopy->_origin != 0;
  }

  else
  {
    v3 = 0;
  }

  objc_sync_exit(selfCopy);

  return v3;
}

- (void)resetPredictedOutputDevice
{
  obj = self;
  objc_sync_enter(obj);
  [(MRAVConcreteOutputContext *)obj->_outputContext resetPredictedOutputDevice];
  objc_sync_exit(obj);
}

- (void)setOutputDevices:(id)devices
{
  v42 = *MEMORY[0x1E69E9840];
  devicesCopy = devices;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  outputDevices = selfCopy->_outputDevices;
  if (outputDevices != devicesCopy)
  {
    firstObject = [(NSArray *)outputDevices firstObject];
    v8 = [(NSArray *)devicesCopy copy];
    v9 = selfCopy->_outputDevices;
    selfCopy->_outputDevices = v8;

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v10 = selfCopy->_outputDevices;
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

          [*(*(&v27 + 1) + 8 * i) setEndpoint:{selfCopy, v27}];
        }

        v11 = [(NSArray *)v10 countByEnumeratingWithState:&v27 objects:v41 count:16];
      }

      while (v11);
    }

    firstObject2 = [(NSArray *)devicesCopy firstObject];
    if (-[NSArray count](devicesCopy, "count") != 1 || [firstObject2 deviceType] != 2)
    {
      goto LABEL_17;
    }

    modelID = [firstObject modelID];
    modelID2 = [firstObject2 modelID];
    v17 = modelID;
    v18 = modelID2;
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
        [(MRAVEndpoint *)selfCopy scheduleEndpointOutputDevicesDidChangeNotification];

        goto LABEL_18;
      }

      v17 = _MRLogForCategory(0);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        uniqueIdentifier = [(MRAVOutputContextEndpoint *)selfCopy uniqueIdentifier];
        localizedName = [(MRAVEndpoint *)selfCopy localizedName];
        v23 = [firstObject2 uid];
        name = [firstObject2 name];
        modelID3 = [firstObject2 modelID];
        *buf = 138544386;
        v32 = uniqueIdentifier;
        v33 = 2114;
        v34 = localizedName;
        v35 = 2114;
        v36 = v23;
        v37 = 2114;
        v38 = name;
        v39 = 2114;
        v40 = modelID3;
        _os_log_impl(&dword_1A2860000, v17, OS_LOG_TYPE_DEFAULT, "Updating Endpoint: %{public}@ | %{public}@ bt output device: %{public}@ | %{public}@ | %{public}@", buf, 0x34u);
      }
    }

    goto LABEL_17;
  }

LABEL_18:
  objc_sync_exit(selfCopy);

  v26 = *MEMORY[0x1E69E9840];
}

- (void)requestGroupSessionWithDetails:(id)details queue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __77__MRAVOutputContextEndpoint_requestGroupSessionWithDetails_queue_completion___block_invoke;
  v15 = &unk_1E769B768;
  v16 = queueCopy;
  v17 = completionCopy;
  v8 = completionCopy;
  v9 = queueCopy;
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

- (void)_modifyTopologyWithRequest:(id)request withReplyQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __82__MRAVOutputContextEndpoint__modifyTopologyWithRequest_withReplyQueue_completion___block_invoke;
  v17 = &unk_1E769AB50;
  v10 = completionCopy;
  v19 = v10;
  v11 = queueCopy;
  v18 = v11;
  requestCopy = request;
  v13 = MEMORY[0x1A58E3570](&v14);
  if ([requestCopy shouldWaitForUpdatedOutputDevices])
  {
    [(MROutputContextController *)self->_outputContextController modifyTopologyWithRequest:requestCopy completion:v13];
  }

  else
  {
    [(MRAVConcreteOutputContext *)self->_outputContext modifyTopologyWithRequest:requestCopy withReplyQueue:v11 completion:v13];
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

- (void)_setOutputDeviceVolume:(float)volume outputDevice:(id)device details:(id)details queue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  *&v14 = volume;
  v15 = [(MROutputContextController *)self->_outputContextController setVolume:device outputDeviceUID:details details:v14];
  if (completionCopy)
  {
    v16 = queueCopy;
    if (!queueCopy)
    {
      v16 = MEMORY[0x1E69E96A0];
      v17 = MEMORY[0x1E69E96A0];
    }

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __90__MRAVOutputContextEndpoint__setOutputDeviceVolume_outputDevice_details_queue_completion___block_invoke;
    v18[3] = &unk_1E769AB28;
    v20 = completionCopy;
    v19 = v15;
    dispatch_async(v16, v18);
    if (!queueCopy)
    {
    }
  }
}

- (void)_adjustOutputDeviceVolume:(int64_t)volume outputDevice:(id)device details:(id)details queue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  v14 = [(MROutputContextController *)self->_outputContextController adjustVolume:volume outputDeviceUID:device details:details];
  if (completionCopy)
  {
    v15 = queueCopy;
    if (!queueCopy)
    {
      v15 = MEMORY[0x1E69E96A0];
      v16 = MEMORY[0x1E69E96A0];
    }

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __93__MRAVOutputContextEndpoint__adjustOutputDeviceVolume_outputDevice_details_queue_completion___block_invoke;
    v17[3] = &unk_1E769AB28;
    v19 = completionCopy;
    v18 = v14;
    dispatch_async(v15, v17);
    if (!queueCopy)
    {
    }
  }
}

- (void)removeOutputDeviceFromParentGroup:(id)group queue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  queueCopy = queue;
  notify_post([@"kAirPlayWHANotification_BreakAwayFromCurrentGroup" UTF8String]);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__MRAVOutputContextEndpoint_removeOutputDeviceFromParentGroup_queue_completion___block_invoke;
  block[3] = &unk_1E769AD58;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(queueCopy, block);
}

- (void)setListeningMode:(id)mode outputDeviceUID:(id)d queue:(id)queue completion:(id)completion
{
  modeCopy = mode;
  queueCopy = queue;
  completionCopy = completion;
  v13 = [(MRAVEndpoint *)self outputDeviceWithUID:d];
  v14 = v13;
  if (v13)
  {
    v21 = 0;
    [v13 setCurrentBluetoothListeningMode:modeCopy error:&v21];
    v15 = v21;
  }

  else
  {
    v15 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:39];
  }

  v16 = v15;
  if (completionCopy)
  {
    if (!queueCopy)
    {
      queueCopy = MEMORY[0x1E69E96A0];
      v17 = MEMORY[0x1E69E96A0];
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __79__MRAVOutputContextEndpoint_setListeningMode_outputDeviceUID_queue_completion___block_invoke;
    block[3] = &unk_1E769AB28;
    v20 = completionCopy;
    v19 = v16;
    dispatch_async(queueCopy, block);
  }
}

- (void)setHeadTrackedSpatialAudioMode:(id)mode outputDeviceUID:(id)d queue:(id)queue completion:(id)completion
{
  modeCopy = mode;
  queueCopy = queue;
  completionCopy = completion;
  v13 = [(MRAVEndpoint *)self outputDeviceWithUID:d];
  v14 = v13;
  if (v13)
  {
    v21 = 0;
    [v13 setHeadTrackedSpatialAudioMode:modeCopy error:&v21];
    v15 = v21;
  }

  else
  {
    v15 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:39];
  }

  v16 = v15;
  if (completionCopy)
  {
    if (!queueCopy)
    {
      queueCopy = MEMORY[0x1E69E96A0];
      v17 = MEMORY[0x1E69E96A0];
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __93__MRAVOutputContextEndpoint_setHeadTrackedSpatialAudioMode_outputDeviceUID_queue_completion___block_invoke;
    block[3] = &unk_1E769AB28;
    v20 = completionCopy;
    v19 = v16;
    dispatch_async(queueCopy, block);
  }
}

- (void)_handleDeviceInfoDidChange:(id)change
{
  changeCopy = change;
  userInfo = [changeCopy userInfo];
  v5 = MRGetOriginFromUserInfo(userInfo);

  origin = [(MRAVOutputContextEndpoint *)self origin];
  if ([v5 isEqual:origin])
  {
    userInfo2 = [changeCopy userInfo];
    v8 = [userInfo2 objectForKeyedSubscript:@"kMRPairedDeviceUserInfoKey"];

    userInfo3 = [changeCopy userInfo];
    v10 = [userInfo3 objectForKeyedSubscript:@"kMRPreviousPairedDeviceUserInfoDataKey"];

    [objc_opt_class() _notifyDeviceInfoDidChange:v8 previousDeviceInfo:v10 endpoint:self];
  }
}

@end