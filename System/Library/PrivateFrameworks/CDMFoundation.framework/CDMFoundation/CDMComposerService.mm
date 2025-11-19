@interface CDMComposerService
- (CDMComposerService)initWithConfig:(id)a3;
- (id)createServiceGraphForCommand:(id)a3 withSelfMetadata:(id)a4 withCallback:(id)a5;
- (id)prepareRequestHandler:(id)a3 withCallback:(id)a4;
- (id)supportedCommands;
- (void)_handleEmbeddingRequest:(id)a3 withCallback:(id)a4;
- (void)_handleNLUPreprocessRequest:(id)a3 withCallback:(id)a4;
- (void)_handleNLURequest:(id)a3 withCallback:(id)a4;
- (void)_handleSetupRequest:(id)a3 withCallback:(id)a4;
- (void)_handleSsuInferenceRequest:(id)a3 withCallback:(id)a4;
- (void)failWithError:(id)a3 callback:(id)a4;
- (void)failWithError:(id)a3 rawCommand:(id)a4 callback:(id)a5;
- (void)handleCommand:(id)a3 withCallback:(id)a4;
@end

@implementation CDMComposerService

- (id)supportedCommands
{
  v12[4] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = CDMComposerService;
  v2 = [(CDMBaseService *)&v11 supportedCommands];
  v3 = +[(CDMBaseCommand *)CDMAssistantNLUCommand];
  v12[0] = v3;
  v4 = +[(CDMBaseCommand *)CDMNLUPreprocessRequestCommand];
  v12[1] = v4;
  v5 = +[(CDMBaseCommand *)CDMEmbeddingGraphRequestCommand];
  v12[2] = v5;
  v6 = +[(CDMBaseCommand *)CDMSsuInferenceGraphRequestCommand];
  v12[3] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:4];
  v8 = [v2 setByAddingObjectsFromArray:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)prepareRequestHandler:(id)a3 withCallback:(id)a4
{
  v43[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v35 = a4;
  v33 = [objc_opt_class() serviceGraphName];
  v7 = NSClassFromString(v33);
  v8 = [v6 loggingRequestID];
  v34 = [CDMSELFLogUtil createSELFMetadataWithRequestId:v8];
  v9 = [v6 dataDispatcherContext];
  [CDMDataDispatcher dispatchSELFRequestLink:v8 dataDispatcherContext:v9];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v10 = v6;
    v11 = [v10 siriNLUTypeObj];
    v12 = [v10 dataDispatcherContext];
    [CDMDataDispatcher dispatchCdmRequestData:v11 requestId:v8 withCurrentServiceGraph:v33 dataDispatcherContext:v12];
  }

  else if (objc_opt_respondsToSelector())
  {
    v27 = [v6 dataDispatcherContext];
    [(objc_class *)v7 dispatchServiceGraphRequestLogging:v6 dataDispatcherContext:v27];
  }

  else
  {
    v31 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v37 = "[CDMComposerService prepareRequestHandler:withCallback:]";
      v38 = 2112;
      v39 = v33;
      _os_log_impl(&dword_1DC287000, v31, OS_LOG_TYPE_INFO, "%s [WARN]: Graph [%@] does not support dispatchServiceGraphRequestLogging", buf, 0x16u);
    }
  }

  if (!self->_serviceGraphRunner)
  {
    v23 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v37 = "[CDMComposerService prepareRequestHandler:withCallback:]";
      v38 = 2112;
      v39 = @"ServiceGraphRunner not initialized!";
      _os_log_error_impl(&dword_1DC287000, v23, OS_LOG_TYPE_ERROR, "%s [ERR]: %@", buf, 0x16u);
    }

    v24 = MEMORY[0x1E696ABC0];
    v42 = *MEMORY[0x1E696A578];
    v43[0] = @"ServiceGraphRunner not initialized!";
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:&v42 count:1];
    v13 = [v24 errorWithDomain:@"CDMComposerService" code:-1 userInfo:v25];

    v26 = [v6 dataDispatcherContext];
    [CDMSELFLogUtil cdmFailed:8 metadata:v34 logMessage:@"SELF CDM Request failed message emitted" dataDispatcherContext:v26];

    [(CDMComposerService *)self failWithError:v13 rawCommand:v6 callback:v35];
    goto LABEL_13;
  }

  v13 = [(CDMComposerService *)self createServiceGraphForCommand:v6 withSelfMetadata:v34 withCallback:v35];
  if (!v13)
  {
LABEL_13:
    v22 = 0;
    goto LABEL_20;
  }

  v14 = [CDMBaseRequestHandler alloc];
  v15 = [v6 uuid];
  v32 = [(CDMBaseRequestHandler *)v14 initWithId:v15 serviceGraph:v13];

  v16 = [(CDMBaseRequestHandler *)v32 getError];
  if (v16)
  {
    v17 = CDMLogContext;
    if (os_log_type_enabled(CDMLogContext, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v37 = "[CDMComposerService prepareRequestHandler:withCallback:]";
      v38 = 2112;
      v39 = @"summary";
      v40 = 2112;
      v41 = v16;
      _os_log_impl(&dword_1DC287000, v17, OS_LOG_TYPE_DEFAULT, "%s [insights-cdm-%@]:\nFailing early as graph set an error before even running it. Error:%@", buf, 0x20u);
    }

    v18 = [v16 domain];
    v19 = [v16 code];
    v20 = [CDMSELFLogUtil createSELFMetadataWithRequestId:v8];
    v21 = [v6 dataDispatcherContext];
    [CDMSELFLogUtil cdmFailed:11 errorDomainString:v18 errorCode:v19 metadata:v20 logMessage:@"SELF CDM Request failed message emitted" dataDispatcherContext:v21];

    [(CDMComposerService *)self failWithError:v16 rawCommand:v6 callback:v35];
    v22 = 0;
  }

  else
  {
    v28 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v37 = "[CDMComposerService prepareRequestHandler:withCallback:]";
      v38 = 2112;
      v39 = v33;
      _os_log_impl(&dword_1DC287000, v28, OS_LOG_TYPE_INFO, "%s Created %@", buf, 0x16u);
    }

    v22 = v32;
  }

