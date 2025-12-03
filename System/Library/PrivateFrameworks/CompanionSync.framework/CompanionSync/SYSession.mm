@interface SYSession
+ (id)allocWithZone:(_NSZone *)zone;
- (BOOL)_beginTransaction;
- (BOOL)_endTransaction;
- (BOOL)_handleEndSessionResponse:(id)response error:(id *)error;
- (BOOL)_handleRestartSessionResponse:(id)response error:(id *)error;
- (BOOL)_handleStartSessionResponse:(id)response error:(id *)error;
- (BOOL)_handleSyncBatchResponse:(id)response error:(id *)error;
- (BOOL)_readyToProcessIncomingMessages;
- (BOOL)_willAcquiesceToNewSessionFromPeer:(id)peer;
- (BOOL)canRestart;
- (BOOL)canRollback;
- (BOOL)isResetSync;
- (NSDictionary)wrappedUserContext;
- (PBCodable)stateForLogging;
- (SYService)service;
- (SYSession)initWithService:(id)service;
- (SYSessionDelegate)delegate;
- (double)remainingSessionTime;
- (id)CPSafeDescription;
- (id)_cancelPendingMessagesReturningFailures;
- (id)changeFromData:(id)data ofType:(int64_t)type;
- (id)combinedEngineOptions:(id)options;
- (id)dataFromChange:(id)change;
- (id)decodeChangeData:(id)data fromProtocolVersion:(int64_t)version ofType:(int64_t)type;
- (id)encodeSYChangeForBackwardCompatibility:(id)compatibility protocolVersion:(int64_t)version;
- (unsigned)state;
- (void)_beginTransaction;
- (void)_clearOutgoingMessageUUID:(id)d;
- (void)_continue;
- (void)_endTransaction;
- (void)_handleEndSession:(id)session response:(id)response completion:(id)completion;
- (void)_handleError:(id)error;
- (void)_handleRestartSession:(id)session response:(id)response completion:(id)completion;
- (void)_handleSyncBatch:(id)batch response:(id)response completion:(id)completion;
- (void)_onSessionStateChangedTo:(unsigned int)to do:(id)do;
- (void)_pause;
- (void)_recordOutgoingMessageUUID:(id)d;
- (void)_supercededWithSession:(id)session;
- (void)cancel;
- (void)cancelWithError:(id)error;
- (void)dealloc;
- (void)setCanRestart:(BOOL)restart;
- (void)setCanRollback:(BOOL)rollback;
- (void)setDelegate:(id)delegate;
- (void)setState:(unsigned int)state;
- (void)setTargetQueue:(id)queue;
- (void)start:(id)start;
@end

@implementation SYSession

+ (id)allocWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"SYSession is an abstract class. Please instantiate the correct subclass for your use case."];
  }

  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___SYSession;
  return objc_msgSendSuper2(&v7, sel_allocWithZone_, zone);
}

- (SYSession)initWithService:(id)service
{
  v27 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  v25.receiver = self;
  v25.super_class = SYSession;
  v5 = [(SYSession *)&v25 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_service, serviceCopy);
    v6->_priority = [serviceCopy priority];
    *&v6->_perMessageTimeout = xmmword_1DF8E3E10;
    v7 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:16];
    pendingMessageIDs = v6->_pendingMessageIDs;
    v6->_pendingMessageIDs = v7;

    v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
    peerGenerationIDs = v6->_peerGenerationIDs;
    v6->_peerGenerationIDs = v9;

    v6->_setDelegateLock._os_unfair_lock_opaque = 0;
    name = [serviceCopy name];
    lastPathComponent = [name lastPathComponent];
    snprintf(__str, 0x80uLL, "%s Session Queue", [lastPathComponent UTF8String]);

    queue = [serviceCopy queue];
    qos_class = dispatch_queue_get_qos_class(queue, 0);

    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = v15;
    if (qos_class)
    {
      v17 = dispatch_queue_attr_make_with_qos_class(v15, qos_class, 0);

      v16 = v17;
    }

    v18 = dispatch_queue_create(__str, v16);
    queue = v6->_queue;
    v6->_queue = v18;

    [SYQueueDumper registerQueue:v6->_queue];
    v20 = MakeDefaultDelegateQueue(serviceCopy);
    delegateQueue = v6->_delegateQueue;
    v6->_delegateQueue = v20;

    [SYQueueDumper registerQueue:v6->_delegateQueue];
    v6->_birthDate = CFAbsoluteTimeGetCurrent();
    [(SYSession *)v6 _beginTransaction];
    v22 = v6;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v5 = 138543362;
  v6 = v3;
  _os_log_error_impl(&dword_1DF835000, selfCopy, 0x90u, "[%{public}@ dealloc]: XPC transaction wasn't ended prior to -dealloc", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

- (BOOL)_beginTransaction
{
  v2 = 0;
  atomic_compare_exchange_strong(&self->_inTransaction, &v2, 1u);
  v3 = v2 == 0;
  if (!v2)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v5 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEBUG))
    {
      [(SYSession *)self _beginTransaction];
    }

    v6 = os_transaction_create();
    transaction = self->_transaction;
    self->_transaction = v6;
  }

  return v3;
}

