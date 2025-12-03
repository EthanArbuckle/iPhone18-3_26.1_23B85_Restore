@interface FCAssetKeyService
- (void)executeRequest:(void *)request callbackQueue:(void *)queue completion:;
- (void)fetchWrappingKeysWithIDs:(id)ds completionHandler:(id)handler;
- (void)initWithConfigurationManager:(void *)manager;
@end

@implementation FCAssetKeyService

- (void)initWithConfigurationManager:(void *)manager
{
  v3 = a2;
  if (manager)
  {
    v14.receiver = manager;
    v14.super_class = FCAssetKeyService;
    manager = objc_msgSendSuper2(&v14, sel_init);
    if (manager)
    {
      v4 = [objc_alloc(MEMORY[0x1E69B68D8]) initWithConstructor:&__block_literal_global_53];
      v5 = manager[1];
      manager[1] = v4;

      v6 = [objc_alloc(MEMORY[0x1E69B68D8]) initWithConstructor:&__block_literal_global_6_0];
      v7 = manager[2];
      manager[2] = v6;

      v8 = objc_alloc(MEMORY[0x1E69B68F8]);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __50__FCAssetKeyService_initWithConfigurationManager___block_invoke_3;
      v12[3] = &unk_1E7C39ED0;
      v13 = v3;
      v9 = [v8 initWithResolver:v12];
      v10 = manager[3];
      manager[3] = v9;
    }
  }

  return manager;
}

id __50__FCAssetKeyService_initWithConfigurationManager___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E698CB90]);
  [v0 setAllowedStatusCodes:0];
  [v0 setAllowedContentTypes:0];
  v1 = objc_alloc(MEMORY[0x1E698CBA8]);
  v2 = [MEMORY[0x1E695AC80] ephemeralSessionConfiguration];
  v3 = [v1 initWithConfiguration:v2];

  v4 = [objc_alloc(MEMORY[0x1E698CBA0]) initWithTrustMode:0];
  [v3 setSecurityPolicy:v4];

  [v3 setResponseDecoder:v0];

  return v3;
}

id __50__FCAssetKeyService_initWithConfigurationManager___block_invoke_2()
{
  v0 = objc_alloc(MEMORY[0x1E698CB88]);
  v1 = +[FCAMSBag bag];
  v2 = [v0 initWithBag:v1];

  v3 = +[FCAppleAccount sharedAccount];
  v4 = [v3 activeiTunesAccount];
  [v2 setAccount:v4];

  [v2 setUrlKnownToBeTrusted:1];
  [v2 setMescalType:0];

  return v2;
}

void __50__FCAssetKeyService_initWithConfigurationManager___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__FCAssetKeyService_initWithConfigurationManager___block_invoke_4;
  v10[3] = &unk_1E7C3B098;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  [v7 fetchConfigurationIfNeededWithCompletion:v10];
}

void __50__FCAssetKeyService_initWithConfigurationManager___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v5 = [FCBaseURLConfiguration CAPIBaseURLForConfiguration:a2];
  v6 = [v5 URLByAppendingPathComponent:@"asset/wrappingkey"];
  if (v6)
  {
    v7 = *(*(a1 + 32) + 16);
  }

  else
  {
    v7 = *(*(a1 + 40) + 16);
  }

  v7();
}

