@interface FCAVAssetKeyService
- (FCAVAssetKeyService)init;
- (void)_performHTTPRequest:(void *)a3 keyURI:(void *)a4 completion:;
- (void)executeRequest:(void *)a3 keyURI:(void *)a4 callbackQueue:(void *)a5 completion:;
- (void)fetchAppCertificateWithCompletionHandler:(id)a3;
- (void)fetchContentKeyWithURI:(id)a3 spcData:(id)a4 completionHandler:(id)a5;
- (void)initWithConfigurationManager:(void *)a1;
@end

@implementation FCAVAssetKeyService

- (FCAVAssetKeyService)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCAVAssetKeyService init]";
    v10 = 2080;
    v11 = "FCAVAssetKeyService.m";
    v12 = 1024;
    v13 = 40;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCAVAssetKeyService init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (void)initWithConfigurationManager:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v14.receiver = a1;
    v14.super_class = FCAVAssetKeyService;
    a1 = objc_msgSendSuper2(&v14, sel_init);
    if (a1)
    {
      v4 = [objc_alloc(MEMORY[0x1E69B68D8]) initWithConstructor:&__block_literal_global_20];
      v5 = a1[1];
      a1[1] = v4;

      v6 = [objc_alloc(MEMORY[0x1E69B68D8]) initWithConstructor:&__block_literal_global_18_0];
      v7 = a1[2];
      a1[2] = v6;

      v8 = objc_alloc(MEMORY[0x1E69B68F8]);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __52__FCAVAssetKeyService_initWithConfigurationManager___block_invoke_3;
      v12[3] = &unk_1E7C39ED0;
      v13 = v3;
      v9 = [v8 initWithResolver:v12];
      v10 = a1[3];
      a1[3] = v9;
    }
  }

  return a1;
}

id __52__FCAVAssetKeyService_initWithConfigurationManager___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E698CB90]);
  [v0 setAllowedStatusCodes:0];
  [v0 setAllowedContentTypes:0];
  v1 = objc_alloc(MEMORY[0x1E698CBA8]);
  v2 = [MEMORY[0x1E695AC80] ephemeralSessionConfiguration];
  v3 = [v1 initWithConfiguration:v2];

  [v3 setResponseDecoder:v0];

  return v3;
}

id __52__FCAVAssetKeyService_initWithConfigurationManager___block_invoke_2()
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

void __52__FCAVAssetKeyService_initWithConfigurationManager___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__FCAVAssetKeyService_initWithConfigurationManager___block_invoke_4;
  v6[3] = &unk_1E7C39EA8;
  v7 = v3;
  v5 = v3;
  [v4 fetchConfigurationIfNeededWithCompletion:v6];
}

void __52__FCAVAssetKeyService_initWithConfigurationManager___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [FCBaseURLConfiguration fairPlayBaseURLForConfiguration:a2];
  (*(v2 + 16))(v2, v3);
}

- (void)fetchAppCertificateWithCompletionHandler:(id)a3
{
  v4 = a3;
  if (self)
  {
    fairPlayBaseURLPromise = self->_fairPlayBaseURLPromise;
  }

  else
  {
    fairPlayBaseURLPromise = 0;
  }

  v6 = fairPlayBaseURLPromise;
  v7 = zalgo();
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __64__FCAVAssetKeyService_fetchAppCertificateWithCompletionHandler___block_invoke;
  v15[3] = &unk_1E7C39F20;
  v15[4] = self;
  v8 = v4;
  v16 = v8;
  v9 = [(NFPromise *)v6 thenOn:v7 then:v15];
  v10 = zalgo();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__FCAVAssetKeyService_fetchAppCertificateWithCompletionHandler___block_invoke_39;
  v13[3] = &unk_1E7C39F48;

  v14 = v8;
  v11 = v8;
  v12 = [v9 errorOn:v10 error:v13];
}

uint64_t __64__FCAVAssetKeyService_fetchAppCertificateWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 URLByAppendingPathComponent:@"certificate"];
  v4 = [MEMORY[0x1E695AC18] requestWithURL:v3];
  [v4 setHTTPMethod:@"GET"];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__FCAVAssetKeyService_fetchAppCertificateWithCompletionHandler___block_invoke_2;
  v7[3] = &unk_1E7C39EF8;
  v5 = *(a1 + 32);
  v8 = *(a1 + 40);
  [(FCAVAssetKeyService *)v5 _performHTTPRequest:v4 keyURI:0 completion:v7];

  return 0;
}

