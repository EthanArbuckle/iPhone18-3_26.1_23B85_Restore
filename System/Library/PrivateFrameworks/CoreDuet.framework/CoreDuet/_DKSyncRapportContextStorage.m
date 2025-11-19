@interface _DKSyncRapportContextStorage
+ (id)sharedInstance;
- (void)handleFetchContextValuesWithRequest:(void *)a3 options:(void *)a4 responseHandler:;
- (void)handleFetchContextValuesWithResponse:(void *)a3 options:(void *)a4 error:(void *)a5 peer:(void *)a6 plStartDate:(void *)a7 completion:;
- (void)handleSendContextValuesWithRequest:(void *)a3 options:(void *)a4 responseHandler:;
- (void)handleSendContextValuesWithResponse:(void *)a3 options:(void *)a4 error:(void *)a5 peer:(void *)a6 plStartDate:(void *)a7 completion:;
- (void)handleSubscribeToContextValueChangeNotificationsWithRequest:(void *)a3 options:(void *)a4 responseHandler:;
- (void)handleSubscribeToContextValueChangeNotificationsWithResponse:(void *)a3 options:(void *)a4 error:(void *)a5 peer:(void *)a6 plStartDate:(void *)a7 completion:;
- (void)handleUnsubscribeToContextValueChangeNotificationsWithRequest:(void *)a3 options:(void *)a4 responseHandler:;
- (void)handleUnsubscribeToContextValueChangeNotificationsWithResponse:(void *)a3 options:(void *)a4 error:(void *)a5 peer:(void *)a6 plStartDate:(void *)a7 completion:;
- (void)registerRequestIDsWithClient:(id)a3;
- (void)setDelegate:(id)a3;
@end

@implementation _DKSyncRapportContextStorage

