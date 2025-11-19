@interface MSService
- (MSService)init;
- (id)_createMessageForService:(id)a3 arguments:(id)a4 index:(int64_t *)a5;
- (id)_handleMessageSendFailure:(id)a3 message:(id)a4 messageIndex:(int64_t)a5 context:(id *)a6;
- (void)_callServicesMethod:(id)a3 arguments:(id)a4 callback:(id)a5;
- (void)_callServicesMethod:(id)a3 arguments:(id)a4 replyHandler:(id)a5;
- (void)_registerConnection:(id)a3 onQueue:(id)a4;
- (void)_simulateServicesMethod:(id)a3 arguments:(id)a4 callback:(id)a5;
- (void)cancel;
- (void)dealloc;
- (void)setupResponseConnectionOnQueue:(id)a3;
- (void)start;
- (void)stop;
@end

@implementation MSService

- (MSService)init
{
  v16.receiver = self;
  v16.super_class = MSService;
  v2 = [(MSService *)&v16 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.mailservices.%@.%p", objc_opt_class(), v2];
    v4 = [v3 UTF8String];
    v5 = dispatch_queue_create(v4, MEMORY[0x1E69E96A8]);
    replyQueue = v2->_replyQueue;
    v2->_replyQueue = v5;

    v7 = [v3 stringByAppendingString:@".connection"];
    v8 = dispatch_queue_create([v7 UTF8String], 0);
    connectionQueue = v2->_connectionQueue;
    v2->_connectionQueue = v8;

    v10 = v2->_connectionQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __17__MSService_init__block_invoke;
    block[3] = &unk_1E855EFF0;
    v11 = v2;
    v15 = v11;
    dispatch_sync(v10, block);
    v12 = v11;
  }

  return v2;
}

- (void)start
{
  v16 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_connectionQueue);
  if (self->_connection)
  {
    [MSService start];
  }

  v3 = [(MSService *)self _createServiceOnQueue:self->_replyQueue];
  connection = self->_connection;
  self->_connection = v3;

  xpc_connection_enable_termination_imminent_event();
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __18__MSService_start__block_invoke;
  handler[3] = &unk_1E855F018;
  v5 = v3;
  v11 = v5;
  xpc_connection_set_event_handler(v5, handler);
  v6 = MFLogGeneral();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v5;
    v8 = MEMORY[0x1DA71BF60]();
    if (v8)
    {
      v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v8 length:strlen(v8) encoding:4 freeWhenDone:1];
    }

    *buf = 138412546;
    v13 = self;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_1D876A000, v6, OS_LOG_TYPE_INFO, "#MailServices %@ resuming %@", buf, 0x16u);
  }

  xpc_connection_resume(v5);
  v9 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  connection = self->_connection;
  if (connection)
  {
    v4 = connection;
    xpc_connection_set_event_handler(v4, &__block_literal_global);
    xpc_connection_cancel(v4);

    v5 = self->_connection;
    self->_connection = 0;
  }

  responseListener = self->_responseListener;
  if (responseListener)
  {
    v7 = responseListener;
    xpc_connection_set_event_handler(v7, &__block_literal_global);
    xpc_connection_cancel(v7);

    v8 = self->_responseListener;
    self->_responseListener = 0;
  }

  responseHandler = self->_responseHandler;
  if (responseHandler)
  {
    v10 = responseHandler;
    xpc_connection_set_event_handler(v10, &__block_literal_global);
    xpc_connection_cancel(v10);

    v11 = self->_responseHandler;
    self->_responseHandler = 0;
  }

  v12.receiver = self;
  v12.super_class = MSService;
  [(MSService *)&v12 dealloc];
}

void __18__MSService_start__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (MEMORY[0x1DA71BFF0]() != MEMORY[0x1E69E9E98])
  {
    __assert_rtn("[MSService start]_block_invoke", "MSService.m", 106, "type == XPC_TYPE_ERROR && unexpected message received on connection to server");
  }

  if (v3 == MEMORY[0x1E69E9E20])
  {
    v4 = MFLogGeneral();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      name = xpc_connection_get_name(*(a1 + 32));
      v10 = 136315138;
      v11 = name;
      v5 = "#MailServices Mach service '%s' not found.";
      v6 = v4;
      v7 = 12;
      goto LABEL_8;
    }