void __64__FCAVAssetKeyService_fetchAppCertificateWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v9)
  {
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __64__FCAVAssetKeyService_fetchAppCertificateWithCompletionHandler___block_invoke_3;
    v30[3] = &unk_1E7C37BC0;
    v31 = v9;
    v32 = *(a1 + 32);
    __64__FCAVAssetKeyService_fetchAppCertificateWithCompletionHandler___block_invoke_3(v30);

    v11 = v31;
  }

  else if ([v8 statusCode] == 200)
  {
    v12 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v7 options:0 error:0];
    v11 = v12;
    if (v12)
    {
      v13 = [v12 objectForKeyedSubscript:@"certificate"];
      if (v13)
      {
        v14 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v13 options:0];
        if (v14)
        {
          v15 = v14;
          v16 = FCAVAssetLog;
          if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_DEFAULT))
          {
            *v17 = 0;
            _os_log_impl(&dword_1B63EF000, v16, OS_LOG_TYPE_DEFAULT, "AV asset key service successfully fetched certificate", v17, 2u);
          }

          (*(*(a1 + 32) + 16))();
        }

        else
        {
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = __64__FCAVAssetKeyService_fetchAppCertificateWithCompletionHandler___block_invoke_36;
          v18[3] = &unk_1E7C37778;
          v20 = *(a1 + 32);
          v19 = v8;
          __64__FCAVAssetKeyService_fetchAppCertificateWithCompletionHandler___block_invoke_36(v18);

          v15 = 0;
        }
      }

      else
      {
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __64__FCAVAssetKeyService_fetchAppCertificateWithCompletionHandler___block_invoke_34;
        v21[3] = &unk_1E7C37778;
        v23 = *(a1 + 32);
        v22 = v8;
        __64__FCAVAssetKeyService_fetchAppCertificateWithCompletionHandler___block_invoke_34(v21);

        v15 = v23;
      }
    }

    else
    {
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __64__FCAVAssetKeyService_fetchAppCertificateWithCompletionHandler___block_invoke_32;
      v24[3] = &unk_1E7C37778;
      v26 = *(a1 + 32);
      v25 = v8;
      __64__FCAVAssetKeyService_fetchAppCertificateWithCompletionHandler___block_invoke_32(v24);

      v13 = v26;
    }
  }

  else
  {
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __64__FCAVAssetKeyService_fetchAppCertificateWithCompletionHandler___block_invoke_28;
    v27[3] = &unk_1E7C37BC0;
    v28 = v8;
    v29 = *(a1 + 32);
    __64__FCAVAssetKeyService_fetchAppCertificateWithCompletionHandler___block_invoke_28(v27);

    v11 = v28;
  }
}

uint64_t __64__FCAVAssetKeyService_fetchAppCertificateWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = FCAVAssetLog;
  if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543362;
    v8 = v6;
    _os_log_error_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_ERROR, "AV asset key service failed to fetch certificate with error: %{public}@", &v7, 0xCu);
  }

  v3 = *(a1 + 32);
  result = (*(*(a1 + 40) + 16))();
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void __64__FCAVAssetKeyService_fetchAppCertificateWithCompletionHandler___block_invoke_28(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) statusCode] == 401 || objc_msgSend(*(a1 + 32), "statusCode") == 403)
  {
    v2 = FCAVAssetLog;
    if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12) = 0;
      _os_log_error_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_ERROR, "AV asset key service got unauthorized response for certificate request", &v12, 2u);
    }

    v3 = *(a1 + 40);
    v4 = [MEMORY[0x1E696ABC0] fc_unauthorizedAVAssetCertificateError];
    (*(v3 + 16))(v3, 0, v4);
  }

  else
  {
    v5 = FCAVAssetLog;
    if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v11 = v5;
      v12 = 134217984;
      v13 = [v10 statusCode];
      _os_log_error_impl(&dword_1B63EF000, v11, OS_LOG_TYPE_ERROR, "AV asset key service got error status code %ld for certificate request", &v12, 0xCu);
    }

    v6 = *(a1 + 40);
    v7 = [*(a1 + 32) statusCode];
    v4 = [*(a1 + 32) URL];
    v8 = [FCEndpointConnection errorForStatus:v7 url:v4];
    (*(v6 + 16))(v6, 0, v8);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __64__FCAVAssetKeyService_fetchAppCertificateWithCompletionHandler___block_invoke_32(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = FCAVAssetLog;
  if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_ERROR))
  {
    *v9 = 0;
    _os_log_error_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_ERROR, "AV asset key service failed to parse response for certificate request", v9, 2u);
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

