@interface CDMServiceCenter
+ (id)getDynamicConfigWithAssetCollectionForGraph:(id)graph withLocale:(id)locale withError:(id *)error withSelfMetadata:(id)metadata;
- (BOOL)areAssetsAvailable:(id)available;
- (BOOL)handleXPCActivity:(id)activity fromIdentifier:(id)identifier withRegister:(id)register;
- (BOOL)handleXPCEvent:(id)event fromStream:(id)stream withRegister:(id)register;
- (BOOL)isServiceNotReady:(id)ready withServiceStateMap:(id)map;
- (CDMServiceCenter)initWithConfig:(id)config;
- (id)extractEnabledServiceNames:(id)names;
- (id)getEnabledDAGServiceNamesForGraph:(id)graph;
- (id)getServicesToWarmup:(id)warmup;
- (void)cleanup;
- (void)dealloc;
- (void)handleCommand:(id)command forCallback:(id)callback;
- (void)handleSetup:(id)setup forCallback:(id)callback;
- (void)handleWarmup:(id)warmup forCallback:(id)callback;
- (void)mergeConfig:(id)config;
- (void)setupAssetsForCDMAssetsInfo:(id)info withError:(id *)error andSelfMetadata:(id)metadata dataDispatcherContext:(id)context;
- (void)setupCDMAssetManagerWithError:(id *)error;
- (void)setupEmbeddingConfigsWithError:(id *)error;
- (void)smService:(id)service didPublishCommand:(id)command;
- (void)smService:(id)service didPublishRequest:(id)request withResponseCallback:(id)callback;
@end

@implementation CDMServiceCenter

- (void)dealloc
{
  [(CDMServiceCenter *)self cleanup];
  v3.receiver = self;
  v3.super_class = CDMServiceCenter;
  [(CDMServiceCenter *)&v3 dealloc];
}

- (void)cleanup
{
  services = self->_services;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __27__CDMServiceCenter_cleanup__block_invoke;
  v5[3] = &unk_1E862E398;
  v5[4] = self;
  [(NSArray *)services enumerateObjectsUsingBlock:v5];
  serviceGraphRunner = self->_serviceGraphRunner;
  if (serviceGraphRunner)
  {
    [(CDMServiceCenter *)self removeObserver:serviceGraphRunner forKeyPath:@"systemState"];
  }
}

- (void)smService:(id)service didPublishRequest:(id)request withResponseCallback:(id)callback
{
  v21 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  requestCopy = request;
  callbackCopy = callback;
  v11 = CDMOSLoggerForCategory(3);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    commandName = [requestCopy commandName];
    serviceName = [serviceCopy serviceName];
    v15 = 136315650;
    v16 = "[CDMServiceCenter smService:didPublishRequest:withResponseCallback:]";
    v17 = 2112;
    v18 = commandName;
    v19 = 2112;
    v20 = serviceName;
    _os_log_impl(&dword_1DC287000, v11, OS_LOG_TYPE_INFO, "%s Command: %@ Service: %@", &v15, 0x20u);
  }

  [(CDMServiceCenter *)self handleCommand:requestCopy forCallback:callbackCopy];
  v14 = *MEMORY[0x1E69E9840];
}

- (void)smService:(id)service didPublishCommand:(id)command
{
  v18 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  commandCopy = command;
  v8 = CDMOSLoggerForCategory(3);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    commandName = [commandCopy commandName];
    serviceName = [serviceCopy serviceName];
    v12 = 136315650;
    v13 = "[CDMServiceCenter smService:didPublishCommand:]";
    v14 = 2112;
    v15 = commandName;
    v16 = 2112;
    v17 = serviceName;
    _os_log_impl(&dword_1DC287000, v8, OS_LOG_TYPE_INFO, "%s Command: %@ Service: %@", &v12, 0x20u);
  }

  [(CDMServiceCenter *)self handleCommand:commandCopy forCallback:self->_defaultCallback];
  v11 = *MEMORY[0x1E69E9840];
}

- (void)setupEmbeddingConfigsWithError:(id *)error
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = [CDMEmbeddingConfigs alloc];
  assetPaths = [(CDMDynamicConfig *)self->_currentConfig assetPaths];
  embeddingVersion = [(CDMDynamicConfig *)self->_currentConfig embeddingVersion];
  v8 = [(CDMEmbeddingConfigs *)v5 initWithAssetPaths:assetPaths embeddingVersion:embeddingVersion];

  v13 = 0;
  [(CDMEmbeddingConfigs *)v8 setupWithError:&v13];
  v9 = v13;
  if (v9)
  {
    v10 = CDMOSLoggerForCategory(3);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v15 = "[CDMServiceCenter setupEmbeddingConfigsWithError:]";
      _os_log_error_impl(&dword_1DC287000, v10, OS_LOG_TYPE_ERROR, "%s [ERR]: Error occurs while setup setup CDM embedding configs.", buf, 0xCu);
    }

    v11 = v9;
    *error = v9;
  }

  else
  {
    [(CDMDynamicConfig *)self->_currentConfig setEmbeddingConfigs:v8];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)setupCDMAssetManagerWithError:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = os_signpost_id_generate(CDMLogContext);
  v6 = CDMLogContext;
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "CDMServiceCenterAssetsSetup", "CDM Service Center setupCDMAssetManagerWithError enableTelemetry=YES", buf, 2u);
  }

  graphName = [(CDMDynamicConfig *)self->_currentConfig graphName];
  v9 = NSClassFromString(graphName);
  languageCode = [(CDMDynamicConfig *)self->_currentConfig languageCode];
  v11 = [(objc_class *)v9 getAssetsForSetup:languageCode];

  v12 = +[CDMAssetsManager getSingletonCDMAssetsManager];
  v13 = MEMORY[0x1E695DF58];
  languageCode2 = [(CDMDynamicConfig *)self->_currentConfig languageCode];
  v15 = [v13 localeWithLocaleIdentifier:languageCode2];
  v24 = 0;
  [v12 setupForLocale:v15 cdmAssetsInfo:v11 error:&v24];
  v16 = v24;

  v17 = CDMLogContext;
  v18 = v17;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v18, OS_SIGNPOST_INTERVAL_END, v5, "CDMServiceCenterAssetsSetup", " enableTelemetry=YES ", buf, 2u);
  }

  if (v16)
  {
    v19 = CDMOSLoggerForCategory(3);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      languageCode3 = [(CDMDynamicConfig *)self->_currentConfig languageCode];
      assetDirPath = [(CDMDynamicConfig *)self->_currentConfig assetDirPath];
      *buf = 136315650;
      v26 = "[CDMServiceCenter setupCDMAssetManagerWithError:]";
      v27 = 2114;
      v28 = languageCode3;
      v29 = 2114;
      v30 = assetDirPath;
      _os_log_error_impl(&dword_1DC287000, v19, OS_LOG_TYPE_ERROR, "%s [ERR]: Error occurs while setup CDMAssetsManager with locale: %{public}@, asset dir path: %{public}@. Return NO.", buf, 0x20u);
    }

    v20 = v16;
    *error = v16;
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)setupAssetsForCDMAssetsInfo:(id)info withError:(id *)error andSelfMetadata:(id)metadata dataDispatcherContext:(id)context
{
  v65[1] = *MEMORY[0x1E69E9840];
  infoCopy = info;
  metadataCopy = metadata;
  contextCopy = context;
  v11 = os_signpost_id_generate(CDMLogContext);
  v12 = CDMLogContext;
  v13 = v12;
  v53 = v11 - 1;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "CDMServiceCenterSetupAssetsForServices", "CDM Service Center setupAssetsForServices enableTelemetry=YES", buf, 2u);
  }

  spid = v11;

  v14 = objc_alloc_init(MEMORY[0x1E696AFB0]);
  [CDMSELFLogUtil cdmAssetSetupStarted:metadataCopy contextId:v14 serviceNames:0 logMessage:@"SELF asset setup started message emitted" dataDispatcherContext:contextCopy];
  v15 = +[CDMAssetsManager getSingletonCDMAssetsManager];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  graphName = [(CDMDynamicConfig *)selfCopy->_currentConfig graphName];
  v18 = NSClassFromString(graphName);
  languageCode = [(CDMDynamicConfig *)selfCopy->_currentConfig languageCode];
  v20 = [(objc_class *)v18 getAssetsForSetup:languageCode];

  languageCode2 = [(CDMDynamicConfig *)selfCopy->_currentConfig languageCode];
  LODWORD(graphName) = [v15 shouldReSetupForLocale:languageCode2 cdmAssetsInfo:v20];

  if (graphName && (v57 = 0, [(CDMServiceCenter *)selfCopy setupCDMAssetManagerWithError:&v57], (v22 = v57) != 0))
  {
    v23 = v22;
    v24 = MEMORY[0x1E696AEC0];
    languageCode3 = [(CDMDynamicConfig *)selfCopy->_currentConfig languageCode];
    assetDirPath = [(CDMDynamicConfig *)selfCopy->_currentConfig assetDirPath];
    v51 = [v24 stringWithFormat:@"Error occurs while initializing CDMAssetsManager with locale: %@, asset dir path: %@.", languageCode3, assetDirPath];

    v27 = MEMORY[0x1E696ABC0];
    v64 = *MEMORY[0x1E696A578];
    v65[0] = v51;
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v65 forKeys:&v64 count:1];
    *error = [v27 errorWithDomain:@"CDMServiceCenter" code:0 userInfo:v28];

    v29 = CDMOSLoggerForCategory(3);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v61 = "[CDMServiceCenter setupAssetsForCDMAssetsInfo:withError:andSelfMetadata:dataDispatcherContext:]";
      v62 = 2114;
      v63 = v51;
      _os_log_error_impl(&dword_1DC287000, v29, OS_LOG_TYPE_ERROR, "%s [ERR]: %{public}@", buf, 0x16u);
    }

    userInfo = [v23 userInfo];
    v31 = [userInfo objectForKey:@"CDMAssetSetupErrorDomain"];

    +[CDMSELFLogUtil cdmAssetSetupFailed:contextId:errorDomain:errorCode:logMessage:dataDispatcherContext:](CDMSELFLogUtil, "cdmAssetSetupFailed:contextId:errorDomain:errorCode:logMessage:dataDispatcherContext:", metadataCopy, v14, [v31 intValue], objc_msgSend(v23, "code"), @"SELF asset setup failed (CDMAssetsManager initialization error) message emitted", contextCopy);
    v32 = CDMLogContext;
    v33 = v32;
    if (v53 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1DC287000, v33, OS_SIGNPOST_INTERVAL_END, spid, "CDMServiceCenterSetupAssetsForServices", " enableTelemetry=YES ", buf, 2u);
    }

    objc_sync_exit(selfCopy);
  }

  else
  {

    objc_sync_exit(selfCopy);
    currentConfig = selfCopy->_currentConfig;
    p_currentConfig = &selfCopy->_currentConfig;
    assetDirPath2 = [(CDMDynamicConfig *)currentConfig assetDirPath];
    v37 = MEMORY[0x1E695DF58];
    languageCode4 = [*p_currentConfig languageCode];
    v39 = [v37 localeWithLocaleIdentifier:languageCode4];
    v40 = [v15 getAssetsByFactorNamesForCDMAssetsInfo:infoCopy assetDirPath:assetDirPath2 locale:v39];
    [(CDMDynamicConfig *)currentConfig setAssetPaths:v40];

    assetCollection = [*p_currentConfig assetCollection];
    assetPaths = [assetCollection assetPaths];
    [CDMSELFLogUtil cdmAssetsReported:assetPaths metadata:metadataCopy dataDispatcherContext:contextCopy];

    assetPaths2 = [*p_currentConfig assetPaths];
    v56 = 0;
    LOBYTE(assetDirPath2) = [v15 areAssetsAvailableForCDMAssetsInfo:infoCopy factorToAsset:assetPaths2 withError:&v56 withSelfMetadata:metadataCopy withSelfContextId:v14 withDataDispatcherContext:contextCopy];
    selfCopy = v56;

    if (assetDirPath2)
    {
      [CDMSELFLogUtil cdmAssetSetupEnded:metadataCopy contextId:v14 logMessage:@"SELF asset setup ended message emitted" dataDispatcherContext:contextCopy];
      v44 = CDMLogContext;
      v45 = v44;
      if (v53 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v44))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1DC287000, v45, OS_SIGNPOST_INTERVAL_END, spid, "CDMServiceCenterSetupAssetsForServices", " enableTelemetry=YES ", buf, 2u);
      }
    }

    else
    {
      v46 = MEMORY[0x1E696ABC0];
      v58[0] = *MEMORY[0x1E696A578];
      localizedDescription = [(CDMServiceCenter *)selfCopy localizedDescription];
      v59[0] = localizedDescription;
      v58[1] = *MEMORY[0x1E696A588];
      localizedFailureReason = [(CDMServiceCenter *)selfCopy localizedFailureReason];
      v59[1] = localizedFailureReason;
      v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:v58 count:2];
      *error = [v46 errorWithDomain:@"CDMServiceCenter" code:0 userInfo:v49];

      [CDMSELFLogUtil cdmAssetSetupFailed:metadataCopy contextId:v14 errorDomain:2 errorCode:1 logMessage:@"SELF asset setup failed (not all assets available) message emitted" dataDispatcherContext:contextCopy];
    }
  }

  v50 = *MEMORY[0x1E69E9840];
}

