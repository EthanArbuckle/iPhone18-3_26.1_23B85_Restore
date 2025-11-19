@interface SYService
- (BOOL)_handleEndSessionResponse:(id)a3 error:(id *)a4;
- (BOOL)_handleResetResponse:(id)a3 error:(id *)a4;
- (BOOL)_handleRestartSessionResponse:(id)a3 error:(id *)a4;
- (BOOL)_handleStartSessionResponse:(id)a3 error:(id *)a4;
- (BOOL)_handleSyncBatchResponse:(id)a3 error:(id *)a4;
- (BOOL)_initializeMessaging:(id *)a3;
- (BOOL)_initializeServiceDB:(id *)a3;
- (BOOL)_request:(id)a3 hasValidSessionIDForSession:(id)a4 response:(id)a5 completion:(id)a6;
- (BOOL)_shouldSession:(id)a3 fromPeer:(id)a4 supercedeSession:(id)a5 ofAge:(double)a6 collisionDetected:(BOOL *)a7;
- (BOOL)_v1_handleBatchChunkAck:(id)a3 error:(id *)a4;
- (BOOL)_v1_handleBatchEndResponse:(id)a3 error:(id *)a4;
- (BOOL)_v1_handleFullSyncRequestAck:(id)a3 error:(id *)a4;
- (BOOL)hasPairingStore;
- (BOOL)resume:(id *)a3;
- (BOOL)sendData:(id)a3 options:(id)a4 identifier:(id *)a5 error:(id *)a6;
- (BOOL)willAcceptMessageWithHeader:(id)a3 messageID:(id)a4;
- (NSDictionary)extraTransportOptions;
- (NSString)peerID;
- (PBCodable)stateForLogging;
- (SYPersistentStore)persistentStore;
- (SYService)init;
- (id)_chooseBetweenCollidingSessions:(id)a3 :(id)a4;
- (id)_claimOwnershipOfFileAtURL:(id)a3 error:(id *)a4;
- (id)_makeSessionForDeltaSync:(BOOL)a3;
- (id)_makeSyncEngineOfType:(unsigned int)a3;
- (id)_newMessageHeader;
- (id)_sessionFromIncomingStartRequest:(id)a3;
- (id)dataStreamWithMetadata:(id)a3 options:(id)a4 identifier:(id *)a5 error:(id *)a6;
- (void)_copyPeerClockFromMessageHeaderIfNecessary:(id)a3;
- (void)_dealWithPotentiallyStallingCurrentSession;
- (void)_deviceOSInfoChanged:(id)a3;
- (void)_deviceRemoved:(id)a3;
- (void)_deviceTargetabilityChanged:(id)a3;
- (void)_downgradeEngineForVersion:(int)a3;
- (void)_enqueueIncomingStartSessionRequest:(id)a3 withCompletion:(id)a4;
- (void)_handleEndSession:(id)a3 completion:(id)a4;
- (void)_handleError:(id)a3;
- (void)_handleResetRequest:(id)a3 completion:(id)a4;
- (void)_handleRestartSession:(id)a3 completion:(id)a4;
- (void)_handleStartSession:(id)a3 completion:(id)a4;
- (void)_handleSyncBatch:(id)a3 completion:(id)a4;
- (void)_ifDelegateImplements:(SEL)a3 do:(id)a4 then:(id)a5;
- (void)_peerRejectedVersion:(id)a3 completion:(id)a4;
- (void)_postVersionRejectionMessageForMessageWithID:(id)a3;
- (void)_processPendingChanges;
- (void)_removePairingStoreDevice;
- (void)_sendResetRequest;
- (void)_setProtocolVersionForRemoteOSVersion:(id)a3 build:(id)a4 remoteIsWatch:(BOOL)a5 switchingEngines:(BOOL)a6;
- (void)_setupPairingNotifications;
- (void)_setupPairingStoreWithDevice:(id)a3;
- (void)_signalPairingStoreAvailable;
- (void)_signalPairingStoreUnavailable;
- (void)_suspend;
- (void)_swapEngineTo:(unsigned int)a3;
- (void)_swapSessionForVersionChange;
- (void)_switchToNewTargetedDevice:(id)a3;
- (void)_updateMetaProtocolInfoForDevice:(id)a3;
- (void)_v1_handleBatchSyncChunk:(id)a3 completion:(id)a4;
- (void)_v1_handleBatchSyncEnd:(id)a3 completion:(id)a4;
- (void)_v1_handleBatchSyncStart:(id)a3 completion:(id)a4;
- (void)_v1_handleChangeMessage:(id)a3 completion:(id)a4;
- (void)_v1_handleFullSyncRequest:(id)a3 completion:(id)a4;
- (void)_v1_handleSyncAllObjects:(id)a3 completion:(id)a4;
- (void)_vectorClockUpdated;
- (void)_whenSessionEnds:(id)a3;
- (void)_wrapUpCurrentSession:(id)a3;
- (void)currentDeviceConnectionChanged:(BOOL)a3;
- (void)currentDeviceProximityChanged:(BOOL)a3;
- (void)dataStreamWithMetadata:(id)a3 options:(id)a4 completion:(id)a5;
- (void)dealloc;
- (void)deliveredMessageWithID:(id)a3 context:(id)a4;
- (void)enqueuedMessageWithID:(id)a3 context:(id)a4;
- (void)handleFileTransfer:(id)a3 metadata:(id)a4 completion:(id)a5;
- (void)handleOutOfBandData:(id)a3 completion:(id)a4;
- (void)handleSyncError:(id)a3 forMessageWithIdentifier:(id)a4;
- (void)handleSyncRequest:(id)a3 ofType:(unsigned __int16)a4 response:(id)a5;
- (void)handleSyncResponse:(id)a3 ofType:(unsigned __int16)a4 completion:(id)a5;
- (void)sendData:(id)a3 options:(id)a4 completion:(id)a5;
- (void)sentMessageWithID:(id)a3 context:(id)a4;
- (void)serializeForIncomingSession:(id)a3;
- (void)sessionDidEnd:(id)a3 withError:(id)a4;
- (void)sessionFailedToCancelMessageUUIDs:(id)a3;
- (void)setCustomIDSOptions:(id)a3;
- (void)setDelegate:(id)a3 queue:(id)a4;
- (void)setHasChangesAvailable;
- (void)setNeedsResetSync;
- (void)suspend;
@end

@implementation SYService

- (PBCodable)stateForLogging
{
  v3 = objc_opt_new();
  v4 = [(SYService *)self name];
  [v3 setName:v4];

  v5 = [(SYService *)self syncEngine];
  v6 = [v5 stateForLogging];
  [v3 setEngine:v6];

  v7 = [(SYService *)self currentSession];
  v8 = [v7 stateForLogging];
  [v3 setSession:v8];

  [v3 setSessionQueueRunning:{-[_SYMultiSuspendableQueue isSuspended](self->_sessionQueue, "isSuspended") ^ 1}];
  v9 = [(SYDevice *)self->_targetedDevice stateForLogging];
  [v3 setTargetedDevice:v9];

  v10 = [(SYService *)self options];
  [v3 setCocoaTransportOptions:v10];

  v11 = [(SYService *)self peerID];
  [v3 setPeerID:v11];

  [v3 setPeerGenerationID:self->_generationID];
  if ([(SYService *)self isMasterStore])
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  [v3 setServiceType:v12];
  os_unfair_lock_lock(&self->_flagLock);
  flags = self->_flags;
  if ((*&flags & 4) != 0)
  {
    v14 = 2;
  }

  else
  {
    v14 = (*&flags >> 1) & 1;
  }

  [v3 setEnqueuedSyncType:v14];
  os_unfair_lock_unlock(&self->_flagLock);

  return v3;
}

- (NSString)peerID
{
  peerID = self->_peerID;
  if (peerID)
  {
    goto LABEL_3;
  }

  v4 = [(SYService *)self persistentStore];
  v5 = [v4 peerID];
  v6 = self->_peerID;
  self->_peerID = v5;

  peerID = self->_peerID;
  if (peerID)
  {
LABEL_3:
    v7 = peerID;
  }

  else
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_ERROR))
    {
      [SYService peerID];
    }

    v7 = @"0BADF00D-DEAD-0000-9999-1234567890AB";
  }

  return v7;
}

- (SYPersistentStore)persistentStore
{
  os_unfair_lock_lock(&self->_persistentStoreLock);
  v3 = self->_persistentStore;
  if (!v3)
  {
    v4 = [SYPersistentStore sharedPersistentStoreForService:self->_serviceName];
    persistentStore = self->_persistentStore;
    self->_persistentStore = v4;

    v3 = self->_persistentStore;
  }

  os_unfair_lock_unlock(&self->_persistentStoreLock);

  return v3;
}

- (SYService)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v3 raise:v4 format:{@"-[%@ init] is not supported.", v6}];

  return 0;
}

void __64__SYService_initWithService_priority_qos_asMasterStore_options___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _processPendingChanges];
    WeakRetained = v2;
  }
}

char *__64__SYService_initWithService_priority_qos_asMasterStore_options___block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = MEMORY[0x1E696AE40];
    v6 = [WeakRetained stateForLogging];
    v7 = [v6 dictionaryRepresentation];
    v13 = 0;
    v8 = [v5 dataWithPropertyList:v7 format:200 options:0 error:&v13];
    v9 = v13;

    if (!v8)
    {
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Error while generating state: %@", v9];
      v8 = [v10 dataUsingEncoding:4];
    }
  }

  else
  {
    v8 = 0;
  }

  v11 = malloc_type_malloc([v8 length] + 200, 0x1000040BEF03554uLL);
  *v11 = 1;
  snprintf(v11 + 136, 0x40uLL, "Service '%s'", [*(a1 + 32) UTF8String]);
  *(v11 + 1) = [v8 length];
  [v8 getBytes:v11 + 200 length:{objc_msgSend(v8, "length")}];

  objc_autoreleasePoolPop(v2);
  return v11;
}

- (void)dealloc
{
  stateHandle = self->_stateHandle;
  os_state_remove_handler();
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = SYService;
  [(SYService *)&v5 dealloc];
}

- (void)_setupPairingNotifications
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__SYService__setupPairingNotifications__block_invoke;
  block[3] = &unk_1E86C9FB0;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __39__SYService__setupPairingNotifications__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 188);
  if ((v2 & 0x20) == 0)
  {
    *(v1 + 188) = v2 | 0x20;
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:*(a1 + 32) selector:sel__deviceTargetabilityChanged_ name:@"SYDeviceTargetabilityChangedNotification" object:0];

    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:*(a1 + 32) selector:sel__deviceRemoved_ name:@"SYDeviceRemovedNotification" object:0];
  }
}

- (void)_setProtocolVersionForRemoteOSVersion:(id)a3 build:(id)a4 remoteIsWatch:(BOOL)a5 switchingEngines:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v26 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  os_unfair_lock_lock(&self->_flagLock);
  flags = self->_flags;
  os_unfair_lock_unlock(&self->_flagLock);
  if (!v7)
  {
    if ([v11 compare:@"13E" options:64] == -1)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v13 = _sync_log_facilities;
      if (!os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      v22 = 138543618;
      v23 = v10;
      v24 = 2114;
      v25 = v11;
      v14 = "Remote device is an iDevice running OS %{public}@ (%{public}@). Will use protocol v1 when communicating with this device.";
      goto LABEL_13;
    }

LABEL_8:
    v15 = 2;
    goto LABEL_15;
  }

  if ([v11 compare:@"13V" options:64 range:{0, 3}] != -1)
  {
    goto LABEL_8;
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v13 = _sync_log_facilities;
  if (!os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_14;
  }

  v22 = 138543618;
  v23 = v10;
  v24 = 2114;
  v25 = v11;
  v14 = "Remote device is an WATCH running OS %{public}@ (%{public}@). Will use protocol v1 when communicating with this device.";
LABEL_13:
  _os_log_impl(&dword_1DF835000, v13, OS_LOG_TYPE_DEFAULT, v14, &v22, 0x16u);
LABEL_14:
  v15 = 1;
LABEL_15:
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v16 = _sync_log_facilities;
  if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 67109120;
    LODWORD(v23) = v15;
    _os_log_impl(&dword_1DF835000, v16, OS_LOG_TYPE_DEFAULT, "Updating protocol version for device OSInfo change: will use protocol v%d", &v22, 8u);
  }

  os_unfair_lock_lock(&self->_flagLock);
  self->_flags = (*&self->_flags & 0xFFFFFE3F | (v15 << 6));
  os_unfair_lock_unlock(&self->_flagLock);
  if (v6)
  {
    v17 = (*&flags >> 6) & 7;
    if (v15 != v17)
    {
      os_unfair_lock_lock(&self->_flagLock);
      v18 = self->_flags;
      v19 = (*&v18 >> 14) & 7;
      os_unfair_lock_unlock(&self->_flagLock);
      if (v15 <= v17 || (v20 = (*&v18 >> 11) & 7, v20 == v19) || ![(SYService *)self _protocolVersion:v15 supportsEngineType:v20])
      {
        if (v15 < v17 && ![(SYService *)self _protocolVersion:v15 supportsEngineType:v19])
        {
          [(SYService *)self _downgradeEngineForVersion:v15];
        }
      }

      else
      {
        [(SYService *)self _upgradeEngineTo:v20];
      }
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)_updateMetaProtocolInfoForDevice:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 deviceClass];
    v7 = [v5 systemVersion];
    v8 = [v5 systemBuildVersion];
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v9 = _sync_log_facilities;
    if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_INFO))
    {
      v13 = 138543874;
      v14 = v6;
      v15 = 2114;
      v16 = v7;
      v17 = 2114;
      v18 = v8;
      _os_log_impl(&dword_1DF835000, v9, OS_LOG_TYPE_INFO, "Remote device is a %{public}@ with system version %{public}@, build %{public}@", &v13, 0x20u);
    }

    v10 = [v6 hasPrefix:@"Watch"];
    if (v10)
    {
      os_unfair_lock_lock(&self->_flagLock);
      *&self->_flags |= 0x200u;
      os_unfair_lock_unlock(&self->_flagLock);
    }

    [(SYService *)self _setProtocolVersionForRemoteOSVersion:v7 build:v8 remoteIsWatch:v10 switchingEngines:0];
    if ((*(&self->_flags + 1) & 4) == 0)
    {
      os_unfair_lock_lock(&self->_flagLock);
      *&self->_flags |= 0x400u;
      os_unfair_lock_unlock(&self->_flagLock);
      v11 = [MEMORY[0x1E696AD88] defaultCenter];
      [v11 addObserver:self selector:sel__deviceOSInfoChanged_ name:@"SYDeviceOSInfoChangedNotification" object:v5];
    }
  }

  else
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(_sync_log_facilities, 0x90u))
    {
      [SYService _updateMetaProtocolInfoForDevice:];
    }

    os_unfair_lock_lock(&self->_flagLock);
    self->_flags = (*&self->_flags & 0xFFFFFE3F | 0x80);
    os_unfair_lock_unlock(&self->_flagLock);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_deviceOSInfoChanged:(id)a3
{
  v4 = a3;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(self->_serviceActivity, &state);
  v5 = [v4 object];
  v6 = [v5 deviceClass];
  v7 = [v5 systemVersion];
  v8 = [v5 systemBuildVersion];
  queue = self->_queue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __34__SYService__deviceOSInfoChanged___block_invoke;
  v13[3] = &unk_1E86CA728;
  v13[4] = self;
  v14 = v7;
  v15 = v8;
  v16 = v6;
  v10 = v6;
  v11 = v8;
  v12 = v7;
  dispatch_async(queue, v13);

  os_activity_scope_leave(&state);
}

uint64_t __34__SYService__deviceOSInfoChanged___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = [*(a1 + 56) hasPrefix:@"Watch"];

  return [v1 _setProtocolVersionForRemoteOSVersion:v2 build:v3 remoteIsWatch:v4 switchingEngines:1];
}

- (void)_ifDelegateImplements:(SEL)a3 do:(id)a4 then:(id)a5
{
  v7 = a4;
  v8 = a5;
  dispatch_assert_queue_V2(self->_queue);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    delegateQueue = self->_delegateQueue;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __43__SYService__ifDelegateImplements_do_then___block_invoke;
    v15[3] = &unk_1E86CA750;
    v16 = v7;
    v17 = v8;
    v15[4] = self;
    v12 = delegateQueue;
    v13 = [v15 copy];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___dispatch_async_autoreleased_block_invoke;
    block[3] = &unk_1E86CAA90;
    v19 = v13;
    v14 = v13;
    dispatch_async(v12, block);
  }

  else if (v8)
  {
    v8[2](v8);
  }
}

void __43__SYService__ifDelegateImplements_do_then___block_invoke(void *a1)
{
  (*(a1[5] + 16))();
  v2 = a1[6];
  if (v2)
  {
    v3 = *(a1[4] + 56);

    dispatch_async(v3, v2);
  }
}

- (void)_switchToNewTargetedDevice:(id)a3
{
  v4 = a3;
  v5 = [(SYDevice *)self->_targetedDevice pairingID];
  v6 = [v4 pairingID];
  [(_SYMultiSuspendableQueue *)self->_sessionQueue suspend];
  v7 = [(SYService *)self currentSession];
  v8 = v7;
  if (v7)
  {
    [v7 _pause];
  }

  dispatch_suspend(self->_incomingIOQueue);
  os_unfair_lock_lock(&self->_flagLock);
  flags = self->_flags;
  os_unfair_lock_unlock(&self->_flagLock);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __40__SYService__switchToNewTargetedDevice___block_invoke;
  v20[3] = &unk_1E86CA0F8;
  v21 = v5;
  v22 = v6;
  v23 = self;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __40__SYService__switchToNewTargetedDevice___block_invoke_91;
  v14[3] = &unk_1E86CA778;
  v14[4] = self;
  v15 = v4;
  v19 = (flags & 0x10) != 0;
  v16 = v22;
  v17 = v21;
  v18 = v8;
  v10 = v8;
  v11 = v21;
  v12 = v22;
  v13 = v4;
  [(SYService *)self _ifDelegateImplements:sel_service_willSwitchFromPairingID_toPairingID_ do:v20 then:v14];
}

void __40__SYService__switchToNewTargetedDevice___block_invoke(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v2 = _sync_log_facilities;
  if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    v7 = 138543618;
    v8 = v3;
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&dword_1DF835000, v2, OS_LOG_TYPE_DEFAULT, "Calling delegate willSwitchFromPairingID:%{public}@ toPairingID:%{public}@", &v7, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1[6] + 48));
  [WeakRetained service:a1[6] willSwitchFromPairingID:a1[4] toPairingID:a1[5]];

  v6 = *MEMORY[0x1E69E9840];
}

