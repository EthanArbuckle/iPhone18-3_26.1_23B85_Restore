@interface CDMServiceGraph
+ (BOOL)isServiceRequiredForSetup:(id)setup;
+ (BOOL)shouldSkipNode:(id)node service:(id)service;
+ (id)getAssetsForSetup:(id)setup;
+ (id)requiredCDMGraphServices;
+ (int)getCdmRequesterWithConnectionId:(id)id;
+ (void)dispatchServiceGraphHandleMetricsLogging:(id)logging requestId:(id)id dataDispatcherContext:(id)context;
+ (void)dispatchServiceGraphRequestLogging:(id)logging dataDispatcherContext:(id)context;
+ (void)dispatchServiceGraphResponseLogging:(id)logging requestId:(id)id dataDispatcherContext:(id)context;
- (BOOL)isAcyclic;
- (CDMServiceGraph)init;
- (CDMServiceGraph)initWithServices:(id)services graphServices:(id)graphServices graphInput:(id)input languageCode:(id)code handlerId:(id)id aneLock:(id)lock dataDispatcherContext:(id)context;
- (id)addNodeWithName:(id)name bindService:(id)service aneEnabled:(BOOL)enabled requestId:(id)id block:(id)block;
- (id)getGraphServiceByClass:(Class)class;
- (id)getServiceByClass:(Class)class;
- (id)toMermaid;
- (id)topoSort;
- (id)validateRequest:(id)request;
- (void)buildGraphInternal;
- (void)failedWithError:(id)error;
- (void)failedWithErrorCode:(int64_t)code errorDomain:(id)domain message:(id)message;
- (void)populateRequesterEnumForNluRequest:(id)request;
- (void)skipNode:(id)node basedOnNode:(id)onNode withCondition:(id)condition;
@end

@implementation CDMServiceGraph

- (void)skipNode:(id)node basedOnNode:(id)onNode withCondition:(id)condition
{
  v26 = *MEMORY[0x1E69E9840];
  nodeCopy = node;
  onNodeCopy = onNode;
  conditionCopy = condition;
  if (!conditionCopy)
  {
    v17 = CDMOSLoggerForCategory(2);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      goto LABEL_16;
    }

    v22 = 136315394;
    v23 = "[CDMServiceGraph skipNode:basedOnNode:withCondition:]";
    v24 = 2112;
    v25 = nodeCopy;
    v18 = "%s [WARN]: Empty skip condition for node:%@";
LABEL_14:
    v19 = v17;
    v20 = 22;
LABEL_15:
    _os_log_impl(&dword_1DC287000, v19, OS_LOG_TYPE_INFO, v18, &v22, v20);
    goto LABEL_16;
  }

  if (([(NSMutableArray *)self->_nodes containsObject:nodeCopy]& 1) == 0)
  {
    v17 = CDMOSLoggerForCategory(2);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      goto LABEL_16;
    }

    v22 = 136315394;
    v23 = "[CDMServiceGraph skipNode:basedOnNode:withCondition:]";
    v24 = 2112;
    v25 = nodeCopy;
    v18 = "%s [WARN]: Node is not found in graph:%@";
    goto LABEL_14;
  }

  if (([(NSMutableArray *)self->_nodes containsObject:onNodeCopy]& 1) == 0)
  {
    v17 = CDMOSLoggerForCategory(2);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v22 = 136315394;
      v23 = "[CDMServiceGraph skipNode:basedOnNode:withCondition:]";
      v24 = 2112;
      v25 = onNodeCopy;
      v18 = "%s [WARN]: Node is not found in graph:%@";
      goto LABEL_14;
    }

LABEL_16:

    goto LABEL_17;
  }

  if (nodeCopy == onNodeCopy)
  {
    v17 = CDMOSLoggerForCategory(2);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      goto LABEL_16;
    }

    v22 = 136315138;
    v23 = "[CDMServiceGraph skipNode:basedOnNode:withCondition:]";
    v18 = "%s [WARN]: Same node provided as base node, ignored";
    v19 = v17;
    v20 = 12;
    goto LABEL_15;
  }

  getNodeName = [onNodeCopy getNodeName];
  getNodeName2 = [nodeCopy getNodeName];
  v13 = [(NSMutableDictionary *)self->_skipNodes objectForKey:getNodeName];

  if (!v13)
  {
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(NSMutableDictionary *)self->_skipNodes setObject:v14 forKeyedSubscript:getNodeName];
  }

  v15 = _Block_copy(conditionCopy);
  v16 = [(NSMutableDictionary *)self->_skipNodes objectForKeyedSubscript:getNodeName];
  [v16 setObject:v15 forKeyedSubscript:getNodeName2];

LABEL_17:
  v21 = *MEMORY[0x1E69E9840];
}

- (void)populateRequesterEnumForNluRequest:(id)request
{
  v24 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  requestId = [requestCopy requestId];
  if (requestId)
  {
    v5 = requestId;
    requestId2 = [requestCopy requestId];
    connectionId = [requestId2 connectionId];
    if (!connectionId)
    {
      goto LABEL_6;
    }

    v8 = connectionId;
    requestId3 = [requestCopy requestId];
    requester = [requestId3 requester];

    if (!requester)
    {
      requestId4 = [requestCopy requestId];
      connectionId2 = [requestId4 connectionId];
      v13 = [CDMServiceGraph getCdmRequesterWithConnectionId:connectionId2];
      requestId5 = [requestCopy requestId];
      [requestId5 setRequester:v13];

      v5 = CDMOSLoggerForCategory(2);
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
LABEL_7:

        goto LABEL_8;
      }

      requestId2 = [requestCopy requestId];
      connectionId3 = [requestId2 connectionId];
      requestId6 = [requestCopy requestId];
      v18 = 136315650;
      v19 = "[CDMServiceGraph populateRequesterEnumForNluRequest:]";
      v20 = 2112;
      v21 = connectionId3;
      v22 = 1024;
      requester2 = [requestId6 requester];
      _os_log_debug_impl(&dword_1DC287000, v5, OS_LOG_TYPE_DEBUG, "%s Inferring cdmRequester enum based on connectionId=%@ as requester enum=%d; use enum directly once SRD / other callers of CDM start populating RequestID.requester", &v18, 0x1Cu);

LABEL_6:
      goto LABEL_7;
    }
  }

