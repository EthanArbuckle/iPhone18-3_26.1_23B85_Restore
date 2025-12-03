@interface FCExcerptURLProtocol
+ (BOOL)canHandleURL:(id)l;
+ (BOOL)canHandleURLWithComponents:(id)components;
+ (BOOL)canInitWithRequest:(id)request;
+ (BOOL)requestIsCacheEquivalent:(id)equivalent toRequest:(id)request;
+ (id)excerptURLForArticleID:(id)d changeTag:(id)tag;
+ (void)initialize;
+ (void)setupWithArticleDatabase:(id)database;
+ (void)unregister;
- (void)startLoading;
- (void)stopLoading;
@end

@implementation FCExcerptURLProtocol

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v3 = MEMORY[0x1E695AC60];

    [v3 registerClass:self];
  }
}

+ (void)setupWithArticleDatabase:(id)database
{
  v19 = *MEMORY[0x1E69E9840];
  databaseCopy = database;
  if (!databaseCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"excerpt URL protocol requires a non-nil database"];
    v11 = 136315906;
    v12 = "+[FCExcerptURLProtocol setupWithArticleDatabase:]";
    v13 = 2080;
    v14 = "FCExcerptURLProtocol.m";
    v15 = 1024;
    v16 = 41;
    v17 = 2114;
    v18 = v9;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v11, 0x26u);
  }

  WeakRetained = objc_loadWeakRetained(&s_database_0);
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v7 = NSClassFromString(&cfstr_Xctest.isa);

    if (!v7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"excerpt URL protocol has already been setup"];
      v11 = 136315906;
      v12 = "+[FCExcerptURLProtocol setupWithArticleDatabase:]";
      v13 = 2080;
      v14 = "FCExcerptURLProtocol.m";
      v15 = 1024;
      v16 = 42;
      v17 = 2114;
      v18 = v10;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v11, 0x26u);
    }
  }

  objc_storeWeak(&s_database_0, databaseCopy);
  [MEMORY[0x1E695AC60] registerClass:self];

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)unregister
{
  WeakRetained = objc_loadWeakRetained(&s_database_0);

  if (WeakRetained)
  {
    objc_storeWeak(&s_database_0, 0);
    v4 = MEMORY[0x1E695AC60];

    [v4 unregisterClass:self];
  }
}

+ (id)excerptURLForArticleID:(id)d changeTag:(id)tag
{
  v27 = *MEMORY[0x1E69E9840];
  tagCopy = tag;
  dCopy = d;
  WeakRetained = objc_loadWeakRetained(&s_database_0);

  if (!WeakRetained && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"can't construct a URL without a database"];
    *buf = 136315906;
    v20 = "+[FCExcerptURLProtocol excerptURLForArticleID:changeTag:]";
    v21 = 2080;
    v22 = "FCExcerptURLProtocol.m";
    v23 = 1024;
    v24 = 61;
    v25 = 2114;
    v26 = v17;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v8 = objc_alloc_init(MEMORY[0x1E696AF20]);
  [v8 setScheme:@"news-excerpt"];
  v9 = objc_loadWeakRetained(&s_database_0);
  containerIdentifier = [v9 containerIdentifier];
  [v8 setHost:containerIdentifier];

  v11 = [@"/" stringByAppendingString:dCopy];

  [v8 setPath:v11];
  v12 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"changetag" value:tagCopy];

  v18 = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
  [v8 setQueryItems:v13];

  v14 = [v8 URL];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (BOOL)canHandleURL:(id)l
{
  scheme = [l scheme];
  v4 = [scheme isEqualToString:@"news-excerpt"];

  return v4;
}

+ (BOOL)canHandleURLWithComponents:(id)components
{
  scheme = [components scheme];
  v4 = [scheme isEqualToString:@"news-excerpt"];

  return v4;
}

+ (BOOL)canInitWithRequest:(id)request
{
  v4 = [request URL];
  LOBYTE(self) = [self canHandleURL:v4];

  return self;
}

+ (BOOL)requestIsCacheEquivalent:(id)equivalent toRequest:(id)request
{
  requestCopy = request;
  v6 = [equivalent URL];
  v7 = [requestCopy URL];

  LOBYTE(requestCopy) = [v6 isEqual:v7];
  return requestCopy;
}

