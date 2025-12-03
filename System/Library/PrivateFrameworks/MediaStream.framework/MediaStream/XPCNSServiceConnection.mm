@interface XPCNSServiceConnection
- (XPCNSServiceConnection)initWithXPCServiceConnection:(id)connection;
- (XPCNSServiceConnectionDelegate)delegate;
- (void)XPCServiceConnection:(id)connection didReceiveRequest:(id)request sequenceNumber:(unint64_t)number;
- (void)XPCServiceConnectionDidDisconnect:(id)disconnect;
- (void)sendMessage:(id)message withHandler:(id)handler;
@end

@implementation XPCNSServiceConnection

- (XPCNSServiceConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)XPCServiceConnectionDidDisconnect:(id)disconnect
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained XPCNSServiceConnectionDidDisconnect:self];
}

- (void)XPCServiceConnection:(id)connection didReceiveRequest:(id)request sequenceNumber:(unint64_t)number
{
  requestCopy = request;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = [[XPCNSRequest alloc] initWithXPCRequest:requestCopy];

  [WeakRetained XPCNSServiceConnection:self didReceiveRequest:v8 sequenceNumber:number];
}

- (void)sendMessage:(id)message withHandler:(id)handler
{
  handlerCopy = handler;
  messageCopy = message;
  v8 = xpc_dictionary_create(0, 0, 0);
  inserted = _insertMessage(v8, messageCopy, 0, 0, 0);

  if (inserted)
  {
    serviceConnection = self->_serviceConnection;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __50__XPCNSServiceConnection_sendMessage_withHandler___block_invoke;
    v11[3] = &unk_2798A52D8;
    v11[4] = self;
    v12 = handlerCopy;
    [(XPCServiceConnection *)serviceConnection sendMessage:v8 withHandler:v11];
  }
}

void __50__XPCNSServiceConnection_sendMessage_withHandler___block_invoke(uint64_t a1, int a2, void *a3)
{
  if (a2)
  {
    v4 = 0;
  }

  else
  {
    v12 = 0;
    v5 = _unpack(a3, &v12, 0);
    v4 = v12;
    if ((v5 & 1) == 0 && _shouldLogBlock && (*(_shouldLogBlock + 16))())
    {
      _XPCLog(3, @"%@: Could not unserialize reply.", v6, v7, v8, v9, v10, v11, *(a1 + 32));
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (XPCNSServiceConnection)initWithXPCServiceConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = XPCNSServiceConnection;
  v6 = [(XPCNSServiceConnection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serviceConnection, connection);
    [(XPCServiceConnection *)v7->_serviceConnection setDelegate:v7];
    [(XPCServiceConnection *)v7->_serviceConnection setContext:v7];
  }

  return v7;
}

@end