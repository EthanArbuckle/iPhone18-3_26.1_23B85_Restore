@interface CDMServiceGraphRunner
- (CDMServiceGraphRunner)init;
- (CDMServiceGraphRunner)initWithMaxConcurrentCount:(int)count;
- (id)getOperationState:(id)state;
- (void)cancelAllHandlers;
- (void)cancelHandler:(id)handler;
- (void)cancelHandlerById:(id)id causeByError:(BOOL)error;
- (void)dealloc;
- (void)dumpServiceGraphNodeQueue;
- (void)finishHandlerById:(id)id;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)runHandlerAsync:(id)async withCompletion:(id)completion;
- (void)skipNode:(id)node forCondition:(id)condition withHandlerId:(id)id;
@end

@implementation CDMServiceGraphRunner

- (void)dealloc
{
  v45 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = MEMORY[0x1E695DEC8];
  allKeys = [(NSMutableDictionary *)selfCopy->_handlerMap allKeys];
  v5 = [v3 arrayWithArray:allKeys];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v35 objects:v44 count:16];
  if (v6)
  {
    v28 = *v36;
    *&v7 = 136315394;
    v25 = v7;
    do
    {
      v29 = v6;
      for (i = 0; i != v29; ++i)
      {
        if (*v36 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v35 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)selfCopy->_handlerMap objectForKey:v9, v25];
        v11 = v10;
        if (v10 && [v10 getHandlerState] == 1)
        {
          v12 = CDMOSLoggerForCategory(2);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            handlerId = [v11 handlerId];
            *buf = v25;
            v41 = "[CDMServiceGraphRunner dealloc]";
            v42 = 2112;
            v43 = handlerId;
            _os_log_debug_impl(&dword_1DC287000, v12, OS_LOG_TYPE_DEBUG, "%s CDMServiceGraphRunner: dealloc. Removing observers for running handler with id:%@ .", buf, 0x16u);
          }

          getServiceGraph = [v11 getServiceGraph];
          getEndNode = [getServiceGraph getEndNode];

          [getEndNode removeObserver:selfCopy forKeyPath:@"isFinished"];
          getServiceGraph2 = [v11 getServiceGraph];
          [getServiceGraph2 removeObserver:selfCopy forKeyPath:@"error"];

          getServiceGraph3 = [v11 getServiceGraph];
          getNodesWithName = [getServiceGraph3 getNodesWithName];

          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          v17 = [(NSMutableDictionary *)selfCopy->_handlerSkipMap objectForKeyedSubscript:v9];
          v18 = [v17 countByEnumeratingWithState:&v31 objects:v39 count:16];
          if (v18)
          {
            v19 = *v32;
            do
            {
              for (j = 0; j != v18; ++j)
              {
                if (*v32 != v19)
                {
                  objc_enumerationMutation(v17);
                }

                v21 = [getNodesWithName objectForKeyedSubscript:*(*(&v31 + 1) + 8 * j)];
                v22 = v21;
                if (v21)
                {
                  [v21 removeObserver:selfCopy forKeyPath:@"isFinished"];
                }
              }

              v18 = [v17 countByEnumeratingWithState:&v31 objects:v39 count:16];
            }

            while (v18);
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v35 objects:v44 count:16];
    }

    while (v6);
  }

  objc_sync_exit(selfCopy);
  v30.receiver = selfCopy;
  v30.super_class = CDMServiceGraphRunner;
  [(CDMServiceGraphRunner *)&v30 dealloc];
  v24 = *MEMORY[0x1E69E9840];
}

