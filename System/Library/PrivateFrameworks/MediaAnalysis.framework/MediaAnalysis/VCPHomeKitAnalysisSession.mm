@interface VCPHomeKitAnalysisSession
+ (id)sessionWithProperties:(id)properties andResultsHandler:(id)handler;
+ (id)sessionWithProperties:(id)properties withResultsHandler:(id)handler andInterruptionHandler:(id)interruptionHandler;
- (VCPHomeKitAnalysisSession)initWithProperties:(id)properties withResultsHandler:(id)handler andInterruptionHandler:(id)interruptionHandler;
- (id)connection;
- (void)processMessageWithOptions:(id)options andCompletionHandler:(id)handler;
- (void)processResults:(id)results withReply:(id)reply;
- (void)processVideoFragmentAssetData:(id)data withOptions:(id)options andCompletionHandler:(id)handler;
- (void)processVideoFragmentAssetData:(id)data withOptions:(id)options andErrorHandler:(id)handler;
@end

@implementation VCPHomeKitAnalysisSession

- (VCPHomeKitAnalysisSession)initWithProperties:(id)properties withResultsHandler:(id)handler andInterruptionHandler:(id)interruptionHandler
{
  v44 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  handlerCopy = handler;
  interruptionHandlerCopy = interruptionHandler;
  v41.receiver = self;
  v41.super_class = VCPHomeKitAnalysisSession;
  v11 = [(VCPHomeKitAnalysisSession *)&v41 init];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_4;
  }

  connection = v11->_connection;
  v11->_connection = 0;

  v14 = dispatch_queue_create("com.apple.homekitanalysis.session.management", 0);
  managementQueue = v12->_managementQueue;
  v12->_managementQueue = v14;

  v16 = dispatch_queue_create("com.apple.homekitanalysis.session.handler", 0);
  handlerQueue = v12->_handlerQueue;
  v12->_handlerQueue = v16;

  v18 = dispatch_queue_create("com.apple.homekitanalysis.session.connection", 0);
  connectionQueue = v12->_connectionQueue;
  v12->_connectionQueue = v18;

  v20 = _Block_copy(handlerCopy);
  resultsHandler = v12->_resultsHandler;
  v12->_resultsHandler = v20;

  v22 = _Block_copy(interruptionHandlerCopy);
  interruptionHander = v12->_interruptionHander;
  v12->_interruptionHander = v22;

  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__27;
  v39 = __Block_byref_object_dispose__27;
  v40 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 1;
  connection = [(VCPHomeKitAnalysisSession *)v12 connection];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __90__VCPHomeKitAnalysisSession_initWithProperties_withResultsHandler_andInterruptionHandler___block_invoke;
  v30[3] = &unk_1E834E0C0;
  v30[4] = &v31;
  v30[5] = &v35;
  v25 = [connection synchronousRemoteObjectProxyWithErrorHandler:v30];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __90__VCPHomeKitAnalysisSession_initWithProperties_withResultsHandler_andInterruptionHandler___block_invoke_191;
  v29[3] = &unk_1E834E0C0;
  v29[4] = &v31;
  v29[5] = &v35;
  [v25 startSessionWithProperties:propertiesCopy andReply:v29];

  if (v32[3])
  {
    _Block_object_dispose(&v31, 8);
    _Block_object_dispose(&v35, 8);

LABEL_4:
    v26 = v12;
    goto LABEL_9;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v27 = v36[5];
    *buf = 138412290;
    v43 = v27;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[HomeKit] VCPHomeKitAnalysisSession initialization fails (%@)", buf, 0xCu);
  }

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);

  v26 = 0;
LABEL_9:

  return v26;
}

void __90__VCPHomeKitAnalysisSession_initWithProperties_withResultsHandler_andInterruptionHandler___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[HomeKit] Failed to connect to analysis service (%@)", &v6, 0xCu);
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __90__VCPHomeKitAnalysisSession_initWithProperties_withResultsHandler_andInterruptionHandler___block_invoke_191(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v4;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[HomeKit] Failed to connect to analysis service (%@)", &v5, 0xCu);
    }

    *(*(*(a1 + 32) + 8) + 24) = 0;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