- (BOOL)handleXPCActivity:(id)activity fromIdentifier:(id)identifier withRegister:(id)register
{
  v42 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  identifierCopy = identifier;
  registerCopy = register;
  v8 = objc_alloc_init(MEMORY[0x1E69D11C0]);
  v9 = MEMORY[0x1E696AEC0];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v12 = [v9 stringWithFormat:@"%@:0", uUIDString];
  [v8 setIdA:v12];

  v13 = CDMOSLoggerForCategory(3);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v33 = [v8 idA];
    *buf = 136315394;
    v39 = "[CDMServiceCenter handleXPCActivity:fromIdentifier:withRegister:]";
    v40 = 2112;
    v41 = v33;
    _os_log_debug_impl(&dword_1DC287000, v13, OS_LOG_TYPE_DEBUG, "%s Generated request id with UUID: %@", buf, 0x16u);
  }

  v34 = v8;
  v14 = [CDMSELFLogUtil createSELFMetadataWithRequestId:v8];
  v15 = objc_alloc_init(MEMORY[0x1E696AFB0]);
  v16 = objc_alloc_init(CDMDataDispatcherContext);
  [CDMSELFLogUtil cdmXpcProcessingStarted:v15 xpcType:2 xpcSystemEventType:[CDMSELFLogUtil stringXPCSystemEventTypeToEnum:identifierCopy] serviceName:0 metadata:v14 logMessage:@"SELF CDM XPC Processing started log emitted" dataDispatcherContext:v16];
  v17 = objc_alloc_init(CDMConfig);
  v18 = MEMORY[0x1E695DF58];
  defaultLocaleIdentifier = [(CDMConfig *)v17 defaultLocaleIdentifier];
  v20 = [v18 localeWithLocaleIdentifier:defaultLocaleIdentifier];

  v37 = 0;
  v21 = [CDMServiceCenter getDynamicConfigWithAssetCollectionForGraph:@"CDMNLUServiceGraph" withLocale:v20 withError:&v37 withSelfMetadata:0];
  v22 = v37;
  if (v22)
  {
    identifierCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to set up assets. Aborting XPC activity handling for (identifier=%@).", identifierCopy];
    v24 = CDMOSLoggerForCategory(3);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v39 = "[CDMServiceCenter handleXPCActivity:fromIdentifier:withRegister:]";
      v40 = 2114;
      v41 = identifierCopy;
      _os_log_error_impl(&dword_1DC287000, v24, OS_LOG_TYPE_ERROR, "%s [ERR]: %{public}@", buf, 0x16u);
    }

    v25 = v15;
    v26 = 3;
LABEL_12:
    [CDMSELFLogUtil cdmXpcProcessingFailed:v25 reason:v26 errorCode:1 metadata:v14 logMessage:identifierCopy dataDispatcherContext:v16];

    v29 = 0;
    goto LABEL_13;
  }

  assetCollection = [v21 assetCollection];
  v28 = [registerCopy handleXPCActivity:activityCopy fromIdentifier:identifierCopy withAssetCollection:assetCollection withSelfMetadata:v14];

  if ((v28 & 1) == 0)
  {
    identifierCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"[CDMServiceCenter -handleXPCActivity:fromStream:withRegister:] called with unhandled XPC activity (identifier=%@)", identifierCopy];
    v30 = CDMOSLoggerForCategory(3);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v39 = "[CDMServiceCenter handleXPCActivity:fromIdentifier:withRegister:]";
      v40 = 2114;
      v41 = identifierCopy;
      _os_log_error_impl(&dword_1DC287000, v30, OS_LOG_TYPE_ERROR, "%s [ERR]: %{public}@", buf, 0x16u);
    }

    v25 = v15;
    v26 = 2;
    goto LABEL_12;
  }

  [CDMSELFLogUtil cdmXpcProcessingEnded:v15 metadata:v14 logMessage:@"SELF CDM XPC Processing ended log emitted" dataDispatcherContext:v16];
  v29 = 1;
LABEL_13:

  v31 = *MEMORY[0x1E69E9840];
  return v29;
}

- (BOOL)handleXPCEvent:(id)event fromStream:(id)stream withRegister:(id)register
{
  v45 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  streamCopy = stream;
  registerCopy = register;
  v9 = objc_alloc_init(MEMORY[0x1E69D11C0]);
  v10 = MEMORY[0x1E696AEC0];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v13 = [v10 stringWithFormat:@"%@:0", uUIDString];
  [v9 setIdA:v13];

  v14 = CDMOSLoggerForCategory(3);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v35 = [v9 idA];
    *buf = 136315394;
    v42 = "[CDMServiceCenter handleXPCEvent:fromStream:withRegister:]";
    v43 = 2112;
    v44 = v35;
    _os_log_debug_impl(&dword_1DC287000, v14, OS_LOG_TYPE_DEBUG, "%s Generated request id with UUID: %@", buf, 0x16u);
  }

  v36 = v9;
  v15 = [CDMSELFLogUtil createSELFMetadataWithRequestId:v9];
  v16 = objc_alloc_init(MEMORY[0x1E696AFB0]);
  v17 = [XPCStreamEventUtils getXPCEventName:eventCopy];
  v18 = objc_alloc_init(CDMDataDispatcherContext);
  v38 = v17;
  [CDMSELFLogUtil cdmXpcProcessingStarted:v16 xpcType:1 xpcSystemEventType:[CDMSELFLogUtil stringXPCSystemEventTypeToEnum:v17] serviceName:0 metadata:v15 logMessage:@"SELF CDM XPC Processing started log emitted" dataDispatcherContext:v18];
  v19 = objc_alloc_init(CDMConfig);
  v20 = MEMORY[0x1E695DF58];
  defaultLocaleIdentifier = [(CDMConfig *)v19 defaultLocaleIdentifier];
  v22 = [v20 localeWithLocaleIdentifier:defaultLocaleIdentifier];

  v40 = 0;
  v23 = [CDMServiceCenter getDynamicConfigWithAssetCollectionForGraph:@"CDMNLUServiceGraph" withLocale:v22 withError:&v40 withSelfMetadata:0];
  v24 = v40;
  v37 = eventCopy;
  if (v24)
  {
    v25 = streamCopy;
    streamCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to set up assets. Aborting XPC activity handling for (streamName=%@).", streamCopy];
    v27 = CDMOSLoggerForCategory(3);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v42 = "[CDMServiceCenter handleXPCEvent:fromStream:withRegister:]";
      v43 = 2114;
      v44 = streamCopy;
      _os_log_error_impl(&dword_1DC287000, v27, OS_LOG_TYPE_ERROR, "%s [ERR]: %{public}@", buf, 0x16u);
    }

    v28 = v16;
    v29 = 3;
LABEL_12:
    [CDMSELFLogUtil cdmXpcProcessingFailed:v28 reason:v29 errorCode:1 metadata:v15 logMessage:streamCopy dataDispatcherContext:v18];

    v31 = 0;
    goto LABEL_13;
  }

  v30 = eventCopy;
  v25 = streamCopy;
  if (([registerCopy handleXPCEvent:v30 fromStream:streamCopy currentConfig:v23 withSelfMetadata:v15] & 1) == 0)
  {
    streamCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"[CDMServiceCenter -handleXPCEvent:fromStream:withRegister:] called with unhandled XPC event (streamName=%@, eventName=%@)", streamCopy, v38];
    v32 = CDMOSLoggerForCategory(3);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v42 = "[CDMServiceCenter handleXPCEvent:fromStream:withRegister:]";
      v43 = 2114;
      v44 = streamCopy;
      _os_log_error_impl(&dword_1DC287000, v32, OS_LOG_TYPE_ERROR, "%s [ERR]: %{public}@", buf, 0x16u);
    }

    v28 = v16;
    v29 = 2;
    goto LABEL_12;
  }

  [CDMSELFLogUtil cdmXpcProcessingEnded:v16 metadata:v15 logMessage:@"SELF CDM XPC Processing ended log emitted" dataDispatcherContext:v18];
  v31 = 1;
LABEL_13:

  v33 = *MEMORY[0x1E69E9840];
  return v31;
}