- (void)dumpServiceGraphNodeQueue
{
  v52 = *MEMORY[0x1E69E9840];
  [(CDMServiceGraphRunner *)self getServiceGraphNodeQueue];
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  obj = v42 = 0u;
  v3 = [obj countByEnumeratingWithState:&v41 objects:v51 count:16];
  if (v3)
  {
    v4 = *v42;
    v5 = @"\nQueue:\n";
    do
    {
      v6 = 0;
      v7 = v5;
      do
      {
        if (*v42 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v41 + 1) + 8 * v6);
        v9 = [(CDMServiceGraphRunner *)self getOperationState:v8];
        getNodeName = [v8 getNodeName];

        v5 = [(__CFString *)v7 stringByAppendingFormat:@"{%@, %@}, ", getNodeName, v9];

        ++v6;
        v7 = v5;
      }

      while (v3 != v6);
      v3 = [obj countByEnumeratingWithState:&v41 objects:v51 count:16];
    }

    while (v3);
  }

  else
  {
    v5 = @"\nQueue:\n";
  }

  v11 = [(__CFString *)v5 stringByAppendingString:@"\nHandlers:\n"];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v27 = selfCopy->_operationMap;
  v13 = [(NSMutableDictionary *)v27 countByEnumeratingWithState:&v37 objects:v50 count:16];
  if (v13)
  {
    v28 = *v38;
    v29 = v13;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v38 != v28)
        {
          objc_enumerationMutation(v27);
        }

        v14 = *(*(&v37 + 1) + 8 * i);
        v31 = [(NSMutableDictionary *)selfCopy->_handlerMap objectForKeyedSubscript:v14];
        v15 = [v11 stringByAppendingFormat:@"{%@, %lu, [", v14, objc_msgSend(v31, "getHandlerState")];

        v16 = [(NSMutableDictionary *)selfCopy->_operationMap objectForKey:v14];
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v17 = v16;
        v18 = [v17 countByEnumeratingWithState:&v33 objects:v49 count:16];
        if (v18)
        {
          v19 = *v34;
          do
          {
            v20 = 0;
            v21 = v15;
            do
            {
              if (*v34 != v19)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v33 + 1) + 8 * v20);
              v23 = [(CDMServiceGraphRunner *)selfCopy getOperationState:v22];
              getNodeName2 = [v22 getNodeName];
              v15 = [v21 stringByAppendingFormat:@"{%@, %@}, ", getNodeName2, v23];

              ++v20;
              v21 = v15;
            }

            while (v18 != v20);
            v18 = [v17 countByEnumeratingWithState:&v33 objects:v49 count:16];
          }

          while (v18);
        }

        v11 = [v15 stringByAppendingString:@"]}\n"];
      }

      v29 = [(NSMutableDictionary *)v27 countByEnumeratingWithState:&v37 objects:v50 count:16];
    }

    while (v29);
  }

  objc_sync_exit(selfCopy);
  v25 = CDMOSLoggerForCategory(2);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v46 = "[CDMServiceGraphRunner dumpServiceGraphNodeQueue]";
    v47 = 2112;
    v48 = v11;
    _os_log_debug_impl(&dword_1DC287000, v25, OS_LOG_TYPE_DEBUG, "%s %@", buf, 0x16u);
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (id)getOperationState:(id)state
{
  stateCopy = state;
  if ([stateCopy isExecuting])
  {
    v4 = @"executing";
  }

  else if ([stateCopy isFinished])
  {
    v4 = @"finished";
  }

  else if ([stateCopy isCancelled])
  {
    v4 = @"cancelled";
  }

  else
  {
    v4 = @"default";
  }

  return v4;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v57 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v10 = CDMOSLoggerForCategory(2);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v52 = "[CDMServiceGraphRunner observeValueForKeyPath:ofObject:change:context:]";
    v53 = 2112;
    v54 = pathCopy;
    v55 = 2112;
    v56 = objectCopy;
    _os_log_debug_impl(&dword_1DC287000, v10, OS_LOG_TYPE_DEBUG, "%s %@ observed from %@", buf, 0x20u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [pathCopy isEqualToString:@"isFinished"] ^ 1;
    if (context != &kQueueOperationsChanged)
    {
      LOBYTE(v11) = 1;
    }

    if ((v11 & 1) == 0)
    {
      getHandlerId = [objectCopy getHandlerId];
      [(CDMServiceGraphRunner *)self finishHandlerById:getHandlerId];

      goto LABEL_41;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [pathCopy isEqualToString:@"error"] ^ 1;
    if (context != &kQueueOperationsChanged)
    {
      LOBYTE(v13) = 1;
    }

    if ((v13 & 1) == 0)
    {
      getHandlerId2 = [objectCopy getHandlerId];
      [(CDMServiceGraphRunner *)self cancelHandlerById:getHandlerId2 causeByError:1];

      goto LABEL_41;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [pathCopy isEqualToString:@"systemState"])
  {
    v15 = objectCopy;
    systemState = [v15 systemState];
    v17 = CDMOSLoggerForCategory(2);
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);
    if (systemState == 3)
    {
      if (v18)
      {
        *buf = 136315138;
        v52 = "[CDMServiceGraphRunner observeValueForKeyPath:ofObject:change:context:]";
        v20 = "%s System is ready, resume queue";
        v21 = v17;
        v22 = 12;
        goto LABEL_43;
      }
    }

    else if (v18)
    {
      systemState2 = [v15 systemState];
      *buf = 136315394;
      v52 = "[CDMServiceGraphRunner observeValueForKeyPath:ofObject:change:context:]";
      v53 = 2048;
      v54 = systemState2;
      v20 = "%s System is not ready, suspend queue. Current state:%zd";
      v21 = v17;
      v22 = 22;
LABEL_43:
      _os_log_debug_impl(&dword_1DC287000, v21, OS_LOG_TYPE_DEBUG, v20, buf, v22);
    }

    [(NSOperationQueue *)self->_queue setSuspended:systemState != 3];
    goto LABEL_41;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_32;
  }

  v23 = [pathCopy isEqualToString:@"isFinished"] ^ 1;
  if (context != &kQueueSkipNode)
  {
    LOBYTE(v23) = 1;
  }

  if (v23)
  {
LABEL_32:
    v45.receiver = self;
    v45.super_class = CDMServiceGraphRunner;
    [(CDMServiceGraphRunner *)&v45 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }

  else
  {
    v40 = objectCopy;
    getNodeName = [v40 getNodeName];
    getHandlerId3 = [v40 getHandlerId];
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v26 = [(NSMutableDictionary *)selfCopy->_handlerSkipMap objectForKey:getHandlerId3];
    v27 = v26 == 0;

    if (v27)
    {
      v38 = CDMOSLoggerForCategory(2);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v52 = "[CDMServiceGraphRunner observeValueForKeyPath:ofObject:change:context:]";
        v53 = 2112;
        v54 = getHandlerId3;
        _os_log_impl(&dword_1DC287000, v38, OS_LOG_TYPE_INFO, "%s [WARN]: Handler ID %@ not found for skip", buf, 0x16u);
      }

      objc_sync_exit(selfCopy);
    }

    else
    {
      v28 = [(NSMutableDictionary *)selfCopy->_handlerSkipMap objectForKeyedSubscript:getHandlerId3];
      v29 = [v28 objectForKey:getNodeName];
      v30 = v29 == 0;

      if (v30)
      {
        v31 = CDMOSLoggerForCategory(2);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v52 = "[CDMServiceGraphRunner observeValueForKeyPath:ofObject:change:context:]";
          v53 = 2112;
          v54 = getNodeName;
          _os_log_impl(&dword_1DC287000, v31, OS_LOG_TYPE_INFO, "%s [WARN]: Node %@ not found for checking skip", buf, 0x16u);
        }
      }

      else
      {
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v31 = [v28 objectForKeyedSubscript:getNodeName];
        v32 = [v31 countByEnumeratingWithState:&v46 objects:v50 count:16];
        if (v32)
        {
          v33 = *v47;
          do
          {
            for (i = 0; i != v32; ++i)
            {
              if (*v47 != v33)
              {
                objc_enumerationMutation(v31);
              }

              v35 = *(*(&v46 + 1) + 8 * i);
              v36 = [v28 objectForKeyedSubscript:getNodeName];
              v37 = [v36 objectForKeyedSubscript:v35];
              [(CDMServiceGraphRunner *)selfCopy skipNode:v35 forCondition:v37 withHandlerId:getHandlerId3];
            }

            v32 = [v31 countByEnumeratingWithState:&v46 objects:v50 count:16];
          }

          while (v32);
        }
      }

      objc_sync_exit(selfCopy);
    }
  }

LABEL_41:

  v39 = *MEMORY[0x1E69E9840];
}

