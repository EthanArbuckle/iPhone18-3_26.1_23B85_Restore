@interface CMContinuityCaptureTransportSidecarDevice
- (BOOL)active;
- (BOOL)canDeferTermination;
- (BOOL)disconnectedWhileWired;
- (BOOL)hasStreamIntent;
- (BOOL)legacyReconnectRecovery;
- (BOOL)nearby;
- (BOOL)terminationDeferred;
- (BOOL)usable;
- (BOOL)userDisconnected;
- (BOOL)wifiP2pActive;
- (BOOL)wired;
- (CMContinuityCaptureCapabilities)capabilities;
- (CMContinuityCaptureTransportSidecarDevice)initWithSidecarDevice:(id)device capabilities:(id)capabilities remote:(BOOL)remote;
- (NSArray)activeStreams;
- (NSString)description;
- (NSString)deviceModel;
- (NSString)deviceName;
- (NSUUID)deviceIdentifier;
- (SidecarDevice)device;
- (id)streamForIdentifier:(id)identifier;
- (int64_t)deviceModelType;
- (unint64_t)deviceMajorVersion;
- (unint64_t)deviceMinorVersion;
- (unint64_t)deviceStatus;
- (void)_didCaptureStillImage:(id)image entity:(int64_t)entity;
- (void)_handleAVCNegotiation:(int64_t)negotiation data:(id)data;
- (void)_postEvent:(id)event entity:(int64_t)entity data:(id)data;
- (void)_setValueForControl:(id)control completion:(id)completion;
- (void)_startStream:(id)stream option:(unint64_t)option completion:(id)completion;
- (void)_stopStream:(int64_t)stream option:(unint64_t)option completion:(id)completion;
- (void)_synchronizeAudioClockWithSampleTime:(unint64_t)time networkTime:(unint64_t)networkTime clockGrandMasterIdentifier:(unint64_t)identifier;
- (void)activateStream:(id)stream;
- (void)captureStillImage:(id)image entity:(int64_t)entity completion:(id)completion;
- (void)didCaptureStillImage:(id)image entity:(int64_t)entity;
- (void)enqueueReactionEffect:(id)effect entity:(int64_t)entity;
- (void)handleAVCNegotiation:(int64_t)negotiation data:(id)data;
- (void)handleSynchronizeAudioClockCompletion;
- (void)notifyDeviceStateChange;
- (void)postEvent:(id)event entity:(int64_t)entity data:(id)data;
- (void)resetDevice:(id)device;
- (void)setCapabilities:(id)capabilities;
- (void)setDeviceMajorVersion:(unint64_t)version;
- (void)setDeviceMinorVersion:(unint64_t)version;
- (void)setLegacyReconnectRecovery:(BOOL)recovery;
- (void)setNearby:(BOOL)nearby;
- (void)setStreamIntent:(BOOL)intent;
- (void)setTerminationDeferred:(BOOL)deferred;
- (void)setUserDisconnected:(BOOL)disconnected;
- (void)setValueForControl:(id)control completion:(id)completion;
- (void)startStream:(id)stream option:(unint64_t)option completion:(id)completion;
- (void)stopStream:(int64_t)stream option:(unint64_t)option completion:(id)completion;
- (void)synchronizeAudioClockWithSampleTime:(unint64_t)time networkTime:(unint64_t)networkTime clockGrandMasterIdentifier:(unint64_t)identifier;
- (void)teardownStreams;
@end

@implementation CMContinuityCaptureTransportSidecarDevice

- (void)resetDevice:(id)device
{
  deviceCopy = device;
  obj = self;
  objc_sync_enter(obj);
  device = obj->_device;
  obj->_device = deviceCopy;

  objc_sync_exit(obj);
}

- (void)teardownStreams
{
  v3 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412546;
    selfCopy = self;
    v7 = 2080;
    v8 = "[CMContinuityCaptureTransportSidecarDevice teardownStreams]";
    _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%@ %s", &v5, 0x16u);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  [(CMContinuityCaptureTransportSidecarDevice *)selfCopy2 willChangeValueForKey:@"activeStreams"];
  [(NSMutableDictionary *)selfCopy2->_activeStreams removeAllObjects];
  [(CMContinuityCaptureTransportSidecarDevice *)selfCopy2 didChangeValueForKey:@"activeStreams"];
  [(CMContinuityCaptureTransportSidecarDevice *)selfCopy2 willChangeValueForKey:@"active"];
  selfCopy2->_active = 0;
  [(CMContinuityCaptureTransportSidecarDevice *)selfCopy2 didChangeValueForKey:@"active"];
  objc_sync_exit(selfCopy2);
}