- (BOOL)areAssetsAvailable:(id)available
{
  v44 = *MEMORY[0x1E69E9840];
  v38 = 0;
  [(CDMServiceCenter *)self setupCDMAssetManagerWithError:&v38];
  v4 = v38;
  if (!v4)
  {
    v5 = +[CDMAssetsManager getSingletonCDMAssetsManager];
    graphName = [(CDMDynamicConfig *)self->_currentConfig graphName];

    if (graphName)
    {
      graphName2 = [(CDMDynamicConfig *)self->_currentConfig graphName];
      v9 = NSClassFromString(graphName2);
      languageCode = [(CDMDynamicConfig *)self->_currentConfig languageCode];
      v11 = [(objc_class *)v9 getAssetsForSetup:languageCode];

      assetPaths = [(CDMDynamicConfig *)self->_currentConfig assetPaths];
      v37 = 0;
      v6 = [v5 areAssetsAvailableForCDMAssetsInfo:v11 factorToAsset:assetPaths withError:&v37];
      v13 = v37;

      obj = v13;
      if (!v13)
      {
LABEL_28:

        goto LABEL_29;
      }

      v14 = CDMOSLoggerForCategory(3);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v41 = "[CDMServiceCenter areAssetsAvailable:]";
        v42 = 2114;
        v43 = v13;
        _os_log_error_impl(&dword_1DC287000, v14, OS_LOG_TYPE_ERROR, "%s [ERR]: Assets availability check failed with error: %{public}@.", buf, 0x16u);
      }
    }

    else
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      obj = [CDMServiceCenterUtils getAvailableServiceGraphs:self->_config];
      v15 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
      if (!v15)
      {
        v11 = 0;
        v6 = 1;
        goto LABEL_27;
      }

      v16 = v15;
      v14 = 0;
      v11 = 0;
      v31 = *v34;
LABEL_11:
      v17 = 0;
      v18 = v14;
      v19 = v11;
      while (1)
      {
        if (*v34 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v33 + 1) + 8 * v17);
        v21 = NSClassFromString(v20);
        languageCode2 = [(CDMDynamicConfig *)self->_currentConfig languageCode];
        v11 = [(objc_class *)v21 getAssetsForSetup:languageCode2];

        assetPaths2 = [(CDMDynamicConfig *)self->_currentConfig assetPaths];
        v32 = v18;
        v24 = v5;
        v25 = [v5 areAssetsAvailableForCDMAssetsInfo:v11 factorToAsset:assetPaths2 withError:&v32];
        v14 = v32;

        if ((v25 & 1) == 0)
        {
          break;
        }

        ++v17;
        v18 = v14;
        v19 = v11;
        v5 = v24;
        if (v16 == v17)
        {
          v16 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
          v6 = 1;
          if (v16)
          {
            goto LABEL_11;
          }

          v4 = 0;
          goto LABEL_24;
        }
      }

      v26 = CDMOSLoggerForCategory(3);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v41 = "[CDMServiceCenter areAssetsAvailable:]";
        v42 = 2112;
        v43 = v20;
        _os_log_debug_impl(&dword_1DC287000, v26, OS_LOG_TYPE_DEBUG, "%s Assets not available for graph: %@", buf, 0x16u);
      }

      v4 = 0;
      v5 = v24;
      if (!v14)
      {
        v6 = 0;
        goto LABEL_27;
      }

      v27 = CDMOSLoggerForCategory(3);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v41 = "[CDMServiceCenter areAssetsAvailable:]";
        v42 = 2114;
        v43 = v14;
        _os_log_error_impl(&dword_1DC287000, v27, OS_LOG_TYPE_ERROR, "%s [ERR]: Assets availability check failed with error: %{public}@.", buf, 0x16u);
      }

      v6 = 0;
    }

LABEL_24:

LABEL_27:
    goto LABEL_28;
  }

  v5 = CDMOSLoggerForCategory(3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v41 = "[CDMServiceCenter areAssetsAvailable:]";
    _os_log_error_impl(&dword_1DC287000, v5, OS_LOG_TYPE_ERROR, "%s [ERR]: Error occurs while initializing CDMAssetsManager. Return NO.", buf, 0xCu);
  }

  v6 = 0;
LABEL_29:

  v28 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)isServiceNotReady:(id)ready withServiceStateMap:(id)map
{
  v4 = [map objectForKeyedSubscript:ready];
  v5 = [v4 integerValue] != 2 && objc_msgSend(v4, "integerValue") != 4;

  return v5;
}

- (id)getEnabledDAGServiceNamesForGraph:(id)graph
{
  v19 = *MEMORY[0x1E69E9840];
  requiredDAGServices = [NSClassFromString(graph) requiredDAGServices];
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_enabledDAGServiceNames, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_enabledDAGServiceNames;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([requiredDAGServices containsObject:{v11, v14}])
        {
          [v5 addObject:v11];
        }
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)extractEnabledServiceNames:(id)names
{
  v20 = *MEMORY[0x1E69E9840];
  namesCopy = names;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(namesCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = namesCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if ([objc_opt_class() isEnabled])
        {
          v11 = objc_opt_class();
          v12 = NSStringFromClass(v11);
          [v4 addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)handleSetup:(id)setup forCallback:(id)callback
{
  v209 = *MEMORY[0x1E69E9840];
  setupCopy = setup;
  callbackCopy = callback;
  v6 = CDMOSLoggerForCategory(4);
  spid = os_signpost_id_generate(v6);

  v7 = CDMOSLoggerForCategory(4);
  v8 = os_signpost_id_generate(v7);

  v9 = CDMOSLoggerForCategory(4);
  v10 = v9;
  v114 = spid - 1;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v10, OS_SIGNPOST_INTERVAL_BEGIN, spid, "CDMServicesSetup", "CDM Services Setup enableTelemetry=YES", &buf, 2u);
  }

  [(CDMServiceCenter *)self setSystemState:2];
  dynamicConfig = [setupCopy dynamicConfig];
  [(CDMServiceCenter *)self mergeConfig:dynamicConfig];

  v12 = CDMOSLoggerForCategory(3);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[CDMServiceCenter handleSetup:forCallback:]";
    _os_log_impl(&dword_1DC287000, v12, OS_LOG_TYPE_INFO, "%s CDM setup started", &buf, 0xCu);
  }

  v125 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_dagServices, "count") + 1}];
  graphName = [(CDMDynamicConfig *)self->_currentConfig graphName];
  v126 = [(CDMServiceCenter *)self getEnabledDAGServiceNamesForGraph:graphName];

  graphName2 = [(CDMDynamicConfig *)self->_currentConfig graphName];
  v15 = NSClassFromString(graphName2);
  languageCode = [(CDMDynamicConfig *)self->_currentConfig languageCode];
  v115 = [(objc_class *)v15 getAssetsForSetup:languageCode];

  [v125 addObject:self->_composerService];
  v177 = 0u;
  v178 = 0u;
  v175 = 0u;
  v176 = 0u;
  v17 = self->_dagServices;
  v18 = [(NSArray *)v17 countByEnumeratingWithState:&v175 objects:v208 count:16];
  if (v18)
  {
    v19 = *v176;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v176 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v21 = *(*(&v175 + 1) + 8 * i);
        v22 = objc_opt_class();
        v23 = NSStringFromClass(v22);
        v24 = [v126 containsObject:v23];

        if (v24)
        {
          [v125 addObject:v21];
        }
      }

      v18 = [(NSArray *)v17 countByEnumeratingWithState:&v175 objects:v208 count:16];
    }

    while (v18);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v204 = 0x3032000000;
  v205 = __Block_byref_object_copy_;
  v206 = __Block_byref_object_dispose_;
  selfMetadata = [setupCopy selfMetadata];
  v169 = 0;
  v170 = &v169;
  v171 = 0x3032000000;
  v172 = __Block_byref_object_copy_;
  v173 = __Block_byref_object_dispose_;
  dataDispatcherContext = [setupCopy dataDispatcherContext];
  graphName3 = [(CDMDynamicConfig *)self->_currentConfig graphName];
  requiresAssets = [NSClassFromString(graphName3) requiresAssets];

  if (!requiresAssets)
  {
    v32 = CDMOSLoggerForCategory(3);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(v198) = 136315138;
      *(&v198 + 4) = "[CDMServiceCenter handleSetup:forCallback:]";
      _os_log_debug_impl(&dword_1DC287000, v32, OS_LOG_TYPE_DEBUG, "%s Assets paths have been provided in CDMDynamicConfig. Skip calling setupAssets.", &v198, 0xCu);
    }

    goto LABEL_25;
  }

  v27 = CDMOSLoggerForCategory(4);
  v28 = v27;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
  {
    LOWORD(v198) = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v28, OS_SIGNPOST_INTERVAL_BEGIN, v8, "CDMServiceCenterAssetsSetup", "CDM Service Center Assets Setup enableTelemetry=YES", &v198, 2u);
  }

  dynamicConfig2 = [setupCopy dynamicConfig];
  assetPaths = [dynamicConfig2 assetPaths];
  v31 = assetPaths == 0;

  if (!v31)
  {
    v32 = CDMOSLoggerForCategory(3);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(v198) = 136315138;
      *(&v198 + 4) = "[CDMServiceCenter handleSetup:forCallback:]";
      _os_log_debug_impl(&dword_1DC287000, v32, OS_LOG_TYPE_DEBUG, "%s Assets paths have been provided in CDMDynamicConfig. Skip calling setupAssets.", &v198, 0xCu);
    }

LABEL_25:

    goto LABEL_26;
  }

  *&v198 = 0;
  *(&v198 + 1) = &v198;
  v199 = 0x3032000000;
  v200 = __Block_byref_object_copy_;
  v201 = __Block_byref_object_dispose_;
  v202 = 0;
  cdmServiceCenterQueue = self->_cdmServiceCenterQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__CDMServiceCenter_handleSetup_forCallback___block_invoke;
  block[3] = &unk_1E862E410;
  block[4] = self;
  v165 = v115;
  v166 = &v198;
  p_buf = &buf;
  v168 = &v169;
  v47 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, block);
  dispatch_sync(cdmServiceCenterQueue, v47);

  if (!*(*(&v198 + 1) + 40))
  {

    _Block_object_dispose(&v198, 8);
LABEL_26:
    v33 = CDMOSLoggerForCategory(3);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      LODWORD(v198) = 136315138;
      *(&v198 + 4) = "[CDMServiceCenter handleSetup:forCallback:]";
      _os_log_impl(&dword_1DC287000, v33, OS_LOG_TYPE_INFO, "%s [insights-cdm-assets]:\nAssets setup successfully!", &v198, 0xCu);
    }

    v34 = CDMOSLoggerForCategory(4);
    v35 = v34;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
    {
      LOWORD(v198) = 0;
      _os_signpost_emit_with_name_impl(&dword_1DC287000, v35, OS_SIGNPOST_INTERVAL_END, v8, "CDMServiceCenterAssetsSetup", " enableTelemetry=YES ", &v198, 2u);
    }

    if ([CDMServiceCenterUtils needEmbeddingConfigsFor:v125])
    {
      v163 = 0;
      [(CDMServiceCenter *)self setupEmbeddingConfigsWithError:&v163];
      v36 = v163;
      if (v36)
      {
        v37 = v36;
        v38 = CDMOSLoggerForCategory(3);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v198) = 136315138;
          *(&v198 + 4) = "[CDMServiceCenter handleSetup:forCallback:]";
          _os_log_error_impl(&dword_1DC287000, v38, OS_LOG_TYPE_ERROR, "%s [ERR]: [insights-cdm-assets]:\nFailed to setup CDM embedding configs!", &v198, 0xCu);
        }

        v39 = CDMOSLoggerForCategory(4);
        v40 = v39;
        if (v114 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
        {
          LOWORD(v198) = 0;
          _os_signpost_emit_with_name_impl(&dword_1DC287000, v40, OS_SIGNPOST_INTERVAL_END, spid, "CDMServicesSetup", " enableTelemetry=YES ", &v198, 2u);
        }

        if (callbackCopy)
        {
          v41 = MEMORY[0x1E696ABC0];
          v194 = *MEMORY[0x1E696A578];
          v195 = @"Failed to setup CDM embedding configs!";
          v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v195 forKeys:&v194 count:1];
          v43 = [v41 errorWithDomain:@"CDMServiceCenter" code:2 userInfo:v42];

          callbackCopy[2](callbackCopy, 0, v43);
        }

        goto LABEL_125;
      }

      v44 = CDMOSLoggerForCategory(3);
      if (!os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        goto LABEL_58;
      }

      LODWORD(v198) = 136315138;
      *(&v198 + 4) = "[CDMServiceCenter handleSetup:forCallback:]";
      v45 = "%s [insights-cdm-assets]:\nCDM embedding configs setup successfully!";
    }

    else
    {
      v44 = CDMOSLoggerForCategory(3);
      if (!os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        goto LABEL_58;
      }

      LODWORD(v198) = 136315138;
      *(&v198 + 4) = "[CDMServiceCenter handleSetup:forCallback:]";
      v45 = "%s Skipping embeddings config; no embedding service.";
    }

    _os_log_impl(&dword_1DC287000, v44, OS_LOG_TYPE_INFO, v45, &v198, 0xCu);
