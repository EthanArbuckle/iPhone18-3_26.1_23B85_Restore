@interface FudInternalConnection
- (FudInternalConnection)initWithClientIdentifier:(id)identifier handlerQueue:(id)queue messageHandler:(id)handler;
- (int64_t)getNextMessageID;
- (void)dealloc;
- (void)handleInternalMessage:(id)message;
@end

@implementation FudInternalConnection

- (FudInternalConnection)initWithClientIdentifier:(id)identifier handlerQueue:(id)queue messageHandler:(id)handler
{
  v19.receiver = self;
  v19.super_class = FudInternalConnection;
  v14 = [(FudInternalConnection *)&v19 init];
  if (initWithClientIdentifier_handlerQueue_messageHandler__onceToken != -1)
  {
    [FudInternalConnection initWithClientIdentifier:handlerQueue:messageHandler:];
  }

  if (!_msgIDLock)
  {
    v18 = @"Failed to create msg id mutex";
LABEL_17:
    [(FudXPCConnection *)v18 initWithClientName:v14 replyHandlerQueue:v8 messageHandler:v9, v10, v11, v12, v13];
    return 0;
  }

  if (!identifier)
  {
    v18 = @"Can't create connection without client identifier";
    goto LABEL_17;
  }

  if (!handler)
  {
    v18 = @"Can't create connection without handler";
    goto LABEL_17;
  }

  if (!queue)
  {
    v18 = @"Can't create connection without handler queue";
    goto LABEL_17;
  }

  v14->didStop = 0;
  v14->clientIdentifier = identifier;
  v15 = _Block_copy(handler);
  v14->messageHandler = v15;
  if (!v15)
  {
    v18 = @"Failed to copy block handler";
    goto LABEL_17;
  }

  v16 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:0];
  v14->pendingRequests = v16;
  if (!v16)
  {
    v18 = @"Failed to create pending requests dict";
    goto LABEL_17;
  }

  v14->handlerQueue = queue;
  dispatch_retain(queue);
  return v14;
}

dispatch_semaphore_t __78__FudInternalConnection_initWithClientIdentifier_handlerQueue_messageHandler___block_invoke()
{
  result = dispatch_semaphore_create(1);
  _msgIDLock = result;
  return result;
}

- (void)dealloc
{
  handlerQueue = self->handlerQueue;
  if (handlerQueue)
  {
    dispatch_release(handlerQueue);
  }

  messageHandler = self->messageHandler;
  if (messageHandler)
  {
    _Block_release(messageHandler);
  }

  v5.receiver = self;
  v5.super_class = FudInternalConnection;
  [(FudInternalConnection *)&v5 dealloc];
}

- (int64_t)getNextMessageID
{
  dispatch_semaphore_wait(_msgIDLock, 0xFFFFFFFFFFFFFFFFLL);
  v2 = ++_gNextMsgID;
  dispatch_semaphore_signal(_msgIDLock);
  return v2;
}

- (void)handleInternalMessage:(id)message
{
  if (self->didStop)
  {
    v8 = @"Dropping message, no longer handling internal messages";
LABEL_13:

    FudLog(3, v8, message, v3, v4, v5, v6, v7, v26);
    return;
  }

  if (!message)
  {
    v8 = @"Can't handle NULL msg in notification";
    goto LABEL_13;
  }

  v11 = _CFXPCCreateCFObjectFromXPCObject();
  if (!v11)
  {
    v8 = @"Can't convert XPC msg to Dictionary";
    goto LABEL_13;
  }

  v23 = v11;
  v12 = [v11 objectForKey:@"ClientIdentifier"];
  if (v12)
  {
    if ([(NSString *)self->clientIdentifier isEqualToString:v12])
    {
      v19 = [v23 objectForKey:@"MessageID"];

      if (v19 && (messageHandler = [(NSMutableDictionary *)self->pendingRequests objectForKey:v19], [(NSMutableDictionary *)self->pendingRequests removeObjectForKey:v19], messageHandler) || (messageHandler = self->messageHandler) != 0)
      {
        handlerQueue = self->handlerQueue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __47__FudInternalConnection_handleInternalMessage___block_invoke;
        block[3] = &unk_2798E37B8;
        block[4] = message;
        block[5] = messageHandler;
        dispatch_sync(handlerQueue, block);
        return;
      }

      v8 = @"No handler found for msg ID";
      goto LABEL_13;
    }
  }

  else
  {
    FudLog(3, @"Failed to convert client identifier to string", v13, v14, v15, v16, v17, v18, v22);
  }
}

@end