- (BOOL)active
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  active = selfCopy->_active;
  objc_sync_exit(selfCopy);

  return active;
}

- (id)streamForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_activeStreams objectForKeyedSubscript:identifierCopy];
  objc_sync_exit(selfCopy);

  return v6;
}

- (void)activateStream:(id)stream
{
  streamCopy = stream;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__CMContinuityCaptureTransportSidecarDevice_activateStream___block_invoke;
  v6[3] = &unk_278D5C660;
  objc_copyWeak(&v8, &location);
  v5 = streamCopy;
  v7 = v5;
  [v5 activate:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __60__CMContinuityCaptureTransportSidecarDevice_activateStream___block_invoke(uint64_t a1, void *a2)
{
  if (!a2 || ![a2 code])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v4 = WeakRetained;
    if (WeakRetained)
    {
      v5 = WeakRetained[8];
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __60__CMContinuityCaptureTransportSidecarDevice_activateStream___block_invoke_2;
      v6[3] = &unk_278D5C008;
      v7 = WeakRetained;
      v8 = *(a1 + 32);
      dispatch_async(v5, v6);
    }
  }
}

void __60__CMContinuityCaptureTransportSidecarDevice_activateStream___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  [*(a1 + 32) willChangeValueForKey:@"activeStreams"];
  v3 = [*(*(a1 + 32) + 48) count];
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 32) + 48);
  v6 = [v4 streamIdentifier];
  [v5 setObject:v4 forKeyedSubscript:v6];

  [*(a1 + 32) didChangeValueForKey:@"activeStreams"];
  objc_sync_exit(v2);

  if (!v3)
  {
    [*(a1 + 32) willChangeValueForKey:@"active"];
    v7 = *(a1 + 32);
    objc_sync_enter(v7);
    *(*(a1 + 32) + 73) = 1;
    objc_sync_exit(v7);

    v8 = *(a1 + 32);

    [v8 didChangeValueForKey:@"active"];
  }
}

- (NSArray)activeStreams
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = objc_alloc(MEMORY[0x277CBEA60]);
  allValues = [(NSMutableDictionary *)selfCopy->_activeStreams allValues];
  v5 = [v3 initWithArray:allValues];

  objc_sync_exit(selfCopy);

  return v5;
}

- (void)setUserDisconnected:(BOOL)disconnected
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_userDisconnected = disconnected;
  objc_sync_exit(selfCopy);

  if ([(CMContinuityCaptureTransportSidecarDevice *)selfCopy wired])
  {
    obj = selfCopy;
    objc_sync_enter(obj);
    obj->_disconnectedWhileWired = 1;
    objc_sync_exit(obj);
  }
}

- (BOOL)userDisconnected
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  userDisconnected = selfCopy->_userDisconnected;
  objc_sync_exit(selfCopy);

  return userDisconnected;
}

- (BOOL)wifiP2pActive
{
  device = [(CMContinuityCaptureTransportSidecarDevice *)self device];
  v3 = ([device status] >> 9) & 1;

  return v3;
}

- (SidecarDevice)device
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_device;
  objc_sync_exit(selfCopy);

  return v3;
}

- (NSUUID)deviceIdentifier
{
  device = [(CMContinuityCaptureTransportSidecarDevice *)self device];
  identifier = [device identifier];

  return identifier;
}

- (NSString)deviceName
{
  device = [(CMContinuityCaptureTransportSidecarDevice *)self device];
  name = [device name];

  return name;
}

- (NSString)deviceModel
{
  device = [(CMContinuityCaptureTransportSidecarDevice *)self device];
  model = [device model];

  return model;
}

- (int64_t)deviceModelType
{
  device = [(CMContinuityCaptureTransportSidecarDevice *)self device];
  model = [device model];
  v4 = CMContinuityCaptureDeviceModelFromModelString();

  return v4;
}

- (unint64_t)deviceStatus
{
  device = [(CMContinuityCaptureTransportSidecarDevice *)self device];
  status = [device status];

  return status;
}

- (BOOL)wired
{
  device = [(CMContinuityCaptureTransportSidecarDevice *)self device];
  v3 = ([device status] >> 24) & 1;

  return v3;
}

