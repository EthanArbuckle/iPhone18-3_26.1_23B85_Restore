@interface MADService
+ (BOOL)_isEntitledForVUIndexAccess;
+ (BOOL)isEntitled;
+ (NSSet)allowedClasses;
+ (NSSet)allowedMultiModalInputClasses;
+ (NSSet)allowedMultiModalRequestClasses;
+ (NSSet)allowedMultiModalResultClasses;
+ (NSSet)allowedVideoRequestClasses;
+ (NSSet)allowedVideoResultClasses;
+ (NSString)serviceName;
+ (Protocol)serverProtocol;
+ (id)allowedTextRequestClasses;
+ (id)allowedTextResultClasses;
+ (id)service;
+ (void)configureServerInterface:(id)interface;
- (BOOL)performRequests:(id)requests onAssetWithIdentifier:(id)identifier identifierType:(unint64_t)type fromPhotoLibraryWithURL:(id)l error:(id *)error;
- (BOOL)performRequests:(id)requests onCGImage:(CGImage *)image withOrientation:(unsigned int)orientation andIdentifier:(id)identifier error:(id *)error;
- (BOOL)performRequests:(id)requests onImageData:(id)data withUniformTypeIdentifier:(id)identifier andIdentifier:(id)andIdentifier error:(id *)error;
- (BOOL)performRequests:(id)requests onImageURL:(id)l withIdentifier:(id)identifier error:(id *)error;
- (BOOL)registerUserSafetyPolicyUpdateHandler:(id)handler error:(id *)error;
- (MADService)init;
- (id)connection;
- (id)initInternal;
- (id)queryPerformanceMeasurements;
- (id)requestApplicationDataFolderIdentifierVisionServiceWithPhotosLibraryURL:(id)l error:(id *)error;
- (id)requestVUIndexURLForPhotoLibraryURL:(id)l error:(id *)error;
- (id)requestVUIndexURLForSystemPhotosLibraryWithError:(id *)error;
- (id)sandboxExtensionForURL:(id)l error:(id *)error;
- (id)userSafetyEnabled:(id *)enabled;
- (int)_performRequests:(id)requests onIOSurface:(id)surface withOrientation:(unsigned int)orientation assetLocalIdentifier:(id)identifier photoLibraryURL:(id)l completionHandler:(id)handler;
- (int)performRequests:(id)requests assetLocalIdentifier:(id)identifier photoLibraryURL:(id)l progressHandler:(id)handler completionHandler:(id)completionHandler;
- (int)performRequests:(id)requests assetLocalIdentifier:(id)identifier photoLibraryURL:(id)l progressHandler:(id)handler resultHandler:(id)resultHandler completionHandler:(id)completionHandler;
- (int)performRequests:(id)requests multiModalInputs:(id)inputs completionHandler:(id)handler;
- (int)performRequests:(id)requests onAssetWithCloudIdentifier:(id)identifier completionHandler:(id)handler;
- (int)performRequests:(id)requests onAssetWithIdentifier:(id)identifier identifierType:(unint64_t)type fromPhotoLibraryWithURL:(id)l timeoutInterval:(double)interval completionHandler:(id)handler;
- (int)performRequests:(id)requests onCGImage:(CGImage *)image withOrientation:(unsigned int)orientation andIdentifier:(id)identifier completionHandler:(id)handler;
- (int)performRequests:(id)requests onCGImage:(CGImage *)image withOrientation:(unsigned int)orientation assetLocalIdentifier:(id)identifier photoLibraryURL:(id)l completionHandler:(id)handler;
- (int)performRequests:(id)requests onCIImage:(id)image withOrientation:(unsigned int)orientation andIdentifier:(id)identifier completionHandler:(id)handler;
- (int)performRequests:(id)requests onImageData:(id)data withUniformTypeIdentifier:(id)identifier andIdentifier:(id)andIdentifier completionHandler:(id)handler;
- (int)performRequests:(id)requests onImageURL:(id)l completionHandler:(id)handler;
- (int)performRequests:(id)requests onImageURL:(id)l withIdentifier:(id)identifier completionHandler:(id)handler;
- (int)performRequests:(id)requests onPixelBuffer:(__CVBuffer *)buffer withOrientation:(unsigned int)orientation andIdentifier:(id)identifier completionHandler:(id)handler;
- (int)performRequests:(id)requests onPixelBuffer:(__CVBuffer *)buffer withOrientation:(unsigned int)orientation assetLocalIdentifier:(id)identifier photoLibraryURL:(id)l completionHandler:(id)handler;
- (int)performRequests:(id)requests onPixelBuffer:(__CVBuffer *)buffer withOrientation:(unsigned int)orientation completionHandler:(id)handler;
- (int)performRequests:(id)requests text:(id)text identifier:(id)identifier completionHandler:(id)handler;
- (int)performRequests:(id)requests textInputs:(id)inputs completionHandler:(id)handler;
- (int)performRequests:(id)requests videoURL:(id)l identifier:(id)identifier progressHandler:(id)handler completionHandler:(id)completionHandler;
- (int)performRequestsWithCloudIdentifiers:(id)identifiers completionHandler:(id)handler;
- (int)prewarmMultiModalRequests:(id)requests completionHandler:(id)handler;
- (int)prewarmTextRequests:(id)requests completionHandler:(id)handler;
- (int)queryImagePriority1MCEnableDate:(id *)date photoLibraryURL:(id)l error:(id *)error;
- (int)queryVUIndexAssetCountForType:(int64_t)type photoLibraryURL:(id)l completionHandler:(id)handler;
- (int)queryVUIndexLastFullModeClusterDate:(id *)date photoLibraryURL:(id)l error:(id *)error;
- (int)queryVUIndexLastFullModeClusterDateWithPhotoLibraryURL:(id)l completionHandler:(id)handler;
- (int64_t)queryVUIndexAssetCountForType:(int64_t)type photoLibraryURL:(id)l error:(id *)error;
- (unint64_t)currentOutstandingTasks;
- (void)addProgressHandler:(id)handler forRequestID:(int)d;
- (void)addResultHandler:(id)handler forRequestID:(int)d;
- (void)cacheHitWithQueryID:(unint64_t)d cachedResultQueryID:(unint64_t)iD;
- (void)cacheHitWithQueryID:(unint64_t)d cachedResultQueryID:(unint64_t)iD engagementSuggestionType:(id)type;
- (void)cancelAllRequests;
- (void)cancelRequestID:(int)d;
- (void)dealloc;
- (void)endEntryPoint;
- (void)handleResult:(id)result atRequestIdx:(unint64_t)idx forRequestID:(int)d;
- (void)removeProgressHandlerForRequestID:(int)d;
- (void)removeResultHandlerForRequestID:(int)d;
- (void)reportMADUserSafetyPolicy:(id)policy error:(id)error;
- (void)reportProgress:(double)progress forRequest:(int)request;
- (void)resetPerformanceMeasurements;
- (void)startEntryPointWithQueryID:(unint64_t)d;
- (void)startEntryPointWithQueryID:(unint64_t)d andEvent:(unint64_t)event;
- (void)submitSearchableItem:(id)item completionHandler:(id)handler;
- (void)submitSpotlightAssetURL:(id)l uniqueIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier completionHandler:(id)handler;
@end

@implementation MADService

+ (id)service
{
  v2 = +[MADService isEntitled];
  v3 = off_1E8342A48;
  if (!v2)
  {
    v3 = off_1E8342A58;
  }

  initInternal = [objc_alloc(*v3) initInternal];

  return initInternal;
}

- (id)initInternal
{
  v14.receiver = self;
  v14.super_class = MADService;
  v2 = [(MADService *)&v14 init];
  if (v2)
  {
    v3 = dispatch_queue_create("MADService.connectionQueue", 0);
    connectionQueue = v2->_connectionQueue;
    v2->_connectionQueue = v3;

    atomic_store(1u, &v2->_requestID);
    v5 = dispatch_queue_create("MADService.progressHandlerQueue", 0);
    progressHandlerQueue = v2->_progressHandlerQueue;
    v2->_progressHandlerQueue = v5;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    progressHandlers = v2->_progressHandlers;
    v2->_progressHandlers = dictionary;

    v9 = dispatch_queue_create("MADService.resultHandlerQueue", 0);
    resultHandlerQueue = v2->_resultHandlerQueue;
    v2->_resultHandlerQueue = v9;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    resultHandlers = v2->_resultHandlers;
    v2->_resultHandlers = dictionary2;
  }

  return v2;
}

+ (BOOL)isEntitled
{
  if (+[MADService isEntitled]::onceToken != -1)
  {
    +[MADService isEntitled];
  }

  return +[MADService isEntitled]::entitled;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = MADService;
  [(MADService *)&v3 dealloc];
}

void __24__MADService_connection__block_invoke_63(uint64_t a1)
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __24__MADService_connection__block_invoke_63_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[1];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __24__MADService_connection__block_invoke_64;
    block[3] = &unk_1E8342E60;
    block[4] = v3;
    dispatch_async(v4, block);
  }
}

+ (BOOL)_isEntitledForVUIndexAccess
{
  if (+[MADService(Photos) _isEntitledForVUIndexAccess]::onceToken != -1)
  {
    +[MADService(Photos) _isEntitledForVUIndexAccess];
  }

  return +[MADService(Photos) _isEntitledForVUIndexAccess]::entitled;
}

void __24__MADService_connection__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (!v2)
  {
    v3 = objc_alloc(MEMORY[0x1E696B0B8]);
    v4 = [objc_opt_class() serviceName];
    v5 = [v3 initWithMachServiceName:v4 options:0];
    v6 = *(a1 + 32);
    v7 = *(v6 + 16);
    *(v6 + 16) = v5;

    v8 = *(*(a1 + 32) + 16);
    v9 = [[MADServiceProxy alloc] initWithService:*(a1 + 32)];
    [v8 setExportedObject:v9];

    v10 = *(*(a1 + 32) + 16);
    v11 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4928040];
    [v10 setExportedInterface:v11];

    v12 = MEMORY[0x1E696B0D0];
    v13 = [objc_opt_class() serverProtocol];
    v14 = [v12 interfaceWithProtocol:v13];

    [objc_opt_class() configureServerInterface:v14];
    [*(*(a1 + 32) + 16) setRemoteObjectInterface:v14];
    [*(*(a1 + 32) + 16) setInterruptionHandler:&__block_literal_global_62];
    objc_initWeak(&location, *(a1 + 32));
    v15 = *(*(a1 + 32) + 16);
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __24__MADService_connection__block_invoke_63;
    v19 = &unk_1E8342E88;
    objc_copyWeak(&v20, &location);
    [v15 setInvalidationHandler:&v16];
    [*(*(a1 + 32) + 16) resume];
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);

    v2 = *(*(a1 + 32) + 16);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v2);
}

- (id)connection
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  connectionQueue = self->_connectionQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __24__MADService_connection__block_invoke;
  v5[3] = &unk_1E8342EB0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(connectionQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

+ (NSSet)allowedMultiModalInputClasses
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v6[0] = objc_opt_class();
  v6[1] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  v4 = [v2 setWithArray:v3];

  return v4;
}

+ (NSSet)allowedMultiModalResultClasses
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v6[0] = objc_opt_class();
  v6[1] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  v4 = [v2 setWithArray:v3];

  return v4;
}

const void **__24__MADService_isEntitled__block_invoke()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = SecTaskCreateFromSelf(0);
  v6 = v0;
  if (v0)
  {
    v1 = SecTaskCopyValueForEntitlement(v0, @"com.apple.mediaanalysisd.client", 0);
    *cf1 = v1;
    v3 = v1 && (v2 = CFGetTypeID(v1), v2 == CFBooleanGetTypeID()) && CFEqual(*cf1, *MEMORY[0x1E695E4D0]) != 0;
    +[MADService isEntitled]::entitled = v3;
    CF<CGColorSpace *>::~CF(cf1);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    if (+[MADService isEntitled]::entitled)
    {
      v4 = "Entitled";
    }

    else
    {
      v4 = "Not entitled";
    }

    *cf1 = 136315138;
    *&cf1[4] = v4;
    _os_log_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Process is %s", cf1, 0xCu);
  }

  return CF<CGColorSpace *>::~CF(&v6);
}

- (MADService)init
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [MADService init];
  }

  return 0;
}

+ (void)configureServerInterface:(id)interface
{
  v20[2] = *MEMORY[0x1E69E9840];
  interfaceCopy = interface;
  allowedClasses = [objc_opt_class() allowedClasses];
  [interfaceCopy setClasses:allowedClasses forSelector:sel_requestImageProcessing_forIOSurface_withOrientation_identifier_requestID_andReply_ argumentIndex:0 ofReply:0];

  allowedClasses2 = [objc_opt_class() allowedClasses];
  [interfaceCopy setClasses:allowedClasses2 forSelector:sel_requestImageProcessing_forIOSurface_withOrientation_identifier_requestID_andReply_ argumentIndex:0 ofReply:1];

  allowedClasses3 = [objc_opt_class() allowedClasses];
  [interfaceCopy setClasses:allowedClasses3 forSelector:sel_requestImageProcessing_forAssetURL_withSandboxToken_identifier_requestID_andReply_ argumentIndex:0 ofReply:0];

  allowedClasses4 = [objc_opt_class() allowedClasses];
  [interfaceCopy setClasses:allowedClasses4 forSelector:sel_requestImageProcessing_forAssetURL_withSandboxToken_identifier_requestID_andReply_ argumentIndex:0 ofReply:1];

  allowedVideoRequestClasses = [objc_opt_class() allowedVideoRequestClasses];
  [interfaceCopy setClasses:allowedVideoRequestClasses forSelector:sel_requestVideoProcessing_assetURL_sandboxToken_identifier_requestID_reply_ argumentIndex:0 ofReply:0];

  allowedVideoResultClasses = [objc_opt_class() allowedVideoResultClasses];
  [interfaceCopy setClasses:allowedVideoResultClasses forSelector:sel_requestVideoProcessing_assetURL_sandboxToken_identifier_requestID_reply_ argumentIndex:0 ofReply:1];

  allowedTextRequestClasses = [objc_opt_class() allowedTextRequestClasses];
  [interfaceCopy setClasses:allowedTextRequestClasses forSelector:sel_requestTextPrewarming_requestID_reply_ argumentIndex:0 ofReply:0];

  allowedTextRequestClasses2 = [objc_opt_class() allowedTextRequestClasses];
  [interfaceCopy setClasses:allowedTextRequestClasses2 forSelector:sel_requestTextProcessing_textInputs_requestID_reply_ argumentIndex:0 ofReply:0];

  v12 = MEMORY[0x1E695DFD8];
  v20[0] = objc_opt_class();
  v20[1] = objc_opt_class();
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  v14 = [v12 setWithArray:v13];
  [interfaceCopy setClasses:v14 forSelector:sel_requestTextProcessing_textInputs_requestID_reply_ argumentIndex:1 ofReply:0];

  allowedTextResultClasses = [objc_opt_class() allowedTextResultClasses];
  [interfaceCopy setClasses:allowedTextResultClasses forSelector:sel_requestTextProcessing_textInputs_requestID_reply_ argumentIndex:0 ofReply:1];

  allowedMultiModalRequestClasses = [objc_opt_class() allowedMultiModalRequestClasses];
  [interfaceCopy setClasses:allowedMultiModalRequestClasses forSelector:sel_requestMultiModalPrewarming_requestID_reply_ argumentIndex:0 ofReply:0];

  allowedMultiModalRequestClasses2 = [objc_opt_class() allowedMultiModalRequestClasses];
  [interfaceCopy setClasses:allowedMultiModalRequestClasses2 forSelector:sel_requestProcessing_multiModalInputs_requestID_reply_ argumentIndex:0 ofReply:0];

  allowedMultiModalInputClasses = [objc_opt_class() allowedMultiModalInputClasses];
  [interfaceCopy setClasses:allowedMultiModalInputClasses forSelector:sel_requestProcessing_multiModalInputs_requestID_reply_ argumentIndex:1 ofReply:0];

  allowedMultiModalResultClasses = [objc_opt_class() allowedMultiModalResultClasses];
  [interfaceCopy setClasses:allowedMultiModalResultClasses forSelector:sel_requestProcessing_multiModalInputs_requestID_reply_ argumentIndex:0 ofReply:1];
}

void __24__MADService_connection__block_invoke_2()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    __24__MADService_connection__block_invoke_2_cold_1();
  }
}

