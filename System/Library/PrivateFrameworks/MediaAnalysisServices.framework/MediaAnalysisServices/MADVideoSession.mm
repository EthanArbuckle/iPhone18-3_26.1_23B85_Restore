@interface MADVideoSession
+ (BOOL)enabledQRCodeDetection;
+ (BOOL)isValidRegionOfInterest:(CGRect)interest frameWidth:(int)width frameHeight:(int)height;
+ (id)allowedRequestTTRNotificationClasses;
+ (id)allowedResultClasses;
+ (id)session;
+ (void)configureServerInterface:(id)interface;
- (BOOL)_removeLocalRequest:(id)request;
- (BOOL)addRequest:(id)request error:(id *)error;
- (BOOL)hasOnlyOneSafetyRquest;
- (BOOL)processPixelBuffer:(__CVBuffer *)buffer frameProperties:(id)properties resultHandler:(id)handler;
- (BOOL)processPixelBuffer:(__CVBuffer *)buffer timestamp:(id *)timestamp orientation:(unsigned int)orientation resultHandler:(id)handler;
- (BOOL)removeRequest:(id)request;
- (MADVideoSession)init;
- (id)connection;
- (id)initInternal;
- (int)preprocessPixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation regionOfInterest:(CGRect)interest output:(__CVBuffer *)output isProcessed:(BOOL *)processed;
- (void)_addBackRequestsAfterReconnection;
- (void)dealloc;
- (void)removeAllRequests;
- (void)requestTTRNotificationWithVideoFrames:(id)frames options:(id)options completionHandler:(id)handler;
@end

@implementation MADVideoSession

+ (BOOL)enabledQRCodeDetection
{
  v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.sensitivecontentanalysis.testing"];
  v3 = [v2 objectForKey:@"SensitiveContentAnalysisTestMode"];

  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (id)allowedResultClasses
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v6[0] = objc_opt_class();
  v6[1] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  v4 = [v2 setWithArray:v3];

  return v4;
}

+ (id)allowedRequestTTRNotificationClasses
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v6[0] = objc_opt_class();
  v6[1] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  v4 = [v2 setWithArray:v3];

  return v4;
}

+ (void)configureServerInterface:(id)interface
{
  interfaceCopy = interface;
  allowedResultClasses = [objc_opt_class() allowedResultClasses];
  [interfaceCopy setClasses:allowedResultClasses forSelector:sel_processFrameWithIOSurface_frameProperties_reply_ argumentIndex:0 ofReply:1];

  allowedRequestTTRNotificationClasses = [objc_opt_class() allowedRequestTTRNotificationClasses];
  [interfaceCopy setClasses:allowedRequestTTRNotificationClasses forSelector:sel_requestTTRNotificationWithVideoFrames_options_reply_ argumentIndex:0 ofReply:0];
}

+ (BOOL)isValidRegionOfInterest:(CGRect)interest frameWidth:(int)width frameHeight:(int)height
{
  height = interest.size.height;
  width = interest.size.width;
  y = interest.origin.y;
  x = interest.origin.x;
  v20.size.width = width;
  v20.size.height = height;
  v20.origin.x = 0.0;
  v20.origin.y = 0.0;
  v19 = CGRectIntersection(interest, v20);
  v9 = v19.origin.x;
  v10 = v19.origin.y;
  v11 = v19.size.width;
  v12 = v19.size.height;
  v13 = x;
  v14 = y;
  widthCopy = width;
  heightCopy = height;

  return CGRectEqualToRect(*&v13, *&v9);
}

- (MADVideoSession)init
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [MADVideoSession init];
  }

  return 0;
}

- (id)initInternal
{
  v12.receiver = self;
  v12.super_class = MADVideoSession;
  v2 = [(MADVideoSession *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    requests = v2->_requests;
    v2->_requests = v3;

    v5 = objc_alloc_init(MADPixelBufferProcesser);
    pixelBufferProcessor = v2->_pixelBufferProcessor;
    v2->_pixelBufferProcessor = v5;

    v7 = dispatch_queue_create("MADVideoSession.requestsManagemenQueue", 0);
    requestsManagementQueue = v2->_requestsManagementQueue;
    v2->_requestsManagementQueue = v7;

    v9 = dispatch_queue_create("MADVideoSession.connectionQueue", 0);
    connectionQueue = v2->_connectionQueue;
    v2->_connectionQueue = v9;
  }

  return v2;
}

+ (id)session
{
  if ([objc_opt_class() enabledVideoSessionXPC])
  {
    initInternal = [[self alloc] initInternal];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      +[MADVideoSession session];
    }

    initInternal = 0;
  }

  return initInternal;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = MADVideoSession;
  [(MADVideoSession *)&v3 dealloc];
}

