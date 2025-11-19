@interface CDMFoundationClient
+ (id)createEmptyNluRequestId;
- (BOOL)areAssetsAvailable:(id)a3;
- (BOOL)registerWithAssetsDelegate:(id)a3 withType:(int64_t)a4;
- (CDMFoundationClient)init;
- (CDMFoundationClient)initWithCallingBundleId:(id)a3;
- (CDMFoundationClient)initWithDelegate:(id)a3;
- (CDMFoundationClient)initWithDelegate:(id)a3 withCallingBundleId:(id)a4;
- (CDMFoundationClient)initWithServiceCenter:(id)a3 withEventRegister:(id)a4;
- (void)doHandleCommand:(id)a3 forCallback:(id)a4;
- (void)processCDMNluRequest:(id)a3 nullableCompletionHandler:(id)a4;
- (void)setup:(id)a3 nullableCompletionHandler:(id)a4;
- (void)waitForDataDispatcherCompletion;
- (void)warmupWithCompletionHandler:(id)a3;
@end

@implementation CDMFoundationClient

- (CDMFoundationClient)init
{
  v3 = objc_alloc_init(CDMServiceCenter);
  v4 = objc_alloc_init(CDMConfig);
  v5 = +[CDMNLUServiceGraph requiredDAGServices];
  v6 = [v5 allObjects];
  v7 = [XPCStreamEventRegister registerFromDagServiceNames:v6];

  v8 = [(CDMFoundationClient *)self initWithServiceCenter:v3 withEventRegister:v7];
  [(CDMFoundationClient *)v8 doServiceCenterInitWithConfig:v4];

  return v8;
}

- (void)doHandleCommand:(id)a3 forCallback:(id)a4
{
  v9 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v9 setDataDispatcherContext:self->_dataDispatcherContext];
    v7 = [v9 locale];

    if (!v7)
    {
      v8 = [(CDMClientInterface *)self localeFromLastSuccessfulSetup];
      [v9 setLocale:v8];
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 setDataDispatcherContext:self->_dataDispatcherContext];
    }
  }

  [(CDMServiceCenter *)self->_serviceCenter handleCommand:v9 forCallback:v6];
}

- (void)waitForDataDispatcherCompletion
{
  v2 = +[CDMDataDispatcherCompletionQueue getDataDispatcherCompletionQueue];
  dispatch_barrier_async_and_wait(v2, &__block_literal_global_99);
}

void __54__CDMFoundationClient_waitForDataDispatcherCompletion__block_invoke()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    v2 = 136315394;
    v3 = "[CDMFoundationClient waitForDataDispatcherCompletion]_block_invoke";
    v4 = 2080;
    v5 = "[CDMFoundationClient waitForDataDispatcherCompletion]_block_invoke";
    _os_log_debug_impl(&dword_1DC287000, v0, OS_LOG_TYPE_DEBUG, "%s %s: all blocks in the background CDMDataDispatcherCompletionQueue have been completed.", &v2, 0x16u);
  }

  v1 = *MEMORY[0x1E69E9840];
}

- (void)processCDMNluRequest:(id)a3 nullableCompletionHandler:(id)a4
{
  v59 = *MEMORY[0x1E69E9840];
  v49 = a3;
  v6 = a4;
  v7 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v56 = "[CDMFoundationClient processCDMNluRequest:nullableCompletionHandler:]";
    v57 = 2112;
    v58 = v49;
    _os_log_impl(&dword_1DC287000, v7, OS_LOG_TYPE_INFO, "%s CDMClient processCDMNluRequest... %@", buf, 0x16u);
  }

  v8 = os_signpost_id_generate(CDMLogContext);
  v9 = CDMLogContext;
  v10 = v9;
  v11 = (v8 - 1);
  if ((v8 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "ondevice_nl_time", "On device NL process time enableTelemetry=YES", buf, 2u);
  }

  v12 = CDMLogContext;
  v13 = os_signpost_id_generate(CDMLogContext);
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v14 = v13;
    if (os_signpost_enabled(v12))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1DC287000, v12, OS_SIGNPOST_EVENT, v14, "requestSent", "RequestDispatcher calling CDM with CDMNluRequest", buf, 2u);
    }
  }

  delegate = self->_delegate;
  if (v6)
  {
    if (delegate)
    {
      v16 = [(CDMClientInterface *)self createNSError:@"Using processCDMNluRequest:completionHandler with delegate not supported" errorCode:1];
      v17 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v56 = "[CDMFoundationClient processCDMNluRequest:nullableCompletionHandler:]";
        _os_log_error_impl(&dword_1DC287000, v17, OS_LOG_TYPE_ERROR, "%s [ERR]: Using processCDMNluRequest:completionHandler with delegate is not supported use [CDMClient init]", buf, 0xCu);
      }

      v18 = CDMLogContext;
      v19 = v18;
      if (v11 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v18))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1DC287000, v19, OS_SIGNPOST_INTERVAL_END, v8, "ondevice_nl_time", " enableTelemetry=YES ", buf, 2u);
      }

      siri::ontology::resetSharedUsoVocabManager(v20);
      v6[2](v6, 0, v16);
      goto LABEL_49;
    }