+ (id)sharedInstance
{
  if (sharedInstance_initialized_363 != -1)
  {
    +[_DKSyncRapportContextStorage sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_364;

  return v3;
}

- (void)registerRequestIDsWithClient:(id)a3
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61___DKSyncRapportContextStorage_registerRequestIDsWithClient___block_invoke;
  v8[3] = &unk_1E736AC88;
  v8[4] = self;
  v4 = a3;
  [v4 registerRequestID:@"com.apple.coreduet.fetch-context-values" options:0 handler:v8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61___DKSyncRapportContextStorage_registerRequestIDsWithClient___block_invoke_2;
  v7[3] = &unk_1E736AC88;
  v7[4] = self;
  [v4 registerRequestID:@"com.apple.coreduet.send-context-values" options:0 handler:v7];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61___DKSyncRapportContextStorage_registerRequestIDsWithClient___block_invoke_3;
  v6[3] = &unk_1E736AC88;
  v6[4] = self;
  [v4 registerRequestID:@"com.apple.coreduet.subscribe-to-context-value-changes" options:0 handler:v6];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61___DKSyncRapportContextStorage_registerRequestIDsWithClient___block_invoke_4;
  v5[3] = &unk_1E736AC88;
  v5[4] = self;
  [v4 registerRequestID:@"com.apple.coreduet.unsubscribe-to-context-value-changes" options:0 handler:v5];
}

- (void)handleFetchContextValuesWithRequest:(void *)a3 options:(void *)a4 responseHandler:
{
  v31[15] = *MEMORY[0x1E69E9840];
  v29 = a2;
  v28 = a3;
  v7 = a4;
  if (a1)
  {
    v8 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v8);

    v9 = [MEMORY[0x1E695DF00] date];
    v10 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      [_DKSyncRapportContextStorage handleFetchContextValuesWithRequest:options:responseHandler:];
    }

    v11 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      [_DKSyncRapportContextStorage handleFetchContextValuesWithRequest:options:responseHandler:];
    }

    v12 = [v29 objectForKeyedSubscript:@"keyPaths"];
    v13 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      _CDPrettyPrintCollection(v12, 0, 0, 0);
      objc_claimAutoreleasedReturnValue();
      [_DKSyncRapportContextStorage handleFetchContextValuesWithRequest:options:responseHandler:];
    }

    v14 = a1[2];
    v27 = v14 == 0;
    if (v14)
    {
      v15 = [v14 remoteContextStorage:a1 archivedObjectsForKeyPaths:v12];
      v16 = 0;
    }

    else
    {
      v17 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [objc_opt_class() description];
        objc_claimAutoreleasedReturnValue();
        [_DKSyncRapportContextStorage handleFetchContextValuesWithRequest:options:responseHandler:];
      }

      v16 = +[_DKSyncErrors internalFailure];
      v15 = 0;
    }

    v18 = [a1 myDeviceID];
    v19 = v18;
    v20 = &stru_1F05B9908;
    if (v18)
    {
      v20 = v18;
    }

    v21 = v20;

    v30[0] = @"server";
    v30[1] = @"results";
    v22 = MEMORY[0x1E695E0F8];
    if (v15)
    {
      v22 = v15;
    }

    v31[0] = v21;
    v31[1] = v22;
    v30[2] = @"version";
    v31[2] = @"3.0";
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:3];
    v24 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      [_DKSyncRapportContextStorage handleFetchContextValuesWithRequest:options:responseHandler:];
    }

    v7[2](v7, v23, 0, v16);
    if (v9)
    {
      v25 = [MEMORY[0x1E695DF00] date];
      +[_DKSyncPowerlog recordWithSyncType:transportType:startDate:endDate:isEmpty:](_DKSyncPowerlog, "recordWithSyncType:transportType:startDate:endDate:isEmpty:", 0, [a1 transportType], v9, v25, v27);
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)handleSendContextValuesWithRequest:(void *)a3 options:(void *)a4 responseHandler:
{
  v44[12] = *MEMORY[0x1E69E9840];
  v37 = a2;
  v35 = a3;
  v36 = a4;
  if (!a1)
  {
    goto LABEL_34;
  }

  v7 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v7);

  v38 = [MEMORY[0x1E695DF00] date];
  v8 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    [_DKSyncRapportContextStorage handleSendContextValuesWithRequest:options:responseHandler:];
  }

  v9 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    [_DKSyncRapportContextStorage handleSendContextValuesWithRequest:options:responseHandler:];
  }

  if (!a1[2])
  {
    v19 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      [_DKSyncRapportContextStorage handleSendContextValuesWithRequest:options:responseHandler:];
    }

    v18 = +[_DKSyncErrors internalFailure];
    v20 = 1;
    goto LABEL_27;
  }

  v10 = [v37 objectForKeyedSubscript:@"client"];
  v34 = [v37 objectForKeyedSubscript:@"id"];
  v11 = [v37 objectForKeyedSubscript:@"objects"];
  v12 = +[_DKSyncPeerStatusTracker sharedInstance];
  v13 = [v12 existingPeerWithSourceDeviceID:v10];
  v14 = [v35 objectForKeyedSubscript:@"senderIDS"];
  if (v13)
  {
    v15 = [v13 idsDeviceIdentifier];
    v16 = [v15 isEqualToString:v14];

    if (v16)
    {
      v17 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v31 = [objc_opt_class() description];
        v32 = [v11 allKeys];
        _CDPrettyPrintCollection(v32, 0, 0, 0);
        *buf = 138543618;
        v40 = v31;
        v33 = v41 = 2112;
        v42 = v33;
        _os_log_debug_impl(&dword_191750000, v17, OS_LOG_TYPE_DEBUG, "%{public}@: Received sent context values with key paths '%@'", buf, 0x16u);
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = 0;
        [a1[2] remoteContextStorage:a1 registrationIdentifier:v34 setArchivedObjects:v11 peer:v13];
      }

      else
      {
        v22 = +[_CDLogging syncChannel];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          [objc_opt_class() description];
          objc_claimAutoreleasedReturnValue();
          objc_opt_class();
          [_DKSyncRapportContextStorage handleSendContextValuesWithRequest:options:responseHandler:];
        }

        v18 = +[_DKSyncErrors invalidRequest];
      }

      v20 = [v11 count] == 0;

      goto LABEL_26;
    }

    v21 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      [_DKSyncRapportContextStorage handleSendContextValuesWithRequest:options:responseHandler:];
    }
  }

  else
  {
    v13 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      [_DKSyncRapportContextStorage handleSendContextValuesWithRequest:options:responseHandler:];
    }
  }

  +[_DKSyncErrors invalidRequest];
  v18 = v20 = 1;
LABEL_26:

LABEL_27:
  v23 = [a1 myDeviceID];
  v24 = v23;
  v25 = &stru_1F05B9908;
  if (v23)
  {
    v25 = v23;
  }

  v26 = v25;

  v43[0] = @"server";
  v43[1] = @"version";
  v44[0] = v26;
  v44[1] = @"3.0";
  v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:2];
  v28 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    [_DKSyncRapportContextStorage handleSendContextValuesWithRequest:options:responseHandler:];
  }

  v36[2](v36, v27, 0, v18);
  if (v38)
  {
    v29 = [MEMORY[0x1E695DF00] date];
    +[_DKSyncPowerlog recordWithSyncType:transportType:startDate:endDate:isEmpty:](_DKSyncPowerlog, "recordWithSyncType:transportType:startDate:endDate:isEmpty:", 0, [a1 transportType], v38, v29, v20);
  }