- (BOOL)usable
{
  device = [(CMContinuityCaptureTransportSidecarDevice *)self device];
  v3 = [device cameraState] == 1;

  return v3;
}

- (unint64_t)deviceMajorVersion
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  deviceMajorVersion = selfCopy->_deviceMajorVersion;
  objc_sync_exit(selfCopy);

  return deviceMajorVersion;
}

- (void)setDeviceMajorVersion:(unint64_t)version
{
  obj = self;
  objc_sync_enter(obj);
  obj->_deviceMajorVersion = version;
  objc_sync_exit(obj);
}

- (unint64_t)deviceMinorVersion
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  deviceMinorVersion = selfCopy->_deviceMinorVersion;
  objc_sync_exit(selfCopy);

  return deviceMinorVersion;
}

- (void)setDeviceMinorVersion:(unint64_t)version
{
  obj = self;
  objc_sync_enter(obj);
  obj->_deviceMinorVersion = version;
  objc_sync_exit(obj);
}

- (BOOL)terminationDeferred
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  terminationDeferred = selfCopy->_terminationDeferred;
  objc_sync_exit(selfCopy);

  return terminationDeferred;
}

- (void)setTerminationDeferred:(BOOL)deferred
{
  obj = self;
  objc_sync_enter(obj);
  obj->_terminationDeferred = deferred;
  objc_sync_exit(obj);
}

- (BOOL)canDeferTermination
{
  if ([(CMContinuityCaptureTransportSidecarDevice *)self hasStreamIntent]&& ![(CMContinuityCaptureTransportSidecarDevice *)self userDisconnected])
  {
    capabilities = [(CMContinuityCaptureTransportSidecarDevice *)self capabilities];
    if (capabilities)
    {
      capabilities2 = [(CMContinuityCaptureTransportSidecarDevice *)self capabilities];
      v3 = [capabilities2 userDisabled] ^ 1;
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (BOOL)disconnectedWhileWired
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  disconnectedWhileWired = selfCopy->_disconnectedWhileWired;
  objc_sync_exit(selfCopy);

  return disconnectedWhileWired;
}

- (BOOL)legacyReconnectRecovery
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  legacyRecovery = selfCopy->_legacyRecovery;
  objc_sync_exit(selfCopy);

  return legacyRecovery;
}

- (void)setLegacyReconnectRecovery:(BOOL)recovery
{
  obj = self;
  objc_sync_enter(obj);
  obj->_legacyRecovery = recovery;
  objc_sync_exit(obj);
}

- (void)notifyDeviceStateChange
{
  if (![(CMContinuityCaptureTransportSidecarDevice *)self wired]&& [(CMContinuityCaptureTransportSidecarDevice *)self userDisconnected])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    selfCopy->_disconnectedWhileWired = 0;
    objc_sync_exit(selfCopy);
  }

  [(CMContinuityCaptureTransportSidecarDevice *)self willChangeValueForKey:@"deviceStatus"];
  [(CMContinuityCaptureTransportSidecarDevice *)self didChangeValueForKey:@"deviceStatus"];
  [(CMContinuityCaptureTransportSidecarDevice *)self willChangeValueForKey:@"usable"];
  [(CMContinuityCaptureTransportSidecarDevice *)self didChangeValueForKey:@"usable"];
  [(CMContinuityCaptureTransportSidecarDevice *)self willChangeValueForKey:@"wired"];
  [(CMContinuityCaptureTransportSidecarDevice *)self didChangeValueForKey:@"wired"];
  [(CMContinuityCaptureTransportSidecarDevice *)self willChangeValueForKey:@"nearby"];

  [(CMContinuityCaptureTransportSidecarDevice *)self didChangeValueForKey:@"nearby"];
}

- (CMContinuityCaptureCapabilities)capabilities
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_capabilities;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setCapabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  obj = self;
  objc_sync_enter(obj);
  capabilities = obj->_capabilities;
  obj->_capabilities = capabilitiesCopy;

  objc_sync_exit(obj);
}

- (BOOL)nearby
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  nearby = selfCopy->_nearby;
  objc_sync_exit(selfCopy);

  return nearby;
}

- (void)setNearby:(BOOL)nearby
{
  obj = self;
  objc_sync_enter(obj);
  obj->_nearby = nearby;
  objc_sync_exit(obj);
}

