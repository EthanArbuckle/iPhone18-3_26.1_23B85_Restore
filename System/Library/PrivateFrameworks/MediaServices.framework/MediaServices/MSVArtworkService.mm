@interface MSVArtworkService
+ (id)sharedService;
- (MSVArtworkService)init;
- (void)dealloc;
- (void)sendRequest:(id)a3 completion:(id)a4;
- (void)sendRequest:(id)a3 completionHandler:(id)a4;
@end

@implementation MSVArtworkService

- (void)sendRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MSVAsyncBlockOperation alloc];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __44__MSVArtworkService_sendRequest_completion___block_invoke;
  v13[3] = &unk_1E7981908;
  v14 = v6;
  v15 = v7;
  v13[4] = self;
  v9 = v6;
  v10 = v7;
  v11 = [(MSVAsyncBlockOperation *)v8 initWithStartHandler:v13];
  v12 = [(MSVArtworkService *)self serviceColorAnalysisOperationQueue];
  [v12 addOperation:v11];
}

void __44__MSVArtworkService_sendRequest_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) serverConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __44__MSVArtworkService_sendRequest_completion___block_invoke_2;
  v13[3] = &unk_1E79818E0;
  v15 = *(a1 + 48);
  v5 = v3;
  v14 = v5;
  v6 = [v4 remoteObjectProxyWithErrorHandler:v13];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __44__MSVArtworkService_sendRequest_completion___block_invoke_3;
  v10[3] = &unk_1E7981930;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v11 = v5;
  v12 = v8;
  v9 = v5;
  [v6 processArtworkColorAnalysisRequest:v7 withReply:v10];
}

void __44__MSVArtworkService_sendRequest_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = v3;
  if (v4)
  {
    (*(v4 + 16))(v4, 0, v3);
    v3 = v5;
  }

  [*(a1 + 32) finishWithError:v3];
}

void __44__MSVArtworkService_sendRequest_completion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  v7 = v5;
  if (v6)
  {
    (*(v6 + 16))(v6, a2, v5);
    v5 = v7;
  }

  [*(a1 + 32) finishWithError:v5];
}

- (void)sendRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MSVAsyncBlockOperation alloc];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__MSVArtworkService_sendRequest_completionHandler___block_invoke;
  v13[3] = &unk_1E7981908;
  v14 = v6;
  v15 = v7;
  v13[4] = self;
  v9 = v6;
  v10 = v7;
  v11 = [(MSVAsyncBlockOperation *)v8 initWithStartHandler:v13];
  v12 = [(MSVArtworkService *)self serviceThrottlingOperationQueue];
  [v12 addOperation:v11];
}

void __51__MSVArtworkService_sendRequest_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) serverConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__MSVArtworkService_sendRequest_completionHandler___block_invoke_2;
  v13[3] = &unk_1E79818E0;
  v15 = *(a1 + 48);
  v5 = v3;
  v14 = v5;
  v6 = [v4 remoteObjectProxyWithErrorHandler:v13];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__MSVArtworkService_sendRequest_completionHandler___block_invoke_3;
  v10[3] = &unk_1E79818E0;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v11 = v5;
  v12 = v8;
  v9 = v5;
  [v6 processArtworkRequest:v7 completionHandler:v10];
}

void __51__MSVArtworkService_sendRequest_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = v3;
  if (v4)
  {
    (*(v4 + 16))();
    v3 = v5;
  }

  [*(a1 + 32) finishWithError:v3];
}

void __51__MSVArtworkService_sendRequest_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = v3;
  if (v4)
  {
    (*(v4 + 16))();
    v3 = v5;
  }

  [*(a1 + 32) finishWithError:v3];
}

- (void)dealloc
{
  v3 = [(MSVArtworkService *)self serverConnection];
  [v3 invalidate];

  v4.receiver = self;
  v4.super_class = MSVArtworkService;
  [(MSVArtworkService *)&v4 dealloc];
}

- (MSVArtworkService)init
{
  v13.receiver = self;
  v13.super_class = MSVArtworkService;
  v2 = [(MSVArtworkService *)&v13 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    [(MSVArtworkService *)v2 setServiceThrottlingOperationQueue:v3];

    v4 = [(MSVArtworkService *)v2 serviceThrottlingOperationQueue];
    [v4 setMaxConcurrentOperationCount:5];

    v5 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    [(MSVArtworkService *)v2 setServiceColorAnalysisOperationQueue:v5];

    v6 = [(MSVArtworkService *)v2 serviceColorAnalysisOperationQueue];
    [v6 setMaxConcurrentOperationCount:5];

    v7 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.mediaartworkd.xpc" options:0];
    [(MSVArtworkService *)v2 setServerConnection:v7];

    v8 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F216E228];
    v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    [v8 setClasses:v9 forSelector:sel_processArtworkColorAnalysisRequest_withReply_ argumentIndex:0 ofReply:1];

    v10 = [(MSVArtworkService *)v2 serverConnection];
    [v10 setRemoteObjectInterface:v8];

    v11 = [(MSVArtworkService *)v2 serverConnection];
    [v11 resume];
  }

  return v2;
}

+ (id)sharedService
{
  if (sharedService_onceToken != -1)
  {
    dispatch_once(&sharedService_onceToken, &__block_literal_global_831);
  }

  v3 = sharedService___sharedService;

  return v3;
}

uint64_t __34__MSVArtworkService_sharedService__block_invoke()
{
  sharedService___sharedService = objc_alloc_init(MSVArtworkService);

  return MEMORY[0x1EEE66BB8]();
}

@end