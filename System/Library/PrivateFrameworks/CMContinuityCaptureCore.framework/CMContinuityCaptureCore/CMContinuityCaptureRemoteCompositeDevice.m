@interface CMContinuityCaptureRemoteCompositeDevice
+ (void)setWombatMode:(BOOL)a3;
- (BOOL)_avcaptureDeviceSupportsDockKit;
- (BOOL)postEventAction:(unint64_t)a3 args:(id)a4;
- (BOOL)setupCaptureDevices;
- (CMContinuityCaptureRemoteCompositeDevice)initWithTransportServer:(id)a3 videoPreviewLayer:(id)a4;
- (ContinuityCaptureDeviceServer)server;
- (NSDate)currentSessionActivationStartTime;
- (NSString)description;
- (id)_aggregateEventPairInAnyState:(id)a3 entryEventName:(id)a4 exitEventName:(id)a5;
- (id)controlWithName:(id)a3;
- (unint64_t)currentSessionID;
- (void)_invalidate;
- (void)_observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)_postEvent:(id)a3 entity:(int64_t)a4 data:(id)a5;
- (void)_startStream:(id)a3 option:(unint64_t)a4 completion:(id)a5;
- (void)_stopStream:(int64_t)a3 option:(unint64_t)a4 completion:(id)a5;
- (void)captureStillImage:(id)a3 entity:(int64_t)a4 completion:(id)a5;
- (void)connectionInterrupted:(id)a3 forDevice:(id)a4;
- (void)enqueueReactionEffect:(id)a3 entity:(int64_t)a4;
- (void)handleAVCNegotiation:(int64_t)a3 data:(id)a4;
- (void)handleSynchronizeAudioClockCompletion;
- (void)invalidate;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)postAggregatedCachedEventsIfApplicable;
- (void)postEvent:(id)a3 entity:(int64_t)a4 data:(id)a5;
- (void)postEventOnAllEntities:(id)a3 data:(id)a4;
- (void)setValueForControl:(id)a3 completion:(id)a4;
- (void)setupControls;
- (void)startStream:(id)a3 option:(unint64_t)a4 completion:(id)a5;
- (void)stopStream:(int64_t)a3 option:(unint64_t)a4 completion:(id)a5;
- (void)terminateCompleteForDevice:(id)a3;
- (void)updateStreamConnectStatus;
- (void)updateSystemState;
@end

@implementation CMContinuityCaptureRemoteCompositeDevice

void __86__CMContinuityCaptureRemoteCompositeDevice_initWithTransportServer_videoPreviewLayer___block_invoke(uint64_t a1)
{
  v2 = +[CMContinuityCaptureBatteryStateMonitor sharedInstance];
  [v2 addObserver:*(a1 + 32) forKeyPath:@"batteryState" options:3 context:0];

  v3 = +[CMContinuityCaptureBatteryStateMonitor sharedInstance];
  [v3 addObserver:*(a1 + 32) forKeyPath:@"batteryLevel" options:3 context:0];
}

void __86__CMContinuityCaptureRemoteCompositeDevice_initWithTransportServer_videoPreviewLayer___block_invoke_2(uint64_t a1)
{
  v2 = +[CMContinuityCaptureThermalMonitor sharedInstance];
  [v2 addObserver:*(a1 + 32) forKeyPath:@"thermalLevel" options:3 context:0];
}

- (NSDate)currentSessionActivationStartTime
{
  v2 = [(CMContinuityCaptureRemoteCompositeDevice *)self server];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 sessionActivationStartTime];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (void)setWombatMode:(BOOL)a3
{
  v3 = a3;
  v5 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543874;
    v7 = a1;
    v8 = 2080;
    v9 = "+[CMContinuityCaptureRemoteCompositeDevice setWombatMode:]";
    v10 = 1024;
    v11 = v3;
    _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ %s %d", &v6, 0x1Cu);
  }

  FigCaptureSessionRemoteSetWombatInUse();
  FigCaptureSessionRemoteSetWombatEnabled();
}

- (void)updateStreamConnectStatus
{
  objc_initWeak(location, self);
  v3 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v100 = self;
    v101 = 2080;
    v102 = "[CMContinuityCaptureRemoteCompositeDevice updateStreamConnectStatus]";
    _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", buf, 0x16u);
  }

  dispatch_assert_queue_V2(self->_queue);
  v4 = [(CMContinuityCaptureRemoteCompositeDevice *)self server];
  v5 = v4;
  if (v4)
  {
    v83 = v4;
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v7 = objc_alloc(MEMORY[0x277CBEB58]);
    v8 = CMContinuityCaptureGetListOfSupportedSidebandIdentifiers();
    v9 = [v7 initWithArray:v8];
    pendingSidebandStreamIdentifiers = self->_pendingSidebandStreamIdentifiers;
    self->_pendingSidebandStreamIdentifiers = v9;

    v11 = [v83 localDevice];
    objc_sync_enter(v11);
    v12 = [v83 localDevice];
    v13 = [v12 activeStreams];

    objc_sync_exit(v11);
    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    obj = v13;
    v14 = [obj countByEnumeratingWithState:&v110 objects:v109 count:16];
    if (v14)
    {
      v15 = *v111;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v111 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v110 + 1) + 8 * i);
          v18 = self->_pendingSidebandStreamIdentifiers;
          v19 = [v17 streamIdentifier];
          [(NSMutableSet *)v18 removeObject:v19];

          if ([v17 entity])
          {
            v20 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v17, "entity")}];
            [v6 addObject:v20];
          }
        }

        v14 = [obj countByEnumeratingWithState:&v110 objects:v109 count:16];
      }

      while (v14);
    }

    v21 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      remoteClientDisconnectNotifiedByEntityType = self->_remoteClientDisconnectNotifiedByEntityType;
      v23 = [v83 timeSyncClock];
      v24 = self->_pendingSidebandStreamIdentifiers;
      *buf = 138544386;
      v100 = self;
      v101 = 2114;
      v102 = v6;
      v103 = 2114;
      v104 = remoteClientDisconnectNotifiedByEntityType;
      v105 = 2112;
      v106 = v23;
      v107 = 2112;
      v108 = v24;
      _os_log_impl(&dword_242545000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ active entities %{public}@ pendingReconnectEntities %{public}@ timeSync %@ pendingSidebandStreamIdentifiers %@", buf, 0x34u);
    }

    if ([v6 count])
    {
      v25 = [v83 timeSyncClock];

      if (v25)
      {
        v26 = [v83 currentTransport];
        v27 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          currentTransport = self->_currentTransport;
          *buf = 138543874;
          v100 = self;
          v101 = 2048;
          v102 = currentTransport;
          v103 = 2048;
          v104 = v26;
          _os_log_impl(&dword_242545000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@ evaluate pong %ld -> %ld", buf, 0x20u);
        }

        if (v26 != self->_currentTransport)
        {
          v29 = [(NSMutableDictionary *)self->_captureDeviceByEntityType objectForKeyedSubscript:&unk_2854ECA40];

          if (v29)
          {
            v30 = [(NSMutableDictionary *)self->_captureDeviceByEntityType objectForKeyedSubscript:&unk_2854ECA40];
            v31 = [v30 captureSession];
            [v31 setTransport:v26];
          }

          v32 = [(NSMutableDictionary *)self->_captureDeviceByEntityType objectForKeyedSubscript:&unk_2854ECA58];

          if (v32)
          {
            v33 = [(NSMutableDictionary *)self->_captureDeviceByEntityType objectForKeyedSubscript:&unk_2854ECA40];
            v34 = [v33 captureSession];
            [v34 setTransport:v26];
          }

          self->_currentTransport = v26;
          if (v26 == 2)
          {
            v35 = CMContinuityCaptureLog(2);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v100 = self;
              _os_log_impl(&dword_242545000, v35, OS_LOG_TYPE_DEFAULT, "%{public}@ skip pong sound since device is wired", buf, 0xCu);
            }
          }

          else
          {
            v36 = [v83 clientDeviceModel];
            v37 = CMContinuityCaptureLog(2);
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v100 = self;
              v101 = 1024;
              LODWORD(v102) = v36 == 2;
              _os_log_impl(&dword_242545000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@ play pong sound since device is wireless (consider pong history : %d)", buf, 0x12u);
            }

            v35 = +[CMContinuityCapturePongSoundManager sharedInstance];
            v38 = [v83 localDevice];
            v39 = [v38 deviceIdentifier];
            v40 = [v39 UUIDString];
            [v35 pongIfNeededWithShouldConsiderPongHistory:v36 == 2 forIdentifier:v40];
          }
        }
      }
    }

    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v41 = [(NSMutableDictionary *)self->_captureDeviceByEntityType allValues];
    v42 = [v41 countByEnumeratingWithState:&v95 objects:v94 count:16];
    if (v42)
    {
      v81 = 0;
      v43 = *v96;
      while (1)
      {
        v44 = 0;
        do
        {
          if (*v96 != v43)
          {
            objc_enumerationMutation(v41);
          }

          v45 = *(*(&v95 + 1) + 8 * v44);
          v46 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v45, "entity")}];
          v47 = [v6 containsObject:v46];

          if (!v47)
          {
            v54 = self->_remoteClientDisconnectNotifiedByEntityType;
            v55 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v45, "entity")}];
            LOBYTE(v54) = [(NSMutableSet *)v54 containsObject:v55];

            if (v54)
            {
              goto LABEL_49;
            }

            v56 = self->_remoteClientDisconnectNotifiedByEntityType;
            v57 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v45, "entity")}];
            [(NSMutableSet *)v56 addObject:v57];

            v58 = [v45 entity];
            v92[0] = @"CMContinuityCaptureStateMachineEventDataKeyOption";
            v92[1] = @"CMContinuityCaptureStateMachineEventDataKeyPostTime";
            v93[0] = &unk_2854ECA70;
            v49 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:mach_continuous_time()];
            v93[1] = v49;
            v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v93 forKeys:v92 count:2];
            [(CMContinuityCaptureRemoteCompositeDevice *)self postEvent:@"kCMContinuityCaptureEventRemoteClientDisconnect" entity:v58 data:v59];

            goto LABEL_48;
          }

          v48 = [v83 timeSyncClock];

          if (!v48)
          {
            v49 = CMContinuityCaptureLog(2);
            if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v100 = self;
              v51 = v49;
              v52 = "%{public}@ Wait for timesync clock";
              v53 = 12;
LABEL_45:
              _os_log_impl(&dword_242545000, v51, OS_LOG_TYPE_DEFAULT, v52, buf, v53);
            }

