@interface MPCRequestController
- (MPCRequestController)init;
- (MPCRequestControllerDelegate)delegate;
- (id)_onQueue_stateDictionary;
- (id)request;
- (id)response;
- (void)_onQueue_reloadIfNeeded;
- (void)_onQueue_scheduleRetryAfterInterval:(double)a3;
- (void)_onQueue_updateRequestID;
- (void)_responseDidInvalidate:(id)a3;
- (void)beginAutomaticResponseLoading;
- (void)dealloc;
- (void)endAutomaticResponseLoading;
- (void)reloadIfNeeded;
- (void)setNeedsReload;
- (void)setNeedsReloadForSignificantRequestChange;
- (void)setRequest:(id)a3;
- (void)setResponse:(id)a3;
@end

@implementation MPCRequestController

- (MPCRequestControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_onQueue_reloadIfNeeded
{
  v36 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  retryTimer = self->_retryTimer;
  if (retryTimer)
  {
    dispatch_source_cancel(retryTimer);
    v5 = self->_retryTimer;
    self->_retryTimer = 0;
  }

  request = self->_request;
  if (!request)
  {
    v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Middleware");
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    v13 = self->_request;
    *buf = 134218240;
    v31 = self;
    v32 = 2048;
    v33 = v13;
    v10 = "[RCO:%p:%p] _onQueue_reloadIfNeeded | skipping load [no request]";
LABEL_16:
    v11 = v7;
    v12 = 22;
    goto LABEL_17;
  }

  if (self->_cancelToken)
  {
    v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Middleware");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_request;
      cancelToken = self->_cancelToken;
      *buf = 134218496;
      v31 = self;
      v32 = 2048;
      v33 = v8;
      v34 = 2048;
      v35 = cancelToken;
      v10 = "[RCO:%p:%p] _onQueue_reloadIfNeeded | skipping load [already loading] cancelToken=%p";
LABEL_7:
      v11 = v7;
      v12 = 32;
LABEL_17:
      _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  if (!self->_needsReload)
  {
    v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Middleware");
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    v16 = self->_request;
    *buf = 134218240;
    v31 = self;
    v32 = 2048;
    v33 = v16;
    v10 = "[RCO:%p:%p] _onQueue_reloadIfNeeded | skipping load [not needed]";
    goto LABEL_16;
  }

  if (self->_pendingResponse)
  {
    v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Middleware");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v14 = self->_request;
      pendingResponse = self->_pendingResponse;
      *buf = 134218496;
      v31 = self;
      v32 = 2048;
      v33 = v14;
      v34 = 2048;
      v35 = pendingResponse;
      v10 = "[RCO:%p:%p] _onQueue_reloadIfNeeded | skipping load [already delivering response] pendingResponse=%p";
      goto LABEL_7;
    }
  }

  else
  {
    self->_needsReload = 0;
    v17 = request;
    v18 = self->_requestID;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v20 = objc_opt_respondsToSelector();

    if (v20)
    {
      dispatch_assert_queue_not_V2(self->_calloutQueue);
      calloutQueue = self->_calloutQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __47__MPCRequestController__onQueue_reloadIfNeeded__block_invoke;
      block[3] = &unk_1E8239298;
      block[4] = self;
      dispatch_sync(calloutQueue, block);
    }

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __47__MPCRequestController__onQueue_reloadIfNeeded__block_invoke_2;
    v25[3] = &unk_1E8239450;
    v25[4] = self;
    v26 = v17;
    v27 = v18;
    v28 = a2;
    v22 = v18;
    v7 = v17;
    v23 = [v7 performWithCompletion:v25];
    v24 = self->_cancelToken;
    self->_cancelToken = v23;
  }

LABEL_18:
}

void __47__MPCRequestController__onQueue_reloadIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 96));
  [WeakRetained willBeginLoadingRequestForController:*(a1 + 32)];
}

void __47__MPCRequestController__onQueue_reloadIfNeeded__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 | v6)
  {
    if (v6)
    {
      v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Middleware");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = *(a1 + 32);
        v10 = *(a1 + 40);
        v11 = [v7 treeDescription];
        *buf = 134218498;
        v27 = v9;
        v28 = 2048;
        v29 = v10;
        v30 = 2114;
        v31 = v11;
        _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_ERROR, "[RCO:%p:%p] performWithCompletion:… | request finished loading [] error=%{public}@", buf, 0x20u);
      }

      goto LABEL_8;
    }
  }

  else
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"MPCRequestController.m" lineNumber:390 description:@"Must get a response or an error"];
  }

  v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Middleware");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    *buf = 134218240;
    v27 = v13;
    v28 = 2048;
    v29 = v14;
    _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, "[RCO:%p:%p] performWithCompletion:… | request finished loading []", buf, 0x16u);
  }

LABEL_8:

  v16 = *(a1 + 32);
  v15 = *(a1 + 40);
  v17 = *(v16 + 112);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __47__MPCRequestController__onQueue_reloadIfNeeded__block_invoke_89;
  v20[3] = &unk_1E8239428;
  v20[4] = v16;
  v21 = v7;
  v22 = v15;
  v23 = *(a1 + 48);
  v24 = v5;
  v25 = *(a1 + 56);
  v18 = v5;
  v19 = v7;
  dispatch_async(v17, v20);
}

