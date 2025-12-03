@interface GTLocalXPCConnection
- (GTLocalXPCConnection)initWithTransactionScopedXPCConnection:(id)connection messageQueue:(id)queue;
- (GTLocalXPCConnection)initWithXPCConnection:(id)connection messageQueue:(id)queue;
- (id)sendMessageWithReplySync:(id)sync;
- (id)sendMessageWithReplySync:(id)sync error:(id *)error;
- (unint64_t)registerDispatcher:(id)dispatcher;
- (void)activateWithMessageHandler:(id)handler andErrorHandler:(id)errorHandler;
- (void)cancel;
- (void)deregisterDispatcher:(unint64_t)dispatcher;
- (void)dispatchMessage:(id)message replyConnection:(id)connection;
- (void)registerDispatcher:(id)dispatcher forPort:(unint64_t)port;
- (void)sendMessage:(id)message replyHandler:(id)handler;
- (void)sendMessageAndWaitForDelivery:(id)delivery;
@end

@implementation GTLocalXPCConnection

- (GTLocalXPCConnection)initWithXPCConnection:(id)connection messageQueue:(id)queue
{
  connectionCopy = connection;
  queueCopy = queue;
  v14.receiver = self;
  v14.super_class = GTLocalXPCConnection;
  v9 = [(GTLocalXPCConnection *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_connection, connection);
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    dispatchers = v10->_dispatchers;
    v10->_dispatchers = v11;

    objc_storeStrong(&v10->_messageQueue, queue);
  }

  return v10;
}

- (GTLocalXPCConnection)initWithTransactionScopedXPCConnection:(id)connection messageQueue:(id)queue
{
  connectionCopy = connection;
  queueCopy = queue;
  v16.receiver = self;
  v16.super_class = GTLocalXPCConnection;
  v9 = [(GTLocalXPCConnection *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_connection, connection);
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    dispatchers = v10->_dispatchers;
    v10->_dispatchers = v11;

    objc_storeStrong(&v10->_messageQueue, queue);
    v13 = os_transaction_create();
    transaction = v10->_transaction;
    v10->_transaction = v13;
  }

  return v10;
}

- (void)registerDispatcher:(id)dispatcher forPort:(unint64_t)port
{
  dispatcherCopy = dispatcher;
  messageQueue = self->_messageQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__GTLocalXPCConnection_registerDispatcher_forPort___block_invoke;
  block[3] = &unk_279661198;
  v10 = dispatcherCopy;
  portCopy = port;
  block[4] = self;
  v8 = dispatcherCopy;
  dispatch_async(messageQueue, block);
}

void __51__GTLocalXPCConnection_registerDispatcher_forPort___block_invoke(void *a1)
{
  v1 = *(a1[4] + 32);
  if (v1)
  {
    v2 = a1[5];
    v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[6]];
    [v1 setObject:v2 forKeyedSubscript:v3];
  }
}

- (unint64_t)registerDispatcher:(id)dispatcher
{
  dispatcherCopy = dispatcher;
  add = atomic_fetch_add(&registerDispatcher__nextStreamId, 1uLL);
  messageQueue = self->_messageQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__GTLocalXPCConnection_registerDispatcher___block_invoke;
  block[3] = &unk_279661198;
  v10 = dispatcherCopy;
  v11 = add;
  block[4] = self;
  v7 = dispatcherCopy;
  dispatch_async(messageQueue, block);

  return add;
}

void __43__GTLocalXPCConnection_registerDispatcher___block_invoke(void *a1)
{
  v1 = *(a1[4] + 32);
  if (v1)
  {
    v2 = a1[5];
    v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[6]];
    [v1 setObject:v2 forKeyedSubscript:v3];
  }
}

- (void)deregisterDispatcher:(unint64_t)dispatcher
{
  messageQueue = self->_messageQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__GTLocalXPCConnection_deregisterDispatcher___block_invoke;
  v4[3] = &unk_2796611C0;
  v4[4] = self;
  v4[5] = dispatcher;
  dispatch_async(messageQueue, v4);
}

void __45__GTLocalXPCConnection_deregisterDispatcher___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 32);
  if (v1)
  {
    v2 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 40)];
    [v1 removeObjectForKey:v2];
  }
}

- (void)dispatchMessage:(id)message replyConnection:(id)connection
{
  messageCopy = message;
  connectionCopy = connection;
  messageQueue = self->_messageQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__GTLocalXPCConnection_dispatchMessage_replyConnection___block_invoke;
  block[3] = &unk_2796611E8;
  v12 = messageCopy;
  selfCopy = self;
  v14 = connectionCopy;
  v9 = connectionCopy;
  v10 = messageCopy;
  dispatch_async(messageQueue, block);
}