LABEL_48:

            goto LABEL_49;
          }

          if ([(NSMutableSet *)self->_pendingSidebandStreamIdentifiers count])
          {
            v49 = CMContinuityCaptureLog(2);
            if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
            {
              v50 = self->_pendingSidebandStreamIdentifiers;
              *buf = 138543618;
              v100 = self;
              v101 = 2112;
              v102 = v50;
              v51 = v49;
              v52 = "%{public}@ Wait for sideband identifiers %@";
              v53 = 22;
              goto LABEL_45;
            }

            goto LABEL_48;
          }

          v60 = self->_remoteClientDisconnectNotifiedByEntityType;
          v61 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v45, "entity")}];
          LODWORD(v60) = [(NSMutableSet *)v60 containsObject:v61];

          if (v60)
          {
            -[CMContinuityCaptureRemoteCompositeDevice postEvent:entity:data:](self, "postEvent:entity:data:", @"kCMContinuityCaptureEventRemoteClientReconnect", [v45 entity], 0);
            v62 = self->_remoteClientDisconnectNotifiedByEntityType;
            v49 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v45, "entity")}];
            [(NSMutableSet *)v62 removeObject:v49];
            v81 = 1;
            goto LABEL_48;
          }

          v81 = 1;
LABEL_49:
          ++v44;
        }

        while (v42 != v44);
        v63 = [v41 countByEnumeratingWithState:&v95 objects:v94 count:16];
        v42 = v63;
        if (!v63)
        {
          goto LABEL_55;
        }
      }
    }

    v81 = 0;
LABEL_55:

    v5 = v83;
    if ([v6 count])
    {
      [(CMContinuityCaptureRemoteCompositeDevice *)self willChangeValueForKey:@"state"];
      v64 = self->_state & 0xFFFFFFFFFFFFFFF7;
    }

    else
    {
      [(CMContinuityCaptureRemoteCompositeDevice *)self willChangeValueForKey:@"state"];
      v64 = self->_state | 8;
    }

    self->_state = v64;
    [(CMContinuityCaptureRemoteCompositeDevice *)self didChangeValueForKey:@"state"];
    if (v81)
    {
      v91[0] = @"kCMContinuityCaptureControlSystemPressure";
      v91[1] = @"kCMContinuityCaptureControlBatteryLevel";
      v91[2] = @"kCMContinuityCaptureControlBatteryState";
      v65 = [MEMORY[0x277CBEA60] arrayWithObjects:v91 count:3];
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v66 = v65;
      v67 = [v66 countByEnumeratingWithState:&v87 objects:v86 count:16];
      if (v67)
      {
        v68 = *v88;
        do
        {
          for (j = 0; j != v67; ++j)
          {
            if (*v88 != v68)
            {
              objc_enumerationMutation(v66);
            }

            v70 = [(NSMutableDictionary *)self->_cmControlByName objectForKeyedSubscript:*(*(&v87 + 1) + 8 * j)];
            if (v70)
            {
              v71 = CMContinuityCaptureLog(2);
              if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543618;
                v100 = self;
                v101 = 2112;
                v102 = v70;
                _os_log_impl(&dword_242545000, v71, OS_LOG_TYPE_DEFAULT, "%{public}@ Updated %@", buf, 0x16u);
              }

              v72 = [v83 localDevice];
              [v72 setValueForControl:v70 completion:0];
            }
          }

          v67 = [v66 countByEnumeratingWithState:&v87 objects:v86 count:16];
        }

        while (v67);
      }

      v5 = v83;
      if (![(NSMutableSet *)self->_remoteClientDisconnectNotifiedByEntityType count])
      {
        WeakRetained = objc_loadWeakRetained(&self->_server);
        v74 = [WeakRetained localDevice];
        v75 = [v74 legacyReconnectRecovery];

        if (v75)
        {
          v76 = CMContinuityCaptureLog(2);
          if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
          {
            legacyConnectionResetDelay = self->_legacyConnectionResetDelay;
            *buf = 138543618;
            v100 = self;
            v101 = 1024;
            LODWORD(v102) = legacyConnectionResetDelay;
            _os_log_impl(&dword_242545000, v76, OS_LOG_TYPE_DEFAULT, "%{public}@ Legacy Recovery after %u", buf, 0x12u);
          }

          v78 = objc_loadWeakRetained(&self->_server);
          v79 = [v78 localDevice];
          [v79 setLegacyReconnectRecovery:0];

          [(CMContinuityCaptureRemoteCompositeDevice *)self postEvent:@"kCMContinuityCaptureEventUserPause" entity:0 data:0];
          v80 = dispatch_time(0, 1000000000 * self->_legacyConnectionResetDelay);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __69__CMContinuityCaptureRemoteCompositeDevice_updateStreamConnectStatus__block_invoke;
          block[3] = &unk_278D5C080;
          objc_copyWeak(&v85, location);
          dispatch_after(v80, MEMORY[0x277D85CD0], block);
          v5 = v83;
          objc_destroyWeak(&v85);
        }
      }

      [(CMContinuityCaptureRemoteCompositeDevice *)self postAggregatedCachedEventsIfApplicable];
      [(CMContinuityCaptureRemoteCompositeDevice *)self updateSystemState];
    }
  }

  objc_destroyWeak(location);
}

void __69__CMContinuityCaptureRemoteCompositeDevice_updateStreamConnectStatus__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    [WeakRetained postEvent:@"kCMContinuityCaptureEventUserResume" entity:0 data:0];
    v2 = [v5 server];
    v3 = v2;
    if (v2)
    {
      v4 = [v2 localDevice];
      [v4 postEvent:@"kCMContinuityCaptureEventUserResume" entity:0 data:0];
    }

    WeakRetained = v5;
  }
}

- (id)_aggregateEventPairInAnyState:(id)a3 entryEventName:(id)a4 exitEventName:(id)a5
{
  v8 = a3;
  v9 = a4;
  v23 = a5;
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  dispatch_assert_queue_V2(self->_queue);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v25 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = 0;
    v16 = *v26;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(v11);
        }

        v18 = *(*(&v25 + 1) + 8 * i);
        if (v14)
        {
          [v10 addObject:*(*(&v25 + 1) + 8 * i)];
          v14 = 1;
        }

        else if ([*(*(&v25 + 1) + 8 * i) count] && (objc_msgSend(v18, "firstObject"), (v19 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v20 = v19;
          if (([v19 isEqualToString:v9] & 1) != 0 || objc_msgSend(v20, "isEqualToString:", v23))
          {
            v21 = v18;

            v14 = 0;
          }

          else
          {
            if (v15)
            {
              [v10 addObject:v15];
            }

            [v10 addObject:v18];
            v21 = 0;
            v14 = 1;
          }

          v15 = v21;
        }

        else
        {
          v14 = 0;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v25 objects:v24 count:16];
    }

    while (v13);

    if (v15)
    {
      [v10 addObject:v15];
    }
  }

  else
  {

    v15 = 0;
  }

  return v10;
}

- (void)postAggregatedCachedEventsIfApplicable
{
  dispatch_assert_queue_V2(self->_queue);
  if ([(NSMutableArray *)self->_pendingEventToBePostedQueue count])
  {
    v3 = [(CMContinuityCaptureRemoteCompositeDevice *)self _aggregateEventPairInAnyState:self->_pendingEventToBePostedQueue entryEventName:@"kCMContinuityCaptureEventActiveCallStart" exitEventName:@"kCMContinuityCaptureEventActiveCallEnd"];
    v4 = [(CMContinuityCaptureRemoteCompositeDevice *)self _aggregateEventPairInAnyState:v3 entryEventName:@"kCMContinuityCaptureEventUserPause" exitEventName:@"kCMContinuityCaptureEventUserResume"];

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    pendingEventToBePostedQueue = self->_pendingEventToBePostedQueue;
    self->_pendingEventToBePostedQueue = v5;

    if (v4 && [v4 count])
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v18 = v4;
      v7 = v4;
      v8 = [v7 countByEnumeratingWithState:&v26 objects:v25 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v27;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v27 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v26 + 1) + 8 * i);
            if ([v12 count] >= 3)
            {
              v13 = [v12 objectAtIndexedSubscript:0];
              v14 = [v12 objectAtIndexedSubscript:1];
              v15 = [v14 unsignedIntegerValue];

              v16 = [v12 objectAtIndexedSubscript:2];
              v17 = CMContinuityCaptureLog(2);
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543874;
                v20 = self;
                v21 = 2114;
                v22 = v13;
                v23 = 1024;
                v24 = v15;
                _os_log_impl(&dword_242545000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ Posting Cached event %{public}@ entity %d", buf, 0x1Cu);
              }

              [(CMContinuityCaptureRemoteCompositeDevice *)self postEvent:v13 entity:v15 data:v16];
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v26 objects:v25 count:16];
        }

        while (v9);
      }

      v4 = v18;
    }
  }
}

- (void)terminateCompleteForDevice:(id)a3
{
  v4 = a3;
  v5 = [(CMContinuityCaptureRemoteCompositeDevice *)self server];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__CMContinuityCaptureRemoteCompositeDevice_terminateCompleteForDevice___block_invoke;
  block[3] = &unk_278D5D828;
  block[4] = self;
  v10 = v4;
  v11 = v5;
  v7 = v5;
  v8 = v4;
  dispatch_async(queue, block);
}