- (BOOL)_endTransaction
{
  v2 = 1;
  atomic_compare_exchange_strong(&self->_inTransaction, &v2, 0);
  v3 = v2 == 1;
  if (v2 == 1)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v5 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEBUG))
    {
      [(SYSession *)self _endTransaction];
    }

    transaction = self->_transaction;
    self->_transaction = 0;
  }

  return v3;
}

- (void)_recordOutgoingMessageUUID:(id)d
{
  dCopy = d;
  if (![(SYSession *)self wasCancelled])
  {
    if (dCopy)
    {
      [(NSMutableSet *)self->_pendingMessageIDs addObject:dCopy];
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
        [SYSession _recordOutgoingMessageUUID:v5];
      }
    }
  }
}

- (void)_clearOutgoingMessageUUID:(id)d
{
  dCopy = d;
  if (![(SYSession *)self wasCancelled])
  {
    [(NSMutableSet *)self->_pendingMessageIDs removeObject:dCopy];
  }
}

- (id)_cancelPendingMessagesReturningFailures
{
  service = [(SYSession *)self service];
  syncEngine = [service syncEngine];
  v5 = [syncEngine cancelMessagesReturningFailures:self->_pendingMessageIDs];

  return v5;
}

- (id)dataFromChange:(id)change
{
  changeCopy = change;
  serializer = self->_serializer;
  if (serializer)
  {
    v6 = [(SYChangeSerializer *)serializer dataFromChange:changeCopy];
LABEL_5:
    v7 = v6;
    goto LABEL_6;
  }

  if ([changeCopy conformsToProtocol:&unk_1F5AE36C0])
  {
    v6 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:changeCopy requiringSecureCoding:1 error:0];
    goto LABEL_5;
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"SYSession cannot encode change objects of type '%@'", objc_opt_class()}];
  v7 = 0;
LABEL_6:

  return v7;
}

- (id)changeFromData:(id)data ofType:(int64_t)type
{
  dataCopy = data;
  serializer = self->_serializer;
  if (!serializer)
  {
    v10 = objc_alloc(MEMORY[0x1E695DF30]);
    objc_exception_throw([v10 initWithName:*MEMORY[0x1E695D930] reason:@"SYSession does not have a serializer. You must set a serializer before starting a session." userInfo:0]);
  }

  v8 = [(SYChangeSerializer *)serializer changeFromData:dataCopy ofType:type];

  return v8;
}

- (id)encodeSYChangeForBackwardCompatibility:(id)compatibility protocolVersion:(int64_t)version
{
  compatibilityCopy = compatibility;
  if (self->_serializer && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v7 = [(SYChangeSerializer *)self->_serializer encodeSYChangeForBackwardCompatibility:compatibilityCopy protocolVersion:version];
LABEL_11:
    v8 = v7;
    goto LABEL_12;
  }

  if (version == 2)
  {
    v7 = [(SYSession *)self dataFromChange:compatibilityCopy];
    goto LABEL_11;
  }

  if (self->_serializer && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v7 = [(SYChangeSerializer *)self->_serializer dataWithSYObject:compatibilityCopy];
    goto LABEL_11;
  }

  if ([compatibilityCopy conformsToProtocol:&unk_1F5AE36C0])
  {
    v7 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:compatibilityCopy requiringSecureCoding:1 error:0];
    goto LABEL_11;
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"SYSession cannot encode change objects of type '%@' for protocol version %ld", objc_opt_class(), version}];
  v8 = 0;
