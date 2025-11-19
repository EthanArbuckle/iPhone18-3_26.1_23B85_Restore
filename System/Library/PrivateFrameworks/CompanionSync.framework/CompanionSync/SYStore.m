@interface SYStore
- (BOOL)_startResetSyncSession:(id)a3 error:(id *)a4;
- (BOOL)addObject:(id)a3 context:(id)a4 idsOptions:(id)a5 error:(id *)a6;
- (BOOL)deleteObject:(id)a3 context:(id)a4 idsOptions:(id)a5 error:(id *)a6;
- (BOOL)hasCompletedFullSync;
- (BOOL)inDeltaSync;
- (BOOL)resume:(id *)a3;
- (BOOL)service:(id)a3 startSession:(id)a4 error:(id *)a5;
- (BOOL)updateObject:(id)a3 context:(id)a4 idsOptions:(id)a5 error:(id *)a6;
- (SYStore)init;
- (SYStoreDelegate)delegate;
- (id)changeFromData:(id)a3 ofType:(int64_t)a4;
- (id)dataFromChange:(id)a3;
- (id)decodeSYObject:(id)a3;
- (id)encodeSYObject:(id)a3;
- (int64_t)priority;
- (int64_t)state;
- (void)_enqueueDeltaSessionWithChanges:(id)a3 contextInfo:(id)a4 idsOptions:(id)a5 blockUntilSent:(BOOL)a6 reportError:(id)a7;
- (void)_signalNextQueuedSession;
- (void)_startIncomingSession:(id)a3;
- (void)_transaction:(id)a3 context:(id)a4 idsOptions:(id)a5 blockUntilSent:(BOOL)a6 reportError:(id)a7;
- (void)didEndDeltaSync;
- (void)service:(id)a3 didSwitchFromPairingID:(id)a4 toPairingID:(id)a5;
- (void)service:(id)a3 encounteredError:(id)a4 context:(id)a5;
- (void)service:(id)a3 willSwitchFromPairingID:(id)a4 toPairingID:(id)a5;
- (void)setDelegate:(id)a3;
- (void)setDeliveryQOS:(unsigned int)a3;
- (void)setNeedsFullSyncWithContext:(id)a3 idsOptions:(id)a4;
- (void)setPriority:(int64_t)a3;
- (void)willBeginDeltaSync;
@end

@implementation SYStore

- (SYStore)init
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9.receiver = self;
    v9.super_class = SYStore;
    self = [(SYStore *)&v9 init];
    v3 = self;
  }

  else
  {
    v4 = MEMORY[0x1E695DF30];
    v5 = *MEMORY[0x1E695D930];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    [v4 raise:v5 format:{@"-[%@ init] is not supported.", v7}];

    v3 = 0;
  }

  return v3;
}

- (id)dataFromChange:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 wrappedObject];
    v6 = [(SYStore *)self encodeSYObject:v5];

    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v4 changeData];
LABEL_7:
    v6 = v7;
    goto LABEL_9;
  }

  if ([v4 conformsToProtocol:&unk_1F5AE6078])
  {
    v7 = [(SYStore *)self encodeSYObject:v4];
    goto LABEL_7;
  }

  v6 = 0;
LABEL_9:

  return v6;
}

