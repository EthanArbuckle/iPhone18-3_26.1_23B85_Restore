@interface SafariSandboxBrokerConnection
- (void)_connectionWithCompletionHandler:(id)a3;
@end

@implementation SafariSandboxBrokerConnection

- (void)_connectionWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = v4;
  connection = self->_connection;
  if (connection)
  {
    (*(v4 + 2))(v4, connection, 0);
  }

  else
  {
    objc_initWeak(&location, self);
    v7 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.Safari.SandboxBroker"];
    v8 = WBSUISafariSandboxBrokerInterface();
    [v7 setRemoteObjectInterface:v8];

    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __66__SafariSandboxBrokerConnection__connectionWithCompletionHandler___block_invoke;
    v12 = &unk_2781D5598;
    objc_copyWeak(&v13, &location);
    [v7 setInvalidationHandler:&v9];
    [v7 resume];
    objc_storeStrong(&self->_connection, v7);
    (v5)[2](v5, v7, 0);
    objc_destroyWeak(&v13);

    objc_destroyWeak(&location);
  }
}

void __66__SafariSandboxBrokerConnection__connectionWithCompletionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[3];
    WeakRetained[3] = 0;
    v3 = WeakRetained;

    WeakRetained = v3;
  }
}

@end