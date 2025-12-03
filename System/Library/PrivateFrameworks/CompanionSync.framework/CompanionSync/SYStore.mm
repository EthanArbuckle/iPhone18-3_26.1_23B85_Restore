@interface SYStore
- (BOOL)_startResetSyncSession:(id)session error:(id *)error;
- (BOOL)addObject:(id)object context:(id)context idsOptions:(id)options error:(id *)error;
- (BOOL)deleteObject:(id)object context:(id)context idsOptions:(id)options error:(id *)error;
- (BOOL)hasCompletedFullSync;
- (BOOL)inDeltaSync;
- (BOOL)resume:(id *)resume;
- (BOOL)service:(id)service startSession:(id)session error:(id *)error;
- (BOOL)updateObject:(id)object context:(id)context idsOptions:(id)options error:(id *)error;
- (SYStore)init;
- (SYStoreDelegate)delegate;
- (id)changeFromData:(id)data ofType:(int64_t)type;
- (id)dataFromChange:(id)change;
- (id)decodeSYObject:(id)object;
- (id)encodeSYObject:(id)object;
- (int64_t)priority;
- (int64_t)state;
- (void)_enqueueDeltaSessionWithChanges:(id)changes contextInfo:(id)info idsOptions:(id)options blockUntilSent:(BOOL)sent reportError:(id)error;
- (void)_signalNextQueuedSession;
- (void)_startIncomingSession:(id)session;
- (void)_transaction:(id)_transaction context:(id)context idsOptions:(id)options blockUntilSent:(BOOL)sent reportError:(id)error;
- (void)didEndDeltaSync;
- (void)service:(id)service didSwitchFromPairingID:(id)d toPairingID:(id)iD;
- (void)service:(id)service encounteredError:(id)error context:(id)context;
- (void)service:(id)service willSwitchFromPairingID:(id)d toPairingID:(id)iD;
- (void)setDelegate:(id)delegate;
- (void)setDeliveryQOS:(unsigned int)s;
- (void)setNeedsFullSyncWithContext:(id)context idsOptions:(id)options;
- (void)setPriority:(int64_t)priority;
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
    selfCopy = self;
  }

  else
  {
    v4 = MEMORY[0x1E695DF30];
    v5 = *MEMORY[0x1E695D930];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    [v4 raise:v5 format:{@"-[%@ init] is not supported.", v7}];

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)dataFromChange:(id)change
{
  changeCopy = change;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    wrappedObject = [changeCopy wrappedObject];
    v6 = [(SYStore *)self encodeSYObject:wrappedObject];

    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    changeData = [changeCopy changeData];
LABEL_7:
    v6 = changeData;
    goto LABEL_9;
  }

  if ([changeCopy conformsToProtocol:&unk_1F5AE6078])
  {
    changeData = [(SYStore *)self encodeSYObject:changeCopy];
    goto LABEL_7;
  }

  v6 = 0;
LABEL_9:

  return v6;
}