LABEL_18:
    if (v49)
    {
      v21 = [v49 objcProto];
      v22 = v21 == 0;

      if (!v22)
      {
        v16 = [v49 objcProto];
        v23 = [CDMNluRequestID alloc];
        v24 = [v16 requestId];
        v48 = [(CDMNluRequestID *)v23 initWithObjcProto:v24];

        if ([(CDMClientInterface *)self successFromSetup])
        {
          objc_initWeak(buf, self);
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __70__CDMFoundationClient_processCDMNluRequest_nullableCompletionHandler___block_invoke;
          aBlock[3] = &unk_1E862E770;
          objc_copyWeak(v54, buf);
          v54[1] = v8;
          v53 = v6;
          v25 = v48;
          v51 = v25;
          v52 = self;
          v47 = _Block_copy(aBlock);
          v26 = [CDMAssistantNLUCommand alloc];
          v27 = [v16 requestId];
          v28 = [v27 connectionId];
          v29 = [(CDMAssistantNLUCommand *)v26 initWithNLURequest:v16 clientId:v28 dataDispatcherContext:self->_dataDispatcherContext];

          v30 = [(CDMServiceCenter *)self->_serviceCenter getAssetPaths];
          v31 = [v16 requestId];
          v32 = [CDMSELFLogUtil createSELFMetadataWithRequestId:v31];
          [CDMSELFLogUtil cdmAssetsReported:v30 metadata:v32 dataDispatcherContext:self->_dataDispatcherContext];

          siri::ontology::resetSharedUsoVocabManager([(CDMFoundationClient *)self doHandleCommand:v29 forCallback:v47]);
          objc_destroyWeak(v54);

          objc_destroyWeak(buf);
        }

        else
        {
          v42 = [(CDMClientInterface *)self createNSError:@"CDMClient not ready to process request errorCode:did you call setup and got success back?", 1];
          v43 = CDMLogContext;
          v44 = v43;
          if (v11 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v43))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1DC287000, v44, OS_SIGNPOST_INTERVAL_END, v8, "ondevice_nl_time", " enableTelemetry=YES ", buf, 2u);
          }

          if (v6)
          {
            v45 = (v6[2])(v6, 0, v42);
          }

          else
          {
            v45 = [(CDMClientDelegate *)self->_delegate processCDMNluRequestErrorCallback:v48 error:v42];
          }

          siri::ontology::resetSharedUsoVocabManager(v45);

          v25 = v48;
        }

        goto LABEL_48;
      }

      v16 = [(CDMClientInterface *)self createNSError:@"This should not be nil SIRINLUEXTERNALCDMNluRequest" errorCode:1];
      v25 = +[CDMFoundationClient createEmptyNluRequestId];
      v40 = CDMLogContext;
      v41 = v40;
      if (v11 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v40))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1DC287000, v41, OS_SIGNPOST_INTERVAL_END, v8, "ondevice_nl_time", " enableTelemetry=YES ", buf, 2u);
      }

      if (v6)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v16 = [(CDMClientInterface *)self createNSError:@"Trust but verify: got nil CDMNluRequest" errorCode:1];
      v25 = +[CDMFoundationClient createEmptyNluRequestId];
      v33 = CDMLogContext;
      v34 = v33;
      if (v11 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1DC287000, v34, OS_SIGNPOST_INTERVAL_END, v8, "ondevice_nl_time", " enableTelemetry=YES ", buf, 2u);
      }

      if (v6)
      {
LABEL_26:
        v35 = (v6[2])(v6, 0, v16);
LABEL_44:
        siri::ontology::resetSharedUsoVocabManager(v35);
LABEL_48:

LABEL_49:
        goto LABEL_50;
      }
    }

    v35 = [(CDMClientDelegate *)self->_delegate processCDMNluRequestErrorCallback:v25 error:v16];
    goto LABEL_44;
  }

  if (delegate)
  {
    goto LABEL_18;
  }

  v36 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v56 = "[CDMFoundationClient processCDMNluRequest:nullableCompletionHandler:]";
    _os_log_error_impl(&dword_1DC287000, v36, OS_LOG_TYPE_ERROR, "%s [ERR]: No delegate set? did you init with a valid delegate [CDMClient initWithDelegate:]?", buf, 0xCu);
  }

  v37 = CDMLogContext;
  v38 = v37;
  if (v11 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v37))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v38, OS_SIGNPOST_INTERVAL_END, v8, "ondevice_nl_time", " enableTelemetry=YES ", buf, 2u);
  }

  siri::ontology::resetSharedUsoVocabManager(v39);
