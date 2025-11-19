@interface CMContinuityCaptureTransportRapportDevice
+ (void)queryCameraCapabilitiesFromRemoteDevice:(id)a3 transport:(int64_t)a4;
- (BOOL)active;
- (BOOL)canDeferTermination;
- (BOOL)disconnectedWhileWired;
- (BOOL)guest;
- (BOOL)hasStreamIntent;
- (BOOL)isPlacementStepSkipped;
- (BOOL)nearby;
- (BOOL)terminationDeferred;
- (BOOL)usable;
- (BOOL)userDisconnected;
- (BOOL)wifiP2pActive;
- (BOOL)wired;
- (CMContinuityCaptureCapabilities)capabilities;
- (CMContinuityCaptureTransportRapportDevice)initWithRapportDevice:(id)a3 capabilities:(id)a4 remote:(BOOL)a5;
- (NSArray)activeStreams;
- (NSString)description;
- (NSString)deviceModel;
- (NSString)deviceName;
- (RPRemoteDisplayDevice)device;
- (id)activeStreamForIdentifier:(id)a3;
- (int64_t)deviceModelType;
- (unint64_t)deviceMajorVersion;
- (unint64_t)deviceMinorVersion;
- (unint64_t)deviceStatus;
- (void)_didCaptureStillImage:(id)a3 entity:(int64_t)a4;
- (void)_handleAVCNegotiation:(int64_t)a3 data:(id)a4;
- (void)_postEvent:(id)a3 entity:(int64_t)a4 data:(id)a5;
- (void)_relaySidebandMessageType:(id)a3 overTransport:(int64_t)a4;
- (void)_setValueForControl:(id)a3 completion:(id)a4;
- (void)_startStream:(id)a3 option:(unint64_t)a4 completion:(id)a5;
- (void)_stopStream:(int64_t)a3 option:(unint64_t)a4 completion:(id)a5;
- (void)_synchronizeAudioClockWithSampleTime:(unint64_t)a3 networkTime:(unint64_t)a4 clockGrandMasterIdentifier:(unint64_t)a5;
- (void)addStream:(id)a3;
- (void)captureStillImage:(id)a3 entity:(int64_t)a4 completion:(id)a5;
- (void)dealloc;
- (void)didCaptureStillImage:(id)a3 entity:(int64_t)a4;
- (void)enqueueReactionEffect:(id)a3 entity:(int64_t)a4;
- (void)handleAVCNegotiation:(int64_t)a3 data:(id)a4;
- (void)handleSynchronizeAudioClockCompletion;
- (void)notifyDeviceStateChange;
- (void)postEvent:(id)a3 entity:(int64_t)a4 data:(id)a5;
- (void)postEvent:(id)a3 entity:(int64_t)a4 data:(id)a5 forTransport:(int64_t)a6;
- (void)preLaunchShieldUIForTransport:(int64_t)a3 data:(id)a4;
- (void)relaySkipPlacementStepForTranport:(int64_t)a3;
- (void)relayUserDisconnectForTransport:(int64_t)a3 reason:(id)a4 shieldSessionID:(id)a5;
- (void)removeStream:(id)a3;
- (void)resetDevice:(id)a3;
- (void)setCapabilities:(id)a3;
- (void)setDeviceMajorVersion:(unint64_t)a3;
- (void)setDeviceMinorVersion:(unint64_t)a3;
- (void)setNearby:(BOOL)a3;
- (void)setPlacementStepSkipped:(BOOL)a3;
- (void)setStreamIntent:(BOOL)a3;
- (void)setTerminationDeferred:(BOOL)a3;
- (void)setUserDisconnected:(BOOL)a3;
- (void)setValueForControl:(id)a3 completion:(id)a4;
- (void)startStream:(id)a3 option:(unint64_t)a4 completion:(id)a5;
- (void)stopStream:(int64_t)a3 option:(unint64_t)a4 completion:(id)a5;
- (void)synchronizeAudioClockWithSampleTime:(unint64_t)a3 networkTime:(unint64_t)a4 clockGrandMasterIdentifier:(unint64_t)a5;
- (void)teardownActiveRapportStreams;
- (void)updateSystemState;
@end

@implementation CMContinuityCaptureTransportRapportDevice

- (void)dealloc
{
  v3 = self->_rpCompanionSidebandSessions;
  objc_sync_enter(v3);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_rpCompanionSidebandSessions;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v7++) invalidate];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v9 count:16];
    }

    while (v5);
  }

  objc_sync_exit(v3);
  v8.receiver = self;
  v8.super_class = CMContinuityCaptureTransportRapportDevice;
  [(CMContinuityCaptureTransportRapportDevice *)&v8 dealloc];
}

- (void)resetDevice:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  device = obj->_device;
  obj->_device = v4;

  objc_sync_exit(obj);
}

- (RPRemoteDisplayDevice)device
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_device;
  objc_sync_exit(v2);

  return v3;
}

- (void)teardownActiveRapportStreams
{
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__CMContinuityCaptureTransportRapportDevice_teardownActiveRapportStreams__block_invoke;
  block[3] = &unk_278D5C0D0;
  block[4] = self;
  dispatch_async_and_wait(queue, block);
}

uint64_t __73__CMContinuityCaptureTransportRapportDevice_teardownActiveRapportStreams__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [*(*(a1 + 32) + 56) allValues];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v4)
  {
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = [*(*(&v11 + 1) + 8 * v6) stream];
        [v7 invalidate];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v4);
  }

  objc_sync_exit(v2);
  [*(a1 + 32) willChangeValueForKey:@"activeStreams"];
  v8 = *(a1 + 32);
  objc_sync_enter(v8);
  [*(*(a1 + 32) + 56) removeAllObjects];
  objc_sync_exit(v8);

  [*(a1 + 32) didChangeValueForKey:@"activeStreams"];
  [*(a1 + 32) willChangeValueForKey:@"active"];
  *(*(a1 + 32) + 88) = 0;
  return [*(a1 + 32) didChangeValueForKey:@"active"];
}

- (void)addStream:(id)a3
{
  v4 = a3;
  v5 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v12 = self;
    v13 = 2080;
    v14 = "[CMContinuityCaptureTransportRapportDevice addStream:]";
    v15 = 2114;
    v16 = v4;
    _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ %s %{public}@", buf, 0x20u);
  }

  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__CMContinuityCaptureTransportRapportDevice_addStream___block_invoke;
  v8[3] = &unk_278D5C008;
  v9 = v4;
  v10 = self;
  v7 = v4;
  dispatch_async_and_wait(queue, v8);
}

