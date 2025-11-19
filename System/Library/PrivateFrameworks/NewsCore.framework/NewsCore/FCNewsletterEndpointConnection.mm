@interface FCNewsletterEndpointConnection
- (FCNewsletterEndpointConnection)initWithConfigurationManager:(id)a3;
- (FCNewsletterEndpointConnection)initWithEndpointConnection:(id)a3 configurationManager:(id)a4;
- (void)configurationManager:(id)a3 configurationDidChange:(id)a4;
- (void)deletePersonalizationVectorWithCallbackQueue:(id)a3 completion:(id)a4;
- (void)getNewsletterSubscriptionWithCallbackQueue:(id)a3 completion:(id)a4;
- (void)getWebTokenWithCallbackQueue:(id)a3 completion:(id)a4;
- (void)newsletterSubscribeTo:(id)a3 includeArray:(id)a4 callbackQueue:(id)a5 completion:(id)a6;
- (void)submitPersonalizationVector:(id)a3 withCallbackQueue:(id)a4 completion:(id)a5;
- (void)updateBaseURL:(id)a3;
@end

@implementation FCNewsletterEndpointConnection

- (FCNewsletterEndpointConnection)initWithConfigurationManager:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(FCEndpointConnection);
  v6 = [(FCNewsletterEndpointConnection *)self initWithEndpointConnection:v5 configurationManager:v4];

  return v6;
}

- (FCNewsletterEndpointConnection)initWithEndpointConnection:(id)a3 configurationManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = FCNewsletterEndpointConnection;
  v9 = [(FCNewsletterEndpointConnection *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_endpointConnection, a3);
    v11 = objc_alloc_init(FCAsyncSerialQueue);
    serialQueue = v10->_serialQueue;
    v10->_serialQueue = v11;

    objc_storeStrong(&v10->_configurationManager, a4);
    v13 = [(FCNewsletterEndpointConnection *)v10 configurationManager];
    [v13 addObserver:v10];

    v14 = [(FCNewsletterEndpointConnection *)v10 serialQueue];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __82__FCNewsletterEndpointConnection_initWithEndpointConnection_configurationManager___block_invoke;
    v16[3] = &unk_1E7C37E50;
    v17 = v10;
    [v14 enqueueBlock:v16];
  }

  return v10;
}

void __82__FCNewsletterEndpointConnection_initWithEndpointConnection_configurationManager___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) configurationManager];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __82__FCNewsletterEndpointConnection_initWithEndpointConnection_configurationManager___block_invoke_2;
  v6[3] = &unk_1E7C3B248;
  v7 = *(a1 + 32);
  v8 = v3;
  v5 = v3;
  [v4 fetchConfigurationIfNeededWithCompletion:v6];
}

void __82__FCNewsletterEndpointConnection_initWithEndpointConnection_configurationManager___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = FCDefaultLog;
    if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543362;
      v10 = v6;
      _os_log_error_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_ERROR, "Failed to fetch endpoint configuration with error: %{public}@", &v9, 0xCu);
    }
  }

  [*(a1 + 32) updateBaseURL:v5];
  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x1E69E9840];
}

- (void)getNewsletterSubscriptionWithCallbackQueue:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(FCNewsletterEndpointConnection *)self serialQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __88__FCNewsletterEndpointConnection_getNewsletterSubscriptionWithCallbackQueue_completion___block_invoke;
  v11[3] = &unk_1E7C463E8;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 enqueueBlock:v11];
}