LABEL_12:

  return v8;
}

- (id)decodeChangeData:(id)data fromProtocolVersion:(int64_t)version ofType:(int64_t)type
{
  dataCopy = data;
  if (self->_serializer && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v9 = [(SYChangeSerializer *)self->_serializer decodeChangeData:dataCopy fromProtocolVersion:version ofType:type];
  }

  else if (version == 2)
  {
    v9 = [(SYSession *)self changeFromData:dataCopy ofType:type];
  }

  else
  {
    if (!self->_serializer || (objc_opt_respondsToSelector() & 1) == 0)
    {
      v12 = objc_alloc(MEMORY[0x1E695DF30]);
      objc_exception_throw([v12 initWithName:*MEMORY[0x1E695D930] reason:@"SYSession does not have a serializer. You must set a serializer before starting a session." userInfo:0]);
    }

    v9 = [(SYChangeSerializer *)self->_serializer SYObjectWithData:dataCopy];
  }

  v10 = v9;

  return v10;
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  os_unfair_lock_lock(&self->_setDelegateLock);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    v5 = obj;
    if (obj)
    {
      if ((objc_opt_respondsToSelector() & 1) == 0 && [(SYSession *)self isSending])
      {
        [(SYSession *)self setCanRestart:0];
      }

      v6 = objc_opt_respondsToSelector();
      v5 = obj;
      if ((v6 & 1) == 0)
      {
        [(SYSession *)self setCanRollback:0];
        v5 = obj;
      }
    }

    objc_storeWeak(&self->_delegate, v5);
  }

  os_unfair_lock_unlock(&self->_setDelegateLock);
}

- (void)setTargetQueue:(id)queue
{
  queueCopy = queue;
  p_delegateQueue = &self->_delegateQueue;
  if (self->_delegateQueue != queueCopy)
  {
    if (!queueCopy)
    {
      service = [(SYSession *)self service];
      obj = MakeDefaultDelegateQueue(service);

      queueCopy = obj;
    }

    obja = queueCopy;
    objc_storeStrong(p_delegateQueue, queueCopy);
    queueCopy = obja;
  }
}

- (double)remainingSessionTime
{
  [(SYSession *)self fullSessionTimeout];
  if (v3 == 0.0)
  {
    return 1.79769313e308;
  }

  v5 = v3 + self->_birthDate;
  return v5 - CFAbsoluteTimeGetCurrent();
}

- (NSDictionary)wrappedUserContext
{
  userContext = [(SYSession *)self userContext];
  v4 = [userContext mutableCopy];

  identifier = [(SYSession *)self identifier];
  v6 = identifier;
  if (v4)
  {
    [v4 setObject:identifier forKeyedSubscript:@"AssociatedSessionIdentifier"];

    v7 = v4;
  }

  else
  {
    v7 = UserInfoDictionaryWithAssociatedSessionID(identifier);
  }

  return v7;
}

- (void)cancel
{
  v3 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:-128 userInfo:0];
  [(SYSession *)self cancelWithError:v3];
}

- (void)_pause
{
  v2 = 0;
  v12 = *MEMORY[0x1E69E9840];
  atomic_compare_exchange_strong(&self->_paused, &v2, 1u);
  if (!v2)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v4 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      v6 = _SYObfuscate(self);
      *buf = 138543362;
      v11 = v6;
      _os_log_impl(&dword_1DF835000, v5, OS_LOG_TYPE_DEFAULT, "Pausing %{public}@ ...", buf, 0xCu);
    }

    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __19__SYSession__pause__block_invoke;
    block[3] = &unk_1E86C9FB0;
    block[4] = self;
    dispatch_barrier_sync(queue, block);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_continue
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = 1;
  atomic_compare_exchange_strong(&self->_paused, &v2, 0);
  if (v2 == 1)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v4 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      v6 = _SYObfuscate(self);
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&dword_1DF835000, v5, OS_LOG_TYPE_DEFAULT, "... Resuming %{public}@", &v8, 0xCu);
    }

    dispatch_resume(self->_queue);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)_readyToProcessIncomingMessages
{
  state = [(SYSession *)self state];
  result = 0;
  if (state <= 6)
  {
    if (state != 1)
    {
      if (state != 6)
      {
        return result;
      }

      goto LABEL_9;
    }

    return ![(SYSession *)self isSending];
  }

  if (state != 7)
  {
    if (state != 10)
    {
      return result;
    }

    return ![(SYSession *)self isSending];
  }

LABEL_9:

  return [(SYSession *)self isSending];
}

