@interface BMStoreSource
+ (id)_processPendingWritesQueue;
- (BMStoreSource)initWithIdentifier:(id)identifier storeConfig:(id)config accessClient:(id)client eventDataClass:(Class)class;
- (BOOL)_writeEvent:(id)event timestamp:(double)timestamp signpostID:(unint64_t)d notifyCompute:(BOOL)compute;
- (BOOL)outOfProcess;
- (void)_processPendingWrites;
- (void)dealloc;
- (void)sendEvent:(id)event;
- (void)sendEvent:(id)event timestamp:(double)timestamp;
- (void)setOutOfProcess:(BOOL)process;
@end

@implementation BMStoreSource

- (void)dealloc
{
  if (self->_lockStateRegistration)
  {
    [MEMORY[0x1E698E998] unregister:?];
    lockStateRegistration = self->_lockStateRegistration;
    self->_lockStateRegistration = 0;
  }

  v4.receiver = self;
  v4.super_class = BMStoreSource;
  [(BMStoreSource *)&v4 dealloc];
}

- (BMStoreSource)initWithIdentifier:(id)identifier storeConfig:(id)config accessClient:(id)client eventDataClass:(Class)class
{
  identifierCopy = identifier;
  configCopy = config;
  clientCopy = client;
  v34.receiver = self;
  v34.super_class = BMStoreSource;
  v13 = [(BMSource *)&v34 initWithIdentifier:identifierCopy];
  v14 = v13;
  if (!v13)
  {
    goto LABEL_19;
  }

  v13->_lock._os_unfair_lock_opaque = 0;
  objc_storeStrong(&v13->_config, config);
  v14->_eventDataClass = class;
  if (![configCopy isManaged])
  {
    LOBYTE(v18) = 3;
    goto LABEL_6;
  }

  v15 = MEMORY[0x1E698E970];
  current = [MEMORY[0x1E698E9D8] current];
  v17 = [v15 policyForProcess:current connectionFlags:0 useCase:*MEMORY[0x1E698E960]];

  v18 = [v17 allowedModeForStream:identifierCopy];
  if (v18 != 2)
  {
LABEL_6:
    v22 = [objc_alloc(MEMORY[0x1E698F158]) initWithStream:identifierCopy config:configCopy eventDataClass:class];
    writer = v14->_writer;
    v14->_writer = v22;

    v21 = (v18 & 2) == 0;
    goto LABEL_7;
  }

  v19 = [MEMORY[0x1E698F158] outOfProcessWriterForStream:identifierCopy user:objc_msgSend(configCopy eventDataClass:{"uid"), class}];
  v20 = v14->_writer;
  v14->_writer = v19;

  v21 = 0;
LABEL_7:
  isManaged = [configCopy isManaged];
  if (!v21 && isManaged)
  {
    v25 = identifierCopy;
    if (([configCopy storeLocationOption] & 4) != 0)
    {
      v26 = @":subscriptions";
    }

    else
    {
      if (([configCopy storeLocationOption] & 2) == 0)
      {
LABEL_14:
        v28 = [BMComputeSourceClient alloc];
        domain = [configCopy domain];
        v30 = -[BMComputeSourceClient initWithStreamIdentifier:domain:useCase:user:](v28, "initWithStreamIdentifier:domain:useCase:user:", v25, domain, *MEMORY[0x1E698E960], [configCopy uid]);
        computeSource = v14->_computeSource;
        v14->_computeSource = v30;

        goto LABEL_15;
      }

      v26 = @":tombstones";
    }

    v27 = [v25 stringByAppendingString:v26];

    v25 = v27;
    goto LABEL_14;
  }

LABEL_15:
  objc_storeStrong(&v14->_accessClient, client);
  if ([(BMStoreConfig *)v14->_config isManaged])
  {
    v32 = [MEMORY[0x1E698E9C8] isTestPathOverridden] ^ 1;
  }

  else
  {
    v32 = 0;
  }

  v14->_shouldSendMetrics = v32;
LABEL_19:

  return v14;
}