void __47__MPCRequestController__onQueue_reloadIfNeeded__block_invoke_89(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) delegate];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__MPCRequestController__onQueue_reloadIfNeeded__block_invoke_2_90;
  aBlock[3] = &unk_1E82392C0;
  aBlock[4] = *(a1 + 32);
  v3 = v2;
  v36 = v3;
  v4 = _Block_copy(aBlock);
  if (*(a1 + 40))
  {
    v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Middleware");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 48);
      v7 = *(a1 + 32);
      v8 = [*(a1 + 40) treeDescription];
      *buf = 134218498;
      v38 = v7;
      v39 = 2048;
      v40 = v6;
      v41 = 2114;
      v42 = v8;
      _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_ERROR, "[RCO:%p:%p] performWithCompletion:… | request failed [error returned] error=%{public}@", buf, 0x20u);
    }

    v9 = *(a1 + 32);
    v10 = *(v9 + 104);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __47__MPCRequestController__onQueue_reloadIfNeeded__block_invoke_93;
    v29[3] = &unk_1E8239388;
    v29[4] = v9;
    v11 = &v30;
    v30 = *(a1 + 56);
    v12 = &v31;
    v31 = *(a1 + 48);
    v13 = &v32;
    v32 = v3;
    v14 = &v33;
    v15 = *(a1 + 40);
    v16 = &v34;
    v33 = v15;
    v34 = v4;
    v17 = v4;
    v18 = v29;
  }

  else
  {
    v19 = *(a1 + 32);
    v10 = *(v19 + 104);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__MPCRequestController__onQueue_reloadIfNeeded__block_invoke_96;
    block[3] = &unk_1E8239400;
    block[4] = v19;
    v11 = &v24;
    v24 = *(a1 + 64);
    v12 = &v25;
    v25 = *(a1 + 56);
    v13 = &v26;
    v26 = v3;
    v14 = &v27;
    v20 = *(a1 + 48);
    v21 = *(a1 + 72);
    v28[0] = v4;
    v28[1] = v21;
    v16 = v28;
    v27 = v20;
    v22 = v4;
    v18 = block;
  }

  dispatch_async(v10, v18);
}

uint64_t __47__MPCRequestController__onQueue_reloadIfNeeded__block_invoke_2_90(uint64_t a1)
{
  dispatch_assert_queue_V2(*(*(a1 + 32) + 112));
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);

    return [v3 didFinishLoadingRequestForController:v4];
  }

  return result;
}

void __47__MPCRequestController__onQueue_reloadIfNeeded__block_invoke_93(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 16);
  v4 = os_log_create("com.apple.amp.mediaplaybackcore", "Middleware");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3 == v2)
  {
    if (v5)
    {
      v10 = *(a1 + 32);
      v11 = *(v10 + 80);
      v12 = *(v10 + 16);
      v28 = 134218498;
      v29 = v10;
      v30 = 2048;
      v31 = v11;
      v32 = 2114;
      *v33 = v12;
      _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_DEFAULT, "[RCO:%p:%p] performWithCompletion:… | processing error [current request] requestID=%{public}@", &v28, 0x20u);
    }

    v13 = *(*(a1 + 32) + 24);
    v14 = os_log_create("com.apple.amp.mediaplaybackcore", "Middleware");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = *(a1 + 32);
      v16 = *(a1 + 48);
      v17 = *(v15 + 24);
      v28 = 134218752;
      v29 = v15;
      v30 = 2048;
      v31 = v16;
      v32 = 1024;
      *v33 = v13;
      *&v33[4] = 1024;
      *&v33[6] = v17;
      _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_DEBUG, "[RCO:%p:%p] performWithCompletion:… | recovering from error [determining retry] shouldRetry=%{BOOL}d automaticLoad=%{BOOL}d", &v28, 0x22u);
    }

    if (objc_opt_respondsToSelector())
    {
      v13 = [*(a1 + 56) controller:*(a1 + 32) shouldRetryFailedRequestWithError:*(a1 + 64)];
      v18 = os_log_create("com.apple.amp.mediaplaybackcore", "Middleware");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v19 = *(a1 + 32);
        v20 = *(a1 + 48);
        v21 = *(a1 + 56);
        v28 = 134218752;
        v29 = v19;
        v30 = 2048;
        v31 = v20;
        v32 = 2048;
        *v33 = v21;
        *&v33[8] = 1024;
        LODWORD(v34) = v13;
        _os_log_impl(&dword_1C5C61000, v18, OS_LOG_TYPE_DEBUG, "[RCO:%p:%p] performWithCompletion:… | delegate retry decision [delegate consulted] delegate=%p shouldRetry=%{BOOL}d", &v28, 0x26u);
      }
    }

    *(*(a1 + 32) + 25) = 1;
    v22 = *(a1 + 32);
    v23 = *(v22 + 32);
    *(v22 + 32) = 0;

    objc_storeStrong((*(a1 + 32) + 56), *(a1 + 64));
    if (v13)
    {
      v24 = os_log_create("com.apple.amp.mediaplaybackcore", "Middleware");
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = *(a1 + 32);
        v26 = *(v25 + 80);
        v27 = *(v25 + 40);
        v28 = 134218496;
        v29 = v25;
        v30 = 2048;
        v31 = v26;
        v32 = 2048;
        *v33 = v27;
        _os_log_impl(&dword_1C5C61000, v24, OS_LOG_TYPE_DEFAULT, "[RCO:%p:%p] performWithCompletion:… | scheduling retry [will retry] retryInterval=%f", &v28, 0x20u);
      }

      [*(a1 + 32) _onQueue_scheduleRetryAfterInterval:*(*(a1 + 32) + 40)];
    }
  }

  else
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v8 = *(v6 + 80);
      v9 = *(v6 + 16);
      v28 = 134218754;
      v29 = v6;
      v30 = 2048;
      v31 = v8;
      v32 = 2114;
      *v33 = v7;
      *&v33[8] = 2114;
      v34 = v9;
      _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_DEFAULT, "[RCO:%p:%p] performWithCompletion:… | ignoring error [request revision mismatch] previousRequestID=%{public}@ currentRequestID=%{public}@", &v28, 0x2Au);
    }
  }

  dispatch_async(*(*(a1 + 32) + 112), *(a1 + 72));
}