LABEL_8:

  v17 = *MEMORY[0x1E69E9840];
}

- (id)validateRequest:(id)request
{
  v52 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v5 = requestCopy;
  if (!requestCopy)
  {
    goto LABEL_17;
  }

  currentTurnInput = [requestCopy currentTurnInput];
  if (!currentTurnInput)
  {
    goto LABEL_17;
  }

  v7 = currentTurnInput;
  currentTurnInput2 = [v5 currentTurnInput];
  asrOutputs = [currentTurnInput2 asrOutputs];
  v10 = [asrOutputs count];

  if (v10)
  {
    selfCopy = self;
    v36 = v5;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    currentTurnInput3 = [v5 currentTurnInput];
    asrOutputs2 = [currentTurnInput3 asrOutputs];

    v13 = [asrOutputs2 countByEnumeratingWithState:&v37 objects:v51 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v38;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v38 != v15)
          {
            objc_enumerationMutation(asrOutputs2);
          }

          v17 = *(*(&v37 + 1) + 8 * i);
          utterance = [v17 utterance];
          v19 = [utterance mutableCopy];

          v20 = skitRemoveBidiCharacters();
          [v17 setUtterance:v20];

          v21 = CDMOSLoggerForCategory(2);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            v22 = [v19 length];
            utterance2 = [v17 utterance];
            utterance3 = [v17 utterance];
            v25 = [utterance3 length];
            *buf = 136316162;
            v42 = "[CDMServiceGraph validateRequest:]";
            v43 = 2112;
            v44 = v19;
            v45 = 2048;
            v46 = v22;
            v47 = 2112;
            v48 = utterance2;
            v49 = 2048;
            v50 = v25;
            _os_log_debug_impl(&dword_1DC287000, v21, OS_LOG_TYPE_DEBUG, "%s Original text is '<%@>' with u16 size <%zu>. Text after filtering bidi characters is' <%@>' with u16 size <%zu>.", buf, 0x34u);
          }
        }

        v14 = [asrOutputs2 countByEnumeratingWithState:&v37 objects:v51 count:16];
      }

      while (v14);
    }

    v5 = v36;
    currentTurnInput4 = [v36 currentTurnInput];
    asrOutputs3 = [currentTurnInput4 asrOutputs];
    firstObject = [asrOutputs3 firstObject];

    utterance4 = [firstObject utterance];
    if (utterance4)
    {
      whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
      v31 = [utterance4 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

      if ([v31 length] && objc_msgSend(utterance4, "length"))
      {
        v32 = firstObject;
      }

      else
      {
        [(CDMServiceGraph *)selfCopy failedWithErrorCode:2 errorDomain:@"CDMServiceGraphErrorDomain" message:@"utterance is empty"];
        v32 = 0;
      }
    }

    else
    {
      [(CDMServiceGraph *)selfCopy failedWithErrorCode:2 errorDomain:@"CDMServiceGraphErrorDomain" message:@"utterance is nil"];
      v32 = 0;
    }
  }

  else
  {
LABEL_17:
    [(CDMServiceGraph *)self failedWithErrorCode:2 errorDomain:@"CDMServiceGraphErrorDomain" message:@"nluRequest is empty"];
    v32 = 0;
  }

  v33 = *MEMORY[0x1E69E9840];

  return v32;
}

- (void)failedWithError:(id)error
{
  language = self->_language;
  errorCopy = error;
  [CDMAnalytics recordGraphFailureEvent:language withError:errorCopy];
  v6 = [errorCopy copy];

  [(CDMServiceGraph *)self setError:v6];
}

- (void)failedWithErrorCode:(int64_t)code errorDomain:(id)domain message:(id)message
{
  v18[1] = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E696ABC0];
  v17 = *MEMORY[0x1E696A578];
  v18[0] = message;
  v9 = MEMORY[0x1E695DF20];
  messageCopy = message;
  domainCopy = domain;
  v12 = [v9 dictionaryWithObjects:v18 forKeys:&v17 count:1];
  v13 = [v8 errorWithDomain:domainCopy code:code userInfo:v12];

  [(CDMServiceGraph *)self setError:v13];
  language = self->_language;
  error = [(CDMServiceGraph *)self error];
  [CDMAnalytics recordGraphFailureEvent:language withError:error];

  v16 = *MEMORY[0x1E69E9840];
}

