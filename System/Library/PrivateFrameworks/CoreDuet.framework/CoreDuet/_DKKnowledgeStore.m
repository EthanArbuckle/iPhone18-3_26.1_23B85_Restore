@interface _DKKnowledgeStore
+ (id)_knowledgeStoreWithStoreDirectory:(uint64_t)a3 readOnly:;
+ (id)knowledgeStore;
+ (id)knowledgeStoreWithDirectReadOnlyAccess;
+ (id)knowledgeStoreWithDirectReadWriteAccess;
+ (id)userKnowledgeStore;
+ (id)userKnowledgeStoreWithDirectReadOnlyAccess;
+ (id)userKnowledgeStoreWithDirectReadWriteAccess;
- (BOOL)deleteObjects:(id)a3 error:(id *)a4;
- (BOOL)deleteRemoteState:(id *)a3;
- (BOOL)isSyncPolicyDisabledForFeature:(unint64_t)a3 transportType:(int64_t)a4;
- (BOOL)saveObjects:(id)a3 error:(id *)a4;
- (BOOL)synchronizeWithError:(id *)a3;
- (BOOL)synchronizeWithUrgency:(unint64_t)a3 client:(id)a4 error:(id *)a5;
- (_DKKnowledgeStore)init;
- (_DKKnowledgeStore)initWithKnowledgeStoreHandle:(id)a3 readOnly:(BOOL)a4;
- (id)_sanitizeObjectsBeforeSaving:(id *)a1;
- (id)deviceUUID;
- (id)executeQuery:(id)a3 error:(id *)a4;
- (id)knowledgeSynchronizingHandleWithError:(id *)a1;
- (id)sourceDeviceIdentityFromObject:(id)a3 error:(id *)a4;
- (id)sourceDeviceIdentityWithError:(id *)a3;
- (unint64_t)deleteAllEventsInEventStream:(id)a3 error:(id *)a4;
- (unint64_t)deleteAllEventsMatchingPredicate:(id)a3 error:(id *)a4;
- (void)deleteAllEventsInEventStream:(id)a3 responseQueue:(id)a4 withCompletion:(id)a5;
- (void)deleteAllEventsMatchingPredicate:(id)a3 responseQueue:(id)a4 withCompletion:(id)a5;
- (void)deleteObjects:(id)a3 responseQueue:(id)a4 withCompletion:(id)a5;
- (void)disableSyncPolicyForFeature:(unint64_t)a3 transportType:(int64_t)a4;
- (void)executeQuery:(id)a3 responseQueue:(id)a4;
- (void)executeQuery:(id)a3 responseQueue:(id)a4 withCompletion:(id)a5;
- (void)saveObjects:(id)a3 tracker:(id)a4 responseQueue:(id)a5 withCompletion:(id)a6;
- (void)synchronizeWithUrgency:(unint64_t)a3 client:(id)a4 responseQueue:(id)a5 completion:(id)a6;
@end

@implementation _DKKnowledgeStore

+ (id)knowledgeStore
{
  v3 = +[_DKXPCKnowledgeStore XPCKnowledgeStore];
  v4 = [[a1 alloc] initWithKnowledgeStoreHandle:v3 readOnly:0];

  return v4;
}

+ (id)userKnowledgeStore
{
  v3 = +[_DKXPCKnowledgeStore XPCUserKnowledgeStore];
  v4 = [[a1 alloc] initWithKnowledgeStoreHandle:v3 readOnly:0];

  return v4;
}

+ (id)knowledgeStoreWithDirectReadOnlyAccess
{
  v3 = +[_DKXPCKnowledgeStore XPCKnowledgeStore];
  v4 = +[_CDPaths knowledgeDirectory];
  v5 = [a1 knowledgeStoreWithDirectReadOnlyAccessWithXPCStore:v3 storeDirectory:v4];

  return v5;
}

+ (id)userKnowledgeStoreWithDirectReadOnlyAccess
{
  v3 = +[_DKXPCKnowledgeStore XPCUserKnowledgeStore];
  v4 = +[_CDPaths userKnowledgeDirectory];
  v5 = [a1 knowledgeStoreWithDirectReadOnlyAccessWithXPCStore:v3 storeDirectory:v4];

  return v5;
}

+ (id)userKnowledgeStoreWithDirectReadWriteAccess
{
  v3 = +[_CDPaths userKnowledgeDirectory];
  v4 = [(_DKKnowledgeStore *)a1 _knowledgeStoreWithStoreDirectory:v3 readOnly:0];

  return v4;
}

