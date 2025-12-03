@interface CDMClient
+ (id)graphNameForEmbedding;
- (BOOL)registerWithAssetsDelegate:(id)delegate withType:(int64_t)type;
- (CDMClient)init;
- (CDMClient)initWithDelegate:(id)delegate;
- (void)dealloc;
- (void)initProxyObject:(BOOL)object delegate:(id)delegate;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)processEmbeddingRequest:(id)request requestId:(id)id completionHandler:(id)handler;
- (void)processNLUPreprocessRequest:(id)request completionHandler:(id)handler;
- (void)processSsuInferenceRequest:(id)request completionHandler:(id)handler;
- (void)processText:(id)text requestConnectionId:(id)id completionHandler:(id)handler;
- (void)setupKVOForwarding;
- (void)setupNLUWithLocale:(id)locale completionHandler:(id)handler;
- (void)setupSsuInference:(id)inference serviceStateDirectory:(id)directory completionHandler:(id)handler;
- (void)setupWithLocale:(id)locale embeddingVersion:(id)version completionHandler:(id)handler;
- (void)setupWithLocale:(id)locale embeddingVersion:(id)version deallocationTime:(double)time completionHandler:(id)handler;
@end

@implementation CDMClient

- (void)setupKVOForwarding
{
  [(CDMClientInterface *)self->_client addObserver:self forKeyPath:@"successFromSetup" options:1 context:0];
  [(CDMClientInterface *)self->_client addObserver:self forKeyPath:@"errorFromSetup" options:1 context:0];
  client = self->_client;

  [(CDMClientInterface *)client addObserver:self forKeyPath:@"daemonKilled" options:1 context:0];
}

- (void)dealloc
{
  v3 = self->_client;
  objc_sync_enter(v3);
  [(CDMClientInterface *)self->_client removeObserver:self forKeyPath:@"successFromSetup"];
  [(CDMClientInterface *)self->_client removeObserver:self forKeyPath:@"errorFromSetup"];
  [(CDMClientInterface *)self->_client removeObserver:self forKeyPath:@"daemonKilled"];
  objc_sync_exit(v3);

  v4.receiver = self;
  v4.super_class = CDMClient;
  [(CDMClient *)&v4 dealloc];
}

- (BOOL)registerWithAssetsDelegate:(id)delegate withType:(int64_t)type
{
  v7 = self->_client;
  delegateCopy = delegate;
  objc_sync_enter(v7);
  LOBYTE(type) = [(CDMClientInterface *)self->_client registerWithAssetsDelegate:delegateCopy withType:type];

  objc_sync_exit(v7);
  return type;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v18 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  changeCopy = change;
  v10 = [changeCopy objectForKey:*MEMORY[0x1E696A4F0]];
  if ([pathCopy isEqualToString:@"successFromSetup"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = @"successFromSetup";
LABEL_7:
      [(CDMClient *)self setValue:v10 forKey:v11];
    }
  }

  else
  {
    if (![pathCopy isEqualToString:@"errorFromSetup"])
    {
      if ([pathCopy isEqualToString:@"daemonKilled"])
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_15;
        }

        [(CDMClient *)self setValue:v10 forKey:@"daemonKilled"];
        v12 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v14 = 136315394;
          v15 = "[CDMClient observeValueForKeyPath:ofObject:change:context:]";
          v16 = 2112;
          v17 = v10;
          _os_log_debug_impl(&dword_1DC287000, v12, OS_LOG_TYPE_DEBUG, "%s Setting daemonKilled to: %@", &v14, 0x16u);
        }
      }

      else
      {
        v12 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v14 = 136315394;
          v15 = "[CDMClient observeValueForKeyPath:ofObject:change:context:]";
          v16 = 2112;
          v17 = pathCopy;
          _os_log_error_impl(&dword_1DC287000, v12, OS_LOG_TYPE_ERROR, "%s [ERR]: Not expecting keyPath %@", &v14, 0x16u);
        }
      }

      goto LABEL_15;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = @"errorFromSetup";
      goto LABEL_7;
    }
  }