- (id)addNodeWithName:(id)name bindService:(id)service aneEnabled:(BOOL)enabled requestId:(id)id block:(id)block
{
  enabledCopy = enabled;
  nameCopy = name;
  serviceCopy = service;
  idCopy = id;
  blockCopy = block;
  v15 = _Block_copy(blockCopy);
  if (enabledCopy)
  {
    objc_initWeak(location, self->_aneLock);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __74__CDMServiceGraph_addNodeWithName_bindService_aneEnabled_requestId_block___block_invoke;
    aBlock[3] = &unk_1E862EE68;
    objc_copyWeak(&v43, location);
    v42 = blockCopy;
    v16 = _Block_copy(aBlock);

    objc_destroyWeak(&v43);
    objc_destroyWeak(location);
    v15 = v16;
  }

  v35 = serviceCopy;
  if ([CDMServiceGraph shouldSkipNode:nameCopy service:serviceCopy])
  {
    objc_initWeak(location, self);
    handlerId = self->_handlerId;
    v18 = v39;
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __74__CDMServiceGraph_addNodeWithName_bindService_aneEnabled_requestId_block___block_invoke_2;
    v39[3] = &unk_1E862EE90;
    objc_copyWeak(&v40, location);
    WeakRetained = objc_loadWeakRetained(location);
    cdmDataDispatcherContext = [WeakRetained cdmDataDispatcherContext];
    v21 = objc_loadWeakRetained(location);
    serviceMetrics = [v21 serviceMetrics];
    v23 = [CDMServiceGraphNode initWithName:nameCopy forHandler:handlerId withError:v39 usingFunction:&__block_literal_global_445 requestId:idCopy dataDispatcherContext:cdmDataDispatcherContext serviceMetricsArray:serviceMetrics];
  }

  else
  {
    objc_initWeak(location, self);
    v24 = self->_handlerId;
    v18 = v37;
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __74__CDMServiceGraph_addNodeWithName_bindService_aneEnabled_requestId_block___block_invoke_4;
    v37[3] = &unk_1E862EE90;
    objc_copyWeak(&v38, location);
    WeakRetained = objc_loadWeakRetained(location);
    cdmDataDispatcherContext = [WeakRetained cdmDataDispatcherContext];
    v21 = objc_loadWeakRetained(location);
    serviceMetrics = [v21 serviceMetrics];
    v23 = [CDMServiceGraphNode initWithName:nameCopy forHandler:v24 withError:v37 usingFunction:v15 requestId:idCopy dataDispatcherContext:cdmDataDispatcherContext serviceMetricsArray:serviceMetrics];
  }

  v25 = v23;

  objc_destroyWeak(v18 + 4);
  objc_destroyWeak(location);
  [(NSMutableArray *)self->_nodes addObject:v25];
  nodesWithName = self->_nodesWithName;
  getNodeName = [v25 getNodeName];
  v28 = [(NSMutableDictionary *)nodesWithName objectForKey:getNodeName];

  if (v28)
  {
    v29 = MEMORY[0x1E696AEC0];
    getNodeName2 = [v25 getNodeName];
    v31 = [v29 stringWithFormat:@"Duplicate node name: %@", getNodeName2];

    [DuplicateNodeNameException raise:@"DuplicateNodeNameException" format:@"%@", v31];
  }

  v32 = self->_nodesWithName;
  getNodeName3 = [v25 getNodeName];
  [(NSMutableDictionary *)v32 setValue:v25 forKey:getNodeName3];

  return v25;
}

void __74__CDMServiceGraph_addNodeWithName_bindService_aneEnabled_requestId_block___block_invoke(uint64_t a1, void *a2)
{
  objc_initWeak(&location, a2);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained lock];

  v4 = *(a1 + 32);
  v5 = objc_loadWeakRetained(&location);
  (*(v4 + 16))(v4, v5);

  v6 = objc_loadWeakRetained((a1 + 40));
  [v6 unlock];

  objc_destroyWeak(&location);
}

void __74__CDMServiceGraph_addNodeWithName_bindService_aneEnabled_requestId_block___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained failedWithError:v5];
  }
}

void __74__CDMServiceGraph_addNodeWithName_bindService_aneEnabled_requestId_block___block_invoke_4(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained failedWithError:v5];
  }
}

- (id)getGraphServiceByClass:(Class)class
{
  graphServiceMap = self->_graphServiceMap;
  v5 = NSStringFromClass(class);
  v6 = [(NSMutableDictionary *)graphServiceMap valueForKey:v5];

  if (!v6)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = NSStringFromClass(class);
    v9 = [v7 stringWithFormat:@"Service type %@ is unknown", v8];

    [UnknownServiceException raise:@"UnknownServiceException" format:@"%@", v9];
  }

  return v6;
}

- (id)getServiceByClass:(Class)class
{
  serviceMap = self->_serviceMap;
  v5 = NSStringFromClass(class);
  v6 = [(NSMutableDictionary *)serviceMap valueForKey:v5];

  if (!v6)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = NSStringFromClass(class);
    v9 = [v7 stringWithFormat:@"Service type %@ is unknown", v8];

    [UnknownServiceException raise:@"UnknownServiceException" format:@"%@", v9];
  }

  return v6;
}

- (BOOL)isAcyclic
{
  v12 = *MEMORY[0x1E69E9840];
  if (!self->_endNode)
  {
    v3 = CDMOSLoggerForCategory(2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v8 = 136315394;
      v9 = "[CDMServiceGraph isAcyclic]";
      v10 = 2112;
      v11 = @"Graph hasn't been built yet, building one...";
      _os_log_debug_impl(&dword_1DC287000, v3, OS_LOG_TYPE_DEBUG, "%s %@", &v8, 0x16u);
    }

    [(CDMServiceGraph *)self buildGraphInternal];
  }

  topoSort = [(CDMServiceGraph *)self topoSort];
  v5 = topoSort != 0;

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)topoSort
{
  v33 = *MEMORY[0x1E69E9840];
  if (!self->_endNode)
  {
    v2 = CDMOSLoggerForCategory(2);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "[CDMServiceGraph topoSort]";
      *&buf[12] = 2112;
      *&buf[14] = @"Graph hasn't been built yet, building one...";
      _os_log_debug_impl(&dword_1DC287000, v2, OS_LOG_TYPE_DEBUG, "%s %@", buf, 0x16u);
    }

    [(CDMServiceGraph *)self buildGraphInternal];
  }

  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  getNodes = [(CDMServiceGraph *)self getNodes];
  v5 = [getNodes countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v5)
  {
    v6 = *v25;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(getNodes);
        }

        v8 = *(*(&v24 + 1) + 8 * i);
        getNodeName = [v8 getNodeName];
        getNodeName2 = [v8 getNodeName];
        v11 = [v3 containsObject:getNodeName2];

        if (v11)
        {
          v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate CDMServiceGraphNode name: %@", getNodeName];
          [DuplicateNodeNameException raise:@"DuplicateNodeNameException" format:@"%@", v12];
        }

        [v3 addObject:getNodeName];
      }

      v5 = [getNodes countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v5);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v29 = __Block_byref_object_copy__3566;
  v30 = __Block_byref_object_dispose__3567;
  v31 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __27__CDMServiceGraph_topoSort__block_invoke;
  aBlock[3] = &unk_1E862EE40;
  aBlock[4] = buf;
  v13 = _Block_copy(aBlock);
  v14 = *(*&buf[8] + 40);
  *(*&buf[8] + 40) = v13;

  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
  endNode = self->_endNode;
  if ((*(*(*&buf[8] + 40) + 16))())
  {
    v18 = v15;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  _Block_object_dispose(buf, 8);
  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

uint64_t __27__CDMServiceGraph_topoSort__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    v10 = [v7 getNodeName];
    v11 = [v9 objectForKeyedSubscript:v10];
    v12 = [v11 intValue];

    if (v12 == 1)
    {
LABEL_16:
      v23 = 0;
    }

    else
    {
      v13 = [v9 objectForKeyedSubscript:v10];
      v14 = [v13 intValue];

      if (v14 != 2)
      {
        v15 = [MEMORY[0x1E696AD98] numberWithInt:1];
        [v9 setObject:v15 forKeyedSubscript:v10];

        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v16 = [v7 dependencies];
        v17 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v27;
          while (2)
          {
            v20 = 0;
            do
            {
              if (*v27 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v26 + 1) + 8 * v20);
              if (!(*(*(*(*(a1 + 32) + 8) + 40) + 16))())
              {

                goto LABEL_16;
              }

              ++v20;
            }

            while (v18 != v20);
            v18 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
            if (v18)
            {
              continue;
            }

            break;
          }
        }

        v22 = [MEMORY[0x1E696AD98] numberWithInt:2];
        [v9 setObject:v22 forKeyedSubscript:v10];

        [v8 addObject:v7];
      }

      v23 = 1;
    }
  }

  else
  {
    v23 = 0;
  }

  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