void __47__MPCRequestController__onQueue_reloadIfNeeded__block_invoke_96(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 40) = 0x3FD0000000000000;
  objc_storeStrong((*(a1 + 32) + 64), *(a1 + 40));
  v2 = *(a1 + 32);
  if (*(v2 + 16) == *(a1 + 48))
  {
    v8 = *(v2 + 112);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__MPCRequestController__onQueue_reloadIfNeeded__block_invoke_2_97;
    block[3] = &unk_1E82393D8;
    v9 = *(a1 + 56);
    v10 = *(a1 + 32);
    v14 = v9;
    v15 = v10;
    v16 = *(a1 + 64);
    v17 = *(a1 + 40);
    v12 = *(a1 + 72);
    v11 = v12;
    v18 = v12;
    dispatch_async(v8, block);
  }

  else
  {
    v3 = os_log_create("com.apple.amp.mediaplaybackcore", "Middleware");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = *(v4 + 80);
      v6 = *(a1 + 48);
      v7 = *(v4 + 16);
      *buf = 134218754;
      v20 = v4;
      v21 = 2048;
      v22 = v5;
      v23 = 2114;
      v24 = v6;
      v25 = 2114;
      v26 = v7;
      _os_log_impl(&dword_1C5C61000, v3, OS_LOG_TYPE_DEFAULT, "[RCO:%p:%p] performWithCompletion:… | reloading [request revision mismatch] previousRequestID=%{public}@ currentRequestID=%{public}@", buf, 0x2Au);
    }

    dispatch_async(*(*(a1 + 32) + 112), *(a1 + 72));
    [*(a1 + 32) _onQueue_reloadIfNeeded];
  }
}

void __47__MPCRequestController__onQueue_reloadIfNeeded__block_invoke_2_97(uint64_t a1)
{
  v44 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_respondsToSelector();
  v3 = os_log_create("com.apple.amp.mediaplaybackcore", "Middleware");
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 48);
      v6 = *(a1 + 56);
      v8 = *(a1 + 32);
      v7 = *(a1 + 40);
      *buf = 134218752;
      v37 = v7;
      v38 = 2048;
      v39 = v5;
      v40 = 2048;
      v41 = v6;
      v42 = 2048;
      v43 = v8;
      _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_DEBUG, "[RCO:%p:%p] performWithCompletion:… | deferring response replacement [delegate supports deferral] response=%p delegate=%p", buf, 0x2Au);
    }

    v9 = objc_alloc(MEMORY[0x1E69B13F0]);
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __47__MPCRequestController__onQueue_reloadIfNeeded__block_invoke_98;
    v32[3] = &unk_1E82393B0;
    v35 = *(a1 + 72);
    v25 = *(a1 + 40);
    v10 = *(&v25 + 1);
    v11 = *(a1 + 32);
    v12 = *(a1 + 56);
    *&v13 = v11;
    *(&v13 + 1) = v12;
    v33 = v25;
    v34 = v13;
    v14 = [v9 initWithTimeout:v32 interruptionHandler:9.0];
    v15 = *(a1 + 32);
    v16 = *(a1 + 56);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __47__MPCRequestController__onQueue_reloadIfNeeded__block_invoke_99;
    v27[3] = &unk_1E8239388;
    v28 = v14;
    v26 = *(a1 + 40);
    v17 = *(&v26 + 1);
    v18 = *(a1 + 32);
    v19 = *(a1 + 56);
    *&v20 = v18;
    *(&v20 + 1) = v19;
    v29 = v26;
    v30 = v20;
    v31 = *(a1 + 64);
    v21 = v14;
    [v15 controller:v26 defersResponse:v16 completion:v27];
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(a1 + 40);
      v23 = *(a1 + 48);
      v24 = *(a1 + 56);
      *buf = 134218496;
      v37 = v22;
      v38 = 2048;
      v39 = v23;
      v40 = 2048;
      v41 = v24;
      _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_DEFAULT, "[RCO:%p:%p] performWithCompletion:… | replacing response [no deferral] response=%p", buf, 0x20u);
    }

    [*(a1 + 40) setResponse:*(a1 + 56)];
    (*(*(a1 + 64) + 16))();
  }
}

void __47__MPCRequestController__onQueue_reloadIfNeeded__block_invoke_98(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a2 == 1)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a1[8] object:a1[4] file:@"MPCRequestController.m" lineNumber:442 description:@"MPCRequestController delegate did not call block passed to defersResponse:completion:."];
  }

  v3 = os_log_create("com.apple.amp.mediaplaybackcore", "Middleware");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = a1[4];
    v5 = a1[5];
    v6 = a1[6];
    v7 = a1[7];
    v9 = 134218752;
    v10 = v4;
    v11 = 2048;
    v12 = v5;
    v13 = 2048;
    v14 = v6;
    v15 = 2048;
    v16 = v7;
    _os_log_impl(&dword_1C5C61000, v3, OS_LOG_TYPE_ERROR, "[RCO:%p:%p] performWithCompletion:… | delegate timeout [completion not called] delegate=%p response=%p", &v9, 0x2Au);
  }
}

void __47__MPCRequestController__onQueue_reloadIfNeeded__block_invoke_99(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) disarm];
  v2 = os_log_create("com.apple.amp.mediaplaybackcore", "Middleware");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v6 = *(a1 + 64);
    *buf = 134218752;
    v11 = v3;
    v12 = 2048;
    v13 = v4;
    v14 = 2048;
    v15 = v5;
    v16 = 2048;
    v17 = v6;
    _os_log_impl(&dword_1C5C61000, v2, OS_LOG_TYPE_DEFAULT, "[RCO:%p:%p] performWithCompletion:… | delegate replacing response [deferred completion] delegate=%p response=%p", buf, 0x2Au);
  }

  [*(a1 + 40) setResponse:*(a1 + 64)];
  dispatch_async(*(*(a1 + 40) + 112), *(a1 + 72));
  v7 = *(a1 + 40);
  v8 = *(v7 + 104);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__MPCRequestController__onQueue_reloadIfNeeded__block_invoke_100;
  block[3] = &unk_1E8239298;
  block[4] = v7;
  dispatch_async(v8, block);
}