void __64__FCAVAssetKeyService_fetchAppCertificateWithCompletionHandler___block_invoke_34(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = FCAVAssetLog;
  if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_ERROR))
  {
    *v9 = 0;
    _os_log_error_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_ERROR, "AV asset key service failed to find certificate in response for certificate request", v9, 2u);
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

void __64__FCAVAssetKeyService_fetchAppCertificateWithCompletionHandler___block_invoke_36(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = FCAVAssetLog;
  if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_ERROR))
  {
    *v9 = 0;
    _os_log_error_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_ERROR, "AV asset key service failed to decode certificate base64 for certificate request", v9, 2u);
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

- (void)_performHTTPRequest:(void *)a3 keyURI:(void *)a4 completion:
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = dispatch_get_global_queue(17, 0);
    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = __Block_byref_object_copy__15;
    v35 = __Block_byref_object_dispose__15;
    v36 = [v7 mutableCopy];
    v11 = [v32[5] HTTPBody];

    if (v11)
    {
      v12 = FCAVAssetLog;
      if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B63EF000, v12, OS_LOG_TYPE_DEFAULT, "AV asset key service will generate Mescal signature", buf, 2u);
      }

      v13 = [v32[5] HTTPBody];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __61__FCAVAssetKeyService__performHTTPRequest_keyURI_completion___block_invoke_67;
      v15[3] = &unk_1E7C3A088;
      v19 = v9;
      v16 = v10;
      v17 = a1;
      v20 = &v31;
      v18 = v8;
      [FCMescalSignature signatureFromData:v13 completion:v15];

      v14 = v19;
    }

    else
    {
      v22 = MEMORY[0x1E69E9820];
      v23 = 3221225472;
      v24 = __61__FCAVAssetKeyService__performHTTPRequest_keyURI_completion___block_invoke;
      v25 = &unk_1E7C3A038;
      v26 = a1;
      v30 = &v31;
      v27 = v8;
      v28 = v10;
      v29 = v9;
      [(FCAVAssetKeyService *)a1 executeRequest:v27 keyURI:v28 callbackQueue:v29 completion:?];

      v14 = v27;
    }

    _Block_object_dispose(&v31, 8);
  }
}

uint64_t __64__FCAVAssetKeyService_fetchAppCertificateWithCompletionHandler___block_invoke_39(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)fetchContentKeyWithURI:(id)a3 spcData:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self)
  {
    fairPlayBaseURLPromise = self->_fairPlayBaseURLPromise;
  }

  else
  {
    fairPlayBaseURLPromise = 0;
  }

  v12 = fairPlayBaseURLPromise;
  v13 = zalgo();
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __72__FCAVAssetKeyService_fetchContentKeyWithURI_spcData_completionHandler___block_invoke;
  v23[3] = &unk_1E7C3A010;
  v24 = v9;
  v25 = v8;
  v26 = self;
  v14 = v10;
  v27 = v14;
  v15 = v8;
  v16 = v9;
  v17 = [(NFPromise *)v12 thenOn:v13 then:v23];
  v18 = zalgo();
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __72__FCAVAssetKeyService_fetchContentKeyWithURI_spcData_completionHandler___block_invoke_65;
  v21[3] = &unk_1E7C39F48;

  v22 = v14;
  v19 = v14;
  v20 = [v17 errorOn:v18 error:v21];
}