- (void)skipNode:(id)node forCondition:(id)condition withHandlerId:(id)id
{
  v38 = *MEMORY[0x1E69E9840];
  nodeCopy = node;
  conditionCopy = condition;
  idCopy = id;
  v9 = +[CDMUserDefaultsUtils isSkipNodeEnabled];
  if (conditionCopy && v9 && conditionCopy[2](conditionCopy))
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    obj = selfCopy;
    v11 = [(NSMutableDictionary *)selfCopy->_operationMapWithNodeName objectForKeyedSubscript:idCopy];
    v12 = [v11 objectForKey:nodeCopy];

    if (v12)
    {
      if ([v12 isFinished] & 1) != 0 || (objc_msgSend(v12, "isCancelled"))
      {
        goto LABEL_24;
      }

      v13 = CDMOSLoggerForCategory(2);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v33 = "[CDMServiceGraphRunner skipNode:forCondition:withHandlerId:]";
        v34 = 2112;
        v35 = nodeCopy;
        v36 = 2112;
        v37 = idCopy;
        _os_log_debug_impl(&dword_1DC287000, v13, OS_LOG_TYPE_DEBUG, "%s Skip node %@ in handler %@", buf, 0x20u);
      }

      [v12 cancel];
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      getSuccessors = [v12 getSuccessors];
      v15 = [getSuccessors countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v15)
      {
        v16 = *v28;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v28 != v16)
            {
              objc_enumerationMutation(getSuccessors);
            }

            v18 = *(*(&v27 + 1) + 8 * i);
            getNodeName = [v18 getNodeName];
            v20 = [getNodeName isEqualToString:@"metricsNode"];

            if ((v20 & 1) == 0)
            {
              v21 = CDMOSLoggerForCategory(2);
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
              {
                getNodeName2 = [v18 getNodeName];
                *buf = 136315650;
                v33 = "[CDMServiceGraphRunner skipNode:forCondition:withHandlerId:]";
                v34 = 2112;
                v35 = getNodeName2;
                v36 = 2112;
                v37 = nodeCopy;
                _os_log_debug_impl(&dword_1DC287000, v21, OS_LOG_TYPE_DEBUG, "%s Remove dependency: %@ ==> %@", buf, 0x20u);
              }

              [v18 removeDependency:v12];
            }
          }

          v15 = [getSuccessors countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v15);
      }
    }

    else
    {
      getSuccessors = CDMOSLoggerForCategory(2);
      if (os_log_type_enabled(getSuccessors, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v33 = "[CDMServiceGraphRunner skipNode:forCondition:withHandlerId:]";
        v34 = 2112;
        v35 = nodeCopy;
        _os_log_impl(&dword_1DC287000, getSuccessors, OS_LOG_TYPE_INFO, "%s [WARN]: Node %@ not found for skip", buf, 0x16u);
      }
    }

LABEL_24:
    objc_sync_exit(obj);
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)finishHandlerById:(id)id
{
  v35 = *MEMORY[0x1E69E9840];
  idCopy = id;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_handlerMap objectForKey:idCopy];
  v7 = v6;
  if (!v6)
  {
    v19 = CDMOSLoggerForCategory(2);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v30 = "[CDMServiceGraphRunner finishHandlerById:]";
      v31 = 2112;
      v32 = idCopy;
      _os_log_error_impl(&dword_1DC287000, v19, OS_LOG_TYPE_ERROR, "%s [ERR]: Handler with ID %@ is not found", buf, 0x16u);
    }

    goto LABEL_18;
  }

  if ([v6 getHandlerState] != 2)
  {
    v19 = CDMOSLoggerForCategory(2);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      handlerId = [v7 handlerId];
      *buf = 136315650;
      v30 = "[CDMServiceGraphRunner finishHandlerById:]";
      v31 = 2112;
      v32 = handlerId;
      v33 = 2048;
      getHandlerState = [v7 getHandlerState];
      _os_log_error_impl(&dword_1DC287000, v19, OS_LOG_TYPE_ERROR, "%s [ERR]: Skip finish handler %@ with invalid state %zu", buf, 0x20u);
    }