- (void)_onQueue_scheduleRetryAfterInterval:(double)a3
{
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_retryTimer)
  {
    objc_initWeak(&location, self);
    v5 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_queue);
    retryTimer = self->_retryTimer;
    self->_retryTimer = v5;

    v7 = self->_retryTimer;
    v8 = dispatch_time(0, (a3 * 1000000000.0));
    dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
    v9 = self->_retryTimer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __60__MPCRequestController__onQueue_scheduleRetryAfterInterval___block_invoke;
    handler[3] = &unk_1E8239360;
    objc_copyWeak(v11, &location);
    v11[1] = *&a3;
    dispatch_source_set_event_handler(v9, handler);
    dispatch_resume(self->_retryTimer);
    objc_destroyWeak(v11);
    objc_destroyWeak(&location);
  }
}

void __60__MPCRequestController__onQueue_scheduleRetryAfterInterval___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(WeakRetained + 25) == 1)
    {
      *(WeakRetained + 5) = fmin(*(a1 + 40) * 1.20000005, 15.0);
      v4 = os_log_create("com.apple.amp.mediaplaybackcore", "Middleware");
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = v3[10];
        v6 = *(a1 + 40);
        v7 = v3[5];
        v13 = 134218752;
        v14 = v3;
        v15 = 2048;
        v16 = v5;
        v17 = 2048;
        v18 = v6;
        v19 = 2048;
        v20 = v7;
        _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_DEFAULT, "[RCO:%p:%p] _onQueue_scheduleRetryAfterInterval:%f | reloading [retry timer] retryInterval=%f", &v13, 0x2Au);
      }

      [v3 _onQueue_reloadIfNeeded];
    }

    else
    {
      v8 = *(WeakRetained + 6);
      if (v8)
      {
        dispatch_source_cancel(v8);
        v9 = v3[6];
        v3[6] = 0;
      }

      v10 = os_log_create("com.apple.amp.mediaplaybackcore", "Middleware");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v3[10];
        v12 = *(a1 + 40);
        v13 = 134218496;
        v14 = v3;
        v15 = 2048;
        v16 = v11;
        v17 = 2048;
        v18 = v12;
        _os_log_impl(&dword_1C5C61000, v10, OS_LOG_TYPE_DEFAULT, "[RCO:%p:%p] _onQueue_scheduleRetryAfterInterval:%f | skipping reload [no longer needed]", &v13, 0x20u);
      }
    }
  }
}

- (id)_onQueue_stateDictionary
{
  v22[8] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v3 = self->_request;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = MEMORY[0x1E695DF90];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p>", objc_opt_class(), self, @"_obj"];
  v22[0] = v6;
  v21[1] = @"automaticLoad";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_shouldAutomaticallyLoad];
  v22[1] = v7;
  v21[2] = @"observers";
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_numberOfObservers];
  v22[2] = v8;
  v21[3] = @"needsReload";
  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_needsReload];
  v10 = v9;
  requestID = self->_requestID;
  v12 = @"<NULL>";
  if (!requestID)
  {
    requestID = @"<NULL>";
  }

  v22[3] = v9;
  v22[4] = requestID;
  v21[4] = @"requestID";
  v21[5] = @"request";
  if (v3)
  {
    v13 = v3;
  }

  else
  {
    v13 = @"<NULL>";
  }

  response = self->_response;
  if (!response)
  {
    response = @"<NULL>";
  }

  v22[5] = v13;
  v22[6] = response;
  v21[6] = @"response";
  v21[7] = @"delegate";
  if (WeakRetained)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p>", objc_opt_class(), WeakRetained];
  }

  v22[7] = v12;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:8];
  v16 = [v5 dictionaryWithDictionary:v15];

  if (WeakRetained)
  {
  }

  v17 = self->_pendingResponse;
  if (v17)
  {
    [v16 setObject:v17 forKeyedSubscript:@"pendingResponse"];
  }

  v18 = self->_lastError;
  if (v18)
  {
    [v16 setObject:v18 forKeyedSubscript:@"lastError"];
  }

  if (self->_retryInterval != 0.25)
  {
    v19 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    [v16 setObject:v19 forKeyedSubscript:@"retryInterval"];
  }

  return v16;
}

- (void)_onQueue_updateRequestID
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = MSVNanoIDCreateTaggedPointer();
  requestID = self->_requestID;
  self->_requestID = v3;

  MEMORY[0x1EEE66BB8](v3, requestID);
}