+ (id)_knowledgeStoreWithStoreDirectory:(uint64_t)a3 readOnly:
{
  v4 = a2;
  v5 = objc_opt_self();
  v6 = [_DKKnowledgeStorage storageWithDirectory:v4 readOnly:a3];

  if (v6)
  {
    v7 = [[v5 alloc] initWithKnowledgeStoreHandle:v6 readOnly:a3];
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
  v4 = [(_DKKnowledgeStore *)a1 _knowledgeStoreWithStoreDirectory:v3 readOnly:0];

  return v4;
}

- (_DKKnowledgeStore)initWithKnowledgeStoreHandle:(id)a3 readOnly:(BOOL)a4
{
  v7 = a3;
  v17.receiver = self;
  v17.super_class = _DKKnowledgeStore;
  v8 = [(_DKKnowledgeStore *)&v17 init];
  if (v8)
  {
    if (!a4)
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

    objc_storeStrong(&v8->_knowledgeStoreHandle, a3);
  }

  return v8;
}

- (_DKKnowledgeStore)init
{
  v3 = +[_DKXPCKnowledgeStore XPCKnowledgeStore];
  v4 = [(_DKKnowledgeStore *)self initWithKnowledgeStoreHandle:v3 readOnly:0];

  return v4;
}

- (BOOL)saveObjects:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([_CDDecommissionUtils isRequestAllowed:a4])
  {
    v9 = [_CDDecommissionUtils filterEvents:v6];

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

      v7 = [(_DKKnowledgeQuerying *)knowledgeStoreHandle saveObjects:v12 error:a4];
      v9 = 0;
    }

    else
    {
      objc_autoreleasePoolPop(v11);
      v7 = 1;
    }

    v6 = v9;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)saveObjects:(id)a3 tracker:(id)a4 responseQueue:(id)a5 withCompletion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v37 = 0;
  v14 = [_CDDecommissionUtils isRequestAllowed:&v37];
  v15 = v37;
  if (v14)
  {
    v22 = [_CDDecommissionUtils filterEvents:v10];

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

      defaultQueue = v12;
      if (!v12)
      {
        defaultQueue = self->_defaultQueue;
      }

      [(_DKKnowledgeQuerying *)knowledgeStoreHandle saveObjects:v21 tracker:v11 responseQueue:defaultQueue withCompletion:v13];
      v10 = 0;
    }

    else
    {
      if (v13)
      {
        v27 = v12;
        if (!v12)
        {
          v27 = self->_defaultQueue;
        }

        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __70___DKKnowledgeStore_saveObjects_tracker_responseQueue_withCompletion___block_invoke_2;
        v32[3] = &unk_1E7367840;
        v33 = v13;
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
      v10 = v22;
    }

    goto LABEL_6;
  }

  if (v13)
  {
    v16 = v12;
    if (!v12)
    {
      v16 = self->_defaultQueue;
    }

    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __70___DKKnowledgeStore_saveObjects_tracker_responseQueue_withCompletion___block_invoke;
    v34[3] = &unk_1E7367818;
    v36 = v13;
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

- (BOOL)deleteObjects:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([_CDDecommissionUtils isRequestAllowed:a4])
  {
    v7 = _os_activity_create(&dword_191750000, "CoreDuet: deleteObjects sync", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v11.opaque[0] = 0;
    v11.opaque[1] = 0;
    os_activity_scope_enter(v7, &v11);
    os_activity_scope_leave(&v11);

    if ([v6 count])
    {
      [(_DKRateLimitPolicyEnforcer *)self->_rateLimitEnforcer creditForDeletion:v6];
      v8 = [(_DKKnowledgeQuerying *)self->_knowledgeStoreHandle deleteObjects:v6 error:a4];
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

- (void)deleteObjects:(id)a3 responseQueue:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v32 = 0;
  v11 = [_CDDecommissionUtils isRequestAllowed:&v32];
  v12 = v32;
  if (!v11)
  {
    if (!v10)
    {
      goto LABEL_17;
    }

    defaultQueue = v9;
    if (!v9)
    {
      defaultQueue = self->_defaultQueue;
    }

    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __64___DKKnowledgeStore_deleteObjects_responseQueue_withCompletion___block_invoke;
    v29[3] = &unk_1E7367818;
    v31 = v10;
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

  if ([v8 count])
  {
    [(_DKRateLimitPolicyEnforcer *)self->_rateLimitEnforcer creditForDeletion:v8];
    v14 = v9;
    if (!v9)
    {
      v14 = self->_defaultQueue;
    }

    [(_DKKnowledgeQuerying *)self->_knowledgeStoreHandle deleteObjects:v8 responseQueue:v14 withCompletion:v10];
    goto LABEL_17;
  }

  v21 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    LOWORD(state.opaque[0]) = 0;
    _os_log_impl(&dword_191750000, v21, OS_LOG_TYPE_INFO, "Early out because no valid objects were provided.", &state, 2u);
  }

  if (v10)
  {
    v22 = v9;
    if (!v9)
    {
      v22 = self->_defaultQueue;
    }

    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __64___DKKnowledgeStore_deleteObjects_responseQueue_withCompletion___block_invoke_8;
    v27[3] = &unk_1E7367840;
    v28 = v10;
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

- (id)executeQuery:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([_CDDecommissionUtils isRequestAllowed:a4])
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

    v9 = [(_DKKnowledgeQuerying *)knowledgeStoreHandle executeQuery:v6 error:a4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)executeQuery:(id)a3 responseQueue:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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

    defaultQueue = v9;
    if (!v9)
    {
      defaultQueue = self->_defaultQueue;
    }

    [(_DKKnowledgeQuerying *)knowledgeStoreHandle executeQuery:v8 responseQueue:defaultQueue withCompletion:v10];
  }

  else if (v10)
  {
    v16 = v9;
    if (!v9)
    {
      v16 = self->_defaultQueue;
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __63___DKKnowledgeStore_executeQuery_responseQueue_withCompletion___block_invoke;
    v21[3] = &unk_1E7367818;
    v23 = v10;
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

- (void)executeQuery:(id)a3 responseQueue:(id)a4
{
  v5 = a3;
  v6 = a4;
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

- (unint64_t)deleteAllEventsInEventStream:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([_CDDecommissionUtils isRequestAllowed:a4])
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

    v9 = [(_DKKnowledgeQuerying *)knowledgeStoreHandle deleteAllEventsInEventStream:v6 error:a4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)deleteAllEventsInEventStream:(id)a3 responseQueue:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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

    defaultQueue = v9;
    if (!v9)
    {
      defaultQueue = self->_defaultQueue;
    }

    [(_DKKnowledgeQuerying *)knowledgeStoreHandle deleteAllEventsInEventStream:v8 responseQueue:defaultQueue withCompletion:v10];
  }

  else if (v10)
  {
    v16 = v9;
    if (!v9)
    {
      v16 = self->_defaultQueue;
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __79___DKKnowledgeStore_deleteAllEventsInEventStream_responseQueue_withCompletion___block_invoke;
    v21[3] = &unk_1E7367818;
    v23 = v10;
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

- (unint64_t)deleteAllEventsMatchingPredicate:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([_CDDecommissionUtils isRequestAllowed:a4])
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

    v9 = [(_DKKnowledgeQuerying *)knowledgeStoreHandle deleteAllEventsMatchingPredicate:v6 error:a4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)deleteAllEventsMatchingPredicate:(id)a3 responseQueue:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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

    defaultQueue = v9;
    if (!v9)
    {
      defaultQueue = self->_defaultQueue;
    }

    [(_DKKnowledgeQuerying *)knowledgeStoreHandle deleteAllEventsMatchingPredicate:v8 responseQueue:defaultQueue withCompletion:v10];
  }

  else if (v10)
  {
    v16 = v9;
    if (!v9)
    {
      v16 = self->_defaultQueue;
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __83___DKKnowledgeStore_deleteAllEventsMatchingPredicate_responseQueue_withCompletion___block_invoke;
    v21[3] = &unk_1E7367818;
    v23 = v10;
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

- (BOOL)synchronizeWithError:(id *)a3
{
  v3 = [_CDDecommissionUtils isRequestAllowed:?];
  if (v3)
  {
    [_DKKnowledgeStore synchronizeWithError:];
    LOBYTE(v3) = v5;
  }

  return v3;
}

- (BOOL)synchronizeWithUrgency:(unint64_t)a3 client:(id)a4 error:(id *)a5
{
  v8 = a4;
  if ([_CDDecommissionUtils isRequestAllowed:a5])
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

    v13 = [(_DKKnowledgeStore *)&self->super.isa knowledgeSynchronizingHandleWithError:a5];
    v14 = v13;
    if (v13)
    {
      v9 = [v13 synchronizeWithUrgency:a3 client:v8 error:a5];
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

- (void)synchronizeWithUrgency:(unint64_t)a3 client:(id)a4 responseQueue:(id)a5 completion:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
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
      defaultQueue = v11;
      if (!v11)
      {
        defaultQueue = self->_defaultQueue;
      }

      [v21 synchronizeWithUrgency:a3 client:v10 responseQueue:defaultQueue completion:v12];
    }

    else if (v12)
    {
      v24 = v11;
      if (!v11)
      {
        v24 = self->_defaultQueue;
      }

      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __76___DKKnowledgeStore_synchronizeWithUrgency_client_responseQueue_completion___block_invoke_2;
      v29[3] = &unk_1E7367818;
      v31 = v12;
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

  if (v12)
  {
    v15 = v11;
    if (!v11)
    {
      v15 = self->_defaultQueue;
    }

    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __76___DKKnowledgeStore_synchronizeWithUrgency_client_responseQueue_completion___block_invoke;
    v33[3] = &unk_1E7367818;
    v35 = v12;
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

- (BOOL)deleteRemoteState:(id *)a3
{
  v3 = [_CDDecommissionUtils isRequestAllowed:?];
  if (v3)
  {
    [_DKKnowledgeStore deleteRemoteState:];
    LOBYTE(v3) = v5;
  }

  return v3;
}

- (id)sourceDeviceIdentityFromObject:(id)a3 error:(id *)a4
{
  v5 = a3;
  if ([_CDDecommissionUtils isRequestAllowed:a4])
  {
    v6 = [v5 source];
    v7 = [v6 syncDeviceID];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)sourceDeviceIdentityWithError:(id *)a3
{
  if ([_CDDecommissionUtils isRequestAllowed:?])
  {
    v5 = _os_activity_create(&dword_191750000, "CoreDuet: sourceDeviceIdentityFromObject", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v13.opaque[0] = 0;
    v13.opaque[1] = 0;
    os_activity_scope_enter(v5, &v13);
    os_activity_scope_leave(&v13);

    v6 = self;
    objc_sync_enter(v6);
    if (!sourceDeviceIdentityWithError__sourceDeviceID)
    {
      v7 = [(_DKKnowledgeStore *)&v6->super.isa knowledgeSynchronizingHandleWithError:a3];
      v8 = v7;
      if (v7)
      {
        v9 = [v7 sourceDeviceIdentityWithError:a3];
        v10 = sourceDeviceIdentityWithError__sourceDeviceID;
        sourceDeviceIdentityWithError__sourceDeviceID = v9;
      }
    }

    objc_sync_exit(v6);

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

    v4 = self;
    objc_sync_enter(v4);
    if (!deviceUUID_deviceUUID)
    {
      v12 = 0;
      v5 = [(_DKKnowledgeStore *)&v4->super.isa knowledgeSynchronizingHandleWithError:?];
      v6 = v12;
      if (v5)
      {
        v7 = [v5 deviceUUID];
        v8 = deviceUUID_deviceUUID;
        deviceUUID_deviceUUID = v7;
      }
    }

    objc_sync_exit(v4);

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

- (void)disableSyncPolicyForFeature:(unint64_t)a3 transportType:(int64_t)a4
{
  if (+[_CDDecommissionUtils isCompletelyDisabled])
  {
    v7 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(&v7->super, OS_LOG_TYPE_ERROR))
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

    v7 = self;
    objc_sync_enter(v7);
    v11 = 0;
    v9 = [(_DKKnowledgeStore *)&v7->super.isa knowledgeSynchronizingHandleWithError:?];
    v10 = v11;
    if (v9)
    {
      [v9 disableSyncPolicyForFeature:a3 transportType:a4];
    }

    objc_sync_exit(v7);
  }
}

- (BOOL)isSyncPolicyDisabledForFeature:(unint64_t)a3 transportType:(int64_t)a4
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

    v10 = self;
    objc_sync_enter(v10);
    v14 = 0;
    v11 = [(_DKKnowledgeStore *)&v10->super.isa knowledgeSynchronizingHandleWithError:?];
    v12 = v14;
    if (v11)
    {
      isSyncPolicyDisabledForFeature_transportType__disabled = [v11 isSyncPolicyDisabledForFeature:a3 transportType:a4];
    }

    objc_sync_exit(v10);
    v8 = isSyncPolicyDisabledForFeature_transportType__disabled;
  }

  return v8 & 1;
}

- (id)_sanitizeObjectsBeforeSaving:(id *)a1
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v4 = [a1[2] filterObjectsByEnforcingRateLimit:v3];
    a1 = [a1[3] enforcePrivacy:v4];
    v5 = [a1 count];
    if (v5 != [v3 count])
    {
      v6 = +[_CDLogging knowledgeChannel];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v10 = 134218240;
        v11 = [v3 count];
        v12 = 2048;
        v13 = [a1 count];
        _os_log_impl(&dword_191750000, v6, OS_LOG_TYPE_INFO, "Save of %lu objects filtered/sanitized to %lu objects.", &v10, 0x16u);
      }
    }

    if (![a1 count])
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

  return a1;
}

- (id)knowledgeSynchronizingHandleWithError:(id *)a1
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = a1;
    if ([a1[1] conformsToProtocol:&unk_1F05FA700])
    {
      a1 = v3[1];
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

      a1 = 0;
    }
  }

  v6 = *MEMORY[0x1E69E9840];

  return a1;
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