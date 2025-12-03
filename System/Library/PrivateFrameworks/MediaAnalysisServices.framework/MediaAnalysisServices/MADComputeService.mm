@interface MADComputeService
+ (id)allowedClasses;
+ (id)service;
+ (void)configureClientInterface:(id)interface;
+ (void)configureServerInterface:(id)interface;
- (BOOL)_validFileURL:(id)l toRequestID:(id)d;
- (BOOL)pauseWithRequestID:(id)d error:(id *)error;
- (BOOL)purgeResultsWithRequestID:(id)d error:(id *)error;
- (BOOL)removeRequest:(id)request error:(id *)error;
- (MADComputeService)init;
- (id)connection;
- (id)extensionDataForResultDirectoryURL:(id *)l error:(id *)error;
- (id)extensionDataFromAssetURLs:(id)ls error:(id *)error;
- (id)fetchResultsWithRequestID:(id)d;
- (id)initInternal;
- (id)performRequests:(id)requests assetURLs:(id)ls options:(id)options progressHandler:(id)handler resultsHandler:(id)resultsHandler completionHandler:(id)completionHandler;
- (id)performRequests:(id)requests pixelBuffer:(__CVBuffer *)buffer options:(id)options progressHandler:(id)handler resultsHandler:(id)resultsHandler completionHandler:(id)completionHandler;
- (id)resultDirectoryURL;
- (id)scheduleRequests:(id)requests assetURLs:(id)ls options:(id)options error:(id *)error;
- (int)deregisterProgressHandlerForRequestID:(id)d;
- (int)deregisterResultsHandlerForRequestID:(id)d;
- (int)registerProgressHandler:(id)handler requestID:(id)d;
- (int)registerResultsHandler:(id)handler requestID:(id)d;
- (void)cancelAllRequests;
- (void)cancelWithRequestID:(id)d;
- (void)dealloc;
- (void)handleResults:(id)results assetRepresentation:(id)representation requestID:(id)d error:(id)error acknowledgement:(id)acknowledgement;
- (void)reportProgress:(double)progress requestID:(id)d;
- (void)resumeWithRequestID:(id)d progressHandler:(id)handler resultsHandler:(id)resultsHandler completionHandler:(id)completionHandler;
@end

@implementation MADComputeService

- (MADComputeService)init
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [MADComputeService init];
  }

  return 0;
}

- (id)initInternal
{
  v16.receiver = self;
  v16.super_class = MADComputeService;
  v2 = [(MADComputeService *)&v16 init];
  if (v2)
  {
    v3 = dispatch_queue_create("MAD.connectionQueue", 0);
    connectionQueue = v2->_connectionQueue;
    v2->_connectionQueue = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("MAD.progressHandlerQueue", v5);
    progressHandlerQueue = v2->_progressHandlerQueue;
    v2->_progressHandlerQueue = v6;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    progressHandlers = v2->_progressHandlers;
    v2->_progressHandlers = dictionary;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("MAD.resultsHandlerQueue", v10);
    resultsHandlerQueue = v2->_resultsHandlerQueue;
    v2->_resultsHandlerQueue = v11;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    resultsHandlers = v2->_resultsHandlers;
    v2->_resultsHandlers = dictionary2;
  }

  return v2;
}

+ (id)service
{
  initInternal = [[self alloc] initInternal];

  return initInternal;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = MADComputeService;
  [(MADComputeService *)&v3 dealloc];
}

+ (id)allowedClasses
{
  v6[12] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v6[0] = objc_opt_class();
  v6[1] = objc_opt_class();
  v6[2] = objc_opt_class();
  v6[3] = objc_opt_class();
  v6[4] = objc_opt_class();
  v6[5] = objc_opt_class();
  v6[6] = objc_opt_class();
  v6[7] = objc_opt_class();
  v6[8] = objc_opt_class();
  v6[9] = objc_opt_class();
  v6[10] = objc_opt_class();
  v6[11] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:12];
  v4 = [v2 setWithArray:v3];

  return v4;
}

+ (void)configureServerInterface:(id)interface
{
  interfaceCopy = interface;
  allowedClasses = [self allowedClasses];
  [interfaceCopy setClasses:allowedClasses forSelector:sel_requestProcessing_assetURLs_extensionData_resultDirectoryURL_resultExtensionData_requestID_reply_ argumentIndex:0 ofReply:0];

  allowedClasses2 = [self allowedClasses];
  [interfaceCopy setClasses:allowedClasses2 forSelector:sel_requestProcessing_assetURLs_extensionData_resultDirectoryURL_resultExtensionData_requestID_reply_ argumentIndex:1 ofReply:0];

  allowedClasses3 = [self allowedClasses];
  [interfaceCopy setClasses:allowedClasses3 forSelector:sel_requestProcessing_localIdentifiers_photoLibraryURL_resultDirectoryURL_resultExtensionData_requestID_reply_ argumentIndex:0 ofReply:0];

  allowedClasses4 = [self allowedClasses];
  [interfaceCopy setClasses:allowedClasses4 forSelector:sel_scheduleProcessing_assetURLs_extensionData_resultDirectoryURL_resultExtensionData_requestID_reply_ argumentIndex:0 ofReply:0];

  allowedClasses5 = [self allowedClasses];
  [interfaceCopy setClasses:allowedClasses5 forSelector:sel_scheduleProcessing_assetURLs_extensionData_resultDirectoryURL_resultExtensionData_requestID_reply_ argumentIndex:1 ofReply:0];

  allowedClasses6 = [self allowedClasses];
  [interfaceCopy setClasses:allowedClasses6 forSelector:sel_scheduleProcessing_localIdentifiers_photoLibraryURL_resultDirectoryURL_resultExtensionData_requestID_reply_ argumentIndex:0 ofReply:0];
}

