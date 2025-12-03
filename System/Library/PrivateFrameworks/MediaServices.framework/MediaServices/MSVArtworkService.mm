@interface MSVArtworkService
+ (id)sharedService;
- (MSVArtworkService)init;
- (void)dealloc;
- (void)sendRequest:(id)request completion:(id)completion;
- (void)sendRequest:(id)request completionHandler:(id)handler;
@end

@implementation MSVArtworkService

- (void)sendRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v8 = [MSVAsyncBlockOperation alloc];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __44__MSVArtworkService_sendRequest_completion___block_invoke;
  v13[3] = &unk_1E7981908;
  v14 = requestCopy;
  v15 = completionCopy;
  v13[4] = self;
  v9 = requestCopy;
  v10 = completionCopy;
  v11 = [(MSVAsyncBlockOperation *)v8 initWithStartHandler:v13];
  serviceColorAnalysisOperationQueue = [(MSVArtworkService *)self serviceColorAnalysisOperationQueue];
  [serviceColorAnalysisOperationQueue addOperation:v11];
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

- (void)sendRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v8 = [MSVAsyncBlockOperation alloc];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__MSVArtworkService_sendRequest_completionHandler___block_invoke;
  v13[3] = &unk_1E7981908;
  v14 = requestCopy;
  v15 = handlerCopy;
  v13[4] = self;
  v9 = requestCopy;
  v10 = handlerCopy;
  v11 = [(MSVAsyncBlockOperation *)v8 initWithStartHandler:v13];
  serviceThrottlingOperationQueue = [(MSVArtworkService *)self serviceThrottlingOperationQueue];
  [serviceThrottlingOperationQueue addOperation:v11];
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
  serverConnection = [(MSVArtworkService *)self serverConnection];
  [serverConnection invalidate];

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

    serviceThrottlingOperationQueue = [(MSVArtworkService *)v2 serviceThrottlingOperationQueue];
    [serviceThrottlingOperationQueue setMaxConcurrentOperationCount:5];

    v5 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    [(MSVArtworkService *)v2 setServiceColorAnalysisOperationQueue:v5];

    serviceColorAnalysisOperationQueue = [(MSVArtworkService *)v2 serviceColorAnalysisOperationQueue];
    [serviceColorAnalysisOperationQueue setMaxConcurrentOperationCount:5];

    v7 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.mediaartworkd.xpc" options:0];
    [(MSVArtworkService *)v2 setServerConnection:v7];

    v8 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F216E228];
    v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    [v8 setClasses:v9 forSelector:sel_processArtworkColorAnalysisRequest_withReply_ argumentIndex:0 ofReply:1];

    serverConnection = [(MSVArtworkService *)v2 serverConnection];
    [serverConnection setRemoteObjectInterface:v8];

    serverConnection2 = [(MSVArtworkService *)v2 serverConnection];
    [serverConnection2 resume];
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