- (id)changeFromData:(id)a3 ofType:(int64_t)a4
{
  v5 = [(SYStore *)self decodeSYObject:a3];
  if (v5)
  {
    v6 = [[SYObjectWrapper alloc] initWithSYObject:v5 type:a4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setDelegate:(id)a3
{
  v19 = a3;
  objc_storeWeak(&self->_delegate, v19);
  if (v19)
  {
    *&self->_flags = *&self->_flags & 0xFFFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }

    *&self->_flags = *&self->_flags & 0xFFFD | v4;
    if (objc_opt_respondsToSelector())
    {
      v5 = 4;
    }

    else
    {
      v5 = 0;
    }

    *&self->_flags = *&self->_flags & 0xFFFB | v5;
    if (objc_opt_respondsToSelector())
    {
      v6 = 8;
    }

    else
    {
      v6 = 0;
    }

    *&self->_flags = *&self->_flags & 0xFFF7 | v6;
    if (objc_opt_respondsToSelector())
    {
      v7 = 16;
    }

    else
    {
      v7 = 0;
    }

    *&self->_flags = *&self->_flags & 0xFFEF | v7;
    if (objc_opt_respondsToSelector())
    {
      v8 = 32;
    }

    else
    {
      v8 = 0;
    }

    *&self->_flags = *&self->_flags & 0xFFDF | v8;
    if (objc_opt_respondsToSelector())
    {
      v9 = 64;
    }

    else
    {
      v9 = 0;
    }

    *&self->_flags = *&self->_flags & 0xFFBF | v9;
    if (objc_opt_respondsToSelector())
    {
      v10 = 128;
    }

    else
    {
      v10 = 0;
    }

    *&self->_flags = *&self->_flags & 0xFF7F | v10;
    if (objc_opt_respondsToSelector())
    {
      v11 = 256;
    }

    else
    {
      v11 = 0;
    }

    *&self->_flags = *&self->_flags & 0xFEFF | v11;
    if (objc_opt_respondsToSelector())
    {
      v12 = 512;
    }

    else
    {
      v12 = 0;
    }

    *&self->_flags = *&self->_flags & 0xFDFF | v12;
    if (objc_opt_respondsToSelector())
    {
      v13 = 1024;
    }

    else
    {
      v13 = 0;
    }

    *&self->_flags = *&self->_flags & 0xFBFF | v13;
    if (objc_opt_respondsToSelector())
    {
      v14 = 2048;
    }

    else
    {
      v14 = 0;
    }

    *&self->_flags = *&self->_flags & 0xF7FF | v14;
    if (objc_opt_respondsToSelector())
    {
      v15 = 4096;
    }

    else
    {
      v15 = 0;
    }

    *&self->_flags = *&self->_flags & 0xEFFF | v15;
    if (objc_opt_respondsToSelector())
    {
      v16 = 0x2000;
    }

    else
    {
      v16 = 0;
    }

    *&self->_flags = *&self->_flags & 0xDFFF | v16;
    if (objc_opt_respondsToSelector())
    {
      v17 = 0x4000;
    }

    else
    {
      v17 = 0;
    }

    *&self->_flags = *&self->_flags & 0xBFFF | v17;
    if (objc_opt_respondsToSelector())
    {
      v18 = 0x8000;
    }

    else
    {
      v18 = 0;
    }

    *&self->_flags = v18 & 0x8000 | *&self->_flags & 0x7FFF;
  }
}

- (BOOL)resume:(id *)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    syService = self->_syService;
    v7 = *MEMORY[0x1E69E9840];

    return [(SYService *)syService resume:a3];
  }

  else
  {
    if (a3)
    {
      v9 = objc_alloc(MEMORY[0x1E696ABC0]);
      v12 = *MEMORY[0x1E696A578];
      v13[0] = @"SYStore must be given a delegate object before it can be resumed.";
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
      *a3 = [v9 initWithSYError:2001 userInfo:v10];
    }

    v11 = *MEMORY[0x1E69E9840];
    return 0;
  }
}

- (int64_t)priority
{
  syService = [(SYService *)self->_syService currentSession];
  v4 = syService;
  if (!syService)
  {
    syService = self->_syService;
  }

  v5 = [syService priority];
  if (v5 == 20)
  {
    v6 = 2;
  }

  else
  {
    v6 = v5 == 0;
  }

  return v6;
}

- (void)setPriority:(int64_t)a3
{
  syService = [(SYService *)self->_syService currentSession];
  v6 = -20;
  if (a3 == 1)
  {
    v6 = 0;
  }

  if (a3 == 2)
  {
    v7 = 20;
  }

  else
  {
    v7 = v6;
  }

  v8 = syService;
  if (!syService)
  {
    syService = self->_syService;
  }

  [syService setPriority:v7];
}