uint64_t __72__FCAVAssetKeyService_fetchContentKeyWithURI_spcData_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DF90];
  v4 = a2;
  v5 = objc_alloc_init(v3);
  v6 = [*(a1 + 32) base64EncodedStringWithOptions:0];
  [v5 setObject:v6 forKey:@"spcBase64"];

  v7 = [*(a1 + 40) absoluteString];
  [v5 setObject:v7 forKey:@"m3u8URI"];

  v8 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v5 options:0 error:0];
  v9 = [v4 URLByAppendingPathComponent:@"contentKey"];

  v10 = [objc_alloc(MEMORY[0x1E695AC18]) initWithURL:v9];
  [v10 setHTTPMethod:@"POST"];
  [v10 setHTTPBody:v8];
  [v10 addValue:@"application/json" forHTTPHeaderField:@"Accept"];
  [v10 addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  v11 = +[FCAppleAccount sharedAccount];
  v12 = [v11 endpointConnectionClientID];
  [v10 addValue:v12 forHTTPHeaderField:@"X-CLIENT-ID"];

  v13 = [MEMORY[0x1E695DF00] date];
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __72__FCAVAssetKeyService_fetchContentKeyWithURI_spcData_completionHandler___block_invoke_2;
  v19[3] = &unk_1E7C39FE8;
  v20 = v14;
  v16 = *(a1 + 56);
  v22 = v13;
  v23 = v16;
  v21 = *(a1 + 48);
  v17 = v13;
  [(FCAVAssetKeyService *)v15 _performHTTPRequest:v10 keyURI:v20 completion:v19];

  return 0;
}

void __72__FCAVAssetKeyService_fetchContentKeyWithURI_spcData_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v56 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __72__FCAVAssetKeyService_fetchContentKeyWithURI_spcData_completionHandler___block_invoke_3;
    v50[3] = &unk_1E7C38FF0;
    v51 = *(a1 + 32);
    v52 = v9;
    v53 = *(a1 + 56);
    __72__FCAVAssetKeyService_fetchContentKeyWithURI_spcData_completionHandler___block_invoke_3(v50);

    v10 = v51;
  }

  else if ([v8 statusCode] == 200)
  {
    v11 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v7 options:0 error:0];
    if (v11)
    {
      v10 = v11;
      objc_opt_class();
      v12 = [v10 objectForKeyedSubscript:@"ckc"];
      if (v12)
      {
        if (objc_opt_isKindOfClass())
        {
          v13 = v12;
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }

      v16 = v13;

      if (v16)
      {
        v17 = v16;
        v18 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v17 options:0];
        v19 = v18;
        if (v18)
        {
          v27 = v18;
          v20 = v18;
          v21 = FCAVAssetLog;
          if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_DEFAULT))
          {
            v22 = *(a1 + 32);
            v23 = v21;
            v24 = [v22 absoluteString];
            *buf = 138543362;
            v55 = v24;
            _os_log_impl(&dword_1B63EF000, v23, OS_LOG_TYPE_DEFAULT, "AV asset key service successfully fetched key %{public}@", buf, 0xCu);
          }

          v28[0] = MEMORY[0x1E69E9820];
          v28[1] = 3221225472;
          v28[2] = __72__FCAVAssetKeyService_fetchContentKeyWithURI_spcData_completionHandler___block_invoke_59;
          v28[3] = &unk_1E7C39FC0;
          v29 = v10;
          v30 = *(a1 + 32);
          v31 = *(a1 + 48);
          v25 = __72__FCAVAssetKeyService_fetchContentKeyWithURI_spcData_completionHandler___block_invoke_59(v28);
          (*(*(a1 + 56) + 16))();

          v19 = v27;
        }

        else
        {
          v32[0] = MEMORY[0x1E69E9820];
          v32[1] = 3221225472;
          v32[2] = __72__FCAVAssetKeyService_fetchContentKeyWithURI_spcData_completionHandler___block_invoke_58;
          v32[3] = &unk_1E7C39F98;
          v33 = *(a1 + 32);
          v35 = *(a1 + 56);
          v34 = v8;
          __72__FCAVAssetKeyService_fetchContentKeyWithURI_spcData_completionHandler___block_invoke_58(v32);

          v20 = v33;
        }
      }

      else
      {
        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = __72__FCAVAssetKeyService_fetchContentKeyWithURI_spcData_completionHandler___block_invoke_57;
        v36[3] = &unk_1E7C39F98;
        v37 = *(a1 + 32);
        v39 = *(a1 + 56);
        v38 = v8;
        __72__FCAVAssetKeyService_fetchContentKeyWithURI_spcData_completionHandler___block_invoke_57(v36);

        v17 = v37;
      }
    }

    else
    {
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __72__FCAVAssetKeyService_fetchContentKeyWithURI_spcData_completionHandler___block_invoke_53;
      v40[3] = &unk_1E7C39F98;
      v41 = *(a1 + 32);
      v43 = *(a1 + 56);
      v42 = v8;
      __72__FCAVAssetKeyService_fetchContentKeyWithURI_spcData_completionHandler___block_invoke_53(v40);

      v10 = 0;
    }
  }

  else
  {
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __72__FCAVAssetKeyService_fetchContentKeyWithURI_spcData_completionHandler___block_invoke_52;
    v44[3] = &unk_1E7C39F70;
    v45 = v8;
    v46 = *(a1 + 32);
    v14 = *(a1 + 56);
    v15 = *(a1 + 40);
    v49 = v14;
    v47 = v15;
    v48 = v7;
    __72__FCAVAssetKeyService_fetchContentKeyWithURI_spcData_completionHandler___block_invoke_52(v44);

    v10 = v45;
  }

  v26 = *MEMORY[0x1E69E9840];
}

