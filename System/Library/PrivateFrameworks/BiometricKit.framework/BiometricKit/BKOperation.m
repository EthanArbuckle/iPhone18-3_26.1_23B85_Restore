@interface BKOperation
- (BKOperation)initWithDevice:(id)a3;
- (BKOperationDelegate)delegate;
- (BOOL)isDelegate;
- (BOOL)startWithError:(id *)a3;
- (id)dispatchQueue;
- (id)userPresentWithError:(id *)a3;
- (void)cancel;
- (void)changeState:(int64_t)a3;
- (void)connectionInterrupted;
- (void)dealloc;
- (void)operationEndsWithReason:(int64_t)a3;
- (void)setDelegate:(id)a3;
- (void)startBioOperation:(BOOL)a3 reply:(id)a4;
- (void)startWithReply:(id)a3;
- (void)statusMessage:(unsigned int)a3 client:(unint64_t)a4;
@end

@implementation BKOperation

- (void)cancel
{
  v12 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  v3 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v4 = __osLogTrace;
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    xpcClient = self->_xpcClient;
    v6 = v4;
    v10 = 134217984;
    v11 = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v6, OS_LOG_TYPE_DEFAULT, "BKOperation::cancel (_cid:%lu)\n", &v10, 0xCu);
  }

  v7 = self;
  objc_sync_enter(v7);
  if (v7->_state != 4)
  {
    v7->_cancelPending = 1;
    [(BiometricKitXPCClient *)v7->_xpcClient cancel];
  }

  objc_sync_exit(v7);

  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = v3;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&dword_1C82AD000, v8, OS_LOG_TYPE_DEFAULT, "BKOperation::cancel -> void\n", &v10, 2u);
  }

  kdebug_trace();
  v9 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  objc_storeWeak(&self->_delegate, 0);
  [(BiometricKitXPCClient *)self->_xpcClient setDelegate:0];
  v3 = self->_xpcClient;
  v4 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __22__BKOperation_dealloc__block_invoke;
  block[3] = &unk_1E8303E78;
  v9 = v3;
  v5 = v3;
  dispatch_async(v4, block);

  xpcClient = self->_xpcClient;
  self->_xpcClient = 0;

  v7.receiver = self;
  v7.super_class = BKOperation;
  [(BKOperation *)&v7 dealloc];
}

- (BOOL)isDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = WeakRetained != 0;

  return v3;
}

