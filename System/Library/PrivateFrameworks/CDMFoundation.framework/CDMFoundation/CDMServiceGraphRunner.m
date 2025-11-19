@interface CDMServiceGraphRunner
- (CDMServiceGraphRunner)init;
- (CDMServiceGraphRunner)initWithMaxConcurrentCount:(int)a3;
- (id)getOperationState:(id)a3;
- (void)cancelAllHandlers;
- (void)cancelHandler:(id)a3;
- (void)cancelHandlerById:(id)a3 causeByError:(BOOL)a4;
- (void)dealloc;
- (void)dumpServiceGraphNodeQueue;
- (void)finishHandlerById:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)runHandlerAsync:(id)a3 withCompletion:(id)a4;
- (void)skipNode:(id)a3 forCondition:(id)a4 withHandlerId:(id)a5;
@end

@implementation CDMServiceGraphRunner

- (void)dealloc
{
  v45 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  v3 = MEMORY[0x1E695DEC8];
  v4 = [(NSMutableDictionary *)v2->_handlerMap allKeys];
  v5 = [v3 arrayWithArray:v4];

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
        v10 = [(NSMutableDictionary *)v2->_handlerMap objectForKey:v9, v25];
        v11 = v10;
        if (v10 && [v10 getHandlerState] == 1)
        {
          v12 = CDMOSLoggerForCategory(2);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            v23 = [v11 handlerId];
            *buf = v25;
            v41 = "[CDMServiceGraphRunner dealloc]";
            v42 = 2112;
            v43 = v23;
            _os_log_debug_impl(&dword_1DC287000, v12, OS_LOG_TYPE_DEBUG, "%s CDMServiceGraphRunner: dealloc. Removing observers for running handler with id:%@ .", buf, 0x16u);
          }

          v13 = [v11 getServiceGraph];
          v27 = [v13 getEndNode];

          [v27 removeObserver:v2 forKeyPath:@"isFinished"];
          v14 = [v11 getServiceGraph];
          [v14 removeObserver:v2 forKeyPath:@"error"];

          v15 = [v11 getServiceGraph];
          v16 = [v15 getNodesWithName];

          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          v17 = [(NSMutableDictionary *)v2->_handlerSkipMap objectForKeyedSubscript:v9];
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

                v21 = [v16 objectForKeyedSubscript:*(*(&v31 + 1) + 8 * j)];
                v22 = v21;
                if (v21)
                {
                  [v21 removeObserver:v2 forKeyPath:@"isFinished"];
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

  objc_sync_exit(v2);
  v30.receiver = v2;
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
        v10 = [v8 getNodeName];

        v5 = [(__CFString *)v7 stringByAppendingFormat:@"{%@, %@}, ", v10, v9];

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

  v12 = self;
  objc_sync_enter(v12);
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v27 = v12->_operationMap;
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
        v31 = [(NSMutableDictionary *)v12->_handlerMap objectForKeyedSubscript:v14];
        v15 = [v11 stringByAppendingFormat:@"{%@, %lu, [", v14, objc_msgSend(v31, "getHandlerState")];

        v16 = [(NSMutableDictionary *)v12->_operationMap objectForKey:v14];
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
              v23 = [(CDMServiceGraphRunner *)v12 getOperationState:v22];
              v24 = [v22 getNodeName];
              v15 = [v21 stringByAppendingFormat:@"{%@, %@}, ", v24, v23];

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

  objc_sync_exit(v12);
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

- (id)getOperationState:(id)a3
{
  v3 = a3;
  if ([v3 isExecuting])
  {
    v4 = @"executing";
  }

  else if ([v3 isFinished])
  {
    v4 = @"finished";
  }

  else if ([v3 isCancelled])
  {
    v4 = @"cancelled";
  }

  else
  {
    v4 = @"default";
  }

  return v4;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v57 = *MEMORY[0x1E69E9840];
  v42 = a3;
  v43 = a4;
  v41 = a5;
  v10 = CDMOSLoggerForCategory(2);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v52 = "[CDMServiceGraphRunner observeValueForKeyPath:ofObject:change:context:]";
    v53 = 2112;
    v54 = v42;
    v55 = 2112;
    v56 = v43;
    _os_log_debug_impl(&dword_1DC287000, v10, OS_LOG_TYPE_DEBUG, "%s %@ observed from %@", buf, 0x20u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v42 isEqualToString:@"isFinished"] ^ 1;
    if (a6 != &kQueueOperationsChanged)
    {
      LOBYTE(v11) = 1;
    }

    if ((v11 & 1) == 0)
    {
      v12 = [v43 getHandlerId];
      [(CDMServiceGraphRunner *)self finishHandlerById:v12];

      goto LABEL_41;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [v42 isEqualToString:@"error"] ^ 1;
    if (a6 != &kQueueOperationsChanged)
    {
      LOBYTE(v13) = 1;
    }

    if ((v13 & 1) == 0)
    {
      v14 = [v43 getHandlerId];
      [(CDMServiceGraphRunner *)self cancelHandlerById:v14 causeByError:1];

      goto LABEL_41;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v42 isEqualToString:@"systemState"])
  {
    v15 = v43;
    v16 = [v15 systemState];
    v17 = CDMOSLoggerForCategory(2);
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);
    if (v16 == 3)
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
      v19 = [v15 systemState];
      *buf = 136315394;
      v52 = "[CDMServiceGraphRunner observeValueForKeyPath:ofObject:change:context:]";
      v53 = 2048;
      v54 = v19;
      v20 = "%s System is not ready, suspend queue. Current state:%zd";
      v21 = v17;
      v22 = 22;
LABEL_43:
      _os_log_debug_impl(&dword_1DC287000, v21, OS_LOG_TYPE_DEBUG, v20, buf, v22);
    }

    [(NSOperationQueue *)self->_queue setSuspended:v16 != 3];
    goto LABEL_41;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_32;
  }

  v23 = [v42 isEqualToString:@"isFinished"] ^ 1;
  if (a6 != &kQueueSkipNode)
  {
    LOBYTE(v23) = 1;
  }

  if (v23)
  {
LABEL_32:
    v45.receiver = self;
    v45.super_class = CDMServiceGraphRunner;
    [(CDMServiceGraphRunner *)&v45 observeValueForKeyPath:v42 ofObject:v43 change:v41 context:a6];
  }

  else
  {
    v40 = v43;
    v44 = [v40 getNodeName];
    v24 = [v40 getHandlerId];
    v25 = self;
    objc_sync_enter(v25);
    v26 = [(NSMutableDictionary *)v25->_handlerSkipMap objectForKey:v24];
    v27 = v26 == 0;

    if (v27)
    {
      v38 = CDMOSLoggerForCategory(2);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v52 = "[CDMServiceGraphRunner observeValueForKeyPath:ofObject:change:context:]";
        v53 = 2112;
        v54 = v24;
        _os_log_impl(&dword_1DC287000, v38, OS_LOG_TYPE_INFO, "%s [WARN]: Handler ID %@ not found for skip", buf, 0x16u);
      }

      objc_sync_exit(v25);
    }

    else
    {
      v28 = [(NSMutableDictionary *)v25->_handlerSkipMap objectForKeyedSubscript:v24];
      v29 = [v28 objectForKey:v44];
      v30 = v29 == 0;

      if (v30)
      {
        v31 = CDMOSLoggerForCategory(2);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v52 = "[CDMServiceGraphRunner observeValueForKeyPath:ofObject:change:context:]";
          v53 = 2112;
          v54 = v44;
          _os_log_impl(&dword_1DC287000, v31, OS_LOG_TYPE_INFO, "%s [WARN]: Node %@ not found for checking skip", buf, 0x16u);
        }
      }

      else
      {
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v31 = [v28 objectForKeyedSubscript:v44];
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
              v36 = [v28 objectForKeyedSubscript:v44];
              v37 = [v36 objectForKeyedSubscript:v35];
              [(CDMServiceGraphRunner *)v25 skipNode:v35 forCondition:v37 withHandlerId:v24];
            }

            v32 = [v31 countByEnumeratingWithState:&v46 objects:v50 count:16];
          }

          while (v32);
        }
      }

      objc_sync_exit(v25);
    }
  }

