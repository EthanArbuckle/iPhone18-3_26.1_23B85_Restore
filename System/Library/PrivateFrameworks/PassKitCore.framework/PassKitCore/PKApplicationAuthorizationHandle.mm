@interface PKApplicationAuthorizationHandle
+ (id)createForRequest:(id)request;
- (BOOL)isInvalidated;
- (void)_invalidateFromSource:(void *)source withCompletion:;
- (void)_resolveInvalidation;
- (void)dealloc;
- (void)detachWithReply:(id)reply;
- (void)displayForPresentationTarget:(id)target withAction:(id)action completion:(id)completion;
- (void)performActionWithReply:(id)reply;
@end

@implementation PKApplicationAuthorizationHandle

+ (id)createForRequest:(id)request
{
  v47 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v5 = [PKApplicationAuthorizationHandle alloc];
  v6 = requestCopy;
  v7 = v6;
  if (!v5)
  {
    goto LABEL_9;
  }

  if (!v6)
  {
    __break(1u);
    goto LABEL_12;
  }

  v35.receiver = v5;
  v35.super_class = PKApplicationAuthorizationHandle;
  v8 = objc_msgSendSuper2(&v35, sel_init);
  if (!v8)
  {
LABEL_9:
    v21 = 0;
    goto LABEL_10;
  }

  v5 = v8;
  objc_storeStrong(v8 + 1, request);
  v5->_lock._os_unfair_lock_opaque = 0;
  v9 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.wallet.application-authorization" options:0];
  connection = v5->_connection;
  v5->_connection = v9;

  v11 = v5->_connection;
  if (!v11)
  {
LABEL_12:
    v22 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      type = [v7 type];
      LODWORD(v42) = 134217984;
      *(&v42 + 4) = type;
      _os_log_fault_impl(&dword_1AD337000, v22, OS_LOG_TYPE_FAULT, "PKApplicationAuthorizationHandle: failed to create handle for %ld - no connection.", &v42, 0xCu);
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      type2 = [v7 type];
      LODWORD(v42) = 134217984;
      *(&v42 + 4) = type2;
      _os_log_impl(&dword_1AD337000, v22, OS_LOG_TYPE_DEFAULT, "PKApplicationAuthorizationHandle: failed to create handle for %ld - no connection.", &v42, 0xCu);
    }

    v21 = 0;
    goto LABEL_8;
  }

  v12 = PKApplicationAuthorizationServiceInterface_Client();
  [(NSXPCConnection *)v11 setExportedInterface:v12];

  v13 = v5->_connection;
  v14 = PKApplicationAuthorizationServiceInterface_Server();
  [(NSXPCConnection *)v13 setRemoteObjectInterface:v14];

  [(NSXPCConnection *)v5->_connection setExportedObject:v5];
  v15 = v5;
  v16 = v5->_connection;
  v17 = v5->_connection;
  *&v42 = MEMORY[0x1E69E9820];
  *(&v42 + 1) = 3221225472;
  v43 = __53__PKApplicationAuthorizationHandle__initWithRequest___block_invoke;
  v44 = &unk_1E79C4DD8;
  v18 = v15;
  v45 = v18;
  v19 = v16;
  v46 = v19;
  [(NSXPCConnection *)v17 setInterruptionHandler:&v42];
  v20 = v5->_connection;
  v29 = MEMORY[0x1E69E9820];
  v30 = 3221225472;
  v31 = __53__PKApplicationAuthorizationHandle__initWithRequest___block_invoke_2;
  v32 = &unk_1E79C4DD8;
  v21 = v18;
  v33 = v21;
  v22 = v19;
  v34 = v22;
  [(NSXPCConnection *)v20 setInvalidationHandler:&v29];
  v23 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    type3 = [v7 type];
    v25 = v5->_connection;
    *buf = 134218496;
    v37 = v21;
    v38 = 2048;
    v39 = type3;
    v40 = 2048;
    v41 = v25;
    _os_log_impl(&dword_1AD337000, v23, OS_LOG_TYPE_DEFAULT, "PKApplicationAuthorizationHandle (%p): created handle for %ld with connection %p.", buf, 0x20u);
  }

  [(NSXPCConnection *)v5->_connection activate];
LABEL_8:

LABEL_10:
  return v21;
}