void __71__CMContinuityCaptureRemoteCompositeDevice_terminateCompleteForDevice___block_invoke(id *a1)
{
  v2 = *(a1[4] + 3);
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a1[5], "entity")}];
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    v5 = *(a1[4] + 3);
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a1[5], "entity")}];
    v7 = [v5 objectForKeyedSubscript:v6];

    v8 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = a1[4];
      v10 = a1[5];
      v11 = v9[3];
      v12 = a1[6];
      *buf = 138544130;
      v40 = v9;
      v41 = 2114;
      v42 = v10;
      v43 = 2114;
      v44 = v11;
      v45 = 2112;
      v46 = v12;
      _os_log_impl(&dword_242545000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ terminate complete for %{public}@ currentPending %{public}@ server %@", buf, 0x2Au);
    }

    if ([a1[5] entity] == 1)
    {
      v13 = [v7 captureSession];
      v14 = [v13 queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __71__CMContinuityCaptureRemoteCompositeDevice_terminateCompleteForDevice___block_invoke_26;
      block[3] = &unk_278D5D828;
      block[4] = a1[4];
      v37 = a1[6];
      v38 = v7;
      dispatch_async(v14, block);
    }

    if ([a1[5] entity] == 3)
    {
      v15 = [v7 captureSession];
      v16 = [v15 queue];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __71__CMContinuityCaptureRemoteCompositeDevice_terminateCompleteForDevice___block_invoke_27;
      v33[3] = &unk_278D5D828;
      v33[4] = a1[4];
      v34 = a1[6];
      v35 = v7;
      dispatch_async(v16, v33);
    }

    v17 = *(a1[4] + 3);
    v18 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a1[5], "entity")}];
    [v17 removeObjectForKey:v18];

    if (![*(a1[4] + 3) count])
    {
      v19 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = a1[4];
        *buf = 138543362;
        v40 = v20;
        _os_log_impl(&dword_242545000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ Session termination complete", buf, 0xCu);
      }

      v21 = a1[6];
      if (v21)
      {
        v22 = [v21 queue];
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __71__CMContinuityCaptureRemoteCompositeDevice_terminateCompleteForDevice___block_invoke_28;
        v31[3] = &unk_278D5C008;
        v31[4] = a1[4];
        v32 = a1[6];
        dispatch_async(v22, v31);

        v23 = [a1[6] localDevice];
        v24 = [v23 queue];
        v25 = MEMORY[0x277D85DD0];
        v26 = 3221225472;
        v27 = __71__CMContinuityCaptureRemoteCompositeDevice_terminateCompleteForDevice___block_invoke_29;
        v28 = &unk_278D5C008;
        v29 = a1[4];
        v30 = a1[6];
        dispatch_async(v24, &v25);

        [a1[6] relayTerminationComplete];
      }

      [a1[4] _invalidate];
      [a1[4] willChangeValueForKey:@"state"];
      *(a1[4] + 7) = 16;
      [a1[4] didChangeValueForKey:@"state"];
    }
  }
}

void __71__CMContinuityCaptureRemoteCompositeDevice_terminateCompleteForDevice___block_invoke_26(uint64_t a1)
{
  v2 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v7 = 138543618;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_242545000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ remove video capture session kvo %@", &v7, 0x16u);
  }

  v5 = atomic_load((*(a1 + 32) + 97));
  if (v5)
  {
    v6 = [*(a1 + 48) captureSession];
    [v6 removeObserver:*(a1 + 32) forKeyPath:@"state" context:0];

    atomic_store(0, (*(a1 + 32) + 97));
  }
}

void __71__CMContinuityCaptureRemoteCompositeDevice_terminateCompleteForDevice___block_invoke_27(uint64_t a1)
{
  v2 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v7 = 138543618;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_242545000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ remove audio capture session kvo %@", &v7, 0x16u);
  }

  v5 = atomic_load((*(a1 + 32) + 98));
  if (v5)
  {
    v6 = [*(a1 + 48) captureSession];
    [v6 removeObserver:*(a1 + 32) forKeyPath:@"state" context:0];

    atomic_store(0, (*(a1 + 32) + 98));
  }
}

void __71__CMContinuityCaptureRemoteCompositeDevice_terminateCompleteForDevice___block_invoke_28(uint64_t a1)
{
  v2 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138543618;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_242545000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ remove timesync kvo %@", &v6, 0x16u);
  }

  v5 = atomic_load((*(a1 + 32) + 100));
  if (v5)
  {
    [*(a1 + 40) removeObserver:*(a1 + 32) forKeyPath:@"timeSyncClock" context:0];
    atomic_store(0, (*(a1 + 32) + 100));
  }
}

void __71__CMContinuityCaptureRemoteCompositeDevice_terminateCompleteForDevice___block_invoke_29(uint64_t a1)
{
  v2 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v7 = 138543618;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_242545000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ remove active stream kvo %@", &v7, 0x16u);
  }

  v5 = atomic_load((*(a1 + 32) + 99));
  if (v5)
  {
    v6 = [*(a1 + 40) localDevice];
    [v6 removeObserver:*(a1 + 32) forKeyPath:@"activeStreams" context:0];

    atomic_store(0, (*(a1 + 32) + 99));
  }
}

- (unint64_t)currentSessionID
{
  v2 = [(CMContinuityCaptureRemoteCompositeDevice *)self server];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 currentSessionID];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __91__CMContinuityCaptureRemoteCompositeDevice_observeValueForKeyPath_ofObject_change_context___block_invoke;
  v17[3] = &unk_278D5C1C0;
  objc_copyWeak(v21, &location);
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21[1] = a6;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(queue, v17);

  objc_destroyWeak(v21);
  objc_destroyWeak(&location);
}

void __91__CMContinuityCaptureRemoteCompositeDevice_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _observeValueForKeyPath:*(a1 + 32) ofObject:*(a1 + 40) change:*(a1 + 48) context:*(a1 + 64)];
    WeakRetained = v3;
  }
}

- (void)_observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(NSMutableDictionary *)self->_cmControlByName objectForKeyedSubscript:@"kCMContinuityCaptureControlSystemPressure"];
  dispatch_assert_queue_V2(self->_queue);
  v13 = [(CMContinuityCaptureRemoteCompositeDevice *)self server];
  if (v13)
  {
    if (CMContinityCaptureDebugLogEnabled())
    {
      v14 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        v34 = self;
        v35 = 2114;
        v36 = v9;
        v37 = 2114;
        v38 = v10;
        _os_log_debug_impl(&dword_242545000, v14, OS_LOG_TYPE_DEBUG, "%@ keypath:%{public}@ object:%{public}@", buf, 0x20u);
      }
    }

    if ([v9 isEqualToString:@"systemPressureState"])
    {
      v15 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      v16 = [v15 level];
      v17 = [v12 value];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v12 value];
        v32 = v13;
        v18 = v9;
        v19 = v12;
        v20 = v15;
        v21 = v11;
        v23 = v22 = v10;
        v24 = [v23 isEqualToString:v16];

        v10 = v22;
        v11 = v21;
        v15 = v20;
        v12 = v19;
        v9 = v18;
        v13 = v32;

        if (v24)
        {
LABEL_13:

          goto LABEL_21;
        }

        v25 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = [v12 value];
          *buf = 138543874;
          v34 = self;
          v35 = 2112;
          v36 = v26;
          v37 = 2112;
          v38 = v16;
          _os_log_impl(&dword_242545000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ System Pressure state changed from %@ to %@.", buf, 0x20u);
        }

        [v12 setValue:v16];
        v17 = [v32 localDevice];
        [v17 setValueForControl:v12 completion:0];
      }

      goto LABEL_13;
    }

    if (([v9 isEqualToString:@"activeStreams"] & 1) != 0 || objc_msgSend(v9, "isEqualToString:", @"timeSyncClock"))
    {
      [(CMContinuityCaptureRemoteCompositeDevice *)self updateStreamConnectStatus];
    }

    else if (([v9 isEqualToString:@"batteryState"] & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", @"batteryLevel") & 1) != 0 || objc_msgSend(v9, "isEqualToString:", @"thermalLevel"))
    {
      [(CMContinuityCaptureRemoteCompositeDevice *)self updateSystemState];
    }

    else if (([v9 isEqualToString:@"currentState"] & 1) == 0 && objc_msgSend(v9, "isEqualToString:", @"state"))
    {
      v27 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      v28 = [v27 integerValue];

      v29 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = [(CMContinuityCaptureRemoteCompositeDevice *)self currentSessionID];
        *buf = 138543874;
        v34 = self;
        v35 = 2048;
        v36 = v30;
        v37 = 2048;
        v38 = v28;
        _os_log_impl(&dword_242545000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@ [sessionID:%llx] capture session state %ld", buf, 0x20u);
      }

      if (v28 == 3)
      {
        v31 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ContinuityCapture" code:-1008 userInfo:0];
        [(CMContinuityCaptureRemoteCompositeDevice *)self connectionInterrupted:v31 forDevice:0];
      }
    }
  }

LABEL_21:
}

- (void)connectionInterrupted:(id)a3 forDevice:(id)a4
{
  v5 = a3;
  v6 = [(CMContinuityCaptureRemoteCompositeDevice *)self server];
  v7 = v6;
  if (v5 && v6 && [v5 code])
  {
    v8 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v15 = self;
      v16 = 2114;
      v17 = v5;
      _os_log_impl(&dword_242545000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Connection Interrupted, error %{public}@", buf, 0x16u);
    }

    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{mach_continuous_time(), @"CMContinuityCaptureStateMachineEventDataKeyOption", @"CMContinuityCaptureStateMachineEventDataKeyAttemptStreamRestart", @"CMContinuityCaptureStateMachineEventDataKeyPostTime", &unk_2854ECA70, MEMORY[0x277CBEC38]}];
    v13[2] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:3];
    [(CMContinuityCaptureRemoteCompositeDevice *)self postEvent:@"kCMContinuityCaptureEventRemoteClientDisconnect" entity:0 data:v10];

    v11 = [v7 localDevice];
    [v11 postEvent:@"kCMContinuityCaptureEventConnectionDisconnect" entity:0 data:0];
  }
}

