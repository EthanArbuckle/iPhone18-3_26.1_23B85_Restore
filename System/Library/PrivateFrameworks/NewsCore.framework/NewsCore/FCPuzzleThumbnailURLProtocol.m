@interface FCPuzzleThumbnailURLProtocol
+ (BOOL)canHandleURL:(id)a3;
+ (BOOL)canHandleURLWithComponents:(id)a3;
+ (BOOL)canInitWithRequest:(id)a3;
+ (BOOL)requestIsCacheEquivalent:(id)a3 toRequest:(id)a4;
+ (id)URLForResourceMapID:(id)a3 publishDate:(id)a4 difficulty:(id)a5;
+ (id)resourceMapSerialQueue;
+ (id)sharedURLRequestScheduler;
+ (void)setupWithArticleDatabase:(id)a3 cacheDirectory:(id)a4;
+ (void)unregister;
- (id)_imageURLFromResourceMapFileURL:(id)a3 dayOfWeek:(int64_t)a4 difficulty:(id)a5 error:(id *)a6;
- (void)_fetchResourceMapWithID:(id)a3 completion:(id)a4;
- (void)startLoading;
- (void)stopLoading;
@end

@implementation FCPuzzleThumbnailURLProtocol

+ (id)sharedURLRequestScheduler
{
  if (qword_1EDB269E8 != -1)
  {
    dispatch_once(&qword_1EDB269E8, &__block_literal_global_19);
  }

  v3 = _MergedGlobals_13;

  return v3;
}

void __57__FCPuzzleThumbnailURLProtocol_sharedURLRequestScheduler__block_invoke()
{
  v0 = [FCURLRequestScheduler alloc];
  v3 = +[FCAssetDownloadOperation sharedURLSession];
  v1 = [(FCURLRequestScheduler *)v0 initWithURLSession:v3];
  v2 = _MergedGlobals_13;
  _MergedGlobals_13 = v1;
}

+ (id)resourceMapSerialQueue
{
  if (qword_1EDB269F8 != -1)
  {
    dispatch_once(&qword_1EDB269F8, &__block_literal_global_7);
  }

  v3 = qword_1EDB269F0;

  return v3;
}

uint64_t __54__FCPuzzleThumbnailURLProtocol_resourceMapSerialQueue__block_invoke()
{
  v0 = [[FCAsyncSerialQueue alloc] initWithQualityOfService:25];
  v1 = qword_1EDB269F0;
  qword_1EDB269F0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (void)setupWithArticleDatabase:(id)a3 cacheDirectory:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"record field URL protocol requires a non-nil database"];
    v16 = 136315906;
    v17 = "+[FCPuzzleThumbnailURLProtocol setupWithArticleDatabase:cacheDirectory:]";
    v18 = 2080;
    v19 = "FCPuzzleThumbnailURLProtocol.m";
    v20 = 1024;
    v21 = 73;
    v22 = 2114;
    v23 = v14;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v16, 0x26u);
  }

  WeakRetained = objc_loadWeakRetained(&qword_1EDB26A00);
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v10 = NSClassFromString(&cfstr_Xctest.isa);

    if (!v10 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"record field URL protocol has already been setup"];
      v16 = 136315906;
      v17 = "+[FCPuzzleThumbnailURLProtocol setupWithArticleDatabase:cacheDirectory:]";
      v18 = 2080;
      v19 = "FCPuzzleThumbnailURLProtocol.m";
      v20 = 1024;
      v21 = 74;
      v22 = 2114;
      v23 = v15;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v16, 0x26u);
    }
  }

  objc_storeWeak(&qword_1EDB26A00, v6);
  v11 = [MEMORY[0x1E695DFF8] fileURLWithPath:v7];
  v12 = qword_1EDB26A08;
  qword_1EDB26A08 = v11;

  [MEMORY[0x1E695AC60] registerClass:a1];
  v13 = *MEMORY[0x1E69E9840];
}

+ (void)unregister
{
  WeakRetained = objc_loadWeakRetained(&qword_1EDB26A00);

  if (WeakRetained)
  {
    objc_storeWeak(&qword_1EDB26A00, 0);
    v4 = qword_1EDB26A08;
    qword_1EDB26A08 = 0;

    v5 = MEMORY[0x1E695AC60];

    [v5 unregisterClass:a1];
  }
}