void __40__SYService__switchToNewTargetedDevice___block_invoke_91(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((*(a1 + 32) + 184));
  v2 = *(a1 + 32);
  os_unfair_lock_opaque = v2[47]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(v2 + 46);
  if ((os_unfair_lock_opaque & 0x10) != 0)
  {
    [*(a1 + 32) _suspend];
    os_unfair_lock_lock((*(a1 + 32) + 184));
    *(*(a1 + 32) + 188) |= 0x20000u;
    os_unfair_lock_unlock((*(a1 + 32) + 184));
  }

  [*(a1 + 32) _removePairingStoreDevice];
  [*(a1 + 32) _updateMetaProtocolInfoForDevice:*(a1 + 40)];
  [*(a1 + 32) _setupPairingStoreWithDevice:*(a1 + 40)];
  if ((os_unfair_lock_opaque & 0x10) != 0 && *(a1 + 72) == 1 && *(a1 + 40) || (os_unfair_lock_lock((*(a1 + 32) + 184)), v4 = *(a1 + 32), v5 = v4[47]._os_unfair_lock_opaque, os_unfair_lock_unlock(v4 + 46), (v5 & 0x20000) != 0))
  {
    v6 = *(a1 + 32);
    v24 = 0;
    v7 = [v6 resume:&v24];
    v8 = v24;
    if (v7)
    {
      os_unfair_lock_lock((*(a1 + 32) + 184));
      *(*(a1 + 32) + 188) &= ~0x20000u;
      os_unfair_lock_unlock((*(a1 + 32) + 184));
    }

    else
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v9 = _sync_log_facilities;
      if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1DF835000, v9, OS_LOG_TYPE_DEFAULT, "Failed to resume store after switching devices!", buf, 2u);
      }
    }
  }

  [*(a1 + 32) _dealWithPotentiallyStallingCurrentSession];
  if (*(a1 + 48))
  {
    v10 = objc_opt_new();
    v11 = [v10 UUIDString];
    v12 = *(a1 + 32);
    v13 = *(v12 + 232);
    *(v12 + 232) = v11;

    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v14 = _sync_log_facilities;
    if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      v16 = *(v15 + 232);
      *buf = 134218242;
      v26 = v15;
      v27 = 2114;
      v28 = v16;
      _os_log_impl(&dword_1DF835000, v14, OS_LOG_TYPE_DEFAULT, "SYService %p has new generation %{public}@", buf, 0x16u);
    }
  }

  v17 = *(a1 + 32);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __40__SYService__switchToNewTargetedDevice___block_invoke_94;
  v21[3] = &unk_1E86CA0F8;
  v21[4] = v17;
  v22 = *(a1 + 56);
  v23 = *(a1 + 48);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __40__SYService__switchToNewTargetedDevice___block_invoke_2;
  v19[3] = &unk_1E86C9E90;
  v19[4] = *(a1 + 32);
  v20 = *(a1 + 64);
  [v17 _ifDelegateImplements:sel_service_didSwitchFromPairingID_toPairingID_ do:v21 then:v19];

  v18 = *MEMORY[0x1E69E9840];
}

void __40__SYService__switchToNewTargetedDevice___block_invoke_94(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 48));
  [WeakRetained service:a1[4] didSwitchFromPairingID:a1[5] toPairingID:a1[6]];
}

void __40__SYService__switchToNewTargetedDevice___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) hasPairingStore])
  {
    [*(a1 + 32) _signalPairingStoreAvailable];
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    [v2 _continue];
  }

  [*(*(a1 + 32) + 80) resume];
  v3 = *(*(a1 + 32) + 64);

  dispatch_resume(v3);
}

- (void)_deviceTargetabilityChanged:(id)a3
{
  v4 = a3;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(self->_serviceActivity, &state);
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__SYService__deviceTargetabilityChanged___block_invoke;
  block[3] = &unk_1E86CA7A0;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
  os_activity_scope_leave(&state);
}

void __41__SYService__deviceTargetabilityChanged___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_DEBUG))
    {
      __41__SYService__deviceTargetabilityChanged___block_invoke_cold_2();
    }

    v3 = [*(a1 + 32) object];
    v4 = [v3 isTargetable];
    v5 = WeakRetained[19];
    if (v4)
    {
      if (v5 && [v3 isEqual:?])
      {
        if (_sync_log_facilities_pred != -1)
        {
          [SYIncomingSyncAllObjectsSession _continueProcessing];
        }

        v6 = _sync_log_facilities;
        if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1DF835000, v6, OS_LOG_TYPE_DEFAULT, "Newly-targetable device is our existing targeted device. No switch actually occurring.", buf, 2u);
        }

        if (_sync_log_facilities_pred != -1)
        {
          [SYIncomingSyncAllObjectsSession _continueProcessing];
        }

        v7 = _sync_log_facilities;
        if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_DEBUG))
        {
          __41__SYService__deviceTargetabilityChanged___block_invoke_cold_8(WeakRetained + 19, v7);
        }
      }

      else
      {
        [WeakRetained _switchToNewTargetedDevice:v3];
      }
    }

    else if ([v3 isEqual:v5])
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v8 = _sync_log_facilities;
      if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_1DF835000, v8, OS_LOG_TYPE_DEFAULT, "Targeted device became untargetable. We should get a new targetable-device notification soon.", v10, 2u);
      }

      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v9 = _sync_log_facilities;
      if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_DEBUG))
      {
        __41__SYService__deviceTargetabilityChanged___block_invoke_cold_5(WeakRetained + 19, v9);
      }
    }
  }
}

- (void)_deviceRemoved:(id)a3
{
  v4 = a3;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(self->_serviceActivity, &state);
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__SYService__deviceRemoved___block_invoke;
  block[3] = &unk_1E86CA7A0;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
  os_activity_scope_leave(&state);
}

void __28__SYService__deviceRemoved___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) object];
    v4 = [v3 isEqual:WeakRetained[19]];

    if (v4)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v5 = _sync_log_facilities;
      if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_DEFAULT))
      {
        v6 = WeakRetained[19];
        v11 = 138412290;
        v12 = v6;
        _os_log_impl(&dword_1DF835000, v5, OS_LOG_TYPE_DEFAULT, "Current targeted device (%@) was removed from known devices list.", &v11, 0xCu);
      }
    }

    v7 = +[SYDevice knownDevices];
    v8 = [v7 count];

    if (!v8)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v9 = _sync_log_facilities;
      if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v11) = 0;
        _os_log_impl(&dword_1DF835000, v9, OS_LOG_TYPE_DEFAULT, "Last known paired device has unpaired. SYService can no longer function.", &v11, 2u);
      }

      [WeakRetained _signalPairingStoreUnavailable];
      [WeakRetained _switchToNewTargetedDevice:0];
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_removePairingStoreDevice
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"SYDeviceOSInfoChangedNotification" object:self->_targetedDevice];

  *&self->_flags &= ~0x400u;
  targetedDevice = self->_targetedDevice;
  self->_targetedDevice = 0;

  *&self->_flags &= ~8u;
}

- (void)_setupPairingStoreWithDevice:(id)a3
{
  v5 = a3;
  v9 = v5;
  if (v5)
  {
    v6 = [v5 pairingStorePath];
    os_unfair_lock_lock(&self->_flagLock);
    objc_storeStrong(&self->_targetedDevice, a3);
    *&self->_flags |= 8u;
    os_unfair_lock_unlock(&self->_flagLock);
  }

  else
  {
    os_unfair_lock_lock(&self->_flagLock);
    targetedDevice = self->_targetedDevice;
    self->_targetedDevice = 0;

    *&self->_flags &= ~8u;
    os_unfair_lock_lock(&self->_persistentStoreLock);
    persistentStore = self->_persistentStore;
    self->_persistentStore = 0;

    os_unfair_lock_unlock(&self->_persistentStoreLock);
    os_unfair_lock_unlock(&self->_flagLock);
  }
}

- (void)_signalPairingStoreAvailable
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    delegateQueue = self->_delegateQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __41__SYService__signalPairingStoreAvailable__block_invoke;
    v8[3] = &unk_1E86C9E90;
    v9 = WeakRetained;
    v10 = self;
    v5 = delegateQueue;
    v6 = [v8 copy];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___dispatch_async_autoreleased_block_invoke;
    block[3] = &unk_1E86CAA90;
    v12 = v6;
    v7 = v6;
    dispatch_async(v5, block);
  }
}

uint64_t __41__SYService__signalPairingStoreAvailable__block_invoke(uint64_t a1)
{
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v2 = _sync_log_facilities;
  if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1DF835000, v2, OS_LOG_TYPE_INFO, "Delegate: -serviceDidPairDevice", v4, 2u);
  }

  return [*(a1 + 32) serviceDidPairDevice:*(a1 + 40)];
}

- (void)_signalPairingStoreUnavailable
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    delegateQueue = self->_delegateQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __43__SYService__signalPairingStoreUnavailable__block_invoke;
    v8[3] = &unk_1E86C9E90;
    v9 = WeakRetained;
    v10 = self;
    v5 = delegateQueue;
    v6 = [v8 copy];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___dispatch_async_autoreleased_block_invoke;
    block[3] = &unk_1E86CAA90;
    v12 = v6;
    v7 = v6;
    dispatch_async(v5, block);
  }
}

uint64_t __43__SYService__signalPairingStoreUnavailable__block_invoke(uint64_t a1)
{
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v2 = _sync_log_facilities;
  if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1DF835000, v2, OS_LOG_TYPE_INFO, "Delegate: -serviceDidUnpairDevice", v4, 2u);
  }

  return [*(a1 + 32) serviceDidUnpairDevice:*(a1 + 40)];
}

- (void)_dealWithPotentiallyStallingCurrentSession
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = [(SYService *)self currentSession];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 isSending];
    v5 = [v3 state];
    if (v4)
    {
      if ((v5 & 0xFFFFFFFE) == 6)
      {
        if (_sync_log_facilities_pred != -1)
        {
          [SYIncomingSyncAllObjectsSession _continueProcessing];
        }

        v6 = qword_1EDE73420;
        if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
        {
          v7 = v6;
          v8 = _SYObfuscate(v3);
          v22 = 138543362;
          v23 = v8;
          _os_log_impl(&dword_1DF835000, v7, OS_LOG_TYPE_DEFAULT, "Canceling current sending session %{public}@ due to QWS", &v22, 0xCu);
        }

        v9 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:2021 userInfo:0];
        [v3 _handleError:v9];
      }

      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v10 = qword_1EDE73420;
      if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_INFO))
      {
        v11 = v10;
        v12 = _SYObfuscate(v3);
        v13 = [v3 state];
        v22 = 138543618;
        v23 = v12;
        v24 = 2048;
        v25 = v13;
        v14 = "Sending session (%{public}@}) still active at time of QWS. State is %{companionsync:SYSessionState}ld, so I'm letting it continue so that IDS can give it a not-the-active-device error next time it sends";
LABEL_23:
        _os_log_impl(&dword_1DF835000, v11, OS_LOG_TYPE_INFO, v14, &v22, 0x16u);
      }
    }

    else
    {
      if (v5 <= 1)
      {
        if (_sync_log_facilities_pred != -1)
        {
          [SYIncomingSyncAllObjectsSession _continueProcessing];
        }

        v15 = qword_1EDE73420;
        if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
        {
          v16 = v15;
          v17 = _SYObfuscate(v3);
          v22 = 138543362;
          v23 = v17;
          _os_log_impl(&dword_1DF835000, v16, OS_LOG_TYPE_DEFAULT, "Canceling current receiving session %{public}@ due to QWS", &v22, 0xCu);
        }

        v18 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:2021 userInfo:0];
        [v3 _handleError:v18];
      }

      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v19 = qword_1EDE73420;
      if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_INFO))
      {
        v11 = v19;
        v12 = _SYObfuscate(v3);
        v20 = [v3 state];
        v22 = 138543618;
        v23 = v12;
        v24 = 2048;
        v25 = v20;
        v14 = "Receiving session (%{public}@}) still active at time of QWS. State is %{companionsync:SYSessionState}ld, so I'm letting it continue so that IDS can give it a not-the-active-device error next time it sends";
        goto LABEL_23;
      }
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)_whenSessionEnds:(id)a3
{
  v6 = [a3 copy];
  os_unfair_lock_lock(&self->_flagLock);
  onSessionEnd = self->_onSessionEnd;
  v5 = MEMORY[0x1E12E11B0](v6);
  [(NSMutableArray *)onSessionEnd addObject:v5];

  os_unfair_lock_unlock(&self->_flagLock);
}

- (void)setDelegate:(id)a3 queue:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(self->_serviceActivity, &state);
  if (v7)
  {
    objc_storeStrong(&self->_delegateQueue, a4);
  }

  else
  {
    v8 = [(NSString *)self->_serviceName lastPathComponent];
    v9 = v8;
    __snprintf_chk(label, 0x80uLL, 0, 0x80uLL, "CompanionSync.SYService.%s.delegate", [v8 UTF8String]);

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create(label, v10);
    delegateQueue = self->_delegateQueue;
    self->_delegateQueue = v11;
  }

  objc_storeWeak(&self->_delegate, v6);
  os_activity_scope_leave(&state);

  v13 = *MEMORY[0x1E69E9840];
}

- (BOOL)resume:(id *)a3
{
  v32[1] = *MEMORY[0x1E69E9840];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(self->_serviceActivity, &state);
  os_unfair_lock_lock(&self->_flagLock);
  flags = self->_flags;
  os_unfair_lock_unlock(&self->_flagLock);
  if ((*&flags & 0x10) != 0)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_ERROR))
    {
      [SYService resume:];
    }

    if (a3)
    {
      v10 = MEMORY[0x1E696ABC0];
      v31 = *MEMORY[0x1E696A578];
      v32[0] = @"SYService has already been resumed.";
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
      *a3 = [v10 errorWithSYError:2002 userInfo:v11];
    }

    goto LABEL_22;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = WeakRetained == 0;

  if (v7)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_ERROR))
    {
      [SYService resume:];
    }

    if (a3)
    {
      v12 = MEMORY[0x1E696ABC0];
      v29 = *MEMORY[0x1E696A578];
      v30 = @"SYService cannot be resumed until a delegate has been set.";
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      *a3 = [v12 errorWithSYError:2001 userInfo:v13];
    }

    goto LABEL_22;
  }

  os_unfair_lock_lock(&self->_flagLock);
  v8 = self->_flags;
  os_unfair_lock_unlock(&self->_flagLock);
  if ((*&v8 & 8) == 0)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_ERROR))
    {
      [SYService resume:];
    }

    if (a3)
    {
      [MEMORY[0x1E696ABC0] errorWithSYError:2003 userInfo:0];
      *a3 = v9 = 0;
      goto LABEL_23;
    }

LABEL_22:
    v9 = 0;
    goto LABEL_23;
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__5;
  v22 = __Block_byref_object_dispose__5;
  v23 = 0;
  queue = self->_queue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __20__SYService_resume___block_invoke;
  v17[3] = &unk_1E86CA7C8;
  v17[4] = self;
  v17[5] = &v18;
  v17[6] = &v24;
  _dispatch_sync_safe_tagged(queue, self, v17);
  v9 = *(v25 + 24);
  if (a3 && (v25[3] & 1) == 0)
  {
    *a3 = v19[5];
    v9 = *(v25 + 24);
  }

  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);
LABEL_23:
  os_activity_scope_leave(&state);
  v14 = *MEMORY[0x1E69E9840];
  return v9 & 1;
}

void __20__SYService_resume___block_invoke(uint64_t a1)
{
  v3 = a1 + 40;
  v2 = *(a1 + 40);
  v4 = *(a1 + 32);
  v5 = *(v2 + 8);
  obj = *(v5 + 40);
  v6 = [v4 _initializeServiceDB:&obj];
  objc_storeStrong((v5 + 40), obj);
  if ((v6 & 1) == 0)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_ERROR))
    {
      __20__SYService_resume___block_invoke_cold_2(v3);
    }

    goto LABEL_14;
  }

  v7 = *(a1 + 32);
  v8 = *(*(a1 + 40) + 8);
  v14 = *(v8 + 40);
  v9 = [v7 _initializeMessaging:&v14];
  objc_storeStrong((v8 + 40), v14);
  if ((v9 & 1) == 0)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_ERROR))
    {
      __20__SYService_resume___block_invoke_cold_4(v3);
    }

LABEL_14:
    *(*(*(a1 + 48) + 8) + 24) = 0;
    return;
  }

  v10 = [*(a1 + 32) persistentStore];
  v11 = [v10 peerID];
  v12 = *(a1 + 32);
  v13 = *(v12 + 200);
  *(v12 + 200) = v11;

  [*(*(a1 + 32) + 80) resume];
  if ([*(*(a1 + 32) + 80) isSuspended])
  {
    __20__SYService_resume___block_invoke_cold_5();
  }

  *(*(a1 + 32) + 188) |= 0x10u;
}

- (void)suspend
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(self->_serviceActivity, &state);
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __20__SYService_suspend__block_invoke;
  v4[3] = &unk_1E86C9FB0;
  v4[4] = self;
  _dispatch_sync_safe_tagged(queue, self, v4);
  os_activity_scope_leave(&state);
}

uint64_t __20__SYService_suspend__block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 184));
  *(*(a1 + 32) + 188) &= ~0x20000u;
  os_unfair_lock_unlock((*(a1 + 32) + 184));
  v2 = *(a1 + 32);

  return [v2 _suspend];
}

- (id)_makeSessionForDeltaSync:(BOOL)a3
{
  if ((*&self->_flags & 0x1C0) == 0x40)
  {
    if (a3)
    {
      v4 = SYOutgoingDeltaTransactionSession;
    }

    else
    {
      v6 = [(SYService *)self name];
      v7 = [v6 isEqualToString:@"com.apple.private.alloy.maps.sync"];

      if (v7)
      {
        v4 = SYOutgoingSyncAllObjectsSession;
      }

      else
      {
        v4 = SYOutgoingBatchSyncSession;
      }
    }

    v5 = [[v4 alloc] initWithService:self];
  }

  else
  {
    v5 = [[SYSendingSession alloc] initWithService:self isReset:!a3];
  }

  return v5;
}

- (void)_processPendingChanges
{
  if (_sync_log_facilities_pred != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  if (OUTLINED_FUNCTION_6_0())
  {
    OUTLINED_FUNCTION_1_4(&dword_1DF835000, v0, v1, "Queue state assumption failed: _sessionQueue.suspended == YES", v2, v3, v4, v5, 0);
  }
}

void __35__SYService__processPendingChanges__block_invoke(void *a1)
{
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v2 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1DF835000, v2, OS_LOG_TYPE_INFO, "Delegate: -service:startSession:error:", buf, 2u);
  }

  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v9 = 0;
  v6 = [v3 service:v4 startSession:v5 error:&v9];
  v7 = v9;
  v8 = v9;
  *(*(a1[7] + 8) + 24) = v6;
  if ((*(*(a1[7] + 8) + 24) & 1) == 0)
  {
    objc_storeStrong((*(a1[8] + 8) + 40), v7);
  }
}

void __35__SYService__processPendingChanges__block_invoke_119(uint64_t a1, char a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (a2)
    {
      pseudo_signpost_id = _next_pseudo_signpost_id();
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v8 = qword_1EDE73450;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = (a1 + 40);
        v9 = *(a1 + 40);
        if (*(a1 + 56))
        {
          v11 = "delta";
        }

        else
        {
          v11 = "reset";
        }

        v12 = objc_opt_class();
        v22 = NSStringFromClass(v12);
        v13 = [*v10 identifier];
        v14 = [WeakRetained name];
        v15 = [*v10 reason];
        if (v15)
        {
          v16 = [*(a1 + 40) reason];
        }

        else
        {
          v16 = @"-";
        }

        *buf = 134219266;
        v25 = pseudo_signpost_id;
        v26 = 2082;
        v27 = v11;
        v28 = 2114;
        v29 = v22;
        v30 = 2114;
        v31 = v13;
        v32 = 2114;
        v33 = v14;
        v34 = 2114;
        v35 = v16;
        _os_log_impl(&dword_1DF835000, v8, OS_LOG_TYPE_DEFAULT, "Start signpost %llu: Started outgoing %{public}s %{public}@ with identifier %{public}@ for service %{public}@. Reason = '%{public}@'", buf, 0x3Eu);
        if (v15)
        {
        }
      }

      [*(a1 + 40) setSessionSignpost:pseudo_signpost_id];
    }

    else
    {
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      os_activity_scope_enter(*(*(a1 + 32) + 168), &state);
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v17 = qword_1EDE73420;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(a1 + 40);
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        *buf = 138543618;
        v25 = v20;
        v26 = 2112;
        v27 = v5;
        _os_log_impl(&dword_1DF835000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ failed to start: %@", buf, 0x16u);
      }

      os_activity_scope_leave(&state);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)_sendResetRequest
{
  if ((*&self->_flags & 0x1C0) == 0x40)
  {
    v3 = objc_opt_new();
    v4 = [(SYService *)self _newMessageHeader];
    [v3 setHeader:v4];

    v5 = objc_opt_new();
    v6 = [v5 UUIDString];
    [v3 setSyncID:v6];

    syncEngine = self->_syncEngine;
    v8 = [(SYService *)self priority];
    customIDSOptions = self->_customIDSOptions;
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __30__SYService__sendResetRequest__block_invoke;
    v24 = &unk_1E86CA320;
    v25 = self;
    v10 = &v21;
    v11 = syncEngine;
    v12 = v3;
    v13 = 1;
  }

  else
  {
    v3 = objc_opt_new();
    v14 = [(SYService *)self _newMessageHeader];
    [v3 setHeader:v14];

    v15 = self->_syncEngine;
    v8 = [(SYService *)self priority];
    customIDSOptions = self->_customIDSOptions;
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __30__SYService__sendResetRequest__block_invoke_129;
    v19 = &unk_1E86CA320;
    v20 = self;
    v10 = &v16;
    v11 = v15;
    v12 = v3;
    v13 = 101;
  }

  [(SYSyncEngine *)v11 enqueueSyncRequest:v12 withMessageID:v13 priority:v8 options:customIDSOptions userContext:0 callback:v10, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25];
}