- (id)toMermaid
{
  v39 = *MEMORY[0x1E69E9840];
  if (!self->_endNode)
  {
    v3 = CDMOSLoggerForCategory(2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v36 = "[CDMServiceGraph toMermaid]";
      v37 = 2112;
      v38 = @"Graph hasn't been built yet, building one...";
      _os_log_debug_impl(&dword_1DC287000, v3, OS_LOG_TYPE_DEBUG, "%s %@", buf, 0x16u);
    }

    [(CDMServiceGraph *)self buildGraphInternal];
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = self->_nodes;
  v23 = [(NSMutableArray *)obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v23)
  {
    v22 = *v30;
    v4 = &stru_1F5800F50;
    do
    {
      v5 = 0;
      do
      {
        if (*v30 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = v5;
        v6 = *(*(&v29 + 1) + 8 * v5);
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        dependencies = [v6 dependencies];
        v8 = [dependencies countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v26;
          do
          {
            v11 = 0;
            v12 = v4;
            do
            {
              if (*v26 != v10)
              {
                objc_enumerationMutation(dependencies);
              }

              v13 = MEMORY[0x1E696AEC0];
              getNodeName = [*(*(&v25 + 1) + 8 * v11) getNodeName];
              getNodeName2 = [v6 getNodeName];
              v16 = [v13 stringWithFormat:@"  %@-->%@\n", getNodeName, getNodeName2];

              v4 = [(__CFString *)v12 stringByAppendingString:v16];

              ++v11;
              v12 = v4;
            }

            while (v9 != v11);
            v9 = [dependencies countByEnumeratingWithState:&v25 objects:v33 count:16];
          }

          while (v9);
        }

        v5 = v24 + 1;
      }

      while (v24 + 1 != v23);
      v23 = [(NSMutableArray *)obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v23);
  }

  else
  {
    v4 = &stru_1F5800F50;
  }

  v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n%@\n", @"graph TD"];
  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v17, v4];

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (void)buildGraphInternal
{
  v43 = *MEMORY[0x1E69E9840];
  [(CDMServiceGraph *)self buildGraph];
  v3 = self->_handlerId;
  v4 = [(CDMServiceGraph *)self addNodeWithName:@"endNode" requestId:0 block:&__block_literal_global_3578];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v5 = self->_nodes;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v33 objects:v42 count:16];
  if (v6)
  {
    v7 = *v34;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v34 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if (*(*(&v33 + 1) + 8 * i) != v4)
        {
          [v4 addDependency:?];
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v33 objects:v42 count:16];
    }

    while (v6);
  }

  objc_storeStrong(&self->_endNode, v4);
  getGraphInput = [(CDMServiceGraph *)self getGraphInput];
  loggingRequestID = [getGraphInput loggingRequestID];

  serviceMetrics = [(CDMServiceGraph *)self serviceMetrics];
  cdmDataDispatcherContext = [(CDMServiceGraph *)self cdmDataDispatcherContext];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __37__CDMServiceGraph_buildGraphInternal__block_invoke_405;
  v29[3] = &unk_1E862EE18;
  v13 = serviceMetrics;
  v30 = v13;
  v31 = loggingRequestID;
  v14 = cdmDataDispatcherContext;
  v32 = v14;
  v24 = v31;
  v15 = [(CDMServiceGraph *)self addNodeWithName:@"metricsNode" requestId:v31 block:v29];
  v16 = v3;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v17 = self->_nodes;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v25 objects:v41 count:16];
  if (v18)
  {
    v19 = *v26;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(v17);
        }

        if (*(*(&v25 + 1) + 8 * j) != v15)
        {
          [v15 addDependency:?];
        }
      }

      v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v25 objects:v41 count:16];
    }

    while (v18);
  }

  v21 = CDMOSLoggerForCategory(2);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    toMermaid = [(CDMServiceGraph *)self toMermaid];
    *buf = 136315394;
    v38 = "[CDMServiceGraph buildGraphInternal]";
    v39 = 2112;
    v40 = toMermaid;
    _os_log_debug_impl(&dword_1DC287000, v21, OS_LOG_TYPE_DEBUG, "%s Mermaid graph%@", buf, 0x16u);
  }

  v22 = *MEMORY[0x1E69E9840];
}