LABEL_34:
  v30 = *MEMORY[0x1E69E9840];
}

- (void)handleSubscribeToContextValueChangeNotificationsWithRequest:(void *)a3 options:(void *)a4 responseHandler:
{
  v59 = *MEMORY[0x1E69E9840];
  v45 = a2;
  v43 = a3;
  v44 = a4;
  if (!a1)
  {
    goto LABEL_31;
  }

  v7 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v7);

  v46 = [MEMORY[0x1E695DF00] date];
  v8 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    [_DKSyncRapportContextStorage handleSubscribeToContextValueChangeNotificationsWithRequest:options:responseHandler:];
  }

  v9 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    [_DKSyncRapportContextStorage handleSubscribeToContextValueChangeNotificationsWithRequest:options:responseHandler:];
  }

  if (!a1[2])
  {
    v21 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      [_DKSyncRapportContextStorage handleSubscribeToContextValueChangeNotificationsWithRequest:options:responseHandler:];
    }

    v20 = +[_DKSyncErrors internalFailure];
    v19 = 1;
    goto LABEL_24;
  }

  v10 = [v45 objectForKeyedSubscript:@"client"];
  v11 = [v45 objectForKeyedSubscript:@"id"];
  v12 = [v45 objectForKeyedSubscript:@"predicate"];
  v13 = +[_DKSyncPeerStatusTracker sharedInstance];
  v14 = [v13 existingPeerWithSourceDeviceID:v10];
  v15 = [v43 objectForKeyedSubscript:@"senderIDS"];
  if (!v14)
  {
    v14 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      [_DKSyncRapportContextStorage handleSubscribeToContextValueChangeNotificationsWithRequest:options:responseHandler:];
    }

    goto LABEL_21;
  }

  v16 = [v14 idsDeviceIdentifier];
  v17 = [v16 isEqualToString:v15];

  if ((v17 & 1) == 0)
  {
    v22 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      [_DKSyncRapportContextStorage handleSendContextValuesWithRequest:options:responseHandler:];
    }

LABEL_21:
    v20 = +[_DKSyncErrors invalidRequest];
    v14 = 0;
    goto LABEL_22;
  }

  if ([v11 length] && v12)
  {
    v18 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v41 = [objc_opt_class() description];
      v32 = [v14 me];
      v33 = @"pseudo ";
      if (!v32)
      {
        v33 = &stru_1F05B9908;
      }

      v39 = v33;
      v40 = [v14 identifier];
      v42 = [v14 model];
      if (v42)
      {
        v38 = MEMORY[0x1E696AEC0];
        v35 = [v14 model];
        v34 = [v38 stringWithFormat:@" (%@)", v35];
        v37 = v35;
      }

      else
      {
        v34 = &stru_1F05B9908;
      }

      *buf = 138544386;
      v50 = v41;
      v51 = 2112;
      v52 = v11;
      v53 = 2114;
      v54 = v39;
      v55 = 2114;
      v56 = v40;
      v57 = 2114;
      v58 = v34;
      v36 = v34;
      _os_log_debug_impl(&dword_191750000, v18, OS_LOG_TYPE_DEBUG, "%{public}@: Received subscribe to context value changes request for '%@' from %{public}@peer %{public}@%{public}@", buf, 0x34u);
      if (v42)
      {
      }
    }

    [a1[2] remoteContextStorage:a1 subscribeToChangesWithPeer:v14 registrationIdentifier:v11 predicate:v12];
    v19 = 0;
    v20 = 0;
    goto LABEL_23;
  }

  v31 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    [_DKSyncRapportContextStorage handleSubscribeToContextValueChangeNotificationsWithRequest:options:responseHandler:];
  }

  v20 = +[_DKSyncErrors invalidRequest];
LABEL_22:
  v19 = 1;
LABEL_23:

LABEL_24:
  v23 = [a1 myDeviceID];
  v24 = v23;
  v25 = &stru_1F05B9908;
  if (v23)
  {
    v25 = v23;
  }

  v26 = v25;

  v47[0] = @"server";
  v47[1] = @"version";
  v48[0] = v26;
  v48[1] = @"3.0";
  v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:2];
  v28 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    [_DKSyncRapportContextStorage handleSubscribeToContextValueChangeNotificationsWithRequest:options:responseHandler:];
  }

  v44[2](v44, v27, 0, v20);
  if (v46)
  {
    v29 = [MEMORY[0x1E695DF00] date];
    +[_DKSyncPowerlog recordWithSyncType:transportType:startDate:endDate:isEmpty:](_DKSyncPowerlog, "recordWithSyncType:transportType:startDate:endDate:isEmpty:", 0, [a1 transportType], v46, v29, v19);
  }