void __55__CMContinuityCaptureTransportRapportDevice_addStream___block_invoke(uint64_t a1)
{
  v6 = [[CMContinuityCaptureTransportDeviceRapportStream alloc] initWithRapportStream:*(a1 + 32)];
  [*(a1 + 40) willChangeValueForKey:@"activeStreams"];
  v2 = *(a1 + 40);
  objc_sync_enter(v2);
  v3 = [*(*(a1 + 40) + 56) count];
  v4 = *(*(a1 + 40) + 56);
  v5 = [*(a1 + 32) streamID];
  [v4 setObject:v6 forKeyedSubscript:v5];

  objc_sync_exit(v2);
  [*(a1 + 40) didChangeValueForKey:@"activeStreams"];
  if (!v3)
  {
    [*(a1 + 40) willChangeValueForKey:@"active"];
    *(*(a1 + 40) + 88) = 1;
    [*(a1 + 40) didChangeValueForKey:@"active"];
  }
}

- (void)removeStream:(id)a3
{
  v4 = a3;
  v5 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v11 = self;
    v12 = 2080;
    v13 = "[CMContinuityCaptureTransportRapportDevice removeStream:]";
    v14 = 2114;
    v15 = v4;
    _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ %s %{public}@", buf, 0x20u);
  }

  [v4 invalidate];
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__CMContinuityCaptureTransportRapportDevice_removeStream___block_invoke;
  v8[3] = &unk_278D5C008;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async_and_wait(queue, v8);
}

void __58__CMContinuityCaptureTransportRapportDevice_removeStream___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  v3 = *(*(a1 + 32) + 56);
  objc_sync_exit(v2);

  v4 = [*(a1 + 40) streamID];
  v5 = [v3 objectForKey:v4];

  if (v5)
  {
    v6 = *(a1 + 32);
    objc_sync_enter(v6);
    v7 = [*(*(a1 + 32) + 56) count];
    objc_sync_exit(v6);

    [*(a1 + 32) willChangeValueForKey:@"activeStreams"];
    v8 = *(a1 + 32);
    objc_sync_enter(v8);
    v9 = *(*(a1 + 32) + 56);
    v10 = [*(a1 + 40) streamID];
    [v9 removeObjectForKey:v10];

    objc_sync_exit(v8);
    [*(a1 + 32) didChangeValueForKey:@"activeStreams"];
    v11 = *(a1 + 32);
    objc_sync_enter(v11);
    v14 = *(*(a1 + 32) + 56);

    objc_sync_exit(v11);
    if ([v14 count] || !v7)
    {
      goto LABEL_6;
    }

    [*(a1 + 32) willChangeValueForKey:@"active"];
LABEL_5:
    *(*(a1 + 32) + 88) = 0;
    [*(a1 + 32) didChangeValueForKey:@"active"];
LABEL_6:
    v12 = v14;
    goto LABEL_11;
  }

  if (![v3 count])
  {
    v13 = *(a1 + 32);
    if (v13[88] == 1)
    {
      [v13 willChangeValueForKey:@"active"];
      v14 = v3;
      goto LABEL_5;
    }
  }

  v12 = v3;
LABEL_11:
}

- (BOOL)hasStreamIntent
{
  v2 = self;
  objc_sync_enter(v2);
  streamIntent = v2->_streamIntent;
  objc_sync_exit(v2);

  return streamIntent;
}

- (void)setStreamIntent:(BOOL)a3
{
  v3 = a3;
  v5 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543874;
    v8 = self;
    v9 = 2080;
    v10 = "[CMContinuityCaptureTransportRapportDevice setStreamIntent:]";
    v11 = 1024;
    v12 = v3;
    _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ %s %d", &v7, 0x1Cu);
  }

  v6 = self;
  objc_sync_enter(v6);
  v6->_streamIntent = v3;
  objc_sync_exit(v6);
}

- (BOOL)active
{
  v2 = self;
  objc_sync_enter(v2);
  active = v2->_active;
  objc_sync_exit(v2);

  return active;
}

- (NSArray)activeStreams
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = objc_alloc(MEMORY[0x277CBEA60]);
  v4 = [(NSMutableDictionary *)v2->_activeStreams allValues];
  v5 = [v3 initWithArray:v4];

  objc_sync_exit(v2);

  return v5;
}

- (void)setUserDisconnected:(BOOL)a3
{
  v4 = self;
  objc_sync_enter(v4);
  v4->_userDisconnected = a3;
  objc_sync_exit(v4);

  if ([(CMContinuityCaptureTransportRapportDevice *)v4 wired])
  {
    obj = v4;
    objc_sync_enter(obj);
    obj->_disconnectedWhileWired = 1;
    objc_sync_exit(obj);
  }
}

- (BOOL)userDisconnected
{
  v2 = self;
  objc_sync_enter(v2);
  userDisconnected = v2->_userDisconnected;
  objc_sync_exit(v2);

  return userDisconnected;
}

- (BOOL)disconnectedWhileWired
{
  v2 = self;
  objc_sync_enter(v2);
  disconnectedWhileWired = v2->_disconnectedWhileWired;
  objc_sync_exit(v2);

  return disconnectedWhileWired;
}

- (BOOL)wifiP2pActive
{
  v2 = [(CMContinuityCaptureTransportRapportDevice *)self device];
  v3 = ([v2 statusFlags] >> 9) & 1;

  return v3;
}

- (NSString)deviceName
{
  v2 = [(CMContinuityCaptureTransportRapportDevice *)self device];
  v3 = [v2 name];

  return v3;
}

- (NSString)deviceModel
{
  v2 = [(CMContinuityCaptureTransportRapportDevice *)self device];
  v3 = [v2 model];

  return v3;
}

- (int64_t)deviceModelType
{
  v2 = [(CMContinuityCaptureTransportRapportDevice *)self device];
  v3 = [v2 model];
  v4 = CMContinuityCaptureDeviceModelFromModelString();

  return v4;
}

- (unint64_t)deviceStatus
{
  v2 = [(CMContinuityCaptureTransportRapportDevice *)self device];
  v3 = [v2 statusFlags];

  return v3;
}

- (BOOL)wired
{
  v2 = [(CMContinuityCaptureTransportRapportDevice *)self device];
  v3 = ([v2 statusFlags] >> 24) & 1;

  return v3;
}

- (BOOL)usable
{
  v2 = [(CMContinuityCaptureTransportRapportDevice *)self device];
  v3 = [v2 cameraState] == 1;

  return v3;
}

- (unint64_t)deviceMajorVersion
{
  v2 = self;
  objc_sync_enter(v2);
  deviceMajorVersion = v2->_deviceMajorVersion;
  objc_sync_exit(v2);

  return deviceMajorVersion;
}

- (void)setDeviceMajorVersion:(unint64_t)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_deviceMajorVersion = a3;
  objc_sync_exit(obj);
}

- (unint64_t)deviceMinorVersion
{
  v2 = self;
  objc_sync_enter(v2);
  deviceMinorVersion = v2->_deviceMinorVersion;
  objc_sync_exit(v2);

  return deviceMinorVersion;
}