- (void)setDeliveryQOS:(unsigned int)a3
{
  if ([(SYStore *)self deliveryQOS]!= a3)
  {
    delegateQueue = self->_delegateQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __26__SYStore_setDeliveryQOS___block_invoke;
    v6[3] = &unk_1E86CA080;
    v6[4] = self;
    v7 = a3;
    dispatch_async(delegateQueue, v6);
  }
}

void __26__SYStore_setDeliveryQOS___block_invoke(uint64_t a1)
{
  label = dispatch_queue_get_label(*(*(a1 + 32) + 8));
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_attr_make_with_qos_class(v3, *(a1 + 40), 0);
  v5 = dispatch_queue_create(label, v4);

  dispatch_set_target_queue(*(*(a1 + 32) + 72), v5);
  v6 = *(a1 + 32);
  v7 = *(v6 + 8);
  *(v6 + 8) = v5;
}

- (int64_t)state
{
  v2 = [(SYService *)self->_syService name];
  v3 = [SYPersistentStore sharedPersistentStoreForService:v2];

  if ([v3 inFullSync])
  {
    if ([v3 currentSyncSendComplete])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)hasCompletedFullSync
{
  v2 = [(SYService *)self->_syService name];
  v3 = [SYPersistentStore sharedPersistentStoreForService:v2];
  v4 = [v3 completedSync];

  return v4;
}

- (void)_signalNextQueuedSession
{
  sessionOwner = self->_sessionOwner;
  self->_sessionOwner = 0;

  v4 = [(SYAtomicFIFO *)self->_sessionQueue head];
  if (v4)
  {
    v5 = v4;
    [(SYService *)self->_syService setHasChangesAvailable];
    v4 = v5;
  }
}

- (void)_enqueueDeltaSessionWithChanges:(id)a3 contextInfo:(id)a4 idsOptions:(id)a5 blockUntilSent:(BOOL)a6 reportError:(id)a7
{
  v8 = a6;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = [[SYStoreDeltaSessionOwner alloc] initWithChanges:v12];
  [(SYStoreSessionOwner *)v16 setContext:v13];
  [(SYStoreSessionOwner *)v16 setIdsOptions:v14];
  [(SYStoreSessionOwner *)v16 setErrorCallback:v15];
  [(SYStoreSessionOwner *)v16 setStore:self];
  if (v8)
  {
    v17 = dispatch_semaphore_create(0);
  }

  else
  {
    v17 = 0;
  }

  objc_initWeak(&location, self);
  v30 = MEMORY[0x1E69E9820];
  v31 = 3221225472;
  v32 = __93__SYStore__enqueueDeltaSessionWithChanges_contextInfo_idsOptions_blockUntilSent_reportError___block_invoke;
  v33 = &unk_1E86CA0D0;
  v18 = v17;
  v34 = v18;
  objc_copyWeak(&v36, &location);
  v19 = v13;
  v35 = v19;
  [(SYStoreSessionOwner *)v16 setOnComplete:&v30];
  [(SYAtomicFIFO *)self->_sessionQueue enqueue:v16, v30, v31, v32, v33];
  [(SYService *)self->_syService setHasChangesAvailable];
  if (v8)
  {
    [(SYStore *)self timeToLive];
    v21 = dispatch_time(0, (v20 * 1000000000.0));
    if (dispatch_semaphore_wait(v18, v21))
    {
      v22 = [(SYStoreSessionOwner *)v16 session];
      [v22 cancel];

      v23 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:2007 userInfo:0];
      v24 = [(SYStoreSessionOwner *)v16 errorCallback];

      if (v24)
      {
        WeakRetained = [(SYStoreSessionOwner *)v16 errorCallback];
        (WeakRetained)[2](WeakRetained, v23);
      }

      else
      {
        if ((*&self->_flags & 0x400) == 0)
        {
LABEL_11:
          v29 = [(SYStoreSessionOwner *)v16 onComplete];
          v29[2]();

          goto LABEL_12;
        }

        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v26 = [(SYStoreSessionOwner *)v16 context];
        v27 = self;
        v28 = v26;
        [WeakRetained syncStore:v27 encounteredError:v23 context:v26];
      }

      goto LABEL_11;
    }
  }

LABEL_12:

  objc_destroyWeak(&v36);
  objc_destroyWeak(&location);
}