void __24__MADService_connection__block_invoke_64(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  *(v1 + 16) = 0;
}

- (void)addProgressHandler:(id)handler forRequestID:(int)d
{
  handlerCopy = handler;
  v7 = &__block_literal_global_67;
  progressHandlerQueue = self->_progressHandlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__MADService_addProgressHandler_forRequestID___block_invoke_2;
  block[3] = &unk_1E8343150;
  dCopy = d;
  if (handlerCopy)
  {
    v7 = handlerCopy;
  }

  block[4] = self;
  v11 = v7;
  v9 = v7;
  dispatch_sync(progressHandlerQueue, block);
}

void __46__MADService_addProgressHandler_forRequestID___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  v6 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 48)];
  v3 = [v2 objectForKeyedSubscript:?];

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __46__MADService_addProgressHandler_forRequestID___block_invoke_2_cold_1();
    }
  }

  else
  {
    v7 = MEMORY[0x1CCA8ECA0](*(a1 + 40));
    v4 = *(*(a1 + 32) + 40);
    v5 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 48)];
    [v4 setObject:v7 forKeyedSubscript:v5];
  }
}

- (void)removeProgressHandlerForRequestID:(int)d
{
  progressHandlerQueue = self->_progressHandlerQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__MADService_removeProgressHandlerForRequestID___block_invoke;
  v4[3] = &unk_1E8343178;
  v4[4] = self;
  dCopy = d;
  dispatch_sync(progressHandlerQueue, v4);
}

void __48__MADService_removeProgressHandlerForRequestID___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  v5 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 40)];
  v3 = [v2 objectForKeyedSubscript:?];

  if (v3)
  {
    v4 = *(*(a1 + 32) + 40);
    v6 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 40)];
    [v4 removeObjectForKey:?];
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __48__MADService_removeProgressHandlerForRequestID___block_invoke_cold_1();
  }
}

- (void)reportProgress:(double)progress forRequest:(int)request
{
  progressHandlerQueue = self->_progressHandlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__MADService_reportProgress_forRequest___block_invoke;
  block[3] = &unk_1E83431A0;
  block[4] = self;
  requestCopy = request;
  *&block[5] = progress;
  dispatch_sync(progressHandlerQueue, block);
}

void __40__MADService_reportProgress_forRequest___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 48)];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v4[2](v4, *(a1 + 48), *(a1 + 40));
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __40__MADService_reportProgress_forRequest___block_invoke_cold_1();
  }
}

- (void)addResultHandler:(id)handler forRequestID:(int)d
{
  handlerCopy = handler;
  v7 = &__block_literal_global_71;
  resultHandlerQueue = self->_resultHandlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__MADService_addResultHandler_forRequestID___block_invoke_2;
  block[3] = &unk_1E8343150;
  dCopy = d;
  if (handlerCopy)
  {
    v7 = handlerCopy;
  }

  block[4] = self;
  v11 = v7;
  v9 = v7;
  dispatch_sync(resultHandlerQueue, block);
}

void __44__MADService_addResultHandler_forRequestID___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  v6 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 48)];
  v3 = [v2 objectForKeyedSubscript:?];

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __44__MADService_addResultHandler_forRequestID___block_invoke_2_cold_1();
    }
  }

  else
  {
    v7 = MEMORY[0x1CCA8ECA0](*(a1 + 40));
    v4 = *(*(a1 + 32) + 56);
    v5 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 48)];
    [v4 setObject:v7 forKeyedSubscript:v5];
  }
}

- (void)removeResultHandlerForRequestID:(int)d
{
  resultHandlerQueue = self->_resultHandlerQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__MADService_removeResultHandlerForRequestID___block_invoke;
  v4[3] = &unk_1E8343178;
  v4[4] = self;
  dCopy = d;
  dispatch_sync(resultHandlerQueue, v4);
}

void __46__MADService_removeResultHandlerForRequestID___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  v5 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 40)];
  v3 = [v2 objectForKeyedSubscript:?];

  if (v3)
  {
    v4 = *(*(a1 + 32) + 56);
    v6 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 40)];
    [v4 removeObjectForKey:?];
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __46__MADService_removeResultHandlerForRequestID___block_invoke_cold_1();
  }
}

- (void)handleResult:(id)result atRequestIdx:(unint64_t)idx forRequestID:(int)d
{
  resultCopy = result;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__72;
  v17 = __Block_byref_object_dispose__73;
  v18 = 0;
  resultHandlerQueue = self->_resultHandlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__MADService_handleResult_atRequestIdx_forRequestID___block_invoke;
  block[3] = &unk_1E83431E8;
  block[4] = self;
  block[5] = &v13;
  dCopy = d;
  dispatch_sync(resultHandlerQueue, block);
  v10 = v14[5];
  if (v10)
  {
    (*(v10 + 16))(v10, resultCopy, idx);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [MADService handleResult:atRequestIdx:forRequestID:];
  }

  _Block_object_dispose(&v13, 8);
}

void __53__MADService_handleResult_atRequestIdx_forRequestID___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  v6 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 48)];
  v3 = [v2 objectForKeyedSubscript:?];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)reportMADUserSafetyPolicy:(id)policy error:(id)error
{
  v9 = *MEMORY[0x1E69E9840];
  policyCopy = policy;
  errorCopy = error;
  if (self->_userSafetyHandler)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v8[0] = 67109120;
      v8[1] = [policyCopy policyType];
      _os_log_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MADService] Report userSafetyPolicy: %d to client", v8, 8u);
    }

    (*(self->_userSafetyHandler + 2))();
  }
}

- (int)performRequests:(id)requests onPixelBuffer:(__CVBuffer *)buffer withOrientation:(unsigned int)orientation andIdentifier:(id)identifier completionHandler:(id)handler
{
  v9 = *&orientation;
  v43[1] = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
  identifierCopy = identifier;
  handlerCopy = handler;
  v15 = CVPixelBufferGetIOSurface(buffer);
  if (v15)
  {
    add = atomic_fetch_add(&self->_requestID.__a_.__a_value, 1u);
    v28 = handlerCopy;
    v17 = MADSignpostLog();
    v18 = os_signpost_id_generate(v17);

    v19 = MADSignpostLog();
    v20 = v19;
    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      *buf = 67109378;
      v39 = add;
      v40 = 2112;
      v41 = identifierCopy;
      _os_signpost_emit_with_name_impl(&dword_1C972C000, v20, OS_SIGNPOST_INTERVAL_BEGIN, v18, "MADService_performRequestsOnPixelBuffer", "Request: %d Identifier: %@", buf, 0x12u);
    }

    connection = [(MADService *)self connection];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __92__MADService_performRequests_onPixelBuffer_withOrientation_andIdentifier_completionHandler___block_invoke;
    v35[3] = &unk_1E8343210;
    v22 = handlerCopy;
    v36 = v22;
    v37 = add;
    v23 = [connection remoteObjectProxyWithErrorHandler:v35];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __92__MADService_performRequests_onPixelBuffer_withOrientation_andIdentifier_completionHandler___block_invoke_81;
    v29[3] = &unk_1E8343238;
    v33 = v18;
    v34 = add;
    v30 = identifierCopy;
    v31 = requestsCopy;
    v32 = v22;
    [v23 requestImageProcessing:v31 forIOSurface:v15 withOrientation:v9 identifier:v30 requestID:add andReply:v29];

    handlerCopy = v28;
    v24 = v36;
  }

  else
  {
    add = MEMORY[0x1E696ABC0];
    v42 = *MEMORY[0x1E696A578];
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CVPixelBuffer must be IOSurface-backed"];
    v43[0] = v24;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:&v42 count:1];
    v26 = [add errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v25];
    (*(handlerCopy + 2))(handlerCopy, 0xFFFFFFFFLL, v26);

    LODWORD(add) = -1;
  }

  return add;
}

void __92__MADService_performRequests_onPixelBuffer_withOrientation_andIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __92__MADService_performRequests_onPixelBuffer_withOrientation_andIdentifier_completionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __92__MADService_performRequests_onPixelBuffer_withOrientation_andIdentifier_completionHandler___block_invoke_81(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = MADSignpostLog();
  v8 = v7;
  v9 = *(a1 + 56);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = *(a1 + 64);
    v11 = *(a1 + 32);
    v19[0] = 67109378;
    v19[1] = v10;
    v20 = 2112;
    v21 = v11;
    _os_signpost_emit_with_name_impl(&dword_1C972C000, v8, OS_SIGNPOST_INTERVAL_END, v9, "MADService_performRequestsOnPixelBuffer", "Request: %d Identifier: %@", v19, 0x12u);
  }

  for (i = 0; i < [*(a1 + 40) count]; ++i)
  {
    v13 = [*(a1 + 40) objectAtIndexedSubscript:i];
    v14 = [v5 objectAtIndexedSubscript:i];
    v15 = [v14 results];
    [v13 setResults:v15];

    v16 = [*(a1 + 40) objectAtIndexedSubscript:i];
    v17 = [v5 objectAtIndexedSubscript:i];
    v18 = [v17 error];
    [v16 setError:v18];
  }

  (*(*(a1 + 48) + 16))();
}

- (int)performRequests:(id)requests onCGImage:(CGImage *)image withOrientation:(unsigned int)orientation andIdentifier:(id)identifier completionHandler:(id)handler
{
  v9 = *&orientation;
  v59 = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
  identifierCopy = identifier;
  handlerCopy = handler;
  v36 = CGImageGetProperty();
  if (v36)
  {
    add = atomic_fetch_add(&self->_requestID.__a_.__a_value, 1u);
    v13 = MADSignpostLog();
    v14 = os_signpost_id_generate(v13);

    v15 = MADSignpostLog();
    v16 = v15;
    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      *buf = 67109378;
      *&buf[4] = add;
      v57 = 2112;
      v58 = identifierCopy;
      _os_signpost_emit_with_name_impl(&dword_1C972C000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "MADService_performRequestsOnCGImage", "Request: %d Identifier: %@", buf, 0x12u);
    }

    connection = [(MADService *)self connection];
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __88__MADService_performRequests_onCGImage_withOrientation_andIdentifier_completionHandler___block_invoke;
    v50[3] = &unk_1E8343210;
    v18 = handlerCopy;
    v51 = v18;
    v52 = add;
    v19 = [connection remoteObjectProxyWithErrorHandler:v50];
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __88__MADService_performRequests_onCGImage_withOrientation_andIdentifier_completionHandler___block_invoke_83;
    v44[3] = &unk_1E8343238;
    v48 = v14;
    v49 = add;
    v45 = identifierCopy;
    v46 = requestsCopy;
    v47 = v18;
    [v19 requestImageProcessing:v46 forIOSurface:v36 withOrientation:v9 identifier:v45 requestID:add andReply:v44];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MADService] Requested CGImage is not IOSurface backed, creating CVPixelBuffer on-demand (scaling if needed)", buf, 2u);
    }

    Width = CGImageGetWidth(image);
    Height = CGImageGetHeight(image);
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v22 = requestsCopy;
    v23 = [v22 countByEnumeratingWithState:&v40 objects:v55 count:16];
    v24 = v9;
    v25 = 0;
    if (v23)
    {
      v26 = *v41;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v41 != v26)
          {
            objc_enumerationMutation(v22);
          }

          targetResolution = [objc_opt_class() targetResolution];
          if (v25 <= targetResolution)
          {
            v25 = targetResolution;
          }
        }

        v23 = [v22 countByEnumeratingWithState:&v40 objects:v55 count:16];
      }

      while (v23);
    }

    v31 = 1.0;
    if (Height * Width > 11 * v25 / 0xA)
    {
      v31 = sqrt(v25 / (Height * Width));
    }

    *buf = 0;
    if (CGImage_CreateCVPixelBufferWithTransform(image, buf, v29, v30, v31))
    {
      v32 = MEMORY[0x1E696ABC0];
      v53 = *MEMORY[0x1E696A578];
      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error creating CVPixelBuffer from non-IOSurface-backed CGImage with downscaling factor %f", *&v31];
      v54 = v33;
      v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
      add = [v32 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v34];
      (*(handlerCopy + 2))(handlerCopy, 0xFFFFFFFFLL, add);

      LODWORD(add) = -1;
    }

    else
    {
      LODWORD(add) = [(MADService *)self performRequests:v22 onPixelBuffer:*buf withOrientation:v24 andIdentifier:identifierCopy completionHandler:handlerCopy];
    }

    CF<CGColorSpace *>::~CF(buf);
  }

  return add;
}

void __88__MADService_performRequests_onCGImage_withOrientation_andIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __92__MADService_performRequests_onPixelBuffer_withOrientation_andIdentifier_completionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __88__MADService_performRequests_onCGImage_withOrientation_andIdentifier_completionHandler___block_invoke_83(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = MADSignpostLog();
  v8 = v7;
  v9 = *(a1 + 56);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = *(a1 + 64);
    v11 = *(a1 + 32);
    v19[0] = 67109378;
    v19[1] = v10;
    v20 = 2112;
    v21 = v11;
    _os_signpost_emit_with_name_impl(&dword_1C972C000, v8, OS_SIGNPOST_INTERVAL_END, v9, "MADService_performRequestsOnCGImage", "Request: %d Identifier: %@", v19, 0x12u);
  }

  for (i = 0; i < [*(a1 + 40) count]; ++i)
  {
    v13 = [*(a1 + 40) objectAtIndexedSubscript:i];
    v14 = [v5 objectAtIndexedSubscript:i];
    v15 = [v14 results];
    [v13 setResults:v15];

    v16 = [*(a1 + 40) objectAtIndexedSubscript:i];
    v17 = [v5 objectAtIndexedSubscript:i];
    v18 = [v17 error];
    [v16 setError:v18];
  }

  (*(*(a1 + 48) + 16))();
}

- (BOOL)performRequests:(id)requests onCGImage:(CGImage *)image withOrientation:(unsigned int)orientation andIdentifier:(id)identifier error:(id *)error
{
  v9 = *&orientation;
  v69 = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
  identifierCopy = identifier;
  v59 = 0;
  v60 = &v59;
  v61 = 0x2020000000;
  v62 = 1;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__0;
  v57 = __Block_byref_object_dispose__0;
  v58 = 0;
  v12 = CGImageGetProperty();
  if (v12)
  {
    goto LABEL_2;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MADService] Requested CGImage is not IOSurface backed, creating CVPixelBuffer on-demand (scaling if needed)", buf, 2u);
  }

  Width = CGImageGetWidth(image);
  errorCopy = error;
  Height = CGImageGetHeight(image);
  v24 = v9;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v25 = requestsCopy;
  v26 = 0;
  v27 = [v25 countByEnumeratingWithState:&v49 objects:v68 count:16];
  if (v27)
  {
    v28 = *v50;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v50 != v28)
        {
          objc_enumerationMutation(v25);
        }

        targetResolution = [objc_opt_class() targetResolution];
        if (v26 <= targetResolution)
        {
          v26 = targetResolution;
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v49 objects:v68 count:16];
    }

    while (v27);
  }

  v9 = v24;
  error = errorCopy;
  v33 = 1.0;
  if (Height * Width > 11 * v26 / 0xA)
  {
    v33 = sqrt(v26 / (Height * Width));
  }

  *buf = 0;
  if (!CGImage_CreateCVPixelBufferWithTransform(image, buf, v31, v32, v33))
  {
    v12 = CVPixelBufferGetIOSurface(*buf);
    CF<CGColorSpace *>::~CF(buf);
LABEL_2:
    add = atomic_fetch_add(&self->_requestID.__a_.__a_value, 1u);
    v14 = MADSignpostLog();
    v15 = os_signpost_id_generate(v14);

    v16 = MADSignpostLog();
    v17 = v16;
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      *buf = 67109378;
      *&buf[4] = add;
      v64 = 2112;
      v65 = identifierCopy;
      _os_signpost_emit_with_name_impl(&dword_1C972C000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "MADService_performRequestsOnImageDataSync", "Request: %d Identifier: %@", buf, 0x12u);
    }

    connection = [(MADService *)self connection];
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __76__MADService_performRequests_onCGImage_withOrientation_andIdentifier_error___block_invoke;
    v48[3] = &unk_1E8343260;
    v48[4] = &v53;
    v48[5] = &v59;
    v19 = [connection synchronousRemoteObjectProxyWithErrorHandler:v48];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __76__MADService_performRequests_onCGImage_withOrientation_andIdentifier_error___block_invoke_90;
    v41[3] = &unk_1E8343288;
    v46 = v15;
    v47 = add;
    v42 = identifierCopy;
    v43 = requestsCopy;
    v44 = &v59;
    v45 = &v53;
    [v19 requestImageProcessing:v43 forIOSurface:v12 withOrientation:v9 identifier:v42 requestID:add andReply:v41];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = add;
      _os_log_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MADService] Analysis returns for RequestID %d (synchronous)", buf, 8u);
    }

    if (error)
    {
      v20 = v54[5];
      if (v20)
      {
        *error = v20;
      }
    }

    v21 = *(v60 + 24);

    goto LABEL_28;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [MADService performRequests:onCGImage:withOrientation:andIdentifier:error:];
  }

  v34 = MEMORY[0x1E696ABC0];
  v66 = *MEMORY[0x1E696A578];
  v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error creating CVPixelBuffer from non-IOSurface-backed CGImage"];
  v67 = v35;
  v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
  *errorCopy = [v34 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v36];

  CF<CGColorSpace *>::~CF(buf);
  v21 = 0;