- (void)setDeviceMinorVersion:(unint64_t)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_deviceMinorVersion = a3;
  objc_sync_exit(obj);
}

- (BOOL)terminationDeferred
{
  v2 = self;
  objc_sync_enter(v2);
  terminationDeferred = v2->_terminationDeferred;
  objc_sync_exit(v2);

  return terminationDeferred;
}

- (void)setTerminationDeferred:(BOOL)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_terminationDeferred = a3;
  objc_sync_exit(obj);
}

- (BOOL)canDeferTermination
{
  if ([(CMContinuityCaptureTransportRapportDevice *)self hasStreamIntent]&& ![(CMContinuityCaptureTransportRapportDevice *)self userDisconnected])
  {
    v4 = [(CMContinuityCaptureTransportRapportDevice *)self capabilities];
    if (v4)
    {
      v5 = [(CMContinuityCaptureTransportRapportDevice *)self capabilities];
      v3 = [v5 userDisabled] ^ 1;
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

- (BOOL)isPlacementStepSkipped
{
  v2 = self;
  objc_sync_enter(v2);
  placementStepSkipped = v2->_placementStepSkipped;
  objc_sync_exit(v2);

  return placementStepSkipped;
}

- (BOOL)guest
{
  v2 = [(CMContinuityCaptureTransportRapportDevice *)self device];
  v3 = ([v2 statusFlags] >> 37) & 1;

  return v3;
}

- (void)setPlacementStepSkipped:(BOOL)a3
{
  v3 = a3;
  v5 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412802;
    v8 = self;
    v9 = 2080;
    v10 = "[CMContinuityCaptureTransportRapportDevice setPlacementStepSkipped:]";
    v11 = 1024;
    v12 = v3;
    _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%@ %s %d", &v7, 0x1Cu);
  }

  v6 = self;
  objc_sync_enter(v6);
  v6->_placementStepSkipped = v3;
  objc_sync_exit(v6);
}

- (void)notifyDeviceStateChange
{
  if (![(CMContinuityCaptureTransportRapportDevice *)self wired]&& [(CMContinuityCaptureTransportRapportDevice *)self userDisconnected])
  {
    v3 = self;
    objc_sync_enter(v3);
    v3->_disconnectedWhileWired = 0;
    objc_sync_exit(v3);
  }

  v4 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CMContinuityCaptureTransportRapportDevice notifyDeviceStateChange]";
    _os_log_impl(&dword_242545000, v4, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  [(CMContinuityCaptureTransportRapportDevice *)self willChangeValueForKey:@"deviceStatus"];
  [(CMContinuityCaptureTransportRapportDevice *)self didChangeValueForKey:@"deviceStatus"];
  [(CMContinuityCaptureTransportRapportDevice *)self willChangeValueForKey:@"usable"];
  [(CMContinuityCaptureTransportRapportDevice *)self didChangeValueForKey:@"usable"];
  [(CMContinuityCaptureTransportRapportDevice *)self willChangeValueForKey:@"wired"];
  [(CMContinuityCaptureTransportRapportDevice *)self didChangeValueForKey:@"wired"];
  [(CMContinuityCaptureTransportRapportDevice *)self willChangeValueForKey:@"nearby"];
  [(CMContinuityCaptureTransportRapportDevice *)self didChangeValueForKey:@"nearby"];
}

- (void)relayUserDisconnectForTransport:(int64_t)a3 reason:(id)a4 shieldSessionID:(id)a5
{
  v8 = a4;
  v9 = a5;
  queue = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __100__CMContinuityCaptureTransportRapportDevice_relayUserDisconnectForTransport_reason_shieldSessionID___block_invoke;
  v13[3] = &unk_278D5D940;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a3;
  v11 = v9;
  v12 = v8;
  dispatch_async(queue, v13);
}

void __100__CMContinuityCaptureTransportRapportDevice_relayUserDisconnectForTransport_reason_shieldSessionID___block_invoke(void *a1)
{
  v5[0] = @"ContinuityCaptureRapportClientMessageTypeKey";
  v5[1] = @"ContinuityCaptureRapportClientUserDisconnectReasonKey";
  v3 = a1[4];
  v2 = a1[5];
  v6[0] = &unk_2854ECAE8;
  v6[1] = v2;
  v5[2] = @"ContinuityCaptureRapportClientShieldSessionIDKey";
  v6[2] = a1[6];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:3];
  [v3 _relaySidebandMessageType:v4 overTransport:a1[7]];
}

- (void)preLaunchShieldUIForTransport:(int64_t)a3 data:(id)a4
{
  v6 = a4;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __80__CMContinuityCaptureTransportRapportDevice_preLaunchShieldUIForTransport_data___block_invoke;
  v9[3] = &unk_278D5C770;
  objc_copyWeak(v11, &location);
  v10 = v6;
  v11[1] = a3;
  v8 = v6;
  dispatch_async(queue, v9);

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

void __80__CMContinuityCaptureTransportRapportDevice_preLaunchShieldUIForTransport_data___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v3 setObject:&unk_2854ECB00 forKeyedSubscript:@"ContinuityCaptureRapportClientMessageTypeKey"];
    v4 = *(a1 + 32);
    if (v4)
    {
      [v3 setObject:v4 forKeyedSubscript:@"ContinuityCaptureRapportClientShieldLaunchDataKey"];
    }

    [v5 _relaySidebandMessageType:v3 overTransport:*(a1 + 48)];

    WeakRetained = v5;
  }
}

- (void)relaySkipPlacementStepForTranport:(int64_t)a3
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__CMContinuityCaptureTransportRapportDevice_relaySkipPlacementStepForTranport___block_invoke;
  block[3] = &unk_278D5D2A0;
  objc_copyWeak(v7, &location);
  v7[1] = a3;
  dispatch_async(queue, block);
  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

void __79__CMContinuityCaptureTransportRapportDevice_relaySkipPlacementStepForTranport___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = @"ContinuityCaptureRapportClientMessageTypeKey";
    v5 = &unk_2854ECB18;
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v5 forKeys:&v4 count:1];
    [WeakRetained _relaySidebandMessageType:v3 overTransport:*(a1 + 40)];
  }
}

