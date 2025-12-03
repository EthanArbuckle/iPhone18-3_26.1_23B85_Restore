@interface _DKKnowledgeStore
+ (id)_knowledgeStoreWithStoreDirectory:(uint64_t)directory readOnly:;
+ (id)knowledgeStore;
+ (id)knowledgeStoreWithDirectReadOnlyAccess;
+ (id)knowledgeStoreWithDirectReadWriteAccess;
+ (id)userKnowledgeStore;
+ (id)userKnowledgeStoreWithDirectReadOnlyAccess;
+ (id)userKnowledgeStoreWithDirectReadWriteAccess;
- (BOOL)deleteObjects:(id)objects error:(id *)error;
- (BOOL)deleteRemoteState:(id *)state;
- (BOOL)isSyncPolicyDisabledForFeature:(unint64_t)feature transportType:(int64_t)type;
- (BOOL)saveObjects:(id)objects error:(id *)error;
- (BOOL)synchronizeWithError:(id *)error;
- (BOOL)synchronizeWithUrgency:(unint64_t)urgency client:(id)client error:(id *)error;
- (_DKKnowledgeStore)init;
- (_DKKnowledgeStore)initWithKnowledgeStoreHandle:(id)handle readOnly:(BOOL)only;
- (id)_sanitizeObjectsBeforeSaving:(id *)saving;
- (id)deviceUUID;
- (id)executeQuery:(id)query error:(id *)error;
- (id)knowledgeSynchronizingHandleWithError:(id *)error;
- (id)sourceDeviceIdentityFromObject:(id)object error:(id *)error;
- (id)sourceDeviceIdentityWithError:(id *)error;
- (unint64_t)deleteAllEventsInEventStream:(id)stream error:(id *)error;
- (unint64_t)deleteAllEventsMatchingPredicate:(id)predicate error:(id *)error;
- (void)deleteAllEventsInEventStream:(id)stream responseQueue:(id)queue withCompletion:(id)completion;
- (void)deleteAllEventsMatchingPredicate:(id)predicate responseQueue:(id)queue withCompletion:(id)completion;
- (void)deleteObjects:(id)objects responseQueue:(id)queue withCompletion:(id)completion;
- (void)disableSyncPolicyForFeature:(unint64_t)feature transportType:(int64_t)type;
- (void)executeQuery:(id)query responseQueue:(id)queue;
- (void)executeQuery:(id)query responseQueue:(id)queue withCompletion:(id)completion;
- (void)saveObjects:(id)objects tracker:(id)tracker responseQueue:(id)queue withCompletion:(id)completion;
- (void)synchronizeWithUrgency:(unint64_t)urgency client:(id)client responseQueue:(id)queue completion:(id)completion;
@end

@implementation _DKKnowledgeStore

+ (id)knowledgeStore
{
  v3 = +[_DKXPCKnowledgeStore XPCKnowledgeStore];
  v4 = [[self alloc] initWithKnowledgeStoreHandle:v3 readOnly:0];

  return v4;
}

+ (id)userKnowledgeStore
{
  v3 = +[_DKXPCKnowledgeStore XPCUserKnowledgeStore];
  v4 = [[self alloc] initWithKnowledgeStoreHandle:v3 readOnly:0];

  return v4;
}

+ (id)knowledgeStoreWithDirectReadOnlyAccess
{
  v3 = +[_DKXPCKnowledgeStore XPCKnowledgeStore];
  v4 = +[_CDPaths knowledgeDirectory];
  v5 = [self knowledgeStoreWithDirectReadOnlyAccessWithXPCStore:v3 storeDirectory:v4];

  return v5;
}

+ (id)userKnowledgeStoreWithDirectReadOnlyAccess
{
  v3 = +[_DKXPCKnowledgeStore XPCUserKnowledgeStore];
  v4 = +[_CDPaths userKnowledgeDirectory];
  v5 = [self knowledgeStoreWithDirectReadOnlyAccessWithXPCStore:v3 storeDirectory:v4];

  return v5;
}

+ (id)userKnowledgeStoreWithDirectReadWriteAccess
{
  v3 = +[_CDPaths userKnowledgeDirectory];
  v4 = [(_DKKnowledgeStore *)self _knowledgeStoreWithStoreDirectory:v3 readOnly:0];

  return v4;
}