- (BOOL)setupCaptureDevices
{
  v3 = [(CMContinuityCaptureRemoteCompositeDevice *)self server];
  if (v3)
  {
    v4 = [CMContinuityCaptureDeviceCapabilities capabilitiesForEntityType:2];
    if (v4)
    {
      v5 = [v3 clientDeviceModel] != 2;
    }

    else
    {
      v5 = 0;
    }

    v7 = [CMContinuityCaptureAVCaptureVideoSession alloc];
    v8 = FigDispatchQueueCreateWithPriority();
    v9 = [(CMContinuityCaptureAVCaptureVideoSession *)v7 initWithQueue:v8 requiresMulticamSession:v5];

    [(CMContinuityCaptureAVCaptureVideoSession *)v9 setVideoPreviewLayer:self->_videoPreviewLayer];
    -[CMContinuityCaptureAVCaptureBaseSession setTransport:](v9, "setTransport:", [v3 currentTransport]);
    -[CMContinuityCaptureAVCaptureBaseSession setClientDeviceModel:](v9, "setClientDeviceModel:", [v3 clientDeviceModel]);
    v10 = [CMContinuityCaptureAVCaptureAudioSession alloc];
    v11 = FigDispatchQueueCreateWithPriority();
    v39 = [(CMContinuityCaptureAVCaptureAudioSession *)v10 initWithQueue:v11];

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v40 = v3;
    v12 = [v3 localDevice];
    v13 = [v12 capabilities];
    v14 = [v13 devicesCapabilities];

    v15 = [v14 countByEnumeratingWithState:&v46 objects:v45 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v47;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v47 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v46 + 1) + 8 * i);
          if ([v19 entityType] != 2 || (v20 = objc_msgSend(v40, "clientDeviceModel"), v21 = off_278D5B918, v22 = v9, v20 == 2))
          {
            v23 = [v19 entityType];
            v21 = off_278D5B920;
            v22 = v9;
            if (v23 != 1)
            {
              v24 = [v19 entityType];
              v21 = off_278D5B908;
              v22 = v39;
              if (v24 != 3)
              {
                goto LABEL_19;
              }
            }
          }

          v25 = [objc_alloc(*v21) initWithCapabilities:v19 compositeDelegate:self captureSession:v22];
          if (v25)
          {
            v26 = v25;
            v27 = CMContinuityCaptureLog(2);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v42 = self;
              v43 = 2114;
              v44 = v26;
              _os_log_impl(&dword_242545000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@ Created %{public}@", buf, 0x16u);
            }

            captureDeviceByEntityType = self->_captureDeviceByEntityType;
            v29 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v19, "entityType")}];
            [(NSMutableDictionary *)captureDeviceByEntityType setObject:v26 forKeyedSubscript:v29];
          }

          else
          {
LABEL_19:
            v26 = CMContinuityCaptureLog(2);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              v30 = [v19 entityType];
              *buf = 138543618;
              v42 = self;
              v43 = 1024;
              LODWORD(v44) = v30;
              _os_log_impl(&dword_242545000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@ failed to create capture device for entity %d", buf, 0x12u);
            }
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v46 objects:v45 count:16];
      }

      while (v16);
    }

    v31 = [(NSMutableDictionary *)self->_captureDeviceByEntityType objectForKeyedSubscript:&unk_2854ECA88];
    if (v31)
    {
      v32 = v31;
      v33 = [(NSMutableDictionary *)self->_captureDeviceByEntityType objectForKeyedSubscript:&unk_2854ECA40];

      if (v33)
      {
        v34 = [(NSMutableDictionary *)self->_captureDeviceByEntityType objectForKeyedSubscript:&unk_2854ECA40];
        v35 = [(NSMutableDictionary *)self->_captureDeviceByEntityType objectForKeyedSubscript:&unk_2854ECA88];
        [v35 setCompanionDevice:v34];

        v36 = [(NSMutableDictionary *)self->_captureDeviceByEntityType objectForKeyedSubscript:&unk_2854ECA88];
        v37 = [(NSMutableDictionary *)self->_captureDeviceByEntityType objectForKeyedSubscript:&unk_2854ECA40];
        [v37 setCompanionDevice:v36];
      }
    }

    v6 = [(NSMutableDictionary *)self->_captureDeviceByEntityType count]!= 0;

    v3 = v40;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (ContinuityCaptureDeviceServer)server
{
  WeakRetained = objc_loadWeakRetained(&self->_server);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained;
  }

  return v3;
}

void __54__CMContinuityCaptureRemoteCompositeDevice_invalidate__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) localDevice];
  v3 = [v2 queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__CMContinuityCaptureRemoteCompositeDevice_invalidate__block_invoke_2;
  block[3] = &unk_278D5C008;
  v7 = *(a1 + 32);
  v4 = v7.i64[0];
  v12 = vextq_s8(v7, v7, 8uLL);
  dispatch_async(v3, block);

  v5 = [*(a1 + 32) queue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54__CMContinuityCaptureRemoteCompositeDevice_invalidate__block_invoke_45;
  v9[3] = &unk_278D5C008;
  v8 = *(a1 + 32);
  v6 = v8.i64[0];
  v10 = vextq_s8(v8, v8, 8uLL);
  dispatch_async(v5, v9);

  [*(a1 + 32) relayTerminationComplete];
  [*(a1 + 40) _invalidate];
}

void __54__CMContinuityCaptureRemoteCompositeDevice_invalidate__block_invoke_2(uint64_t a1)
{
  v2 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v7 = 138543618;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_242545000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ remove active stream kvo %@", &v7, 0x16u);
  }

  v5 = atomic_load((*(a1 + 32) + 99));
  if (v5)
  {
    v6 = [*(a1 + 40) localDevice];
    [v6 removeObserver:*(a1 + 32) forKeyPath:@"activeStreams" context:0];

    atomic_store(0, (*(a1 + 32) + 99));
  }
}

void __54__CMContinuityCaptureRemoteCompositeDevice_invalidate__block_invoke_45(uint64_t a1)
{
  v2 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138543618;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_242545000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ remove timesync kvo %@", &v6, 0x16u);
  }

  v5 = atomic_load((*(a1 + 32) + 100));
  if (v5)
  {
    [*(a1 + 40) removeObserver:*(a1 + 32) forKeyPath:@"timeSyncClock" context:0];
    atomic_store(0, (*(a1 + 32) + 100));
  }
}

- (void)_invalidate
{
  v3 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v44 = self;
    v45 = 2082;
    v46 = "[CMContinuityCaptureRemoteCompositeDevice _invalidate]";
    _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}s", buf, 0x16u);
  }

  dispatch_assert_queue_V2(self->_queue);
  v4 = atomic_load(&self->_sessionInvalidated);
  if ((v4 & 1) == 0)
  {
    atomic_store(1u, &self->_sessionInvalidated);
    v5 = +[CMContinuityCaptureBatteryStateMonitor sharedInstance];
    v6 = [v5 queue];
    dispatch_assert_queue_not_V2(v6);

    v7 = +[CMContinuityCaptureBatteryStateMonitor sharedInstance];
    v8 = [v7 queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__CMContinuityCaptureRemoteCompositeDevice__invalidate__block_invoke;
    block[3] = &unk_278D5C0D0;
    block[4] = self;
    dispatch_async_and_wait(v8, block);

    v9 = +[CMContinuityCaptureThermalMonitor sharedInstance];
    v10 = [v9 queue];
    dispatch_assert_queue_not_V2(v10);

    v11 = +[CMContinuityCaptureThermalMonitor sharedInstance];
    v12 = [v11 queue];
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __55__CMContinuityCaptureRemoteCompositeDevice__invalidate__block_invoke_2;
    v51[3] = &unk_278D5C0D0;
    v51[4] = self;
    dispatch_async_and_wait(v12, v51);

    v13 = [MEMORY[0x277CBEAA8] now];
    v14 = CMContinuityCaptureLog(2);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    v16 = *MEMORY[0x277CF3B60];
    v17 = *MEMORY[0x277CF3B58];
    if (v15)
    {
      *buf = 138544130;
      v44 = self;
      v45 = 2112;
      v46 = v17;
      v47 = 2112;
      v48 = v16;
      v49 = 2112;
      v50 = v13;
      _os_log_impl(&dword_242545000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ Setting preference (%@) '%@' to %@", buf, 0x2Au);
    }

    v32 = v13;
    CFPreferencesSetValue(v16, v13, v17, *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v18 = [(NSMutableDictionary *)self->_captureDeviceByEntityType allValues];
    v19 = [v18 countByEnumeratingWithState:&v39 objects:v38 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v40;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v40 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v39 + 1) + 8 * i);
          v24 = [v23 queue];
          v37[0] = MEMORY[0x277D85DD0];
          v37[1] = 3221225472;
          v37[2] = __55__CMContinuityCaptureRemoteCompositeDevice__invalidate__block_invoke_47;
          v37[3] = &unk_278D5C008;
          v37[4] = self;
          v37[5] = v23;
          dispatch_async(v24, v37);
        }

        v20 = [v18 countByEnumeratingWithState:&v39 objects:v38 count:16];
      }

      while (v20);
    }

    v25 = [(NSMutableDictionary *)self->_captureDeviceByEntityType objectForKeyedSubscript:&unk_2854ECA40];
    v26 = [(NSMutableDictionary *)self->_captureDeviceByEntityType objectForKeyedSubscript:&unk_2854ECA58];
    if (v25)
    {
      v27 = [v25 captureSession];
      v28 = [v27 queue];
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __55__CMContinuityCaptureRemoteCompositeDevice__invalidate__block_invoke_48;
      v35[3] = &unk_278D5C008;
      v35[4] = self;
      v36 = v25;
      dispatch_async(v28, v35);
    }

    if (v26)
    {
      v29 = [v26 captureSession];
      v30 = [v29 queue];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __55__CMContinuityCaptureRemoteCompositeDevice__invalidate__block_invoke_49;
      v33[3] = &unk_278D5C008;
      v33[4] = self;
      v34 = v26;
      dispatch_async(v30, v33);
    }

    transaction = self->_transaction;
    self->_transaction = 0;
  }
}

void __55__CMContinuityCaptureRemoteCompositeDevice__invalidate__block_invoke(uint64_t a1)
{
  v2 = +[CMContinuityCaptureBatteryStateMonitor sharedInstance];
  [v2 removeObserver:*(a1 + 32) forKeyPath:@"batteryState" context:0];

  v3 = +[CMContinuityCaptureBatteryStateMonitor sharedInstance];
  [v3 removeObserver:*(a1 + 32) forKeyPath:@"batteryLevel" context:0];
}