void __88__FCNewsletterEndpointConnection_getNewsletterSubscriptionWithCallbackQueue_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(a2);
  v3 = [*(a1 + 32) baseURL];

  if (v3)
  {
    v4 = [*(a1 + 32) baseURL];
    v5 = [v4 URLByAppendingPathComponent:@"v1/subscriptions"];

    v6 = [*(a1 + 32) endpointConnection];
    v7 = *MEMORY[0x1E695ABC0];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __88__FCNewsletterEndpointConnection_getNewsletterSubscriptionWithCallbackQueue_completion___block_invoke_2;
    v14[3] = &unk_1E7C3EDE0;
    v15 = v5;
    v8 = *(a1 + 40);
    v16 = *(a1 + 48);
    v9 = v5;
    LODWORD(v10) = v7;
    [v6 performAuthenticatedHTTPRequestWithURL:v9 valuesByHTTPHeaderField:0 method:@"Signed_GET" data:0 contentType:@"application/json" priority:1 reauthenticateIfNeeded:v10 callbackQueue:v8 completion:v14];

LABEL_7:
    return;
  }

  v11 = FCNewsletterLog;
  if (os_log_type_enabled(FCNewsletterLog, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1B63EF000, v11, OS_LOG_TYPE_ERROR, "failed to submit request for newsletters, invalid URL", buf, 2u);
  }

  v12 = *(a1 + 48);
  if (v12)
  {
    v9 = [FCEndpointConnection errorForStatus:-2000 url:0];
    (*(v12 + 16))(v12, 0, 0, 0, v9);
    goto LABEL_7;
  }
}

void __88__FCNewsletterEndpointConnection_getNewsletterSubscriptionWithCallbackQueue_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v60 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = +[FCEndpointConnection errorForStatus:url:](FCEndpointConnection, "errorForStatus:url:", [v8 statusCode], *(a1 + 32));
    if (v7)
    {
      objc_opt_class();
      v11 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v7 options:0 error:0];
      if (v11)
      {
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }

      v15 = v12;
    }

    else
    {
      v15 = 0;
    }

    v16 = [v15 objectForKeyedSubscript:@"newsletters"];
    v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (v16)
    {
      v18 = [MEMORY[0x1E695DFB0] null];

      if (v16 != v18)
      {
        v41 = v15;
        v42 = v10;
        v43 = a1;
        v44 = v9;
        v45 = v8;
        v46 = v7;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v40 = v16;
        obj = v16;
        v19 = [obj countByEnumeratingWithState:&v49 objects:v59 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v50;
          do
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v50 != v21)
              {
                objc_enumerationMutation(obj);
              }

              v23 = *(*(&v49 + 1) + 8 * i);
              v24 = [FCNewsletter alloc];
              v25 = [v23 objectForKeyedSubscript:@"newsletterId"];
              v26 = [v23 objectForKeyedSubscript:@"newsletterStatus"];
              if ([v26 isEqualToString:@"UNSUBSCRIBED"])
              {
                v27 = 1;
              }

              else if ([v26 isEqualToString:@"SUBSCRIBED"])
              {
                v27 = 2;
              }

              else
              {
                v27 = 0;
              }

              v28 = [(FCNewsletter *)v24 initWithIdentifier:v25 enrollment:v27, v40, v41, v42, v43, v44, v45];

              [v17 addObject:v28];
            }

            v20 = [obj countByEnumeratingWithState:&v49 objects:v59 count:16];
          }

          while (v20);
        }

        v8 = v45;
        v7 = v46;
        a1 = v43;
        v9 = v44;
        v15 = v41;
        v10 = v42;
        v16 = v40;
      }
    }

    v29 = FCNewsletterLog;
    if (os_log_type_enabled(FCNewsletterLog, OS_LOG_TYPE_INFO))
    {
      v30 = v29;
      v31 = [v15 objectForKeyedSubscript:@"enrolledTo"];
      [v15 objectForKeyedSubscript:@"include"];
      v47 = v7;
      v32 = v10;
      v34 = v33 = v9;
      *buf = 138543874;
      v54 = v31;
      v55 = 2114;
      v56 = v34;
      v57 = 2114;
      v58 = v17;
      _os_log_impl(&dword_1B63EF000, v30, OS_LOG_TYPE_INFO, "fetched newsletters with enrolledTo: %{public}@ include: %{public}@ newsletters: %{public}@", buf, 0x20u);

      v9 = v33;
      v10 = v32;
      v7 = v47;
    }

    v35 = *(a1 + 40);
    if (v35)
    {
      v36 = [v15 objectForKeyedSubscript:@"enrolledTo"];
      [v15 objectForKeyedSubscript:@"include"];
      v38 = v37 = v9;
      (*(v35 + 16))(v35, v36, v38, v17, v10);

      v9 = v37;
    }
  }

  else
  {
    v13 = FCNewsletterLog;
    if (os_log_type_enabled(FCNewsletterLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v54 = v9;
      _os_log_error_impl(&dword_1B63EF000, v13, OS_LOG_TYPE_ERROR, "failed to fetch newsletters with error: %{public}@", buf, 0xCu);
    }

    v14 = *(a1 + 40);
    if (v14)
    {
      (*(v14 + 16))(v14, 0, 0, 0, v9);
    }
  }

  v39 = *MEMORY[0x1E69E9840];
}