LABEL_58:

    v60 = [CDMSetupRequestCommand alloc];
    v123 = [(CDMSetupRequestCommand *)v60 initWithDynamicConfig:self->_currentConfig selfMetadata:*(*(&buf + 1) + 40) dataDispatcherContext:v170[5]];
    if (v125 && [v125 count])
    {
      *&v198 = 0;
      *(&v198 + 1) = &v198;
      v199 = 0x3032000000;
      v200 = __Block_byref_object_copy_;
      v201 = __Block_byref_object_dispose_;
      v202 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v125, "count")}];
      *v188 = 0;
      *&v188[8] = v188;
      *&v188[16] = 0x3032000000;
      v189 = __Block_byref_object_copy_;
      v190 = __Block_byref_object_dispose_;
      v191 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v125, "count")}];
      v161[0] = 0;
      v161[1] = v161;
      v161[2] = 0x3032000000;
      v161[3] = __Block_byref_object_copy_;
      v161[4] = __Block_byref_object_dispose_;
      v61 = [CDMWarmupRequestCommand alloc];
      v162 = [(CDMWarmupRequestCommand *)v61 initWithDynamicConfig:self->_currentConfig selfMetadata:*(*(&buf + 1) + 40)];
      shouldPerformWarmup = [setupCopy shouldPerformWarmup];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __44__CDMServiceCenter_handleSetup_forCallback___block_invoke_536;
      aBlock[3] = &unk_1E862E458;
      aBlock[4] = &v198;
      aBlock[5] = v188;
      v121 = _Block_copy(aBlock);
      [CDMSELFLogUtil cdmAllServicesSetupStarted:*(*(&buf + 1) + 40) logMessage:@"SELF all services setup started message emitted" dataDispatcherContext:v170[5]];
      v154 = 0;
      v155 = &v154;
      v156 = 0x3032000000;
      v157 = __Block_byref_object_copy_;
      v158 = __Block_byref_object_dispose_;
      v159 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v125, "count")}];
      v150 = 0u;
      v151 = 0u;
      v152 = 0u;
      v153 = 0u;
      obj = v125;
      v62 = [obj countByEnumeratingWithState:&v150 objects:v187 count:16];
      if (v62)
      {
        v63 = *v151;
        do
        {
          for (j = 0; j != v62; ++j)
          {
            if (*v151 != v63)
            {
              objc_enumerationMutation(obj);
            }

            v65 = *(*(&v150 + 1) + 8 * j);
            v66 = *(*(&v198 + 1) + 40);
            v67 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v65, "serviceState")}];
            serviceName = [v65 serviceName];
            [v66 setObject:v67 forKey:serviceName];

            v69 = objc_alloc_init(MEMORY[0x1E69CF170]);
            serviceName2 = [v65 serviceName];
            k = [CDMSELFLogUtil stringServiceTypeToEnum:serviceName2];

            if (!k)
            {
              v71 = CDMOSLoggerForCategory(3);
              if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
              {
                serviceName3 = [v65 serviceName];
                *v183 = 136315394;
                v184 = "[CDMServiceCenter handleSetup:forCallback:]";
                v185 = 2114;
                v186 = serviceName3;
                _os_log_impl(&dword_1DC287000, v71, OS_LOG_TYPE_INFO, "%s [WARN]: Unmapped CDM service type name for setup: %{public}@", v183, 0x16u);
              }
            }

            [v69 setServiceType:k];
            v73 = v155[5];
            serviceName4 = [v65 serviceName];
            [v73 setObject:v69 forKey:serviceName4];
          }

          v62 = [obj countByEnumeratingWithState:&v150 objects:v187 count:16];
        }

        while (v62);
      }

      v75 = objc_alloc(MEMORY[0x1E695DF70]);
      v119 = [v75 initWithCapacity:{objc_msgSend(*(*(&v198 + 1) + 40), "count")}];
      [*(*&v188[8] + 40) removeAllObjects];
      group = dispatch_group_create();
      v146 = 0u;
      v147 = 0u;
      v148 = 0u;
      v149 = 0u;
      v76 = obj;
      v77 = [v76 countByEnumeratingWithState:&v146 objects:v182 count:16];
      if (v77)
      {
        v78 = *v147;
        do
        {
          for (k = 0; k != v77; ++k)
          {
            if (*v147 != v78)
            {
              objc_enumerationMutation(v76);
            }

            v79 = *(*(&v146 + 1) + 8 * k);
            dispatch_group_enter(group);
            v141[0] = MEMORY[0x1E69E9820];
            v141[1] = 3221225472;
            v141[2] = __44__CDMServiceCenter_handleSetup_forCallback___block_invoke_543;
            v141[3] = &unk_1E862E480;
            v141[4] = v79;
            v145 = &v154;
            v142 = v123;
            v144 = v121;
            v143 = group;
            v80 = dispatch_block_create(0, v141);
            dispatch_async(self->_cdmServiceCenterQueue, v80);
          }

          v77 = [v76 countByEnumeratingWithState:&v146 objects:v182 count:16];
        }

        while (v77);
      }

      dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
      v139 = 0u;
      v140 = 0u;
      v137 = 0u;
      v138 = 0u;
      allKeys = [*(*(&v198 + 1) + 40) allKeys];
      v82 = [allKeys countByEnumeratingWithState:&v137 objects:v181 count:16];
      if (v82)
      {
        v83 = *v138;
        v84 = 1;
        do
        {
          for (m = 0; m != v82; ++m)
          {
            if (*v138 != v83)
            {
              objc_enumerationMutation(allKeys);
            }

            v86 = *(*(&v137 + 1) + 8 * m);
            if ([(CDMServiceCenter *)self isServiceNotReady:v86 withServiceStateMap:*(*(&v198 + 1) + 40)])
            {
              v87 = [*(*&v188[8] + 40) objectForKey:v86];
              v88 = MEMORY[0x1E696AEC0];
              v89 = [*(*(&v198 + 1) + 40) objectForKeyedSubscript:v86];
              if (v87)
              {
                k = [v87 localizedDescription];
                v90 = k;
              }

              else
              {
                v90 = @"Service timed out";
              }

              v91 = [v88 stringWithFormat:@"Service: %@, State: %@, Error: %@", v86, v89, v90];
              [v119 addObject:v91];

              if (v87)
              {

                v92 = +[CDMDataDispatcherCompletionQueue getDataDispatcherCompletionQueue];
                v133[0] = MEMORY[0x1E69E9820];
                v133[1] = 3221225472;
                v133[2] = __44__CDMServiceCenter_handleSetup_forCallback___block_invoke_553;
                v133[3] = &unk_1E862E4D0;
                v135 = &v154;
                v133[4] = v86;
                v134 = v87;
                dispatch_async(v92, v133);

                v93 = v134;
              }

              else
              {

                v93 = +[CDMDataDispatcherCompletionQueue getDataDispatcherCompletionQueue];
                v136[0] = MEMORY[0x1E69E9820];
                v136[1] = 3221225472;
                v136[2] = __44__CDMServiceCenter_handleSetup_forCallback___block_invoke_552;
                v136[3] = &unk_1E862E4A8;
                v136[4] = v86;
                v136[5] = &v154;
                dispatch_async(v93, v136);
              }

              v84 = 0;
            }
          }

          v82 = [allKeys countByEnumeratingWithState:&v137 objects:v181 count:16];
        }

        while (v82);
      }

      else
      {
        v84 = 1;
      }

      [CDMDataDispatcher dispatchServiceSetupMetrics:v155[5] selfMetadata:*(*(&buf + 1) + 40) dataDispatcherContext:v170[5]];
      v100 = CDMOSLoggerForCategory(4);
      v101 = v100;
      if (v114 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v100))
      {
        *v183 = 0;
        _os_signpost_emit_with_name_impl(&dword_1DC287000, v101, OS_SIGNPOST_INTERVAL_END, spid, "CDMServicesSetup", " enableTelemetry=YES ", v183, 2u);
      }

      if (v84)
      {
        [(CDMServiceCenter *)self setSystemState:3];
        v102 = CDMOSLoggerForCategory(3);
        if (os_log_type_enabled(v102, OS_LOG_TYPE_INFO))
        {
          *v183 = 136315138;
          v184 = "[CDMServiceCenter handleSetup:forCallback:]";
          _os_log_impl(&dword_1DC287000, v102, OS_LOG_TYPE_INFO, "%s [insights-cdm-summary]:\nCDM setup successful", v183, 0xCu);
        }

        if (!+[CDMServiceCenterUtils isHostedInDaemon])
        {
          v103 = os_transaction_create();
          transaction = self->transaction;
          self->transaction = v103;
        }

        callbackCopy[2](callbackCopy, 0, 0);
        [CDMSELFLogUtil cdmAllServicesSetupEnded:*(*(&buf + 1) + 40) logMessage:@"SELF all services setup ended message emitted" dataDispatcherContext:v170[5]];
        if (shouldPerformWarmup)
        {
          objc_initWeak(v183, self);
          v127[0] = MEMORY[0x1E69E9820];
          v127[1] = 3221225472;
          v127[2] = __44__CDMServiceCenter_handleSetup_forCallback___block_invoke_559;
          v127[3] = &unk_1E862E548;
          objc_copyWeak(&v132, v183);
          v130 = &v169;
          v131 = v161;
          v128 = &__block_literal_global;
          v129 = &buf;
          v105 = dispatch_block_create(0, v127);
          dispatch_async(self->_cdmServiceCenterQueue, v105);

          objc_destroyWeak(&v132);
          objc_destroyWeak(v183);
        }

        else
        {
          v111 = CDMOSLoggerForCategory(3);
          if (os_log_type_enabled(v111, OS_LOG_TYPE_DEBUG))
          {
            *v183 = 136315138;
            v184 = "[CDMServiceCenter handleSetup:forCallback:]";
            _os_log_debug_impl(&dword_1DC287000, v111, OS_LOG_TYPE_DEBUG, "%s Not performing warmup as part of setup", v183, 0xCu);
          }
        }
      }

      else
      {
        [(CDMServiceCenter *)self setSystemState:4];
        if (callbackCopy)
        {
          v119 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CDM failed to setup. The following services are not in ready or disabled state: %@", v119];
          v107 = CDMOSLoggerForCategory(3);
          if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
          {
            *v183 = 136315394;
            v184 = "[CDMServiceCenter handleSetup:forCallback:]";
            v185 = 2114;
            v186 = v119;
            _os_log_error_impl(&dword_1DC287000, v107, OS_LOG_TYPE_ERROR, "%s [ERR]: [insights-cdm-summary]:\n%{public}@", v183, 0x16u);
          }

          v108 = MEMORY[0x1E696ABC0];
          v179 = *MEMORY[0x1E696A578];
          v180 = v119;
          v109 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v180 forKeys:&v179 count:1];
          v110 = [v108 errorWithDomain:@"CDMServiceCenter" code:4 userInfo:v109];

          callbackCopy[2](callbackCopy, 0, v110);
        }

        if (shouldPerformWarmup)
        {
          [CDMSELFLogUtil cdmAllServicesWarmupFailed:*(*(&buf + 1) + 40) logMessage:@"SELF all services warmup failed message emitted" dataDispatcherContext:v170[5]];
        }

        [CDMSELFLogUtil cdmAllServicesSetupFailed:*(*(&buf + 1) + 40) logMessage:@"SELF all services setup failed message emitted" dataDispatcherContext:v170[5]];
      }

      _Block_object_dispose(&v154, 8);
      _Block_object_dispose(v161, 8);

      _Block_object_dispose(v188, 8);
      _Block_object_dispose(&v198, 8);
    }

    else
    {
      v94 = CDMOSLoggerForCategory(3);
      if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v198) = 136315138;
        *(&v198 + 4) = "[CDMServiceCenter handleSetup:forCallback:]";
        _os_log_error_impl(&dword_1DC287000, v94, OS_LOG_TYPE_ERROR, "%s [ERR]: No services found to setup", &v198, 0xCu);
      }

      if (callbackCopy)
      {
        v95 = CDMOSLoggerForCategory(4);
        v96 = v95;
        if (v114 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v95))
        {
          LOWORD(v198) = 0;
          _os_signpost_emit_with_name_impl(&dword_1DC287000, v96, OS_SIGNPOST_INTERVAL_END, spid, "CDMServicesSetup", " enableTelemetry=YES ", &v198, 2u);
        }

        v97 = MEMORY[0x1E696ABC0];
        v192 = *MEMORY[0x1E696A578];
        v193 = @"No services found to setup";
        v98 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v193 forKeys:&v192 count:1];
        v99 = [v97 errorWithDomain:@"CDMServiceCenter" code:3 userInfo:v98];

        callbackCopy[2](callbackCopy, 0, v99);
      }
    }

    goto LABEL_125;
  }

  [(CDMServiceCenter *)self setSystemState:4];
  v48 = MEMORY[0x1E696AEC0];
  localizedDescription = [*(*(&v198 + 1) + 40) localizedDescription];
  localizedFailureReason = [*(*(&v198 + 1) + 40) localizedFailureReason];
  v51 = [v48 stringWithFormat:@"Failed to setup assets with error:\nDescription: %@\nReason: %@\nAbort setup.", localizedDescription, localizedFailureReason];

  v52 = CDMOSLoggerForCategory(3);
  if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
  {
    *v188 = 136315394;
    *&v188[4] = "[CDMServiceCenter handleSetup:forCallback:]";
    *&v188[12] = 2114;
    *&v188[14] = v51;
    _os_log_error_impl(&dword_1DC287000, v52, OS_LOG_TYPE_ERROR, "%s [ERR]: [insights-cdm-assets]:\n%{public}@", v188, 0x16u);
  }

  v53 = CDMOSLoggerForCategory(4);
  v54 = v53;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v53))
  {
    *v188 = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v54, OS_SIGNPOST_INTERVAL_END, v8, "CDMServiceCenterAssetsSetup", " enableTelemetry=YES ", v188, 2u);
  }

  v55 = CDMOSLoggerForCategory(4);
  v56 = v55;
  if (v114 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v55))
  {
    *v188 = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v56, OS_SIGNPOST_INTERVAL_END, spid, "CDMServicesSetup", " enableTelemetry=YES ", v188, 2u);
  }

  if (callbackCopy)
  {
    v57 = MEMORY[0x1E696ABC0];
    v196 = *MEMORY[0x1E696A578];
    v197 = v51;
    v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v197 forKeys:&v196 count:1];
    v59 = [v57 errorWithDomain:@"CDMServiceCenter" code:1 userInfo:v58];

    callbackCopy[2](callbackCopy, 0, v59);
  }

  _Block_object_dispose(&v198, 8);