- (void)updateSystemState
{
  v3 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v8 = self;
    v9 = 2080;
    v10 = "[CMContinuityCaptureTransportRapportDevice updateSystemState]";
    _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__CMContinuityCaptureTransportRapportDevice_updateSystemState__block_invoke;
  v5[3] = &unk_278D5C0A8;
  objc_copyWeak(&v6, buf);
  v5[4] = self;
  dispatch_async(queue, v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

void __62__CMContinuityCaptureTransportRapportDevice_updateSystemState__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if ([*(a1 + 32) wired])
    {
      v3 = 2;
    }

    else
    {
      if (([*(a1 + 32) wifiP2pActive] & 1) == 0)
      {
        v5 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          __62__CMContinuityCaptureTransportRapportDevice_updateSystemState__block_invoke_cold_1((a1 + 40));
        }

        goto LABEL_11;
      }

      v3 = 1;
    }

    v4 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v9 = WeakRetained;
      v10 = 2080;
      v11 = "[CMContinuityCaptureTransportRapportDevice updateSystemState]_block_invoke";
      _os_log_impl(&dword_242545000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ %s: calling _relaySidebandMessageType of ContinuityCaptureRapportSidebandClientMessageTypeUpdateSystemState", buf, 0x16u);
    }

    v6 = @"ContinuityCaptureRapportClientMessageTypeKey";
    v7 = &unk_2854ECB30;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v7 forKeys:&v6 count:1];
    [WeakRetained _relaySidebandMessageType:v5 overTransport:v3];
LABEL_11:
  }
}

- (void)postEvent:(id)a3 entity:(int64_t)a4 data:(id)a5 forTransport:(int64_t)a6
{
  v10 = a3;
  v11 = a5;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __80__CMContinuityCaptureTransportRapportDevice_postEvent_entity_data_forTransport___block_invoke;
  v15[3] = &unk_278D5D968;
  objc_copyWeak(v18, &location);
  v16 = v10;
  v17 = v11;
  v18[1] = a4;
  v18[2] = a6;
  v13 = v11;
  v14 = v10;
  dispatch_async(queue, v15);

  objc_destroyWeak(v18);
  objc_destroyWeak(&location);
}

void __80__CMContinuityCaptureTransportRapportDevice_postEvent_entity_data_forTransport___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v8[0] = @"ContinuityCaptureRapportClientMessageTypeKey";
    v8[1] = @"ContinuityCaptureRapportClientEventNameKey";
    v3 = *(a1 + 32);
    v9[0] = &unk_2854ECB48;
    v9[1] = v3;
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:{*(a1 + 56), @"ContinuityCaptureRapportClientMessageTypeKey", @"ContinuityCaptureRapportClientEventNameKey", @"ContinuityCaptureRapportClientEventEntityTypeKey"}];
    v5 = v4;
    v8[3] = @"ContinuityCaptureRapportClientEventDataKey";
    v6 = *(a1 + 40);
    if (!v6)
    {
      v6 = MEMORY[0x277CBEC10];
    }

    v9[2] = v4;
    v9[3] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:4];
    [WeakRetained _relaySidebandMessageType:v7 overTransport:*(a1 + 64)];
  }
}

+ (void)queryCameraCapabilitiesFromRemoteDevice:(id)a3 transport:(int64_t)a4
{
  v4 = a4;
  v5 = a3;
  v6 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v21 = "+[CMContinuityCaptureTransportRapportDevice queryCameraCapabilitiesFromRemoteDevice:transport:]";
    v22 = 2114;
    v23 = v5;
    v24 = 1024;
    v25 = v4;
    _os_log_impl(&dword_242545000, v6, OS_LOG_TYPE_DEFAULT, "%s for device %{public}@ for transport %d", buf, 0x1Cu);
  }

  v7 = dispatch_semaphore_create(0);
  v8 = objc_alloc_init(MEMORY[0x277D44160]);
  v9 = objc_alloc_init(MEMORY[0x277D44170]);
  v10 = [v5 identifier];
  [v9 setIdentifier:v10];

  [v8 setDestinationDevice:v9];
  [v8 setServiceType:@"com.apple.continuitycapture.sideband"];
  v11 = dispatch_get_global_queue(0, 0);
  [v8 setDispatchQueue:v11];

  objc_initWeak(buf, v8);
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __95__CMContinuityCaptureTransportRapportDevice_queryCameraCapabilitiesFromRemoteDevice_transport___block_invoke;
  v17 = &unk_278D5C660;
  objc_copyWeak(&v19, buf);
  v12 = v7;
  v18 = v12;
  [v8 activateWithCompletion:&v14];
  v13 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v12, v13);
  [v8 invalidate];

  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);
}

void __95__CMContinuityCaptureTransportRapportDevice_queryCameraCapabilitiesFromRemoteDevice_transport___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = @"ContinuityCaptureRapportClientMessageTypeKey";
    v7 = &unk_2854ECB60;
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v7 forKeys:&v6 count:1];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __95__CMContinuityCaptureTransportRapportDevice_queryCameraCapabilitiesFromRemoteDevice_transport___block_invoke_171;
    v4[3] = &unk_278D5D990;
    v5 = *(a1 + 32);
    [WeakRetained sendEventID:@"ContinuityCaptureSidebandSessionEventID" event:v3 options:0 completion:v4];
  }
}

