@interface CRKApplicationInfoServiceProxy
- (CRKApplicationInfoServiceProxy)init;
- (void)_fetchApplicationWithDescriptor:(id)descriptor completion:(id)completion;
- (void)fetchApplicationWithDescriptor:(id)descriptor completion:(id)completion;
@end

@implementation CRKApplicationInfoServiceProxy

- (CRKApplicationInfoServiceProxy)init
{
  v6.receiver = self;
  v6.super_class = CRKApplicationInfoServiceProxy;
  v2 = [(CRKApplicationInfoServiceProxy *)&v6 init];
  if (v2)
  {
    v3 = [[CRKValidXPCConnectionProvider alloc] initWithBuilder:&__block_literal_global_76];
    connectionProvider = v2->_connectionProvider;
    v2->_connectionProvider = v3;
  }

  return v2;
}

- (void)fetchApplicationWithDescriptor:(id)descriptor completion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __76__CRKApplicationInfoServiceProxy_fetchApplicationWithDescriptor_completion___block_invoke;
  v8[3] = &unk_278DC2AD0;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  [(CRKApplicationInfoServiceProxy *)self _fetchApplicationWithDescriptor:descriptor completion:v8];
}

void __76__CRKApplicationInfoServiceProxy_fetchApplicationWithDescriptor_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = a2;

  (*(*(a1 + 40) + 16))();
}

- (void)_fetchApplicationWithDescriptor:(id)descriptor completion:(id)completion
{
  completionCopy = completion;
  descriptorCopy = descriptor;
  connectionProvider = [(CRKApplicationInfoServiceProxy *)self connectionProvider];
  connection = [connectionProvider connection];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __77__CRKApplicationInfoServiceProxy__fetchApplicationWithDescriptor_completion___block_invoke;
  v15[3] = &unk_278DC0FE0;
  v10 = completionCopy;
  v16 = v10;
  v11 = [connection remoteObjectProxyWithErrorHandler:v15];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __77__CRKApplicationInfoServiceProxy__fetchApplicationWithDescriptor_completion___block_invoke_3;
  v13[3] = &unk_278DC2AF8;
  v14 = v10;
  v12 = v10;
  [v11 fetchApplicationWithDescriptor:descriptorCopy completion:v13];
}

void __77__CRKApplicationInfoServiceProxy__fetchApplicationWithDescriptor_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __77__CRKApplicationInfoServiceProxy__fetchApplicationWithDescriptor_completion___block_invoke_2;
  v6[3] = &unk_278DC0FB8;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __77__CRKApplicationInfoServiceProxy__fetchApplicationWithDescriptor_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__CRKApplicationInfoServiceProxy__fetchApplicationWithDescriptor_completion___block_invoke_4;
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