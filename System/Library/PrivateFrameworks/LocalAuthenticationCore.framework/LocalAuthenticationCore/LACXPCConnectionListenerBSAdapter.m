@interface LACXPCConnectionListenerBSAdapter
- (LACXPCConnectionListenerBSAdapter)initWithDomainName:(id)a3 protocolServiceName:(id)a4;
- (LACXPCConnectionListenerDelegate)delegate;
- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5;
@end

@implementation LACXPCConnectionListenerBSAdapter

- (LACXPCConnectionListenerBSAdapter)initWithDomainName:(id)a3 protocolServiceName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = LACXPCConnectionListenerBSAdapter;
  v8 = [(LACXPCConnectionListenerBSAdapter *)&v18 init];
  if (v8)
  {
    v9 = MEMORY[0x1E698F4C0];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __76__LACXPCConnectionListenerBSAdapter_initWithDomainName_protocolServiceName___block_invoke;
    v14[3] = &unk_1E7A95860;
    v15 = v6;
    v16 = v7;
    v10 = v8;
    v17 = v10;
    v11 = [v9 listenerWithConfigurator:v14];
    listener = v10->_listener;
    v10->_listener = v11;
  }

  return v8;
}

void __76__LACXPCConnectionListenerBSAdapter_initWithDomainName_protocolServiceName___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 setDomain:v3];
  [v4 setService:a1[5]];
  [v4 setDelegate:a1[6]];
}

- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5
{
  v11 = a4;
  WeakRetained = objc_loadWeakRetained(&self->delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [v11 extractNSXPCConnectionWithConfigurator:&__block_literal_global_1];
    v9 = [[LACXPCConnectionDefaultAdapter alloc] initWithConnection:v8];
    v10 = objc_loadWeakRetained(&self->delegate);
    [v10 listener:self didReceiveConnection:v9];
  }
}

- (LACXPCConnectionListenerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end