void __55__CMContinuityCaptureRemoteCompositeDevice__invalidate__block_invoke_2(uint64_t a1)
{
  v2 = +[CMContinuityCaptureThermalMonitor sharedInstance];
  [v2 removeObserver:*(a1 + 32) forKeyPath:@"thermalLevel" context:0];
}

uint64_t __55__CMContinuityCaptureRemoteCompositeDevice__invalidate__block_invoke_47(uint64_t a1)
{
  v2 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138543618;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_242545000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ invalidate %{public}@", &v6, 0x16u);
  }

  [*(a1 + 40) stopCameraCaptureStack:0];
  return [*(a1 + 40) invalidate];
}

void __55__CMContinuityCaptureRemoteCompositeDevice__invalidate__block_invoke_48(uint64_t a1)
{
  v2 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v7 = 138543618;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_242545000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ remove video capture session kvo %@", &v7, 0x16u);
  }

  v5 = atomic_load((*(a1 + 32) + 97));
  if (v5)
  {
    v6 = [*(a1 + 40) captureSession];
    [v6 removeObserver:*(a1 + 32) forKeyPath:@"state" context:0];

    atomic_store(0, (*(a1 + 32) + 97));
  }
}

void __55__CMContinuityCaptureRemoteCompositeDevice__invalidate__block_invoke_49(uint64_t a1)
{
  v2 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v7 = 138543618;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_242545000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ remove audio capture session kvo %@", &v7, 0x16u);
  }

  v5 = atomic_load((*(a1 + 32) + 98));
  if (v5)
  {
    v6 = [*(a1 + 40) captureSession];
    [v6 removeObserver:*(a1 + 32) forKeyPath:@"state" context:0];

    atomic_store(0, (*(a1 + 32) + 98));
  }
}

- (void)setupControls
{
  v3 = [CMContinuityCaptureControl alloc];
  v4 = *MEMORY[0x277CE59D8];
  v24 = 0;
  v25 = 0;
  v23 = 1;
  v5 = [(CMContinuityCaptureControl *)v3 initWithName:@"kCMContinuityCaptureControlSystemPressure" attributes:0 entity:4 minimumSupportedVersion:&v23 value:v4];
  [(NSMutableDictionary *)self->_cmControlByName setObject:v5 forKeyedSubscript:@"kCMContinuityCaptureControlSystemPressure"];
  v6 = [CMContinuityCaptureControl alloc];
  v24 = 0;
  v25 = 0;
  v23 = 1;
  v7 = [(CMContinuityCaptureControl *)v6 initWithName:@"kCMContinuityCaptureControlIncomingCall" attributes:0 entity:4 minimumSupportedVersion:&v23 value:0];
  [(NSMutableDictionary *)self->_cmControlByName setObject:v7 forKeyedSubscript:@"kCMContinuityCaptureControlIncomingCall"];
  v8 = [CMContinuityCaptureControl alloc];
  v9 = +[CMContinuityCaptureBatteryStateMonitor sharedInstance];
  v10 = [v9 batteryLevel];
  v24 = 0;
  v25 = 0;
  v23 = 1;
  v11 = [(CMContinuityCaptureControl *)v8 initWithName:@"kCMContinuityCaptureControlBatteryLevel" attributes:0 entity:4 minimumSupportedVersion:&v23 value:v10];

  [(NSMutableDictionary *)self->_cmControlByName setObject:v11 forKeyedSubscript:@"kCMContinuityCaptureControlBatteryLevel"];
  v12 = [CMContinuityCaptureControl alloc];
  v13 = MEMORY[0x277CCABB0];
  v14 = +[CMContinuityCaptureBatteryStateMonitor sharedInstance];
  v15 = [v13 numberWithInteger:{objc_msgSend(v14, "batteryState")}];
  v24 = 0;
  v25 = 0;
  v23 = 1;
  v16 = [(CMContinuityCaptureControl *)v12 initWithName:@"kCMContinuityCaptureControlBatteryState" attributes:0 entity:4 minimumSupportedVersion:&v23 value:v15];

  [(NSMutableDictionary *)self->_cmControlByName setObject:v16 forKeyedSubscript:@"kCMContinuityCaptureControlBatteryState"];
  v17 = [CMContinuityCaptureControl alloc];
  v24 = 0;
  v25 = 0;
  v23 = 1;
  v18 = [(CMContinuityCaptureControl *)v17 initWithName:@"kCMContinuityCaptureControlIncomingCallComplete" attributes:0 entity:4 minimumSupportedVersion:&v23 value:0];
  [(NSMutableDictionary *)self->_cmControlByName setObject:v18 forKeyedSubscript:@"kCMContinuityCaptureControlIncomingCallComplete"];
  if ([(CMContinuityCaptureRemoteCompositeDevice *)self _avcaptureDeviceSupportsDockKit])
  {
    v19 = [CMContinuityCaptureControl alloc];
    v24 = 0;
    v25 = 0;
    v23 = 1;
    v20 = [(CMContinuityCaptureControl *)v19 initWithName:@"kCMContinuityCaptureControlDockedTrackingActive" attributes:0 entity:4 minimumSupportedVersion:&v23 value:0];
    [(NSMutableDictionary *)self->_cmControlByName setObject:v20 forKeyedSubscript:@"kCMContinuityCaptureControlDockedTrackingActive"];
  }

  v21 = [CMContinuityCaptureControl alloc];
  v24 = 0;
  v25 = 0;
  v23 = 1;
  v22 = [(CMContinuityCaptureControl *)v21 initWithName:@"kCMContinuityCaptureControlDebugInfo" attributes:0 entity:4 minimumSupportedVersion:&v23 value:&stru_2854DE150];
  [(NSMutableDictionary *)self->_cmControlByName setObject:v22 forKeyedSubscript:@"kCMContinuityCaptureControlDebugInfo"];
}

- (void)handleAVCNegotiation:(int64_t)a3 data:(id)a4
{
  v6 = a4;
  objc_initWeak(&location, self);
  v7 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v14 = self;
    v15 = 2080;
    v16 = "[CMContinuityCaptureRemoteCompositeDevice handleAVCNegotiation:data:]";
    v17 = 1024;
    v18 = a3;
    _os_log_impl(&dword_242545000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@  %s %d", buf, 0x1Cu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__CMContinuityCaptureRemoteCompositeDevice_handleAVCNegotiation_data___block_invoke;
  block[3] = &unk_278D5C770;
  objc_copyWeak(v12, &location);
  v12[1] = a3;
  v11 = v6;
  v9 = v6;
  dispatch_async(queue, block);

  objc_destroyWeak(v12);
  objc_destroyWeak(&location);
}

void __70__CMContinuityCaptureRemoteCompositeDevice_handleAVCNegotiation_data___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 3);
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 48)];
    v6 = [v4 objectForKeyedSubscript:v5];

    if (v6)
    {
      [v6 handleAVCNegotiation:*(a1 + 48) data:*(a1 + 32)];
    }

    else
    {
      v7 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __70__CMContinuityCaptureRemoteCompositeDevice_handleAVCNegotiation_data___block_invoke_cold_1((a1 + 40));
      }
    }
  }
}

- (void)handleSynchronizeAudioClockCompletion
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __81__CMContinuityCaptureRemoteCompositeDevice_handleSynchronizeAudioClockCompletion__block_invoke;
  v4[3] = &unk_278D5C080;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __81__CMContinuityCaptureRemoteCompositeDevice_handleSynchronizeAudioClockCompletion__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained[3] objectForKeyedSubscript:&unk_2854ECA58];
    v5 = v4;
    if (v4)
    {
      [v4 handleSynchronizeAudioClockCompletion];
    }

    else
    {
      v6 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __70__CMContinuityCaptureRemoteCompositeDevice_handleAVCNegotiation_data___block_invoke_cold_1((a1 + 32));
      }
    }
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
  block[2] = __80__CMContinuityCaptureRemoteCompositeDevice_captureStillImage_entity_completion___block_invoke;
  block[3] = &unk_278D5D850;
  objc_copyWeak(v16, &location);
  v16[1] = a4;
  v14 = v8;
  v15 = v9;
  v11 = v8;
  v12 = v9;
  dispatch_async(queue, block);

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

void __80__CMContinuityCaptureRemoteCompositeDevice_captureStillImage_entity_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 3);
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 56)];
    v6 = [v4 objectForKeyedSubscript:v5];

    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v6 captureStillImage:*(a1 + 32) entity:*(a1 + 56) completion:*(a1 + 40)];
    }

    else
    {
      v7 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ContinuityCapture" code:-1001 userInfo:0];
      v8 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = 138543874;
        v10 = v3;
        v11 = 2112;
        v12 = v6;
        v13 = 2112;
        v14 = v7;
        _os_log_error_impl(&dword_242545000, v8, OS_LOG_TYPE_ERROR, "%{public}@ Invalid capture device %@ error %@", &v9, 0x20u);
      }

      (*(*(a1 + 40) + 16))();
    }
  }
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(CMContinuityCaptureRemoteCompositeDevice *)self server];
  if (v6)
  {
    v7 = [(CMContinuityCaptureRemoteCompositeDevice *)self server];
    v8 = [v7 localDevice];
    v9 = [v8 deviceIdentifier];
    v10 = [v9 UUIDString];
    v11 = [v3 stringWithFormat:@"%@: %@ [%p]", v5, v10, self];
  }

  else
  {
    v11 = [v3 stringWithFormat:@"%@: %@ [%p]", v5, 0, self];
  }

  return v11;
}

- (void)enqueueReactionEffect:(id)a3 entity:(int64_t)a4
{
  v6 = a3;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__CMContinuityCaptureRemoteCompositeDevice_enqueueReactionEffect_entity___block_invoke;
  v9[3] = &unk_278D5C770;
  objc_copyWeak(v11, &location);
  v10 = v6;
  v11[1] = a4;
  v8 = v6;
  dispatch_async(queue, v9);

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

void __73__CMContinuityCaptureRemoteCompositeDevice_enqueueReactionEffect_entity___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained[3] objectForKeyedSubscript:&unk_2854ECA40];
    if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v4 enqueueReactionEffect:*(a1 + 32) entity:*(a1 + 48)];
    }

    else
    {
      v5 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ContinuityCapture" code:-1001 userInfo:0];
      v6 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = 138543874;
        v8 = v3;
        v9 = 2112;
        v10 = v4;
        v11 = 2112;
        v12 = v5;
        _os_log_error_impl(&dword_242545000, v6, OS_LOG_TYPE_ERROR, "%{public}@ Invalid capture device %@ error %@", &v7, 0x20u);
      }
    }
  }
}