- (id)changeFromData:(id)data ofType:(int64_t)type
{
  v5 = [(SYStore *)self decodeSYObject:data];
  if (v5)
  {
    v6 = [[SYObjectWrapper alloc] initWithSYObject:v5 type:type];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_delegate, delegateCopy);
  if (delegateCopy)
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

- (BOOL)resume:(id *)resume
{
  v13[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    syService = self->_syService;
    v7 = *MEMORY[0x1E69E9840];

    return [(SYService *)syService resume:resume];
  }

  else
  {
    if (resume)
    {
      v9 = objc_alloc(MEMORY[0x1E696ABC0]);
      v12 = *MEMORY[0x1E696A578];
      v13[0] = @"SYStore must be given a delegate object before it can be resumed.";
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
      *resume = [v9 initWithSYError:2001 userInfo:v10];
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

  priority = [syService priority];
  if (priority == 20)
  {
    v6 = 2;
  }

  else
  {
    v6 = priority == 0;
  }

  return v6;
}

- (void)setPriority:(int64_t)priority
{
  syService = [(SYService *)self->_syService currentSession];
  v6 = -20;
  if (priority == 1)
  {
    v6 = 0;
  }

  if (priority == 2)
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

- (void)setDeliveryQOS:(unsigned int)s
{
  if ([(SYStore *)self deliveryQOS]!= s)
  {
    delegateQueue = self->_delegateQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __26__SYStore_setDeliveryQOS___block_invoke;
    v6[3] = &unk_1E86CA080;
    v6[4] = self;
    sCopy = s;
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
  name = [(SYService *)self->_syService name];
  v3 = [SYPersistentStore sharedPersistentStoreForService:name];

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
  name = [(SYService *)self->_syService name];
  v3 = [SYPersistentStore sharedPersistentStoreForService:name];
  completedSync = [v3 completedSync];

  return completedSync;
}

- (void)_signalNextQueuedSession
{
  sessionOwner = self->_sessionOwner;
  self->_sessionOwner = 0;

  head = [(SYAtomicFIFO *)self->_sessionQueue head];
  if (head)
  {
    v5 = head;
    [(SYService *)self->_syService setHasChangesAvailable];
    head = v5;
  }
}

- (void)_enqueueDeltaSessionWithChanges:(id)changes contextInfo:(id)info idsOptions:(id)options blockUntilSent:(BOOL)sent reportError:(id)error
{
  sentCopy = sent;
  changesCopy = changes;
  infoCopy = info;
  optionsCopy = options;
  errorCopy = error;
  v16 = [[SYStoreDeltaSessionOwner alloc] initWithChanges:changesCopy];
  [(SYStoreSessionOwner *)v16 setContext:infoCopy];
  [(SYStoreSessionOwner *)v16 setIdsOptions:optionsCopy];
  [(SYStoreSessionOwner *)v16 setErrorCallback:errorCopy];
  [(SYStoreSessionOwner *)v16 setStore:self];
  if (sentCopy)
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
  v19 = infoCopy;
  v35 = v19;
  [(SYStoreSessionOwner *)v16 setOnComplete:&v30];
  [(SYAtomicFIFO *)self->_sessionQueue enqueue:v16, v30, v31, v32, v33];
  [(SYService *)self->_syService setHasChangesAvailable];
  if (sentCopy)
  {
    [(SYStore *)self timeToLive];
    v21 = dispatch_time(0, (v20 * 1000000000.0));
    if (dispatch_semaphore_wait(v18, v21))
    {
      session = [(SYStoreSessionOwner *)v16 session];
      [session cancel];

      v23 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:2007 userInfo:0];
      errorCallback = [(SYStoreSessionOwner *)v16 errorCallback];

      if (errorCallback)
      {
        WeakRetained = [(SYStoreSessionOwner *)v16 errorCallback];
        (WeakRetained)[2](WeakRetained, v23);
      }

      else
      {
        if ((*&self->_flags & 0x400) == 0)
        {
LABEL_11:
          onComplete = [(SYStoreSessionOwner *)v16 onComplete];
          onComplete[2]();

          goto LABEL_12;
        }

        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        context = [(SYStoreSessionOwner *)v16 context];
        selfCopy = self;
        v28 = context;
        [WeakRetained syncStore:selfCopy encounteredError:v23 context:context];
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

- (BOOL)addObject:(id)object context:(id)context idsOptions:(id)options error:(id *)error
{
  v18[1] = *MEMORY[0x1E69E9840];
  objectCopy = object;
  contextCopy = context;
  optionsCopy = options;
  v12 = _os_activity_create(&dword_1DF835000, "CompanionSync AddObject", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v17.opaque[0] = 0;
  v17.opaque[1] = 0;
  os_activity_scope_enter(v12, &v17);
  v13 = [SYChange changeWithObject:objectCopy updateType:0 store:self];
  v18[0] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  [(SYStore *)self _enqueueDeltaSessionWithChanges:v14 contextInfo:contextCopy idsOptions:optionsCopy blockUntilSent:0 reportError:0];

  os_activity_scope_leave(&v17);
  v15 = *MEMORY[0x1E69E9840];
  return 1;
}

- (BOOL)updateObject:(id)object context:(id)context idsOptions:(id)options error:(id *)error
{
  v18[1] = *MEMORY[0x1E69E9840];
  objectCopy = object;
  contextCopy = context;
  optionsCopy = options;
  v12 = _os_activity_create(&dword_1DF835000, "CompanionSync UpdateObject", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v17.opaque[0] = 0;
  v17.opaque[1] = 0;
  os_activity_scope_enter(v12, &v17);
  v13 = [SYChange changeWithObject:objectCopy updateType:1 store:self];
  v18[0] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  [(SYStore *)self _enqueueDeltaSessionWithChanges:v14 contextInfo:contextCopy idsOptions:optionsCopy blockUntilSent:0 reportError:0];

  os_activity_scope_leave(&v17);
  v15 = *MEMORY[0x1E69E9840];
  return 1;
}

- (BOOL)deleteObject:(id)object context:(id)context idsOptions:(id)options error:(id *)error
{
  v26[1] = *MEMORY[0x1E69E9840];
  objectCopy = object;
  contextCopy = context;
  optionsCopy = options;
  allowsDeletes = [(SYStore *)self allowsDeletes];
  if (allowsDeletes)
  {
    v14 = _os_activity_create(&dword_1DF835000, "CompanionSync DeleteObject", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v14, &state);
    v15 = [SYChange changeWithObject:objectCopy updateType:2 store:self];
    v26[0] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
    [(SYStore *)self _enqueueDeltaSessionWithChanges:v16 contextInfo:contextCopy idsOptions:optionsCopy blockUntilSent:0 reportError:0];

    os_activity_scope_leave(&state);
  }

  else
  {
    v17 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:1006 userInfo:0];
    v14 = v17;
    if (error)
    {
      v18 = v17;
      *error = v14;
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
      v25 = contextCopy;
      dispatch_async(delegateQueue, block);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
  return allowsDeletes;
}

void __49__SYStore_deleteObject_context_idsOptions_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 syncStore:*(a1 + 32) encounteredError:*(a1 + 40) context:*(a1 + 48)];
}

- (void)_transaction:(id)_transaction context:(id)context idsOptions:(id)options blockUntilSent:(BOOL)sent reportError:(id)error
{
  _transactionCopy = _transaction;
  contextCopy = context;
  optionsCopy = options;
  errorCopy = error;
  name = [(SYService *)self->_syService name];
  v17 = [SYPersistentStore sharedPersistentStoreForService:name];

  if ([v17 completedSync])
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __70__SYStore__transaction_context_idsOptions_blockUntilSent_reportError___block_invoke;
    v19[3] = &unk_1E86CA120;
    v19[4] = self;
    v22 = _transactionCopy;
    v20 = contextCopy;
    v21 = optionsCopy;
    sentCopy = sent;
    v23 = errorCopy;
    _os_activity_initiate(&dword_1DF835000, "CompanionSync Transaction", OS_ACTIVITY_FLAG_DEFAULT, v19);
  }

  else if (errorCopy)
  {
    v18 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:1005 userInfo:0];
    (*(errorCopy + 2))(errorCopy, v18);
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

- (void)setNeedsFullSyncWithContext:(id)context idsOptions:(id)options
{
  contextCopy = context;
  optionsCopy = options;
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

    [(SYStoreSessionOwner *)pendingResetSessionOwner setContext:contextCopy];
    [(SYStoreSessionOwner *)self->_pendingResetSessionOwner setIdsOptions:optionsCopy];
    name = [(SYService *)self->_syService name];
    v13 = [SYPersistentStore sharedPersistentStoreForService:name];

    [v13 setCompletedSync:0];
    [v13 setFullSyncUserInfo:contextCopy];
    [v13 setFullSyncIDSOptions:optionsCopy];
    [(SYService *)self->_syService setNeedsResetSync];
  }
}

- (id)decodeSYObject:(id)object
{
  objectCopy = object;
  serializer = [(SYStore *)self serializer];

  if (!serializer)
  {
    v9 = objc_alloc(MEMORY[0x1E695DF30]);
    objc_exception_throw([v9 initWithName:*MEMORY[0x1E695D930] reason:@"SYStore does not have a serializer. You must set it." userInfo:0]);
  }

  serializer2 = [(SYStore *)self serializer];
  v7 = [serializer2 SYObjectWithData:objectCopy];

  return v7;
}

- (id)encodeSYObject:(id)object
{
  objectCopy = object;
  serializer = [(SYStore *)self serializer];

  if (serializer)
  {
    serializer2 = [(SYStore *)self serializer];
    v7 = [serializer2 dataWithSYObject:objectCopy];
  }

  else if ([objectCopy conformsToProtocol:&unk_1F5AE3770])
  {
    v7 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:objectCopy requiringSecureCoding:1 error:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_startIncomingSession:(id)session
{
  sessionCopy = session;
  v5 = [[SYStoreIncomingSessionOwner alloc] initWithIncomingSession:sessionCopy];
  userContext = [sessionCopy userContext];
  [(SYStoreSessionOwner *)v5 setContext:userContext];

  options = [sessionCopy options];
  [(SYStoreSessionOwner *)v5 setIdsOptions:options];

  [(SYStoreSessionOwner *)v5 setStore:self];
  [sessionCopy setDelegate:v5];
  [sessionCopy setTargetQueue:self->_delegateQueue];
  [sessionCopy setSerializer:self];
  idsOptions = [(SYStoreSessionOwner *)v5 idsOptions];
  [sessionCopy setOptions:idsOptions];

  context = [(SYStoreSessionOwner *)v5 context];
  [sessionCopy setUserContext:context];

  if (*&self->_flags)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained syncStoreWillUpdate:self];
  }

  isResetSync = [sessionCopy isResetSync];
  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __33__SYStore__startIncomingSession___block_invoke;
  v14[3] = &unk_1E86CA148;
  objc_copyWeak(&v15, &location);
  v16 = isResetSync;
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

- (BOOL)_startResetSyncSession:(id)session error:(id *)error
{
  sessionCopy = session;
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
      [sessionCopy setDelegate:v7];
      [sessionCopy setTargetQueue:self->_delegateQueue];
      [sessionCopy setSerializer:self];
      idsOptions = [(SYStoreSessionOwner *)v7 idsOptions];
      [sessionCopy setOptions:idsOptions];

      context = [(SYStoreSessionOwner *)v7 context];
      [sessionCopy setUserContext:context];

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
  if (error)
  {
    *error = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:-128 userInfo:0];
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

- (BOOL)service:(id)service startSession:(id)session error:(id *)error
{
  sessionCopy = session;
  if ([sessionCopy isSending])
  {
    isResetSync = [sessionCopy isResetSync];
    sessionQueue = self->_sessionQueue;
    if (isResetSync)
    {
      [(SYAtomicFIFO *)sessionQueue removeAllObjects];
      v10 = [(SYStore *)self _startResetSyncSession:sessionCopy error:error];
    }

    else
    {
      dequeue = [(SYAtomicFIFO *)sessionQueue dequeue];
      v10 = dequeue != 0;
      if (dequeue)
      {
        [sessionCopy setCanRestart:0];
        [sessionCopy setCanRollback:0];
        [sessionCopy setDelegate:dequeue];
        [sessionCopy setTargetQueue:self->_delegateQueue];
        [sessionCopy setSerializer:self];
        idsOptions = [dequeue idsOptions];
        [sessionCopy setOptions:idsOptions];

        context = [dequeue context];
        [sessionCopy setUserContext:context];

        [dequeue setSession:sessionCopy];
        [dequeue setStore:self];
        objc_storeStrong(&self->_sessionOwner, dequeue);
      }

      else if (error)
      {
        *error = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:2009 userInfo:0];
      }
    }
  }

  else
  {
    [(SYStore *)self _startIncomingSession:sessionCopy];
    v10 = 1;
  }

  return v10;
}

- (void)service:(id)service willSwitchFromPairingID:(id)d toPairingID:(id)iD
{
  [service suspend];
  if (!iD && (*&self->_flags & 0x1000) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained syncStoreDidUnpair:self];
  }
}

- (void)service:(id)service didSwitchFromPairingID:(id)d toPairingID:(id)iD
{
  v28 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  dCopy = d;
  iDCopy = iD;
  if (iDCopy)
  {
    v21 = 0;
    v11 = [serviceCopy resume:&v21];
    v12 = v21;
    v13 = v12;
    if (v11)
    {
LABEL_3:
      if (!dCopy && (*&self->_flags & 0x800) != 0)
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained syncStoreDidSetupAfterPairing:self];
      }

LABEL_14:

      goto LABEL_15;
    }

    domain = [v12 domain];
    if ([domain isEqualToString:@"SYErrorDomain"])
    {
      code = [v13 code];

      if (code == 2002)
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
      v23 = dCopy;
      v24 = 2114;
      v25 = iDCopy;
      v26 = 2114;
      v27 = v20;
      _os_log_error_impl(&dword_1DF835000, v19, OS_LOG_TYPE_ERROR, "Failed to resume SYService after switching from device %{public}@ to %{public}@: %{public}@", buf, 0x20u);
    }

    goto LABEL_14;
  }

LABEL_15:

  v18 = *MEMORY[0x1E69E9840];
}

- (void)service:(id)service encounteredError:(id)error context:(id)context
{
  if ((*&self->_flags & 0x400) != 0)
  {
    contextCopy = context;
    errorCopy = error;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained syncStore:self encounteredError:errorCopy context:contextCopy];
  }
}

- (SYStoreDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)inDeltaSync
{
  name = [(SYService *)self->_syService name];
  v3 = [SYPersistentStore sharedPersistentStoreForService:name];
  isPerformingDeltaSync = [v3 isPerformingDeltaSync];

  return isPerformingDeltaSync;
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

  name = [(SYService *)self->_syService name];
  v5 = [SYPersistentStore sharedPersistentStoreForService:name];
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

  name = [(SYService *)self->_syService name];
  v5 = [SYPersistentStore sharedPersistentStoreForService:name];
  [v5 setPerformingDeltaSync:0];
}

@end