- (void)_responseDidInvalidate:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__MPCRequestController__responseDidInvalidate___block_invoke;
  v7[3] = &unk_1E82392C0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __47__MPCRequestController__responseDidInvalidate___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) object];
  v3 = v2;
  if (v2 == *(*(a1 + 40) + 88))
  {
  }

  else
  {
    v4 = [*(a1 + 32) object];
    v5 = *(*(a1 + 40) + 64);

    if (v4 != v5)
    {
      v6 = os_log_create("com.apple.amp.mediaplaybackcore", "Middleware");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = *(a1 + 40);
        v8 = *(v7 + 80);
        v9 = [*(a1 + 32) object];
        v10 = *(a1 + 40);
        v11 = *(v10 + 88);
        v12 = *(v10 + 64);
        v20 = 134219008;
        v21 = v7;
        v22 = 2048;
        v23 = v8;
        v24 = 2048;
        v25 = v9;
        v26 = 2048;
        v27 = v11;
        v28 = 2048;
        v29 = v12;
        _os_log_impl(&dword_1C5C61000, v6, OS_LOG_TYPE_ERROR, "[RCO:%p:%p] _responseDidInvalidate:… | ignoring notification [not current response] notification.object=%p currentResponse=%p pendingResponse=%p", &v20, 0x34u);
      }

      return;
    }
  }

  v13 = os_log_create("com.apple.amp.mediaplaybackcore", "Middleware");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 40);
    v15 = *(v14 + 80);
    v16 = [*(a1 + 32) object];
    v20 = 134218496;
    v21 = v14;
    v22 = 2048;
    v23 = v15;
    v24 = 2048;
    v25 = v16;
    _os_log_impl(&dword_1C5C61000, v13, OS_LOG_TYPE_DEFAULT, "[RCO:%p:%p] _responseDidInvalidate:… | needs reload [response invalid] invalidatedResponse=%p", &v20, 0x20u);
  }

  *(*(a1 + 40) + 25) = 1;
  if (*(*(a1 + 40) + 24) == 1)
  {
    v17 = os_log_create("com.apple.amp.mediaplaybackcore", "Middleware");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1 + 40);
      v19 = *(v18 + 80);
      v20 = 134218240;
      v21 = v18;
      v22 = 2048;
      v23 = v19;
      _os_log_impl(&dword_1C5C61000, v17, OS_LOG_TYPE_DEFAULT, "[RCO:%p:%p] _responseDidInvalidate:… | reloading [automatic, response invalid]", &v20, 0x16u);
    }

    [*(a1 + 40) _onQueue_reloadIfNeeded];
  }
}

- (void)reloadIfNeeded
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__MPCRequestController_reloadIfNeeded__block_invoke;
  block[3] = &unk_1E8239298;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __38__MPCRequestController_reloadIfNeeded__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.mediaplaybackcore", "Middleware");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 80);
    v6 = 134218240;
    v7 = v3;
    v8 = 2048;
    v9 = v4;
    _os_log_impl(&dword_1C5C61000, v2, OS_LOG_TYPE_DEFAULT, "[RCO:%p:%p] reloadIfNeeded | reloading [client request]", &v6, 0x16u);
  }

  return [*(a1 + 32) _onQueue_reloadIfNeeded];
}

- (void)setNeedsReloadForSignificantRequestChange
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__MPCRequestController_setNeedsReloadForSignificantRequestChange__block_invoke;
  block[3] = &unk_1E82394D8;
  block[4] = self;
  block[5] = &v8;
  dispatch_sync(queue, block);
  if (*(v9 + 24) == 1)
  {
    calloutQueue = self->_calloutQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __65__MPCRequestController_setNeedsReloadForSignificantRequestChange__block_invoke_2;
    v6[3] = &unk_1E8239338;
    v6[4] = self;
    v6[5] = a2;
    dispatch_async(calloutQueue, v6);
  }

  [(MPCRequestController *)self setNeedsReload];
  _Block_object_dispose(&v8, 8);
}

void __65__MPCRequestController_setNeedsReloadForSignificantRequestChange__block_invoke_2(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 80);
  v3 = [*(a1 + 32) delegate];
  v4 = objc_opt_respondsToSelector();
  v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Middleware");
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = *(a1 + 32);
      *buf = 134218496;
      v26 = v7;
      v27 = 2048;
      v28 = v2;
      v29 = 2048;
      v30 = v3;
      _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_DEFAULT, "[RCO:%p:%p] setNeedsReloadForSignificantRequestChange | deferring response clearing [delegate supports deferral] delegate=%p", buf, 0x20u);
    }

    v8 = objc_alloc(MEMORY[0x1E69B13F0]);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __65__MPCRequestController_setNeedsReloadForSignificantRequestChange__block_invoke_38;
    v21[3] = &unk_1E82392E8;
    v9 = *(a1 + 32);
    v24 = *(a1 + 40);
    v21[4] = v9;
    v10 = v2;
    v22 = v10;
    v11 = v3;
    v23 = v11;
    v12 = [v8 initWithTimeout:v21 interruptionHandler:9.0];
    v13 = *(a1 + 32);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __65__MPCRequestController_setNeedsReloadForSignificantRequestChange__block_invoke_43;
    v16[3] = &unk_1E8239310;
    v17 = v12;
    v18 = v13;
    v19 = v10;
    v20 = v11;
    v14 = v12;
    [v20 controller:v13 defersResponse:0 completion:v16];
  }

  else
  {
    if (v6)
    {
      v15 = *(a1 + 32);
      *buf = 134218240;
      v26 = v15;
      v27 = 2048;
      v28 = v2;
      _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_DEFAULT, "[RCO:%p:%p] setNeedsReloadForSignificantRequestChange | clearing response [no deferral]", buf, 0x16u);
    }

    [*(a1 + 32) setResponse:0];
  }
}

void __65__MPCRequestController_setNeedsReloadForSignificantRequestChange__block_invoke_38(void *a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a2 == 1)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a1[7] object:a1[4] file:@"MPCRequestController.m" lineNumber:245 description:@"MPCRequestController delegate did not call block passed to defersResponse:completion:."];
  }

  v3 = os_log_create("com.apple.amp.mediaplaybackcore", "Middleware");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = a1[4];
    v5 = a1[5];
    v6 = a1[6];
    v8 = 134218496;
    v9 = v4;
    v10 = 2048;
    v11 = v5;
    v12 = 2048;
    v13 = v6;
    _os_log_impl(&dword_1C5C61000, v3, OS_LOG_TYPE_ERROR, "[RCO:%p:%p] setNeedsReloadForSignificantRequestChange | delegate timeout [completion not called] delegate=%p", &v8, 0x20u);
  }
}