- (BOOL)hasStreamIntent
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  streamIntent = selfCopy->_streamIntent;
  objc_sync_exit(selfCopy);

  return streamIntent;
}

- (void)setStreamIntent:(BOOL)intent
{
  obj = self;
  objc_sync_enter(obj);
  obj->_streamIntent = intent;
  objc_sync_exit(obj);
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  device = [(CMContinuityCaptureTransportSidecarDevice *)self device];
  identifier = [device identifier];
  uUIDString = [identifier UUIDString];
  v9 = [v3 stringWithFormat:@"%@: %@ [%p]", v5, uUIDString, self];

  return v9;
}

- (void)synchronizeAudioClockWithSampleTime:(unint64_t)time networkTime:(unint64_t)networkTime clockGrandMasterIdentifier:(unint64_t)identifier
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __120__CMContinuityCaptureTransportSidecarDevice_synchronizeAudioClockWithSampleTime_networkTime_clockGrandMasterIdentifier___block_invoke;
  block[3] = &unk_278D5D180;
  objc_copyWeak(v11, &location);
  v11[1] = time;
  v11[2] = networkTime;
  v11[3] = identifier;
  dispatch_async(queue, block);
  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

void __120__CMContinuityCaptureTransportSidecarDevice_synchronizeAudioClockWithSampleTime_networkTime_clockGrandMasterIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _synchronizeAudioClockWithSampleTime:*(a1 + 40) networkTime:*(a1 + 48) clockGrandMasterIdentifier:*(a1 + 56)];
    WeakRetained = v3;
  }
}

- (void)_synchronizeAudioClockWithSampleTime:(unint64_t)time networkTime:(unint64_t)networkTime clockGrandMasterIdentifier:(unint64_t)identifier
{
  objc_initWeak(&location, self);
  dispatch_assert_queue_V2(self->_queue);
  v21[0] = &unk_2854EC8C0;
  v20[0] = @"ContinuityCaptureSelector";
  v20[1] = @"ContinuityCaptureArgs";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:time];
  v19[0] = v9;
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:networkTime];
  v19[1] = v10;
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:identifier];
  v19[2] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:3];
  v21[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];

  v14 = [(NSMutableDictionary *)self->_activeStreams objectForKeyedSubscript:@"ContinuityCaptureCommand"];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __121__CMContinuityCaptureTransportSidecarDevice__synchronizeAudioClockWithSampleTime_networkTime_clockGrandMasterIdentifier___block_invoke;
  v16[3] = &unk_278D5C660;
  objc_copyWeak(&v18, &location);
  v15 = v13;
  v17 = v15;
  [v14 sendMessage:@"ContinuityCaptureCommand" message:v15 completion:v16];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __121__CMContinuityCaptureTransportSidecarDevice__synchronizeAudioClockWithSampleTime_networkTime_clockGrandMasterIdentifier___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = *(a1 + 32);
    v7 = 138412802;
    v8 = WeakRetained;
    v9 = 2114;
    v10 = v6;
    v11 = 2112;
    v12 = a2;
    _os_log_impl(&dword_242545000, v4, OS_LOG_TYPE_DEFAULT, "%@ SendMessage %{public}@ Error %@", &v7, 0x20u);
  }
}

- (void)didCaptureStillImage:(id)image entity:(int64_t)entity
{
  imageCopy = image;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__CMContinuityCaptureTransportSidecarDevice_didCaptureStillImage_entity___block_invoke;
  v9[3] = &unk_278D5C770;
  objc_copyWeak(v11, &location);
  v10 = imageCopy;
  v11[1] = entity;
  v8 = imageCopy;
  dispatch_async(queue, v9);

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

void __73__CMContinuityCaptureTransportSidecarDevice_didCaptureStillImage_entity___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _didCaptureStillImage:*(a1 + 32) entity:*(a1 + 48)];
    WeakRetained = v3;
  }
}