LABEL_28:
  _Block_object_dispose(&v53, 8);

  _Block_object_dispose(&v59, 8);
  return v21 & 1;
}

void __76__MADService_performRequests_onCGImage_withOrientation_andIdentifier_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __76__MADService_performRequests_onCGImage_withOrientation_andIdentifier_error___block_invoke_cold_1();
  }

  v4 = [v3 copy];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void __76__MADService_performRequests_onCGImage_withOrientation_andIdentifier_error___block_invoke_90(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = MADSignpostLog();
  v8 = v7;
  v9 = *(a1 + 64);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = *(a1 + 72);
    v11 = *(a1 + 32);
    v22[0] = 67109378;
    v22[1] = v10;
    v23 = 2112;
    v24 = v11;
    _os_signpost_emit_with_name_impl(&dword_1C972C000, v8, OS_SIGNPOST_INTERVAL_END, v9, "MADService_performRequestsOnImageDataSync", "Request: %d Identifier: %@", v22, 0x12u);
  }

  for (i = 0; i < [*(a1 + 40) count]; ++i)
  {
    v13 = [*(a1 + 40) objectAtIndexedSubscript:i];
    v14 = [v5 objectAtIndexedSubscript:i];
    v15 = [v14 results];
    [v13 setResults:v15];

    v16 = [*(a1 + 40) objectAtIndexedSubscript:i];
    v17 = [v5 objectAtIndexedSubscript:i];
    v18 = [v17 error];
    [v16 setError:v18];
  }

  if (v6)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __76__MADService_performRequests_onCGImage_withOrientation_andIdentifier_error___block_invoke_90_cold_1();
    }

    v19 = [v6 copy];
    v20 = *(*(a1 + 56) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;
  }
}

- (int)performRequests:(id)requests onCIImage:(id)image withOrientation:(unsigned int)orientation andIdentifier:(id)identifier completionHandler:(id)handler
{
  v9 = *&orientation;
  v34[1] = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
  imageCopy = image;
  identifierCopy = identifier;
  handlerCopy = handler;
  if ([imageCopy pixelBuffer] && CVPixelBufferGetIOSurface(objc_msgSend(imageCopy, "pixelBuffer")))
  {
    v16 = -[MADService performRequests:onPixelBuffer:withOrientation:andIdentifier:completionHandler:](self, "performRequests:onPixelBuffer:withOrientation:andIdentifier:completionHandler:", requestsCopy, [imageCopy pixelBuffer], v9, identifierCopy, handlerCopy);
  }

  else
  {
    cf = 0;
    v33 = *MEMORY[0x1E69660D8];
    v34[0] = MEMORY[0x1E695E0F8];
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:{1, 0}];
    [imageCopy extent];
    v19 = v18;
    [imageCopy extent];
    v21 = v20;
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    CVPixelBufferCreate(0, v19, v21, 0x42475241u, v17, &cf);
    v22 = cf;
    if (cf)
    {
      colorSpace = [imageCopy colorSpace];
      CVBufferSetAttachment(v22, *MEMORY[0x1E6965CE8], colorSpace, kCVAttachmentMode_ShouldPropagate);
      context = [MEMORY[0x1E695F620] context];
      [context render:imageCopy toCVPixelBuffer:cf];

      v16 = [(MADService *)self performRequests:requestsCopy onPixelBuffer:cf withOrientation:v9 andIdentifier:identifierCopy completionHandler:handlerCopy];
    }

    else
    {
      v25 = MEMORY[0x1E696ABC0];
      v31 = *MEMORY[0x1E696A578];
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error allocating CVPixelBuffer"];
      v32 = v26;
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      v28 = [v25 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v27];
      handlerCopy[2](handlerCopy, 0xFFFFFFFFLL, v28);

      v16 = -1;
    }

    CF<CGColorSpace *>::~CF(&cf);
  }

  return v16;
}

- (int)performRequests:(id)requests onPixelBuffer:(__CVBuffer *)buffer withOrientation:(unsigned int)orientation completionHandler:(id)handler
{
  v6 = *&orientation;
  handlerCopy = handler;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __78__MADService_performRequests_onPixelBuffer_withOrientation_completionHandler___block_invoke;
  v13[3] = &unk_1E83432B0;
  v14 = handlerCopy;
  v11 = handlerCopy;
  LODWORD(v6) = [(MADService *)self performRequests:requests onPixelBuffer:buffer withOrientation:v6 andIdentifier:0 completionHandler:v13];

  return v6;
}

- (id)sandboxExtensionForURL:(id)l error:(id *)error
{
  v15[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  path = [lCopy path];
  [path UTF8String];
  v7 = sandbox_extension_issue_file();

  if (v7)
  {
    error = [MEMORY[0x1E696AEC0] stringWithUTF8String:v7];
    free(v7);
  }

  else if (error)
  {
    v8 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E696A578];
    v9 = MEMORY[0x1E696AEC0];
    path2 = [lCopy path];
    v11 = [v9 stringWithFormat:@"Failed to create sandbox extension for %@", path2];
    v15[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    *error = [v8 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v12];

    error = 0;
  }

  return error;
}

- (int)performRequests:(id)requests onImageURL:(id)l withIdentifier:(id)identifier completionHandler:(id)handler
{
  v41 = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
  lCopy = l;
  identifierCopy = identifier;
  handlerCopy = handler;
  v36 = 0;
  v13 = [(MADService *)self sandboxExtensionForURL:lCopy error:&v36];
  v14 = v36;
  v15 = v14;
  if (v13)
  {
    v25 = v14;
    add = atomic_fetch_add(&self->_requestID.__a_.__a_value, 1u);
    v17 = MADSignpostLog();
    v18 = os_signpost_id_generate(v17);

    v19 = MADSignpostLog();
    v20 = v19;
    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      *buf = 67109378;
      v38 = add;
      v39 = 2112;
      v40 = identifierCopy;
      _os_signpost_emit_with_name_impl(&dword_1C972C000, v20, OS_SIGNPOST_INTERVAL_BEGIN, v18, "MADService_performRequestsOnImageURL", "Request: %d Identifier: %@", buf, 0x12u);
    }

    connection = [(MADService *)self connection];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __74__MADService_performRequests_onImageURL_withIdentifier_completionHandler___block_invoke;
    v33[3] = &unk_1E8343210;
    v22 = handlerCopy;
    v34 = v22;
    v35 = add;
    v23 = [connection remoteObjectProxyWithErrorHandler:v33];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __74__MADService_performRequests_onImageURL_withIdentifier_completionHandler___block_invoke_99;
    v27[3] = &unk_1E8343238;
    v31 = v18;
    v32 = add;
    v28 = identifierCopy;
    v29 = requestsCopy;
    v30 = v22;
    [v23 requestImageProcessing:v29 forAssetURL:lCopy withSandboxToken:v13 identifier:v28 requestID:add andReply:v27];

    v15 = v25;
  }

  else
  {
    LODWORD(add) = -1;
    (*(handlerCopy + 2))(handlerCopy, 0xFFFFFFFFLL, v14);
  }

  return add;
}

void __74__MADService_performRequests_onImageURL_withIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __92__MADService_performRequests_onPixelBuffer_withOrientation_andIdentifier_completionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __74__MADService_performRequests_onImageURL_withIdentifier_completionHandler___block_invoke_99(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = MADSignpostLog();
  v8 = v7;
  v9 = *(a1 + 56);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = *(a1 + 64);
    v11 = *(a1 + 32);
    v19[0] = 67109378;
    v19[1] = v10;
    v20 = 2112;
    v21 = v11;
    _os_signpost_emit_with_name_impl(&dword_1C972C000, v8, OS_SIGNPOST_INTERVAL_END, v9, "MADService_performRequestsOnImageURL", "Request: %d Identifier: %@", v19, 0x12u);
  }

  for (i = 0; i < [*(a1 + 40) count]; ++i)
  {
    v13 = [*(a1 + 40) objectAtIndexedSubscript:i];
    v14 = [v5 objectAtIndexedSubscript:i];
    v15 = [v14 results];
    [v13 setResults:v15];

    v16 = [*(a1 + 40) objectAtIndexedSubscript:i];
    v17 = [v5 objectAtIndexedSubscript:i];
    v18 = [v17 error];
    [v16 setError:v18];
  }

  (*(*(a1 + 48) + 16))();
}

- (int)performRequests:(id)requests onImageURL:(id)l completionHandler:(id)handler
{
  handlerCopy = handler;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__MADService_performRequests_onImageURL_completionHandler___block_invoke;
  v11[3] = &unk_1E83432B0;
  v12 = handlerCopy;
  v9 = handlerCopy;
  LODWORD(l) = [(MADService *)self performRequests:requests onImageURL:l withIdentifier:0 completionHandler:v11];

  return l;
}

- (BOOL)performRequests:(id)requests onImageURL:(id)l withIdentifier:(id)identifier error:(id *)error
{
  v47 = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
  lCopy = l;
  identifierCopy = identifier;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__0;
  v41 = __Block_byref_object_dispose__0;
  v42 = 0;
  obj = 0;
  v12 = [(MADService *)self sandboxExtensionForURL:lCopy error:&obj];
  objc_storeStrong(&v42, obj);
  if (v12)
  {
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v35 = 1;
    add = atomic_fetch_add(&self->_requestID.__a_.__a_value, 1u);
    v14 = MADSignpostLog();
    v15 = os_signpost_id_generate(v14);

    v16 = MADSignpostLog();
    v17 = v16;
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      *buf = 67109378;
      v44 = add;
      v45 = 2112;
      v46 = identifierCopy;
      _os_signpost_emit_with_name_impl(&dword_1C972C000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "MADService_performRequestsOnImageURLSync", "Request: %d Identifier: %@", buf, 0x12u);
    }

    connection = [(MADService *)self connection];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __62__MADService_performRequests_onImageURL_withIdentifier_error___block_invoke;
    v31[3] = &unk_1E8343260;
    v31[4] = &v37;
    v31[5] = &v32;
    v19 = [connection synchronousRemoteObjectProxyWithErrorHandler:v31];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __62__MADService_performRequests_onImageURL_withIdentifier_error___block_invoke_100;
    v24[3] = &unk_1E8343288;
    v29 = v15;
    v30 = add;
    v25 = identifierCopy;
    v26 = requestsCopy;
    v27 = &v32;
    v28 = &v37;
    [v19 requestImageProcessing:v26 forAssetURL:lCopy withSandboxToken:v12 identifier:v25 requestID:add andReply:v24];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v44 = add;
      _os_log_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MADService] Analysis returns for RequestID %d (synchronous)", buf, 8u);
    }

    if (error)
    {
      v20 = v38[5];
      if (v20)
      {
        *error = v20;
      }
    }

    v21 = *(v33 + 24);

    _Block_object_dispose(&v32, 8);
  }

  else
  {
    v21 = 0;
    if (error)
    {
      *error = [v38[5] copy];
    }
  }

  _Block_object_dispose(&v37, 8);
  return v21 & 1;
}

void __62__MADService_performRequests_onImageURL_withIdentifier_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __92__MADService_performRequests_onPixelBuffer_withOrientation_andIdentifier_completionHandler___block_invoke_cold_1();
  }

  v4 = [v3 copy];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void __62__MADService_performRequests_onImageURL_withIdentifier_error___block_invoke_100(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = MADSignpostLog();
  v8 = v7;
  v9 = *(a1 + 64);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = *(a1 + 72);
    v11 = *(a1 + 32);
    v22[0] = 67109378;
    v22[1] = v10;
    v23 = 2112;
    v24 = v11;
    _os_signpost_emit_with_name_impl(&dword_1C972C000, v8, OS_SIGNPOST_INTERVAL_END, v9, "MADService_performRequestsOnImageURLSync", "Request: %d Identifier: %@", v22, 0x12u);
  }

  for (i = 0; i < [*(a1 + 40) count]; ++i)
  {
    v13 = [*(a1 + 40) objectAtIndexedSubscript:i];
    v14 = [v5 objectAtIndexedSubscript:i];
    v15 = [v14 results];
    [v13 setResults:v15];

    v16 = [*(a1 + 40) objectAtIndexedSubscript:i];
    v17 = [v5 objectAtIndexedSubscript:i];
    v18 = [v17 error];
    [v16 setError:v18];
  }

  if (v6)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __76__MADService_performRequests_onCGImage_withOrientation_andIdentifier_error___block_invoke_90_cold_1();
    }

    v19 = [v6 copy];
    v20 = *(*(a1 + 56) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;
  }
}

- (int)performRequests:(id)requests onImageData:(id)data withUniformTypeIdentifier:(id)identifier andIdentifier:(id)andIdentifier completionHandler:(id)handler
{
  v42 = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
  dataCopy = data;
  identifierCopy = identifier;
  andIdentifierCopy = andIdentifier;
  handlerCopy = handler;
  add = atomic_fetch_add(&self->_requestID.__a_.__a_value, 1u);
  v17 = MADSignpostLog();
  v18 = os_signpost_id_generate(v17);

  v19 = MADSignpostLog();
  v20 = v19;
  if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    *buf = 67109378;
    v39 = add;
    v40 = 2112;
    v41 = andIdentifierCopy;
    _os_signpost_emit_with_name_impl(&dword_1C972C000, v20, OS_SIGNPOST_INTERVAL_BEGIN, v18, "MADService_performRequestsOnImageData", "Request: %d Identifier: %@", buf, 0x12u);
  }

  connection = [(MADService *)self connection];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __100__MADService_performRequests_onImageData_withUniformTypeIdentifier_andIdentifier_completionHandler___block_invoke;
  v35[3] = &unk_1E8343210;
  v22 = handlerCopy;
  v36 = v22;
  v37 = add;
  v23 = [connection remoteObjectProxyWithErrorHandler:v35];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __100__MADService_performRequests_onImageData_withUniformTypeIdentifier_andIdentifier_completionHandler___block_invoke_101;
  v29[3] = &unk_1E8343238;
  v33 = v18;
  v34 = add;
  v24 = andIdentifierCopy;
  v30 = v24;
  v25 = requestsCopy;
  v31 = v25;
  v26 = v22;
  v32 = v26;
  [v23 requestImageProcessing:v25 forImageData:dataCopy withUniformTypeIdentifier:identifierCopy identifier:v24 requestID:add andReply:v29];

  return add;
}

void __100__MADService_performRequests_onImageData_withUniformTypeIdentifier_andIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __92__MADService_performRequests_onPixelBuffer_withOrientation_andIdentifier_completionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __100__MADService_performRequests_onImageData_withUniformTypeIdentifier_andIdentifier_completionHandler___block_invoke_101(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = MADSignpostLog();
  v8 = v7;
  v9 = *(a1 + 56);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = *(a1 + 64);
    v11 = *(a1 + 32);
    v19[0] = 67109378;
    v19[1] = v10;
    v20 = 2112;
    v21 = v11;
    _os_signpost_emit_with_name_impl(&dword_1C972C000, v8, OS_SIGNPOST_INTERVAL_END, v9, "MADService_performRequestsOnImageData", "Request: %d Identifier: %@", v19, 0x12u);
  }

  for (i = 0; i < [*(a1 + 40) count]; ++i)
  {
    v13 = [*(a1 + 40) objectAtIndexedSubscript:i];
    v14 = [v5 objectAtIndexedSubscript:i];
    v15 = [v14 results];
    [v13 setResults:v15];

    v16 = [*(a1 + 40) objectAtIndexedSubscript:i];
    v17 = [v5 objectAtIndexedSubscript:i];
    v18 = [v17 error];
    [v16 setError:v18];
  }

  (*(*(a1 + 48) + 16))();
}