- (BOOL)outOfProcess
{
  writer = self->_writer;
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v4 containsString:@"OutOfProcess"];

  return v5;
}

- (void)setOutOfProcess:(BOOL)process
{
  if (process)
  {
    v4 = __biome_log_for_category();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [BMStoreSource setOutOfProcess:v4];
    }

    if (![(BMStoreSource *)self outOfProcess])
    {
      v5 = MEMORY[0x1E698F158];
      identifier = [(BMSource *)self identifier];
      v7 = [v5 outOfProcessWriterForStream:identifier user:-[BMStoreConfig uid](self->_config eventDataClass:{"uid"), self->_eventDataClass}];
      writer = self->_writer;
      self->_writer = v7;
    }
  }

  else if ([(BMStoreSource *)self outOfProcess])
  {
    v9 = objc_alloc(MEMORY[0x1E698F158]);
    identifier2 = [(BMSource *)self identifier];
    v10 = [v9 initWithStream:identifier2 config:self->_config eventDataClass:self->_eventDataClass];
    v11 = self->_writer;
    self->_writer = v10;
  }
}

+ (id)_processPendingWritesQueue
{
  if (_processPendingWritesQueue_onceToken != -1)
  {
    +[BMStoreSource _processPendingWritesQueue];
  }

  v3 = _processPendingWritesQueue_queue;

  return v3;
}

void __43__BMStoreSource__processPendingWritesQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.biome.pending-writes", v2);
  v1 = _processPendingWritesQueue_queue;
  _processPendingWritesQueue_queue = v0;
}

- (void)sendEvent:(id)event
{
  eventCopy = event;
  [(BMStoreSource *)self sendEvent:eventCopy timestamp:CFAbsoluteTimeGetCurrent()];
}

- (void)sendEvent:(id)event timestamp:(double)timestamp
{
  v54 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  os_unfair_lock_lock(&self->_lock);
  context = objc_autoreleasePoolPush();
  v7 = _os_activity_create(&dword_1848EE000, "BMStoreSource.sendEvent", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  identifier = [(BMSource *)self identifier];
  v9 = identifier;
  v10 = @"unknown";
  if (identifier)
  {
    v10 = identifier;
  }

  v11 = v10;

  v12 = __biome_log_for_category();
  v13 = os_signpost_id_generate(v12);

  v14 = __biome_log_for_category();
  v15 = v14;
  v16 = v13 - 1;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 138412290;
    v53 = v11;
    _os_signpost_emit_with_name_impl(&dword_1848EE000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "SendEvent", "StreamIdentifier=%@", buf, 0xCu);
  }

  v17 = __biome_log_for_category();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    identifier2 = [(BMSource *)self identifier];
    [(BMStoreSource *)identifier2 sendEvent:buf timestamp:v17, timestamp];
  }

  if (([eventCopy conformsToProtocol:&unk_1EF30B8F0] & 1) == 0)
  {
    v21 = __biome_log_for_category();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      identifier3 = [(BMSource *)self identifier];
      v23 = NSStringFromProtocol(&unk_1EF30B8F0);
      [(BMStoreSource *)identifier3 sendEvent:v23 timestamp:v50, v21];
    }

    v24 = __biome_log_for_category();
    v25 = v24;
    if (v16 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v24))
    {
      goto LABEL_36;
    }

    v48 = 138412290;
    v49 = v11;
    v26 = &v48;
LABEL_23:
    _os_signpost_emit_with_name_impl(&dword_1848EE000, v25, OS_SIGNPOST_INTERVAL_END, v13, "SendEvent", "StreamIdentifier=%@", v26, 0xCu);
