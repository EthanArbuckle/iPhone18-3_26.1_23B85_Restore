@interface HTHangClient
+ (id)getClient;
- (BOOL)pingConnectionAsyncAPI:(id *)i;
- (BOOL)pingConnectionSyncAPI:(id *)i;
- (id)_checkValidXPCDictResponse:(id)response;
- (id)_createXPCReplyHandler:(id)handler;
- (id)establishHangTracerConnection;
- (id)sendMessageToHangTracerWithReplySync:(id)sync error:(id *)error;
- (void)dealloc;
- (void)sendMessageToHangTracerWithReply:(id)reply responseHandler:(id)handler;
@end

@implementation HTHangClient

- (id)establishHangTracerConnection
{
  v25[1] = *MEMORY[0x1E69E9840];
  v3 = syncConnectionToHangTracer();
  connection = self->_connection;
  self->_connection = v3;

  connection = [(HTHangClient *)self connection];

  if (connection)
  {
    v6 = HTConnectionQueue();
    connectionQueue = self->_connectionQueue;
    self->_connectionQueue = v6;

    connectionQueue = [(HTHangClient *)self connectionQueue];

    if (connectionQueue)
    {
      v9 = dispatch_queue_create("com.apple.hangtracer.client-reply", 0);
      replyQueue = self->_replyQueue;
      self->_replyQueue = v9;

      replyQueue = [(HTHangClient *)self replyQueue];

      v12 = 0;
      if (replyQueue)
      {
        goto LABEL_8;
      }

      v13 = MEMORY[0x1E696ABC0];
      v20 = *MEMORY[0x1E696A578];
      v21 = @"Failed to create reply queue for client.";
      v14 = MEMORY[0x1E695DF20];
      v15 = &v21;
      v16 = &v20;
    }

    else
    {
      v13 = MEMORY[0x1E696ABC0];
      v22 = *MEMORY[0x1E696A578];
      v23 = @"Failed to access connection queue with HangTracer.";
      v14 = MEMORY[0x1E695DF20];
      v15 = &v23;
      v16 = &v22;
    }
  }

  else
  {
    v13 = MEMORY[0x1E696ABC0];
    v24 = *MEMORY[0x1E696A578];
    v25[0] = @"Failed to establish connection with HangTracer.";
    v14 = MEMORY[0x1E695DF20];
    v15 = v25;
    v16 = &v24;
  }

  v17 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:1];
  v12 = [v13 errorWithDomain:@"HTHangClientError" code:0 userInfo:v17];

LABEL_8:
  v18 = *MEMORY[0x1E69E9840];

  return v12;
}

- (BOOL)pingConnectionAsyncAPI:(id *)i
{
  v22[1] = *MEMORY[0x1E69E9840];
  v5 = dispatch_semaphore_create(0);
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __39__HTHangClient_pingConnectionAsyncAPI___block_invoke;
  v13[3] = &unk_1E8302088;
  iCopy = i;
  v6 = v5;
  v14 = v6;
  v15 = &v17;
  v7 = MEMORY[0x1CCA72C40](v13);
  v21 = @"command";
  v22[0] = &unk_1F47FA1F0;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  obj = 0;
  v9 = [[HTHangRequest alloc] initRequest:v8 error:&obj];
  if (obj)
  {
    if (i)
    {
      objc_storeStrong(i, obj);
      LOBYTE(i) = 0;
    }
  }

  else
  {
    [(HTHangClient *)self sendMessageToHangTracerWithReply:v9 responseHandler:v7];
    dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
    LOBYTE(i) = *(v18 + 24);
  }

  _Block_object_dispose(&v17, 8);
  v10 = *MEMORY[0x1E69E9840];
  return i & 1;
}

