@interface MAXpcManager
- (MAXpcManager)initWithServiceName:(id)a3 callbackQueue:(id)a4;
- (id)progressCallbacksForAssetType:(id)a3 assetId:(id)a4 withPurpose:(id)a5;
- (id)sendSync:(id)a3 gettingResponseCode:(int64_t *)a4 codeForXpcError:(int64_t)int64 loggingName:(id)a6;
- (void)attachProgressHandler:(id)a3 assetId:(id)a4 callBack:(id)a5 withPurpose:(id)a6;
- (void)clearConnection:(id)a3;
- (void)ensureConnection;
- (void)notifyClientsOfProgress:(id)a3;
- (void)restoreProgressCallbacks:(id)a3 assetType:(id)a4 assetId:(id)a5 withPurpose:(id)a6;
- (void)sendAsync:(id)a3 clientHandler:(id)a4 taskDescriptor:(id)a5 withRetry:(BOOL)a6 retryInitialReconnectionCount:(unint64_t)a7;
- (void)setClientConnectionHandler;
- (void)setClientName:(id)a3;
@end

@implementation MAXpcManager

- (void)ensureConnection
{
  v11 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_stateQueue);
  if (self->_serviceName && !self->_maConnection)
  {
    v3 = [[MAXpcConnection alloc] initWithServiceName:self->_serviceName];
    maConnection = self->_maConnection;
    self->_maConnection = v3;

    if (self->_maConnection)
    {
      [(MAXpcManager *)self setClientConnectionHandler];
      v5 = [(MAXpcConnection *)self->_maConnection connection];
      xpc_connection_activate(v5);

      v6 = _MAClientLog(@"V2");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [(MAXpcConnection *)self->_maConnection connectionId];
        v9 = 138543362;
        v10 = v7;
        _os_log_impl(&dword_197AD5000, v6, OS_LOG_TYPE_DEFAULT, "Creating client/daemon connection: %{public}@", &v9, 0xCu);
      }
    }

    else
    {
      v6 = _MAClientLog(@"V2");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v9) = 0;
        _os_log_impl(&dword_197AD5000, v6, OS_LOG_TYPE_ERROR, "Could not ensure maConnection, xpc communication will fail", &v9, 2u);
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setClientConnectionHandler
{
  v3 = [(MAXpcConnection *)self->_maConnection connection];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __42__MAXpcManager_setClientConnectionHandler__block_invoke;
  handler[3] = &unk_1E74CA918;
  handler[4] = self;
  xpc_connection_set_event_handler(v3, handler);
}

- (void)clearConnection:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_stateQueue);
  maConnection = self->_maConnection;
  v6 = _MAClientLog(@"V2");
  p_super = v6;
  if (!maConnection)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_197AD5000, p_super, OS_LOG_TYPE_DEFAULT, "Connection invalid, connection already nil so ignoring", &v15, 2u);
    }

    goto LABEL_17;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&dword_197AD5000, p_super, OS_LOG_TYPE_ERROR, "Connection invalid, checking connection", &v15, 2u);
  }

  if (!v4 || [(MAXpcConnection *)self->_maConnection notValid])
  {
    goto LABEL_6;
  }

  string = xpc_dictionary_get_string(v4, "connectionIdentifier");
  if (string)
  {
    p_super = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
    v11 = self->_maConnection;
    if (v11 && p_super)
    {
      v12 = [(MAXpcConnection *)v11 connectionId];
      v13 = [v12 isEqualToString:p_super];

      if (!v13)
      {
        goto LABEL_18;
      }

LABEL_6:
      v8 = _MAClientLog(@"V2");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [(MAXpcConnection *)self->_maConnection connectionId];
        v15 = 138543362;
        v16 = v9;
        _os_log_impl(&dword_197AD5000, v8, OS_LOG_TYPE_DEFAULT, "connection cleared: %{public}@", &v15, 0xCu);
      }

      p_super = &self->_maConnection->super;
      self->_maConnection = 0;
    }
  }

  else
  {
    p_super = 0;
  }

LABEL_17:

LABEL_18:
  v14 = *MEMORY[0x1E69E9840];
}

- (void)setClientName:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a3;
  v6 = [v3 stringWithFormat:@"%s", getprogname()];
  v5 = v6;
  xpc_dictionary_set_string(v4, "clientName", [v6 UTF8String]);
}

