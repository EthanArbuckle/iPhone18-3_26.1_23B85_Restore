@interface FCAVAssetKeyFetchOperation
- (BOOL)canRetryWithError:(id)error retryAfter:(id *)after;
- (void)operationWillFinishWithError:(id)error;
- (void)performOperation;
- (void)resetForRetry;
@end

@implementation FCAVAssetKeyFetchOperation

- (void)performOperation
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = FCOperationLog;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    shortOperationDescription = [(FCOperation *)self shortOperationDescription];
    if (self)
    {
      keyURI = self->_keyURI;
    }

    else
    {
      keyURI = 0;
    }

    v6 = keyURI;
    absoluteString = [(NSURL *)v6 absoluteString];
    *buf = 138543618;
    v24 = shortOperationDescription;
    v25 = 2114;
    v26 = absoluteString;
    _os_log_impl(&dword_1B63EF000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ will fetch AV content key for %{public}@", buf, 0x16u);
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __46__FCAVAssetKeyFetchOperation_performOperation__block_invoke;
  v22[3] = &unk_1E7C396C0;
  v22[4] = self;
  v8 = [MEMORY[0x1E69B68F8] firstly:v22];
  v9 = zalgo();
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __46__FCAVAssetKeyFetchOperation_performOperation__block_invoke_2;
  v21[3] = &unk_1E7C40270;
  v21[4] = self;
  v10 = [v8 thenOn:v9 then:v21];
  v11 = zalgo();
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __46__FCAVAssetKeyFetchOperation_performOperation__block_invoke_3;
  v20[3] = &unk_1E7C40270;
  v20[4] = self;
  v12 = [v10 thenOn:v11 then:v20];
  v13 = zalgo();
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __46__FCAVAssetKeyFetchOperation_performOperation__block_invoke_4;
  v19[3] = &unk_1E7C40270;
  v19[4] = self;
  v14 = [v12 thenOn:v13 then:v19];
  v15 = zalgo();
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __46__FCAVAssetKeyFetchOperation_performOperation__block_invoke_5;
  v18[3] = &unk_1E7C36E50;
  v18[4] = self;
  v16 = [v14 errorOn:v15 error:v18];

  v17 = *MEMORY[0x1E69E9840];
}

id __46__FCAVAssetKeyFetchOperation_performOperation__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = objc_alloc(MEMORY[0x1E69B68F8]);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __52__FCAVAssetKeyFetchOperation__promiseAppCertificate__block_invoke;
    v5[3] = &unk_1E7C39ED0;
    v5[4] = v1;
    v3 = [v2 initWithResolver:v5];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void *__46__FCAVAssetKeyFetchOperation_performOperation__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = v3[48];
    v5 = v3[49];
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = v4;
  v7 = v5;
  v8 = a2;
  if (v3)
  {
    v9 = objc_alloc(MEMORY[0x1E69B68F8]);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __81__FCAVAssetKeyFetchOperation__promiseSPCDataForKeyRequest_keyURI_appCertificate___block_invoke;
    v11[3] = &unk_1E7C3B768;
    v12 = v7;
    v13 = v6;
    v14 = v8;
    v3 = [v9 initWithResolver:v11];
  }

  return v3;
}

id __46__FCAVAssetKeyFetchOperation_performOperation__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 384);
    v5 = *(v3 + 392);
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = v4;
  v7 = v5;
  v8 = a2;
  if (v3)
  {
    v9 = objc_alloc(MEMORY[0x1E69B68F8]);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __77__FCAVAssetKeyFetchOperation__promiseContentKeyForKeyRequest_keyURI_spcData___block_invoke;
    v12[3] = &unk_1E7C45E30;
    v12[4] = v3;
    v13 = v7;
    v14 = v8;
    v15 = v6;
    v10 = [v9 initWithResolver:v12];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __46__FCAVAssetKeyFetchOperation_performOperation__block_invoke_4(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 368), a2);
  v4 = a2;
  [*(a1 + 32) finishedPerformingOperationWithError:0];

  return 0;
}

- (void)operationWillFinishWithError:(id)error
{
  errorCopy = error;
  if (self)
  {
    fetchCompletionHandler = self->_fetchCompletionHandler;
    if (fetchCompletionHandler)
    {
      v6 = errorCopy;
      fetchCompletionHandler[2](fetchCompletionHandler, self->_resultCKCData);
      errorCopy = v6;
    }
  }
}

- (BOOL)canRetryWithError:(id)error retryAfter:(id *)after
{
  errorCopy = error;
  domain = [errorCopy domain];
  if (![domain isEqualToString:@"FCErrorDomain"])
  {

    goto LABEL_5;
  }

  code = [errorCopy code];

  if (code != 38)
  {
LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  *after = objc_opt_new();
  v8 = 1;
LABEL_6:

  return v8;
}

- (void)resetForRetry
{
  if (self)
  {
    self = self->_cache;
  }

  [(FCAVAssetKeyFetchOperation *)self clearKeyServerCertificate];
}

void __52__FCAVAssetKeyFetchOperation__promiseAppCertificate__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    v7 = v7[51];
  }

  v8 = v7;
  v9 = [v8 keyServerCertificate];

  if (v9)
  {
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __52__FCAVAssetKeyFetchOperation__promiseAppCertificate__block_invoke_2;
    v23 = &unk_1E7C37778;
    v10 = &v25;
    v25 = v5;
    v24 = v9;
    v11 = v5;
    v11[2](v11, v24);
    v12 = v24;
  }

  else
  {
    v13 = *(a1 + 32);
    if (v13)
    {
      v14 = *(v13 + 400);
    }

    else
    {
      v14 = 0;
    }

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __52__FCAVAssetKeyFetchOperation__promiseAppCertificate__block_invoke_3;
    v17[3] = &unk_1E7C46898;
    v10 = &v18;
    v15 = v6;
    v17[4] = *(a1 + 32);
    v18 = v15;
    v19 = v5;
    v16 = v5;
    [v14 fetchAppCertificateWithCompletionHandler:v17];
    v12 = v19;
  }
}