LABEL_31:
  v30 = *MEMORY[0x1E69E9840];
}

- (void)handleUnsubscribeToContextValueChangeNotificationsWithRequest:(void *)a3 options:(void *)a4 responseHandler:
{
  v59 = *MEMORY[0x1E69E9840];
  v45 = a2;
  v43 = a3;
  v44 = a4;
  if (!a1)
  {
    goto LABEL_31;
  }

  v7 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v7);

  v46 = [MEMORY[0x1E695DF00] date];
  v8 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    [_DKSyncRapportContextStorage handleUnsubscribeToContextValueChangeNotificationsWithRequest:options:responseHandler:];
  }

  v9 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    [_DKSyncRapportContextStorage handleUnsubscribeToContextValueChangeNotificationsWithRequest:options:responseHandler:];
  }

  if (!a1[2])
  {
    v21 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      [_DKSyncRapportContextStorage handleUnsubscribeToContextValueChangeNotificationsWithRequest:options:responseHandler:];
    }

    v20 = +[_DKSyncErrors internalFailure];
    v19 = 1;
    goto LABEL_24;
  }

  v10 = [v45 objectForKeyedSubscript:@"client"];
  v11 = [v45 objectForKeyedSubscript:@"id"];
  v12 = [v45 objectForKeyedSubscript:@"predicate"];
  v13 = +[_DKSyncPeerStatusTracker sharedInstance];
  v14 = [v13 existingPeerWithSourceDeviceID:v10];
  v15 = [v43 objectForKeyedSubscript:@"senderIDS"];
  if (!v14)
  {
    v14 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      [_DKSyncRapportContextStorage handleSubscribeToContextValueChangeNotificationsWithRequest:options:responseHandler:];
    }

    goto LABEL_21;
  }

  v16 = [v14 idsDeviceIdentifier];
  v17 = [v16 isEqualToString:v15];

  if ((v17 & 1) == 0)
  {
    v22 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      [_DKSyncRapportContextStorage handleSendContextValuesWithRequest:options:responseHandler:];
    }

LABEL_21:
    v20 = +[_DKSyncErrors invalidRequest];
    v14 = 0;
    goto LABEL_22;
  }

  if ([v11 length] && v12)
  {
    v18 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v41 = [objc_opt_class() description];
      v32 = [v14 me];
      v33 = @"pseudo ";
      if (!v32)
      {
        v33 = &stru_1F05B9908;
      }

      v39 = v33;
      v40 = [v14 identifier];
      v42 = [v14 model];
      if (v42)
      {
        v38 = MEMORY[0x1E696AEC0];
        v35 = [v14 model];
        v34 = [v38 stringWithFormat:@" (%@)", v35];
        v37 = v35;
      }

      else
      {
        v34 = &stru_1F05B9908;
      }

      *buf = 138544386;
      v50 = v41;
      v51 = 2112;
      v52 = v11;
      v53 = 2114;
      v54 = v39;
      v55 = 2114;
      v56 = v40;
      v57 = 2114;
      v58 = v34;
      v36 = v34;
      _os_log_debug_impl(&dword_191750000, v18, OS_LOG_TYPE_DEBUG, "%{public}@: Received unsubscribe to context value changes request for '%@' from %{public}@peer %{public}@%{public}@", buf, 0x34u);
      if (v42)
      {
      }
    }

    [a1[2] remoteContextStorage:a1 unsubscribeFromChangesWithPeer:v14 registrationIdentifier:v11 predicate:v12];
    v19 = 0;
    v20 = 0;
    goto LABEL_23;
  }

  v31 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    [_DKSyncRapportContextStorage handleSubscribeToContextValueChangeNotificationsWithRequest:options:responseHandler:];
  }

  v20 = +[_DKSyncErrors invalidRequest];
LABEL_22:
  v19 = 1;
LABEL_23:

LABEL_24:
  v23 = [a1 myDeviceID];
  v24 = v23;
  v25 = &stru_1F05B9908;
  if (v23)
  {
    v25 = v23;
  }

  v26 = v25;

  v47[0] = @"server";
  v47[1] = @"version";
  v48[0] = v26;
  v48[1] = @"3.0";
  v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:2];
  v28 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    [_DKSyncRapportContextStorage handleUnsubscribeToContextValueChangeNotificationsWithRequest:options:responseHandler:];
  }

  v44[2](v44, v27, 0, v20);
  if (v46)
  {
    v29 = [MEMORY[0x1E695DF00] date];
    +[_DKSyncPowerlog recordWithSyncType:transportType:startDate:endDate:isEmpty:](_DKSyncPowerlog, "recordWithSyncType:transportType:startDate:endDate:isEmpty:", 0, [a1 transportType], v46, v29, v19);
  }