LABEL_41:

  v39 = *MEMORY[0x1E69E9840];
}

- (void)skipNode:(id)a3 forCondition:(id)a4 withHandlerId:(id)a5
{
  v38 = *MEMORY[0x1E69E9840];
  v26 = a3;
  v8 = a4;
  v25 = a5;
  v9 = +[CDMUserDefaultsUtils isSkipNodeEnabled];
  if (v8 && v9 && v8[2](v8))
  {
    v10 = self;
    objc_sync_enter(v10);
    obj = v10;
    v11 = [(NSMutableDictionary *)v10->_operationMapWithNodeName objectForKeyedSubscript:v25];
    v12 = [v11 objectForKey:v26];

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
        v35 = v26;
        v36 = 2112;
        v37 = v25;
        _os_log_debug_impl(&dword_1DC287000, v13, OS_LOG_TYPE_DEBUG, "%s Skip node %@ in handler %@", buf, 0x20u);
      }

      [v12 cancel];
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v14 = [v12 getSuccessors];
      v15 = [v14 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v15)
      {
        v16 = *v28;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v28 != v16)
            {
              objc_enumerationMutation(v14);
            }

            v18 = *(*(&v27 + 1) + 8 * i);
            v19 = [v18 getNodeName];
            v20 = [v19 isEqualToString:@"metricsNode"];

            if ((v20 & 1) == 0)
            {
              v21 = CDMOSLoggerForCategory(2);
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
              {
                v22 = [v18 getNodeName];
                *buf = 136315650;
                v33 = "[CDMServiceGraphRunner skipNode:forCondition:withHandlerId:]";
                v34 = 2112;
                v35 = v22;
                v36 = 2112;
                v37 = v26;
                _os_log_debug_impl(&dword_1DC287000, v21, OS_LOG_TYPE_DEBUG, "%s Remove dependency: %@ ==> %@", buf, 0x20u);
              }

              [v18 removeDependency:v12];
            }
          }

          v15 = [v14 countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v15);
      }
    }

    else
    {
      v14 = CDMOSLoggerForCategory(2);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v33 = "[CDMServiceGraphRunner skipNode:forCondition:withHandlerId:]";
        v34 = 2112;
        v35 = v26;
        _os_log_impl(&dword_1DC287000, v14, OS_LOG_TYPE_INFO, "%s [WARN]: Node %@ not found for skip", buf, 0x16u);
      }
    }