void __95__CMContinuityCaptureTransportRapportDevice_queryCameraCapabilitiesFromRemoteDevice_transport___block_invoke_171(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "+[CMContinuityCaptureTransportRapportDevice queryCameraCapabilitiesFromRemoteDevice:transport:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_242545000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s inErrorMessageSend %@", &v5, 0x16u);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_relaySidebandMessageType:(id)a3 overTransport:(int64_t)a4
{
  v6 = a3;
  objc_initWeak(location, self);
  v7 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v36 = self;
    v37 = 2112;
    v38 = v6;
    v39 = 1024;
    LODWORD(v40) = a4;
    _os_log_impl(&dword_242545000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ relay message %@ for transport %d", buf, 0x1Cu);
  }

  v8 = [(CMContinuityCaptureTransportRapportDevice *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = objc_alloc_init(MEMORY[0x277D44160]);
  v10 = objc_alloc_init(MEMORY[0x277D44170]);
  v11 = [(CMContinuityCaptureTransportRapportDevice *)self device];
  v12 = [v11 identifier];
  [v10 setIdentifier:v12];

  [v9 setDestinationDevice:v10];
  [v9 setServiceType:@"com.apple.continuitycapture.sideband"];
  [v9 setDispatchQueue:self->_sidebandQueue];
  v13 = [v9 controlFlags];
  v14 = 6;
  if (a4 == 2)
  {
    v14 = 0x40000;
  }

  [v9 setControlFlags:v13 | v14];
  rpCompanionSidebandSessions = self->_rpCompanionSidebandSessions;
  if (!rpCompanionSidebandSessions)
  {
    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v17 = self->_rpCompanionSidebandSessions;
    self->_rpCompanionSidebandSessions = v16;

    rpCompanionSidebandSessions = self->_rpCompanionSidebandSessions;
  }

  v18 = rpCompanionSidebandSessions;
  objc_sync_enter(v18);
  [(NSMutableArray *)self->_rpCompanionSidebandSessions addObject:v9];
  objc_sync_exit(v18);

  v19 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v36 = self;
    v37 = 2082;
    v38 = "[CMContinuityCaptureTransportRapportDevice _relaySidebandMessageType:overTransport:]";
    v39 = 2112;
    v40 = v9;
    _os_log_impl(&dword_242545000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}s created sideband session %@", buf, 0x20u);
  }

  objc_initWeak(buf, v9);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __85__CMContinuityCaptureTransportRapportDevice__relaySidebandMessageType_overTransport___block_invoke;
  v32[3] = &unk_278D5D488;
  objc_copyWeak(&v33, location);
  objc_copyWeak(&v34, buf);
  [v9 setInterruptionHandler:v32];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __85__CMContinuityCaptureTransportRapportDevice__relaySidebandMessageType_overTransport___block_invoke_174;
  v29[3] = &unk_278D5D488;
  objc_copyWeak(&v30, location);
  objc_copyWeak(&v31, buf);
  [v9 setInvalidationHandler:v29];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __85__CMContinuityCaptureTransportRapportDevice__relaySidebandMessageType_overTransport___block_invoke_175;
  v26[3] = &unk_278D5D9E0;
  v26[4] = self;
  objc_copyWeak(&v28, buf);
  v20 = v6;
  v27 = v20;
  [v9 activateWithCompletion:v26];
  v21 = dispatch_time(0, 5000000000);
  sidebandQueue = self->_sidebandQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__CMContinuityCaptureTransportRapportDevice__relaySidebandMessageType_overTransport___block_invoke_180;
  block[3] = &unk_278D5D488;
  objc_copyWeak(&v24, location);
  objc_copyWeak(&v25, buf);
  dispatch_after(v21, sidebandQueue, block);
  objc_destroyWeak(&v25);
  objc_destroyWeak(&v24);

  objc_destroyWeak(&v28);
  objc_destroyWeak(&v31);
  objc_destroyWeak(&v30);
  objc_destroyWeak(&v34);
  objc_destroyWeak(&v33);
  objc_destroyWeak(buf);

  objc_destroyWeak(location);
}

void __85__CMContinuityCaptureTransportRapportDevice__relaySidebandMessageType_overTransport___block_invoke(uint64_t a1)
{
  v2 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = objc_loadWeakRetained((a1 + 40));
    v10 = 138543874;
    v11 = WeakRetained;
    v12 = 2082;
    v13 = "[CMContinuityCaptureTransportRapportDevice _relaySidebandMessageType:overTransport:]_block_invoke";
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_242545000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}s interrupted sideband session %@", &v10, 0x20u);
  }

  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = v5;
  if (v5)
  {
    [v5 invalidate];
    v7 = objc_loadWeakRetained((a1 + 32));
    v8 = v7;
    if (v7)
    {
      dispatch_assert_queue_V2(*(v7 + 10));
      v9 = v8[14];
      objc_sync_enter(v9);
      [v8[14] removeObject:v6];
      objc_sync_exit(v9);
    }
  }
}

void __85__CMContinuityCaptureTransportRapportDevice__relaySidebandMessageType_overTransport___block_invoke_174(uint64_t a1)
{
  v2 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = objc_loadWeakRetained((a1 + 40));
    v9 = 138543874;
    v10 = WeakRetained;
    v11 = 2082;
    v12 = "[CMContinuityCaptureTransportRapportDevice _relaySidebandMessageType:overTransport:]_block_invoke";
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_242545000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}s invalidated sideband session %@", &v9, 0x20u);
  }

  v5 = objc_loadWeakRetained((a1 + 40));
  if (v5)
  {
    v6 = objc_loadWeakRetained((a1 + 32));
    v7 = v6;
    if (v6)
    {
      dispatch_assert_queue_V2(*(v6 + 10));
      v8 = v7[14];
      objc_sync_enter(v8);
      [v7[14] removeObject:v5];
      objc_sync_exit(v8);
    }
  }
}

void __85__CMContinuityCaptureTransportRapportDevice__relaySidebandMessageType_overTransport___block_invoke_175(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543874;
    v13 = v5;
    v14 = 2082;
    v15 = "[CMContinuityCaptureTransportRapportDevice _relaySidebandMessageType:overTransport:]_block_invoke";
    v16 = 2112;
    v17 = v3;
    _os_log_impl(&dword_242545000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}s error %@", buf, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v7 = GestaltCopyAnswer();
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v8 setObject:v7 forKeyedSubscript:*MEMORY[0x277D442D8]];
    [v8 addEntriesFromDictionary:*(a1 + 40)];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __85__CMContinuityCaptureTransportRapportDevice__relaySidebandMessageType_overTransport___block_invoke_179;
    v10[3] = &unk_278D5D9B8;
    v10[4] = *(a1 + 32);
    v11 = v8;
    v9 = v8;
    [WeakRetained sendEventID:@"ContinuityCaptureSidebandSessionEventID" event:v9 options:0 completion:v10];
  }
}

void __85__CMContinuityCaptureTransportRapportDevice__relaySidebandMessageType_overTransport___block_invoke_179(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = 138544130;
    v8 = v5;
    v9 = 2082;
    v10 = "[CMContinuityCaptureTransportRapportDevice _relaySidebandMessageType:overTransport:]_block_invoke";
    v11 = 2114;
    v12 = v6;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_242545000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}s %{public}@ inErrorMessageSend %@", &v7, 0x2Au);
  }
}

void __85__CMContinuityCaptureTransportRapportDevice__relaySidebandMessageType_overTransport___block_invoke_180(uint64_t a1)
{
  v2 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = objc_loadWeakRetained((a1 + 40));
    v10 = 138543618;
    v11 = WeakRetained;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_242545000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Invalidating sideband session after message send timeout %@", &v10, 0x16u);
  }

  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = v5;
  if (v5)
  {
    [v5 invalidate];
    v7 = objc_loadWeakRetained((a1 + 32));
    v8 = v7;
    if (v7)
    {
      v9 = v7[14];
      objc_sync_enter(v9);
      [v8[14] removeObject:v6];
      objc_sync_exit(v9);
    }
  }
}

- (CMContinuityCaptureCapabilities)capabilities
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_capabilities;
  objc_sync_exit(v2);

  return v3;
}

- (void)setCapabilities:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  capabilities = obj->_capabilities;
  obj->_capabilities = v4;

  objc_sync_exit(obj);
}

- (BOOL)nearby
{
  v2 = self;
  objc_sync_enter(v2);
  nearby = v2->_nearby;
  objc_sync_exit(v2);

  return nearby;
}

- (void)setNearby:(BOOL)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_nearby = a3;
  objc_sync_exit(obj);
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(CMContinuityCaptureTransportRapportDevice *)self deviceIdentifier];
  if (v6)
  {
    v7 = [(CMContinuityCaptureTransportRapportDevice *)self deviceIdentifier];
    v8 = [v7 UUIDString];
    v9 = [v3 stringWithFormat:@"%@: %@ [%p]", v5, v8, self];
  }

  else
  {
    v9 = [v3 stringWithFormat:@"%@: %@ [%p]", v5, 0, self];
  }

  return v9;
}