- (void)_didCaptureStillImage:(id)image entity:(int64_t)entity
{
  imageCopy = image;
  objc_initWeak(&location, self);
  dispatch_assert_queue_V2(self->_queue);
  v26 = 0;
  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:imageCopy requiringSecureCoding:1 error:&v26];
  v8 = v26;
  if (v7)
  {
    v19[0] = &unk_2854EC8D8;
    v18[0] = @"ContinuityCaptureSelector";
    v18[1] = @"ContinuityCaptureArgs";
    v17[0] = v7;
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:entity];
    v17[1] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
    v19[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];

    v12 = [(NSMutableDictionary *)self->_activeStreams objectForKeyedSubscript:@"ContinuityCaptureData"];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __74__CMContinuityCaptureTransportSidecarDevice__didCaptureStillImage_entity___block_invoke;
    v14[3] = &unk_278D5C660;
    objc_copyWeak(&v16, &location);
    v13 = v11;
    v15 = v13;
    [v12 sendMessage:@"ContinuityCaptureData" message:v13 completion:v14];

    objc_destroyWeak(&v16);
  }

  else
  {
    v13 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      selfCopy = self;
      v22 = 2112;
      v23 = imageCopy;
      v24 = 2112;
      v25 = v8;
      _os_log_error_impl(&dword_242545000, v13, OS_LOG_TYPE_ERROR, "%{public}@ Failed to archive request %@ error %@", buf, 0x20u);
    }
  }

  objc_destroyWeak(&location);
}

void __74__CMContinuityCaptureTransportSidecarDevice__didCaptureStillImage_entity___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = *(a1 + 32);
    v7 = 138543874;
    v8 = WeakRetained;
    v9 = 2112;
    v10 = v6;
    v11 = 2112;
    v12 = a2;
    _os_log_impl(&dword_242545000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ SendMessage didCaptureStillImage %@ Error %@", &v7, 0x20u);
  }
}

- (void)handleSynchronizeAudioClockCompletion
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __82__CMContinuityCaptureTransportSidecarDevice_handleSynchronizeAudioClockCompletion__block_invoke;
  v4[3] = &unk_278D5C080;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __82__CMContinuityCaptureTransportSidecarDevice_handleSynchronizeAudioClockCompletion__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4[0] = @"ContinuityCaptureSelector";
    v4[1] = @"ContinuityCaptureArgs";
    v5[0] = &unk_2854EC8F0;
    v5[1] = &unk_2854ECD30;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:2];
    v3 = [WeakRetained[6] objectForKeyedSubscript:@"ContinuityCaptureCommand"];
    [v3 sendMessage:@"ContinuityCaptureCommand" message:v2 completion:&__block_literal_global_10];
  }
}

- (void)captureStillImage:(id)image entity:(int64_t)entity completion:(id)completion
{
  imageCopy = image;
  completionCopy = completion;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__CMContinuityCaptureTransportSidecarDevice_captureStillImage_entity_completion___block_invoke;
  block[3] = &unk_278D5C288;
  objc_copyWeak(v16, &location);
  v14 = imageCopy;
  v15 = completionCopy;
  v16[1] = entity;
  v11 = completionCopy;
  v12 = imageCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

void __81__CMContinuityCaptureTransportSidecarDevice_captureStillImage_entity_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v23 = 0;
    v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v23];
    v5 = v23;
    if (v4)
    {
      v16[0] = &unk_2854EC920;
      v15[0] = @"ContinuityCaptureSelector";
      v15[1] = @"ContinuityCaptureArgs";
      v14[0] = v4;
      v6 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 56)];
      v14[1] = v6;
      v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
      v16[1] = v7;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

      v9 = [WeakRetained[6] objectForKeyedSubscript:@"ContinuityCaptureCommand"];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __81__CMContinuityCaptureTransportSidecarDevice_captureStillImage_entity_completion___block_invoke_117;
      v12[3] = &unk_278D5D1A8;
      v13 = *(a1 + 40);
      [v9 sendMessage:@"ContinuityCaptureCommand" message:v8 completion:v12];
    }

    else
    {
      v10 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = *(a1 + 32);
        *buf = 138543874;
        v18 = WeakRetained;
        v19 = 2112;
        v20 = v11;
        v21 = 2112;
        v22 = v5;
        _os_log_error_impl(&dword_242545000, v10, OS_LOG_TYPE_ERROR, "%{public}@ archivedDataWithRootObject %@ Error %@", buf, 0x20u);
      }

      (*(*(a1 + 40) + 16))();
    }
  }
}

