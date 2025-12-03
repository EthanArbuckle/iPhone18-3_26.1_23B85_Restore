@interface XPCNSClientConnection
- (XPCNSClientConnection)initWithServiceName:(id)name delegate:(id)delegate;
- (void)XPCClientConnection:(id)connection didReceiveRequest:(id)request;
- (void)sendMessage:(id)message data:(id)data withHandler:(id)handler;
- (void)sendMessageReliably:(id)reliably data:(id)data maxRetryCount:(int)count withHandler:(id)handler;
@end

@implementation XPCNSClientConnection

- (void)XPCClientConnection:(id)connection didReceiveRequest:(id)request
{
  delegate = self->_delegate;
  requestCopy = request;
  v7 = [[XPCNSRequest alloc] initWithXPCRequest:requestCopy];

  [(XPCNSClientConnectionDelegate *)delegate XPCNSClientConnection:self didReceiveRequest:v7];
}

- (void)sendMessageReliably:(id)reliably data:(id)data maxRetryCount:(int)count withHandler:(id)handler
{
  handlerCopy = handler;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __76__XPCNSClientConnection_sendMessageReliably_data_maxRetryCount_withHandler___block_invoke;
  v12[3] = &unk_2798A52B0;
  countCopy = count;
  v12[4] = self;
  v13 = handlerCopy;
  v11 = handlerCopy;
  [(XPCNSClientConnection *)self sendMessage:reliably data:data withHandler:v12];
}

uint64_t __76__XPCNSClientConnection_sendMessageReliably_data_maxRetryCount_withHandler___block_invoke(uint64_t a1, int a2, void *a3, int a4, unint64_t a5)
{
  v9 = a3;
  if (!a2)
  {
    v19 = *(*(a1 + 40) + 16);
LABEL_14:
    v19();
    v12 = 0;
    goto LABEL_15;
  }

  if (!a4 || ((v10 = *(a1 + 48), v10 != -1) ? (v11 = v10 > a5) : (v11 = 1), !v11))
  {
    if (_shouldLogBlock && (*(_shouldLogBlock + 16))())
    {
      _XPCLog(3, @"%@: Could not send message, even after retrying. Dropping message.", v13, v14, v15, v16, v17, v18, *(a1 + 32));
    }

    v19 = *(*(a1 + 40) + 16);
    goto LABEL_14;
  }

  v12 = 1;
LABEL_15:

  return v12;
}

- (void)sendMessage:(id)message data:(id)data withHandler:(id)handler
{
  handlerCopy = handler;
  dataCopy = data;
  messageCopy = message;
  v11 = xpc_dictionary_create(0, 0, 0);
  v24 = 0;
  v25 = 0;
  inserted = _insertMessage(v11, messageCopy, dataCopy, &v25, &v24);

  if (inserted)
  {
    clientConnection = self->_clientConnection;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __54__XPCNSClientConnection_sendMessage_data_withHandler___block_invoke;
    v20[3] = &unk_2798A5288;
    v20[4] = self;
    v21 = handlerCopy;
    v22 = v25;
    v23 = v24;
    [(XPCClientConnection *)clientConnection sendMessage:v11 withHandler:v20];
  }

  else if (_shouldLogBlock && (*(_shouldLogBlock + 16))())
  {
    _XPCLog(3, @"%@: Cannot send message.", v14, v15, v16, v17, v18, v19, self);
  }
}

uint64_t __54__XPCNSClientConnection_sendMessage_data_withHandler___block_invoke(uint64_t a1, int a2, void *a3, int a4)
{
  v7 = a3;
  v8 = v7;
  if (a2)
  {
    v9 = (*(*(a1 + 40) + 16))();
  }

  else
  {
    v20 = 0;
    v10 = _unpack(v7, &v20, 0);
    v11 = v20;
    if (v10)
    {
      (*(*(a1 + 40) + 16))();
      v9 = 0;
    }

    else
    {
      if (_shouldLogBlock && (*(_shouldLogBlock + 16))())
      {
        _XPCLog(3, @"%@: Could not unserialize reply to message.", v12, v13, v14, v15, v16, v17, *(a1 + 32));
      }

      v9 = (*(*(a1 + 40) + 16))();
    }
  }

  v18 = a4 & v9;
  if ((v18 & 1) == 0)
  {
    munmap(*(a1 + 48), *(a1 + 56));
  }

  return v18;
}

- (XPCNSClientConnection)initWithServiceName:(id)name delegate:(id)delegate
{
  nameCopy = name;
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = XPCNSClientConnection;
  v8 = [(XPCNSClientConnection *)&v12 init];
  if (v8)
  {
    v9 = [[XPCClientConnection alloc] initWithServiceName:nameCopy delegate:v8];
    clientConnection = v8->_clientConnection;
    v8->_clientConnection = v9;

    v8->_delegate = delegateCopy;
  }

  return v8;
}

@end