+ (void)configureClientInterface:(id)interface
{
  interfaceCopy = interface;
  allowedClasses = [self allowedClasses];
  [interfaceCopy setClasses:allowedClasses forSelector:sel_handleResults_assetRepresentation_requestID_error_acknowledgement_ argumentIndex:0 ofReply:0];

  allowedClasses2 = [self allowedClasses];
  [interfaceCopy setClasses:allowedClasses2 forSelector:sel_handleResults_assetRepresentation_requestID_error_acknowledgement_ argumentIndex:1 ofReply:0];
}

- (id)connection
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  connectionQueue = self->_connectionQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __31__MADComputeService_connection__block_invoke;
  v5[3] = &unk_1E8342EB0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(connectionQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __31__MADComputeService_connection__block_invoke(uint64_t a1)
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

    v8 = [[MADComputeServiceProxy alloc] initWithCoordinator:*(a1 + 32)];
    [*(*(a1 + 32) + 16) setExportedObject:v8];

    v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F492ADB0];
    [*(*(a1 + 32) + 16) setExportedInterface:v9];

    v10 = objc_opt_class();
    v11 = [*(*(a1 + 32) + 16) exportedInterface];
    [v10 configureClientInterface:v11];

    v12 = MEMORY[0x1E696B0D0];
    v13 = [objc_opt_class() serverProtocol];
    v14 = [v12 interfaceWithProtocol:v13];

    [objc_opt_class() configureServerInterface:v14];
    [*(*(a1 + 32) + 16) setRemoteObjectInterface:v14];
    [*(*(a1 + 32) + 16) setInterruptionHandler:&__block_literal_global_2];
    objc_initWeak(&location, *(a1 + 32));
    v15 = *(*(a1 + 32) + 16);
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __31__MADComputeService_connection__block_invoke_61;
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

void __31__MADComputeService_connection__block_invoke_2()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    __31__MADComputeService_connection__block_invoke_2_cold_1();
  }
}

void __31__MADComputeService_connection__block_invoke_61(uint64_t a1)
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __31__MADComputeService_connection__block_invoke_61_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[1];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __31__MADComputeService_connection__block_invoke_62;
    block[3] = &unk_1E8342E60;
    block[4] = v3;
    dispatch_async(v4, block);
  }
}

void __31__MADComputeService_connection__block_invoke_62(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  *(v1 + 16) = 0;
}

- (id)performRequests:(id)requests assetURLs:(id)ls options:(id)options progressHandler:(id)handler resultsHandler:(id)resultsHandler completionHandler:(id)completionHandler
{
  v71 = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
  lsCopy = ls;
  handlerCopy = handler;
  resultsHandlerCopy = resultsHandler;
  completionHandlerCopy = completionHandler;
  v14 = MEMORY[0x1E696AEC0];
  v15 = MEMORY[0x1E696AD98];
  v16 = [MEMORY[0x1E695DF00] now];
  v17 = [v15 numberWithUnsignedInteger:{objc_msgSend(v16, "hash")}];
  stringValue = [v17 stringValue];
  v19 = [v14 stringWithFormat:@"OnDemand-%@", stringValue];

  lsCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Request: %@ %@ with assets %@", v19, requestsCopy, lsCopy];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v70 = lsCopy;
    _os_log_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MADComputeService] %@", buf, 0xCu);
  }

  v61 = 0;
  v62 = 0;
  v47 = lsCopy;
  v21 = [(MADComputeService *)self extensionDataForResultDirectoryURL:&v62 error:&v61];
  v22 = v62;
  v23 = v61;
  v24 = v23;
  if (v21 && v22)
  {
    v60 = v23;
    v25 = [(MADComputeService *)self extensionDataFromAssetURLs:lsCopy error:&v60];
    v26 = v60;

    if (![v25 count])
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [MADComputeService performRequests:assetURLs:options:progressHandler:resultsHandler:completionHandler:];
      }

      v32 = [v26 copy];
      completionHandlerCopy[2](completionHandlerCopy, 0, v32);

      goto LABEL_20;
    }

    v27 = [(MADComputeService *)self registerProgressHandler:handlerCopy requestID:v19];
    if (v27)
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[MADComputeService] Failed to register progressHandler (%d)", v27];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [MADComputeService performRequests:assetURLs:options:progressHandler:resultsHandler:completionHandler:];
      }

      v67 = *MEMORY[0x1E696A578];
      v68 = v28;
      v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
      v30 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v27 userInfo:v29];
      completionHandlerCopy[2](completionHandlerCopy, 0, v30);

