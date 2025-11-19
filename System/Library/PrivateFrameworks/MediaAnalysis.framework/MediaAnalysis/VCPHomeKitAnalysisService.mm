@interface VCPHomeKitAnalysisService
+ (id)analysisService;
- (VCPHomeKitAnalysisService)init;
- (id)connection;
- (int)requestAnalysis:(unint64_t)a3 ofAssetData:(id)a4 withProperties:(id)a5 progressHandler:(id)a6 andCompletionHandler:(id)a7;
- (int)requestAnalysis:(unint64_t)a3 ofAssetSurface:(id)a4 withProperties:(id)a5 progressHandler:(id)a6 andCompletionHandler:(id)a7;
- (int)requestResidentMaintenanceWithOptions:(id)a3 andCompletionHandler:(id)a4;
- (void)cancelAllRequests;
- (void)cancelRequest:(int)a3;
- (void)reportProgress:(double)a3 forRequest:(int)a4;
@end

@implementation VCPHomeKitAnalysisService

- (VCPHomeKitAnalysisService)init
{
  v13.receiver = self;
  v13.super_class = VCPHomeKitAnalysisService;
  v2 = [(VCPHomeKitAnalysisService *)&v13 init];
  v3 = v2;
  if (v2)
  {
    connection = v2->_connection;
    v2->_connection = 0;

    v5 = dispatch_queue_create("com.apple.homekitanalysis.service.management", 0);
    managementQueue = v3->_managementQueue;
    v3->_managementQueue = v5;

    v7 = dispatch_queue_create("com.apple.homekitanalysis.service.handler", 0);
    handlerQueue = v3->_handlerQueue;
    v3->_handlerQueue = v7;

    v9 = [MEMORY[0x1E695DF90] dictionary];
    progressBlocks = v3->_progressBlocks;
    v3->_progressBlocks = v9;

    v3->_nextRequestID = 1;
    v11 = v3;
  }

  return v3;
}

+ (id)analysisService
{
  v2 = objc_alloc_init(VCPHomeKitAnalysisService);

  return v2;
}

- (id)connection
{
  connection = self->_connection;
  if (!connection)
  {
    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.mediaanalysisd.homekit" options:0];
    v5 = self->_connection;
    self->_connection = v4;

    [(NSXPCConnection *)self->_connection setExportedObject:self];
    v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4A19F10];
    v24 = 0;
    v25 = &v24;
    v26 = 0x2050000000;
    v7 = getHMIAnalysisServiceClass_softClass;
    v27 = getHMIAnalysisServiceClass_softClass;
    if (!getHMIAnalysisServiceClass_softClass)
    {
      v19 = MEMORY[0x1E69E9820];
      v20 = 3221225472;
      v21 = __getHMIAnalysisServiceClass_block_invoke;
      v22 = &unk_1E834CFE0;
      v23 = &v24;
      __getHMIAnalysisServiceClass_block_invoke(&v19);
      v7 = v25[3];
    }

    v8 = v7;
    _Block_object_dispose(&v24, 8);
    v9 = objc_alloc_init(v7);
    v10 = [v9 expectedClasses];

    [v6 setClasses:v10 forSelector:sel_requestAnalysis_ofFragmentData_withRequestID_properties_andReply_ argumentIndex:3 ofReply:0];
    [v6 setClasses:v10 forSelector:sel_requestAnalysis_ofFragmentData_withRequestID_properties_andReply_ argumentIndex:0 ofReply:1];
    [v6 setClasses:v10 forSelector:sel_requestAnalysis_ofFragmentSurface_withRequestID_properties_andReply_ argumentIndex:3 ofReply:0];
    [v6 setClasses:v10 forSelector:sel_requestAnalysis_ofFragmentSurface_withRequestID_properties_andReply_ argumentIndex:0 ofReply:1];
    v24 = 0;
    v25 = &v24;
    v26 = 0x2050000000;
    v11 = getHMITaskServiceClass_softClass;
    v27 = getHMITaskServiceClass_softClass;
    if (!getHMITaskServiceClass_softClass)
    {
      v19 = MEMORY[0x1E69E9820];
      v20 = 3221225472;
      v21 = __getHMITaskServiceClass_block_invoke;
      v22 = &unk_1E834CFE0;
      v23 = &v24;
      __getHMITaskServiceClass_block_invoke(&v19);
      v11 = v25[3];
    }

    v12 = v11;
    _Block_object_dispose(&v24, 8);
    v13 = [v11 allowedClasses];
    [v6 setClasses:v13 forSelector:sel_requestResidentMaintenance_withOptions_andReply_ argumentIndex:0 ofReply:1];

    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:v6];
    v14 = self->_connection;
    v15 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F49ECB50];
    [(NSXPCConnection *)v14 setExportedInterface:v15];

    [(NSXPCConnection *)self->_connection setInterruptionHandler:&__block_literal_global_86];
    v16 = self->_connection;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __39__VCPHomeKitAnalysisService_connection__block_invoke_210;
    v18[3] = &unk_1E834C010;
    v18[4] = self;
    [(NSXPCConnection *)v16 setInvalidationHandler:v18];
    [(NSXPCConnection *)self->_connection resume];

    connection = self->_connection;
  }

  return connection;
}