LABEL_15:

  v13 = *MEMORY[0x1E69E9840];
}

- (void)initProxyObject:(BOOL)object delegate:(id)delegate
{
  objectCopy = object;
  v20 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  if (objectCopy)
  {
    v7 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v16 = 136315138;
      v17 = "[CDMClient initProxyObject:delegate:]";
      _os_log_debug_impl(&dword_1DC287000, v7, OS_LOG_TYPE_DEBUG, "%s Creating CDMXPCClient", &v16, 0xCu);
    }

    v8 = [[CDMXPCClient alloc] initWithDelegate:delegateCopy];
    client = self->_client;
    self->_client = &v8->super;
  }

  else
  {
    v10 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v16 = 136315138;
      v17 = "[CDMClient initProxyObject:delegate:]";
      _os_log_debug_impl(&dword_1DC287000, v10, OS_LOG_TYPE_DEBUG, "%s Creating CDMFoundationClient", &v16, 0xCu);
    }

    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    client = [mainBundle bundleIdentifier];

    v12 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v16 = 136315394;
      v17 = "[CDMClient initProxyObject:delegate:]";
      v18 = 2112;
      v19 = client;
      _os_log_debug_impl(&dword_1DC287000, v12, OS_LOG_TYPE_DEBUG, "%s Calling bundle ID %@", &v16, 0x16u);
    }

    v13 = [[CDMFoundationClient alloc] initWithDelegate:delegateCopy withCallingBundleId:client];
    v14 = self->_client;
    self->_client = &v13->super;
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (CDMClient)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  [(CDMClient *)self sharedInitTasks];
  [(CDMClient *)self initProxyObject:+[CDMClient delegate:"useXPC"], delegateCopy];
  [(CDMClient *)self setupKVOForwarding];

  return self;
}

- (CDMClient)init
{
  [(CDMClient *)self sharedInitTasks];
  [(CDMClient *)self initProxyObject:+[CDMClient delegate:"useXPC"], 0];
  [(CDMClient *)self setupKVOForwarding];
  return self;
}

- (void)processNLUPreprocessRequest:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  requestCopy = request;
  v8 = [[CDMNLUPreprocessRequestCommand alloc] initWithNLURequest:requestCopy];

  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __74__CDMClient_NLUPreprocess__processNLUPreprocessRequest_completionHandler___block_invoke;
  v14 = &unk_1E862F590;
  selfCopy = self;
  v16 = handlerCopy;
  v9 = handlerCopy;
  v10 = _Block_copy(&v11);
  [(CDMClient *)self doHandleCommand:v8 forCallback:v10, v11, v12, v13, v14, selfCopy];
}