- (BOOL)_willAcquiesceToNewSessionFromPeer:(id)peer
{
  v38 = *MEMORY[0x1E69E9840];
  peerCopy = peer;
  peerGenerationIDs = self->_peerGenerationIDs;
  peerID = [peerCopy peerID];
  v7 = [(NSMutableDictionary *)peerGenerationIDs objectForKeyedSubscript:peerID];

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v8 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEBUG))
  {
    v23 = v8;
    identifier = [(SYSession *)self identifier];
    state = [(SYSession *)self state];
    generationID = [peerCopy generationID];
    v34 = 138544130;
    v35 = identifier;
    v36 = 1024;
    *v37 = state;
    *&v37[4] = 2114;
    *&v37[6] = v7;
    *&v37[14] = 2114;
    *&v37[16] = generationID;
    _os_log_debug_impl(&dword_1DF835000, v23, OS_LOG_TYPE_DEBUG, "Session acquiescense test: %{public}@, %{companionsync:SYSessionState}d, my generation %{public}@, new generation %{public}@", &v34, 0x26u);

    if (v7)
    {
LABEL_5:
      if (([peerCopy hasGenerationID] & 1) == 0)
      {
        if (_sync_log_facilities_pred != -1)
        {
          [SYIncomingSyncAllObjectsSession _continueProcessing];
        }

        v16 = qword_1EDE73420;
        if (!os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_INFO))
        {
          goto LABEL_17;
        }

        v17 = v16;
        identifier2 = [(SYSession *)self identifier];
        v34 = 138543362;
        v35 = identifier2;
        v19 = "Session %{public}@ rejecting new session; no peer generation ID";
        goto LABEL_16;
      }

      generationID2 = [peerCopy generationID];
      v10 = [v7 isEqualToString:generationID2];

      if ((v10 & 1) == 0)
      {
        if (_sync_log_facilities_pred != -1)
        {
          [SYIncomingSyncAllObjectsSession _continueProcessing];
        }

        v20 = qword_1EDE73420;
        v12 = 1;
        if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_INFO))
        {
          v13 = v20;
          identifier3 = [(SYSession *)self identifier];
          generationID3 = [peerCopy generationID];
          v34 = 138543874;
          v35 = identifier3;
          v36 = 2114;
          *v37 = generationID3;
          *&v37[8] = 2114;
          *&v37[10] = v7;
          _os_log_impl(&dword_1DF835000, v13, OS_LOG_TYPE_INFO, "Session %{public}@ acquiescing to new session; new generation ID %{public}@ does not match current %{public}@", &v34, 0x20u);

LABEL_39:
          goto LABEL_40;
        }

        goto LABEL_40;
      }

      if (self->_rejectedNewSessionFromSamePeer)
      {
        if (_sync_log_facilities_pred != -1)
        {
          [SYIncomingSyncAllObjectsSession _continueProcessing];
        }

        v11 = qword_1EDE73420;
        v12 = 1;
        if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_INFO))
        {
          v13 = v11;
          identifier3 = [(SYSession *)self identifier];
          v34 = 138543362;
          v35 = identifier3;
          v15 = "Session %{public}@ acquiescing to new session; second strike";
LABEL_38:
          _os_log_impl(&dword_1DF835000, v13, OS_LOG_TYPE_INFO, v15, &v34, 0xCu);
          goto LABEL_39;
        }

        goto LABEL_40;
      }

      self->_rejectedNewSessionFromSamePeer = 1;
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v22 = qword_1EDE73420;
      if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_INFO))
      {
        v17 = v22;
        identifier2 = [(SYSession *)self identifier];
        v34 = 138543362;
        v35 = identifier2;
        v19 = "Session %{public}@ rejecting new session: first strike";
LABEL_16:
        _os_log_impl(&dword_1DF835000, v17, OS_LOG_TYPE_INFO, v19, &v34, 0xCu);

        goto LABEL_17;
      }

      goto LABEL_17;
    }
  }

  else if (v7)
  {
    goto LABEL_5;
  }

  if ([(SYSession *)self isSending])
  {
    state2 = [(SYSession *)self state];
    if (state2 == 6)
    {
      if (self->_rejectedNewSessionFromSamePeer)
      {
        if (_sync_log_facilities_pred != -1)
        {
          [SYIncomingSyncAllObjectsSession _continueProcessing];
        }

        v32 = qword_1EDE73420;
        v12 = 1;
        if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_INFO))
        {
          v13 = v32;
          identifier3 = [(SYSession *)self identifier];
          v34 = 138543362;
          v35 = identifier3;
          v15 = "Session %{public}@ acquiescing to new session; sending, not started, already rejected";
          goto LABEL_38;
        }

        goto LABEL_40;
      }

      self->_rejectedNewSessionFromSamePeer = 1;
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v33 = qword_1EDE73420;
      if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_INFO))
      {
        v17 = v33;
        identifier2 = [(SYSession *)self identifier];
        v34 = 138543362;
        v35 = identifier2;
        v19 = "Session %{public}@ rejecting new session; sending, not started, first strike";
        goto LABEL_16;
      }