uint64_t __65__MPCRequestController_setNeedsReloadForSignificantRequestChange__block_invoke_43(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) disarm];
  v2 = os_log_create("com.apple.amp.mediaplaybackcore", "Middleware");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v7 = 134218496;
    v8 = v3;
    v9 = 2048;
    v10 = v4;
    v11 = 2048;
    v12 = v5;
    _os_log_impl(&dword_1C5C61000, v2, OS_LOG_TYPE_DEFAULT, "[RCO:%p:%p] setNeedsReloadForSignificantRequestChange | clearing response [deferred completion] delegate=%p", &v7, 0x20u);
  }

  return [*(a1 + 40) setResponse:0];
}

- (void)setNeedsReload
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__MPCRequestController_setNeedsReload__block_invoke;
  block[3] = &unk_1E8239298;
  block[4] = self;
  dispatch_async(queue, block);
}

void __38__MPCRequestController_setNeedsReload__block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _onQueue_updateRequestID];
  v2 = os_log_create("com.apple.amp.mediaplaybackcore", "Middleware");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 80);
    v25 = 134218240;
    v26 = v3;
    v27 = 2048;
    v28 = v4;
    _os_log_impl(&dword_1C5C61000, v2, OS_LOG_TYPE_DEFAULT, "[RCO:%p:%p] setNeedsReload | needs reload [client request]", &v25, 0x16u);
  }

  v5 = *(a1 + 32);
  if (*(v5 + 32))
  {
    v6 = os_log_create("com.apple.amp.mediaplaybackcore", "Middleware");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = *(v7 + 80);
      v25 = 134218240;
      v26 = v7;
      v27 = 2048;
      v28 = v8;
      _os_log_impl(&dword_1C5C61000, v6, OS_LOG_TYPE_DEFAULT, "[RCO:%p:%p] setNeedsReload | canceling request in flight [client request]", &v25, 0x16u);
    }

    [*(*(a1 + 32) + 32) cancel];
    v9 = *(a1 + 32);
    v10 = *(v9 + 32);
    *(v9 + 32) = 0;

    v5 = *(a1 + 32);
  }

  v11 = MEMORY[0x1E6970398];
  if (*(v5 + 64))
  {
    v12 = os_log_create("com.apple.amp.mediaplaybackcore", "Middleware");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      v14 = *(v13 + 80);
      v15 = *(v13 + 64);
      v25 = 134218496;
      v26 = v13;
      v27 = 2048;
      v28 = v14;
      v29 = 2048;
      v30 = v15;
      _os_log_impl(&dword_1C5C61000, v12, OS_LOG_TYPE_DEFAULT, "[RCO:%p:%p] setNeedsReload | removing observer [pending response cleanup] pendingResponse=%p", &v25, 0x20u);
    }

    v16 = [MEMORY[0x1E696AD88] defaultCenter];
    [v16 removeObserver:*(a1 + 32) name:*v11 object:*(*(a1 + 32) + 64)];

    v5 = *(a1 + 32);
  }

  if (*(v5 + 88))
  {
    v17 = os_log_create("com.apple.amp.mediaplaybackcore", "Middleware");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1 + 32);
      v19 = *(v18 + 80);
      v20 = *(v18 + 88);
      v25 = 134218496;
      v26 = v18;
      v27 = 2048;
      v28 = v19;
      v29 = 2048;
      v30 = v20;
      _os_log_impl(&dword_1C5C61000, v17, OS_LOG_TYPE_DEFAULT, "[RCO:%p:%p] setNeedsReload | removing observer [current response cleanup] response=%p", &v25, 0x20u);
    }

    v21 = [MEMORY[0x1E696AD88] defaultCenter];
    [v21 removeObserver:*(a1 + 32) name:*v11 object:*(*(a1 + 32) + 88)];

    v5 = *(a1 + 32);
  }

  if ((*(v5 + 25) & 1) == 0)
  {
    *(v5 + 25) = 1;
    if (*(*(a1 + 32) + 24) == 1)
    {
      v22 = os_log_create("com.apple.amp.mediaplaybackcore", "Middleware");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = *(a1 + 32);
        v24 = *(v23 + 80);
        v25 = 134218240;
        v26 = v23;
        v27 = 2048;
        v28 = v24;
        _os_log_impl(&dword_1C5C61000, v22, OS_LOG_TYPE_DEFAULT, "[RCO:%p:%p] setNeedsReload | reloading [automatic, client request]", &v25, 0x16u);
      }

      [*(a1 + 32) _onQueue_reloadIfNeeded];
    }
  }
}

- (void)endAutomaticResponseLoading
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__MPCRequestController_endAutomaticResponseLoading__block_invoke;
  v6[3] = &unk_1E82394D8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);
  if (*(v8 + 24) == 1)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"MPCRequestController.m" lineNumber:196 description:@"Mismatched begin/endAutomaticResponseLoading."];
  }

  _Block_object_dispose(&v7, 8);
}

void __51__MPCRequestController_endAutomaticResponseLoading__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 8) < 1;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0 && --*(*(a1 + 32) + 8) <= 0)
  {
    v2 = os_log_create("com.apple.amp.mediaplaybackcore", "Middleware");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v4 = *(v3 + 80);
      v5 = 134218240;
      v6 = v3;
      v7 = 2048;
      v8 = v4;
      _os_log_impl(&dword_1C5C61000, v2, OS_LOG_TYPE_DEFAULT, "[RCO:%p:%p] endAutomaticResponseLoading | ending automatic reloading [no observers]", &v5, 0x16u);
    }

    *(*(a1 + 32) + 24) = 0;
  }
}