void __74__CDMClient_NLUPreprocess__processNLUPreprocessRequest_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v14 = [v6 localizedDescription];
      *buf = 136315394;
      v16 = "[CDMClient(NLUPreprocess) processNLUPreprocessRequest:completionHandler:]_block_invoke";
      v17 = 2080;
      v18 = [v14 UTF8String];
      _os_log_error_impl(&dword_1DC287000, v7, OS_LOG_TYPE_ERROR, "%s [ERR]: %s", buf, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = *(a1 + 40);
      v9 = [v5 preprocessingWrapper];
      (*(v8 + 16))(v8, v9, 0);
    }

    else
    {
      v10 = MEMORY[0x1E696AEC0];
      v11 = [v5 commandName];
      v9 = [v10 stringWithFormat:@"Expecting CDMNLUPreprocessResponseCommand, but got %@", v11];

      v12 = [*(a1 + 32) createNSError:v9 errorCode:2];
      (*(*(a1 + 40) + 16))();
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)processText:(id)text requestConnectionId:(id)id completionHandler:(id)handler
{
  v7 = MEMORY[0x1E69D1140];
  handlerCopy = handler;
  idCopy = id;
  textCopy = text;
  v27 = objc_alloc_init(v7);
  [v27 setUtterance:textCopy];

  [v27 setProbability:0.0];
  v11 = MEMORY[0x1E69D13F8];
  v12 = objc_alloc_init(MEMORY[0x1E696AFB0]);
  v13 = [v11 convertFromUUID:v12];
  [v27 setIdA:v13];

  array = [MEMORY[0x1E695DF70] array];
  [array addObject:v27];
  v15 = objc_alloc_init(MEMORY[0x1E69D1228]);
  [v15 setAsrOutputs:array];
  v16 = objc_alloc_init(MEMORY[0x1E69D11C0]);
  v17 = MEMORY[0x1E696AEC0];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v20 = [v17 stringWithFormat:@"%@:0", uUIDString];
  [v16 setIdA:v20];

  [v16 setConnectionId:idCopy];
  v21 = MEMORY[0x1E69D13F8];
  v22 = objc_alloc_init(MEMORY[0x1E696AFB0]);
  v23 = [v21 convertFromUUID:v22];
  [v16 setNluRequestId:v23];

  v24 = objc_alloc_init(MEMORY[0x1E69D1150]);
  [v24 setRequestId:v16];
  [v24 setCurrentTurnInput:v15];
  v25 = [[CDMNluRequest alloc] initWithObjcProto:v24];
  [(CDMClient *)self processCDMNluRequest:v25 completionHandler:handlerCopy];
}

- (void)setupNLUWithLocale:(id)locale completionHandler:(id)handler
{
  v17 = *MEMORY[0x1E69E9840];
  localeCopy = locale;
  handlerCopy = handler;
  v8 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v13 = 136315394;
    v14 = "[CDMClient(NLU) setupNLUWithLocale:completionHandler:]";
    v15 = 2112;
    v16 = localeCopy;
    _os_log_debug_impl(&dword_1DC287000, v8, OS_LOG_TYPE_DEBUG, "%s CDM NLU client graph setup, locale=%@", &v13, 0x16u);
  }

  v9 = [CDMClientSetup alloc];
  v10 = +[CDMClient graphNameForNLU];
  v11 = [(CDMClientSetup *)v9 initWithLocaleIdentifier:localeCopy sandboxId:0 activeServiceGraph:v10];

  [(CDMClient *)self setup:v11 completionHandler:handlerCopy];
  v12 = *MEMORY[0x1E69E9840];
}