LABEL_9:

    goto LABEL_10;
  }

  if (v3 == MEMORY[0x1E69E9E18])
  {
    v4 = MFLogGeneral();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      LOWORD(v10) = 0;
      v5 = "#MailServices Connection interrupted";
      v6 = v4;
      v7 = 2;
LABEL_8:
      _os_log_impl(&dword_1D876A000, v6, OS_LOG_TYPE_INFO, v5, &v10, v7);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

LABEL_10:

  v9 = *MEMORY[0x1E69E9840];
}

- (void)stop
{
  v12 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_connectionQueue);
  if (self->_connection)
  {
    v3 = MFLogGeneral();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      connection = self->_connection;
      v8 = 138412546;
      v9 = self;
      v10 = 2048;
      v11 = connection;
      _os_log_impl(&dword_1D876A000, v3, OS_LOG_TYPE_INFO, "#MailServices %@ stopping <connection: %p>", &v8, 0x16u);
    }

    v5 = self->_connection;
    xpc_connection_set_event_handler(v5, &__block_literal_global);
    xpc_connection_cancel(v5);

    v6 = self->_connection;
    self->_connection = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)cancel
{
  v2 = 0;
  v20 = *MEMORY[0x1E69E9840];
  atomic_compare_exchange_strong(&self->_canceled, &v2, 1u);
  if (!v2)
  {
    if (self->_connection)
    {
      v4 = MFLogGeneral();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        connection = self->_connection;
        *buf = 138412546;
        v17 = self;
        v18 = 2048;
        v19 = connection;
        _os_log_impl(&dword_1D876A000, v4, OS_LOG_TYPE_INFO, "#MailServices %@ cancelling <connection: %p>", buf, 0x16u);
      }

      v6 = self->_connection;
      xpc_connection_set_event_handler(v6, &__block_literal_global);
      xpc_connection_cancel(v6);
    }

    if (self->_responseListener)
    {
      v7 = MFLogGeneral();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        responseListener = self->_responseListener;
        *buf = 138412546;
        v17 = self;
        v18 = 2048;
        v19 = responseListener;
        _os_log_impl(&dword_1D876A000, v7, OS_LOG_TYPE_INFO, "#MailServices %@ stopping response listener <connection: %p>", buf, 0x16u);
      }

      v9 = self->_responseListener;
      xpc_connection_set_event_handler(v9, &__block_literal_global);
      xpc_connection_cancel(v9);
    }

    if (self->_responseHandler)
    {
      v10 = MFLogGeneral();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        responseHandler = self->_responseHandler;
        *buf = 138412546;
        v17 = self;
        v18 = 2048;
        v19 = responseHandler;
        _os_log_impl(&dword_1D876A000, v10, OS_LOG_TYPE_INFO, "#MailServices %@ stopping response handler <connection: %p>", buf, 0x16u);
      }

      v12 = self->_responseHandler;
      xpc_connection_set_event_handler(v12, &__block_literal_global);
      xpc_connection_cancel(v12);
    }

    connectionQueue = self->_connectionQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __19__MSService_cancel__block_invoke;
    block[3] = &unk_1E855EFF0;
    block[4] = self;
    dispatch_async(connectionQueue, block);
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __19__MSService_cancel__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[5];
  if (v3)
  {
    v2[5] = 0;

    v2 = *(a1 + 32);
  }

  v4 = v2[6];
  if (v4)
  {
    v2[6] = 0;

    v2 = *(a1 + 32);
  }

  return [v2 stop];
}