LABEL_125:
  _Block_object_dispose(&v169, 8);

  _Block_object_dispose(&buf, 8);
  v112 = *MEMORY[0x1E69E9840];
}

void __44__CDMServiceCenter_handleSetup_forCallback___block_invoke(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v3 = a1[7];
  v4 = *(a1[6] + 8);
  obj = *(v4 + 40);
  [v2 setupAssetsForCDMAssetsInfo:v1 withError:&obj andSelfMetadata:*(*(v3 + 8) + 40) dataDispatcherContext:*(*(a1[8] + 8) + 40)];
  objc_storeStrong((v4 + 40), obj);
}

void __44__CDMServiceCenter_handleSetup_forCallback___block_invoke_536(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v15;
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "serviceState")}];
    v8 = *(*(*(a1 + 32) + 8) + 40);
    v9 = [v6 serviceName];
    [v8 setObject:v7 forKeyedSubscript:v9];

    v10 = [v6 cmdError];

    if (v10)
    {
      v11 = [v6 cmdError];
      v12 = *(*(*(a1 + 40) + 8) + 40);
      v13 = [v6 serviceName];
      [v12 setObject:v11 forKeyedSubscript:v13];
    }

    else
    {
      if (!v5)
      {
LABEL_7:

        goto LABEL_8;
      }

      v14 = *(*(*(a1 + 40) + 8) + 40);
      v11 = [v6 serviceName];
      [v14 setObject:v5 forKeyedSubscript:v11];
    }

    goto LABEL_7;
  }

LABEL_8:
}

void __44__CDMServiceCenter_handleSetup_forCallback___block_invoke_543(uint64_t a1)
{
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3032000000;
  v8[3] = __Block_byref_object_copy_;
  v8[4] = __Block_byref_object_dispose_;
  v9 = [*(a1 + 32) serviceName];
  v2 = mach_absolute_time();
  v3 = +[CDMDataDispatcherCompletionQueue getDataDispatcherCompletionQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__CDMServiceCenter_handleSetup_forCallback___block_invoke_2;
  block[3] = &unk_1E862EF20;
  block[4] = *(a1 + 64);
  block[5] = v8;
  block[6] = v2;
  dispatch_async(v3, block);

  [*(a1 + 32) handleCommand:*(a1 + 40) withCallback:*(a1 + 56)];
  v4 = mach_absolute_time();
  v5 = +[CDMDataDispatcherCompletionQueue getDataDispatcherCompletionQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__CDMServiceCenter_handleSetup_forCallback___block_invoke_545;
  v6[3] = &unk_1E862EF20;
  v6[4] = *(a1 + 64);
  v6[5] = v8;
  v6[6] = v4;
  dispatch_async(v5, v6);

  dispatch_group_leave(*(a1 + 48));
  _Block_object_dispose(v8, 8);
}

void __44__CDMServiceCenter_handleSetup_forCallback___block_invoke_552(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [*(*(*(a1 + 40) + 8) + 40) objectForKey:*(a1 + 32)];

  if (v2)
  {
    v6 = [*(*(*(a1 + 40) + 8) + 40) objectForKey:*(a1 + 32)];
    [v6 setFailureReason:1];
    v3 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v4 = CDMOSLoggerForCategory(3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v8 = "[CDMServiceCenter handleSetup:forCallback:]_block_invoke";
      _os_log_impl(&dword_1DC287000, v4, OS_LOG_TYPE_INFO, "%s [WARN]: Unable to retrieve SELF CDM setup metrics object! This log is likely unusable.", buf, 0xCu);
    }

    v5 = *MEMORY[0x1E69E9840];
  }
}

void __44__CDMServiceCenter_handleSetup_forCallback___block_invoke_553(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [*(*(*(a1 + 48) + 8) + 40) objectForKey:*(a1 + 32)];

  if (v2)
  {
    v3 = [*(*(*(a1 + 48) + 8) + 40) objectForKey:*(a1 + 32)];
    [v3 setFailureReason:2];

    v7 = [*(*(*(a1 + 48) + 8) + 40) objectForKey:*(a1 + 32)];
    [v7 setErrorCode:{objc_msgSend(*(a1 + 40), "code")}];
    v4 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v5 = CDMOSLoggerForCategory(3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v9 = "[CDMServiceCenter handleSetup:forCallback:]_block_invoke";
      _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s [WARN]: Unable to retrieve SELF CDM setup metrics object! This log is likely unusable.", buf, 0xCu);
    }

    v6 = *MEMORY[0x1E69E9840];
  }
}

void __44__CDMServiceCenter_handleSetup_forCallback___block_invoke_559(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    [CDMSELFLogUtil cdmAllServicesWarmupStarted:*(*(*(a1 + 40) + 8) + 40) logMessage:@"SELF all services warmup started message emitted" dataDispatcherContext:*(*(*(a1 + 48) + 8) + 40)];
    v3 = WeakRetained[6];
    v4 = [*(*(*(a1 + 56) + 8) + 40) commandName];
    v5 = [v3 objectForKeyedSubscript:v4];

    if (v5)
    {
      v6 = dispatch_group_create();
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __44__CDMServiceCenter_handleSetup_forCallback___block_invoke_2_560;
      v10[3] = &unk_1E862E520;
      v7 = *(a1 + 56);
      v11 = v6;
      v14 = v7;
      v13 = *(a1 + 32);
      v12 = WeakRetained;
      v8 = v6;
      [v5 enumerateObjectsUsingBlock:v10];
      dispatch_group_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
    }

    else
    {
      v8 = CDMOSLoggerForCategory(3);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v16 = "[CDMServiceCenter handleSetup:forCallback:]_block_invoke";
        _os_log_impl(&dword_1DC287000, v8, OS_LOG_TYPE_INFO, "%s [WARN]: No services to warmup!", buf, 0xCu);
      }
    }

    [CDMSELFLogUtil cdmAllServicesWarmupEnded:*(*(*(a1 + 40) + 8) + 40) logMessage:@"SELF all services warmup ended message emitted" dataDispatcherContext:*(*(*(a1 + 48) + 8) + 40)];
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __44__CDMServiceCenter_handleSetup_forCallback___block_invoke_2_560(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_group_enter(*(a1 + 32));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__CDMServiceCenter_handleSetup_forCallback___block_invoke_3;
  block[3] = &unk_1E862E4F8;
  v9 = v3;
  v7 = *(a1 + 48);
  v4 = v7;
  v11 = v7;
  v10 = *(a1 + 32);
  v5 = v3;
  v6 = dispatch_block_create(0, block);
  dispatch_async(*(*(a1 + 40) + 72), v6);
}

void __44__CDMServiceCenter_handleSetup_forCallback___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) handleCommand:*(*(*(a1 + 56) + 8) + 40) withCallback:*(a1 + 48)];
  v2 = *(a1 + 40);

  dispatch_group_leave(v2);
}