+ (id)URLForResourceMapID:(id)a3 publishDate:(id)a4 difficulty:(id)a5
{
  v39 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(&qword_1EDB26A00);
  if (WeakRetained)
  {
  }

  else if (!NSClassFromString(&cfstr_Xctest.isa) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"can't construct a URL without a database"];
    *buf = 136315906;
    v32 = "+[FCPuzzleThumbnailURLProtocol URLForResourceMapID:publishDate:difficulty:]";
    v33 = 2080;
    v34 = "FCPuzzleThumbnailURLProtocol.m";
    v35 = 1024;
    v36 = 97;
    v37 = 2114;
    v38 = v30;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v11 = objc_loadWeakRetained(&qword_1EDB26A00);

  if (v11)
  {
    v12 = objc_alloc_init(MEMORY[0x1E696AF20]);
    v13 = objc_alloc(MEMORY[0x1E695DEE8]);
    v14 = [v13 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
    v15 = [MEMORY[0x1E695DFE8] timeZoneWithAbbreviation:@"EST"];
    [v14 setTimeZone:v15];

    v16 = [v14 component:512 fromDate:v8];
    [v12 setScheme:@"https"];
    [v12 setHost:@"puzzle-thumbnail"];
    v17 = [@"/" stringByAppendingString:v7];
    [v12 setPath:v17];

    v18 = [v12 path];
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"v%lu", 1];
    v20 = [v18 stringByAppendingPathComponent:v19];
    [v12 setPath:v20];

    v21 = [v12 path];
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", v16];
    v23 = [v21 stringByAppendingPathComponent:v22];
    [v12 setPath:v23];

    if (v9)
    {
      v24 = [v12 path];
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", objc_msgSend(v9, "longValue")];
      v26 = [v24 stringByAppendingPathComponent:v25];
      [v12 setPath:v26];
    }

    v27 = [v12 URL];
  }

  else
  {
    v27 = 0;
  }

  v28 = *MEMORY[0x1E69E9840];

  return v27;
}

+ (BOOL)canHandleURL:(id)a3
{
  v3 = [a3 host];
  v4 = [v3 isEqualToString:@"puzzle-thumbnail"];

  return v4;
}

+ (BOOL)canHandleURLWithComponents:(id)a3
{
  v3 = [a3 host];
  v4 = [v3 isEqualToString:@"puzzle-thumbnail"];

  return v4;
}

+ (BOOL)canInitWithRequest:(id)a3
{
  v4 = [a3 URL];
  LOBYTE(a1) = [a1 canHandleURL:v4];

  return a1;
}

+ (BOOL)requestIsCacheEquivalent:(id)a3 toRequest:(id)a4
{
  v5 = a4;
  v6 = [a3 URL];
  v7 = [v5 URL];

  LOBYTE(v5) = [v6 isEqual:v7];
  return v5;
}

- (void)startLoading
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [(FCPuzzleThumbnailURLProtocol *)self fetchOperation];

  if (v3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"shouldn't have a fetch operation yet"];
    *location = 136315906;
    *&location[4] = "[FCPuzzleThumbnailURLProtocol startLoading]";
    v21 = 2080;
    v22 = "FCPuzzleThumbnailURLProtocol.m";
    v23 = 1024;
    v24 = 154;
    v25 = 2114;
    v26 = v15;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", location, 0x26u);
  }

  v4 = [(NSURLProtocol *)self request];
  v5 = [v4 URL];

  v6 = [v5 pathComponents];
  if ([v6 count] <= 3)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __44__FCPuzzleThumbnailURLProtocol_startLoading__block_invoke;
    v19[3] = &unk_1E7C36EA0;
    v19[4] = self;
    __44__FCPuzzleThumbnailURLProtocol_startLoading__block_invoke(v19);
  }

  else
  {
    v7 = [v6 objectAtIndexedSubscript:1];
    v8 = [v6 objectAtIndexedSubscript:3];
    v9 = [v8 integerValue];

    if ([v6 count] < 5)
    {
      v12 = 0;
    }

    else
    {
      v10 = MEMORY[0x1E696AD98];
      v11 = [v6 objectAtIndexedSubscript:4];
      v12 = [v10 numberWithInteger:{objc_msgSend(v11, "integerValue")}];
    }

    objc_initWeak(location, self);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __44__FCPuzzleThumbnailURLProtocol_startLoading__block_invoke_2;
    v16[3] = &unk_1E7C39C58;
    objc_copyWeak(v18, location);
    v16[4] = self;
    v18[1] = v9;
    v13 = v12;
    v17 = v13;
    [(FCPuzzleThumbnailURLProtocol *)self _fetchResourceMapWithID:v7 completion:v16];

    objc_destroyWeak(v18);
    objc_destroyWeak(location);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __44__FCPuzzleThumbnailURLProtocol_startLoading__block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x1E696ABC0] fc_errorWithCode:16 description:@"Record field URL protocol has invalid path."];
  v2 = [*(a1 + 32) client];
  [v2 URLProtocol:*(a1 + 32) didFailWithError:v3];
}