LABEL_50:

  v46 = *MEMORY[0x1E69E9840];
}

void __70__CDMFoundationClient_processCDMNluRequest_nullableCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v8 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v33 = "[CDMFoundationClient processCDMNluRequest:nullableCompletionHandler:]_block_invoke";
      _os_log_impl(&dword_1DC287000, v8, OS_LOG_TYPE_INFO, "%s CDM graph finished processing, ready to send response back to SiriRequestDispatcher (SRD)", buf, 0xCu);
    }

    v9 = CDMLogContext;
    v10 = os_signpost_id_generate(CDMLogContext);
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v11 = v10;
      if (os_signpost_enabled(v9))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1DC287000, v9, OS_SIGNPOST_EVENT, v11, "responseReceivedRequestDispatcher received a SIRINLUResponse (or error) from CDM", "", buf, 2u);
      }
    }

    if (v6)
    {
      v12 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v29 = [v6 localizedDescription];
        v30 = v29;
        v31 = [v29 UTF8String];
        *buf = 136315394;
        v33 = "[CDMFoundationClient processCDMNluRequest:nullableCompletionHandler:]_block_invoke";
        v34 = 2080;
        v35 = v31;
        _os_log_error_impl(&dword_1DC287000, v12, OS_LOG_TYPE_ERROR, "%s [ERR]: %s", buf, 0x16u);
      }

      v13 = CDMLogContext;
      v14 = v13;
      v15 = *(a1 + 64);
      if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1DC287000, v14, OS_SIGNPOST_INTERVAL_END, v15, "ondevice_nl_time", " enableTelemetry=YES ", buf, 2u);
      }

      v16 = *(a1 + 48);
      if (v16)
      {
        (*(v16 + 16))(v16, 0, v6);
      }

      else
      {
        [WeakRetained[5] processCDMNluRequestErrorCallback:*(a1 + 32) error:v6];
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = v5;
        v18 = [v17 cdmNluResponse];
        v19 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v33 = "[CDMFoundationClient processCDMNluRequest:nullableCompletionHandler:]_block_invoke";
          v34 = 2112;
          v35 = v17;
          _os_log_impl(&dword_1DC287000, v19, OS_LOG_TYPE_INFO, "%s CDM graph finished processing, sending response back to SiriRequestDispatcher (SRD): %@", buf, 0x16u);
        }

        v20 = CDMLogContext;
        v21 = v20;
        v22 = *(a1 + 64);
        if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1DC287000, v21, OS_SIGNPOST_INTERVAL_END, v22, "ondevice_nl_time", " enableTelemetry=YES ", buf, 2u);
        }

        v23 = *(a1 + 48);
        if (v23)
        {
          (*(v23 + 16))(v23, v18, 0);
        }

        else
        {
          [*(*(a1 + 40) + 40) processCDMNluRequestCallback:v18];
        }
      }

      else
      {
        v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Expecting CDMGenericSendCommand, but got %@", v5];
        v18 = [WeakRetained createNSError:v17 errorCode:2];
        v24 = CDMLogContext;
        v25 = v24;
        v26 = *(a1 + 64);
        if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1DC287000, v25, OS_SIGNPOST_INTERVAL_END, v26, "ondevice_nl_time", " enableTelemetry=YES ", buf, 2u);
        }

        v27 = *(a1 + 48);
        if (v27)
        {
          (*(v27 + 16))(v27, 0, v18);
        }

        else
        {
          [WeakRetained[5] processCDMNluRequestErrorCallback:*(a1 + 32) error:v18];
        }
      }
    }
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (void)warmupWithCompletionHandler:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *location = 136315138;
    *&location[4] = "[CDMFoundationClient warmupWithCompletionHandler:]";
    _os_log_debug_impl(&dword_1DC287000, v5, OS_LOG_TYPE_DEBUG, "%s CDMClient warmup called", location, 0xCu);
  }

  nlSetupId = self->_nlSetupId;
  if (!nlSetupId)
  {
    v7 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    v8 = self->_nlSetupId;
    self->_nlSetupId = v7;

    v9 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v20 = [(NSUUID *)self->_nlSetupId UUIDString];
      *location = 136315394;
      *&location[4] = "[CDMFoundationClient warmupWithCompletionHandler:]";
      v26 = 2112;
      v27 = v20;
      _os_log_debug_impl(&dword_1DC287000, v9, OS_LOG_TYPE_DEBUG, "%s CDMClient warmup has no nlSetupId set. Minting: %@", location, 0x16u);
    }

    nlSetupId = self->_nlSetupId;
  }

  v10 = [MEMORY[0x1E69D13F8] convertFromUUID:nlSetupId];
  if (self->_dynamicConfig)
  {
    v11 = [CDMSELFLogUtil createSELFMetadataWithNlId:v10 andWithTrpId:0 andWithRequestId:0 andWithResultCandidateId:@"0" andWithConnectionId:self->_invocationSource];
    v12 = [(CDMDynamicConfig *)self->_dynamicConfig graphName];
    v13 = [CDMDynamicConfig resolveActiveGraph:v12];

    [CDMSELFLogUtil cdmClientWarmupStarted:v11 logMessage:@"SELF client warmup started message emitted" currentServiceGraph:[NSClassFromString(v13) getNLXSchemaCDMServiceGraphName] dataDispatcherContext:self->_dataDispatcherContext];
    v14 = [[CDMWarmupRequestCommand alloc] initWithDynamicConfig:self->_dynamicConfig selfMetadata:v11];
    v15 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *location = 136315394;
      *&location[4] = "[CDMFoundationClient warmupWithCompletionHandler:]";
      v26 = 2112;
      v27 = v14;
      _os_log_debug_impl(&dword_1DC287000, v15, OS_LOG_TYPE_DEBUG, "%s Created CDMWarmupCommand to pass into active graph, %@", location, 0x16u);
    }

    objc_initWeak(location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __51__CDMFoundationClient_warmupWithCompletionHandler___block_invoke;
    aBlock[3] = &unk_1E862E748;
    objc_copyWeak(&v24, location);
    v16 = v11;
    v22 = v16;
    v23 = v4;
    v17 = _Block_copy(aBlock);
    [(CDMFoundationClient *)self doHandleCommand:v14 forCallback:v17];

    objc_destroyWeak(&v24);
    objc_destroyWeak(location);
  }

  else
  {
    v16 = [(CDMClientInterface *)self createNSError:@"warmupWithCompletionHandler called but dynamicConfig is nil. Did you have a successful setup?" errorCode:3];
    v18 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *location = 136315394;
      *&location[4] = "[CDMFoundationClient warmupWithCompletionHandler:]";
      v26 = 2112;
      v27 = @"warmupWithCompletionHandler called but dynamicConfig is nil. Did you have a successful setup?";
      _os_log_error_impl(&dword_1DC287000, v18, OS_LOG_TYPE_ERROR, "%s [ERR]: %@", location, 0x16u);
    }

    v13 = [CDMSELFLogUtil createSELFMetadataWithNlId:v10 andWithTrpId:0 andWithRequestId:0 andWithResultCandidateId:@"0" andWithConnectionId:self->_invocationSource];
    +[CDMSELFLogUtil cdmClientWarmupFailed:errorDomain:errorCode:logMessage:dataDispatcherContext:](CDMSELFLogUtil, "cdmClientWarmupFailed:errorDomain:errorCode:logMessage:dataDispatcherContext:", v13, 1, [v16 code], @"SELF client warmup failed message emitted", self->_dataDispatcherContext);
    (*(v4 + 2))(v4, v16);
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __51__CDMFoundationClient_warmupWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v8 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v14 = 136315650;
      v15 = "[CDMFoundationClient warmupWithCompletionHandler:]_block_invoke";
      v16 = 2112;
      v17 = v5;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_1DC287000, v8, OS_LOG_TYPE_INFO, "%s CDM graph finished processing, output=%@, error=%@", &v14, 0x20u);
    }

    if (v6)
    {
      v9 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = [v6 localizedDescription];
        v12 = v11;
        v13 = [v11 UTF8String];
        v14 = 136315394;
        v15 = "[CDMFoundationClient warmupWithCompletionHandler:]_block_invoke";
        v16 = 2080;
        v17 = v13;
        _os_log_error_impl(&dword_1DC287000, v9, OS_LOG_TYPE_ERROR, "%s [ERR]: %s", &v14, 0x16u);
      }

      +[CDMSELFLogUtil cdmClientWarmupFailed:errorDomain:errorCode:logMessage:dataDispatcherContext:](CDMSELFLogUtil, "cdmClientWarmupFailed:errorDomain:errorCode:logMessage:dataDispatcherContext:", *(a1 + 32), 2, [v6 code], @"SELF client warmup failed message emitted", WeakRetained[11]);
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      (*(*(a1 + 40) + 16))();
      [CDMSELFLogUtil cdmClientWarmupEnded:*(a1 + 32) logMessage:@"SELF client warmup ended message emitted" dataDispatcherContext:WeakRetained[11]];
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)setup:(id)a3 nullableCompletionHandler:(id)a4
{
  v70 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v56 = a4;
  v7 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v65 = "[CDMFoundationClient setup:nullableCompletionHandler:]";
    v66 = 2112;
    v67 = v6;
    _os_log_impl(&dword_1DC287000, v7, OS_LOG_TYPE_INFO, "%s CDMClient setup... %@", buf, 0x16u);
  }

  +[CDMDeviceStateLogger logThermalState];
  [(CDMDeviceStateLogger *)self->_deviceStateLogger monitorMemoryPressure];
  v8 = CDMLogContext;
  v9 = os_signpost_id_generate(CDMLogContext);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v10 = v9;
    if (os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1DC287000, v8, OS_SIGNPOST_EVENT, v10, "cdmClientSetupSentCDMClient calling CDM to setup", "", buf, 2u);
    }
  }

  v11 = [v6 nlSetupId];
  v12 = v11 == 0;

  if (v12)
  {
    v15 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    nlSetupId = self->_nlSetupId;
    self->_nlSetupId = v15;

    p_super = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEBUG))
    {
      v50 = [(NSUUID *)self->_nlSetupId UUIDString];
      *buf = 136315394;
      v65 = "[CDMFoundationClient setup:nullableCompletionHandler:]";
      v66 = 2112;
      v67 = v50;
      _os_log_debug_impl(&dword_1DC287000, p_super, OS_LOG_TYPE_DEBUG, "%s CDMClient setup has not nlSetupId set. Minting: %@", buf, 0x16u);
    }
  }

  else
  {
    v13 = [v6 nlSetupId];
    p_super = &self->_nlSetupId->super;
    self->_nlSetupId = v13;
  }

  v17 = [v6 invocationSource];
  invocationSource = self->_invocationSource;
  self->_invocationSource = v17;

  v19 = [MEMORY[0x1E69D13F8] convertFromUUID:self->_nlSetupId];
  v20 = self->_invocationSource;
  v53 = v19;
  v57 = [CDMSELFLogUtil createSELFMetadataWithNlId:"createSELFMetadataWithNlId:andWithTrpId:andWithRequestId:andWithResultCandidateId:andWithConnectionId:" andWithTrpId:? andWithRequestId:? andWithResultCandidateId:? andWithConnectionId:?];
  v21 = [v6 activeServiceGraph];
  aClassName = [CDMDynamicConfig resolveActiveGraph:v21];

  [CDMSELFLogUtil cdmClientSetupStarted:v57 logMessage:@"SELF client setup started message emitted" currentServiceGraph:[NSClassFromString(aClassName) getNLXSchemaCDMServiceGraphName] dataDispatcherContext:self->_dataDispatcherContext];
  if (v6)
  {
    v22 = [v6 localeIdentifier];
    v52 = v22;
    if (!v22)
    {
      v30 = [(CDMClientInterface *)self createNSError:@"CDMClientSetup does not have locale?" errorCode:1];
      [(CDMFoundationClient *)self setValue:v30 forKey:@"errorFromSetup"];
      [CDMSELFLogUtil cdmClientSetupFailed:v57 errorDomain:1 errorCode:2 logMessage:@"SELF client setup failed message emitted" dataDispatcherContext:self->_dataDispatcherContext];
      if (v56)
      {
        v56[2](v56, v30);
      }

      goto LABEL_31;
    }

    v23 = [v22 localeIdentifier];
    v51 = [CDMPlatformUtils normalizeLocaleIdentifier:v23];

    v24 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = [v52 debugDescription];
      *buf = 136315650;
      v65 = "[CDMFoundationClient setup:nullableCompletionHandler:]";
      v66 = 2112;
      v67 = v25;
      v68 = 2112;
      v69 = v51;
      _os_log_impl(&dword_1DC287000, v24, OS_LOG_TYPE_INFO, "%s Received CDMClientSetup with locale=%@ normalized to %@", buf, 0x20u);
    }

    if ([(CDMFoundationClient *)self isLighthouseAPIEnabled])
    {
      v26 = [v6 assetDirPath];
      v27 = [v6 overrideSiriVocabSpans];
      v28 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v65 = "[CDMFoundationClient setup:nullableCompletionHandler:]";
        v66 = 2112;
        v67 = v26;
        v68 = 2112;
        v69 = v27;
        _os_log_debug_impl(&dword_1DC287000, v28, OS_LOG_TYPE_DEBUG, "%s SiriMini lighthouse API is enabled. Got asset dir path: %@, overrides Siri vocabulary spans: %@.", buf, 0x20u);
      }
    }

    else
    {
      v31 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v65 = "[CDMFoundationClient setup:nullableCompletionHandler:]";
        _os_log_debug_impl(&dword_1DC287000, v31, OS_LOG_TYPE_DEBUG, "%s SiriMini lighthouse API is disabled.", buf, 0xCu);
      }

      v32 = [v6 assetDirPath];
      if (v32)
      {
      }

      else
      {
        v33 = [v6 overrideSiriVocabSpans];
        v34 = v33 == 0;

        if (v34)
        {
          v37 = 0;
          v54 = 0;
          goto LABEL_30;
        }
      }

      v28 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v35 = [v6 assetDirPath];
        v36 = [v6 overrideSiriVocabSpans];
        *buf = 136315650;
        v65 = "[CDMFoundationClient setup:nullableCompletionHandler:]";
        v66 = 2112;
        v67 = v35;
        v68 = 2112;
        v69 = v36;
        _os_log_impl(&dword_1DC287000, v28, OS_LOG_TYPE_INFO, "%s [WARN]: CDM got asset dir path: %@, overrides Siri vocabulary spans: %@. However, SiriMini lighthouse API is disabled. You are holding it wrong! CDM will ignore above parameters.", buf, 0x20u);
      }

      v27 = 0;
      v26 = 0;
    }

    v37 = v27;
    v54 = v26;
