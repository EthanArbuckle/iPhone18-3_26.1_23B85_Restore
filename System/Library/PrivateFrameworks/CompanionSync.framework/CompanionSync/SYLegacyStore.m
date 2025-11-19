@interface SYLegacyStore
+ (id)fullSyncActivityDictionary;
- (BOOL)_allowDeltaSyncWithContext:(id)a3 error:(id *)a4;
- (BOOL)_checkMessageHeader:(id)a3 messageID:(id)a4;
- (BOOL)_isPairedWithDevice:(id)a3;
- (BOOL)_isUsingGenericCache;
- (BOOL)_shouldIgnoreSyncID:(id)a3;
- (BOOL)_shouldSkipNonSyncMessages;
- (BOOL)addObject:(id)a3 context:(id)a4 idsOptions:(id)a5 error:(id *)a6;
- (BOOL)deleteObject:(id)a3 context:(id)a4 idsOptions:(id)a5 error:(id *)a6;
- (BOOL)isPaired;
- (BOOL)objectChanged:(id)a3 sinceVersion:(unint64_t)a4;
- (BOOL)peerState:(id)a3 fromPeer:(id)a4 matchesExpectationForChangeCount:(unint64_t)a5 offsetAmount:(unint64_t *)a6;
- (BOOL)performBatchedSyncToCurrentDBVersion;
- (BOOL)processBatchChunkAtIndex:(unsigned int)a3 encodedObjects:(id)a4 error:(id *)a5;
- (BOOL)updateObject:(id)a3 context:(id)a4 idsOptions:(id)a5 error:(id *)a6;
- (double)timeToLive;
- (id)_batchChunkUnackedIndices;
- (id)_getPairedDeviceID;
- (id)_getPairingStorePath;
- (id)_pathForMessageCenterCache;
- (id)newFullSyncContext;
- (id)newMessageHeader;
- (int64_t)maxBytesInFlight;
- (int64_t)state;
- (void)_copyPeerClockFromMessageHeaderIfNecessary:(id)a3;
- (void)_devicePaired:(id)a3;
- (void)_deviceUnpaired:(id)a3;
- (void)_handleIDSOverflowWithError:(id)a3;
- (void)_handleObjectChanges:(id)a3 contextInfo:(id)a4 idsOptions:(id)a5 blockUntilSent:(BOOL)a6 reportError:(id)a7 notifyingTransaction:(id)a8;
- (void)_listenForPrefsChangeNotifications;
- (void)_postBatchEndMessageWithState:(id)a3 error:(id)a4 then:(id)a5;
- (void)_postBatchStartMessageWithState:(id)a3 then:(id)a4;
- (void)_postVersionRejectedForMessageID:(id)a3;
- (void)_prefsChanged;
- (void)_recordLastSeqNo:(id)a3;
- (void)_restartBatchSyncWithState:(id)a3 then:(id)a4;
- (void)_retrySync;
- (void)_sendBatchChunk:(id)a3 withState:(id)a4 then:(id)a5;
- (void)_setupMessageCenter_LOCKED;
- (void)_syncEndedWithSyncID:(id)a3;
- (void)_transaction:(id)a3 context:(id)a4 idsOptions:(id)a5 blockUntilSent:(BOOL)a6 reportError:(id)a7;
- (void)_updateMessageCenterPrefs:(id)a3;
- (void)_vectorClockUpdated;
- (void)dealloc;
- (void)didEndDeltaSync;
- (void)handleBatchSyncChunk:(id)a3 response:(id)a4;
- (void)handleBatchSyncEnd:(id)a3 response:(id)a4;
- (void)handleBatchSyncStart:(id)a3;
- (void)handleChangeMessage:(id)a3;
- (void)handleFullSyncRequest:(id)a3 response:(id)a4;
- (void)handleSyncAllObjects:(id)a3 response:(id)a4;
- (void)logChanges:(id)a3;
- (void)messageCenter:(id)a3 didReceiveUnknownRequest:(id)a4;
- (void)messageCenter:(id)a3 didResolveIDSIdentifier:(id)a4 forResponse:(id)a5;
- (void)messageCenter:(id)a3 didResolveIDSIdentifierForRequest:(id)a4;
- (void)messageCenter:(id)a3 didSuccessfullyDeliverRequestWithIdentifier:(id)a4 userInfo:(id)a5;
- (void)messageCenter:(id)a3 didSuccessfullySendRequestWithIdentifier:(id)a4 userInfo:(id)a5;
- (void)performFullSync;
- (void)performFullSyncIfNecessaryAskingDelegate:(BOOL)a3;
- (void)performFullSyncToCurrentDBVersion;
- (void)postUserNotification:(id)a3 message:(id)a4;
- (void)processBatchChunkAck:(unsigned int)a3;
- (void)processBatchSyncEnd:(unint64_t)a3;
- (void)processBatchSyncStart;
- (void)remoteStoreAllObjects:(id)a3 fromPeer:(id)a4 clock:(id)a5;
- (void)remoteStoreRequestFullSync;
- (void)sendChanges:(id)a3 context:(id)a4 options:(id)a5 sentSignal:(id)a6;
- (void)setDelegate:(id)a3;
- (void)setDeliveryQOS:(unsigned int)a3;
- (void)setMaxBytesInFlight:(int64_t)a3;
- (void)setNeedsFullSyncWithContext:(id)a3 idsOptions:(id)a4;
- (void)setTimeToLive:(double)a3;
- (void)setTracksChanges:(BOOL)a3;
- (void)setupDatabase;
- (void)setupMessageCenter;
- (void)setupPairingNotifications;
- (void)willBeginDeltaSync;
@end

@implementation SYLegacyStore

+ (id)fullSyncActivityDictionary
{
  if (fullSyncActivityDictionary_onceToken != -1)
  {
    +[SYLegacyStore fullSyncActivityDictionary];
  }

  v3 = fullSyncActivityDictionary___dict;

  return v3;
}

uint64_t __43__SYLegacyStore_fullSyncActivityDictionary__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
  v1 = fullSyncActivityDictionary___dict;
  fullSyncActivityDictionary___dict = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __79__SYLegacyStore_initWithService_isGStore_priority_isMasterStore_tracksChanges___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAllowsDeletes:1];
  [*(a1 + 32) setupPairingNotifications];
  v2 = [*(a1 + 32) _getPairedDeviceID];
  [*(a1 + 32) setPairedDeviceID:v2];

  v3 = [*(a1 + 32) pairedDeviceID];

  if (v3)
  {
    [*(a1 + 32) setupDatabase];
  }

  else
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v4 = _sync_log_facilities;
    if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1DF835000, v4, OS_LOG_TYPE_DEFAULT, "No device available from NanoRegistry at present-- SYStore will be inoperative until pairing completes.", v8, 2u);
    }
  }

  [*(a1 + 32) setTimeToLive:3600.0];
  v5 = [MEMORY[0x1E69B36C0] sharedInstance];
  v6 = [v5 pairingStorePath];

  if (v6)
  {
    [*(a1 + 32) _setupMessageCenter_LOCKED];
  }

  *(*(a1 + 32) + 168) = *(a1 + 40);
  return [*(a1 + 32) _listenForPrefsChangeNotifications];
}

- (void)dealloc
{
  if (self->_service)
  {
    v3 = +[SYLegacyStore fullSyncActivityDictionary];
    [v3 removeObjectForKey:self->_service];
  }

  overflowRetryTimer = self->_overflowRetryTimer;
  if (overflowRetryTimer)
  {
    dispatch_source_cancel(overflowRetryTimer);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 removeObserver:self];

  v7.receiver = self;
  v7.super_class = SYLegacyStore;
  [(SYLegacyStore *)&v7 dealloc];
}

- (id)_getPairedDeviceID
{
  v2 = [MEMORY[0x1E69B36C0] sharedInstance];
  v3 = [v2 pairingID];

  return v3;
}

- (id)_getPairingStorePath
{
  v2 = [MEMORY[0x1E69B36C0] sharedInstance];
  v3 = [v2 pairingStorePath];

  return v3;
}

- (id)_batchChunkUnackedIndices
{
  v2 = [(NSMutableIndexSet *)self->_batchChunkUnackedIndices copy];

  return v2;
}

- (void)_prefsChanged
{
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [v3 persistentDomainForName:@"com.apple.companionsync"];

  if (self->_messageCenter)
  {
    [(SYLegacyStore *)self _updateMessageCenterPrefs:v4];
  }
}

- (void)_updateMessageCenterPrefs:(id)a3
{
  v11 = a3;
  v4 = [v11 objectForKeyedSubscript:@"EnableTransmitWindow"];
  v5 = v4;
  if (!v4 || [v4 BOOLValue])
  {
    [(NMSMessageCenter *)self->_messageCenter setEnableTransmissionWindow:1];
    v6 = [v11 objectForKeyedSubscript:@"MaxMessagesInFlight"];

    if (v6)
    {
      v7 = [v6 unsignedIntegerValue];
    }

    else
    {
      v7 = 20;
    }

    [(NMSMessageCenter *)self->_messageCenter setMaxMessagesInFlight:v7];
    v8 = [v11 objectForKeyedSubscript:@"MinMessagesInFlight"];

    if (v8)
    {
      v9 = [v8 unsignedIntegerValue];
    }

    else
    {
      v9 = 10;
    }

    [(NMSMessageCenter *)self->_messageCenter setMinMessagesInFlight:v9];
    v5 = [v11 objectForKeyedSubscript:@"MaxBytesInFlight"];

    if (v5)
    {
      v10 = [v5 unsignedIntegerValue];
    }

    else
    {
      v10 = 1000000;
    }

    [(NMSMessageCenter *)self->_messageCenter setMaxBytesInFlight:v10];
  }
}

- (void)_listenForPrefsChangeNotifications
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _PrefsChangedNotificationCallback, @"com.apple.companionsync.prefsupdated", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)setupPairingNotifications
{
  if (![(SYLegacyStore *)self registeredNotificationHandlers])
  {
    [(SYLegacyStore *)self setRegisteredNotificationHandlers:1];
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 addObserver:self selector:sel__devicePaired_ name:*MEMORY[0x1E69B3678] object:0];

    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:self selector:sel__deviceUnpaired_ name:*MEMORY[0x1E69B3688] object:0];
  }
}

- (BOOL)isPaired
{
  v2 = [(SYLegacyStore *)self pairedDeviceID];
  v3 = v2 != 0;

  return v3;
}

- (void)setDeliveryQOS:(unsigned int)a3
{
  if ([(SYStore *)self deliveryQOS]!= a3)
  {
    queue = self->_queue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __32__SYLegacyStore_setDeliveryQOS___block_invoke;
    v6[3] = &unk_1E86CA080;
    v6[4] = self;
    v7 = a3;
    dispatch_async(queue, v6);
  }
}

void __32__SYLegacyStore_setDeliveryQOS___block_invoke(uint64_t a1)
{
  label = dispatch_queue_get_label(*(*(a1 + 32) + 8));
  v3 = dispatch_queue_attr_make_with_qos_class(0, *(a1 + 40), 0);
  v4 = dispatch_queue_create(label, v3);

  dispatch_set_target_queue(*(*(a1 + 32) + 208), v4);
  v5 = *(a1 + 32);
  v6 = *(v5 + 8);
  *(v5 + 8) = v4;
}

- (int64_t)state
{
  if (![(SYPersistentStore *)self->_persistentStore inFullSync])
  {
    return 0;
  }

  if ([(SYPersistentStore *)self->_persistentStore currentSyncSendComplete])
  {
    return 2;
  }

  return 1;
}

- (int64_t)maxBytesInFlight
{
  v2 = [(SYLegacyStore *)self messageCenter];
  v3 = [v2 maxBytesInFlight];

  return v3;
}

- (void)setMaxBytesInFlight:(int64_t)a3
{
  v4 = [(SYLegacyStore *)self messageCenter];
  [v4 setMaxBytesInFlight:a3];
}

- (BOOL)_isPairedWithDevice:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->super._qosTargetQueue);
  v5 = [(SYLegacyStore *)self pairedDeviceID];
  v6 = v5;
  if (v4)
  {
    v7 = [v4 valueForProperty:*MEMORY[0x1E69B3610]];
    v8 = [v6 isEqual:v7];
  }

  else
  {
    v8 = v5 != 0;
  }

  return v8;
}

- (BOOL)_isUsingGenericCache
{
  dispatch_assert_queue_V2(self->super._qosTargetQueue);
  v3 = [(SYLegacyStore *)self pairedDeviceID];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [(SYLegacyStore *)self persistentStore];
    v4 = v5 != 0;
  }

  return v4;
}

- (void)_deviceUnpaired:(id)a3
{
  v4 = a3;
  [(NMSMessageCenter *)self->_messageCenter _obliterate];
  qosTargetQueue = self->super._qosTargetQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__SYLegacyStore__deviceUnpaired___block_invoke;
  v7[3] = &unk_1E86C9E90;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(qosTargetQueue, v7);
}

void __33__SYLegacyStore__deviceUnpaired___block_invoke(uint64_t a1)
{
  v2 = _os_activity_create(&dword_1DF835000, "CompanionSync Unpairing", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v3 = [*(a1 + 32) userInfo];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69B3658]];

  if (([*(a1 + 40) _isUsingGenericCache] & 1) != 0 || objc_msgSend(*(a1 + 40), "_isPairedWithDevice:", v4))
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v5 = _sync_log_facilities;
    if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DF835000, v5, OS_LOG_TYPE_DEFAULT, "NR Device Unpaired", buf, 2u);
    }

    v6 = [*(a1 + 40) queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __33__SYLegacyStore__deviceUnpaired___block_invoke_87;
    block[3] = &unk_1E86C9FB0;
    block[4] = *(a1 + 40);
    dispatch_async(v6, block);
  }
}

void __33__SYLegacyStore__deviceUnpaired___block_invoke_87(uint64_t a1)
{
  [*(a1 + 32) setPersistentStore:0];
  [*(a1 + 32) setPairedDeviceID:0];
  v2 = *(a1 + 32);
  v3 = *(v2 + 232);
  *(v2 + 232) = 0;

  v4 = *(a1 + 32);
  if ((v4[8] & 0x1000) != 0)
  {
    v5 = [v4 delegate];
    [v5 syncStoreDidUnpair:*(a1 + 32)];
  }
}

- (void)_devicePaired:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __31__SYLegacyStore__devicePaired___block_invoke;
  v7[3] = &unk_1E86C9E90;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __31__SYLegacyStore__devicePaired___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) pairedDeviceID];

  if (!v2)
  {
    v5 = _os_activity_create(&dword_1DF835000, "CompanionSync Pairing", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __31__SYLegacyStore__devicePaired___block_invoke_88;
    block[3] = &unk_1E86C9FB0;
    block[4] = *(a1 + 32);
    os_activity_apply(v5, block);
    v10 = *(a1 + 32);
    if ((v10[8] & 0x800) != 0)
    {
      v11 = [v10 delegate];
      [v11 syncStoreDidSetupAfterPairing:*(a1 + 32)];
    }

    goto LABEL_8;
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v3 = _sync_log_facilities;
  if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v5 = v3;
    v6 = [v4 userInfo];
    v7 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69B3658]];
    v8 = [v7 valueForProperty:*MEMORY[0x1E69B3610]];
    v9 = [*(a1 + 32) pairedDeviceID];
    *buf = 138412546;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&dword_1DF835000, v5, OS_LOG_TYPE_DEFAULT, "Ignoring newly-paired device '%@' when already paired with device '%@'. Please file an enhancement request against Pepper CompanionSync for multiple-paired-device support if you see this message.", buf, 0x16u);

LABEL_8:
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __31__SYLegacyStore__devicePaired___block_invoke_88(uint64_t a1)
{
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v2 = _sync_log_facilities;
  if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1DF835000, v2, OS_LOG_TYPE_DEFAULT, "NR Device Paired", v6, 2u);
  }

  v3 = [MEMORY[0x1E69B36C0] sharedInstance];
  v4 = [v3 pairingID];
  [*(a1 + 32) setPairedDeviceID:v4];

  [*(a1 + 32) setupDatabase];
  return [*(a1 + 32) _setupMessageCenter_LOCKED];
}

- (void)_vectorClockUpdated
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = [(SYVectorClock *)self->_vectorClock jsonRepresentation];
  [(SYPersistentStore *)self->_persistentStore setVectorClockJSON:v3];
}

- (id)_pathForMessageCenterCache
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69B36C0] sharedInstance];
  v3 = [v2 pairingStorePath];
  v4 = [v3 stringByAppendingPathComponent:@"CompanionSync"];

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v5 = _sync_log_facilities;
  if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = v4;
    _os_log_impl(&dword_1DF835000, v5, OS_LOG_TYPE_DEFAULT, "Got pairing store path: %{public}@", &v8, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];

  return v4;
}