void __44__CDMServiceCenter_handleSetup_forCallback___block_invoke_2(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1[4] + 8) + 40) objectForKey:*(*(a1[5] + 8) + 40)];

  if (v2)
  {
    v7 = [*(*(a1[4] + 8) + 40) objectForKey:*(*(a1[5] + 8) + 40)];
    v3 = a1[6];
    [v7 setStartLogicalTimestampInNs:SiriAnalyticsMachAbsoluteTimeGetNanoseconds()];
    v4 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v5 = CDMOSLoggerForCategory(3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v9 = "[CDMServiceCenter handleSetup:forCallback:]_block_invoke_2";
      _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s [WARN]: Unable to retrieve SELF CDM setup metrics object! This log is likely unusable.", buf, 0xCu);
    }

    v6 = *MEMORY[0x1E69E9840];
  }
}

void __44__CDMServiceCenter_handleSetup_forCallback___block_invoke_545(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1[4] + 8) + 40) objectForKey:*(*(a1[5] + 8) + 40)];

  if (v2)
  {
    v7 = [*(*(a1[4] + 8) + 40) objectForKey:*(*(a1[5] + 8) + 40)];
    v3 = a1[6];
    [v7 setEndLogicalTimestampInNs:SiriAnalyticsMachAbsoluteTimeGetNanoseconds()];
    v4 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v5 = CDMOSLoggerForCategory(3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v9 = "[CDMServiceCenter handleSetup:forCallback:]_block_invoke";
      _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s [WARN]: Unable to retrieve SELF CDM setup metrics object! This log is likely unusable.", buf, 0xCu);
    }

    v6 = *MEMORY[0x1E69E9840];
  }
}

void __44__CDMServiceCenter_handleSetup_forCallback___block_invoke_535(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = [v4 cmdError];

  if (v6)
  {
    v7 = CDMOSLoggerForCategory(3);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [v4 cmdError];
      v9 = [v8 description];
      v13 = 136315394;
      v14 = "[CDMServiceCenter handleSetup:forCallback:]_block_invoke";
      v15 = 2114;
      v16 = v9;
      _os_log_error_impl(&dword_1DC287000, v7, OS_LOG_TYPE_ERROR, "%s [ERR]: Warmup failed with error %{public}@.", &v13, 0x16u);
    }
  }

  else
  {
    v10 = CDMOSLoggerForCategory(3);
    v7 = v10;
    if (v5)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = [v5 description];
        v13 = 136315394;
        v14 = "[CDMServiceCenter handleSetup:forCallback:]_block_invoke";
        v15 = 2114;
        v16 = v11;
        _os_log_error_impl(&dword_1DC287000, v7, OS_LOG_TYPE_ERROR, "%s [ERR]: Warmup failed with error %{public}@.", &v13, 0x16u);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v13 = 136315138;
      v14 = "[CDMServiceCenter handleSetup:forCallback:]_block_invoke";
      _os_log_debug_impl(&dword_1DC287000, v7, OS_LOG_TYPE_DEBUG, "%s Warmup succeeded.", &v13, 0xCu);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)handleWarmup:(id)warmup forCallback:(id)callback
{
  v74 = *MEMORY[0x1E69E9840];
  warmupCopy = warmup;
  callbackCopy = callback;
  v6 = os_signpost_id_generate(CDMLogContext);
  v7 = CDMLogContext;
  v8 = v7;
  spid = v6;
  v38 = v6 - 1;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "CDMServicesWarmup", "CDM Services Warmup enableTelemetry=YES", buf, 2u);
  }

  dynamicConfig = [warmupCopy dynamicConfig];
  [(CDMServiceCenter *)self mergeConfig:dynamicConfig];

  v42 = [(CDMServiceCenter *)self getServicesToWarmup:warmupCopy];
  if ([v42 count])
  {
    selfMetadata = [warmupCopy selfMetadata];
    dataDispatcherContext = [warmupCopy dataDispatcherContext];
    [CDMSELFLogUtil cdmAllServicesWarmupStarted:selfMetadata logMessage:@"SELF all services warmup started message emitted" dataDispatcherContext:dataDispatcherContext];
    *buf = 0;
    v61 = buf;
    v62 = 0x3032000000;
    v63 = __Block_byref_object_copy_;
    v64 = __Block_byref_object_dispose_;
    v65 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v42, "count")}];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __45__CDMServiceCenter_handleWarmup_forCallback___block_invoke;
    aBlock[3] = &unk_1E862E3E8;
    aBlock[4] = buf;
    v46 = _Block_copy(aBlock);
    v45 = [[CDMWarmupRequestCommand alloc] initWithDynamicConfig:self->_currentConfig selfMetadata:selfMetadata];
    v10 = dispatch_group_create();
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v11 = v42;
    v12 = [v11 countByEnumeratingWithState:&v55 objects:v73 count:16];
    if (v12)
    {
      v13 = *v56;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v56 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v55 + 1) + 8 * i);
          dispatch_group_enter(v10);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __45__CDMServiceCenter_handleWarmup_forCallback___block_invoke_512;
          block[3] = &unk_1E862EBA0;
          block[4] = v15;
          v52 = v45;
          v54 = v46;
          v53 = v10;
          v16 = dispatch_block_create(0, block);
          dispatch_async(self->_cdmServiceCenterQueue, v16);
        }

        v12 = [v11 countByEnumeratingWithState:&v55 objects:v73 count:16];
      }

      while (v12);
    }

    dispatch_group_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
    v17 = objc_alloc(MEMORY[0x1E695DF70]);
    v44 = [v17 initWithCapacity:{objc_msgSend(*(v61 + 5), "count")}];
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    allKeys = [*(v61 + 5) allKeys];
    v19 = [allKeys countByEnumeratingWithState:&v47 objects:v72 count:16];
    if (v19)
    {
      v20 = *v48;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v48 != v20)
          {
            objc_enumerationMutation(allKeys);
          }

          v22 = *(*(&v47 + 1) + 8 * j);
          v23 = [*(v61 + 5) objectForKey:v22];
          v24 = MEMORY[0x1E696AEC0];
          localizedDescription = [v23 localizedDescription];
          v26 = [v24 stringWithFormat:@"Service: %@, Error: %@", v22, localizedDescription];
          [v44 addObject:v26];
        }

        v19 = [allKeys countByEnumeratingWithState:&v47 objects:v72 count:16];
      }

      while (v19);
    }

    if ([v44 count])
    {
      if (callbackCopy)
      {
        v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CDM failed to warmup. The following services failed to warmup: %@", v44];
        v28 = CDMOSLoggerForCategory(3);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *v68 = 136315394;
          v69 = "[CDMServiceCenter handleWarmup:forCallback:]";
          v70 = 2114;
          v71 = v27;
          _os_log_error_impl(&dword_1DC287000, v28, OS_LOG_TYPE_ERROR, "%s [ERR]: [insights-cdm-summary]:\n%{public}@", v68, 0x16u);
        }

        v29 = MEMORY[0x1E696ABC0];
        v66 = *MEMORY[0x1E696A578];
        v67 = v27;
        v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
        v31 = [v29 errorWithDomain:@"CDMServiceCenter" code:4 userInfo:v30];

        callbackCopy[2](callbackCopy, 0, v31);
      }

      [CDMSELFLogUtil cdmAllServicesWarmupFailed:selfMetadata logMessage:@"SELF all services warmup failed message emitted" dataDispatcherContext:dataDispatcherContext];
    }

    else
    {
      callbackCopy[2](callbackCopy, 0, 0);
      [CDMSELFLogUtil cdmAllServicesWarmupEnded:selfMetadata logMessage:@"SELF all services warmup ended message emitted" dataDispatcherContext:dataDispatcherContext];
    }

    v34 = CDMLogContext;
    v35 = v34;
    if (v38 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
    {
      *v68 = 0;
      _os_signpost_emit_with_name_impl(&dword_1DC287000, v35, OS_SIGNPOST_INTERVAL_END, spid, "CDMServicesWarmup", " enableTelemetry=YES ", v68, 2u);
    }

    _Block_object_dispose(buf, 8);
    v33 = selfMetadata;
  }

  else
  {
    if (callbackCopy)
    {
      callbackCopy[2](callbackCopy, 0, 0);
    }

    v32 = CDMLogContext;
    v33 = v32;
    if (v38 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1DC287000, v33, OS_SIGNPOST_INTERVAL_END, spid, "CDMServicesWarmup", " enableTelemetry=YES ", buf, 2u);
    }
  }

  v36 = *MEMORY[0x1E69E9840];
}

void __45__CDMServiceCenter_handleWarmup_forCallback___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v5;
    v8 = CDMOSLoggerForCategory(3);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v7 serviceName];
      v16 = 136315650;
      v17 = "[CDMServiceCenter handleWarmup:forCallback:]_block_invoke";
      v18 = 2112;
      v19 = v9;
      v20 = 2048;
      v21 = [v7 serviceState];
      _os_log_impl(&dword_1DC287000, v8, OS_LOG_TYPE_INFO, "%s Warmed up Service: %@ State: %tu", &v16, 0x20u);
    }

    v10 = [v7 cmdError];

    if (v10)
    {
      v11 = [v7 cmdError];
      v12 = *(*(*(a1 + 32) + 8) + 40);
      v13 = [v7 serviceName];
      [v12 setObject:v11 forKeyedSubscript:v13];
    }

    else
    {
      if (!v6)
      {
LABEL_9:

        goto LABEL_10;
      }

      v14 = *(*(*(a1 + 32) + 8) + 40);
      v11 = [v7 serviceName];
      [v14 setObject:v6 forKeyedSubscript:v11];
    }

    goto LABEL_9;
  }

LABEL_10:

  v15 = *MEMORY[0x1E69E9840];
}

void __45__CDMServiceCenter_handleWarmup_forCallback___block_invoke_512(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = CDMOSLoggerForCategory(3);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) serviceName];
    v5 = 136315394;
    v6 = "[CDMServiceCenter handleWarmup:forCallback:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1DC287000, v2, OS_LOG_TYPE_INFO, "%s Warmup %@", &v5, 0x16u);
  }

  [*(a1 + 32) handleCommand:*(a1 + 40) withCallback:*(a1 + 56)];
  dispatch_group_leave(*(a1 + 48));
  v4 = *MEMORY[0x1E69E9840];
}

- (id)getServicesToWarmup:(id)warmup
{
  v36 = *MEMORY[0x1E69E9840];
  warmupCopy = warmup;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_dagServices, "count")}];
  graphName = [(CDMDynamicConfig *)self->_currentConfig graphName];
  v7 = [(CDMServiceCenter *)self getEnabledDAGServiceNamesForGraph:graphName];

  commandServicesDict = self->_commandServicesDict;
  v24 = warmupCopy;
  commandName = [warmupCopy commandName];
  v10 = [(NSMutableDictionary *)commandServicesDict objectForKeyedSubscript:commandName];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = self->_dagServices;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v25 objects:v35 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    do
    {
      v15 = 0;
      do
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v25 + 1) + 8 * v15);
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        if ([v7 containsObject:v18])
        {
          v19 = [v10 containsObject:v16];

          if (!v19)
          {
            goto LABEL_13;
          }

          if ([v16 serviceState] == 2)
          {
            [v5 addObject:v16];
            goto LABEL_13;
          }

          v18 = CDMOSLoggerForCategory(3);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            serviceName = [v16 serviceName];
            serviceState = [v16 serviceState];
            *buf = 136315650;
            v30 = "[CDMServiceCenter getServicesToWarmup:]";
            v31 = 2112;
            v32 = serviceName;
            v33 = 2048;
            v34 = serviceState;
            _os_log_debug_impl(&dword_1DC287000, v18, OS_LOG_TYPE_DEBUG, "%s Service %@ is not ready: State:%tu. Skipping warmup.", buf, 0x20u);
          }
        }