- (BOOL)performRequests:(id)requests onImageData:(id)data withUniformTypeIdentifier:(id)identifier andIdentifier:(id)andIdentifier error:(id *)error
{
  v50 = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
  dataCopy = data;
  identifierCopy = identifier;
  andIdentifierCopy = andIdentifier;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 1;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__0;
  v40 = __Block_byref_object_dispose__0;
  v41 = 0;
  add = atomic_fetch_add(&self->_requestID.__a_.__a_value, 1u);
  v15 = MADSignpostLog();
  v16 = os_signpost_id_generate(v15);

  v17 = MADSignpostLog();
  v18 = v17;
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 67109378;
    v47 = add;
    v48 = 2112;
    v49 = andIdentifierCopy;
    _os_signpost_emit_with_name_impl(&dword_1C972C000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v16, "MADService_performRequestsOnImageDataSync", "Request: %d Identifier: %@", buf, 0x12u);
  }

  connection = [(MADService *)self connection];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __88__MADService_performRequests_onImageData_withUniformTypeIdentifier_andIdentifier_error___block_invoke;
  v35[3] = &unk_1E8343260;
  v35[4] = &v36;
  v35[5] = &v42;
  v20 = [connection synchronousRemoteObjectProxyWithErrorHandler:v35];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __88__MADService_performRequests_onImageData_withUniformTypeIdentifier_andIdentifier_error___block_invoke_102;
  v28[3] = &unk_1E8343288;
  v33 = v16;
  v34 = add;
  v21 = andIdentifierCopy;
  v29 = v21;
  v22 = requestsCopy;
  v30 = v22;
  v31 = &v42;
  v32 = &v36;
  [v20 requestImageProcessing:v22 forImageData:dataCopy withUniformTypeIdentifier:identifierCopy identifier:v21 requestID:add andReply:v28];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v47 = add;
    _os_log_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MADService] Analysis returns for RequestID %d (synchronous)", buf, 8u);
  }

  if (error)
  {
    v23 = v37[5];
    if (v23)
    {
      *error = v23;
    }
  }

  v24 = *(v43 + 24);

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v42, 8);

  return v24 & 1;
}

void __88__MADService_performRequests_onImageData_withUniformTypeIdentifier_andIdentifier_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __76__MADService_performRequests_onCGImage_withOrientation_andIdentifier_error___block_invoke_cold_1();
  }

  v4 = [v3 copy];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void __88__MADService_performRequests_onImageData_withUniformTypeIdentifier_andIdentifier_error___block_invoke_102(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = MADSignpostLog();
  v8 = v7;
  v9 = *(a1 + 64);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = *(a1 + 72);
    v11 = *(a1 + 32);
    v22[0] = 67109378;
    v22[1] = v10;
    v23 = 2112;
    v24 = v11;
    _os_signpost_emit_with_name_impl(&dword_1C972C000, v8, OS_SIGNPOST_INTERVAL_END, v9, "MADService_performRequestsOnImageDataSync", "Request: %d Identifier: %@", v22, 0x12u);
  }

  for (i = 0; i < [*(a1 + 40) count]; ++i)
  {
    v13 = [*(a1 + 40) objectAtIndexedSubscript:i];
    v14 = [v5 objectAtIndexedSubscript:i];
    v15 = [v14 results];
    [v13 setResults:v15];

    v16 = [*(a1 + 40) objectAtIndexedSubscript:i];
    v17 = [v5 objectAtIndexedSubscript:i];
    v18 = [v17 error];
    [v16 setError:v18];
  }

  if (v6)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __76__MADService_performRequests_onCGImage_withOrientation_andIdentifier_error___block_invoke_90_cold_1();
    }

    v19 = [v6 copy];
    v20 = *(*(a1 + 56) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;
  }
}

- (int)performRequests:(id)requests videoURL:(id)l identifier:(id)identifier progressHandler:(id)handler completionHandler:(id)completionHandler
{
  v44 = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
  lCopy = l;
  identifierCopy = identifier;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v39 = 0;
  v15 = [(MADService *)self sandboxExtensionForURL:lCopy error:&v39];
  v16 = v39;
  v26 = v16;
  if (v15)
  {
    add = atomic_fetch_add(&self->_requestID.__a_.__a_value, 1u);
    v18 = MADSignpostLog();
    v19 = os_signpost_id_generate(v18);

    v20 = MADSignpostLog();
    v21 = v20;
    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      *buf = 67109378;
      v41 = add;
      v42 = 2112;
      v43 = identifierCopy;
      _os_signpost_emit_with_name_impl(&dword_1C972C000, v21, OS_SIGNPOST_INTERVAL_BEGIN, v19, "MADService_performRequestsOnVideoURL", "Request: %d Identifier: %@", buf, 0x12u);
    }

    [(MADService *)self addProgressHandler:handlerCopy forRequestID:add];
    connection = [(MADService *)self connection];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __84__MADService_performRequests_videoURL_identifier_progressHandler_completionHandler___block_invoke;
    v36[3] = &unk_1E83432D8;
    v36[4] = self;
    v38 = add;
    v23 = completionHandlerCopy;
    v37 = v23;
    v24 = [connection remoteObjectProxyWithErrorHandler:v36];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __84__MADService_performRequests_videoURL_identifier_progressHandler_completionHandler___block_invoke_103;
    v29[3] = &unk_1E8343300;
    v34 = v19;
    v35 = add;
    v30 = identifierCopy;
    selfCopy = self;
    v32 = requestsCopy;
    v33 = v23;
    [v24 requestVideoProcessing:v32 assetURL:lCopy sandboxToken:v15 identifier:v30 requestID:add reply:v29];
  }

  else
  {
    LODWORD(add) = -1;
    (*(completionHandlerCopy + 2))(completionHandlerCopy, 0xFFFFFFFFLL, v16);
  }

  return add;
}

void __84__MADService_performRequests_videoURL_identifier_progressHandler_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __92__MADService_performRequests_onPixelBuffer_withOrientation_andIdentifier_completionHandler___block_invoke_cold_1();
  }

  [*(a1 + 32) removeProgressHandlerForRequestID:*(a1 + 48)];
  (*(*(a1 + 40) + 16))();
}

void __84__MADService_performRequests_videoURL_identifier_progressHandler_completionHandler___block_invoke_103(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = MADSignpostLog();
  v8 = v7;
  v9 = *(a1 + 64);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = *(a1 + 72);
    v11 = *(a1 + 32);
    v18[0] = 67109378;
    v18[1] = v10;
    v19 = 2112;
    v20 = v11;
    _os_signpost_emit_with_name_impl(&dword_1C972C000, v8, OS_SIGNPOST_INTERVAL_END, v9, "MADService_performRequestsOnVideoURL", "Request: %d Identifier: %@", v18, 0x12u);
  }

  [*(a1 + 40) removeProgressHandlerForRequestID:*(a1 + 72)];
  for (i = 0; i < [v5 count]; ++i)
  {
    v13 = [v5 objectAtIndexedSubscript:i];
    v14 = [*(a1 + 48) objectAtIndexedSubscript:i];
    v15 = [v13 results];
    [v14 setResults:v15];

    v16 = [*(a1 + 48) objectAtIndexedSubscript:i];
    v17 = [v13 error];
    [v16 setError:v17];
  }

  (*(*(a1 + 56) + 16))();
}

- (void)cancelRequestID:(int)d
{
  v3 = *&d;
  connection = [(MADService *)self connection];
  v4 = [connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_105];
  [v4 cancelRequest:v3];
}

void __30__MADService_cancelRequestID___block_invoke()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __30__MADService_cancelRequestID___block_invoke_cold_1();
  }
}

- (void)cancelAllRequests
{
  connection = [(MADService *)self connection];
  v2 = [connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_107];
  [v2 cancelAllRequests];
}

void __31__MADService_cancelAllRequests__block_invoke()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __30__MADService_cancelRequestID___block_invoke_cold_1();
  }
}

- (unint64_t)currentOutstandingTasks
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  connection = [(MADService *)self connection];
  v3 = [connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_109];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__MADService_currentOutstandingTasks__block_invoke_110;
  v6[3] = &unk_1E8343348;
  v6[4] = &v7;
  [v3 currentOutstandingTasksWithReply:v6];

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __37__MADService_currentOutstandingTasks__block_invoke()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __30__MADService_cancelRequestID___block_invoke_cold_1();
  }
}

- (int)performRequests:(id)requests onAssetWithIdentifier:(id)identifier identifierType:(unint64_t)type fromPhotoLibraryWithURL:(id)l timeoutInterval:(double)interval completionHandler:(id)handler
{
  v58[1] = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
  identifierCopy = identifier;
  lCopy = l;
  handlerCopy = handler;
  if ([objc_opt_class() isEntitled])
  {
    add = atomic_fetch_add(&self->_requestID.__a_.__a_value, 1u);
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = bundleIdentifier;
      _os_log_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MADService] Receive request from %@", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v53 = 0x3032000000;
    v54 = __Block_byref_object_copy__0;
    v55 = __Block_byref_object_dispose__0;
    v56 = 0;
    if (interval != 0.0)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *v50 = 134217984;
        intervalCopy = interval;
        _os_log_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MADService] Setup proactive timeout of %.3f seconds", v50, 0xCu);
      }

      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __133__MADService_Photos__performRequests_onAssetWithIdentifier_identifierType_fromPhotoLibraryWithURL_timeoutInterval_completionHandler___block_invoke;
      v47[3] = &unk_1E8343370;
      v48 = handlerCopy;
      v49 = add;
      v18 = [MADTimer timerWithInterval:(interval * 1000.0) unit:2 oneShot:1 andBlock:v47];
      v19 = *(*(&buf + 1) + 40);
      *(*(&buf + 1) + 40) = v18;
    }

    identifierCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Request: %d Identifier: (%lu)%@", add, type, identifierCopy];
    v21 = MADSignpostLog();
    v22 = os_signpost_id_generate(v21);

    v23 = MADSignpostLog();
    v24 = v23;
    if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      *v50 = 138412290;
      intervalCopy = *&identifierCopy;
      _os_signpost_emit_with_name_impl(&dword_1C972C000, v24, OS_SIGNPOST_INTERVAL_BEGIN, v22, "MADService_performRequestsOnAsset", "%@", v50, 0xCu);
    }

    connection = [(MADService *)self connection];
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __133__MADService_Photos__performRequests_onAssetWithIdentifier_identifierType_fromPhotoLibraryWithURL_timeoutInterval_completionHandler___block_invoke_183;
    v43[3] = &unk_1E8343398;
    p_buf = &buf;
    v26 = handlerCopy;
    v44 = v26;
    v46 = add;
    v27 = [connection remoteObjectProxyWithErrorHandler:v43];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __133__MADService_Photos__performRequests_onAssetWithIdentifier_identifierType_fromPhotoLibraryWithURL_timeoutInterval_completionHandler___block_invoke_184;
    v36[3] = &unk_1E83433C0;
    v40 = &buf;
    v41 = v22;
    v28 = identifierCopy;
    v37 = v28;
    v38 = requestsCopy;
    v39 = v26;
    v42 = add;
    [v27 requestImageProcessing:v38 forAssetWithIdentifier:identifierCopy identifierType:type fromPhotoLibraryWithURL:lCopy requestID:add andReply:v36];

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v29 = MEMORY[0x1E696ABC0];
    v57 = *MEMORY[0x1E696A578];
    bundleIdentifier = [MEMORY[0x1E696AEC0] stringWithFormat:@"Photos asset processing not available"];
    v58[0] = bundleIdentifier;
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:&v57 count:1];
    v31 = [v29 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v30];
    (*(handlerCopy + 2))(handlerCopy, 0xFFFFFFFFLL, v31);

    LODWORD(add) = -1;
  }

  return add;
}

void __133__MADService_Photos__performRequests_onAssetWithIdentifier_identifierType_fromPhotoLibraryWithURL_timeoutInterval_completionHandler___block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __133__MADService_Photos__performRequests_onAssetWithIdentifier_identifierType_fromPhotoLibraryWithURL_timeoutInterval_completionHandler___block_invoke_cold_1();
  }

  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = MEMORY[0x1E696ABC0];
  v8 = *MEMORY[0x1E696A578];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[MADService] Proactive timeout triggered"];
  v9[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v7 = [v4 errorWithDomain:*MEMORY[0x1E696A768] code:-23811 userInfo:v6];
  (*(v2 + 16))(v2, v3, v7);
}

void __133__MADService_Photos__performRequests_onAssetWithIdentifier_identifierType_fromPhotoLibraryWithURL_timeoutInterval_completionHandler___block_invoke_183(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __92__MADService_performRequests_onPixelBuffer_withOrientation_andIdentifier_completionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __133__MADService_Photos__performRequests_onAssetWithIdentifier_identifierType_fromPhotoLibraryWithURL_timeoutInterval_completionHandler___block_invoke_184(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  v9 = MADSignpostLog();
  v10 = v9;
  v11 = *(a1 + 64);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    v12 = *(a1 + 32);
    v20 = 138412290;
    v21 = v12;
    _os_signpost_emit_with_name_impl(&dword_1C972C000, v10, OS_SIGNPOST_INTERVAL_END, v11, "MADService_performRequestsOnAsset", "%@", &v20, 0xCu);
  }

  for (i = 0; i < [*(a1 + 40) count]; ++i)
  {
    v14 = [*(a1 + 40) objectAtIndexedSubscript:i];
    v15 = [v5 objectAtIndexedSubscript:i];
    v16 = [v15 results];
    [v14 setResults:v16];

    v17 = [*(a1 + 40) objectAtIndexedSubscript:i];
    v18 = [v5 objectAtIndexedSubscript:i];
    v19 = [v18 error];
    [v17 setError:v19];
  }

  (*(*(a1 + 48) + 16))();
}

- (BOOL)performRequests:(id)requests onAssetWithIdentifier:(id)identifier identifierType:(unint64_t)type fromPhotoLibraryWithURL:(id)l error:(id *)error
{
  v48[1] = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
  identifierCopy = identifier;
  lCopy = l;
  if ([objc_opt_class() isEntitled])
  {
    add = atomic_fetch_add(&self->_requestID.__a_.__a_value, 1u);
    identifierCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Request: %d Identifier: (%lu)%@", add, type, identifierCopy];
    v15 = MADSignpostLog();
    v16 = os_signpost_id_generate(v15);

    v17 = MADSignpostLog();
    v18 = v17;
    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = identifierCopy;
      _os_signpost_emit_with_name_impl(&dword_1C972C000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v16, "MADService_performRequestsOnAssetSync", "%@", &buf, 0xCu);
    }

    v36 = 0;
    v37 = &v36;
    v38 = 0x2020000000;
    v39 = 1;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v43 = 0x3032000000;
    v44 = __Block_byref_object_copy__0;
    v45 = __Block_byref_object_dispose__0;
    v46 = 0;
    connection = [(MADService *)self connection];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __105__MADService_Photos__performRequests_onAssetWithIdentifier_identifierType_fromPhotoLibraryWithURL_error___block_invoke;
    v35[3] = &unk_1E8343260;
    v35[4] = &buf;
    v35[5] = &v36;
    v20 = [connection synchronousRemoteObjectProxyWithErrorHandler:v35];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __105__MADService_Photos__performRequests_onAssetWithIdentifier_identifierType_fromPhotoLibraryWithURL_error___block_invoke_185;
    v28[3] = &unk_1E8343288;
    v33 = v16;
    v21 = identifierCopy;
    v29 = v21;
    v30 = requestsCopy;
    v31 = &v36;
    v34 = add;
    p_buf = &buf;
    [v20 requestImageProcessing:v30 forAssetWithIdentifier:identifierCopy identifierType:type fromPhotoLibraryWithURL:lCopy requestID:add andReply:v28];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *v40 = 67109120;
      v41 = add;
      _os_log_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MADService] Analysis returns for RequestID %d (synchronous)", v40, 8u);
    }

    if (error)
    {
      v22 = *(*(&buf + 1) + 40);
      if (v22)
      {
        *error = v22;
      }
    }

    LOBYTE(error) = *(v37 + 24);

    _Block_object_dispose(&buf, 8);
    _Block_object_dispose(&v36, 8);
    goto LABEL_13;
  }

  if (error)
  {
    v23 = MEMORY[0x1E696ABC0];
    v47 = *MEMORY[0x1E696A578];
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Photos asset processing not available"];
    v48[0] = v21;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:&v47 count:1];
    *error = [v23 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v24];

    LOBYTE(error) = 0;