LABEL_20:
      v31 = 0;
      goto LABEL_21;
    }

    v33 = [(MADComputeService *)self registerResultsHandler:resultsHandlerCopy requestID:v19];
    if (v33)
    {
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[MADComputeService] Failed to register resultsHandler (%d)", v33];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [MADComputeService performRequests:assetURLs:options:progressHandler:resultsHandler:completionHandler:];
      }

      v65 = *MEMORY[0x1E696A578];
      v66 = v34;
      v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
      v36 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v33 userInfo:v35];
      completionHandlerCopy[2](completionHandlerCopy, 0, v36);

      goto LABEL_20;
    }

    connection = [(MADComputeService *)self connection];
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __104__MADComputeService_performRequests_assetURLs_options_progressHandler_resultsHandler_completionHandler___block_invoke;
    v57[3] = &unk_1E8343698;
    v57[4] = self;
    v31 = v19;
    v58 = v31;
    v45 = completionHandlerCopy;
    v59 = v45;
    v46 = [connection remoteObjectProxyWithErrorHandler:v57];

    if (v46)
    {
      v52[0] = MEMORY[0x1E69E9820];
      v52[1] = 3221225472;
      v52[2] = __104__MADComputeService_performRequests_assetURLs_options_progressHandler_resultsHandler_completionHandler___block_invoke_77;
      v52[3] = &unk_1E83436C0;
      v53 = v47;
      selfCopy = self;
      v39 = v31;
      v55 = v39;
      v56 = v45;
      [v46 requestProcessing:requestsCopy assetURLs:lsCopy extensionData:v25 resultDirectoryURL:v22 resultExtensionData:v21 requestID:v39 reply:v52];

      v40 = v39;
    }

    else
    {
      v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[MADComputeService] Failed to connect to analysis service during %s", "-[MADComputeService performRequests:assetURLs:options:progressHandler:resultsHandler:completionHandler:]"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [MADComputeService performRequests:assetURLs:options:progressHandler:resultsHandler:completionHandler:];
      }

      v63 = *MEMORY[0x1E696A578];
      v64 = v44;
      v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
      [(MADComputeService *)self deregisterProgressHandlerForRequestID:v31];
      [(MADComputeService *)self deregisterResultsHandlerForRequestID:v31];
      v42 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v41];
      (v45)[2](v45, v31, v42);

      v43 = v31;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [MADComputeService performRequests:assetURLs:options:progressHandler:resultsHandler:completionHandler:];
    }

    v25 = [v24 copy];
    v31 = 0;
    completionHandlerCopy[2](completionHandlerCopy, 0, v25);
    v26 = v24;
  }

LABEL_21:

  return v31;
}

void __104__MADComputeService_performRequests_assetURLs_options_progressHandler_resultsHandler_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __104__MADComputeService_performRequests_assetURLs_options_progressHandler_resultsHandler_completionHandler___block_invoke_cold_1();
  }

  [*(a1 + 32) deregisterProgressHandlerForRequestID:*(a1 + 40)];
  [*(a1 + 32) deregisterResultsHandlerForRequestID:*(a1 + 40)];
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = [v3 copy];
  (*(v4 + 16))(v4, v5, v6);
}

void __104__MADComputeService_performRequests_assetURLs_options_progressHandler_resultsHandler_completionHandler___block_invoke_77(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MADComputeService][Finish] %@", &v8, 0xCu);
  }

  [*(a1 + 40) deregisterProgressHandlerForRequestID:*(a1 + 48)];
  [*(a1 + 40) deregisterResultsHandlerForRequestID:*(a1 + 48)];
  v6 = *(a1 + 48);
  v5 = *(a1 + 56);
  v7 = [v3 copy];
  (*(v5 + 16))(v5, v6, v7);
}

- (id)performRequests:(id)requests pixelBuffer:(__CVBuffer *)buffer options:(id)options progressHandler:(id)handler resultsHandler:(id)resultsHandler completionHandler:(id)completionHandler
{
  v20[1] = *MEMORY[0x1E69E9840];
  completionHandlerCopy = completionHandler;
  v9 = MEMORY[0x1E696AEC0];
  v10 = MEMORY[0x1E696AD98];
  v11 = [MEMORY[0x1E695DF00] now];
  v12 = [v10 numberWithUnsignedInteger:{objc_msgSend(v11, "hash")}];
  stringValue = [v12 stringValue];
  v14 = [v9 stringWithFormat:@"OnDemand-%@", stringValue];

  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[MADComputeService] Unimplemented method %s", "-[MADComputeService performRequests:pixelBuffer:options:progressHandler:resultsHandler:completionHandler:]"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [MADComputeService performRequests:assetURLs:options:progressHandler:resultsHandler:completionHandler:];
  }

  v19 = *MEMORY[0x1E696A578];
  v20[0] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  v17 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v16];
  completionHandlerCopy[2](completionHandlerCopy, v14, v17);

  return 0;
}

- (id)scheduleRequests:(id)requests assetURLs:(id)ls options:(id)options error:(id *)error
{
  v55 = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
  lsCopy = ls;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__1;
  v47 = __Block_byref_object_dispose__1;
  v10 = MEMORY[0x1E696AEC0];
  v11 = MEMORY[0x1E696AD98];
  v12 = [MEMORY[0x1E695DF00] now];
  v13 = [v11 numberWithUnsignedInteger:{objc_msgSend(v12, "hash")}];
  stringValue = [v13 stringValue];
  v48 = [v10 stringWithFormat:@"Offline-%@", stringValue];

  lsCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Schedule: %@ %@ with assets %@", v44[5], requestsCopy, lsCopy];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v52 = @"[MADComputeService]";
    v53 = 2112;
    v54 = lsCopy;
    _os_log_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@[Start] %@", buf, 0x16u);
  }

  v41 = 0;
  v42 = 0;
  v16 = [(MADComputeService *)self extensionDataForResultDirectoryURL:&v42 error:&v41];
  v17 = v42;
  v18 = v41;
  v19 = v18;
  if (v16 && v17)
  {
    v40 = v18;
    v20 = [(MADComputeService *)self extensionDataFromAssetURLs:lsCopy error:&v40];
    v29 = v40;

    if ([v20 count])
    {
      connection = [(MADComputeService *)self connection];
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __62__MADComputeService_scheduleRequests_assetURLs_options_error___block_invoke;
      v36[3] = &unk_1E83436E8;
      v37 = @"[MADComputeService]";
      v38 = &v43;
      errorCopy = error;
      v22 = [connection synchronousRemoteObjectProxyWithErrorHandler:v36];

      if (v22)
      {
        v23 = v44[5];
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __62__MADComputeService_scheduleRequests_assetURLs_options_error___block_invoke_93;
        v31[3] = &unk_1E8343710;
        v32 = @"[MADComputeService]";
        v33 = lsCopy;
        v34 = &v43;
        errorCopy2 = error;
        [v22 scheduleProcessing:requestsCopy assetURLs:lsCopy extensionData:v20 resultDirectoryURL:v17 resultExtensionData:v16 requestID:v23 reply:v31];

        v24 = v32;
      }

      else
      {
        v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Failed to connect to compute service", @"[MADComputeService]"];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [MADComputeService performRequests:assetURLs:options:progressHandler:resultsHandler:completionHandler:];
        }

        if (error)
        {
          v49 = *MEMORY[0x1E696A578];
          v50 = v24;
          v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
          *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v26];
        }

        v27 = v44[5];
        v44[5] = 0;
      }

      v25 = v44[5];
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [MADComputeService scheduleRequests:assetURLs:options:error:];
      }

      v25 = 0;
      if (error)
      {
        *error = [v29 copy];
      }
    }

    v19 = v29;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [MADComputeService scheduleRequests:assetURLs:options:error:];
    }

    v25 = 0;
    if (error)
    {
      *error = [v19 copy];
    }
  }

  _Block_object_dispose(&v43, 8);

  return v25;
}