uint64_t __37__CDMServiceGraph_buildGraphInternal__block_invoke_405(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = CDMOSLoggerForCategory(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315138;
    v6 = "[CDMServiceGraph buildGraphInternal]_block_invoke";
    _os_log_debug_impl(&dword_1DC287000, v2, OS_LOG_TYPE_DEBUG, "%s CDMServiceGraph is attempting to emit service metrics log.", &v5, 0xCu);
  }

  result = [CDMServiceGraph dispatchServiceGraphHandleMetricsLogging:a1[4] requestId:a1[5] dataDispatcherContext:a1[6]];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (CDMServiceGraph)init
{
  [InvalidMethodCalledException raise:@"InvalidMethodCalledException" format:@"init shouldn't be called"];

  return 0;
}

- (CDMServiceGraph)initWithServices:(id)services graphServices:(id)graphServices graphInput:(id)input languageCode:(id)code handlerId:(id)id aneLock:(id)lock dataDispatcherContext:(id)context
{
  v101 = *MEMORY[0x1E69E9840];
  servicesCopy = services;
  graphServicesCopy = graphServices;
  inputCopy = input;
  obj = code;
  codeCopy = code;
  idCopy = id;
  idCopy2 = id;
  lockCopy = lock;
  lockCopy2 = lock;
  contextCopy = context;
  v92.receiver = self;
  v92.super_class = CDMServiceGraph;
  v22 = [(CDMServiceGraph *)&v92 init];
  if (v22)
  {
    v74 = contextCopy;
    v75 = lockCopy2;
    v76 = idCopy2;
    v77 = codeCopy;
    v78 = inputCopy;
    v83 = graphServicesCopy;
    v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
    serviceMap = v22->_serviceMap;
    v22->_serviceMap = v23;

    v25 = objc_alloc_init(MEMORY[0x1E695DF90]);
    graphServiceMap = v22->_graphServiceMap;
    v22->_graphServiceMap = v25;

    v27 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(servicesCopy, "count")}];
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v79 = servicesCopy;
    v28 = servicesCopy;
    v29 = [v28 countByEnumeratingWithState:&v88 objects:v100 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v89;
      v32 = 1;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v89 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v34 = *(*(&v88 + 1) + 8 * i);
          v35 = objc_opt_class();
          v36 = NSStringFromClass(v35);
          [(NSMutableDictionary *)v22->_serviceMap setObject:v34 forKeyedSubscript:v36];
          if ([v34 serviceState] == 3)
          {
            serviceName = [v34 serviceName];
            [v27 addObject:serviceName];

            v32 = 0;
          }
        }

        v30 = [v28 countByEnumeratingWithState:&v88 objects:v100 count:16];
      }

      while (v30);
    }

    else
    {
      v32 = 1;
    }

    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v38 = v83;
    v39 = [v38 countByEnumeratingWithState:&v84 objects:v99 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v85;
      do
      {
        for (j = 0; j != v40; ++j)
        {
          if (*v85 != v41)
          {
            objc_enumerationMutation(v38);
          }

          v43 = *(*(&v84 + 1) + 8 * j);
          v44 = objc_opt_class();
          v45 = NSStringFromClass(v44);
          [(NSMutableDictionary *)v22->_graphServiceMap setObject:v43 forKeyedSubscript:v45];
        }

        v40 = [v38 countByEnumeratingWithState:&v84 objects:v99 count:16];
      }

      while (v40);
    }

    if (v32)
    {
      inputCopy = v78;
      contextCopy = v74;
      if ([(CDMServiceGraph *)v22 supportedGraphInputType])
      {
        [(CDMServiceGraph *)v22 supportedGraphInputType];
        servicesCopy = v79;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v46 = MEMORY[0x1E696AEC0];
          supportedGraphInputType = [(CDMServiceGraph *)v22 supportedGraphInputType];
          v48 = objc_opt_class();
          v49 = NSStringFromClass(v48);
          v50 = [v46 stringWithFormat:@"Incompatible type for graphInput, expected:%@, received:%@", supportedGraphInputType, v49];

          v51 = CDMOSLoggerForCategory(2);
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v94 = "[CDMServiceGraph initWithServices:graphServices:graphInput:languageCode:handlerId:aneLock:dataDispatcherContext:]";
            v95 = 2112;
            v96 = v50;
            _os_log_error_impl(&dword_1DC287000, v51, OS_LOG_TYPE_ERROR, "%s [ERR]: %@", buf, 0x16u);
          }

          [IncompatibleInputTypeException raise:@"IncompatibleInputTypeException" format:@"%@", v50];
        }

        objc_storeStrong(&v22->_graphInput, input);
        v52 = v74;
        cdmDataDispatcherContext = v22->_cdmDataDispatcherContext;
        v22->_cdmDataDispatcherContext = v52;
      }

      else
      {
        cdmDataDispatcherContext = v22->_graphInput;
        v22->_graphInput = 0;
        servicesCopy = v79;
      }

      graphServicesCopy = v83;

      objc_storeStrong(&v22->_language, obj);
      graphOutput = v22->_graphOutput;
      v22->_graphOutput = 0;

      error = v22->_error;
      v22->_error = 0;

      objc_storeStrong(&v22->_handlerId, idCopy);
      v62 = objc_alloc_init(MEMORY[0x1E695DF70]);
      nodes = v22->_nodes;
      v22->_nodes = v62;

      v64 = objc_alloc_init(MEMORY[0x1E695DF90]);
      nodesWithName = v22->_nodesWithName;
      v22->_nodesWithName = v64;

      endNode = v22->_endNode;
      v22->_endNode = 0;

      objc_storeStrong(&v22->_aneLock, lockCopy);
      v67 = objc_alloc_init(MEMORY[0x1E695DF90]);
      skipNodes = v22->_skipNodes;
      v22->_skipNodes = v67;

      v69 = objc_alloc_init(MEMORY[0x1E695DF70]);
      serviceMetrics = v22->_serviceMetrics;
      v22->_serviceMetrics = v69;

      [(CDMServiceGraph *)v22 buildGraphInternal];
    }

    else
    {
      v54 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Abort building service graph, the following services are not setup: %@", v27];
      v55 = MEMORY[0x1E696ABC0];
      v97 = *MEMORY[0x1E696A578];
      v98 = v54;
      v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v98 forKeys:&v97 count:1];
      v57 = [v55 errorWithDomain:@"CDMServiceGraphErrorDomain" code:3 userInfo:v56];
      v58 = v22->_error;
      v22->_error = v57;

      v59 = CDMOSLoggerForCategory(2);
      inputCopy = v78;
      contextCopy = v74;
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        v73 = [CDMPlatformUtils prettyPrintError:v22->_error];
        *buf = 136315394;
        v94 = "[CDMServiceGraph initWithServices:graphServices:graphInput:languageCode:handlerId:aneLock:dataDispatcherContext:]";
        v95 = 2112;
        v96 = v73;
        _os_log_error_impl(&dword_1DC287000, v59, OS_LOG_TYPE_ERROR, "%s [ERR]: %@", buf, 0x16u);
      }

      servicesCopy = v79;
      graphServicesCopy = v83;
    }

    idCopy2 = v76;
    codeCopy = v77;

    lockCopy2 = v75;
  }

  v71 = *MEMORY[0x1E69E9840];
  return v22;
}