- (BOOL)_checkMessageHeader:(id)a3 messageID:(id)a4
{
  v55 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 sequenceNumber];
  v9 = MEMORY[0x1E695DF00];
  [v6 timestamp];
  v46 = [v9 dateWithTimeIntervalSinceReferenceDate:?];
  v10 = [(SYPersistentStore *)self->_persistentStore lastMessageReceived];
  v11 = [(SYLegacyStore *)self persistentStore];
  v12 = [v6 sender];
  v13 = [v12 peerID];
  v14 = [v11 sequenceNumberIsDuplicate:v8 forPeer:v13];

  if (v14)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v15 = v7;
    v16 = v46;
    v17 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v48 = v8;
      v49 = 2114;
      v50 = v7;
      _os_log_impl(&dword_1DF835000, v17, OS_LOG_TYPE_DEFAULT, "Possible duplicate message received with seqno %qu and ID %{public}@. Comparing timestamps.", buf, 0x16u);
    }

    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v18 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v18;
      [v6 timestamp];
      v21 = v20;
      [v10 timeIntervalSinceReferenceDate];
      *buf = 134218754;
      v48 = v21;
      v49 = 2114;
      v50 = v46;
      v51 = 2048;
      v52 = v22;
      v53 = 2114;
      v54 = v10;
      _os_log_impl(&dword_1DF835000, v19, OS_LOG_TYPE_DEFAULT, "This message timestamp = %.04g (%{public}@) vs. last message timestamp = %.04g (%{public}@)", buf, 0x2Au);
    }

    v23 = [v10 earlierDate:v46];

    if (v23 != v10)
    {
      v24 = +[SYTransportLog sharedInstance];
      v25 = [v24 oslog];

      if (os_log_type_enabled(v25, 0x90u))
      {
        [(SYLegacyStore *)v7 _checkMessageHeader:v8 messageID:v25];
      }

LABEL_35:
      v42 = 0;
      goto LABEL_36;
    }

    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v26 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DF835000, v26, OS_LOG_TYPE_DEFAULT, "Sequence numbers were reset; clearing our received seqno set.", buf, 2u);
    }

    persistentStore = self->_persistentStore;
    v28 = [v6 sender];
    v29 = [v28 peerID];
    [(SYPersistentStore *)persistentStore resetSequenceNumbersForPeer:v29];
  }

  v30 = [(SYLegacyStore *)self persistentStore];
  v31 = [v6 sender];
  v32 = [v31 peerID];
  v33 = [v30 lastSequenceNumberForPeerID:v32];

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v15 = v7;
  v34 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    v48 = v8;
    v49 = 2048;
    v50 = v33;
    _os_log_impl(&dword_1DF835000, v34, OS_LOG_TYPE_INFO, "Received seqno=%llu, last seen=%llu", buf, 0x16u);
  }

  if (v8 != v33 + 1)
  {
    v35 = +[SYTransportLog sharedInstance];
    v36 = [v35 oslog];

    if (os_log_type_enabled(v36, 0x90u))
    {
      *buf = 138543874;
      v48 = v7;
      v49 = 2048;
      v50 = v8;
      v51 = 2048;
      v52 = v33;
      _os_log_error_impl(&dword_1DF835000, v36, 0x90u, "Out of order delivery or dropped message detected on receipt of message with ID %{public}@. Message sequence number = %llu, last received sequence number = %llu", buf, 0x20u);
    }

    if (+[SYLogs shouldDisplaySyncErrorMessage])
    {
      v37 = [(SYLegacyStore *)self service];
      v38 = _ClientNameForServiceName(v37);
      v39 = [@"Message out of order in " stringByAppendingString:v38];
      [(SYLegacyStore *)self postUserNotification:v39 message:@"File against Pepper CompanionSync|1.0, attach all logs"];
    }
  }

  if ([v6 version] >= 2)
  {
    v16 = v46;
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v43 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_ERROR))
    {
      [SYLegacyStore _checkMessageHeader:v43 messageID:?];
    }

    [(SYLegacyStore *)self _postVersionRejectedForMessageID:v7];
    goto LABEL_35;
  }

  v40 = objc_opt_new();
  v41 = [(SYLegacyStore *)self persistentStore];
  [v41 setLastMessageReceived:v40];

  v42 = 1;
  v16 = v46;
LABEL_36:

  v44 = *MEMORY[0x1E69E9840];
  return v42;
}

- (void)_postVersionRejectedForMessageID:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__SYLegacyStore__postVersionRejectedForMessageID___block_invoke;
  v7[3] = &unk_1E86C9E90;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __50__SYLegacyStore__postVersionRejectedForMessageID___block_invoke(uint64_t a1)
{
  v3 = objc_opt_new();
  v2 = [*(a1 + 32) newMessageHeader];
  [v3 setHeader:v2];

  [v3 setInReplyTo:*(a1 + 40)];
  [v3 setSupportedVersions:&_postVersionRejectedForMessageID__supportedVersions count:2];
  [*(a1 + 32) sendMessage:v3 ofType:0x7FFFLL respondingTo:0 userInfo:0 idsOptions:0];
}

- (void)_recordLastSeqNo:(id)a3
{
  v4 = a3;
  v5 = [(SYLegacyStore *)self persistentStore];
  v6 = [v4 sequenceNumber];
  v7 = [v4 sender];

  v8 = [v7 peerID];
  v12 = 0;
  v9 = [v5 setLastSequenceNumber:v6 fromPeer:v8 error:&v12];
  v10 = v12;

  if ((v9 & 1) == 0)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v11 = _sync_log_facilities;
    if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_ERROR))
    {
      [SYLegacyStore _recordLastSeqNo:v11];
    }
  }
}

- (void)_handleIDSOverflowWithError:(id)a3
{
  v5 = a3;
  if (!self->_overflowRetryTimer)
  {
    v6 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_queue);
    overflowRetryTimer = self->_overflowRetryTimer;
    self->_overflowRetryTimer = v6;

    objc_storeStrong(&self->_overflowRetryError, a3);
    objc_initWeak(&location, self);
    v8 = self->_overflowRetryTimer;
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __45__SYLegacyStore__handleIDSOverflowWithError___block_invoke;
    v15 = &unk_1E86CA190;
    objc_copyWeak(&v16, &location);
    dispatch_source_set_event_handler(v8, &v12);
    v9 = self->_overflowRetryTimer;
    v10 = dispatch_time(0, 300000000000);
    dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0x6FC23AC00uLL);
    dispatch_resume(self->_overflowRetryTimer);
    v11 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:{300.0, v12, v13, v14, v15}];
    [(SYPersistentStore *)self->_persistentStore setOverflowResyncTime:v11];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

void __45__SYLegacyStore__handleIDSOverflowWithError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[23] setOverflowResyncTime:0];
    [v2 setNeedsFullSync];
    WeakRetained = v2;
  }
}

- (void)setupMessageCenter
{
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__SYLegacyStore_setupMessageCenter__block_invoke;
  block[3] = &unk_1E86C9FB0;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_setupMessageCenter_LOCKED
{
  messageCenter = self->_messageCenter;
  self->_messageCenter = 0;

  v4 = [(SYLegacyStore *)self pairedDeviceID];

  if (v4)
  {
    v5 = [(SYLegacyStore *)self _pathForMessageCenterCache];
    if (v5)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_DEBUG))
      {
        [SYLegacyStore _setupMessageCenter_LOCKED];
      }

      v6 = [[NMSMessageCenter alloc] initWithIDSServiceIdentifier:self->_service launchOnDemandNotification:0 cacheFolderPath:v5];
      v7 = self->_messageCenter;
      self->_messageCenter = v6;

      v8 = [MEMORY[0x1E695E000] standardUserDefaults];
      v9 = [v8 persistentDomainForName:@"com.apple.companionsync"];

      [(SYLegacyStore *)self _updateMessageCenterPrefs:v9];
      v10 = self->_messageCenter;
      v11 = objc_opt_class();
      [(NMSMessageCenter *)v10 mapPBRequest:v11 toResponse:objc_opt_class() messageID:1];
      v12 = self->_messageCenter;
      v13 = objc_opt_class();
      [(NMSMessageCenter *)v12 mapPBRequest:v13 toResponse:objc_opt_class() messageID:2];
      [(NMSMessageCenter *)self->_messageCenter mapPBRequest:objc_opt_class() toResponse:0 messageID:3];
      v14 = self->_messageCenter;
      v15 = objc_opt_class();
      [(NMSMessageCenter *)v14 mapPBRequest:v15 toResponse:objc_opt_class() messageID:4];
      v16 = self->_messageCenter;
      v17 = objc_opt_class();
      [(NMSMessageCenter *)v16 mapPBRequest:v17 toResponse:objc_opt_class() messageID:5];
      [(NMSMessageCenter *)self->_messageCenter mapPBRequest:objc_opt_class() toResponse:0 messageID:6];
      [(NMSMessageCenter *)self->_messageCenter mapPBRequest:objc_opt_class() toResponse:0 messageID:0x7FFFLL];
      [(NMSMessageCenter *)self->_messageCenter setDelegate:self queue:self->_queue];
      objc_initWeak(location, self);
      v18 = self->_messageCenter;
      v73[0] = MEMORY[0x1E69E9820];
      v73[1] = 3221225472;
      v73[2] = __43__SYLegacyStore__setupMessageCenter_LOCKED__block_invoke;
      v73[3] = &unk_1E86CA400;
      objc_copyWeak(&v74, location);
      [(NMSMessageCenter *)v18 addRequestHandlerForMessageID:1 usingBlock:v73];
      v19 = self->_messageCenter;
      v71[0] = MEMORY[0x1E69E9820];
      v71[1] = 3221225472;
      v71[2] = __43__SYLegacyStore__setupMessageCenter_LOCKED__block_invoke_2;
      v71[3] = &unk_1E86CA400;
      objc_copyWeak(&v72, location);
      [(NMSMessageCenter *)v19 addRequestHandlerForMessageID:2 usingBlock:v71];
      v20 = self->_messageCenter;
      v69[0] = MEMORY[0x1E69E9820];
      v69[1] = 3221225472;
      v69[2] = __43__SYLegacyStore__setupMessageCenter_LOCKED__block_invoke_3;
      v69[3] = &unk_1E86CA400;
      objc_copyWeak(&v70, location);
      [(NMSMessageCenter *)v20 addRequestHandlerForMessageID:3 usingBlock:v69];
      v21 = self->_messageCenter;
      v67[0] = MEMORY[0x1E69E9820];
      v67[1] = 3221225472;
      v67[2] = __43__SYLegacyStore__setupMessageCenter_LOCKED__block_invoke_4;
      v67[3] = &unk_1E86CA400;
      objc_copyWeak(&v68, location);
      [(NMSMessageCenter *)v21 addRequestHandlerForMessageID:5 usingBlock:v67];
      v22 = self->_messageCenter;
      v65[0] = MEMORY[0x1E69E9820];
      v65[1] = 3221225472;
      v65[2] = __43__SYLegacyStore__setupMessageCenter_LOCKED__block_invoke_5;
      v65[3] = &unk_1E86CA400;
      objc_copyWeak(&v66, location);
      [(NMSMessageCenter *)v22 addRequestHandlerForMessageID:4 usingBlock:v65];
      v23 = self->_messageCenter;
      v63[0] = MEMORY[0x1E69E9820];
      v63[1] = 3221225472;
      v63[2] = __43__SYLegacyStore__setupMessageCenter_LOCKED__block_invoke_6;
      v63[3] = &unk_1E86CA400;
      objc_copyWeak(&v64, location);
      [(NMSMessageCenter *)v23 addRequestHandlerForMessageID:6 usingBlock:v63];
      v24 = self->_messageCenter;
      v61[0] = MEMORY[0x1E69E9820];
      v61[1] = 3221225472;
      v61[2] = __43__SYLegacyStore__setupMessageCenter_LOCKED__block_invoke_7;
      v61[3] = &unk_1E86CA400;
      objc_copyWeak(&v62, location);
      [(NMSMessageCenter *)v24 addRequestHandlerForMessageID:0x7FFFLL usingBlock:v61];
      v25 = self->_messageCenter;
      v59[0] = MEMORY[0x1E69E9820];
      v59[1] = 3221225472;
      v59[2] = __43__SYLegacyStore__setupMessageCenter_LOCKED__block_invoke_115;
      v59[3] = &unk_1E86CA428;
      objc_copyWeak(&v60, location);
      [(NMSMessageCenter *)v25 addResponseHandler:1 usingBlock:v59];
      v26 = self->_messageCenter;
      v57[0] = MEMORY[0x1E69E9820];
      v57[1] = 3221225472;
      v57[2] = __43__SYLegacyStore__setupMessageCenter_LOCKED__block_invoke_124;
      v57[3] = &unk_1E86CA428;
      objc_copyWeak(&v58, location);
      [(NMSMessageCenter *)v26 addResponseHandler:4 usingBlock:v57];
      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = __43__SYLegacyStore__setupMessageCenter_LOCKED__block_invoke_2_125;
      v55[3] = &unk_1E86CA450;
      objc_copyWeak(&v56, location);
      v55[4] = self;
      v27 = MEMORY[0x1E12E11B0](v55);
      [(NMSMessageCenter *)self->_messageCenter addResponseHandler:5 usingBlock:v27];
      [(NMSMessageCenter *)self->_messageCenter addResponseHandler:2 usingBlock:v27];
      v45 = v9;
      v46 = v5;
      v28 = 1;
      do
      {
        v29 = self->_messageCenter;
        if (v28 > 5u)
        {
          v50[0] = MEMORY[0x1E69E9820];
          v50[1] = 3221225472;
          v50[2] = __43__SYLegacyStore__setupMessageCenter_LOCKED__block_invoke_135;
          v50[3] = &unk_1E86CA4A0;
          objc_copyWeak(&v51, location);
          [(NMSMessageCenter *)v29 addErrorHandlerForMessageID:v28 usingBlock:v50];
          v30 = &v51;
        }

        else
        {
          v52[0] = MEMORY[0x1E69E9820];
          v52[1] = 3221225472;
          v52[2] = __43__SYLegacyStore__setupMessageCenter_LOCKED__block_invoke_133;
          v52[3] = &unk_1E86CA478;
          objc_copyWeak(&v53, location);
          v54 = v28;
          [(NMSMessageCenter *)v29 addErrorHandlerForMessageID:v28 usingBlock:v52];
          v30 = &v53;
        }

        objc_destroyWeak(v30);
        v31 = v28++;
      }

      while (v31 < 0x6A);
      [(SYStore *)self delegate];
      v32 = v5 = v46;

      if (v32)
      {
        [(NMSMessageCenter *)self->_messageCenter resume];
        v33 = [(SYPersistentStore *)self->_persistentStore overflowResyncTime];
        if (v33)
        {
          v34 = [MEMORY[0x1E695DF00] date];
          v35 = [v33 earlierDate:v34];

          if (v35 == v33)
          {
            [(SYPersistentStore *)self->_persistentStore setOverflowResyncTime:0];
            [(SYStore *)self setNeedsFullSync];
          }

          else
          {
            v36 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_queue);
            overflowRetryTimer = self->_overflowRetryTimer;
            self->_overflowRetryTimer = v36;

            v38 = objc_alloc(MEMORY[0x1E696ABC0]);
            v39 = [v38 initWithDomain:*MEMORY[0x1E69A4770] code:32 userInfo:0];
            overflowRetryError = self->_overflowRetryError;
            self->_overflowRetryError = v39;

            objc_initWeak(&from, self);
            v41 = self->_overflowRetryTimer;
            handler[0] = MEMORY[0x1E69E9820];
            handler[1] = 3221225472;
            handler[2] = __43__SYLegacyStore__setupMessageCenter_LOCKED__block_invoke_136;
            handler[3] = &unk_1E86CA190;
            objc_copyWeak(&v48, &from);
            dispatch_source_set_event_handler(v41, handler);
            v42 = self->_overflowRetryTimer;
            [v33 timeIntervalSinceNow];
            v44 = dispatch_time(0, (v43 * 1000000000.0));
            dispatch_source_set_timer(v42, v44, 0xFFFFFFFFFFFFFFFFLL, 0x6FC23AC00uLL);
            dispatch_resume(self->_overflowRetryTimer);
            objc_destroyWeak(&v48);
            objc_destroyWeak(&from);
          }
        }

        else
        {
          [(SYLegacyStore *)self performFullSyncIfNecessaryAskingDelegate:1];
        }
      }

      objc_destroyWeak(&v56);
      objc_destroyWeak(&v58);
      objc_destroyWeak(&v60);
      objc_destroyWeak(&v62);
      objc_destroyWeak(&v64);
      objc_destroyWeak(&v66);
      objc_destroyWeak(&v68);
      objc_destroyWeak(&v70);
      objc_destroyWeak(&v72);
      objc_destroyWeak(&v74);
      objc_destroyWeak(location);
    }

    else
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_ERROR))
      {
        [SYLegacyStore _setupMessageCenter_LOCKED];
      }
    }
  }

  else
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_ERROR))
    {
      [SYLegacyStore _setupMessageCenter_LOCKED];
    }
  }
}

void __43__SYLegacyStore__setupMessageCenter_LOCKED__block_invoke(uint64_t a1, void *a2)
{
  v19 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = +[SYStatisticStore sharedInstance];
    v5 = [WeakRetained service];
    [v4 recordIncomingMessage:v19 forService:v5];

    v6 = [v19 pbRequest];
    v7 = [v6 header];
    v8 = [v19 idsIdentifier];
    v9 = [WeakRetained _checkMessageHeader:v7 messageID:v8];

    if (v9)
    {
      v10 = objc_opt_new();
      v11 = [v6 syncID];
      [v10 setRequestSyncID:v11];

      v12 = [v19 pbRequest];
      [WeakRetained handleFullSyncRequest:v12 response:v10];

      v13 = [v19 response];
      [v13 setPbResponse:v10];

      v14 = +[SYStatisticStore sharedInstance];
      v15 = [v19 response];
      v16 = [WeakRetained service];
      [v14 recordOutgoingMessage:v15 forService:v16];

      v17 = [v19 response];
      [v17 send];

      v18 = [v6 header];
      [WeakRetained _recordLastSeqNo:v18];
    }

    else
    {
      [v19 setExpectsResponse:0];
    }
  }
}