- (void)fetchWrappingKeysWithIDs:(id)ds completionHandler:(id)handler
{
  v40 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  handlerCopy = handler;
  v8 = objc_alloc_init(MEMORY[0x1E69B7070]);
  v9 = [dsCopy mutableCopy];
  [v8 setWrappingKeyIds:v9];

  v10 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    LODWORD(buf) = 134217984;
    *(&buf + 4) = [dsCopy count];
    _os_log_impl(&dword_1B63EF000, v11, OS_LOG_TYPE_DEFAULT, "Asset key service will request %lu keys", &buf, 0xCu);
  }

  data = [v8 data];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __64__FCAssetKeyService_fetchWrappingKeysWithIDs_completionHandler___block_invoke;
  v27[3] = &unk_1E7C3EDE0;
  v28 = dsCopy;
  v29 = handlerCopy;
  v26 = handlerCopy;
  v13 = dsCopy;
  v14 = data;
  v15 = v27;
  if (self)
  {
    v16 = dispatch_get_global_queue(17, 0);
    v17 = self->_endpointURLPromise;
    v18 = zalgo();
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v34 = __60__FCAssetKeyService__performHTTPRequestWithData_completion___block_invoke;
    v35 = &unk_1E7C3EE30;
    v36 = v14;
    v19 = v15;
    v39 = v19;
    v20 = v16;
    v37 = v20;
    selfCopy = self;
    v21 = [(NFPromise *)v17 thenOn:v18 then:&buf];
    v22 = zalgo();
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __60__FCAssetKeyService__performHTTPRequestWithData_completion___block_invoke_31;
    v30[3] = &unk_1E7C39710;
    v32 = v19;

    v31 = v20;
    v23 = v20;
    v24 = [v21 errorOn:v22 error:v30];
  }

  v25 = *MEMORY[0x1E69E9840];
}

void __64__FCAssetKeyService_fetchWrappingKeysWithIDs_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v49 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __64__FCAssetKeyService_fetchWrappingKeysWithIDs_completionHandler___block_invoke_2;
    v40[3] = &unk_1E7C38FF0;
    v41 = *(a1 + 32);
    v42 = v9;
    v43 = *(a1 + 40);
    __64__FCAssetKeyService_fetchWrappingKeysWithIDs_completionHandler___block_invoke_2(v40);

    v10 = v41;
  }

  else if ([v8 statusCode] == 200)
  {
    v11 = [objc_alloc(MEMORY[0x1E69B7078]) initWithData:v7];
    if (v11)
    {
      v10 = v11;
      v12 = FCDefaultLog;
      if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
        v14 = [v10 wrappingKeyMapEntries];
        v15 = [v14 count];
        v16 = [*(a1 + 32) count];
        *buf = 134218240;
        v46 = v15;
        v47 = 2048;
        v48 = v16;
        _os_log_impl(&dword_1B63EF000, v13, OS_LOG_TYPE_DEFAULT, "Asset key service successfully fetched %lu of %lu keys", buf, 0x16u);
      }

      v17 = [MEMORY[0x1E695DF90] dictionary];
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v18 = [v10 wrappingKeyMapEntries];
      v19 = [v18 countByEnumeratingWithState:&v29 objects:v44 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v30;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v30 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v29 + 1) + 8 * i);
            v24 = [v23 wrappingKey];
            v25 = [v23 wrappingKeyId];
            [v17 fc_safelySetObject:v24 forKey:v25];
          }

          v20 = [v18 countByEnumeratingWithState:&v29 objects:v44 count:16];
        }

        while (v20);
      }

      (*(*(a1 + 40) + 16))();
      v8 = v27;
      v7 = v28;
    }

    else
    {
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __64__FCAssetKeyService_fetchWrappingKeysWithIDs_completionHandler___block_invoke_21;
      v33[3] = &unk_1E7C37778;
      v35 = *(a1 + 40);
      v34 = v8;
      __64__FCAssetKeyService_fetchWrappingKeysWithIDs_completionHandler___block_invoke_21(v33);

      v10 = 0;
    }
  }

  else
  {
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __64__FCAssetKeyService_fetchWrappingKeysWithIDs_completionHandler___block_invoke_17;
    v36[3] = &unk_1E7C38FF0;
    v37 = v8;
    v38 = *(a1 + 32);
    v39 = *(a1 + 40);
    __64__FCAssetKeyService_fetchWrappingKeysWithIDs_completionHandler___block_invoke_17(v36);

    v10 = v37;
  }

  v26 = *MEMORY[0x1E69E9840];
}