- (id)connection
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  connectionQueue = self->_connectionQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __29__MADVideoSession_connection__block_invoke;
  v5[3] = &unk_1E8342EB0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(connectionQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __29__MADVideoSession_connection__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  if (!v2)
  {
    v3 = objc_alloc(MEMORY[0x1E696B0B8]);
    v4 = [objc_opt_class() serviceName];
    v5 = [v3 initWithMachServiceName:v4 options:0];
    v6 = *(a1 + 32);
    v7 = *(v6 + 48);
    *(v6 + 48) = v5;

    v8 = *(*(a1 + 32) + 48);
    v9 = [[MADVideoSessionProxy alloc] initWithSession:*(a1 + 32)];
    [v8 setExportedObject:v9];

    v10 = *(*(a1 + 32) + 48);
    v11 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4927368];
    [v10 setExportedInterface:v11];

    v12 = MEMORY[0x1E696B0D0];
    v13 = [objc_opt_class() serverProtocol];
    v14 = [v12 interfaceWithProtocol:v13];

    [objc_opt_class() configureServerInterface:v14];
    [*(*(a1 + 32) + 48) setRemoteObjectInterface:v14];
    [*(*(a1 + 32) + 48) setInterruptionHandler:&__block_literal_global];
    objc_initWeak(&location, *(a1 + 32));
    v15 = *(*(a1 + 32) + 48);
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __29__MADVideoSession_connection__block_invoke_201;
    v19 = &unk_1E8342E88;
    objc_copyWeak(&v20, &location);
    [v15 setInvalidationHandler:&v16];
    [*(*(a1 + 32) + 48) resume];
    [*(a1 + 32) _addBackRequestsAfterReconnection];
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);

    v2 = *(*(a1 + 32) + 48);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v2);
}

void __29__MADVideoSession_connection__block_invoke_2()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *v0 = 0;
    _os_log_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MADVideoSession] Client XPC connection interrupted", v0, 2u);
  }
}

void __29__MADVideoSession_connection__block_invoke_201(uint64_t a1)
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __29__MADVideoSession_connection__block_invoke_201_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[5];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __29__MADVideoSession_connection__block_invoke_202;
    block[3] = &unk_1E8342E60;
    block[4] = v3;
    dispatch_async(v4, block);
  }
}

void __29__MADVideoSession_connection__block_invoke_202(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 48);
  *(v1 + 48) = 0;
}

- (void)_addBackRequestsAfterReconnection
{
  v46 = *MEMORY[0x1E69E9840];
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy_;
  v37 = __Block_byref_object_dispose_;
  v38 = 0;
  requestsManagementQueue = self->_requestsManagementQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__MADVideoSession__addBackRequestsAfterReconnection__block_invoke;
  block[3] = &unk_1E8342ED8;
  block[4] = self;
  block[5] = &v33;
  dispatch_sync(requestsManagementQueue, block);
  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@][addBackRequestsAfterReconnection]", objc_opt_class()];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v34[5];
  v4 = [obj countByEnumeratingWithState:&v28 objects:v45 count:16];
  if (v4)
  {
    v12 = *v29;
    do
    {
      v5 = 0;
      do
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v28 + 1) + 8 * v5);
        v24 = 0;
        v25 = &v24;
        v26 = 0x2020000000;
        v27 = 0;
        v18 = 0;
        v19 = &v18;
        v20 = 0x3032000000;
        v21 = __Block_byref_object_copy_;
        v22 = __Block_byref_object_dispose_;
        v23 = 0;
        connection = self->_connection;
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __52__MADVideoSession__addBackRequestsAfterReconnection__block_invoke_2;
        v15[3] = &unk_1E8342F00;
        v16 = v13;
        v17 = &v18;
        v8 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v15];
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __52__MADVideoSession__addBackRequestsAfterReconnection__block_invoke_207;
        v14[3] = &unk_1E8342F28;
        v14[4] = &v24;
        v14[5] = &v18;
        [v8 addRequest:v6 reply:v14];

        if ((v25[3] & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          requestID = [v6 requestID];
          v10 = v19[5];
          *buf = 138412802;
          v40 = v13;
          v41 = 2112;
          v42 = requestID;
          v43 = 2112;
          v44 = v10;
          _os_log_error_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Failed adding request with requestID: %@, error: %@", buf, 0x20u);
        }

        _Block_object_dispose(&v18, 8);
        _Block_object_dispose(&v24, 8);
        ++v5;
      }

      while (v4 != v5);
      v4 = [obj countByEnumeratingWithState:&v28 objects:v45 count:16];
    }

    while (v4);
  }

  _Block_object_dispose(&v33, 8);
}