void __56__GTLocalXPCConnection_dispatchMessage_replyConnection___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if (xpc_dictionary_get_flag(*(a1 + 32), "_flags", 1))
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v2 = *(*(a1 + 40) + 32);
    v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v16;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v16 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v15 + 1) + 8 * i);
          if (IsServicePort([v7 unsignedLongLongValue]))
          {
            v8 = [*(*(a1 + 40) + 32) objectForKeyedSubscript:v7];
            [v8 dispatchMessage:*(a1 + 32) replyConnection:*(a1 + 48)];
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v4);
    }

    v9 = *MEMORY[0x277D85DE8];
  }

  else
  {
    uint64 = xpc_dictionary_get_uint64(*(a1 + 32), "_port");
    v11 = *(*(a1 + 40) + 32);
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:uint64];
    v14 = [v11 objectForKeyedSubscript:v12];

    [v14 dispatchMessage:*(a1 + 32) replyConnection:*(a1 + 48)];
    v13 = *MEMORY[0x277D85DE8];
  }
}

- (void)sendMessage:(id)message replyHandler:(id)handler
{
  handlerCopy = handler;
  v7 = dispatch_get_global_queue(0, 0);
  connection = self->_connection;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __49__GTLocalXPCConnection_sendMessage_replyHandler___block_invoke;
  handler[3] = &unk_279661210;
  v11 = handlerCopy;
  v9 = handlerCopy;
  xpc_connection_send_message_with_reply(connection, message, v7, handler);
}

void __49__GTLocalXPCConnection_sendMessage_replyHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = 0;
  IsValid = MessageIsValid(v3, &v6);
  v5 = v6;
  if (!IsValid)
  {

    v3 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

- (id)sendMessageWithReplySync:(id)sync
{
  v3 = xpc_connection_send_message_with_reply_sync(self->_connection, sync);

  return v3;
}

- (id)sendMessageWithReplySync:(id)sync error:(id *)error
{
  v5 = [(GTLocalXPCConnection *)self sendMessageWithReplySync:sync];
  if (MessageIsValid(v5, error))
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)sendMessageAndWaitForDelivery:(id)delivery
{
  [(GTLocalXPCConnection *)self sendMessage:delivery];
  v4 = dispatch_group_create();
  dispatch_group_enter(v4);
  connection = self->_connection;
  barrier[0] = MEMORY[0x277D85DD0];
  barrier[1] = 3221225472;
  barrier[2] = __54__GTLocalXPCConnection_sendMessageAndWaitForDelivery___block_invoke;
  barrier[3] = &unk_279661140;
  v9 = v4;
  v6 = v4;
  xpc_connection_send_barrier(connection, barrier);
  v7 = dispatch_time(0, 1000000000);
  dispatch_group_wait(v6, v7);
}

- (void)activateWithMessageHandler:(id)handler andErrorHandler:(id)errorHandler
{
  handlerCopy = handler;
  errorHandlerCopy = errorHandler;
  objc_initWeak(&location, self);
  connection = self->_connection;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __67__GTLocalXPCConnection_activateWithMessageHandler_andErrorHandler___block_invoke;
  v11[3] = &unk_279661260;
  objc_copyWeak(&v14, &location);
  v12 = errorHandlerCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = errorHandlerCopy;
  xpc_connection_set_event_handler(connection, v11);
  xpc_connection_activate(self->_connection);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __67__GTLocalXPCConnection_activateWithMessageHandler_andErrorHandler___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[3];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __67__GTLocalXPCConnection_activateWithMessageHandler_andErrorHandler___block_invoke_2;
    v7[3] = &unk_279661238;
    v8 = v3;
    v9 = v5;
    v10 = a1[4];
    v11 = a1[5];
    dispatch_async(v6, v7);
  }
}

uint64_t __67__GTLocalXPCConnection_activateWithMessageHandler_andErrorHandler___block_invoke_2(uint64_t a1)
{
  if (MEMORY[0x253035010](*(a1 + 32)) == MEMORY[0x277D86480])
  {
    objc_storeStrong((*(a1 + 40) + 40), *(a1 + 32));
    v2 = 48;
  }

  else
  {
    v2 = 56;
  }

  v3 = *(a1 + 32);
  v4 = *(*(a1 + v2) + 16);

  return v4();
}

- (void)cancel
{
  xpc_connection_cancel(self->_connection);
  messageQueue = self->_messageQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__GTLocalXPCConnection_cancel__block_invoke;
  block[3] = &unk_279661140;
  block[4] = self;
  dispatch_async(messageQueue, block);
}

void __30__GTLocalXPCConnection_cancel__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 32);
  *(v1 + 32) = 0;
}

@end