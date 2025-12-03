@interface CRKBooksServiceProxy
- (CRKBooksServiceProxy)init;
- (void)_fetchBooksWithRequest:(id)request completion:(id)completion;
- (void)_fetchChaptersWithRequest:(id)request completion:(id)completion;
- (void)fetchBooksWithRequest:(id)request completion:(id)completion;
- (void)fetchChaptersWithRequest:(id)request completion:(id)completion;
@end

@implementation CRKBooksServiceProxy

- (CRKBooksServiceProxy)init
{
  v6.receiver = self;
  v6.super_class = CRKBooksServiceProxy;
  v2 = [(CRKBooksServiceProxy *)&v6 init];
  if (v2)
  {
    v3 = [[CRKValidXPCConnectionProvider alloc] initWithBuilder:&__block_literal_global_11];
    connectionProvider = v2->_connectionProvider;
    v2->_connectionProvider = v3;
  }

  return v2;
}

- (void)fetchBooksWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__CRKBooksServiceProxy_fetchBooksWithRequest_completion___block_invoke;
  v8[3] = &unk_278DC1608;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  [(CRKBooksServiceProxy *)self _fetchBooksWithRequest:request completion:v8];
}

void __57__CRKBooksServiceProxy_fetchBooksWithRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = a2;

  (*(*(a1 + 40) + 16))();
}

- (void)_fetchBooksWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  connectionProvider = [(CRKBooksServiceProxy *)self connectionProvider];
  connection = [connectionProvider connection];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __58__CRKBooksServiceProxy__fetchBooksWithRequest_completion___block_invoke;
  v15[3] = &unk_278DC0FE0;
  v10 = completionCopy;
  v16 = v10;
  v11 = [connection remoteObjectProxyWithErrorHandler:v15];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __58__CRKBooksServiceProxy__fetchBooksWithRequest_completion___block_invoke_3;
  v13[3] = &unk_278DC1658;
  v14 = v10;
  v12 = v10;
  [v11 fetchBooksWithRequest:requestCopy completion:v13];
}

void __58__CRKBooksServiceProxy__fetchBooksWithRequest_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__CRKBooksServiceProxy__fetchBooksWithRequest_completion___block_invoke_2;
  v6[3] = &unk_278DC0FB8;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __58__CRKBooksServiceProxy__fetchBooksWithRequest_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__CRKBooksServiceProxy__fetchBooksWithRequest_completion___block_invoke_4;
  block[3] = &unk_278DC1630;
  v7 = *(a1 + 32);
  v12 = v6;
  v13 = v7;
  v11 = v5;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)fetchChaptersWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__CRKBooksServiceProxy_fetchChaptersWithRequest_completion___block_invoke;
  v8[3] = &unk_278DC1680;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  [(CRKBooksServiceProxy *)self _fetchChaptersWithRequest:request completion:v8];
}

void __60__CRKBooksServiceProxy_fetchChaptersWithRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = a2;

  (*(*(a1 + 40) + 16))();
}

- (void)_fetchChaptersWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  connectionProvider = [(CRKBooksServiceProxy *)self connectionProvider];
  connection = [connectionProvider connection];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __61__CRKBooksServiceProxy__fetchChaptersWithRequest_completion___block_invoke;
  v15[3] = &unk_278DC0FE0;
  v10 = completionCopy;
  v16 = v10;
  v11 = [connection remoteObjectProxyWithErrorHandler:v15];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__CRKBooksServiceProxy__fetchChaptersWithRequest_completion___block_invoke_3;
  v13[3] = &unk_278DC16A8;
  v14 = v10;
  v12 = v10;
  [v11 fetchChaptersWithRequest:requestCopy completion:v13];
}

void __61__CRKBooksServiceProxy__fetchChaptersWithRequest_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__CRKBooksServiceProxy__fetchChaptersWithRequest_completion___block_invoke_2;
  v6[3] = &unk_278DC0FB8;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __61__CRKBooksServiceProxy__fetchChaptersWithRequest_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__CRKBooksServiceProxy__fetchChaptersWithRequest_completion___block_invoke_4;
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