LABEL_24:
    objc_sync_exit(obj);
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)finishHandlerById:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)v5->_handlerMap objectForKey:v4];
  v7 = v6;
  if (!v6)
  {
    v19 = CDMOSLoggerForCategory(2);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v30 = "[CDMServiceGraphRunner finishHandlerById:]";
      v31 = 2112;
      v32 = v4;
      _os_log_error_impl(&dword_1DC287000, v19, OS_LOG_TYPE_ERROR, "%s [ERR]: Handler with ID %@ is not found", buf, 0x16u);
    }

    goto LABEL_18;
  }

  if ([v6 getHandlerState] != 2)
  {
    v19 = CDMOSLoggerForCategory(2);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v21 = [v7 handlerId];
      *buf = 136315650;
      v30 = "[CDMServiceGraphRunner finishHandlerById:]";
      v31 = 2112;
      v32 = v21;
      v33 = 2048;
      v34 = [v7 getHandlerState];
      _os_log_error_impl(&dword_1DC287000, v19, OS_LOG_TYPE_ERROR, "%s [ERR]: Skip finish handler %@ with invalid state %zu", buf, 0x20u);
    }

LABEL_18:

    objc_sync_exit(v5);
    goto LABEL_19;
  }

  v8 = [(NSMutableDictionary *)v5->_callbackMap objectForKeyedSubscript:v4];
  v9 = v8;
  if (v8)
  {
    (*(v8 + 16))(v8);
  }

  v10 = [v7 getServiceGraph];
  v23 = [v10 getEndNode];

  [v23 removeObserver:v5 forKeyPath:@"isFinished"];
  v11 = [v7 getServiceGraph];
  [v11 removeObserver:v5 forKeyPath:@"error"];

  v12 = [v7 getServiceGraph];
  v13 = [v12 getNodesWithName];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = [(NSMutableDictionary *)v5->_handlerSkipMap objectForKeyedSubscript:v4];
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

        v18 = [v13 objectForKeyedSubscript:*(*(&v24 + 1) + 8 * i)];
        [v18 removeObserver:v5 forKeyPath:@"isFinished"];
      }

      v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v15);
  }

  [(NSMutableDictionary *)v5->_handlerSkipMap removeObjectForKey:v4];
  [(NSMutableDictionary *)v5->_callbackMap removeObjectForKey:v4];
  [(NSMutableDictionary *)v5->_operationMap removeObjectForKey:v4];
  [(NSMutableDictionary *)v5->_operationMapWithNodeName removeObjectForKey:v4];
  [(NSMutableDictionary *)v5->_handlerMap removeObjectForKey:v4];

  objc_sync_exit(v5);
  v5 = CDMOSLoggerForCategory(2);
  if (os_log_type_enabled(&v5->super, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v30 = "[CDMServiceGraphRunner finishHandlerById:]";
    v31 = 2112;
    v32 = v4;
    _os_log_debug_impl(&dword_1DC287000, &v5->super, OS_LOG_TYPE_DEBUG, "%s %@ finished", buf, 0x16u);
  }

LABEL_19:

  v20 = *MEMORY[0x1E69E9840];
}