void __43__SYLegacyStore__setupMessageCenter_LOCKED__block_invoke_2(uint64_t a1, void *a2)
{
  v18 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = +[SYStatisticStore sharedInstance];
    v5 = [WeakRetained service];
    [v4 recordIncomingMessage:v18 forService:v5];

    v6 = [v18 pbRequest];
    v7 = [v6 header];
    v8 = [v18 idsIdentifier];
    v9 = [WeakRetained _checkMessageHeader:v7 messageID:v8];

    if (v9)
    {
      v10 = objc_opt_new();
      v11 = [v6 syncID];
      [v10 setSyncID:v11];

      [WeakRetained handleSyncAllObjects:v6 response:v10];
      v12 = [v18 response];
      [v12 setPbResponse:v10];

      v13 = +[SYStatisticStore sharedInstance];
      v14 = [v18 response];
      v15 = [WeakRetained service];
      [v13 recordOutgoingMessage:v14 forService:v15];

      v16 = [v18 response];
      [v16 send];

      v17 = [v6 header];
      [WeakRetained _recordLastSeqNo:v17];
    }

    else
    {
      [v18 setExpectsResponse:0];
    }
  }
}

void __43__SYLegacyStore__setupMessageCenter_LOCKED__block_invoke_3(uint64_t a1, void *a2)
{
  v11 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = +[SYStatisticStore sharedInstance];
    v5 = [WeakRetained service];
    [v4 recordIncomingMessage:v11 forService:v5];

    v6 = [v11 pbRequest];
    v7 = [v6 header];
    v8 = [v11 idsIdentifier];
    v9 = [WeakRetained _checkMessageHeader:v7 messageID:v8];

    if (v9)
    {
      [WeakRetained handleBatchSyncStart:v6];
      v10 = [v6 header];
      [WeakRetained _recordLastSeqNo:v10];
    }
  }
}

void __43__SYLegacyStore__setupMessageCenter_LOCKED__block_invoke_4(uint64_t a1, void *a2)
{
  v18 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = +[SYStatisticStore sharedInstance];
    v5 = [WeakRetained service];
    [v4 recordIncomingMessage:v18 forService:v5];

    v6 = [v18 pbRequest];
    v7 = [v6 header];
    v8 = [v18 idsIdentifier];
    v9 = [WeakRetained _checkMessageHeader:v7 messageID:v8];

    if (v9)
    {
      v10 = objc_opt_new();
      v11 = [v6 syncID];
      [v10 setSyncID:v11];

      [WeakRetained handleBatchSyncEnd:v6 response:v10];
      v12 = [v18 response];
      [v12 setPbResponse:v10];

      v13 = +[SYStatisticStore sharedInstance];
      v14 = [v18 response];
      v15 = [WeakRetained service];
      [v13 recordOutgoingMessage:v14 forService:v15];

      v16 = [v18 response];
      [v16 send];

      v17 = [v6 header];
      [WeakRetained _recordLastSeqNo:v17];
    }

    else
    {
      [v18 setExpectsResponse:0];
    }
  }
}

void __43__SYLegacyStore__setupMessageCenter_LOCKED__block_invoke_5(uint64_t a1, void *a2)
{
  v18 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = +[SYStatisticStore sharedInstance];
    v5 = [WeakRetained service];
    [v4 recordIncomingMessage:v18 forService:v5];

    v6 = [v18 pbRequest];
    v7 = [v6 header];
    v8 = [v18 idsIdentifier];
    v9 = [WeakRetained _checkMessageHeader:v7 messageID:v8];

    if (v9)
    {
      v10 = objc_opt_new();
      v11 = [v6 syncID];
      [v10 setSyncID:v11];

      [WeakRetained handleBatchSyncChunk:v6 response:v10];
      v12 = [v18 response];
      [v12 setPbResponse:v10];

      v13 = +[SYStatisticStore sharedInstance];
      v14 = [v18 response];
      v15 = [WeakRetained service];
      [v13 recordOutgoingMessage:v14 forService:v15];

      v16 = [v18 response];
      [v16 send];

      v17 = [v6 header];
      [WeakRetained _recordLastSeqNo:v17];
    }

    else
    {
      [v18 setExpectsResponse:0];
    }
  }
}

void __43__SYLegacyStore__setupMessageCenter_LOCKED__block_invoke_6(uint64_t a1, void *a2)
{
  v11 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = +[SYStatisticStore sharedInstance];
    v5 = [WeakRetained service];
    [v4 recordIncomingMessage:v11 forService:v5];

    v6 = [v11 pbRequest];
    v7 = [v6 header];
    v8 = [v11 idsIdentifier];
    v9 = [WeakRetained _checkMessageHeader:v7 messageID:v8];

    if (v9)
    {
      [WeakRetained handleChangeMessage:v6];
      v10 = [v6 header];
      [WeakRetained _recordLastSeqNo:v10];
    }
  }
}

void __43__SYLegacyStore__setupMessageCenter_LOCKED__block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = +[SYStatisticStore sharedInstance];
    v6 = [WeakRetained service];
    [v5 recordIncomingMessage:v3 forService:v6];

    v7 = [v3 pbRequest];
    v8 = objc_opt_new();
    if ([v7 supportedVersionsCount])
    {
      v9 = 0;
      do
      {
        [v8 addIndex:{objc_msgSend(v7, "supportedVersionsAtIndex:", v9++)}];
      }

      while (v9 < [v7 supportedVersionsCount]);
    }

    v10 = +[SYTransportLog sharedInstance];
    v11 = [v10 oslog];

    if (os_log_type_enabled(v11, 0x90u))
    {
      __43__SYLegacyStore__setupMessageCenter_LOCKED__block_invoke_7_cold_1();
    }

    v12 = [WeakRetained persistentStore];
    v13 = [v7 header];
    v14 = [v13 sender];
    v15 = [v14 peerID];
    v16 = [v12 lastSequenceNumberForPeerID:v15];

    v17 = [v7 header];
    v18 = [v17 sequenceNumber];

    if (v18 == v16 + 1)
    {
      v19 = [v7 header];
      [WeakRetained _recordLastSeqNo:v19];
    }
  }
}

void __43__SYLegacyStore__setupMessageCenter_LOCKED__block_invoke_115(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = +[SYStatisticStore sharedInstance];
    v6 = [WeakRetained service];
    [v5 recordIncomingMessage:v3 forService:v6];

    v7 = [v3 pbResponse];
    v8 = [v7 header];
    v9 = [v3 idsIdentifier];
    v10 = [WeakRetained _checkMessageHeader:v8 messageID:v9];

    if (v10)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v11 = qword_1EDE73420;
      if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEBUG))
      {
        __43__SYLegacyStore__setupMessageCenter_LOCKED__block_invoke_115_cold_2(v11, v7);
      }

      if (([v7 accepted] & 1) == 0 && objc_msgSend(v7, "hasInProgressSyncID"))
      {
        v12 = [*(WeakRetained + 23) lastSyncEndID];
        v13 = [v7 inProgressSyncID];
        v14 = [v12 isEqualToString:v13];

        if (v14)
        {
          if (_sync_log_facilities_pred != -1)
          {
            [SYIncomingSyncAllObjectsSession _continueProcessing];
          }

          v15 = qword_1EDE73420;
          if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1DF835000, v15, OS_LOG_TYPE_DEFAULT, "In-progress sync has finished, now requesting another.", buf, 2u);
          }

          v16 = dispatch_time(0, 200000000);
          v17 = *(WeakRetained + 26);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __43__SYLegacyStore__setupMessageCenter_LOCKED__block_invoke_121;
          block[3] = &unk_1E86C9FB0;
          v18 = &v31;
          v31 = WeakRetained;
          dispatch_after(v16, v17, block);
        }

        else
        {
          v19 = [v7 inProgressSyncID];
          [*(WeakRetained + 23) setWaitingForSyncEndID:v19];

          if (_sync_log_facilities_pred != -1)
          {
            [SYIncomingSyncAllObjectsSession _continueProcessing];
          }

          v20 = qword_1EDE73420;
          if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
          {
            v21 = v20;
            v22 = [v7 inProgressSyncID];
            *buf = 138543362;
            v33 = v22;
            _os_log_impl(&dword_1DF835000, v21, OS_LOG_TYPE_DEFAULT, "Waiting for in-progress sync %{public}@ to end before re-sending sync request.", buf, 0xCu);
          }

          v23 = dispatch_time(0, 3600000000000);
          v24 = *(WeakRetained + 26);
          v27[0] = MEMORY[0x1E69E9820];
          v27[1] = 3221225472;
          v27[2] = __43__SYLegacyStore__setupMessageCenter_LOCKED__block_invoke_122;
          v27[3] = &unk_1E86C9E90;
          v18 = &v28;
          v28 = WeakRetained;
          v29 = v7;
          dispatch_after(v23, v24, v27);
        }
      }

      v25 = [v7 header];
      [WeakRetained _recordLastSeqNo:v25];
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

void __43__SYLegacyStore__setupMessageCenter_LOCKED__block_invoke_122(uint64_t a1)
{
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v2 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_ERROR))
  {
    __43__SYLegacyStore__setupMessageCenter_LOCKED__block_invoke_122_cold_2(a1, v2);
  }

  v3 = [*(*(a1 + 32) + 184) waitingForSyncEndID];
  v4 = [*(a1 + 40) inProgressSyncID];
  v5 = [v3 isEqualToString:v4];

  if ((v5 & 1) == 0)
  {
    [*(*(a1 + 32) + 184) setWaitingForSyncEndID:0];
    [*(a1 + 32) performFullSyncToCurrentDBVersion];
  }
}

void __43__SYLegacyStore__setupMessageCenter_LOCKED__block_invoke_124(uint64_t a1, void *a2)
{
  v11 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = +[SYStatisticStore sharedInstance];
    v5 = [WeakRetained service];
    [v4 recordIncomingMessage:v11 forService:v5];

    v6 = [v11 pbResponse];
    v7 = [v6 header];
    v8 = [v11 idsIdentifier];
    v9 = [WeakRetained _checkMessageHeader:v7 messageID:v8];

    if (v9)
    {
      [WeakRetained processBatchChunkAck:{objc_msgSend(v6, "chunkIndex")}];
      v10 = [v6 header];
      [WeakRetained _recordLastSeqNo:v10];
    }
  }
}

void __43__SYLegacyStore__setupMessageCenter_LOCKED__block_invoke_2_125(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = +[SYStatisticStore sharedInstance];
    v6 = [WeakRetained service];
    [v5 recordIncomingMessage:v3 forService:v6];

    v7 = [v3 pbResponse];
    v8 = [v7 header];
    v9 = [v3 idsIdentifier];
    v10 = [WeakRetained _checkMessageHeader:v8 messageID:v9];

    if (v10)
    {
      v11 = [v7 syncID];
      v12 = [WeakRetained[23] currentFullSyncID];
      v13 = [v11 isEqualToString:v12];

      if (v13)
      {
        v14 = MEMORY[0x1E696ABC0];
        v15 = [v7 error];
        v16 = [v14 errorFromSYErrorInfo:v15];

        if (([v7 hasError] & 1) == 0 && objc_msgSend(WeakRetained[13], "count"))
        {
          if (+[SYLogs shouldDisplaySyncErrorMessage])
          {
            v17 = *(a1 + 32);
            v18 = [WeakRetained service];
            v19 = _ClientNameForServiceName(v18);
            v20 = [@"Unacked batch while syncing " stringByAppendingString:v19];
            [v17 postUserNotification:v20 message:@"File against Pepper CompanionSync|1.0"];
          }

          v21 = +[SYTransportLog sharedInstance];
          v22 = [v21 oslog];

          if (os_log_type_enabled(v22, 0x90u))
          {
            __43__SYLegacyStore__setupMessageCenter_LOCKED__block_invoke_2_125_cold_1();
          }

          v23 = [MEMORY[0x1E696ABC0] errorWithSYError:1003 userInfo:0];

          [WeakRetained[13] removeAllIndexes];
          v16 = v23;
        }

        [WeakRetained[23] clearAllChanges];
        [WeakRetained[23] setCompletedSync:1];
        v24 = WeakRetained[23];
        v25 = [v7 syncID];
        [v24 exitFullSyncWithID:v25 error:v16];

        if ((WeakRetained[2] & 8) != 0)
        {
          v26 = [WeakRetained delegate];
          [v26 syncStoreDidCompleteFullSync:WeakRetained];
        }

        if (v16)
        {
          [WeakRetained _retrySync];
        }
      }

      v27 = [v7 header];
      [WeakRetained _recordLastSeqNo:v27];
    }
  }
}

void __43__SYLegacyStore__setupMessageCenter_LOCKED__block_invoke_133(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    goto LABEL_34;
  }

  v5 = [v3 domain];
  if (![v5 isEqualToString:*MEMORY[0x1E69A4770]])
  {

    goto LABEL_8;
  }

  if ([v3 code] == 32)
  {
  }

  else
  {
    v6 = [v3 code];

    if (v6 != 33)
    {
      goto LABEL_8;
    }
  }

  [WeakRetained _handleIDSOverflowWithError:v3];
LABEL_8:
  v7 = [v3 domain];
  if (![v7 isEqualToString:@"NMSErrorDomain"])
  {

    goto LABEL_16;
  }

  v8 = [v3 code];

  if (v8 != 1)
  {
LABEL_16:
    v12 = [v3 domain];
    if (![v12 isEqualToString:@"NMSErrorDomain"])
    {

      goto LABEL_23;
    }

    v13 = [v3 code];

    if (v13 != 2)
    {
      goto LABEL_23;
    }

    v14 = [v3 idsIdentifier];

    if (!v14)
    {
      goto LABEL_23;
    }

    v9 = +[SYStatisticStore sharedInstance];
    v10 = [v3 idsIdentifier];
    [v9 updateOutgoingMessageWithIdentifier:v10 didReceiveResponse:0 error:v3];
    goto LABEL_20;
  }

  v9 = [v3 idsIdentifier];
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEBUG))
  {
    __43__SYLegacyStore__setupMessageCenter_LOCKED__block_invoke_133_cold_2();
    if (!v9)
    {
      goto LABEL_21;
    }

    goto LABEL_14;
  }

  if (v9)
  {
LABEL_14:
    v10 = +[SYStatisticStore sharedInstance];
    v11 = [WeakRetained service];
    [v10 updateOutgoingMessageWithIdentifier:v9 forService:v11 sentSuccessfully:0 sendError:v3];

LABEL_20:
  }

LABEL_21:

LABEL_23:
  if ((*(WeakRetained + 8) & 0x400) != 0)
  {
    v15 = [WeakRetained delegate];
    v16 = [v3 persistentUserInfo];
    [v15 syncStore:WeakRetained encounteredError:v3 context:v16];
  }

  if ([WeakRetained inFullSync])
  {
    v17 = *(WeakRetained + 23);
    v18 = [v17 currentFullSyncID];
    [v17 exitFullSyncWithID:v18 error:v3];

    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v19 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_ERROR))
    {
      __43__SYLegacyStore__setupMessageCenter_LOCKED__block_invoke_133_cold_4(v19);
    }
  }

  if (*(a1 + 40) - 3 > 2)
  {
    [WeakRetained _retrySync];
  }

  else
  {
    v20 = [WeakRetained nextBatchStep];

    if (v20)
    {
      v21 = [WeakRetained nextBatchStep];
      (v21)[2](v21, v3, 0);
    }
  }

LABEL_34:
}

void __43__SYLegacyStore__setupMessageCenter_LOCKED__block_invoke_135(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    goto LABEL_16;
  }

  v5 = [v3 domain];
  if (![v5 isEqualToString:*MEMORY[0x1E69A4770]])
  {

    goto LABEL_8;
  }

  if ([v3 code] == 32)
  {
  }

  else
  {
    v6 = [v3 code];

    if (v6 != 33)
    {
      goto LABEL_8;
    }
  }

  [WeakRetained _handleIDSOverflowWithError:v3];
LABEL_8:
  v7 = [v3 idsIdentifier];
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEBUG))
  {
    __43__SYLegacyStore__setupMessageCenter_LOCKED__block_invoke_133_cold_2();
    if (!v7)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v7)
  {
LABEL_12:
    v8 = +[SYStatisticStore sharedInstance];
    v9 = [WeakRetained service];
    [v8 updateOutgoingMessageWithIdentifier:v7 forService:v9 sentSuccessfully:0 sendError:v3];
  }

LABEL_13:
  if ((WeakRetained[8] & 0x400) != 0)
  {
    v10 = [WeakRetained delegate];
    v11 = [v3 persistentUserInfo];
    [v10 syncStore:WeakRetained encounteredError:v3 context:v11];
  }

LABEL_16:
}

void __43__SYLegacyStore__setupMessageCenter_LOCKED__block_invoke_136(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[23] setOverflowResyncTime:0];
    [v2 setNeedsFullSync];
    WeakRetained = v2;
  }
}