LABEL_20:
  v29 = *MEMORY[0x1E69E9840];

  return v22;
}

- (id)createServiceGraphForCommand:(id)a3 withSelfMetadata:(id)a4 withCallback:(id)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v29 = a4;
  v30 = a5;
  v9 = [objc_opt_class() serviceGraphName];
  v10 = objc_alloc(NSClassFromString(v9));
  servicesArray = self->_servicesArray;
  graphServicesArray = self->_graphServicesArray;
  languageCode = self->_languageCode;
  v14 = [v8 uuid];
  aneLock = self->_aneLock;
  v16 = [v8 dataDispatcherContext];
  v17 = [v10 initWithServices:servicesArray graphServices:graphServicesArray graphInput:v8 languageCode:languageCode handlerId:v14 aneLock:aneLock dataDispatcherContext:v16];

  v18 = [v17 getError];
  v19 = v18;
  if (v18 && [v18 code] == 3)
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create service graph with type %@!", v9];
    v21 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v34 = "[CDMComposerService createServiceGraphForCommand:withSelfMetadata:withCallback:]";
      v35 = 2112;
      v36 = v20;
      _os_log_error_impl(&dword_1DC287000, v21, OS_LOG_TYPE_ERROR, "%s [ERR]: %@", buf, 0x16u);
    }

    v22 = MEMORY[0x1E696ABC0];
    v31 = *MEMORY[0x1E696A578];
    v32 = v20;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v24 = [v22 errorWithDomain:@"CDMComposerService" code:-3 userInfo:v23];

    v25 = [v8 dataDispatcherContext];
    [CDMSELFLogUtil cdmFailed:10 metadata:v29 logMessage:@"SELF CDM Request failed message emitted" dataDispatcherContext:v25];

    [(CDMComposerService *)self failWithError:v24 rawCommand:v8 callback:v30];
    v26 = 0;
  }

  else
  {
    v26 = v17;
  }

  v27 = *MEMORY[0x1E69E9840];

  return v26;
}