- (BKOperation)initWithDevice:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  kdebug_trace();
  v6 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v7 = __osLogTrace;
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = v5;
    _os_log_impl(&dword_1C82AD000, v7, OS_LOG_TYPE_DEFAULT, "BKOperation::initWithDevice: %@\n", buf, 0xCu);
  }

  v22.receiver = self;
  v22.super_class = BKOperation;
  v8 = [(BKOperation *)&v22 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_device, a3);
    v9->_state = 1;
    v10 = [BiometricKitXPCClient alloc];
    v11 = [(BKOperation *)v5 descriptor];
    v12 = -[BiometricKitXPCClient initWithDeviceType:clientType:](v10, "initWithDeviceType:clientType:", [v11 type], 3);
    xpcClient = v9->_xpcClient;
    v9->_xpcClient = v12;

    v14 = v9->_xpcClient;
    if (v14)
    {
      [(BiometricKitXPCClient *)v14 setDelegate:v9];
    }

    if (__osLogTrace)
    {
      v15 = __osLogTrace;
    }

    else
    {
      v15 = v6;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v9->_xpcClient;
      v17 = v15;
      v18 = [(BiometricKitXPCClient *)v16 connectionId];
      *buf = 138412546;
      v24 = v9;
      v25 = 2048;
      v26 = v18;
      _os_log_impl(&dword_1C82AD000, v17, OS_LOG_TYPE_DEFAULT, "BKOperation::initWithDevice: -> %@ (_cid:%lu)\n", buf, 0x16u);
    }
  }

  else
  {
    if (__osLogTrace)
    {
      v19 = __osLogTrace;
    }

    else
    {
      v19 = v6;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v24 = 0;
      v25 = 2048;
      v26 = 0;
      _os_log_impl(&dword_1C82AD000, v19, OS_LOG_TYPE_ERROR, "BKOperation::initWithDevice: -> %@ (_cid:%lu)\n", buf, 0x16u);
    }
  }

  kdebug_trace();

  v20 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)setDelegate:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    xpcClient = self->_xpcClient;
    v8 = v6;
    v12 = 138412546;
    v13 = v4;
    v14 = 2048;
    v15 = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v8, OS_LOG_TYPE_DEFAULT, "BKOperation::setDelegate: %@ (_cid:%lu)\n", &v12, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != v4)
  {
    objc_storeWeak(&self->_delegate, v4);
    [(BiometricKitXPCClient *)self->_xpcClient registerDelegate:v4 != 0];
  }

  if (__osLogTrace)
  {
    v10 = __osLogTrace;
  }

  else
  {
    v10 = v5;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&dword_1C82AD000, v10, OS_LOG_TYPE_DEFAULT, "BKOperation::setDelegate: -> void\n", &v12, 2u);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)dispatchQueue
{
  queue = self->_queue;
  if (queue)
  {
    v3 = queue;
  }

  else
  {
    v3 = MEMORY[0x1E69E96A0];
    v4 = MEMORY[0x1E69E96A0];
  }

  return v3;
}

- (void)connectionInterrupted
{
  obj = self;
  objc_sync_enter(obj);
  state = obj->_state;
  if (state != 1 && state != 4)
  {
    [(BKOperation *)obj operationInterrupted];
  }

  objc_sync_exit(obj);
}

- (void)startBioOperation:(BOOL)a3 reply:(id)a4
{
  v6 = 0;
  v4 = a4;
  setError(1, &v6);
  v5 = v6;
  v4[2](v4, 0, v5);
}

void __36__BKOperation_startOperation_reply___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
  }

  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 67109378;
      v12 = 1;
      v13 = 2112;
      v14 = v5;
      v7 = v6;
      v8 = OS_LOG_TYPE_DEFAULT;
LABEL_9:
      _os_log_impl(&dword_1C82AD000, v7, v8, "BKOperation::startOperation: -> reply(%d, %@)\n", &v11, 0x12u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v11 = 67109378;
    v12 = 0;
    v13 = 2112;
    v14 = v5;
    v7 = v6;
    v8 = OS_LOG_TYPE_ERROR;
    goto LABEL_9;
  }

  kdebug_trace();
  (*(*(a1 + 32) + 16))(*(a1 + 32), a2, v5, v9);

  v10 = *MEMORY[0x1E69E9840];
}

void __36__BKOperation_startOperation_reply___block_invoke_9(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  objc_sync_enter(v6);
  v7 = *(a1 + 32);
  if (a2)
  {
    if (*(v7 + 48) == 1)
    {
      [*(a1 + 32) changeState:2];
      v7 = *(a1 + 32);
    }

    if (*(v7 + 17) == 1)
    {
      v8 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __36__BKOperation_startOperation_reply___block_invoke_2;
      block[3] = &unk_1E8303E78;
      block[4] = v7;
      dispatch_async(v8, block);

      v7 = *(a1 + 32);
    }
  }

  *(v7 + 16) = 0;
  objc_sync_exit(v6);

  (*(*(a1 + 40) + 16))();
}

- (BOOL)startWithError:(id *)a3
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __30__BKOperation_startWithError___block_invoke;
  v6[3] = &unk_1E8304308;
  v6[4] = &v13;
  v6[5] = &v7;
  [(BKOperation *)self startOperation:0 reply:v6];
  if (a3)
  {
    *a3 = v8[5];
  }

  v4 = *(v14 + 24);
  _Block_object_dispose(&v7, 8);

  _Block_object_dispose(&v13, 8);
  return v4;
}