+ (id)sessionWithProperties:(id)properties andResultsHandler:(id)handler
{
  propertiesCopy = properties;
  handlerCopy = handler;
  v7 = [objc_alloc(objc_opt_class()) initWithProperties:propertiesCopy withResultsHandler:handlerCopy andInterruptionHandler:&__block_literal_global_36];

  return v7;
}

+ (id)sessionWithProperties:(id)properties withResultsHandler:(id)handler andInterruptionHandler:(id)interruptionHandler
{
  propertiesCopy = properties;
  handlerCopy = handler;
  interruptionHandlerCopy = interruptionHandler;
  v10 = [objc_alloc(objc_opt_class()) initWithProperties:propertiesCopy withResultsHandler:handlerCopy andInterruptionHandler:interruptionHandlerCopy];

  return v10;
}

- (id)connection
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__27;
  v10 = __Block_byref_object_dispose__27;
  v11 = 0;
  connectionQueue = self->_connectionQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__VCPHomeKitAnalysisSession_connection__block_invoke;
  v5[3] = &unk_1E834D538;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(connectionQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __39__VCPHomeKitAnalysisSession_connection__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  if (!v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.mediaanalysisd.homekitsession" options:0];
    v4 = *(a1 + 32);
    v5 = *(v4 + 8);
    *(v4 + 8) = v3;

    v6 = objc_alloc_init(VCPHomeKitSessionExportedObject);
    [(VCPHomeKitSessionExportedObject *)v6 setWeakSession:*(a1 + 32)];
    [*(*(a1 + 32) + 8) setExportedObject:v6];
    v7 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4A19E50];
    v8 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F49D5260];
    v19 = 0;
    v20 = &v19;
    v21 = 0x2050000000;
    v9 = getHMIVideoAnalyzerClass(void)::softClass;
    v22 = getHMIVideoAnalyzerClass(void)::softClass;
    if (!getHMIVideoAnalyzerClass(void)::softClass)
    {
      location[0] = MEMORY[0x1E69E9820];
      location[1] = 3221225472;
      location[2] = ___ZL24getHMIVideoAnalyzerClassv_block_invoke;
      location[3] = &unk_1E834C0F0;
      location[4] = &v19;
      ___ZL24getHMIVideoAnalyzerClassv_block_invoke(location);
      v9 = v20[3];
    }

    v10 = v9;
    _Block_object_dispose(&v19, 8);
    v11 = [v9 allowedClasses];
    [v7 setClasses:v11 forSelector:sel_processVideoFragmentAssetData_withOptions_andReply_ argumentIndex:1 ofReply:0];
    [v7 setClasses:v11 forSelector:sel_processVideoFragmentAssetData_withOptions_andReply_ argumentIndex:0 ofReply:1];
    [v7 setClasses:v11 forSelector:sel_processMessageWithOptions_andReply_ argumentIndex:0 ofReply:0];
    [v7 setClasses:v11 forSelector:sel_processMessageWithOptions_andReply_ argumentIndex:0 ofReply:1];
    [v7 setClasses:v11 forSelector:sel_startSessionWithProperties_andReply_ argumentIndex:0 ofReply:0];
    [v8 setClasses:v11 forSelector:sel_processResults_withReply_ argumentIndex:0 ofReply:0];
    [*(*(a1 + 32) + 8) setRemoteObjectInterface:v7];
    [*(*(a1 + 32) + 8) setExportedInterface:v8];
    objc_initWeak(location, *(a1 + 32));
    v12 = *(*(a1 + 32) + 8);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __39__VCPHomeKitAnalysisSession_connection__block_invoke_2;
    v16[3] = &unk_1E834D098;
    objc_copyWeak(&v17, location);
    [v12 setInterruptionHandler:v16];
    v13 = *(*(a1 + 32) + 8);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __39__VCPHomeKitAnalysisSession_connection__block_invoke_2_209;
    v14[3] = &unk_1E834D098;
    objc_copyWeak(&v15, location);
    [v13 setInvalidationHandler:v14];
    [*(*(a1 + 32) + 8) resume];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&v17);
    objc_destroyWeak(location);

    v2 = *(*(a1 + 32) + 8);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v2);
}