LABEL_13:
  }

  return error & 1;
}

void __105__MADService_Photos__performRequests_onAssetWithIdentifier_identifierType_fromPhotoLibraryWithURL_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __76__MADService_performRequests_onCGImage_withOrientation_andIdentifier_error___block_invoke_cold_1();
  }

  v4 = [v3 copy];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void __105__MADService_Photos__performRequests_onAssetWithIdentifier_identifierType_fromPhotoLibraryWithURL_error___block_invoke_185(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = MADSignpostLog();
  v8 = v7;
  v9 = *(a1 + 64);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = *(a1 + 32);
    v21 = 138412290;
    v22 = v10;
    _os_signpost_emit_with_name_impl(&dword_1C972C000, v8, OS_SIGNPOST_INTERVAL_END, v9, "MADService_performRequestsOnAssetSync", "%@", &v21, 0xCu);
  }

  for (i = 0; i < [*(a1 + 40) count]; ++i)
  {
    v12 = [*(a1 + 40) objectAtIndexedSubscript:i];
    v13 = [v5 objectAtIndexedSubscript:i];
    v14 = [v13 results];
    [v12 setResults:v14];

    v15 = [*(a1 + 40) objectAtIndexedSubscript:i];
    v16 = [v5 objectAtIndexedSubscript:i];
    v17 = [v16 error];
    [v15 setError:v17];
  }

  if (v6)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __76__MADService_performRequests_onCGImage_withOrientation_andIdentifier_error___block_invoke_90_cold_1();
    }

    v18 = [v6 copy];
    v19 = *(*(a1 + 56) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;
  }
}

- (int)_performRequests:(id)requests onIOSurface:(id)surface withOrientation:(unsigned int)orientation assetLocalIdentifier:(id)identifier photoLibraryURL:(id)l completionHandler:(id)handler
{
  v11 = *&orientation;
  v46 = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
  surfaceCopy = surface;
  identifierCopy = identifier;
  lCopy = l;
  handlerCopy = handler;
  add = atomic_fetch_add(&self->_requestID.__a_.__a_value, 1u);
  v31 = lCopy;
  v19 = MADSignpostLog();
  v20 = os_signpost_id_generate(v19);

  v21 = MADSignpostLog();
  v22 = v21;
  if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    *buf = 67109378;
    v43 = add;
    v44 = 2112;
    v45 = identifierCopy;
    _os_signpost_emit_with_name_impl(&dword_1C972C000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v20, "MADService_performRequestsOnAsset", "Request: %d Identifier: %@", buf, 0x12u);
  }

  connection = [(MADService *)self connection];
  v24 = requestsCopy;
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __122__MADService_Photos___performRequests_onIOSurface_withOrientation_assetLocalIdentifier_photoLibraryURL_completionHandler___block_invoke;
  v39[3] = &unk_1E8343210;
  v25 = handlerCopy;
  v40 = v25;
  v41 = add;
  v26 = [connection remoteObjectProxyWithErrorHandler:v39];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __122__MADService_Photos___performRequests_onIOSurface_withOrientation_assetLocalIdentifier_photoLibraryURL_completionHandler___block_invoke_186;
  v33[3] = &unk_1E8343238;
  v37 = v20;
  v38 = add;
  v27 = identifierCopy;
  v34 = v27;
  v28 = v24;
  v35 = v28;
  v29 = v25;
  v36 = v29;
  [v26 requestImageProcessing:v28 forIOSurface:surfaceCopy withOrientation:v11 assetLocalIdentifier:v27 photoLibraryURL:v31 requestID:add andReply:v33];

  return add;
}

void __122__MADService_Photos___performRequests_onIOSurface_withOrientation_assetLocalIdentifier_photoLibraryURL_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __92__MADService_performRequests_onPixelBuffer_withOrientation_andIdentifier_completionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __122__MADService_Photos___performRequests_onIOSurface_withOrientation_assetLocalIdentifier_photoLibraryURL_completionHandler___block_invoke_186(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = MADSignpostLog();
  v8 = v7;
  v9 = *(a1 + 56);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = *(a1 + 64);
    v11 = *(a1 + 32);
    v19[0] = 67109378;
    v19[1] = v10;
    v20 = 2112;
    v21 = v11;
    _os_signpost_emit_with_name_impl(&dword_1C972C000, v8, OS_SIGNPOST_INTERVAL_END, v9, "MADService_performRequestsOnAsset", "Request: %d Identifier: %@", v19, 0x12u);
  }

  for (i = 0; i < [*(a1 + 40) count]; ++i)
  {
    v13 = [*(a1 + 40) objectAtIndexedSubscript:i];
    v14 = [v5 objectAtIndexedSubscript:i];
    v15 = [v14 results];
    [v13 setResults:v15];

    v16 = [*(a1 + 40) objectAtIndexedSubscript:i];
    v17 = [v5 objectAtIndexedSubscript:i];
    v18 = [v17 error];
    [v16 setError:v18];
  }

  (*(*(a1 + 48) + 16))();
}

- (int)performRequests:(id)requests onPixelBuffer:(__CVBuffer *)buffer withOrientation:(unsigned int)orientation assetLocalIdentifier:(id)identifier photoLibraryURL:(id)l completionHandler:(id)handler
{
  v11 = *&orientation;
  v29[1] = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
  identifierCopy = identifier;
  lCopy = l;
  handlerCopy = handler;
  if (([objc_opt_class() isEntitled] & 1) == 0)
  {
    v20 = MEMORY[0x1E696ABC0];
    v28 = *MEMORY[0x1E696A578];
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Photos asset processing not available"];
    v29[0] = v18;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    v22 = [v20 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v21];
    handlerCopy[2](handlerCopy, 0xFFFFFFFFLL, v22);
LABEL_6:

    v19 = -1;
    goto LABEL_7;
  }

  v18 = CVPixelBufferGetIOSurface(buffer);
  if (!v18)
  {
    v23 = MEMORY[0x1E696ABC0];
    v26 = *MEMORY[0x1E696A578];
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CVPixelBuffer must be IOSurface-backed"];
    v27 = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v24 = [v23 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v22];
    handlerCopy[2](handlerCopy, 0xFFFFFFFFLL, v24);

    goto LABEL_6;
  }

  v19 = [(MADService *)self _performRequests:requestsCopy onIOSurface:v18 withOrientation:v11 assetLocalIdentifier:identifierCopy photoLibraryURL:lCopy completionHandler:handlerCopy];
LABEL_7:

  return v19;
}

- (int)performRequests:(id)requests onCGImage:(CGImage *)image withOrientation:(unsigned int)orientation assetLocalIdentifier:(id)identifier photoLibraryURL:(id)l completionHandler:(id)handler
{
  v11 = *&orientation;
  v34[1] = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
  identifierCopy = identifier;
  lCopy = l;
  handlerCopy = handler;
  if (([objc_opt_class() isEntitled] & 1) == 0)
  {
    v22 = MEMORY[0x1E696ABC0];
    v33 = *MEMORY[0x1E696A578];
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Photos asset processing not available"];
    v34[0] = v20;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    v24 = [v22 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v23];
    handlerCopy[2](handlerCopy, 0xFFFFFFFFLL, v24);

    goto LABEL_5;
  }

  v20 = CGImageGetProperty();
  if (!v20)
  {
    pixelBuffer = 0;
    if (!CGImage_CreateCVPixelBufferWithTransform(image, &pixelBuffer, v18, v19, 1.0))
    {
      v20 = CVPixelBufferGetIOSurface(pixelBuffer);
      CF<CGColorSpace *>::~CF(&pixelBuffer);
      goto LABEL_3;
    }

    v26 = MEMORY[0x1E696ABC0];
    v31 = *MEMORY[0x1E696A578];
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to transfer CGImage to IOSurface"];
    v32 = v27;
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v29 = [v26 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v28];
    handlerCopy[2](handlerCopy, 0xFFFFFFFFLL, v29);

    CF<CGColorSpace *>::~CF(&pixelBuffer);
    v20 = 0;
LABEL_5:
    v21 = -1;
    goto LABEL_6;
  }

LABEL_3:
  v21 = [(MADService *)self _performRequests:requestsCopy onIOSurface:v20 withOrientation:v11 assetLocalIdentifier:identifierCopy photoLibraryURL:lCopy completionHandler:handlerCopy];
LABEL_6:

  return v21;
}

- (int)performRequests:(id)requests onAssetWithCloudIdentifier:(id)identifier completionHandler:(id)handler
{
  v37[1] = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
  identifierCopy = identifier;
  handlerCopy = handler;
  if ([objc_opt_class() isEntitled])
  {
    add = atomic_fetch_add(&self->_requestID.__a_.__a_value, 1u);
    v12 = MADSignpostLog();
    v13 = os_signpost_id_generate(v12);

    v14 = MADSignpostLog();
    v15 = v14;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      *buf = 67109378;
      v33 = add;
      v34 = 2112;
      v35 = identifierCopy;
      _os_signpost_emit_with_name_impl(&dword_1C972C000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "MADService_performRequestsOnAsset", "Request: %d cloudIdentifier: %@", buf, 0x12u);
    }

    connection = [(MADService *)self connection];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __83__MADService_Photos__performRequests_onAssetWithCloudIdentifier_completionHandler___block_invoke;
    v29[3] = &unk_1E8343210;
    v17 = handlerCopy;
    v30 = v17;
    v31 = add;
    v18 = [connection remoteObjectProxyWithErrorHandler:v29];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __83__MADService_Photos__performRequests_onAssetWithCloudIdentifier_completionHandler___block_invoke_190;
    v23[3] = &unk_1E8343238;
    v27 = v13;
    v28 = add;
    v24 = identifierCopy;
    v25 = requestsCopy;
    v26 = v17;
    [v18 requestImageProcessing:v25 forAssetWithCloudIdentifier:v24 requestID:add andReply:v23];

    v19 = v30;
  }

  else
  {
    add = MEMORY[0x1E696ABC0];
    v36 = *MEMORY[0x1E696A578];
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Photos asset processing not available"];
    v37[0] = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:&v36 count:1];
    v21 = [add errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v20];
    (*(handlerCopy + 2))(handlerCopy, 0xFFFFFFFFLL, v21);

    LODWORD(add) = -1;
  }

  return add;
}

void __83__MADService_Photos__performRequests_onAssetWithCloudIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __92__MADService_performRequests_onPixelBuffer_withOrientation_andIdentifier_completionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __83__MADService_Photos__performRequests_onAssetWithCloudIdentifier_completionHandler___block_invoke_190(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = MADSignpostLog();
  v8 = v7;
  v9 = *(a1 + 56);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = *(a1 + 64);
    v11 = *(a1 + 32);
    v19[0] = 67109378;
    v19[1] = v10;
    v20 = 2112;
    v21 = v11;
    _os_signpost_emit_with_name_impl(&dword_1C972C000, v8, OS_SIGNPOST_INTERVAL_END, v9, "MADService_performRequestsOnAsset", "Request: %d cloudIdentifier: %@", v19, 0x12u);
  }

  for (i = 0; i < [*(a1 + 40) count]; ++i)
  {
    v13 = [*(a1 + 40) objectAtIndexedSubscript:i];
    v14 = [v5 objectAtIndexedSubscript:i];
    v15 = [v14 results];
    [v13 setResults:v15];

    v16 = [*(a1 + 40) objectAtIndexedSubscript:i];
    v17 = [v5 objectAtIndexedSubscript:i];
    v18 = [v17 error];
    [v16 setError:v18];
  }

  (*(*(a1 + 48) + 16))();
}

- (int)performRequestsWithCloudIdentifiers:(id)identifiers completionHandler:(id)handler
{
  v33[1] = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  handlerCopy = handler;
  if ([objc_opt_class() isEntitled])
  {
    add = atomic_fetch_add(&self->_requestID.__a_.__a_value, 1u);
    v9 = MADSignpostLog();
    v10 = os_signpost_id_generate(v9);

    v11 = MADSignpostLog();
    v12 = v11;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 67109376;
      v29 = add;
      v30 = 2048;
      v31 = [identifiersCopy count];
      _os_signpost_emit_with_name_impl(&dword_1C972C000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "MADService_performRequestsOnAsset", "[MADService RequestID %d]: %lu cloudIdentifiers", buf, 0x12u);
    }

    connection = [(MADService *)self connection];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __76__MADService_Photos__performRequestsWithCloudIdentifiers_completionHandler___block_invoke;
    v25[3] = &unk_1E8343210;
    v14 = handlerCopy;
    v26 = v14;
    v27 = add;
    v15 = [connection remoteObjectProxyWithErrorHandler:v25];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __76__MADService_Photos__performRequestsWithCloudIdentifiers_completionHandler___block_invoke_191;
    v20[3] = &unk_1E8343410;
    v23 = v10;
    v24 = add;
    v21 = identifiersCopy;
    v22 = v14;
    [v15 requestImageProcessingWithCloudIdentifierRequests:v21 requestID:add andReply:v20];

    v16 = v26;
  }

  else
  {
    add = MEMORY[0x1E696ABC0];
    v32 = *MEMORY[0x1E696A578];
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Photos asset processing not available"];
    v33[0] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    v18 = [add errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v17];
    (*(handlerCopy + 2))(handlerCopy, 0xFFFFFFFFLL, v18);

    LODWORD(add) = -1;
  }

  return add;
}

void __76__MADService_Photos__performRequestsWithCloudIdentifiers_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __92__MADService_performRequests_onPixelBuffer_withOrientation_andIdentifier_completionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __76__MADService_Photos__performRequestsWithCloudIdentifiers_completionHandler___block_invoke_191(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = MADSignpostLog();
  v8 = v7;
  v9 = *(a1 + 48);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = *(a1 + 56);
    v11 = [*(a1 + 32) count];
    *buf = 67109376;
    v17 = v10;
    v18 = 2048;
    v19 = v11;
    _os_signpost_emit_with_name_impl(&dword_1C972C000, v8, OS_SIGNPOST_INTERVAL_END, v9, "MADService_performRequestsOnAsset", "[MADService RequestID %d]: %lu cloudIdentifiers", buf, 0x12u);
  }

  v12 = *(a1 + 32);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __76__MADService_Photos__performRequestsWithCloudIdentifiers_completionHandler___block_invoke_192;
  v14[3] = &unk_1E83433E8;
  v13 = v5;
  v15 = v13;
  [v12 enumerateKeysAndObjectsUsingBlock:v14];
  (*(*(a1 + 40) + 16))();
}

void __76__MADService_Photos__performRequestsWithCloudIdentifiers_completionHandler___block_invoke_192(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  for (i = 0; i < [v5 count]; ++i)
  {
    v7 = [v5 objectAtIndexedSubscript:i];
    v8 = [*(a1 + 32) objectForKeyedSubscript:v15];
    v9 = [v8 objectAtIndexedSubscript:i];
    v10 = [v9 results];
    [v7 setResults:v10];

    v11 = [v5 objectAtIndexedSubscript:i];
    v12 = [*(a1 + 32) objectForKeyedSubscript:v15];
    v13 = [v12 objectAtIndexedSubscript:i];
    v14 = [v13 error];
    [v11 setError:v14];
  }
}