- (void)postEvent:(id)a3 entity:(int64_t)a4 data:(id)a5
{
  v8 = a3;
  v9 = a5;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __66__CMContinuityCaptureRemoteCompositeDevice_postEvent_entity_data___block_invoke;
  v13[3] = &unk_278D5C1C0;
  objc_copyWeak(v17, &location);
  v14 = v8;
  v15 = self;
  v17[1] = a4;
  v16 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(queue, v13);

  objc_destroyWeak(v17);
  objc_destroyWeak(&location);
}

void __66__CMContinuityCaptureRemoteCompositeDevice_postEvent_entity_data___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained server];
    if (!v4)
    {
LABEL_34:

      goto LABEL_35;
    }

    v5 = CMContinuityCaptureRemoteEventToBeRelayedList();
    if ([*(v3 + 10) count] && objc_msgSend(v5, "containsObject:", *(a1 + 32)))
    {
      v6 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(v3 + 10);
        v9 = *(a1 + 32);
        v8 = *(a1 + 40);
        *buf = 138543874;
        v30 = v8;
        v31 = 2112;
        v32 = v7;
        v33 = 2114;
        v34 = v9;
        _os_log_impl(&dword_242545000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Wait for sideband identifiers %@, cache event %{public}@", buf, 0x20u);
      }

      v10 = *(v3 + 11);
      v28[0] = *(a1 + 32);
      v11 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 64)];
      v12 = v11;
      v13 = *(a1 + 48);
      if (!v13)
      {
        v13 = MEMORY[0x277CBEC10];
      }

      v28[1] = v11;
      v28[2] = v13;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:3];
      [v10 addObject:v14];
      goto LABEL_31;
    }

    if ([*(a1 + 32) isEqualToString:@"kCMContinuityCaptureEventUserPause"])
    {
      v15 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = objc_loadWeakRetained((a1 + 56));
        *buf = 138543362;
        v30 = v16;
        _os_log_impl(&dword_242545000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ UserPause", buf, 0xCu);
      }

      [v3 willChangeValueForKey:@"state"];
      v17 = *(v3 + 7) | 1;
    }

    else
    {
      if (![*(a1 + 32) isEqualToString:@"kCMContinuityCaptureEventUserResume"])
      {
LABEL_19:
        if (*(a1 + 64) == 4 && ([*(v3 + 4) objectForKeyedSubscript:*(a1 + 32)], v20 = objc_claimAutoreleasedReturnValue(), v20, v20))
        {
          if (([*(a1 + 32) isEqualToString:@"kCMContinuityCaptureControlIncomingCall"] & 1) == 0 && !objc_msgSend(*(a1 + 32), "isEqualToString:", @"kCMContinuityCaptureControlIncomingCallComplete"))
          {
            goto LABEL_33;
          }

          v21 = [*(v3 + 4) objectForKeyedSubscript:*(a1 + 32)];
          v12 = v21;
          if (!v21)
          {
            goto LABEL_32;
          }

          [v21 setValue:*(a1 + 48)];
          v22 = CMContinuityCaptureLog(2);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = *(a1 + 40);
            *buf = 138543618;
            v30 = v23;
            v31 = 2114;
            v32 = v12;
            _os_log_impl(&dword_242545000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ SetValue %{public}@", buf, 0x16u);
          }

          v14 = [v4 localDevice];
          [v14 setValueForControl:v12 completion:0];
        }

        else
        {
          if (!*(a1 + 32))
          {
LABEL_33:

            goto LABEL_34;
          }

          v12 = [v3 eventQueue];
          v24 = [MEMORY[0x277CCABB0] numberWithInteger:{*(a1 + 64), *(a1 + 32)}];
          v14 = v24;
          v25 = *(a1 + 48);
          if (!v25)
          {
            v25 = MEMORY[0x277CBEC10];
          }

          v27[1] = v24;
          v27[2] = v25;
          v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:3];
          [v12 enqueueEventAction:3 args:v26];
        }

LABEL_31:

LABEL_32:
        goto LABEL_33;
      }

      v18 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = objc_loadWeakRetained((a1 + 56));
        *buf = 138543362;
        v30 = v19;
        _os_log_impl(&dword_242545000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ UserResume", buf, 0xCu);
      }

      [v3 willChangeValueForKey:@"state"];
      v17 = *(v3 + 7) & 0xFFFFFFFFFFFFFFFELL;
    }

    *(v3 + 7) = v17;
    [v3 didChangeValueForKey:@"state"];
    goto LABEL_19;
  }

LABEL_35:
}

- (void)postEventOnAllEntities:(id)a3 data:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [(NSMutableDictionary *)self->_captureDeviceByEntityType allValues];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v14 + 1) + 8 * v12) postEvent:v6 entity:objc_msgSend(*(*(&v14 + 1) + 8 * v12) data:{"entity"), v7}];
        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v13 count:16];
    }

    while (v10);
  }
}

- (BOOL)postEventAction:(unint64_t)a3 args:(id)a4
{
  v6 = a4;
  objc_initWeak(&location, self);
  dispatch_assert_queue_V2(self->_queue);
  if (CMContinityCaptureDebugLogEnabled())
  {
    v7 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v53 = self;
      v54 = 2048;
      v55 = a3;
      v56 = 2112;
      v57 = v6;
      _os_log_debug_impl(&dword_242545000, v7, OS_LOG_TYPE_DEBUG, "%@ Perform %lu %@", buf, 0x20u);
    }
  }

  switch(a3)
  {
    case 3uLL:
      if ([v6 count] < 2)
      {
        goto LABEL_27;
      }

      v28 = [v6 objectAtIndexedSubscript:0];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        goto LABEL_27;
      }

      v30 = [v6 objectAtIndexedSubscript:1];
      objc_opt_class();
      v31 = objc_opt_isKindOfClass();

      if ((v31 & 1) == 0)
      {
        goto LABEL_27;
      }

      v32 = [v6 objectAtIndexedSubscript:2];
      if (v32)
      {
        v33 = objc_alloc(MEMORY[0x277CBEB38]);
        v34 = [v6 objectAtIndexedSubscript:2];
        v12 = [v33 initWithDictionary:v34];
      }

      else
      {
        v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
      }

      v40 = MEMORY[0x277D85DD0];
      v41 = 3221225472;
      v42 = __65__CMContinuityCaptureRemoteCompositeDevice_postEventAction_args___block_invoke_2;
      v43 = &unk_278D5C1E8;
      objc_copyWeak(&v44, &location);
      v35 = MEMORY[0x245D12020](&v40);
      [v12 setObject:v35 forKeyedSubscript:{@"CMContinuityCaptureStateMachineEventDataCompletionBlock", v40, v41, v42, v43}];

      v36 = [v6 objectAtIndexedSubscript:0];
      v37 = [v6 objectAtIndexedSubscript:1];
      -[CMContinuityCaptureRemoteCompositeDevice _postEvent:entity:data:](self, "_postEvent:entity:data:", v36, [v37 unsignedIntValue], v12);

      v27 = &v44;
      goto LABEL_23;
    case 2uLL:
      if ([v6 count] != 3)
      {
        goto LABEL_27;
      }

      v17 = [v6 objectAtIndexedSubscript:0];
      objc_opt_class();
      v18 = objc_opt_isKindOfClass();

      if ((v18 & 1) == 0)
      {
        goto LABEL_27;
      }

      v19 = [v6 objectAtIndexedSubscript:1];
      objc_opt_class();
      v20 = objc_opt_isKindOfClass();

      if ((v20 & 1) == 0)
      {
        goto LABEL_27;
      }

      v21 = [v6 objectAtIndexedSubscript:0];
      v22 = [v21 unsignedIntValue];

      v23 = [v6 objectAtIndexedSubscript:1];
      v24 = [v23 unsignedIntValue];

      v25 = [v6 objectAtIndexedSubscript:2];
      v26 = v22;
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __65__CMContinuityCaptureRemoteCompositeDevice_postEventAction_args___block_invoke_59;
      v45[3] = &unk_278D5C260;
      objc_copyWeak(&v47, &location);
      v12 = v25;
      v46 = v12;
      [(CMContinuityCaptureRemoteCompositeDevice *)self _stopStream:v26 option:v24 completion:v45];

      v27 = &v47;
LABEL_23:
      objc_destroyWeak(v27);
      goto LABEL_24;
    case 1uLL:
      if ([v6 count] == 3)
      {
        v8 = [v6 objectAtIndexedSubscript:0];
        objc_opt_class();
        v9 = objc_opt_isKindOfClass();

        if (v9)
        {
          v10 = [v6 objectAtIndexedSubscript:1];
          objc_opt_class();
          v11 = objc_opt_isKindOfClass();

          if (v11)
          {
            v12 = [v6 objectAtIndexedSubscript:0];
            v13 = [v6 objectAtIndexedSubscript:1];
            v14 = [v13 unsignedIntValue];

            v15 = [v6 objectAtIndexedSubscript:2];
            v48[0] = MEMORY[0x277D85DD0];
            v48[1] = 3221225472;
            v48[2] = __65__CMContinuityCaptureRemoteCompositeDevice_postEventAction_args___block_invoke;
            v48[3] = &unk_278D5C548;
            objc_copyWeak(&v51, &location);
            v49 = v6;
            v16 = v15;
            v50 = v16;
            [(CMContinuityCaptureRemoteCompositeDevice *)self _startStream:v12 option:v14 completion:v48];

            objc_destroyWeak(&v51);
LABEL_24:

            break;
          }
        }
      }

LABEL_27:
      v38 = 0;
      goto LABEL_26;
  }

  v38 = 1;
LABEL_26:
  objc_destroyWeak(&location);

  return v38;
}