void __44__FCPuzzleThumbnailURLProtocol_startLoading__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v10 = v9;
    if (v6)
    {
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __44__FCPuzzleThumbnailURLProtocol_startLoading__block_invoke_4;
      v28[3] = &unk_1E7C36C58;
      v29 = v9;
      v30 = v6;
      __44__FCPuzzleThumbnailURLProtocol_startLoading__block_invoke_4(v28);

      v11 = v29;
    }

    else
    {
      v12 = *(a1 + 56);
      v13 = *(a1 + 32);
      v14 = *(a1 + 40);
      v27 = 0;
      v15 = [v13 _imageURLFromResourceMapFileURL:v5 dayOfWeek:v12 difficulty:v14 error:&v27];
      v11 = v27;
      if (v15)
      {
        v16 = MEMORY[0x1E695AC68];
        v17 = v15;
        v18 = [[v16 alloc] initWithURL:v17];
        v19 = [objc_alloc(MEMORY[0x1E695AC70]) initWithURL:v17 MIMEType:0 expectedContentLength:0 textEncodingName:0];

        v20 = [v10 client];
        [v20 URLProtocol:v10 wasRedirectedToRequest:v18 redirectResponse:v19];
      }

      else
      {
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __44__FCPuzzleThumbnailURLProtocol_startLoading__block_invoke_5;
        v23[3] = &unk_1E7C376A0;
        v21 = v10;
        v22 = *(a1 + 32);
        v24 = v21;
        v25 = v22;
        v26 = v11;
        __44__FCPuzzleThumbnailURLProtocol_startLoading__block_invoke_5(v23);

        v18 = v24;
      }
    }
  }
}

void __44__FCPuzzleThumbnailURLProtocol_startLoading__block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) client];
  [v2 URLProtocol:*(a1 + 32) didFailWithError:*(a1 + 40)];
}

void __44__FCPuzzleThumbnailURLProtocol_startLoading__block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) client];
  [v2 URLProtocol:*(a1 + 40) didFailWithError:*(a1 + 48)];
}

- (void)stopLoading
{
  v3 = [(FCPuzzleThumbnailURLProtocol *)self fetchOperation];
  [v3 cancel];

  v4 = [(FCPuzzleThumbnailURLProtocol *)self assetOperation];
  [v4 cancel];
}

