@interface FCAnalyticsEndpointConnection
- (FCAnalyticsEndpointConnection)initWithEndpointConnection:(id)connection;
- (void)uploadEnvelopeBatch:(id)batch withURL:(id)l valuesByHTTPHeaderField:(id)field completion:(id)completion;
- (void)uploadEnvelopeBatch:(id)batch withURL:(id)l valuesByHTTPHeaderField:(id)field priority:(float)priority callbackQueue:(id)queue completion:(id)completion;
@end

@implementation FCAnalyticsEndpointConnection

- (FCAnalyticsEndpointConnection)initWithEndpointConnection:(id)connection
{
  connectionCopy = connection;
  v11.receiver = self;
  v11.super_class = FCAnalyticsEndpointConnection;
  v6 = [(FCAnalyticsEndpointConnection *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_endpointConnection, connection);
    v8 = objc_alloc_init(FCAsyncSerialQueue);
    serialQueue = v7->_serialQueue;
    v7->_serialQueue = v8;
  }

  return v7;
}

- (void)uploadEnvelopeBatch:(id)batch withURL:(id)l valuesByHTTPHeaderField:(id)field completion:(id)completion
{
  completionCopy = completion;
  fieldCopy = field;
  lCopy = l;
  batchCopy = batch;
  v15 = dispatch_get_global_queue(17, 0);
  LODWORD(v14) = 1.0;
  [(FCAnalyticsEndpointConnection *)self uploadEnvelopeBatch:batchCopy withURL:lCopy valuesByHTTPHeaderField:fieldCopy priority:v15 callbackQueue:completionCopy completion:v14];
}

- (void)uploadEnvelopeBatch:(id)batch withURL:(id)l valuesByHTTPHeaderField:(id)field priority:(float)priority callbackQueue:(id)queue completion:(id)completion
{
  batchCopy = batch;
  lCopy = l;
  fieldCopy = field;
  queueCopy = queue;
  completionCopy = completion;
  serialQueue = [(FCAnalyticsEndpointConnection *)self serialQueue];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __119__FCAnalyticsEndpointConnection_uploadEnvelopeBatch_withURL_valuesByHTTPHeaderField_priority_callbackQueue_completion___block_invoke;
  v25[3] = &unk_1E7C478D0;
  v26 = batchCopy;
  v27 = lCopy;
  selfCopy = self;
  v29 = fieldCopy;
  priorityCopy = priority;
  v30 = queueCopy;
  v31 = completionCopy;
  v20 = completionCopy;
  v21 = queueCopy;
  v22 = fieldCopy;
  v23 = lCopy;
  v24 = batchCopy;
  [serialQueue enqueueBlock:v25];
}

void __119__FCAnalyticsEndpointConnection_uploadEnvelopeBatch_withURL_valuesByHTTPHeaderField_priority_callbackQueue_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v17 = [*(a1 + 32) data];
  v4 = *(a1 + 40);
  v5 = NewsCoreUserDefaults();
  v6 = [v5 BOOLForKey:@"running_ui_automation"];
  v7 = v6;
  if (v6)
  {
    v8 = NFInternalBuild();

    if (!v8)
    {
      v7 = 0;
      goto LABEL_6;
    }

    v5 = [MEMORY[0x1E696AF20] componentsWithURL:v4 resolvingAgainstBaseURL:0];
    [v5 setQuery:@"testRequest=true"];
    v9 = [v5 URL];

    v4 = v9;
  }

LABEL_6:
  v10 = [*(a1 + 48) endpointConnection];
  v11 = *(a1 + 80);
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __119__FCAnalyticsEndpointConnection_uploadEnvelopeBatch_withURL_valuesByHTTPHeaderField_priority_callbackQueue_completion___block_invoke_2;
  v18[3] = &unk_1E7C478A8;
  v22 = v7;
  v19 = v4;
  v20 = v3;
  v21 = *(a1 + 72);
  v14 = v3;
  v15 = v4;
  LODWORD(v16) = v11;
  [v10 performHTTPRequestWithURL:v15 valuesByHTTPHeaderField:v12 method:@"PUT" data:v17 contentType:@"application/octet-stream" priority:1 requiresMescalSigning:v16 callbackQueue:v13 completion:v18];
}