LABEL_17:
      v12 = 0;
      goto LABEL_40;
    }

    if (!state2)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v28 = qword_1EDE73420;
      if (!os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_INFO))
      {
        goto LABEL_17;
      }

      v17 = v28;
      identifier2 = [(SYSession *)self identifier];
      v34 = 138543362;
      v35 = identifier2;
      v19 = "Session %{public}@ rejecting new session; not yet sent out my own start-session message";
      goto LABEL_16;
    }
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v29 = qword_1EDE73420;
  v12 = 1;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_INFO))
  {
    v13 = v29;
    identifier3 = [(SYSession *)self identifier];
    v34 = 138543362;
    v35 = identifier3;
    v15 = "Session %{public}@ acquiescing to new session; nil current generation";
    goto LABEL_38;
  }

LABEL_40:

  v30 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)_onSessionStateChangedTo:(unsigned int)to do:(id)do
{
  v16 = *MEMORY[0x1E69E9840];
  doCopy = do;
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v7 = _sync_log_facilities;
  if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v15 = "[SYSession _onSessionStateChangedTo:do:]";
    _os_log_impl(&dword_1DF835000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__SYSession__onSessionStateChangedTo_do___block_invoke;
  block[3] = &unk_1E86CBBD0;
  toCopy = to;
  block[4] = self;
  v12 = doCopy;
  v9 = doCopy;
  dispatch_sync(queue, block);

  v10 = *MEMORY[0x1E69E9840];
}

void __41__SYSession__onSessionStateChangedTo_do___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) state];
  v3 = *(a1 + 48);
  if (v2 == v3)
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
  }

  else
  {
    v5 = *(*(a1 + 32) + 56);
    if (!v5)
    {
      v6 = objc_opt_new();
      v7 = *(a1 + 32);
      v8 = *(v7 + 56);
      *(v7 + 56) = v6;

      v5 = *(*(a1 + 32) + 56);
      v3 = *(a1 + 48);
    }

    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
    v14 = [v5 objectForKeyedSubscript:v9];

    if (v14)
    {
      v10 = [*(a1 + 40) copy];
      [v14 addObject:v10];
    }

    else
    {
      v11 = objc_alloc(MEMORY[0x1E695DF70]);
      v12 = [*(a1 + 40) copy];
      v14 = [v11 initWithObjects:{v12, 0}];

      v13 = *(*(a1 + 32) + 56);
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 48)];
      [v13 setObject:v14 forKeyedSubscript:v10];
    }
  }
}