- (void)_fetchResourceMapWithID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [objc_opt_class() resourceMapSerialQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__FCPuzzleThumbnailURLProtocol__fetchResourceMapWithID_completion___block_invoke;
  v11[3] = &unk_1E7C39D20;
  v9 = v7;
  v14 = v9;
  v10 = v6;
  v12 = v10;
  objc_copyWeak(&v15, &location);
  v13 = self;
  [v8 enqueueBlock:v11];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __67__FCPuzzleThumbnailURLProtocol__fetchResourceMapWithID_completion___block_invoke(id *a1, void *a2)
{
  v39[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__FCPuzzleThumbnailURLProtocol__fetchResourceMapWithID_completion___block_invoke_2;
  aBlock[3] = &unk_1E7C39C80;
  v36 = a1[6];
  v24 = v3;
  v37 = v24;
  v4 = _Block_copy(aBlock);
  v5 = [qword_1EDB26A08 URLByAppendingPathComponent:@"puzzle-resources"];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v23 = [a1[4] stringByAppendingFormat:@"_%lu", 1];
    v8 = [v7 URLByAppendingPathComponent:v23];
    v9 = [MEMORY[0x1E696AC08] defaultManager];
    v10 = [v8 path];
    v11 = [v9 fileExistsAtPath:v10];

    if (v11)
    {
      v4[2](v4, v8, 0);
    }

    else
    {
      v12 = [MEMORY[0x1E696AC08] defaultManager];
      [v12 createDirectoryAtURL:v7 withIntermediateDirectories:1 attributes:0 error:0];

      v13 = objc_alloc_init(FCCKContentFetchOperation);
      WeakRetained = objc_loadWeakRetained(&qword_1EDB26A00);
      [(FCCKContentFetchOperation *)v13 setDatabase:?];

      v15 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:a1[4]];
      v39[0] = v15;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];
      if (v13)
      {
        objc_setProperty_nonatomic_copy(v13, v16, v17, 384);
      }

      v38 = @"asset";
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
      if (v13)
      {
        objc_setProperty_nonatomic_copy(v13, v18, v19, 400);
      }

      v31[0] = 0;
      v31[1] = v31;
      v31[2] = 0x3032000000;
      v31[3] = __Block_byref_object_copy__13;
      v31[4] = __Block_byref_object_dispose__13;
      v32 = 0;
      newValue[0] = MEMORY[0x1E69E9820];
      newValue[1] = 3221225472;
      newValue[2] = __67__FCPuzzleThumbnailURLProtocol__fetchResourceMapWithID_completion___block_invoke_69;
      newValue[3] = &unk_1E7C39CA8;
      newValue[4] = v31;
      if (v13)
      {
        objc_setProperty_nonatomic_copy(v13, v20, newValue, 416);
      }

      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __67__FCPuzzleThumbnailURLProtocol__fetchResourceMapWithID_completion___block_invoke_2_71;
      v25[3] = &unk_1E7C39CF8;
      objc_copyWeak(&v29, a1 + 7);
      v27 = v4;
      v28 = v31;
      v25[4] = a1[5];
      v26 = v8;
      if (v13)
      {
        objc_setProperty_nonatomic_copy(v13, v21, v25, 424);
      }

      [a1[5] setFetchOperation:v13];
      [(FCOperation *)v13 start];

      objc_destroyWeak(&v29);
      _Block_object_dispose(v31, 8);
    }
  }

  else
  {
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __67__FCPuzzleThumbnailURLProtocol__fetchResourceMapWithID_completion___block_invoke_3;
    v33[3] = &unk_1E7C379C8;
    v34 = v4;
    __67__FCPuzzleThumbnailURLProtocol__fetchResourceMapWithID_completion___block_invoke_3(v33);
    v7 = v34;
  }

  v22 = *MEMORY[0x1E69E9840];
}

uint64_t __67__FCPuzzleThumbnailURLProtocol__fetchResourceMapWithID_completion___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __67__FCPuzzleThumbnailURLProtocol__fetchResourceMapWithID_completion___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] fc_errorWithCode:16 description:@"Puzzle thumbnail URL protocol is missing a cache directory."];
  (*(v1 + 16))(v1, 0, v2);
}