- (int)performRequests:(id)requests assetLocalIdentifier:(id)identifier photoLibraryURL:(id)l progressHandler:(id)handler completionHandler:(id)completionHandler
{
  v44[1] = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
  identifierCopy = identifier;
  lCopy = l;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  if ([objc_opt_class() isEntitled])
  {
    add = atomic_fetch_add(&self->_requestID.__a_.__a_value, 1u);
    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Request: %d Identifier: %@ (%lu)", add, identifierCopy, 0];
    v16 = MADSignpostLog();
    v17 = os_signpost_id_generate(v16);

    v18 = MADSignpostLog();
    v19 = v18;
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      *buf = 138412290;
      v42 = v28;
      _os_signpost_emit_with_name_impl(&dword_1C972C000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "MADService_performRequestsOnVideoAsset", "%@", buf, 0xCu);
    }

    [(MADService *)self addProgressHandler:handlerCopy forRequestID:add];
    connection = [(MADService *)self connection];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __109__MADService_Photos__performRequests_assetLocalIdentifier_photoLibraryURL_progressHandler_completionHandler___block_invoke;
    v38[3] = &unk_1E83432D8;
    v38[4] = self;
    v40 = add;
    v21 = completionHandlerCopy;
    v39 = v21;
    v22 = [connection remoteObjectProxyWithErrorHandler:v38];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __109__MADService_Photos__performRequests_assetLocalIdentifier_photoLibraryURL_progressHandler_completionHandler___block_invoke_198;
    v31[3] = &unk_1E8343300;
    v36 = v17;
    v23 = v28;
    v32 = v23;
    selfCopy = self;
    v37 = add;
    v34 = requestsCopy;
    v35 = v21;
    [v22 requestVideoProcessing:v34 assetIdentifier:identifierCopy identifierType:0 photoLibraryURL:lCopy requestID:add isIncremental:0 reply:v31];
  }

  else
  {
    v24 = MEMORY[0x1E696ABC0];
    v43 = *MEMORY[0x1E696A578];
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Photos asset processing not available"];
    v44[0] = v23;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:&v43 count:1];
    v26 = [v24 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v25];
    (*(completionHandlerCopy + 2))(completionHandlerCopy, 0xFFFFFFFFLL, v26);

    LODWORD(add) = -1;
  }

  return add;
}

void __109__MADService_Photos__performRequests_assetLocalIdentifier_photoLibraryURL_progressHandler_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __92__MADService_performRequests_onPixelBuffer_withOrientation_andIdentifier_completionHandler___block_invoke_cold_1();
  }

  [*(a1 + 32) removeProgressHandlerForRequestID:*(a1 + 48)];
  (*(*(a1 + 40) + 16))();
}

void __109__MADService_Photos__performRequests_assetLocalIdentifier_photoLibraryURL_progressHandler_completionHandler___block_invoke_198(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = MADSignpostLog();
  v8 = v7;
  v9 = *(a1 + 64);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = *(a1 + 32);
    v17 = 138412290;
    v18 = v10;
    _os_signpost_emit_with_name_impl(&dword_1C972C000, v8, OS_SIGNPOST_INTERVAL_END, v9, "MADService_performRequestsOnVideoAsset", "%@", &v17, 0xCu);
  }

  [*(a1 + 40) removeProgressHandlerForRequestID:*(a1 + 72)];
  for (i = 0; i < [v5 count]; ++i)
  {
    v12 = [v5 objectAtIndexedSubscript:i];
    v13 = [*(a1 + 48) objectAtIndexedSubscript:i];
    v14 = [v12 results];
    [v13 setResults:v14];

    v15 = [*(a1 + 48) objectAtIndexedSubscript:i];
    v16 = [v12 error];
    [v15 setError:v16];
  }

  (*(*(a1 + 56) + 16))();
}

- (int)performRequests:(id)requests assetLocalIdentifier:(id)identifier photoLibraryURL:(id)l progressHandler:(id)handler resultHandler:(id)resultHandler completionHandler:(id)completionHandler
{
  v53[1] = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
  identifierCopy = identifier;
  lCopy = l;
  handlerCopy = handler;
  resultHandlerCopy = resultHandler;
  completionHandlerCopy = completionHandler;
  if ([objc_opt_class() isEntitled])
  {
    add = atomic_fetch_add(&self->_requestID.__a_.__a_value, 1u);
    v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Request: %d Identifier: %@ (%lu)", add, identifierCopy, 0];
    v32 = lCopy;
    v18 = MADSignpostLog();
    v19 = os_signpost_id_generate(v18);

    v20 = MADSignpostLog();
    v21 = v20;
    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      *buf = 138412290;
      v51 = v33;
      _os_signpost_emit_with_name_impl(&dword_1C972C000, v21, OS_SIGNPOST_INTERVAL_BEGIN, v19, "MADService_performRequestsOnVideoAsset", "%@", buf, 0xCu);
    }

    [(MADService *)self addProgressHandler:handlerCopy forRequestID:add];
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __123__MADService_Photos__performRequests_assetLocalIdentifier_photoLibraryURL_progressHandler_resultHandler_completionHandler___block_invoke;
    v46[3] = &unk_1E8343438;
    v22 = requestsCopy;
    v47 = v22;
    v49 = add;
    v48 = resultHandlerCopy;
    v23 = MEMORY[0x1CCA8ECA0](v46);
    [(MADService *)self addResultHandler:v23 forRequestID:add];
    connection = [(MADService *)self connection];
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __123__MADService_Photos__performRequests_assetLocalIdentifier_photoLibraryURL_progressHandler_resultHandler_completionHandler___block_invoke_199;
    v43[3] = &unk_1E83432D8;
    v43[4] = self;
    v45 = add;
    v25 = completionHandlerCopy;
    v44 = v25;
    v26 = [connection remoteObjectProxyWithErrorHandler:v43];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __123__MADService_Photos__performRequests_assetLocalIdentifier_photoLibraryURL_progressHandler_resultHandler_completionHandler___block_invoke_200;
    v37[3] = &unk_1E8343238;
    v41 = v19;
    v27 = v33;
    v38 = v27;
    selfCopy = self;
    v42 = add;
    v40 = v25;
    lCopy = v32;
    [v26 requestVideoProcessing:v22 assetIdentifier:identifierCopy identifierType:0 photoLibraryURL:v32 requestID:add isIncremental:1 reply:v37];

    v28 = v47;
  }

  else
  {
    v29 = MEMORY[0x1E696ABC0];
    v52 = *MEMORY[0x1E696A578];
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Photos asset processing not available"];
    v53[0] = v27;
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:&v52 count:1];
    v30 = [v29 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v28];
    (*(completionHandlerCopy + 2))(completionHandlerCopy, 0xFFFFFFFFLL, v30);

    LODWORD(add) = -1;
  }

  return add;
}

void __123__MADService_Photos__performRequests_assetLocalIdentifier_photoLibraryURL_progressHandler_resultHandler_completionHandler___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  if ([*(a1 + 32) count] >= a3)
  {
    v6 = [*(a1 + 32) objectAtIndexedSubscript:a3];
    v7 = [v5 results];
    [v6 setResults:v7];

    v8 = [*(a1 + 32) objectAtIndexedSubscript:a3];
    v9 = [v5 error];
    [v8 setError:v9];

    v10 = *(a1 + 40);
    if (v10)
    {
      v11 = *(a1 + 48);
      v12 = [*(a1 + 32) objectAtIndexedSubscript:a3];
      (*(v10 + 16))(v10, v11, v12);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __123__MADService_Photos__performRequests_assetLocalIdentifier_photoLibraryURL_progressHandler_resultHandler_completionHandler___block_invoke_cold_1();
  }
}

void __123__MADService_Photos__performRequests_assetLocalIdentifier_photoLibraryURL_progressHandler_resultHandler_completionHandler___block_invoke_199(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __92__MADService_performRequests_onPixelBuffer_withOrientation_andIdentifier_completionHandler___block_invoke_cold_1();
  }

  [*(a1 + 32) removeProgressHandlerForRequestID:*(a1 + 48)];
  [*(a1 + 32) removeResultHandlerForRequestID:*(a1 + 48)];
  (*(*(a1 + 40) + 16))();
}

void __123__MADService_Photos__performRequests_assetLocalIdentifier_photoLibraryURL_progressHandler_resultHandler_completionHandler___block_invoke_200(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MADSignpostLog();
  v6 = v5;
  v7 = *(a1 + 56);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v8 = *(a1 + 32);
    v9 = 138412290;
    v10 = v8;
    _os_signpost_emit_with_name_impl(&dword_1C972C000, v6, OS_SIGNPOST_INTERVAL_END, v7, "MADService_performRequestsOnVideoAsset", "%@", &v9, 0xCu);
  }

  [*(a1 + 40) removeProgressHandlerForRequestID:*(a1 + 64)];
  [*(a1 + 40) removeResultHandlerForRequestID:*(a1 + 64)];
  (*(*(a1 + 48) + 16))();
}

const void **__49__MADService_Photos___isEntitledForVUIndexAccess__block_invoke()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = SecTaskCreateFromSelf(0);
  v6 = v0;
  if (v0)
  {
    v1 = SecTaskCopyValueForEntitlement(v0, @"com.apple.private.mediaanalysisd.datamanagement.vuindex", 0);
    *cf1 = v1;
    v3 = v1 && (v2 = CFGetTypeID(v1), v2 == CFBooleanGetTypeID()) && CFEqual(*cf1, *MEMORY[0x1E695E4D0]) != 0;
    +[MADService(Photos) _isEntitledForVUIndexAccess]::entitled = v3;
    CF<CGColorSpace *>::~CF(cf1);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    if (+[MADService(Photos) _isEntitledForVUIndexAccess]::entitled)
    {
      v4 = "Entitled";
    }

    else
    {
      v4 = "Not entitled";
    }

    *cf1 = 136315138;
    *&cf1[4] = v4;
    _os_log_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Process is %s for VU Index access", cf1, 0xCu);
  }

  return CF<CGColorSpace *>::~CF(&v6);
}

- (id)requestVUIndexURLForSystemPhotosLibraryWithError:(id *)error
{
  v3 = [(MADService *)self requestVUIndexURLForPhotoLibraryURL:0 error:error];

  return v3;
}

- (id)requestVUIndexURLForPhotoLibraryURL:(id)l error:(id *)error
{
  v29[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  if ([objc_opt_class() _isEntitledForVUIndexAccess])
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__0;
    v26 = __Block_byref_object_dispose__0;
    v27 = 0;
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__0;
    v20 = __Block_byref_object_dispose__0;
    v21 = 0;
    connection = [(MADService *)self connection];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __64__MADService_Photos__requestVUIndexURLForPhotoLibraryURL_error___block_invoke;
    v15[3] = &unk_1E8343460;
    v15[4] = &v16;
    v8 = [connection synchronousRemoteObjectProxyWithErrorHandler:v15];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __64__MADService_Photos__requestVUIndexURLForPhotoLibraryURL_error___block_invoke_209;
    v14[3] = &unk_1E8343488;
    v14[4] = &v22;
    v14[5] = &v16;
    [v8 requestVisionCacheStorageDirectoryURLForPhotoLibraryURL:lCopy reply:v14];

    if (error)
    {
      v9 = v17[5];
      if (v9)
      {
        *error = [v9 copy];
      }
    }

    error = v23[5];
    _Block_object_dispose(&v16, 8);

    _Block_object_dispose(&v22, 8);
  }

  else if (error)
  {
    v10 = MEMORY[0x1E696ABC0];
    v28 = *MEMORY[0x1E696A578];
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Process is not entitled! exiting ..."];
    v29[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    *error = [v10 errorWithDomain:*MEMORY[0x1E696A768] code:-19 userInfo:v12];

    error = 0;
  }

  return error;
}

void __64__MADService_Photos__requestVUIndexURLForPhotoLibraryURL_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __64__MADService_Photos__requestVUIndexURLForPhotoLibraryURL_error___block_invoke_cold_1();
  }

  v4 = [v3 copy];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void __64__MADService_Photos__requestVUIndexURLForPhotoLibraryURL_error___block_invoke_209(uint64_t a1, void *a2, void *a3, void *a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7 && v8)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v30 = v7;
      _os_log_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MADService] Packaging VU Index directory secure URL %@", buf, 0xCu);
    }

    MEMORY[0x1CCA8E8F0](v7, v8);
    v10 = [v7 startAccessingSecurityScopedResource];
    v11 = [v7 URLByAppendingPathComponent:@"VUIndex.sqlite"];
    v12 = [v11 path];

    v13 = [MEMORY[0x1E696AC08] defaultManager];
    v14 = [v13 fileExistsAtPath:v12];

    if (v10)
    {
      [v7 stopAccessingSecurityScopedResource];
    }

    if (v14)
    {
      v15 = *(*(a1 + 32) + 8);
      v16 = v7;
      v17 = *(v15 + 40);
      *(v15 + 40) = v16;
    }

    else
    {
      v20 = MEMORY[0x1E696ABC0];
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"VUIndex file does not exist", *MEMORY[0x1E696A578]];
      v28 = v21;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      v23 = [v20 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v22];
      v24 = *(*(a1 + 40) + 8);
      v25 = *(v24 + 40);
      *(v24 + 40) = v23;

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        __64__MADService_Photos__requestVUIndexURLForPhotoLibraryURL_error___block_invoke_209_cold_2();
      }

      v26 = *(*(a1 + 32) + 8);
      v17 = *(v26 + 40);
      *(v26 + 40) = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __64__MADService_Photos__requestVUIndexURLForPhotoLibraryURL_error___block_invoke_209_cold_1();
    }

    v18 = [v9 copy];
    v19 = *(*(a1 + 40) + 8);
    v12 = *(v19 + 40);
    *(v19 + 40) = v18;
  }
}

- (int64_t)queryVUIndexAssetCountForType:(int64_t)type photoLibraryURL:(id)l error:(id *)error
{
  v29[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  if ([objc_opt_class() _isEntitledForVUIndexAccess])
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 0;
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__0;
    v22 = __Block_byref_object_dispose__0;
    v23 = 0;
    connection = [(MADService *)self connection];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __74__MADService_Photos__queryVUIndexAssetCountForType_photoLibraryURL_error___block_invoke;
    v17[3] = &unk_1E8343460;
    v17[4] = &v18;
    v10 = [connection synchronousRemoteObjectProxyWithErrorHandler:v17];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __74__MADService_Photos__queryVUIndexAssetCountForType_photoLibraryURL_error___block_invoke_221;
    v16[3] = &unk_1E83434B0;
    v16[4] = &v18;
    v16[5] = &v24;
    [v10 queryVUIndexAssetCountForType:type photoLibraryURL:lCopy reply:v16];

    if (error)
    {
      v11 = v19[5];
      if (v11)
      {
        *error = [v11 copy];
      }
    }

    error = v25[3];
    _Block_object_dispose(&v18, 8);

    _Block_object_dispose(&v24, 8);
  }

  else if (error)
  {
    v12 = MEMORY[0x1E696ABC0];
    v28 = *MEMORY[0x1E696A578];
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Process is not entitled to query VU index asset count! exiting ..."];
    v29[0] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    *error = [v12 errorWithDomain:*MEMORY[0x1E696A768] code:-19 userInfo:v14];

    error = 0;
  }

  return error;
}

void __74__MADService_Photos__queryVUIndexAssetCountForType_photoLibraryURL_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __64__MADService_Photos__requestVUIndexURLForPhotoLibraryURL_error___block_invoke_cold_1();
  }

  v4 = [v3 copy];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void __74__MADService_Photos__queryVUIndexAssetCountForType_photoLibraryURL_error___block_invoke_221(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __74__MADService_Photos__queryVUIndexAssetCountForType_photoLibraryURL_error___block_invoke_221_cold_1();
    }

    v6 = [v5 copy];
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }
}

- (int)queryVUIndexAssetCountForType:(int64_t)type photoLibraryURL:(id)l completionHandler:(id)handler
{
  v26[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  handlerCopy = handler;
  if ([objc_opt_class() _isEntitledForVUIndexAccess])
  {
    add = atomic_fetch_add(&self->_requestID.__a_.__a_value, 1u);
    connection = [(MADService *)self connection];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __86__MADService_Photos__queryVUIndexAssetCountForType_photoLibraryURL_completionHandler___block_invoke;
    v22[3] = &unk_1E8343210;
    v12 = handlerCopy;
    v23 = v12;
    v24 = add;
    v13 = [connection remoteObjectProxyWithErrorHandler:v22];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __86__MADService_Photos__queryVUIndexAssetCountForType_photoLibraryURL_completionHandler___block_invoke_223;
    v19[3] = &unk_1E83434D8;
    v20 = v12;
    v21 = add;
    [v13 queryVUIndexAssetCountForType:type photoLibraryURL:lCopy reply:v19];

    v14 = v23;
  }

  else
  {
    v15 = MEMORY[0x1E696ABC0];
    v25 = *MEMORY[0x1E696A578];
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Process is not entitled to query VU index asset count! exiting ..."];
    v26[0] = v14;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v17 = [v15 errorWithDomain:*MEMORY[0x1E696A768] code:-19 userInfo:v16];
    (*(handlerCopy + 2))(handlerCopy, 0xFFFFFFFFLL, 0, v17);

    add = -1;
  }

  return add;
}

void __86__MADService_Photos__queryVUIndexAssetCountForType_photoLibraryURL_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __64__MADService_Photos__requestVUIndexURLForPhotoLibraryURL_error___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (int)queryVUIndexLastFullModeClusterDate:(id *)date photoLibraryURL:(id)l error:(id *)error
{
  lCopy = l;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__0;
  v27 = __Block_byref_object_dispose__0;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__0;
  v21 = __Block_byref_object_dispose__0;
  v22 = 0;
  if (date)
  {
    *date = 0;
  }

  connection = [(MADService *)self connection];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __80__MADService_Photos__queryVUIndexLastFullModeClusterDate_photoLibraryURL_error___block_invoke;
  v16[3] = &unk_1E8343460;
  v16[4] = &v17;
  v10 = [connection synchronousRemoteObjectProxyWithErrorHandler:v16];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __80__MADService_Photos__queryVUIndexLastFullModeClusterDate_photoLibraryURL_error___block_invoke_224;
  v15[3] = &unk_1E8343500;
  v15[4] = &v17;
  v15[5] = &v23;
  [v10 queryVUIndexLastFullModeClusterDateWithPhotoLibraryURL:lCopy reply:v15];

  if (date)
  {
    v11 = v24[5];
    if (v11)
    {
      *date = v11;
    }
  }

  code = 0;
  if (error)
  {
    v13 = v18[5];
    if (v13)
    {
      code = [v13 code];
      *error = [v18[5] copy];
    }
  }

  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);
  return code;
}