void __39__VCPHomeKitAnalysisService_connection__block_invoke()
{
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *v0 = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "HomeKit analysis client XPC connection interrupted", v0, 2u);
  }
}

void __39__VCPHomeKitAnalysisService_connection__block_invoke_210(uint64_t a1)
{
  if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "HomeKit analysis client XPC connection invalidated", v4, 2u);
  }

  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;
}

- (int)requestAnalysis:(unint64_t)a3 ofAssetData:(id)a4 withProperties:(id)a5 progressHandler:(id)a6 andCompletionHandler:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  managementQueue = self->_managementQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __109__VCPHomeKitAnalysisService_requestAnalysis_ofAssetData_withProperties_progressHandler_andCompletionHandler___block_invoke;
  block[3] = &unk_1E83516F0;
  v26 = v15;
  v27 = &v29;
  v28 = a3;
  block[4] = self;
  v23 = v12;
  v24 = v13;
  v25 = v14;
  v17 = v13;
  v18 = v12;
  v19 = v15;
  v20 = v14;
  dispatch_sync(managementQueue, block);
  LODWORD(a3) = *(v30 + 6);

  _Block_object_dispose(&v29, 8);
  return a3;
}

void __109__VCPHomeKitAnalysisService_requestAnalysis_ofAssetData_withProperties_progressHandler_andCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = v3 + 1;
  *(*(*(a1 + 72) + 8) + 24) = v3;
  v4 = *(*(a1 + 32) + 32);
  if (*(a1 + 56))
  {
    v5 = *(a1 + 56);
  }

  else
  {
    v5 = &__block_literal_global_213;
  }

  v6 = _Block_copy(v5);
  v7 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 72) + 8) + 24)];
  [v4 setObject:v6 forKey:v7];

  v8 = [*(a1 + 32) connection];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __109__VCPHomeKitAnalysisService_requestAnalysis_ofAssetData_withProperties_progressHandler_andCompletionHandler___block_invoke_3;
  v20[3] = &unk_1E8351650;
  v20[4] = *(a1 + 32);
  v16 = *(a1 + 64);
  v9 = v16;
  v21 = v16;
  v10 = [v8 remoteObjectProxyWithErrorHandler:v20];
  v11 = *(a1 + 72);
  v12 = *(a1 + 80);
  v13 = *(*(v11 + 8) + 24);
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __109__VCPHomeKitAnalysisService_requestAnalysis_ofAssetData_withProperties_progressHandler_andCompletionHandler___block_invoke_3_218;
  v17[3] = &unk_1E83516C8;
  v17[4] = *(a1 + 32);
  v19 = v11;
  v18 = *(a1 + 64);
  [v10 requestAnalysis:v12 ofFragmentData:v14 withRequestID:v13 properties:v15 andReply:v17];
}