- (void)synchronizeAudioClockWithSampleTime:(unint64_t)a3 networkTime:(unint64_t)a4 clockGrandMasterIdentifier:(unint64_t)a5
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __120__CMContinuityCaptureTransportRapportDevice_synchronizeAudioClockWithSampleTime_networkTime_clockGrandMasterIdentifier___block_invoke;
  block[3] = &unk_278D5D180;
  objc_copyWeak(v11, &location);
  v11[1] = a3;
  v11[2] = a4;
  v11[3] = a5;
  dispatch_async(queue, block);
  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

void __120__CMContinuityCaptureTransportRapportDevice_synchronizeAudioClockWithSampleTime_networkTime_clockGrandMasterIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _synchronizeAudioClockWithSampleTime:*(a1 + 40) networkTime:*(a1 + 48) clockGrandMasterIdentifier:*(a1 + 56)];
    WeakRetained = v3;
  }
}

- (id)activeStreamForIdentifier:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)v5->_activeStreams objectForKeyedSubscript:v4];
  objc_sync_exit(v5);

  if (!v6)
  {
    v7 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543618;
      v10 = v5;
      v11 = 2114;
      v12 = v4;
      _os_log_impl(&dword_242545000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ invalid stream for %{public}@", &v9, 0x16u);
    }
  }

  return v6;
}

- (void)_synchronizeAudioClockWithSampleTime:(unint64_t)a3 networkTime:(unint64_t)a4 clockGrandMasterIdentifier:(unint64_t)a5
{
  objc_initWeak(&location, self);
  dispatch_assert_queue_V2(self->_queue);
  v21[0] = &unk_2854ECB18;
  v20[0] = @"ContinuityCaptureSelector";
  v20[1] = @"ContinuityCaptureArgs";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  v19[0] = v9;
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a4];
  v19[1] = v10;
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a5];
  v19[2] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:3];
  v21[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];

  v14 = [(CMContinuityCaptureTransportRapportDevice *)self activeStreamForIdentifier:@"ContinuityCaptureCommand"];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __121__CMContinuityCaptureTransportRapportDevice__synchronizeAudioClockWithSampleTime_networkTime_clockGrandMasterIdentifier___block_invoke;
  v16[3] = &unk_278D5C660;
  objc_copyWeak(&v18, &location);
  v15 = v13;
  v17 = v15;
  [v14 sendMessage:@"ContinuityCaptureCommand" message:v15 completion:v16];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __121__CMContinuityCaptureTransportRapportDevice__synchronizeAudioClockWithSampleTime_networkTime_clockGrandMasterIdentifier___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = *(a1 + 32);
    v7 = 138543874;
    v8 = WeakRetained;
    v9 = 2114;
    v10 = v6;
    v11 = 2112;
    v12 = a2;
    _os_log_impl(&dword_242545000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ SendMessage %{public}@ Error %@", &v7, 0x20u);
  }
}

- (void)didCaptureStillImage:(id)a3 entity:(int64_t)a4
{
  v6 = a3;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__CMContinuityCaptureTransportRapportDevice_didCaptureStillImage_entity___block_invoke;
  v9[3] = &unk_278D5C770;
  objc_copyWeak(v11, &location);
  v10 = v6;
  v11[1] = a4;
  v8 = v6;
  dispatch_async(queue, v9);

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

void __73__CMContinuityCaptureTransportRapportDevice_didCaptureStillImage_entity___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _didCaptureStillImage:*(a1 + 32) entity:*(a1 + 48)];
    WeakRetained = v3;
  }
}

- (void)_didCaptureStillImage:(id)a3 entity:(int64_t)a4
{
  v6 = a3;
  objc_initWeak(&location, self);
  dispatch_assert_queue_V2(self->_queue);
  v26 = 0;
  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v26];
  v8 = v26;
  if (v7)
  {
    v19[0] = &unk_2854ECB00;
    v18[0] = @"ContinuityCaptureSelector";
    v18[1] = @"ContinuityCaptureArgs";
    v17[0] = v7;
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    v17[1] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
    v19[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];

    v12 = [(CMContinuityCaptureTransportRapportDevice *)self activeStreamForIdentifier:@"ContinuityCaptureData"];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __74__CMContinuityCaptureTransportRapportDevice__didCaptureStillImage_entity___block_invoke;
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
      v21 = self;
      v22 = 2112;
      v23 = v6;
      v24 = 2112;
      v25 = v8;
      _os_log_error_impl(&dword_242545000, v13, OS_LOG_TYPE_ERROR, "%{public}@ Failed to archive request %@ error %@", buf, 0x20u);
    }
  }

  objc_destroyWeak(&location);
}

void __74__CMContinuityCaptureTransportRapportDevice__didCaptureStillImage_entity___block_invoke(uint64_t a1, uint64_t a2)
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
  v4[2] = __82__CMContinuityCaptureTransportRapportDevice_handleSynchronizeAudioClockCompletion__block_invoke;
  v4[3] = &unk_278D5C080;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __82__CMContinuityCaptureTransportRapportDevice_handleSynchronizeAudioClockCompletion__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4[0] = @"ContinuityCaptureSelector";
    v4[1] = @"ContinuityCaptureArgs";
    v5[0] = &unk_2854ECB60;
    v5[1] = &unk_2854ECD48;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:2];
    v3 = [WeakRetained activeStreamForIdentifier:@"ContinuityCaptureCommand"];
    [v3 sendMessage:@"ContinuityCaptureCommand" message:v2 completion:&__block_literal_global_21];
  }
}

- (void)captureStillImage:(id)a3 entity:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__CMContinuityCaptureTransportRapportDevice_captureStillImage_entity_completion___block_invoke;
  block[3] = &unk_278D5C288;
  objc_copyWeak(v16, &location);
  v14 = v8;
  v15 = v9;
  v16[1] = a4;
  v11 = v9;
  v12 = v8;
  dispatch_async(queue, block);

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

void __81__CMContinuityCaptureTransportRapportDevice_captureStillImage_entity_completion___block_invoke(uint64_t a1)
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
      v16[0] = &unk_2854ECB78;
      v15[0] = @"ContinuityCaptureSelector";
      v15[1] = @"ContinuityCaptureArgs";
      v14[0] = v4;
      v6 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 56)];
      v14[1] = v6;
      v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
      v16[1] = v7;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

      v9 = [WeakRetained activeStreamForIdentifier:@"ContinuityCaptureCommand"];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __81__CMContinuityCaptureTransportRapportDevice_captureStillImage_entity_completion___block_invoke_187;
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