LABEL_31:
  v30 = *MEMORY[0x1E69E9840];
}

- (void)handleFetchContextValuesWithResponse:(void *)a3 options:(void *)a4 error:(void *)a5 peer:(void *)a6 plStartDate:(void *)a7 completion:
{
  v48 = *MEMORY[0x1E69E9840];
  v13 = a2;
  v36 = a3;
  v14 = a4;
  v37 = a5;
  v15 = a6;
  v16 = a7;
  if (!a1)
  {
    goto LABEL_22;
  }

  v17 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v17);

  v18 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    [_DKSyncRapportContextStorage handleFetchContextValuesWithResponse:options:error:peer:plStartDate:completion:];
  }

  if (v14)
  {
    if ([v14 code] == -6714 && (objc_msgSend(v14, "domain"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "isEqualToString:", *MEMORY[0x1E69C6BC8]), v19, v20))
    {
      v21 = +[_DKSyncPeerStatusTracker sharedInstance];
      [v21 removeActiveTransports:objc_msgSend(a1 fromPeer:{"transportType"), v37}];

      v22 = 0;
      v23 = 1;
      if (!v15)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v24 = [a1 transformResponseError:v14];

      v22 = 0;
      v23 = 1;
      v14 = v24;
      if (!v15)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_16;
  }

  v25 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    v35 = [objc_opt_class() description];
    if ([v37 me])
    {
      v30 = @"pseudo ";
    }

    else
    {
      v30 = &stru_1F05B9908;
    }

    v34 = [v37 identifier];
    v31 = [v37 model];
    if (v31)
    {
      v33 = MEMORY[0x1E696AEC0];
      v17 = [v37 model];
      v32 = [v33 stringWithFormat:@" (%@)", v17];
    }

    else
    {
      v32 = &stru_1F05B9908;
    }

    *buf = 138544386;
    v39 = v35;
    v40 = 2114;
    v41 = v30;
    v42 = 2114;
    v43 = v34;
    v44 = 2114;
    v45 = v32;
    v46 = 2112;
    v47 = v13;
    _os_log_debug_impl(&dword_191750000, v25, OS_LOG_TYPE_DEBUG, "%{public}@: Received fetch context values response from %{public}@peer %{public}@%{public}@: %@", buf, 0x34u);
    if (v31)
    {
    }
  }

  v26 = [v13 objectForKeyedSubscript:@"results"];
  v22 = v26;
  if (v26)
  {
    v14 = 0;
    v23 = [v26 count] == 0;
    if (!v15)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  +[_DKSyncErrors invalidResponse];
  v23 = 1;
  v14 = v22 = 0;
  if (v15)
  {
LABEL_16:
    v27 = [MEMORY[0x1E695DF00] date];
    +[_DKSyncPowerlog recordWithSyncType:transportType:startDate:endDate:isEmpty:](_DKSyncPowerlog, "recordWithSyncType:transportType:startDate:endDate:isEmpty:", 0, [a1 transportType], v15, v27, v23);
  }

LABEL_17:
  if (v16)
  {
    v28 = v16[2];
    if (v14)
    {
      v28(v16, 0, v14);
    }

    else
    {
      v28(v16, v22, 0);
    }
  }

LABEL_22:
  v29 = *MEMORY[0x1E69E9840];
}