- (void)cancelHandlerById:(id)a3 causeByError:(BOOL)a4
{
  v4 = a4;
  v50 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = self;
  objc_sync_enter(v7);
  v33 = v6;
  v8 = [(NSMutableDictionary *)v7->_handlerMap objectForKey:v6];
  v9 = v8;
  if (!v8)
  {
    v28 = CDMOSLoggerForCategory(2);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v45 = "[CDMServiceGraphRunner cancelHandlerById:causeByError:]";
      v46 = 2112;
      v47 = v6;
      _os_log_error_impl(&dword_1DC287000, v28, OS_LOG_TYPE_ERROR, "%s [ERR]: Handler with ID %@ is not found", buf, 0x16u);
    }

    goto LABEL_28;
  }

  if ([v8 getHandlerState] != 1)
  {
    v28 = CDMOSLoggerForCategory(2);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v30 = [v9 handlerId];
      *buf = 136315650;
      v45 = "[CDMServiceGraphRunner cancelHandlerById:causeByError:]";
      v46 = 2112;
      v47 = v30;
      v48 = 2048;
      v49 = [v9 getHandlerState];
      _os_log_error_impl(&dword_1DC287000, v28, OS_LOG_TYPE_ERROR, "%s [ERR]: Skip cancel handler %@ with invalid state %zu", buf, 0x20u);
    }

LABEL_28:

    objc_sync_exit(v7);
    goto LABEL_29;
  }

  if (v4)
  {
    v10 = 3;
  }

  else
  {
    v10 = 4;
  }

  [v9 setHandlerState:v10];
  v11 = [(NSMutableDictionary *)v7->_operationMap objectForKey:v6];
  v12 = [(NSOperationQueue *)v7->_queue isSuspended];
  [(NSOperationQueue *)v7->_queue setSuspended:1];
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

  [(NSOperationQueue *)v7->_queue setSuspended:v12];
  v17 = [(NSMutableDictionary *)v7->_callbackMap objectForKeyedSubscript:v33];
  v18 = v17;
  if (v17)
  {
    (*(v17 + 16))(v17);
  }

  v31 = v18;
  v19 = [v9 getServiceGraph];
  v32 = [v19 getEndNode];

  [v32 removeObserver:v7 forKeyPath:@"isFinished"];
  v20 = [v9 getServiceGraph];
  [v20 removeObserver:v7 forKeyPath:@"error"];

  v21 = [v9 getServiceGraph];
  v22 = [v21 getNodesWithName];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v23 = [(NSMutableDictionary *)v7->_handlerSkipMap objectForKeyedSubscript:v33];
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

        v27 = [v22 objectForKeyedSubscript:*(*(&v34 + 1) + 8 * j)];
        [v27 removeObserver:v7 forKeyPath:@"isFinished"];
      }

      v24 = [v23 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v24);
  }

  [(NSMutableDictionary *)v7->_handlerSkipMap removeObjectForKey:v33];
  [(NSMutableDictionary *)v7->_callbackMap removeObjectForKey:v33];
  [(NSMutableDictionary *)v7->_operationMap removeObjectForKey:v33];
  [(NSMutableDictionary *)v7->_operationMapWithNodeName removeObjectForKey:v33];
  [(NSMutableDictionary *)v7->_handlerMap removeObjectForKey:v33];

  objc_sync_exit(v7);
  v7 = CDMOSLoggerForCategory(2);
  if (os_log_type_enabled(&v7->super, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v45 = "[CDMServiceGraphRunner cancelHandlerById:causeByError:]";
    v46 = 2112;
    v47 = v33;
    _os_log_debug_impl(&dword_1DC287000, &v7->super, OS_LOG_TYPE_DEBUG, "%s %@ cancelled", buf, 0x16u);
  }

LABEL_29:

  v29 = *MEMORY[0x1E69E9840];
}

