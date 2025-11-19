@interface MADComputeService
+ (id)allowedClasses;
+ (id)service;
+ (void)configureClientInterface:(id)a3;
+ (void)configureServerInterface:(id)a3;
- (BOOL)_validFileURL:(id)a3 toRequestID:(id)a4;
- (BOOL)pauseWithRequestID:(id)a3 error:(id *)a4;
- (BOOL)purgeResultsWithRequestID:(id)a3 error:(id *)a4;
- (BOOL)removeRequest:(id)a3 error:(id *)a4;
- (MADComputeService)init;
- (id)connection;
- (id)extensionDataForResultDirectoryURL:(id *)a3 error:(id *)a4;
- (id)extensionDataFromAssetURLs:(id)a3 error:(id *)a4;
- (id)fetchResultsWithRequestID:(id)a3;
- (id)initInternal;
- (id)performRequests:(id)a3 assetURLs:(id)a4 options:(id)a5 progressHandler:(id)a6 resultsHandler:(id)a7 completionHandler:(id)a8;
- (id)performRequests:(id)a3 pixelBuffer:(__CVBuffer *)a4 options:(id)a5 progressHandler:(id)a6 resultsHandler:(id)a7 completionHandler:(id)a8;
- (id)resultDirectoryURL;
- (id)scheduleRequests:(id)a3 assetURLs:(id)a4 options:(id)a5 error:(id *)a6;
- (int)deregisterProgressHandlerForRequestID:(id)a3;
- (int)deregisterResultsHandlerForRequestID:(id)a3;
- (int)registerProgressHandler:(id)a3 requestID:(id)a4;
- (int)registerResultsHandler:(id)a3 requestID:(id)a4;
- (void)cancelAllRequests;
- (void)cancelWithRequestID:(id)a3;
- (void)dealloc;
- (void)handleResults:(id)a3 assetRepresentation:(id)a4 requestID:(id)a5 error:(id)a6 acknowledgement:(id)a7;
- (void)reportProgress:(double)a3 requestID:(id)a4;
- (void)resumeWithRequestID:(id)a3 progressHandler:(id)a4 resultsHandler:(id)a5 completionHandler:(id)a6;
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

    v8 = [MEMORY[0x1E695DF90] dictionary];
    progressHandlers = v2->_progressHandlers;
    v2->_progressHandlers = v8;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("MAD.resultsHandlerQueue", v10);
    resultsHandlerQueue = v2->_resultsHandlerQueue;
    v2->_resultsHandlerQueue = v11;

    v13 = [MEMORY[0x1E695DF90] dictionary];
    resultsHandlers = v2->_resultsHandlers;
    v2->_resultsHandlers = v13;
  }

  return v2;
}