- (void)newsletterSubscribeTo:(id)a3 includeArray:(id)a4 callbackQueue:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(FCNewsletterEndpointConnection *)self serialQueue];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __94__FCNewsletterEndpointConnection_newsletterSubscribeTo_includeArray_callbackQueue_completion___block_invoke;
  v19[3] = &unk_1E7C425E8;
  v19[4] = self;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  [v14 enqueueBlock:v19];
}

void __94__FCNewsletterEndpointConnection_newsletterSubscribeTo_includeArray_callbackQueue_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v22[2] = *MEMORY[0x1E69E9840];
  (*(a2 + 16))(a2);
  v3 = [*(a1 + 32) baseURL];

  if (v3)
  {
    v4 = [*(a1 + 32) baseURL];
    v5 = [v4 URLByAppendingPathComponent:@"v1/subscriptions"];

    v21[0] = @"enrollment";
    v21[1] = @"include";
    v6 = *(a1 + 48);
    if (!v6)
    {
      v6 = MEMORY[0x1E695E0F0];
    }

    v22[0] = *(a1 + 40);
    v22[1] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
    v8 = [*(a1 + 32) endpointConnection];
    v9 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v7 options:0 error:0];
    v10 = *MEMORY[0x1E695ABC0];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __94__FCNewsletterEndpointConnection_newsletterSubscribeTo_includeArray_callbackQueue_completion___block_invoke_2;
    v18[3] = &unk_1E7C3EDE0;
    v19 = v5;
    v11 = *(a1 + 56);
    v20 = *(a1 + 64);
    v12 = v5;
    LODWORD(v13) = v10;
    [v8 performAuthenticatedHTTPRequestWithURL:v12 valuesByHTTPHeaderField:0 method:@"POST" data:v9 contentType:@"application/json" priority:1 reauthenticateIfNeeded:v13 callbackQueue:v11 completion:v18];

    goto LABEL_5;
  }

  v15 = *(a1 + 64);
  if (!v15)
  {
LABEL_5:
    v14 = *MEMORY[0x1E69E9840];
    return;
  }

  v17 = [FCEndpointConnection errorForStatus:-2000 url:0];
  (*(v15 + 16))(v15, 0, 0, 0);
  v16 = *MEMORY[0x1E69E9840];
}