void __39__VCPHomeKitAnalysisSession_connection__block_invoke_2(uint64_t a1)
{
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[HomeKit] Client XPC connection interrupted", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[4];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__VCPHomeKitAnalysisSession_connection__block_invoke_208;
    block[3] = &unk_1E834BDC0;
    block[4] = v3;
    dispatch_async(v4, block);
  }
}

uint64_t __39__VCPHomeKitAnalysisSession_connection__block_invoke_208(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 8);
  if (v2)
  {
    v3 = result;
    *(v1 + 8) = 0;

    v4 = *(*(*(v3 + 32) + 56) + 16);

    return v4();
  }

  return result;
}

void __39__VCPHomeKitAnalysisSession_connection__block_invoke_2_209(uint64_t a1)
{
  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[HomeKit] Client XPC connection invalidated", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[4];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__VCPHomeKitAnalysisSession_connection__block_invoke_210;
    block[3] = &unk_1E834BDC0;
    block[4] = v3;
    dispatch_async(v4, block);
  }
}

uint64_t __39__VCPHomeKitAnalysisSession_connection__block_invoke_210(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 8);
  if (v2)
  {
    v3 = result;
    *(v1 + 8) = 0;

    v4 = *(*(*(v3 + 32) + 56) + 16);

    return v4();
  }

  return result;
}

- (void)processVideoFragmentAssetData:(id)data withOptions:(id)options andErrorHandler:(id)handler
{
  dataCopy = data;
  optionsCopy = options;
  handlerCopy = handler;
  managementQueue = self->_managementQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __87__VCPHomeKitAnalysisSession_processVideoFragmentAssetData_withOptions_andErrorHandler___block_invoke;
  v15[3] = &unk_1E834E0E8;
  v15[4] = self;
  v16 = dataCopy;
  v17 = optionsCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = optionsCopy;
  v14 = dataCopy;
  dispatch_sync(managementQueue, v15);
}

void __87__VCPHomeKitAnalysisSession_processVideoFragmentAssetData_withOptions_andErrorHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  v3 = [v2 remoteObjectProxyWithErrorHandler:&__block_literal_global_212];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __87__VCPHomeKitAnalysisSession_processVideoFragmentAssetData_withOptions_andErrorHandler___block_invoke_213;
  v6[3] = &unk_1E834C638;
  v6[4] = *(a1 + 32);
  v7 = *(a1 + 56);
  [v3 processVideoFragmentAssetData:v4 withOptions:v5 andReply:v6];
}

void __87__VCPHomeKitAnalysisSession_processVideoFragmentAssetData_withOptions_andErrorHandler___block_invoke_2()
{
  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *v0 = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[HomeKit] Error connecting to background analysis service", v0, 2u);
  }
}

void __87__VCPHomeKitAnalysisSession_processVideoFragmentAssetData_withOptions_andErrorHandler___block_invoke_213(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(*(a1 + 32) + 24);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __87__VCPHomeKitAnalysisSession_processVideoFragmentAssetData_withOptions_andErrorHandler___block_invoke_2_214;
  v8[3] = &unk_1E834C4F8;
  v6 = *(a1 + 40);
  v9 = v4;
  v10 = v6;
  v7 = v4;
  dispatch_async(v5, v8);
}

- (void)processVideoFragmentAssetData:(id)data withOptions:(id)options andCompletionHandler:(id)handler
{
  dataCopy = data;
  optionsCopy = options;
  handlerCopy = handler;
  managementQueue = self->_managementQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __92__VCPHomeKitAnalysisSession_processVideoFragmentAssetData_withOptions_andCompletionHandler___block_invoke;
  v15[3] = &unk_1E834C7F0;
  v15[4] = self;
  v16 = dataCopy;
  v17 = optionsCopy;
  v18 = handlerCopy;
  v12 = optionsCopy;
  v13 = dataCopy;
  v14 = handlerCopy;
  dispatch_sync(managementQueue, v15);
}