+ (id)getAssetsForSetup:(id)setup
{
  v70 = *MEMORY[0x1E69E9840];
  setupCopy = setup;
  v4 = [CDMAssetsInfo alloc];
  selfCopy = self;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v38 = [(CDMAssetsInfo *)v4 initWithGraphName:v6];

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [selfCopy requiredDAGServices];
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  obj = v59 = 0u;
  v34 = [obj countByEnumeratingWithState:&v58 objects:v69 count:16];
  if (v34)
  {
    v35 = *v59;
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v59 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v58 + 1) + 8 * i);
        v43 = [CDMServiceGraph isServiceRequiredForSetup:v8];
        getCDMServiceAssetConfig = [NSClassFromString(v8) getCDMServiceAssetConfig];
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v45 = getCDMServiceAssetConfig;
        getAllAssetSets = [getCDMServiceAssetConfig getAllAssetSets];
        v11 = [getAllAssetSets countByEnumeratingWithState:&v54 objects:v68 count:16];
        if (v11)
        {
          v41 = getAllAssetSets;
          v42 = *v55;
          do
          {
            v44 = v11;
            for (j = 0; j != v44; ++j)
            {
              if (*v55 != v42)
              {
                objc_enumerationMutation(v41);
              }

              v13 = *(*(&v54 + 1) + 8 * j);
              v14 = [v45 getCDMAssetsFactorConfigForAssetSet:{objc_msgSend(v13, "integerValue")}];
              v15 = [dictionary objectForKeyedSubscript:v13];

              if (v15)
              {
                getFactorToFoldersMapping = [dictionary objectForKeyedSubscript:v13];
                [getFactorToFoldersMapping addEntriesFromCDMAssetsFactorConfig:v14];
              }

              else
              {
                v17 = [CDMAssetsFactorConfig alloc];
                getFactorToFoldersMapping = [v14 getFactorToFoldersMapping];
                v18 = [(CDMAssetsFactorConfig *)v17 initWithFactorToFoldersMapping:getFactorToFoldersMapping];
                [dictionary setObject:v18 forKeyedSubscript:v13];
              }

              if (v43)
              {
                v52 = 0u;
                v53 = 0u;
                v50 = 0u;
                v51 = 0u;
                getAllFactors = [v45 getAllFactors];
                v20 = [getAllFactors countByEnumeratingWithState:&v50 objects:v67 count:16];
                if (v20)
                {
                  v21 = *v51;
                  do
                  {
                    for (k = 0; k != v20; ++k)
                    {
                      if (*v51 != v21)
                      {
                        objc_enumerationMutation(getAllFactors);
                      }

                      v23 = *(*(&v50 + 1) + 8 * k);
                      v24 = [dictionary objectForKeyedSubscript:v13];
                      [v24 setIsRequiredForFactor:v23 isRequired:1];
                    }

                    v20 = [getAllFactors countByEnumeratingWithState:&v50 objects:v67 count:16];
                  }

                  while (v20);
                }
              }
            }

            getAllAssetSets = v41;
            v11 = [v41 countByEnumeratingWithState:&v54 objects:v68 count:16];
          }

          while (v11);
        }
      }

      v34 = [obj countByEnumeratingWithState:&v58 objects:v69 count:16];
    }

    while (v34);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v25 = dictionary;
  v26 = [v25 countByEnumeratingWithState:&v46 objects:v66 count:16];
  if (v26)
  {
    v27 = *v47;
    do
    {
      for (m = 0; m != v26; ++m)
      {
        if (*v47 != v27)
        {
          objc_enumerationMutation(v25);
        }

        v29 = *(*(&v46 + 1) + 8 * m);
        v30 = [selfCopy getUsageForAssetSetName:objc_msgSend(v29 withLocale:{"integerValue"), setupCopy}];
        if (v30)
        {
          v31 = [v25 objectForKeyedSubscript:v29];
          -[CDMAssetsInfo setAssetsUsages:withCDMAssetsFactorConfig:forCDMAssetSet:](v38, "setAssetsUsages:withCDMAssetsFactorConfig:forCDMAssetSet:", v30, v31, [v29 integerValue]);
        }

        else
        {
          v31 = CDMOSLoggerForCategory(2);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v63 = "+[CDMServiceGraph getAssetsForSetup:]";
            v64 = 2112;
            v65 = v29;
            _os_log_error_impl(&dword_1DC287000, v31, OS_LOG_TYPE_ERROR, "%s [ERR]: Usages not found for %@, skipping assets for this cdmAssetSet for setup", buf, 0x16u);
          }
        }
      }

      v26 = [v25 countByEnumeratingWithState:&v46 objects:v66 count:16];
    }

    while (v26);
  }

  v32 = *MEMORY[0x1E69E9840];

  return v38;
}

+ (BOOL)isServiceRequiredForSetup:(id)setup
{
  setupCopy = setup;
  if (-[objc_class isEnabled](NSClassFromString(setupCopy), "isEnabled") && (-[objc_class getCDMServiceAssetConfig](NSClassFromString(setupCopy), "getCDMServiceAssetConfig"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 isAssetRequiredForSetup], v4, v5))
  {
    getCDMServiceAssetConfig = [NSClassFromString(setupCopy) getCDMServiceAssetConfig];
    getCDMAssetSetToFactorsConfig = [getCDMServiceAssetConfig getCDMAssetSetToFactorsConfig];
    hasAssetSetToFactorsMapping = [getCDMAssetSetToFactorsConfig hasAssetSetToFactorsMapping];
  }

  else
  {
    hasAssetSetToFactorsMapping = 0;
  }

  return hasAssetSetToFactorsMapping;
}