- (void)processEmbeddingRequest:(id)request requestId:(id)id completionHandler:(id)handler
{
  v29[1] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  idCopy = id;
  handlerCopy = handler;
  if ([(CDMClient *)self daemonKilled])
  {
    v11 = MEMORY[0x1E696ABC0];
    v28 = *MEMORY[0x1E696A578];
    v29[0] = @"assistant_cdmd has been killed. Please call setup to ensure CDM can handle requests.";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    v13 = [v11 errorWithDomain:@"CDMXPCClientErrorDomain" code:0 userInfo:v12];

    v14 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v25 = "[CDMClient(Embedding) processEmbeddingRequest:requestId:completionHandler:]";
      v26 = 2112;
      v27 = v13;
      _os_log_error_impl(&dword_1DC287000, v14, OS_LOG_TYPE_ERROR, "%s [ERR]: %@", buf, 0x16u);
    }

    handlerCopy[2](handlerCopy, 0, v13);
  }

  else
  {
    v13 = [[CDMEmbeddingGraphRequestCommand alloc] initWithText:requestCopy requestId:idCopy];
    v15 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v25 = "[CDMClient(Embedding) processEmbeddingRequest:requestId:completionHandler:]";
      v26 = 2112;
      v27 = v13;
      _os_log_debug_impl(&dword_1DC287000, v15, OS_LOG_TYPE_DEBUG, "%s Created CDMEmbeddingGraphRequestCommand to pass into CDMEmbeddingGraph, %@", buf, 0x16u);
    }

    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __76__CDMClient_Embedding__processEmbeddingRequest_requestId_completionHandler___block_invoke;
    v21 = &unk_1E862F590;
    selfCopy = self;
    v23 = handlerCopy;
    v16 = _Block_copy(&v18);
    [(CDMClient *)self doHandleCommand:v13 forCallback:v16, v18, v19, v20, v21];
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __76__CDMClient_Embedding__processEmbeddingRequest_requestId_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v30 = "[CDMClient(Embedding) processEmbeddingRequest:requestId:completionHandler:]_block_invoke";
    v31 = 2112;
    v32 = v5;
    v33 = 2112;
    v34 = v6;
    _os_log_impl(&dword_1DC287000, v7, OS_LOG_TYPE_INFO, "%s CDM Embedding client graph finished processing, output=%@, error=%@", buf, 0x20u);
  }

  if (v6)
  {
    v8 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v27 = [v6 localizedDescription];
      v28 = [v27 UTF8String];
      *buf = 136315394;
      v30 = "[CDMClient(Embedding) processEmbeddingRequest:requestId:completionHandler:]_block_invoke";
      v31 = 2080;
      v32 = v28;
      _os_log_error_impl(&dword_1DC287000, v8, OS_LOG_TYPE_ERROR, "%s [ERR]: %s", buf, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v5;
      v10 = [v9 embeddingResponse];
      v11 = [v10 embeddingProtoResponseCommand];
      v12 = [v11 response];

      v13 = objc_alloc_init(MEMORY[0x1E69D11F0]);
      if (([v12 hasSubwordTokenChain] & 1) == 0)
      {
        v14 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v30 = "[CDMClient(Embedding) processEmbeddingRequest:requestId:completionHandler:]_block_invoke";
          _os_log_impl(&dword_1DC287000, v14, OS_LOG_TYPE_INFO, "%s [WARN]: CDMEmbeddingGraphResponseCommand output from graph doesn't have SIRINLUINTERNALSubwordTokenChain subwordTokenChain?", buf, 0xCu);
        }
      }

      v15 = [v12 subwordTokenChain];
      [v13 setSubwordTokenChain:v15];

      v16 = [v12 subwordEmbeddingTensorOutputs];
      v17 = [v16 count];

      if (!v17)
      {
        v18 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v30 = "[CDMClient(Embedding) processEmbeddingRequest:requestId:completionHandler:]_block_invoke";
          _os_log_impl(&dword_1DC287000, v18, OS_LOG_TYPE_INFO, "%s [WARN]: CDMEmbeddingGraphResponseCommand output from graph doesn't have any NSMutableArray<SIRINLUINTERNALEMBEDDINGEmbeddingTensorOutput *> *_subwordEmbeddingTensorOutputs?", buf, 0xCu);
        }
      }

      v19 = [v12 subwordEmbeddingTensorOutputs];
      v20 = [v19 count];

      if (v20 >= 2)
      {
        v21 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v30 = "[CDMClient(Embedding) processEmbeddingRequest:requestId:completionHandler:]_block_invoke";
          _os_log_impl(&dword_1DC287000, v21, OS_LOG_TYPE_INFO, "%s [WARN]: Did not expect CDMEmbeddingGraphResponseCommand output from graph to include more than 1 NSMutableArray<SIRINLUINTERNALEMBEDDINGEmbeddingTensorOutput *> *_subwordEmbeddingTensorOutputs. But it's OK, will only propagate the firstObject", buf, 0xCu);
        }
      }

      v22 = [v12 subwordEmbeddingTensorOutputs];
      v23 = [v22 firstObject];
      [v13 setSubwordTokenEmbedding:v23];

      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v24 = MEMORY[0x1E696AEC0];
      v25 = [v5 commandName];
      v9 = [v24 stringWithFormat:@"Expecting CDMGenericSendCommand, but got %@", v25];

      v10 = [*(a1 + 32) createNSError:v9 errorCode:2];
      (*(*(a1 + 40) + 16))();
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)setupWithLocale:(id)locale embeddingVersion:(id)version deallocationTime:(double)time completionHandler:(id)handler
{
  v30 = *MEMORY[0x1E69E9840];
  localeCopy = locale;
  versionCopy = version;
  handlerCopy = handler;
  v13 = [versionCopy length];
  v14 = CDMOSLoggerForCategory(0);
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
  if (v13)
  {
    if (v15)
    {
      v22 = 136315906;
      v23 = "[CDMClient(Embedding) setupWithLocale:embeddingVersion:deallocationTime:completionHandler:]";
      v24 = 2112;
      v25 = localeCopy;
      v26 = 2112;
      v27 = versionCopy;
      v28 = 2048;
      timeCopy = time;
      _os_log_debug_impl(&dword_1DC287000, v14, OS_LOG_TYPE_DEBUG, "%s CDM Embedding client graph setup, locale=%@, version=%@, deallocationTime=%.1f", &v22, 0x2Au);
    }

    v16 = [CDMClientSetup alloc];
    v17 = +[CDMClient graphNameForEmbedding];
    v18 = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:time];
    v19 = [(CDMClientSetup *)v16 initWithLocaleIdentifier:localeCopy embeddingVersion:versionCopy sandboxId:0 activeServiceGraph:v17 deallocationTimeout:v18];

    [(CDMClient *)self setup:v19 completionHandler:handlerCopy];
  }

  else
  {
    if (v15)
    {
      v22 = 136315138;
      v23 = "[CDMClient(Embedding) setupWithLocale:embeddingVersion:deallocationTime:completionHandler:]";
      _os_log_debug_impl(&dword_1DC287000, v14, OS_LOG_TYPE_DEBUG, "%s CDM Embedding client embedding version cannot be empty. Setup is failed.", &v22, 0xCu);
    }

    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CDM Embedding client embedding version cannot be empty. Setup is failed."];
    v20 = [(CDMClientInterface *)self createNSError:v19 errorCode:1];
    handlerCopy[2](handlerCopy, v20);

    handlerCopy = v20;
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)setupWithLocale:(id)locale embeddingVersion:(id)version completionHandler:(id)handler
{
  handlerCopy = handler;
  versionCopy = version;
  localeCopy = locale;
  +[CDMClient defaultDeallocationTimeout];
  [(CDMClient *)self setupWithLocale:localeCopy embeddingVersion:versionCopy deallocationTime:handlerCopy completionHandler:?];
}