- (void)enqueueReactionEffect:(id)a3 entity:(int64_t)a4
{
  v6 = a3;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __74__CMContinuityCaptureTransportRapportDevice_enqueueReactionEffect_entity___block_invoke;
  v9[3] = &unk_278D5C770;
  objc_copyWeak(v11, &location);
  v10 = v6;
  v11[1] = a4;
  v8 = v6;
  dispatch_async(queue, v9);

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

void __74__CMContinuityCaptureTransportRapportDevice_enqueueReactionEffect_entity___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 48);
      *buf = 138543874;
      v14 = WeakRetained;
      v15 = 2114;
      v16 = v4;
      v17 = 1024;
      v18 = v5;
      _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ enqueueReactionEffect %{public}@ entity:%d", buf, 0x1Cu);
    }

    v12[0] = &unk_2854ECB90;
    v11[0] = @"ContinuityCaptureSelector";
    v11[1] = @"ContinuityCaptureArgs";
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:{*(a1 + 48), *(a1 + 32)}];
    v10[1] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
    v12[1] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];

    v9 = [WeakRetained activeStreamForIdentifier:@"ContinuityCaptureCommand"];
    [v9 sendMessage:@"ContinuityCaptureCommand" message:v8 completion:&__block_literal_global_192];
  }
}

- (void)setValueForControl:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __75__CMContinuityCaptureTransportRapportDevice_setValueForControl_completion___block_invoke;
  v11[3] = &unk_278D5C490;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __75__CMContinuityCaptureTransportRapportDevice_setValueForControl_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _setValueForControl:*(a1 + 32) completion:*(a1 + 40)];
    WeakRetained = v3;
  }
}

- (void)_setValueForControl:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  dispatch_assert_queue_V2(self->_queue);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __76__CMContinuityCaptureTransportRapportDevice__setValueForControl_completion___block_invoke;
  v26[3] = &unk_278D5C260;
  objc_copyWeak(&v28, &location);
  v8 = v7;
  v27 = v8;
  v9 = MEMORY[0x245D12020](v26);
  v25 = 0;
  v10 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v25];
  v11 = v25;
  if (v10)
  {
    v18[0] = &unk_2854ECAE8;
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
      v20 = self;
      v21 = 2114;
      v22 = v6;
      _os_log_impl(&dword_242545000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ setValueForControl %{public}@", buf, 0x16u);
    }

    v15 = [(CMContinuityCaptureTransportRapportDevice *)self activeStreamForIdentifier:@"ContinuityCaptureControl"];
    [v15 sendMessage:@"ContinuityCaptureControl" message:v13 completion:v9];
  }

  else
  {
    v13 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v20 = self;
      v21 = 2112;
      v22 = v11;
      v23 = 2112;
      v24 = v6;
      _os_log_error_impl(&dword_242545000, v13, OS_LOG_TYPE_ERROR, "%{public}@ archivedDataWithRootObject Error %@ for control %@", buf, 0x20u);
    }
  }

  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);
}

uint64_t __76__CMContinuityCaptureTransportRapportDevice__setValueForControl_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  if (CMContinityCaptureDebugLogEnabled())
  {
    v4 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __76__CMContinuityCaptureTransportRapportDevice__setValueForControl_completion___block_invoke_cold_1(a1, a2, v4);
    }
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)handleAVCNegotiation:(int64_t)a3 data:(id)a4
{
  v6 = a4;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__CMContinuityCaptureTransportRapportDevice_handleAVCNegotiation_data___block_invoke;
  v9[3] = &unk_278D5C770;
  objc_copyWeak(v11, &location);
  v11[1] = a3;
  v10 = v6;
  v8 = v6;
  dispatch_async(queue, v9);

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

void __71__CMContinuityCaptureTransportRapportDevice_handleAVCNegotiation_data___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _handleAVCNegotiation:*(a1 + 48) data:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)_handleAVCNegotiation:(int64_t)a3 data:(id)a4
{
  v6 = a4;
  objc_initWeak(&location, self);
  v23[0] = @"ContinuityCaptureSelector";
  v23[1] = @"ContinuityCaptureArgs";
  v24[0] = &unk_2854ECBA8;
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v22[0] = v7;
  v22[1] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  v24[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];

  v10 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v17 = self;
    v18 = 2080;
    v19 = "[CMContinuityCaptureTransportRapportDevice _handleAVCNegotiation:data:]";
    v20 = 1024;
    v21 = a3;
    _os_log_impl(&dword_242545000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ %s for entity %d", buf, 0x1Cu);
  }

  v11 = [(CMContinuityCaptureTransportRapportDevice *)self activeStreamForIdentifier:@"ContinuityCaptureControl"];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __72__CMContinuityCaptureTransportRapportDevice__handleAVCNegotiation_data___block_invoke;
  v13[3] = &unk_278D5C660;
  objc_copyWeak(&v15, &location);
  v12 = v9;
  v14 = v12;
  [v11 sendMessage:@"ContinuityCaptureControl" message:v12 completion:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __72__CMContinuityCaptureTransportRapportDevice__handleAVCNegotiation_data___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (CMContinityCaptureDebugLogEnabled())
  {
    v4 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __72__CMContinuityCaptureTransportRapportDevice__handleAVCNegotiation_data___block_invoke_cold_1(a1, v3, v4);
    }
  }
}

- (void)startStream:(id)a3 option:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__CMContinuityCaptureTransportRapportDevice_startStream_option_completion___block_invoke;
  block[3] = &unk_278D5C288;
  objc_copyWeak(v16, &location);
  v16[1] = a4;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(queue, block);

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

void __75__CMContinuityCaptureTransportRapportDevice_startStream_option_completion___block_invoke(uint64_t a1)
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

- (void)_startStream:(id)a3 option:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  dispatch_assert_queue_V2(self->_queue);
  v10 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v25 = self;
    v26 = 2114;
    v27 = v8;
    v28 = 1024;
    v29 = a4;
    _os_log_impl(&dword_242545000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ StartStream for configuration %{public}@ option %d", buf, 0x1Cu);
  }

  v23 = 0;
  v11 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v8 requiringSecureCoding:1 error:&v23];
  v12 = v23;
  if (v11)
  {
    v22[0] = &unk_2854ECAE8;
    v21[0] = @"ContinuityCaptureSelector";
    v21[1] = @"ContinuityCaptureArgs";
    v20[0] = v11;
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
    v20[1] = v13;
    v20[2] = &unk_2854ECBC0;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:3];
    v22[1] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];

    v16 = [(CMContinuityCaptureTransportRapportDevice *)self activeStreamForIdentifier:@"ContinuityCaptureCommand"];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __76__CMContinuityCaptureTransportRapportDevice__startStream_option_completion___block_invoke;
    v18[3] = &unk_278D5D1A8;
    v19 = v9;
    [v16 sendMessage:@"ContinuityCaptureCommand" message:v15 completion:v18];
  }

  else
  {
    v17 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [CMContinuityCaptureTransportRapportDevice _startStream:option:completion:];
    }

    (*(v9 + 2))(v9, v12);
  }
}

