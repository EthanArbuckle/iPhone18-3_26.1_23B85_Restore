@interface IPServerXPCTransport
+ (id)defaultXPCTransport;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (IPServerXPCTransport)initWithListener:(id)a3;
- (IPServerXPCTransportDelegate)delegate;
- (void)clientDisconnected:(id)a3;
- (void)disseminateProgressEndForIdenitty:(id)a3 reason:(unint64_t)a4;
- (void)disseminateProgressUpdateForIdentity:(id)a3 currentProgress:(id)a4;
@end

@implementation IPServerXPCTransport

+ (id)defaultXPCTransport
{
  if (defaultXPCTransport_onceToken != -1)
  {
    +[IPServerXPCTransport defaultXPCTransport];
  }

  v3 = defaultXPCTransport_transport;

  return v3;
}

void __43__IPServerXPCTransport_defaultXPCTransport__block_invoke()
{
  v2 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.InstallProgress.xpc"];
  v0 = [[IPServerXPCTransport alloc] initWithListener:v2];
  v1 = defaultXPCTransport_transport;
  defaultXPCTransport_transport = v0;
}

- (IPServerXPCTransport)initWithListener:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = IPServerXPCTransport;
  v6 = [(IPServerXPCTransport *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_listener, a3);
    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    clients = v7->_clients;
    v7->_clients = v8;

    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.InstallProgress.IPServerXPCTransport.%p", v7];
    v11 = [v10 UTF8String];
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create(v11, v12);
    serviceQueue = v7->_serviceQueue;
    v7->_serviceQueue = v13;

    [v5 setDelegate:v7];
    [v5 _setQueue:v7->_serviceQueue];
  }

  return v7;
}

- (void)disseminateProgressUpdateForIdentity:(id)a3 currentProgress:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_serviceQueue);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = self->_clients;
  v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v14 + 1) + 8 * v12++) sendUpdateForIdentity:v6 currentProgress:{v7, v14}];
      }

      while (v10 != v12);
      v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)disseminateProgressEndForIdenitty:(id)a3 reason:(unint64_t)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  dispatch_assert_queue_V2(self->_serviceQueue);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = self->_clients;
  v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v13 + 1) + 8 * v11++) sendProgressEndForIdentity:v6 reason:{a4, v13}];
      }

      while (v9 != v11);
      v9 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = [WeakRetained transport:self shouldAcceptConnection:v5];

  if (v7)
  {
    v8 = [[IPXPCClient alloc] initWithConnection:v5 serviceQueue:self->_serviceQueue];
    [(NSMutableSet *)self->_clients addObject:v8];
    v9 = objc_loadWeakRetained(&self->_delegate);
    v10 = [v9 transport:self requestDelegateForClient:v8];
    [(IPXPCClient *)v8 setDelegate:v10];

    v11 = objc_loadWeakRetained(&self->_delegate);
    [v11 transport:self acceptedClient:v8];

    [(IPXPCClient *)v8 resume];
  }

  else
  {
    v12 = _IPServerLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v5;
      _os_log_impl(&dword_254C69000, v12, OS_LOG_TYPE_DEFAULT, "Rejecting connection %@.", &v15, 0xCu);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)clientDisconnected:(id)a3
{
  v4 = a3;
  if ([(NSMutableSet *)self->_clients containsObject:v4])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained transport:self clientDisconnected:v4];

    [(NSMutableSet *)self->_clients removeObject:v4];
  }

  else
  {
    v6 = _IPServerLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [IPServerXPCTransport clientDisconnected:v6];
    }
  }
}

- (IPServerXPCTransportDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end