void __109__VCPHomeKitAnalysisService_requestAnalysis_ofAssetData_withProperties_progressHandler_andCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[HomeKitAnalysis] Error connecting to background analysis service", buf, 2u);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __109__VCPHomeKitAnalysisService_requestAnalysis_ofAssetData_withProperties_progressHandler_andCompletionHandler___block_invoke_215;
  block[3] = &unk_1E8351628;
  block[4] = v4;
  v8 = *(a1 + 40);
  v6 = v8;
  v11 = v8;
  v10 = v3;
  v7 = v3;
  dispatch_async(v5, block);
}

void __109__VCPHomeKitAnalysisService_requestAnalysis_ofAssetData_withProperties_progressHandler_andCompletionHandler___block_invoke_215(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __109__VCPHomeKitAnalysisService_requestAnalysis_ofAssetData_withProperties_progressHandler_andCompletionHandler___block_invoke_2_216;
  v5[3] = &unk_1E8351600;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  dispatch_async(v4, v5);
}

void __109__VCPHomeKitAnalysisService_requestAnalysis_ofAssetData_withProperties_progressHandler_andCompletionHandler___block_invoke_3_218(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __109__VCPHomeKitAnalysisService_requestAnalysis_ofAssetData_withProperties_progressHandler_andCompletionHandler___block_invoke_4;
  block[3] = &unk_1E83516A0;
  block[4] = v7;
  v12 = *(a1 + 40);
  v9 = v12;
  v16 = v12;
  v14 = v5;
  v15 = v6;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, block);
}

void __109__VCPHomeKitAnalysisService_requestAnalysis_ofAssetData_withProperties_progressHandler_andCompletionHandler___block_invoke_4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 64) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __109__VCPHomeKitAnalysisService_requestAnalysis_ofAssetData_withProperties_progressHandler_andCompletionHandler___block_invoke_5;
  block[3] = &unk_1E8351678;
  v8 = *(a1 + 56);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  dispatch_async(v4, block);
}

- (int)requestAnalysis:(unint64_t)a3 ofAssetSurface:(id)a4 withProperties:(id)a5 progressHandler:(id)a6 andCompletionHandler:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  managementQueue = self->_managementQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __112__VCPHomeKitAnalysisService_requestAnalysis_ofAssetSurface_withProperties_progressHandler_andCompletionHandler___block_invoke;
  block[3] = &unk_1E83516F0;
  v26 = v15;
  v27 = &v29;
  v28 = a3;
  block[4] = self;
  v23 = v12;
  v24 = v13;
  v25 = v14;
  v17 = v13;
  v18 = v12;
  v19 = v15;
  v20 = v14;
  dispatch_sync(managementQueue, block);
  LODWORD(a3) = *(v30 + 6);

  _Block_object_dispose(&v29, 8);
  return a3;
}

void __112__VCPHomeKitAnalysisService_requestAnalysis_ofAssetSurface_withProperties_progressHandler_andCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = v3 + 1;
  *(*(*(a1 + 72) + 8) + 24) = v3;
  v4 = *(*(a1 + 32) + 32);
  if (*(a1 + 56))
  {
    v5 = *(a1 + 56);
  }

  else
  {
    v5 = &__block_literal_global_221;
  }

  v6 = _Block_copy(v5);
  v7 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 72) + 8) + 24)];
  [v4 setObject:v6 forKey:v7];

  v8 = [*(a1 + 32) connection];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __112__VCPHomeKitAnalysisService_requestAnalysis_ofAssetSurface_withProperties_progressHandler_andCompletionHandler___block_invoke_3;
  v20[3] = &unk_1E8351650;
  v20[4] = *(a1 + 32);
  v16 = *(a1 + 64);
  v9 = v16;
  v21 = v16;
  v10 = [v8 remoteObjectProxyWithErrorHandler:v20];
  v11 = *(a1 + 72);
  v12 = *(a1 + 80);
  v13 = *(*(v11 + 8) + 24);
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __112__VCPHomeKitAnalysisService_requestAnalysis_ofAssetSurface_withProperties_progressHandler_andCompletionHandler___block_invoke_3_224;
  v17[3] = &unk_1E83516C8;
  v17[4] = *(a1 + 32);
  v19 = v11;
  v18 = *(a1 + 64);
  [v10 requestAnalysis:v12 ofFragmentSurface:v14 withRequestID:v13 properties:v15 andReply:v17];
}