void __52__FCAVAssetKeyFetchOperation__promiseAppCertificate__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v10 = *(a1 + 40);
    v9 = v6;
    v10[2](v10, v9);
  }

  else
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      v8 = *(v7 + 408);
    }

    else
    {
      v8 = 0;
    }

    [v8 saveKeyServerCertificate:v5];
    (*(*(a1 + 48) + 16))();
  }
}

void __81__FCAVAssetKeyFetchOperation__promiseSPCDataForKeyRequest_keyURI_appCertificate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) host];
  v8 = [v7 dataUsingEncoding:4];

  if (v8)
  {
    v10 = *(a1 + 40);
    v9 = *(a1 + 48);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __81__FCAVAssetKeyFetchOperation__promiseSPCDataForKeyRequest_keyURI_appCertificate___block_invoke_3;
    v14[3] = &unk_1E7C462A0;
    v11 = &v15;
    v15 = v6;
    v16 = v5;
    v12 = v6;
    [v10 makeStreamingContentKeyRequestDataForApp:v9 contentIdentifier:v8 options:0 completionHandler:v14];
  }

  else
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __81__FCAVAssetKeyFetchOperation__promiseSPCDataForKeyRequest_keyURI_appCertificate___block_invoke_2;
    v17[3] = &unk_1E7C379C8;
    v11 = &v18;
    v18 = v6;
    v13 = v6;
    __81__FCAVAssetKeyFetchOperation__promiseSPCDataForKeyRequest_keyURI_appCertificate___block_invoke_2(v17);
  }
}

void __81__FCAVAssetKeyFetchOperation__promiseSPCDataForKeyRequest_keyURI_appCertificate___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] fc_invalidAVAssetKeyURIError];
  (*(v1 + 16))(v1, v2);
}

void __81__FCAVAssetKeyFetchOperation__promiseSPCDataForKeyRequest_keyURI_appCertificate___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v6 = *(a1 + 32);
    v5 = v4;
    v6[2](v6, v5);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __77__FCAVAssetKeyFetchOperation__promiseContentKeyForKeyRequest_keyURI_spcData___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = *(v8 + 400);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __77__FCAVAssetKeyFetchOperation__promiseContentKeyForKeyRequest_keyURI_spcData___block_invoke_2;
  v17[3] = &unk_1E7C468C0;
  v21 = v6;
  v12 = *(a1 + 56);
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v18 = v12;
  v19 = v13;
  v20 = v14;
  v22 = v5;
  v15 = v5;
  v16 = v7;
  [v9 fetchContentKeyWithURI:v10 spcData:v11 completionHandler:v17];
}

void __77__FCAVAssetKeyFetchOperation__promiseContentKeyForKeyRequest_keyURI_spcData___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v22[1] = MEMORY[0x1E69E9820];
    v22[2] = 3221225472;
    v22[3] = __77__FCAVAssetKeyFetchOperation__promiseContentKeyForKeyRequest_keyURI_spcData___block_invoke_3;
    v22[4] = &unk_1E7C37778;
    v24 = *(a1 + 56);
    v23 = v8;
    v24[2](v24, v23);

    v9 = v24;
  }

  else
  {
    v10 = *(a1 + 32);
    v22[0] = 0;
    v11 = [v10 persistableContentKeyFromKeyVendorResponse:a2 options:0 error:v22];
    v9 = v22[0];
    if (v11)
    {
      v12 = *(a1 + 40);
      if (v12)
      {
        v12 = v12[51];
      }

      v13 = MEMORY[0x1E695DF00];
      v14 = v12;
      v15 = [v13 date];
      [v14 saveAssetKeyData:v11 creationDate:v15 expirationDate:v7 forURI:*(a1 + 48)];

      v16 = *(*(a1 + 64) + 16);
    }

    else
    {
      v17 = FCAVAssetLog;
      if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_ERROR))
      {
        v19 = *(a1 + 48);
        v20 = v17;
        v21 = [v19 absoluteString];
        *buf = 138543618;
        v26 = v21;
        v27 = 2114;
        v28 = v9;
        _os_log_error_impl(&dword_1B63EF000, v20, OS_LOG_TYPE_ERROR, "failed to generate persistable AV content key for %{public}@ with error: %{public}@", buf, 0x16u);
      }

      v16 = *(*(a1 + 56) + 16);
    }

    v16();
  }

  v18 = *MEMORY[0x1E69E9840];
}

@end