void __52__MADVideoSession__addBackRequestsAfterReconnection__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __52__MADVideoSession__addBackRequestsAfterReconnection__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __52__MADVideoSession__addBackRequestsAfterReconnection__block_invoke_2_cold_1();
  }

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __52__MADVideoSession__addBackRequestsAfterReconnection__block_invoke_207(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  *(*(*(a1 + 32) + 8) + 24) = a2;
  if ((a2 & 1) == 0)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    v6 = v7;
  }
}

- (BOOL)addRequest:(id)request error:(id *)error
{
  v36 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@][addRequest]", objc_opt_class()];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    requestID = [requestCopy requestID];
    *buf = 138412546;
    *&buf[4] = v7;
    *&buf[12] = 2112;
    *&buf[14] = requestID;
    _os_log_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Start adding request, requestID: %@ ...", buf, 0x16u);
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v33 = __Block_byref_object_copy_;
  v34 = __Block_byref_object_dispose_;
  v35 = 0;
  connection = [(MADVideoSession *)self connection];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __36__MADVideoSession_addRequest_error___block_invoke;
  v21[3] = &unk_1E8342F00;
  v10 = v7;
  v22 = v10;
  v23 = buf;
  v11 = [connection synchronousRemoteObjectProxyWithErrorHandler:v21];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __36__MADVideoSession_addRequest_error___block_invoke_212;
  v20[3] = &unk_1E8342F28;
  v20[4] = &v24;
  v20[5] = buf;
  [v11 addRequest:requestCopy reply:v20];

  if (*(v25 + 24) == 1)
  {
    requestsManagementQueue = self->_requestsManagementQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __36__MADVideoSession_addRequest_error___block_invoke_2;
    block[3] = &unk_1E8342F50;
    block[4] = self;
    v13 = requestCopy;
    v19 = v13;
    dispatch_sync(requestsManagementQueue, block);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      requestID2 = [v13 requestID];
      *v28 = 138412546;
      v29 = v10;
      v30 = 2112;
      v31 = requestID2;
      _os_log_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Finish adding request, requestID: %@ ...", v28, 0x16u);
    }
  }

  else
  {
    if (error)
    {
      *error = [*(*&buf[8] + 40) copy];
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      requestID3 = [requestCopy requestID];
      [(MADVideoSession *)v10 addRequest:requestID3 error:&buf[8], v28];
    }
  }

  v16 = *(v25 + 24);

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v24, 8);

  return v16 & 1;
}

void __36__MADVideoSession_addRequest_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __52__MADVideoSession__addBackRequestsAfterReconnection__block_invoke_2_cold_1();
  }

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __36__MADVideoSession_addRequest_error___block_invoke_212(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  *(*(*(a1 + 32) + 8) + 24) = a2;
  if ((a2 & 1) == 0)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    v6 = v7;
  }
}

