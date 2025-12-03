@interface MLROnDemandPlugin
+ (id)_createXPCConnection:(id)connection error:(id *)error;
+ (id)_locateWithExtensionID:(id)d;
+ (id)onDemandPluginIDs;
+ (id)synchronouslyPerformTask:(id)task forPluginID:(id)d error:(id *)error;
+ (void)_performTask:(id)task forPluginID:(id)d isSynchronous:(BOOL)synchronous completionHandler:(id)handler;
@end

@implementation MLROnDemandPlugin

+ (id)_locateWithExtensionID:(id)d
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (dCopy)
  {
    v4 = [MEMORY[0x277CC5DF8] extensionPointIdentifierQuery:@"com.apple.mlruntime.extension-point-ondemand"];
    [MEMORY[0x277CC5E00] executeQuery:v4];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v17 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = *v15;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          bundleIdentifier = [v9 bundleIdentifier];
          v11 = [bundleIdentifier isEqualToString:dCopy];

          if (v11)
          {
            v6 = v9;
            goto LABEL_12;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v6 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)_createXPCConnection:(id)connection error:(id *)error
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = [self _locateWithExtensionID:connection];
  v6 = v5;
  if (v5)
  {
    error = [v5 makeXPCConnectionWithError:error];
    if (error)
    {
      v7 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2868BD320];
      [error setRemoteObjectInterface:v7];

      [error resume];
    }
  }

  else if (error)
  {
    v8 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277D05640];
    v13 = *MEMORY[0x277CCA450];
    v14[0] = @"Fail to find matched plugin.";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    *error = [v8 errorWithDomain:v9 code:8013 userInfo:v10];

    error = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return error;
}

+ (void)_performTask:(id)task forPluginID:(id)d isSynchronous:(BOOL)synchronous completionHandler:(id)handler
{
  synchronousCopy = synchronous;
  taskCopy = task;
  dCopy = d;
  handlerCopy = handler;
  [MEMORY[0x277D055F0] sendEventEvaluationSessionStartForBundleID:dCopy];
  v32 = 0;
  v13 = [self _createXPCConnection:dCopy error:&v32];
  v14 = v32;
  if (v13)
  {
    if (synchronousCopy)
    {
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __78__MLROnDemandPlugin__performTask_forPluginID_isSynchronous_completionHandler___block_invoke;
      v29[3] = &unk_279840AB8;
      v15 = &v30;
      v30 = dCopy;
      v31 = synchronousCopy;
      v16 = [v13 synchronousRemoteObjectProxyWithErrorHandler:v29];
    }

    else
    {
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __78__MLROnDemandPlugin__performTask_forPluginID_isSynchronous_completionHandler___block_invoke_57;
      v26[3] = &unk_279840AB8;
      v15 = &v27;
      v27 = dCopy;
      v28 = 0;
      v16 = [v13 remoteObjectProxyWithErrorHandler:v26];
    }

    v18 = v16;

    processInfo = [MEMORY[0x277CCAC38] processInfo];
    [processInfo systemUptime];
    v21 = v20;

    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __78__MLROnDemandPlugin__performTask_forPluginID_isSynchronous_completionHandler___block_invoke_59;
    v22[3] = &unk_279840AE0;
    v25 = v21;
    v23 = dCopy;
    v24 = handlerCopy;
    [v18 performTask:taskCopy completionHandler:v22];
  }

  else
  {
    coreChannel = [MEMORY[0x277D05600] coreChannel];
    if (os_log_type_enabled(coreChannel, OS_LOG_TYPE_ERROR))
    {
      +[MLROnDemandPlugin _performTask:forPluginID:isSynchronous:completionHandler:];
    }

    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, 0, v14);
    }

    [MEMORY[0x277D055F0] sendEventEvaluationSessionFinishForBundleID:dCopy success:0];
    [MEMORY[0x277D055F0] sendEventErrorForBundleID:dCopy error:v14];
  }
}

void __78__MLROnDemandPlugin__performTask_forPluginID_isSynchronous_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D05600] coreChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __78__MLROnDemandPlugin__performTask_forPluginID_isSynchronous_completionHandler___block_invoke_cold_1(a1);
  }
}

void __78__MLROnDemandPlugin__performTask_forPluginID_isSynchronous_completionHandler___block_invoke_57(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D05600] coreChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __78__MLROnDemandPlugin__performTask_forPluginID_isSynchronous_completionHandler___block_invoke_57_cold_1(a1);
  }
}

void __78__MLROnDemandPlugin__performTask_forPluginID_isSynchronous_completionHandler___block_invoke_59(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277CCAC38] processInfo];
  [v7 systemUptime];
  v9 = v8 - *(a1 + 48);

  v10 = (a1 + 32);
  [MEMORY[0x277D055F0] sendEventEvaluationSessionFinishForBundleID:*(a1 + 32) success:v6 == 0];
  *&v11 = v9;
  [MEMORY[0x277D055F0] sendEventEvaluationForBundleID:*v10 evaluationID:*v10 duration:0 deferred:v6 == 0 success:v6 error:0 downloadedAttachmentCount:v11];
  if (v6)
  {
    [MEMORY[0x277D055F0] sendEventErrorForBundleID:*v10 error:v6];
    v12 = [MEMORY[0x277D05600] coreChannel];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __78__MLROnDemandPlugin__performTask_forPluginID_isSynchronous_completionHandler___block_invoke_59_cold_1((a1 + 32));
    }
  }

  else
  {
    v12 = [MEMORY[0x277D05600] coreChannel];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __78__MLROnDemandPlugin__performTask_forPluginID_isSynchronous_completionHandler___block_invoke_59_cold_2((a1 + 32));
    }
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    (*(v13 + 16))(v13, v5, v6);
  }
}

+ (id)synchronouslyPerformTask:(id)task forPluginID:(id)d error:(id *)error
{
  taskCopy = task;
  dCopy = d;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64__MLROnDemandPlugin_synchronouslyPerformTask_forPluginID_error___block_invoke;
  v13[3] = &unk_279840B08;
  v13[4] = &v20;
  v13[5] = &v14;
  [self _performTask:taskCopy forPluginID:dCopy isSynchronous:1 completionHandler:v13];
  if (error)
  {
    v10 = v21[5];
    if (v10)
    {
      *error = v10;
    }
  }

  v11 = v15[5];
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);

  return v11;
}

void __64__MLROnDemandPlugin_synchronouslyPerformTask_forPluginID_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

+ (id)onDemandPluginIDs
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CC5DF8] extensionPointIdentifierQuery:@"com.apple.mlruntime.extension-point-ondemand"];
  v3 = [MEMORY[0x277CC5E00] executeQuery:v2];
  array = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        bundleIdentifier = [*(*(&v13 + 1) + 8 * i) bundleIdentifier];
        [array addObject:bundleIdentifier];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return array;
}

+ (void)_performTask:forPluginID:isSynchronous:completionHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __78__MLROnDemandPlugin__performTask_forPluginID_isSynchronous_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
  v8 = *MEMORY[0x277D85DE8];
}

void __78__MLROnDemandPlugin__performTask_forPluginID_isSynchronous_completionHandler___block_invoke_57_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
  v8 = *MEMORY[0x277D85DE8];
}

void __78__MLROnDemandPlugin__performTask_forPluginID_isSynchronous_completionHandler___block_invoke_59_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __78__MLROnDemandPlugin__performTask_forPluginID_isSynchronous_completionHandler___block_invoke_59_cold_2(uint64_t *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(&dword_2577CB000, v2, OS_LOG_TYPE_DEBUG, "plugin=(%@) return result=%@", v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end