- (void)_supercededWithSession:(id)session
{
  sessionCopy = session;
  identifier = [(SYSession *)self identifier];
  [sessionCopy setIdentifier:identifier];

  delegate = [(SYSession *)self delegate];
  [sessionCopy setDelegate:delegate];

  targetQueue = [(SYSession *)self targetQueue];
  [sessionCopy setTargetQueue:targetQueue];

  serializer = [(SYSession *)self serializer];
  [sessionCopy setSerializer:serializer];

  options = [(SYSession *)self options];
  [sessionCopy setOptions:options];

  [sessionCopy setMaxConcurrentMessages:{-[SYSession maxConcurrentMessages](self, "maxConcurrentMessages")}];
  [sessionCopy setCanRestart:{-[SYSession canRestart](self, "canRestart")}];
  [sessionCopy setCanRollback:{-[SYSession canRollback](self, "canRollback")}];
  userContext = [(SYSession *)self userContext];
  [sessionCopy setUserContext:userContext];

  sessionMetadata = [(SYSession *)self sessionMetadata];
  [sessionCopy setSessionMetadata:sessionMetadata];

  peerGenerationIDs = [(SYSession *)self peerGenerationIDs];
  [sessionCopy setPeerGenerationIDs:peerGenerationIDs];

  reason = [(SYSession *)self reason];
  [sessionCopy setReason:reason];

  [(SYSession *)self _setStateQuietly:0];

  [(SYSession *)self _endTransaction];
}

- (void)_handleError:(id)error
{
  errorCopy = error;
  if ([(SYSession *)self state]!= 5)
  {
    [(SYSession *)self setError:errorCopy];
    [(SYSession *)self setState:5];
  }
}

- (id)CPSafeDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  identifier = [(SYSession *)self identifier];
  v7 = [v3 initWithFormat:@"<%@> %@", v5, identifier];

  return v7;
}

- (PBCodable)stateForLogging
{
  v3 = objc_opt_new();
  identifier = [(SYSession *)self identifier];
  [v3 setIdentifier:identifier];

  [v3 setState:{-[SYSession state](self, "state")}];
  [v3 setIsSending:{-[SYSession isSending](self, "isSending")}];
  [v3 setIsReset:{-[SYSession isResetSync](self, "isResetSync")}];
  [(SYSession *)self perMessageTimeout];
  [v3 setPerMessageTimeout:?];
  [(SYSession *)self fullSessionTimeout];
  [v3 setFullSessionTimeout:?];
  [v3 setMaxConcurrentMessages:{-[SYSession maxConcurrentMessages](self, "maxConcurrentMessages")}];
  v5 = [SYLogErrorInfo alloc];
  error = [(SYSession *)self error];
  v7 = [(SYLogErrorInfo *)v5 initWithCocoaError:error];
  [v3 setError:v7];

  [v3 setCanRollback:{-[SYSession canRollback](self, "canRollback")}];
  [v3 setCanRestart:{-[SYSession canRestart](self, "canRestart")}];
  [v3 setCanceled:{-[SYSession wasCancelled](self, "wasCancelled")}];
  options = [(SYSession *)self options];
  [v3 setCocoaTransportOptions:options];

  reason = [(SYSession *)self reason];
  [v3 setReason:reason];

  peerGenerationIDs = self->_peerGenerationIDs;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __28__SYSession_stateForLogging__block_invoke;
  v13[3] = &unk_1E86CBBF8;
  v11 = v3;
  v14 = v11;
  [(NSMutableDictionary *)peerGenerationIDs enumerateKeysAndObjectsUsingBlock:v13];

  return v11;
}

void __28__SYSession_stateForLogging__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = objc_opt_new();
  [v7 setPeerID:v6];

  [v7 setGenerationID:v5];
  [*(a1 + 32) addPeer:v7];
}

- (SYSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SYService)service
{
  WeakRetained = objc_loadWeakRetained(&self->_service);

  return WeakRetained;
}

- (id)combinedEngineOptions:(id)options
{
  optionsCopy = options;
  options = self->_options;
  if (optionsCopy)
  {
    if (options)
    {
      v6 = [(NSDictionary *)options mutableCopy];
      [(NSDictionary *)v6 addEntriesFromDictionary:optionsCopy];
      goto LABEL_7;
    }

    optionsCopy2 = optionsCopy;
  }

  else
  {
    optionsCopy2 = options;
  }

  v6 = optionsCopy2;
LABEL_7:

  return v6;
}