void __62__MADComputeService_scheduleRequests_assetURLs_options_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __62__MADComputeService_scheduleRequests_assetURLs_options_error___block_invoke_cold_1();
  }

  if (*(a1 + 48))
  {
    **(a1 + 48) = [v3 copy];
  }

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
}

void __62__MADComputeService_scheduleRequests_assetURLs_options_error___block_invoke_93(uint64_t a1, char a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v10 = 138412546;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@[Finish] %@", &v10, 0x16u);
  }

  if ((a2 & 1) == 0)
  {
    if (*(a1 + 56))
    {
      **(a1 + 56) = [v5 copy];
    }

    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = 0;
  }
}

- (BOOL)pauseWithRequestID:(id)d error:(id *)error
{
  dCopy = d;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 1;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1;
  v16 = __Block_byref_object_dispose__1;
  v17 = 0;
  connection = [(MADComputeService *)self connection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __46__MADComputeService_pauseWithRequestID_error___block_invoke;
  v11[3] = &unk_1E8343260;
  v11[4] = &v18;
  v11[5] = &v12;
  v8 = [connection synchronousRemoteObjectProxyWithErrorHandler:v11];
  [v8 cancelWithRequestID:dCopy];

  if (error)
  {
    *error = [v13[5] copy];
  }

  v9 = *(v19 + 24);
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);
  return v9;
}

void __46__MADComputeService_pauseWithRequestID_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __46__MADComputeService_pauseWithRequestID_error___block_invoke_cold_1();
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
  v4 = [v3 copy];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)resumeWithRequestID:(id)d progressHandler:(id)handler resultsHandler:(id)resultsHandler completionHandler:(id)completionHandler
{
  v46 = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  resultsHandlerCopy = resultsHandler;
  completionHandlerCopy = completionHandler;
  dCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"ResumeRequest: %@", dCopy];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v45 = dCopy;
    _os_log_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MADComputeService][Resume] %@", buf, 0xCu);
  }

  v15 = [(MADComputeService *)self registerProgressHandler:handlerCopy requestID:dCopy];
  if (v15)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[MADComputeService][Resume] Failed to register progressHandler (%d)", v15];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [MADComputeService performRequests:assetURLs:options:progressHandler:resultsHandler:completionHandler:];
    }

    v42 = *MEMORY[0x1E696A578];
    v43 = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v18 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v15 userInfo:v17];
    completionHandlerCopy[2](completionHandlerCopy, 0, v18);
  }

  else
  {
    v19 = [(MADComputeService *)self registerResultsHandler:resultsHandlerCopy requestID:dCopy];
    if (v19)
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[MADComputeService][Resume] Failed to register resultsHandler (%d)", v19];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [MADComputeService performRequests:assetURLs:options:progressHandler:resultsHandler:completionHandler:];
      }

      v40 = *MEMORY[0x1E696A578];
      v41 = v20;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
      v22 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v19 userInfo:v21];
      completionHandlerCopy[2](completionHandlerCopy, 0, v22);
    }

    else
    {
      connection = [(MADComputeService *)self connection];
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __90__MADComputeService_resumeWithRequestID_progressHandler_resultsHandler_completionHandler___block_invoke;
      v35[3] = &unk_1E8343698;
      v35[4] = self;
      v24 = dCopy;
      v36 = v24;
      v25 = completionHandlerCopy;
      v37 = v25;
      v29 = [connection remoteObjectProxyWithErrorHandler:v35];

      if (v29)
      {
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __90__MADComputeService_resumeWithRequestID_progressHandler_resultsHandler_completionHandler___block_invoke_107;
        v30[3] = &unk_1E83436C0;
        v31 = dCopy;
        selfCopy = self;
        v33 = v24;
        v34 = v25;
        [v29 resumeWithRequestID:v33 reply:v30];

        v26 = v31;
      }

      else
      {
        v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[MADComputeService][Resume] Failed to connect to analysis service during %s", "-[MADComputeService resumeWithRequestID:progressHandler:resultsHandler:completionHandler:]"];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [MADComputeService performRequests:assetURLs:options:progressHandler:resultsHandler:completionHandler:];
        }

        v38 = *MEMORY[0x1E696A578];
        v39 = v26;
        v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
        [(MADComputeService *)self deregisterProgressHandlerForRequestID:v24];
        [(MADComputeService *)self deregisterResultsHandlerForRequestID:v24];
        v28 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v27];
        (v25)[2](v25, v24, v28);
      }
    }
  }
}

void __90__MADComputeService_resumeWithRequestID_progressHandler_resultsHandler_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __90__MADComputeService_resumeWithRequestID_progressHandler_resultsHandler_completionHandler___block_invoke_cold_1();
  }

  [*(a1 + 32) deregisterProgressHandlerForRequestID:*(a1 + 40)];
  [*(a1 + 32) deregisterResultsHandlerForRequestID:*(a1 + 40)];
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = [v3 copy];
  (*(v4 + 16))(v4, v5, v6);
}

