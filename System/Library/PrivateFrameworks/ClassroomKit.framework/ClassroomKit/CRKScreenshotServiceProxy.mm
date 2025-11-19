@interface CRKScreenshotServiceProxy
- (CRKScreenshotServiceProxy)init;
- (void)_fetchScreenshotDataWithMaximumSizeInPixels:(CGSize)a3 completion:(id)a4;
- (void)fetchScreenshotDataWithMaximumSizeInPixels:(CGSize)a3 completion:(id)a4;
@end

@implementation CRKScreenshotServiceProxy

- (CRKScreenshotServiceProxy)init
{
  v6.receiver = self;
  v6.super_class = CRKScreenshotServiceProxy;
  v2 = [(CRKScreenshotServiceProxy *)&v6 init];
  if (v2)
  {
    v3 = [[CRKValidXPCConnectionProvider alloc] initWithBuilder:&__block_literal_global_93];
    connectionProvider = v2->_connectionProvider;
    v2->_connectionProvider = v3;
  }

  return v2;
}

- (void)fetchScreenshotDataWithMaximumSizeInPixels:(CGSize)a3 completion:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __83__CRKScreenshotServiceProxy_fetchScreenshotDataWithMaximumSizeInPixels_completion___block_invoke;
  v9[3] = &unk_278DC2338;
  v9[4] = self;
  v10 = v7;
  v8 = v7;
  [(CRKScreenshotServiceProxy *)self _fetchScreenshotDataWithMaximumSizeInPixels:v9 completion:width, height];
}

void __83__CRKScreenshotServiceProxy_fetchScreenshotDataWithMaximumSizeInPixels_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = a2;

  (*(*(a1 + 40) + 16))();
}

- (void)_fetchScreenshotDataWithMaximumSizeInPixels:(CGSize)a3 completion:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = [(CRKScreenshotServiceProxy *)self connectionProvider];
  v9 = [v8 connection];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __84__CRKScreenshotServiceProxy__fetchScreenshotDataWithMaximumSizeInPixels_completion___block_invoke;
  v15[3] = &unk_278DC0FE0;
  v10 = v7;
  v16 = v10;
  v11 = [v9 remoteObjectProxyWithErrorHandler:v15];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __84__CRKScreenshotServiceProxy__fetchScreenshotDataWithMaximumSizeInPixels_completion___block_invoke_3;
  v13[3] = &unk_278DC2F20;
  v14 = v10;
  v12 = v10;
  [v11 fetchScreenshotDataWithMaximumSizeInPixels:v13 completion:{width, height}];
}

void __84__CRKScreenshotServiceProxy__fetchScreenshotDataWithMaximumSizeInPixels_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __84__CRKScreenshotServiceProxy__fetchScreenshotDataWithMaximumSizeInPixels_completion___block_invoke_2;
  v6[3] = &unk_278DC0FB8;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __84__CRKScreenshotServiceProxy__fetchScreenshotDataWithMaximumSizeInPixels_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__CRKScreenshotServiceProxy__fetchScreenshotDataWithMaximumSizeInPixels_completion___block_invoke_4;
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