+ (id)graphNameForEmbedding
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)processSsuInferenceRequest:(id)request completionHandler:(id)handler
{
  v23 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  requestCopy = request;
  v8 = [[CDMSsuInferenceGraphRequestCommand alloc] initWithSsuRequest:requestCopy];

  v9 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v20 = "[CDMClient(SsuInference) processSsuInferenceRequest:completionHandler:]";
    v21 = 2112;
    v22 = v8;
    _os_log_debug_impl(&dword_1DC287000, v9, OS_LOG_TYPE_DEBUG, "%s Create CDMSsuInferenceGraphRequestCommand to pass into CDMSsuInferenceServiceGraph, %@", buf, 0x16u);
  }

  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __72__CDMClient_SsuInference__processSsuInferenceRequest_completionHandler___block_invoke;
  v16 = &unk_1E862F590;
  selfCopy = self;
  v18 = handlerCopy;
  v10 = handlerCopy;
  v11 = _Block_copy(&v13);
  [(CDMClient *)self doHandleCommand:v8 forCallback:v11, v13, v14, v15, v16, selfCopy];

  v12 = *MEMORY[0x1E69E9840];
}

void __72__CDMClient_SsuInference__processSsuInferenceRequest_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v20 = "[CDMClient(SsuInference) processSsuInferenceRequest:completionHandler:]_block_invoke";
    v21 = 2112;
    v22 = v5;
    v23 = 2112;
    v24 = v6;
    _os_log_impl(&dword_1DC287000, v7, OS_LOG_TYPE_INFO, "%s CDM SSU Inference client graph finished processing, output=%@, error=%@", buf, 0x20u);
  }

  if (v6)
  {
    v8 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v17 = [v6 localizedDescription];
      v18 = [v17 UTF8String];
      *buf = 136315394;
      v20 = "[CDMClient(SsuInference) processSsuInferenceRequest:completionHandler:]_block_invoke";
      v21 = 2080;
      v22 = v18;
      _os_log_error_impl(&dword_1DC287000, v8, OS_LOG_TYPE_ERROR, "%s [ERR]: %s", buf, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v5;
      v10 = [v9 ssuInferenceResponse];
      v11 = [v10 ssuResponse];
      if (v11)
      {
        (*(*(a1 + 40) + 16))();
      }

      else
      {
        v14 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v20 = "[CDMClient(SsuInference) processSsuInferenceRequest:completionHandler:]_block_invoke";
          _os_log_error_impl(&dword_1DC287000, v14, OS_LOG_TYPE_ERROR, "%s [ERR]: CDMSsuInferenceGraphResponseCommand output from graph doesn't have SIRINLUEXTERNALSSU_INFERENCESsuInferenceResponse ssuResponse.", buf, 0xCu);
        }

        v15 = [*(a1 + 32) createNSError:@"Received an empty response from CDMSsuInferenceServiceGraph" errorCode:2];
        (*(*(a1 + 40) + 16))();
      }
    }

    else
    {
      v12 = MEMORY[0x1E696AEC0];
      v13 = [v5 commandName];
      v9 = [v12 stringWithFormat:@"Expecting CDMGenericSendCommand, but got %@", v13];

      v10 = [*(a1 + 32) createNSError:v9 errorCode:2];
      (*(*(a1 + 40) + 16))();
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)setupSsuInference:(id)inference serviceStateDirectory:(id)directory completionHandler:(id)handler
{
  v29 = *MEMORY[0x1E69E9840];
  inferenceCopy = inference;
  directoryCopy = directory;
  handlerCopy = handler;
  if (directoryCopy)
  {
    v11 = [directoryCopy stringByAppendingPathComponent:@"CDMSiriVocabularySpanMatchService"];
    v12 = [v11 stringByAppendingPathComponent:@"sandbox_id"];

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v14 = [defaultManager fileExistsAtPath:v12];

    if (v14)
    {
      v24 = 0;
      v15 = [MEMORY[0x1E696AEC0] stringWithContentsOfFile:v12 encoding:4 error:&v24];
      v16 = v24;
      if (v16)
      {
        v17 = v16;
        handlerCopy[2](handlerCopy, v16);
        goto LABEL_11;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v18 = objc_alloc(MEMORY[0x1E695DF58]);
  locale = [inferenceCopy locale];
  v12 = [v18 initWithLocaleIdentifier:locale];

  v20 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v26 = "[CDMClient(SsuInference) setupSsuInference:serviceStateDirectory:completionHandler:]";
    v27 = 2112;
    v28 = v12;
    _os_log_debug_impl(&dword_1DC287000, v20, OS_LOG_TYPE_DEBUG, "%s CDM SSU Inference client graph setup, locale=%@", buf, 0x16u);
  }

  v21 = [CDMClientSetup alloc];
  v22 = +[CDMClient graphNameForSsuInference];
  v17 = [(CDMClientSetup *)v21 initWithLocaleIdentifier:v12 sandboxId:v15 activeServiceGraph:v22 assetDirPath:0 overrideSiriVocabSpans:0 serviceStateDirectory:directoryCopy];

  [(CDMClient *)self setup:v17 completionHandler:handlerCopy];
LABEL_11:

  v23 = *MEMORY[0x1E69E9840];
}

@end