- (void)enqueueReactionEffect:(id)effect entity:(int64_t)entity
{
  effectCopy = effect;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __74__CMContinuityCaptureTransportSidecarDevice_enqueueReactionEffect_entity___block_invoke;
  v9[3] = &unk_278D5C770;
  objc_copyWeak(v11, &location);
  v10 = effectCopy;
  v11[1] = entity;
  v8 = effectCopy;
  dispatch_async(queue, v9);

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

void __74__CMContinuityCaptureTransportSidecarDevice_enqueueReactionEffect_entity___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      *buf = 138543618;
      v13 = WeakRetained;
      v14 = 2114;
      v15 = v4;
      _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ enqueueReactionEffect %{public}@", buf, 0x16u);
    }

    v11[0] = &unk_2854EC938;
    v10[0] = @"ContinuityCaptureSelector";
    v10[1] = @"ContinuityCaptureArgs";
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:{*(a1 + 48), *(a1 + 32)}];
    v9[1] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
    v11[1] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];

    v8 = [WeakRetained[6] objectForKeyedSubscript:@"ContinuityCaptureCommand"];
    [v8 sendMessage:@"ContinuityCaptureCommand" message:v7 completion:&__block_literal_global_122];
  }
}

- (void)setValueForControl:(id)control completion:(id)completion
{
  controlCopy = control;
  completionCopy = completion;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __75__CMContinuityCaptureTransportSidecarDevice_setValueForControl_completion___block_invoke;
  v11[3] = &unk_278D5C490;
  objc_copyWeak(&v14, &location);
  v12 = controlCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = controlCopy;
  dispatch_async(queue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __75__CMContinuityCaptureTransportSidecarDevice_setValueForControl_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _setValueForControl:*(a1 + 32) completion:*(a1 + 40)];
    WeakRetained = v3;
  }
}

- (void)_setValueForControl:(id)control completion:(id)completion
{
  controlCopy = control;
  completionCopy = completion;
  objc_initWeak(&location, self);
  dispatch_assert_queue_V2(self->_queue);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __76__CMContinuityCaptureTransportSidecarDevice__setValueForControl_completion___block_invoke;
  v26[3] = &unk_278D5C260;
  objc_copyWeak(&v28, &location);
  v8 = completionCopy;
  v27 = v8;
  v9 = MEMORY[0x245D12020](v26);
  v25 = 0;
  v10 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:controlCopy requiringSecureCoding:1 error:&v25];
  v11 = v25;
  if (v10)
  {
    v18[0] = &unk_2854EC950;
    v17[0] = @"ContinuityCaptureSelector";
    v17[1] = @"ContinuityCaptureArgs";
    v16 = v10;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
    v18[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];

    v14 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy2 = self;
      v21 = 2114;
      v22 = controlCopy;
      _os_log_impl(&dword_242545000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ setValueForControl %{public}@", buf, 0x16u);
    }

    v15 = [(NSMutableDictionary *)self->_activeStreams objectForKeyedSubscript:@"ContinuityCaptureControl"];
    [v15 sendMessage:@"ContinuityCaptureControl" message:v13 completion:v9];
  }

  else
  {
    v13 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      selfCopy2 = self;
      v21 = 2112;
      v22 = v11;
      v23 = 2112;
      v24 = controlCopy;
      _os_log_error_impl(&dword_242545000, v13, OS_LOG_TYPE_ERROR, "%{public}@ archivedDataWithRootObject Error %@ for control %@", buf, 0x20u);
    }
  }

  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);
}

uint64_t __76__CMContinuityCaptureTransportSidecarDevice__setValueForControl_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  if (CMContinityCaptureDebugLogEnabled())
  {
    v4 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __76__CMContinuityCaptureTransportSidecarDevice__setValueForControl_completion___block_invoke_cold_1(a1, a2, v4);
    }
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)handleAVCNegotiation:(int64_t)negotiation data:(id)data
{
  dataCopy = data;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__CMContinuityCaptureTransportSidecarDevice_handleAVCNegotiation_data___block_invoke;
  v9[3] = &unk_278D5C770;
  objc_copyWeak(v11, &location);
  v11[1] = negotiation;
  v10 = dataCopy;
  v8 = dataCopy;
  dispatch_async(queue, v9);

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

void __71__CMContinuityCaptureTransportSidecarDevice_handleAVCNegotiation_data___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _handleAVCNegotiation:*(a1 + 48) data:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)_handleAVCNegotiation:(int64_t)negotiation data:(id)data
{
  dataCopy = data;
  objc_initWeak(&location, self);
  v22[0] = &unk_2854EC968;
  v21[0] = @"ContinuityCaptureSelector";
  v21[1] = @"ContinuityCaptureArgs";
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:negotiation];
  v20[0] = v7;
  v20[1] = dataCopy;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v22[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];

  v10 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v18 = 1024;
    negotiationCopy = negotiation;
    _os_log_impl(&dword_242545000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ sendAVCNegotiation for entity %d", buf, 0x12u);
  }

  v11 = [(NSMutableDictionary *)self->_activeStreams objectForKeyedSubscript:@"ContinuityCaptureControl"];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __72__CMContinuityCaptureTransportSidecarDevice__handleAVCNegotiation_data___block_invoke;
  v13[3] = &unk_278D5C660;
  objc_copyWeak(&v15, &location);
  v12 = v9;
  v14 = v12;
  [v11 sendMessage:@"ContinuityCaptureControl" message:v12 completion:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __72__CMContinuityCaptureTransportSidecarDevice__handleAVCNegotiation_data___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (CMContinityCaptureDebugLogEnabled())
  {
    v4 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __72__CMContinuityCaptureTransportSidecarDevice__handleAVCNegotiation_data___block_invoke_cold_1(a1, v3, v4);
    }
  }
}