- (void)beginAutomaticResponseLoading
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__MPCRequestController_beginAutomaticResponseLoading__block_invoke;
  block[3] = &unk_1E8239298;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __53__MPCRequestController_beginAutomaticResponseLoading__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  ++*(*(a1 + 32) + 8);
  v2 = *(a1 + 32);
  if ((*(v2 + 24) & 1) == 0)
  {
    v3 = os_log_create("com.apple.amp.mediaplaybackcore", "Middleware");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = *(v4 + 80);
      v6 = *(v4 + 8);
      v10 = 134218496;
      v11 = v4;
      v12 = 2048;
      v13 = v5;
      v14 = 2048;
      v15 = v6;
      _os_log_impl(&dword_1C5C61000, v3, OS_LOG_TYPE_DEFAULT, "[RCO:%p:%p] beginAutomaticResponseLoading | starting automatic reloading [first observer] observers=%ld", &v10, 0x20u);
    }

    v2 = *(a1 + 32);
  }

  *(v2 + 24) = 1;
  if (*(*(a1 + 32) + 25) == 1)
  {
    v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Middleware");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = *(v8 + 80);
      v10 = 134218240;
      v11 = v8;
      v12 = 2048;
      v13 = v9;
      _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_DEFAULT, "[RCO:%p:%p] beginAutomaticResponseLoading | reloading [automatic, needs reload]", &v10, 0x16u);
    }

    [*(a1 + 32) _onQueue_reloadIfNeeded];
  }
}

- (void)setResponse:(id)a3
{
  v5 = a3;
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:a2 object:self file:@"MPCRequestController.m" lineNumber:117 description:@"Response must be subclass of MPResponse."];
    }
  }

  v6 = [(MPCRequestController *)self response];

  if (v6 != v5)
  {
    [(MPCRequestController *)self willChangeValueForKey:@"response"];
    queue = self->_queue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __36__MPCRequestController_setResponse___block_invoke;
    v9[3] = &unk_1E82392C0;
    v9[4] = self;
    v10 = v5;
    dispatch_async(queue, v9);
  }
}

void __36__MPCRequestController_setResponse___block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 88);
  if (v2)
  {
    v3 = os_log_create("com.apple.amp.mediaplaybackcore", "Middleware");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = *(v4 + 80);
      *buf = 134218496;
      v38 = v4;
      v39 = 2048;
      v40 = v5;
      v41 = 2048;
      v42 = v2;
      _os_log_impl(&dword_1C5C61000, v3, OS_LOG_TYPE_DEFAULT, "[RCO:%p:%p] setResponse:… | removing observer [previous response cleanup] oldResponse=%p", buf, 0x20u);
    }

    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 removeObserver:*(a1 + 32) name:*MEMORY[0x1E6970398] object:v2];
  }

  v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Middleware");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(v8 + 80);
    *buf = 134218752;
    v38 = v8;
    v39 = 2048;
    v40 = v10;
    v41 = 2048;
    v42 = v2;
    v43 = 2048;
    v44 = v9;
    _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_DEFAULT, "[RCO:%p:%p] setResponse:… | updating response [new response set] oldResponse=%p response=%p", buf, 0x2Au);
  }

  objc_storeStrong((*(a1 + 32) + 88), *(a1 + 40));
  v11 = *(a1 + 32);
  v12 = *(v11 + 56);
  *(v11 + 56) = 0;

  v13 = *(a1 + 32);
  v14 = *(v13 + 64);
  *(v13 + 64) = 0;

  v15 = *(a1 + 32);
  v16 = *(v15 + 32);
  *(v15 + 32) = 0;

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 96));
  if (objc_opt_respondsToSelector())
  {
    v18 = os_log_create("com.apple.amp.mediaplaybackcore", "Middleware");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 32);
      v20 = *(a1 + 40);
      v21 = *(v19 + 80);
      *buf = 134219008;
      v38 = v19;
      v39 = 2048;
      v40 = v21;
      v41 = 2048;
      v42 = WeakRetained;
      v43 = 2048;
      v44 = v2;
      v45 = 2048;
      v46 = v20;
      _os_log_impl(&dword_1C5C61000, v18, OS_LOG_TYPE_DEFAULT, "[RCO:%p:%p] setResponse:… | signaling response replacement [delegate supports signal] delegate=%p oldResponse=%p newResponse=%p", buf, 0x34u);
    }

    [WeakRetained controllerReplacingResponse:v2 withNewResponse:*(a1 + 40) fromRequest:*(*(a1 + 32) + 80)];
  }

  v22 = *(a1 + 40);
  if (v22)
  {
    if (([v22 isValid] & 1) == 0)
    {
      *(*(a1 + 32) + 25) = 1;
      v28 = os_log_create("com.apple.amp.mediaplaybackcore", "Middleware");
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v33 = *(a1 + 32);
        v34 = *(a1 + 40);
        v35 = *(v33 + 80);
        *buf = 134218496;
        v38 = v33;
        v39 = 2048;
        v40 = v35;
        v41 = 2048;
        v42 = v34;
        v32 = "[RCO:%p:%p] setResponse:… | reloading [response already invalid] response=%p";
        goto LABEL_20;
      }

LABEL_21:

      [*(a1 + 32) _onQueue_reloadIfNeeded];
      goto LABEL_22;
    }

    v23 = os_log_create("com.apple.amp.mediaplaybackcore", "Middleware");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = *(a1 + 32);
      v25 = *(a1 + 40);
      v26 = *(v24 + 80);
      *buf = 134218496;
      v38 = v24;
      v39 = 2048;
      v40 = v26;
      v41 = 2048;
      v42 = v25;
      _os_log_impl(&dword_1C5C61000, v23, OS_LOG_TYPE_DEFAULT, "[RCO:%p:%p] setResponse:… | adding observer [monitoring invalidation] response=%p", buf, 0x20u);
    }

    v27 = [MEMORY[0x1E696AD88] defaultCenter];
    [v27 addObserver:*(a1 + 32) selector:sel__responseDidInvalidate_ name:*MEMORY[0x1E6970398] object:*(*(a1 + 32) + 88)];

    if (([*(a1 + 40) isValid] & 1) == 0)
    {
      *(*(a1 + 32) + 25) = 1;
      v28 = os_log_create("com.apple.amp.mediaplaybackcore", "Middleware");
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = *(a1 + 32);
        v30 = *(a1 + 40);
        v31 = *(v29 + 80);
        *buf = 134218496;
        v38 = v29;
        v39 = 2048;
        v40 = v31;
        v41 = 2048;
        v42 = v30;
        v32 = "[RCO:%p:%p] setResponse:… | reloading [response became invalid] response=%p";
LABEL_20:
        _os_log_impl(&dword_1C5C61000, v28, OS_LOG_TYPE_DEFAULT, v32, buf, 0x20u);
        goto LABEL_21;
      }

      goto LABEL_21;
    }
  }