uint64_t __64__FCAssetKeyService_fetchWrappingKeysWithIDs_completionHandler___block_invoke_2(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
  {
    v6 = a1[4];
    v7 = v2;
    v8 = [v6 count];
    v9 = a1[5];
    v10 = 134218242;
    v11 = v8;
    v12 = 2114;
    v13 = v9;
    _os_log_error_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_ERROR, "Asset key service failed to fetch %lu keys with error: %{public}@", &v10, 0x16u);
  }

  v3 = a1[5];
  result = (*(a1[6] + 16))();
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void __64__FCAssetKeyService_fetchWrappingKeysWithIDs_completionHandler___block_invoke_17(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) statusCode] == 401 || objc_msgSend(*(a1 + 32), "statusCode") == 403)
  {
    v2 = FCDefaultLog;
    if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 40);
      v12 = v2;
      v17 = 134217984;
      v18 = [v11 count];
      _os_log_error_impl(&dword_1B63EF000, v12, OS_LOG_TYPE_ERROR, "Asset key service got unauthorized response for %lu keys", &v17, 0xCu);
    }

    v3 = MEMORY[0x1E696ABC0];
    v4 = *(a1 + 48);
    v5 = [*(a1 + 40) firstObject];
    v6 = [v3 fc_unauthorizedAssetKeyErrorWithWrappingKeyID:v5];
  }

  else
  {
    v7 = FCDefaultLog;
    if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      v14 = v7;
      v15 = [v13 statusCode];
      v16 = [*(a1 + 40) count];
      v17 = 134218240;
      v18 = v15;
      v19 = 2048;
      v20 = v16;
      _os_log_error_impl(&dword_1B63EF000, v14, OS_LOG_TYPE_ERROR, "Asset key service got error status code %ld for %lu keys", &v17, 0x16u);
    }

    v4 = *(a1 + 48);
    v8 = [*(a1 + 32) statusCode];
    v5 = [*(a1 + 32) URL];
    v6 = [FCEndpointConnection errorForStatus:v8 url:v5];
  }

  v9 = v6;
  (*(v4 + 16))(v4, 0, v6);

  v10 = *MEMORY[0x1E69E9840];
}

void __64__FCAssetKeyService_fetchWrappingKeysWithIDs_completionHandler___block_invoke_21(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
  {
    *v9 = 0;
    _os_log_error_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_ERROR, "Asset key service failed to parse response", v9, 2u);
  }

  v3 = MEMORY[0x1E696ABC0];
  v10 = *MEMORY[0x1E696A998];
  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) URL];
  v11[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v3 errorWithDomain:@"FCEndpointConnectionErrorDomain" code:500 userInfo:v6];
  (*(v4 + 16))(v4, 0, v7);

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __60__FCAssetKeyService__performHTTPRequestWithData_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E695AC18] requestWithURL:a2];
  [v3 setHTTPBody:*(a1 + 32)];
  [v3 setHTTPMethod:@"POST"];
  [v3 addValue:@"application/x-protobuf" forHTTPHeaderField:@"Content-Type"];
  v4 = +[FCAppleAccount sharedAccount];
  v5 = [v4 endpointConnectionClientID];
  [v3 addValue:v5 forHTTPHeaderField:@"X-CLIENT-ID"];

  v6 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_DEFAULT, "Asset key service will generate Mescal signature", buf, 2u);
  }

  v7 = *(a1 + 32);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__FCAssetKeyService__performHTTPRequestWithData_completion___block_invoke_27;
  v10[3] = &unk_1E7C3EE08;
  v14 = *(a1 + 56);
  v11 = *(a1 + 40);
  v12 = v3;
  v13 = *(a1 + 48);
  v8 = v3;
  [FCMescalSignature signatureFromData:v7 completion:v10];

  return 0;
}