- (void)_handleSetupRequest:(id)a3 withCallback:(id)a4
{
  v42[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v36 = "[CDMComposerService _handleSetupRequest:withCallback:]";
    _os_log_impl(&dword_1DC287000, v8, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v9 = [v6 dynamicConfig];
  v10 = [v9 languageCode];
  languageCode = self->_languageCode;
  self->_languageCode = v10;

  v12 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v30 = [v6 dynamicConfig];
    v31 = [v30 graphName];
    *buf = 136315394;
    v36 = "[CDMComposerService _handleSetupRequest:withCallback:]";
    v37 = 2112;
    v38 = v31;
    _os_log_debug_impl(&dword_1DC287000, v12, OS_LOG_TYPE_DEBUG, "%s DynamicConfig's graphName=%@", buf, 0x16u);
  }

  availableServiceGraphs = self->_availableServiceGraphs;
  v14 = [v6 dynamicConfig];
  v15 = [v14 graphName];
  LOBYTE(availableServiceGraphs) = [(NSOrderedSet *)availableServiceGraphs containsObject:v15];

  if (availableServiceGraphs)
  {
    v16 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v32 = [v6 dynamicConfig];
      v33 = [v32 graphName];
      v34 = self->_languageCode;
      *buf = 136315650;
      v36 = "[CDMComposerService _handleSetupRequest:withCallback:]";
      v37 = 2112;
      v38 = v33;
      v39 = 2112;
      v40 = v34;
      _os_log_debug_impl(&dword_1DC287000, v16, OS_LOG_TYPE_DEBUG, "%s Ready for graph %@ and locale %@", buf, 0x20u);
    }

    self->super._serviceState = 2;
    v17 = [(CDMBaseService *)self createSetupResponseCommand];
    v7[2](v7, v17, 0);
  }

  else
  {
    v18 = MEMORY[0x1E696AEC0];
    v19 = [v6 dynamicConfig];
    v20 = [v19 graphName];
    v17 = [v18 stringWithFormat:@"Invalid graph=%@ Leaving CDM as-is. List of available graphs=%@", v20, self->_availableServiceGraphs];;

    v21 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v36 = "[CDMComposerService _handleSetupRequest:withCallback:]";
      v37 = 2112;
      v38 = v17;
      _os_log_error_impl(&dword_1DC287000, v21, OS_LOG_TYPE_ERROR, "%s [ERR]: %@", buf, 0x16u);
    }

    v22 = MEMORY[0x1E696ABC0];
    v41 = *MEMORY[0x1E696A578];
    v42[0] = v17;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:&v41 count:1];
    v24 = [v22 errorWithDomain:@"CDMComposerService" code:-4 userInfo:v23];

    self->super._serviceState = 3;
    v25 = [CDMSetupResponseCommand alloc];
    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    v28 = [(CDMSetupResponseCommand *)v25 initWithServiceState:3 serviceName:v27];

    [(CDMBaseCommand *)v28 setCmdError:v24];
    (v7)[2](v7, v28, v24);
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (void)_handleSsuInferenceRequest:(id)a3 withCallback:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  v9 = [v6 loggingRequestID];
  v10 = [CDMSELFLogUtil createSELFMetadataWithRequestId:v9];

  v11 = [(CDMComposerService *)self prepareRequestHandler:v6 withCallback:v7];
  if (v11)
  {
    v12 = CDMOSLoggerForCategory(4);
    v13 = os_signpost_id_generate(v12);

    v14 = CDMOSLoggerForCategory(4);
    v15 = v14;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      v16 = [v11 handlerId];
      *buf = 138412290;
      v27 = v16;
      _os_signpost_emit_with_name_impl(&dword_1DC287000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "handleSsuInferenceGraph", "%@", buf, 0xCu);
    }

    serviceGraphRunner = self->_serviceGraphRunner;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __62__CDMComposerService__handleSsuInferenceRequest_withCallback___block_invoke;
    v19[3] = &unk_1E862F438;
    v24 = v13;
    v20 = v11;
    v21 = v10;
    v22 = v6;
    v25 = v8;
    v23 = v7;
    [(CDMServiceGraphRunner *)serviceGraphRunner runHandlerAsync:v20 withCompletion:v19];
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __62__CDMComposerService__handleSsuInferenceRequest_withCallback___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = CDMOSLoggerForCategory(4);
  v3 = v2;
  v4 = *(a1 + 64);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    LOWORD(v20) = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v3, OS_SIGNPOST_INTERVAL_END, v4, "handleSsuInferenceGraph", "", &v20, 2u);
  }

  v5 = [*(a1 + 32) getResult];
  v6 = [*(a1 + 32) getError];
  if (v6)
  {
    v7 = CDMLogContext;
    if (os_log_type_enabled(CDMLogContext, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136315650;
      v21 = "[CDMComposerService _handleSsuInferenceRequest:withCallback:]_block_invoke";
      v22 = 2112;
      v23 = @"summary";
      v24 = 2112;
      v25 = v6;
      _os_log_impl(&dword_1DC287000, v7, OS_LOG_TYPE_DEFAULT, "%s [insights-cdm-%@]:\nServiceGraphError: %@", &v20, 0x20u);
    }

    v8 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v20 = 136315394;
      v21 = "[CDMComposerService _handleSsuInferenceRequest:withCallback:]_block_invoke";
      v22 = 2112;
      v23 = v6;
      _os_log_error_impl(&dword_1DC287000, v8, OS_LOG_TYPE_ERROR, "%s [ERR]: Sending Error via callback in CDMClient, Error:%@", &v20, 0x16u);
    }

    v9 = [(__CFString *)v6 domain];
    v10 = [(__CFString *)v6 code];
    v11 = *(a1 + 40);
    v12 = [*(a1 + 48) dataDispatcherContext];
    [CDMSELFLogUtil cdmFailed:12 errorDomainString:v9 errorCode:v10 metadata:v11 logMessage:@"SELF CDM Request failed message emitted" dataDispatcherContext:v12];

    v13 = [[CDMGenericSendCommand alloc] initWithError:v6 clientId:@"CDM-embedding-client"];
  }

  else
  {
    v14 = *(a1 + 72);
    v15 = [*(a1 + 48) loggingRequestID];
    v16 = [*(a1 + 48) dataDispatcherContext];
    [v14 dispatchServiceGraphResponseLogging:v5 requestId:v15 dataDispatcherContext:v16];

    v17 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v20 = 136315138;
      v21 = "[CDMComposerService _handleSsuInferenceRequest:withCallback:]_block_invoke";
      _os_log_debug_impl(&dword_1DC287000, v17, OS_LOG_TYPE_DEBUG, "%s Sending CDMSsuInferenceGraphResponseCommand via callback in CDMClient", &v20, 0xCu);
    }

    v13 = [[CDMGenericSendCommand alloc] initWithSsuInferenceGraphResponse:v5];
  }

  v18 = v13;
  (*(*(a1 + 56) + 16))();

  v19 = *MEMORY[0x1E69E9840];
}