uint64_t __72__FCAVAssetKeyService_fetchContentKeyWithURI_spcData_completionHandler___block_invoke_3(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = FCAVAssetLog;
  if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_ERROR))
  {
    v6 = a1[4];
    v7 = v2;
    v8 = [v6 absoluteString];
    v9 = a1[5];
    v10 = 138543618;
    v11 = v8;
    v12 = 2114;
    v13 = v9;
    _os_log_error_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_ERROR, "AV asset key service failed to fetch key %{public}@ with error: %{public}@", &v10, 0x16u);
  }

  v3 = a1[5];
  result = (*(a1[6] + 16))();
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void __72__FCAVAssetKeyService_fetchContentKeyWithURI_spcData_completionHandler___block_invoke_52(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) statusCode];
  if (v2 == 400)
  {
    v6 = FCAVAssetLog;
    if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_ERROR))
    {
      v28 = *(a1 + 40);
      v29 = v6;
      v30 = [v28 absoluteString];
      *v35 = 138543362;
      *&v35[4] = v30;
      _os_log_error_impl(&dword_1B63EF000, v29, OS_LOG_TYPE_ERROR, "AV asset key service got bad request response for key %{public}@", v35, 0xCu);
    }

    v8 = *(a1 + 56);
    v7 = *(a1 + 64);
    v9 = *(a1 + 48);
    v5 = [*(a1 + 32) URL];
    v10 = v8;
    if (v9)
    {
      v11 = [FCEndpointConnection errorForStatus:400 url:v5];
      v12 = v11;
      if (v10)
      {
        v13 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v10 options:0 error:0];
        v14 = v13;
        if (v13)
        {
          v15 = [v13 objectForKeyedSubscript:@"diagnosis"];
          v16 = v15;
          if (v15)
          {
            v17 = [v15 fc_arrayByTransformingWithBlock:&__block_literal_global_91];
            if ([v17 containsObject:@"INVALID_CERTIFICATE_HASH"])
            {
              v18 = [MEMORY[0x1E696ABC0] fc_expiredAVAssetCertificateError];
            }

            else
            {
              v18 = v12;
            }

            v23 = v18;
          }

          else
          {
            *v35 = MEMORY[0x1E69E9820];
            *&v35[8] = 3221225472;
            *&v35[16] = __63__FCAVAssetKeyService__errorForBadRequestWithResponseData_URL___block_invoke_3;
            v36 = &unk_1E7C36F98;
            v37 = v12;
            v23 = v37;
          }
        }

        else
        {
          *v35 = MEMORY[0x1E69E9820];
          *&v35[8] = 3221225472;
          *&v35[16] = __63__FCAVAssetKeyService__errorForBadRequestWithResponseData_URL___block_invoke_2;
          v36 = &unk_1E7C36F98;
          v37 = v12;
          v16 = v37;
          v23 = v16;
        }
      }

      else
      {
        *v35 = MEMORY[0x1E69E9820];
        *&v35[8] = 3221225472;
        *&v35[16] = __63__FCAVAssetKeyService__errorForBadRequestWithResponseData_URL___block_invoke;
        v36 = &unk_1E7C36F98;
        v37 = v11;
        v14 = v37;
        v23 = v14;
      }
    }

    else
    {
      v23 = 0;
    }

    (*(v7 + 16))(v7, 0, 0, v23);
  }

  else if (v2 == 403 || v2 == 401)
  {
    v3 = FCAVAssetLog;
    if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_ERROR))
    {
      v25 = *(a1 + 40);
      v26 = v3;
      v27 = [v25 absoluteString];
      *v35 = 138543362;
      *&v35[4] = v27;
      _os_log_error_impl(&dword_1B63EF000, v26, OS_LOG_TYPE_ERROR, "AV asset key service got unauthorized response for key %{public}@", v35, 0xCu);
    }

    v4 = *(a1 + 64);
    v5 = [MEMORY[0x1E696ABC0] fc_unauthorizedAVAssetKeyErrorWithKeyURI:*(a1 + 40)];
    (*(v4 + 16))(v4, 0, 0, v5);
  }

  else
  {
    v19 = FCAVAssetLog;
    if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_ERROR))
    {
      v31 = *(a1 + 32);
      v32 = v19;
      v33 = [v31 statusCode];
      v34 = [*(a1 + 40) absoluteString];
      *v35 = 134218242;
      *&v35[4] = v33;
      *&v35[12] = 2114;
      *&v35[14] = v34;
      _os_log_error_impl(&dword_1B63EF000, v32, OS_LOG_TYPE_ERROR, "AV asset key service got error status code %ld for key %{public}@", v35, 0x16u);
    }

    v20 = *(a1 + 64);
    v21 = [*(a1 + 32) statusCode];
    v5 = [*(a1 + 32) URL];
    v22 = [FCEndpointConnection errorForStatus:v21 url:v5];
    (*(v20 + 16))(v20, 0, 0, v22);
  }

  v24 = *MEMORY[0x1E69E9840];
}