void __90__MADComputeService_resumeWithRequestID_progressHandler_resultsHandler_completionHandler___block_invoke_107(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MADComputeService][Resume][Finish] %@", &v8, 0xCu);
  }

  [*(a1 + 40) deregisterProgressHandlerForRequestID:*(a1 + 48)];
  [*(a1 + 40) deregisterResultsHandlerForRequestID:*(a1 + 48)];
  v6 = *(a1 + 48);
  v5 = *(a1 + 56);
  v7 = [v3 copy];
  (*(v5 + 16))(v5, v6, v7);
}

- (void)cancelWithRequestID:(id)d
{
  dCopy = d;
  connection = [(MADComputeService *)self connection];
  v5 = [connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_112];
  [v5 cancelWithRequestID:dCopy];
}

void __41__MADComputeService_cancelWithRequestID___block_invoke()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __46__MADComputeService_pauseWithRequestID_error___block_invoke_cold_1();
  }
}

- (void)cancelAllRequests
{
  connection = [(MADComputeService *)self connection];
  v2 = [connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_114];
  [v2 cancelAllRequests];
}

void __38__MADComputeService_cancelAllRequests__block_invoke()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __38__MADComputeService_cancelAllRequests__block_invoke_cold_1();
  }
}

- (void)reportProgress:(double)progress requestID:(id)d
{
  dCopy = d;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__115;
  v17 = __Block_byref_object_dispose__116;
  v18 = 0;
  progressHandlerQueue = self->_progressHandlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__MADComputeService_reportProgress_requestID___block_invoke;
  block[3] = &unk_1E8343738;
  v12 = &v13;
  block[4] = self;
  v8 = dCopy;
  v11 = v8;
  dispatch_sync(progressHandlerQueue, block);
  v9 = v14[5];
  if (v9)
  {
    (*(v9 + 16))(v9, v8, progress);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [MADComputeService reportProgress:requestID:];
  }

  _Block_object_dispose(&v13, 8);
}

void __46__MADComputeService_reportProgress_requestID___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 32) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (int)registerProgressHandler:(id)handler requestID:(id)d
{
  handlerCopy = handler;
  dCopy = d;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  progressHandlerQueue = self->_progressHandlerQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __55__MADComputeService_registerProgressHandler_requestID___block_invoke;
  v12[3] = &unk_1E8343760;
  v12[4] = self;
  v13 = dCopy;
  v14 = handlerCopy;
  v15 = &v16;
  v9 = handlerCopy;
  v10 = dCopy;
  dispatch_sync(progressHandlerQueue, v12);
  LODWORD(handlerCopy) = *(v17 + 6);

  _Block_object_dispose(&v16, 8);
  return handlerCopy;
}

void __55__MADComputeService_registerProgressHandler_requestID___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 32) objectForKeyedSubscript:a1[5]];

  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __55__MADComputeService_registerProgressHandler_requestID___block_invoke_cold_1();
    }

    v3 = *(a1[7] + 8);
    v4 = -18;
LABEL_5:
    *(v3 + 24) = v4;
    return;
  }

  if (!a1[6])
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __55__MADComputeService_registerProgressHandler_requestID___block_invoke_cold_2();
    }

    v3 = *(a1[7] + 8);
    v4 = -50;
    goto LABEL_5;
  }

  v5 = MEMORY[0x1CCA8ECA0]();
  [*(a1[4] + 32) setObject:? forKeyedSubscript:?];
}

- (int)deregisterProgressHandlerForRequestID:(id)d
{
  dCopy = d;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  progressHandlerQueue = self->_progressHandlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__MADComputeService_deregisterProgressHandlerForRequestID___block_invoke;
  block[3] = &unk_1E8342F78;
  block[4] = self;
  v9 = dCopy;
  v10 = &v11;
  v6 = dCopy;
  dispatch_sync(progressHandlerQueue, block);
  LODWORD(progressHandlerQueue) = *(v12 + 6);

  _Block_object_dispose(&v11, 8);
  return progressHandlerQueue;
}

void __59__MADComputeService_deregisterProgressHandlerForRequestID___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 32) objectForKeyedSubscript:a1[5]];

  if (v2)
  {
    v3 = a1[5];
    v4 = *(a1[4] + 32);

    [v4 removeObjectForKey:v3];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __59__MADComputeService_deregisterProgressHandlerForRequestID___block_invoke_cold_1();
    }

    *(*(a1[6] + 8) + 24) = -18;
  }
}

- (void)handleResults:(id)results assetRepresentation:(id)representation requestID:(id)d error:(id)error acknowledgement:(id)acknowledgement
{
  v31 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  representationCopy = representation;
  dCopy = d;
  errorCopy = error;
  acknowledgementCopy = acknowledgement;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__115;
  v27 = __Block_byref_object_dispose__116;
  v28 = 0;
  resultsHandlerQueue = self->_resultsHandlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__MADComputeService_handleResults_assetRepresentation_requestID_error_acknowledgement___block_invoke;
  block[3] = &unk_1E8343738;
  v22 = &v23;
  block[4] = self;
  v18 = dCopy;
  v21 = v18;
  dispatch_sync(resultsHandlerQueue, block);
  if (v24[5])
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v30 = v18;
      _os_log_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MADComputeService] Calling resultsHandler for %@", buf, 0xCu);
    }

    (*(v24[5] + 16))();
    acknowledgementCopy[2](acknowledgementCopy, 1);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v19 = MEMORY[0x1CCA8ECA0](acknowledgementCopy);
      *buf = 138412290;
      v30 = v19;
      _os_log_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MADComputeService] ACK sent %@", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [MADComputeService handleResults:assetRepresentation:requestID:error:acknowledgement:];
    }

    acknowledgementCopy[2](acknowledgementCopy, 0);
  }

  _Block_object_dispose(&v23, 8);
}