void __80__MADService_Photos__queryVUIndexLastFullModeClusterDate_photoLibraryURL_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __64__MADService_Photos__requestVUIndexURLForPhotoLibraryURL_error___block_invoke_cold_1();
  }

  v4 = [v3 copy];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void __80__MADService_Photos__queryVUIndexLastFullModeClusterDate_photoLibraryURL_error___block_invoke_224(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __80__MADService_Photos__queryVUIndexLastFullModeClusterDate_photoLibraryURL_error___block_invoke_224_cold_1();
    }

    v8 = [v7 copy];
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

- (int)queryVUIndexLastFullModeClusterDateWithPhotoLibraryURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  add = atomic_fetch_add(&self->_requestID.__a_.__a_value, 1u);
  connection = [(MADService *)self connection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __95__MADService_Photos__queryVUIndexLastFullModeClusterDateWithPhotoLibraryURL_completionHandler___block_invoke;
  v17[3] = &unk_1E8343210;
  v10 = handlerCopy;
  v18 = v10;
  v19 = add;
  v11 = [connection remoteObjectProxyWithErrorHandler:v17];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __95__MADService_Photos__queryVUIndexLastFullModeClusterDateWithPhotoLibraryURL_completionHandler___block_invoke_226;
  v14[3] = &unk_1E8343528;
  v12 = v10;
  v15 = v12;
  v16 = add;
  [v11 queryVUIndexLastFullModeClusterDateWithPhotoLibraryURL:lCopy reply:v14];

  return add;
}

void __95__MADService_Photos__queryVUIndexLastFullModeClusterDateWithPhotoLibraryURL_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __64__MADService_Photos__requestVUIndexURLForPhotoLibraryURL_error___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (int)queryImagePriority1MCEnableDate:(id *)date photoLibraryURL:(id)l error:(id *)error
{
  lCopy = l;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__0;
  v27 = __Block_byref_object_dispose__0;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__0;
  v21 = __Block_byref_object_dispose__0;
  v22 = 0;
  if (date)
  {
    *date = 0;
  }

  connection = [(MADService *)self connection];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __76__MADService_Photos__queryImagePriority1MCEnableDate_photoLibraryURL_error___block_invoke;
  v16[3] = &unk_1E8343460;
  v16[4] = &v17;
  v10 = [connection synchronousRemoteObjectProxyWithErrorHandler:v16];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __76__MADService_Photos__queryImagePriority1MCEnableDate_photoLibraryURL_error___block_invoke_227;
  v15[3] = &unk_1E8343500;
  v15[4] = &v17;
  v15[5] = &v23;
  [v10 queryImagePriority1MCEnableDateWithPhotoLibraryURL:lCopy reply:v15];

  if (date)
  {
    v11 = v24[5];
    if (v11)
    {
      *date = v11;
    }
  }

  code = 0;
  if (error)
  {
    v13 = v18[5];
    if (v13)
    {
      code = [v13 code];
      *error = [v18[5] copy];
    }
  }

  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);
  return code;
}

void __76__MADService_Photos__queryImagePriority1MCEnableDate_photoLibraryURL_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __64__MADService_Photos__requestVUIndexURLForPhotoLibraryURL_error___block_invoke_cold_1();
  }

  v4 = [v3 copy];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void __76__MADService_Photos__queryImagePriority1MCEnableDate_photoLibraryURL_error___block_invoke_227(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __76__MADService_Photos__queryImagePriority1MCEnableDate_photoLibraryURL_error___block_invoke_227_cold_1();
    }

    v8 = [v7 copy];
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

- (id)requestApplicationDataFolderIdentifierVisionServiceWithPhotosLibraryURL:(id)l error:(id *)error
{
  lCopy = l;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__0;
  v24 = __Block_byref_object_dispose__0;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__0;
  v18 = __Block_byref_object_dispose__0;
  v19 = 0;
  connection = [(MADService *)self connection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __100__MADService_Photos__requestApplicationDataFolderIdentifierVisionServiceWithPhotosLibraryURL_error___block_invoke;
  v13[3] = &unk_1E8343460;
  v13[4] = &v14;
  v8 = [connection synchronousRemoteObjectProxyWithErrorHandler:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __100__MADService_Photos__requestApplicationDataFolderIdentifierVisionServiceWithPhotosLibraryURL_error___block_invoke_228;
  v12[3] = &unk_1E8343488;
  v12[4] = &v20;
  v12[5] = &v14;
  [v8 requestVisionCacheStorageDirectoryURLForPhotoLibraryURL:lCopy reply:v12];

  if (error)
  {
    v9 = v15[5];
    if (v9)
    {
      *error = [v9 copy];
    }
  }

  v10 = v21[5];
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);

  return v10;
}

void __100__MADService_Photos__requestApplicationDataFolderIdentifierVisionServiceWithPhotosLibraryURL_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __64__MADService_Photos__requestVUIndexURLForPhotoLibraryURL_error___block_invoke_cold_1();
  }

  v4 = [v3 copy];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void __100__MADService_Photos__requestApplicationDataFolderIdentifierVisionServiceWithPhotosLibraryURL_error___block_invoke_228(uint64_t a1, void *a2, void *a3, void *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7 && v8)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v15 = 138412290;
      v16 = v7;
      _os_log_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MADService] Packaging directory secure URL %@", &v15, 0xCu);
    }

    MEMORY[0x1CCA8E8F0](v7, v8);
    v10 = *(*(a1 + 32) + 8);
    v11 = v7;
    v12 = *(v10 + 40);
    *(v10 + 40) = v11;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __64__MADService_Photos__requestVUIndexURLForPhotoLibraryURL_error___block_invoke_209_cold_1();
    }

    v13 = [v9 copy];
    v14 = *(*(a1 + 40) + 8);
    v12 = *(v14 + 40);
    *(v14 + 40) = v13;
  }
}

- (id)queryPerformanceMeasurements
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  connection = [(MADService *)self connection];
  v3 = [connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_268];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__MADService_Performance__queryPerformanceMeasurements__block_invoke_269;
  v6[3] = &unk_1E8343550;
  v6[4] = &v7;
  [v3 queryPerformanceMeasurementsWithReply:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __55__MADService_Performance__queryPerformanceMeasurements__block_invoke()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __30__MADService_cancelRequestID___block_invoke_cold_1();
  }
}

- (void)resetPerformanceMeasurements
{
  connection = [(MADService *)self connection];
  v2 = [connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_272];
  [v2 resetPerformanceMeasurements];
}

void __55__MADService_Performance__resetPerformanceMeasurements__block_invoke()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __30__MADService_cancelRequestID___block_invoke_cold_1();
  }
}

+ (NSString)serviceName
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    +[MADService(ProtocolDefaults) serviceName];
  }

  return 0;
}

+ (Protocol)serverProtocol
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    +[MADService(ProtocolDefaults) serviceName];
  }

  return 0;
}

+ (NSSet)allowedClasses
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    +[MADService(ProtocolDefaults) serviceName];
  }

  return 0;
}

+ (NSSet)allowedVideoRequestClasses
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    +[MADService(ProtocolDefaults) serviceName];
  }

  return 0;
}

+ (NSSet)allowedVideoResultClasses
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    +[MADService(ProtocolDefaults) serviceName];
  }

  return 0;
}

+ (id)allowedTextRequestClasses
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    +[MADService(ProtocolDefaults) serviceName];
  }

  return 0;
}

+ (id)allowedTextResultClasses
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    +[MADService(ProtocolDefaults) serviceName];
  }

  return 0;
}

+ (NSSet)allowedMultiModalRequestClasses
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    +[MADService(ProtocolDefaults) serviceName];
  }

  return 0;
}

- (id)userSafetyEnabled:(id *)enabled
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__0;
  v20 = __Block_byref_object_dispose__0;
  v21 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__0;
  v14 = __Block_byref_object_dispose__0;
  v15 = 0;
  connection = [(MADService *)self connection];
  v5 = [connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_304];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__MADService_UserSafety__userSafetyEnabled___block_invoke_305;
  v9[3] = &unk_1E8343578;
  v9[4] = &v16;
  v9[5] = &v10;
  [v5 queryUserSafetyEnablement:v9];

  if (enabled)
  {
    v6 = v11[5];
    if (v6)
    {
      *enabled = [v6 copy];
    }
  }

  v7 = [v17[5] copy];
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);

  return v7;
}

void __44__MADService_UserSafety__userSafetyEnabled___block_invoke()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __92__MADService_performRequests_onPixelBuffer_withOrientation_andIdentifier_completionHandler___block_invoke_cold_1();
  }
}

void __44__MADService_UserSafety__userSafetyEnabled___block_invoke_305(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (BOOL)registerUserSafetyPolicyUpdateHandler:(id)handler error:(id *)error
{
  v32[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v7 = handlerCopy;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__0;
  v25 = __Block_byref_object_dispose__0;
  v26 = 0;
  if (self->_userSafetyHandler)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [MADService(UserSafety) registerUserSafetyPolicyUpdateHandler:error:];
    }

    v8 = MEMORY[0x1E696ABC0];
    v31 = *MEMORY[0x1E696A578];
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[MADService] A handler has been registered, do not re-register another one"];
    v32[0] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    *error = [v8 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v10];
  }

  else
  {
    v13 = MEMORY[0x1CCA8ECA0](handlerCopy);
    userSafetyHandler = self->_userSafetyHandler;
    self->_userSafetyHandler = v13;

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MADService] Starting subscribeUserSafety", buf, 2u);
    }

    connection = [(MADService *)self connection];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __70__MADService_UserSafety__registerUserSafetyPolicyUpdateHandler_error___block_invoke;
    v19[3] = &unk_1E8343460;
    v19[4] = &v21;
    v16 = [connection synchronousRemoteObjectProxyWithErrorHandler:v19];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __70__MADService_UserSafety__registerUserSafetyPolicyUpdateHandler_error___block_invoke_307;
    v18[3] = &unk_1E8342F28;
    v18[4] = &v27;
    v18[5] = &v21;
    [v16 subscribeUserSafety:v18];

    if (*(v28 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MADService] Completed subscribeUserSafety", buf, 2u);
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [MADService(UserSafety) registerUserSafetyPolicyUpdateHandler:error:];
      }

      v17 = v22[5];
      if (v17)
      {
        *error = v17;
      }
    }
  }

  v11 = *(v28 + 24);
  _Block_object_dispose(&v21, 8);

  _Block_object_dispose(&v27, 8);
  return v11 & 1;
}

void __70__MADService_UserSafety__registerUserSafetyPolicyUpdateHandler_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __92__MADService_performRequests_onPixelBuffer_withOrientation_andIdentifier_completionHandler___block_invoke_cold_1();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)startEntryPointWithQueryID:(unint64_t)d
{
  connection = [(MADService *)self connection];
  v4 = [connection remoteObjectProxyWithErrorHandler:&__block_literal_global_317];
  [v4 startEntryPointWithQueryID:d];
}

void __54__MADService_VIAnalytics__startEntryPointWithQueryID___block_invoke()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __92__MADService_performRequests_onPixelBuffer_withOrientation_andIdentifier_completionHandler___block_invoke_cold_1();
  }
}

- (void)startEntryPointWithQueryID:(unint64_t)d andEvent:(unint64_t)event
{
  connection = [(MADService *)self connection];
  v6 = [connection remoteObjectProxyWithErrorHandler:&__block_literal_global_319];
  [v6 startEntryPointWithQueryID:d andEvent:event];
}

void __63__MADService_VIAnalytics__startEntryPointWithQueryID_andEvent___block_invoke()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __92__MADService_performRequests_onPixelBuffer_withOrientation_andIdentifier_completionHandler___block_invoke_cold_1();
  }
}

- (void)cacheHitWithQueryID:(unint64_t)d cachedResultQueryID:(unint64_t)iD
{
  connection = [(MADService *)self connection];
  v6 = [connection remoteObjectProxyWithErrorHandler:&__block_literal_global_321];
  [v6 cacheHitWithQueryID:d cachedResultQueryID:iD];
}

void __67__MADService_VIAnalytics__cacheHitWithQueryID_cachedResultQueryID___block_invoke()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __92__MADService_performRequests_onPixelBuffer_withOrientation_andIdentifier_completionHandler___block_invoke_cold_1();
  }
}

- (void)cacheHitWithQueryID:(unint64_t)d cachedResultQueryID:(unint64_t)iD engagementSuggestionType:(id)type
{
  typeCopy = type;
  connection = [(MADService *)self connection];
  v9 = [connection remoteObjectProxyWithErrorHandler:&__block_literal_global_323];
  [v9 cacheHitWithQueryID:d cachedResultQueryID:iD engagementSuggestionType:typeCopy];
}

void __92__MADService_VIAnalytics__cacheHitWithQueryID_cachedResultQueryID_engagementSuggestionType___block_invoke()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __92__MADService_performRequests_onPixelBuffer_withOrientation_andIdentifier_completionHandler___block_invoke_cold_1();
  }
}

- (void)endEntryPoint
{
  connection = [(MADService *)self connection];
  v2 = [connection remoteObjectProxyWithErrorHandler:&__block_literal_global_325];
  [v2 endEntryPoint];
}

void __40__MADService_VIAnalytics__endEntryPoint__block_invoke()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __92__MADService_performRequests_onPixelBuffer_withOrientation_andIdentifier_completionHandler___block_invoke_cold_1();
  }
}

- (int)prewarmTextRequests:(id)requests completionHandler:(id)handler
{
  *(&v31[3] + 4) = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
  handlerCopy = handler;
  add = atomic_fetch_add(&self->_requestID.__a_.__a_value, 1u);
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Request: %d", add];
  v10 = MADSignpostLog();
  v11 = os_signpost_id_generate(v10);

  v12 = MADSignpostLog();
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 138412290;
    v31[0] = v9;
    _os_signpost_emit_with_name_impl(&dword_1C972C000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "MADService_PrewarmTextRequest", "%@", buf, 0xCu);
  }

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __58__MADService_Text__prewarmTextRequests_completionHandler___block_invoke;
  v25[3] = &unk_1E83435A0;
  v28 = v11;
  v14 = v9;
  v26 = v14;
  v29 = add;
  v15 = handlerCopy;
  v27 = v15;
  v16 = MEMORY[0x1CCA8ECA0](v25);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v17 = qos_class_self();
    v18 = MADQoSDescription(v17);
    *buf = 67109378;
    LODWORD(v31[0]) = add;
    WORD2(v31[0]) = 2112;
    *(v31 + 6) = v18;
    _os_log_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MADService] Submitting text pre-warming request [ID: %d QoS: %@]", buf, 0x12u);
  }

  connection = [(MADService *)self connection];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __58__MADService_Text__prewarmTextRequests_completionHandler___block_invoke_338;
  v23[3] = &unk_1E83435C8;
  v20 = v16;
  v24 = v20;
  v21 = [connection remoteObjectProxyWithErrorHandler:v23];
  [v21 requestTextPrewarming:requestsCopy requestID:add reply:v20];

  return add;
}