- (BOOL)_removeLocalRequest:(id)request
{
  requestCopy = request;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  requestsManagementQueue = self->_requestsManagementQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__MADVideoSession__removeLocalRequest___block_invoke;
  block[3] = &unk_1E8342F78;
  block[4] = self;
  v9 = requestCopy;
  v10 = &v11;
  v6 = requestCopy;
  dispatch_sync(requestsManagementQueue, block);
  LOBYTE(requestsManagementQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return requestsManagementQueue;
}

unint64_t __39__MADVideoSession__removeLocalRequest___block_invoke(void *a1)
{
  result = [*(a1[4] + 8) count];
  if (result)
  {
    for (i = 0; i < [*(a1[4] + 8) count]; ++i)
    {
      v4 = [*(a1[4] + 8) objectAtIndexedSubscript:i];
      v5 = [v4 requestID];
      v6 = [v5 isEqualToString:a1[5]];

      if (v6)
      {
        break;
      }
    }

    result = [*(a1[4] + 8) count];
    if (i < result)
    {
      result = [*(a1[4] + 8) removeObjectAtIndex:i];
      *(*(a1[6] + 8) + 24) = 1;
    }
  }

  return result;
}

- (BOOL)removeRequest:(id)request
{
  v35 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@][removeRequest]", objc_opt_class()];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = v5;
    *&buf[12] = 2112;
    *&buf[14] = requestCopy;
    _os_log_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Start removing request, requestID: %@ ...", buf, 0x16u);
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v32 = __Block_byref_object_copy_;
  v33 = __Block_byref_object_dispose_;
  v34 = 0;
  connection = [(MADVideoSession *)self connection];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __33__MADVideoSession_removeRequest___block_invoke;
  v18[3] = &unk_1E8342F00;
  v7 = v5;
  v19 = v7;
  v20 = buf;
  v8 = [connection synchronousRemoteObjectProxyWithErrorHandler:v18];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __33__MADVideoSession_removeRequest___block_invoke_216;
  v17[3] = &unk_1E8342F28;
  v17[4] = &v21;
  v17[5] = buf;
  [v8 removeRequest:requestCopy reply:v17];

  if (*(v22 + 24) == 1 && (v9 = [(MADVideoSession *)self _removeLocalRequest:requestCopy], (*(v22 + 24) = v9) != 0))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *v27 = 138412546;
      v28 = v7;
      v29 = 2112;
      v30 = requestCopy;
      _os_log_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Finish removing request, requestID: %@ ...", v27, 0x16u);
    }
  }

  else
  {
    if (!*(*&buf[8] + 40))
    {
      v10 = MEMORY[0x1E696ABC0];
      v25 = *MEMORY[0x1E696A578];
      requestCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Failed the removing local request, requestID: %@", v7, requestCopy];
      v26 = requestCopy;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v13 = [v10 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v12];
      v14 = *(*&buf[8] + 40);
      *(*&buf[8] + 40) = v13;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [MADVideoSession removeRequest:];
    }
  }

  v15 = *(v22 + 24);

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v21, 8);

  return v15 & 1;
}

void __33__MADVideoSession_removeRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __52__MADVideoSession__addBackRequestsAfterReconnection__block_invoke_2_cold_1();
  }

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __33__MADVideoSession_removeRequest___block_invoke_216(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  *(*(*(a1 + 32) + 8) + 24) = a2;
  if ((a2 & 1) == 0)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    v6 = v7;
  }
}

- (void)removeAllRequests
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __36__MADVideoSession_removeAllRequests__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __52__MADVideoSession__addBackRequestsAfterReconnection__block_invoke_2_cold_1();
  }

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

uint64_t __36__MADVideoSession_removeAllRequests__block_invoke_224(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) count];
  if (result)
  {
    v3 = *(*(a1 + 32) + 8);

    return [v3 removeAllObjects];
  }

  return result;
}

- (BOOL)hasOnlyOneSafetyRquest
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  requestsManagementQueue = self->_requestsManagementQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__MADVideoSession_hasOnlyOneSafetyRquest__block_invoke;
  v5[3] = &unk_1E8342ED8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(requestsManagementQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __41__MADVideoSession_hasOnlyOneSafetyRquest__block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) count] == 1)
  {
    v2 = [*(*(a1 + 32) + 8) objectAtIndexedSubscript:0];
    *(*(*(a1 + 40) + 8) + 24) = [v2 isMemberOfClass:objc_opt_class()];
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

- (int)preprocessPixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation regionOfInterest:(CGRect)interest output:(__CVBuffer *)output isProcessed:(BOOL *)processed
{
  height = interest.size.height;
  width = interest.size.width;
  y = interest.origin.y;
  x = interest.origin.x;
  v13 = *&orientation;
  if ([(MADVideoSession *)self hasOnlyOneSafetyRquest])
  {
    if ([objc_opt_class() enabledQRCodeDetection])
    {
      pool = self->_pool;
      if (pool || (v17 = objc_alloc_init(MADVideoSessionPixelBufferPool), v18 = self->_pool, self->_pool = v17, v18, (pool = self->_pool) != 0))
      {

        return [(MADVideoSessionPixelBufferPool *)pool copyPixelBuffer:buffer toPixelBuffer:output];
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [MADVideoSession preprocessPixelBuffer:orientation:regionOfInterest:output:isProcessed:];
        }

        return -18;
      }
    }

    else
    {
      if (processed)
      {
        *processed = 1;
      }

      pixelBufferProcessor = self->_pixelBufferProcessor;

      return [(MADPixelBufferProcesser *)pixelBufferProcessor processPixelBuffer:buffer orientation:v13 regionOfInterest:299 scaledWidth:299 scaledHeight:1111970369 pixelFormat:output output:x, y, width, height];
    }
  }

  else
  {
    v20 = CFRetain(buffer);
    result = 0;
    *output = v20;
  }

  return result;
}