+ (id)_knowledgeStoreWithStoreDirectory:(uint64_t)directory readOnly:
{
  v4 = a2;
  v5 = objc_opt_self();
  v6 = [_DKKnowledgeStorage storageWithDirectory:v4 readOnly:directory];

  if (v6)
  {
    v7 = [[v5 alloc] initWithKnowledgeStoreHandle:v6 readOnly:directory];
  }

  else
  {
    v8 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v8)
    {
      [(_DKKnowledgeStore *)v8 _knowledgeStoreWithStoreDirectory:v9 readOnly:v10, v11, v12, v13, v14, v15];
    }

    v7 = 0;
  }

  return v7;
}

+ (id)knowledgeStoreWithDirectReadWriteAccess
{
  v3 = +[_CDPaths knowledgeDirectory];
  v4 = [(_DKKnowledgeStore *)self _knowledgeStoreWithStoreDirectory:v3 readOnly:0];

  return v4;
}

- (_DKKnowledgeStore)initWithKnowledgeStoreHandle:(id)handle readOnly:(BOOL)only
{
  handleCopy = handle;
  v17.receiver = self;
  v17.super_class = _DKKnowledgeStore;
  v8 = [(_DKKnowledgeStore *)&v17 init];
  if (v8)
  {
    if (!only)
    {
      v9 = +[_DKRateLimitPolicyEnforcer rateLimitPolicyEnforcer];
      rateLimitEnforcer = v8->_rateLimitEnforcer;
      v8->_rateLimitEnforcer = v9;

      v11 = +[_DKPrivacyPolicyEnforcer privacyPolicyEnforcer];
      privacyEnforcer = v8->_privacyEnforcer;
      v8->_privacyEnforcer = v11;
    }

    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("com.apple.coreduet.knowledgestore", v13);
    defaultQueue = v8->_defaultQueue;
    v8->_defaultQueue = v14;

    objc_storeStrong(&v8->_knowledgeStoreHandle, handle);
  }

  return v8;
}

- (_DKKnowledgeStore)init
{
  v3 = +[_DKXPCKnowledgeStore XPCKnowledgeStore];
  v4 = [(_DKKnowledgeStore *)self initWithKnowledgeStoreHandle:v3 readOnly:0];

  return v4;
}