+ (id)service
{
  v2 = [[a1 alloc] initInternal];

  return v2;
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

+ (void)configureServerInterface:(id)a3
{
  v10 = a3;
  v4 = [a1 allowedClasses];
  [v10 setClasses:v4 forSelector:sel_requestProcessing_assetURLs_extensionData_resultDirectoryURL_resultExtensionData_requestID_reply_ argumentIndex:0 ofReply:0];

  v5 = [a1 allowedClasses];
  [v10 setClasses:v5 forSelector:sel_requestProcessing_assetURLs_extensionData_resultDirectoryURL_resultExtensionData_requestID_reply_ argumentIndex:1 ofReply:0];

  v6 = [a1 allowedClasses];
  [v10 setClasses:v6 forSelector:sel_requestProcessing_localIdentifiers_photoLibraryURL_resultDirectoryURL_resultExtensionData_requestID_reply_ argumentIndex:0 ofReply:0];

  v7 = [a1 allowedClasses];
  [v10 setClasses:v7 forSelector:sel_scheduleProcessing_assetURLs_extensionData_resultDirectoryURL_resultExtensionData_requestID_reply_ argumentIndex:0 ofReply:0];

  v8 = [a1 allowedClasses];
  [v10 setClasses:v8 forSelector:sel_scheduleProcessing_assetURLs_extensionData_resultDirectoryURL_resultExtensionData_requestID_reply_ argumentIndex:1 ofReply:0];

  v9 = [a1 allowedClasses];
  [v10 setClasses:v9 forSelector:sel_scheduleProcessing_localIdentifiers_photoLibraryURL_resultDirectoryURL_resultExtensionData_requestID_reply_ argumentIndex:0 ofReply:0];
}

+ (void)configureClientInterface:(id)a3
{
  v6 = a3;
  v4 = [a1 allowedClasses];
  [v6 setClasses:v4 forSelector:sel_handleResults_assetRepresentation_requestID_error_acknowledgement_ argumentIndex:0 ofReply:0];

  v5 = [a1 allowedClasses];
  [v6 setClasses:v5 forSelector:sel_handleResults_assetRepresentation_requestID_error_acknowledgement_ argumentIndex:1 ofReply:0];
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

- (id)performRequests:(id)a3 assetURLs:(id)a4 options:(id)a5 progressHandler:(id)a6 resultsHandler:(id)a7 completionHandler:(id)a8
{
  v71 = *MEMORY[0x1E69E9840];
  v50 = a3;
  v51 = a4;
  v49 = a6;
  v48 = a7;
  v13 = a8;
  v14 = MEMORY[0x1E696AEC0];
  v15 = MEMORY[0x1E696AD98];
  v16 = [MEMORY[0x1E695DF00] now];
  v17 = [v15 numberWithUnsignedInteger:{objc_msgSend(v16, "hash")}];
  v18 = [v17 stringValue];
  v19 = [v14 stringWithFormat:@"OnDemand-%@", v18];

  v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Request: %@ %@ with assets %@", v19, v50, v51];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v70 = v20;
    _os_log_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MADComputeService] %@", buf, 0xCu);
  }

  v61 = 0;
  v62 = 0;
  v47 = v20;
  v21 = [(MADComputeService *)self extensionDataForResultDirectoryURL:&v62 error:&v61];
  v22 = v62;
  v23 = v61;
  v24 = v23;
  if (v21 && v22)
  {
    v60 = v23;
    v25 = [(MADComputeService *)self extensionDataFromAssetURLs:v51 error:&v60];
    v26 = v60;

    if (![v25 count])
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [MADComputeService performRequests:assetURLs:options:progressHandler:resultsHandler:completionHandler:];
      }

      v32 = [v26 copy];
      v13[2](v13, 0, v32);

      goto LABEL_20;
    }

    v27 = [(MADComputeService *)self registerProgressHandler:v49 requestID:v19];
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
      v13[2](v13, 0, v30);

LABEL_20:
      v31 = 0;
      goto LABEL_21;
    }

    v33 = [(MADComputeService *)self registerResultsHandler:v48 requestID:v19];
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
      v13[2](v13, 0, v36);

      goto LABEL_20;
    }

    v38 = [(MADComputeService *)self connection];
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __104__MADComputeService_performRequests_assetURLs_options_progressHandler_resultsHandler_completionHandler___block_invoke;
    v57[3] = &unk_1E8343698;
    v57[4] = self;
    v31 = v19;
    v58 = v31;
    v45 = v13;
    v59 = v45;
    v46 = [v38 remoteObjectProxyWithErrorHandler:v57];

    if (v46)
    {
      v52[0] = MEMORY[0x1E69E9820];
      v52[1] = 3221225472;
      v52[2] = __104__MADComputeService_performRequests_assetURLs_options_progressHandler_resultsHandler_completionHandler___block_invoke_77;
      v52[3] = &unk_1E83436C0;
      v53 = v47;
      v54 = self;
      v39 = v31;
      v55 = v39;
      v56 = v45;
      [v46 requestProcessing:v50 assetURLs:v51 extensionData:v25 resultDirectoryURL:v22 resultExtensionData:v21 requestID:v39 reply:v52];

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
    v13[2](v13, 0, v25);
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

- (id)performRequests:(id)a3 pixelBuffer:(__CVBuffer *)a4 options:(id)a5 progressHandler:(id)a6 resultsHandler:(id)a7 completionHandler:(id)a8
{
  v20[1] = *MEMORY[0x1E69E9840];
  v8 = a8;
  v9 = MEMORY[0x1E696AEC0];
  v10 = MEMORY[0x1E696AD98];
  v11 = [MEMORY[0x1E695DF00] now];
  v12 = [v10 numberWithUnsignedInteger:{objc_msgSend(v11, "hash")}];
  v13 = [v12 stringValue];
  v14 = [v9 stringWithFormat:@"OnDemand-%@", v13];

  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[MADComputeService] Unimplemented method %s", "-[MADComputeService performRequests:pixelBuffer:options:progressHandler:resultsHandler:completionHandler:]"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [MADComputeService performRequests:assetURLs:options:progressHandler:resultsHandler:completionHandler:];
  }

  v19 = *MEMORY[0x1E696A578];
  v20[0] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  v17 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v16];
  v8[2](v8, v14, v17);

  return 0;
}