+ (void)dispatchServiceGraphHandleMetricsLogging:(id)logging requestId:(id)id dataDispatcherContext:(id)context
{
  loggingCopy = logging;
  idCopy = id;
  contextCopy = context;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy__460;
  v19[4] = __Block_byref_object_dispose__461;
  v20 = [CDMSELFLogUtil createSELFMetadataWithRequestId:idCopy];
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = __Block_byref_object_copy__460;
  v17[4] = __Block_byref_object_dispose__461;
  v10 = contextCopy;
  v18 = v10;
  v11 = +[CDMDataDispatcherCompletionQueue getDataDispatcherCompletionQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __92__CDMServiceGraph_dispatchServiceGraphHandleMetricsLogging_requestId_dataDispatcherContext___block_invoke;
  block[3] = &unk_1E862EF48;
  v14 = loggingCopy;
  v15 = v19;
  v16 = v17;
  v12 = loggingCopy;
  dispatch_async(v11, block);

  _Block_object_dispose(v17, 8);
  _Block_object_dispose(v19, 8);
}

void __92__CDMServiceGraph_dispatchServiceGraphHandleMetricsLogging_requestId_dataDispatcherContext___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = os_signpost_id_generate(CDMLogContext);
  v3 = CDMLogContext;
  v4 = v3;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v2, "CDMDataDispatcher-SELF", "dispatchCdmServiceHandleMetricsData", buf, 2u);
  }

  v5 = objc_alloc_init(MEMORY[0x1E69CF168]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v5 addHandleMetrics:{*(*(&v16 + 1) + 8 * i), v16}];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v8);
  }

  v11 = objc_alloc_init(MEMORY[0x1E69CF2A0]);
  [v11 setCdmServiceHandleMetricsReported:v5];
  [v11 setEventMetadata:*(*(*(a1 + 40) + 8) + 40)];
  v12 = objc_alloc_init(MEMORY[0x1E69D13F0]);
  [v12 setMainEvent:v11];
  [CDMSELFLogUtil emitEventsFromContainer:v12 mainEventLogMessage:@"SELF CDMServiceHandleMetricsReported event emitted" dataDispatcherContext:*(*(*(a1 + 48) + 8) + 40)];
  v13 = CDMLogContext;
  v14 = v13;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v14, OS_SIGNPOST_INTERVAL_END, v2, "CDMDataDispatcher-SELF", "", buf, 2u);
  }

  v15 = *MEMORY[0x1E69E9840];
}

+ (void)dispatchServiceGraphResponseLogging:(id)logging requestId:(id)id dataDispatcherContext:(id)context
{
  v37 = *MEMORY[0x1E69E9840];
  loggingCopy = logging;
  idCopy = id;
  contextCopy = context;
  v11 = CDMOSLoggerForCategory(2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "+[CDMServiceGraph dispatchServiceGraphResponseLogging:requestId:dataDispatcherContext:]";
    _os_log_debug_impl(&dword_1DC287000, v11, OS_LOG_TYPE_DEBUG, "%s CDMDataDispatcher is about to dispatch CDM Response data.", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__460;
  v35 = __Block_byref_object_dispose__461;
  v36 = [CDMSELFLogUtil createSELFMetadataWithRequestId:idCopy];
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = __Block_byref_object_copy__460;
  v26[4] = __Block_byref_object_dispose__461;
  v12 = contextCopy;
  v27 = v12;
  v13 = mach_absolute_time();
  v14 = +[CDMDataDispatcherCompletionQueue getDataDispatcherCompletionQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__CDMServiceGraph_dispatchServiceGraphResponseLogging_requestId_dataDispatcherContext___block_invoke;
  block[3] = &unk_1E862EF20;
  block[4] = &buf;
  block[5] = v26;
  block[6] = v13;
  dispatch_async(v14, block);

  responseFeatureStoreStreamId = [self responseFeatureStoreStreamId];
  LODWORD(v14) = responseFeatureStoreStreamId == 0;

  if (v14)
  {
    v17 = CDMOSLoggerForCategory(2);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      *v28 = 136315394;
      v29 = "+[CDMServiceGraph dispatchServiceGraphResponseLogging:requestId:dataDispatcherContext:]";
      v30 = 2112;
      v31 = v20;
      _os_log_debug_impl(&dword_1DC287000, v17, OS_LOG_TYPE_DEBUG, "%s Graph: %@ has not adopted base featurestore response insertion. Skipping", v28, 0x16u);
    }
  }

  else
  {
    v16 = +[CDMDataDispatcherCompletionQueue getDataDispatcherCompletionQueue];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __87__CDMServiceGraph_dispatchServiceGraphResponseLogging_requestId_dataDispatcherContext___block_invoke_473;
    v21[3] = &unk_1E862EEF8;
    selfCopy = self;
    v22 = loggingCopy;
    v23 = idCopy;
    dispatch_async(v16, v21);

    v17 = v22;
  }

  _Block_object_dispose(v26, 8);
  _Block_object_dispose(&buf, 8);

  v18 = *MEMORY[0x1E69E9840];
}

void __87__CDMServiceGraph_dispatchServiceGraphResponseLogging_requestId_dataDispatcherContext___block_invoke(void *a1)
{
  v2 = os_signpost_id_generate(CDMLogContext);
  v3 = CDMLogContext;
  v4 = v3;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v2, "CDMDataDispatcher-SELF", "dispatchCdmResponseData", buf, 2u);
  }

  [CDMSELFLogUtil cdmEnded:0 metadata:*(*(a1[4] + 8) + 40) logMessage:@"SELF CDM Request ended message emitted" machAbsoluteTime:a1[6] dataDispatcherContext:*(*(a1[5] + 8) + 40)];
  v5 = CDMLogContext;
  v6 = v5;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v6, OS_SIGNPOST_INTERVAL_END, v2, "CDMDataDispatcher-SELF", "", v7, 2u);
  }
}