- (void)handleSendContextValuesWithResponse:(void *)a3 options:(void *)a4 error:(void *)a5 peer:(void *)a6 plStartDate:(void *)a7 completion:
{
  v46 = *MEMORY[0x1E69E9840];
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  if (a1)
  {
    v20 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v20);

    v21 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      [_DKSyncRapportContextStorage handleSendContextValuesWithResponse:options:error:peer:plStartDate:completion:];
    }

    if (v16)
    {
      if (-[NSObject code](v16, "code") == -6714 && (-[NSObject domain](v16, "domain"), v22 = objc_claimAutoreleasedReturnValue(), v23 = [v22 isEqualToString:*MEMORY[0x1E69C6BC8]], v22, v23))
      {
        v24 = +[_DKSyncPeerStatusTracker sharedInstance];
        -[NSObject removeActiveTransports:fromPeer:](v24, "removeActiveTransports:fromPeer:", [a1 transportType], v17);
      }

      else
      {
        [a1 transformResponseError:v16];
        v16 = v24 = v16;
      }
    }

    else
    {
      v24 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        v34 = [objc_opt_class() description];
        v28 = [v17 me];
        v29 = &stru_1F05B9908;
        if (v28)
        {
          v29 = @"pseudo ";
        }

        v32 = v29;
        v33 = [v17 identifier];
        v35 = [v17 model];
        if (v35)
        {
          v31 = MEMORY[0x1E696AEC0];
          v7 = [v17 model];
          v30 = [v31 stringWithFormat:@" (%@)", v7];
        }

        else
        {
          v30 = &stru_1F05B9908;
        }

        *buf = 138544386;
        v37 = v34;
        v38 = 2114;
        v39 = v32;
        v40 = 2114;
        v41 = v33;
        v42 = 2114;
        v43 = v30;
        v44 = 2112;
        v45 = v14;
        _os_log_debug_impl(&dword_191750000, v24, OS_LOG_TYPE_DEBUG, "%{public}@: Received sent context values response from %{public}@peer %{public}@%{public}@: %@", buf, 0x34u);
        if (v35)
        {
        }
      }

      v16 = 0;
    }

    if (v18)
    {
      v25 = [MEMORY[0x1E695DF00] date];
      +[_DKSyncPowerlog recordWithSyncType:transportType:startDate:endDate:isEmpty:](_DKSyncPowerlog, "recordWithSyncType:transportType:startDate:endDate:isEmpty:", 0, [a1 transportType], v18, v25, 1);
    }

    if (v19)
    {
      v26 = v19[2];
      if (v16)
      {
        v26(v19, v16);
      }

      else
      {
        v26(v19, 0);
        v16 = 0;
      }
    }
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (void)handleSubscribeToContextValueChangeNotificationsWithResponse:(void *)a3 options:(void *)a4 error:(void *)a5 peer:(void *)a6 plStartDate:(void *)a7 completion:
{
  v46 = *MEMORY[0x1E69E9840];
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  if (a1)
  {
    v20 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v20);

    v21 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      [_DKSyncRapportContextStorage handleSubscribeToContextValueChangeNotificationsWithResponse:options:error:peer:plStartDate:completion:];
    }

    if (v16)
    {
      if (-[NSObject code](v16, "code") == -6714 && (-[NSObject domain](v16, "domain"), v22 = objc_claimAutoreleasedReturnValue(), v23 = [v22 isEqualToString:*MEMORY[0x1E69C6BC8]], v22, v23))
      {
        v24 = +[_DKSyncPeerStatusTracker sharedInstance];
        -[NSObject removeActiveTransports:fromPeer:](v24, "removeActiveTransports:fromPeer:", [a1 transportType], v17);
      }

      else
      {
        [a1 transformResponseError:v16];
        v16 = v24 = v16;
      }
    }

    else
    {
      v24 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        v34 = [objc_opt_class() description];
        v28 = [v17 me];
        v29 = &stru_1F05B9908;
        if (v28)
        {
          v29 = @"pseudo ";
        }

        v32 = v29;
        v33 = [v17 identifier];
        v35 = [v17 model];
        if (v35)
        {
          v31 = MEMORY[0x1E696AEC0];
          v7 = [v17 model];
          v30 = [v31 stringWithFormat:@" (%@)", v7];
        }

        else
        {
          v30 = &stru_1F05B9908;
        }

        *buf = 138544386;
        v37 = v34;
        v38 = 2114;
        v39 = v32;
        v40 = 2114;
        v41 = v33;
        v42 = 2114;
        v43 = v30;
        v44 = 2112;
        v45 = v14;
        _os_log_debug_impl(&dword_191750000, v24, OS_LOG_TYPE_DEBUG, "%{public}@: Received subscribe to context value changes response from %{public}@peer %{public}@%{public}@: %@", buf, 0x34u);
        if (v35)
        {
        }
      }

      v16 = 0;
    }

    if (v18)
    {
      v25 = [MEMORY[0x1E695DF00] date];
      +[_DKSyncPowerlog recordWithSyncType:transportType:startDate:endDate:isEmpty:](_DKSyncPowerlog, "recordWithSyncType:transportType:startDate:endDate:isEmpty:", 0, [a1 transportType], v18, v25, 1);
    }

    if (v19)
    {
      v26 = v19[2];
      if (v16)
      {
        v26(v19, v16);
      }

      else
      {
        v26(v19, 0);
        v16 = 0;
      }
    }
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (void)handleUnsubscribeToContextValueChangeNotificationsWithResponse:(void *)a3 options:(void *)a4 error:(void *)a5 peer:(void *)a6 plStartDate:(void *)a7 completion:
{
  v46 = *MEMORY[0x1E69E9840];
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  if (a1)
  {
    v20 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v20);

    v21 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      [_DKSyncRapportContextStorage handleUnsubscribeToContextValueChangeNotificationsWithResponse:options:error:peer:plStartDate:completion:];
    }

    if (v16)
    {
      if (-[NSObject code](v16, "code") == -6714 && (-[NSObject domain](v16, "domain"), v22 = objc_claimAutoreleasedReturnValue(), v23 = [v22 isEqualToString:*MEMORY[0x1E69C6BC8]], v22, v23))
      {
        v24 = +[_DKSyncPeerStatusTracker sharedInstance];
        -[NSObject removeActiveTransports:fromPeer:](v24, "removeActiveTransports:fromPeer:", [a1 transportType], v17);
      }

      else
      {
        [a1 transformResponseError:v16];
        v16 = v24 = v16;
      }
    }

    else
    {
      v24 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        v34 = [objc_opt_class() description];
        v28 = [v17 me];
        v29 = &stru_1F05B9908;
        if (v28)
        {
          v29 = @"pseudo ";
        }

        v32 = v29;
        v33 = [v17 identifier];
        v35 = [v17 model];
        if (v35)
        {
          v31 = MEMORY[0x1E696AEC0];
          v7 = [v17 model];
          v30 = [v31 stringWithFormat:@" (%@)", v7];
        }

        else
        {
          v30 = &stru_1F05B9908;
        }

        *buf = 138544386;
        v37 = v34;
        v38 = 2114;
        v39 = v32;
        v40 = 2114;
        v41 = v33;
        v42 = 2114;
        v43 = v30;
        v44 = 2112;
        v45 = v14;
        _os_log_debug_impl(&dword_191750000, v24, OS_LOG_TYPE_DEBUG, "%{public}@: Received unsubscribe to context value changes response from %{public}@peer %{public}@%{public}@: %@", buf, 0x34u);
        if (v35)
        {
        }
      }

      v16 = 0;
    }

    if (v18)
    {
      v25 = [MEMORY[0x1E695DF00] date];
      +[_DKSyncPowerlog recordWithSyncType:transportType:startDate:endDate:isEmpty:](_DKSyncPowerlog, "recordWithSyncType:transportType:startDate:endDate:isEmpty:", 0, [a1 transportType], v18, v25, 1);
    }

    if (v19)
    {
      v26 = v19[2];
      if (v16)
      {
        v26(v19, v16);
      }

      else
      {
        v26(v19, 0);
        v16 = 0;
      }
    }
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v5 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v5);

  delegate = self->_delegate;
  self->_delegate = v4;
  v7 = v4;

  v8 = [(_DKSyncRemoteContextStorageDelegate *)self->_delegate deviceUUID];

  v9 = [v8 UUIDString];

  [(_DKSyncRapportStorage *)self setDeviceID:v9];
}