- (id)scheduleRequests:(id)a3 assetURLs:(id)a4 options:(id)a5 error:(id *)a6
{
  v55 = *MEMORY[0x1E69E9840];
  v30 = a3;
  v9 = a4;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__1;
  v47 = __Block_byref_object_dispose__1;
  v10 = MEMORY[0x1E696AEC0];
  v11 = MEMORY[0x1E696AD98];
  v12 = [MEMORY[0x1E695DF00] now];
  v13 = [v11 numberWithUnsignedInteger:{objc_msgSend(v12, "hash")}];
  v14 = [v13 stringValue];
  v48 = [v10 stringWithFormat:@"Offline-%@", v14];

  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Schedule: %@ %@ with assets %@", v44[5], v30, v9];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v52 = @"[MADComputeService]";
    v53 = 2112;
    v54 = v15;
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
    v20 = [(MADComputeService *)self extensionDataFromAssetURLs:v9 error:&v40];
    v29 = v40;

    if ([v20 count])
    {
      v21 = [(MADComputeService *)self connection];
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __62__MADComputeService_scheduleRequests_assetURLs_options_error___block_invoke;
      v36[3] = &unk_1E83436E8;
      v37 = @"[MADComputeService]";
      v38 = &v43;
      v39 = a6;
      v22 = [v21 synchronousRemoteObjectProxyWithErrorHandler:v36];

      if (v22)
      {
        v23 = v44[5];
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __62__MADComputeService_scheduleRequests_assetURLs_options_error___block_invoke_93;
        v31[3] = &unk_1E8343710;
        v32 = @"[MADComputeService]";
        v33 = v15;
        v34 = &v43;
        v35 = a6;
        [v22 scheduleProcessing:v30 assetURLs:v9 extensionData:v20 resultDirectoryURL:v17 resultExtensionData:v16 requestID:v23 reply:v31];

        v24 = v32;
      }

      else
      {
        v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Failed to connect to compute service", @"[MADComputeService]"];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [MADComputeService performRequests:assetURLs:options:progressHandler:resultsHandler:completionHandler:];
        }

        if (a6)
        {
          v49 = *MEMORY[0x1E696A578];
          v50 = v24;
          v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
          *a6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v26];
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
      if (a6)
      {
        *a6 = [v29 copy];
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
    if (a6)
    {
      *a6 = [v19 copy];
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

- (BOOL)pauseWithRequestID:(id)a3 error:(id *)a4
{
  v6 = a3;
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
  v7 = [(MADComputeService *)self connection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __46__MADComputeService_pauseWithRequestID_error___block_invoke;
  v11[3] = &unk_1E8343260;
  v11[4] = &v18;
  v11[5] = &v12;
  v8 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v11];
  [v8 cancelWithRequestID:v6];

  if (a4)
  {
    *a4 = [v13[5] copy];
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

- (void)resumeWithRequestID:(id)a3 progressHandler:(id)a4 resultsHandler:(id)a5 completionHandler:(id)a6
{
  v46 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ResumeRequest: %@", v10];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v45 = v14;
    _os_log_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MADComputeService][Resume] %@", buf, 0xCu);
  }

  v15 = [(MADComputeService *)self registerProgressHandler:v11 requestID:v10];
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
    v13[2](v13, 0, v18);
  }

  else
  {
    v19 = [(MADComputeService *)self registerResultsHandler:v12 requestID:v10];
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
      v13[2](v13, 0, v22);
    }

    else
    {
      v23 = [(MADComputeService *)self connection];
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __90__MADComputeService_resumeWithRequestID_progressHandler_resultsHandler_completionHandler___block_invoke;
      v35[3] = &unk_1E8343698;
      v35[4] = self;
      v24 = v10;
      v36 = v24;
      v25 = v13;
      v37 = v25;
      v29 = [v23 remoteObjectProxyWithErrorHandler:v35];

      if (v29)
      {
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __90__MADComputeService_resumeWithRequestID_progressHandler_resultsHandler_completionHandler___block_invoke_107;
        v30[3] = &unk_1E83436C0;
        v31 = v14;
        v32 = self;
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

- (void)cancelWithRequestID:(id)a3
{
  v6 = a3;
  v4 = [(MADComputeService *)self connection];
  v5 = [v4 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_112];
  [v5 cancelWithRequestID:v6];
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
  v3 = [(MADComputeService *)self connection];
  v2 = [v3 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_114];
  [v2 cancelAllRequests];
}

void __38__MADComputeService_cancelAllRequests__block_invoke()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __38__MADComputeService_cancelAllRequests__block_invoke_cold_1();
  }
}

- (void)reportProgress:(double)a3 requestID:(id)a4
{
  v6 = a4;
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
  v8 = v6;
  v11 = v8;
  dispatch_sync(progressHandlerQueue, block);
  v9 = v14[5];
  if (v9)
  {
    (*(v9 + 16))(v9, v8, a3);
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

- (int)registerProgressHandler:(id)a3 requestID:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v13 = v7;
  v14 = v6;
  v15 = &v16;
  v9 = v6;
  v10 = v7;
  dispatch_sync(progressHandlerQueue, v12);
  LODWORD(v6) = *(v17 + 6);

  _Block_object_dispose(&v16, 8);
  return v6;
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

- (int)deregisterProgressHandlerForRequestID:(id)a3
{
  v4 = a3;
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
  v9 = v4;
  v10 = &v11;
  v6 = v4;
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

- (void)handleResults:(id)a3 assetRepresentation:(id)a4 requestID:(id)a5 error:(id)a6 acknowledgement:(id)a7
{
  v31 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
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
  v18 = v14;
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
    v16[2](v16, 1);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v19 = MEMORY[0x1CCA8ECA0](v16);
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

    v16[2](v16, 0);
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

- (int)registerResultsHandler:(id)a3 requestID:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v13 = v7;
  v14 = v6;
  v15 = &v16;
  v9 = v6;
  v10 = v7;
  dispatch_sync(resultsHandlerQueue, v12);
  LODWORD(v6) = *(v17 + 6);

  _Block_object_dispose(&v16, 8);
  return v6;
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

- (int)deregisterResultsHandlerForRequestID:(id)a3
{
  v4 = a3;
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
  v9 = v4;
  v10 = &v11;
  v6 = v4;
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
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v16 = 0;
  v3 = [v2 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:&v16];
  v4 = v16;

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v18 = v3;
    _os_log_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MADComputeService] applicationSupportURL %@", buf, 0xCu);
  }

  v5 = [MEMORY[0x1E696AAE8] mainBundle];
  v6 = [v5 bundleIdentifier];

  if (v6 && ([MEMORY[0x1E696AAE8] mainBundle], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "resourceURL"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "path"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToString:", @"/usr/local/bin"), v9, v8, v7, !v10))
  {
    v13 = [v3 URLByAppendingPathComponent:v6];
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

- (id)extensionDataForResultDirectoryURL:(id *)a3 error:(id *)a4
{
  v33[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    *a3 = [(MADComputeService *)self resultDirectoryURL];
    v6 = [MEMORY[0x1E696AC08] defaultManager];
    v7 = *a3;
    v25 = 0;
    v8 = [v6 createDirectoryAtURL:v7 withIntermediateDirectories:1 attributes:0 error:&v25];
    v9 = v25;

    if ((v8 & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [MADComputeService extensionDataForResultDirectoryURL:error:];
      }

      v21 = 0;
      if (a4)
      {
        *a4 = [v9 copy];
      }

      goto LABEL_27;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v10 = *a3;
      *buf = 138412546;
      v29 = @"[MADComputeService][URLExtensionDataResultDirectory]";
      v30 = 2112;
      v31 = v10;
      _os_log_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Preparing extension data for URL at %@", buf, 0x16u);
    }

    v11 = [*a3 path];
    v12 = v11;
    [v11 UTF8String];
    v13 = sandbox_extension_issue_file();

    if (v13)
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v13];
      free(v13);
      if ([v14 length])
      {
        v15 = MEMORY[0x1E695DEF0];
        v16 = v14;
        v17 = [v14 UTF8String];
        v18 = v14;
        v19 = [v15 dataWithBytes:v17 length:{strlen(objc_msgSend(v14, "UTF8String")) + 1}];
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

    if (!a4)
    {
      v21 = 0;
      goto LABEL_26;
    }

    v26 = *MEMORY[0x1E696A578];
    v27 = v20;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v14];
    *a4 = v21 = 0;
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

  if (a4)
  {
    v32 = *MEMORY[0x1E696A578];
    v33[0] = v22;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v23];
  }

  v21 = 0;
LABEL_28:

  return v21;
}

- (id)extensionDataFromAssetURLs:(id)a3 error:(id *)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v25 = a3;
  v27 = [MEMORY[0x1E695DF70] array];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v25;
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

        v10 = [v8 path];
        v11 = v10;
        [v10 UTF8String];
        v12 = sandbox_extension_issue_file();

        if (v12)
        {
          v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v12];
          free(v12);
          if ([v13 length])
          {
            v14 = MEMORY[0x1E695DEF0];
            v15 = v13;
            v16 = [v13 UTF8String];
            v17 = v13;
            v18 = [v14 dataWithBytes:v16 length:{strlen(objc_msgSend(v13, "UTF8String")) + 1}];
            if (v18)
            {
              [v27 addObject:v18];
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
  if (v19 == [v27 count])
  {
    v20 = v27;
    v21 = v27;
  }

  else
  {
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Failed to prepare extension data to all assets (%lu, expected: %lu)", @"[MADComputeService][URLExtensionData]", objc_msgSend(v27, "count"), objc_msgSend(obj, "count")];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [MADComputeService performRequests:assetURLs:options:progressHandler:resultsHandler:completionHandler:];
    }

    if (a4)
    {
      v33 = *MEMORY[0x1E696A578];
      v34 = v22;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v23];
    }

    v21 = 0;
    v20 = v27;
  }

  return v21;
}

- (BOOL)_validFileURL:(id)a3 toRequestID:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v14 = 138412546;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MADComputeService] Checking file %@ comfining to %@", &v14, 0x16u);
  }

  v7 = [v6 componentsSeparatedByString:@"-"];
  v8 = [v5 lastPathComponent];
  v9 = [v8 componentsSeparatedByString:@"-"];

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

- (id)fetchResultsWithRequestID:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"result-%@", v4];
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [(MADComputeService *)self resultDirectoryURL];
  v22 = [v5 enumeratorAtURL:v6 includingPropertiesForKeys:0 options:0 errorHandler:0];

  v23 = [MEMORY[0x1E695DF70] array];
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
        if ([(MADComputeService *)self _validFileURL:v11 toRequestID:v4])
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
            [v23 addObject:v16];
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

  return v23;
}

- (BOOL)purgeResultsWithRequestID:(id)a3 error:(id *)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"result-%@", v5];
  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [(MADComputeService *)self resultDirectoryURL];
  v8 = [v6 enumeratorAtURL:v7 includingPropertiesForKeys:0 options:0 errorHandler:0];

  v25 = [MEMORY[0x1E695DF70] array];
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
        if ([(MADComputeService *)self _validFileURL:v12 toRequestID:v5])
        {
          v14 = [MEMORY[0x1E696AC08] defaultManager];
          v30 = 0;
          v15 = [v14 removeItemAtURL:v12 error:&v30];
          v16 = v30;

          if (!(v15 & 1 | (a4 == 0)))
          {
            v17 = MEMORY[0x1E696ABC0];
            v39 = v27;
            v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to purge result %@ - %@", v5, v16];
            v40 = v18;
            v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
            *a4 = [v17 errorWithDomain:v26 code:-50 userInfo:v19];

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
          v21 = obj;
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

  if (a4)
  {
    v20 = MEMORY[0x1E696ABC0];
    v35 = *MEMORY[0x1E696A578];
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Result for %@ is not available", v5];
    v36 = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    *a4 = [v20 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v22];

LABEL_19:
  }

  return 0;
}

- (BOOL)removeRequest:(id)a3 error:(id *)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = @"[MADComputeService][RemoveRequest]";
    *&buf[12] = 2112;
    *&buf[14] = v6;
    _os_log_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Start removing %@ ...", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v32 = 0;
  v7 = [(MADComputeService *)self connection];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __41__MADComputeService_removeRequest_error___block_invoke;
  v24[3] = &unk_1E8343788;
  v25 = @"[MADComputeService][RemoveRequest]";
  v26 = a4;
  v8 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v24];

  if (v8)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __41__MADComputeService_removeRequest_error___block_invoke_163;
    v19[3] = &unk_1E8343710;
    v20 = @"[MADComputeService][RemoveRequest]";
    v21 = v6;
    v22 = buf;
    v23 = a4;
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

    if (a4)
    {
      v29 = *MEMORY[0x1E696A578];
      v30 = v9;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v10];
    }
  }

  if (*(*&buf[8] + 24) == 1)
  {
    v18 = 0;
    v11 = [(MADComputeService *)self purgeResultsWithRequestID:v6 error:&v18];
    v12 = v18;
    if (v11)
    {
      if (a4)
      {
        v13 = MEMORY[0x1E696ABC0];
        v27 = *MEMORY[0x1E696A578];
        v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Task removed, but result purging is incomplete - %@", v12];
        v28 = v14;
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
        *a4 = [v13 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v15];
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