void __72__FCAVAssetKeyService_fetchContentKeyWithURI_spcData_completionHandler___block_invoke_53(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = FCAVAssetLog;
  if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_ERROR))
  {
    v9 = *(a1 + 32);
    v10 = v2;
    v11 = [v9 absoluteString];
    *buf = 138543362;
    v15 = v11;
    _os_log_error_impl(&dword_1B63EF000, v10, OS_LOG_TYPE_ERROR, "AV asset key service failed to parse response for key %{public}@", buf, 0xCu);
  }

  v3 = MEMORY[0x1E696ABC0];
  v12 = *MEMORY[0x1E696A998];
  v4 = *(a1 + 48);
  v5 = [*(a1 + 40) URL];
  v13 = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v7 = [v3 errorWithDomain:@"FCEndpointConnectionErrorDomain" code:500 userInfo:v6];
  (*(v4 + 16))(v4, 0, 0, v7);

  v8 = *MEMORY[0x1E69E9840];
}

void __72__FCAVAssetKeyService_fetchContentKeyWithURI_spcData_completionHandler___block_invoke_57(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = FCAVAssetLog;
  if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_ERROR))
  {
    v9 = *(a1 + 32);
    v10 = v2;
    v11 = [v9 absoluteString];
    *buf = 138543362;
    v15 = v11;
    _os_log_error_impl(&dword_1B63EF000, v10, OS_LOG_TYPE_ERROR, "AV asset key service failed to find CKC in response for key %{public}@", buf, 0xCu);
  }

  v3 = MEMORY[0x1E696ABC0];
  v12 = *MEMORY[0x1E696A998];
  v4 = *(a1 + 48);
  v5 = [*(a1 + 40) URL];
  v13 = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v7 = [v3 errorWithDomain:@"FCEndpointConnectionErrorDomain" code:500 userInfo:v6];
  (*(v4 + 16))(v4, 0, 0, v7);

  v8 = *MEMORY[0x1E69E9840];
}

void __72__FCAVAssetKeyService_fetchContentKeyWithURI_spcData_completionHandler___block_invoke_58(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = FCAVAssetLog;
  if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_ERROR))
  {
    v9 = *(a1 + 32);
    v10 = v2;
    v11 = [v9 absoluteString];
    *buf = 138543362;
    v15 = v11;
    _os_log_error_impl(&dword_1B63EF000, v10, OS_LOG_TYPE_ERROR, "AV asset key service failed to decode CKC base64 for key %{public}@", buf, 0xCu);
  }

  v3 = MEMORY[0x1E696ABC0];
  v12 = *MEMORY[0x1E696A998];
  v4 = *(a1 + 48);
  v5 = [*(a1 + 40) URL];
  v13 = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v7 = [v3 errorWithDomain:@"FCEndpointConnectionErrorDomain" code:500 userInfo:v6];
  (*(v4 + 16))(v4, 0, 0, v7);

  v8 = *MEMORY[0x1E69E9840];
}