LABEL_18:

    objc_sync_exit(selfCopy);
    goto LABEL_19;
  }

  v8 = [(NSMutableDictionary *)selfCopy->_callbackMap objectForKeyedSubscript:idCopy];
  v9 = v8;
  if (v8)
  {
    (*(v8 + 16))(v8);
  }

  getServiceGraph = [v7 getServiceGraph];
  getEndNode = [getServiceGraph getEndNode];

  [getEndNode removeObserver:selfCopy forKeyPath:@"isFinished"];
  getServiceGraph2 = [v7 getServiceGraph];
  [getServiceGraph2 removeObserver:selfCopy forKeyPath:@"error"];

  getServiceGraph3 = [v7 getServiceGraph];
  getNodesWithName = [getServiceGraph3 getNodesWithName];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = [(NSMutableDictionary *)selfCopy->_handlerSkipMap objectForKeyedSubscript:idCopy];
  v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v15)
  {
    v16 = *v25;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = [getNodesWithName objectForKeyedSubscript:*(*(&v24 + 1) + 8 * i)];
        [v18 removeObserver:selfCopy forKeyPath:@"isFinished"];
      }

      v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v15);
  }

  [(NSMutableDictionary *)selfCopy->_handlerSkipMap removeObjectForKey:idCopy];
  [(NSMutableDictionary *)selfCopy->_callbackMap removeObjectForKey:idCopy];
  [(NSMutableDictionary *)selfCopy->_operationMap removeObjectForKey:idCopy];
  [(NSMutableDictionary *)selfCopy->_operationMapWithNodeName removeObjectForKey:idCopy];
  [(NSMutableDictionary *)selfCopy->_handlerMap removeObjectForKey:idCopy];

  objc_sync_exit(selfCopy);
  selfCopy = CDMOSLoggerForCategory(2);
  if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v30 = "[CDMServiceGraphRunner finishHandlerById:]";
    v31 = 2112;
    v32 = idCopy;
    _os_log_debug_impl(&dword_1DC287000, &selfCopy->super, OS_LOG_TYPE_DEBUG, "%s %@ finished", buf, 0x16u);
  }