void __39__HTHangClient_pingConnectionAsyncAPI___block_invoke(uint64_t a1, void *a2, void *a3)
{
  xdict = a2;
  v5 = a3;
  if (v5)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      objc_storeStrong(v6, a3);
    }
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = xpc_dictionary_get_BOOL(xdict, "ping");
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)pingConnectionSyncAPI:(id *)i
{
  v15[1] = *MEMORY[0x1E69E9840];
  v14 = @"command";
  v15[0] = &unk_1F47FA1F0;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  obj = 0;
  v6 = [[HTHangRequest alloc] initRequest:v5 error:&obj];
  if (obj)
  {
    if (i)
    {
      objc_storeStrong(i, obj);
    }

    v7 = 0;
  }

  else
  {
    v12 = 0;
    v8 = [(HTHangClient *)self sendMessageToHangTracerWithReplySync:v6 error:&v12];
    v9 = v8;
    if (v8)
    {
      v7 = xpc_dictionary_get_BOOL(v8, "ping");
    }

    else
    {
      v7 = 0;
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)_checkValidXPCDictResponse:(id)response
{
  v23[1] = *MEMORY[0x1E69E9840];
  responseCopy = response;
  v5 = MEMORY[0x1CCA730F0]();
  if (v5 == MEMORY[0x1E69E9E80])
  {
    v12 = 0;
  }

  else
  {
    if (v5 == MEMORY[0x1E69E9E98])
    {
      if (responseCopy == MEMORY[0x1E69E9E20])
      {
        connection = [(HTHangClient *)self connection];
        v14 = xpc_connection_copy_invalidation_reason();

        v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"received XPC_ERROR_CONNECTION_INVALID connection from HangTracer with reason: %s", v14];
        v8 = MEMORY[0x1E696ABC0];
        v22 = *MEMORY[0x1E696A578];
        v23[0] = v7;
        v9 = MEMORY[0x1E695DF20];
        v10 = v23;
        v11 = &v22;
      }

      else
      {
        v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected error: %s", xpc_dictionary_get_string(responseCopy, *MEMORY[0x1E69E9E28])];
        v8 = MEMORY[0x1E696ABC0];
        v20 = *MEMORY[0x1E696A578];
        v21 = v7;
        v9 = MEMORY[0x1E695DF20];
        v10 = &v21;
        v11 = &v20;
      }
    }

    else
    {
      v6 = MEMORY[0x1CCA72FA0](responseCopy);
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Encountered non-dictionary event: %s", v6];
      free(v6);
      v8 = MEMORY[0x1E696ABC0];
      v18 = *MEMORY[0x1E696A578];
      v19 = v7;
      v9 = MEMORY[0x1E695DF20];
      v10 = &v19;
      v11 = &v18;
    }

    v15 = [v9 dictionaryWithObjects:v10 forKeys:v11 count:1];
    v12 = [v8 errorWithDomain:@"HTHangClientError" code:0 userInfo:v15];
  }

  v16 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)_createXPCReplyHandler:(id)handler
{
  handlerCopy = handler;
  v5 = handlerCopy;
  if (handlerCopy)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __39__HTHangClient__createXPCReplyHandler___block_invoke_2;
    v8[3] = &unk_1E83020D0;
    v8[4] = self;
    v9 = handlerCopy;
    v6 = MEMORY[0x1CCA72C40](v8);
  }

  else
  {
    v6 = &__block_literal_global_1;
  }

  return v6;
}

void __39__HTHangClient__createXPCReplyHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = shared_ht_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __39__HTHangClient__createXPCReplyHandler___block_invoke_2_cold_1(v3);
  }

  v5 = [*(a1 + 32) _checkValidXPCDictResponse:v3];
  (*(*(a1 + 40) + 16))();
}

- (void)sendMessageToHangTracerWithReply:(id)reply responseHandler:(id)handler
{
  v20[1] = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  handlerCopy = handler;
  if (replyCopy)
  {
    v8 = [(HTHangClient *)self _createXPCReplyHandler:handlerCopy];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __65__HTHangClient_sendMessageToHangTracerWithReply_responseHandler___block_invoke;
    v15[3] = &unk_1E83020F8;
    v15[4] = self;
    v17 = handlerCopy;
    v16 = replyCopy;
    v18 = v8;
    v9 = v8;
    v10 = MEMORY[0x1CCA72C40](v15);
    connectionQueue = [(HTHangClient *)self connectionQueue];
    dispatch_sync(connectionQueue, v10);
  }

  else
  {
    v12 = MEMORY[0x1E696ABC0];
    v19 = *MEMORY[0x1E696A578];
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v9 = [v12 errorWithDomain:@"HTHangClientError" code:0 userInfo:v13];

    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, 0, v9);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __65__HTHangClient_sendMessageToHangTracerWithReply_responseHandler___block_invoke(uint64_t a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) connection];

  if (v2)
  {
    connection = [*(a1 + 32) connection];
    v3 = [*(a1 + 40) requestXPCDictionary];
    v4 = [*(a1 + 32) replyQueue];
    xpc_connection_send_message_with_reply(connection, v3, v4, *(a1 + 56));

    v5 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v6 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A578];
    v13[0] = @"Failed to establish xpc connection with hangtracerd";
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v8 = [v6 errorWithDomain:@"HTHangClientError" code:0 userInfo:v7];

    v9 = *(a1 + 48);
    if (v9)
    {
      (*(v9 + 16))(v9, 0, v8);
    }

    v10 = *MEMORY[0x1E69E9840];
  }
}