- (void)startWithReply:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __30__BKOperation_startWithReply___block_invoke;
  v6[3] = &unk_1E8304358;
  v7 = v4;
  v5 = v4;
  [(BKOperation *)self startOperation:1 reply:v6];
}

void __30__BKOperation_startWithReply___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__BKOperation_startWithReply___block_invoke_2;
  block[3] = &unk_1E8304330;
  v7 = *(a1 + 32);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

- (id)userPresentWithError:(id *)a3
{
  *&v20[5] = *MEMORY[0x1E69E9840];
  kdebug_trace();
  v5 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    xpcClient = self->_xpcClient;
    v8 = v6;
    v19 = 134217984;
    *v20 = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v8, OS_LOG_TYPE_DEFAULT, "BKOperation::userPresent (_cid:%lu)\n", &v19, 0xCu);
  }

  v9 = [(BiometricKitXPCClient *)self->_xpcClient isFingerOn];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:v9];
  v11 = v10;
  if (__osLogTrace)
  {
    v12 = __osLogTrace;
  }

  else
  {
    v12 = v5;
  }

  if (v10)
  {
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    if (a3)
    {
      v13 = *a3;
    }

    else
    {
      v13 = 0;
    }

    v19 = 67109378;
    v20[0] = v9;
    LOWORD(v20[1]) = 2112;
    *(&v20[1] + 2) = v13;
    v15 = v12;
    v16 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    if (a3)
    {
      v14 = *a3;
    }

    else
    {
      v14 = 0;
    }

    v19 = 67109378;
    v20[0] = v9;
    LOWORD(v20[1]) = 2112;
    *(&v20[1] + 2) = v14;
    v15 = v12;
    v16 = OS_LOG_TYPE_ERROR;
  }

  _os_log_impl(&dword_1C82AD000, v15, v16, "BKOperation::userPresent -> %d, error:%@\n", &v19, 0x12u);
LABEL_21:
  kdebug_trace();
  v17 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)changeState:(int64_t)a3
{
  v16 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  v5 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v15 = a3;
    _os_log_impl(&dword_1C82AD000, v6, OS_LOG_TYPE_DEFAULT, "BKOperation::changeState: %ld\n", buf, 0xCu);
  }

  v7 = self;
  objc_sync_enter(v7);
  if (v7->_state != a3)
  {
    WeakRetained = objc_loadWeakRetained(&v7->_delegate);
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = [(BKOperation *)v7 dispatchQueue];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __27__BKOperation_changeState___block_invoke;
      v13[3] = &unk_1E8303D98;
      v13[4] = v7;
      v13[5] = a3;
      dispatch_async(v10, v13);
    }

    v7->_state = a3;
  }

  objc_sync_exit(v7);

  if (__osLogTrace)
  {
    v11 = __osLogTrace;
  }

  else
  {
    v11 = v5;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C82AD000, v11, OS_LOG_TYPE_DEFAULT, "BKOperation::changeState: -> void\n", buf, 2u);
  }

  kdebug_trace();
  v12 = *MEMORY[0x1E69E9840];
}

void __27__BKOperation_changeState___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  [WeakRetained operation:*(a1 + 32) stateChanged:*(a1 + 40)];
}