- (id)sendSync:(id)a3 gettingResponseCode:(int64_t *)a4 codeForXpcError:(int64_t)int64 loggingName:(id)a6
{
  v39 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a6;
  [(MAXpcManager *)self setClientName:v10];
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__3;
  v35 = __Block_byref_object_dispose__3;
  v36 = 0;
  stateQueue = self->_stateQueue;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __73__MAXpcManager_sendSync_gettingResponseCode_codeForXpcError_loggingName___block_invoke;
  v27[3] = &unk_1E74CA828;
  v27[4] = self;
  v13 = v10;
  v28 = v13;
  v30 = &v31;
  v14 = v11;
  v29 = v14;
  dispatch_sync(stateQueue, v27);
  v20 = v32[5];
  if (v20)
  {
    v21 = MEMORY[0x19A8EC930](v20, v15, v16, v17, v18, v19);
    if (v21 == MEMORY[0x1E69E9E80])
    {
      int64 = xpc_dictionary_get_int64(v32[5], "Result");
      goto LABEL_11;
    }

    if (v21 == MEMORY[0x1E69E9E98])
    {
      v22 = _MAClientLog(@"V2");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v38 = v14;
        v23 = "%{public}@ Received XPC error for message sent to mobileassetd";
        goto LABEL_9;
      }
    }

    else
    {
      v22 = _MAClientLog(@"V2");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v38 = v14;
        v23 = "%{public}@ Received XPC error for message sent to mobileassetd: unexpected xpc type for reply";
LABEL_9:
        _os_log_impl(&dword_197AD5000, v22, OS_LOG_TYPE_DEFAULT, v23, buf, 0xCu);
      }
    }
  }

LABEL_11:
  if (a4)
  {
    *a4 = int64;
  }

  v24 = v32[5];

  _Block_object_dispose(&v31, 8);
  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

void __73__MAXpcManager_sendSync_gettingResponseCode_codeForXpcError_loggingName___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) ensureConnection];
  v2 = *(*(a1 + 32) + 8);
  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = [v2 connectionId];
    xpc_dictionary_set_string(v3, "connectionIdentifier", [v4 UTF8String]);

    v5 = [*(*(a1 + 32) + 8) connection];
    v6 = xpc_connection_send_message_with_reply_sync(v5, *(a1 + 40));
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = MEMORY[0x19A8EC930](*(*(*(a1 + 56) + 8) + 40));
    v10 = MEMORY[0x1E69E9E98];
    if (v9 != MEMORY[0x1E69E9E98])
    {
      goto LABEL_10;
    }

    v11 = *(*(*(a1 + 56) + 8) + 40);
    if (v11 != MEMORY[0x1E69E9E18])
    {
      goto LABEL_4;
    }

    v15 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 40);
      v16 = *(a1 + 48);
      v22 = 138543618;
      v23 = v16;
      v24 = 2114;
      v25 = v17;
      _os_log_impl(&dword_197AD5000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ mobileassetd connection interrupted - retrying sync message: %{public}@", &v22, 0x16u);
    }

    v18 = [*(*(a1 + 32) + 8) connection];
    v19 = xpc_connection_send_message_with_reply_sync(v18, *(a1 + 40));
    v20 = *(*(a1 + 56) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;

    if (MEMORY[0x19A8EC930](*(*(*(a1 + 56) + 8) + 40)) == v10)
    {
      v11 = *(*(*(a1 + 56) + 8) + 40);
LABEL_4:
      if (v11 == MEMORY[0x1E69E9E20])
      {
        [*(a1 + 32) clearConnection:*(a1 + 40)];
      }
    }
  }

  else
  {
    v12 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&dword_197AD5000, v12, OS_LOG_TYPE_DEFAULT, "No active XPC connection to mobileassetd", &v22, 2u);
    }

    v13 = *(*(*(a1 + 56) + 8) + 40);
    if (v13)
    {
      xpc_dictionary_set_int64(v13, "Result", 1);
    }
  }

LABEL_10:
  v14 = *MEMORY[0x1E69E9840];
}