- (void)setupDatabase
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_7() pairedDeviceID];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_8();
  _os_log_fault_impl(v4, v5, OS_LOG_TYPE_FAULT, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setDelegate:(id)a3
{
  v6.receiver = self;
  v6.super_class = SYLegacyStore;
  [(SYStore *)&v6 setDelegate:?];
  messageCenter = self->_messageCenter;
  if (a3)
  {
    if (messageCenter)
    {
      [(NMSMessageCenter *)messageCenter resume];
      [(SYLegacyStore *)self performFullSyncIfNecessaryAskingDelegate:1];
    }
  }

  else
  {
    self->_messageCenter = 0;
  }
}

- (double)timeToLive
{
  v2 = [(SYLegacyStore *)self persistentStore];
  [v2 timeToLive];
  v4 = v3;

  return v4;
}

- (void)setTimeToLive:(double)a3
{
  v4 = [(SYLegacyStore *)self persistentStore];
  [v4 setTimeToLive:a3];
}

- (void)postUserNotification:(id)a3 message:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (+[SYLogs shouldDumpIDSOnSyncError]&& MGGetBoolAnswer() && (_shouldDumpIDSOnSyncErrorOnce & 1) == 0)
  {
    _shouldDumpIDSOnSyncErrorOnce = 1;
    CFUserNotificationDisplayNotice(0.0, 0, 0, 0, 0, v5, v6, 0);
    *__argv = xmmword_1E86CA4C0;
    v11 = 0;
    v9 = 0;
    v7 = _NSGetEnviron();
    posix_spawn(&v9, "/usr/local/bin/idstool", 0, 0, __argv, *v7);
  }

  v8 = *MEMORY[0x1E69E9840];
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

    [(SYLegacyStore *)self _vectorClockUpdated];
  }
}

- (BOOL)peerState:(id)a3 fromPeer:(id)a4 matchesExpectationForChangeCount:(unint64_t)a5 offsetAmount:(unint64_t *)a6
{
  v33 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  if ([(SYVectorClock *)self->_vectorClock hasClockForPeer:v11])
  {
    v12 = [(SYPersistentStore *)self->_persistentStore peerID];
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEBUG))
    {
      [SYLegacyStore peerState:fromPeer:matchesExpectationForChangeCount:offsetAmount:];
    }

    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v26 = a5;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEBUG))
    {
      [SYLegacyStore peerState:? fromPeer:? matchesExpectationForChangeCount:? offsetAmount:?];
    }

    v13 = [(SYVectorClock *)self->_vectorClock clockValueForPeerID:v12, a6];
    v14 = [v10 clockValueForPeerID:v12];
    v15 = [(SYVectorClock *)self->_vectorClock clockValueForPeer:v11];
    v16 = [v10 clockValueForPeer:v11];
    if (v14 > v13)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_ERROR))
      {
        [SYLegacyStore peerState:fromPeer:matchesExpectationForChangeCount:offsetAmount:];
      }

      goto LABEL_15;
    }

    v18 = v16;
    if (v14 != v13)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v19 = qword_1EDE73420;
      if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v28 = v13;
        v29 = 2048;
        v30 = v14;
        _os_log_impl(&dword_1DF835000, v19, OS_LOG_TYPE_DEFAULT, "Accepting change list from peer that has not received my latest updates: %llu vs. %llu", buf, 0x16u);
      }
    }

    v20 = [(SYVectorClock *)self->_vectorClock hasClockForPeer:v11];
    v17 = 1;
    if (!v20 || v18 == v15 + v26 || v18 == v15 + 1)
    {
      goto LABEL_32;
    }

    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v21 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218496;
      v28 = v15;
      v29 = 2048;
      v30 = v18;
      v31 = 1024;
      v32 = v26;
      _os_log_error_impl(&dword_1DF835000, v21, OS_LOG_TYPE_ERROR, "Peer state doesn't match my expectation-- likely a message is missing. I have %llu, they sent %llu, there are %u changes incoming", buf, 0x1Cu);
      if (v25)
      {
        goto LABEL_29;
      }
    }

    else if (v25)
    {
LABEL_29:
      v17 = 0;
      v22 = v15 - (v18 + v26);
      if (v22 < 0)
      {
        v22 = v18 + v26 - v15;
      }

      *v25 = v22;
      goto LABEL_32;
    }

LABEL_15:
    v17 = 0;
LABEL_32:

    goto LABEL_33;
  }

  v17 = 1;
LABEL_33:

  v23 = *MEMORY[0x1E69E9840];
  return v17;
}

- (void)handleFullSyncRequest:(id)a3 response:(id)a4
{
  v6 = a3;
  persistentStore = self->_persistentStore;
  v8 = a4;
  v9 = [(SYPersistentStore *)persistentStore currentFullSyncID];

  if (v9)
  {
    v10 = [(SYLegacyStore *)self newMessageHeader];
    [v8 setHeader:v10];

    [v8 setAccepted:0];
    v11 = [SYErrorInfo alloc];
    v12 = [MEMORY[0x1E696ABC0] errorWithSYError:1002 userInfo:0];
    v13 = [(SYErrorInfo *)v11 initWithError:v12];
    [v8 setError:v13];

    v14 = [(SYPersistentStore *)self->_persistentStore currentFullSyncID];
    [v8 setInProgressSyncID:v14];
  }

  else
  {
    v15 = self->_persistentStore;
    v16 = [v6 syncID];
    [(SYPersistentStore *)v15 enterFullSyncWithID:v16 ignoring:0];

    v17 = [(SYLegacyStore *)self newMessageHeader];
    [v8 setHeader:v17];

    [v8 setAccepted:1];
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__SYLegacyStore_handleFullSyncRequest_response___block_invoke;
    block[3] = &unk_1E86C9FB0;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (BOOL)_shouldIgnoreSyncID:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SYPersistentStore *)self->_persistentStore currentFullSyncID];
  v6 = v5;
  if (!v5 || ([v5 hasPrefix:@"InitialSync"] & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", v4) & 1) != 0 || -[SYPersistentStore canStartNewSyncSession](self->_persistentStore, "canStartNewSyncSession"))
  {
    v7 = 0;
  }

  else
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v10 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543618;
      v12 = v4;
      v13 = 2114;
      v14 = v6;
      _os_log_impl(&dword_1DF835000, v10, OS_LOG_TYPE_DEFAULT, "Skipping one sync message (syncID %{public}@) while waiting for another (syncID %{public}@)", &v11, 0x16u);
    }

    v7 = 1;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)_shouldSkipNonSyncMessages
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [(SYPersistentStore *)self->_persistentStore currentFullSyncID];
  if (v3)
  {
    v4 = v3;
    v5 = [(SYPersistentStore *)self->_persistentStore canStartNewSyncSession];

    if (v5)
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v6 = qword_1EDE73420;
      if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
      {
        persistentStore = self->_persistentStore;
        v8 = v6;
        v9 = [(SYPersistentStore *)persistentStore currentFullSyncID];
        v12 = 138543362;
        v13 = v9;
        _os_log_impl(&dword_1DF835000, v8, OS_LOG_TYPE_DEFAULT, "Skipping while waiting for sync; fullSyncIdentifier == '%{public}@'", &v12, 0xCu);
      }

      LOBYTE(v3) = 1;
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return v3;
}

- (void)_syncEndedWithSyncID:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(SYPersistentStore *)self->_persistentStore exitFullSyncWithID:v4 error:0];
  [(SYPersistentStore *)self->_persistentStore clearAllChanges];
  v5 = [(SYPersistentStore *)self->_persistentStore waitingForSyncEndID];
  v6 = [v5 isEqualToString:v4];

  if (v6)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v7 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
    {
      persistentStore = self->_persistentStore;
      v9 = v7;
      v10 = [(SYPersistentStore *)persistentStore waitingForSyncEndID];
      *buf = 138543618;
      v15 = v4;
      v16 = 2114;
      v17 = v10;
      _os_log_impl(&dword_1DF835000, v9, OS_LOG_TYPE_DEFAULT, "Sync %{public}@ has finished, and I'm waiting for sync %{public}@ to finish, and they match. Triggering full-sync now.", buf, 0x16u);
    }

    [(SYPersistentStore *)self->_persistentStore setWaitingForSyncEndID:0];
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38__SYLegacyStore__syncEndedWithSyncID___block_invoke;
    block[3] = &unk_1E86C9FB0;
    block[4] = self;
    dispatch_async(queue, block);
  }

  else
  {
    [(SYPersistentStore *)self->_persistentStore setFullSyncUserInfo:0];
    [(SYPersistentStore *)self->_persistentStore setFullSyncIDSOptions:0];
    if (![(SYLegacyStore *)self alwaysWins])
    {
      [(SYPersistentStore *)self->_persistentStore setCompletedSync:1];
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)handleSyncAllObjects:(id)a3 response:(id)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 syncID];
  v9 = [(SYLegacyStore *)self _shouldIgnoreSyncID:v8];

  if (v9)
  {
    v10 = [(SYLegacyStore *)self newMessageHeader];
    [v7 setHeader:v10];

    v11 = [v6 syncID];
    [v7 setSyncID:v11];

    v12 = [SYErrorInfo alloc];
    v13 = [MEMORY[0x1E696ABC0] errorWithSYError:1001 userInfo:0];
    v14 = [(SYErrorInfo *)v12 initWithError:v13];
    [v7 setError:v14];

    v15 = [v6 syncID];
    [(SYLegacyStore *)self _syncEndedWithSyncID:v15];

    goto LABEL_13;
  }

  v16 = [(SYPersistentStore *)self->_persistentStore currentFullSyncID];

  persistentStore = self->_persistentStore;
  if (!v16)
  {
    v21 = [v6 syncID];
    [(SYPersistentStore *)persistentStore enterFullSyncWithID:v21 ignoring:0];
    goto LABEL_7;
  }

  v18 = [(SYPersistentStore *)self->_persistentStore currentFullSyncID];
  v19 = [v18 hasPrefix:@"InitialSync"];

  if (v19)
  {
    v20 = self->_persistentStore;
    v21 = [v6 syncID];
    [(SYPersistentStore *)v20 reassignCurrentSyncID:v21];
LABEL_7:
  }

  v22 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "allObjectsCount")}];
  v23 = [v6 allObjects];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __47__SYLegacyStore_handleSyncAllObjects_response___block_invoke;
  v39[3] = &unk_1E86CA4E0;
  v39[4] = self;
  v24 = v22;
  v40 = v24;
  v25 = v6;
  v41 = v25;
  [v23 enumerateObjectsUsingBlock:v39];

  v26 = [v25 header];
  v27 = [v26 sender];

  v28 = [v25 header];
  v29 = [v28 state];
  v30 = [v29 clockForPeer:v27];

  [(SYLegacyStore *)self remoteStoreAllObjects:v24 fromPeer:v27 clock:v30];
  v31 = [(SYPersistentStore *)self->_persistentStore peerID];
  -[SYVectorClock setClockValue:forPeer:](self->_vectorClock, "setClockValue:forPeer:", [v30 version], v27);
  [(SYLegacyStore *)self _vectorClockUpdated];
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v32 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_INFO))
  {
    vectorClock = self->_vectorClock;
    v34 = v32;
    v35 = [(SYVectorClock *)vectorClock jsonRepresentation];
    *buf = 138543618;
    v43 = v35;
    v44 = 2114;
    v45 = v31;
    _os_log_impl(&dword_1DF835000, v34, OS_LOG_TYPE_INFO, "Copied peer clock into our vector. Value is now: %{public}@ (my PeerID is %{public}@)", buf, 0x16u);
  }

  v36 = [(SYLegacyStore *)self newMessageHeader];
  [v7 setHeader:v36];

  v37 = [v25 syncID];
  [(SYLegacyStore *)self _syncEndedWithSyncID:v37];

LABEL_13:
  v38 = *MEMORY[0x1E69E9840];
}

void __47__SYLegacyStore_handleSyncAllObjects_response___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + 32);
  v6 = [*(a1 + 32) decodeSYObject:a2];
  if (v6)
  {
    [*(a1 + 40) addObject:v6];
  }

  else
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v7 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_FAULT))
    {
      __47__SYLegacyStore_handleSyncAllObjects_response___block_invoke_cold_2(v5, v7);
    }

    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v8 = _sync_log_facilities;
    if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_DEBUG))
    {
      __47__SYLegacyStore_handleSyncAllObjects_response___block_invoke_cold_4(a3, a1, v8);
    }
  }
}

- (void)handleBatchSyncStart:(id)a3
{
  v9 = a3;
  v4 = [v9 syncID];
  v5 = [(SYLegacyStore *)self _shouldIgnoreSyncID:v4];

  if (!v5)
  {
    v6 = [(SYPersistentStore *)self->_persistentStore currentFullSyncID];

    if (!v6)
    {
      persistentStore = self->_persistentStore;
      v8 = [v9 syncID];
      [(SYPersistentStore *)persistentStore enterFullSyncWithID:v8 ignoring:0];
    }

    [(SYLegacyStore *)self processBatchSyncStart];
  }
}

- (void)handleBatchSyncChunk:(id)a3 response:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 syncID];
  v9 = [(SYLegacyStore *)self _shouldIgnoreSyncID:v8];

  if (v9)
  {
    v10 = [(SYLegacyStore *)self newMessageHeader];
    [v6 setHeader:v10];

    v11 = [v7 syncID];

    [v6 setSyncID:v11];
    v12 = [SYErrorInfo alloc];
    v13 = [MEMORY[0x1E696ABC0] errorWithSYError:1001 userInfo:0];
    v14 = [(SYErrorInfo *)v12 initWithError:v13];
    [v6 setError:v14];
  }

  else
  {
    v15 = [v7 chunkIndex];
    v16 = [v7 objects];
    v21 = 0;
    [(SYLegacyStore *)self processBatchChunkAtIndex:v15 encodedObjects:v16 error:&v21];
    v17 = v21;

    v18 = [(SYLegacyStore *)self newMessageHeader];
    [v6 setHeader:v18];

    v19 = [v7 chunkIndex];
    [v6 setChunkIndex:v19];
    if (v17)
    {
      v20 = [[SYErrorInfo alloc] initWithError:v17];
      [v6 setError:v20];
    }
  }
}

- (void)handleBatchSyncEnd:(id)a3 response:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 syncID];
  v9 = [(SYLegacyStore *)self _shouldIgnoreSyncID:v8];

  if (v9)
  {
    v10 = [(SYLegacyStore *)self newMessageHeader];
    [v7 setHeader:v10];

    v11 = [v6 syncID];
    [v7 setSyncID:v11];

    v12 = [SYErrorInfo alloc];
    v13 = [MEMORY[0x1E696ABC0] errorWithSYError:1001 userInfo:0];
    v14 = [(SYErrorInfo *)v12 initWithError:v13];
    [v7 setError:v14];

    v15 = [v6 syncID];
    [(SYLegacyStore *)self _syncEndedWithSyncID:v15];
  }

  else
  {
    v16 = [v6 header];
    v17 = [v16 state];
    v18 = [v6 header];
    v19 = [v18 sender];
    v20 = [v17 clockValueForPeer:v19];

    [(SYLegacyStore *)self processBatchSyncEnd:v20];
    v21 = [v6 header];
    v22 = [v21 sender];

    v23 = [v6 header];
    v24 = [v23 state];
    v25 = [v24 clockForPeer:v22];

    v26 = [(SYPersistentStore *)self->_persistentStore peerID];
    -[SYVectorClock setClockValue:forPeer:](self->_vectorClock, "setClockValue:forPeer:", [v25 version], v22);
    [(SYLegacyStore *)self _vectorClockUpdated];
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v27 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_INFO))
    {
      vectorClock = self->_vectorClock;
      v29 = v27;
      v30 = [(SYVectorClock *)vectorClock jsonRepresentation];
      v34 = 138543618;
      v35 = v30;
      v36 = 2114;
      v37 = v26;
      _os_log_impl(&dword_1DF835000, v29, OS_LOG_TYPE_INFO, "Copied peer clock into our vector. Value is now: %{public}@ (my PeerID is %{public}@)", &v34, 0x16u);
    }

    v31 = [(SYLegacyStore *)self newMessageHeader];
    [v7 setHeader:v31];

    v32 = [v6 syncID];
    [(SYLegacyStore *)self _syncEndedWithSyncID:v32];
  }

  v33 = *MEMORY[0x1E69E9840];
}

- (void)handleChangeMessage:(id)a3
{
  *(&v52[1] + 4) = *MEMORY[0x1E69E9840];
  v39 = a3;
  if (![(SYLegacyStore *)self _shouldSkipNonSyncMessages])
  {
    v38 = _os_activity_create(&dword_1DF835000, "CompanionSync Change Application", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DETACHED);
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v4 = qword_1EDE73420;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v52[0]) = [v39 changesCount];
      _os_log_impl(&dword_1DF835000, v4, OS_LOG_TYPE_DEFAULT, "Applying %d incoming changes", buf, 8u);
    }

    v5 = [v39 header];
    v6 = [v5 sequenceNumber];

    v7 = [(SYLegacyStore *)self persistentStore];
    v8 = [v39 header];
    v9 = [v8 sender];
    v10 = [v9 peerID];
    v11 = [v7 lastSequenceNumberForPeerID:v10];

    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEBUG))
    {
      [SYLegacyStore handleChangeMessage:];
    }

    if (v11)
    {
      v12 = v6 + ~v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = [(SYStore *)self delegate];
    if (v12)
    {
      if ([(SYLegacyStore *)self tracksChanges])
      {
        if (_sync_log_facilities_pred != -1)
        {
          [SYIncomingSyncAllObjectsSession _continueProcessing];
        }

        v14 = qword_1EDE73420;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [v39 changesCount];
          *buf = 134217984;
          v52[0] = v15;
          _os_log_impl(&dword_1DF835000, v14, OS_LOG_TYPE_DEFAULT, "-handleChangeMessage:<%zu objects> -- changes are not consecutive, triggering full sync", buf, 0xCu);
        }

        [(SYLegacyStore *)self performFullSync];
        if (_sync_log_facilities_pred != -1)
        {
          [SYIncomingSyncAllObjectsSession _continueProcessing];
        }

        v16 = qword_1EDE73420;
        if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1DF835000, v16, OS_LOG_TYPE_DEFAULT, "handleChangeMessage - done, change-list bubble detected", buf, 2u);
        }

        v17 = +[SYStatisticStore sharedInstance];
        [v17 updateLastIncomingMessageWithError:@"Change-list bubble detected"];