LABEL_13:
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v25 objects:v35 count:16];
    }

    while (v13);
  }

  v22 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)mergeConfig:(id)config
{
  configCopy = config;
  languageCode = [configCopy languageCode];
  if (languageCode)
  {
    v5 = languageCode;
    languageCode2 = [configCopy languageCode];
    languageCode3 = [(CDMDynamicConfig *)self->_currentConfig languageCode];
    v8 = [languageCode2 isEqualToString:languageCode3];

    if ((v8 & 1) == 0)
    {
      currentConfig = self->_currentConfig;
      languageCode4 = [configCopy languageCode];
      [(CDMDynamicConfig *)currentConfig setLanguageCode:languageCode4];
    }
  }

  embeddingVersion = [configCopy embeddingVersion];
  if (embeddingVersion)
  {
    v12 = embeddingVersion;
    embeddingVersion2 = [configCopy embeddingVersion];
    embeddingVersion3 = [(CDMDynamicConfig *)self->_currentConfig embeddingVersion];
    v15 = [embeddingVersion2 isEqualToString:embeddingVersion3];

    if ((v15 & 1) == 0)
    {
      v16 = self->_currentConfig;
      embeddingVersion4 = [configCopy embeddingVersion];
      [(CDMDynamicConfig *)v16 setEmbeddingVersion:embeddingVersion4];
    }
  }

  graphName = [configCopy graphName];
  if (graphName)
  {
    v19 = graphName;
    graphName2 = [configCopy graphName];
    graphName3 = [(CDMDynamicConfig *)self->_currentConfig graphName];
    v22 = [graphName2 isEqualToString:graphName3];

    if ((v22 & 1) == 0)
    {
      v23 = self->_currentConfig;
      graphName4 = [configCopy graphName];
      [(CDMDynamicConfig *)v23 setGraphName:graphName4];
    }
  }

  siriVocabularySandboxId = [configCopy siriVocabularySandboxId];
  if (siriVocabularySandboxId)
  {
    v26 = siriVocabularySandboxId;
    siriVocabularySandboxId2 = [configCopy siriVocabularySandboxId];
    siriVocabularySandboxId3 = [(CDMDynamicConfig *)self->_currentConfig siriVocabularySandboxId];
    v29 = [siriVocabularySandboxId2 isEqualToString:siriVocabularySandboxId3];

    if ((v29 & 1) == 0)
    {
      v30 = self->_currentConfig;
      siriVocabularySandboxId4 = [configCopy siriVocabularySandboxId];
      [(CDMDynamicConfig *)v30 setSiriVocabularySandboxId:siriVocabularySandboxId4];
    }
  }

  assetPaths = [configCopy assetPaths];
  if (assetPaths)
  {
    v33 = assetPaths;
    assetPaths2 = [configCopy assetPaths];
    assetPaths3 = [(CDMDynamicConfig *)self->_currentConfig assetPaths];
    v36 = [assetPaths2 isEqualToDictionary:assetPaths3];

    if ((v36 & 1) == 0)
    {
      v37 = self->_currentConfig;
      assetPaths4 = [configCopy assetPaths];
      [(CDMDynamicConfig *)v37 setAssetPaths:assetPaths4];
    }
  }

  assetDirPath = [configCopy assetDirPath];
  if (assetDirPath)
  {
    v40 = assetDirPath;
    assetDirPath2 = [configCopy assetDirPath];
    assetDirPath3 = [(CDMDynamicConfig *)self->_currentConfig assetDirPath];
    v43 = [assetDirPath2 isEqualToString:assetDirPath3];

    if ((v43 & 1) == 0)
    {
      v44 = self->_currentConfig;
      assetDirPath4 = [configCopy assetDirPath];
      [(CDMDynamicConfig *)v44 setAssetDirPath:assetDirPath4];
    }
  }

  overrideSiriVocabSpans = [configCopy overrideSiriVocabSpans];
  if (overrideSiriVocabSpans)
  {
    v47 = overrideSiriVocabSpans;
    overrideSiriVocabSpans2 = [configCopy overrideSiriVocabSpans];
    overrideSiriVocabSpans3 = [(CDMDynamicConfig *)self->_currentConfig overrideSiriVocabSpans];
    v50 = [overrideSiriVocabSpans2 isEqualToArray:overrideSiriVocabSpans3];

    if ((v50 & 1) == 0)
    {
      v51 = self->_currentConfig;
      overrideSiriVocabSpans4 = [configCopy overrideSiriVocabSpans];
      [(CDMDynamicConfig *)v51 setOverrideSiriVocabSpans:overrideSiriVocabSpans4];
    }
  }

  overrideMentions = [configCopy overrideMentions];
  if (overrideMentions)
  {
    v54 = overrideMentions;
    overrideMentions2 = [configCopy overrideMentions];
    overrideMentions3 = [(CDMDynamicConfig *)self->_currentConfig overrideMentions];
    v57 = [overrideMentions2 isEqualToArray:overrideMentions3];

    if ((v57 & 1) == 0)
    {
      v58 = self->_currentConfig;
      overrideMentions4 = [configCopy overrideMentions];
      [(CDMDynamicConfig *)v58 setOverrideMentions:overrideMentions4];
    }
  }

  overrideContextualSpans = [configCopy overrideContextualSpans];
  if (overrideContextualSpans)
  {
    v61 = overrideContextualSpans;
    overrideContextualSpans2 = [configCopy overrideContextualSpans];
    overrideContextualSpans3 = [(CDMDynamicConfig *)self->_currentConfig overrideContextualSpans];
    v64 = [overrideContextualSpans2 isEqualToArray:overrideContextualSpans3];

    if ((v64 & 1) == 0)
    {
      v65 = self->_currentConfig;
      overrideContextualSpans4 = [configCopy overrideContextualSpans];
      [(CDMDynamicConfig *)v65 setOverrideContextualSpans:overrideContextualSpans4];
    }
  }

  serviceStateDirectory = [configCopy serviceStateDirectory];
  if (serviceStateDirectory)
  {
    v68 = serviceStateDirectory;
    serviceStateDirectory2 = [configCopy serviceStateDirectory];
    serviceStateDirectory3 = [(CDMDynamicConfig *)self->_currentConfig serviceStateDirectory];
    v71 = [serviceStateDirectory2 isEqualToString:serviceStateDirectory3];

    if ((v71 & 1) == 0)
    {
      serviceStateDirectory4 = [configCopy serviceStateDirectory];
      [(CDMDynamicConfig *)self->_currentConfig setServiceStateDirectory:serviceStateDirectory4];
    }
  }
}

- (void)handleCommand:(id)command forCallback:(id)callback
{
  v40 = *MEMORY[0x1E69E9840];
  commandCopy = command;
  callbackCopy = callback;
  if ([CDMServiceCenterUtils isServiceCenterEnabled:self->_config])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      cdmServiceCenterQueue = self->_cdmServiceCenterQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __46__CDMServiceCenter_handleCommand_forCallback___block_invoke;
      block[3] = &unk_1E862F390;
      block[4] = self;
      v30 = commandCopy;
      v31 = callbackCopy;
      dispatch_async(cdmServiceCenterQueue, block);

      v9 = v30;
LABEL_6:

      goto LABEL_21;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = self->_cdmServiceCenterQueue;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __46__CDMServiceCenter_handleCommand_forCallback___block_invoke_2;
      v26[3] = &unk_1E862F390;
      v26[4] = self;
      v27 = commandCopy;
      v28 = callbackCopy;
      dispatch_async(v10, v26);

      v9 = v27;
      goto LABEL_6;
    }

    if ([(CDMServiceCenter *)self systemState]== 3)
    {
      commandName = [commandCopy commandName];
      v12 = [(NSMutableDictionary *)self->_commandServicesDict objectForKeyedSubscript:commandName];
      if (v12)
      {
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __46__CDMServiceCenter_handleCommand_forCallback___block_invoke_496;
        v21[3] = &unk_1E862E3C0;
        v22 = commandCopy;
        selfCopy = self;
        v25 = callbackCopy;
        v24 = commandName;
        [v12 enumerateObjectsUsingBlock:v21];

        v13 = v22;
      }

      else
      {
        v17 = CDMOSLoggerForCategory(3);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v37 = "[CDMServiceCenter handleCommand:forCallback:]";
          v38 = 2114;
          v39 = commandName;
          _os_log_error_impl(&dword_1DC287000, v17, OS_LOG_TYPE_ERROR, "%s [ERR]: No service found for command %{public}@", buf, 0x16u);
        }

        if (!callbackCopy)
        {
          goto LABEL_19;
        }

        v18 = MEMORY[0x1E696ABC0];
        v32 = *MEMORY[0x1E696A578];
        v33 = @"No service found for command";
        v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
        v13 = [v18 errorWithDomain:@"CDMServiceCenter" code:0 userInfo:v19];

        (*(callbackCopy + 2))(callbackCopy, 0, v13);
      }

LABEL_19:
      goto LABEL_20;
    }

    v14 = CDMOSLoggerForCategory(3);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v37 = "[CDMServiceCenter handleCommand:forCallback:]";
      v38 = 2114;
      v39 = @"Handle command called but CDM system is not ready";
      _os_log_error_impl(&dword_1DC287000, v14, OS_LOG_TYPE_ERROR, "%s [ERR]: %{public}@", buf, 0x16u);
    }

    if (callbackCopy)
    {
      v15 = MEMORY[0x1E696ABC0];
      v34 = *MEMORY[0x1E696A578];
      v35 = @"Handle command called but CDM system is not ready";
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      commandName = [v15 errorWithDomain:@"CDMServiceCenter" code:0 userInfo:v16];

      (*(callbackCopy + 2))(callbackCopy, 0, commandName);
LABEL_20:
    }
  }

LABEL_21:

  v20 = *MEMORY[0x1E69E9840];
}