void __93__SYStore__enqueueDeltaSessionWithChanges_contextInfo_idsOptions_blockUntilSent_reportError___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    dispatch_semaphore_signal(v2);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[8];
    if ((v5 & 0x6000) != 0)
    {
      v6 = (v5 >> 14) & 1;
      v7 = (v5 >> 13) & 1;
      v8 = objc_loadWeakRetained(WeakRetained + 3);
      v9 = v4[9];
      v11 = MEMORY[0x1E69E9820];
      v12 = 3221225472;
      v13 = __93__SYStore__enqueueDeltaSessionWithChanges_contextInfo_idsOptions_blockUntilSent_reportError___block_invoke_2;
      v14 = &unk_1E86CA0A8;
      v18 = v7;
      v15 = v8;
      v16 = v4;
      v17 = *(a1 + 40);
      v19 = v6;
      v10 = v8;
      dispatch_async(v9, &v11);
    }

    [v4 _signalNextQueuedSession];
  }
}

uint64_t __93__SYStore__enqueueDeltaSessionWithChanges_contextInfo_idsOptions_blockUntilSent_reportError___block_invoke_2(uint64_t result)
{
  v1 = result;
  if (*(result + 56) == 1)
  {
    result = [*(result + 32) syncStore:*(result + 40) sentMessageWithContext:*(result + 48)];
  }

  if (*(v1 + 57) == 1)
  {
    v2 = *(v1 + 32);
    v3 = *(v1 + 40);
    v4 = *(v1 + 48);

    return [v2 syncStore:v3 peerFinishedProcessingMessageWithContext:v4];
  }

  return result;
}

- (BOOL)addObject:(id)a3 context:(id)a4 idsOptions:(id)a5 error:(id *)a6
{
  v18[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = _os_activity_create(&dword_1DF835000, "CompanionSync AddObject", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v17.opaque[0] = 0;
  v17.opaque[1] = 0;
  os_activity_scope_enter(v12, &v17);
  v13 = [SYChange changeWithObject:v9 updateType:0 store:self];
  v18[0] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  [(SYStore *)self _enqueueDeltaSessionWithChanges:v14 contextInfo:v10 idsOptions:v11 blockUntilSent:0 reportError:0];

  os_activity_scope_leave(&v17);
  v15 = *MEMORY[0x1E69E9840];
  return 1;
}

- (BOOL)updateObject:(id)a3 context:(id)a4 idsOptions:(id)a5 error:(id *)a6
{
  v18[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = _os_activity_create(&dword_1DF835000, "CompanionSync UpdateObject", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v17.opaque[0] = 0;
  v17.opaque[1] = 0;
  os_activity_scope_enter(v12, &v17);
  v13 = [SYChange changeWithObject:v9 updateType:1 store:self];
  v18[0] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  [(SYStore *)self _enqueueDeltaSessionWithChanges:v14 contextInfo:v10 idsOptions:v11 blockUntilSent:0 reportError:0];

  os_activity_scope_leave(&v17);
  v15 = *MEMORY[0x1E69E9840];
  return 1;
}

- (BOOL)deleteObject:(id)a3 context:(id)a4 idsOptions:(id)a5 error:(id *)a6
{
  v26[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(SYStore *)self allowsDeletes];
  if (v13)
  {
    v14 = _os_activity_create(&dword_1DF835000, "CompanionSync DeleteObject", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v14, &state);
    v15 = [SYChange changeWithObject:v10 updateType:2 store:self];
    v26[0] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
    [(SYStore *)self _enqueueDeltaSessionWithChanges:v16 contextInfo:v11 idsOptions:v12 blockUntilSent:0 reportError:0];

    os_activity_scope_leave(&state);
  }

  else
  {
    v17 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:1006 userInfo:0];
    v14 = v17;
    if (a6)
    {
      v18 = v17;
      *a6 = v14;
    }

    else if ((*&self->_flags & 0x400) != 0)
    {
      delegateQueue = self->_delegateQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __49__SYStore_deleteObject_context_idsOptions_error___block_invoke;
      block[3] = &unk_1E86CA0F8;
      block[4] = self;
      v14 = v17;
      v24 = v14;
      v25 = v11;
      dispatch_async(delegateQueue, block);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
  return v13;
}

void __49__SYStore_deleteObject_context_idsOptions_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 syncStore:*(a1 + 32) encounteredError:*(a1 + 40) context:*(a1 + 48)];
}

- (void)_transaction:(id)a3 context:(id)a4 idsOptions:(id)a5 blockUntilSent:(BOOL)a6 reportError:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = [(SYService *)self->_syService name];
  v17 = [SYPersistentStore sharedPersistentStoreForService:v16];

  if ([v17 completedSync])
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __70__SYStore__transaction_context_idsOptions_blockUntilSent_reportError___block_invoke;
    v19[3] = &unk_1E86CA120;
    v19[4] = self;
    v22 = v12;
    v20 = v13;
    v21 = v14;
    v24 = a6;
    v23 = v15;
    _os_activity_initiate(&dword_1DF835000, "CompanionSync Transaction", OS_ACTIVITY_FLAG_DEFAULT, v19);
  }

  else if (v15)
  {
    v18 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:1005 userInfo:0];
    (*(v15 + 2))(v15, v18);
  }
}