LABEL_30:
    v38 = [CDMDynamicConfig alloc];
    v39 = [v6 embeddingVersion];
    v40 = [v6 activeServiceGraph];
    v41 = [v6 sandboxId];
    v42 = [v6 serviceStateDirectory];
    v43 = [(CDMDynamicConfig *)v38 initWithLanguageCode:v51 embeddingVersion:v39 graphName:v40 sandboxId:v41 assetPaths:0 assetDirPath:v54 overrideSiriVocabSpans:v37 overrideMentions:0 overrideContextualSpans:0 serviceStateDirectory:v42];
    dynamicConfig = self->_dynamicConfig;
    self->_dynamicConfig = v43;

    objc_initWeak(buf, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __55__CDMFoundationClient_setup_nullableCompletionHandler___block_invoke;
    aBlock[3] = &unk_1E862E720;
    objc_copyWeak(&v63, buf);
    v45 = v6;
    v59 = v45;
    v60 = v52;
    v46 = v57;
    v61 = v46;
    v62 = v56;
    v47 = _Block_copy(aBlock);
    v48 = -[CDMSetupRequestCommand initWithDynamicConfig:selfMetadata:dataDispatcherContext:shouldPerformWarmup:]([CDMSetupRequestCommand alloc], "initWithDynamicConfig:selfMetadata:dataDispatcherContext:shouldPerformWarmup:", self->_dynamicConfig, v46, self->_dataDispatcherContext, [v45 shouldPerformWarmup]);
    [(CDMFoundationClient *)self doHandleCommand:v48 forCallback:v47];

    objc_destroyWeak(&v63);
    objc_destroyWeak(buf);

    v30 = v51;
LABEL_31:

    v29 = v52;
    goto LABEL_32;
  }

  v29 = [(CDMClientInterface *)self createNSError:@"Trust but verify: got nil CDMClientSetup" errorCode:1];
  [(CDMFoundationClient *)self setValue:v29 forKey:@"errorFromSetup"];
  [CDMSELFLogUtil cdmClientSetupFailed:v57 errorDomain:1 errorCode:1 logMessage:@"SELF client setup failed message emitted" dataDispatcherContext:self->_dataDispatcherContext];
  if (v56)
  {
    v56[2](v56, v29);
  }