void __53__PKApplicationAuthorizationHandle__initWithRequest___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(5uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 134218240;
    v6 = v3;
    v7 = 2048;
    v8 = v4;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_INFO, "PKApplicationAuthorizationHandle (%p): connection %p interrupted.", &v5, 0x16u);
  }

  [*(a1 + 40) invalidate];
  [(PKApplicationAuthorizationHandle *)*(a1 + 32) _invalidateFromSource:0 withCompletion:?];
}

- (void)_invalidateFromSource:(void *)source withCompletion:
{
  sourceCopy = source;
  if (!self)
  {
    goto LABEL_20;
  }

  os_unfair_lock_lock((self + 16));
  v6 = *(self + 64);
  if (v6)
  {
    v7 = v6;
    v8 = *(self + 64);
    *(self + 64) = 0;

    v9 = _Block_copy(*(self + 48));
    v10 = *(self + 48);
    *(self + 48) = 0;

    v11 = *(self + 40);
    *(self + 40) = 0;

    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v13 = *(self + 24);
    *(self + 24) = v12;

    if (v9)
    {
      v14 = *(self + 24);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __73__PKApplicationAuthorizationHandle__invalidateFromSource_withCompletion___block_invoke;
      aBlock[3] = &unk_1E79E2570;
      v36 = v9;
      v15 = _Block_copy(aBlock);
      [v14 addObject:v15];
    }

    if (sourceCopy)
    {
      v16 = *(self + 24);
      v17 = _Block_copy(sourceCopy);
      [v16 addObject:v17];
    }

    if (a2 == 1)
    {
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __73__PKApplicationAuthorizationHandle__invalidateFromSource_withCompletion___block_invoke_2_11;
      v28[3] = &unk_1E79E2598;
      v18 = &v29;
      v29 = v7;
      v19 = v7;
      v20 = _Block_copy(v28);
    }

    else
    {
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __73__PKApplicationAuthorizationHandle__invalidateFromSource_withCompletion___block_invoke_2;
      v33[3] = &unk_1E79E2598;
      v18 = &v34;
      v23 = v7;
      v34 = v23;
      v24 = _Block_copy(v33);
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __73__PKApplicationAuthorizationHandle__invalidateFromSource_withCompletion___block_invoke_7;
      v30[3] = &unk_1E79E25C0;
      v31 = v23;
      v32 = v24;
      v25 = v24;
      v26 = v23;
      v20 = _Block_copy(v30);
    }
  }

  else
  {
    v20 = 0;
    if (!sourceCopy)
    {
      goto LABEL_15;
    }

    v21 = *(self + 24);
    if (!v21)
    {
      goto LABEL_15;
    }

    v22 = _Block_copy(sourceCopy);
    [v21 addObject:v22];

    v20 = 0;
  }

  sourceCopy = 0;
LABEL_15:
  os_unfair_lock_unlock((self + 16));
  selfCopy = self;
  if (sourceCopy)
  {
    (*(sourceCopy + 2))(sourceCopy, selfCopy);
  }

  if (v20)
  {
    v20[2](v20, selfCopy);
  }

LABEL_20:
}

void __53__PKApplicationAuthorizationHandle__initWithRequest___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(5uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 134218240;
    v6 = v3;
    v7 = 2048;
    v8 = v4;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_INFO, "PKApplicationAuthorizationHandle (%p): connection %p remotely invalidated.", &v5, 0x16u);
  }

  [(PKApplicationAuthorizationHandle *)*(a1 + 32) _invalidateFromSource:0 withCompletion:?];
}

- (void)dealloc
{
  if (self->_invalidationCompletions)
  {
    __break(1u);
  }

  else
  {
    v2.receiver = self;
    v2.super_class = PKApplicationAuthorizationHandle;
    [(PKApplicationAuthorizationHandle *)&v2 dealloc];
  }
}

- (BOOL)isInvalidated
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_connection == 0;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

void __73__PKApplicationAuthorizationHandle__invalidateFromSource_withCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(5uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v7 = 134218240;
    v8 = v3;
    v9 = 2048;
    v10 = v5;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_INFO, "PKApplicationAuthorizationHandle (%p): connection %p locally invalidated.", &v7, 0x16u);
  }

  [*(a1 + 32) invalidate];
  v6 = v3;
  [(PKApplicationAuthorizationHandle *)v6 _resolveInvalidation];
}