- (void)_handleEmbeddingRequest:(id)a3 withCallback:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  v9 = [(CDMComposerService *)self prepareRequestHandler:v6 withCallback:v7];
  v10 = [v6 requestId];
  v11 = [CDMSELFLogUtil createSELFMetadataWithRequestId:v10];
  if (v9)
  {
    v12 = CDMOSLoggerForCategory(4);
    v13 = os_signpost_id_generate(v12);

    v14 = CDMOSLoggerForCategory(4);
    v15 = v14;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      v16 = [v9 handlerId];
      *buf = 138412290;
      v28 = v16;
      _os_signpost_emit_with_name_impl(&dword_1DC287000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "handleEmbeddingGraph", "%@", buf, 0xCu);
    }

    serviceGraphRunner = self->_serviceGraphRunner;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __59__CDMComposerService__handleEmbeddingRequest_withCallback___block_invoke;
    v19[3] = &unk_1E862F410;
    v25 = v13;
    v20 = v9;
    v26 = v8;
    v21 = v10;
    v22 = v6;
    v23 = v11;
    v24 = v7;
    [(CDMServiceGraphRunner *)serviceGraphRunner runHandlerAsync:v20 withCompletion:v19];
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __59__CDMComposerService__handleEmbeddingRequest_withCallback___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = CDMOSLoggerForCategory(4);
  v3 = v2;
  v4 = *(a1 + 72);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    LOWORD(v20) = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v3, OS_SIGNPOST_INTERVAL_END, v4, "handleEmbeddingGraph", "", &v20, 2u);
  }

  v5 = [*(a1 + 32) getResult];
  v6 = [*(a1 + 32) getError];
  if (v6)
  {
    v7 = CDMLogContext;
    if (os_log_type_enabled(CDMLogContext, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136315650;
      v21 = "[CDMComposerService _handleEmbeddingRequest:withCallback:]_block_invoke";
      v22 = 2112;
      v23 = @"summary";
      v24 = 2112;
      v25 = v6;
      _os_log_impl(&dword_1DC287000, v7, OS_LOG_TYPE_DEFAULT, "%s [insights-cdm-%@]:\nServiceGraphError: %@", &v20, 0x20u);
    }

    v8 = [(__CFString *)v6 domain];
    v9 = [(__CFString *)v6 code];
    v10 = *(a1 + 56);
    v11 = [*(a1 + 48) dataDispatcherContext];
    [CDMSELFLogUtil cdmFailed:12 errorDomainString:v8 errorCode:v9 metadata:v10 logMessage:@"SELF CDM Request failed message emitted" dataDispatcherContext:v11];

    v12 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v20 = 136315394;
      v21 = "[CDMComposerService _handleEmbeddingRequest:withCallback:]_block_invoke";
      v22 = 2112;
      v23 = v6;
      _os_log_error_impl(&dword_1DC287000, v12, OS_LOG_TYPE_ERROR, "%s [ERR]: Sending Error via callback in CDMClient, Error:%@", &v20, 0x16u);
    }

    v13 = [[CDMGenericSendCommand alloc] initWithError:v6 clientId:@"CDM-embedding-client"];
  }

  else
  {
    v14 = *(a1 + 80);
    v15 = *(a1 + 40);
    v16 = [*(a1 + 48) dataDispatcherContext];
    [v14 dispatchServiceGraphResponseLogging:v5 requestId:v15 dataDispatcherContext:v16];

    v17 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v20 = 136315138;
      v21 = "[CDMComposerService _handleEmbeddingRequest:withCallback:]_block_invoke";
      _os_log_debug_impl(&dword_1DC287000, v17, OS_LOG_TYPE_DEBUG, "%s Sending CDMEmbeddingGraphResponseCommand via callback in CDMClient", &v20, 0xCu);
    }

    v13 = [[CDMGenericSendCommand alloc] initWithEmbeddingGraphResponse:v5];
  }

  v18 = v13;
  (*(*(a1 + 64) + 16))();

  v19 = *MEMORY[0x1E69E9840];
}

