@interface PKObjectDownloader
+ (id)sharedImageAssetDownloader;
- (PKObjectDownloader)init;
- (PKObjectDownloader)initWithSession:(id)a3;
- (id)_logStringFromCachedResponse:(id)a3 data:(id)a4;
- (id)_logStringFromRequest:(id)a3;
- (id)_logStringFromResponse:(id)a3 data:(id)a4;
- (id)cachedDataForURL:(id)a3;
- (void)_handleResponseForURL:(id)a3 data:(id)a4 response:(id)a5 error:(id)a6;
- (void)_scheduleDownload:(id)a3 forURL:(id)a4;
- (void)_schedulePendingDownloads;
- (void)downloadFromUrl:(id)a3 completionHandler:(id)a4;
- (void)downloadWithRequest:(id)a3 completionHandler:(id)a4;
- (void)invalidate;
@end

@implementation PKObjectDownloader

+ (id)sharedImageAssetDownloader
{
  if (qword_1ED6D1AB8 != -1)
  {
    dispatch_once(&qword_1ED6D1AB8, &__block_literal_global_101);
  }

  v3 = _MergedGlobals_224;

  return v3;
}

void __48__PKObjectDownloader_sharedImageAssetDownloader__block_invoke()
{
  v3 = [MEMORY[0x1E695AC80] defaultSessionConfiguration];
  [v3 setTimeoutIntervalForResource:30.0];
  [v3 setRequestCachePolicy:0];
  v0 = [MEMORY[0x1E695AC78] sessionWithConfiguration:v3];
  v1 = [[PKObjectDownloader alloc] initWithSession:v0];
  v2 = _MergedGlobals_224;
  _MergedGlobals_224 = v1;
}

- (PKObjectDownloader)init
{
  v3 = [MEMORY[0x1E695AC78] sharedSession];
  v4 = [(PKObjectDownloader *)self initWithSession:v3];

  return v4;
}

- (PKObjectDownloader)initWithSession:(id)a3
{
  v5 = a3;
  v18.receiver = self;
  v18.super_class = PKObjectDownloader;
  v6 = [(PKObjectDownloader *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_session, a3);
    v8 = dispatch_queue_create("com.apple.passKitCore.PKObjectDownloader", 0);
    queue = v7->_queue;
    v7->_queue = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    downloads = v7->_downloads;
    v7->_downloads = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    pendingURLs = v7->_pendingURLs;
    v7->_pendingURLs = v12;

    v14 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    downloadingURLs = v7->_downloadingURLs;
    v7->_downloadingURLs = v14;

    v16 = [v5 configuration];
    v7->_concurrentRequests = [v16 HTTPMaximumConnectionsPerHost];
  }

  return v7;
}

- (void)_handleResponseForURL:(id)a3 data:(id)a4 response:(id)a5 error:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__PKObjectDownloader__handleResponseForURL_data_response_error___block_invoke;
  block[3] = &unk_1E79C7D80;
  block[4] = self;
  v20 = v10;
  v21 = v12;
  v22 = v11;
  v23 = v13;
  v15 = v13;
  v16 = v11;
  v17 = v12;
  v18 = v10;
  dispatch_async(queue, block);
}

void __64__PKObjectDownloader__handleResponseForURL_data_response_error___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 8) objectForKey:*(a1 + 40)];
  v3 = PKLogFacilityTypeGetObject(2uLL);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = [*(a1 + 32) _logStringFromResponse:*(a1 + 48) data:*(a1 + 56)];
      v6 = *(a1 + 64);
      *buf = 138412546;
      v19 = v5;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "PKObjectDownloader: response: %@ error: %@", buf, 0x16u);
    }

    v3 = [v2 completionHandlers];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v3);
          }

          (*(*(*(&v13 + 1) + 8 * v10++) + 16))();
        }

        while (v8 != v10);
        v8 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    [*(*(a1 + 32) + 8) removeObjectForKey:*(a1 + 40)];
    [*(*(a1 + 32) + 24) removeObject:*(a1 + 40)];
    [*(a1 + 32) _schedulePendingDownloads];
  }

  else if (v4)
  {
    v11 = [*(a1 + 32) _logStringFromResponse:*(a1 + 48) data:*(a1 + 56)];
    v12 = *(a1 + 64);
    *buf = 138412546;
    v19 = v11;
    v20 = 2112;
    v21 = v12;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "PKObjectDownloader: Found no matching download for response: %@ error: %@", buf, 0x16u);
  }
}