void __30__SYService__sendResetRequest__block_invoke(uint64_t a1, char a2, void *a3, void *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v13.opaque[0] = 0;
  v13.opaque[1] = 0;
  os_activity_scope_enter(*(*(a1 + 32) + 168), &v13);
  if (a2)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v10 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v15 = v8;
      _os_log_impl(&dword_1DF835000, v10, OS_LOG_TYPE_DEFAULT, "Enqueued full-sync request with ID %{public}@", buf, 0xCu);
    }

    objc_storeStrong((*(a1 + 32) + 136), a3);
  }

  else
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v11 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v9;
      _os_log_impl(&dword_1DF835000, v11, OS_LOG_TYPE_DEFAULT, "Failed to enqueue full-sync request: %@", buf, 0xCu);
    }
  }

  os_activity_scope_leave(&v13);

  v12 = *MEMORY[0x1E69E9840];
}

void __30__SYService__sendResetRequest__block_invoke_129(uint64_t a1, char a2, void *a3, void *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v13.opaque[0] = 0;
  v13.opaque[1] = 0;
  os_activity_scope_enter(*(*(a1 + 32) + 168), &v13);
  if (a2)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v10 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v15 = v8;
      _os_log_impl(&dword_1DF835000, v10, OS_LOG_TYPE_DEFAULT, "Enqueued reset request with ID %{public}@", buf, 0xCu);
    }

    objc_storeStrong((*(a1 + 32) + 136), a3);
  }

  else
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v11 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v9;
      _os_log_impl(&dword_1DF835000, v11, OS_LOG_TYPE_DEFAULT, "Failed to enqueue reset request: %@", buf, 0xCu);
    }
  }

  os_activity_scope_leave(&v13);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)setHasChangesAvailable
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(self->_serviceActivity, &state);
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v3 = _sync_log_facilities;
  if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1DF835000, v3, OS_LOG_TYPE_DEFAULT, "Delta requested", v4, 2u);
  }

  os_unfair_lock_lock(&self->_flagLock);
  *&self->_flags |= 2u;
  os_unfair_lock_unlock(&self->_flagLock);
  dispatch_source_merge_data(self->_processSignalSource, 1uLL);
  os_activity_scope_leave(&state);
}

- (void)setNeedsResetSync
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(self->_serviceActivity, &state);
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v3 = _sync_log_facilities;
  if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1DF835000, v3, OS_LOG_TYPE_DEFAULT, "Reset requested", v4, 2u);
  }

  os_unfair_lock_lock(&self->_flagLock);
  *&self->_flags |= 4u;
  os_unfair_lock_unlock(&self->_flagLock);
  dispatch_source_merge_data(self->_processSignalSource, 1uLL);
  os_activity_scope_leave(&state);
}

- (BOOL)_initializeServiceDB:(id *)a3
{
  v40[1] = *MEMORY[0x1E69E9840];
  v5 = _os_activity_create(&dword_1DF835000, "SYService DB Setup", self->_serviceActivity, OS_ACTIVITY_FLAG_DEFAULT);
  v30.opaque[0] = 0;
  v30.opaque[1] = 0;
  os_activity_scope_enter(v5, &v30);
  v6 = [(SYService *)self _pathForDataStore];
  if ([v6 length])
  {
    v7 = *MEMORY[0x1E696A328];
    v37[0] = *MEMORY[0x1E696A360];
    v37[1] = v7;
    v38[0] = @"mobile";
    v38[1] = @"mobile";
    v37[2] = *MEMORY[0x1E696A370];
    v38[2] = &unk_1F5AE2680;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:3];
    v9 = [MEMORY[0x1E696AC08] defaultManager];
    v10 = [v9 createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:v8 error:a3];

    if (v10)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v11 = _sync_log_facilities;
      if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1DF835000, v11, OS_LOG_TYPE_DEFAULT, "Setting up change-list database", buf, 2u);
      }

      self->_persistentStoreLock._os_unfair_lock_opaque = 0;
      v12 = [(SYService *)self persistentStore];
      v13 = v12 != 0;

      if (v13)
      {
        v14 = [SYVectorClock alloc];
        v15 = [(SYService *)self persistentStore];
        v16 = [v15 vectorClockJSON];
        v17 = [(SYVectorClock *)v14 initWithJSONRepresentation:v16];
        vectorClock = self->_vectorClock;
        self->_vectorClock = v17;

        if (![(SYVectorClock *)self->_vectorClock clocksCount])
        {
          v19 = self->_vectorClock;
          v20 = [(SYService *)self peerID];
          [(SYVectorClock *)v19 incrementClockForPeerID:v20];

          [(SYService *)self _vectorClockUpdated];
        }

        if (_sync_log_facilities_pred != -1)
        {
          [SYIncomingSyncAllObjectsSession _continueProcessing];
        }

        v21 = _sync_log_facilities;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = [(SYService *)self peerID];
          v23 = [(SYService *)self persistentStore];
          v24 = [v23 vectorClockJSON];
          *buf = 138543618;
          v32 = v22;
          v33 = 2114;
          v34 = v24;
          _os_log_impl(&dword_1DF835000, v21, OS_LOG_TYPE_DEFAULT, "SYService persistent store initialized. PeerID = %{public}@, vector clock = %{public}@.", buf, 0x16u);
        }

        goto LABEL_27;
      }

      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_ERROR))
      {
        [SYService _initializeServiceDB:];
      }

      if (a3)
      {
        v27 = objc_alloc(MEMORY[0x1E696ABC0]);
        v35 = *MEMORY[0x1E696A578];
        v36 = @"Failed to create persistent store";
        v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
        *a3 = [v27 initWithSYError:2001 userInfo:v21];
LABEL_27:

        goto LABEL_29;
      }
    }

    v13 = 0;
    goto LABEL_29;
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_ERROR))
  {
    [SYService _initializeServiceDB:];
  }

  if (a3)
  {
    v25 = objc_alloc(MEMORY[0x1E696ABC0]);
    v39 = *MEMORY[0x1E696A578];
    v40[0] = @"No pairing store path is available, which usually indicates we are not paired.";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:&v39 count:1];
    v26 = [v25 initWithSYError:2003 userInfo:v8];
    v13 = 0;
    *a3 = v26;
LABEL_29:

    goto LABEL_30;
  }

  v13 = 0;
LABEL_30:

  os_activity_scope_leave(&v30);
  v28 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)_vectorClockUpdated
{
  dispatch_assert_queue_V2(self->_queue);
  v4 = [(SYVectorClock *)self->_vectorClock jsonRepresentation];
  v3 = [(SYService *)self persistentStore];
  [v3 setVectorClockJSON:v4];
}

- (id)_makeSyncEngineOfType:(unsigned int)a3
{
  v3 = off_1E86C9778;
  if (a3 != 2)
  {
    v3 = off_1E86C97B0;
  }

  v4 = [objc_alloc(*v3) initWithService:self queue:self->_queue];

  return v4;
}

- (BOOL)_initializeMessaging:(id *)a3
{
  v5 = _os_activity_create(&dword_1DF835000, "SYService Sync Engine Setup", self->_serviceActivity, OS_ACTIVITY_FLAG_DEFAULT);
  v15.opaque[0] = 0;
  v15.opaque[1] = 0;
  os_activity_scope_enter(v5, &v15);
  os_unfair_lock_lock(&self->_flagLock);
  self->_flags = (*&self->_flags & 0xFFFFC7FF | ((self->_engineType & 7) << 11));
  os_unfair_lock_unlock(&self->_flagLock);
  syncEngine = self->_syncEngine;
  if (!syncEngine)
  {
    os_unfair_lock_lock(&self->_flagLock);
    flags = self->_flags;
    os_unfair_lock_unlock(&self->_flagLock);
    if ((*&flags & 0x1C0) == 0x40)
    {
      v8 = [(SYService *)self _makeSyncEngineOfType:1];
      v9 = self->_syncEngine;
      self->_syncEngine = v8;

      os_unfair_lock_lock(&self->_flagLock);
      v10 = 0x4000;
    }

    else
    {
      v11 = [(SYService *)self _makeSyncEngineOfType:self->_engineType];
      v12 = self->_syncEngine;
      self->_syncEngine = v11;

      os_unfair_lock_lock(&self->_flagLock);
      v10 = (self->_engineType & 7) << 14;
    }

    self->_flags = (*&self->_flags & 0xFFFE3FFF | v10);
    os_unfair_lock_unlock(&self->_flagLock);
    [(SYSyncEngine *)self->_syncEngine setResponder:self];
    syncEngine = self->_syncEngine;
  }

  v13 = [(SYSyncEngine *)syncEngine resume:a3];

  os_activity_scope_leave(&v15);
  return v13;
}

- (void)_swapEngineTo:(unsigned int)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = _os_activity_create(&dword_1DF835000, "SYService Sync Engine Swap", self->_serviceActivity, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  p_syncEngine = &self->_syncEngine;
  syncEngine = self->_syncEngine;
  v8 = syncEngine;
  [(SYSyncEngine *)v8 suspend];
  v9 = self->_syncEngine;
  self->_syncEngine = 0;

  v10 = off_1E86C9778;
  if (a3 != 2)
  {
    v10 = off_1E86C97B0;
  }

  v11 = [objc_alloc(*v10) initWithService:self queue:self->_queue];
  v12 = self->_syncEngine;
  self->_syncEngine = v11;

  [(SYSyncEngine *)self->_syncEngine setResponder:self];
  v13 = *p_syncEngine;
  v35 = 0;
  v14 = [(SYSyncEngine *)v13 resume:&v35];
  v15 = v35;
  if (v14)
  {
    os_unfair_lock_lock(&self->_flagLock);
    self->_flags = (*&self->_flags & 0xFFFE3FFF | ((a3 & 7) << 14));
    os_unfair_lock_unlock(&self->_flagLock);
  }

  else
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v16 = _sync_log_facilities;
    if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DF835000, v16, OS_LOG_TYPE_DEFAULT, "Returning to original engine after swap error", buf, 2u);
    }

    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v17 = _sync_log_facilities;
    if (os_log_type_enabled(v17, 0x90u))
    {
      _SYObfuscate(v15);
      objc_claimAutoreleasedReturnValue();
      [SYService _swapEngineTo:];
    }

    objc_storeStrong(&self->_syncEngine, syncEngine);
    v18 = *p_syncEngine;
    v34 = 0;
    v19 = [(SYSyncEngine *)v18 resume:&v34];
    v15 = v34;
    if (!v19)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v20 = _sync_log_facilities;
      if (os_log_type_enabled(v20, 0x90u))
      {
        _SYObfuscate(v15);
        objc_claimAutoreleasedReturnValue();
        [SYService _swapEngineTo:];
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v22 = objc_opt_respondsToSelector();

      if (v22)
      {
        delegateQueue = self->_delegateQueue;
        v28 = MEMORY[0x1E69E9820];
        v29 = 3221225472;
        v30 = __27__SYService__swapEngineTo___block_invoke;
        v31 = &unk_1E86C9E90;
        v32 = self;
        v33 = v15;
        v24 = delegateQueue;
        v25 = [&v28 copy];
        *buf = MEMORY[0x1E69E9820];
        v38 = 3221225472;
        v39 = ___dispatch_async_autoreleased_block_invoke;
        v40 = &unk_1E86CAA90;
        v41 = v25;
        v26 = v25;
        dispatch_async(v24, buf);
      }

      [(SYService *)self suspend:v28];
    }
  }

  os_activity_scope_leave(&state);
  v27 = *MEMORY[0x1E69E9840];
}

void __27__SYService__swapEngineTo___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  [WeakRetained service:*(a1 + 32) encounteredError:*(a1 + 40) context:0];
}

void __30__SYService__upgradeEngineTo___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _upgradeEngineTo:*(a1 + 40)];
    WeakRetained = v3;
  }
}

- (void)_downgradeEngineForVersion:(int)a3
{
  v5 = [(SYService *)self currentSession];

  if (v5)
  {
    v6 = [(SYService *)self currentSession];
    [v6 cancel];

    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __40__SYService__downgradeEngineForVersion___block_invoke;
    v8[3] = &unk_1E86CA840;
    objc_copyWeak(&v9, &location);
    v10 = a3;
    [(SYService *)self _whenSessionEnds:v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  if (a3 == 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  [(SYService *)self _swapEngineTo:v7];
}

void __40__SYService__downgradeEngineForVersion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _downgradeEngineForVersion:*(a1 + 40)];
    WeakRetained = v3;
  }
}

- (void)_suspend
{
  _os_assumes_log();
  if (_sync_log_facilities_pred != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  if (OUTLINED_FUNCTION_6_0())
  {
    OUTLINED_FUNCTION_1_4(&dword_1DF835000, v0, v1, "Queue state assumption failed: _sessionQueue.suspended == YES", v2, v3, v4, v5, 0);
  }
}

- (void)_copyPeerClockFromMessageHeaderIfNecessary:(id)a3
{
  v4 = a3;
  vectorClock = self->_vectorClock;
  v11 = v4;
  v6 = [v4 sender];
  LOBYTE(vectorClock) = [(SYVectorClock *)vectorClock hasClockForPeer:v6];

  if ((vectorClock & 1) == 0)
  {
    v7 = self->_vectorClock;
    v8 = [v11 state];
    v9 = [v11 sender];
    v10 = [v8 clockForPeer:v9];
    [(SYVectorClock *)v7 addClocks:v10];

    [(SYService *)self _vectorClockUpdated];
  }
}

- (id)_newMessageHeader
{
  v3 = objc_opt_new();
  [v3 setTimestamp:CFAbsoluteTimeGetCurrent()];
  v4 = [SYPeer alloc];
  v5 = [(SYService *)self peerID];
  v6 = [(SYPeer *)v4 initWithPeerID:v5 generation:self->_generationID];
  [v3 setSender:v6];

  v7 = [(SYVectorClock *)self->_vectorClock copy];
  [v3 setState:v7];

  [v3 setVersion:(*&self->_flags >> 6) & 7];
  v8 = [(SYService *)self persistentStore];
  [v3 setSequenceNumber:{objc_msgSend(v8, "nextSequenceNumber")}];

  return v3;
}

- (void)sessionDidEnd:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_currentSession == v6)
  {
LABEL_11:
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      delegateQueue = self->_delegateQueue;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __37__SYService_sessionDidEnd_withError___block_invoke;
      v20[3] = &unk_1E86CA0F8;
      v20[4] = self;
      v13 = &v21;
      v21 = v6;
      v22 = v7;
      v14 = delegateQueue;
      v15 = [v20 copy];
      *buf = MEMORY[0x1E69E9820];
      v24 = 3221225472;
      v25 = ___dispatch_async_autoreleased_block_invoke;
      v26 = &unk_1E86CAA90;
      v27 = v15;
      v16 = v15;
      dispatch_async(v14, buf);
    }

    else
    {
      queue = self->_queue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __37__SYService_sessionDidEnd_withError___block_invoke_2;
      block[3] = &unk_1E86C9E90;
      block[4] = self;
      v13 = &v19;
      v19 = v6;
      dispatch_async(queue, block);
    }

    goto LABEL_15;
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v8 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_ERROR))
  {
    [SYService sessionDidEnd:v8 withError:?];
  }

  if (!self->_currentSession)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v9 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DF835000, v9, OS_LOG_TYPE_DEFAULT, "The current session is nil, so I'll inform the delegate anyway", buf, 2u);
    }

    goto LABEL_11;
  }

LABEL_15:
}

void __37__SYService_sessionDidEnd_withError___block_invoke(void *a1)
{
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v2 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1DF835000, v2, OS_LOG_TYPE_INFO, "Delegate: -service:sessionEnded:error:", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1[4] + 48));
  [WeakRetained service:a1[4] sessionEnded:a1[5] error:a1[6]];

  v5 = a1[4];
  v4 = a1[5];
  v6 = *(v5 + 56);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__SYService_sessionDidEnd_withError___block_invoke_151;
  v7[3] = &unk_1E86C9E90;
  v7[4] = v5;
  v8 = v4;
  dispatch_async(v6, v7);
}