LABEL_35:

        goto LABEL_74;
      }

      if (objc_opt_respondsToSelector())
      {
        [v13 syncStore:self detectedChangeListBubbleOfSize:v12];
      }
    }

    if (!v13)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_ERROR))
      {
        [SYLegacyStore handleChangeMessage:];
      }

      v17 = +[SYStatisticStore sharedInstance];
      [v17 updateLastIncomingMessageWithError:@"No delegate"];
      goto LABEL_35;
    }

    Current = CFAbsoluteTimeGetCurrent();
    flags = self->super._flags;
    if ((flags & 2) != 0)
    {
      [v13 syncStoreWillUpdate:self objectCount:{objc_msgSend(v39, "changesCount")}];
    }

    else if (flags)
    {
      [v13 syncStoreWillUpdate:self];
    }

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v20 = [v39 changes];
    v21 = [v20 countByEnumeratingWithState:&v46 objects:v50 count:16];
    if (v21)
    {
      v22 = *v47;
      do
      {
        v23 = 0;
        do
        {
          if (*v47 != v22)
          {
            objc_enumerationMutation(v20);
          }

          v24 = *(*(&v46 + 1) + 8 * v23);
          v25 = [v24 objectForStore:self];
          if (v25)
          {
            if ([v24 type])
            {
              if ([v24 type] == 1)
              {
                if (_sync_log_facilities_pred != -1)
                {
                  [SYIncomingSyncAllObjectsSession _continueProcessing];
                }

                if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEBUG))
                {
                  [(SYLegacyStore *)&v42 handleChangeMessage:v43];
                }

                [v13 syncStore:self objectUpdated:v25];
              }

              else if ([v24 type] == 2)
              {
                if (_sync_log_facilities_pred != -1)
                {
                  [SYIncomingSyncAllObjectsSession _continueProcessing];
                }

                if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEBUG))
                {
                  [(SYLegacyStore *)&v40 handleChangeMessage:v41];
                }

                [v13 syncStore:self objectDeleted:v25];
              }
            }

            else
            {
              if (_sync_log_facilities_pred != -1)
              {
                [SYIncomingSyncAllObjectsSession _continueProcessing];
              }

              if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEBUG))
              {
                [(SYLegacyStore *)&v44 handleChangeMessage:v45];
              }

              [v13 syncStore:self objectAdded:v25];
            }
          }

          else
          {
            if (_sync_log_facilities_pred != -1)
            {
              [SYIncomingSyncAllObjectsSession _continueProcessing];
            }

            v26 = qword_1EDE73420;
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              v27 = _SYObfuscate(v24);
              [(SYLegacyStore *)v27 handleChangeMessage:buf, v52, v26];
            }
          }

          ++v23;
        }

        while (v21 != v23);
        v21 = [v20 countByEnumeratingWithState:&v46 objects:v50 count:16];
      }

      while (v21);
    }

    vectorClock = self->_vectorClock;
    v29 = [v39 header];
    v30 = [v29 state];
    v31 = [v39 header];
    v32 = [v31 sender];
    v33 = [v30 clockValueForPeer:v32];
    v34 = [v39 header];
    v35 = [v34 sender];
    [(SYVectorClock *)vectorClock setClockValue:v33 forPeer:v35];

    [(SYLegacyStore *)self _vectorClockUpdated];
    if ((*&self->super._flags & 4) != 0)
    {
      [v13 syncStoreDidUpdate:self];
    }

    v36 = +[SYStatisticStore sharedInstance];
    [v36 updateLastIncomingMessageWithProcessingTime:CFAbsoluteTimeGetCurrent() - Current];

    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEBUG))
    {
      [SYLegacyStore handleChangeMessage:];
    }
  }

LABEL_74:

  v37 = *MEMORY[0x1E69E9840];
}

- (void)messageCenter:(id)a3 didReceiveUnknownRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v8 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_ERROR))
  {
    [SYLegacyStore messageCenter:v8 didReceiveUnknownRequest:?];
  }

  v9 = [v7 idsIdentifier];
  [(SYLegacyStore *)self _postVersionRejectedForMessageID:v9];

  [v7 setExpectsResponse:0];
}

- (void)messageCenter:(id)a3 didResolveIDSIdentifierForRequest:(id)a4
{
  v5 = a4;
  v6 = [v5 idsIdentifier];

  if (v6)
  {
    v7 = +[SYStatisticStore sharedInstance];
    v8 = [v5 idsIdentifier];
    [v7 assignIdentifier:v8 toOutgoingMessage:v5];

    if ([(SYLegacyStore *)self alwaysWins])
    {
      if ([v5 messageID] - 3 <= 2)
      {
        v9 = [(SYLegacyStore *)self nextBatchStep];

        if (v9)
        {
          v10 = [(SYLegacyStore *)self nextBatchStep];
          v10[2](v10, 0, 0);
        }
      }

      if ((*&self->super._flags & 0x80000000) != 0)
      {
        v11 = [(SYStore *)self delegate];
        v12 = [v5 messageID];
        if (v12 == 5)
        {
          v13 = [v5 persistentUserInfo];
          v14 = [v13 objectForKeyedSubscript:@"UserInfo"];
          [v11 syncStoreEnqueuedAllFullSyncMessages:self context:v14];
        }

        else
        {
          if (v12 != 2)
          {
LABEL_12:

            goto LABEL_13;
          }

          v13 = [v5 persistentUserInfo];
          [v11 syncStoreEnqueuedAllFullSyncMessages:self context:v13];
        }

        goto LABEL_12;
      }
    }
  }

LABEL_13:
  v15 = [v5 pbRequest];
  v16 = [v15 header];
  v17 = [v16 sequenceNumber];

  sendSignals = self->_sendSignals;
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v17];
  v20 = [(NSMutableDictionary *)sendSignals objectForKeyedSubscript:v19];

  if (v20)
  {
    dispatch_semaphore_signal(v20);
    v21 = self->_sendSignals;
    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v17];
    [(NSMutableDictionary *)v21 removeObjectForKey:v22];
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v23 = qword_1EDE73438;
  if (os_log_type_enabled(qword_1EDE73438, OS_LOG_TYPE_DEBUG))
  {
    [SYLegacyStore messageCenter:v23 didResolveIDSIdentifierForRequest:?];
  }

  transaction = self->_transaction;
  self->_transaction = 0;
}

- (void)messageCenter:(id)a3 didResolveIDSIdentifier:(id)a4 forResponse:(id)a5
{
  if (a4)
  {
    v6 = a5;
    v7 = a4;
    v8 = +[SYStatisticStore sharedInstance];
    [v8 assignIdentifier:v7 toOutgoingMessage:v6];
  }
}

- (void)messageCenter:(id)a3 didSuccessfullySendRequestWithIdentifier:(id)a4 userInfo:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEBUG))
  {
    [SYLegacyStore messageCenter:didSuccessfullySendRequestWithIdentifier:userInfo:];
  }

  v11 = +[SYStatisticStore sharedInstance];
  v12 = [(SYLegacyStore *)self service];
  [v11 updateOutgoingMessageWithIdentifier:v9 forService:v12 sentSuccessfully:1 sendError:0];

  if ((*&self->super._flags & 0x2000) != 0)
  {
    v13 = [(SYStore *)self delegate];
    [v13 syncStore:self sentMessageWithContext:v10];
  }
}

- (void)messageCenter:(id)a3 didSuccessfullyDeliverRequestWithIdentifier:(id)a4 userInfo:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEBUG))
  {
    [SYLegacyStore messageCenter:didSuccessfullyDeliverRequestWithIdentifier:userInfo:];
  }

  v11 = +[SYStatisticStore sharedInstance];
  [v11 confirmDeliveryOfOutgoingMessage:v9];

  if ((*&self->super._flags & 0x4000) != 0)
  {
    v12 = [(SYStore *)self delegate];
    [v12 syncStore:self peerFinishedProcessingMessageWithContext:v10];
  }
}

- (id)newMessageHeader
{
  v3 = objc_opt_new();
  [v3 setTimestamp:CFAbsoluteTimeGetCurrent()];
  v4 = [SYPeer alloc];
  v5 = [(SYLegacyStore *)self persistentStore];
  v6 = [v5 peerID];
  v7 = [(SYPeer *)v4 initWithPeerID:v6 generation:0];
  [v3 setSender:v7];

  v8 = [(SYLegacyStore *)self vectorClock];
  v9 = [v8 copy];
  [v3 setState:v9];

  [v3 setVersion:1];
  v10 = [(SYLegacyStore *)self persistentStore];
  [v3 setSequenceNumber:{objc_msgSend(v10, "nextSequenceNumber")}];

  return v3;
}

- (void)_transaction:(id)a3 context:(id)a4 idsOptions:(id)a5 blockUntilSent:(BOOL)a6 reportError:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  if ([(SYPersistentStore *)self->_persistentStore completedSync])
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __76__SYLegacyStore__transaction_context_idsOptions_blockUntilSent_reportError___block_invoke;
    v17[3] = &unk_1E86CA508;
    v17[4] = self;
    v18 = v13;
    v19 = v14;
    v20 = v12;
    v22 = a6;
    v21 = v15;
    _os_activity_initiate(&dword_1DF835000, "CompanionSync Transaction", OS_ACTIVITY_FLAG_DEFAULT, v17);
  }

  else if (v15)
  {
    v16 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:1005 userInfo:0];
    (*(v15 + 2))(v15, v16);
  }
}

void __76__SYLegacyStore__transaction_context_idsOptions_blockUntilSent_reportError___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [[SYTransaction alloc] initWithStore:*(a1 + 32)];
  [(SYTransaction *)v3 setContextInfo:*(a1 + 40)];
  [(SYTransaction *)v3 setIdsOptions:*(a1 + 48)];
  (*(*(a1 + 56) + 16))();
  [(SYTransaction *)v3 commitBlocking:*(a1 + 72) reportError:*(a1 + 64)];

  objc_autoreleasePoolPop(v2);
}

- (BOOL)_allowDeltaSyncWithContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(SYLegacyStore *)self pairedDeviceID];

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:1008 userInfo:0];
  }

  if ([(SYPersistentStore *)self->_persistentStore completedSync])
  {
    if (!self->_deferredFullSync)
    {
      goto LABEL_9;
    }

    v9 = 1007;
  }

  else
  {
    v9 = 1005;
  }

  v10 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:v9 userInfo:0];

  v8 = v10;
LABEL_9:
  if (v8)
  {
    if (a4)
    {
      v11 = v8;
      *a4 = v8;
    }

    else if ((*&self->super._flags & 0x400) != 0)
    {
      v12 = [(SYLegacyStore *)self queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __50__SYLegacyStore__allowDeltaSyncWithContext_error___block_invoke;
      block[3] = &unk_1E86CA0F8;
      block[4] = self;
      v15 = v8;
      v16 = v6;
      dispatch_async(v12, block);
    }
  }

  return v8 == 0;
}

void __50__SYLegacyStore__allowDeltaSyncWithContext_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 syncStore:*(a1 + 32) encounteredError:*(a1 + 40) context:*(a1 + 48)];
}

- (BOOL)addObject:(id)a3 context:(id)a4 idsOptions:(id)a5 error:(id *)a6
{
  v21[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(SYLegacyStore *)self _allowDeltaSyncWithContext:v11 error:a6];
  if (v13)
  {
    v14 = _os_activity_create(&dword_1DF835000, "CompanionSync AddObject", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v15 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_INFO))
    {
      *v20 = 0;
      _os_log_impl(&dword_1DF835000, v15, OS_LOG_TYPE_INFO, "addObject", v20, 2u);
    }

    v16 = [SYChange changeWithObject:v10 updateType:0 store:self];
    v21[0] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    [(SYLegacyStore *)self handleObjectChanges:v17 contextInfo:v11 idsOptions:v12 blockUntilSent:0 reportError:0];
  }

  v18 = *MEMORY[0x1E69E9840];
  return v13;
}

- (BOOL)updateObject:(id)a3 context:(id)a4 idsOptions:(id)a5 error:(id *)a6
{
  v21[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(SYLegacyStore *)self _allowDeltaSyncWithContext:v11 error:a6];
  if (v13)
  {
    v14 = _os_activity_create(&dword_1DF835000, "CompanionSync UpdateObject", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v15 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_INFO))
    {
      *v20 = 0;
      _os_log_impl(&dword_1DF835000, v15, OS_LOG_TYPE_INFO, "updateObject", v20, 2u);
    }

    v16 = [SYChange changeWithObject:v10 updateType:1 store:self];
    v21[0] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    [(SYLegacyStore *)self handleObjectChanges:v17 contextInfo:v11 idsOptions:v12 blockUntilSent:0 reportError:0];
  }

  v18 = *MEMORY[0x1E69E9840];
  return v13;
}

- (BOOL)deleteObject:(id)a3 context:(id)a4 idsOptions:(id)a5 error:(id *)a6
{
  v27[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([(SYLegacyStore *)self _allowDeltaSyncWithContext:v11 error:a6])
  {
    v13 = [(SYStore *)self allowsDeletes];
    if (v13)
    {
      v14 = _os_activity_create(&dword_1DF835000, "CompanionSync DeleteObject", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v15 = qword_1EDE73420;
      if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_INFO))
      {
        v23 = 0;
        _os_log_impl(&dword_1DF835000, v15, OS_LOG_TYPE_INFO, "deleteObject", &v23, 2u);
      }

      v16 = [SYChange changeWithObject:v10 updateType:2 store:self];
      v27[0] = v16;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
      [(SYLegacyStore *)self handleObjectChanges:v17 contextInfo:v11 idsOptions:v12 blockUntilSent:0 reportError:0];
    }

    else
    {
      [(SYLegacyStore *)self postUserNotification:@"Delete Denied" message:@"A client attempted to send a delete message while deletes were denied."];
      v18 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:1006 userInfo:0];
      v14 = v18;
      if (a6)
      {
        v19 = v18;
        *a6 = v14;
      }

      else if ((*&self->super._flags & 0x400) != 0)
      {
        v20 = [(SYLegacyStore *)self queue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __55__SYLegacyStore_deleteObject_context_idsOptions_error___block_invoke;
        block[3] = &unk_1E86CA0F8;
        block[4] = self;
        v14 = v14;
        v25 = v14;
        v26 = v11;
        dispatch_async(v20, block);
      }
    }
  }

  else
  {
    v13 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v13;
}

void __55__SYLegacyStore_deleteObject_context_idsOptions_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 syncStore:*(a1 + 32) encounteredError:*(a1 + 40) context:*(a1 + 48)];
}

- (void)_handleObjectChanges:(id)a3 contextInfo:(id)a4 idsOptions:(id)a5 blockUntilSent:(BOOL)a6 reportError:(id)a7 notifyingTransaction:(id)a8
{
  v10 = a6;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  if (self->_overflowRetryTimer)
  {
    if (v17)
    {
      v17[2](v17, self->_overflowRetryError);
    }

    else if ((*&self->super._flags & 0x400) != 0)
    {
      v20 = [(SYLegacyStore *)self queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __109__SYLegacyStore__handleObjectChanges_contextInfo_idsOptions_blockUntilSent_reportError_notifyingTransaction___block_invoke;
      block[3] = &unk_1E86C9E90;
      block[4] = self;
      v35 = v15;
      dispatch_async(v20, block);
    }
  }

  else if ([(SYPersistentStore *)self->_persistentStore completedSync])
  {
    if (v10)
    {
      v19 = dispatch_semaphore_create(0);
    }

    else
    {
      v19 = 0;
    }

    v22 = [(SYLegacyStore *)self queue];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __109__SYLegacyStore__handleObjectChanges_contextInfo_idsOptions_blockUntilSent_reportError_notifyingTransaction___block_invoke_3;
    v25[3] = &unk_1E86CA558;
    v25[4] = self;
    v26 = v18;
    v27 = v14;
    v28 = v15;
    v29 = v16;
    v23 = v19;
    v30 = v23;
    dispatch_async(v22, v25);

    if (v23)
    {
      dispatch_semaphore_wait(v23, 0xFFFFFFFFFFFFFFFFLL);
    }
  }

  else
  {
    v21 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:1005 userInfo:0];
    if (v17)
    {
      v17[2](v17, v21);
    }

    else if ((*&self->super._flags & 0x400) != 0)
    {
      v24 = [(SYLegacyStore *)self queue];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __109__SYLegacyStore__handleObjectChanges_contextInfo_idsOptions_blockUntilSent_reportError_notifyingTransaction___block_invoke_2;
      v31[3] = &unk_1E86CA0F8;
      v31[4] = self;
      v32 = v21;
      v33 = v15;
      dispatch_async(v24, v31);
    }
  }
}

void __109__SYLegacyStore__handleObjectChanges_contextInfo_idsOptions_blockUntilSent_reportError_notifyingTransaction___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 syncStore:*(a1 + 32) encounteredError:*(*(a1 + 32) + 144) context:*(a1 + 40)];
}

void __109__SYLegacyStore__handleObjectChanges_contextInfo_idsOptions_blockUntilSent_reportError_notifyingTransaction___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 syncStore:*(a1 + 32) encounteredError:*(a1 + 40) context:*(a1 + 48)];
}