void __87__MADComputeService_handleResults_assetRepresentation_requestID_error_acknowledgement___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 48) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (int)registerResultsHandler:(id)handler requestID:(id)d
{
  handlerCopy = handler;
  dCopy = d;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  resultsHandlerQueue = self->_resultsHandlerQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __54__MADComputeService_registerResultsHandler_requestID___block_invoke;
  v12[3] = &unk_1E8343760;
  v12[4] = self;
  v13 = dCopy;
  v14 = handlerCopy;
  v15 = &v16;
  v9 = handlerCopy;
  v10 = dCopy;
  dispatch_sync(resultsHandlerQueue, v12);
  LODWORD(handlerCopy) = *(v17 + 6);

  _Block_object_dispose(&v16, 8);
  return handlerCopy;
}

void __54__MADComputeService_registerResultsHandler_requestID___block_invoke(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a1 + 5;
  v3 = [*(a1[4] + 48) objectForKeyedSubscript:a1[5]];

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __54__MADComputeService_registerResultsHandler_requestID___block_invoke_cold_1();
    }

    v4 = *(a1[7] + 8);
    v5 = -18;
LABEL_5:
    *(v4 + 24) = v5;
    return;
  }

  if (!a1[6])
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __54__MADComputeService_registerResultsHandler_requestID___block_invoke_cold_2();
    }

    v4 = *(a1[7] + 8);
    v5 = -50;
    goto LABEL_5;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v6 = *v2;
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MADComputeService] Registering resultsHandler for %@", &v8, 0xCu);
  }

  v7 = MEMORY[0x1CCA8ECA0](a1[6]);
  [*(a1[4] + 48) setObject:v7 forKeyedSubscript:a1[5]];
}

- (int)deregisterResultsHandlerForRequestID:(id)d
{
  dCopy = d;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  resultsHandlerQueue = self->_resultsHandlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__MADComputeService_deregisterResultsHandlerForRequestID___block_invoke;
  block[3] = &unk_1E8342F78;
  block[4] = self;
  v9 = dCopy;
  v10 = &v11;
  v6 = dCopy;
  dispatch_sync(resultsHandlerQueue, block);
  LODWORD(resultsHandlerQueue) = *(v12 + 6);

  _Block_object_dispose(&v11, 8);
  return resultsHandlerQueue;
}

void __58__MADComputeService_deregisterResultsHandlerForRequestID___block_invoke(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a1 + 5;
  v3 = [*(a1[4] + 48) objectForKeyedSubscript:a1[5]];

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v4 = *v2;
      v5 = 138412290;
      v6 = v4;
      _os_log_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MADComputeService] Deregister resultsHandler for %@", &v5, 0xCu);
    }

    [*(a1[4] + 48) removeObjectForKey:a1[5]];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __58__MADComputeService_deregisterResultsHandlerForRequestID___block_invoke_cold_1();
    }

    *(*(a1[6] + 8) + 24) = -18;
  }
}

- (id)resultDirectoryURL
{
  v19 = *MEMORY[0x1E69E9840];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v16 = 0;
  v3 = [defaultManager URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:&v16];
  v4 = v16;

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v18 = v3;
    _os_log_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MADComputeService] applicationSupportURL %@", buf, 0xCu);
  }

  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  if (bundleIdentifier && ([MEMORY[0x1E696AAE8] mainBundle], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "resourceURL"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "path"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToString:", @"/usr/local/bin"), v9, v8, v7, !v10))
  {
    v13 = [v3 URLByAppendingPathComponent:bundleIdentifier];
  }

  else
  {
    v11 = MEMORY[0x1E695DFF8];
    v12 = NSTemporaryDirectory();
    v13 = [v11 fileURLWithPath:v12];
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v18 = v13;
    _os_log_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MADComputeService] resultDirectoryURL %@", buf, 0xCu);
  }

  v14 = [v13 URLByAppendingPathComponent:@"madcs"];

  return v14;
}

- (id)extensionDataForResultDirectoryURL:(id *)l error:(id *)error
{
  v33[1] = *MEMORY[0x1E69E9840];
  if (l)
  {
    *l = [(MADComputeService *)self resultDirectoryURL];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v7 = *l;
    v25 = 0;
    v8 = [defaultManager createDirectoryAtURL:v7 withIntermediateDirectories:1 attributes:0 error:&v25];
    v9 = v25;

    if ((v8 & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [MADComputeService extensionDataForResultDirectoryURL:error:];
      }

      v21 = 0;
      if (error)
      {
        *error = [v9 copy];
      }

      goto LABEL_27;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v10 = *l;
      *buf = 138412546;
      v29 = @"[MADComputeService][URLExtensionDataResultDirectory]";
      v30 = 2112;
      v31 = v10;
      _os_log_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Preparing extension data for URL at %@", buf, 0x16u);
    }

    path = [*l path];
    v12 = path;
    [path UTF8String];
    v13 = sandbox_extension_issue_file();

    if (v13)
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v13];
      free(v13);
      if ([v14 length])
      {
        v15 = MEMORY[0x1E695DEF0];
        v16 = v14;
        uTF8String = [v14 UTF8String];
        v18 = v14;
        v19 = [v15 dataWithBytes:uTF8String length:{strlen(objc_msgSend(v14, "UTF8String")) + 1}];
        if (v19)
        {
          v20 = v19;
          v21 = v20;
          goto LABEL_23;
        }
      }
    }

    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Failed to generate extension data", @"[MADComputeService][URLExtensionDataResultDirectory]"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [MADComputeService performRequests:assetURLs:options:progressHandler:resultsHandler:completionHandler:];
    }

    if (!error)
    {
      v21 = 0;
      goto LABEL_26;
    }

    v26 = *MEMORY[0x1E696A578];
    v27 = v20;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v14];
    *error = v21 = 0;
