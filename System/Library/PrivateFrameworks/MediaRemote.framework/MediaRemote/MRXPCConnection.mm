@interface MRXPCConnection
- (MRXPCConnection)initWithConnection:(id)connection queue:(id)queue defaultReplyQueue:(id)replyQueue;
- (id)sendSyncMessage:(id)message error:(id *)error;
- (id)sendSyncMessageWithType:(unint64_t)type error:(id *)error;
- (void)_registerCallbacks;
- (void)addCustomXPCHandler:(id)handler forKey:(unint64_t)key;
- (void)dealloc;
- (void)removeCustomXPCHandler:(unint64_t)handler;
- (void)sendMessage:(id)message queue:(id)queue reply:(id)reply;
- (void)sendMessageWithType:(unint64_t)type queue:(id)queue reply:(id)reply;
@end

@implementation MRXPCConnection

- (void)_registerCallbacks
{
  if (val)
  {
    objc_initWeak(&location, val);
    v2 = val[4];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __37__MRXPCConnection__registerCallbacks__block_invoke;
    handler[3] = &unk_1E769F608;
    objc_copyWeak(&v4, &location);
    handler[4] = val;
    xpc_connection_set_event_handler(v2, handler);
    objc_destroyWeak(&v4);
    objc_destroyWeak(&location);
  }
}

void __37__MRXPCConnection__registerCallbacks__block_invoke_2(void *a1)
{
  v2 = *(a1[4] + 24);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a1[7]];
  v4 = [v2 objectForKey:v3];
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = MEMORY[0x1A58E3570](*(a1[4] + 40));
  v8 = *(a1[6] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void __37__MRXPCConnection__registerCallbacks__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (v3 == MEMORY[0x1E69E9E18] || v3 == MEMORY[0x1E69E9E20])
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__23;
    v31 = __Block_byref_object_dispose__23;
    v32 = 0;
    v7 = *(*(a1 + 32) + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__MRXPCConnection__registerCallbacks__block_invoke_28;
    block[3] = &unk_1E769A4C8;
    v25 = WeakRetained;
    v26 = &v27;
    dispatch_sync(v7, block);
    v8 = v28[5];
    if (v8)
    {
      (*(v8 + 16))(v8, v3);
    }

    v9 = v25;
  }

  else
  {
    uint64 = xpc_dictionary_get_uint64(v3, "MRXPC_MESSAGE_ID_KEY");
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__23;
    v31 = __Block_byref_object_dispose__23;
    v32 = 0;
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__23;
    v22 = __Block_byref_object_dispose__23;
    v23 = 0;
    v11 = v5[1];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __37__MRXPCConnection__registerCallbacks__block_invoke_2;
    v13[3] = &unk_1E769F5E0;
    v15 = &v18;
    v16 = &v27;
    v17 = uint64;
    v14 = v5;
    dispatch_sync(v11, v13);
    v12 = v19[5];
    if (!v12)
    {
      v12 = v28[5];
    }

    (*(v12 + 16))(v12, v3);

    _Block_object_dispose(&v18, 8);
    v9 = v23;
  }

  _Block_object_dispose(&v27, 8);
}

void __37__MRXPCConnection__registerCallbacks__block_invoke_28(uint64_t a1)
{
  if (*(*(a1 + 32) + 48))
  {
    v2 = MEMORY[0x1A58E3570]();
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }
}

- (void)dealloc
{
  xpc_connection_cancel(self->_connection);
  v3.receiver = self;
  v3.super_class = MRXPCConnection;
  [(MRXPCConnection *)&v3 dealloc];
}

- (MRXPCConnection)initWithConnection:(id)connection queue:(id)queue defaultReplyQueue:(id)replyQueue
{
  connectionCopy = connection;
  queueCopy = queue;
  replyQueueCopy = replyQueue;
  v17.receiver = self;
  v17.super_class = MRXPCConnection;
  v12 = [(MRXPCConnection *)&v17 init];
  if (v12)
  {
    if (!connectionCopy)
    {
      [MRXPCConnection initWithConnection:queue:defaultReplyQueue:];
    }

    objc_storeStrong(&v12->_connection, connection);
    objc_storeStrong(&v12->_defaultReplyQueue, replyQueue);
    if (queueCopy)
    {
      xpc_connection_set_target_queue(v12->_connection, queueCopy);
    }

    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("com.apple.mediaremote.MRXPCConnection", v13);
    serialQueue = v12->_serialQueue;
    v12->_serialQueue = v14;

    [(MRXPCConnection *)&v12->super.isa _registerCallbacks];
  }

  return v12;
}

- (void)addCustomXPCHandler:(id)handler forKey:(unint64_t)key
{
  handlerCopy = handler;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__MRXPCConnection_addCustomXPCHandler_forKey___block_invoke;
  block[3] = &unk_1E769BF28;
  v10 = handlerCopy;
  keyCopy = key;
  block[4] = self;
  v8 = handlerCopy;
  dispatch_sync(serialQueue, block);
}