uint64_t __109__SYLegacyStore__handleObjectChanges_contextInfo_idsOptions_blockUntilSent_reportError_notifyingTransaction___block_invoke_3(id *a1)
{
  v2 = [a1[4] persistentStore];
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = v2;
  v4 = [a1[4] messageCenter];
  v5 = [v4 service];

  if (v5)
  {
    if ([a1[4] alwaysWins] && objc_msgSend(*(a1[4] + 23), "lastSyncFailed"))
    {
      [a1[4] setNeedsFullSync];
    }

    if ([a1[6] count])
    {
      activity_block[0] = MEMORY[0x1E69E9820];
      activity_block[1] = 3221225472;
      activity_block[2] = __109__SYLegacyStore__handleObjectChanges_contextInfo_idsOptions_blockUntilSent_reportError_notifyingTransaction___block_invoke_183;
      activity_block[3] = &unk_1E86CA530;
      activity_block[4] = a1[4];
      v12 = a1[6];
      v13 = a1[7];
      v14 = a1[8];
      v15 = a1[9];
      _os_activity_initiate(&dword_1DF835000, "CompanionSync HandleChangeList", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
    }

    else
    {
      v9 = a1[9];
      if (v9)
      {
        dispatch_semaphore_signal(v9);
      }
    }

    v8 = 1;
  }

  else
  {
LABEL_8:
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v6 = _sync_log_facilities;
    v7 = os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_DEFAULT);
    v8 = 0;
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_1DF835000, v6, OS_LOG_TYPE_DEFAULT, "No persistent store or message center set up yet; probably we're not paired. Therefore: I'm dumping this change on the ground.", buf, 2u);
      v8 = 0;
    }
  }

  return [a1[5] _transactionDidComplete:v8];
}

uint64_t __109__SYLegacyStore__handleObjectChanges_contextInfo_idsOptions_blockUntilSent_reportError_notifyingTransaction___block_invoke_183(uint64_t a1)
{
  [*(a1 + 32) logChanges:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);

  return [v2 sendChanges:v3 context:v4 options:v5 sentSignal:v6];
}

- (void)sendChanges:(id)a3 context:(id)a4 options:(id)a5 sentSignal:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(SYLegacyStore *)self queue];
  dispatch_assert_queue_V2(v14);

  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __56__SYLegacyStore_sendChanges_context_options_sentSignal___block_invoke;
  activity_block[3] = &unk_1E86CA530;
  v20 = v10;
  v21 = self;
  v22 = v13;
  v23 = v11;
  v24 = v12;
  v15 = v12;
  v16 = v11;
  v17 = v13;
  v18 = v10;
  _os_activity_initiate(&dword_1DF835000, "CompanionSync SendChanges", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __56__SYLegacyStore_sendChanges_context_options_sentSignal___block_invoke(uint64_t a1)
{
  v12 = objc_alloc_init(SYChangeMessage);
  v2 = [*(a1 + 32) mutableCopy];
  v3 = [*(a1 + 40) vectorClock];
  v4 = [*(a1 + 40) persistentStore];
  v5 = [v4 peerID];
  [v3 increaseClockForPeerID:v5 by:{objc_msgSend(v2, "count")}];

  [*(a1 + 40) _vectorClockUpdated];
  v6 = [*(a1 + 40) newMessageHeader];
  [(SYChangeMessage *)v12 setHeader:v6];

  [(SYChangeMessage *)v12 setChanges:v2];
  v7 = *(a1 + 48);
  if (v7)
  {
    v8 = *(*(a1 + 40) + 120);
    v9 = MEMORY[0x1E696AD98];
    v10 = [(SYChangeMessage *)v12 header];
    v11 = [v9 numberWithUnsignedLongLong:{objc_msgSend(v10, "sequenceNumber")}];
    [v8 setObject:v7 forKeyedSubscript:v11];
  }

  [*(a1 + 40) sendMessage:v12 ofType:6 respondingTo:0 userInfo:*(a1 + 56) idsOptions:*(a1 + 64)];
}

- (void)logChanges:(id)a3
{
  v4 = a3;
  if ([(SYLegacyStore *)self tracksChanges])
  {
    v5 = _os_activity_create(&dword_1DF835000, "CompanionSync LogChanges", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v6 = [(SYLegacyStore *)self persistentStore];
    v13 = 0;
    v7 = [v6 logChanges:v4 error:&v13];
    v8 = v13;

    if ((v7 & 1) == 0)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_ERROR))
      {
        [SYLegacyStore logChanges:];
      }

      v9 = [v8 localizedDescription];

      if (v9)
      {
        v10 = [v8 localizedDescription];
        v11 = [@"DB changelog failure. " stringByAppendingString:v10];
      }

      else
      {
        v11 = @"DB changelog failure. ";
      }

      v12 = +[SYStatisticStore sharedInstance];
      [v12 updateLastIncomingMessageWithError:v11];
    }
  }
}

- (void)setNeedsFullSyncWithContext:(id)a3 idsOptions:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_overflowRetryTimer)
  {
    v8 = [(SYLegacyStore *)self queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__SYLegacyStore_setNeedsFullSyncWithContext_idsOptions___block_invoke;
    block[3] = &unk_1E86C9FB0;
    block[4] = self;
    dispatch_async(v8, block);
  }

  else
  {
    [(SYRetryTimer *)self->_syncRetryTimer cancel];
    syncRetryTimer = self->_syncRetryTimer;
    self->_syncRetryTimer = 0;

    if ([(SYLegacyStore *)self inDeltaSync])
    {
      self->_deferredFullSync = 1;
    }

    else
    {
      v10 = [(SYLegacyStore *)self queue];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __56__SYLegacyStore_setNeedsFullSyncWithContext_idsOptions___block_invoke_2;
      v11[3] = &unk_1E86CA0F8;
      v11[4] = self;
      v12 = v6;
      v13 = v7;
      dispatch_async(v10, v11);
    }
  }
}

void __56__SYLegacyStore_setNeedsFullSyncWithContext_idsOptions___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((v2[8] & 0x200) != 0)
  {
    v3 = [v2 delegate];
    [v3 syncStore:*(a1 + 32) encounteredErrorInFullSync:*(*(a1 + 32) + 144)];
  }
}

void __56__SYLegacyStore_setNeedsFullSyncWithContext_idsOptions___block_invoke_2(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) persistentStore];
  if (!v3)
  {
    goto LABEL_12;
  }

  v4 = v3;
  v5 = [*v2 messageCenter];
  v6 = [v5 service];

  if (v6)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v7 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEBUG))
    {
      __56__SYLegacyStore_setNeedsFullSyncWithContext_idsOptions___block_invoke_2_cold_2(v2, v7);
    }

    if ([*v2 inFullSync])
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEBUG))
      {
        __56__SYLegacyStore_setNeedsFullSyncWithContext_idsOptions___block_invoke_2_cold_4();
      }
    }

    else
    {
      if ([*v2 alwaysWins])
      {
        [*v2 setFullSyncWasRequestedBySlave:0];
      }

      v10 = [*(a1 + 32) persistentStore];
      [v10 setCompletedSync:0];

      v11 = *(a1 + 40);
      v12 = [*(a1 + 32) persistentStore];
      [v12 setFullSyncUserInfo:v11];

      v13 = *(a1 + 48);
      v14 = [*(a1 + 32) persistentStore];
      [v14 setFullSyncIDSOptions:v13];

      [*(a1 + 32) performFullSyncIfNecessary];
    }
  }

  else
  {
LABEL_12:
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v8 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_1DF835000, v8, OS_LOG_TYPE_DEFAULT, "No persistent store or message center set up yet; probably we're not paired. Therefore: I'm dumping this change on the ground.", v15, 2u);
    }

    if ((*(*v2 + 8) & 0x200) != 0)
    {
      v9 = [*v2 delegate];
      [v9 syncStore:*v2 encounteredErrorInFullSync:*(*v2 + 18)];
    }
  }
}

- (void)remoteStoreAllObjects:(id)a3 fromPeer:(id)a4 clock:(id)a5
{
  v41 = *MEMORY[0x1E69E9840];
  v29 = a3;
  v8 = a4;
  v9 = a5;
  v10 = _os_activity_create(&dword_1DF835000, "CompanionSync remoteStoreAllObjects", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v11 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEBUG))
  {
    v26 = v11;
    [v8 peerID];
    v28 = v27 = v10;
    *buf = 138543874;
    v36 = v28;
    v37 = 2048;
    v38 = [v29 count];
    v39 = 2048;
    v40 = [v9 version];
    _os_log_debug_impl(&dword_1DF835000, v26, OS_LOG_TYPE_DEBUG, "remoteStoreAllObjects from %{public}@, %lu objects, version %qu", buf, 0x20u);

    v10 = v27;
  }

  if ([(SYLegacyStore *)self alwaysWins])
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_ERROR))
    {
      [SYLegacyStore remoteStoreAllObjects:fromPeer:clock:];
    }

    v12 = +[SYStatisticStore sharedInstance];
    [v12 updateLastIncomingMessageWithError:@"Sync sent to master"];

    [MEMORY[0x1E695DF30] raise:@"Full sync sent to master device" format:@"Only the slave device should receive a full sync (from the master)"];
  }

  v13 = [(SYStore *)self delegate];
  if (v13)
  {
    Current = CFAbsoluteTimeGetCurrent();
    flags = self->super._flags;
    if ((flags & 2) != 0)
    {
      v16 = v10;
      v17 = v8;
      [v13 syncStoreWillUpdate:self objectCount:{objc_msgSend(v29, "count")}];
    }

    else
    {
      v16 = v10;
      v17 = v8;
      if (flags)
      {
        [v13 syncStoreWillUpdate:self];
      }
    }

    if ((*&self->super._flags & 0x10) != 0)
    {
      [v13 syncStoreAllObjectsDeleted:self];
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v18 = v29;
    v19 = [v18 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v31;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v31 != v21)
          {
            objc_enumerationMutation(v18);
          }

          [v13 syncStore:self objectAdded:*(*(&v30 + 1) + 8 * i)];
        }

        v20 = [v18 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v20);
    }

    v23 = self->super._flags;
    if ((v23 & 4) != 0)
    {
      [v13 syncStoreDidUpdate:self];
      v23 = self->super._flags;
    }

    v8 = v17;
    v10 = v16;
    if ((v23 & 8) != 0)
    {
      [v13 syncStoreDidCompleteFullSync:self];
    }

    v24 = +[SYStatisticStore sharedInstance];
    [v24 updateLastIncomingMessageWithProcessingTime:CFAbsoluteTimeGetCurrent() - Current];
  }

  else
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_ERROR))
    {
      [SYLegacyStore remoteStoreAllObjects:fromPeer:clock:];
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)remoteStoreRequestFullSync
{
  if (![(SYLegacyStore *)self alwaysWins])
  {
    v3 = +[SYStatisticStore sharedInstance];
    [v3 updateLastIncomingMessageWithError:@"Sync request sent to slave"];

    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_ERROR))
    {
      [SYLegacyStore remoteStoreRequestFullSync];
    }

    [MEMORY[0x1E695DF30] raise:@"Full sync requested from slave device" format:@"Only the master device can send a full sync (to the slave)"];
  }

  [(SYRetryTimer *)self->_syncRetryTimer cancel];
  syncRetryTimer = self->_syncRetryTimer;
  self->_syncRetryTimer = 0;

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v5 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1DF835000, v5, OS_LOG_TYPE_DEFAULT, "Full Sync requested by Gizmo", v6, 2u);
  }

  [(SYLegacyStore *)self setFullSyncWasRequestedBySlave:1];
  [(SYLegacyStore *)self performFullSync];
}

- (void)performFullSyncIfNecessaryAskingDelegate:(BOOL)a3
{
  v3 = a3;
  if (![(SYLegacyStore *)self inFullSync])
  {
    goto LABEL_9;
  }

  if (v3 && [(SYLegacyStore *)self alwaysWins])
  {
    if ([(SYPersistentStore *)self->_persistentStore currentSyncSendComplete])
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEBUG))
      {
        [SYLegacyStore performFullSyncIfNecessaryAskingDelegate:];
      }

      return;
    }

    v6 = [MEMORY[0x1E696ABC0] errorWithSYError:1004 userInfo:0];
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__SYLegacyStore_performFullSyncIfNecessaryAskingDelegate___block_invoke;
    block[3] = &unk_1E86C9E90;
    block[4] = self;
    v12 = v6;
    v8 = v6;
    dispatch_async(queue, block);

LABEL_9:
    v5 = self->_queue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __58__SYLegacyStore_performFullSyncIfNecessaryAskingDelegate___block_invoke_206;
    v9[3] = &unk_1E86CA3D8;
    v9[4] = self;
    v10 = v3;
    dispatch_async(v5, v9);
    return;
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEBUG))
  {
    [SYLegacyStore performFullSyncIfNecessaryAskingDelegate:];
  }
}

void __58__SYLegacyStore_performFullSyncIfNecessaryAskingDelegate___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _postBatchEndMessageWithState:0 error:*(a1 + 40) then:0];
  v2 = *(*(a1 + 32) + 184);
  v3 = [v2 currentFullSyncID];
  [v2 exitFullSyncWithID:v3 error:*(a1 + 40)];
}

void __58__SYLegacyStore_performFullSyncIfNecessaryAskingDelegate___block_invoke_206(uint64_t a1)
{
  v2 = [*(a1 + 32) persistentStore];
  v3 = [v2 completedSync];

  if (v3)
  {
    return;
  }

  v4 = *(a1 + 32);
  if ((v4[8] & 0x40) == 0 || !*(a1 + 40))
  {
    if (*(a1 + 40))
    {
      return;
    }

    goto LABEL_11;
  }

  v5 = [v4 delegate];
  v6 = [v5 syncStoreShouldPerformInitialFullSync:*(a1 + 32)];

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEBUG))
  {
    __58__SYLegacyStore_performFullSyncIfNecessaryAskingDelegate___block_invoke_206_cold_2();
  }

  if (v6)
  {
LABEL_11:
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEBUG))
    {
      __58__SYLegacyStore_performFullSyncIfNecessaryAskingDelegate___block_invoke_206_cold_4();
    }

    [*(a1 + 32) performFullSyncToCurrentDBVersion];
  }
}

- (void)performFullSyncToCurrentDBVersion
{
  v49 = *MEMORY[0x1E69E9840];
  if ([(SYLegacyStore *)self inDeltaSync])
  {
    self->_deferredFullSync = 1;
  }

  else
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEBUG))
    {
      [SYLegacyStore performFullSyncToCurrentDBVersion];
    }

    if ([(SYLegacyStore *)self alwaysWins])
    {
      v3 = [(SYLegacyStore *)self persistentStore];
      v4 = [v3 currentLocalVersion];

      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEBUG))
      {
        [SYLegacyStore performFullSyncToCurrentDBVersion];
      }

      flags = self->super._flags;
      if ((flags & 0x80) != 0)
      {
        if ([(SYLegacyStore *)self performBatchedSyncToCurrentDBVersion])
        {
          goto LABEL_46;
        }
      }

      else if ((flags & 0x20) == 0)
      {
        [MEMORY[0x1E695DF30] raise:@"Missing delegate method" format:@"The delegate on the master (alwaysWins) side must implement syncStoreAllObjects"];
      }

      v18 = [(SYStore *)self delegate];
      v19 = [v18 syncStoreAllObjects:self];

      v16 = [MEMORY[0x1E695DF70] array];
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v13 = v19;
      v20 = [(SYRequestFullSync *)v13 countByEnumeratingWithState:&v40 objects:v48 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v41;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v41 != v22)
            {
              objc_enumerationMutation(v13);
            }

            v24 = [(SYStore *)self encodeSYObject:*(*(&v40 + 1) + 8 * i)];
            [v16 addObject:v24];
          }

          v21 = [(SYRequestFullSync *)v13 countByEnumeratingWithState:&v40 objects:v48 count:16];
        }

        while (v21);
      }

      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v25 = qword_1EDE73420;
      if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
      {
        v26 = v25;
        v27 = [v16 count];
        *buf = 134218240;
        v45 = v27;
        v46 = 2048;
        v47 = v4;
        _os_log_impl(&dword_1DF835000, v26, OS_LOG_TYPE_DEFAULT, "performFullSync - %lu objects, %lu finalVersion", buf, 0x16u);
      }

      v28 = [(SYPersistentStore *)self->_persistentStore currentFullSyncID];

      if (!v28)
      {
        v29 = [(SYLegacyStore *)self persistentStore];
        v30 = [v29 completedSync];

        if (v30)
        {
          v31 = objc_opt_new();
          v32 = [v31 UUIDString];
        }

        else
        {
          v31 = [@"InitialSync" stringByAppendingString:@"-Master-"];
          v33 = objc_opt_new();
          v34 = [v33 UUIDString];
          v32 = [v31 stringByAppendingString:v34];
        }

        [(SYPersistentStore *)self->_persistentStore enterFullSyncWithID:v32 ignoring:0];
      }

      v17 = objc_alloc_init(SYSyncAllObjects);
      v35 = [(SYLegacyStore *)self newMessageHeader];
      [(SYSyncAllObjects *)v17 setHeader:v35];

      v36 = [(SYPersistentStore *)self->_persistentStore currentFullSyncID];
      [(SYSyncAllObjects *)v17 setSyncID:v36];

      [(SYSyncAllObjects *)v17 setVersion:0];
      [(SYSyncAllObjects *)v17 setAllObjects:v16];
      v37 = [(SYPersistentStore *)self->_persistentStore fullSyncUserInfo];
      v38 = [(SYPersistentStore *)self->_persistentStore fullSyncIDSOptions];
      [(SYLegacyStore *)self sendMessage:v17 ofType:2 respondingTo:0 userInfo:v37 idsOptions:v38];

      [(SYPersistentStore *)self->_persistentStore setCompletedSync:1];
    }

    else
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEBUG))
      {
        [SYLegacyStore performFullSyncToCurrentDBVersion];
      }

      v6 = [(SYPersistentStore *)self->_persistentStore currentFullSyncID];

      if (!v6)
      {
        v7 = [(SYLegacyStore *)self persistentStore];
        v8 = [v7 completedSync];

        v9 = objc_opt_new();
        v10 = [v9 UUIDString];
        v11 = v10;
        if ((v8 & 1) == 0)
        {
          v12 = [@"InitialSync" stringByAppendingFormat:@"-%@", v10];

          v11 = v12;
        }

        [(SYPersistentStore *)self->_persistentStore enterFullSyncWithID:v11 ignoring:0];
      }

      v13 = objc_alloc_init(SYRequestFullSync);
      v14 = [(SYLegacyStore *)self newMessageHeader];
      [(SYRequestFullSync *)v13 setHeader:v14];

      v15 = [(SYPersistentStore *)self->_persistentStore currentFullSyncID];
      [(SYRequestFullSync *)v13 setSyncID:v15];

      v16 = [(SYPersistentStore *)self->_persistentStore fullSyncUserInfo];
      v17 = [(SYPersistentStore *)self->_persistentStore fullSyncIDSOptions];
      [(SYLegacyStore *)self sendMessage:v13 ofType:1 respondingTo:0 userInfo:v16 idsOptions:v17];
    }

    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEBUG))
    {
      [SYLegacyStore performFullSyncToCurrentDBVersion];
    }
  }