- (void)_handleNLUPreprocessRequest:(id)a3 withCallback:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 siriNLUTypeObj];
  v9 = [v8 requestId];

  v10 = [(CDMComposerService *)self prepareRequestHandler:v6 withCallback:v7];
  if (v10)
  {
    v11 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v25 = "[CDMComposerService _handleNLUPreprocessRequest:withCallback:]";
      _os_log_impl(&dword_1DC287000, v11, OS_LOG_TYPE_INFO, "%s Created requestHandler for handleNLUPreprocessRequest", buf, 0xCu);
    }

    v12 = CDMOSLoggerForCategory(4);
    v13 = os_signpost_id_generate(v12);

    v14 = CDMOSLoggerForCategory(4);
    v15 = v14;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      v16 = [v10 handlerId];
      *buf = 138412290;
      v25 = v16;
      _os_signpost_emit_with_name_impl(&dword_1DC287000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "handleNLUPreproces", "%@", buf, 0xCu);
    }

    serviceGraphRunner = self->_serviceGraphRunner;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __63__CDMComposerService__handleNLUPreprocessRequest_withCallback___block_invoke;
    v19[3] = &unk_1E862F3E8;
    v20 = v10;
    v23 = v13;
    v21 = v9;
    v22 = v7;
    [(CDMServiceGraphRunner *)serviceGraphRunner runHandlerAsync:v20 withCompletion:v19];
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __63__CDMComposerService__handleNLUPreprocessRequest_withCallback___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v12 = [*(a1 + 32) getResult];
    v13 = 136315394;
    v14 = "[CDMComposerService _handleNLUPreprocessRequest:withCallback:]_block_invoke";
    v15 = 2112;
    v16 = v12;
    _os_log_debug_impl(&dword_1DC287000, v2, OS_LOG_TYPE_DEBUG, "%s Get _handleNLUPreprocessRequest:%@", &v13, 0x16u);
  }

  v3 = CDMOSLoggerForCategory(4);
  v4 = v3;
  v5 = *(a1 + 56);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    LOWORD(v13) = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v4, OS_SIGNPOST_INTERVAL_END, v5, "handleNLUPreproces", "", &v13, 2u);
  }

  v6 = [*(a1 + 32) getResult];
  v7 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v13 = 136315394;
    v14 = "[CDMComposerService _handleNLUPreprocessRequest:withCallback:]_block_invoke";
    v15 = 2112;
    v16 = v6;
    _os_log_debug_impl(&dword_1DC287000, v7, OS_LOG_TYPE_DEBUG, "%s Get CDMNLUPreprocessResponseCommand:%@", &v13, 0x16u);
  }

  v8 = [*(a1 + 32) getError];
  if (!v8)
  {
    v9 = [v6 preprocessingWrapper];
    [CDMDataDispatcher dispatchCdmPreprocessingWrapperData:v9 requestId:*(a1 + 40)];
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    (*(v10 + 16))(v10, v6, v8);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_handleNLURequest:(id)a3 withCallback:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  languageCode = self->_languageCode;
  v9 = [v6 siriNLUTypeObj];
  [CDMAnalytics recordReceivedNluRequestEvent:languageCode withNluRequest:v9];

  v10 = [v6 siriNLUTypeObj];
  v11 = [v10 requestId];

  [CDMComposerServiceUtils logNluRequestForInsights:v6];
  v12 = [(CDMComposerService *)self prepareRequestHandler:v6 withCallback:v7];
  if (v12)
  {
    v13 = CDMOSLoggerForCategory(4);
    v14 = os_signpost_id_generate(v13);

    v15 = CDMOSLoggerForCategory(4);
    v16 = v15;
    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      v17 = [v12 handlerId];
      *buf = 138543362;
      v27 = v17;
      _os_signpost_emit_with_name_impl(&dword_1DC287000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "handleNLU", "%{public}@", buf, 0xCu);
    }

    serviceGraphRunner = self->_serviceGraphRunner;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __53__CDMComposerService__handleNLURequest_withCallback___block_invoke;
    v20[3] = &unk_1E862F3C0;
    v25 = v14;
    v21 = v12;
    v22 = v11;
    v23 = v6;
    v24 = v7;
    [(CDMServiceGraphRunner *)serviceGraphRunner runHandlerAsync:v21 withCompletion:v20];
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __53__CDMComposerService__handleNLURequest_withCallback___block_invoke(uint64_t a1)
{
  v58 = *MEMORY[0x1E69E9840];
  v1 = CDMOSLoggerForCategory(4);
  v2 = v1;
  v3 = *(a1 + 64);
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v1))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v2, OS_SIGNPOST_INTERVAL_END, v3, "handleNLU", "", buf, 2u);
  }

  v43 = [*(a1 + 32) getResult];
  v4 = [*(a1 + 32) getError];
  v5 = CDMLogContext;
  v44 = v4;
  if (v4)
  {
    if (os_log_type_enabled(CDMLogContext, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v53 = "[CDMComposerService _handleNLURequest:withCallback:]_block_invoke";
      v54 = 2112;
      v55 = @"summary";
      v56 = 2112;
      v57 = v44;
      _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_DEFAULT, "%s [insights-cdm-%@]:\nServiceGraphError: %@", buf, 0x20u);
    }

    v6 = [(__CFString *)v44 domain];
    v7 = [(__CFString *)v44 code];
    v8 = [CDMSELFLogUtil createSELFMetadataWithRequestId:*(a1 + 40)];
    v9 = [*(a1 + 48) dataDispatcherContext];
    [CDMSELFLogUtil cdmFailed:12 errorDomainString:v6 errorCode:v7 metadata:v8 logMessage:@"SELF CDM Request failed message emitted" dataDispatcherContext:v9];

    v10 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v53 = "[CDMComposerService _handleNLURequest:withCallback:]_block_invoke";
      v54 = 2112;
      v55 = v44;
      _os_log_error_impl(&dword_1DC287000, v10, OS_LOG_TYPE_ERROR, "%s [ERR]: Sending Error to SiriRequestDispatch (SRD) via callback in CDMClient, Error:%@", buf, 0x16u);
    }

    v11 = [CDMGenericSendCommand alloc];
    v12 = [*(a1 + 48) clientId];
    v13 = [(CDMGenericSendCommand *)v11 initWithError:v44 clientId:v12];
  }

  else
  {
    v14 = CDMLogContext;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = MEMORY[0x1E69D1438];
      v16 = [v43 siriNLUTypeObj];
      v17 = [v15 printableResponse:v16];
      *buf = 136315650;
      v53 = "[CDMComposerService _handleNLURequest:withCallback:]_block_invoke";
      v54 = 2112;
      v55 = @"cdmio";
      v56 = 2112;
      v57 = v17;
      _os_log_impl(&dword_1DC287000, v14, OS_LOG_TYPE_INFO, "%s [insights-cdm-%@]:\nServiceGraphNLUResponse: %@", buf, 0x20u);
    }

    v18 = CDMLogContext;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v43 requestId];
      *buf = 136315650;
      v53 = "[CDMComposerService _handleNLURequest:withCallback:]_block_invoke";
      v54 = 2112;
      v55 = @"summary";
      v56 = 2114;
      v57 = v19;
      _os_log_impl(&dword_1DC287000, v18, OS_LOG_TYPE_DEFAULT, "%s [insights-cdm-%@]:\nRequest for NLUResponse: %{public}@", buf, 0x20u);
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v20 = [v43 siriNLUTypeObj];
    obj = [v20 parses];

    v21 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
    if (v21)
    {
      v22 = *v48;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v48 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v47 + 1) + 8 * i);
          if (+[CDMPlatformUtils isInternalInstall])
          {
            v25 = CDMLogContext;
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              v26 = [MEMORY[0x1E69D1438] printableUserParse:v24];
              *buf = 136315650;
              v53 = "[CDMComposerService _handleNLURequest:withCallback:]_block_invoke";
              v54 = 2112;
              v55 = @"summary";
              v56 = 2112;
              v57 = v26;
              _os_log_impl(&dword_1DC287000, v25, OS_LOG_TYPE_DEFAULT, "%s [insights-cdm-%@]:\nParses From NLUResponse: %@", buf, 0x20u);
            }
          }

          else
          {
            v25 = [MEMORY[0x1E69D1440] redactUserParse:v24];
            v27 = CDMLogContext;
            if (v25)
            {
              v28 = CDMLogContext;
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                v29 = [MEMORY[0x1E69D1438] printableUserParse:v25];
                *buf = 136315650;
                v53 = "[CDMComposerService _handleNLURequest:withCallback:]_block_invoke";
                v54 = 2112;
                v55 = @"summary";
                v56 = 2114;
                v57 = v29;
                _os_log_impl(&dword_1DC287000, v28, OS_LOG_TYPE_DEFAULT, "%s [insights-cdm-%@]:\nParses From NLUResponse: %{public}@", buf, 0x20u);
              }
            }

            else
            {
              if (os_log_type_enabled(CDMLogContext, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315394;
                v53 = "[CDMComposerService _handleNLURequest:withCallback:]_block_invoke";
                v54 = 2112;
                v55 = @"summary";
                _os_log_impl(&dword_1DC287000, v27, OS_LOG_TYPE_DEFAULT, "%s [insights-cdm-%@]:\nUnable to redact parse", buf, 0x16u);
              }

              v25 = 0;
            }
          }
        }

        v21 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
      }

      while (v21);
    }

    v30 = [v43 siriNLUTypeObj];
    v31 = [v30 parses];
    v32 = [v31 count] == 0;

    if (v32)
    {
      v33 = CDMLogContext;
      if (os_log_type_enabled(CDMLogContext, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v53 = "[CDMComposerService _handleNLURequest:withCallback:]_block_invoke";
        v54 = 2112;
        v55 = @"summary";
        _os_log_impl(&dword_1DC287000, v33, OS_LOG_TYPE_DEFAULT, "%s [insights-cdm-%@]:\nParses From NLUResponse: None", buf, 0x16u);
      }
    }

    v34 = [v43 siriNLUTypeObj];
    v35 = *(a1 + 40);
    v36 = [*(a1 + 48) dataDispatcherContext];
    [CDMDataDispatcher dispatchCdmResponseData:v34 requestId:v35 dataDispatcherContext:v36];

    v37 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v53 = "[CDMComposerService _handleNLURequest:withCallback:]_block_invoke";
      _os_log_debug_impl(&dword_1DC287000, v37, OS_LOG_TYPE_DEBUG, "%s Sending CDMNluResponse to SiriRequestDispatch (SRD) via callback in CDMClient", buf, 0xCu);
    }

    v38 = [CDMNluResponse alloc];
    v39 = [v43 siriNLUTypeObj];
    v12 = [(CDMNluResponse *)v38 initWithObjcProto:v39];

    v40 = [CDMGenericSendCommand alloc];
    v41 = [*(a1 + 48) clientId];
    v13 = [(CDMGenericSendCommand *)v40 initWithCDMNluResponse:v12 clientId:v41];
  }

  (*(*(a1 + 56) + 16))();
  v42 = *MEMORY[0x1E69E9840];
}