void __70__SYStore__transaction_context_idsOptions_blockUntilSent_reportError___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [[SYTransaction alloc] initWithStore:*(a1 + 32)];
  (*(*(a1 + 56) + 16))();
  v4 = *(a1 + 32);
  v5 = [(SYTransaction *)v3 changeList];
  [v4 _enqueueDeltaSessionWithChanges:v5 contextInfo:*(a1 + 40) idsOptions:*(a1 + 48) blockUntilSent:*(a1 + 72) reportError:*(a1 + 64)];

  objc_autoreleasePoolPop(v2);
}

- (void)setNeedsFullSyncWithContext:(id)a3 idsOptions:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(SYStoreSessionOwner *)self->_sessionOwner isResetSync])
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v8 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_1DF835000, v8, OS_LOG_TYPE_DEFAULT, "SYStore skipping full sync, already in progress.", v14, 2u);
    }
  }

  else
  {
    pendingResetSessionOwner = self->_pendingResetSessionOwner;
    if (!pendingResetSessionOwner)
    {
      v10 = objc_opt_new();
      v11 = self->_pendingResetSessionOwner;
      self->_pendingResetSessionOwner = v10;

      pendingResetSessionOwner = self->_pendingResetSessionOwner;
    }

    [(SYStoreSessionOwner *)pendingResetSessionOwner setContext:v6];
    [(SYStoreSessionOwner *)self->_pendingResetSessionOwner setIdsOptions:v7];
    v12 = [(SYService *)self->_syService name];
    v13 = [SYPersistentStore sharedPersistentStoreForService:v12];

    [v13 setCompletedSync:0];
    [v13 setFullSyncUserInfo:v6];
    [v13 setFullSyncIDSOptions:v7];
    [(SYService *)self->_syService setNeedsResetSync];
  }
}

- (id)decodeSYObject:(id)a3
{
  v4 = a3;
  v5 = [(SYStore *)self serializer];

  if (!v5)
  {
    v9 = objc_alloc(MEMORY[0x1E695DF30]);
    objc_exception_throw([v9 initWithName:*MEMORY[0x1E695D930] reason:@"SYStore does not have a serializer. You must set it." userInfo:0]);
  }

  v6 = [(SYStore *)self serializer];
  v7 = [v6 SYObjectWithData:v4];

  return v7;
}