void __58__MADService_Text__prewarmTextRequests_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MADSignpostLog();
  v5 = v4;
  v6 = *(a1 + 48);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = *(a1 + 32);
    v9 = 138412290;
    v10 = v7;
    _os_signpost_emit_with_name_impl(&dword_1C972C000, v5, OS_SIGNPOST_INTERVAL_END, v6, "MADService_PrewarmTextRequest", "%@", &v9, 0xCu);
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [v3 description];
      objc_claimAutoreleasedReturnValue();
      __58__MADService_Text__prewarmTextRequests_completionHandler___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 56);
    v9 = 67109120;
    LODWORD(v10) = v8;
    _os_log_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MADService] Text pre-warming request completed [ID: %d]", &v9, 8u);
  }

  (*(*(a1 + 40) + 16))();
}

void __58__MADService_Text__prewarmTextRequests_completionHandler___block_invoke_338(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = MEMORY[0x1E696ABC0];
  v11 = *MEMORY[0x1E696A578];
  v6 = MEMORY[0x1E696AEC0];
  v7 = [v3 description];
  v8 = [v6 stringWithFormat:@"Error connecting to analysis service (%@)", v7];
  v12[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v10 = [v5 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v9];
  (*(v4 + 16))(v4, v10);
}

- (int)performRequests:(id)requests textInputs:(id)inputs completionHandler:(id)handler
{
  *(&v36[3] + 4) = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
  inputsCopy = inputs;
  handlerCopy = handler;
  add = atomic_fetch_add(&self->_requestID.__a_.__a_value, 1u);
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Request: %d", add];
  v11 = MADSignpostLog();
  v12 = os_signpost_id_generate(v11);

  v13 = MADSignpostLog();
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 138412290;
    v36[0] = v10;
    _os_signpost_emit_with_name_impl(&dword_1C972C000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "MADService_ProcessTextRequest", "%@", buf, 0xCu);
  }

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __65__MADService_Text__performRequests_textInputs_completionHandler___block_invoke;
  v29[3] = &unk_1E8343238;
  v33 = v12;
  v15 = v10;
  v30 = v15;
  v34 = add;
  v16 = requestsCopy;
  v31 = v16;
  v17 = handlerCopy;
  v32 = v17;
  v18 = MEMORY[0x1CCA8ECA0](v29);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v19 = qos_class_self();
    v20 = MADQoSDescription(v19);
    *buf = 67109378;
    LODWORD(v36[0]) = add;
    WORD2(v36[0]) = 2112;
    *(v36 + 6) = v20;
    _os_log_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MADService] Submitting text processing request [ID: %d QoS: %@]", buf, 0x12u);
  }

  connection = [(MADService *)self connection];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __65__MADService_Text__performRequests_textInputs_completionHandler___block_invoke_342;
  v27[3] = &unk_1E83435C8;
  v22 = v18;
  v28 = v22;
  v23 = [connection remoteObjectProxyWithErrorHandler:v27];
  [v23 requestTextProcessing:v16 textInputs:inputsCopy requestID:add reply:v22];

  return add;
}

void __65__MADService_Text__performRequests_textInputs_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = MADSignpostLog();
  v8 = v7;
  v9 = *(a1 + 56);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = *(a1 + 32);
    v19 = 138412290;
    v20 = v10;
    _os_signpost_emit_with_name_impl(&dword_1C972C000, v8, OS_SIGNPOST_INTERVAL_END, v9, "MADService_ProcessTextRequest", "%@", &v19, 0xCu);
  }

  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [v6 description];
      objc_claimAutoreleasedReturnValue();
      __65__MADService_Text__performRequests_textInputs_completionHandler___block_invoke_cold_1();
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 64);
      v19 = 67109120;
      LODWORD(v20) = v11;
      _os_log_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MADService] Text processing request completed [ID: %d]", &v19, 8u);
    }

    for (i = 0; i < [v5 count]; ++i)
    {
      v13 = [*(a1 + 40) objectAtIndexedSubscript:i];
      v14 = [v5 objectAtIndexedSubscript:i];
      v15 = [v14 results];
      [v13 setResults:v15];

      v16 = [*(a1 + 40) objectAtIndexedSubscript:i];
      v17 = [v5 objectAtIndexedSubscript:i];
      v18 = [v17 error];
      [v16 setError:v18];
    }
  }

  (*(*(a1 + 48) + 16))();
}

void __65__MADService_Text__performRequests_textInputs_completionHandler___block_invoke_342(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = MEMORY[0x1E696ABC0];
  v11 = *MEMORY[0x1E696A578];
  v6 = MEMORY[0x1E696AEC0];
  v7 = [v3 description];
  v8 = [v6 stringWithFormat:@"Error connecting to analysis service (%@)", v7];
  v12[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v10 = [v5 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v9];
  (*(v4 + 16))(v4, 0, v10);
}

- (int)performRequests:(id)requests text:(id)text identifier:(id)identifier completionHandler:(id)handler
{
  v25 = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
  textCopy = text;
  handlerCopy = handler;
  array = [MEMORY[0x1E695DF70] array];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = textCopy;
  v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v14)
  {
    v15 = *v21;
    do
    {
      v16 = 0;
      do
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = [[MADTextInput alloc] initWithText:*(*(&v20 + 1) + 8 * v16)];
        [array addObject:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }

  v18 = [(MADService *)self performRequests:requestsCopy textInputs:array completionHandler:handlerCopy];
  return v18;
}

- (void)submitSpotlightAssetURL:(id)l uniqueIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier completionHandler:(id)handler
{
  v46[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  handlerCopy = handler;
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __101__MADService_Spotlight__submitSpotlightAssetURL_uniqueIdentifier_bundleIdentifier_completionHandler___block_invoke;
  v41[3] = &unk_1E83435C8;
  v12 = handlerCopy;
  v42 = v12;
  v13 = MEMORY[0x1CCA8ECA0](v41);
  v40 = 0;
  v14 = *MEMORY[0x1E695DAA0];
  v39 = 0;
  LOBYTE(handler) = [lCopy getResourceValue:&v40 forKey:v14 error:&v39];
  v15 = v40;
  v16 = v39;
  v17 = v16;
  if (handler)
  {
    v38 = v16;
    v18 = [(MADService *)self sandboxExtensionForURL:lCopy error:&v38];
    v19 = v38;

    if (v18)
    {
      connection = [(MADService *)self connection];
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __101__MADService_Spotlight__submitSpotlightAssetURL_uniqueIdentifier_bundleIdentifier_completionHandler___block_invoke_354;
      v36[3] = &unk_1E83435C8;
      v21 = v13;
      v37 = v21;
      v22 = [connection remoteObjectProxyWithErrorHandler:v36];
      identifier = [v15 identifier];
      [v22 submitSpotlightAssetURL:lCopy uniqueIdentifier:identifierCopy bundleIdentifier:bundleIdentifierCopy typeIdentifier:identifier sandboxToken:v18 reply:v21];

      v24 = v37;
    }

    else
    {
      v29 = MEMORY[0x1E696ABC0];
      v43 = *MEMORY[0x1E696A578];
      v30 = MEMORY[0x1E696AEC0];
      v24 = [v19 description];
      v31 = [v30 stringWithFormat:@"Failed to create sandbox extension for asset (%@)", v24];
      v44 = v31;
      v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
      v33 = [v29 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v32];
      (v13)[2](v13, v33);
    }

    v17 = v19;
  }

  else
  {
    v25 = MEMORY[0x1E696ABC0];
    v45 = *MEMORY[0x1E696A578];
    v26 = MEMORY[0x1E696AEC0];
    v18 = [v16 description];
    v24 = [v26 stringWithFormat:@"Failed to obtain UTType for asset (%@)", v18];
    v46[0] = v24;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:&v45 count:1];
    v28 = [v25 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v27];
    (v13)[2](v13, v28);
  }
}

void __101__MADService_Spotlight__submitSpotlightAssetURL_uniqueIdentifier_bundleIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [v3 description];
    objc_claimAutoreleasedReturnValue();
    __101__MADService_Spotlight__submitSpotlightAssetURL_uniqueIdentifier_bundleIdentifier_completionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __101__MADService_Spotlight__submitSpotlightAssetURL_uniqueIdentifier_bundleIdentifier_completionHandler___block_invoke_354(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = MEMORY[0x1E696ABC0];
  v11 = *MEMORY[0x1E696A578];
  v6 = MEMORY[0x1E696AEC0];
  v7 = [v3 description];
  v8 = [v6 stringWithFormat:@"Error connecting to analysis service (%@)", v7];
  v12[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v10 = [v5 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v9];
  (*(v4 + 16))(v4, v10);
}

- (void)submitSearchableItem:(id)item completionHandler:(id)handler
{
  itemCopy = item;
  handlerCopy = handler;
  attributeSet = [itemCopy attributeSet];
  contentURL = [attributeSet contentURL];
  uniqueIdentifier = [itemCopy uniqueIdentifier];
  bundleID = [itemCopy bundleID];
  [(MADService *)self submitSpotlightAssetURL:contentURL uniqueIdentifier:uniqueIdentifier bundleIdentifier:bundleID completionHandler:handlerCopy];
}

- (int)prewarmMultiModalRequests:(id)requests completionHandler:(id)handler
{
  v30 = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
  handlerCopy = handler;
  add = atomic_fetch_add(&self->_requestID.__a_.__a_value, 1u);
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Request: %d", add];
  v10 = MADSignpostLog();
  v11 = os_signpost_id_generate(v10);

  v12 = MADSignpostLog();
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 138412290;
    v29 = v9;
    _os_signpost_emit_with_name_impl(&dword_1C972C000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "MADService_PrewarmMultiModalRequest", "%@", buf, 0xCu);
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __70__MADService_MultiModal__prewarmMultiModalRequests_completionHandler___block_invoke;
  v23[3] = &unk_1E83435A0;
  v26 = v11;
  v14 = v9;
  v24 = v14;
  v15 = handlerCopy;
  v25 = v15;
  v27 = add;
  v16 = MEMORY[0x1CCA8ECA0](v23);
  connection = [(MADService *)self connection];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __70__MADService_MultiModal__prewarmMultiModalRequests_completionHandler___block_invoke_360;
  v21[3] = &unk_1E83435C8;
  v18 = v16;
  v22 = v18;
  v19 = [connection remoteObjectProxyWithErrorHandler:v21];
  [v19 requestMultiModalPrewarming:requestsCopy requestID:add reply:v18];

  return add;
}

void __70__MADService_MultiModal__prewarmMultiModalRequests_completionHandler___block_invoke(void *a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MADSignpostLog();
  v5 = v4;
  v6 = a1[6];
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = a1[4];
    v8 = 138412290;
    v9 = v7;
    _os_signpost_emit_with_name_impl(&dword_1C972C000, v5, OS_SIGNPOST_INTERVAL_END, v6, "MADService_PrewarmMultiModalRequest", "%@", &v8, 0xCu);
  }

  if (v3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [v3 description];
    objc_claimAutoreleasedReturnValue();
    __101__MADService_Spotlight__submitSpotlightAssetURL_uniqueIdentifier_bundleIdentifier_completionHandler___block_invoke_cold_1();
  }

  (*(a1[5] + 16))();
}

void __70__MADService_MultiModal__prewarmMultiModalRequests_completionHandler___block_invoke_360(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = MEMORY[0x1E696ABC0];
  v11 = *MEMORY[0x1E696A578];
  v6 = MEMORY[0x1E696AEC0];
  v7 = [v3 description];
  v8 = [v6 stringWithFormat:@"Error connecting to analysis service (%@)", v7];
  v12[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v10 = [v5 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v9];
  (*(v4 + 16))(v4, v10);
}

- (int)performRequests:(id)requests multiModalInputs:(id)inputs completionHandler:(id)handler
{
  v35 = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
  inputsCopy = inputs;
  handlerCopy = handler;
  add = atomic_fetch_add(&self->_requestID.__a_.__a_value, 1u);
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Request: %d", add];
  v11 = MADSignpostLog();
  v12 = os_signpost_id_generate(v11);

  v13 = MADSignpostLog();
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 138412290;
    v34 = v10;
    _os_signpost_emit_with_name_impl(&dword_1C972C000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "MADService_ProcessMultiModalRequest", "%@", buf, 0xCu);
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __77__MADService_MultiModal__performRequests_multiModalInputs_completionHandler___block_invoke;
  v27[3] = &unk_1E8343238;
  v31 = v12;
  v15 = v10;
  v28 = v15;
  v16 = requestsCopy;
  v29 = v16;
  v17 = handlerCopy;
  v30 = v17;
  v32 = add;
  v18 = MEMORY[0x1CCA8ECA0](v27);
  connection = [(MADService *)self connection];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __77__MADService_MultiModal__performRequests_multiModalInputs_completionHandler___block_invoke_361;
  v25[3] = &unk_1E83435C8;
  v20 = v18;
  v26 = v20;
  v21 = [connection remoteObjectProxyWithErrorHandler:v25];
  [v21 requestProcessing:v16 multiModalInputs:inputsCopy requestID:add reply:v20];

  return add;
}

void __77__MADService_MultiModal__performRequests_multiModalInputs_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = MADSignpostLog();
  v8 = v7;
  v9 = *(a1 + 56);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = *(a1 + 32);
    v18 = 138412290;
    v19 = v10;
    _os_signpost_emit_with_name_impl(&dword_1C972C000, v8, OS_SIGNPOST_INTERVAL_END, v9, "MADService_ProcessMultiModalRequest", "%@", &v18, 0xCu);
  }

  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [v6 description];
      objc_claimAutoreleasedReturnValue();
      __101__MADService_Spotlight__submitSpotlightAssetURL_uniqueIdentifier_bundleIdentifier_completionHandler___block_invoke_cold_1();
    }
  }

  else
  {
    for (i = 0; i < [v5 count]; ++i)
    {
      v12 = [*(a1 + 40) objectAtIndexedSubscript:i];
      v13 = [v5 objectAtIndexedSubscript:i];
      v14 = [v13 results];
      [v12 setResults:v14];

      v15 = [*(a1 + 40) objectAtIndexedSubscript:i];
      v16 = [v5 objectAtIndexedSubscript:i];
      v17 = [v16 error];
      [v15 setError:v17];
    }
  }

  (*(*(a1 + 48) + 16))();
}

void __77__MADService_MultiModal__performRequests_multiModalInputs_completionHandler___block_invoke_361(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = MEMORY[0x1E696ABC0];
  v11 = *MEMORY[0x1E696A578];
  v6 = MEMORY[0x1E696AEC0];
  v7 = [v3 description];
  v8 = [v6 stringWithFormat:@"Error connecting to analysis service (%@)", v7];
  v12[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v10 = [v5 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v9];
  (*(v4 + 16))(v4, 0, v10);
}

void __46__MADService_addProgressHandler_forRequestID___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void __48__MADService_removeProgressHandlerForRequestID___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void __40__MADService_reportProgress_forRequest___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void __44__MADService_addResultHandler_forRequestID___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void __46__MADService_removeResultHandlerForRequestID___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void __76__MADService_performRequests_onCGImage_withOrientation_andIdentifier_error___block_invoke_90_cold_1()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void __64__MADService_Photos__requestVUIndexURLForPhotoLibraryURL_error___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __64__MADService_Photos__requestVUIndexURLForPhotoLibraryURL_error___block_invoke_209_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __74__MADService_Photos__queryVUIndexAssetCountForType_photoLibraryURL_error___block_invoke_221_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __80__MADService_Photos__queryVUIndexLastFullModeClusterDate_photoLibraryURL_error___block_invoke_224_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __76__MADService_Photos__queryImagePriority1MCEnableDate_photoLibraryURL_error___block_invoke_227_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __58__MADService_Text__prewarmTextRequests_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4(v1, v2, v3, 1.5047e-36);
  _os_log_error_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADService] Text pre-warming request failed [ID: %d] (%@)", v4, 0x12u);
}

void __65__MADService_Text__performRequests_textInputs_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4(v1, v2, v3, 1.5047e-36);
  _os_log_error_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADService] Text processing request failed [ID: %d] (%@)", v4, 0x12u);
}

void __101__MADService_Spotlight__submitSpotlightAssetURL_uniqueIdentifier_bundleIdentifier_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  *v1 = 138412290;
  *(v1 + 4) = v2;
  _os_log_error_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", v3, 0xCu);
}

@end