- (void)setupResponseConnectionOnQueue:(id)a3
{
  v5 = a3;
  v6 = xpc_connection_create(0, v5);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__MSService_setupResponseConnectionOnQueue___block_invoke;
  v9[3] = &unk_1E855F040;
  v9[4] = self;
  v7 = v6;
  v10 = v7;
  v8 = v5;
  v11 = v8;
  v12 = a2;
  xpc_connection_set_event_handler(v7, v9);
  objc_storeStrong(&self->_responseListener, v6);
  xpc_connection_resume(self->_responseListener);
}

void __44__MSService_setupResponseConnectionOnQueue___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = MEMORY[0x1DA71BFF0]();
  v4 = v3;
  if (v3 == MEMORY[0x1E69E9E98])
  {
    [*(a1 + 32) responseConnection:*(a1 + 40) handleError:v10];
  }

  else if (v3 == MEMORY[0x1E69E9E68])
  {
    [*(a1 + 32) _registerConnection:v10 onQueue:*(a1 + 48)];
  }

  else
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = *(a1 + 56);
    v7 = *(a1 + 32);
    v8 = v10;
    v9 = MEMORY[0x1DA71BF60]();
    if (v9)
    {
      v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v9 length:strlen(v9) encoding:4 freeWhenDone:1];
    }

    [v5 handleFailureInMethod:v6 object:v7 file:@"MSService.m" lineNumber:184 description:{@"unexpected result type (%p) on listener connection, event = %@", v4, v9}];
    [*(a1 + 32) cancel];
  }
}

- (void)_registerConnection:(id)a3 onQueue:(id)a4
{
  v8 = a3;
  v9 = a4;
  p_responseHandler = &self->_responseHandler;
  if (self->_responseHandler)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"MSService.m" lineNumber:194 description:@"attempted to register multiple connections on anonymous listener"];
  }

  xpc_connection_set_target_queue(v8, v9);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __41__MSService__registerConnection_onQueue___block_invoke;
  handler[3] = &unk_1E855F068;
  handler[4] = self;
  v11 = v8;
  v14 = v11;
  v15 = a2;
  xpc_connection_set_event_handler(v11, handler);
  objc_storeStrong(p_responseHandler, a3);
  xpc_connection_resume(*p_responseHandler);
}

void __41__MSService__registerConnection_onQueue___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = MEMORY[0x1DA71BFF0]();
  v4 = v3;
  if (v3 == MEMORY[0x1E69E9E98])
  {
    [*(a1 + 32) responseConnection:*(a1 + 40) handleError:v10];
  }

  else if (v3 == MEMORY[0x1E69E9E80])
  {
    [*(a1 + 32) responseConnection:*(a1 + 40) handleResponse:v10];
  }

  else
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = *(a1 + 48);
    v7 = *(a1 + 32);
    v8 = v10;
    v9 = MEMORY[0x1DA71BF60]();
    if (v9)
    {
      v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v9 length:strlen(v9) encoding:4 freeWhenDone:1];
    }

    [v5 handleFailureInMethod:v6 object:v7 file:@"MSService.m" lineNumber:205 description:{@"unexpected result type (%p) on listener connection, event = %@", v4, v9}];
    [*(a1 + 32) cancel];
  }
}

- (id)_createMessageForService:(id)a3 arguments:(id)a4 index:(int64_t *)a5
{
  v8 = a3;
  v9 = a4;
  add_explicit = atomic_fetch_add_explicit(&_createMessageForService_arguments_index____messageCount, 1uLL, memory_order_relaxed);
  v11 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v11, [@"service" UTF8String], objc_msgSend(v8, "UTF8String"));
  v12 = add_explicit + 1;
  xpc_dictionary_set_int64(v11, [@"_index" UTF8String], add_explicit + 1);
  if (v9)
  {
    v13 = _CFXPCCreateXPCObjectFromCFObject();
    xpc_dictionary_set_value(v11, [@"arguments" UTF8String], v13);
  }

  if (self->_responseListener)
  {
    xpc_dictionary_set_connection(v11, [@"_anonymousConnection" UTF8String], self->_responseListener);
  }

  if (a5)
  {
    *a5 = v12;
  }

  return v11;
}