- (void)sendAsync:(id)a3 clientHandler:(id)a4 taskDescriptor:(id)a5 withRetry:(BOOL)a6 retryInitialReconnectionCount:(unint64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x2020000000;
  v38[3] = 0;
  [(MAXpcManager *)self setClientName:v12];
  objc_initWeak(&location, self);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __95__MAXpcManager_sendAsync_clientHandler_taskDescriptor_withRetry_retryInitialReconnectionCount___block_invoke;
  v29[3] = &unk_1E74CA878;
  v36 = a6;
  v34 = v38;
  objc_copyWeak(&v35, &location);
  v15 = v12;
  v30 = v15;
  v16 = v13;
  v32 = self;
  v33 = v16;
  v31 = v14;
  v17 = v14;
  v18 = MEMORY[0x19A8EC5D0](v29);
  stateQueue = self->_stateQueue;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __95__MAXpcManager_sendAsync_clientHandler_taskDescriptor_withRetry_retryInitialReconnectionCount___block_invoke_2;
  v23[3] = &unk_1E74CA8C8;
  v23[4] = self;
  v24 = v15;
  v27 = v38;
  v28 = a7;
  v25 = v18;
  v26 = v16;
  v20 = v16;
  v21 = v18;
  v22 = v15;
  dispatch_async(stateQueue, v23);

  objc_destroyWeak(&v35);
  objc_destroyWeak(&location);
  _Block_object_dispose(v38, 8);
}

void __95__MAXpcManager_sendAsync_clientHandler_taskDescriptor_withRetry_retryInitialReconnectionCount___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (MEMORY[0x19A8EC930]() != MEMORY[0x1E69E9E98])
  {
    goto LABEL_2;
  }

  if (v3 != MEMORY[0x1E69E9E18])
  {
    if (v3 == MEMORY[0x1E69E9E20])
    {
      v13 = *(a1 + 48);
      v14 = *(v13 + 16);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __95__MAXpcManager_sendAsync_clientHandler_taskDescriptor_withRetry_retryInitialReconnectionCount___block_invoke_1122;
      block[3] = &unk_1E74CA850;
      block[4] = v13;
      v18 = *(a1 + 32);
      dispatch_async(v14, block);
    }

    else
    {
      v9 = _MAClientLog(@"V2");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_197AD5000, v9, OS_LOG_TYPE_DEFAULT, "xpc error that can be ignored", buf, 2u);
      }
    }

    goto LABEL_2;
  }

  if (*(a1 + 80) != 1)
  {
LABEL_2:
    v4 = *(a1 + 56);
    if (v4)
    {
      (*(v4 + 16))(v4, v3);
    }

    v5 = *(a1 + 40);
    if (v5)
    {
      v6 = *(a1 + 48);
      v7 = *(v6 + 32);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __95__MAXpcManager_sendAsync_clientHandler_taskDescriptor_withRetry_retryInitialReconnectionCount___block_invoke_1123;
      v15[3] = &unk_1E74CA850;
      v15[4] = v6;
      v16 = v5;
      dispatch_async(v7, v15);
    }

    goto LABEL_6;
  }

  v10 = _MAClientLog(@"V2");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(*(*(a1 + 64) + 8) + 24);
    *buf = 134217984;
    v20 = v11;
    _os_log_impl(&dword_197AD5000, v10, OS_LOG_TYPE_DEFAULT, "Retrying message (original _connectionRetryCount: %llu", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 72));
  [WeakRetained sendAsync:*(a1 + 32) clientHandler:*(a1 + 56) taskDescriptor:*(a1 + 40) withRetry:0 retryInitialReconnectionCount:*(*(*(a1 + 64) + 8) + 24)];

LABEL_6:
  v8 = *MEMORY[0x1E69E9840];
}

void __95__MAXpcManager_sendAsync_clientHandler_taskDescriptor_withRetry_retryInitialReconnectionCount___block_invoke_1123(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  if (v2)
  {
    v3 = [v2 objectForKey:*(a1 + 40)];

    if (v3)
    {
      v4 = *(a1 + 40);
      v5 = *(*(a1 + 32) + 48);

      [v5 removeObjectForKey:v4];
    }
  }
}