- (void)_resolveInvalidation
{
  v14 = *MEMORY[0x1E69E9840];
  if (self)
  {
    os_unfair_lock_lock((self + 16));
    v2 = [*(self + 24) copy];
    v3 = *(self + 24);
    *(self + 24) = 0;

    os_unfair_lock_unlock((self + 16));
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          (*(*(*(&v9 + 1) + 8 * v8) + 16))(*(*(&v9 + 1) + 8 * v8));
          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

void __73__PKApplicationAuthorizationHandle__invalidateFromSource_withCompletion___block_invoke_7(uint64_t a1, atomic_uchar *a2)
{
  if (atomic_exchange(a2 + 56, 1u))
  {
    (*(*(a1 + 40) + 16))(*(a1 + 40), a2);
  }

  else
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __73__PKApplicationAuthorizationHandle__invalidateFromSource_withCompletion___block_invoke_2_8;
    v10[3] = &unk_1E79C4C70;
    v10[4] = a2;
    v4 = *(a1 + 32);
    v11 = *(a1 + 40);
    v5 = a2;
    v6 = [v4 remoteObjectProxyWithErrorHandler:v10];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __73__PKApplicationAuthorizationHandle__invalidateFromSource_withCompletion___block_invoke_10;
    v8[3] = &unk_1E79C44A0;
    v7 = *(a1 + 40);
    v8[4] = v5;
    v9 = v7;
    [v6 detachWithReply:v8];
  }
}

void __73__PKApplicationAuthorizationHandle__invalidateFromSource_withCompletion___block_invoke_2_8(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject(5uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = 134218242;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_INFO, "PKApplicationAuthorizationHandle (%p): failed to notify remote of local invalidation - %@.", &v6, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)displayForPresentationTarget:(id)target withAction:(id)action completion:(id)completion
{
  v30 = *MEMORY[0x1E69E9840];
  targetCopy = target;
  actionCopy = action;
  completionCopy = completion;
  if (!targetCopy || !actionCopy || (v11 = completionCopy) == 0 || (os_unfair_lock_lock(&self->_lock), self->_started))
  {
    __break(1u);
  }

  v12 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "PKApplicationAuthorizationHandle (%p): starting...", buf, 0xCu);
  }

  self->_started = 1;
  if (self->_connection)
  {
    v13 = _Block_copy(actionCopy);
    action = self->_action;
    self->_action = v13;

    v15 = _Block_copy(v11);
    completion = self->_completion;
    self->_completion = v15;

    connection = self->_connection;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __87__PKApplicationAuthorizationHandle_displayForPresentationTarget_withAction_completion___block_invoke;
    v27[3] = &unk_1E79C7D08;
    v27[4] = self;
    v18 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v27];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __87__PKApplicationAuthorizationHandle_displayForPresentationTarget_withAction_completion___block_invoke_12;
    aBlock[3] = &unk_1E79C4E00;
    v24 = v18;
    selfCopy2 = self;
    v26 = targetCopy;
    v19 = v18;
    v20 = _Block_copy(aBlock);
  }

  else
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __87__PKApplicationAuthorizationHandle_displayForPresentationTarget_withAction_completion___block_invoke_13;
    v21[3] = &unk_1E79C4A40;
    v21[4] = self;
    v22 = v11;
    v20 = _Block_copy(v21);
    v19 = v22;
  }

  os_unfair_lock_unlock(&self->_lock);
  v20[2](v20);
}

uint64_t __87__PKApplicationAuthorizationHandle_displayForPresentationTarget_withAction_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "PKApplicationAuthorizationHandle (%p): failed to start.", &v5, 0xCu);
  }

  return [*(a1 + 32) invalidateWithCompletion:0];
}

uint64_t __87__PKApplicationAuthorizationHandle_displayForPresentationTarget_withAction_completion___block_invoke_12(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = *(v2 + 8);
  v4 = a1[6];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __87__PKApplicationAuthorizationHandle_displayForPresentationTarget_withAction_completion___block_invoke_2;
  v6[3] = &unk_1E79C4E28;
  v6[4] = v2;
  return [v1 displayForRequest:v3 target:v4 withReply:v6];
}

void __87__PKApplicationAuthorizationHandle_displayForPresentationTarget_withAction_completion___block_invoke_2(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 134217984;
    v5 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "PKApplicationAuthorizationHandle (%p): started.", &v4, 0xCu);
  }
}