void __46__CDMServiceCenter_handleCommand_forCallback___block_invoke_496(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (v5 = *(a1 + 32), objc_opt_class(), (objc_opt_isKindOfClass()) || (v6 = *(a1 + 32), objc_opt_class(), (objc_opt_isKindOfClass()) || (v7 = *(a1 + 32), objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v8 = CDMOSLoggerForCategory(3);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v19 = [*(a1 + 32) commandName];
      *buf = 136315394;
      v30 = "[CDMServiceCenter handleCommand:forCallback:]_block_invoke";
      v31 = 2112;
      v32 = v19;
      _os_log_debug_impl(&dword_1DC287000, v8, OS_LOG_TYPE_DEBUG, "%s Dispatch supported command on _cdmServiceCenterQueue with user initiated priority 37. command=%@", buf, 0x16u);
    }

    v9 = *(*(a1 + 40) + 72);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__CDMServiceCenter_handleCommand_forCallback___block_invoke_501;
    block[3] = &unk_1E862F390;
    v10 = &v26;
    v26 = v3;
    v11 = &v27;
    v27 = *(a1 + 32);
    v12 = &v28;
    v28 = *(a1 + 56);
    v13 = v3;
    v14 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, block);
    dispatch_async(v9, v14);
  }

  else
  {
    v16 = CDMOSLoggerForCategory(3);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v20 = *(a1 + 48);
      *buf = 136315394;
      v30 = "[CDMServiceCenter handleCommand:forCallback:]_block_invoke_2";
      v31 = 2112;
      v32 = v20;
      _os_log_debug_impl(&dword_1DC287000, v16, OS_LOG_TYPE_DEBUG, "%s Dispatch %@ on CDM service center queue with queue's priority.", buf, 0x16u);
    }

    v17 = *(*(a1 + 40) + 72);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __46__CDMServiceCenter_handleCommand_forCallback___block_invoke_503;
    v21[3] = &unk_1E862F390;
    v10 = &v22;
    v22 = v3;
    v11 = &v23;
    v23 = *(a1 + 32);
    v12 = &v24;
    v24 = *(a1 + 56);
    v18 = v3;
    dispatch_async(v17, v21);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (CDMServiceCenter)initWithConfig:(id)config
{
  v69 = *MEMORY[0x1E69E9840];
  configCopy = config;
  v5 = CDMOSLoggerForCategory(4);
  spid = os_signpost_id_generate(v5);

  v6 = CDMOSLoggerForCategory(4);
  v7 = v6;
  v48 = spid - 1;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    LOWORD(buf[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v7, OS_SIGNPOST_INTERVAL_BEGIN, spid, "CDMServiceCenterSetup", "CDM Service Center Setup enableTelemetry=YES", buf, 2u);
  }

  if ([CDMServiceCenterUtils isServiceCenterEnabled:configCopy])
  {
    objc_storeStrong(&self->_config, config);
    v8 = [CDMDynamicConfig alloc];
    defaultLocaleIdentifier = [configCopy defaultLocaleIdentifier];
    v10 = [(CDMDynamicConfig *)v8 initWithLanguageCode:defaultLocaleIdentifier];
    currentConfig = self->_currentConfig;
    self->_currentConfig = v10;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    commandServicesDict = self->_commandServicesDict;
    self->_commandServicesDict = dictionary;

    v14 = [[CDMServiceGraphRunner alloc] initWithMaxConcurrentCount:[(CDMConfig *)self->_config maxConcurrentCount]];
    serviceGraphRunner = self->_serviceGraphRunner;
    self->_serviceGraphRunner = v14;

    [(CDMServiceCenter *)self addObserver:self->_serviceGraphRunner forKeyPath:@"systemState" options:0 context:0];
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_attr_make_with_qos_class(v16, +[CDMServiceCenterUtils getServiceCenterQueueQOS], 0);
    v18 = dispatch_queue_create("com.apple.siri.cdm.CDMServiceCenter", v17);
    cdmServiceCenterQueue = self->_cdmServiceCenterQueue;
    self->_cdmServiceCenterQueue = v18;

    v49 = [CDMServiceCenterUtils tryInitDAGServices:configCopy];
    v20 = [[CDMComposerService alloc] initWithConfig:self->_config];
    composerService = self->_composerService;
    self->_composerService = v20;

    v22 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSObject count](v49, "count") + 1}];
    [v22 addObjectsFromArray:v49];
    [v22 addObject:self->_composerService];
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    obj = v22;
    v54 = [obj countByEnumeratingWithState:&v63 objects:v68 count:16];
    if (v54)
    {
      v53 = *v64;
      do
      {
        for (i = 0; i != v54; ++i)
        {
          if (*v64 != v53)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v63 + 1) + 8 * i);
          [v24 addObserver:self];
          v61 = 0u;
          v62 = 0u;
          v59 = 0u;
          v60 = 0u;
          supportedCommands = [v24 supportedCommands];
          v26 = [supportedCommands countByEnumeratingWithState:&v59 objects:v67 count:16];
          if (v26)
          {
            v27 = *v60;
            do
            {
              for (j = 0; j != v26; ++j)
              {
                if (*v60 != v27)
                {
                  objc_enumerationMutation(supportedCommands);
                }

                v29 = *(*(&v59 + 1) + 8 * j);
                v30 = [(NSMutableDictionary *)self->_commandServicesDict objectForKeyedSubscript:v29];
                v31 = v30 == 0;

                if (v31)
                {
                  array = [MEMORY[0x1E695DF70] array];
                  [(NSMutableDictionary *)self->_commandServicesDict setObject:array forKeyedSubscript:v29];
                }

                v33 = [(NSMutableDictionary *)self->_commandServicesDict objectForKeyedSubscript:v29];
                [v33 addObject:v24];
              }

              v26 = [supportedCommands countByEnumeratingWithState:&v59 objects:v67 count:16];
            }

            while (v26);
          }
        }

        v54 = [obj countByEnumeratingWithState:&v63 objects:v68 count:16];
      }

      while (v54);
    }

    v34 = [MEMORY[0x1E695DEC8] arrayWithArray:v49];
    dagServices = self->_dagServices;
    self->_dagServices = v34;

    v36 = [MEMORY[0x1E695DEC8] arrayWithArray:obj];
    services = self->_services;
    self->_services = v36;

    v38 = [(CDMServiceCenter *)self extractEnabledServiceNames:self->_dagServices];
    enabledDAGServiceNames = self->_enabledDAGServiceNames;
    self->_enabledDAGServiceNames = v38;

    [(CDMComposerService *)self->_composerService updateServices:self->_dagServices];
    [(CDMComposerService *)self->_composerService updateServiceGraphRunner:self->_serviceGraphRunner];
    objc_initWeak(buf, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __35__CDMServiceCenter_initWithConfig___block_invoke;
    aBlock[3] = &unk_1E862E370;
    objc_copyWeak(&v57, buf);
    v40 = _Block_copy(aBlock);
    defaultCallback = self->_defaultCallback;
    self->_defaultCallback = v40;

    [(CDMServiceCenter *)self setSystemState:1];
    v42 = CDMOSLoggerForCategory(4);
    v43 = v42;
    if (v48 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v42))
    {
      *v55 = 0;
      _os_signpost_emit_with_name_impl(&dword_1DC287000, v43, OS_SIGNPOST_INTERVAL_END, spid, "CDMServiceCenterSetup", " enableTelemetry=YES ", v55, 2u);
    }

    objc_destroyWeak(&v57);
    objc_destroyWeak(buf);

    v44 = v49;
  }

  else
  {
    v45 = CDMOSLoggerForCategory(4);
    if (v48 >= 0xFFFFFFFFFFFFFFFELL)
    {
      v44 = v45;
    }

    else
    {
      v44 = v45;
      if (os_signpost_enabled(v45))
      {
        LOWORD(buf[0]) = 0;
        _os_signpost_emit_with_name_impl(&dword_1DC287000, v44, OS_SIGNPOST_INTERVAL_END, spid, "CDMServiceCenterSetup", " enableTelemetry=YES ", buf, 2u);
      }
    }
  }

  v47 = *MEMORY[0x1E69E9840];
  return result;
}

void __35__CDMServiceCenter_initWithConfig___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = CDMOSLoggerForCategory(3);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [v5 commandName];
    v9 = [v6 localizedDescription];
    v13 = 136315650;
    v14 = "[CDMServiceCenter initWithConfig:]_block_invoke";
    v15 = 2112;
    v16 = v8;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_1DC287000, v7, OS_LOG_TYPE_INFO, "%s [CDMCommandOutputCallback-Default] %@ : %@", &v13, 0x20u);
  }

  if (!v5 || v6)
  {
    v10 = [CDMGenericSendCommand alloc];
    [(CDMBaseCommand *)v10 setCmdError:v6];
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained handleCommand:v10 forCallback:0];
  }

  else
  {
    v10 = objc_loadWeakRetained((a1 + 32));
    [(CDMGenericSendCommand *)v10 handleCommand:v5 forCallback:0];
  }

  v12 = *MEMORY[0x1E69E9840];
}

+ (id)getDynamicConfigWithAssetCollectionForGraph:(id)graph withLocale:(id)locale withError:(id *)error withSelfMetadata:(id)metadata
{
  v44 = *MEMORY[0x1E69E9840];
  aClassName = graph;
  localeCopy = locale;
  metadataCopy = metadata;
  v10 = CDMOSLoggerForCategory(3);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    localeIdentifier = [localeCopy localeIdentifier];
    *buf = 136315650;
    v39 = "+[CDMServiceCenter getDynamicConfigWithAssetCollectionForGraph:withLocale:withError:withSelfMetadata:]";
    v40 = 2112;
    v41 = aClassName;
    v42 = 2112;
    v43 = localeIdentifier;
    _os_log_debug_impl(&dword_1DC287000, v10, OS_LOG_TYPE_DEBUG, "%s Get dynamic configs with asset collection for graph: %@ with locale: %@.", buf, 0x20u);
  }

  v11 = [CDMDynamicConfig alloc];
  localeIdentifier2 = [localeCopy localeIdentifier];
  v13 = [(CDMDynamicConfig *)v11 initWithLanguageCode:localeIdentifier2];

  if ([(NSString *)aClassName length])
  {
    v14 = NSClassFromString(aClassName);
    localeIdentifier3 = [localeCopy localeIdentifier];
    v16 = [(objc_class *)v14 getAssetsForSetup:localeIdentifier3];

    v17 = +[CDMAssetsManager getSingletonCDMAssetsManager];
    v18 = +[CDMUAFAssetsManager getNLUAFClientManagers];
    objc_sync_enter(v18);
    localeIdentifier4 = [localeCopy localeIdentifier];
    v20 = [CDMUAFAssetsManager getUAFClientManagersForLocale:localeIdentifier4 withCDMAssetsInfo:v16];

    +[CDMUAFAssetsManager reInitCDMUAFAssetsCache];
    v37 = 0;
    [v17 setupForLocale:localeCopy cdmAssetsInfo:v16 error:&v37];
    v21 = v37;
    v22 = v21;
    if (v21)
    {
      v23 = v21;
      *error = v22;
      v24 = CDMOSLoggerForCategory(3);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v39 = "+[CDMServiceCenter getDynamicConfigWithAssetCollectionForGraph:withLocale:withError:withSelfMetadata:]";
        v40 = 2114;
        v41 = v22;
        _os_log_error_impl(&dword_1DC287000, v24, OS_LOG_TYPE_ERROR, "%s [ERR]: CDM assets manager failed to setup with error: %{public}@.", buf, 0x16u);
      }

      v25 = v13;
    }

    else
    {
      v28 = [v17 getAssetsByFactorNamesForCDMAssetsInfo:v16 assetDirPath:0 locale:localeCopy];
      [(CDMDynamicConfig *)v13 setAssetPaths:v28];
      assetCollection = [(CDMDynamicConfig *)v13 assetCollection];
      getAssetPaths = [assetCollection getAssetPaths];
      [CDMSELFLogUtil cdmAssetsReported:getAssetPaths metadata:metadataCopy dataDispatcherContext:0];

      v31 = v13;
    }

    objc_sync_exit(v18);
  }

  else
  {
    v26 = CDMOSLoggerForCategory(3);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v39 = "+[CDMServiceCenter getDynamicConfigWithAssetCollectionForGraph:withLocale:withError:withSelfMetadata:]";
      _os_log_error_impl(&dword_1DC287000, v26, OS_LOG_TYPE_ERROR, "%s [ERR]: Some parameters are empty.", buf, 0xCu);
    }

    v27 = v13;
  }

  v32 = *MEMORY[0x1E69E9840];

  return v13;
}

@end