void __95__MAXpcManager_sendAsync_clientHandler_taskDescriptor_withRetry_retryInitialReconnectionCount___block_invoke_2(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) ensureConnection];
  v2 = *(*(a1 + 32) + 8);
  if (v2)
  {
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v35 = 0;
    v3 = *(a1 + 40);
    v4 = [v2 connectionId];
    v5 = v4;
    xpc_dictionary_set_string(v3, "connectionIdentifier", [v4 UTF8String]);

    *(*(*(a1 + 64) + 8) + 24) = *(*(a1 + 32) + 56);
    v6 = [*(*(a1 + 32) + 8) connection];
    v7 = *(*(a1 + 32) + 24);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __95__MAXpcManager_sendAsync_clientHandler_taskDescriptor_withRetry_retryInitialReconnectionCount___block_invoke_3;
    v26[3] = &unk_1E74CA8A0;
    v31 = &v32;
    v8 = v6;
    v27 = v8;
    v28 = *(a1 + 40);
    v9 = v7;
    v29 = v9;
    v30 = *(a1 + 48);
    v10 = MEMORY[0x19A8EC5D0](v26);
    v11 = v10;
    if (*(*(*(a1 + 64) + 8) + 24) <= *(a1 + 72))
    {
      v14 = _MAClientLog(@"V2");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 72);
        v16 = *(*(*(a1 + 64) + 8) + 24);
        *buf = 134218240;
        v37 = v15;
        v38 = 2048;
        v39 = v16;
        _os_log_impl(&dword_197AD5000, v14, OS_LOG_TYPE_DEFAULT, "Need to wait to retry message send: originalReconnectionCount = %llu, currentReconnectionCount = %llu", buf, 0x16u);
      }

      if (!*(*(a1 + 32) + 64))
      {
        v17 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
        v18 = *(a1 + 32);
        v19 = *(v18 + 64);
        *(v18 + 64) = v17;
      }

      *(v33 + 24) = 1;
      v20 = *(*(a1 + 32) + 64);
      v21 = [v11 copy];
      [v20 addObject:v21];
    }

    else
    {
      (*(v10 + 16))(v10);
    }

    _Block_object_dispose(&v32, 8);
    goto LABEL_12;
  }

  xpc_dictionary_set_int64(*(a1 + 40), "Result", 1);
  v12 = *(a1 + 56);
  if (v12)
  {
    v13 = *(*(a1 + 32) + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __95__MAXpcManager_sendAsync_clientHandler_taskDescriptor_withRetry_retryInitialReconnectionCount___block_invoke_1126;
    block[3] = &unk_1E74C9888;
    v25 = v12;
    v24 = *(a1 + 40);
    dispatch_async(v13, block);

    v8 = v25;
LABEL_12:
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __95__MAXpcManager_sendAsync_clientHandler_taskDescriptor_withRetry_retryInitialReconnectionCount___block_invoke_3(uint64_t a1)
{
  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    v2 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_197AD5000, v2, OS_LOG_TYPE_DEFAULT, "Retrying message send", v3, 2u);
    }
  }

  xpc_connection_send_message_with_reply(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56));
}

void __42__MAXpcManager_setClientConnectionHandler__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x19A8EC930]();
  if (v4 == MEMORY[0x1E69E9E68])
  {
    v5 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = "The client got a connection request";
      v7 = v5;
      v8 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  if (v4 == MEMORY[0x1E69E9E98])
  {
    if (v3 == MEMORY[0x1E69E9E20])
    {
      v12 = *(a1 + 32);
      v13 = *(v12 + 16);
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __42__MAXpcManager_setClientConnectionHandler__block_invoke_1127;
      v17[3] = &unk_1E74CA8F0;
      v17[4] = v12;
      v14 = v17;
    }

    else
    {
      if (v3 == MEMORY[0x1E69E9E38])
      {
        v5 = _MAClientLog(@"V2");
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_10;
        }

        *buf = 0;
        v6 = "termination imminent";
        goto LABEL_6;
      }

      v9 = MEMORY[0x1E69E9E18];
      v10 = _MAClientLog(@"V2");
      v11 = v10;
      if (v3 != v9)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_197AD5000, v11, OS_LOG_TYPE_ERROR, "Unknown Error", buf, 2u);
        }

        goto LABEL_11;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_197AD5000, v11, OS_LOG_TYPE_DEFAULT, "MobileAsset XPC connection interrupted", buf, 2u);
      }

      v15 = *(a1 + 32);
      v13 = *(v15 + 16);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __42__MAXpcManager_setClientConnectionHandler__block_invoke_1128;
      v16[3] = &unk_1E74CA8F0;
      v16[4] = v15;
      v14 = v16;
    }

    dispatch_async(v13, v14);
    goto LABEL_11;
  }

  if (v4 != MEMORY[0x1E69E9E80])
  {
    v5 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v6 = "Client connection handler received unknown";
LABEL_6:
      v7 = v5;
      v8 = OS_LOG_TYPE_ERROR;
LABEL_9:
      _os_log_impl(&dword_197AD5000, v7, v8, v6, buf, 2u);
    }

LABEL_10:

    goto LABEL_11;
  }

  if (xpc_dictionary_get_int64(v3, "messageAction") == 11)
  {
    [*(a1 + 32) notifyClientsOfProgress:v3];
  }

LABEL_11:
}