LABEL_46:
  v39 = *MEMORY[0x1E69E9840];
}

- (void)performFullSync
{
  if (![(SYLegacyStore *)self fullSyncWasRequestedBySlave])
  {
    if ([(SYLegacyStore *)self inFullSync])
    {
      return;
    }

    v3 = objc_opt_new();
    v4 = [v3 UUIDString];

    [(SYPersistentStore *)self->_persistentStore enterFullSyncWithID:v4 ignoring:0];
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__SYLegacyStore_performFullSync__block_invoke;
  block[3] = &unk_1E86C9FB0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (BOOL)objectChanged:(id)a3 sinceVersion:(unint64_t)a4
{
  v6 = a3;
  if ([(SYLegacyStore *)self tracksChanges])
  {
    v7 = [(SYLegacyStore *)self persistentStore];
    v8 = [v7 objectChanged:v6 sinceVersion:a4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)newFullSyncContext
{
  v2 = objc_alloc(MEMORY[0x1E695DF90]);

  return [v2 initWithCapacity:4];
}

- (void)_retrySync
{
  syncRetryTimer = self->_syncRetryTimer;
  if (syncRetryTimer)
  {
    if (![(SYRetryTimer *)syncRetryTimer incrementBackoff])
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_ERROR))
      {
        [SYLegacyStore(FullSyncSupport) _retrySync];
      }

      v4 = self->_syncRetryTimer;
      self->_syncRetryTimer = 0;
    }
  }

  else
  {
    objc_initWeak(&location, self);
    v5 = [SYRetryTimer alloc];
    v6 = [(SYLegacyStore *)self queue];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __44__SYLegacyStore_FullSyncSupport___retrySync__block_invoke;
    v9[3] = &unk_1E86CA190;
    objc_copyWeak(&v10, &location);
    v7 = [(SYRetryTimer *)v5 initWithInterval:3 backoffFactor:v6 maxRetries:v9 queue:15.0 callout:2.0];
    v8 = self->_syncRetryTimer;
    self->_syncRetryTimer = v7;

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __44__SYLegacyStore_FullSyncSupport___retrySync__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained performFullSyncToCurrentDBVersion];
}

- (void)_postBatchStartMessageWithState:(id)a3 then:(id)a4
{
  v6 = a4;
  v7 = a3;
  v11 = objc_opt_new();
  v8 = [(SYLegacyStore *)self newMessageHeader];
  [v11 setHeader:v8];

  v9 = [v7 objectForKeyedSubscript:@"SyncID"];
  [v11 setSyncID:v9];

  [(SYLegacyStore *)self setNextBatchStep:v6];
  v10 = [v7 objectForKeyedSubscript:@"IDSOptions"];
  [(SYLegacyStore *)self sendMessage:v11 ofType:3 respondingTo:0 userInfo:v7 idsOptions:v10];
}

- (void)_postBatchEndMessageWithState:(id)a3 error:(id)a4 then:(id)a5
{
  v28[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_new();
  v12 = [(SYLegacyStore *)self newMessageHeader];
  [v11 setHeader:v12];

  v13 = [v8 objectForKeyedSubscript:@"SyncID"];
  [v11 setSyncID:v13];

  if (!v9)
  {
    goto LABEL_5;
  }

  v14 = [[SYErrorInfo alloc] initWithError:v9];
  [v11 setError:v14];

  v15 = [v11 syncID];
  if (v15)
  {
    v16 = v15;
    v17 = [v11 header];
    v18 = [v17 sender];
    if (v18)
    {
      v19 = v18;
      v20 = [v11 header];
      v21 = [v20 state];

      if (v21)
      {
LABEL_5:
        [(SYLegacyStore *)self setNextBatchStep:v10];
        v22 = [v8 objectForKeyedSubscript:@"IDSOptions"];
        [(SYLegacyStore *)self sendMessage:v11 ofType:5 respondingTo:0 userInfo:v8 idsOptions:v22];
LABEL_13:

        goto LABEL_14;
      }
    }

    else
    {
    }
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEBUG))
  {
    [SYLegacyStore(BatchedSyncSupport) _postBatchEndMessageWithState:error:then:];
  }

  if ((*&self->super._flags & 0x200) != 0)
  {
    v23 = objc_alloc(MEMORY[0x1E696ABC0]);
    v27 = *MEMORY[0x1E696AA08];
    v28[0] = v9;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v22 = [v23 initWithSYError:2017 userInfo:v24];

    v25 = [(SYStore *)self delegate];
    [v25 syncStore:self encounteredErrorInFullSync:v22];

    goto LABEL_13;
  }

LABEL_14:

  v26 = *MEMORY[0x1E69E9840];
}

- (void)_restartBatchSyncWithState:(id)a3 then:(id)a4
{
  batchChunkUnackedIndices = self->_batchChunkUnackedIndices;
  v7 = a4;
  v8 = a3;
  [(NSMutableIndexSet *)batchChunkUnackedIndices removeAllIndexes];
  [(SYLegacyStore *)self _postBatchStartMessageWithState:v8 then:v7];
}

- (void)_sendBatchChunk:(id)a3 withState:(id)a4 then:(id)a5
{
  v31 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v8, "count")}];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v12 = v8;
  v13 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v27;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [(SYStore *)self encodeSYObject:*(*(&v26 + 1) + 8 * i), v26];
        if (v17)
        {
          [v11 addObject:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v14);
  }

  v18 = [MEMORY[0x1E696AFB0] UUID];
  v19 = [v18 UUIDString];

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEBUG))
  {
    [SYLegacyStore(BatchedSyncSupport) _sendBatchChunk:withState:then:];
  }

  v20 = objc_opt_new();
  v21 = [(SYLegacyStore *)self newMessageHeader];
  [v20 setHeader:v21];

  v22 = [v9 objectForKeyedSubscript:@"SyncID"];
  [v20 setSyncID:v22];

  v23 = [v9 objectForKeyedSubscript:@"BatchIndex"];
  [v20 setChunkIndex:{objc_msgSend(v23, "unsignedIntValue")}];

  [v20 setObjects:v11];
  [(SYLegacyStore *)self setNextBatchStep:v10];
  v24 = [v9 objectForKeyedSubscript:@"IDSOptions"];
  [(SYLegacyStore *)self sendMessage:v20 ofType:4 respondingTo:0 userInfo:v9 idsOptions:v24];

  v25 = *MEMORY[0x1E69E9840];
}

- (BOOL)performBatchedSyncToCurrentDBVersion
{
  v69 = *MEMORY[0x1E69E9840];
  v42 = [MEMORY[0x1E696AFB0] UUID];
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v3 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [v42 UUIDString];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v5;
    _os_log_impl(&dword_1DF835000, v4, OS_LOG_TYPE_DEFAULT, "performBatchedSync: assigned UUID %{public}@", &buf, 0xCu);
  }

  v40 = _os_activity_create(&dword_1DF835000, "CompanionSync BatchedFullSync", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v6 = [(SYStore *)self delegate];
  v7 = [v6 beginSyncingAllObjectsForStore:self];

  if (v7)
  {
    v8 = [(SYPersistentStore *)self->_persistentStore currentFullSyncID];
    v9 = [(SYLegacyStore *)self persistentStore];
    [v9 setCompletedSync:0];

    v10 = [(SYPersistentStore *)self->_persistentStore currentFullSyncID];
    LODWORD(v9) = v10 == 0;

    if (v9)
    {
      v11 = objc_opt_new();
      v41 = [v11 UUIDString];

      [(SYPersistentStore *)self->_persistentStore enterFullSyncWithID:v41 ignoring:0];
    }

    else
    {
      v41 = v8;
    }

    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v12 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      v14 = [v42 UUIDString];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v14;
      _os_log_impl(&dword_1DF835000, v13, OS_LOG_TYPE_DEFAULT, "Entering batch sync loop for UUID %{public}@", &buf, 0xCu);
    }

    v15 = [(SYLegacyStore *)self newFullSyncContext];
    [v15 setObject:v41 forKeyedSubscript:@"SyncID"];
    v16 = [(SYPersistentStore *)self->_persistentStore fullSyncUserInfo];
    v17 = v16 == 0;

    if (!v17)
    {
      v18 = [(SYPersistentStore *)self->_persistentStore fullSyncUserInfo];
      [v15 setObject:v18 forKeyedSubscript:@"UserInfo"];
    }

    v19 = [(SYPersistentStore *)self->_persistentStore fullSyncIDSOptions];
    v20 = v19 == 0;

    if (!v20)
    {
      v21 = [(SYPersistentStore *)self->_persistentStore fullSyncIDSOptions];
      [v15 setObject:v21 forKeyedSubscript:@"IDSOptions"];
    }

    batchChunkUnackedIndices = self->_batchChunkUnackedIndices;
    if (batchChunkUnackedIndices)
    {
      [(NSMutableIndexSet *)batchChunkUnackedIndices removeAllIndexes];
    }

    else
    {
      v23 = objc_opt_new();
      v24 = self->_batchChunkUnackedIndices;
      self->_batchChunkUnackedIndices = v23;
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v67 = 0x2020000000;
    v68 = 0;
    v65[0] = 0;
    v65[1] = v65;
    v65[2] = 0x2020000000;
    v65[3] = 0;
    v25 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:25];
    v63[0] = 0;
    v63[1] = v63;
    v63[2] = 0x2020000000;
    v64 = 0;
    objc_initWeak(&location, self);
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = __73__SYLegacyStore_BatchedSyncSupport__performBatchedSyncToCurrentDBVersion__block_invoke;
    v60[3] = &unk_1E86CA580;
    objc_copyWeak(&v61, &location);
    v26 = MEMORY[0x1E12E11B0](v60);
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __73__SYLegacyStore_BatchedSyncSupport__performBatchedSyncToCurrentDBVersion__block_invoke_2;
    v56[3] = &unk_1E86CA5D0;
    objc_copyWeak(&v59, &location);
    v27 = v15;
    v57 = v27;
    v28 = v26;
    v58 = v28;
    v29 = MEMORY[0x1E12E11B0](v56);
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __73__SYLegacyStore_BatchedSyncSupport__performBatchedSyncToCurrentDBVersion__block_invoke_548;
    v54[3] = &unk_1E86CA5F8;
    v30 = v29;
    v55 = v30;
    v31 = MEMORY[0x1E12E11B0](v54);
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __73__SYLegacyStore_BatchedSyncSupport__performBatchedSyncToCurrentDBVersion__block_invoke_2_549;
    v43[3] = &unk_1E86CA648;
    objc_copyWeak(&v53, &location);
    v43[4] = self;
    v32 = v27;
    v44 = v32;
    p_buf = &buf;
    v33 = v30;
    v46 = v33;
    v34 = v25;
    v45 = v34;
    v51 = v65;
    v47 = v7;
    v52 = v63;
    v35 = v31;
    v48 = v35;
    v36 = v28;
    v49 = v36;
    v37 = MEMORY[0x1E12E11B0](v43);
    [(SYLegacyStore *)self _postBatchStartMessageWithState:v32 then:v37];

    objc_destroyWeak(&v53);
    objc_destroyWeak(&v59);

    objc_destroyWeak(&v61);
    objc_destroyWeak(&location);
    _Block_object_dispose(v63, 8);

    _Block_object_dispose(v65, 8);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEBUG))
    {
      [SYLegacyStore(BatchedSyncSupport) performBatchedSyncToCurrentDBVersion];
    }
  }

  v38 = *MEMORY[0x1E69E9840];
  return v7 != 0;
}

void __73__SYLegacyStore_BatchedSyncSupport__performBatchedSyncToCurrentDBVersion__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!a2 && WeakRetained)
  {
    v7 = WeakRetained;
    v4 = [WeakRetained persistentStore];
    v5 = [v7 persistentStore];
    v6 = [v5 currentFullSyncID];
    [v4 sendCompletedForSyncWithID:v6];

    WeakRetained = v7;
  }
}

void __73__SYLegacyStore_BatchedSyncSupport__performBatchedSyncToCurrentDBVersion__block_invoke_2(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = *(a1 + 32);
    if (a3)
    {
      v9 = MEMORY[0x1E69E9820];
      v10 = 3221225472;
      v11 = __73__SYLegacyStore_BatchedSyncSupport__performBatchedSyncToCurrentDBVersion__block_invoke_3;
      v12 = &unk_1E86CA5A8;
      v13 = WeakRetained;
      v14 = *(a1 + 32);
      [v13 _postBatchEndMessageWithState:v8 error:v5 then:&v9];

      if (!v5)
      {
        goto LABEL_11;
      }
    }

    else
    {
      [WeakRetained _postBatchEndMessageWithState:*(a1 + 32) error:v5 then:*(a1 + 40)];
      if (!v5)
      {
        goto LABEL_11;
      }
    }

    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_ERROR))
    {
      __73__SYLegacyStore_BatchedSyncSupport__performBatchedSyncToCurrentDBVersion__block_invoke_2_cold_2();
    }

    [v7 _retrySync];
  }

LABEL_11:
}

void __73__SYLegacyStore_BatchedSyncSupport__performBatchedSyncToCurrentDBVersion__block_invoke_3(uint64_t a1)
{
  v8 = objc_opt_new();
  v2 = [*(a1 + 32) newMessageHeader];
  [v8 setHeader:v2];

  v3 = objc_opt_new();
  [v8 setAllObjects:v3];

  [v8 setVersion:0];
  v4 = [*(a1 + 40) objectForKeyedSubscript:@"SyncID"];
  [v8 setSyncID:v4];

  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = [v6[23] fullSyncIDSOptions];
  [v6 sendMessage:v8 ofType:2 respondingTo:0 userInfo:v5 idsOptions:v7];
}