void __67__FCPuzzleThumbnailURLProtocol__fetchResourceMapWithID_completion___block_invoke_2_71(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v7 = [v6 fetchOperation];
    v8 = [v7 isCancelled];

    if (v8)
    {
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __67__FCPuzzleThumbnailURLProtocol__fetchResourceMapWithID_completion___block_invoke_4;
      v43[3] = &unk_1E7C379C8;
      v44 = *(a1 + 48);
      __67__FCPuzzleThumbnailURLProtocol__fetchResourceMapWithID_completion___block_invoke_4(v43);
      v9 = v44;
    }

    else if (v3)
    {
      v37 = MEMORY[0x1E69E9820];
      v38 = 3221225472;
      v39 = __67__FCPuzzleThumbnailURLProtocol__fetchResourceMapWithID_completion___block_invoke_5;
      v40 = &unk_1E7C37778;
      v42 = *(a1 + 48);
      v41 = v3;
      v42[2](v42, 0, v41);

      v9 = v42;
    }

    else
    {
      v10 = *(*(*(a1 + 56) + 8) + 40);
      if (v10)
      {
        v9 = v10;
        objc_opt_class();
        v11 = [v9 objectForKeyedSubscript:@"asset"];
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

        v13 = v12;

        if (v13)
        {
          v14 = [MEMORY[0x1E696AF20] componentsWithString:v13];
          if (v14)
          {
            v15 = objc_loadWeakRetained(&qword_1EDB26A00);
            v16 = [v15 shouldUseSecureConnectionForCKAssetURLs];

            if (v16)
            {
              [v14 setScheme:@"https"];
            }

            v17 = objc_loadWeakRetained(&qword_1EDB26A00);
            [v17 updateAssetURLHostIfNeededWithComponents:v14];

            v18 = [v14 URL];
            if (v18)
            {
              v19 = [FCAssetDownloadOperation alloc];
              v24 = objc_loadWeakRetained(&qword_1EDB26A00);
              [v24 networkReachability];
              v20 = v25 = v18;
              v21 = *(a1 + 32);
              v22 = [objc_opt_class() sharedURLRequestScheduler];
              v23 = [(FCAssetDownloadOperation *)v19 initWithNetworkReachability:v20 URLRequestScheduler:v22];

              v18 = v25;
              [(FCAssetDownloadOperation *)v23 setURL:v25];
              v26[0] = MEMORY[0x1E69E9820];
              v26[1] = 3221225472;
              v26[2] = __67__FCPuzzleThumbnailURLProtocol__fetchResourceMapWithID_completion___block_invoke_10;
              v26[3] = &unk_1E7C39CD0;
              v28 = *(a1 + 48);
              v27 = *(a1 + 40);
              [(FCAssetDownloadOperation *)v23 setFileDownloadCompletionHandler:v26];
              [v6 setAssetOperation:v23];
              [(FCOperation *)v23 start];
            }

            else
            {
              v29[0] = MEMORY[0x1E69E9820];
              v29[1] = 3221225472;
              v29[2] = __67__FCPuzzleThumbnailURLProtocol__fetchResourceMapWithID_completion___block_invoke_9;
              v29[3] = &unk_1E7C379C8;
              v30 = *(a1 + 48);
              __67__FCPuzzleThumbnailURLProtocol__fetchResourceMapWithID_completion___block_invoke_9(v29);
              v23 = v30;
            }
          }

          else
          {
            v31[0] = MEMORY[0x1E69E9820];
            v31[1] = 3221225472;
            v31[2] = __67__FCPuzzleThumbnailURLProtocol__fetchResourceMapWithID_completion___block_invoke_8;
            v31[3] = &unk_1E7C379C8;
            v32 = *(a1 + 48);
            __67__FCPuzzleThumbnailURLProtocol__fetchResourceMapWithID_completion___block_invoke_8(v31);
            v18 = v32;
          }
        }

        else
        {
          v33[0] = MEMORY[0x1E69E9820];
          v33[1] = 3221225472;
          v33[2] = __67__FCPuzzleThumbnailURLProtocol__fetchResourceMapWithID_completion___block_invoke_7;
          v33[3] = &unk_1E7C379C8;
          v34 = *(a1 + 48);
          __67__FCPuzzleThumbnailURLProtocol__fetchResourceMapWithID_completion___block_invoke_7(v33);
          v14 = v34;
        }
      }

      else
      {
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v35[2] = __67__FCPuzzleThumbnailURLProtocol__fetchResourceMapWithID_completion___block_invoke_6;
        v35[3] = &unk_1E7C379C8;
        v36 = *(a1 + 48);
        __67__FCPuzzleThumbnailURLProtocol__fetchResourceMapWithID_completion___block_invoke_6(v35);

        v9 = 0;
      }
    }
  }
}

void __67__FCPuzzleThumbnailURLProtocol__fetchResourceMapWithID_completion___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] fc_operationCancelledErrorWithAdditionalUserInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void __67__FCPuzzleThumbnailURLProtocol__fetchResourceMapWithID_completion___block_invoke_6(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] fc_errorWithCode:16 description:@"Record field URL protocol is missing requested record."];
  (*(v1 + 16))(v1, 0, v2);
}

void __67__FCPuzzleThumbnailURLProtocol__fetchResourceMapWithID_completion___block_invoke_7(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] fc_errorWithCode:16 description:@"Record field URL protocol is missing requested field."];
  (*(v1 + 16))(v1, 0, v2);
}