LABEL_23:

LABEL_26:
LABEL_27:
    v22 = v9;
    goto LABEL_28;
  }

  v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Missing directoryURL", @"[MADComputeService][URLExtensionDataResultDirectory]"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [MADComputeService performRequests:assetURLs:options:progressHandler:resultsHandler:completionHandler:];
  }

  if (error)
  {
    v32 = *MEMORY[0x1E696A578];
    v33[0] = v22;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v23];
  }

  v21 = 0;
LABEL_28:

  return v21;
}

- (id)extensionDataFromAssetURLs:(id)ls error:(id *)error
{
  v40 = *MEMORY[0x1E69E9840];
  lsCopy = ls;
  array = [MEMORY[0x1E695DF70] array];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = lsCopy;
  v4 = [obj countByEnumeratingWithState:&v29 objects:v39 count:16];
  if (v4)
  {
    v5 = *v30;
    v6 = MEMORY[0x1E69E9C10];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v30 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v29 + 1) + 8 * i);
        v9 = objc_autoreleasePoolPush();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v36 = @"[MADComputeService][URLExtensionData]";
          v37 = 2112;
          v38 = v8;
          _os_log_impl(&dword_1C972C000, v6, OS_LOG_TYPE_INFO, "%@ Preparing extension data for URL at %@", buf, 0x16u);
        }

        path = [v8 path];
        v11 = path;
        [path UTF8String];
        v12 = sandbox_extension_issue_file();

        if (v12)
        {
          v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v12];
          free(v12);
          if ([v13 length])
          {
            v14 = MEMORY[0x1E695DEF0];
            v15 = v13;
            uTF8String = [v13 UTF8String];
            v17 = v13;
            v18 = [v14 dataWithBytes:uTF8String length:{strlen(objc_msgSend(v13, "UTF8String")) + 1}];
            if (v18)
            {
              [array addObject:v18];
            }
          }

          else
          {
            v18 = 0;
          }
        }

        objc_autoreleasePoolPop(v9);
      }

      v4 = [obj countByEnumeratingWithState:&v29 objects:v39 count:16];
    }

    while (v4);
  }

  v19 = [obj count];
  if (v19 == [array count])
  {
    v20 = array;
    v21 = array;
  }

  else
  {
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Failed to prepare extension data to all assets (%lu, expected: %lu)", @"[MADComputeService][URLExtensionData]", objc_msgSend(array, "count"), objc_msgSend(obj, "count")];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [MADComputeService performRequests:assetURLs:options:progressHandler:resultsHandler:completionHandler:];
    }

    if (error)
    {
      v33 = *MEMORY[0x1E696A578];
      v34 = v22;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v23];
    }

    v21 = 0;
    v20 = array;
  }

  return v21;
}

- (BOOL)_validFileURL:(id)l toRequestID:(id)d
{
  v18 = *MEMORY[0x1E69E9840];
  lCopy = l;
  dCopy = d;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v14 = 138412546;
    v15 = lCopy;
    v16 = 2112;
    v17 = dCopy;
    _os_log_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MADComputeService] Checking file %@ comfining to %@", &v14, 0x16u);
  }

  v7 = [dCopy componentsSeparatedByString:@"-"];
  lastPathComponent = [lCopy lastPathComponent];
  v9 = [lastPathComponent componentsSeparatedByString:@"-"];

  if ([v9 count] < 3)
  {
    v12 = 0;
  }

  else
  {
    v10 = [v9 objectAtIndexedSubscript:2];
    v11 = [v7 objectAtIndexedSubscript:1];
    v12 = [v10 isEqualToString:v11];
  }

  return v12;
}

- (id)fetchResultsWithRequestID:(id)d
{
  v34 = *MEMORY[0x1E69E9840];
  dCopy = d;
  dCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"result-%@", dCopy];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  resultDirectoryURL = [(MADComputeService *)self resultDirectoryURL];
  v22 = [defaultManager enumeratorAtURL:resultDirectoryURL includingPropertiesForKeys:0 options:0 errorHandler:0];

  array = [MEMORY[0x1E695DF70] array];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = v22;
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v8)
  {
    v9 = *v26;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        if ([(MADComputeService *)self _validFileURL:v11 toRequestID:dCopy])
        {
          v13 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v11];
          v14 = MEMORY[0x1E696ACD0];
          v15 = objc_opt_class();
          v24 = 0;
          v16 = [v14 unarchivedObjectOfClass:v15 fromData:v13 error:&v24];
          v17 = v24;
          v18 = v17;
          if (v16)
          {
            v19 = v17 == 0;
          }

          else
          {
            v19 = 0;
          }

          if (v19)
          {
            [array addObject:v16];
          }

          else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v30 = @"[MADComputeService][FetchResults]";
            v31 = 2112;
            v32 = v18;
            _os_log_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Failed to load result data %@", buf, 0x16u);
          }
        }

        objc_autoreleasePoolPop(v12);
      }

      v8 = [v7 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v8);
  }

  return array;
}