id __72__FCAVAssetKeyService_fetchContentKeyWithURI_spcData_completionHandler___block_invoke_59(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"assetValidityDurationInSeconds"];
  v3 = v2;
  if (v2)
  {
    v4 = *(a1 + 48);
    [v2 doubleValue];
    v5 = [v4 dateByAddingTimeInterval:?];
  }

  else
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __72__FCAVAssetKeyService_fetchContentKeyWithURI_spcData_completionHandler___block_invoke_2_63;
    v7[3] = &unk_1E7C36F98;
    v8 = *(a1 + 40);
    v5 = __72__FCAVAssetKeyService_fetchContentKeyWithURI_spcData_completionHandler___block_invoke_2_63(v7);
  }

  return v5;
}

uint64_t __72__FCAVAssetKeyService_fetchContentKeyWithURI_spcData_completionHandler___block_invoke_2_63(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = FCAVAssetLog;
  if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = v2;
    v7 = [v5 absoluteString];
    v8 = 138543362;
    v9 = v7;
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "AV asset key service failed to find TTL in response for key %{public}@", &v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __72__FCAVAssetKeyService_fetchContentKeyWithURI_spcData_completionHandler___block_invoke_65(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0, a2);
  }

  return result;
}

- (void)executeRequest:(void *)a3 keyURI:(void *)a4 callbackQueue:(void *)a5 completion:
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a1)
  {
    v13 = FCAVAssetLog;
    if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B63EF000, v13, OS_LOG_TYPE_DEFAULT, "AV asset key service will construct AMS request", buf, 2u);
    }

    v14 = [*(a1 + 16) value];
    v15 = [v14 requestByEncodingRequest:v9 parameters:0];

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __70__FCAVAssetKeyService_executeRequest_keyURI_callbackQueue_completion___block_invoke;
    v16[3] = &unk_1E7C3A100;
    v20 = v12;
    v17 = v11;
    v18 = v10;
    v19 = a1;
    [v15 addFinishBlock:v16];
  }
}

void __61__FCAVAssetKeyService__performHTTPRequest_keyURI_completion___block_invoke_67(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __61__FCAVAssetKeyService__performHTTPRequest_keyURI_completion___block_invoke_2;
    v20[3] = &unk_1E7C3A060;
    v23 = *(a1 + 56);
    v21 = *(a1 + 32);
    v22 = v6;
    __61__FCAVAssetKeyService__performHTTPRequest_keyURI_completion___block_invoke_2(v20);

    v7 = v23;
LABEL_3:

    goto LABEL_8;
  }

  if (!v5)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __61__FCAVAssetKeyService__performHTTPRequest_keyURI_completion___block_invoke_2_69;
    v16[3] = &unk_1E7C3A038;
    v19 = *(a1 + 64);
    v14 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = *(a1 + 32);
    v11 = *(a1 + 56);
    *&v12 = v10;
    *(&v12 + 1) = v11;
    *&v13 = v14;
    *(&v13 + 1) = v9;
    v17 = v13;
    v18 = v12;
    __61__FCAVAssetKeyService__performHTTPRequest_keyURI_completion___block_invoke_2_69(v16);

    v7 = *(&v17 + 1);
    goto LABEL_3;
  }

  v8 = FCAVAssetLog;
  if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_DEFAULT, "AV asset key service will attach mescal signature to request", buf, 2u);
  }

  [*(*(*(a1 + 64) + 8) + 40) setValue:v5 forHTTPHeaderField:@"X-Apple-ActionSignature"];
  [(FCAVAssetKeyService *)*(a1 + 40) executeRequest:*(a1 + 48) keyURI:*(a1 + 32) callbackQueue:*(a1 + 56) completion:?];
LABEL_8:
}

void __61__FCAVAssetKeyService__performHTTPRequest_keyURI_completion___block_invoke_2(uint64_t a1)
{
  v2 = FCAVAssetLog;
  if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_ERROR, "AV asset key service failed to generate mescal signature", buf, 2u);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = *(a1 + 32);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __61__FCAVAssetKeyService__performHTTPRequest_keyURI_completion___block_invoke_68;
    v5[3] = &unk_1E7C37778;
    v7 = v3;
    v6 = *(a1 + 40);
    dispatch_async(v4, v5);
  }
}