void __65__CMContinuityCaptureRemoteCompositeDevice_postEventAction_args___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (CMContinityCaptureDebugLogEnabled())
    {
      v5 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        __65__CMContinuityCaptureRemoteCompositeDevice_postEventAction_args___block_invoke_cold_1((a1 + 48), a1, v5);
      }
    }

    v6 = *(a1 + 40);
    if (v6)
    {
      (*(v6 + 16))(v6, a2);
    }

    v7 = [WeakRetained eventQueue];
    [v7 notifyCompletion];
  }
}

uint64_t __65__CMContinuityCaptureRemoteCompositeDevice_postEventAction_args___block_invoke_59(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = *(a1 + 32);
    v8 = WeakRetained;
    if (v5)
    {
      (*(v5 + 16))(v5, a2);
      WeakRetained = v8;
    }

    v6 = [WeakRetained eventQueue];
    [v6 notifyCompletion];
  }

  return MEMORY[0x2821F96F8]();
}

void __65__CMContinuityCaptureRemoteCompositeDevice_postEventAction_args___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained eventQueue];
    [v2 notifyCompletion];

    WeakRetained = v3;
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
  block[2] = __74__CMContinuityCaptureRemoteCompositeDevice_startStream_option_completion___block_invoke;
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

void __74__CMContinuityCaptureRemoteCompositeDevice_startStream_option_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if ([*(a1 + 32) entity] == 3)
    {
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __74__CMContinuityCaptureRemoteCompositeDevice_startStream_option_completion___block_invoke_2;
      v17[3] = &unk_278D5D1A8;
      v18 = *(a1 + 40);
      v3 = MEMORY[0x245D12020](v17);
      v4 = +[CMContinuityCapturePongSoundManager sharedInstance];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __74__CMContinuityCaptureRemoteCompositeDevice_startStream_option_completion___block_invoke_3;
      v13[3] = &unk_278D5C288;
      objc_copyWeak(v16, (a1 + 48));
      v5 = *(a1 + 32);
      v6 = *(a1 + 56);
      v14 = v5;
      v16[1] = v6;
      v7 = v3;
      v15 = v7;
      [v4 waitForPongCompletion:v13];

      objc_destroyWeak(v16);
      v8 = v18;
    }

    else
    {
      v8 = [WeakRetained eventQueue];
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{*(a1 + 56), *(a1 + 32)}];
      v12[1] = v9;
      v10 = MEMORY[0x245D12020](*(a1 + 40));
      v12[2] = v10;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:3];
      [v8 enqueueEventAction:1 args:v11];
    }
  }
}

uint64_t __74__CMContinuityCaptureRemoteCompositeDevice_startStream_option_completion___block_invoke_2(uint64_t a1)
{
  v2 = +[CMContinuityCapturePongSoundManager sharedInstance];
  [v2 releaseSystemPongAssertion];

  v3 = *(*(a1 + 32) + 16);

  return v3();
}

void __74__CMContinuityCaptureRemoteCompositeDevice_startStream_option_completion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained queue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __74__CMContinuityCaptureRemoteCompositeDevice_startStream_option_completion___block_invoke_4;
    v7[3] = &unk_278D5D248;
    v7[4] = v3;
    v5 = *(a1 + 32);
    v6 = *(a1 + 56);
    v8 = v5;
    v10 = v6;
    v9 = *(a1 + 40);
    dispatch_async(v4, v7);
  }
}

void __74__CMContinuityCaptureRemoteCompositeDevice_startStream_option_completion___block_invoke_4(uint64_t a1)
{
  v2 = +[CMContinuityCapturePongSoundManager sharedInstance];
  [v2 acquireSystemPongAssertion];

  v3 = [*(a1 + 32) eventQueue];
  v7[0] = *(a1 + 40);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 56)];
  v7[1] = v4;
  v5 = MEMORY[0x245D12020](*(a1 + 48));
  v7[2] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:3];
  [v3 enqueueEventAction:1 args:v6];
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
    v26 = self;
    v27 = 2080;
    v28 = "[CMContinuityCaptureRemoteCompositeDevice _startStream:option:completion:]";
    v29 = 2114;
    v30 = v8;
    _os_log_impl(&dword_242545000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ %s %{public}@", buf, 0x20u);
  }

  captureDeviceByEntityType = self->_captureDeviceByEntityType;
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v8, "entity")}];
  v13 = [(NSMutableDictionary *)captureDeviceByEntityType objectForKeyedSubscript:v12];

  if (v13)
  {
    if (self->_state != 1)
    {
      if ([v8 entity] == 1 || objc_msgSend(v8, "entity") == 2)
      {
        activeVideoEntities = self->_activeVideoEntities;
        v17 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v8, "entity")}];
        [(NSMutableSet *)activeVideoEntities addObject:v17];
      }

      [(CMContinuityCaptureRemoteCompositeDevice *)self willChangeValueForKey:@"state"];
      v18 = [v8 entity];
      v19 = 4;
      if (v18 == 3)
      {
        v19 = 2;
      }

      self->_state |= v19;
      [(CMContinuityCaptureRemoteCompositeDevice *)self didChangeValueForKey:@"state"];
      v20 = [v13 entity];
      v24[0] = v8;
      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{a4, @"CMContinuityCaptureStateMachineEventDataKeyConfiguration", @"CMContinuityCaptureStateMachineEventDataKeyOption"}];
      v24[1] = v15;
      v23[2] = @"CMContinuityCaptureStateMachineEventDataCompletionBlock";
      v21 = MEMORY[0x245D12020](v9);
      v24[2] = v21;
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:3];
      [v13 postEvent:@"kCMContinuityCaptureEventStartStream" entity:v20 data:v22];

      goto LABEL_17;
    }

    v14 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CMContinuityCaptureRemoteCompositeDevice _startStream:option:completion:];
    }
  }

  else
  {
    v14 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CMContinuityCaptureRemoteCompositeDevice _startStream:option:completion:];
    }
  }

  if (v9)
  {
    v15 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ContinuityCapture" code:-12785 userInfo:0];
    v9[2](v9, v15);
LABEL_17:
  }
}

- (void)stopStream:(int64_t)a3 option:(unint64_t)a4 completion:(id)a5
{
  v8 = a5;
  v9 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v16 = self;
    v17 = 2080;
    v18 = "[CMContinuityCaptureRemoteCompositeDevice stopStream:option:completion:]";
    v19 = 1024;
    v20 = a3;
    _os_log_impl(&dword_242545000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ %s %d", buf, 0x1Cu);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __73__CMContinuityCaptureRemoteCompositeDevice_stopStream_option_completion___block_invoke;
  v12[3] = &unk_278D5C378;
  objc_copyWeak(v14, buf);
  v14[1] = a3;
  v14[2] = a4;
  v13 = v8;
  v11 = v8;
  dispatch_async(queue, v12);

  objc_destroyWeak(v14);
  objc_destroyWeak(buf);
}

void __73__CMContinuityCaptureRemoteCompositeDevice_stopStream_option_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(a1 + 48) == 3)
    {
      v4 = +[CMContinuityCapturePongSoundManager sharedInstance];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __73__CMContinuityCaptureRemoteCompositeDevice_stopStream_option_completion___block_invoke_2;
      v11[3] = &unk_278D5C378;
      objc_copyWeak(&v13, (a1 + 40));
      v14 = *(a1 + 48);
      v12 = *(a1 + 32);
      [v4 waitForPongCompletion:v11];

      objc_destroyWeak(&v13);
    }

    else
    {
      v5 = [WeakRetained eventQueue];
      v6 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 48)];
      v10[0] = v6;
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 56)];
      v10[1] = v7;
      v8 = MEMORY[0x245D12020](*(a1 + 32));
      v10[2] = v8;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:3];
      [v5 enqueueEventAction:2 args:v9];
    }
  }
}

void __73__CMContinuityCaptureRemoteCompositeDevice_stopStream_option_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained eventQueue];
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 48)];
    v9[0] = v5;
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 56)];
    v9[1] = v6;
    v7 = MEMORY[0x245D12020](*(a1 + 32));
    v9[2] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:3];
    [v4 enqueueEventAction:2 args:v8];
  }
}

- (void)_stopStream:(int64_t)a3 option:(unint64_t)a4 completion:(id)a5
{
  v8 = a5;
  captureDeviceByEntityType = self->_captureDeviceByEntityType;
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v11 = [(NSMutableDictionary *)captureDeviceByEntityType objectForKeyedSubscript:v10];

  if (v11)
  {
    if ((a3 - 1) <= 1)
    {
      activeVideoEntities = self->_activeVideoEntities;
      v13 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
      [(NSMutableSet *)activeVideoEntities removeObject:v13];
    }

    if (a4)
    {
      goto LABEL_15;
    }

    [(CMContinuityCaptureRemoteCompositeDevice *)self willChangeValueForKey:@"state"];
    if (a3 == 3)
    {
      v14 = -3;
    }

    else
    {
      if ([(NSMutableSet *)self->_activeVideoEntities count])
      {
LABEL_14:
        [(CMContinuityCaptureRemoteCompositeDevice *)self didChangeValueForKey:@"state"];
LABEL_15:
        v17 = [v11 entity];
        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{a4, @"CMContinuityCaptureStateMachineEventDataKeyOption"}];
        v21[0] = v16;
        v20[1] = @"CMContinuityCaptureStateMachineEventDataCompletionBlock";
        v18 = MEMORY[0x245D12020](v8);
        v21[1] = v18;
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
        [v11 postEvent:@"kCMContinuityCaptureEventStopStream" entity:v17 data:v19];

        goto LABEL_16;
      }

      v14 = -5;
    }

    self->_state &= v14;
    goto LABEL_14;
  }

  v15 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [CMContinuityCaptureRemoteCompositeDevice _startStream:option:completion:];
  }

  if (v8)
  {
    v16 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ContinuityCapture" code:-12785 userInfo:0];
    v8[2](v8, v16);
LABEL_16:
  }
}

- (void)updateSystemState
{
  OUTLINED_FUNCTION_4_0();
  v2 = 2080;
  v3 = "[CMContinuityCaptureRemoteCompositeDevice updateSystemState]";
  _os_log_debug_impl(&dword_242545000, v0, OS_LOG_TYPE_DEBUG, "%{public}@ %s", v1, 0x16u);
}