- (void)startStream:(id)stream option:(unint64_t)option completion:(id)completion
{
  streamCopy = stream;
  completionCopy = completion;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__CMContinuityCaptureTransportSidecarDevice_startStream_option_completion___block_invoke;
  block[3] = &unk_278D5C288;
  objc_copyWeak(v16, &location);
  v16[1] = option;
  v14 = streamCopy;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = streamCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

void __75__CMContinuityCaptureTransportSidecarDevice_startStream_option_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = objc_loadWeakRetained((a1 + 48));
    [v3 _startStream:*(a1 + 32) option:*(a1 + 56) completion:*(a1 + 40)];

    WeakRetained = v4;
  }
}

- (void)_startStream:(id)stream option:(unint64_t)option completion:(id)completion
{
  streamCopy = stream;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  v10 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy = self;
    v26 = 2114;
    v27 = streamCopy;
    v28 = 1024;
    optionCopy = option;
    _os_log_impl(&dword_242545000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ StartStream for configuration %{public}@ option %d", buf, 0x1Cu);
  }

  v23 = 0;
  v11 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:streamCopy requiringSecureCoding:1 error:&v23];
  v12 = v23;
  if (v11)
  {
    v22[0] = &unk_2854EC950;
    v21[0] = @"ContinuityCaptureSelector";
    v21[1] = @"ContinuityCaptureArgs";
    v20[0] = v11;
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:option];
    v20[1] = v13;
    v20[2] = &unk_2854EC980;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:3];
    v22[1] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];

    v16 = [(NSMutableDictionary *)self->_activeStreams objectForKeyedSubscript:@"ContinuityCaptureCommand"];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __76__CMContinuityCaptureTransportSidecarDevice__startStream_option_completion___block_invoke;
    v18[3] = &unk_278D5D1A8;
    v19 = completionCopy;
    [v16 sendMessage:@"ContinuityCaptureCommand" message:v15 completion:v18];
  }

  else
  {
    v17 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [CMContinuityCaptureTransportSidecarDevice _startStream:option:completion:];
    }

    (*(completionCopy + 2))(completionCopy, v12);
  }
}

- (void)stopStream:(int64_t)stream option:(unint64_t)option completion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__CMContinuityCaptureTransportSidecarDevice_stopStream_option_completion___block_invoke;
  block[3] = &unk_278D5C378;
  objc_copyWeak(v13, &location);
  v13[1] = stream;
  v13[2] = option;
  v12 = completionCopy;
  v10 = completionCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(v13);
  objc_destroyWeak(&location);
}