LABEL_19:

  v20 = *MEMORY[0x1E69E9840];
}

- (void)cancelHandlerById:(id)id causeByError:(BOOL)error
{
  errorCopy = error;
  v50 = *MEMORY[0x1E69E9840];
  idCopy = id;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v33 = idCopy;
  v8 = [(NSMutableDictionary *)selfCopy->_handlerMap objectForKey:idCopy];
  v9 = v8;
  if (!v8)
  {
    v28 = CDMOSLoggerForCategory(2);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v45 = "[CDMServiceGraphRunner cancelHandlerById:causeByError:]";
      v46 = 2112;
      v47 = idCopy;
      _os_log_error_impl(&dword_1DC287000, v28, OS_LOG_TYPE_ERROR, "%s [ERR]: Handler with ID %@ is not found", buf, 0x16u);
    }

    goto LABEL_28;
  }

  if ([v8 getHandlerState] != 1)
  {
    v28 = CDMOSLoggerForCategory(2);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      handlerId = [v9 handlerId];
      *buf = 136315650;
      v45 = "[CDMServiceGraphRunner cancelHandlerById:causeByError:]";
      v46 = 2112;
      v47 = handlerId;
      v48 = 2048;
      getHandlerState = [v9 getHandlerState];
      _os_log_error_impl(&dword_1DC287000, v28, OS_LOG_TYPE_ERROR, "%s [ERR]: Skip cancel handler %@ with invalid state %zu", buf, 0x20u);
    }