- (id)sendMessageToHangTracerWithReplySync:(id)sync error:(id *)error
{
  syncCopy = sync;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __59__HTHangClient_sendMessageToHangTracerWithReplySync_error___block_invoke;
  v15 = &unk_1E8302120;
  v18 = &v20;
  errorCopy = error;
  selfCopy = self;
  v7 = syncCopy;
  v17 = v7;
  v8 = MEMORY[0x1CCA72C40](&v12);
  v9 = [(HTHangClient *)self connectionQueue:v12];
  dispatch_sync(v9, v8);

  v10 = v21[5];
  _Block_object_dispose(&v20, 8);

  return v10;
}

void __59__HTHangClient_sendMessageToHangTracerWithReplySync_error___block_invoke(uint64_t a1)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) connection];

  if (v2)
  {
    v3 = [*(a1 + 32) connection];
    v4 = [*(a1 + 40) requestXPCDictionary];
    v5 = xpc_connection_send_message_with_reply_sync(v3, v4);
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = shared_ht_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __59__HTHangClient_sendMessageToHangTracerWithReplySync_error___block_invoke_cold_1(a1 + 48);
    }

    v9 = [*(a1 + 32) _checkValidXPCDictResponse:*(*(*(a1 + 48) + 8) + 40)];
    if (v9)
    {
      v10 = *(a1 + 56);
      if (v10)
      {
        objc_storeStrong(v10, v9);
      }

      v11 = *(*(a1 + 48) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = 0;
      goto LABEL_10;
    }
  }

  else
  {
    v13 = MEMORY[0x1E696ABC0];
    v17 = *MEMORY[0x1E696A578];
    v18[0] = @"Failed to establish xpc connection with hangtracerd";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v9 = [v13 errorWithDomain:@"HTHangClientError" code:0 userInfo:v14];

    v15 = *(a1 + 56);
    if (v15)
    {
      v9 = v9;
      v12 = *v15;
      *v15 = v9;
LABEL_10:
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

+ (id)getClient
{
  if (getClient_onceToken != -1)
  {
    +[HTHangClient getClient];
  }

  v3 = _HTHangClientSingletonInstance;

  return v3;
}

void __25__HTHangClient_getClient__block_invoke()
{
  if (!_HTHangClientSingletonInstance)
  {
    v0 = objc_alloc_init(HTHangClient);
    v1 = _HTHangClientSingletonInstance;
    _HTHangClientSingletonInstance = v0;

    if (_HTHangClientSingletonInstance)
    {
      v2 = [_HTHangClientSingletonInstance establishHangTracerConnection];
      if (v2)
      {
        v3 = shared_ht_log_handle();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          __25__HTHangClient_getClient__block_invoke_cold_1(v2, v3);
        }

        v4 = _HTHangClientSingletonInstance;
        _HTHangClientSingletonInstance = 0;
      }
    }
  }
}

- (void)dealloc
{
  connection = [(HTHangClient *)self connection];

  if (connection)
  {
    connection2 = [(HTHangClient *)self connection];
    xpc_connection_cancel(connection2);
  }

  v5.receiver = self;
  v5.super_class = HTHangClient;
  [(HTHangClient *)&v5 dealloc];
}

void __39__HTHangClient__createXPCReplyHandler___block_invoke_2_cold_1(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = createXPCObjectString(a1);
  OUTLINED_FUNCTION_0_1(&dword_1C8286000, v2, v3, "Got response from HangTracer: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

void __59__HTHangClient_sendMessageToHangTracerWithReplySync_error___block_invoke_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = createXPCObjectString(*(*(*a1 + 8) + 40));
  OUTLINED_FUNCTION_0_1(&dword_1C8286000, v2, v3, "Got response from HangTracer: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

void __25__HTHangClient_getClient__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1C8286000, a2, OS_LOG_TYPE_ERROR, "Failed to establish a connection to HangTracer with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end