- (BOOL)processPixelBuffer:(__CVBuffer *)buffer timestamp:(id *)timestamp orientation:(unsigned int)orientation resultHandler:(id)handler
{
  v6 = *&orientation;
  handlerCopy = handler;
  v11 = objc_alloc_init(MADVideoSessionFrameProperties);
  [(MADVideoSessionFrameProperties *)v11 setOrientation:v6];
  v13 = *timestamp;
  [(MADVideoSessionFrameProperties *)v11 setTimestamp:&v13];
  LOBYTE(buffer) = [(MADVideoSession *)self processPixelBuffer:buffer frameProperties:v11 resultHandler:handlerCopy];

  return buffer;
}

- (BOOL)processPixelBuffer:(__CVBuffer *)buffer frameProperties:(id)properties resultHandler:(id)handler
{
  v80 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  handlerCopy = handler;
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@][processPixelBuffer:]", objc_opt_class()];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    orientation = [propertiesCopy orientation];
    if (propertiesCopy)
    {
      [propertiesCopy timestamp];
    }

    else
    {
      memset(&buf, 0, sizeof(buf));
    }

    Seconds = CMTimeGetSeconds(&buf);
    [propertiesCopy regionOfInterest];
    v41 = v40;
    [propertiesCopy regionOfInterest];
    v43 = v42;
    [propertiesCopy regionOfInterest];
    v45 = v44;
    [propertiesCopy regionOfInterest];
    *v75 = 138413826;
    *&v75[4] = v10;
    *&v75[12] = 1024;
    *&v75[14] = orientation;
    *&v75[18] = 2048;
    *&v75[20] = Seconds;
    *&v75[28] = 2048;
    *&v75[30] = v41;
    *&v75[38] = 2048;
    v76 = v43;
    *v77 = 2048;
    *&v77[2] = v45;
    v78 = 2048;
    v79 = v46;
    _os_log_debug_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ Received input frame with orientation %u, timestamp %.4f, ROI [%.2f, %.2f, %.2f, %.2f]", v75, 0x44u);
  }

  v11 = objc_opt_class();
  [propertiesCopy regionOfInterest];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  Width = CVPixelBufferGetWidth(buffer);
  if ([v11 isValidRegionOfInterest:Width frameWidth:CVPixelBufferGetHeight(buffer) frameHeight:{v13, v15, v17, v19}])
  {
    v69 = 0;
    *v75 = 0;
    *&v75[8] = v75;
    *&v75[16] = 0x3812000000;
    *&v75[24] = __Block_byref_object_copy__231;
    *&v75[32] = __Block_byref_object_dispose__232;
    v76 = &unk_1C977A0C7;
    *v77 = 0;
    orientation2 = [propertiesCopy orientation];
    [propertiesCopy regionOfInterest];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = (*&v75[8] + 48);
    v30 = *(*&v75[8] + 48);
    if (v30)
    {
      CFRelease(v30);
      *v31 = 0;
    }

    if ([(MADVideoSession *)self preprocessPixelBuffer:buffer orientation:orientation2 regionOfInterest:v31 output:&v69 isProcessed:v23, v25, v27, v29])
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [MADVideoSession processPixelBuffer:frameProperties:resultHandler:];
      }

      v32 = 0;
    }

    else
    {
      v33 = objc_alloc_init(MADVideoSessionFrameProperties);
      if (propertiesCopy)
      {
        [propertiesCopy timestamp];
      }

      else
      {
        memset(&v68, 0, sizeof(v68));
      }

      buf = v68;
      [(MADVideoSessionFrameProperties *)v33 setTimestamp:&buf];
      if ((v69 & 1) == 0)
      {
        -[MADVideoSessionFrameProperties setOrientation:](v33, "setOrientation:", [propertiesCopy orientation]);
        [propertiesCopy regionOfInterest];
        [(MADVideoSessionFrameProperties *)v33 setRegionOfInterest:?];
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        LODWORD(buf.value) = 138412290;
        *(&buf.value + 4) = v10;
        _os_log_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Start processing pixel buffer ...", &buf, 0xCu);
      }

      v34 = CVPixelBufferGetIOSurface(*(*&v75[8] + 48));
      v32 = v34 != 0;
      if (v34)
      {
        v35 = MADSignpostLog();
        spid = os_signpost_id_generate(v35);

        v36 = MADSignpostLog();
        v37 = v36;
        if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
        {
          if (v33)
          {
            [(MADVideoSessionFrameProperties *)v33 timestamp];
          }

          else
          {
            memset(&buf, 0, sizeof(buf));
          }

          v47 = CMTimeGetSeconds(&buf);
          orientation3 = [(MADVideoSessionFrameProperties *)v33 orientation];
          *v70 = 134218240;
          v71 = v47;
          v72 = 1024;
          v73 = orientation3;
          _os_signpost_emit_with_name_impl(&dword_1C972C000, v37, OS_SIGNPOST_INTERVAL_BEGIN, spid, "MADVideoSession_processPixelBuffer", "processPixelBuffer timestamp: %.2f, orientation %d", v70, 0x12u);
        }

        connection = [(MADVideoSession *)self connection];
        v63[0] = MEMORY[0x1E69E9820];
        v63[1] = 3221225472;
        v63[2] = __68__MADVideoSession_processPixelBuffer_frameProperties_resultHandler___block_invoke;
        v63[3] = &unk_1E8342FA0;
        v67 = v75;
        v50 = v10;
        v64 = v50;
        v51 = handlerCopy;
        v66 = v51;
        v52 = v33;
        v65 = v52;
        v55 = connection;
        v53 = [connection remoteObjectProxyWithErrorHandler:v63];
        v57[0] = MEMORY[0x1E69E9820];
        v57[1] = 3221225472;
        v57[2] = __68__MADVideoSession_processPixelBuffer_frameProperties_resultHandler___block_invoke_234;
        v57[3] = &unk_1E8342FC8;
        v61 = v75;
        v62 = spid;
        v58 = v52;
        v59 = v50;
        v60 = v51;
        [v53 processFrameWithIOSurface:v34 frameProperties:v58 reply:v57];
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [MADVideoSession processPixelBuffer:frameProperties:resultHandler:];
      }
    }

    _Block_object_dispose(v75, 8);
    CF<CGColorSpace *>::~CF(v77);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [MADVideoSession processPixelBuffer:frameProperties:resultHandler:];
    }

    v32 = 0;
  }

  return v32;
}