void __119__FCAnalyticsEndpointConnection_uploadEnvelopeBatch_withURL_valuesByHTTPHeaderField_priority_callbackQueue_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v53[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (*(a1 + 56) == 1 && [v7 length])
  {
    v10 = FCURLForNewsAnalyticsPayloads();
    v11 = [v10 URLByAppendingPathComponent:@"response.json"];
    v12 = [v11 path];

    v39 = 0;
    v40 = &v39;
    v41 = 0x3032000000;
    v42 = __Block_byref_object_copy__94;
    v43 = __Block_byref_object_dispose__94;
    v44 = 0;
    obj = 0;
    v33 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v7 options:4 error:&obj];
    objc_storeStrong(&v44, obj);
    v13 = [v33 fc_firstObjectPassingTest:&__block_literal_global_182];
    v14 = v13;
    v15 = MEMORY[0x1E695E0F8];
    if (v13)
    {
      v15 = v13;
    }

    v32 = v15;

    v16 = MEMORY[0x1E695DF20];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __119__FCAnalyticsEndpointConnection_uploadEnvelopeBatch_withURL_valuesByHTTPHeaderField_priority_callbackQueue_completion___block_invoke_15;
    v35[3] = &unk_1E7C47880;
    v17 = v12;
    v36 = v17;
    v37 = &v39;
    v18 = [v16 fc_dictionary:v35];
    v19 = [v18 fc_dictionaryByMergingDictionary:v32 withValueCombiner:&__block_literal_global_26_2];
    v53[0] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:1];
    v21 = (v40 + 5);
    v34 = v40[5];
    v22 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v20 options:0 error:&v34];
    objc_storeStrong(v21, v34);
    [v22 writeToFile:v17 atomically:0];

    if (v40[5])
    {
      v23 = MEMORY[0x1E69E9C10];
      v24 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v29 = objc_alloc(MEMORY[0x1E696AEC0]);
        v30 = [v40[5] localizedDescription];
        v31 = [v29 initWithFormat:@"Expected nil error but got %@", v30];
        *buf = 136315906;
        v46 = "[FCAnalyticsEndpointConnection uploadEnvelopeBatch:withURL:valuesByHTTPHeaderField:priority:callbackQueue:completion:]_block_invoke_2";
        v47 = 2080;
        v48 = "FCAnalyticsEndpointConnection.m";
        v49 = 1024;
        v50 = 124;
        v51 = 2114;
        v52 = v31;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
      }
    }

    _Block_object_dispose(&v39, 8);
  }

  if (v8)
  {
    v25 = +[FCEndpointConnection errorForStatus:url:](FCEndpointConnection, "errorForStatus:url:", [v8 statusCode], *(a1 + 32));
    (*(*(a1 + 40) + 16))();
    v26 = *(a1 + 48);
    if (v26)
    {
      (*(v26 + 16))(v26, v25 == 0, v25, 1);
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
    v27 = *(a1 + 48);
    if (v27)
    {
      (*(v27 + 16))(v27, 0, v9, 0);
    }
  }

  v28 = *MEMORY[0x1E69E9840];
}

void __119__FCAnalyticsEndpointConnection_uploadEnvelopeBatch_withURL_valuesByHTTPHeaderField_priority_callbackQueue_completion___block_invoke_15(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:*(a1 + 32)];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __119__FCAnalyticsEndpointConnection_uploadEnvelopeBatch_withURL_valuesByHTTPHeaderField_priority_callbackQueue_completion___block_invoke_2_17;
  v7[3] = &unk_1E7C47858;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  FCPerformIfNonNil(v4, v7);
}

void __119__FCAnalyticsEndpointConnection_uploadEnvelopeBatch_withURL_valuesByHTTPHeaderField_priority_callbackQueue_completion___block_invoke_2_17(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  objc_opt_class();
  v4 = *(*(a1 + 40) + 8);
  obj = *(v4 + 40);
  v5 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v3 options:4 error:&obj];

  objc_storeStrong((v4 + 40), obj);
  v6 = [v5 firstObject];
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = v8;
  v10 = MEMORY[0x1E695E0F8];
  if (v8)
  {
    v10 = v8;
  }

  v11 = v10;

  if (*(*(*(a1 + 40) + 8) + 40) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v13 = objc_alloc(MEMORY[0x1E696AEC0]);
    v14 = [*(*(*(a1 + 40) + 8) + 40) localizedDescription];
    v15 = [v13 initWithFormat:@"Expected nil error but got %@", v14];
    *buf = 136315906;
    v18 = "[FCAnalyticsEndpointConnection uploadEnvelopeBatch:withURL:valuesByHTTPHeaderField:priority:callbackQueue:completion:]_block_invoke_2";
    v19 = 2080;
    v20 = "FCAnalyticsEndpointConnection.m";
    v21 = 1024;
    v22 = 107;
    v23 = 2114;
    v24 = v15;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  [*(a1 + 32) addEntriesFromDictionary:v11];

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __119__FCAnalyticsEndpointConnection_uploadEnvelopeBatch_withURL_valuesByHTTPHeaderField_priority_callbackQueue_completion___block_invoke_23(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  v6 = [a2 integerValue];
  v7 = [v5 integerValue];

  return [v4 numberWithInteger:v7 + v6];
}

@end