- (void)handleFetchContextValuesWithRequest:options:responseHandler:.cold.1()
{
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_52(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_32(&dword_191750000, v3, v4, "%{public}@: Handling fetch context values request", v5);
}

- (void)handleFetchContextValuesWithRequest:options:responseHandler:.cold.2()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_0_36(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_5_15(&dword_191750000, "%{public}@: Received fetch context values request: %@", v4, v5);
}

- (void)handleFetchContextValuesWithRequest:options:responseHandler:.cold.3()
{
  OUTLINED_FUNCTION_18_7();
  OUTLINED_FUNCTION_0_36(v2, v3, v4, 5.8382e-34);
  OUTLINED_FUNCTION_5_15(&dword_191750000, "%{public}@: Received fetch context values request for key paths '%@'", v5, v6);
}

- (void)handleFetchContextValuesWithRequest:options:responseHandler:.cold.4()
{
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_52(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_11_10(&dword_191750000, v3, v4, "%{public}@: Failed to fetch context values, missing delegate", v5);
}

- (void)handleFetchContextValuesWithRequest:options:responseHandler:.cold.5()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_0_36(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_5_15(&dword_191750000, "%{public}@: Calling response handler with fetch context values response: %@", v4, v5);
}

- (void)handleSendContextValuesWithRequest:options:responseHandler:.cold.1()
{
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_52(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_32(&dword_191750000, v3, v4, "%{public}@: Handling sent context values", v5);
}

- (void)handleSendContextValuesWithRequest:options:responseHandler:.cold.2()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_0_36(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_5_15(&dword_191750000, "%{public}@: Received sent context values: %@", v4, v5);
}

- (void)handleSendContextValuesWithRequest:options:responseHandler:.cold.3()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_51(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_12_6(&dword_191750000, "%{public}@: Invalid request, client attempting to masquerade as client %{public}@", v4, v5);
}

- (void)handleSendContextValuesWithRequest:options:responseHandler:.cold.4()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_51(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_12_6(&dword_191750000, "%{public}@: Failed to receive sent context values, invalid object class: %{public}@", v4, v5);
}

- (void)handleSendContextValuesWithRequest:options:responseHandler:.cold.5()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_51(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_12_6(&dword_191750000, "%{public}@: Failed to receive sent context values, unknown peer source device id: %{public}@", v4, v5);
}

- (void)handleSendContextValuesWithRequest:options:responseHandler:.cold.6()
{
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_52(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_11_10(&dword_191750000, v3, v4, "%{public}@: Failed to receive sent context values, missing delegate", v5);
}

- (void)handleSendContextValuesWithRequest:options:responseHandler:.cold.7()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_0_36(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_5_15(&dword_191750000, "%{public}@: Calling response handler with sent context values response: %@", v4, v5);
}

- (void)handleSubscribeToContextValueChangeNotificationsWithRequest:options:responseHandler:.cold.1()
{
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_52(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_32(&dword_191750000, v3, v4, "%{public}@: Handling subscribe to context value changes request", v5);
}

- (void)handleSubscribeToContextValueChangeNotificationsWithRequest:options:responseHandler:.cold.2()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_0_36(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_5_15(&dword_191750000, "%{public}@: Received subscribe to context value changes request: %@", v4, v5);
}

- (void)handleSubscribeToContextValueChangeNotificationsWithRequest:options:responseHandler:.cold.4()
{
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_52(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_11_10(&dword_191750000, v3, v4, "%{public}@: Failed to subscribe to context value changes, missing registration identifier", v5);
}

- (void)handleSubscribeToContextValueChangeNotificationsWithRequest:options:responseHandler:.cold.5()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_51(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_12_6(&dword_191750000, "%{public}@: Failed to subscribe to context value changes, unknown peer source device id: %{public}@", v4, v5);
}

- (void)handleSubscribeToContextValueChangeNotificationsWithRequest:options:responseHandler:.cold.6()
{
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_52(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_11_10(&dword_191750000, v3, v4, "%{public}@: Failed to subscribe to context value changes, missing delegate", v5);
}

- (void)handleSubscribeToContextValueChangeNotificationsWithRequest:options:responseHandler:.cold.7()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_0_36(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_5_15(&dword_191750000, "%{public}@: Calling response handler with subscribe to context value changes response: %@", v4, v5);
}

- (void)handleUnsubscribeToContextValueChangeNotificationsWithRequest:options:responseHandler:.cold.1()
{
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_52(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_32(&dword_191750000, v3, v4, "%{public}@: Handling unsubscribe to context value changes request", v5);
}

- (void)handleUnsubscribeToContextValueChangeNotificationsWithRequest:options:responseHandler:.cold.2()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_0_36(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_5_15(&dword_191750000, "%{public}@: Received unsubscribe to context value changes request: %@", v4, v5);
}

- (void)handleUnsubscribeToContextValueChangeNotificationsWithRequest:options:responseHandler:.cold.6()
{
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_52(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_11_10(&dword_191750000, v3, v4, "%{public}@: Failed to unsubscribe to context value changes, missing delegate", v5);
}

- (void)handleUnsubscribeToContextValueChangeNotificationsWithRequest:options:responseHandler:.cold.7()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_0_36(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_5_15(&dword_191750000, "%{public}@: Calling response handler with unsubscribe to context value changes response: %@", v4, v5);
}

- (void)handleFetchContextValuesWithResponse:options:error:peer:plStartDate:completion:.cold.1()
{
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_52(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_32(&dword_191750000, v3, v4, "%{public}@: Handling fetch context values response", v5);
}

- (void)handleSendContextValuesWithResponse:options:error:peer:plStartDate:completion:.cold.1()
{
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_52(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_32(&dword_191750000, v3, v4, "%{public}@: Handling sent context values response", v5);
}

- (void)handleSubscribeToContextValueChangeNotificationsWithResponse:options:error:peer:plStartDate:completion:.cold.1()
{
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_52(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_32(&dword_191750000, v3, v4, "%{public}@: Handling subscribe to context value changes response", v5);
}

- (void)handleUnsubscribeToContextValueChangeNotificationsWithResponse:options:error:peer:plStartDate:completion:.cold.1()
{
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_52(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_32(&dword_191750000, v3, v4, "%{public}@: Handling unsubscribe to context value changes response", v5);
}

@end