LABEL_28:

    objc_sync_exit(selfCopy);
    goto LABEL_29;
  }

  if (errorCopy)
  {
    v10 = 3;
  }

  else
  {
    v10 = 4;
  }

  [v9 setHandlerState:v10];
  v11 = [(NSMutableDictionary *)selfCopy->_operationMap objectForKey:idCopy];
  isSuspended = [(NSOperationQueue *)selfCopy->_queue isSuspended];
  [(NSOperationQueue *)selfCopy->_queue setSuspended:1];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v14)
  {
    v15 = *v39;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v39 != v15)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v38 + 1) + 8 * i) cancel];
      }

      v14 = [v13 countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v14);
  }

  [(NSOperationQueue *)selfCopy->_queue setSuspended:isSuspended];
  v17 = [(NSMutableDictionary *)selfCopy->_callbackMap objectForKeyedSubscript:v33];
  v18 = v17;
  if (v17)
  {
    (*(v17 + 16))(v17);
  }

  v31 = v18;
  getServiceGraph = [v9 getServiceGraph];
  getEndNode = [getServiceGraph getEndNode];

  [getEndNode removeObserver:selfCopy forKeyPath:@"isFinished"];
  getServiceGraph2 = [v9 getServiceGraph];
  [getServiceGraph2 removeObserver:selfCopy forKeyPath:@"error"];

  getServiceGraph3 = [v9 getServiceGraph];
  getNodesWithName = [getServiceGraph3 getNodesWithName];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v23 = [(NSMutableDictionary *)selfCopy->_handlerSkipMap objectForKeyedSubscript:v33];
  v24 = [v23 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v24)
  {
    v25 = *v35;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v35 != v25)
        {
          objc_enumerationMutation(v23);
        }

        v27 = [getNodesWithName objectForKeyedSubscript:*(*(&v34 + 1) + 8 * j)];
        [v27 removeObserver:selfCopy forKeyPath:@"isFinished"];
      }

      v24 = [v23 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v24);
  }

  [(NSMutableDictionary *)selfCopy->_handlerSkipMap removeObjectForKey:v33];
  [(NSMutableDictionary *)selfCopy->_callbackMap removeObjectForKey:v33];
  [(NSMutableDictionary *)selfCopy->_operationMap removeObjectForKey:v33];
  [(NSMutableDictionary *)selfCopy->_operationMapWithNodeName removeObjectForKey:v33];
  [(NSMutableDictionary *)selfCopy->_handlerMap removeObjectForKey:v33];

  objc_sync_exit(selfCopy);
  selfCopy = CDMOSLoggerForCategory(2);
  if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v45 = "[CDMServiceGraphRunner cancelHandlerById:causeByError:]";
    v46 = 2112;
    v47 = v33;
    _os_log_debug_impl(&dword_1DC287000, &selfCopy->super, OS_LOG_TYPE_DEBUG, "%s %@ cancelled", buf, 0x16u);
  }

LABEL_29:

  v29 = *MEMORY[0x1E69E9840];
}

- (void)cancelHandler:(id)handler
{
  handlerId = [handler handlerId];
  [(CDMServiceGraphRunner *)self cancelHandlerById:handlerId];
}

- (void)cancelAllHandlers
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = CDMOSLoggerForCategory(2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v19 = "[CDMServiceGraphRunner cancelAllHandlers]";
    _os_log_debug_impl(&dword_1DC287000, v3, OS_LOG_TYPE_DEBUG, "%s Cancel all handlers", buf, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = MEMORY[0x1E695DEC8];
  allKeys = [(NSMutableDictionary *)selfCopy->_handlerMap allKeys];
  v7 = [v5 arrayWithArray:allKeys];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v8);
        }

        [(CDMServiceGraphRunner *)selfCopy cancelHandlerById:*(*(&v13 + 1) + 8 * v11++), v13];
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  objc_sync_exit(selfCopy);
  v12 = *MEMORY[0x1E69E9840];
}