- (void)failWithError:(id)a3 callback:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [[CDMGenericSendCommand alloc] initWithError:v8 clientId:@"CDM-embedding-client"];
  if (v6)
  {
    v6[2](v6, v7, v8);
  }

  else
  {
    [(CDMBaseService *)self publish:v7];
  }
}

- (void)failWithError:(id)a3 rawCommand:(id)a4 callback:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v9;
    v12 = [CDMGenericSendCommand alloc];
    v13 = [v11 clientId];
    v14 = [(CDMGenericSendCommand *)v12 initWithError:v8 clientId:v13];

    if (v10)
    {
      if ([v8 code] == 2)
      {
        v15 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v25 = 136315394;
          v26 = "[CDMComposerService failWithError:rawCommand:callback:]";
          v27 = 2112;
          v28 = v8;
          _os_log_impl(&dword_1DC287000, v15, OS_LOG_TYPE_INFO, "%s [WARN]: In response to an invalid NLUInput (i.e. empty utterance), CDM responding with StatusCode of EMPTY_NLU_REQUEST (code 101). Error:%@", &v25, 0x16u);
        }

        v16 = [v11 siriNLUTypeObj];
        v17 = [v16 requestId];
        v18 = [SiriNLUTypesUtils createResponse:v17 statusCode:101];

        v19 = [[CDMNluResponse alloc] initWithObjcProto:v18];
        v20 = [CDMGenericSendCommand alloc];
        v21 = [v11 clientId];
        v22 = [(CDMGenericSendCommand *)v20 initWithCDMNluResponse:v19 clientId:v21];

        v23 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          v25 = 136315138;
          v26 = "[CDMComposerService failWithError:rawCommand:callback:]";
          _os_log_debug_impl(&dword_1DC287000, v23, OS_LOG_TYPE_DEBUG, "%s Callback below explicitly setting NSError to nil as SiriRequestDispatch (SRD) expects an NLUResponse with status code of EMPTY_NLU_REQUEST", &v25, 0xCu);
        }

        v10[2](v10, v22, 0);
      }

      else
      {
        (v10)[2](v10, v14, v8);
      }
    }

    else
    {
      [(CDMBaseService *)self publish:v14];
    }
  }

  else
  {
    [(CDMComposerService *)self failWithError:v8 callback:v10];
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)handleCommand:(id)a3 withCallback:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v6 commandName];
    *buf = 136315394;
    v13 = "[CDMComposerService handleCommand:withCallback:]";
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_1DC287000, v8, OS_LOG_TYPE_INFO, "%s Composer get [%@]", buf, 0x16u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(CDMComposerService *)self _handleSetupRequest:v6 withCallback:v7];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(CDMComposerService *)self _handleNLUPreprocessRequest:v6 withCallback:v7];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(CDMComposerService *)self _handleNLURequest:v6 withCallback:v7];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(CDMComposerService *)self _handleEmbeddingRequest:v6 withCallback:v7];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(CDMComposerService *)self _handleSsuInferenceRequest:v6 withCallback:v7];
          }

          else
          {
            v11.receiver = self;
            v11.super_class = CDMComposerService;
            [(CDMBaseService *)&v11 handleCommand:v6 withCallback:v7];
          }
        }
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (CDMComposerService)initWithConfig:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CDMComposerService;
  v5 = [(CDMBaseService *)&v12 initWithConfig:v4];
  v6 = v5;
  if (v5)
  {
    v5->super._serviceState = 2;
    v7 = objc_alloc_init(MEMORY[0x1E696AD10]);
    aneLock = v6->_aneLock;
    v6->_aneLock = v7;

    v9 = [v4 availableServiceGraphs];
    availableServiceGraphs = v6->_availableServiceGraphs;
    v6->_availableServiceGraphs = v9;
  }

  return v6;
}

@end