void __68__MADVideoSession_processPixelBuffer_frameProperties_resultHandler___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = *(a1[7] + 8);
  v5 = *(v4 + 48);
  if (v5)
  {
    CFRelease(v5);
    *(v4 + 48) = 0;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __68__MADVideoSession_processPixelBuffer_frameProperties_resultHandler___block_invoke_cold_1();
  }

  v6 = a1[5];
  v7 = a1[6];
  if (v6)
  {
    [v6 timestamp];
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  (*(v7 + 16))(v7, 0, v8, v3);
}

void __68__MADVideoSession_processPixelBuffer_frameProperties_resultHandler___block_invoke_234(uint64_t a1, void *a2, CMTime *a3, void *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 48);
  if (v10)
  {
    CFRelease(v10);
    *(v9 + 48) = 0;
  }

  v11 = MADSignpostLog();
  v12 = v11;
  v13 = *(a1 + 64);
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    v14 = *(a1 + 32);
    if (v14)
    {
      [v14 timestamp];
    }

    else
    {
      memset(&v19, 0, sizeof(v19));
    }

    Seconds = CMTimeGetSeconds(&v19);
    v16 = [*(a1 + 32) orientation];
    *buf = 134218240;
    v21 = Seconds;
    v22 = 1024;
    v23 = v16;
    _os_signpost_emit_with_name_impl(&dword_1C972C000, v12, OS_SIGNPOST_INTERVAL_END, v13, "MADVideoSession_processPixelBuffer", "processPixelBuffer timestamp: %.2f, orientation %d", buf, 0x12u);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v17 = *(a1 + 40);
    LODWORD(v19.value) = 138412290;
    *(&v19.value + 4) = v17;
    _os_log_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Finish processing pixel buffer ...", &v19, 0xCu);
  }

  v18 = *(a1 + 48);
  v19 = *a3;
  (*(v18 + 16))(v18, v7, &v19);
}