uint64_t __87__PKApplicationAuthorizationHandle_displayForPresentationTarget_withAction_completion___block_invoke_13(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "PKApplicationAuthorizationHandle (%p): could not start - already invalidated.", &v5, 0xCu);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)performActionWithReply:(id)reply
{
  replyCopy = reply;
  os_unfair_lock_lock(&self->_lock);
  if (!self->_connection)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __59__PKApplicationAuthorizationHandle_performActionWithReply___block_invoke_19;
    v12[3] = &unk_1E79C4A40;
    v12[4] = self;
    v13 = replyCopy;
    v9 = _Block_copy(v12);
    v10 = v13;
LABEL_8:

    goto LABEL_9;
  }

  if (!self->_started)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __59__PKApplicationAuthorizationHandle_performActionWithReply___block_invoke_18;
    v14[3] = &unk_1E79C4A40;
    v14[4] = self;
    v15 = replyCopy;
    v9 = _Block_copy(v14);
    v10 = v15;
    goto LABEL_8;
  }

  action = self->_action;
  if (!action)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __59__PKApplicationAuthorizationHandle_performActionWithReply___block_invoke_17;
    v16[3] = &unk_1E79C4A40;
    v16[4] = self;
    v17 = replyCopy;
    v9 = _Block_copy(v16);
    v10 = v17;
    goto LABEL_8;
  }

  v6 = _Block_copy(action);
  v7 = self->_action;
  self->_action = 0;

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__PKApplicationAuthorizationHandle_performActionWithReply___block_invoke;
  aBlock[3] = &unk_1E79E25E8;
  aBlock[4] = self;
  v19 = v6;
  v20 = replyCopy;
  v8 = v6;
  v9 = _Block_copy(aBlock);

LABEL_9:
  os_unfair_lock_unlock(&self->_lock);
  v11 = objc_autoreleasePoolPush();
  v9[2](v9);
  objc_autoreleasePoolPop(v11);
}

void __59__PKApplicationAuthorizationHandle_performActionWithReply___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 134217984;
    v12 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "PKApplicationAuthorizationHandle (%p): performing action...", buf, 0xCu);
  }

  v4 = [[PKDeallocationGuard alloc] initWithBlock:&__block_literal_global_216];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__PKApplicationAuthorizationHandle_performActionWithReply___block_invoke_2;
  v8[3] = &unk_1E79D0850;
  v5 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v4;
  v10 = *(a1 + 48);
  v6 = *(v5 + 16);
  v7 = v4;
  v6(v5, v8);
}

uint64_t __59__PKApplicationAuthorizationHandle_performActionWithReply___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 40) invalidate])
  {
    __break(1u);
  }

  v4 = PKLogFacilityTypeGetObject(0);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      v10 = 134217984;
      v11 = v6;
      v7 = "PKApplicationAuthorizationHandle (%p): action committed.";
LABEL_7:
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, v7, &v10, 0xCu);
    }
  }

  else if (v5)
  {
    v8 = *(a1 + 32);
    v10 = 134217984;
    v11 = v8;
    v7 = "PKApplicationAuthorizationHandle (%p): action failed.";
    goto LABEL_7;
  }

  return (*(*(a1 + 48) + 16))(*(a1 + 48), a2);
}

uint64_t __59__PKApplicationAuthorizationHandle_performActionWithReply___block_invoke_17(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "PKApplicationAuthorizationHandle (%p): cannot perform action - already performed - invalidating.", &v5, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
  return [*(a1 + 32) invalidateWithCompletion:0];
}

uint64_t __59__PKApplicationAuthorizationHandle_performActionWithReply___block_invoke_18(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "PKApplicationAuthorizationHandle (%p): cannot perform action - handle not started - invalidating.", &v5, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
  return [*(a1 + 32) invalidateWithCompletion:0];
}

uint64_t __59__PKApplicationAuthorizationHandle_performActionWithReply___block_invoke_19(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "PKApplicationAuthorizationHandle (%p): cannot perform action - already invalidated.", &v5, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)detachWithReply:(id)reply
{
  v8 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v5 = PKLogFacilityTypeGetObject(5uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_INFO, "PKApplicationAuthorizationHandle (%p): received remote detach.", &v6, 0xCu);
  }

  atomic_exchange(&self->_detached._Value, 1u);
  replyCopy[2](replyCopy);
  [(PKApplicationAuthorizationHandle *)self invalidateWithCompletion:0];
}

@end