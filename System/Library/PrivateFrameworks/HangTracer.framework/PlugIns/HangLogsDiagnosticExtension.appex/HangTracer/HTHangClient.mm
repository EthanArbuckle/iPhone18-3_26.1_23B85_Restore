@interface HTHangClient
+ (id)getClient;
- (BOOL)pingConnectionAsyncAPI:(id *)a3;
- (BOOL)pingConnectionSyncAPI:(id *)a3;
- (id)_checkValidXPCDictResponse:(id)a3;
- (id)_createXPCReplyHandler:(id)a3;
- (id)establishHangTracerConnection;
- (id)sendMessageToHangTracerWithReplySync:(id)a3 error:(id *)a4;
- (void)dealloc;
- (void)sendMessageToHangTracerWithReply:(id)a3 responseHandler:(id)a4;
@end

@implementation HTHangClient

- (id)establishHangTracerConnection
{
  v3 = syncConnectionToHangTracer();
  connection = self->_connection;
  self->_connection = v3;

  v5 = [(HTHangClient *)self connection];

  if (v5)
  {
    v6 = HTConnectionQueue();
    connectionQueue = self->_connectionQueue;
    self->_connectionQueue = v6;

    v8 = [(HTHangClient *)self connectionQueue];

    if (v8)
    {
      v9 = dispatch_queue_create("com.apple.hangtracer.client-reply", 0);
      replyQueue = self->_replyQueue;
      self->_replyQueue = v9;

      v11 = [(HTHangClient *)self replyQueue];

      v12 = 0;
      if (v11)
      {
        goto LABEL_8;
      }

      v17 = NSLocalizedDescriptionKey;
      v18 = @"Failed to create reply queue for client.";
      v13 = &v18;
      v14 = &v17;
    }

    else
    {
      v19 = NSLocalizedDescriptionKey;
      v20 = @"Failed to access connection queue with HangTracer.";
      v13 = &v20;
      v14 = &v19;
    }
  }

  else
  {
    v21 = NSLocalizedDescriptionKey;
    v22 = @"Failed to establish connection with HangTracer.";
    v13 = &v22;
    v14 = &v21;
  }

  v15 = [NSDictionary dictionaryWithObjects:v13 forKeys:v14 count:1];
  v12 = [NSError errorWithDomain:@"HTHangClientError" code:0 userInfo:v15];

LABEL_8:

  return v12;
}

- (BOOL)pingConnectionAsyncAPI:(id *)a3
{
  v3 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100002B44;
  v11[3] = &unk_100024850;
  v14 = a3;
  v5 = dispatch_semaphore_create(0);
  v12 = v5;
  v13 = &v15;
  v6 = objc_retainBlock(v11);
  v19 = @"command";
  v20 = &off_100027A80;
  v7 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  obj = 0;
  v8 = [[HTHangRequest alloc] initRequest:v7 error:&obj];
  if (obj)
  {
    if (v3)
    {
      objc_storeStrong(v3, obj);
      LOBYTE(v3) = 0;
    }
  }

  else
  {
    [(HTHangClient *)self sendMessageToHangTracerWithReply:v8 responseHandler:v6];
    dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
    LOBYTE(v3) = *(v16 + 24);
  }

  _Block_object_dispose(&v15, 8);
  return v3 & 1;
}

- (BOOL)pingConnectionSyncAPI:(id *)a3
{
  v13 = @"command";
  v14 = &off_100027A80;
  v5 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  obj = 0;
  v6 = [[HTHangRequest alloc] initRequest:v5 error:&obj];
  if (obj)
  {
    if (a3)
    {
      objc_storeStrong(a3, obj);
    }

    v7 = 0;
  }

  else
  {
    v11 = 0;
    v8 = [(HTHangClient *)self sendMessageToHangTracerWithReplySync:v6 error:&v11];
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

  return v7;
}

- (id)_checkValidXPCDictResponse:(id)a3
{
  v4 = a3;
  type = xpc_get_type(v4);
  if (type == &_xpc_type_dictionary)
  {
    v10 = 0;
  }

  else
  {
    if (type == &_xpc_type_error)
    {
      if (v4 == &_xpc_error_connection_invalid)
      {
        v11 = [(HTHangClient *)self connection];
        v12 = xpc_connection_copy_invalidation_reason();

        v7 = [NSString stringWithFormat:@"received XPC_ERROR_CONNECTION_INVALID connection from HangTracer with reason: %s", v12];
        v19 = NSLocalizedDescriptionKey;
        v20 = v7;
        v8 = &v20;
        v9 = &v19;
      }

      else
      {
        v7 = [NSString stringWithFormat:@"Unexpected error: %s", xpc_dictionary_get_string(v4, _xpc_error_key_description)];
        v17 = NSLocalizedDescriptionKey;
        v18 = v7;
        v8 = &v18;
        v9 = &v17;
      }
    }

    else
    {
      v6 = xpc_copy_description(v4);
      v7 = [NSString stringWithFormat:@"Encountered non-dictionary event: %s", v6];
      free(v6);
      v15 = NSLocalizedDescriptionKey;
      v16 = v7;
      v8 = &v16;
      v9 = &v15;
    }

    v13 = [NSDictionary dictionaryWithObjects:v8 forKeys:v9 count:1];
    v10 = [NSError errorWithDomain:@"HTHangClientError" code:0 userInfo:v13];
  }

  return v10;
}

- (id)_createXPCReplyHandler:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100002FE0;
    v8[3] = &unk_100024898;
    v8[4] = self;
    v9 = v4;
    v6 = objc_retainBlock(v8);
  }

  else
  {
    v6 = &stru_100024870;
  }

  return v6;
}

- (void)sendMessageToHangTracerWithReply:(id)a3 responseHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [(HTHangClient *)self _createXPCReplyHandler:v7];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10000323C;
    v13[3] = &unk_1000248C0;
    v13[4] = self;
    v15 = v7;
    v14 = v6;
    v16 = v8;
    v9 = v8;
    v10 = objc_retainBlock(v13);
    v11 = [(HTHangClient *)self connectionQueue];
    dispatch_sync(v11, v10);
  }

  else
  {
    v17 = NSLocalizedDescriptionKey;
    v12 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v9 = [NSError errorWithDomain:@"HTHangClientError" code:0 userInfo:v12];

    if (v7)
    {
      (*(v7 + 2))(v7, 0, v9);
    }
  }
}

- (id)sendMessageToHangTracerWithReplySync:(id)a3 error:(id *)a4
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_100003514;
  v22 = sub_100003524;
  v23 = 0;
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_10000352C;
  v13 = &unk_1000248E8;
  v16 = &v18;
  v17 = a4;
  v14 = self;
  v5 = a3;
  v15 = v5;
  v6 = objc_retainBlock(&v10);
  v7 = [(HTHangClient *)self connectionQueue:v10];
  dispatch_sync(v7, v6);

  v8 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v8;
}

+ (id)getClient
{
  if (qword_10002B020 != -1)
  {
    sub_10001318C();
  }

  v3 = _HTHangClientSingletonInstance;

  return v3;
}

- (void)dealloc
{
  v3 = [(HTHangClient *)self connection];

  if (v3)
  {
    v4 = [(HTHangClient *)self connection];
    xpc_connection_cancel(v4);
  }

  v5.receiver = self;
  v5.super_class = HTHangClient;
  [(HTHangClient *)&v5 dealloc];
}

@end