LABEL_36:

    goto LABEL_37;
  }

  current = [MEMORY[0x1E698E9D8] current];
  canAccessAppleKeyStore = [current canAccessAppleKeyStore];

  if ((canAccessAppleKeyStore & 1) == 0)
  {
    v27 = __biome_log_for_category();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [BMStoreSource sendEvent:v27 timestamp:?];
    }

    v28 = __biome_log_for_category();
    v25 = v28;
    if (v16 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v28))
    {
      goto LABEL_36;
    }

    *v50 = 138412290;
    v51 = v11;
    v26 = v50;
    goto LABEL_23;
  }

  if (self->_pendingWrites || ([(BMStreamDatastoreWriter *)self->_writer isDataAccessible]& 1) == 0)
  {
    v29 = __biome_log_for_category();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *v50 = 138412290;
      v51 = v11;
      _os_log_impl(&dword_1848EE000, v29, OS_LOG_TYPE_DEFAULT, "Unable to access data, storing donation to %@ in memory until device unlocks", v50, 0xCu);
    }

    v25 = [BMPendingWrite pendingWriteWithEvent:eventCopy timestamp:timestamp];
    pendingWrites = self->_pendingWrites;
    if (pendingWrites)
    {
      [(NSMutableArray *)pendingWrites addObject:v25];
    }

    else
    {
      v31 = objc_opt_new();
      v32 = self->_pendingWrites;
      self->_pendingWrites = v31;

      [(NSMutableArray *)self->_pendingWrites addObject:v25];
      v33 = os_transaction_create();
      transaction = self->_transaction;
      self->_transaction = v33;

      v35 = MEMORY[0x1E698E998];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __37__BMStoreSource_sendEvent_timestamp___block_invoke;
      aBlock[3] = &unk_1E6E53AD8;
      aBlock[4] = self;
      v36 = _Block_copy(aBlock);
      v37 = [v35 registerForLockStateChanges:v36];
      lockStateRegistration = self->_lockStateRegistration;
      self->_lockStateRegistration = v37;

      if ([MEMORY[0x1E69C5D08] isDeviceUnlocked])
      {
        [(BMStoreSource *)self _processPendingWrites];
      }
    }

    computeSource = [(BMStoreSource *)self computeSource];

    if (computeSource)
    {
      computeSource2 = [(BMStoreSource *)self computeSource];
      account = [(BMStoreConfig *)self->_config account];
      remoteName = [(BMStoreConfig *)self->_config remoteName];
      [computeSource2 sendEvent:eventCopy account:account remoteName:remoteName timestamp:v13 signpostID:1 sendFullEvent:timestamp];
    }

    else
    {
      v43 = __biome_log_for_category();
      computeSource2 = v43;
      if (v16 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v43))
      {
        *v50 = 138412290;
        v51 = v11;
        _os_signpost_emit_with_name_impl(&dword_1848EE000, computeSource2, OS_SIGNPOST_INTERVAL_END, v13, "SendEvent", "StreamIdentifier=%@", v50, 0xCu);
      }
    }

    goto LABEL_36;
  }

  [(BMStoreSource *)self _writeEvent:eventCopy timestamp:v13 signpostID:1 notifyCompute:timestamp];
LABEL_37:

  os_activity_scope_leave(&state);
  objc_autoreleasePoolPop(context);
  os_unfair_lock_unlock(&self->_lock);

  v44 = *MEMORY[0x1E69E9840];
}

void __37__BMStoreSource_sendEvent_timestamp___block_invoke(uint64_t a1, int a2)
{
  v4 = *(a1 + 32);
  v5 = [objc_opt_class() _processPendingWritesQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__BMStoreSource_sendEvent_timestamp___block_invoke_2;
  v6[3] = &unk_1E6E53AB0;
  v7 = a2;
  v6[4] = *(a1 + 32);
  dispatch_async(v5, v6);
}

void __37__BMStoreSource_sendEvent_timestamp___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 == 3 || v1 == 0)
  {
    v4 = *(a1 + 32);
    os_unfair_lock_lock(v4 + 13);
    [*(a1 + 32) _processPendingWrites];

    os_unfair_lock_unlock(v4 + 13);
  }
}