- (unsigned)state
{
  OUTLINED_FUNCTION_2_4();
  objc_opt_class();
  OUTLINED_FUNCTION_1_6();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)setState:(unsigned int)state
{
  OUTLINED_FUNCTION_2_4();
  objc_opt_class();
  OUTLINED_FUNCTION_1_6();

  NSRequestConcreteImplementation();
}

- (BOOL)canRestart
{
  OUTLINED_FUNCTION_2_4();
  objc_opt_class();
  OUTLINED_FUNCTION_1_6();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)setCanRestart:(BOOL)restart
{
  OUTLINED_FUNCTION_2_4();
  objc_opt_class();
  OUTLINED_FUNCTION_1_6();

  NSRequestConcreteImplementation();
}

- (BOOL)canRollback
{
  OUTLINED_FUNCTION_2_4();
  objc_opt_class();
  OUTLINED_FUNCTION_1_6();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)setCanRollback:(BOOL)rollback
{
  OUTLINED_FUNCTION_2_4();
  objc_opt_class();
  OUTLINED_FUNCTION_1_6();

  NSRequestConcreteImplementation();
}

- (BOOL)isResetSync
{
  OUTLINED_FUNCTION_2_4();
  objc_opt_class();
  OUTLINED_FUNCTION_1_6();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)start:(id)start
{
  OUTLINED_FUNCTION_2_4();
  v4 = v3;
  objc_opt_class();
  OUTLINED_FUNCTION_1_6();
  NSRequestConcreteImplementation();
  v5 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:2008 userInfo:0];
  v4[2](v4, 0, v5);
}

- (void)cancelWithError:(id)error
{
  OUTLINED_FUNCTION_2_4();
  objc_opt_class();
  OUTLINED_FUNCTION_1_6();

  NSRequestConcreteImplementation();
}

- (void)_handleSyncBatch:(id)batch response:(id)response completion:(id)completion
{
  OUTLINED_FUNCTION_2_4();
  objc_opt_class();
  OUTLINED_FUNCTION_1_6();

  NSRequestConcreteImplementation();
}

- (void)_handleRestartSession:(id)session response:(id)response completion:(id)completion
{
  OUTLINED_FUNCTION_2_4();
  objc_opt_class();
  OUTLINED_FUNCTION_1_6();

  NSRequestConcreteImplementation();
}

- (void)_handleEndSession:(id)session response:(id)response completion:(id)completion
{
  OUTLINED_FUNCTION_2_4();
  objc_opt_class();
  OUTLINED_FUNCTION_1_6();

  NSRequestConcreteImplementation();
}

- (BOOL)_handleStartSessionResponse:(id)response error:(id *)error
{
  OUTLINED_FUNCTION_2_4();
  objc_opt_class();
  OUTLINED_FUNCTION_1_6();
  NSRequestConcreteImplementation();
  return 0;
}

- (BOOL)_handleSyncBatchResponse:(id)response error:(id *)error
{
  OUTLINED_FUNCTION_2_4();
  objc_opt_class();
  OUTLINED_FUNCTION_1_6();
  NSRequestConcreteImplementation();
  return 0;
}

- (BOOL)_handleRestartSessionResponse:(id)response error:(id *)error
{
  OUTLINED_FUNCTION_2_4();
  objc_opt_class();
  OUTLINED_FUNCTION_1_6();
  NSRequestConcreteImplementation();
  return 0;
}

- (BOOL)_handleEndSessionResponse:(id)response error:(id *)error
{
  OUTLINED_FUNCTION_2_4();
  objc_opt_class();
  OUTLINED_FUNCTION_1_6();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)_beginTransaction
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  selfCopy = self;
  _os_log_debug_impl(&dword_1DF835000, a2, OS_LOG_TYPE_DEBUG, "%{public}@: beginning XPC transaction, to stop us being Jetsammed until it's done.", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_endTransaction
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  selfCopy = self;
  _os_log_debug_impl(&dword_1DF835000, a2, OS_LOG_TYPE_DEBUG, "%{public}@: ending XPC transaction. We can now be jetsammed safely.", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end