void __94__FCNewsletterEndpointConnection_newsletterSubscribeTo_includeArray_callbackQueue_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v43 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = +[FCEndpointConnection errorForStatus:url:](FCEndpointConnection, "errorForStatus:url:", [v8 statusCode], *(a1 + 32));
    v11 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v7 options:0 error:0];
    v12 = [v11 objectForKeyedSubscript:@"newsletters"];
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (v12)
    {
      v14 = [MEMORY[0x1E695DFB0] null];

      if (v12 != v14)
      {
        v31 = v11;
        v32 = a1;
        v33 = v10;
        v34 = v9;
        v35 = v8;
        v36 = v7;
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v30 = v12;
        obj = v12;
        v15 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v39;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v39 != v17)
              {
                objc_enumerationMutation(obj);
              }

              v19 = *(*(&v38 + 1) + 8 * i);
              v20 = [FCNewsletter alloc];
              v21 = [v19 objectForKeyedSubscript:@"newsletterId"];
              v22 = [v19 objectForKeyedSubscript:@"newsletterStatus"];
              if ([v22 isEqualToString:@"UNSUBSCRIBED"])
              {
                v23 = 1;
              }

              else if ([v22 isEqualToString:@"SUBSCRIBED"])
              {
                v23 = 2;
              }

              else
              {
                v23 = 0;
              }

              v24 = [(FCNewsletter *)v20 initWithIdentifier:v21 enrollment:v23, v30, v31, v32, v33, v34, v35, v36];

              [v13 addObject:v24];
            }

            v16 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
          }

          while (v16);
        }

        v8 = v35;
        v7 = v36;
        v10 = v33;
        v9 = v34;
        v11 = v31;
        a1 = v32;
        v12 = v30;
      }
    }

    v25 = *(a1 + 40);
    if (v25)
    {
      v26 = [v11 objectForKeyedSubscript:@"enrolledTo"];
      v27 = [v11 objectForKeyedSubscript:@"include"];
      (*(v25 + 16))(v25, v26, v27, v13, v10);
    }
  }

  else
  {
    v28 = *(a1 + 40);
    if (v28)
    {
      (*(v28 + 16))(v28, 0, 0, 0, v9);
    }
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (void)submitPersonalizationVector:(id)a3 withCallbackQueue:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v8)
  {
    v12 = [(FCNewsletterEndpointConnection *)self serialQueue];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __91__FCNewsletterEndpointConnection_submitPersonalizationVector_withCallbackQueue_completion___block_invoke_2;
    v15[3] = &unk_1E7C425C0;
    v15[4] = self;
    v16 = v8;
    v17 = v9;
    v18 = v11;
    [v12 enqueueBlock:v15];

    v13 = v16;
LABEL_5:

    goto LABEL_6;
  }

  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __91__FCNewsletterEndpointConnection_submitPersonalizationVector_withCallbackQueue_completion___block_invoke;
  v22 = &unk_1E7C379C8;
  v14 = v10;
  v23 = v14;
  if (v14)
  {
    (*(v14 + 2))(v14, 0, 0, 0, 0, 0);
    v13 = v23;
    goto LABEL_5;
  }

LABEL_6:
}

uint64_t __91__FCNewsletterEndpointConnection_submitPersonalizationVector_withCallbackQueue_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0, 0, 0, 0);
  }

  return result;
}

void __91__FCNewsletterEndpointConnection_submitPersonalizationVector_withCallbackQueue_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v22[1] = *MEMORY[0x1E69E9840];
  (*(a2 + 16))(a2);
  v3 = [*(a1 + 32) baseURL];

  if (v3)
  {
    v4 = [*(a1 + 32) baseURL];
    v5 = [v4 URLByAppendingPathComponent:@"v1/vectors"];

    v6 = *(a1 + 40);
    v21 = @"vector";
    v22[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v8 = [*(a1 + 32) endpointConnection];
    v9 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v7 options:0 error:0];
    v10 = *MEMORY[0x1E695ABC0];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __91__FCNewsletterEndpointConnection_submitPersonalizationVector_withCallbackQueue_completion___block_invoke_3;
    v18[3] = &unk_1E7C3EDE0;
    v19 = v5;
    v11 = *(a1 + 48);
    v20 = *(a1 + 56);
    v12 = v5;
    LODWORD(v13) = v10;
    [v8 performAuthenticatedHTTPRequestWithURL:v12 valuesByHTTPHeaderField:0 method:@"POST" data:v9 contentType:@"application/json" priority:1 reauthenticateIfNeeded:v13 callbackQueue:v11 completion:v18];

LABEL_3:
    v14 = *MEMORY[0x1E69E9840];
    return;
  }

  v15 = *(a1 + 56);
  if (!v15)
  {
    goto LABEL_3;
  }

  v17 = [FCEndpointConnection errorForStatus:-2000 url:0];
  (*(v15 + 16))(v15, 0, 0, 0, 0);
  v16 = *MEMORY[0x1E69E9840];
}