- (void)_processPendingWrites
{
  v29 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_pendingWrites)
  {
    v3 = __biome_log_for_category();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(NSMutableArray *)self->_pendingWrites count];
      identifier = [(BMSource *)self identifier];
      *buf = 134218242;
      v26 = v4;
      v27 = 2112;
      v28 = identifier;
      _os_log_impl(&dword_1848EE000, v3, OS_LOG_TYPE_DEFAULT, "Device has unlocked, proceeding with %lu queued writes to stream %@", buf, 0x16u);
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = [(NSMutableArray *)self->_pendingWrites copy];
    v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
LABEL_6:
      v10 = 0;
      while (1)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * v10);
        event = [v11 event];
        [v11 timestamp];
        v13 = [(BMStoreSource *)self _writeEvent:event timestamp:0 signpostID:0 notifyCompute:?];

        isDataAccessible = [(BMStreamDatastoreWriter *)self->_writer isDataAccessible];
        v15 = isDataAccessible;
        if (v13 || isDataAccessible)
        {
          [(NSMutableArray *)self->_pendingWrites removeObject:v11];
        }

        if (!v15)
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
          if (v8)
          {
            goto LABEL_6;
          }

          break;
        }
      }
    }

    if (![(NSMutableArray *)self->_pendingWrites count])
    {
      [MEMORY[0x1E698E998] unregister:self->_lockStateRegistration];
      lockStateRegistration = self->_lockStateRegistration;
      self->_lockStateRegistration = 0;

      pendingWrites = self->_pendingWrites;
      self->_pendingWrites = 0;

      transaction = self->_transaction;
      self->_transaction = 0;
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (BOOL)_writeEvent:(id)event timestamp:(double)timestamp signpostID:(unint64_t)d notifyCompute:(BOOL)compute
{
  computeCopy = compute;
  v30 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  os_unfair_lock_assert_owner(&self->_lock);
  v11 = objc_autoreleasePoolPush();
  identifier = [(BMSource *)self identifier];
  v13 = identifier;
  v14 = @"unknown";
  if (identifier)
  {
    v14 = identifier;
  }

  v15 = v14;

  v27 = 0;
  v16 = [(BMStreamDatastoreWriter *)self->_writer writeEventWithEventBody:eventCopy timestamp:&v27 outEventSize:timestamp];
  if (v16)
  {
    computeSource = [(BMStoreSource *)self computeSource];

    if (computeSource && computeCopy)
    {
      computeSource2 = [(BMStoreSource *)self computeSource];
      account = [(BMStoreConfig *)self->_config account];
      remoteName = [(BMStoreConfig *)self->_config remoteName];
      [computeSource2 sendEvent:eventCopy account:account remoteName:remoteName timestamp:d signpostID:0 sendFullEvent:timestamp];

LABEL_16:
      goto LABEL_17;
    }
  }

  else
  {
    v21 = __biome_log_for_category();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [BMStoreSource _writeEvent:v21 timestamp:? signpostID:? notifyCompute:?];
    }
  }

  v22 = __biome_log_for_category();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    [BMStoreSource _writeEvent:v15 timestamp:v22 signpostID:? notifyCompute:?];
  }

  if (d)
  {
    v23 = __biome_log_for_category();
    computeSource2 = v23;
    if (d != -1 && os_signpost_enabled(v23))
    {
      *buf = 138412290;
      v29 = v15;
      _os_signpost_emit_with_name_impl(&dword_1848EE000, computeSource2, OS_SIGNPOST_INTERVAL_END, d, "SendEvent", "StreamIdentifier=%@", buf, 0xCu);
    }

    goto LABEL_16;
  }

LABEL_17:
  if (self->_shouldSendMetrics)
  {
    if (v27 >= 0xFFFFFFFF)
    {
      v24 = 0xFFFFFFFFLL;
    }

    else
    {
      v24 = v27;
    }

    [MEMORY[0x1E698E988] sendAllStreamsEventWritten:v16 size:v24 streamIdentifier:v15];
  }

  objc_autoreleasePoolPop(v11);
  v25 = *MEMORY[0x1E69E9840];
  return v16;
}

@end