- (void)_wrapUpCurrentSession:(id)a3
{
  v56 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v5 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    if ([(SYSession *)v4 isResetSync])
    {
      v7 = "reset";
    }

    else
    {
      v7 = "delta";
    }

    v8 = [(SYService *)self name];
    *buf = 136315394;
    *&buf[4] = v7;
    *&buf[12] = 2114;
    *&buf[14] = v8;
    _os_log_impl(&dword_1DF835000, v6, OS_LOG_TYPE_INFO, "Wrapping up %s session for service %{public}@", buf, 0x16u);
  }

  if (self->_currentSession == v4)
  {
    Current = CFAbsoluteTimeGetCurrent();
    [(SYSession *)v4 birthDate];
    v15 = Current - v14;
    if (v15 < 0.0)
    {
      v16 = MEMORY[0x1E695DF00];
      [(SYSession *)v4 birthDate];
      v17 = [v16 dateWithTimeIntervalSinceReferenceDate:?];
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v18 = qword_1EDE73420;
      if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_ERROR))
      {
        [(SYService *)v17 _wrapUpCurrentSession:v18];
      }
    }

    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v19 = qword_1EDE73450;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [(SYSession *)v4 sessionSignpost];
      if ([(SYSession *)v4 isResetSync])
      {
        v21 = "Reset";
      }

      else
      {
        v21 = "Delta";
      }

      v22 = [(SYSession *)v4 identifier];
      v23 = [(SYService *)self name];
      v24 = [(SYSession *)v4 reason];
      if (v24)
      {
        v25 = [(SYSession *)v4 reason];
      }

      else
      {
        v25 = @"-";
      }

      *buf = 134219266;
      *&buf[4] = v20;
      *&buf[12] = 2080;
      *&buf[14] = v21;
      v48 = 2114;
      v49 = v22;
      v50 = 2114;
      v51 = v23;
      v52 = 2114;
      v53 = v25;
      v54 = 2048;
      v55 = v15;
      _os_log_impl(&dword_1DF835000, v19, OS_LOG_TYPE_DEFAULT, "End signpost %llu: %s session with identifier %{public}@ for service %{public}@ (reason '%{public}@') completed in %.04f seconds.", buf, 0x3Eu);
      if (v24)
      {
      }
    }

    [(SYSession *)v4 isSending];
    [(SYSyncEngine *)self->_syncEngine endSession];
    currentSession = self->_currentSession;
    self->_currentSession = 0;

    *buf = 0;
    *&buf[8] = 0;
    os_activity_scope_enter(self->_serviceActivity, buf);
    os_unfair_lock_lock(&self->_flagLock);
    if ([(NSMutableArray *)self->_onSessionEnd count])
    {
      v27 = [(NSMutableArray *)self->_onSessionEnd copy];
      [(NSMutableArray *)self->_onSessionEnd removeAllObjects];
    }

    else
    {
      v27 = 0;
    }

    os_unfair_lock_unlock(&self->_flagLock);
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v28 = v27;
    v29 = [v28 countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v29)
    {
      v30 = *v43;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v43 != v30)
          {
            objc_enumerationMutation(v28);
          }

          (*(*(*(&v42 + 1) + 8 * i) + 16))();
        }

        v29 = [v28 countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v29);
    }

    queuedStartSession = self->_queuedStartSession;
    if (queuedStartSession)
    {
      v33 = queuedStartSession;
      v34 = self->_queuedStartSession;
      self->_queuedStartSession = 0;

      objc_initWeak(&location, self);
      queue = self->_queue;
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __35__SYService__wrapUpCurrentSession___block_invoke;
      v38[3] = &unk_1E86CA868;
      objc_copyWeak(&v40, &location);
      v38[4] = self;
      v39 = v33;
      v36 = v33;
      dispatch_async(queue, v38);

      objc_destroyWeak(&v40);
      objc_destroyWeak(&location);
    }

    else
    {
      [(_SYMultiSuspendableQueue *)self->_sessionQueue resume];
    }

    os_activity_scope_leave(buf);
  }

  else
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v9 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v11 = [(SYSession *)v4 identifier];
      v12 = [(SYSession *)self->_currentSession identifier];
      *buf = 138543618;
      *&buf[4] = v11;
      *&buf[12] = 2114;
      *&buf[14] = v12;
      _os_log_impl(&dword_1DF835000, v10, OS_LOG_TYPE_DEFAULT, "Wrapping up session %{public}@ is not the current session (%{public}@)", buf, 0x16u);
    }

    [(_SYMultiSuspendableQueue *)self->_sessionQueue resume];
  }

  v37 = *MEMORY[0x1E69E9840];
}

void __35__SYService__wrapUpCurrentSession___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(*(a1 + 32) + 64);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __35__SYService__wrapUpCurrentSession___block_invoke_2;
    v5[3] = &unk_1E86C9E90;
    v5[4] = WeakRetained;
    v6 = *(a1 + 40);
    dispatch_async(v4, v5);
  }
}

void __35__SYService__wrapUpCurrentSession___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) request];
  v4 = [*(a1 + 40) completion];
  [v2 _handleStartSession:v3 completion:v4];

  if (([*(*(a1 + 32) + 80) isSuspended] & 1) == 0)
  {
    __35__SYService__wrapUpCurrentSession___block_invoke_2_cold_1();
  }

  [*(*(a1 + 32) + 80) resume];
  if (([*(*(a1 + 32) + 80) isSuspended] & 1) == 0)
  {
    __35__SYService__wrapUpCurrentSession___block_invoke_2_cold_1();
  }
}

- (void)sessionFailedToCancelMessageUUIDs:(id)a3
{
  v5 = a3;
  if ([v5 count])
  {
    v4 = [(SYService *)self persistentStore];
    [v4 addMessageIDsToIgnore:v5];
  }
}

- (id)_chooseBetweenCollidingSessions:(id)a3 :(id)a4
{
  v60 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 isResetSync];
  if (v8 != [v7 isResetSync])
  {
    v9 = [v6 isResetSync] ? v7 : v6;
    v10 = v9;
    if (v10)
    {
      goto LABEL_22;
    }
  }

  v11 = (*&self->_flags >> 6) & 7;
  if (v11 < 2)
  {
    if (v11 != 1)
    {
LABEL_16:
      v10 = 0;
      goto LABEL_17;
    }

    [v7 birthDate];
    v21 = v20;
    [v6 birthDate];
    v19 = v21 - v22;
  }

  else
  {
    v12 = _SessionIdentifierDateFormatter();
    v13 = [v6 identifier];
    v14 = [v12 dateFromString:v13];

    v15 = _SessionIdentifierDateFormatter();
    v16 = [v7 identifier];
    v17 = [v15 dateFromString:v16];

    [v14 timeIntervalSinceDate:v17];
    v19 = v18;
  }

  v23 = v7;
  if (v19 <= 1.0)
  {
    v23 = v6;
    if (v19 >= -1.0)
    {
      goto LABEL_16;
    }
  }

  v24 = v23;
  v10 = v24;
  if (!v24 || ![v24 hasRejectedPeerSession])
  {
LABEL_17:
    [v10 setHasRejectedPeerSession:1];
    if (v10)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  if (v10 == v6)
  {
    v25 = v7;
  }

  else
  {
    v25 = v6;
  }

  v41 = v25;

  v10 = v41;
  if (!v41)
  {
LABEL_18:
    v26 = [(SYService *)self isMasterStore];
    if ([v6 isSending] != v26)
    {
      v27 = v6;
    }

    else
    {
      v27 = v7;
    }

    v10 = v27;
  }

LABEL_22:
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v29 = objc_opt_respondsToSelector();

  if (v29)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v30 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEBUG))
    {
      [SYService _chooseBetweenCollidingSessions:v30];
    }

    if (v10 == v6)
    {
      v31 = v7;
    }

    else
    {
      v31 = v6;
    }

    v32 = v31;
    v50 = 0;
    v51 = &v50;
    v52 = 0x3032000000;
    v53 = __Block_byref_object_copy__5;
    v54 = __Block_byref_object_dispose__5;
    v55 = 0;
    delegateQueue = self->_delegateQueue;
    v42 = MEMORY[0x1E69E9820];
    v43 = 3221225472;
    v44 = __46__SYService__chooseBetweenCollidingSessions::__block_invoke;
    v45 = &unk_1E86CA890;
    v49 = &v50;
    v46 = self;
    v10 = v10;
    v47 = v10;
    v34 = v32;
    v48 = v34;
    v35 = &v42;
    *&block = MEMORY[0x1E69E9820];
    *(&block + 1) = 3221225472;
    v57 = ___dispatch_sync_autoreleased_block_invoke;
    v58 = &unk_1E86CAA90;
    v59 = v35;
    dispatch_sync(delegateQueue, &block);

    if (v51[5] == v34)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v36 = qword_1EDE73420;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = [v51[5] identifier];
        LODWORD(block) = 138543362;
        *(&block + 4) = v37;
        _os_log_impl(&dword_1DF835000, v36, OS_LOG_TYPE_DEFAULT, "Delegate vetoed our decision. Session %{public}@ is now the winner", &block, 0xCu);
      }

      v38 = v51[5];
      v10 = v38;
    }

    _Block_object_dispose(&v50, 8);
  }

  v39 = *MEMORY[0x1E69E9840];

  return v10;
}

void __46__SYService__chooseBetweenCollidingSessions::__block_invoke(void *a1)
{
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v2 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_1DF835000, v2, OS_LOG_TYPE_INFO, "Delegate: -service:willPreferSession:overSession:", v7, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1[4] + 48));
  v4 = [WeakRetained service:a1[4] willPreferSession:a1[5] overSession:a1[6]];
  v5 = *(a1[7] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (BOOL)_shouldSession:(id)a3 fromPeer:(id)a4 supercedeSession:(id)a5 ofAge:(double)a6 collisionDetected:(BOOL *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = [v14 state];
  switch(v15)
  {
    case 0:
      goto LABEL_4;
    case 7:
      v16 = [(SYSyncEngine *)self->_syncEngine buffersSessions];
      if (v16)
      {
        v16 = [(SYSyncEngine *)self->_syncEngine buffersHandshake];
      }

      break;
    case 6:
LABEL_4:
      v16 = 1;
      break;
    default:
      v16 = 0;
      break;
  }

  if (a7)
  {
    *a7 = v16;
  }

  if (v16 && self->_sessionStalenessInterval > a6)
  {
    v17 = [(SYService *)self _chooseBetweenCollidingSessions:v12];
    if (v17 == v12)
    {
      v18 = 1;
    }

    else
    {
      v18 = [v14 _willAcquiesceToNewSessionFromPeer:v13];
    }

    goto LABEL_21;
  }

  if ([v14 _willAcquiesceToNewSessionFromPeer:v13])
  {
    v18 = 1;
  }

  else if (self->_sessionStalenessInterval <= a6)
  {
    v19 = (*&self->_flags >> 6) & 7;
    if (v19 >= 2)
    {
      v17 = [v12 identifier];
      v20 = [v14 identifier];
      v18 = [v17 compare:v20] == 1;

LABEL_21:
      goto LABEL_28;
    }

    v18 = a6 > 1800.0 && v19 == 1;
  }

  else
  {
    v18 = 0;
  }

LABEL_28:

  return v18;
}

- (void)_postVersionRejectionMessageForMessageWithID:(id)a3
{
  v4 = a3;
  v5 = [(SYService *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__SYService__postVersionRejectionMessageForMessageWithID___block_invoke;
  v7[3] = &unk_1E86C9E90;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __58__SYService__postVersionRejectionMessageForMessageWithID___block_invoke(uint64_t a1)
{
  v3 = objc_opt_new();
  v2 = [*(a1 + 32) _newMessageHeader];
  [v3 setHeader:v2];

  [v3 setInReplyTo:*(a1 + 40)];
  [v3 setSupportedVersions:&_postVersionRejectionMessageForMessageWithID__supportedVersions count:2];
  [*(*(a1 + 32) + 112) enqueueSyncRequest:v3 withMessageID:0x7FFFLL priority:objc_msgSend(*(a1 + 32) options:"priority") userContext:0 callback:{0, &__block_literal_global_159}];
}

void __58__SYService__postVersionRejectionMessageForMessageWithID___block_invoke_2(uint64_t a1, char a2, void *a3, void *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (a2)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v8 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543362;
      v14 = v6;
      _os_log_impl(&dword_1DF835000, v8, OS_LOG_TYPE_DEFAULT, "Enqueued version rejection message with ID %{public}@", &v13, 0xCu);
    }
  }

  else
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v9 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v11 = _SYObfuscate(v7);
      v13 = 138543362;
      v14 = v11;
      _os_log_impl(&dword_1DF835000, v10, OS_LOG_TYPE_DEFAULT, "Failed to enqueue version rejection message: %{public}@", &v13, 0xCu);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (NSDictionary)extraTransportOptions
{
  v3 = [(SYService *)self currentSession];
  v4 = [(SYService *)self options];
  if (v3)
  {
    v5 = [v3 options];
    v6 = CoalesceOptionDictionaries(v4, v5);

    v4 = v6;
  }

  return v4;
}

- (BOOL)willAcceptMessageWithHeader:(id)a3 messageID:(id)a4
{
  v52 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 sequenceNumber];
  if ([v6 version] <= 2 && objc_msgSend(v6, "version"))
  {
    v9 = [(SYService *)self persistentStore];
    v10 = [v9 shouldIgnoreMessageID:v7];

    if (v10)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v11 = qword_1EDE73420;
      if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
      {
        v46 = 138543362;
        v47 = v7;
        _os_log_impl(&dword_1DF835000, v11, OS_LOG_TYPE_DEFAULT, "Ignoring message ID %{public}@, it's in the 'cancellation failed' list", &v46, 0xCu);
      }

      v12 = [(SYService *)self persistentStore];
      [v12 removeMessageIDFromIgnoreList:v7];

      goto LABEL_10;
    }

    v16 = (*&self->_flags >> 6) & 7;
    if (v16 != [v6 version])
    {
      self->_flags = (*&self->_flags & 0xFFFFFE3F | (([v6 version] & 7) << 6));
    }

    v17 = MEMORY[0x1E695DF00];
    [v6 timestamp];
    v18 = [v17 dateWithTimeIntervalSinceReferenceDate:?];
    v19 = [(SYService *)self persistentStore];
    v20 = [v19 lastMessageReceived];

    v21 = [(SYService *)self persistentStore];
    v22 = [v6 sender];
    v23 = [v22 peerID];
    v24 = [v21 sequenceNumberIsDuplicate:v8 forPeer:v23];

    if (v24)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v25 = qword_1EDE73420;
      if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
      {
        v46 = 138543618;
        v47 = v7;
        v48 = 2048;
        v49 = v8;
        _os_log_impl(&dword_1DF835000, v25, OS_LOG_TYPE_DEFAULT, "Possible duplicate message %{public}@ received with seqno %llu. Comparing timestamps.", &v46, 0x16u);
      }

      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v26 = qword_1EDE73420;
      if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
      {
        v27 = MEMORY[0x1E695DF00];
        v28 = v26;
        [v6 timestamp];
        v29 = [v27 dateWithTimeIntervalSinceReferenceDate:?];
        v46 = 138543618;
        v47 = v29;
        v48 = 2114;
        v49 = v20;
        _os_log_impl(&dword_1DF835000, v28, OS_LOG_TYPE_DEFAULT, "This message timestamp = %{public}@ vs. last message timestamp = %{public}@", &v46, 0x16u);
      }

      if ([v18 compare:v20] != 1)
      {
        v45 = +[SYTransportLog sharedInstance];
        v43 = [v45 oslog];

        if (os_log_type_enabled(v43, 0x90u))
        {
          [(SYService *)v7 willAcceptMessageWithHeader:v8 messageID:v43];
        }

        v13 = 0;
        goto LABEL_46;
      }

      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v30 = qword_1EDE73420;
      if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v46) = 0;
        _os_log_impl(&dword_1DF835000, v30, OS_LOG_TYPE_DEFAULT, "Sequence numbers were reset; clearing our received seqno set.", &v46, 2u);
      }

      v31 = [(SYService *)self persistentStore];
      v32 = [v6 sender];
      v33 = [v32 peerID];
      [v31 resetSequenceNumbersForPeer:v33];
    }

    v34 = [(SYService *)self persistentStore];
    v35 = [v6 sender];
    v36 = [v35 peerID];
    v37 = [v34 lastSequenceNumberForPeerID:v36];

    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v38 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_INFO))
    {
      v46 = 134218240;
      v47 = v8;
      v48 = 2048;
      v49 = v37;
      _os_log_impl(&dword_1DF835000, v38, OS_LOG_TYPE_INFO, "Received seqno=%llu, last seen=%llu", &v46, 0x16u);
    }

    if (v8 != v37 + 1)
    {
      v39 = +[SYTransportLog sharedInstance];
      v40 = [v39 oslog];

      if (os_log_type_enabled(v40, 0x90u))
      {
        v46 = 138543874;
        v47 = v7;
        v48 = 2048;
        v49 = v8;
        v50 = 2048;
        v51 = v37;
        _os_log_error_impl(&dword_1DF835000, v40, 0x90u, "Out of order delivery or dropped message detected on receipt of message with ID %{public}@. Message sequence number = %llu, last received sequence number = %llu", &v46, 0x20u);
      }
    }

    if ([v6 version] >= 3)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v41 = qword_1EDE73420;
      if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_ERROR))
      {
        [SYService willAcceptMessageWithHeader:v41 messageID:?];
      }
    }

    v42 = MEMORY[0x1E695DF00];
    [v6 timestamp];
    v43 = [v42 dateWithTimeIntervalSinceReferenceDate:?];
    v44 = [(SYService *)self persistentStore];
    [v44 setLastMessageReceived:v43];

    v13 = 1;
LABEL_46:

    goto LABEL_11;
  }

  [(SYService *)self _postVersionRejectionMessageForMessageWithID:v7];
LABEL_10:
  v13 = 0;
LABEL_11:

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)handleSyncRequest:(id)a3 ofType:(unsigned __int16)a4 response:(id)a5
{
  v8 = a3;
  v9 = a5;
  incomingIOQueue = self->_incomingIOQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __47__SYService_handleSyncRequest_ofType_response___block_invoke;
  v13[3] = &unk_1E86CA8D8;
  v16 = a4;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(incomingIOQueue, v13);
}

uint64_t __47__SYService_handleSyncRequest_ofType_response___block_invoke(uint64_t a1)
{
  v3 = (a1 + 56);
  v2 = *(a1 + 56);
  if (v2 > 0x64)
  {
    if (*(a1 + 56) > 0x67u)
    {
      switch(v2)
      {
        case 0x68u:
          v26 = *(a1 + 32);
          v27 = *(a1 + 40);
          v28 = *(a1 + 48);

          return [v26 _handleRestartSession:v27 completion:v28];
        case 0x69u:
          v38 = *(a1 + 32);
          v39 = *(a1 + 40);
          v40 = *(a1 + 48);

          return [v38 _handleEndSession:v39 completion:v40];
        case 0x7FFFu:
          v14 = *(a1 + 32);
          v15 = *(a1 + 40);
          v16 = *(a1 + 48);

          return [v14 _peerRejectedVersion:v15 completion:v16];
      }
    }

    else
    {
      switch(v2)
      {
        case 'e':
          v20 = *(a1 + 32);
          v21 = *(a1 + 40);
          v22 = *(a1 + 48);

          return [v20 _handleResetRequest:v21 completion:v22];
        case 'f':
          v32 = *(a1 + 32);
          v33 = *(a1 + 40);
          v34 = *(a1 + 48);

          return [v32 _handleStartSession:v33 completion:v34];
        case 'g':
          v8 = *(a1 + 32);
          v9 = *(a1 + 40);
          v10 = *(a1 + 48);

          return [v8 _handleSyncBatch:v9 completion:v10];
      }
    }

LABEL_52:
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v41 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, 0x90u))
    {
      __47__SYService_handleSyncRequest_ofType_response___block_invoke_cold_2(v3, a1, v41);
    }

    return (*(*(a1 + 48) + 16))();
  }

  if (*(a1 + 56) > 3u)
  {
    switch(v2)
    {
      case 4u:
        v23 = *(a1 + 32);
        v24 = *(a1 + 40);
        v25 = *(a1 + 48);

        return [v23 _v1_handleBatchSyncChunk:v24 completion:v25];
      case 5u:
        v35 = *(a1 + 32);
        v36 = *(a1 + 40);
        v37 = *(a1 + 48);

        return [v35 _v1_handleBatchSyncEnd:v36 completion:v37];
      case 6u:
        v11 = *(a1 + 32);
        v12 = *(a1 + 40);
        v13 = *(a1 + 48);

        return [v11 _v1_handleChangeMessage:v12 completion:v13];
    }

    goto LABEL_52;
  }

  switch(v2)
  {
    case 1u:
      v17 = *(a1 + 32);
      v18 = *(a1 + 40);
      v19 = *(a1 + 48);

      return [v17 _v1_handleFullSyncRequest:v18 completion:v19];
    case 2u:
      v29 = *(a1 + 32);
      v30 = *(a1 + 40);
      v31 = *(a1 + 48);

      return [v29 _v1_handleSyncAllObjects:v30 completion:v31];
    case 3u:
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v6 = *(a1 + 48);

      return [v4 _v1_handleBatchSyncStart:v5 completion:v6];
    default:
      goto LABEL_52;
  }
}

- (void)handleSyncResponse:(id)a3 ofType:(unsigned __int16)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  incomingIOQueue = self->_incomingIOQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __50__SYService_handleSyncResponse_ofType_completion___block_invoke;
  v13[3] = &unk_1E86CA8D8;
  v16 = a4;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(incomingIOQueue, v13);
}