void __112__VCPHomeKitAnalysisService_requestAnalysis_ofAssetSurface_withProperties_progressHandler_andCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[HomeKitAnalysis] Error connecting to background analysis service", buf, 2u);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __112__VCPHomeKitAnalysisService_requestAnalysis_ofAssetSurface_withProperties_progressHandler_andCompletionHandler___block_invoke_222;
  block[3] = &unk_1E8351628;
  block[4] = v4;
  v8 = *(a1 + 40);
  v6 = v8;
  v11 = v8;
  v10 = v3;
  v7 = v3;
  dispatch_async(v5, block);
}

void __112__VCPHomeKitAnalysisService_requestAnalysis_ofAssetSurface_withProperties_progressHandler_andCompletionHandler___block_invoke_222(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __112__VCPHomeKitAnalysisService_requestAnalysis_ofAssetSurface_withProperties_progressHandler_andCompletionHandler___block_invoke_2_223;
  v5[3] = &unk_1E8351600;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  dispatch_async(v4, v5);
}

void __112__VCPHomeKitAnalysisService_requestAnalysis_ofAssetSurface_withProperties_progressHandler_andCompletionHandler___block_invoke_3_224(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __112__VCPHomeKitAnalysisService_requestAnalysis_ofAssetSurface_withProperties_progressHandler_andCompletionHandler___block_invoke_4;
  block[3] = &unk_1E83516A0;
  block[4] = v7;
  v12 = *(a1 + 40);
  v9 = v12;
  v16 = v12;
  v14 = v5;
  v15 = v6;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, block);
}

void __112__VCPHomeKitAnalysisService_requestAnalysis_ofAssetSurface_withProperties_progressHandler_andCompletionHandler___block_invoke_4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 64) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __112__VCPHomeKitAnalysisService_requestAnalysis_ofAssetSurface_withProperties_progressHandler_andCompletionHandler___block_invoke_5;
  block[3] = &unk_1E8351678;
  v8 = *(a1 + 56);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  dispatch_async(v4, block);
}

- (void)reportProgress:(double)a3 forRequest:(int)a4
{
  v14 = *MEMORY[0x1E69E9840];
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109376;
    v11 = a4;
    v12 = 2048;
    v13 = a3;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[HomeKitAnalysis] Request %d is %.2f%% complete", buf, 0x12u);
  }

  managementQueue = self->_managementQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__VCPHomeKitAnalysisService_reportProgress_forRequest___block_invoke;
  block[3] = &unk_1E8351740;
  block[4] = self;
  v9 = a4;
  *&block[5] = a3;
  dispatch_async(managementQueue, block);
}

void __55__VCPHomeKitAnalysisService_reportProgress_forRequest___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 48)];
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    v5 = *(*(a1 + 32) + 24);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __55__VCPHomeKitAnalysisService_reportProgress_forRequest___block_invoke_2;
    v6[3] = &unk_1E8351718;
    v7 = v4;
    v8 = *(a1 + 40);
    dispatch_async(v5, v6);
  }
}

- (void)cancelRequest:(int)a3
{
  managementQueue = self->_managementQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43__VCPHomeKitAnalysisService_cancelRequest___block_invoke;
  v4[3] = &unk_1E8351768;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(managementQueue, v4);
}

void __43__VCPHomeKitAnalysisService_cancelRequest___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 40)];
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    v7 = [*(a1 + 32) connection];
    v5 = [v7 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_226];
    [v5 cancelRequest:*(a1 + 40)];
  }

  else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    *buf = 67109120;
    v9 = v6;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[HomeKitAnalysis] Unknown analysis request %d; dropping cancellation request", buf, 8u);
  }
}