void __87__CDMServiceGraph_dispatchServiceGraphResponseLogging_requestId_dataDispatcherContext___block_invoke_473(uint64_t a1)
{
  v2 = os_signpost_id_generate(CDMLogContext);
  v3 = CDMLogContext;
  v4 = v3;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v2, "CDMDataDispatcher-FS", "insertResponseToFeatureStore", buf, 2u);
  }

  v5 = [*(a1 + 48) serializeFeatureStoreWithResponseCmd:*(a1 + 32)];
  v6 = [*(a1 + 40) idA];
  v7 = [*(a1 + 48) responseFeatureStoreStreamId];
  [CDMFeatureStoreUtils insertJsonStringToFeatureStore:v5 interactionId:v6 streamId:v7];

  v8 = CDMLogContext;
  v9 = v8;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v10 = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v9, OS_SIGNPOST_INTERVAL_END, v2, "CDMDataDispatcher-FS", "", v10, 2u);
  }
}

+ (void)dispatchServiceGraphRequestLogging:(id)logging dataDispatcherContext:(id)context
{
  v35 = *MEMORY[0x1E69E9840];
  loggingCopy = logging;
  contextCopy = context;
  loggingRequestID = [loggingCopy loggingRequestID];
  v9 = CDMOSLoggerForCategory(2);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "+[CDMServiceGraph dispatchServiceGraphRequestLogging:dataDispatcherContext:]";
    _os_log_debug_impl(&dword_1DC287000, v9, OS_LOG_TYPE_DEBUG, "%s CDMDataDispatcher is about to dispatch CDM Request data.", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__460;
  v33 = __Block_byref_object_dispose__461;
  v34 = [CDMSELFLogUtil createSELFMetadataWithRequestId:loggingRequestID];
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__460;
  v24[4] = __Block_byref_object_dispose__461;
  v10 = contextCopy;
  v25 = v10;
  v11 = mach_absolute_time();
  v12 = +[CDMDataDispatcherCompletionQueue getDataDispatcherCompletionQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__CDMServiceGraph_dispatchServiceGraphRequestLogging_dataDispatcherContext___block_invoke;
  block[3] = &unk_1E862EED0;
  block[6] = v11;
  block[7] = self;
  block[4] = &buf;
  block[5] = v24;
  dispatch_async(v12, block);

  requestFeatureStoreStreamId = [self requestFeatureStoreStreamId];
  LODWORD(v12) = requestFeatureStoreStreamId == 0;

  if (v12)
  {
    v15 = CDMOSLoggerForCategory(2);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      *v26 = 136315394;
      v27 = "+[CDMServiceGraph dispatchServiceGraphRequestLogging:dataDispatcherContext:]";
      v28 = 2112;
      v29 = v18;
      _os_log_debug_impl(&dword_1DC287000, v15, OS_LOG_TYPE_DEBUG, "%s Graph: %@ has not adopted base featurestore request insertion. Skipping", v26, 0x16u);
    }
  }

  else
  {
    v14 = +[CDMDataDispatcherCompletionQueue getDataDispatcherCompletionQueue];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __76__CDMServiceGraph_dispatchServiceGraphRequestLogging_dataDispatcherContext___block_invoke_468;
    v19[3] = &unk_1E862EEF8;
    selfCopy = self;
    v20 = loggingCopy;
    v21 = loggingRequestID;
    dispatch_async(v14, v19);

    v15 = v20;
  }

  _Block_object_dispose(v24, 8);
  _Block_object_dispose(&buf, 8);

  v16 = *MEMORY[0x1E69E9840];
}

void __76__CDMServiceGraph_dispatchServiceGraphRequestLogging_dataDispatcherContext___block_invoke(uint64_t a1)
{
  v2 = os_signpost_id_generate(CDMLogContext);
  v3 = CDMLogContext;
  v4 = v3;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v2, "CDMDataDispatcher-SELF", "dispatchCdmRequestData", buf, 2u);
  }

  +[CDMSELFLogUtil cdmStarted:metadata:logMessage:machAbsoluteTime:currentServiceGraph:dataDispatcherContext:](CDMSELFLogUtil, "cdmStarted:metadata:logMessage:machAbsoluteTime:currentServiceGraph:dataDispatcherContext:", 0, *(*(*(a1 + 32) + 8) + 40), @"SELF CDM started message emitted from service graph", *(a1 + 48), [*(a1 + 56) getNLXSchemaCDMServiceGraphName], *(*(*(a1 + 40) + 8) + 40));
  v5 = CDMLogContext;
  v6 = v5;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v6, OS_SIGNPOST_INTERVAL_END, v2, "CDMDataDispatcher-SELF", "", v7, 2u);
  }
}

void __76__CDMServiceGraph_dispatchServiceGraphRequestLogging_dataDispatcherContext___block_invoke_468(uint64_t a1)
{
  v2 = os_signpost_id_generate(CDMLogContext);
  v3 = CDMLogContext;
  v4 = v3;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v2, "CDMDataDispatcher-FS", "insertRequestToFeatureStore", buf, 2u);
  }

  v5 = [*(a1 + 48) serializeFeatureStoreWithRequestCmd:*(a1 + 32)];
  v6 = [*(a1 + 40) idA];
  v7 = [*(a1 + 48) requestFeatureStoreStreamId];
  [CDMFeatureStoreUtils insertJsonStringToFeatureStore:v5 interactionId:v6 streamId:v7];

  v8 = CDMLogContext;
  v9 = v8;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v10 = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v9, OS_SIGNPOST_INTERVAL_END, v2, "CDMDataDispatcher-FS", "", v10, 2u);
  }
}

+ (BOOL)shouldSkipNode:(id)node service:(id)service
{
  nodeCopy = node;
  serviceCopy = service;
  v7 = serviceCopy && (![objc_opt_class() isEnabled] || objc_msgSend(serviceCopy, "serviceState") == 4);

  return v7;
}

+ (int)getCdmRequesterWithConnectionId:(id)id
{
  idCopy = id;
  v4 = idCopy;
  if (idCopy)
  {
    if ([idCopy isEqualToString:@"ORCHESTRATOR"])
    {
      v5 = 1;
    }

    else if ([v4 isEqualToString:@"CURARE"])
    {
      v5 = 2;
    }

    else if ([v4 isEqualToString:@"LIGHTHOUSE"])
    {
      v5 = 3;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)requiredCDMGraphServices
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFD8]);

  return v2;
}

@end