@interface EMRemoteContentURLCache
- (BOOL)_isCanceledResponse:(uint64_t)a1;
- (void)_getCachedResponseForDataTask:(char)a3 ignoreExistingCancelation:(void *)a4 completionHandler:;
- (void)_storeCancelationForDataTask:(void *)a1;
- (void)storeCachedResponse:(id)a3 forDataTask:(id)a4;
- (void)storeCancelationIfNeededForDataTask:(id)a3 completionHandler:(id)a4;
- (void)storeResponseIfNeeded:(id)a3 withData:(id)a4 forDataTask:(id)a5 completionHandler:(id)a6;
@end

@implementation EMRemoteContentURLCache

- (void)storeCachedResponse:(id)a3 forDataTask:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 response];
  v9 = [(EMRemoteContentURLCache *)self _isCanceledResponse:v8];

  if (!v9)
  {
    v10.receiver = self;
    v10.super_class = EMRemoteContentURLCache;
    [(NSURLCache *)&v10 storeCachedResponse:v6 forDataTask:v7];
  }
}

- (BOOL)_isCanceledResponse:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (a1 && v3)
  {
    if (objc_opt_respondsToSelector() & 1) != 0 && [v4 statusCode] == 204 && (objc_opt_respondsToSelector())
    {
      v6 = [v4 valueForHTTPHeaderField:@"x-apple-canceled"];
      v5 = v6 != 0;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)storeResponseIfNeeded:(id)a3 withData:(id)a4 forDataTask:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([(EMRemoteContentURLCache *)self _isCanceledResponse:v10])
  {
    v13[2](v13, 0);
  }

  else
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __88__EMRemoteContentURLCache_storeResponseIfNeeded_withData_forDataTask_completionHandler___block_invoke;
    v14[3] = &unk_1E826F5C8;
    v15 = v10;
    v16 = v11;
    v17 = v12;
    v18 = self;
    v19 = v13;
    [(EMRemoteContentURLCache *)self _getCachedResponseForDataTask:v17 ignoreExistingCancelation:1 completionHandler:v14];
  }
}

void __88__EMRemoteContentURLCache_storeResponseIfNeeded_withData_forDataTask_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E695ABF0]) initWithResponse:*(a1 + 32) data:*(a1 + 40) userInfo:0 storagePolicy:0];
    v5 = *(a1 + 48);
    v7.receiver = *(a1 + 56);
    v7.super_class = EMRemoteContentURLCache;
    objc_msgSendSuper2(&v7, sel_storeCachedResponse_forDataTask_, v4, v5);
  }

  v6 = *(a1 + 64);
  if (v6)
  {
    (*(v6 + 16))(v6, v3 == 0);
  }
}

- (void)_getCachedResponseForDataTask:(char)a3 ignoreExistingCancelation:(void *)a4 completionHandler:
{
  v7 = a2;
  v8 = a4;
  if (a1)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __101__EMRemoteContentURLCache__getCachedResponseForDataTask_ignoreExistingCancelation_completionHandler___block_invoke;
    v10[3] = &unk_1E826F618;
    v10[4] = a1;
    v13 = a3;
    v11 = v7;
    v12 = v8;
    v9.receiver = a1;
    v9.super_class = EMRemoteContentURLCache;
    objc_msgSendSuper2(&v9, sel_getCachedResponseForDataTask_completionHandler_, v11, v10);
  }
}

- (void)storeCancelationIfNeededForDataTask:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __81__EMRemoteContentURLCache_storeCancelationIfNeededForDataTask_completionHandler___block_invoke;
  v10[3] = &unk_1E826F5F0;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(EMRemoteContentURLCache *)self _getCachedResponseForDataTask:v9 ignoreExistingCancelation:1 completionHandler:v10];
}

void __81__EMRemoteContentURLCache_storeCancelationIfNeededForDataTask_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (!v4)
  {
    [(EMRemoteContentURLCache *)*(a1 + 32) _storeCancelationForDataTask:?];
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))(v3, v4 == 0);
  }
}

- (void)_storeCancelationForDataTask:(void *)a1
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    if (_storeCancelationForDataTask__onceToken != -1)
    {
      [EMRemoteContentURLCache _storeCancelationForDataTask:];
    }

    v4 = objc_alloc(MEMORY[0x1E695AC08]);
    v5 = [v3 originalRequest];
    v6 = [v5 URL];
    v7 = [v4 initWithURL:v6 statusCode:204 HTTPVersion:@"HTTP/1.1" headerFields:_storeCancelationForDataTask__sHeaders];

    v8 = objc_alloc(MEMORY[0x1E695ABF0]);
    v9 = _storeCancelationForDataTask__sEmptyData;
    v15 = @"LastAccessed";
    v10 = [MEMORY[0x1E695DF00] date];
    v16[0] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v12 = [v8 initWithResponse:v7 data:v9 userInfo:v11 storagePolicy:0];

    v14.receiver = a1;
    v14.super_class = EMRemoteContentURLCache;
    objc_msgSendSuper2(&v14, sel_storeCachedResponse_forDataTask_, v12, v3);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __101__EMRemoteContentURLCache__getCachedResponseForDataTask_ignoreExistingCancelation_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 response];
  if ([(EMRemoteContentURLCache *)*(a1 + 32) _isCanceledResponse:v3])
  {
    v4 = [v6 userInfo];
    v5 = [v4 objectForKeyedSubscript:@"LastAccessed"];

    if ((*(a1 + 56) & 1) != 0 || ([v5 ef_isMoreThanTimeIntervalAgo:300.0] & 1) == 0)
    {
      [*(a1 + 32) removeCachedResponseForDataTask:*(a1 + 40)];

      v6 = 0;
    }

    else
    {
      [(EMRemoteContentURLCache *)*(a1 + 32) _storeCancelationForDataTask:?];
    }
  }

  (*(*(a1 + 48) + 16))();
}

void __56__EMRemoteContentURLCache__storeCancelationForDataTask___block_invoke()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(MEMORY[0x1E695DEF0]);
  v1 = _storeCancelationForDataTask__sEmptyData;
  _storeCancelationForDataTask__sEmptyData = v0;

  v5 = @"x-apple-canceled";
  v6[0] = @"1";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = _storeCancelationForDataTask__sHeaders;
  _storeCancelationForDataTask__sHeaders = v2;

  v4 = *MEMORY[0x1E69E9840];
}

@end