void __91__FCNewsletterEndpointConnection_submitPersonalizationVector_withCallbackQueue_completion___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v44 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = +[FCEndpointConnection errorForStatus:url:](FCEndpointConnection, "errorForStatus:url:", [v8 statusCode], *(a1 + 32));
    v11 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v7 options:0 error:0];
    v12 = [v11 objectForKeyedSubscript:@"newsletters"];
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v37 = v12;
    if (v12)
    {
      v14 = [MEMORY[0x1E695DFB0] null];

      if (v12 != v14)
      {
        v31 = a1;
        v32 = v11;
        v33 = v10;
        v34 = v9;
        v35 = v8;
        v36 = v7;
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        obj = v12;
        v15 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v40;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v40 != v17)
              {
                objc_enumerationMutation(obj);
              }

              v19 = *(*(&v39 + 1) + 8 * i);
              v20 = [FCNewsletter alloc];
              v21 = [v19 objectForKeyedSubscript:@"newsletterId"];
              v22 = [v19 objectForKeyedSubscript:@"newsletterStatus"];
              if ([v22 isEqualToString:@"UNSUBSCRIBED"])
              {
                v23 = 1;
              }

              else if ([v22 isEqualToString:@"SUBSCRIBED"])
              {
                v23 = 2;
              }

              else
              {
                v23 = 0;
              }

              v24 = [(FCNewsletter *)v20 initWithIdentifier:v21 enrollment:v23, v31, v32, v33, v34, v35, v36];

              [v13 addObject:v24];
            }

            v16 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
          }

          while (v16);
        }

        v8 = v35;
        v7 = v36;
        v10 = v33;
        v9 = v34;
        a1 = v31;
        v11 = v32;
        v12 = v37;
      }
    }

    v25 = *(a1 + 40);
    if (v25)
    {
      v26 = [v11 objectForKeyedSubscript:@"enrolledTo"];
      [v11 objectForKeyedSubscript:@"include"];
      v28 = v27 = v9;
      v12 = v37;
      (*(v25 + 16))(v25, v10 == 0, v26, v28, v13, v10);

      v9 = v27;
    }
  }

  else
  {
    v29 = *(a1 + 40);
    if (v29)
    {
      (*(v29 + 16))(v29, 0, 0, 0, 0, v9);
    }
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (void)deletePersonalizationVectorWithCallbackQueue:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(FCNewsletterEndpointConnection *)self serialQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __90__FCNewsletterEndpointConnection_deletePersonalizationVectorWithCallbackQueue_completion___block_invoke;
  v11[3] = &unk_1E7C463E8;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 enqueueBlock:v11];
}

void __90__FCNewsletterEndpointConnection_deletePersonalizationVectorWithCallbackQueue_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(a2);
  v3 = [*(a1 + 32) baseURL];

  if (v3)
  {
    v4 = [*(a1 + 32) baseURL];
    v5 = [v4 URLByAppendingPathComponent:@"v1/vectors"];

    v6 = [*(a1 + 32) endpointConnection];
    v7 = *MEMORY[0x1E695ABC0];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __90__FCNewsletterEndpointConnection_deletePersonalizationVectorWithCallbackQueue_completion___block_invoke_2;
    v13[3] = &unk_1E7C3EDE0;
    v14 = v5;
    v8 = *(a1 + 40);
    v15 = *(a1 + 48);
    v9 = v5;
    LODWORD(v10) = v7;
    [v6 performAuthenticatedHTTPRequestWithURL:v9 valuesByHTTPHeaderField:0 method:@"Signed_DELETE" data:0 contentType:@"application/json" priority:1 reauthenticateIfNeeded:v10 callbackQueue:v8 completion:v13];
  }

  else
  {
    v11 = *(a1 + 48);
    if (v11)
    {
      v12 = [FCEndpointConnection errorForStatus:-2000 url:0];
      (*(v11 + 16))(v11, 0, v12);
    }
  }
}

void __90__FCNewsletterEndpointConnection_deletePersonalizationVectorWithCallbackQueue_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v12 = a2;
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v9 = +[FCEndpointConnection errorForStatus:url:](FCEndpointConnection, "errorForStatus:url:", [v7 statusCode], *(a1 + 32));
    v10 = *(a1 + 40);
    if (v10)
    {
      (*(v10 + 16))(v10, v9 == 0, v9);
    }
  }

  else
  {
    v11 = *(a1 + 40);
    if (v11)
    {
      (*(v11 + 16))(v11, 0, v8);
    }
  }
}