void __92__VCPHomeKitAnalysisSession_processVideoFragmentAssetData_withOptions_andCompletionHandler___block_invoke(uint64_t a1)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 8);
  if (v2)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __92__VCPHomeKitAnalysisSession_processVideoFragmentAssetData_withOptions_andCompletionHandler___block_invoke_2;
    v13[3] = &unk_1E834C9C8;
    v14 = *(a1 + 56);
    v3 = [v2 remoteObjectProxyWithErrorHandler:v13];
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __92__VCPHomeKitAnalysisSession_processVideoFragmentAssetData_withOptions_andCompletionHandler___block_invoke_222;
    v11[3] = &unk_1E834C638;
    v11[4] = *(a1 + 32);
    v12 = *(a1 + 56);
    [v3 processVideoFragmentAssetData:v4 withOptions:v5 andReply:v11];

    v6 = v14;
  }

  else
  {
    v7 = *(a1 + 56);
    v8 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E696A578];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[HomeKit] XPC connection invalidated. Please restart the session."];
    v16[0] = v6;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v10 = [v8 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v9];
    (*(v7 + 16))(v7, 0, v10);
  }
}

void __92__VCPHomeKitAnalysisSession_processVideoFragmentAssetData_withOptions_andCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[HomeKit] Error connecting to background analysis service", v4, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void __92__VCPHomeKitAnalysisSession_processVideoFragmentAssetData_withOptions_andCompletionHandler___block_invoke_222(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __92__VCPHomeKitAnalysisSession_processVideoFragmentAssetData_withOptions_andCompletionHandler___block_invoke_2_223;
  block[3] = &unk_1E834C570;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)processMessageWithOptions:(id)options andCompletionHandler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  managementQueue = self->_managementQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__VCPHomeKitAnalysisSession_processMessageWithOptions_andCompletionHandler___block_invoke;
  block[3] = &unk_1E834C700;
  v12 = optionsCopy;
  v13 = handlerCopy;
  block[4] = self;
  v9 = optionsCopy;
  v10 = handlerCopy;
  dispatch_sync(managementQueue, block);
}

void __76__VCPHomeKitAnalysisSession_processMessageWithOptions_andCompletionHandler___block_invoke(uint64_t a1)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 8);
  if (v2)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __76__VCPHomeKitAnalysisSession_processMessageWithOptions_andCompletionHandler___block_invoke_2;
    v12[3] = &unk_1E834C9C8;
    v13 = *(a1 + 48);
    v3 = [v2 remoteObjectProxyWithErrorHandler:v12];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __76__VCPHomeKitAnalysisSession_processMessageWithOptions_andCompletionHandler___block_invoke_224;
    v10[3] = &unk_1E834C638;
    v4 = *(a1 + 40);
    v10[4] = *(a1 + 32);
    v11 = *(a1 + 48);
    [v3 processMessageWithOptions:v4 andReply:v10];

    v5 = v13;
  }

  else
  {
    v6 = *(a1 + 48);
    v7 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E696A578];
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[HomeKit] XPC connection invalidated. Please restart the session."];
    v15[0] = v5;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v9 = [v7 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v8];
    (*(v6 + 16))(v6, 0, v9);
  }
}

void __76__VCPHomeKitAnalysisSession_processMessageWithOptions_andCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[HomeKit] Error connecting to background analysis service", v4, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void __76__VCPHomeKitAnalysisSession_processMessageWithOptions_andCompletionHandler___block_invoke_224(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__VCPHomeKitAnalysisSession_processMessageWithOptions_andCompletionHandler___block_invoke_2_225;
  block[3] = &unk_1E834C570;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)processResults:(id)results withReply:(id)reply
{
  v16[1] = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  replyCopy = reply;
  if (self->_resultsHandler)
  {
    handlerQueue = self->_handlerQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__VCPHomeKitAnalysisSession_processResults_withReply___block_invoke;
    block[3] = &unk_1E834D238;
    block[4] = self;
    v14 = resultsCopy;
    dispatch_async(handlerQueue, block);
    replyCopy[2](replyCopy, 0);
  }

  else
  {
    v9 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E696A578];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No result handler registered"];
    v16[0] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v12 = [v9 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v11];
    (replyCopy)[2](replyCopy, v12);
  }
}

@end