- (void)cancelHandler:(id)a3
{
  v4 = [a3 handlerId];
  [(CDMServiceGraphRunner *)self cancelHandlerById:v4];
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

  v4 = self;
  objc_sync_enter(v4);
  v5 = MEMORY[0x1E695DEC8];
  v6 = [(NSMutableDictionary *)v4->_handlerMap allKeys];
  v7 = [v5 arrayWithArray:v6];

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

        [(CDMServiceGraphRunner *)v4 cancelHandlerById:*(*(&v13 + 1) + 8 * v11++), v13];
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  objc_sync_exit(v4);
  v12 = *MEMORY[0x1E69E9840];
}

- (void)runHandlerAsync:(id)a3 withCompletion:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  aBlock = a4;
  v24 = v6;
  if ([v6 getHandlerState])
  {
    v7 = CDMOSLoggerForCategory(2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [v6 handlerId];
      *buf = 136315650;
      v31 = "[CDMServiceGraphRunner runHandlerAsync:withCompletion:]";
      v32 = 2112;
      v33 = v8;
      v34 = 2048;
      v35 = [v6 getHandlerState];
      _os_log_error_impl(&dword_1DC287000, v7, OS_LOG_TYPE_ERROR, "%s [ERR]: Skip running handler %@ with invalid state %zu", buf, 0x20u);
    }
  }

  else
  {
    v7 = [v6 getServiceGraph];
    v21 = [v7 getNodes];
    v9 = [v7 getNodesWithName];
    v22 = [v6 handlerId];
    v20 = [v7 getEndNode];
    [v7 getSkippedNodes];
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

          v14 = [v9 objectForKeyedSubscript:*(*(&v25 + 1) + 8 * i)];
          [v14 addObserver:self forKeyPath:@"isFinished" options:0 context:&kQueueSkipNode];
        }

        v11 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v11);
    }

    v15 = self;
    objc_sync_enter(v15);
    [(NSMutableDictionary *)v15->_handlerSkipMap setValue:v10 forKey:v22];
    objc_sync_exit(v15);

    [v7 addObserver:v15 forKeyPath:@"error" options:0 context:&kQueueOperationsChanged];
    v16 = v15;
    objc_sync_enter(v16);
    callbackMap = v16->_callbackMap;
    v18 = _Block_copy(aBlock);
    [(NSMutableDictionary *)callbackMap setValue:v18 forKey:v22];

    [(NSMutableDictionary *)v16->_operationMap setValue:v21 forKey:v22];
    [(NSMutableDictionary *)v16->_operationMapWithNodeName setValue:v9 forKey:v22];
    [(NSMutableDictionary *)v16->_handlerMap setValue:v24 forKey:v22];
    objc_sync_exit(v16);

    [v20 addObserver:v16 forKeyPath:@"isFinished" options:0 context:&kQueueOperationsChanged];
    [v24 setHandlerState:1];
    [(NSOperationQueue *)v16->_queue addOperations:v21 waitUntilFinished:0];
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (CDMServiceGraphRunner)initWithMaxConcurrentCount:(int)a3
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
    [(NSOperationQueue *)v4->_queue setMaxConcurrentOperationCount:a3];
    v17 = CDMOSLoggerForCategory(2);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v22 = "[CDMServiceGraphRunner initWithMaxConcurrentCount:]";
      v23 = 1024;
      v24 = a3;
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