- (void)runHandlerAsync:(id)async withCompletion:(id)completion
{
  v36 = *MEMORY[0x1E69E9840];
  asyncCopy = async;
  aBlock = completion;
  v24 = asyncCopy;
  if ([asyncCopy getHandlerState])
  {
    getServiceGraph = CDMOSLoggerForCategory(2);
    if (os_log_type_enabled(getServiceGraph, OS_LOG_TYPE_ERROR))
    {
      handlerId = [asyncCopy handlerId];
      *buf = 136315650;
      v31 = "[CDMServiceGraphRunner runHandlerAsync:withCompletion:]";
      v32 = 2112;
      v33 = handlerId;
      v34 = 2048;
      getHandlerState = [asyncCopy getHandlerState];
      _os_log_error_impl(&dword_1DC287000, getServiceGraph, OS_LOG_TYPE_ERROR, "%s [ERR]: Skip running handler %@ with invalid state %zu", buf, 0x20u);
    }
  }

  else
  {
    getServiceGraph = [asyncCopy getServiceGraph];
    getNodes = [getServiceGraph getNodes];
    getNodesWithName = [getServiceGraph getNodesWithName];
    handlerId2 = [asyncCopy handlerId];
    getEndNode = [getServiceGraph getEndNode];
    [getServiceGraph getSkippedNodes];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v10 = v26 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v11)
    {
      v12 = *v26;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = [getNodesWithName objectForKeyedSubscript:*(*(&v25 + 1) + 8 * i)];
          [v14 addObserver:self forKeyPath:@"isFinished" options:0 context:&kQueueSkipNode];
        }

        v11 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v11);
    }

    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(NSMutableDictionary *)selfCopy->_handlerSkipMap setValue:v10 forKey:handlerId2];
    objc_sync_exit(selfCopy);

    [getServiceGraph addObserver:selfCopy forKeyPath:@"error" options:0 context:&kQueueOperationsChanged];
    v16 = selfCopy;
    objc_sync_enter(v16);
    callbackMap = v16->_callbackMap;
    v18 = _Block_copy(aBlock);
    [(NSMutableDictionary *)callbackMap setValue:v18 forKey:handlerId2];

    [(NSMutableDictionary *)v16->_operationMap setValue:getNodes forKey:handlerId2];
    [(NSMutableDictionary *)v16->_operationMapWithNodeName setValue:getNodesWithName forKey:handlerId2];
    [(NSMutableDictionary *)v16->_handlerMap setValue:v24 forKey:handlerId2];
    objc_sync_exit(v16);

    [getEndNode addObserver:v16 forKeyPath:@"isFinished" options:0 context:&kQueueOperationsChanged];
    [v24 setHandlerState:1];
    [(NSOperationQueue *)v16->_queue addOperations:getNodes waitUntilFinished:0];
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (CDMServiceGraphRunner)initWithMaxConcurrentCount:(int)count
{
  v25 = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = CDMServiceGraphRunner;
  v4 = [(CDMServiceGraphRunner *)&v20 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    queue = v4->_queue;
    v4->_queue = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    callbackMap = v4->_callbackMap;
    v4->_callbackMap = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    operationMap = v4->_operationMap;
    v4->_operationMap = v9;

    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    operationMapWithNodeName = v4->_operationMapWithNodeName;
    v4->_operationMapWithNodeName = v11;

    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    handlerMap = v4->_handlerMap;
    v4->_handlerMap = v13;

    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    handlerSkipMap = v4->_handlerSkipMap;
    v4->_handlerSkipMap = v15;

    [(NSOperationQueue *)v4->_queue setQualityOfService:25];
    [(NSOperationQueue *)v4->_queue setMaxConcurrentOperationCount:count];
    v17 = CDMOSLoggerForCategory(2);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v22 = "[CDMServiceGraphRunner initWithMaxConcurrentCount:]";
      v23 = 1024;
      countCopy = count;
      _os_log_debug_impl(&dword_1DC287000, v17, OS_LOG_TYPE_DEBUG, "%s initWithMaxConcurrentCount=%d", buf, 0x12u);
    }

    [(NSOperationQueue *)v4->_queue setSuspended:1];
  }

  v18 = *MEMORY[0x1E69E9840];
  return v4;
}

- (CDMServiceGraphRunner)init
{
  v3 = +[CDMUserDefaultsUtils readGraphRunnerMaxConcurrentCount];

  return [(CDMServiceGraphRunner *)self initWithMaxConcurrentCount:v3];
}

@end