- (id)encodeSYObject:(id)a3
{
  v4 = a3;
  v5 = [(SYStore *)self serializer];

  if (v5)
  {
    v6 = [(SYStore *)self serializer];
    v7 = [v6 dataWithSYObject:v4];
  }

  else if ([v4 conformsToProtocol:&unk_1F5AE3770])
  {
    v7 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_startIncomingSession:(id)a3
{
  v4 = a3;
  v5 = [[SYStoreIncomingSessionOwner alloc] initWithIncomingSession:v4];
  v6 = [v4 userContext];
  [(SYStoreSessionOwner *)v5 setContext:v6];

  v7 = [v4 options];
  [(SYStoreSessionOwner *)v5 setIdsOptions:v7];

  [(SYStoreSessionOwner *)v5 setStore:self];
  [v4 setDelegate:v5];
  [v4 setTargetQueue:self->_delegateQueue];
  [v4 setSerializer:self];
  v8 = [(SYStoreSessionOwner *)v5 idsOptions];
  [v4 setOptions:v8];

  v9 = [(SYStoreSessionOwner *)v5 context];
  [v4 setUserContext:v9];

  if (*&self->_flags)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained syncStoreWillUpdate:self];
  }

  v11 = [v4 isResetSync];
  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __33__SYStore__startIncomingSession___block_invoke;
  v14[3] = &unk_1E86CA148;
  objc_copyWeak(&v15, &location);
  v16 = v11;
  v14[4] = self;
  [(SYStoreSessionOwner *)v5 setOnComplete:v14];
  sessionOwner = self->_sessionOwner;
  self->_sessionOwner = &v5->super;
  v13 = v5;

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

uint64_t __33__SYStore__startIncomingSession___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v4 = objc_loadWeakRetained(WeakRetained + 3);
    v5 = v8;
    v6 = v4;
    if ((v8[2] & 4) != 0)
    {
      [v4 syncStoreDidUpdate:v8];
      v5 = v8;
    }

    if (*(a1 + 48) == 1 && (*(*(a1 + 32) + 16) & 8) != 0)
    {
      [v6 syncStoreDidCompleteFullSync:v8];
      v5 = v8;
    }

    [v5 _signalNextQueuedSession];

    v3 = v8;
  }

  return MEMORY[0x1EEE66BB8](WeakRetained, v3);
}

- (BOOL)_startResetSyncSession:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = self->_pendingResetSessionOwner;
  if (!v7)
  {
    v7 = objc_opt_new();
  }

  flags = self->_flags;
  if ((flags & 0x80) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v10 = [WeakRetained beginSyncingAllObjectsForStore:self];

    if (v10)
    {
LABEL_9:
      [(SYStoreResetSessionOwner *)v7 setFetchNextBatch:v10];
      objc_initWeak(&location, self);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __40__SYStore__startResetSyncSession_error___block_invoke_2;
      v16[3] = &unk_1E86CA190;
      objc_copyWeak(&v17, &location);
      [(SYStoreSessionOwner *)v7 setOnComplete:v16];
      [(SYStoreSessionOwner *)v7 setStore:self];
      objc_storeStrong(&self->_sessionOwner, v7);
      [v6 setDelegate:v7];
      [v6 setTargetQueue:self->_delegateQueue];
      [v6 setSerializer:self];
      v12 = [(SYStoreSessionOwner *)v7 idsOptions];
      [v6 setOptions:v12];

      v13 = [(SYStoreSessionOwner *)v7 context];
      [v6 setUserContext:v13];

      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);

      v14 = 1;
      goto LABEL_12;
    }

    flags = self->_flags;
  }

  if ((flags & 0x20) != 0)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __40__SYStore__startResetSyncSession_error___block_invoke;
    v19[3] = &__block_descriptor_40_e28_q24__0__NSMutableArray_8__16lu32l8;
    v19[4] = self;
    v11 = MEMORY[0x1E12E11B0](v19);
    if (v11)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }

  v14 = 0;
  if (a4)
  {
    *a4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:-128 userInfo:0];
  }

LABEL_12:

  return v14;
}

uint64_t __40__SYStore__startResetSyncSession_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 delegate];
  v6 = [v5 syncStoreAllObjects:*(a1 + 32)];
  [v4 addObjectsFromArray:v6];

  return 1;
}

void __40__SYStore__startResetSyncSession_error___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    if ((WeakRetained[2] & 8) != 0)
    {
      v2 = objc_loadWeakRetained(WeakRetained + 3);
      [v2 syncStoreDidCompleteFullSync:v3];
    }

    [v3 _signalNextQueuedSession];
    WeakRetained = v3;
  }
}

