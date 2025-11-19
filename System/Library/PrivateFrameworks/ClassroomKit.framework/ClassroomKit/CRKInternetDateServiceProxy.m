@interface CRKInternetDateServiceProxy
- (CRKInternetDateServiceProxy)init;
- (void)_fetchInternetDateWithCompletion:(id)a3;
- (void)fetchInternetDateWithCompletion:(id)a3;
@end

@implementation CRKInternetDateServiceProxy

- (CRKInternetDateServiceProxy)init
{
  v6.receiver = self;
  v6.super_class = CRKInternetDateServiceProxy;
  v2 = [(CRKInternetDateServiceProxy *)&v6 init];
  if (v2)
  {
    v3 = [[CRKValidXPCConnectionProvider alloc] initWithBuilder:&__block_literal_global_115];
    connectionProvider = v2->_connectionProvider;
    v2->_connectionProvider = v3;
  }

  return v2;
}

- (void)fetchInternetDateWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__CRKInternetDateServiceProxy_fetchInternetDateWithCompletion___block_invoke;
  v6[3] = &unk_278DC34E0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(CRKInternetDateServiceProxy *)self _fetchInternetDateWithCompletion:v6];
}

void __63__CRKInternetDateServiceProxy_fetchInternetDateWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = a2;

  (*(*(a1 + 40) + 16))();
}

- (void)_fetchInternetDateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CRKInternetDateServiceProxy *)self connectionProvider];
  v6 = [v5 connection];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __64__CRKInternetDateServiceProxy__fetchInternetDateWithCompletion___block_invoke;
  v12[3] = &unk_278DC0FE0;
  v7 = v4;
  v13 = v7;
  v8 = [v6 remoteObjectProxyWithErrorHandler:v12];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__CRKInternetDateServiceProxy__fetchInternetDateWithCompletion___block_invoke_3;
  v10[3] = &unk_278DC3508;
  v11 = v7;
  v9 = v7;
  [v8 fetchInternetDateWithCompletion:v10];
}

void __64__CRKInternetDateServiceProxy__fetchInternetDateWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__CRKInternetDateServiceProxy__fetchInternetDateWithCompletion___block_invoke_2;
  v6[3] = &unk_278DC0FB8;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __64__CRKInternetDateServiceProxy__fetchInternetDateWithCompletion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__CRKInternetDateServiceProxy__fetchInternetDateWithCompletion___block_invoke_4;
  block[3] = &unk_278DC1630;
  v7 = *(a1 + 32);
  v12 = v6;
  v13 = v7;
  v11 = v5;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

@end