void __50__SYService_handleSyncResponse_ofType_completion___block_invoke(uint64_t a1)
{
  v2 = 0;
  v3 = *(a1 + 56);
  if (v3 <= 0x64)
  {
    if (*(a1 + 56) > 3u)
    {
      if (v3 == 4)
      {
        v14 = *(a1 + 32);
        v15 = *(a1 + 40);
        v38 = 0;
        v6 = [v14 _v1_handleBatchChunkAck:v15 error:&v38];
        v7 = v38;
        goto LABEL_22;
      }

      if (v3 != 5)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v3 == 1)
      {
        v12 = *(a1 + 32);
        v13 = *(a1 + 40);
        v39 = 0;
        v6 = [v12 _v1_handleFullSyncRequestAck:v13 error:&v39];
        v7 = v39;
        goto LABEL_22;
      }

      if (v3 != 2)
      {
        goto LABEL_23;
      }
    }

    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v37 = 0;
    v6 = [v8 _v1_handleBatchEndResponse:v9 error:&v37];
    v7 = v37;
    goto LABEL_22;
  }

  if (*(a1 + 56) <= 0x66u)
  {
    if (v3 == 101)
    {
      v18 = *(a1 + 32);
      v19 = *(a1 + 40);
      v36 = 0;
      v6 = [v18 _handleResetResponse:v19 error:&v36];
      v7 = v36;
    }

    else
    {
      if (v3 != 102)
      {
        goto LABEL_23;
      }

      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      v35 = 0;
      v6 = [v10 _handleStartSessionResponse:v11 error:&v35];
      v7 = v35;
    }

LABEL_22:
    v2 = v7;
    if (v6)
    {
      goto LABEL_33;
    }

    goto LABEL_23;
  }

  switch(v3)
  {
    case 'g':
      v16 = *(a1 + 32);
      v17 = *(a1 + 40);
      v34 = 0;
      v6 = [v16 _handleSyncBatchResponse:v17 error:&v34];
      v7 = v34;
      goto LABEL_22;
    case 'h':
      v20 = *(a1 + 32);
      v21 = *(a1 + 40);
      v33 = 0;
      v6 = [v20 _handleRestartSessionResponse:v21 error:&v33];
      v7 = v33;
      goto LABEL_22;
    case 'i':
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v32 = 0;
      v6 = [v4 _handleEndSessionResponse:v5 error:&v32];
      v7 = v32;
      goto LABEL_22;
  }

LABEL_23:
  if (*(a1 + 56) - 102 <= 2 && ([*(a1 + 40) hasError] & 1) == 0)
  {
    v22 = objc_opt_new();
    v23 = [*(a1 + 32) _newMessageHeader];
    [v22 setHeader:v23];

    v24 = [*(a1 + 40) sessionID];
    [v22 setSessionID:v24];

    v25 = [SYErrorInfo alloc];
    v26 = v25;
    if (v2)
    {
      v27 = [(SYErrorInfo *)v25 initWithError:v2];
      [v22 setError:v27];
    }

    else
    {
      v27 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:2006 userInfo:0];
      v28 = [(SYErrorInfo *)v26 initWithError:v27];
      [v22 setError:v28];
    }

    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v29 = _sync_log_facilities;
    if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_INFO))
    {
      v31[0] = 0;
      _os_log_impl(&dword_1DF835000, v29, OS_LOG_TYPE_INFO, "Enqueueing end-session message to cancel an orphaned receiving session on peer.", v31, 2u);
    }

    v30 = [*(a1 + 32) syncEngine];
    [v30 enqueueSyncRequest:v22 withMessageID:105 priority:objc_msgSend(*(a1 + 32) options:"priority") userContext:0 callback:{0, &__block_literal_global_165}];
  }

LABEL_33:
  (*(*(a1 + 48) + 16))();
}

void __50__SYService_handleSyncResponse_ofType_completion___block_invoke_163(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v7 = _sync_log_facilities;
  if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1DF835000, v7, OS_LOG_TYPE_INFO, "Enqueued end-session message to orphaned session on peer.", v8, 2u);
  }
}

- (void)handleOutOfBandData:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = self->_delegateQueue;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __44__SYService_handleOutOfBandData_completion___block_invoke;
    v15[3] = &unk_1E86CA1B8;
    v16 = WeakRetained;
    v17 = self;
    v18 = v6;
    v19 = v7;
    v10 = delegateQueue;
    v11 = [v15 copy];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___dispatch_async_autoreleased_block_invoke;
    block[3] = &unk_1E86CAA90;
    v21 = v11;
    v12 = v11;
    dispatch_async(v10, block);

    v13 = v16;
  }

  else
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v14 = _sync_log_facilities;
    if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(block[0]) = 0;
      _os_log_impl(&dword_1DF835000, v14, OS_LOG_TYPE_DEFAULT, "SYService received OOB data, but delegate doesn't support it", block, 2u);
    }

    v13 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:2008 userInfo:0];
    (*(v7 + 2))(v7, 0, v13);
  }
}

uint64_t __44__SYService_handleOutOfBandData_completion___block_invoke(uint64_t a1)
{
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v2 = _sync_log_facilities;
  if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1DF835000, v2, OS_LOG_TYPE_INFO, "Delegate: -service:incomingData:completion:", v4, 2u);
  }

  return [*(a1 + 32) service:*(a1 + 40) incomingData:*(a1 + 48) completion:*(a1 + 56)];
}

- (id)_claimOwnershipOfFileAtURL:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 URLByDeletingLastPathComponent];
  v7 = [v6 path];
  v8 = [v7 stringByAppendingPathComponent:@"SYFileTransfer-XXXXX"];

  v9 = strdup([v8 UTF8String]);
  v10 = mkdtemp(v9);
  if (v10)
  {
    v11 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithFileSystemRepresentation:v10 isDirectory:1 relativeToURL:0];
    free(v9);
    v12 = [v5 lastPathComponent];
    v13 = [v11 URLByAppendingPathComponent:v12];

    if (link([v5 fileSystemRepresentation], objc_msgSend(v13, "fileSystemRepresentation")))
    {
      v14 = __error();
      if (a4)
      {
        v15 = *v14;
        v16 = objc_alloc(MEMORY[0x1E696ABC0]);
        v17 = [v16 initWithDomain:*MEMORY[0x1E696A798] code:v15 userInfo:0];
        v18 = 0;
        *a4 = v17;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = v13;
    }
  }

  else
  {
    v19 = __error();
    if (a4)
    {
      v20 = *v19;
      v21 = objc_alloc(MEMORY[0x1E696ABC0]);
      v18 = 0;
      *a4 = [v21 initWithDomain:*MEMORY[0x1E696A798] code:v20 userInfo:0];
    }

    else
    {
      v18 = 0;
    }
  }

  return v18;
}

- (void)handleFileTransfer:(id)a3 metadata:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v25 = 0;
    v12 = [(SYService *)self _claimOwnershipOfFileAtURL:v8 error:&v25];
    v13 = v25;
    if (v12)
    {
      delegateQueue = self->_delegateQueue;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __52__SYService_handleFileTransfer_metadata_completion___block_invoke;
      v19[3] = &unk_1E86CA928;
      v20 = v12;
      v21 = WeakRetained;
      v22 = self;
      v23 = v9;
      v24 = v10;
      v15 = delegateQueue;
      v16 = [v19 copy];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = ___dispatch_async_autoreleased_block_invoke;
      block[3] = &unk_1E86CAA90;
      v27 = v16;
      v17 = v16;
      dispatch_async(v15, block);
    }

    else
    {
      (*(v10 + 2))(v10, 0, v13);
    }
  }

  else
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v18 = _sync_log_facilities;
    if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(block[0]) = 0;
      _os_log_impl(&dword_1DF835000, v18, OS_LOG_TYPE_DEFAULT, "SYService received OOB file transfer, but delegate doesn't support it", block, 2u);
    }

    v13 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:2008 userInfo:0];
    (*(v10 + 2))(v10, 0, v13);
  }
}

void __52__SYService_handleFileTransfer_metadata_completion___block_invoke(uint64_t a1)
{
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v2 = _sync_log_facilities;
  if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1DF835000, v2, OS_LOG_TYPE_INFO, "Delegate: -service:incomingStream:metadata:completion:", buf, 2u);
  }

  v3 = [[SYCompressedFileInputStream alloc] initWithCompressedFileAtURL:*(a1 + 32)];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__SYService_handleFileTransfer_metadata_completion___block_invoke_175;
  v7[3] = &unk_1E86CA900;
  v8 = *(a1 + 32);
  v9 = *(a1 + 64);
  [v4 service:v5 incomingStream:v3 metadata:v6 completion:v7];
}

void __52__SYService_handleFileTransfer_metadata_completion___block_invoke_175(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [*(a1 + 32) URLByDeletingLastPathComponent];
  v9 = 0;
  v7 = [v5 removeItemAtURL:v6 error:&v9];
  v8 = v9;

  if ((v7 & 1) == 0)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_ERROR))
    {
      __52__SYService_handleFileTransfer_metadata_completion___block_invoke_175_cold_2();
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)handleSyncError:(id)a3 forMessageWithIdentifier:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v7 && (-[SYService persistentStore](self, "persistentStore"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 shouldIgnoreMessageID:v7], v8, v9))
  {
    v10 = [(SYService *)self persistentStore];
    [v10 removeMessageIDFromIgnoreList:v7];

    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v11 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v25 = v7;
      v26 = 2114;
      v27 = v6;
      _os_log_impl(&dword_1DF835000, v11, OS_LOG_TYPE_DEFAULT, "Received expected error for message ID %{public}@, will ignore it. Error is %{public}@", buf, 0x16u);
    }
  }

  else
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v12 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v6;
      _os_log_impl(&dword_1DF835000, v12, OS_LOG_TYPE_DEFAULT, "Sync error occurred: %@", buf, 0xCu);
    }

    v13 = [v6 persistentUserInfo];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 objectForKeyedSubscript:0x1F5ACCE40];
    }

    else
    {
      v16 = [v6 userInfo];
      v15 = [v16 objectForKeyedSubscript:0x1F5ACCE40];
    }

    queue = self->_queue;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __54__SYService_handleSyncError_forMessageWithIdentifier___block_invoke;
    v20[3] = &unk_1E86CA728;
    v20[4] = self;
    v21 = v15;
    v22 = v7;
    v23 = v6;
    v18 = v15;
    dispatch_async(queue, v20);
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __54__SYService_handleSyncError_forMessageWithIdentifier___block_invoke(void *a1)
{
  v5 = *(a1[4] + 40);
  if (v5 && a1[5] && ([v5 identifier], v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "isEqualToString:", a1[5]), v2, v4 = v5, v3))
  {
    if (a1[6])
    {
      [v5 _clearOutgoingMessageUUID:?];
      v4 = v5;
    }
  }

  else
  {
    v4 = a1[4];
  }

  [v4 _handleError:a1[7]];
}

- (void)enqueuedMessageWithID:(id)a3 context:(id)a4
{
  v5 = a3;
  queue = self->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__SYService_enqueuedMessageWithID_context___block_invoke;
  v8[3] = &unk_1E86C9E90;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, v8);
}

void __43__SYService_enqueuedMessageWithID_context___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) currentSession];
  if (v2)
  {
    v3 = v2;
    [v2 _recordOutgoingMessageUUID:*(a1 + 40)];
    v2 = v3;
  }
}

- (void)sentMessageWithID:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__SYService_sentMessageWithID_context___block_invoke;
  block[3] = &unk_1E86CA0F8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __39__SYService_sentMessageWithID_context___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) persistentStore];
  [v2 removeMessageIDFromIgnoreList:*(a1 + 40)];

  v3 = [*(a1 + 32) currentSession];
  if (v3)
  {
    v4 = v3;
    [v3 _sentMessageWithIdentifier:*(a1 + 40) userInfo:*(a1 + 48)];
    v3 = v4;
  }
}

- (void)deliveredMessageWithID:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__SYService_deliveredMessageWithID_context___block_invoke;
  block[3] = &unk_1E86CA0F8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __44__SYService_deliveredMessageWithID_context___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) persistentStore];
  [v2 removeMessageIDFromIgnoreList:*(a1 + 40)];

  v3 = [*(a1 + 32) currentSession];
  if (v3)
  {
    v4 = v3;
    [v3 _clearOutgoingMessageUUID:*(a1 + 40)];
    [v4 _peerProcessedMessageWithIdentifier:*(a1 + 40) userInfo:*(a1 + 48)];
    v3 = v4;
  }
}

- (void)serializeForIncomingSession:(id)a3
{
  block = a3;
  v4 = [(SYService *)self syncEngine];
  if ([v4 buffersSessions])
  {
    v5 = [(SYSession *)self->_currentSession _readyToProcessIncomingMessages];

    if (v5)
    {
      v6 = [(SYService *)self queue];
      dispatch_async(v6, block);

      goto LABEL_6;
    }
  }

  else
  {
  }

  [(_SYMultiSuspendableQueue *)self->_sessionQueue barrierAsync:block];
LABEL_6:
}

- (void)currentDeviceProximityChanged:(BOOL)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = self->_delegateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__SYService_currentDeviceProximityChanged___block_invoke;
    block[3] = &unk_1E86C9E40;
    v8 = WeakRetained;
    v9 = self;
    v10 = a3;
    dispatch_async(delegateQueue, block);
  }
}

- (void)currentDeviceConnectionChanged:(BOOL)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = self->_delegateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44__SYService_currentDeviceConnectionChanged___block_invoke;
    block[3] = &unk_1E86C9E40;
    v8 = WeakRetained;
    v9 = self;
    v10 = a3;
    dispatch_async(delegateQueue, block);
  }
}

- (id)_sessionFromIncomingStartRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 header];
  v6 = [v5 sender];

  v7 = [v4 header];
  v8 = [v7 state];
  v9 = [v8 clockForPeer:v6];

  v25 = v9;
  v26 = v6;
  -[SYVectorClock setClockValue:forPeer:](self->_vectorClock, "setClockValue:forPeer:", [v9 version], v6);
  [(SYService *)self _vectorClockUpdated];
  if ([v4 hasMetadata])
  {
    v10 = [v4 metadata];
    v11 = [SYSession unarchiveMetadata:v10];
  }

  else
  {
    v11 = 0;
  }

  v12 = -[SYReceivingSession initWithService:isReset:metadata:]([SYReceivingSession alloc], "initWithService:isReset:metadata:", self, [v4 isResetSync], v11);
  v13 = [v4 sessionID];
  [(SYSession *)v12 setIdentifier:v13];

  v14 = [v4 header];
  [v14 timestamp];
  [(SYSession *)v12 setBirthDate:?];

  v15 = [v4 header];
  v16 = [v15 sender];
  v17 = [v16 generationID];
  v18 = [(SYSession *)v12 peerGenerationIDs];
  v19 = [v4 header];
  v20 = [v19 sender];
  v21 = [v20 peerID];
  [v18 setObject:v17 forKeyedSubscript:v21];

  v22 = [v4 reason];
  [(SYSession *)v12 setReason:v22];

  [v4 sessionTimeout];
  [(SYSession *)v12 setFullSessionTimeout:v23 - CFAbsoluteTimeGetCurrent()];

  return v12;
}

- (void)_enqueueIncomingStartSessionRequest:(id)a3 withCompletion:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (self->_queuedStartSession)
  {
    [SYService _enqueueIncomingStartSessionRequest:withCompletion:];
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v8 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [v6 sessionID];
    v11 = _SYObfuscate(self->_currentSession);
    v15 = 138543618;
    v16 = v10;
    v17 = 2114;
    v18 = v11;
    _os_log_impl(&dword_1DF835000, v9, OS_LOG_TYPE_DEFAULT, "Deferring incoming start-session (%{public}@) to allow current session (%{public}@) to finish closing.", &v15, 0x16u);
  }

  v12 = [[_SYQueuedStartSession alloc] initWithRequest:v6 completion:v7];
  queuedStartSession = self->_queuedStartSession;
  self->_queuedStartSession = v12;

  v14 = *MEMORY[0x1E69E9840];
}

- (BOOL)_request:(id)a3 hasValidSessionIDForSession:(id)a4 response:(id)a5 completion:(id)a6
{
  v27 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = a4;
  v13 = [v9 sessionID];
  v14 = [v12 identifier];

  v15 = [v13 isEqualToString:v14];
  if ((v15 & 1) == 0)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v16 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v16;
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v25 = 138543362;
      v26 = v19;
      _os_log_impl(&dword_1DF835000, v17, OS_LOG_TYPE_DEFAULT, "Received %{public}@ message for another session ID", &v25, 0xCu);
    }

    v20 = [SYErrorInfo alloc];
    v21 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:2006 userInfo:0];
    v22 = [(SYErrorInfo *)v20 initWithError:v21];
    [v10 setError:v22];

    v11[2](v11, v10, 0);
  }

  v23 = *MEMORY[0x1E69E9840];
  return v15;
}