- (void)_schedulePendingDownloads
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = self->_pendingURLs;
  v5 = [(NSMutableOrderedSet *)v4 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v23;
    *&v6 = 138412290;
    v19 = v6;
    v20 = *v23;
    do
    {
      v9 = 0;
      v21 = v7;
      do
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v22 + 1) + 8 * v9);
        v11 = [(NSMutableSet *)self->_downloadingURLs count];
        if (v11 < [(PKObjectDownloader *)self concurrentRequests])
        {
          v12 = [(NSMutableDictionary *)self->_downloads objectForKey:v10];
          v13 = PKLogFacilityTypeGetObject(2uLL);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = [v12 task];
            [v14 currentRequest];
            v15 = v4;
            v17 = v16 = v3;
            v18 = [(PKObjectDownloader *)self _logStringFromRequest:v17];
            *buf = v19;
            v27 = v18;
            _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "PKObjectDownloader: Performing queued request:%@", buf, 0xCu);

            v3 = v16;
            v4 = v15;
            v8 = v20;

            v7 = v21;
          }

          [(PKObjectDownloader *)self _scheduleDownload:v12 forURL:v10];
          [v3 addObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableOrderedSet *)v4 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v7);
  }

  [(NSMutableOrderedSet *)self->_pendingURLs removeObjectsInArray:v3];
}

- (void)_scheduleDownload:(id)a3 forURL:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (([(NSMutableSet *)self->_downloadingURLs containsObject:v7]& 1) != 0)
  {
    v8 = PKLogFacilityTypeGetObject(2uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v6 task];
      v10 = [v9 currentRequest];
      v11 = [(PKObjectDownloader *)self _logStringFromRequest:v10];
      v12 = 138412290;
      v13 = v11;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "PKObjectDownloader: Error - attempted to schedule already downloading request:%@", &v12, 0xCu);
    }
  }

  else
  {
    [(NSMutableSet *)self->_downloadingURLs addObject:v7];
    v8 = [v6 task];
    [v8 resume];
  }
}

- (id)cachedDataForURL:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  session = self->_session;
  v5 = a3;
  v6 = [(NSURLSession *)session configuration];
  v7 = [v6 URLCache];
  v8 = MEMORY[0x1E695AC68];
  v9 = [v6 requestCachePolicy];
  [v6 timeoutIntervalForRequest];
  v10 = [v8 requestWithURL:v5 cachePolicy:v9 timeoutInterval:?];

  v11 = [v7 cachedResponseForRequest:v10];
  v12 = [v11 data];
  if (v12)
  {
    v13 = v12;
    v14 = [v11 response];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v19 = [v15 statusCode];
    v20 = PKLogFacilityTypeGetObject(2uLL);
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    if (v15 && (v19 - 200) <= 0x63)
    {
      if (v21)
      {
        v22 = [(PKObjectDownloader *)self _logStringFromCachedResponse:v11 data:v13];
        v25 = 138412290;
        v26 = v22;
        _os_log_impl(&dword_1AD337000, v20, OS_LOG_TYPE_DEFAULT, "PKObjectDownloader: Returning cached data for response: %@", &v25, 0xCu);
      }
    }

    else
    {
      if (v21)
      {
        v23 = [(PKObjectDownloader *)self _logStringFromCachedResponse:v11 data:v13];
        v25 = 138412290;
        v26 = v23;
        _os_log_impl(&dword_1AD337000, v20, OS_LOG_TYPE_DEFAULT, "PKObjectDownloader: Not returning cached data for response since the status was not 200: %@", &v25, 0xCu);
      }

      v20 = v13;
      v13 = 0;
    }

    v16 = v13;
    v18 = v16;
  }

  else
  {
    v16 = PKLogFacilityTypeGetObject(2uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [(PKObjectDownloader *)self _logStringFromRequest:v10];
      v25 = 138412290;
      v26 = v17;
      _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "PKObjectDownloader: No cached data found for request: %@", &v25, 0xCu);
    }

    v18 = 0;
  }

  return v18;
}

- (void)downloadFromUrl:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v13 = [(PKObjectDownloader *)self session];
  v8 = MEMORY[0x1E695AC68];
  v9 = [v13 configuration];
  v10 = [v9 requestCachePolicy];
  v11 = [v13 configuration];
  [v11 timeoutIntervalForRequest];
  v12 = [v8 requestWithURL:v7 cachePolicy:v10 timeoutInterval:?];

  [(PKObjectDownloader *)self downloadWithRequest:v12 completionHandler:v6];
}

- (void)downloadWithRequest:(id)a3 completionHandler:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 URL];
  v9 = v8;
  if (v8)
  {
    queue = self->_queue;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __60__PKObjectDownloader_downloadWithRequest_completionHandler___block_invoke;
    v14[3] = &unk_1E79C4EF0;
    v14[4] = self;
    v15 = v8;
    v16 = v6;
    v17 = v7;
    dispatch_async(queue, v14);
  }

  else
  {
    v11 = PKLogFacilityTypeGetObject(2uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v6;
      _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "PKObjectDownloader: No URL for request: %@", buf, 0xCu);
    }

    if (v7)
    {
      v12 = objc_alloc(MEMORY[0x1E696ABC0]);
      v13 = [v12 initWithDomain:*MEMORY[0x1E696A978] code:-1002 userInfo:0];
      (*(v7 + 2))(v7, 0, 0, v13);
    }
  }
}

