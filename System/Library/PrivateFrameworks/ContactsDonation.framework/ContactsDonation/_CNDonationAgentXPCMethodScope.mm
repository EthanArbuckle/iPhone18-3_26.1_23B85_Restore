@interface _CNDonationAgentXPCMethodScope
- (_CNDonationAgentXPCMethodScope)init;
- (_CNDonationAgentXPCMethodScope)initWithConnection:(id)connection promise:(id)promise proxy:(id)proxy;
@end

@implementation _CNDonationAgentXPCMethodScope

- (_CNDonationAgentXPCMethodScope)init
{
  v22[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CFBE90]);
  objc_initWeak(&location, v3);
  v4 = +[CNDonationAgentXPCAdapter newXPCConnection];
  v5 = MEMORY[0x277CFBEF0];
  v22[0] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  remoteObjectInterface = [v4 remoteObjectInterface];
  [v5 addAllowedClasses:v6 toInterface:remoteObjectInterface forSelector:sel_meCardDonations_ argumentIndex:0 ofReply:1];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __38___CNDonationAgentXPCMethodScope_init__block_invoke;
  v19[3] = &unk_278569E10;
  objc_copyWeak(&v20, &location);
  [v4 setInterruptionHandler:v19];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __38___CNDonationAgentXPCMethodScope_init__block_invoke_2;
  v17[3] = &unk_278569E10;
  objc_copyWeak(&v18, &location);
  [v4 setInvalidationHandler:v17];
  [v4 resume];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __38___CNDonationAgentXPCMethodScope_init__block_invoke_3;
  v15 = &unk_278569E38;
  objc_copyWeak(&v16, &location);
  v8 = [v4 remoteObjectProxyWithErrorHandler:&v12];
  v9 = [(_CNDonationAgentXPCMethodScope *)self initWithConnection:v4 promise:v3 proxy:v8, v12, v13, v14, v15];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&v20);

  objc_destroyWeak(&location);
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (_CNDonationAgentXPCMethodScope)initWithConnection:(id)connection promise:(id)promise proxy:(id)proxy
{
  connectionCopy = connection;
  promiseCopy = promise;
  proxyCopy = proxy;
  v22.receiver = self;
  v22.super_class = _CNDonationAgentXPCMethodScope;
  v11 = [(_CNDonationAgentXPCMethodScope *)&v22 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_promise, promise);
    objc_storeStrong(&v12->_proxy, proxy);
    future = [(CNPromise *)v12->_promise future];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __67___CNDonationAgentXPCMethodScope_initWithConnection_promise_proxy___block_invoke;
    v20[3] = &unk_278569E60;
    v14 = connectionCopy;
    v21 = v14;
    [future addSuccessBlock:v20];

    future2 = [(CNPromise *)v12->_promise future];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __67___CNDonationAgentXPCMethodScope_initWithConnection_promise_proxy___block_invoke_2;
    v18[3] = &unk_278569E88;
    v19 = v14;
    [future2 addFailureBlock:v18];

    v16 = v12;
  }

  return v12;
}

@end