- (void)getWebTokenWithCallbackQueue:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(FCNewsletterEndpointConnection *)self serialQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __74__FCNewsletterEndpointConnection_getWebTokenWithCallbackQueue_completion___block_invoke;
  v11[3] = &unk_1E7C463E8;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 enqueueBlock:v11];
}

void __74__FCNewsletterEndpointConnection_getWebTokenWithCallbackQueue_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(a2);
  v3 = [*(a1 + 32) baseURL];

  if (v3)
  {
    v4 = [*(a1 + 32) baseURL];
    v5 = [v4 URLByAppendingPathComponent:@"v1/webToken"];

    v6 = [*(a1 + 32) endpointConnection];
    v7 = *MEMORY[0x1E695ABC0];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __74__FCNewsletterEndpointConnection_getWebTokenWithCallbackQueue_completion___block_invoke_2;
    v13[3] = &unk_1E7C3EDE0;
    v14 = v5;
    v8 = *(a1 + 40);
    v15 = *(a1 + 48);
    v9 = v5;
    LODWORD(v10) = v7;
    [v6 performAuthenticatedHTTPRequestWithURL:v9 valuesByHTTPHeaderField:0 method:@"Signed_GET" data:0 contentType:@"application/json" priority:1 reauthenticateIfNeeded:v10 callbackQueue:v8 completion:v13];
  }

  else
  {
    v11 = *(a1 + 48);
    if (v11)
    {
      v12 = [FCEndpointConnection errorForStatus:-2000 url:0];
      (*(v11 + 16))(v11, 0, v12);
    }
  }
}

void __74__FCNewsletterEndpointConnection_getWebTokenWithCallbackQueue_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = +[FCEndpointConnection errorForStatus:url:](FCEndpointConnection, "errorForStatus:url:", [v8 statusCode], *(a1 + 32));
    v11 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v7 options:0 error:0];
    if (v10)
    {
      v12 = FCDefaultLog;
      if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
      {
        v20 = 138543362;
        v21 = v10;
        _os_log_error_impl(&dword_1B63EF000, v12, OS_LOG_TYPE_ERROR, "Failed to fetch web token with error: %{public}@", &v20, 0xCu);
      }
    }

    v13 = [v11 objectForKeyedSubscript:@"diagnostics"];
    if (v13)
    {
      v14 = [MEMORY[0x1E695DFB0] null];

      if (v13 != v14)
      {
        v15 = FCDefaultLog;
        if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
        {
          v20 = 138543362;
          v21 = v13;
          _os_log_error_impl(&dword_1B63EF000, v15, OS_LOG_TYPE_ERROR, "Fetch web token returned diagnostics: %{public}@", &v20, 0xCu);
        }
      }
    }

    v16 = *(a1 + 40);
    if (v16)
    {
      v17 = [v11 objectForKeyedSubscript:@"webToken"];
      (*(v16 + 16))(v16, v17, v10);
    }
  }

  else
  {
    v18 = *(a1 + 40);
    if (v18)
    {
      (*(v18 + 16))(v18, 0, v9);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)updateBaseURL:(id)a3
{
  v4 = [FCBaseURLConfiguration newsletterBaseURLForConfiguration:a3];
  [(FCNewsletterEndpointConnection *)self setBaseURL:v4];
}

- (void)configurationManager:(id)a3 configurationDidChange:(id)a4
{
  v5 = a4;
  v6 = [(FCNewsletterEndpointConnection *)self serialQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __78__FCNewsletterEndpointConnection_configurationManager_configurationDidChange___block_invoke;
  v8[3] = &unk_1E7C3BDC0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [v6 enqueueBlock:v8];
}

void __78__FCNewsletterEndpointConnection_configurationManager_configurationDidChange___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  [v2 updateBaseURL:v3];
  v4[2]();
}

@end