- (void)_handleStartSession:(id)a3 completion:(id)a4
{
  v87 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_not_V2(self->_delegateQueue);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(self->_serviceActivity, &state);
  v8 = objc_opt_new();
  v9 = [(SYService *)self _newMessageHeader];
  [v8 setHeader:v9];

  [v8 setAccepted:0];
  v10 = [v6 sessionID];
  [v8 setSessionID:v10];

  v11 = [(SYService *)self _sessionFromIncomingStartRequest:v6];
  p_currentSession = &self->_currentSession;
  currentSession = self->_currentSession;
  if (!currentSession)
  {
    if ([v6 isResetSync] && -[SYService isMasterStore](self, "isMasterStore"))
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_ERROR))
      {
        [SYService _handleStartSession:completion:];
      }

      v28 = [SYErrorInfo alloc];
      v29 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:2014 userInfo:0];
      v30 = [(SYErrorInfo *)v28 initWithError:v29];
      [v8 setError:v30];

      v14 = [v6 sessionID];
      v31 = UserInfoDictionaryWithAssociatedSessionID(v14);
      v7[2](v7, v8, v31);
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v71 = 0;
      v72 = &v71;
      v73 = 0x2020000000;
      v74 = 0;
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v81 = __Block_byref_object_copy__5;
      v82 = __Block_byref_object_dispose__5;
      v83 = 0;
      delegateQueue = self->_delegateQueue;
      v65[0] = MEMORY[0x1E69E9820];
      v65[1] = 3221225472;
      v65[2] = __44__SYService__handleStartSession_completion___block_invoke_184;
      v65[3] = &unk_1E86CA7F0;
      v69 = &v71;
      v14 = WeakRetained;
      v66 = v14;
      v67 = self;
      v57 = v11;
      v68 = v57;
      v70 = buf;
      v34 = v65;
      *block = MEMORY[0x1E69E9820];
      *&block[8] = 3221225472;
      *&block[16] = ___dispatch_sync_autoreleased_block_invoke;
      v85 = &unk_1E86CAA90;
      v86 = v34;
      dispatch_sync(delegateQueue, block);

      if (v72[3])
      {
        if (*p_currentSession)
        {
          if (_sync_log_facilities_pred != -1)
          {
            [SYIncomingSyncAllObjectsSession _continueProcessing];
          }

          v35 = qword_1EDE73420;
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            _SYObfuscate(*p_currentSession);
            objc_claimAutoreleasedReturnValue();
            [SYService _handleStartSession:completion:];
          }
        }

        if (_sync_log_facilities_pred != -1)
        {
          [SYIncomingSyncAllObjectsSession _continueProcessing];
        }

        if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEBUG))
        {
          [SYService _handleStartSession:completion:];
        }

        [(SYSyncEngine *)self->_syncEngine beginSession];
        if ([(_SYMultiSuspendableQueue *)self->_sessionQueue isSuspended])
        {
          _os_assumes_log();
          [SYService _processPendingChanges];
        }

        [(_SYMultiSuspendableQueue *)self->_sessionQueue suspend];
        if (![(_SYMultiSuspendableQueue *)self->_sessionQueue isSuspended])
        {
          _os_assumes_log();
          [SYService _processPendingChanges];
        }

        objc_storeStrong(&self->_currentSession, v11);
        objc_initWeak(&location, self);
        v58[0] = MEMORY[0x1E69E9820];
        v58[1] = 3221225472;
        v58[2] = __44__SYService__handleStartSession_completion___block_invoke_185;
        v58[3] = &unk_1E86CA978;
        objc_copyWeak(&v63, &location);
        v59 = v57;
        v60 = v8;
        v61 = v6;
        v62 = v7;
        [v59 start:v58];

        objc_destroyWeak(&v63);
        objc_destroyWeak(&location);
      }

      else
      {
        if (_sync_log_facilities_pred != -1)
        {
          [SYIncomingSyncAllObjectsSession _continueProcessing];
        }

        v48 = qword_1EDE73420;
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          v49 = _SYObfuscate(v57);
          v50 = _SYObfuscate(*(*&buf[8] + 40));
          *block = 138543618;
          *&block[4] = v49;
          *&block[12] = 2114;
          *&block[14] = v50;
          _os_log_impl(&dword_1DF835000, v48, OS_LOG_TYPE_DEFAULT, "Delegate rejected incoming sync session (%{public}@) with error %{public}@", block, 0x16u);
        }

        v51 = [SYErrorInfo alloc];
        v52 = [(SYErrorInfo *)v51 initWithError:*(*&buf[8] + 40)];
        [v8 setError:v52];

        v53 = [v57 wrappedUserContext];
        v7[2](v7, v8, v53);
      }

      _Block_object_dispose(buf, 8);
      _Block_object_dispose(&v71, 8);
    }

    goto LABEL_67;
  }

  if (self->_queuedStartSession || (v36 = [(SYSession *)currentSession state], v36 > 9) || ((1 << v36) & 0x228) == 0)
  {
    v14 = [v6 sessionID];
    Current = CFAbsoluteTimeGetCurrent();
    [*p_currentSession birthDate];
    v17 = v16;
    block[0] = 0;
    v18 = [v6 header];
    v19 = [v18 sender];
    v20 = Current - v17;
    v21 = [(SYService *)self _shouldSession:v11 fromPeer:v19 supercedeSession:self->_currentSession ofAge:block collisionDetected:v20];

    if (v21)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v22 = qword_1EDE73420;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = _SYObfuscate(*p_currentSession);
        *buf = 138543618;
        *&buf[4] = v23;
        *&buf[12] = 2114;
        *&buf[14] = v14;
        _os_log_impl(&dword_1DF835000, v22, OS_LOG_TYPE_DEFAULT, "Cancelling current session (%{public}@) to make way for a new one (%{public}@).", buf, 0x16u);
      }

      v24 = *p_currentSession;
      v25 = objc_alloc(MEMORY[0x1E696ABC0]);
      if (block[0])
      {
        v26 = 2023;
      }

      else
      {
        v26 = 2005;
      }

      v27 = [v25 initWithSYError:v26 userInfo:0];
      [v24 cancelWithError:v27];

      [(SYService *)self _enqueueIncomingStartSessionRequest:v6 withCompletion:v7];
    }

    else
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v38 = qword_1EDE73420;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = _SYObfuscate(*p_currentSession);
        *buf = 138543874;
        *&buf[4] = v14;
        *&buf[12] = 2114;
        *&buf[14] = v39;
        *&buf[22] = 2048;
        v81 = *&v20;
        _os_log_impl(&dword_1DF835000, v38, OS_LOG_TYPE_DEFAULT, "A new StartSyncSession (%{public}@) arrived, but there is a current session (%{public}@) with an age of %.02f, so we are rejecting the new session.", buf, 0x20u);
      }

      v40 = [SYErrorInfo alloc];
      v41 = objc_alloc(MEMORY[0x1E696ABC0]);
      if (block[0])
      {
        v42 = 2023;
      }

      else
      {
        v42 = 2005;
      }

      v43 = [v41 initWithSYError:v42 userInfo:0];
      v44 = [(SYErrorInfo *)v40 initWithError:v43];
      [v8 setError:v44];

      v45 = [v6 sessionID];
      v46 = UserInfoDictionaryWithAssociatedSessionID(v45);

      if ([*p_currentSession state])
      {
        if (_sync_log_facilities_pred != -1)
        {
          [SYIncomingSyncAllObjectsSession _continueProcessing];
        }

        v47 = qword_1EDE73420;
        if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1DF835000, v47, OS_LOG_TYPE_DEFAULT, "Issuing immediate rejection of incoming session request", buf, 2u);
        }

        v7[2](v7, v8, v46);
      }

      else
      {
        if (_sync_log_facilities_pred != -1)
        {
          [SYIncomingSyncAllObjectsSession _continueProcessing];
        }

        v54 = qword_1EDE73420;
        if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1DF835000, v54, OS_LOG_TYPE_DEFAULT, "Terrifying deferred session rejection path (enqueue).", buf, 2u);
        }

        v55 = *p_currentSession;
        v75[0] = MEMORY[0x1E69E9820];
        v75[1] = 3221225472;
        v75[2] = __44__SYService__handleStartSession_completion___block_invoke;
        v75[3] = &unk_1E86CA950;
        v78 = v7;
        v76 = v8;
        v77 = v46;
        [v55 _onSessionStateChangedTo:6 do:v75];
      }
    }

LABEL_67:

    goto LABEL_68;
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v37 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DF835000, v37, OS_LOG_TYPE_DEFAULT, "Deferring incoming session requst for a short while", buf, 2u);
  }

  [(SYService *)self _enqueueIncomingStartSessionRequest:v6 withCompletion:v7];
LABEL_68:

  os_activity_scope_leave(&state);
  v56 = *MEMORY[0x1E69E9840];
}

uint64_t __44__SYService__handleStartSession_completion___block_invoke(void *a1)
{
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v2 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1DF835000, v2, OS_LOG_TYPE_DEFAULT, "Terrifying deferred session rejection path (dequeue).", v6, 2u);
  }

  v3 = a1[5];
  v4 = a1[4];
  return (*(a1[6] + 16))();
}

void __44__SYService__handleStartSession_completion___block_invoke_184(void *a1)
{
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v2 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1DF835000, v2, OS_LOG_TYPE_INFO, "Delegate: -service:startSession:error: (receiving)", buf, 2u);
  }

  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v9 = 0;
  v6 = [v3 service:v4 startSession:v5 error:&v9];
  v7 = v9;
  v8 = v9;
  *(*(a1[7] + 8) + 24) = v6;
  if ((*(*(a1[7] + 8) + 24) & 1) == 0)
  {
    objc_storeStrong((*(a1[8] + 8) + 40), v7);
  }
}

void __44__SYService__handleStartSession_completion___block_invoke_185(uint64_t a1, int a2, void *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    if ([*(a1 + 32) metadataModified])
    {
      v7 = [*(a1 + 32) sessionMetadata];

      if (v7)
      {
        v8 = MEMORY[0x1E696ACC8];
        v9 = [*(a1 + 32) sessionMetadata];
        v10 = [v8 archivedDataWithRootObject:v9 requiringSecureCoding:1 error:0];
        [*(a1 + 40) setMetadata:v10];
      }
    }

    if (a2)
    {
      [*(a1 + 40) setAccepted:1];
      pseudo_signpost_id = _next_pseudo_signpost_id();
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v12 = qword_1EDE73450;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        if ([*(a1 + 48) isResetSync])
        {
          v13 = "reset";
        }

        else
        {
          v13 = "delta";
        }

        v14 = *(a1 + 32);
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        v17 = [*(a1 + 32) identifier];
        v18 = [*(a1 + 32) reason];
        if (v18)
        {
          v19 = [*(a1 + 32) reason];
        }

        else
        {
          v19 = @"-";
        }

        v27 = 134219010;
        v28 = pseudo_signpost_id;
        v29 = 2082;
        v30 = v13;
        v31 = 2114;
        v32 = v16;
        v33 = 2114;
        v34 = v17;
        v35 = 2114;
        v36 = v19;
        _os_log_impl(&dword_1DF835000, v12, OS_LOG_TYPE_DEFAULT, "Start signpost %llu: Started incoming %{public}s %{public}@ with identifier %{public}@. Reason = '%{public}@'", &v27, 0x34u);
        if (v18)
        {
        }
      }

      [*(a1 + 32) setSessionSignpost:pseudo_signpost_id];
    }

    else
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v20 = qword_1EDE73420;
      if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
      {
        v21 = *(a1 + 32);
        v27 = 138543362;
        v28 = v21;
        _os_log_impl(&dword_1DF835000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ decided not to come out and play.", &v27, 0xCu);
      }

      v22 = [[SYErrorInfo alloc] initWithError:v5];
      [*(a1 + 40) setError:v22];
    }

    v23 = *(a1 + 56);
    v24 = *(a1 + 40);
    v25 = [*(a1 + 32) wrappedUserContext];
    (*(v23 + 16))(v23, v24, v25);
  }

  else
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_ERROR))
    {
      __44__SYService__handleStartSession_completion___block_invoke_185_cold_4();
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)_handleResetRequest:(id)a3 completion:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v24.opaque[0] = 0;
  v24.opaque[1] = 0;
  os_activity_scope_enter(self->_serviceActivity, &v24);
  v8 = objc_opt_new();
  v9 = [(SYService *)self _newMessageHeader];
  [v8 setHeader:v9];

  [v8 setAccepted:0];
  if ([(SYService *)self isMasterStore])
  {
    v10 = [(SYService *)self currentSession];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 identifier];
      v13 = [v6 cancelSessionID];
      v14 = [v12 compare:v13] == 1;

      if (v14)
      {
        if (_sync_log_facilities_pred != -1)
        {
          [SYIncomingSyncAllObjectsSession _continueProcessing];
        }

        v15 = qword_1EDE73420;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = [v11 isResetSync];
          v17 = @"delta";
          if (v16)
          {
            v17 = @"reset";
          }

          *buf = 138543362;
          v26 = v17;
          _os_log_impl(&dword_1DF835000, v15, OS_LOG_TYPE_DEFAULT, "Accepting reset request: %{public}@ sync in progress, which will be canceled to make way for the requested reset.", buf, 0xCu);
        }

        [v11 cancel];
        v18 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:2022 userInfo:0];
        [v11 setError:v18];
      }

      else
      {
        if (_sync_log_facilities_pred != -1)
        {
          [SYIncomingSyncAllObjectsSession _continueProcessing];
        }

        v22 = qword_1EDE73420;
        if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1DF835000, v22, OS_LOG_TYPE_DEFAULT, "Canceling current session-- cancelation was explicitly requested by a reset request.", buf, 2u);
        }

        [v11 cancel];
      }
    }

    [v8 setAccepted:1];
    [(SYService *)self setNeedsResetSync];
    v7[2](v7, v8, 0);
  }

  else
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(_sync_log_facilities, 0x90u))
    {
      [SYService _handleResetRequest:completion:];
    }

    v19 = [SYErrorInfo alloc];
    v20 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:2024 userInfo:0];
    v21 = [(SYErrorInfo *)v19 initWithError:v20];
    [v8 setError:v21];

    v7[2](v7, v8, 0);
  }

  os_activity_scope_leave(&v24);
  v23 = *MEMORY[0x1E69E9840];
}

- (void)_handleSyncBatch:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = [(SYService *)self _newMessageHeader];
  [v8 setHeader:v9];

  v10 = [v6 sessionID];
  [v8 setSessionID:v10];

  [v8 setIndex:{objc_msgSend(v6, "index")}];
  v11 = [(SYService *)self currentSession];
  if (v11)
  {
    if ([(SYService *)self _request:v6 hasValidSessionIDForSession:v11 response:v8 completion:v7])
    {
      [v11 _handleSyncBatch:v6 response:v8 completion:v7];
    }
  }

  else
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_ERROR))
    {
      [SYService _handleSyncBatch:completion:];
    }

    v12 = [SYErrorInfo alloc];
    v13 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:2004 userInfo:0];
    v14 = [(SYErrorInfo *)v12 initWithError:v13];
    [v8 setError:v14];

    v15 = [v6 sessionID];
    v16 = UserInfoDictionaryWithAssociatedSessionID(v15);
    v7[2](v7, v8, v16);
  }
}

- (void)_handleRestartSession:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = [(SYService *)self _newMessageHeader];
  [v8 setHeader:v9];

  v10 = [v6 sessionID];
  [v8 setSessionID:v10];

  [v8 setAccepted:0];
  v11 = [(SYService *)self currentSession];
  if (v11)
  {
    if ([(SYService *)self _request:v6 hasValidSessionIDForSession:v11 response:v8 completion:v7])
    {
      [v11 _handleRestartSession:v6 response:v8 completion:v7];
    }
  }

  else
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_ERROR))
    {
      [SYService _handleRestartSession:completion:];
    }

    v12 = [SYErrorInfo alloc];
    v13 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:2004 userInfo:0];
    v14 = [(SYErrorInfo *)v12 initWithError:v13];
    [v8 setError:v14];

    v15 = [v6 sessionID];
    v16 = UserInfoDictionaryWithAssociatedSessionID(v15);
    v7[2](v7, v8, v16);
  }
}

- (void)_handleEndSession:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = [(SYService *)self _newMessageHeader];
  [v8 setHeader:v9];

  v10 = [v6 sessionID];
  [v8 setSessionID:v10];

  v11 = [(SYService *)self currentSession];
  if (v11)
  {
    if ([(SYService *)self _request:v6 hasValidSessionIDForSession:v11 response:v8 completion:v7])
    {
      [v11 _handleEndSession:v6 response:v8 completion:v7];
    }
  }

  else
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_ERROR))
    {
      [SYService _handleEndSession:completion:];
    }

    v12 = [SYErrorInfo alloc];
    v13 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:2004 userInfo:0];
    v14 = [(SYErrorInfo *)v12 initWithError:v13];
    [v8 setError:v14];

    v15 = [v6 sessionID];
    v16 = UserInfoDictionaryWithAssociatedSessionID(v15);
    v7[2](v7, v8, v16);
  }
}

- (BOOL)_handleResetResponse:(id)a3 error:(id *)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v13.opaque[0] = 0;
  v13.opaque[1] = 0;
  os_activity_scope_enter(self->_serviceActivity, &v13);
  inFlightSyncRequestIdentifier = self->_inFlightSyncRequestIdentifier;
  self->_inFlightSyncRequestIdentifier = 0;

  if (([v5 accepted] & 1) == 0)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v7 = _sync_log_facilities;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v5 error];
      v9 = v8;
      v10 = @"(no error)";
      if (v8)
      {
        v10 = v8;
      }

      *buf = 138412290;
      v15 = v10;
      _os_log_impl(&dword_1DF835000, v7, OS_LOG_TYPE_DEFAULT, "Reset Sync request was denied: %@", buf, 0xCu);
    }
  }

  os_activity_scope_leave(&v13);

  v11 = *MEMORY[0x1E69E9840];
  return 1;
}

- (BOOL)_handleStartSessionResponse:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(SYService *)self currentSession];
  if (!v7)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_ERROR))
    {
      [SYService _handleStartSessionResponse:error:];
      if (!a4)
      {
        goto LABEL_13;
      }
    }

    else if (!a4)
    {
      goto LABEL_13;
    }

    v19 = objc_alloc(MEMORY[0x1E696ABC0]);
    v20 = 2004;
LABEL_11:
    v18 = 0;
    *a4 = [v19 initWithSYError:v20 userInfo:0];
    goto LABEL_14;
  }

  v8 = [v6 sessionID];
  v9 = [v7 identifier];
  v10 = [v8 isEqualToString:v9];

  if ((v10 & 1) == 0)
  {
    if (a4)
    {
      v19 = objc_alloc(MEMORY[0x1E696ABC0]);
      v20 = 2006;
      goto LABEL_11;
    }

LABEL_13:
    v18 = 0;
    goto LABEL_14;
  }

  v11 = [v6 header];
  v12 = [v11 sender];
  v13 = [v12 generationID];
  v14 = [v7 peerGenerationIDs];
  v15 = [v6 header];
  v16 = [v15 sender];
  v17 = [v16 peerID];
  [v14 setObject:v13 forKeyedSubscript:v17];

  v18 = [v7 _handleStartSessionResponse:v6 error:a4];
LABEL_14:

  return v18;
}

- (BOOL)_handleSyncBatchResponse:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(SYService *)self currentSession];
  if (!v7)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_ERROR))
    {
      [SYService _handleStartSessionResponse:error:];
      if (!a4)
      {
        goto LABEL_13;
      }
    }

    else if (!a4)
    {
      goto LABEL_13;
    }

    v12 = objc_alloc(MEMORY[0x1E696ABC0]);
    v13 = 2004;
LABEL_11:
    v11 = 0;
    *a4 = [v12 initWithSYError:v13 userInfo:0];
    goto LABEL_14;
  }

  v8 = [v6 sessionID];
  v9 = [v7 identifier];
  v10 = [v8 isEqualToString:v9];

  if ((v10 & 1) == 0)
  {
    if (a4)
    {
      v12 = objc_alloc(MEMORY[0x1E696ABC0]);
      v13 = 2006;
      goto LABEL_11;
    }

LABEL_13:
    v11 = 0;
    goto LABEL_14;
  }

  v11 = [v7 _handleSyncBatchResponse:v6 error:a4];
LABEL_14:

  return v11;
}

- (BOOL)_handleRestartSessionResponse:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(SYService *)self currentSession];
  if (!v7)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_ERROR))
    {
      [SYService _handleStartSessionResponse:error:];
      if (!a4)
      {
        goto LABEL_13;
      }
    }

    else if (!a4)
    {
      goto LABEL_13;
    }

    v12 = objc_alloc(MEMORY[0x1E696ABC0]);
    v13 = 2004;
LABEL_11:
    v11 = 0;
    *a4 = [v12 initWithSYError:v13 userInfo:0];
    goto LABEL_14;
  }

  v8 = [v6 sessionID];
  v9 = [v7 identifier];
  v10 = [v8 isEqualToString:v9];

  if ((v10 & 1) == 0)
  {
    if (a4)
    {
      v12 = objc_alloc(MEMORY[0x1E696ABC0]);
      v13 = 2006;
      goto LABEL_11;
    }

LABEL_13:
    v11 = 0;
    goto LABEL_14;
  }

  v11 = [v7 _handleRestartSessionResponse:v6 error:a4];
LABEL_14:

  return v11;
}

- (BOOL)_handleEndSessionResponse:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(SYService *)self currentSession];
  if (!v7)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_ERROR))
    {
      [SYService _handleStartSessionResponse:error:];
      if (!a4)
      {
        goto LABEL_13;
      }
    }

    else if (!a4)
    {
      goto LABEL_13;
    }

    v12 = objc_alloc(MEMORY[0x1E696ABC0]);
    v13 = 2004;
LABEL_11:
    v11 = 0;
    *a4 = [v12 initWithSYError:v13 userInfo:0];
    goto LABEL_14;
  }

  v8 = [v6 sessionID];
  v9 = [v7 identifier];
  v10 = [v8 isEqualToString:v9];

  if ((v10 & 1) == 0)
  {
    if (a4)
    {
      v12 = objc_alloc(MEMORY[0x1E696ABC0]);
      v13 = 2006;
      goto LABEL_11;
    }

LABEL_13:
    v11 = 0;
    goto LABEL_14;
  }

  v11 = [v7 _handleEndSessionResponse:v6 error:a4];
LABEL_14:

  return v11;
}