void __73__SYLegacyStore_BatchedSyncSupport__performBatchedSyncToCurrentDBVersion__block_invoke_2_549(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 112));
  if (WeakRetained)
  {
    v7 = [*(*(a1 + 32) + 184) currentFullSyncID];

    if (v7)
    {
      goto LABEL_6;
    }

    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_ERROR))
    {
      __73__SYLegacyStore_BatchedSyncSupport__performBatchedSyncToCurrentDBVersion__block_invoke_2_549_cold_2();
      if (!v5)
      {
LABEL_13:
        [*(a1 + 48) removeAllObjects];
        v33 = 0;
        v34[0] = &v33;
        v34[1] = 0x3032000000;
        v34[2] = __Block_byref_object_copy__3;
        v34[3] = __Block_byref_object_dispose__3;
        v35 = 0;
        activity_block[0] = MEMORY[0x1E69E9820];
        activity_block[1] = 3221225472;
        activity_block[2] = __73__SYLegacyStore_BatchedSyncSupport__performBatchedSyncToCurrentDBVersion__block_invoke_550;
        activity_block[3] = &unk_1E86CA620;
        v31 = *(a1 + 96);
        v30 = *(a1 + 64);
        v29 = *(a1 + 48);
        v32 = &v33;
        _os_activity_initiate(&dword_1DF835000, "Fetching sync batch", OS_ACTIVITY_FLAG_DEFAULT, activity_block);

        v10 = *(*(*(a1 + 96) + 8) + 24);
        if (v10 == 3)
        {

          if (_sync_log_facilities_pred != -1)
          {
            [SYIncomingSyncAllObjectsSession _continueProcessing];
          }

          v14 = qword_1EDE73420;
          if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
          {
            *v27 = 0;
            _os_log_impl(&dword_1DF835000, v14, OS_LOG_TYPE_DEFAULT, "CompanionSync: batched full-sync restart requested", v27, 2u);
          }

          v15 = *(a1 + 40);
          v12 = [WeakRetained nextBatchStep];
          [WeakRetained _restartBatchSyncWithState:v15 then:v12];
          v5 = 0;
          goto LABEL_53;
        }

        if (v10 == 4 && *(v34[0] + 40))
        {
          if (_sync_log_facilities_pred != -1)
          {
            [SYIncomingSyncAllObjectsSession _continueProcessing];
          }

          if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_ERROR))
          {
            __73__SYLegacyStore_BatchedSyncSupport__performBatchedSyncToCurrentDBVersion__block_invoke_2_549_cold_7(v34);
          }

          *(*(*(a1 + 104) + 8) + 24) = 1;
          (*(*(a1 + 56) + 16))();
          goto LABEL_54;
        }

        v11 = [WeakRetained delegate];
        v12 = v11;
        v13 = *(*(*(a1 + 96) + 8) + 24);
        if (v13 == 2 || v13 == 4)
        {
          if ((WeakRetained[8] & 0x100) != 0)
          {
            [v11 syncStoreShouldDeleteRemoteObjectsOnFailedFullSync:*(a1 + 32)];
          }

          if (!*(v34[0] + 40))
          {
            if (*(*(*(a1 + 96) + 8) + 24) == 2)
            {
              [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3072 userInfo:0];
            }

            else
            {
              [MEMORY[0x1E696ABC0] errorWithSYError:1004 userInfo:0];
            }
            v16 = ;
            v22 = *(v34[0] + 40);
            *(v34[0] + 40) = v16;
          }

          v23 = *(v34[0] + 40);
          (*(*(a1 + 56) + 16))();
        }

        else
        {

          if ([*(a1 + 48) count])
          {
            v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(*(*(a1 + 88) + 8) + 24)];
            [*(a1 + 40) setObject:v17 forKeyedSubscript:@"BatchIndex"];

            v19 = *(a1 + 40);
            v18 = *(a1 + 48);
            v20 = *(*(*(a1 + 96) + 8) + 24);
            if (v20 == 1)
            {
              v21 = *(a1 + 72);
            }

            else
            {
              v21 = [WeakRetained nextBatchStep];
            }

            [WeakRetained _sendBatchChunk:v18 withState:v19 then:v21];
            if (v20 != 1)
            {
            }

            v24 = *(*(a1 + 32) + 104);
            ++*(*(*(a1 + 88) + 8) + 24);
            [v24 addIndex:?];
          }

          else
          {
            [*(a1 + 32) _postBatchEndMessageWithState:*(a1 + 40) error:0 then:*(a1 + 80)];
          }

          v5 = 0;
        }

        v25 = *(*(*(a1 + 96) + 8) + 24);
        if (v25 == 4)
        {
          if ((*(*(*(a1 + 104) + 8) + 24) & 1) != 0 || (*(*(a1 + 32) + 16) & 0x200) == 0)
          {
LABEL_53:

LABEL_54:
            _Block_object_dispose(&v33, 8);

            goto LABEL_55;
          }

          [v12 syncStore:WeakRetained encounteredErrorInFullSync:*(v34[0] + 40)];
          v25 = *(*(*(a1 + 96) + 8) + 24);
        }

        if (v25 == 1)
        {
          v26 = [WeakRetained persistentStore];
          [v26 setCompletedSync:1];
        }

        goto LABEL_53;
      }
    }

    else
    {
LABEL_6:
      if (!v5)
      {
        goto LABEL_13;
      }
    }

    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_ERROR))
    {
      __73__SYLegacyStore_BatchedSyncSupport__performBatchedSyncToCurrentDBVersion__block_invoke_2_549_cold_4();
    }

    if (a3 == 1)
    {
      v8 = *(a1 + 40);
      v9 = [WeakRetained nextBatchStep];
      [WeakRetained _restartBatchSyncWithState:v8 then:v9];

      *(*(*(a1 + 88) + 8) + 24) = 0;
      goto LABEL_13;
    }

    (*(*(a1 + 56) + 16))();
  }

LABEL_55:
}

void __73__SYLegacyStore_BatchedSyncSupport__performBatchedSyncToCurrentDBVersion__block_invoke_550(void *a1)
{
  v2 = a1[5];
  v3 = a1[4];
  v7 = 0;
  v4 = (*(v2 + 16))();
  v5 = v7;
  v6 = v7;
  *(*(a1[6] + 8) + 24) = v4;
  if (v6)
  {
    objc_storeStrong((*(a1[7] + 8) + 40), v5);
  }
}

- (void)processBatchSyncStart
{
  if ([(SYLegacyStore *)self alwaysWins])
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_ERROR))
    {
      [SYLegacyStore(BatchedSyncSupport) processBatchSyncStart];
    }

    [MEMORY[0x1E695DF30] raise:@"Full batched sync sent to master device" format:@"Only the slave device should receive a full sync (from the master)"];
  }

  Current = CFAbsoluteTimeGetCurrent();
  v4 = [(SYStore *)self delegate];
  v5 = _os_activity_create(&dword_1DF835000, "CompanionSync ProcessBatchSyncStart", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __58__SYLegacyStore_BatchedSyncSupport__processBatchSyncStart__block_invoke;
  v11 = &unk_1E86C9E90;
  v12 = self;
  v13 = v4;
  v6 = v4;
  os_activity_apply(v5, &v8);
  v7 = [SYStatisticStore sharedInstance:v8];
  [v7 updateLastIncomingMessageWithProcessingTime:CFAbsoluteTimeGetCurrent() - Current];
}

void __58__SYLegacyStore_BatchedSyncSupport__processBatchSyncStart__block_invoke(uint64_t a1)
{
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEBUG))
  {
    __58__SYLegacyStore_BatchedSyncSupport__processBatchSyncStart__block_invoke_cold_2();
  }

  v2 = *(*(a1 + 32) + 16);
  if ((v2 & 2) != 0)
  {
    [*(a1 + 40) syncStoreWillUpdate:? objectCount:?];
  }

  else if (v2)
  {
    [*(a1 + 40) syncStoreWillUpdate:?];
  }

  v3 = *(*(a1 + 32) + 16);
  if ((v3 & 0x10) != 0)
  {
    [*(a1 + 40) syncStoreAllObjectsDeleted:?];
    v3 = *(*(a1 + 32) + 16);
  }

  if ((v3 & 4) != 0)
  {
    [*(a1 + 40) syncStoreDidUpdate:?];
  }
}

- (void)processBatchSyncEnd:(unint64_t)a3
{
  v4 = _os_activity_create(&dword_1DF835000, "CompanionSync ProcessBatchSyncEnd", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEBUG))
  {
    [SYLegacyStore(BatchedSyncSupport) processBatchSyncEnd:];
  }

  if ((*&self->super._flags & 8) != 0)
  {
    v5 = [(SYStore *)self delegate];
    [v5 syncStoreDidCompleteFullSync:self];
  }
}

- (BOOL)processBatchChunkAtIndex:(unsigned int)a3 encodedObjects:(id)a4 error:(id *)a5
{
  v6 = a4;
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v7 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEBUG))
  {
    [SYLegacyStore(BatchedSyncSupport) processBatchChunkAtIndex:v7 encodedObjects:? error:?];
  }

  Current = CFAbsoluteTimeGetCurrent();
  v9 = _os_activity_create(&dword_1DF835000, "CompanionSync Delivering Batch Chunk", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __83__SYLegacyStore_BatchedSyncSupport__processBatchChunkAtIndex_encodedObjects_error___block_invoke;
  v16 = &unk_1E86C9E90;
  v17 = v6;
  v18 = self;
  v10 = v6;
  os_activity_apply(v9, &v13);
  v11 = [SYStatisticStore sharedInstance:v13];
  [v11 updateLastIncomingMessageWithProcessingTime:CFAbsoluteTimeGetCurrent() - Current];

  return 1;
}

uint64_t __83__SYLegacyStore_BatchedSyncSupport__processBatchChunkAtIndex_encodedObjects_error___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __83__SYLegacyStore_BatchedSyncSupport__processBatchChunkAtIndex_encodedObjects_error___block_invoke_2;
  v3[3] = &unk_1E86CA670;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 enumerateObjectsUsingBlock:v3];
}

void __83__SYLegacyStore_BatchedSyncSupport__processBatchChunkAtIndex_encodedObjects_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) decodeSYObject:a2];
  if (v3)
  {
    v4 = [*v2 delegate];
    [v4 syncStore:*v2 objectAdded:v3];
  }

  else
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v5 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_ERROR))
    {
      __83__SYLegacyStore_BatchedSyncSupport__processBatchChunkAtIndex_encodedObjects_error___block_invoke_2_cold_2(v2, v5);
    }
  }
}

- (void)processBatchChunkAck:(unsigned int)a3
{
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEBUG))
  {
    [SYLegacyStore(BatchedSyncSupport) processBatchChunkAck:];
  }

  if (([(NSMutableIndexSet *)self->_batchChunkUnackedIndices containsIndex:a3]& 1) != 0)
  {
    [(NSMutableIndexSet *)self->_batchChunkUnackedIndices removeIndex:a3];
  }

  else
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v5 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_ERROR))
    {
      [(SYLegacyStore(BatchedSyncSupport) *)a3 processBatchChunkAck:v5];
    }
  }
}

- (void)willBeginDeltaSync
{
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v3 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1DF835000, v3, OS_LOG_TYPE_DEFAULT, "Beginning SYLegacyStore delta sync", v4, 2u);
  }

  [(SYPersistentStore *)self->_persistentStore setPerformingDeltaSync:1];
}

- (void)didEndDeltaSync
{
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v3 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1DF835000, v3, OS_LOG_TYPE_DEFAULT, "Ended SYLegacyStore delta sync", v4, 2u);
  }

  [(SYPersistentStore *)self->_persistentStore setPerformingDeltaSync:0];
  if (self->_deferredFullSync)
  {
    self->_deferredFullSync = 0;
    [(SYLegacyStore *)self performFullSync];
  }
}

- (void)setTracksChanges:(BOOL)a3
{
  if (self->_tracksChanges != a3)
  {
    self->_tracksChanges = a3;
    [(SYPersistentStore *)self->_persistentStore changeTrackingToggled:?];
  }
}

- (void)_checkMessageHeader:(os_log_t)log messageID:.cold.3(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 134218242;
  v5 = a2;
  v6 = 2114;
  v7 = a1;
  _os_log_error_impl(&dword_1DF835000, log, 0x90u, "Message repeated (bubble): seqno = %qu, messageID: %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)_checkMessageHeader:(void *)a1 messageID:.cold.7(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a1;
  [OUTLINED_FUNCTION_7() version];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 8u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_recordLastSeqNo:(void *)a1 .cold.2(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = OUTLINED_FUNCTION_7();
  v4 = _SYObfuscate(v3);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x1E69E9840];
}

void __43__SYLegacyStore__setupMessageCenter_LOCKED__block_invoke_7_cold_1()
{
  OUTLINED_FUNCTION_16();
  v1 = v0;
  v11 = *MEMORY[0x1E69E9840];
  v2 = [v0 inReplyTo];
  v3 = [v1 header];
  [v3 version];
  OUTLINED_FUNCTION_17(&dword_1DF835000, v4, v5, "Peer responded to message %{public}@ with a version rejection. Peer is using version %u, and supports versions %{public}@", v6, v7, v8, v9, 2u);

  v10 = *MEMORY[0x1E69E9840];
}

void __43__SYLegacyStore__setupMessageCenter_LOCKED__block_invoke_115_cold_2(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if ([a2 accepted])
  {
    v4 = "YES";
  }

  else
  {
    v4 = "NO";
  }

  v5 = [a2 inProgressSyncID];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = @"nil";
  }

  v8 = [a2 error];
  v9 = v8;
  v12 = 136315650;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = @"nil";
  }

  v13 = v4;
  v14 = 2114;
  v15 = v7;
  v16 = 2112;
  v17 = v10;
  _os_log_debug_impl(&dword_1DF835000, v3, OS_LOG_TYPE_DEBUG, "SyncRequest response: accepted=%s, inProgressSyncID=%{public}@, error=%@", &v12, 0x20u);

  v11 = *MEMORY[0x1E69E9840];
}

void __43__SYLegacyStore__setupMessageCenter_LOCKED__block_invoke_122_cold_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *(*(a1 + 32) + 184);
  v4 = a2;
  v5 = [OUTLINED_FUNCTION_7() waitingForSyncEndID];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0xCu);

  v11 = *MEMORY[0x1E69E9840];
}

void __43__SYLegacyStore__setupMessageCenter_LOCKED__block_invoke_2_125_cold_1()
{
  OUTLINED_FUNCTION_16();
  v11 = *MEMORY[0x1E69E9840];
  v2 = [v1 idsIdentifier];
  [*v0 count];
  v10 = *v0;
  OUTLINED_FUNCTION_17(&dword_1DF835000, v3, v4, "Dropped messages detected upon receipt of message with ID %{public}@: missing %u ACKs of full-sync batches, specifically: %{public}@", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x1E69E9840];
}

void __43__SYLegacyStore__setupMessageCenter_LOCKED__block_invoke_133_cold_2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_9(&dword_1DF835000, v0, v1, "dataIdentifier: %{public}@ didSendWithSuccess: NO error: %@");
  v2 = *MEMORY[0x1E69E9840];
}

void __43__SYLegacyStore__setupMessageCenter_LOCKED__block_invoke_133_cold_4(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = OUTLINED_FUNCTION_7();
  v4 = _SYObfuscate(v3);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)peerState:fromPeer:matchesExpectationForChangeCount:offsetAmount:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)peerState:(uint64_t *)a1 fromPeer:matchesExpectationForChangeCount:offsetAmount:.cold.4(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)peerState:fromPeer:matchesExpectationForChangeCount:offsetAmount:.cold.8()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_13();
  _os_log_error_impl(&dword_1DF835000, v0, OS_LOG_TYPE_ERROR, "Peer has a future version of my data ?? It has: %llu, I have: %llu", v2, 0x16u);
  v1 = *MEMORY[0x1E69E9840];
}

void __47__SYLegacyStore_handleSyncAllObjects_response___block_invoke_cold_2(uint64_t *a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = a2;
  v5 = [OUTLINED_FUNCTION_7() service];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_8();
  _os_log_fault_impl(v6, v7, OS_LOG_TYPE_FAULT, v8, v9, 0xCu);

  v10 = *MEMORY[0x1E69E9840];
}

void __47__SYLegacyStore_handleSyncAllObjects_response___block_invoke_cold_4(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 48);
  v5 = a3;
  v6 = OUTLINED_FUNCTION_14();
  v13 = _SYObfuscate(v6);
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v7, v8, v9, v10, v11, 0x12u);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)handleChangeMessage:.cold.3()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_9(&dword_1DF835000, v0, v1, "New message seqno: %qu, last message seqno: %qu", v3, v4);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)handleChangeMessage:(void *)a3 .cold.13(void *a1, uint8_t *buf, void *a3, os_log_t log)
{
  *buf = 138543362;
  *a3 = a1;
  _os_log_error_impl(&dword_1DF835000, log, OS_LOG_TYPE_ERROR, "No object decoded from payload for change '%{public}@'", buf, 0xCu);
}

- (void)messageCenter:(void *)a1 didReceiveUnknownRequest:.cold.2(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = OUTLINED_FUNCTION_7();
  v4 = _SYObfuscate(v3);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)messageCenter:(void *)a1 didResolveIDSIdentifierForRequest:.cold.2(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_7() idsIdentifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v4, v5, OS_LOG_TYPE_DEBUG, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)messageCenter:didSuccessfullySendRequestWithIdentifier:userInfo:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)messageCenter:didSuccessfullyDeliverRequestWithIdentifier:userInfo:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)sendMessage:(void *)a1 ofType:respondingTo:userInfo:idsOptions:.cold.4(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = OUTLINED_FUNCTION_7();
  v4 = _SYObfuscate(v3);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)logChanges:.cold.2()
{
  OUTLINED_FUNCTION_16();
  v8 = *MEMORY[0x1E69E9840];
  v3 = v2;
  [OUTLINED_FUNCTION_14() count];
  OUTLINED_FUNCTION_5_0();
  v6 = 2112;
  v7 = v0;
  _os_log_error_impl(&dword_1DF835000, v1, OS_LOG_TYPE_ERROR, "Failed to log %zu changes: %@", v5, 0x16u);

  v4 = *MEMORY[0x1E69E9840];
}

void __56__SYLegacyStore_setNeedsFullSyncWithContext_idsOptions___block_invoke_2_cold_2(uint64_t *a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = a2;
  [OUTLINED_FUNCTION_7() alwaysWins];
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v5, v6, OS_LOG_TYPE_DEBUG, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

void __58__SYLegacyStore_performFullSyncIfNecessaryAskingDelegate___block_invoke_206_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __73__SYLegacyStore_BatchedSyncSupport__performBatchedSyncToCurrentDBVersion__block_invoke_2_549_cold_4()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(&dword_1DF835000, v0, OS_LOG_TYPE_ERROR, "Error during batched sync: %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void __73__SYLegacyStore_BatchedSyncSupport__performBatchedSyncToCurrentDBVersion__block_invoke_2_549_cold_7(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(*a1 + 40);
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_1DF835000, v2, OS_LOG_TYPE_ERROR, "Batch sync client reported error: %{public}@", v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void __83__SYLegacyStore_BatchedSyncSupport__processBatchChunkAtIndex_encodedObjects_error___block_invoke_2_cold_2(uint64_t *a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = a2;
  v5 = [OUTLINED_FUNCTION_7() service];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0xCu);

  v11 = *MEMORY[0x1E69E9840];
}

@end