void __60__FCAssetKeyService__performHTTPRequestWithData_completion___block_invoke_27(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = FCDefaultLog;
    if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_ERROR, "Asset key service failed to sign analytics data with Mescal", buf, 2u);
    }

    v8 = *(a1 + 56);
    if (v8)
    {
      v9 = *(a1 + 32);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __60__FCAssetKeyService__performHTTPRequestWithData_completion___block_invoke_28;
      v12[3] = &unk_1E7C37778;
      v14 = v8;
      v13 = v6;
      dispatch_async(v9, v12);
    }
  }

  else
  {
    v10 = FCDefaultLog;
    v11 = os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v11)
      {
        *buf = 0;
        _os_log_impl(&dword_1B63EF000, v10, OS_LOG_TYPE_DEFAULT, "Asset key service will construct request with mescal signature", buf, 2u);
      }

      [*(a1 + 40) setValue:v5 forHTTPHeaderField:@"X-Apple-ActionSignature"];
    }

    else if (v11)
    {
      *buf = 0;
      _os_log_impl(&dword_1B63EF000, v10, OS_LOG_TYPE_DEFAULT, "Asset key service will construct request", buf, 2u);
    }

    [(FCAssetKeyService *)*(a1 + 48) executeRequest:*(a1 + 32) callbackQueue:*(a1 + 56) completion:?];
  }
}

- (void)executeRequest:(void *)request callbackQueue:(void *)queue completion:
{
  requestCopy = request;
  queueCopy = queue;
  if (self)
  {
    v9 = *(self + 16);
    v10 = a2;
    value = [v9 value];
    v12 = [value requestByEncodingRequest:v10 parameters:0];

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __61__FCAssetKeyService_executeRequest_callbackQueue_completion___block_invoke;
    v13[3] = &unk_1E7C3EE58;
    v16 = queueCopy;
    v14 = requestCopy;
    selfCopy = self;
    [v12 addFinishBlock:v13];
  }
}

void __60__FCAssetKeyService__performHTTPRequestWithData_completion___block_invoke_31(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(a1 + 32);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __60__FCAssetKeyService__performHTTPRequestWithData_completion___block_invoke_2;
    v6[3] = &unk_1E7C37778;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void __61__FCAssetKeyService_executeRequest_callbackQueue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __61__FCAssetKeyService_executeRequest_callbackQueue_completion___block_invoke_2;
    v17[3] = &unk_1E7C39F98;
    v18 = v6;
    v20 = *(a1 + 48);
    v19 = *(a1 + 32);
    __61__FCAssetKeyService_executeRequest_callbackQueue_completion___block_invoke_2(v17);

    v8 = v18;
  }

  else
  {
    v9 = FCDefaultLog;
    if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_DEFAULT, "Asset key service did construct request", buf, 2u);
    }

    v10 = *(a1 + 40);
    if (v10)
    {
      v11 = *(v10 + 8);
    }

    else
    {
      v11 = 0;
    }

    v12 = [v11 value];
    v8 = [v12 dataTaskPromiseWithRequest:v5];

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __61__FCAssetKeyService_executeRequest_callbackQueue_completion___block_invoke_34;
    v13[3] = &unk_1E7C3A0D8;
    v15 = *(a1 + 48);
    v14 = *(a1 + 32);
    [v8 addFinishBlock:v13];
  }
}

void __61__FCAssetKeyService_executeRequest_callbackQueue_completion___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    *buf = 138543362;
    v11 = v6;
    _os_log_error_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_ERROR, "Asset key service failed to construct request with error: %{public}@", buf, 0xCu);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = *(a1 + 40);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __61__FCAssetKeyService_executeRequest_callbackQueue_completion___block_invoke_33;
    v7[3] = &unk_1E7C37778;
    v9 = v3;
    v8 = *(a1 + 32);
    dispatch_async(v4, v7);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __61__FCAssetKeyService_executeRequest_callbackQueue_completion___block_invoke_34(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  v7 = [v5 response];
  if (v7)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = *(a1 + 32);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __61__FCAssetKeyService_executeRequest_callbackQueue_completion___block_invoke_2_36;
    v12[3] = &unk_1E7C3A0B0;
    v16 = v10;
    v13 = v5;
    v14 = v9;
    v15 = v6;
    dispatch_async(v11, v12);
  }
}

void __61__FCAssetKeyService_executeRequest_callbackQueue_completion___block_invoke_2_36(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = [*(a1 + 32) data];
  (*(v2 + 16))(v2, v3, *(a1 + 40), *(a1 + 48));
}

@end