- (void)operationEndsWithReason:(int64_t)a3
{
  v19 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  v5 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    xpcClient = self->_xpcClient;
    v8 = v6;
    *buf = 134218240;
    v16 = a3;
    v17 = 2048;
    v18 = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v8, OS_LOG_TYPE_DEFAULT, "BKOperation::operationEndsWithReason: %ld (_cid:%lu)\n", buf, 0x16u);
  }

  [(BKOperation *)self changeState:4];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(BKOperation *)self dispatchQueue];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __39__BKOperation_operationEndsWithReason___block_invoke;
    v14[3] = &unk_1E8303D98;
    v14[4] = self;
    v14[5] = a3;
    dispatch_async(v11, v14);
  }

  [(BiometricKitXPCClient *)self->_xpcClient setDelegate:0];
  [(BiometricKitXPCClient *)self->_xpcClient invalidateConnection];
  if (__osLogTrace)
  {
    v12 = __osLogTrace;
  }

  else
  {
    v12 = v5;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C82AD000, v12, OS_LOG_TYPE_DEFAULT, "BKOperation::operationEndsWithReason: -> void\n", buf, 2u);
  }

  kdebug_trace();
  v13 = *MEMORY[0x1E69E9840];
}

void __39__BKOperation_operationEndsWithReason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  [WeakRetained operation:*(a1 + 32) finishedWithReason:*(a1 + 40)];
}

- (void)statusMessage:(unsigned int)a3 client:(unint64_t)a4
{
  v24 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  v7 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v21 = a3;
    v22 = 2048;
    v23 = a4;
    _os_log_impl(&dword_1C82AD000, v8, OS_LOG_TYPE_DEFAULT, "BKOperation::statusMessage:client: %u, client:%llu\n", buf, 0x12u);
  }

  if (a3 > 65)
  {
    if (a3 <= 73)
    {
      if (a3 == 66)
      {
        goto LABEL_29;
      }

      if (a3 == 67)
      {
        goto LABEL_25;
      }

      if (a3 != 68)
      {
        goto LABEL_40;
      }
    }

    else
    {
      if (a3 <= 98)
      {
        if (a3 == 74)
        {
          v14 = self;
          v15 = 5;
          goto LABEL_39;
        }

        if (a3 != 80)
        {
          goto LABEL_40;
        }

LABEL_29:
        v9 = self;
        v10 = 2;
        goto LABEL_30;
      }

      if (a3 == 99)
      {
        goto LABEL_29;
      }

      if (a3 != 502)
      {
        goto LABEL_40;
      }
    }

    v9 = self;
    v10 = 4;
    goto LABEL_30;
  }

  if (a3 <= 61)
  {
    if (a3 <= 59)
    {
      if (a3 != 51)
      {
        if (a3 != 58)
        {
          goto LABEL_40;
        }

        goto LABEL_20;
      }

      goto LABEL_25;
    }

    if (a3 == 60)
    {
      v14 = self;
      v15 = 3;
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (a3 - 63 >= 2)
  {
    if (a3 != 62)
    {
      if (a3 != 65)
      {
        goto LABEL_40;
      }

LABEL_20:
      v9 = self;
      v10 = 1;
LABEL_30:
      [(BKOperation *)v9 operationEndsWithReason:v10];
      goto LABEL_40;
    }

LABEL_25:
    v9 = self;
    v10 = 3;
    goto LABEL_30;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [(BKOperation *)self dispatchQueue];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __36__BKOperation_statusMessage_client___block_invoke;
    v18[3] = &unk_1E8304258;
    v18[4] = self;
    v19 = a3;
    dispatch_async(v13, v18);
  }

  if (a3 == 64)
  {
LABEL_36:
    v14 = self;
    v15 = 2;
LABEL_39:
    [(BKOperation *)v14 changeState:v15];
  }

LABEL_40:
  if (__osLogTrace)
  {
    v16 = __osLogTrace;
  }

  else
  {
    v16 = v7;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C82AD000, v16, OS_LOG_TYPE_DEFAULT, "BKOperation::statusMessage:client: -> void\n", buf, 2u);
  }

  kdebug_trace();
  v17 = *MEMORY[0x1E69E9840];
}

void __36__BKOperation_statusMessage_client___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  [WeakRetained operation:*(a1 + 32) presenceStateChanged:*(a1 + 40) == 63];
}

- (BKOperationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)startOperation:reply:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

@end