uint64_t __42__MAXpcManager_setClientConnectionHandler__block_invoke_1128(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  ++*(*(a1 + 32) + 56);
  v2 = _MAClientLog(@"V2");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 56);
    *buf = 134217984;
    v17 = v3;
    _os_log_impl(&dword_197AD5000, v2, OS_LOG_TYPE_DEFAULT, "Incrementing _connectionRetryCount: %llu", buf, 0xCu);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = *(*(a1 + 32) + 64);
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v11 + 1) + 8 * v8) + 16))(*(*(&v11 + 1) + 8 * v8));
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  result = [*(*(a1 + 32) + 64) removeAllObjects];
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)notifyClientsOfProgress:(id)a3
{
  v4 = a3;
  progressQueue = self->_progressQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__MAXpcManager_notifyClientsOfProgress___block_invoke;
  v7[3] = &unk_1E74CA850;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(progressQueue, v7);
}

void __40__MAXpcManager_notifyClientsOfProgress___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  int64 = xpc_dictionary_get_int64(*(a1 + 32), "TotalExpected");
  v4 = xpc_dictionary_get_int64(*(a1 + 32), "totalWritten");
  string = xpc_dictionary_get_string(*(a1 + 32), "taskDescriptor");
  if (!string)
  {
    v10 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v17 = "Skipping progress notification for empty task descriptor char";
LABEL_13:
      _os_log_impl(&dword_197AD5000, v10, OS_LOG_TYPE_DEFAULT, v17, buf, 2u);
    }

LABEL_14:
    v7 = 0;
LABEL_15:

    goto LABEL_16;
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
  if (!v6)
  {
    v10 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v17 = "Skipping progress notification for empty task descriptor";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v7 = v6;
  v8 = *(*(a1 + 40) + 48);
  if (!v8)
  {
    v10 = _MAClientLog(@"V2");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_197AD5000, v10, OS_LOG_TYPE_DEFAULT, "Notified of progress while not having any registered progress handlers", buf, 2u);
    }

    goto LABEL_15;
  }

  v9 = [v8 objectForKey:v7];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 callBackArray];
    if (v11)
    {
      v12 = v11;
      v13 = objc_opt_new();
      if (v13)
      {
        v14 = v13;
        [v13 setTotalWritten:v4];
        [v14 setTotalExpected:int64];
        [v14 setExpectedTimeRemaining:xpc_dictionary_get_double(*(a1 + 32), "TimeEstimate")];
        [v14 setIsStalled:xpc_dictionary_get_BOOL(*(a1 + 32), "IsStalled")];
        v15 = xpc_dictionary_get_string(*(a1 + 32), "TaskID");
        if (v15)
        {
          v16 = [MEMORY[0x1E696AEC0] stringWithCString:v15 encoding:1];
          [v14 setTaskDescription:v16];
        }

        else
        {
          [v14 setTaskDescription:?];
        }

        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v12 = v12;
        v20 = [v12 countByEnumeratingWithState:&v26 objects:v31 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v27;
          do
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v27 != v22)
              {
                objc_enumerationMutation(v12);
              }

              v24 = *(*(&v26 + 1) + 8 * i);
              v25 = objc_autoreleasePoolPush();
              if (v24)
              {
                (*(v24 + 16))(v24, v14);
              }

              objc_autoreleasePoolPop(v25);
            }

            v21 = [v12 countByEnumeratingWithState:&v26 objects:v31 count:16];
          }

          while (v21);
        }
      }

      else
      {
        v14 = _MAClientLog(@"V2");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_197AD5000, v14, OS_LOG_TYPE_DEFAULT, "Skipping progress notification as object could not be allocated", buf, 2u);
        }
      }
    }

    else
    {
      v19 = _MAClientLog(@"V2");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_197AD5000, v19, OS_LOG_TYPE_DEFAULT, "Skipping progress notification for empty callBack array", buf, 2u);
      }
    }

    goto LABEL_15;
  }

LABEL_16:

  objc_autoreleasePoolPop(v2);
  v18 = *MEMORY[0x1E69E9840];
}

- (void)attachProgressHandler:(id)a3 assetId:(id)a4 callBack:(id)a5 withPurpose:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  progressQueue = self->_progressQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__MAXpcManager_attachProgressHandler_assetId_callBack_withPurpose___block_invoke;
  block[3] = &unk_1E74CA940;
  v20 = v10;
  v21 = v11;
  v22 = v13;
  v23 = self;
  v24 = v12;
  v15 = v12;
  v16 = v13;
  v17 = v11;
  v18 = v10;
  dispatch_async(progressQueue, block);
}