- (BOOL)saveObjects:(id)objects error:(id *)error
{
  objectsCopy = objects;
  if ([_CDDecommissionUtils isRequestAllowed:error])
  {
    v9 = [_CDDecommissionUtils filterEvents:objectsCopy];

    v10 = _os_activity_create(&dword_191750000, "CoreDuet: saveObjects sync", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v14.opaque[0] = 0;
    v14.opaque[1] = 0;
    os_activity_scope_enter(v10, &v14);
    os_activity_scope_leave(&v14);

    v11 = objc_autoreleasePoolPush();
    v12 = [(_DKKnowledgeStore *)&self->super.isa _sanitizeObjectsBeforeSaving:v9];
    if ([v12 count])
    {

      objc_autoreleasePoolPop(v11);
      if (self)
      {
        knowledgeStoreHandle = self->_knowledgeStoreHandle;
      }

      else
      {
        knowledgeStoreHandle = 0;
      }

      v7 = [(_DKKnowledgeQuerying *)knowledgeStoreHandle saveObjects:v12 error:error];
      v9 = 0;
    }

    else
    {
      objc_autoreleasePoolPop(v11);
      v7 = 1;
    }

    objectsCopy = v9;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)saveObjects:(id)objects tracker:(id)tracker responseQueue:(id)queue withCompletion:(id)completion
{
  objectsCopy = objects;
  trackerCopy = tracker;
  queueCopy = queue;
  completionCopy = completion;
  v37 = 0;
  v14 = [_CDDecommissionUtils isRequestAllowed:&v37];
  v15 = v37;
  if (v14)
  {
    v22 = [_CDDecommissionUtils filterEvents:objectsCopy];

    v23 = _os_activity_create(&dword_191750000, "CoreDuet: saveObjects async", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    block.opaque[0] = 0;
    block.opaque[1] = 0;
    os_activity_scope_enter(v23, &block);
    os_activity_scope_leave(&block);

    v24 = objc_autoreleasePoolPush();
    v21 = [(_DKKnowledgeStore *)&self->super.isa _sanitizeObjectsBeforeSaving:v22];
    if ([v21 count])
    {

      objc_autoreleasePoolPop(v24);
      if (self)
      {
        knowledgeStoreHandle = self->_knowledgeStoreHandle;
      }

      else
      {
        knowledgeStoreHandle = 0;
      }

      defaultQueue = queueCopy;
      if (!queueCopy)
      {
        defaultQueue = self->_defaultQueue;
      }

      [(_DKKnowledgeQuerying *)knowledgeStoreHandle saveObjects:v21 tracker:trackerCopy responseQueue:defaultQueue withCompletion:completionCopy];
      objectsCopy = 0;
    }

    else
    {
      if (completionCopy)
      {
        v27 = queueCopy;
        if (!queueCopy)
        {
          v27 = self->_defaultQueue;
        }

        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __70___DKKnowledgeStore_saveObjects_tracker_responseQueue_withCompletion___block_invoke_2;
        v32[3] = &unk_1E7367840;
        v33 = completionCopy;
        v28 = v32;
        v29 = v27;
        v30 = os_transaction_create();
        block.opaque[0] = MEMORY[0x1E69E9820];
        block.opaque[1] = 3221225472;
        v39 = __cd_dispatch_async_capture_tx_block_invoke;
        v40 = &unk_1E7367818;
        v41 = v30;
        v42 = v28;
        v31 = v30;
        dispatch_async(v29, &block);
      }

      objc_autoreleasePoolPop(v24);
      objectsCopy = v22;
    }

    goto LABEL_6;
  }

  if (completionCopy)
  {
    v16 = queueCopy;
    if (!queueCopy)
    {
      v16 = self->_defaultQueue;
    }

    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __70___DKKnowledgeStore_saveObjects_tracker_responseQueue_withCompletion___block_invoke;
    v34[3] = &unk_1E7367818;
    v36 = completionCopy;
    v35 = v15;
    v17 = v34;
    v18 = v16;
    v19 = os_transaction_create();
    block.opaque[0] = MEMORY[0x1E69E9820];
    block.opaque[1] = 3221225472;
    v39 = __cd_dispatch_async_capture_tx_block_invoke;
    v40 = &unk_1E7367818;
    v41 = v19;
    v42 = v17;
    v20 = v19;
    dispatch_async(v18, &block);

    v21 = v36;
LABEL_6:
  }
}

- (BOOL)deleteObjects:(id)objects error:(id *)error
{
  objectsCopy = objects;
  if ([_CDDecommissionUtils isRequestAllowed:error])
  {
    v7 = _os_activity_create(&dword_191750000, "CoreDuet: deleteObjects sync", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v11.opaque[0] = 0;
    v11.opaque[1] = 0;
    os_activity_scope_enter(v7, &v11);
    os_activity_scope_leave(&v11);

    if ([objectsCopy count])
    {
      [(_DKRateLimitPolicyEnforcer *)self->_rateLimitEnforcer creditForDeletion:objectsCopy];
      v8 = [(_DKKnowledgeQuerying *)self->_knowledgeStoreHandle deleteObjects:objectsCopy error:error];
    }

    else
    {
      v9 = +[_CDLogging knowledgeChannel];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        LOWORD(v11.opaque[0]) = 0;
        _os_log_impl(&dword_191750000, v9, OS_LOG_TYPE_INFO, "Early out because no valid objects were provided.", &v11, 2u);
      }

      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)deleteObjects:(id)objects responseQueue:(id)queue withCompletion:(id)completion
{
  objectsCopy = objects;
  queueCopy = queue;
  completionCopy = completion;
  v32 = 0;
  v11 = [_CDDecommissionUtils isRequestAllowed:&v32];
  v12 = v32;
  if (!v11)
  {
    if (!completionCopy)
    {
      goto LABEL_17;
    }

    defaultQueue = queueCopy;
    if (!queueCopy)
    {
      defaultQueue = self->_defaultQueue;
    }

    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __64___DKKnowledgeStore_deleteObjects_responseQueue_withCompletion___block_invoke;
    v29[3] = &unk_1E7367818;
    v31 = completionCopy;
    v30 = v12;
    v16 = v29;
    v17 = defaultQueue;
    v18 = os_transaction_create();
    state.opaque[0] = MEMORY[0x1E69E9820];
    state.opaque[1] = 3221225472;
    v34 = __cd_dispatch_async_capture_tx_block_invoke;
    v35 = &unk_1E7367818;
    v36 = v18;
    v37 = v16;
    v19 = v18;
    dispatch_async(v17, &state);

    v20 = v31;
LABEL_16:

    goto LABEL_17;
  }

  v13 = _os_activity_create(&dword_191750000, "CoreDuet: deleteObjects async", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v13, &state);
  os_activity_scope_leave(&state);

  if ([objectsCopy count])
  {
    [(_DKRateLimitPolicyEnforcer *)self->_rateLimitEnforcer creditForDeletion:objectsCopy];
    v14 = queueCopy;
    if (!queueCopy)
    {
      v14 = self->_defaultQueue;
    }

    [(_DKKnowledgeQuerying *)self->_knowledgeStoreHandle deleteObjects:objectsCopy responseQueue:v14 withCompletion:completionCopy];
    goto LABEL_17;
  }

  v21 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    LOWORD(state.opaque[0]) = 0;
    _os_log_impl(&dword_191750000, v21, OS_LOG_TYPE_INFO, "Early out because no valid objects were provided.", &state, 2u);
  }

  if (completionCopy)
  {
    v22 = queueCopy;
    if (!queueCopy)
    {
      v22 = self->_defaultQueue;
    }

    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __64___DKKnowledgeStore_deleteObjects_responseQueue_withCompletion___block_invoke_8;
    v27[3] = &unk_1E7367840;
    v28 = completionCopy;
    v23 = v27;
    v24 = v22;
    v25 = os_transaction_create();
    state.opaque[0] = MEMORY[0x1E69E9820];
    state.opaque[1] = 3221225472;
    v34 = __cd_dispatch_async_capture_tx_block_invoke;
    v35 = &unk_1E7367818;
    v36 = v25;
    v37 = v23;
    v26 = v25;
    dispatch_async(v24, &state);

    v20 = v28;
    goto LABEL_16;
  }

LABEL_17:
}

- (id)executeQuery:(id)query error:(id *)error
{
  queryCopy = query;
  if ([_CDDecommissionUtils isRequestAllowed:error])
  {
    v7 = _os_activity_create(&dword_191750000, "CoreDuet: executeQuery sync", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v11.opaque[0] = 0;
    v11.opaque[1] = 0;
    os_activity_scope_enter(v7, &v11);
    os_activity_scope_leave(&v11);

    if (self)
    {
      knowledgeStoreHandle = self->_knowledgeStoreHandle;
    }

    else
    {
      knowledgeStoreHandle = 0;
    }

    v9 = [(_DKKnowledgeQuerying *)knowledgeStoreHandle executeQuery:queryCopy error:error];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)executeQuery:(id)query responseQueue:(id)queue withCompletion:(id)completion
{
  queryCopy = query;
  queueCopy = queue;
  completionCopy = completion;
  v24 = 0;
  v11 = [_CDDecommissionUtils isRequestAllowed:&v24];
  v12 = v24;
  if (v11)
  {
    v13 = _os_activity_create(&dword_191750000, "CoreDuet: executeQuery async", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v13, &state);
    os_activity_scope_leave(&state);

    if (self)
    {
      knowledgeStoreHandle = self->_knowledgeStoreHandle;
    }

    else
    {
      knowledgeStoreHandle = 0;
    }

    defaultQueue = queueCopy;
    if (!queueCopy)
    {
      defaultQueue = self->_defaultQueue;
    }

    [(_DKKnowledgeQuerying *)knowledgeStoreHandle executeQuery:queryCopy responseQueue:defaultQueue withCompletion:completionCopy];
  }

  else if (completionCopy)
  {
    v16 = queueCopy;
    if (!queueCopy)
    {
      v16 = self->_defaultQueue;
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __63___DKKnowledgeStore_executeQuery_responseQueue_withCompletion___block_invoke;
    v21[3] = &unk_1E7367818;
    v23 = completionCopy;
    v22 = v12;
    v17 = v21;
    v18 = v16;
    v19 = os_transaction_create();
    state.opaque[0] = MEMORY[0x1E69E9820];
    state.opaque[1] = 3221225472;
    v26 = __cd_dispatch_async_capture_tx_block_invoke;
    v27 = &unk_1E7367818;
    v28 = v19;
    v29 = v17;
    v20 = v19;
    dispatch_async(v18, &state);
  }
}

- (void)executeQuery:(id)query responseQueue:(id)queue
{
  queryCopy = query;
  queueCopy = queue;
  if ([_CDDecommissionUtils isRequestAllowed:0])
  {
    [_DKKnowledgeStore executeQuery:responseQueue:];
  }

  else
  {
    v7 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [_DKKnowledgeStore executeQuery:responseQueue:];
    }
  }
}

- (unint64_t)deleteAllEventsInEventStream:(id)stream error:(id *)error
{
  streamCopy = stream;
  if ([_CDDecommissionUtils isRequestAllowed:error])
  {
    v7 = _os_activity_create(&dword_191750000, "CoreDuet: deleteAllEventsInEventStream sync", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v11.opaque[0] = 0;
    v11.opaque[1] = 0;
    os_activity_scope_enter(v7, &v11);
    os_activity_scope_leave(&v11);

    if (self)
    {
      knowledgeStoreHandle = self->_knowledgeStoreHandle;
    }

    else
    {
      knowledgeStoreHandle = 0;
    }

    v9 = [(_DKKnowledgeQuerying *)knowledgeStoreHandle deleteAllEventsInEventStream:streamCopy error:error];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)deleteAllEventsInEventStream:(id)stream responseQueue:(id)queue withCompletion:(id)completion
{
  streamCopy = stream;
  queueCopy = queue;
  completionCopy = completion;
  v24 = 0;
  v11 = [_CDDecommissionUtils isRequestAllowed:&v24];
  v12 = v24;
  if (v11)
  {
    v13 = _os_activity_create(&dword_191750000, "CoreDuet: deleteAllEventsInEventStream async", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v13, &state);
    os_activity_scope_leave(&state);

    if (self)
    {
      knowledgeStoreHandle = self->_knowledgeStoreHandle;
    }

    else
    {
      knowledgeStoreHandle = 0;
    }

    defaultQueue = queueCopy;
    if (!queueCopy)
    {
      defaultQueue = self->_defaultQueue;
    }

    [(_DKKnowledgeQuerying *)knowledgeStoreHandle deleteAllEventsInEventStream:streamCopy responseQueue:defaultQueue withCompletion:completionCopy];
  }

  else if (completionCopy)
  {
    v16 = queueCopy;
    if (!queueCopy)
    {
      v16 = self->_defaultQueue;
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __79___DKKnowledgeStore_deleteAllEventsInEventStream_responseQueue_withCompletion___block_invoke;
    v21[3] = &unk_1E7367818;
    v23 = completionCopy;
    v22 = v12;
    v17 = v21;
    v18 = v16;
    v19 = os_transaction_create();
    state.opaque[0] = MEMORY[0x1E69E9820];
    state.opaque[1] = 3221225472;
    v26 = __cd_dispatch_async_capture_tx_block_invoke;
    v27 = &unk_1E7367818;
    v28 = v19;
    v29 = v17;
    v20 = v19;
    dispatch_async(v18, &state);
  }
}

- (unint64_t)deleteAllEventsMatchingPredicate:(id)predicate error:(id *)error
{
  predicateCopy = predicate;
  if ([_CDDecommissionUtils isRequestAllowed:error])
  {
    v7 = _os_activity_create(&dword_191750000, "CoreDuet: deleteAllEventsMatchingPredicate sync", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v11.opaque[0] = 0;
    v11.opaque[1] = 0;
    os_activity_scope_enter(v7, &v11);
    os_activity_scope_leave(&v11);

    if (self)
    {
      knowledgeStoreHandle = self->_knowledgeStoreHandle;
    }

    else
    {
      knowledgeStoreHandle = 0;
    }

    v9 = [(_DKKnowledgeQuerying *)knowledgeStoreHandle deleteAllEventsMatchingPredicate:predicateCopy error:error];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)deleteAllEventsMatchingPredicate:(id)predicate responseQueue:(id)queue withCompletion:(id)completion
{
  predicateCopy = predicate;
  queueCopy = queue;
  completionCopy = completion;
  v24 = 0;
  v11 = [_CDDecommissionUtils isRequestAllowed:&v24];
  v12 = v24;
  if (v11)
  {
    v13 = _os_activity_create(&dword_191750000, "CoreDuet: deleteAllEventsMatchingPredicate async", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v13, &state);
    os_activity_scope_leave(&state);

    if (self)
    {
      knowledgeStoreHandle = self->_knowledgeStoreHandle;
    }

    else
    {
      knowledgeStoreHandle = 0;
    }

    defaultQueue = queueCopy;
    if (!queueCopy)
    {
      defaultQueue = self->_defaultQueue;
    }

    [(_DKKnowledgeQuerying *)knowledgeStoreHandle deleteAllEventsMatchingPredicate:predicateCopy responseQueue:defaultQueue withCompletion:completionCopy];
  }

  else if (completionCopy)
  {
    v16 = queueCopy;
    if (!queueCopy)
    {
      v16 = self->_defaultQueue;
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __83___DKKnowledgeStore_deleteAllEventsMatchingPredicate_responseQueue_withCompletion___block_invoke;
    v21[3] = &unk_1E7367818;
    v23 = completionCopy;
    v22 = v12;
    v17 = v21;
    v18 = v16;
    v19 = os_transaction_create();
    state.opaque[0] = MEMORY[0x1E69E9820];
    state.opaque[1] = 3221225472;
    v26 = __cd_dispatch_async_capture_tx_block_invoke;
    v27 = &unk_1E7367818;
    v28 = v19;
    v29 = v17;
    v20 = v19;
    dispatch_async(v18, &state);
  }
}

- (BOOL)synchronizeWithError:(id *)error
{
  v3 = [_CDDecommissionUtils isRequestAllowed:?];
  if (v3)
  {
    [_DKKnowledgeStore synchronizeWithError:];
    LOBYTE(v3) = v5;
  }

  return v3;
}

- (BOOL)synchronizeWithUrgency:(unint64_t)urgency client:(id)client error:(id *)error
{
  clientCopy = client;
  if ([_CDDecommissionUtils isRequestAllowed:error])
  {
    v11 = _os_activity_create(&dword_191750000, "CoreDuet: synchronizeWithUrgency", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v15.opaque[0] = 0;
    v15.opaque[1] = 0;
    os_activity_scope_enter(v11, &v15);
    os_activity_scope_leave(&v15);

    v12 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      LOWORD(v15.opaque[0]) = 0;
      _os_log_impl(&dword_191750000, v12, OS_LOG_TYPE_INFO, "Starting synchronizeWithUrgency.", &v15, 2u);
    }

    v13 = [(_DKKnowledgeStore *)&self->super.isa knowledgeSynchronizingHandleWithError:error];
    v14 = v13;
    if (v13)
    {
      v9 = [v13 synchronizeWithUrgency:urgency client:clientCopy error:error];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)synchronizeWithUrgency:(unint64_t)urgency client:(id)client responseQueue:(id)queue completion:(id)completion
{
  clientCopy = client;
  queueCopy = queue;
  completionCopy = completion;
  v36 = 0;
  v13 = [_CDDecommissionUtils isRequestAllowed:&v36];
  v14 = v36;
  if (v13)
  {
    v22 = _os_activity_create(&dword_191750000, "CoreDuet: synchronizeWithUrgency async", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    block.opaque[0] = 0;
    block.opaque[1] = 0;
    os_activity_scope_enter(v22, &block);
    os_activity_scope_leave(&block);

    v32 = v14;
    v21 = [(_DKKnowledgeStore *)&self->super.isa knowledgeSynchronizingHandleWithError:?];
    v16 = v32;

    if (v21)
    {
      defaultQueue = queueCopy;
      if (!queueCopy)
      {
        defaultQueue = self->_defaultQueue;
      }

      [v21 synchronizeWithUrgency:urgency client:clientCopy responseQueue:defaultQueue completion:completionCopy];
    }

    else if (completionCopy)
    {
      v24 = queueCopy;
      if (!queueCopy)
      {
        v24 = self->_defaultQueue;
      }

      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __76___DKKnowledgeStore_synchronizeWithUrgency_client_responseQueue_completion___block_invoke_2;
      v29[3] = &unk_1E7367818;
      v31 = completionCopy;
      v16 = v16;
      v30 = v16;
      v25 = v29;
      v26 = v24;
      v27 = os_transaction_create();
      block.opaque[0] = MEMORY[0x1E69E9820];
      block.opaque[1] = 3221225472;
      v38 = __cd_dispatch_async_capture_tx_block_invoke;
      v39 = &unk_1E7367818;
      v40 = v27;
      v41 = v25;
      v28 = v27;
      dispatch_async(v26, &block);
    }

    goto LABEL_6;
  }

  if (completionCopy)
  {
    v15 = queueCopy;
    if (!queueCopy)
    {
      v15 = self->_defaultQueue;
    }

    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __76___DKKnowledgeStore_synchronizeWithUrgency_client_responseQueue_completion___block_invoke;
    v33[3] = &unk_1E7367818;
    v35 = completionCopy;
    v16 = v14;
    v34 = v16;
    v17 = v33;
    v18 = v15;
    v19 = os_transaction_create();
    block.opaque[0] = MEMORY[0x1E69E9820];
    block.opaque[1] = 3221225472;
    v38 = __cd_dispatch_async_capture_tx_block_invoke;
    v39 = &unk_1E7367818;
    v40 = v19;
    v41 = v17;
    v20 = v19;
    dispatch_async(v18, &block);

    v21 = v35;
LABEL_6:

    v14 = v16;
  }
}

- (BOOL)deleteRemoteState:(id *)state
{
  v3 = [_CDDecommissionUtils isRequestAllowed:?];
  if (v3)
  {
    [_DKKnowledgeStore deleteRemoteState:];
    LOBYTE(v3) = v5;
  }

  return v3;
}

- (id)sourceDeviceIdentityFromObject:(id)object error:(id *)error
{
  objectCopy = object;
  if ([_CDDecommissionUtils isRequestAllowed:error])
  {
    source = [objectCopy source];
    syncDeviceID = [source syncDeviceID];
  }

  else
  {
    syncDeviceID = 0;
  }

  return syncDeviceID;
}

- (id)sourceDeviceIdentityWithError:(id *)error
{
  if ([_CDDecommissionUtils isRequestAllowed:?])
  {
    v5 = _os_activity_create(&dword_191750000, "CoreDuet: sourceDeviceIdentityFromObject", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v13.opaque[0] = 0;
    v13.opaque[1] = 0;
    os_activity_scope_enter(v5, &v13);
    os_activity_scope_leave(&v13);

    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (!sourceDeviceIdentityWithError__sourceDeviceID)
    {
      v7 = [(_DKKnowledgeStore *)&selfCopy->super.isa knowledgeSynchronizingHandleWithError:error];
      v8 = v7;
      if (v7)
      {
        v9 = [v7 sourceDeviceIdentityWithError:error];
        v10 = sourceDeviceIdentityWithError__sourceDeviceID;
        sourceDeviceIdentityWithError__sourceDeviceID = v9;
      }
    }

    objc_sync_exit(selfCopy);

    v11 = sourceDeviceIdentityWithError__sourceDeviceID;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)deviceUUID
{
  if ([_CDDecommissionUtils isRequestAllowed:0])
  {
    v3 = _os_activity_create(&dword_191750000, "CoreDuet: deviceUUID", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v3, &state);
    os_activity_scope_leave(&state);

    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (!deviceUUID_deviceUUID)
    {
      v12 = 0;
      v5 = [(_DKKnowledgeStore *)&selfCopy->super.isa knowledgeSynchronizingHandleWithError:?];
      v6 = v12;
      if (v5)
      {
        deviceUUID = [v5 deviceUUID];
        v8 = deviceUUID_deviceUUID;
        deviceUUID_deviceUUID = deviceUUID;
      }
    }

    objc_sync_exit(selfCopy);

    v9 = deviceUUID_deviceUUID;
  }

  else
  {
    v10 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [_DKKnowledgeStore deviceUUID];
    }

    v9 = 0;
  }

  return v9;
}

- (void)disableSyncPolicyForFeature:(unint64_t)feature transportType:(int64_t)type
{
  if (+[_CDDecommissionUtils isCompletelyDisabled])
  {
    selfCopy = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [_DKKnowledgeStore disableSyncPolicyForFeature:transportType:];
    }
  }

  else
  {
    v8 = _os_activity_create(&dword_191750000, "CoreDuet: disableSyncPolicy", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v8, &state);
    os_activity_scope_leave(&state);

    selfCopy = self;
    objc_sync_enter(selfCopy);
    v11 = 0;
    v9 = [(_DKKnowledgeStore *)&selfCopy->super.isa knowledgeSynchronizingHandleWithError:?];
    v10 = v11;
    if (v9)
    {
      [v9 disableSyncPolicyForFeature:feature transportType:type];
    }

    objc_sync_exit(selfCopy);
  }
}

- (BOOL)isSyncPolicyDisabledForFeature:(unint64_t)feature transportType:(int64_t)type
{
  if (+[_CDDecommissionUtils isCompletelyDisabled])
  {
    v7 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [_DKKnowledgeStore isSyncPolicyDisabledForFeature:transportType:];
    }

    v8 = 1;
  }

  else
  {
    v9 = _os_activity_create(&dword_191750000, "CoreDuet: isSyncPolicyDisabled", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v9, &state);
    os_activity_scope_leave(&state);

    selfCopy = self;
    objc_sync_enter(selfCopy);
    v14 = 0;
    v11 = [(_DKKnowledgeStore *)&selfCopy->super.isa knowledgeSynchronizingHandleWithError:?];
    v12 = v14;
    if (v11)
    {
      isSyncPolicyDisabledForFeature_transportType__disabled = [v11 isSyncPolicyDisabledForFeature:feature transportType:type];
    }

    objc_sync_exit(selfCopy);
    v8 = isSyncPolicyDisabledForFeature_transportType__disabled;
  }

  return v8 & 1;
}

- (id)_sanitizeObjectsBeforeSaving:(id *)saving
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (saving)
  {
    v4 = [saving[2] filterObjectsByEnforcingRateLimit:v3];
    saving = [saving[3] enforcePrivacy:v4];
    v5 = [saving count];
    if (v5 != [v3 count])
    {
      v6 = +[_CDLogging knowledgeChannel];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v10 = 134218240;
        v11 = [v3 count];
        v12 = 2048;
        v13 = [saving count];
        _os_log_impl(&dword_191750000, v6, OS_LOG_TYPE_INFO, "Save of %lu objects filtered/sanitized to %lu objects.", &v10, 0x16u);
      }
    }

    if (![saving count])
    {
      v7 = +[_CDLogging knowledgeChannel];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_191750000, v7, OS_LOG_TYPE_INFO, "Early out because no valid objects were provided.", &v10, 2u);
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];

  return saving;
}

- (id)knowledgeSynchronizingHandleWithError:(id *)error
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (error)
  {
    errorCopy = error;
    if ([error[1] conformsToProtocol:&unk_1F05FA700])
    {
      error = errorCopy[1];
    }

    else
    {
      if (a2)
      {
        v4 = MEMORY[0x1E696ABC0];
        v8 = *MEMORY[0x1E696A278];
        v9[0] = @"knowledge store does not implement knowledge synchronizing protocol";
        v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
        *a2 = [v4 errorWithDomain:@"com.apple.coreduet.knowledge" code:5 userInfo:v5];
      }

      error = 0;
    }
  }

  v6 = *MEMORY[0x1E69E9840];

  return error;
}

- (uint64_t)executeQuery:responseQueue:.cold.2()
{
  OUTLINED_FUNCTION_2_3();
  v4 = _os_activity_create(&dword_191750000, "CoreDuet: executeQuery async no completion", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  OUTLINED_FUNCTION_3_3(v4, v5, v6, v7, v8, v9, v10, v11, v14);
  os_activity_scope_leave(&v14);

  if (!v2)
  {
    v12 = 0;
    if (v1)
    {
      return [v12 executeQuery:v0 responseQueue:v1];
    }

    goto LABEL_3;
  }

  v12 = *(v2 + 8);
  if (!v1)
  {
LABEL_3:
    v1 = *(v2 + 32);
  }

  return [v12 executeQuery:v0 responseQueue:v1];
}

- (void)synchronizeWithError:.cold.1()
{
  OUTLINED_FUNCTION_2_3();
  v4 = _os_activity_create(&dword_191750000, "CoreDuet: synchronizeWithError", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  OUTLINED_FUNCTION_3_3(v4, v5, v6, v7, v8, v9, v10, v11, v14);
  os_activity_scope_leave(&v14);

  v12 = [(_DKKnowledgeStore *)v2 knowledgeSynchronizingHandleWithError:v1];
  v13 = v12;
  if (v12)
  {
    LOBYTE(v12) = [v12 synchronizeWithError:v1];
  }

  *v0 = v12;
}

- (void)deleteRemoteState:.cold.1()
{
  OUTLINED_FUNCTION_2_3();
  v4 = _os_activity_create(&dword_191750000, "CoreDuet: deleteRemoteState", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  OUTLINED_FUNCTION_3_3(v4, v5, v6, v7, v8, v9, v10, v11, v14);
  os_activity_scope_leave(&v14);

  v12 = [(_DKKnowledgeStore *)v2 knowledgeSynchronizingHandleWithError:v1];
  v13 = v12;
  if (v12)
  {
    LOBYTE(v12) = [v12 deleteRemoteState:v1];
  }

  *v0 = v12;
}

@end