LABEL_32:

  v49 = *MEMORY[0x1E69E9840];
}

void __55__CDMFoundationClient_setup_nullableCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v6 = CDMLogContext;
    v7 = os_signpost_id_generate(CDMLogContext);
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v8 = v7;
      if (os_signpost_enabled(v6))
      {
        LOWORD(v27) = 0;
        _os_signpost_emit_with_name_impl(&dword_1DC287000, v6, OS_SIGNPOST_EVENT, v8, "cdmClientSetupReceivedCDM finished setup", "", &v27, 2u);
      }
    }

    v9 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v27 = 136315138;
      v28 = "[CDMFoundationClient setup:nullableCompletionHandler:]_block_invoke";
      _os_log_impl(&dword_1DC287000, v9, OS_LOG_TYPE_INFO, "%s CDM finished processing CDMSetupRequestCommand during setup", &v27, 0xCu);
    }

    if (v4)
    {
      v10 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v24 = [v4 localizedDescription];
        v25 = v24;
        v26 = [v24 UTF8String];
        v27 = 136315394;
        v28 = "[CDMFoundationClient setup:nullableCompletionHandler:]_block_invoke";
        v29 = 2080;
        v30 = v26;
        _os_log_error_impl(&dword_1DC287000, v10, OS_LOG_TYPE_ERROR, "%s [ERR]: Setup failed: %s", &v27, 0x16u);
      }

      v11 = [*(a1 + 32) activeServiceGraph];
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = v11 == v13;

      if (v14)
      {
        [CDMAutoBugCapture reportUnsafeWithType:@"setupFailure" subType:@"setupFailureForNLUGraph"];
      }

      v15 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v27 = 136315138;
        v28 = "[CDMFoundationClient setup:nullableCompletionHandler:]_block_invoke";
        _os_log_debug_impl(&dword_1DC287000, v15, OS_LOG_TYPE_DEBUG, "%s Set CDMClient KVO as setup error", &v27, 0xCu);
      }

      [WeakRetained setValue:v4 forKey:@"errorFromSetup"];
      v16 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v27 = 136315138;
        v28 = "[CDMFoundationClient setup:nullableCompletionHandler:]_block_invoke";
        _os_log_debug_impl(&dword_1DC287000, v16, OS_LOG_TYPE_DEBUG, "%s Send CoreAnalytics", &v27, 0xCu);
      }

      v17 = [*(a1 + 40) languageCode];
      [CDMAnalytics recordCDMSetupFailureEvent:v17 withError:v4];

      v18 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v27 = 136315138;
        v28 = "[CDMFoundationClient setup:nullableCompletionHandler:]_block_invoke";
        _os_log_debug_impl(&dword_1DC287000, v18, OS_LOG_TYPE_DEBUG, "%s SELF Logging - client setup fail", &v27, 0xCu);
      }

      +[CDMSELFLogUtil cdmClientSetupFailed:errorDomain:errorCode:logMessage:dataDispatcherContext:](CDMSELFLogUtil, "cdmClientSetupFailed:errorDomain:errorCode:logMessage:dataDispatcherContext:", *(a1 + 48), 2, [v4 code], @"SELF client setup failed message emitted", WeakRetained[11]);
      v19 = *(a1 + 56);
      if (v19)
      {
        (*(v19 + 16))(v19, v4);
      }
    }

    else
    {
      v20 = [*(a1 + 40) languageCode];
      [CDMAnalytics recordCDMSetupSuccessEvent:v20];

      [WeakRetained setSuccessfulLocale:*(a1 + 40)];
      v21 = [MEMORY[0x1E696AD98] numberWithBool:1];
      [WeakRetained setValue:v21 forKey:@"successFromSetup"];

      [CDMSELFLogUtil cdmClientSetupEnded:*(a1 + 48) logMessage:@"SELF client setup ended message emitted" dataDispatcherContext:WeakRetained[11]];
      v22 = *(a1 + 56);
      if (v22)
      {
        (*(v22 + 16))(v22, 0);
      }
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (BOOL)registerWithAssetsDelegate:(id)a3 withType:(int64_t)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    assetsLocaleIdentifier = self->_assetsLocaleIdentifier;
    v12 = 136315394;
    v13 = "[CDMFoundationClient registerWithAssetsDelegate:withType:]";
    v14 = 2112;
    v15 = assetsLocaleIdentifier;
    _os_log_debug_impl(&dword_1DC287000, v7, OS_LOG_TYPE_DEBUG, "%s Register assets delegate for CDMFoundationClient for locale: %@", &v12, 0x16u);
  }

  v8 = [CDMAssetsUtils registerWithAssetsDelegate:v6 withType:a4 withLocale:self->_assetsLocaleIdentifier];
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)areAssetsAvailable:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [v4 localeIdentifier];
      v17 = 136315394;
      v18 = "[CDMFoundationClient areAssetsAvailable:]";
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s Are assets available called with locale: %@.", &v17, 0x16u);
    }

    v7 = [v4 localeIdentifier];
    assetsLocaleIdentifier = self->_assetsLocaleIdentifier;
    self->_assetsLocaleIdentifier = v7;

    v9 = [CDMPlatformUtils normalizeLocaleIdentifier:self->_assetsLocaleIdentifier];
    v10 = self->_assetsLocaleIdentifier;
    self->_assetsLocaleIdentifier = v9;

    v11 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = self->_assetsLocaleIdentifier;
      v17 = 136315394;
      v18 = "[CDMFoundationClient areAssetsAvailable:]";
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_1DC287000, v11, OS_LOG_TYPE_INFO, "%s Normalized localeIdentifier: %@", &v17, 0x16u);
    }

    v13 = [(CDMServiceCenter *)self->_serviceCenter areAssetsAvailable:self->_assetsLocaleIdentifier];
  }

  else
  {
    v14 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315394;
      v18 = "[CDMFoundationClient areAssetsAvailable:]";
      v19 = 2112;
      v20 = 0;
      _os_log_error_impl(&dword_1DC287000, v14, OS_LOG_TYPE_ERROR, "%s [ERR]: I NEED localeIdentifier=%@", &v17, 0x16u);
    }

    v13 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v13;
}