- (void)stopStream:(int64_t)a3 option:(unint64_t)a4 completion:(id)a5
{
  v8 = a5;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__CMContinuityCaptureTransportRapportDevice_stopStream_option_completion___block_invoke;
  block[3] = &unk_278D5C378;
  objc_copyWeak(v13, &location);
  v13[1] = a3;
  v13[2] = a4;
  v12 = v8;
  v10 = v8;
  dispatch_async(queue, block);

  objc_destroyWeak(v13);
  objc_destroyWeak(&location);
}

void __74__CMContinuityCaptureTransportRapportDevice_stopStream_option_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _stopStream:*(a1 + 48) option:*(a1 + 56) completion:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)_stopStream:(int64_t)a3 option:(unint64_t)a4 completion:(id)a5
{
  v8 = a5;
  v9 = CMContinuityCaptureMediaIdentifierFromEntityType(a3);
  dispatch_assert_queue_V2(self->_queue);
  if (v9)
  {
    v10 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v22 = self;
      v23 = 1024;
      v24 = a3;
      v25 = 1024;
      v26 = a4;
      _os_log_impl(&dword_242545000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ stopStream for entity %u option %d", buf, 0x18u);
    }

    v19[0] = @"ContinuityCaptureSelector";
    v19[1] = @"ContinuityCaptureArgs";
    v20[0] = &unk_2854ECBA8;
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    v18[0] = v11;
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
    v18[1] = v12;
    v18[2] = &unk_2854ECBC0;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];
    v20[1] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];

    v15 = [(CMContinuityCaptureTransportRapportDevice *)self activeStreamForIdentifier:@"ContinuityCaptureCommand"];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __75__CMContinuityCaptureTransportRapportDevice__stopStream_option_completion___block_invoke;
    v16[3] = &unk_278D5D1A8;
    v17 = v8;
    [v15 sendMessage:@"ContinuityCaptureCommand" message:v14 completion:v16];
  }

  else
  {
    (*(v8 + 2))(v8, 0);
  }
}

- (void)postEvent:(id)a3 entity:(int64_t)a4 data:(id)a5
{
  v8 = a3;
  v9 = a5;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__CMContinuityCaptureTransportRapportDevice_postEvent_entity_data___block_invoke;
  block[3] = &unk_278D5CFF8;
  objc_copyWeak(v16, &location);
  v16[1] = a4;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(queue, block);

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

void __67__CMContinuityCaptureTransportRapportDevice_postEvent_entity_data___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _postEvent:*(a1 + 32) entity:*(a1 + 56) data:*(a1 + 40)];
    WeakRetained = v3;
  }
}

- (void)_postEvent:(id)a3 entity:(int64_t)a4 data:(id)a5
{
  queue = self->_queue;
  v8 = a3;
  dispatch_assert_queue_V2(queue);
  v15[0] = &unk_2854ECB48;
  v14[0] = @"ContinuityCaptureSelector";
  v14[1] = @"ContinuityCaptureArgs";
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{a4, v8}];
  v13[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v15[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v12 = [(CMContinuityCaptureTransportRapportDevice *)self activeStreamForIdentifier:@"ContinuityCaptureCommand"];
  [v12 sendMessage:@"ContinuityCaptureCommand" message:v11 completion:&__block_literal_global_199];
}

- (CMContinuityCaptureTransportRapportDevice)initWithRapportDevice:(id)a3 capabilities:(id)a4 remote:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v31.receiver = self;
  v31.super_class = CMContinuityCaptureTransportRapportDevice;
  v11 = [(CMContinuityCaptureTransportRapportDevice *)&v31 init];
  v12 = v11;
  if (!v11 || (objc_storeStrong(&v11->_device, a3), objc_storeStrong(&v12->_capabilities, a4), !v10))
  {
LABEL_20:
    v29 = 0;
    goto LABEL_16;
  }

  v12->_remote = a5;
  v13 = objc_alloc(MEMORY[0x277CCAD78]);
  v14 = [v9 idsDeviceIdentifier];
  if (v14 && ([v9 idsDeviceIdentifier], a4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(a4, "length")))
  {
    v15 = [v9 idsDeviceIdentifier];
    v16 = 0;
    v17 = 1;
  }

  else
  {
    v15 = [v9 identifier];
    v17 = 0;
    v16 = 1;
  }

  v18 = [v13 initWithUUIDString:v15];
  deviceUUID = v12->_deviceUUID;
  v12->_deviceUUID = v18;

  if (v16)
  {

    if (!v17)
    {
LABEL_9:
      if (!v14)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if (!v17)
  {
    goto LABEL_9;
  }

  if (v14)
  {
LABEL_10:
  }

LABEL_11:

  objc_storeStrong(&v12->_queue, MEMORY[0x277D85CD0]);
  v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v21 = dispatch_queue_create("com.apple.continuitycapture.sideband", v20);
  sidebandQueue = v12->_sidebandQueue;
  v12->_sidebandQueue = v21;

  v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
  activeStreams = v12->_activeStreams;
  v12->_activeStreams = v23;

  if (v12->_capabilities)
  {
    v25 = [(CMContinuityCaptureTransportRapportDevice *)v12 capabilities];
    v26 = [v25 devicesCapabilities];
    v12->_allFeaturesSupported = CMContinuityCaptureDeviceSupportsAllFeatures(v26);
  }

  if (v12->_remote)
  {
    v27 = [[CMContinuityCaptureMagicStateMonitor alloc] initWithDevice:v12];
    magicStateMonitor = v12->_magicStateMonitor;
    v12->_magicStateMonitor = v27;

    if (!v12->_magicStateMonitor)
    {
      goto LABEL_20;
    }
  }

  v29 = v12;
LABEL_16:

  return v29;
}

void __62__CMContinuityCaptureTransportRapportDevice_updateSystemState__block_invoke_cold_1(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __76__CMContinuityCaptureTransportRapportDevice__setValueForControl_completion___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  OUTLINED_FUNCTION_4_0();
  v7 = 2112;
  v8 = a2;
  _os_log_debug_impl(&dword_242545000, a3, OS_LOG_TYPE_DEBUG, "%{public}@ setValueForControl completion error %@", v6, 0x16u);
}

void __72__CMContinuityCaptureTransportRapportDevice__handleAVCNegotiation_data___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = *(a1 + 32);
  OUTLINED_FUNCTION_4_0();
  v10 = 2112;
  v11 = v8;
  v12 = 2112;
  v13 = a2;
  _os_log_debug_impl(&dword_242545000, a3, OS_LOG_TYPE_DEBUG, "%{public}@ handleAVCNegotiation SendMessage %@ Error %@", v9, 0x20u);
}

- (void)_startStream:option:completion:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_5_2(&dword_242545000, v0, v1, "%{public}@ archivedDataWithRootObject Error %@");
}

@end