- (void)_handleError:(id)a3
{
  v4 = a3;
  v5 = [v4 persistentUserInfo];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegateQueue = self->_delegateQueue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __26__SYService__handleError___block_invoke;
    v10[3] = &unk_1E86CA0F8;
    v10[4] = self;
    v11 = v4;
    v12 = v5;
    v9 = v10;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___dispatch_sync_autoreleased_block_invoke;
    block[3] = &unk_1E86CAA90;
    v14 = v9;
    dispatch_sync(delegateQueue, block);
  }
}

void __26__SYService__handleError___block_invoke(void *a1)
{
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v2 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1DF835000, v2, OS_LOG_TYPE_INFO, "Delegate: -service:encounteredError:context:", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1[4] + 48));
  [WeakRetained service:a1[4] encounteredError:a1[5] context:a1[6]];
}

- (void)_peerRejectedVersion:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 supportedVersionsCount];
  v9 = v8;
  if (v8)
  {
    v10 = 0;
    while (1)
    {
      v11 = [v6 supportedVersionsAtIndex:v10];
      if ((v11 - 3) >= 0xFFFFFFFE)
      {
        break;
      }

      if (v9 == ++v10)
      {
        goto LABEL_5;
      }
    }

    v12 = v11;
    os_unfair_lock_lock(&self->_flagLock);
    self->_flags = (*&self->_flags & 0xFFFFFE3F | (v12 << 6));
    os_unfair_lock_unlock(&self->_flagLock);
    inFlightSyncRequestIdentifier = self->_inFlightSyncRequestIdentifier;
    v14 = [v6 inReplyTo];
    LODWORD(inFlightSyncRequestIdentifier) = [(NSString *)inFlightSyncRequestIdentifier isEqualToString:v14];

    if (inFlightSyncRequestIdentifier)
    {
      v15 = self->_inFlightSyncRequestIdentifier;
      self->_inFlightSyncRequestIdentifier = 0;

      [(SYService *)self _sendResetRequest];
    }

    else
    {
      [(SYService *)self _swapSessionForVersionChange];
    }
  }

  else
  {
LABEL_5:
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_ERROR))
    {
      [SYService _peerRejectedVersion:completion:];
    }
  }

  (*(v7 + 2))(v7, 0, 0);
}

- (void)_swapSessionForVersionChange
{
  v3 = self->_currentSession;
  v4 = v3;
  if (v3)
  {
    queue = self->_queue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __41__SYService__swapSessionForVersionChange__block_invoke;
    v6[3] = &unk_1E86C9E90;
    v6[4] = self;
    v7 = v3;
    dispatch_async(queue, v6);
  }
}

void __41__SYService__swapSessionForVersionChange__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _makeSessionForDeltaSync:{objc_msgSend(*(a1 + 40), "isResetSync") ^ 1}];
  [*(a1 + 40) _supercededWithSession:v2];
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
  v5 = v2;

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41__SYService__swapSessionForVersionChange__block_invoke_2;
  v6[3] = &unk_1E86C9E68;
  v6[4] = *(a1 + 32);
  [v5 start:v6];
}

void __41__SYService__swapSessionForVersionChange__block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v6 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v5;
      _os_log_impl(&dword_1DF835000, v6, OS_LOG_TYPE_DEFAULT, "Swapped-out session (version rejection) failed to start: %@", buf, 0xCu);
    }

    v7 = objc_alloc(MEMORY[0x1E696ABC0]);
    v11 = *MEMORY[0x1E696AA08];
    v12 = v5;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v9 = [v7 initWithSYError:2018 userInfo:v8];

    [*(a1 + 32) _handleError:v9];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)sendData:(id)a3 options:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(self->_serviceActivity, &state);
  v11 = [v10 copy];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __61__SYService_AtomicTransactions__sendData_options_completion___block_invoke;
  v15[3] = &unk_1E86CA1B8;
  v16 = v8;
  v17 = self;
  v18 = v9;
  v19 = v11;
  v12 = v11;
  v13 = v9;
  v14 = v8;
  _os_activity_initiate(&dword_1DF835000, "Send OOB Data", OS_ACTIVITY_FLAG_DEFAULT, v15);

  os_activity_scope_leave(&state);
}

void __61__SYService_AtomicTransactions__sendData_options_completion___block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  [v2 setPayload:*(a1 + 32)];
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5 = *(v4 + 56);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__SYService_AtomicTransactions__sendData_options_completion___block_invoke_2;
  v7[3] = &unk_1E86CA1B8;
  v7[4] = v4;
  v8 = v2;
  v9 = v3;
  v10 = *(a1 + 56);
  v6 = v2;
  dispatch_async(v5, v7);
}

void __61__SYService_AtomicTransactions__sendData_options_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = v2[14];
  v5 = [v2 priority];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__SYService_AtomicTransactions__sendData_options_completion___block_invoke_3;
  v7[3] = &unk_1E86CA9A0;
  v6 = *(a1 + 48);
  v8 = *(a1 + 56);
  [v4 enqueueSyncRequest:v3 withMessageID:106 priority:v5 options:v6 userContext:0 callback:v7];
}

- (BOOL)sendData:(id)a3 options:(id)a4 identifier:(id *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(self->_serviceActivity, &state);
  v12 = dispatch_group_create();
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__5;
  v40 = __Block_byref_object_dispose__5;
  v41 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__5;
  v34 = __Block_byref_object_dispose__5;
  v35 = 0;
  dispatch_group_enter(v12);
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __67__SYService_AtomicTransactions__sendData_options_identifier_error___block_invoke;
  v25 = &unk_1E86CA9C8;
  v27 = &v42;
  v28 = &v36;
  v29 = &v30;
  v13 = v12;
  v26 = v13;
  [(SYService *)self sendData:v10 options:v11 completion:&v22];
  [(SYService *)self defaultMessageTimeout:v22];
  v15 = v14;
  v16 = [v11 objectForKeyedSubscript:@"SYServiceOptionMessageTimeout"];

  if (v16)
  {
    v17 = [v11 objectForKeyedSubscript:@"SYServiceOptionMessageTimeout"];
    [v17 doubleValue];
    v15 = v18;
  }

  v19 = dispatch_walltime(0, (v15 * 1000000000.0));
  if (dispatch_group_wait(v13, v19))
  {
    v20 = 0;
    if (a6)
    {
      *a6 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:2007 userInfo:0];
    }
  }

  else
  {
    if (a5)
    {
      *a5 = v37[5];
    }

    if (a6)
    {
      *a6 = v31[5];
    }

    v20 = *(v43 + 24);
  }

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v36, 8);

  _Block_object_dispose(&v42, 8);
  os_activity_scope_leave(&state);

  return v20 & 1;
}

void __67__SYService_AtomicTransactions__sendData_options_identifier_error___block_invoke(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  *(*(*(a1 + 40) + 8) + 24) = a2;
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
  v14 = v7;

  v11 = *(*(a1 + 56) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v8;
  v13 = v8;

  dispatch_group_leave(*(a1 + 32));
}

- (void)dataStreamWithMetadata:(id)a3 options:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(self->_serviceActivity, &state);
  v11 = [v10 copy];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __75__SYService_AtomicTransactions__dataStreamWithMetadata_options_completion___block_invoke;
  v15[3] = &unk_1E86CA1B8;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v11;
  v12 = v11;
  v13 = v9;
  v14 = v8;
  _os_activity_initiate(&dword_1DF835000, "OOB Data Stream", OS_ACTIVITY_FLAG_DEFAULT, v15);

  os_activity_scope_leave(&state);
}

void __75__SYService_AtomicTransactions__dataStreamWithMetadata_options_completion___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__SYService_AtomicTransactions__dataStreamWithMetadata_options_completion___block_invoke_2;
  block[3] = &unk_1E86CA1B8;
  v7 = *(a1 + 32);
  v2 = *(v7 + 56);
  v3 = *(&v7 + 1);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  dispatch_async(v2, block);
}

void __75__SYService_AtomicTransactions__dataStreamWithMetadata_options_completion___block_invoke_2(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = v2[14];
  v5 = [v2 priority];
  v6 = a1[6];
  v9 = 0;
  v7 = [v4 outputStreamWithMetadata:v3 priority:v5 options:v6 context:0 error:&v9];
  v8 = v9;
  (*(a1[7] + 16))();
}

- (id)dataStreamWithMetadata:(id)a3 options:(id)a4 identifier:(id *)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(self->_serviceActivity, &state);
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__5;
  v24 = __Block_byref_object_dispose__5;
  v25 = 0;
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __81__SYService_AtomicTransactions__dataStreamWithMetadata_options_identifier_error___block_invoke;
  activity_block[3] = &unk_1E86CAA18;
  activity_block[4] = self;
  v16 = v9;
  v17 = v10;
  v18 = &v20;
  v19 = a6;
  v11 = v10;
  v12 = v9;
  _os_activity_initiate(&dword_1DF835000, "OOB Data Stream", OS_ACTIVITY_FLAG_DEFAULT, activity_block);

  v13 = v21[5];
  _Block_object_dispose(&v20, 8);

  os_activity_scope_leave(&state);

  return v13;
}

void __81__SYService_AtomicTransactions__dataStreamWithMetadata_options_identifier_error___block_invoke(uint64_t a1)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __81__SYService_AtomicTransactions__dataStreamWithMetadata_options_identifier_error___block_invoke_2;
  v7[3] = &unk_1E86CA9F0;
  v2 = *(a1 + 56);
  v6 = *(a1 + 32);
  v3 = *(v6 + 56);
  v4 = *(&v6 + 1);
  *&v5 = *(a1 + 48);
  *(&v5 + 1) = v2;
  v8 = v6;
  v9 = v5;
  v10 = *(a1 + 64);
  _dispatch_sync_safe_tagged(v3, v6, v7);
}

uint64_t __81__SYService_AtomicTransactions__dataStreamWithMetadata_options_identifier_error___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 112) outputStreamWithMetadata:*(a1 + 40) priority:objc_msgSend(*(a1 + 32) options:"priority") context:*(a1 + 48) error:{0, *(a1 + 64)}];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)setCustomIDSOptions:(id)a3
{
  v4 = [a3 copy];
  customIDSOptions = self->_customIDSOptions;
  self->_customIDSOptions = v4;

  MEMORY[0x1EEE66BB8](v4, customIDSOptions);
}

- (BOOL)hasPairingStore
{
  os_unfair_lock_lock(&self->_flagLock);
  v3 = (*&self->_flags >> 3) & 1;
  os_unfair_lock_unlock(&self->_flagLock);
  return v3;
}

- (void)_v1_handleFullSyncRequest:(id)a3 completion:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v25.opaque[0] = 0;
  v25.opaque[1] = 0;
  os_activity_scope_enter(self->_serviceActivity, &v25);
  v8 = objc_opt_new();
  v9 = [(SYService *)self _newMessageHeader];
  [v8 setHeader:v9];

  v10 = [v6 syncID];
  [v8 setRequestSyncID:v10];

  [v8 setAccepted:0];
  if ([(SYService *)self isMasterStore])
  {
    v11 = [(SYService *)self currentSession];
    if (v11)
    {
      Current = CFAbsoluteTimeGetCurrent();
      [v11 birthDate];
      if (Current - v13 <= 1800.0)
      {
        if (_sync_log_facilities_pred != -1)
        {
          [SYIncomingSyncAllObjectsSession _continueProcessing];
        }

        v19 = qword_1EDE73420;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [v11 identifier];
          *buf = 138543362;
          v27 = v20;
          _os_log_impl(&dword_1DF835000, v19, OS_LOG_TYPE_DEFAULT, "Rejecting full-sync request: session (%{public}@) in progress", buf, 0xCu);
        }

        v21 = [SYErrorInfo alloc];
        v22 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:2005 userInfo:0];
        v23 = [(SYErrorInfo *)v21 initWithError:v22];
        [v8 setError:v23];

        v14 = [v6 syncID];
        v15 = UserInfoDictionaryWithAssociatedSessionID(v14);
        v7[2](v7, v8, v15);
        goto LABEL_16;
      }

      [v11 cancel];
    }

    [v8 setAccepted:1];
    [(SYService *)self setNeedsResetSync];
    v14 = [v6 syncID];
    v15 = UserInfoDictionaryWithAssociatedSessionID(v14);
    v7[2](v7, v8, v15);
LABEL_16:

    goto LABEL_17;
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  if (os_log_type_enabled(_sync_log_facilities, 0x90u))
  {
    [SYService _handleResetRequest:completion:];
  }

  v16 = [SYErrorInfo alloc];
  v17 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:2024 userInfo:0];
  v18 = [(SYErrorInfo *)v16 initWithError:v17];
  [v8 setError:v18];

  v11 = [v6 syncID];
  v14 = UserInfoDictionaryWithAssociatedSessionID(v11);
  v7[2](v7, v8, v14);
LABEL_17:

  os_activity_scope_leave(&v25);
  v24 = *MEMORY[0x1E69E9840];
}

- (void)_v1_handleSyncAllObjects:(id)a3 completion:(id)a4
{
  v60 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = [v6 syncID];
  [v8 setSyncID:v9];

  v10 = [(SYService *)self currentSession];
  if (!v10)
  {
    goto LABEL_4;
  }

  Current = CFAbsoluteTimeGetCurrent();
  [(SYSession *)v10 birthDate];
  if (Current - v12 > 1800.0)
  {
    [(SYSession *)v10 cancel];
LABEL_4:
    v13 = [[SYIncomingSyncAllObjectsSession alloc] initWithService:self message:v6 completion:v7];
    v14 = v10;
    v15 = v13;

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v48 = 0;
    v49 = &v48;
    v50 = 0x2020000000;
    v51 = 0;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v53 = 0x3032000000;
    v54 = __Block_byref_object_copy__5;
    v55 = __Block_byref_object_dispose__5;
    v56 = 0;
    delegateQueue = self->_delegateQueue;
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __71__SYService_CompanionSyncProtoV1___v1_handleSyncAllObjects_completion___block_invoke;
    v42[3] = &unk_1E86CA7F0;
    v46 = &v48;
    v18 = WeakRetained;
    v43 = v18;
    v44 = self;
    obj = v15;
    v10 = v15;
    v45 = v10;
    p_buf = &buf;
    v19 = v42;
    *block = MEMORY[0x1E69E9820];
    *&block[8] = 3221225472;
    *&block[16] = ___dispatch_sync_autoreleased_block_invoke;
    v58 = &unk_1E86CAA90;
    v59 = v19;
    dispatch_sync(delegateQueue, block);

    if (v49[3])
    {
      if (self->_currentSession)
      {
        if (_sync_log_facilities_pred != -1)
        {
          [SYIncomingSyncAllObjectsSession _continueProcessing];
        }

        v20 = qword_1EDE73420;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          _SYObfuscate(self->_currentSession);
          objc_claimAutoreleasedReturnValue();
          [SYService _handleStartSession:completion:];
        }
      }

      [(SYSyncEngine *)self->_syncEngine beginSession];
      if ([(_SYMultiSuspendableQueue *)self->_sessionQueue isSuspended])
      {
        _os_assumes_log();
        [SYService _processPendingChanges];
      }

      [(_SYMultiSuspendableQueue *)self->_sessionQueue suspend];
      if (![(_SYMultiSuspendableQueue *)self->_sessionQueue isSuspended])
      {
        _os_assumes_log();
        [SYService _processPendingChanges];
      }

      objc_storeStrong(&self->_currentSession, obja);
      objc_initWeak(&location, self);
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __71__SYService_CompanionSyncProtoV1___v1_handleSyncAllObjects_completion___block_invoke_490;
      v39[3] = &unk_1E86CAA40;
      objc_copyWeak(&v40, &location);
      [(SYIncomingFullSyncSession *)v10 start:v39];
      objc_destroyWeak(&v40);
      objc_destroyWeak(&location);
    }

    else
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v29 = qword_1EDE73420;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = _SYObfuscate(v10);
        v31 = _SYObfuscate(*(*(&buf + 1) + 40));
        *block = 138543618;
        *&block[4] = v30;
        *&block[12] = 2114;
        *&block[14] = v31;
        _os_log_impl(&dword_1DF835000, v29, OS_LOG_TYPE_DEFAULT, "Delegate rejected incoming sync session (%{public}@) with error %{public}@", block, 0x16u);
      }

      v32 = [(SYService *)self _newMessageHeader];
      [v8 setHeader:v32];

      v33 = [SYErrorInfo alloc];
      v34 = [(SYErrorInfo *)v33 initWithError:*(*(&buf + 1) + 40)];
      [v8 setError:v34];

      v35 = [(SYSession *)v10 wrappedUserContext];
      v7[2](v7, v8, v35);
    }

    _Block_object_dispose(&buf, 8);
    _Block_object_dispose(&v48, 8);
    goto LABEL_27;
  }

  v21 = [(SYService *)self _newMessageHeader];
  [v8 setHeader:v21];

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v22 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
  {
    v23 = v22;
    v24 = [(SYSession *)v10 identifier];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v24;
    _os_log_impl(&dword_1DF835000, v23, OS_LOG_TYPE_DEFAULT, "Rejecting sync-all-objects: session (%{public}@) in progress", &buf, 0xCu);
  }

  v25 = [SYErrorInfo alloc];
  v26 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:2005 userInfo:0];
  v27 = [(SYErrorInfo *)v25 initWithError:v26];
  [v8 setError:v27];

  v18 = [v6 syncID];
  v28 = UserInfoDictionaryWithAssociatedSessionID(v18);
  v7[2](v7, v8, v28);

LABEL_27:
  v36 = *MEMORY[0x1E69E9840];
}

void __71__SYService_CompanionSyncProtoV1___v1_handleSyncAllObjects_completion___block_invoke(void *a1)
{
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v2 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1DF835000, v2, OS_LOG_TYPE_INFO, "Delegate: -service:startSession:error:", buf, 2u);
  }

  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v9 = 0;
  v6 = [v3 service:v4 startSession:v5 error:&v9];
  v7 = v9;
  v8 = v9;
  *(*(a1[7] + 8) + 24) = v6;
  if ((*(*(a1[7] + 8) + 24) & 1) == 0)
  {
    objc_storeStrong((*(a1[8] + 8) + 40), v7);
  }
}