- (CDMFoundationClient)initWithDelegate:(id)a3 withCallingBundleId:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[CDMDataDispatcherContext alloc] initWithCallingBundleId:v7];
  dataDispatcherContext = self->_dataDispatcherContext;
  self->_dataDispatcherContext = v8;

  v10 = [(CDMFoundationClient *)self initWithDelegate:v6];
  return v10;
}

- (CDMFoundationClient)initWithDelegate:(id)a3
{
  objc_storeStrong(&self->_delegate, a3);

  return [(CDMFoundationClient *)self init];
}

- (CDMFoundationClient)initWithCallingBundleId:(id)a3
{
  v4 = a3;
  v5 = [[CDMDataDispatcherContext alloc] initWithCallingBundleId:v4];
  dataDispatcherContext = self->_dataDispatcherContext;
  self->_dataDispatcherContext = v5;

  v7 = [(CDMFoundationClient *)self init];
  return v7;
}

- (CDMFoundationClient)initWithServiceCenter:(id)a3 withEventRegister:(id)a4
{
  v7 = a3;
  v8 = a4;
  +[CDMLogging CDMLogInitIfNeeded];
  dynamicConfig = self->_dynamicConfig;
  self->_dynamicConfig = 0;

  nlSetupId = self->_nlSetupId;
  self->_nlSetupId = 0;

  invocationSource = self->_invocationSource;
  self->_invocationSource = 0;

  objc_storeStrong(&self->_serviceCenter, a3);
  objc_storeStrong(&self->_eventRegister, a4);
  v12 = objc_alloc_init(CDMDeviceStateLogger);
  deviceStateLogger = self->_deviceStateLogger;
  self->_deviceStateLogger = v12;

  return self;
}

+ (id)createEmptyNluRequestId
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "+[CDMFoundationClient createEmptyNluRequestId]";
    _os_log_impl(&dword_1DC287000, v2, OS_LOG_TYPE_INFO, "%s [WARN]: Creating an empty CDMNluRequestID object to send back", &v7, 0xCu);
  }

  v3 = objc_alloc_init(MEMORY[0x1E69D11C0]);
  [v3 setIdA:@"received-invalid-CDMNluRequest"];
  [v3 setConnectionId:@"received-invalid-CDMNluRequest"];
  v4 = [[CDMNluRequestID alloc] initWithObjcProto:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

@end