- (void)setValueForControl:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v18 = self;
    v19 = 2080;
    v20 = "[CMContinuityCaptureRemoteCompositeDevice setValueForControl:completion:]";
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_242545000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ %s %@", buf, 0x20u);
  }

  queue = self->_queue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __74__CMContinuityCaptureRemoteCompositeDevice_setValueForControl_completion___block_invoke;
  v12[3] = &unk_278D5CCE8;
  objc_copyWeak(&v16, &location);
  v13 = v6;
  v14 = self;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(queue, v12);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __74__CMContinuityCaptureRemoteCompositeDevice_setValueForControl_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[3];
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "entity")}];
    v6 = [v4 objectForKeyedSubscript:v5];

    if ([*(a1 + 32) entity] == 4)
    {
      v7 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v9 = *(a1 + 32);
        v8 = *(a1 + 40);
        v14 = 138412546;
        v15 = v8;
        v16 = 2112;
        v17 = v9;
        _os_log_impl(&dword_242545000, v7, OS_LOG_TYPE_INFO, "%@ system notification for %@", &v14, 0x16u);
      }

      v10 = [*(a1 + 32) name];
      v11 = [v10 isEqualToString:@"kCMContinuityCaptureControlDockedTrackingActive"];

      if (!v11)
      {
        goto LABEL_12;
      }

      v12 = objc_loadWeakRetained(v3 + 5);
      v13 = [v12 localDevice];
      [v13 setValueForControl:*(a1 + 32) completion:0];
    }

    else
    {
      if (v6)
      {
        [v6 setValueForControl:*(a1 + 32) completion:*(a1 + 48)];
LABEL_12:

        goto LABEL_13;
      }

      v12 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __70__CMContinuityCaptureRemoteCompositeDevice_handleAVCNegotiation_data___block_invoke_cold_1((a1 + 56));
      }
    }

    goto LABEL_12;
  }

LABEL_13:
}

- (BOOL)_avcaptureDeviceSupportsDockKit
{
  if (GestaltGetDeviceClass() != 1)
  {
    return 0;
  }

  return MEMORY[0x2821F5C58](@"s7nuHoZIYNoOHCqT9iyZkQ");
}

- (id)controlWithName:(id)a3
{
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(CMContinuityCaptureRemoteCompositeDevice *)self controls];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 name];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v13 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (CMContinuityCaptureRemoteCompositeDevice)initWithTransportServer:(id)a3 videoPreviewLayer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v68.receiver = self;
  v68.super_class = CMContinuityCaptureRemoteCompositeDevice;
  v8 = [(CMContinuityCaptureRemoteCompositeDevice *)&v68 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_11;
  }

  objc_storeStrong(&v8->_videoPreviewLayer, a4);
  v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
  remoteClientDisconnectNotifiedByEntityType = v9->_remoteClientDisconnectNotifiedByEntityType;
  v9->_remoteClientDisconnectNotifiedByEntityType = v10;

  v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
  cmControlByName = v9->_cmControlByName;
  v9->_cmControlByName = v12;

  v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v15 = dispatch_queue_create("com.apple.continuity-capture", v14);
  queue = v9->_queue;
  v9->_queue = v15;

  v17 = objc_storeWeak(&v9->_server, v6);
  [v6 setDelegate:v9];

  v18 = [[CMContinuityCaptureEventQueue alloc] initWithActionDelegate:v9 queue:v9->_queue];
  eventQueue = v9->_eventQueue;
  v9->_eventQueue = v18;

  v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
  captureDeviceByEntityType = v9->_captureDeviceByEntityType;
  v9->_captureDeviceByEntityType = v20;

  v9->_legacyConnectionResetDelay = FigGetCFPreferenceNumberWithDefault();
  v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
  pendingEventToBePostedQueue = v9->_pendingEventToBePostedQueue;
  v9->_pendingEventToBePostedQueue = v22;

  v24 = objc_alloc_init(CMContinuityCaptureFrameRateManager);
  frameRateManager = v9->_frameRateManager;
  v9->_frameRateManager = v24;

  v26 = objc_alloc_init(MEMORY[0x277CBEB58]);
  activeVideoEntities = v9->_activeVideoEntities;
  v9->_activeVideoEntities = v26;

  v28 = os_transaction_create();
  transaction = v9->_transaction;
  v9->_transaction = v28;

  [(CMContinuityCaptureRemoteCompositeDevice *)v9 setupControls];
  if ([(CMContinuityCaptureRemoteCompositeDevice *)v9 setupCaptureDevices])
  {
    WeakRetained = objc_loadWeakRetained(&v9->_server);
    v31 = [WeakRetained localDevice];
    [v31 addObserver:v9 forKeyPath:@"activeStreams" options:3 context:0];

    v32 = objc_loadWeakRetained(&v9->_server);
    [v32 addObserver:v9 forKeyPath:@"timeSyncClock" options:3 context:0];

    atomic_store(1u, &v9->_observingTimeSyncState);
    atomic_store(1u, &v9->_observingActiveStreamState);
    v33 = +[CMContinuityCaptureBatteryStateMonitor sharedInstance];
    v34 = [v33 queue];
    dispatch_assert_queue_not_V2(v34);

    v35 = +[CMContinuityCaptureBatteryStateMonitor sharedInstance];
    v36 = [v35 queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __86__CMContinuityCaptureRemoteCompositeDevice_initWithTransportServer_videoPreviewLayer___block_invoke;
    block[3] = &unk_278D5C0D0;
    v37 = v9;
    v67 = v37;
    dispatch_async_and_wait(v36, block);

    v38 = +[CMContinuityCaptureThermalMonitor sharedInstance];
    v39 = [v38 queue];
    dispatch_assert_queue_not_V2(v39);

    v40 = +[CMContinuityCaptureThermalMonitor sharedInstance];
    v41 = [v40 queue];
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = __86__CMContinuityCaptureRemoteCompositeDevice_initWithTransportServer_videoPreviewLayer___block_invoke_2;
    v64[3] = &unk_278D5C0D0;
    v42 = v37;
    v65 = v42;
    dispatch_async_and_wait(v41, v64);

    dispatch_assert_queue_not_V2(v9->_queue);
    v43 = v9->_queue;
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __86__CMContinuityCaptureRemoteCompositeDevice_initWithTransportServer_videoPreviewLayer___block_invoke_3;
    v62[3] = &unk_278D5C0D0;
    v44 = v42;
    v63 = v44;
    dispatch_async_and_wait(v43, v62);

    v45 = [(NSMutableDictionary *)v9->_captureDeviceByEntityType objectForKeyedSubscript:&unk_2854ECA40];

    if (v45)
    {
      v46 = [(NSMutableDictionary *)v9->_captureDeviceByEntityType objectForKeyedSubscript:&unk_2854ECA40];
      v47 = [v46 captureSession];
      OUTLINED_FUNCTION_2_4(v47, v48);

      atomic_store(1u, v44 + 97);
    }

    v49 = [(NSMutableDictionary *)v9->_captureDeviceByEntityType objectForKeyedSubscript:&unk_2854ECA58];

    if (v49)
    {
      v50 = [(NSMutableDictionary *)v9->_captureDeviceByEntityType objectForKeyedSubscript:&unk_2854ECA58];
      v51 = [v50 captureSession];
      OUTLINED_FUNCTION_2_4(v51, v52);

      atomic_store(1u, v44 + 98);
    }

    v53 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      v56 = 138543874;
      v57 = v44;
      v58 = 2080;
      v59 = "[CMContinuityCaptureRemoteCompositeDevice initWithTransportServer:videoPreviewLayer:]";
      v60 = 2112;
      v61 = v6;
      _os_log_impl(&dword_242545000, v53, OS_LOG_TYPE_DEFAULT, "%{public}@ %s server: %@", &v56, 0x20u);
    }

    v54 = v44;
  }

  else
  {
LABEL_11:
    v54 = 0;
  }

  return v54;
}

- (void)invalidate
{
  v3 = [(CMContinuityCaptureRemoteCompositeDevice *)self server];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 queue];
    dispatch_assert_queue_V2(v5);

    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __54__CMContinuityCaptureRemoteCompositeDevice_invalidate__block_invoke;
    v7[3] = &unk_278D5C008;
    v8 = v4;
    v9 = self;
    dispatch_async(queue, v7);
  }
}

- (void)_postEvent:(id)a3 entity:(int64_t)a4 data:(id)a5
{
  v18 = a3;
  v8 = a5;
  dispatch_assert_queue_V2(self->_queue);
  v9 = [(CMContinuityCaptureRemoteCompositeDevice *)self server];
  v10 = v9;
  if (v9)
  {
    if (a4 == 4)
    {
      v11 = [v9 localDevice];
      [v11 postEvent:v18 entity:4 data:v8];
    }

    else if (a4)
    {
      captureDeviceByEntityType = self->_captureDeviceByEntityType;
      v13 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
      v14 = [(NSMutableDictionary *)captureDeviceByEntityType objectForKeyedSubscript:v13];

      if (v14)
      {
        v15 = self->_captureDeviceByEntityType;
        v16 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
        v17 = [(NSMutableDictionary *)v15 objectForKeyedSubscript:v16];
        [v17 postEvent:v18 entity:a4 data:v8];
      }
    }

    else
    {
      [(CMContinuityCaptureRemoteCompositeDevice *)self postEventOnAllEntities:v18 data:v8];
    }
  }
}

void __70__CMContinuityCaptureRemoteCompositeDevice_handleAVCNegotiation_data___block_invoke_cold_1(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_1(&dword_242545000, v2, v3, "%{public}@ Invalid capture device", v4, v5, v6, v7, v8);
}

void __65__CMContinuityCaptureRemoteCompositeDevice_postEventAction_args___block_invoke_cold_1(id *a1, uint64_t a2, NSObject *a3)
{
  WeakRetained = objc_loadWeakRetained(a1);
  v6 = *(a2 + 32);
  OUTLINED_FUNCTION_4_0();
  v9 = 2112;
  v10 = v7;
  _os_log_debug_impl(&dword_242545000, a3, OS_LOG_TYPE_DEBUG, "%{public}@ completion for %@", v8, 0x16u);
}

@end