LABEL_22:
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__MPCRequestController_setResponse___block_invoke_31;
  block[3] = &unk_1E8239298;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (id)response
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__34809;
  v10 = __Block_byref_object_dispose__34810;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __32__MPCRequestController_response__block_invoke;
  v5[3] = &unk_1E82394D8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setRequest:(id)a3
{
  v5 = a3;
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:a2 object:self file:@"MPCRequestController.m" lineNumber:81 description:@"Request must be subclass of MPRequest."];
    }
  }

  v6 = [(MPCRequestController *)self request];

  if (v6 != v5)
  {
    [(MPCRequestController *)self willChangeValueForKey:@"request"];
    queue = self->_queue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __35__MPCRequestController_setRequest___block_invoke;
    v9[3] = &unk_1E82392C0;
    v9[4] = self;
    v10 = v5;
    dispatch_async(queue, v9);
  }
}

void __35__MPCRequestController_setRequest___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 32))
  {
    v3 = os_log_create("com.apple.amp.mediaplaybackcore", "Middleware");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v6 = *(v4 + 80);
      *buf = 134218752;
      v18 = v4;
      v19 = 2048;
      v20 = v6;
      v21 = 2048;
      v22 = v6;
      v23 = 2048;
      v24 = v5;
      _os_log_impl(&dword_1C5C61000, v3, OS_LOG_TYPE_DEFAULT, "[RCO:%p:%p] setRequest:… | canceling current request [request changed] oldRequest=%p newRequest=%p", buf, 0x2Au);
    }

    [*(*(a1 + 32) + 32) cancel];
    v7 = *(a1 + 32);
    v8 = *(v7 + 32);
    *(v7 + 32) = 0;

    v2 = *(a1 + 32);
  }

  objc_storeStrong((v2 + 80), *(a1 + 40));
  [*(a1 + 32) _onQueue_updateRequestID];
  v9 = os_log_create("com.apple.amp.mediaplaybackcore", "Middleware");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    *buf = 134218240;
    v18 = v10;
    v19 = 2048;
    v20 = v11;
    _os_log_impl(&dword_1C5C61000, v9, OS_LOG_TYPE_DEFAULT, "[RCO:%p:%p] setRequest:… | needs reload [request changed]", buf, 0x16u);
  }

  *(*(a1 + 32) + 25) = 1;
  v12 = *(a1 + 32);
  if (*(v12 + 24) == 1)
  {
    v13 = os_log_create("com.apple.amp.mediaplaybackcore", "Middleware");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      v15 = *(a1 + 40);
      *buf = 134218240;
      v18 = v14;
      v19 = 2048;
      v20 = v15;
      _os_log_impl(&dword_1C5C61000, v13, OS_LOG_TYPE_DEFAULT, "[RCO:%p:%p] setRequest:… | reloading [automatic, request changed]", buf, 0x16u);
    }

    [*(a1 + 32) _onQueue_reloadIfNeeded];
    v12 = *(a1 + 32);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__MPCRequestController_setRequest___block_invoke_18;
  block[3] = &unk_1E8239298;
  block[4] = v12;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (id)request
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__34809;
  v10 = __Block_byref_object_dispose__34810;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __31__MPCRequestController_request__block_invoke;
  v5[3] = &unk_1E82394D8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)dealloc
{
  v10 = *MEMORY[0x1E69E9840];
  MEMORY[0x1C6955540](self->_stateHandle, a2);
  if (self->_shouldAutomaticallyLoad)
  {
    v3 = os_log_create("com.apple.amp.mediaplaybackcore", "Middleware");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      request = self->_request;
      *buf = 134218240;
      v7 = self;
      v8 = 2048;
      v9 = request;
      _os_log_impl(&dword_1C5C61000, v3, OS_LOG_TYPE_DEFAULT, "[RCO:%p:%p] dealloc | ending automatic reloading", buf, 0x16u);
    }
  }

  v5.receiver = self;
  v5.super_class = MPCRequestController;
  [(MPCRequestController *)&v5 dealloc];
}

- (MPCRequestController)init
{
  v13.receiver = self;
  v13.super_class = MPCRequestController;
  v2 = [(MPCRequestController *)&v13 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.MediaPlaybackCore/MPCRequestController", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_attr_make_with_qos_class(v6, QOS_CLASS_USER_INITIATED, 0);
    v8 = dispatch_queue_create("com.apple.MediaPlaybackCore/MPCRequestController.calloutQueue", v7);
    calloutQueue = v2->_calloutQueue;
    v2->_calloutQueue = v8;

    v2->_retryInterval = 0.25;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __28__MPCRequestController_init__block_invoke;
    v11[3] = &unk_1E8239270;
    v12 = v2;
    v12->_stateHandle = __28__MPCRequestController_init__block_invoke(v11);
  }

  return v2;
}

uint64_t __28__MPCRequestController_init__block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  objc_copyWeak(&v3, &location);
  v1 = MSVLogAddStateHandler();
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
  return v1;
}

uint64_t __28__MPCRequestController_init__block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v7 = WeakRetained;
    if (WeakRetained)
    {
      v8 = [WeakRetained _onQueue_stateDictionary];
      v9 = v5[2](v5, v8);
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

@end