- (id)_handleMessageSendFailure:(id)a3 message:(id)a4 messageIndex:(int64_t)a5 context:(id *)a6
{
  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MailServices" code:2 userInfo:{0, a6}];

  return v6;
}

- (void)_callServicesMethod:(id)a3 arguments:(id)a4 callback:(id)a5
{
  v8 = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52__MSService__callServicesMethod_arguments_callback___block_invoke;
  v10[3] = &unk_1E855F090;
  v11 = v8;
  v9 = v8;
  [(MSService *)self _callServicesMethod:a3 arguments:a4 replyHandler:v10];
}

void __52__MSService__callServicesMethod_arguments_callback___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v7)
  {
    v6 = _CFXPCCreateCFObjectFromXPCObject();
  }

  else
  {
    v6 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_callServicesMethod:(id)a3 arguments:(id)a4 replyHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  connectionQueue = self->_connectionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__MSService__callServicesMethod_arguments_replyHandler___block_invoke;
  block[3] = &unk_1E855F0E0;
  block[4] = self;
  v17 = v9;
  v19 = v11;
  v20 = a2;
  v18 = v10;
  v13 = v11;
  v14 = v10;
  v15 = v9;
  dispatch_async(connectionQueue, block);
}

void __56__MSService__callServicesMethod_arguments_replyHandler___block_invoke(uint64_t a1)
{
  v63 = *MEMORY[0x1E69E9840];
  v52 = 0xAAAAAAAAAAAAAAAALL;
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) _createMessageForService:*(a1 + 40) arguments:*(a1 + 48) index:&v52];
  if ([*v2 isCanceled])
  {
    v4 = MFLogGeneral();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v6 = v52;
      v7 = *(v5 + 32);
      v8 = v3;
      v9 = MEMORY[0x1DA71BF60]();
      if (v9)
      {
        v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v9 length:strlen(v9) encoding:4 freeWhenDone:1];
      }

      *buf = 138413058;
      v54 = v5;
      v55 = 2048;
      v56 = v6;
      v57 = 2048;
      v58 = v7;
      v59 = 2112;
      v60 = v9;
      _os_log_impl(&dword_1D876A000, v4, OS_LOG_TYPE_INFO, "#MailServices %@ (%lld) : <connection: %p> canceling enqueued message %@", buf, 0x2Au);
    }

    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MailServices" code:1501 userInfo:0];
  }

  else
  {
    v11 = MFLogGeneral();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 32);
      v13 = v52;
      v14 = *(v12 + 32);
      v15 = v3;
      v16 = MEMORY[0x1DA71BF60]();
      if (v16)
      {
        v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v16 length:strlen(v16) encoding:4 freeWhenDone:1];
      }

      *buf = 138413058;
      v54 = v12;
      v55 = 2048;
      v56 = v13;
      v57 = 2048;
      v58 = v14;
      v59 = 2112;
      v60 = v16;
      _os_log_impl(&dword_1D876A000, v11, OS_LOG_TYPE_INFO, "#MailServices %@ (%lld) : <connection: %p> sending message %@", buf, 0x2Au);
    }

    v10 = 0;
  }

  v17 = 0;
  v18 = 0;
  while (!(v10 | v18))
  {
    v19 = objc_autoreleasePoolPush();
    v20 = xpc_connection_send_message_with_reply_sync(*(*(a1 + 32) + 32), v3);
    v21 = MEMORY[0x1DA71BFF0]();
    v22 = v21;
    if (v21 == MEMORY[0x1E69E9E98])
    {
      if ([*(a1 + 32) isCanceled])
      {
        v24 = MFLogGeneral();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v25 = *(a1 + 32);
          *buf = 138412546;
          v54 = v25;
          v55 = 2048;
          v56 = v52;
          _os_log_impl(&dword_1D876A000, v24, OS_LOG_TYPE_INFO, "#MailServices %@ (%lld) : message was canceled", buf, 0x16u);
        }

        v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MailServices" code:1501 userInfo:0];
        v18 = 0;
        v23 = v20;
      }

      else
      {
        v28 = *(a1 + 32);
        v51 = v17;
        v10 = [v28 _handleMessageSendFailure:v20 message:v3 messageIndex:v52 context:&v51];
        v29 = v51;

        if (v10)
        {
          v30 = MFLogGeneral();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            v37 = *(a1 + 32);
            v38 = v52;
            v46 = *(v37 + 32);
            v39 = [v10 ef_publicDescription];
            *buf = 138413314;
            v54 = v37;
            v55 = 2048;
            v56 = v38;
            v57 = 2048;
            v58 = v46;
            v59 = 2048;
            v60 = v3;
            v61 = 2114;
            v62 = v39;
            _os_log_error_impl(&dword_1D876A000, v30, OS_LOG_TYPE_ERROR, "#MailServices %@ (%lld) : <connection: %p> failed to send message <dictionary: %p> %{public}@", buf, 0x34u);
          }
        }

        v18 = 0;
        v23 = v20;
        v17 = v29;
      }
    }

    else
    {
      if (v21 != MEMORY[0x1E69E9E80])
      {
        v23 = [MEMORY[0x1E696AAA8] currentHandler];
        [v23 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"MSService.m" lineNumber:318 description:@"Unknown type (%p) returned in reply to message <dictionary: %p>", v22, v3];
LABEL_17:
        v10 = 0;
        v18 = v20;
        goto LABEL_31;
      }

      string = xpc_dictionary_get_string(v20, [@"errorDomain" UTF8String]);
      if (string)
      {
        v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
        v10 = [MEMORY[0x1E696ABC0] errorWithDomain:v23 code:xpc_dictionary_get_int64(v20 userInfo:{objc_msgSend(@"errorCode", "UTF8String")), 0}];
        v27 = MFLogGeneral();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v45 = v17;
          v34 = *(a1 + 32);
          v35 = v52;
          v36 = [v10 ef_publicDescription];
          *buf = 138413058;
          v54 = v34;
          v55 = 2048;
          v56 = v35;
          v57 = 2048;
          v58 = v3;
          v59 = 2114;
          v60 = v36;
          _os_log_error_impl(&dword_1D876A000, v27, OS_LOG_TYPE_ERROR, "#MailServices %@ (%lld) : received error response for message <dictionary: %p>: %{public}@", buf, 0x2Au);

          v17 = v45;
        }

        v18 = 0;
      }

      else
      {
        v23 = MFLogGeneral();
        if (!os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          goto LABEL_17;
        }

        v31 = *(a1 + 32);
        v32 = v52;
        v18 = v20;
        v33 = MEMORY[0x1DA71BF60]();
        if (v33)
        {
          v33 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v33 length:strlen(v33) encoding:4 freeWhenDone:1];
        }

        *buf = 138413058;
        v54 = v31;
        v55 = 2048;
        v56 = v32;
        v57 = 2048;
        v58 = v3;
        v59 = 2112;
        v60 = v33;
        _os_log_impl(&dword_1D876A000, v23, OS_LOG_TYPE_INFO, "#MailServices %@ (%lld) : received reply for message <dictionary: %p>: %@", buf, 0x2Au);

        v10 = 0;
      }
    }

LABEL_31:

    objc_autoreleasePoolPop(v19);
  }

  v40 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__MSService__callServicesMethod_arguments_replyHandler___block_invoke_50;
  block[3] = &unk_1E855F0B8;
  v41 = *(a1 + 56);
  v49 = v10;
  v50 = v41;
  v48 = v18;
  v42 = v10;
  v43 = v18;
  dispatch_async(v40, block);

  v44 = *MEMORY[0x1E69E9840];
}

- (void)_simulateServicesMethod:(id)a3 arguments:(id)a4 callback:(id)a5
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a5;
  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MailServices" code:3 userInfo:0];
  v7[2](v7, 0, v8);
  v9 = MFLogGeneral();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&dword_1D876A000, v9, OS_LOG_TYPE_INFO, "#MailServices MailServices method %@ could not be simulated", &v11, 0xCu);
  }

  v10 = *MEMORY[0x1E69E9840];
}

@end