- (BOOL)purgeResultsWithRequestID:(id)d error:(id *)error
{
  v42 = *MEMORY[0x1E69E9840];
  dCopy = d;
  dCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"result-%@", dCopy];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  resultDirectoryURL = [(MADComputeService *)self resultDirectoryURL];
  v8 = [defaultManager enumeratorAtURL:resultDirectoryURL includingPropertiesForKeys:0 options:0 errorHandler:0];

  array = [MEMORY[0x1E695DF70] array];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v8;
  v9 = [obj countByEnumeratingWithState:&v31 objects:v41 count:16];
  if (v9)
  {
    v10 = *v32;
    v26 = *MEMORY[0x1E696A768];
    v27 = *MEMORY[0x1E696A578];
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v31 + 1) + 8 * v11);
        v13 = objc_autoreleasePoolPush();
        if ([(MADComputeService *)self _validFileURL:v12 toRequestID:dCopy])
        {
          defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
          v30 = 0;
          v15 = [defaultManager2 removeItemAtURL:v12 error:&v30];
          v16 = v30;

          if (!(v15 & 1 | (error == 0)))
          {
            v17 = MEMORY[0x1E696ABC0];
            v39 = v27;
            v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to purge result %@ - %@", dCopy, v16];
            v40 = v18;
            v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
            *error = [v17 errorWithDomain:v26 code:-50 userInfo:v19];

            v15 = 0;
          }
        }

        else
        {
          v15 = 1;
        }

        objc_autoreleasePoolPop(v13);
        if (!v15)
        {
          dCopy2 = obj;
          goto LABEL_19;
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v31 objects:v41 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v38 = @"[MADComputeService][PurgeResults]";
    _os_log_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Result does not exist!", buf, 0xCu);
  }

  if (error)
  {
    v20 = MEMORY[0x1E696ABC0];
    v35 = *MEMORY[0x1E696A578];
    dCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Result for %@ is not available", dCopy];
    v36 = dCopy2;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    *error = [v20 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v22];

LABEL_19:
  }

  return 0;
}

- (BOOL)removeRequest:(id)request error:(id *)error
{
  v33 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = @"[MADComputeService][RemoveRequest]";
    *&buf[12] = 2112;
    *&buf[14] = requestCopy;
    _os_log_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Start removing %@ ...", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v32 = 0;
  connection = [(MADComputeService *)self connection];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __41__MADComputeService_removeRequest_error___block_invoke;
  v24[3] = &unk_1E8343788;
  v25 = @"[MADComputeService][RemoveRequest]";
  errorCopy = error;
  v8 = [connection synchronousRemoteObjectProxyWithErrorHandler:v24];

  if (v8)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __41__MADComputeService_removeRequest_error___block_invoke_163;
    v19[3] = &unk_1E8343710;
    v20 = @"[MADComputeService][RemoveRequest]";
    v21 = requestCopy;
    v22 = buf;
    errorCopy2 = error;
    [v8 removeWithRequestID:v21 reply:v19];

    v9 = v20;
  }

  else
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Failed to connect to compute service", @"[MADComputeService][RemoveRequest]"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [MADComputeService performRequests:assetURLs:options:progressHandler:resultsHandler:completionHandler:];
    }

    if (error)
    {
      v29 = *MEMORY[0x1E696A578];
      v30 = v9;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v10];
    }
  }

  if (*(*&buf[8] + 24) == 1)
  {
    v18 = 0;
    v11 = [(MADComputeService *)self purgeResultsWithRequestID:requestCopy error:&v18];
    v12 = v18;
    if (v11)
    {
      if (error)
      {
        v13 = MEMORY[0x1E696ABC0];
        v27 = *MEMORY[0x1E696A578];
        v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Task removed, but result purging is incomplete - %@", v12];
        v28 = v14;
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
        *error = [v13 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v15];
      }

      *(*&buf[8] + 24) = 0;
    }

    v16 = *(*&buf[8] + 24);
  }

  else
  {
    v16 = 0;
  }

  _Block_object_dispose(buf, 8);
  return v16 & 1;
}

void __41__MADComputeService_removeRequest_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __62__MADComputeService_scheduleRequests_assetURLs_options_error___block_invoke_cold_1();
  }

  if (*(a1 + 40))
  {
    **(a1 + 40) = [v3 copy];
  }
}

void __41__MADComputeService_removeRequest_error___block_invoke_163(uint64_t a1, char a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Finished removing %@", &v8, 0x16u);
  }

  if ((a2 & 1) == 0 && *(a1 + 56))
  {
    **(a1 + 56) = [v5 copy];
  }

  *(*(*(a1 + 48) + 8) + 24) = a2;
}

- (void)scheduleRequests:assetURLs:options:error:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)scheduleRequests:assetURLs:options:error:.cold.3()
{
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __62__MADComputeService_scheduleRequests_assetURLs_options_error___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __55__MADComputeService_registerProgressHandler_requestID___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_1(&dword_1C972C000, MEMORY[0x1E69E9C10], v0, "[MADComputeService] ProgressHandler already set for %@", v1, v2, v3, v4, v5);
}

void __55__MADComputeService_registerProgressHandler_requestID___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_1(&dword_1C972C000, MEMORY[0x1E69E9C10], v0, "[MADComputeService] No progressHandler defined for %@", v1, v2, v3, v4, v5);
}

void __59__MADComputeService_deregisterProgressHandlerForRequestID___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_1(&dword_1C972C000, MEMORY[0x1E69E9C10], v0, "[MADComputeService] ProgressHandler NOT set for %@", v1, v2, v3, v4, v5);
}

void __54__MADComputeService_registerResultsHandler_requestID___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_1(&dword_1C972C000, MEMORY[0x1E69E9C10], v0, "[MADComputeService] ResultsHandler already set for %@", v1, v2, v3, v4, v5);
}

void __54__MADComputeService_registerResultsHandler_requestID___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_1(&dword_1C972C000, MEMORY[0x1E69E9C10], v0, "[MADComputeService] No resultsHandler defined for %@", v1, v2, v3, v4, v5);
}

void __58__MADComputeService_deregisterResultsHandlerForRequestID___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_1(&dword_1C972C000, MEMORY[0x1E69E9C10], v0, "[MADComputeService] ResultsHandler NOT set for %@", v1, v2, v3, v4, v5);
}

- (void)extensionDataForResultDirectoryURL:error:.cold.1()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

@end