- (void)requestTTRNotificationWithVideoFrames:(id)frames options:(id)options completionHandler:(id)handler
{
  framesCopy = frames;
  optionsCopy = options;
  handlerCopy = handler;
  date = [MEMORY[0x1E695DF00] date];
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@][requestTTRNotification:]", objc_opt_class()];
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3032000000;
  v34[3] = __Block_byref_object_copy_;
  v34[4] = __Block_byref_object_dispose_;
  v12 = framesCopy;
  v35 = v12;
  v13 = MADSignpostLog();
  v14 = os_signpost_id_generate(v13);

  v15 = MADSignpostLog();
  v16 = v15;
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C972C000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "MADVideoSession_requestTTRNotification", &unk_1C977645E, buf, 2u);
  }

  connection = [(MADVideoSession *)self connection];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __95__MADVideoSession_UserSafety__requestTTRNotificationWithVideoFrames_options_completionHandler___block_invoke;
  v29[3] = &unk_1E8342FF0;
  v32 = v34;
  v18 = v11;
  v30 = v18;
  v19 = handlerCopy;
  v31 = v19;
  v20 = [connection remoteObjectProxyWithErrorHandler:v29];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __95__MADVideoSession_UserSafety__requestTTRNotificationWithVideoFrames_options_completionHandler___block_invoke_280;
  v24[3] = &unk_1E8343018;
  v27 = v34;
  v28 = v14;
  v21 = v18;
  v25 = v21;
  v22 = v19;
  v26 = v22;
  [v20 requestTTRNotificationWithVideoFrames:v12 options:optionsCopy reply:v24];

  _Block_object_dispose(v34, 8);
}

void __95__MADVideoSession_UserSafety__requestTTRNotificationWithVideoFrames_options_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __68__MADVideoSession_processPixelBuffer_frameProperties_resultHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

void __95__MADVideoSession_UserSafety__requestTTRNotificationWithVideoFrames_options_completionHandler___block_invoke_280(void *a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

  v7 = MADSignpostLog();
  v8 = v7;
  v9 = a1[7];
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    LOWORD(v11) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C972C000, v8, OS_SIGNPOST_INTERVAL_END, v9, "MADVideoSession_requestTTRNotification", &unk_1C977645E, &v11, 2u);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v10 = a1[4];
    v11 = 138412290;
    v12 = v10;
    _os_log_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Finish request tap to radar notification...", &v11, 0xCu);
  }

  (*(a1[5] + 16))();
}

void __52__MADVideoSession__addBackRequestsAfterReconnection__block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)addRequest:(uint64_t)a3 error:(uint8_t *)buf .cold.1(uint64_t a1, void *a2, uint64_t a3, uint8_t *buf)
{
  v5 = *(*a3 + 40);
  *buf = 138412802;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  *(buf + 11) = 2112;
  *(buf + 3) = v5;
  _os_log_error_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Failed adding request with requestID: %@, error: %@", buf, 0x20u);
}

- (void)removeRequest:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

- (void)preprocessPixelBuffer:orientation:regionOfInterest:output:isProcessed:.cold.1()
{
  objc_opt_class();
  OUTLINED_FUNCTION_3();
  v1 = v0;
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)processPixelBuffer:frameProperties:resultHandler:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)processPixelBuffer:frameProperties:resultHandler:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)processPixelBuffer:frameProperties:resultHandler:.cold.3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __68__MADVideoSession_processPixelBuffer_frameProperties_resultHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end