void __67__MAXpcManager_attachProgressHandler_assetId_callBack_withPurpose___block_invoke(uint64_t a1)
{
  v2 = normalizedAssetType(*(a1 + 32));
  v6 = assembleTaskDescriptorWithPurpose(v2, *(a1 + 40), *(a1 + 48));

  v3 = [*(*(a1 + 56) + 48) objectForKey:v6];
  v4 = v3;
  if (v3)
  {
    [v3 addCallBack:*(a1 + 64)];
  }

  else
  {
    v5 = [[MAProgressHandler alloc] initWithCallBack:*(a1 + 64)];
    [*(*(a1 + 56) + 48) setObject:v5 forKey:v6];
  }
}

- (void)restoreProgressCallbacks:(id)a3 assetType:(id)a4 assetId:(id)a5 withPurpose:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v10 && [v10 count])
  {
    progressQueue = self->_progressQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __71__MAXpcManager_restoreProgressCallbacks_assetType_assetId_withPurpose___block_invoke;
    block[3] = &unk_1E74CA968;
    v16 = v11;
    v17 = v12;
    v18 = v13;
    v19 = self;
    v20 = v10;
    dispatch_sync(progressQueue, block);
  }
}

void __71__MAXpcManager_restoreProgressCallbacks_assetType_assetId_withPurpose___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = normalizedAssetType(*(a1 + 32));
  v3 = assembleTaskDescriptorWithPurpose(v2, *(a1 + 40), *(a1 + 48));

  v17 = v3;
  v4 = [*(*(a1 + 56) + 48) objectForKey:v3];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = a1;
  v6 = *(a1 + 64);
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      v10 = 0;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * v10);
        if (v4)
        {
          v12 = [v4 callBackArray];
          v13 = MEMORY[0x19A8EC5D0](v11);
          v14 = [v12 containsObject:v13];

          if ((v14 & 1) == 0)
          {
            [v4 addCallBack:v11];
          }
        }

        else
        {
          v15 = [[MAProgressHandler alloc] initWithCallBack:v11];
          [*(*(v5 + 56) + 48) setObject:v15 forKey:v17];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (id)progressCallbacksForAssetType:(id)a3 assetId:(id)a4 withPurpose:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__3;
  v25 = __Block_byref_object_dispose__3;
  v26 = 0;
  v11 = normalizedAssetType(v8);
  v12 = assembleTaskDescriptorWithPurpose(v11, v9, v10);

  progressQueue = self->_progressQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__MAXpcManager_progressCallbacksForAssetType_assetId_withPurpose___block_invoke;
  block[3] = &unk_1E74CA5B8;
  v20 = &v21;
  block[4] = self;
  v14 = v12;
  v19 = v14;
  dispatch_sync(progressQueue, block);
  v15 = v22[5];
  if (v15)
  {
    v16 = [v15 callBackArray];
  }

  else
  {
    v16 = 0;
  }

  _Block_object_dispose(&v21, 8);

  return v16;
}

uint64_t __66__MAXpcManager_progressCallbacksForAssetType_assetId_withPurpose___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 48) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (MAXpcManager)initWithServiceName:(id)a3 callbackQueue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  v10 = 0;
  if (v7 && v8)
  {
    v27.receiver = self;
    v27.super_class = MAXpcManager;
    v11 = [(MAXpcManager *)&v27 init];
    if (v11)
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v7, @".maxpcmanager.state"];
      v13 = [v12 UTF8String];
      v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v15 = dispatch_queue_create(v13, v14);
      stateQueue = v11->_stateQueue;
      v11->_stateQueue = v15;

      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v7, @".maxpcmanager.progress"];
      v18 = [v17 UTF8String];
      v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v20 = dispatch_queue_create(v18, v19);
      progressQueue = v11->_progressQueue;
      v11->_progressQueue = v20;

      objc_storeStrong(&v11->_callbackQueue, a4);
      objc_storeStrong(&v11->_serviceName, a3);
      v22 = objc_opt_new();
      progressHandlers = v11->_progressHandlers;
      v11->_progressHandlers = v22;

      maConnection = v11->_maConnection;
      v11->_maConnection = 0;

      postConnectionRetryCallbacks = v11->_postConnectionRetryCallbacks;
      v11->_connectionRetryCount = 1;
      v11->_postConnectionRetryCallbacks = 0;

      mapV2ErrorIndications();
    }

    self = v11;
    v10 = self;
  }

  return v10;
}

@end