void __60__PKObjectDownloader_downloadWithRequest_completionHandler___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 8) objectForKey:*(a1 + 40)];
  if (v2)
  {
    v3 = PKLogFacilityTypeGetObject(2uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 32) _logStringFromRequest:*(a1 + 48)];
      *buf = 138412290;
      v26 = v4;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "PKObjectDownloader: Queueing completion onto existing download for: %@", buf, 0xCu);
    }

    v5 = [v2 completionHandlers];
    v6 = [*(a1 + 56) copy];
    [v5 addObject:v6];

    if ([*(*(a1 + 32) + 16) containsObject:*(a1 + 40)])
    {
      [*(*(a1 + 32) + 16) removeObject:*(a1 + 40)];
      [*(*(a1 + 32) + 16) insertObject:*(a1 + 40) atIndex:0];
    }
  }

  else
  {
    v7 = [*(a1 + 32) session];
    v8 = objc_alloc_init(PKObjectDownload);
    v9 = [(PKObjectDownload *)v8 completionHandlers];
    v10 = [*(a1 + 56) copy];
    [v9 addObject:v10];

    [*(*(a1 + 32) + 8) setObject:v8 forKey:*(a1 + 40)];
    v11 = *(a1 + 48);
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __60__PKObjectDownloader_downloadWithRequest_completionHandler___block_invoke_28;
    v22 = &unk_1E79D4570;
    v23 = *(a1 + 32);
    v24 = v11;
    v12 = [v7 dataTaskWithRequest:v24 completionHandler:&v19];
    [(PKObjectDownload *)v8 setTask:v12, v19, v20, v21, v22, v23];
    v13 = [*(*(a1 + 32) + 24) count];
    v14 = [*(a1 + 32) concurrentRequests];
    v15 = PKLogFacilityTypeGetObject(2uLL);
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (v13 >= v14)
    {
      if (v16)
      {
        v18 = [*(a1 + 32) _logStringFromRequest:*(a1 + 48)];
        *buf = 138412290;
        v26 = v18;
        _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "Queueing request:%@", buf, 0xCu);
      }

      [*(*(a1 + 32) + 16) insertObject:*(a1 + 40) atIndex:0];
    }

    else
    {
      if (v16)
      {
        v17 = [*(a1 + 32) _logStringFromRequest:*(a1 + 48)];
        *buf = 138412290;
        v26 = v17;
        _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "Performing request:%@", buf, 0xCu);
      }

      [*(a1 + 32) _scheduleDownload:v8 forURL:*(a1 + 40)];
    }
  }
}

void __60__PKObjectDownloader_downloadWithRequest_completionHandler___block_invoke_28(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v11 = [v7 URL];
  [v6 _handleResponseForURL:v11 data:v10 response:v9 error:v8];
}

- (id)_logStringFromRequest:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a3;
  v5 = [v4 HTTPMethod];
  v6 = [v4 URL];
  v7 = [v4 allHTTPHeaderFields];
  v8 = [v7 debugDescription];
  v9 = [v4 HTTPBody];

  v10 = [v3 stringWithFormat:@"\n%@ %@\n%@\n%@\n", v5, v6, v8, v9];

  return v10;
}

- (id)_logStringFromCachedResponse:(id)a3 data:(id)a4
{
  v6 = a4;
  v7 = [a3 response];
  v8 = [(PKObjectDownloader *)self _logStringFromResponse:v7 data:v6];

  return v8;
}

- (id)_logStringFromResponse:(id)a3 data:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v8 = MEMORY[0x1E696AEC0];
  if (isKindOfClass)
  {
    v9 = v5;
    v10 = [v9 URL];
    v11 = [v9 statusCode];
    v12 = [v9 allHeaderFields];

    v13 = [v12 debugDescription];
    v14 = [v6 length];

    v15 = [v8 stringWithFormat:@"\n%@ %ld\n%@\nData length: %lu\n", v10, v11, v13, v14];
  }

  else
  {
    v10 = [v5 URL];
    v16 = [v6 length];

    v15 = [v8 stringWithFormat:@"\n%@\nData length: %lu\n", v10, v16];
  }

  return v15;
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__PKObjectDownloader_invalidate__block_invoke;
  block[3] = &unk_1E79C4E28;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __32__PKObjectDownloader_invalidate__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) removeAllObjects];
  [*(*(a1 + 32) + 24) removeAllObjects];
  [*(*(a1 + 32) + 16) removeAllObjects];
  v2 = *(*(a1 + 32) + 40);

  return [v2 invalidateAndCancel];
}

@end