void __61__FCAVAssetKeyService__performHTTPRequest_keyURI_completion___block_invoke_2_69(uint64_t a1)
{
  v2 = FCAVAssetLog;
  if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEFAULT, "AV asset key service generated nil mescal signature", v3, 2u);
  }

  [(FCAVAssetKeyService *)*(a1 + 32) executeRequest:*(a1 + 40) keyURI:*(a1 + 48) callbackQueue:*(a1 + 56) completion:?];
}

void __70__FCAVAssetKeyService_executeRequest_keyURI_callbackQueue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __70__FCAVAssetKeyService_executeRequest_keyURI_callbackQueue_completion___block_invoke_2;
    v24[3] = &unk_1E7C39F98;
    v25 = v6;
    v27 = *(a1 + 56);
    v26 = *(a1 + 32);
    __70__FCAVAssetKeyService_executeRequest_keyURI_callbackQueue_completion___block_invoke_2(v24);

    v8 = v25;
  }

  else
  {
    v9 = FCAVAssetLog;
    if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_DEFAULT, "AV asset key service did construct AMS request", buf, 2u);
    }

    v10 = [*(a1 + 40) host];
    v11 = [v10 hasPrefix:@"newsP"];

    if (v11)
    {
      v12 = [v5 allHTTPHeaderFields];
      v13 = [v12 objectForKeyedSubscript:@"X-DSID"];

      if (!v13 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        v18 = objc_alloc(MEMORY[0x1E696AEC0]);
        v19 = [*(a1 + 40) absoluteString];
        v20 = [v18 initWithFormat:@"Missing X-DSID header on AV asset key request with URI: %@", v19];
        *buf = 136315906;
        v29 = "[FCAVAssetKeyService executeRequest:keyURI:callbackQueue:completion:]_block_invoke";
        v30 = 2080;
        v31 = "FCAVAssetKeyService.m";
        v32 = 1024;
        v33 = 294;
        v34 = 2114;
        v35 = v20;
        _os_log_fault_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "*** Assertion failure (Identifier: MissingDSID) : %s %s:%d %{public}@", buf, 0x26u);
      }
    }

    v14 = *(a1 + 48);
    if (v14)
    {
      v15 = *(v14 + 8);
    }

    else
    {
      v15 = 0;
    }

    v16 = [v15 value];
    v8 = [v16 dataTaskPromiseWithRequest:v5];

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __70__FCAVAssetKeyService_executeRequest_keyURI_callbackQueue_completion___block_invoke_81;
    v21[3] = &unk_1E7C3A0D8;
    v23 = *(a1 + 56);
    v22 = *(a1 + 32);
    [v8 addFinishBlock:v21];
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __70__FCAVAssetKeyService_executeRequest_keyURI_callbackQueue_completion___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = FCAVAssetLog;
  if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    *buf = 138543362;
    v11 = v6;
    _os_log_error_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_ERROR, "AV asset key service failed to construct AMS request with error: %{public}@", buf, 0xCu);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = *(a1 + 40);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __70__FCAVAssetKeyService_executeRequest_keyURI_callbackQueue_completion___block_invoke_71;
    v7[3] = &unk_1E7C37778;
    v9 = v3;
    v8 = *(a1 + 32);
    dispatch_async(v4, v7);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __70__FCAVAssetKeyService_executeRequest_keyURI_callbackQueue_completion___block_invoke_81(uint64_t a1, void *a2, void *a3)
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
    v12[2] = __70__FCAVAssetKeyService_executeRequest_keyURI_callbackQueue_completion___block_invoke_2_83;
    v12[3] = &unk_1E7C3A0B0;
    v16 = v10;
    v13 = v5;
    v14 = v9;
    v15 = v6;
    dispatch_async(v11, v12);
  }
}

void __70__FCAVAssetKeyService_executeRequest_keyURI_callbackQueue_completion___block_invoke_2_83(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = [*(a1 + 32) data];
  (*(v2 + 16))(v2, v3, *(a1 + 40), *(a1 + 48));
}

id __63__FCAVAssetKeyService__errorForBadRequestWithResponseData_URL___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v3 = [v2 objectForKeyedSubscript:@"code"];
    if (v3)
    {
      if (objc_opt_isKindOfClass())
      {
        v4 = v3;
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end