void __46__MRXPCConnection_addCustomXPCHandler_forKey___block_invoke(void *a1)
{
  v2 = *(a1[4] + 24);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = a1[4];
    v5 = *(v4 + 24);
    *(v4 + 24) = v3;

    v2 = *(a1[4] + 24);
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a1[6]];
  v10 = [v2 objectForKey:v6];

  if (v10)
  {
    __46__MRXPCConnection_addCustomXPCHandler_forKey___block_invoke_cold_1(a1 + 6);
  }

  v7 = *(a1[4] + 24);
  v8 = MEMORY[0x1A58E3570](a1[5]);
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a1[6]];
  [v7 setObject:v8 forKey:v9];
}

- (void)removeCustomXPCHandler:(unint64_t)handler
{
  serialQueue = self->_serialQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__MRXPCConnection_removeCustomXPCHandler___block_invoke;
  v4[3] = &unk_1E769C018;
  v4[4] = self;
  v4[5] = handler;
  dispatch_sync(serialQueue, v4);
}

void __42__MRXPCConnection_removeCustomXPCHandler___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a1 + 40)];
  [v1 removeObjectForKey:v2];
}

- (void)sendMessageWithType:(unint64_t)type queue:(id)queue reply:(id)reply
{
  replyCopy = reply;
  queueCopy = queue;
  v10 = MRCreateXPCMessage(type);
  [(MRXPCConnection *)self sendMessage:v10 queue:queueCopy reply:replyCopy];
}

- (void)sendMessage:(id)message queue:(id)queue reply:(id)reply
{
  messageCopy = message;
  queueCopy = queue;
  replyCopy = reply;
  if (replyCopy)
  {
    if (!queueCopy)
    {
      queueCopy = self->_defaultReplyQueue;
      if (!queueCopy)
      {
        [MRXPCConnection sendMessage:a2 queue:self reply:?];
      }
    }

    connection = self->_connection;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __43__MRXPCConnection_sendMessage_queue_reply___block_invoke;
    handler[3] = &unk_1E769C4D0;
    v14 = replyCopy;
    xpc_connection_send_message_with_reply(connection, messageCopy, queueCopy, handler);
  }

  else
  {
    xpc_connection_send_message(self->_connection, messageCopy);
  }
}

void __43__MRXPCConnection_sendMessage_queue_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = v3;
  if (v3 == MEMORY[0x1E69E9E18])
  {
    v5 = objc_alloc(MEMORY[0x1E696ABC0]);
    v6 = MRCreateStringFromXPCMessage(MEMORY[0x1E69E9E18], *MEMORY[0x1E69E9E28]);
    v7 = [v5 initWithMRError:1 format:{@"Connection interrupted with error=%@", v6}];
  }

  else
  {
    if (v3 != MEMORY[0x1E69E9E20])
    {
      v4 = MRCreateClientErrorFromXPCMessage(v3);
      goto LABEL_7;
    }

    v8 = objc_alloc(MEMORY[0x1E696ABC0]);
    v6 = MRCreateStringFromXPCMessage(MEMORY[0x1E69E9E20], *MEMORY[0x1E69E9E28]);
    v7 = [v8 initWithMRError:1 format:{@"Connection invalid with error=%@", v6}];
  }

  v4 = v7;

LABEL_7:
  (*(*(a1 + 32) + 16))();
}

- (id)sendSyncMessageWithType:(unint64_t)type error:(id *)error
{
  v6 = MRCreateXPCMessage(type);
  v7 = [(MRXPCConnection *)self sendSyncMessage:v6 error:error];

  return v7;
}

- (id)sendSyncMessage:(id)message error:(id *)error
{
  v5 = xpc_connection_send_message_with_reply_sync(self->_connection, message);
  v6 = v5;
  if (error)
  {
    if (v5 == MEMORY[0x1E69E9E18])
    {
      v7 = objc_alloc(MEMORY[0x1E696ABC0]);
      v8 = MRCreateStringFromXPCMessage(MEMORY[0x1E69E9E18], *MEMORY[0x1E69E9E28]);
      v9 = [v7 initWithMRError:1 format:{@"Connection interrupted with error=%@", v8}];
    }

    else
    {
      if (v5 != MEMORY[0x1E69E9E20])
      {
        *error = MRCreateClientErrorFromXPCMessage(v5);
        goto LABEL_8;
      }

      v10 = objc_alloc(MEMORY[0x1E696ABC0]);
      v8 = MRCreateStringFromXPCMessage(MEMORY[0x1E69E9E20], *MEMORY[0x1E69E9E28]);
      v9 = [v10 initWithMRError:1 format:{@"Connection invalid with error=%@", v8}];
    }

    *error = v9;
  }

LABEL_8:

  return v6;
}

- (void)initWithConnection:queue:defaultReplyQueue:.cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MRXPCConnection initWithConnection:queue:defaultReplyQueue:]"];
  [v0 handleFailureInFunction:v1 file:@"MRXPCConnection.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"connection"}];
}

void __46__MRXPCConnection_addCustomXPCHandler_forKey___block_invoke_cold_1(void *a1)
{
  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MRXPCConnection addCustomXPCHandler:forKey:]_block_invoke"];
  [v3 handleFailureInFunction:v2 file:@"MRXPCConnection.m" lineNumber:68 description:{@"A custom xpc handler already exists with key %llu", *a1}];
}

- (void)sendMessage:(uint64_t)a1 queue:(uint64_t)a2 reply:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MRXPCConnection.m" lineNumber:93 description:{@"Invalid parameter not satisfying: %@", @"queue"}];
}

@end