- (BOOL)service:(id)a3 startSession:(id)a4 error:(id *)a5
{
  v7 = a4;
  if ([v7 isSending])
  {
    v8 = [v7 isResetSync];
    sessionQueue = self->_sessionQueue;
    if (v8)
    {
      [(SYAtomicFIFO *)sessionQueue removeAllObjects];
      v10 = [(SYStore *)self _startResetSyncSession:v7 error:a5];
    }

    else
    {
      v11 = [(SYAtomicFIFO *)sessionQueue dequeue];
      v10 = v11 != 0;
      if (v11)
      {
        [v7 setCanRestart:0];
        [v7 setCanRollback:0];
        [v7 setDelegate:v11];
        [v7 setTargetQueue:self->_delegateQueue];
        [v7 setSerializer:self];
        v12 = [v11 idsOptions];
        [v7 setOptions:v12];

        v13 = [v11 context];
        [v7 setUserContext:v13];

        [v11 setSession:v7];
        [v11 setStore:self];
        objc_storeStrong(&self->_sessionOwner, v11);
      }

      else if (a5)
      {
        *a5 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:2009 userInfo:0];
      }
    }
  }

  else
  {
    [(SYStore *)self _startIncomingSession:v7];
    v10 = 1;
  }

  return v10;
}

- (void)service:(id)a3 willSwitchFromPairingID:(id)a4 toPairingID:(id)a5
{
  [a3 suspend];
  if (!a5 && (*&self->_flags & 0x1000) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained syncStoreDidUnpair:self];
  }
}

- (void)service:(id)a3 didSwitchFromPairingID:(id)a4 toPairingID:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v21 = 0;
    v11 = [v8 resume:&v21];
    v12 = v21;
    v13 = v12;
    if (v11)
    {
LABEL_3:
      if (!v9 && (*&self->_flags & 0x800) != 0)
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained syncStoreDidSetupAfterPairing:self];
      }

LABEL_14:

      goto LABEL_15;
    }

    v15 = [v12 domain];
    if ([v15 isEqualToString:@"SYErrorDomain"])
    {
      v16 = [v13 code];

      if (v16 == 2002)
      {
        goto LABEL_3;
      }
    }

    else
    {
    }

    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v17 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_ERROR))
    {
      v19 = v17;
      v20 = _SYObfuscate(v13);
      *buf = 138543874;
      v23 = v9;
      v24 = 2114;
      v25 = v10;
      v26 = 2114;
      v27 = v20;
      _os_log_error_impl(&dword_1DF835000, v19, OS_LOG_TYPE_ERROR, "Failed to resume SYService after switching from device %{public}@ to %{public}@: %{public}@", buf, 0x20u);
    }

    goto LABEL_14;
  }

LABEL_15:

  v18 = *MEMORY[0x1E69E9840];
}

- (void)service:(id)a3 encounteredError:(id)a4 context:(id)a5
{
  if ((*&self->_flags & 0x400) != 0)
  {
    v8 = a5;
    v9 = a4;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained syncStore:self encounteredError:v9 context:v8];
  }
}

- (SYStoreDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)inDeltaSync
{
  v2 = [(SYService *)self->_syService name];
  v3 = [SYPersistentStore sharedPersistentStoreForService:v2];
  v4 = [v3 isPerformingDeltaSync];

  return v4;
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
    *v6 = 0;
    _os_log_impl(&dword_1DF835000, v3, OS_LOG_TYPE_DEFAULT, "Beginning SYStore delta sync", v6, 2u);
  }

  v4 = [(SYService *)self->_syService name];
  v5 = [SYPersistentStore sharedPersistentStoreForService:v4];
  [v5 setPerformingDeltaSync:1];
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
    *v6 = 0;
    _os_log_impl(&dword_1DF835000, v3, OS_LOG_TYPE_DEFAULT, "Ended SYStore delta sync", v6, 2u);
  }

  v4 = [(SYService *)self->_syService name];
  v5 = [SYPersistentStore sharedPersistentStoreForService:v4];
  [v5 setPerformingDeltaSync:0];
}

@end