- (void)startLoading
{
  v30[1] = *MEMORY[0x1E69E9840];
  fetchOperation = [(FCExcerptURLProtocol *)self fetchOperation];

  if (fetchOperation && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"shouldn't have a fetch operation yet"];
    *buf = 136315906;
    *&buf[4] = "[FCExcerptURLProtocol startLoading]";
    *&buf[12] = 2080;
    *&buf[14] = "FCExcerptURLProtocol.m";
    *&buf[22] = 1024;
    LODWORD(v27) = 102;
    WORD2(v27) = 2114;
    *(&v27 + 6) = v19;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  request = [(NSURLProtocol *)self request];
  v5 = [request URL];

  lastPathComponent = [v5 lastPathComponent];
  v7 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:lastPathComponent];
  v8 = objc_alloc_init(FCCKContentFetchOperation);
  WeakRetained = objc_loadWeakRetained(&s_database_0);
  [(FCCKContentFetchOperation *)v8 setDatabase:?];

  v30[0] = v7;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
  if (v8)
  {
    objc_setProperty_nonatomic_copy(v8, v10, v11, 384);
  }

  v29 = @"excerpt";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
  if (v8)
  {
    objc_setProperty_nonatomic_copy(v8, v12, v13, 400);
  }

  objc_initWeak(&location, self);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&v27 = __Block_byref_object_copy__62;
  *(&v27 + 1) = __Block_byref_object_dispose__62;
  v28 = 0;
  newValue[0] = MEMORY[0x1E69E9820];
  newValue[1] = 3221225472;
  newValue[2] = __36__FCExcerptURLProtocol_startLoading__block_invoke;
  newValue[3] = &unk_1E7C39CA8;
  newValue[4] = buf;
  if (v8)
  {
    objc_setProperty_nonatomic_copy(v8, v14, newValue, 416);
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __36__FCExcerptURLProtocol_startLoading__block_invoke_2;
  v20[3] = &unk_1E7C44418;
  objc_copyWeak(&v23, &location);
  v22 = buf;
  v16 = v5;
  v21 = v16;
  if (v8)
  {
    objc_setProperty_nonatomic_copy(v8, v15, v20, 424);
  }

  [(FCExcerptURLProtocol *)self setFetchOperation:v8];
  fc_sharedConcurrentQueue = [MEMORY[0x1E696ADC8] fc_sharedConcurrentQueue];
  [fc_sharedConcurrentQueue addOperation:v8];

  objc_destroyWeak(&v23);
  _Block_object_dispose(buf, 8);

  objc_destroyWeak(&location);
  v18 = *MEMORY[0x1E69E9840];
}

void __36__FCExcerptURLProtocol_startLoading__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__FCExcerptURLProtocol_startLoading__block_invoke_3;
  v7[3] = &unk_1E7C443F0;
  v5 = *(a1 + 32);
  v10 = *(a1 + 40);
  v8 = v5;
  v9 = v3;
  v6 = v3;
  FCPerformIfNonNil(WeakRetained, v7);
}

void __36__FCExcerptURLProtocol_startLoading__block_invoke_3(void *a1, void *a2)
{
  v14 = a2;
  v3 = [v14 fetchOperation];
  v4 = [v3 isCancelled];

  if ((v4 & 1) == 0)
  {
    v5 = *(*(a1[6] + 8) + 40);
    if (v5)
    {
      v6 = v5;
      v7 = [v6 objectForKeyedSubscript:@"excerpt"];
      v8 = [v7 dataUsingEncoding:4];
      v9 = [v8 fc_gzipDeflate];

      v10 = [objc_alloc(MEMORY[0x1E695AC70]) initWithURL:a1[4] MIMEType:@"application/gzip" expectedContentLength:objc_msgSend(v9 textEncodingName:{"length"), 0}];
      v11 = [v14 client];
      [v11 URLProtocol:v14 didReceiveResponse:v10 cacheStoragePolicy:2];

      v12 = [v14 client];
      [v12 URLProtocol:v14 didLoadData:v9];

      v13 = [v14 client];
      [v13 URLProtocolDidFinishLoading:v14];
    }

    else
    {
      v9 = [v14 client];
      [v9 URLProtocol:v14 didFailWithError:a1[5]];
    }
  }
}

- (void)stopLoading
{
  fetchOperation = [(FCExcerptURLProtocol *)self fetchOperation];
  [fetchOperation cancel];
}

@end