void __67__FCPuzzleThumbnailURLProtocol__fetchResourceMapWithID_completion___block_invoke_8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] fc_errorWithCode:16 description:@"Record field URL protocol is missing valid URL components."];
  (*(v1 + 16))(v1, 0, v2);
}

void __67__FCPuzzleThumbnailURLProtocol__fetchResourceMapWithID_completion___block_invoke_9(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] fc_errorWithCode:16 description:@"Record field URL protocol is missing valid URL."];
  (*(v1 + 16))(v1, 0, v2);
}

void __67__FCPuzzleThumbnailURLProtocol__fetchResourceMapWithID_completion___block_invoke_10(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v21[1] = MEMORY[0x1E69E9820];
    v21[2] = 3221225472;
    v21[3] = __67__FCPuzzleThumbnailURLProtocol__fetchResourceMapWithID_completion___block_invoke_11;
    v21[4] = &unk_1E7C37778;
    v23 = *(a1 + 40);
    v22 = v9;
    v23[2](v23, 0, v22);

    v10 = v23;
  }

  else
  {
    v10 = +[FCIdentityAssetTransformer sharedInstance];
    v11 = [v8 responseMIMEType];
    v12 = [v7 fc_isGzippedWithMIMETypeHint:v11];

    if (v12)
    {
      v13 = +[FCGzipAssetTransformer sharedInstance];

      v10 = v13;
    }

    v14 = [v7 path];
    v15 = [*(a1 + 32) path];
    v21[0] = 0;
    v16 = [v10 transformAssetDataFromFilePath:v14 toFilePath:v15 error:v21];
    v17 = v21[0];

    if (v16)
    {
      v18 = *(a1 + 32);
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v20 = *(a1 + 40);
      v19 = v17;
      v20[2](v20, 0, v19);
    }
  }
}

- (id)_imageURLFromResourceMapFileURL:(id)a3 dayOfWeek:(int64_t)a4 difficulty:(id)a5 error:(id *)a6
{
  v9 = a5;
  v10 = [MEMORY[0x1E695DF48] inputStreamWithURL:a3];
  [v10 open];
  v11 = [v10 streamError];

  if (v11)
  {
    v24[1] = MEMORY[0x1E69E9820];
    v24[2] = 3221225472;
    v24[3] = __91__FCPuzzleThumbnailURLProtocol__imageURLFromResourceMapFileURL_dayOfWeek_difficulty_error___block_invoke;
    v24[4] = &unk_1E7C39D48;
    v26 = a6;
    v25 = v10;
    *a6 = [v25 streamError];
    v12 = 0;
    v13 = v25;
  }

  else
  {
    v24[0] = 0;
    v14 = [MEMORY[0x1E696ACB0] JSONObjectWithStream:v10 options:0 error:v24];
    v15 = v24[0];
    v13 = v15;
    if (v14)
    {
      v16 = [v14 objectForKeyedSubscript:@"smallImages"];
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"s%ld", a4];
      v18 = [v16 objectForKeyedSubscript:v17];

      if (v9 && ([MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", objc_msgSend(v9, "longValue")], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "objectForKeyedSubscript:", v19), v20 = objc_claimAutoreleasedReturnValue(), v19, v20) || (objc_msgSend(v18, "objectForKeyedSubscript:", @"defaultUrl"), (v20 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v12 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v20];
      }

      else
      {
        v22 = a6;
        [MEMORY[0x1E696ABC0] fc_errorWithCode:16 description:@"Resource map is missing the requested thumbnail."];
        *v22 = v12 = 0;
      }
    }

    else
    {
      v23 = v15;
      *a6 = v23;
      v12 = 0;
      v16 = v23;
    }
  }

  return v12;
}

uint64_t __91__FCPuzzleThumbnailURLProtocol__imageURLFromResourceMapFileURL_dayOfWeek_difficulty_error___block_invoke(uint64_t a1)
{
  **(a1 + 40) = [*(a1 + 32) streamError];
  return 0;
}

uint64_t __91__FCPuzzleThumbnailURLProtocol__imageURLFromResourceMapFileURL_dayOfWeek_difficulty_error___block_invoke_3(uint64_t a1)
{
  **(a1 + 32) = [MEMORY[0x1E696ABC0] fc_errorWithCode:16 description:@"Resource map is missing the requested thumbnail."];
  return 0;
}

@end