void __43__VCPHomeKitAnalysisService_cancelRequest___block_invoke_2()
{
  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *v0 = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[HomeKitAnalysis] Error connecting to background analysis service", v0, 2u);
  }
}

- (void)cancelAllRequests
{
  managementQueue = self->_managementQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__VCPHomeKitAnalysisService_cancelAllRequests__block_invoke;
  block[3] = &unk_1E834C010;
  block[4] = self;
  dispatch_sync(managementQueue, block);
}

void __46__VCPHomeKitAnalysisService_cancelAllRequests__block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 32) count])
  {
    v3 = [*(a1 + 32) connection];
    v2 = [v3 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_228];
    [v2 cancelAllRequests];
  }

  else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[HomeKitAnalysis] No active analysis requests; dropping cancellation request", buf, 2u);
  }
}

void __46__VCPHomeKitAnalysisService_cancelAllRequests__block_invoke_2()
{
  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *v0 = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[HomeKitAnalysis] Error connecting to background analysis service", v0, 2u);
  }
}

- (int)requestResidentMaintenanceWithOptions:(id)a3 andCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = -1;
  managementQueue = self->_managementQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __98__VCPHomeKitAnalysisService_Resident__requestResidentMaintenanceWithOptions_andCompletionHandler___block_invoke;
  v12[3] = &unk_1E83517B8;
  v14 = v7;
  v15 = &v16;
  v12[4] = self;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_sync(managementQueue, v12);
  LODWORD(v6) = *(v17 + 6);

  _Block_object_dispose(&v16, 8);
  return v6;
}

void __98__VCPHomeKitAnalysisService_Resident__requestResidentMaintenanceWithOptions_andCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = v3 + 1;
  *(*(*(a1 + 56) + 8) + 24) = v3;
  v4 = *(*(a1 + 32) + 32);
  v5 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  [v4 setObject:&__block_literal_global_249 forKey:v5];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __98__VCPHomeKitAnalysisService_Resident__requestResidentMaintenanceWithOptions_andCompletionHandler___block_invoke_3;
  aBlock[3] = &unk_1E83516C8;
  aBlock[4] = *(a1 + 32);
  v11 = *(a1 + 48);
  v6 = v11;
  v15 = v11;
  v7 = _Block_copy(aBlock);
  v8 = [*(a1 + 32) connection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __98__VCPHomeKitAnalysisService_Resident__requestResidentMaintenanceWithOptions_andCompletionHandler___block_invoke_6;
  v12[3] = &unk_1E8351790;
  v13 = v7;
  v9 = v7;
  v10 = [v8 remoteObjectProxyWithErrorHandler:v12];
  [v10 requestResidentMaintenance:*(*(*(a1 + 56) + 8) + 24) withOptions:*(a1 + 40) andReply:v9];
}

void __98__VCPHomeKitAnalysisService_Resident__requestResidentMaintenanceWithOptions_andCompletionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __98__VCPHomeKitAnalysisService_Resident__requestResidentMaintenanceWithOptions_andCompletionHandler___block_invoke_4;
  block[3] = &unk_1E83516A0;
  block[4] = v7;
  v12 = *(a1 + 40);
  v9 = v12;
  v16 = v12;
  v14 = v5;
  v15 = v6;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, block);
}

void __98__VCPHomeKitAnalysisService_Resident__requestResidentMaintenanceWithOptions_andCompletionHandler___block_invoke_4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 64) + 8) + 24)];
  [v2 removeObjectForKey:v3];

  v4 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __98__VCPHomeKitAnalysisService_Resident__requestResidentMaintenanceWithOptions_andCompletionHandler___block_invoke_5;
  block[3] = &unk_1E8351678;
  v8 = *(a1 + 56);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  dispatch_async(v4, block);
}

void __98__VCPHomeKitAnalysisService_Resident__requestResidentMaintenanceWithOptions_andCompletionHandler___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[HomeKit] Error connecting to background analysis service", v4, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

@end