void __74__CMContinuityCaptureTransportSidecarDevice_stopStream_option_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _stopStream:*(a1 + 48) option:*(a1 + 56) completion:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)_stopStream:(int64_t)stream option:(unint64_t)option completion:(id)completion
{
  completionCopy = completion;
  v9 = CMContinuityCaptureMediaIdentifierFromEntityType(stream);
  dispatch_assert_queue_V2(self->_queue);
  if (v9)
  {
    v10 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      selfCopy = self;
      v23 = 1024;
      streamCopy = stream;
      v25 = 1024;
      optionCopy = option;
      _os_log_impl(&dword_242545000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ stopStream for entity %u option %d", buf, 0x18u);
    }

    v19[0] = @"ContinuityCaptureSelector";
    v19[1] = @"ContinuityCaptureArgs";
    v20[0] = &unk_2854EC968;
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:stream];
    v18[0] = v11;
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:option];
    v18[1] = v12;
    v18[2] = &unk_2854EC980;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];
    v20[1] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];

    v15 = [(NSMutableDictionary *)self->_activeStreams objectForKeyedSubscript:@"ContinuityCaptureCommand"];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __75__CMContinuityCaptureTransportSidecarDevice__stopStream_option_completion___block_invoke;
    v16[3] = &unk_278D5D1A8;
    v17 = completionCopy;
    [v15 sendMessage:@"ContinuityCaptureCommand" message:v14 completion:v16];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)postEvent:(id)event entity:(int64_t)entity data:(id)data
{
  eventCopy = event;
  dataCopy = data;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__CMContinuityCaptureTransportSidecarDevice_postEvent_entity_data___block_invoke;
  block[3] = &unk_278D5CFF8;
  objc_copyWeak(v16, &location);
  v16[1] = entity;
  v14 = eventCopy;
  v15 = dataCopy;
  v11 = dataCopy;
  v12 = eventCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

void __67__CMContinuityCaptureTransportSidecarDevice_postEvent_entity_data___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _postEvent:*(a1 + 32) entity:*(a1 + 56) data:*(a1 + 40)];
    WeakRetained = v3;
  }
}

- (void)_postEvent:(id)event entity:(int64_t)entity data:(id)data
{
  queue = self->_queue;
  eventCopy = event;
  dispatch_assert_queue_V2(queue);
  v15[0] = &unk_2854EC908;
  v14[0] = @"ContinuityCaptureSelector";
  v14[1] = @"ContinuityCaptureArgs";
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{entity, eventCopy}];
  v13[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v15[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v12 = [(NSMutableDictionary *)self->_activeStreams objectForKeyedSubscript:@"ContinuityCaptureCommand"];

  [v12 sendMessage:@"ContinuityCaptureCommand" message:v11 completion:&__block_literal_global_131];
}

- (CMContinuityCaptureTransportSidecarDevice)initWithSidecarDevice:(id)device capabilities:(id)capabilities remote:(BOOL)remote
{
  deviceCopy = device;
  capabilitiesCopy = capabilities;
  v23.receiver = self;
  v23.super_class = CMContinuityCaptureTransportSidecarDevice;
  v11 = [(CMContinuityCaptureTransportSidecarDevice *)&v23 init];
  if (!v11)
  {
    goto LABEL_5;
  }

  v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v13 = dispatch_queue_create("com.apple.continuitycapture.sidecardevice", v12);
  queue = v11->_queue;
  v11->_queue = v13;

  v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
  activeStreams = v11->_activeStreams;
  v11->_activeStreams = v15;

  objc_storeStrong(&v11->_device, device);
  v11->_remote = remote;
  objc_storeStrong(&v11->_capabilities, capabilities);
  capabilities = [(CMContinuityCaptureTransportSidecarDevice *)v11 capabilities];
  devicesCapabilities = [capabilities devicesCapabilities];
  v11->_allFeaturesSupported = CMContinuityCaptureDeviceSupportsAllFeatures(devicesCapabilities);

  v19 = [[CMContinuityCaptureMagicStateMonitor alloc] initWithDevice:v11];
  magicStateMonitor = v11->_magicStateMonitor;
  v11->_magicStateMonitor = v19;

  if (v11->_magicStateMonitor)
  {
    v21 = v11;
  }

  else
  {
LABEL_5:
    v21 = 0;
  }

  return v21;
}

void __76__CMContinuityCaptureTransportSidecarDevice__setValueForControl_completion___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  OUTLINED_FUNCTION_1_3();
  v7 = a2;
  _os_log_debug_impl(&dword_242545000, a3, OS_LOG_TYPE_DEBUG, "%{public}@ setValueForControl completion error %@", v6, 0x16u);
}

void __72__CMContinuityCaptureTransportSidecarDevice__handleAVCNegotiation_data___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = *(a1 + 32);
  v8 = 138543874;
  v9 = WeakRetained;
  v10 = 2112;
  v11 = v7;
  v12 = 2112;
  v13 = a2;
  _os_log_debug_impl(&dword_242545000, a3, OS_LOG_TYPE_DEBUG, "%{public}@ handleAVCNegotiation SendMessage %@ Error %@", &v8, 0x20u);
}

@end