void __71__SYService_CompanionSyncProtoV1___v1_handleSyncAllObjects_completion___block_invoke_490(uint64_t a1, char a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (a2 & 1) == 0)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v7 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = _SYObfuscate(v5);
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_1DF835000, v8, OS_LOG_TYPE_DEFAULT, "Incoming v1 SyncAllObjects session failed to start: %{public}@. Error response message will be delivered by the session when it's completed.", &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_v1_handleBatchSyncStart:(id)a3 completion:(id)a4
{
  v56 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!self->_rejectingV1SyncSessions)
  {
    v8 = objc_opt_new();
    rejectingV1SyncSessions = self->_rejectingV1SyncSessions;
    self->_rejectingV1SyncSessions = v8;
  }

  v10 = [(SYService *)self currentSession];
  if (!v10)
  {
    goto LABEL_6;
  }

  Current = CFAbsoluteTimeGetCurrent();
  [(SYSession *)v10 birthDate];
  if (Current - v12 > 1800.0)
  {
    [(SYSession *)v10 cancel];
LABEL_6:
    v13 = [[SYIncomingBatchSyncSession alloc] initWithService:self];

    v14 = [v6 syncID];
    [(SYSession *)v13 setIdentifier:v14];

    v15 = [v6 header];
    [v15 timestamp];
    [(SYSession *)v13 setBirthDate:?];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v44 = 0;
    v45 = &v44;
    v46 = 0x2020000000;
    v47 = 0;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v49 = 0x3032000000;
    v50 = __Block_byref_object_copy__5;
    v51 = __Block_byref_object_dispose__5;
    v52 = 0;
    delegateQueue = self->_delegateQueue;
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __71__SYService_CompanionSyncProtoV1___v1_handleBatchSyncStart_completion___block_invoke;
    v38[3] = &unk_1E86CA7F0;
    v42 = &v44;
    v18 = WeakRetained;
    v39 = v18;
    v40 = self;
    v10 = v13;
    v41 = v10;
    p_buf = &buf;
    v19 = v38;
    *block = MEMORY[0x1E69E9820];
    *&block[8] = 3221225472;
    *&block[16] = ___dispatch_sync_autoreleased_block_invoke;
    v54 = &unk_1E86CAA90;
    v55 = v19;
    dispatch_sync(delegateQueue, block);

    if (v45[3])
    {
      if (self->_currentSession)
      {
        if (_sync_log_facilities_pred != -1)
        {
          [SYIncomingSyncAllObjectsSession _continueProcessing];
        }

        v20 = qword_1EDE73420;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          _SYObfuscate(self->_currentSession);
          objc_claimAutoreleasedReturnValue();
          [SYService _handleStartSession:completion:];
        }
      }

      [(SYSyncEngine *)self->_syncEngine beginSession];
      if ([(_SYMultiSuspendableQueue *)self->_sessionQueue isSuspended])
      {
        _os_assumes_log();
        [SYService _processPendingChanges];
      }

      [(_SYMultiSuspendableQueue *)self->_sessionQueue suspend];
      if (![(_SYMultiSuspendableQueue *)self->_sessionQueue isSuspended])
      {
        _os_assumes_log();
        [SYService _processPendingChanges];
      }

      objc_storeStrong(&self->_currentSession, v13);
      objc_initWeak(&location, self);
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __71__SYService_CompanionSyncProtoV1___v1_handleBatchSyncStart_completion___block_invoke_493;
      v32[3] = &unk_1E86CAA68;
      objc_copyWeak(&v36, &location);
      v33 = v6;
      v35 = v7;
      v34 = v10;
      [(SYIncomingFullSyncSession *)v34 start:v32];

      objc_destroyWeak(&v36);
      objc_destroyWeak(&location);
    }

    else
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v26 = qword_1EDE73420;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = _SYObfuscate(v10);
        v28 = *(*(&buf + 1) + 40);
        *block = 138543618;
        *&block[4] = v27;
        *&block[12] = 2112;
        *&block[14] = v28;
        _os_log_impl(&dword_1DF835000, v26, OS_LOG_TYPE_DEFAULT, "Delegate rejected incoming sync session (%{public}@) with error %@", block, 0x16u);
      }

      v29 = self->_rejectingV1SyncSessions;
      v30 = [v6 syncID];
      [(NSMutableSet *)v29 addObject:v30];

      (*(v7 + 2))(v7, 0, 0);
    }

    _Block_object_dispose(&buf, 8);
    _Block_object_dispose(&v44, 8);

    goto LABEL_29;
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v21 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
  {
    v22 = v21;
    v23 = [(SYSession *)v10 identifier];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v23;
    _os_log_impl(&dword_1DF835000, v22, OS_LOG_TYPE_DEFAULT, "Rejecting full-sync start: session (%{public}@) in progress", &buf, 0xCu);
  }

  v24 = self->_rejectingV1SyncSessions;
  v25 = [v6 syncID];
  [(NSMutableSet *)v24 addObject:v25];

  (*(v7 + 2))(v7, 0, 0);
LABEL_29:

  v31 = *MEMORY[0x1E69E9840];
}

void __71__SYService_CompanionSyncProtoV1___v1_handleBatchSyncStart_completion___block_invoke(void *a1)
{
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v2 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1DF835000, v2, OS_LOG_TYPE_INFO, "Delegate: -service:startSession:error", buf, 2u);
  }

  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v9 = 0;
  v6 = [v3 service:v4 startSession:v5 error:&v9];
  v7 = v9;
  v8 = v9;
  *(*(a1[7] + 8) + 24) = v6;
  if ((*(*(a1[7] + 8) + 24) & 1) == 0)
  {
    objc_storeStrong((*(a1[8] + 8) + 40), v7);
  }
}

void __71__SYService_CompanionSyncProtoV1___v1_handleBatchSyncStart_completion___block_invoke_493(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if ((a2 & 1) == 0 && WeakRetained)
  {
    v4 = *(WeakRetained + 16);
    v5 = [*(a1 + 32) syncID];
    [v4 addObject:v5];

    v6 = *(WeakRetained + 5);
    *(WeakRetained + 5) = 0;

    [*(WeakRetained + 10) resume];
  }

  v7 = *(a1 + 48);
  v8 = [*(a1 + 40) wrappedUserContext];
  (*(v7 + 16))(v7, 0, v8);
}

- (void)_v1_handleBatchSyncChunk:(id)a3 completion:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = self->_currentSession;
  rejectingV1SyncSessions = self->_rejectingV1SyncSessions;
  v10 = [v6 syncID];
  if (([(NSMutableSet *)rejectingV1SyncSessions containsObject:v10]& 1) != 0)
  {
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      [(SYSession *)v8 _handleBatchChunk:v6 completion:v7];
      goto LABEL_10;
    }
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v12 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    v14 = [(SYSession *)v8 identifier];
    v24 = 138543362;
    v25 = v14;
    _os_log_impl(&dword_1DF835000, v13, OS_LOG_TYPE_DEFAULT, "Rejecting full-sync batch: session (%{public}@) in progress", &v24, 0xCu);
  }

  v15 = objc_opt_new();
  v16 = [(SYService *)self _newMessageHeader];
  [v15 setHeader:v16];

  v17 = [v6 syncID];
  [v15 setSyncID:v17];

  [v15 setChunkIndex:{objc_msgSend(v6, "chunkIndex")}];
  v18 = [SYErrorInfo alloc];
  v19 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:1002 userInfo:0];
  v20 = [(SYErrorInfo *)v18 initWithError:v19];
  [v15 setError:v20];

  v21 = [v6 syncID];
  v22 = UserInfoDictionaryWithAssociatedSessionID(v21);
  v7[2](v7, v15, v22);

LABEL_10:
  v23 = *MEMORY[0x1E69E9840];
}

- (void)_v1_handleBatchSyncEnd:(id)a3 completion:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = self->_currentSession;
  rejectingV1SyncSessions = self->_rejectingV1SyncSessions;
  v10 = [v6 syncID];
  if (([(NSMutableSet *)rejectingV1SyncSessions containsObject:v10]& 1) != 0)
  {
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      [(SYSession *)v8 _handleEndSync:v6 completion:v7];
      goto LABEL_10;
    }
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v12 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    v14 = [(SYSession *)v8 identifier];
    v24 = 138543362;
    v25 = v14;
    _os_log_impl(&dword_1DF835000, v13, OS_LOG_TYPE_DEFAULT, "Rejecting full-sync end: session (%{public}@) in progress", &v24, 0xCu);
  }

  v15 = objc_opt_new();
  v16 = [(SYService *)self _newMessageHeader];
  [v15 setHeader:v16];

  v17 = [v6 syncID];
  [v15 setSyncID:v17];

  v18 = [SYErrorInfo alloc];
  v19 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:1002 userInfo:0];
  v20 = [(SYErrorInfo *)v18 initWithError:v19];
  [v15 setError:v20];

  [v15 setErrorResolution:0];
  v21 = [v6 syncID];
  v22 = UserInfoDictionaryWithAssociatedSessionID(v21);
  v7[2](v7, v15, v22);

LABEL_10:
  v23 = *MEMORY[0x1E69E9840];
}

- (void)_v1_handleChangeMessage:(id)a3 completion:(id)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(SYService *)self currentSession];
  if (!v8)
  {
    goto LABEL_4;
  }

  Current = CFAbsoluteTimeGetCurrent();
  [(SYSession *)v8 birthDate];
  if (Current - v10 > 1800.0)
  {
    [(SYSession *)v8 cancel];
LABEL_4:
    v11 = [[SYIncomingTransactionSession alloc] initWithService:self transaction:v6 completion:v7];

    v12 = objc_opt_new();
    v13 = [v12 UUIDString];
    [(SYSession *)v11 setIdentifier:v13];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = 0;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v40 = 0x3032000000;
    v41 = __Block_byref_object_copy__5;
    v42 = __Block_byref_object_dispose__5;
    v43 = 0;
    delegateQueue = self->_delegateQueue;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __70__SYService_CompanionSyncProtoV1___v1_handleChangeMessage_completion___block_invoke;
    v29[3] = &unk_1E86CA7F0;
    v33 = &v35;
    v16 = WeakRetained;
    v30 = v16;
    v31 = self;
    v8 = v11;
    v32 = v8;
    p_buf = &buf;
    v17 = v29;
    *block = MEMORY[0x1E69E9820];
    *&block[8] = 3221225472;
    *&block[16] = ___dispatch_sync_autoreleased_block_invoke;
    v45 = &unk_1E86CAA90;
    v46 = v17;
    dispatch_sync(delegateQueue, block);

    if (v36[3])
    {
      if (self->_currentSession)
      {
        if (_sync_log_facilities_pred != -1)
        {
          [SYIncomingSyncAllObjectsSession _continueProcessing];
        }

        v18 = qword_1EDE73420;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          _SYObfuscate(self->_currentSession);
          objc_claimAutoreleasedReturnValue();
          [SYService _handleStartSession:completion:];
        }
      }

      [(SYSyncEngine *)self->_syncEngine beginSession];
      if ([(_SYMultiSuspendableQueue *)self->_sessionQueue isSuspended])
      {
        _os_assumes_log();
        [SYService _processPendingChanges];
      }

      [(_SYMultiSuspendableQueue *)self->_sessionQueue suspend];
      if (![(_SYMultiSuspendableQueue *)self->_sessionQueue isSuspended])
      {
        _os_assumes_log();
        [SYService _processPendingChanges];
      }

      objc_storeStrong(&self->_currentSession, v11);
      objc_initWeak(&location, self);
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __70__SYService_CompanionSyncProtoV1___v1_handleChangeMessage_completion___block_invoke_496;
      v26[3] = &unk_1E86CAA40;
      objc_copyWeak(&v27, &location);
      [(SYIncomingTransactionSession *)v8 start:v26];
      objc_destroyWeak(&v27);
      objc_destroyWeak(&location);
    }

    else
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v22 = qword_1EDE73420;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = _SYObfuscate(v8);
        v24 = *(*(&buf + 1) + 40);
        *block = 138543618;
        *&block[4] = v23;
        *&block[12] = 2112;
        *&block[14] = v24;
        _os_log_impl(&dword_1DF835000, v22, OS_LOG_TYPE_DEFAULT, "Delegate rejected incoming v1 transaction (%{public}@) with error %@", block, 0x16u);
      }

      (*(v7 + 2))(v7, 0, 0);
    }

    _Block_object_dispose(&buf, 8);
    _Block_object_dispose(&v35, 8);

    goto LABEL_27;
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v19 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
  {
    v20 = v19;
    v21 = [(SYSession *)v8 identifier];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v21;
    _os_log_impl(&dword_1DF835000, v20, OS_LOG_TYPE_DEFAULT, "Rejecting delta change: session (%{public}@) in progress", &buf, 0xCu);
  }

  (*(v7 + 2))(v7, 0, 0);
LABEL_27:

  v25 = *MEMORY[0x1E69E9840];
}

void __70__SYService_CompanionSyncProtoV1___v1_handleChangeMessage_completion___block_invoke(void *a1)
{
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v2 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1DF835000, v2, OS_LOG_TYPE_INFO, "Delegate: -service:startSession:error:", buf, 2u);
  }

  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v9 = 0;
  v6 = [v3 service:v4 startSession:v5 error:&v9];
  v7 = v9;
  v8 = v9;
  *(*(a1[7] + 8) + 24) = v6;
  if ((*(*(a1[7] + 8) + 24) & 1) == 0)
  {
    objc_storeStrong((*(a1[8] + 8) + 40), v7);
  }
}

void __70__SYService_CompanionSyncProtoV1___v1_handleChangeMessage_completion___block_invoke_496(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ((a2 & 1) == 0 && WeakRetained)
  {
    v4 = WeakRetained[5];
    WeakRetained[5] = 0;
    v5 = WeakRetained;

    [v5[10] resume];
    WeakRetained = v5;
  }
}

- (BOOL)_v1_handleFullSyncRequestAck:(id)a3 error:(id *)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  os_activity_scope_enter(self->_serviceActivity, &v12);
  inFlightSyncRequestIdentifier = self->_inFlightSyncRequestIdentifier;
  self->_inFlightSyncRequestIdentifier = 0;

  if (([v5 accepted] & 1) == 0)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v7 = qword_1EDE73420;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v5 error];
      v9 = _SYObfuscate(v8);
      *buf = 138543362;
      v14 = v9;
      _os_log_impl(&dword_1DF835000, v7, OS_LOG_TYPE_DEFAULT, "Protocol v1 full-sync-request was DENIED with error %{public}@", buf, 0xCu);
    }
  }

  os_activity_scope_leave(&v12);

  v10 = *MEMORY[0x1E69E9840];
  return 1;
}

- (BOOL)_v1_handleBatchChunkAck:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = self->_currentSession;
  rejectingV1SyncSessions = self->_rejectingV1SyncSessions;
  v9 = [v6 syncID];
  if (([(NSMutableSet *)rejectingV1SyncSessions containsObject:v9]& 1) != 0)
  {
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v11 = [(SYSession *)v7 _handleBatchAck:v6 error:a4];
      goto LABEL_11;
    }
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v12 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_1DF835000, v12, OS_LOG_TYPE_DEFAULT, "Response received for rejected v1 session", v14, 2u);
  }

  v11 = 0;
  if (a4)
  {
    *a4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:1002 userInfo:0];
  }

LABEL_11:

  return v11;
}

- (BOOL)_v1_handleBatchEndResponse:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = self->_currentSession;
  rejectingV1SyncSessions = self->_rejectingV1SyncSessions;
  v9 = [v6 syncID];
  if (([(NSMutableSet *)rejectingV1SyncSessions containsObject:v9]& 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    v11 = [(SYSession *)v7 _handleBatchSyncEndResponse:v6 error:a4];
    goto LABEL_13;
  }

LABEL_3:
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v10 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_1DF835000, v10, OS_LOG_TYPE_DEFAULT, "Response received for rejected v1 session", v14, 2u);
  }

  v11 = 0;
  if (a4)
  {
    *a4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:1002 userInfo:0];
  }

LABEL_13:

  return v11;
}

- (void)initWithService:priority:qos:asMasterStore:options:.cold.2()
{
  if (_sync_log_facilities_pred != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  if (OUTLINED_FUNCTION_6_0())
  {
    OUTLINED_FUNCTION_1_4(&dword_1DF835000, v0, v1, "Queue state assumption failed: _sessionQueue.suspended", v2, v3, v4, v5, 0);
  }
}

void __41__SYService__deviceTargetabilityChanged___block_invoke_cold_5(uint64_t *a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = a2;
  v5 = [OUTLINED_FUNCTION_7() debugDescription];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v6, v7, OS_LOG_TYPE_DEBUG, v8, v9, 0xCu);

  v10 = *MEMORY[0x1E69E9840];
}

void __41__SYService__deviceTargetabilityChanged___block_invoke_cold_8(uint64_t *a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = a2;
  v5 = [OUTLINED_FUNCTION_7() debugDescription];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v6, v7, OS_LOG_TYPE_DEBUG, v8, v9, 0xCu);

  v10 = *MEMORY[0x1E69E9840];
}

void __20__SYService_resume___block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_14_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __20__SYService_resume___block_invoke_cold_4(uint64_t a1)
{
  OUTLINED_FUNCTION_14_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __20__SYService_resume___block_invoke_cold_5()
{
  _os_assumes_log();
  if (_sync_log_facilities_pred != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  if (OUTLINED_FUNCTION_6_0())
  {
    OUTLINED_FUNCTION_1_4(&dword_1DF835000, v0, v1, "Queue state assumption failed: _sessionQueue.suspended == NO", v2, v3, v4, v5, 0);
  }
}

- (void)_initializeServiceDB:.cold.6()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_swapEngineTo:.cold.3()
{
  OUTLINED_FUNCTION_5_1();
  *v1 = 67109378;
  *(v1 + 4) = v2;
  *(v1 + 8) = 2114;
  *(v1 + 10) = v3;
  _os_log_error_impl(&dword_1DF835000, v5, 0x90u, "Failed to swap to engine type %{companionsync:SYServiceEngineType}d: %{public}@", v4, 0x12u);
}

- (void)_swapEngineTo:.cold.5()
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_9_0(v1, v2, 5.8381e-34);
  _os_log_error_impl(&dword_1DF835000, v3, 0x90u, "Failed to restore original engine! I can only suspend the entire service now... %{public}@", v4, 0xCu);
}

- (void)sessionDidEnd:(void *)a1 withError:.cold.2(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_7() identifier];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v4, v5, OS_LOG_TYPE_ERROR, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_wrapUpCurrentSession:(uint64_t)a1 .cold.4(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_opt_new();
  v6 = 138543618;
  v7 = a1;
  v8 = 2114;
  v9 = v4;
  _os_log_error_impl(&dword_1DF835000, v3, OS_LOG_TYPE_ERROR, "Concluding session has birthDate in the future! birthDate = %{public}@, now = %{public}@", &v6, 0x16u);

  v5 = *MEMORY[0x1E69E9840];
}

void __35__SYService__wrapUpCurrentSession___block_invoke_2_cold_1()
{
  _os_assumes_log();
  if (_sync_log_facilities_pred != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  if (OUTLINED_FUNCTION_6_0())
  {
    OUTLINED_FUNCTION_1_4(&dword_1DF835000, v0, v1, "Queue state assumption failed: service->_sessionQueue.isSuspended == YES", v2, v3, v4, v5, 0);
  }
}

- (void)_chooseBetweenCollidingSessions:(void *)a1 :(void *)a2 .cold.2(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 identifier];
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(&dword_1DF835000, v3, OS_LOG_TYPE_DEBUG, "Asking delegate about session collision preference. We have chosen %{public}@ as the winner", v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

- (void)willAcceptMessageWithHeader:(os_log_t)log messageID:.cold.3(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 134218242;
  v5 = a2;
  v6 = 2114;
  v7 = a1;
  _os_log_error_impl(&dword_1DF835000, log, 0x90u, "Message repeated (bubble): seqno = %llu, GUID = %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)willAcceptMessageWithHeader:(void *)a1 messageID:.cold.7(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a1;
  [OUTLINED_FUNCTION_7() version];
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v3, v4, OS_LOG_TYPE_ERROR, v5, v6, 8u);

  v7 = *MEMORY[0x1E69E9840];
}

void __47__SYService_handleSyncRequest_ofType_response___block_invoke_cold_2(unsigned __int16 *a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = *(a2 + 40);
  v6 = a3;
  OUTLINED_FUNCTION_7();
  v7 = objc_opt_class();
  v13 = NSStringFromClass(v7);
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v8, v9, 0x90u, v10, v11, 0x12u);

  v12 = *MEMORY[0x1E69E9840];
}

void __52__SYService_handleFileTransfer_metadata_completion___block_invoke_175_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_enqueueIncomingStartSessionRequest:withCompletion:.cold.1()
{
  _os_assumes_log();
  if (_sync_log_facilities_pred != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  if (OUTLINED_FUNCTION_6_0())
  {
    OUTLINED_FUNCTION_1_4(&dword_1DF835000, v0, v1, "Queue state assumption failed: _queuedStartSession == nil", v2, v3, v4, v5, 0);
  }
}

- (void)_handleStartSession:completion:.cold.7()
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_9_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_8_0(&dword_1DF835000, v3, v4, "About to build a new session, but there's already one running! Currently-running session is %{public}@", v5);
}

@end