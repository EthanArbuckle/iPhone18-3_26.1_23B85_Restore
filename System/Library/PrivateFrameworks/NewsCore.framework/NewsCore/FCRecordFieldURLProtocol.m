@interface FCRecordFieldURLProtocol
+ (BOOL)canHandleURL:(id)a3;
+ (BOOL)canHandleURLWithComponents:(id)a3;
+ (BOOL)canInitWithRequest:(id)a3;
+ (BOOL)requestIsCacheEquivalent:(id)a3 toRequest:(id)a4;
+ (id)URLForRecordID:(id)a3 fieldName:(id)a4;
+ (void)setupWithArticleDatabase:(id)a3;
+ (void)unregister;
- (void)startLoading;
- (void)stopLoading;
@end

@implementation FCRecordFieldURLProtocol

+ (void)setupWithArticleDatabase:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"record field URL protocol requires a non-nil database"];
    v11 = 136315906;
    v12 = "+[FCRecordFieldURLProtocol setupWithArticleDatabase:]";
    v13 = 2080;
    v14 = "FCRecordFieldURLProtocol.m";
    v15 = 1024;
    v16 = 36;
    v17 = 2114;
    v18 = v9;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v11, 0x26u);
  }

  WeakRetained = objc_loadWeakRetained(&s_database);
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v7 = NSClassFromString(&cfstr_Xctest.isa);

    if (!v7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"record field URL protocol has already been setup"];
      v11 = 136315906;
      v12 = "+[FCRecordFieldURLProtocol setupWithArticleDatabase:]";
      v13 = 2080;
      v14 = "FCRecordFieldURLProtocol.m";
      v15 = 1024;
      v16 = 37;
      v17 = 2114;
      v18 = v10;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v11, 0x26u);
    }
  }

  objc_storeWeak(&s_database, v4);
  [MEMORY[0x1E695AC60] registerClass:a1];

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)unregister
{
  WeakRetained = objc_loadWeakRetained(&s_database);

  if (WeakRetained)
  {
    objc_storeWeak(&s_database, 0);
    v4 = MEMORY[0x1E695AC60];

    [v4 unregisterClass:a1];
  }
}

+ (id)URLForRecordID:(id)a3 fieldName:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&s_database);
  if (WeakRetained)
  {
  }

  else if (!NSClassFromString(&cfstr_Xctest.isa) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"can't construct a URL without a database"];
    v15 = 136315906;
    v16 = "+[FCRecordFieldURLProtocol URLForRecordID:fieldName:]";
    v17 = 2080;
    v18 = "FCRecordFieldURLProtocol.m";
    v19 = 1024;
    v20 = 56;
    v21 = 2114;
    v22 = v14;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v15, 0x26u);
  }

  v8 = objc_loadWeakRetained(&s_database);

  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E696AF20]);
    [v9 setScheme:@"https"];
    [v9 setHost:@"news-record"];
    v10 = [@"/" stringByAppendingString:v5];
    v11 = [v10 stringByAppendingPathComponent:v6];
    [v9 setPath:v11];

    v8 = [v9 URL];
  }

  v12 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (BOOL)canHandleURL:(id)a3
{
  v3 = [a3 host];
  v4 = [v3 isEqualToString:@"news-record"];

  return v4;
}

+ (BOOL)canHandleURLWithComponents:(id)a3
{
  v3 = [a3 host];
  v4 = [v3 isEqualToString:@"news-record"];

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
  v35[1] = *MEMORY[0x1E69E9840];
  v3 = [(FCRecordFieldURLProtocol *)self fetchOperation];

  if (v3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"shouldn't have a fetch operation yet"];
    *buf = 136315906;
    *&buf[4] = "[FCRecordFieldURLProtocol startLoading]";
    *&buf[12] = 2080;
    *&buf[14] = "FCRecordFieldURLProtocol.m";
    *&buf[22] = 1024;
    LODWORD(v32) = 99;
    WORD2(v32) = 2114;
    *(&v32 + 6) = v22;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v4 = [(NSURLProtocol *)self request];
  v5 = [v4 URL];

  v6 = [v5 pathComponents];
  if ([v6 count] <= 2)
  {
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __40__FCRecordFieldURLProtocol_startLoading__block_invoke;
    v30[3] = &unk_1E7C36EA0;
    v30[4] = self;
    __40__FCRecordFieldURLProtocol_startLoading__block_invoke(v30);
  }

  else
  {
    v7 = [v5 pathComponents];
    v8 = [v7 objectAtIndexedSubscript:1];

    v9 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:v8];
    v10 = [v5 pathComponents];
    v11 = [v10 objectAtIndexedSubscript:2];

    v12 = objc_alloc_init(FCCKContentFetchOperation);
    WeakRetained = objc_loadWeakRetained(&s_database);
    [(FCCKContentFetchOperation *)v12 setDatabase:?];

    v35[0] = v9;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:1];
    if (v12)
    {
      objc_setProperty_nonatomic_copy(v12, v14, v15, 384);
    }

    v34 = v11;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
    if (v12)
    {
      objc_setProperty_nonatomic_copy(v12, v16, v17, 400);
    }

    objc_initWeak(&location, self);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&v32 = __Block_byref_object_copy__31;
    *(&v32 + 1) = __Block_byref_object_dispose__31;
    v33 = 0;
    newValue[0] = MEMORY[0x1E69E9820];
    newValue[1] = 3221225472;
    newValue[2] = __40__FCRecordFieldURLProtocol_startLoading__block_invoke_34;
    newValue[3] = &unk_1E7C39CA8;
    newValue[4] = buf;
    if (v12)
    {
      objc_setProperty_nonatomic_copy(v12, v18, newValue, 416);
    }

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __40__FCRecordFieldURLProtocol_startLoading__block_invoke_2;
    v23[3] = &unk_1E7C3F610;
    objc_copyWeak(&v27, &location);
    v26 = buf;
    v19 = v11;
    v24 = v19;
    v25 = v5;
    if (v12)
    {
      objc_setProperty_nonatomic_copy(v12, v20, v23, 424);
    }

    [(FCRecordFieldURLProtocol *)self setFetchOperation:v12];
    [(FCOperation *)v12 start];

    objc_destroyWeak(&v27);
    _Block_object_dispose(buf, 8);

    objc_destroyWeak(&location);
  }

  v21 = *MEMORY[0x1E69E9840];
}

void __40__FCRecordFieldURLProtocol_startLoading__block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x1E696ABC0] fc_errorWithCode:16 description:@"Record field URL protocol has invalid path."];
  v2 = [*(a1 + 32) client];
  [v2 URLProtocol:*(a1 + 32) didFailWithError:v3];
}

void __40__FCRecordFieldURLProtocol_startLoading__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v7 = [v6 fetchOperation];
    v8 = [v7 isCancelled];

    if ((v8 & 1) == 0)
    {
      if (v3)
      {
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = __40__FCRecordFieldURLProtocol_startLoading__block_invoke_5;
        v38[3] = &unk_1E7C36C58;
        v39 = v6;
        v40 = v3;
        __40__FCRecordFieldURLProtocol_startLoading__block_invoke_5(v38);

        v9 = v39;
      }

      else
      {
        v10 = *(*(*(a1 + 48) + 8) + 40);
        if (v10)
        {
          v9 = v10;
          v11 = [v9 objectForKeyedSubscript:*(a1 + 32)];
          v12 = v11;
          if (v11)
          {
            v13 = v11;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = [MEMORY[0x1E696AF20] componentsWithString:v13];
              if (v14)
              {
                v15 = v14;
                v16 = objc_loadWeakRetained(&s_database);
                v17 = [v16 shouldUseSecureConnectionForCKAssetURLs];

                if (v17)
                {
                  [v15 setScheme:@"https"];
                }

                v18 = objc_loadWeakRetained(&s_database);
                [v18 updateAssetURLHostIfNeededWithComponents:v15];

                v19 = [v15 URL];
                if (v19)
                {
                  v20 = [objc_alloc(MEMORY[0x1E695AC68]) initWithURL:v19];
                  v21 = [objc_alloc(MEMORY[0x1E695AC70]) initWithURL:v19 MIMEType:0 expectedContentLength:0 textEncodingName:0];
                  [v6 client];
                  v22 = v29 = v19;
                  [v22 URLProtocol:v6 wasRedirectedToRequest:v20 redirectResponse:v21];

                  v19 = v29;
                }

                else
                {
                  v30[0] = MEMORY[0x1E69E9820];
                  v30[1] = 3221225472;
                  v30[2] = __40__FCRecordFieldURLProtocol_startLoading__block_invoke_9;
                  v30[3] = &unk_1E7C36EA0;
                  v31 = v6;
                  __40__FCRecordFieldURLProtocol_startLoading__block_invoke_9(v30);
                }
              }

              else
              {
                v32[0] = MEMORY[0x1E69E9820];
                v32[1] = 3221225472;
                v32[2] = __40__FCRecordFieldURLProtocol_startLoading__block_invoke_8;
                v32[3] = &unk_1E7C36EA0;
                v33 = v6;
                __40__FCRecordFieldURLProtocol_startLoading__block_invoke_8(v32);
              }
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v23 = v13;
                if ([v23 fc_isGzipped])
                {
                  v24 = [v23 fc_gzipInflate];

                  v23 = v24;
                }

                v25 = [objc_alloc(MEMORY[0x1E695AC70]) initWithURL:*(a1 + 40) MIMEType:@"application/octet-stream" expectedContentLength:objc_msgSend(v23 textEncodingName:{"length"), 0}];
                v26 = [v6 client];
                [v26 URLProtocol:v6 didReceiveResponse:v25 cacheStoragePolicy:2];

                v27 = [v6 client];
                [v27 URLProtocol:v6 didLoadData:v23];

                v28 = [v6 client];
                [v28 URLProtocolDidFinishLoading:v6];
              }
            }
          }

          else
          {
            v34[0] = MEMORY[0x1E69E9820];
            v34[1] = 3221225472;
            v34[2] = __40__FCRecordFieldURLProtocol_startLoading__block_invoke_7;
            v34[3] = &unk_1E7C36EA0;
            v35 = v6;
            __40__FCRecordFieldURLProtocol_startLoading__block_invoke_7(v34);
            v13 = v35;
          }
        }

        else
        {
          v36[0] = MEMORY[0x1E69E9820];
          v36[1] = 3221225472;
          v36[2] = __40__FCRecordFieldURLProtocol_startLoading__block_invoke_6;
          v36[3] = &unk_1E7C36EA0;
          v37 = v6;
          __40__FCRecordFieldURLProtocol_startLoading__block_invoke_6(v36);

          v9 = 0;
        }
      }
    }
  }
}

void __40__FCRecordFieldURLProtocol_startLoading__block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) client];
  [v2 URLProtocol:*(a1 + 32) didFailWithError:*(a1 + 40)];
}

void __40__FCRecordFieldURLProtocol_startLoading__block_invoke_6(uint64_t a1)
{
  v3 = [MEMORY[0x1E696ABC0] fc_errorWithCode:16 description:@"Record field URL protocol is missing requested record."];
  v2 = [*(a1 + 32) client];
  [v2 URLProtocol:*(a1 + 32) didFailWithError:v3];
}

void __40__FCRecordFieldURLProtocol_startLoading__block_invoke_7(uint64_t a1)
{
  v3 = [MEMORY[0x1E696ABC0] fc_errorWithCode:16 description:@"Record field URL protocol is missing requested field."];
  v2 = [*(a1 + 32) client];
  [v2 URLProtocol:*(a1 + 32) didFailWithError:v3];
}

void __40__FCRecordFieldURLProtocol_startLoading__block_invoke_8(uint64_t a1)
{
  v3 = [MEMORY[0x1E696ABC0] fc_errorWithCode:16 description:@"Record field URL protocol is missing valid URL components."];
  v2 = [*(a1 + 32) client];
  [v2 URLProtocol:*(a1 + 32) didFailWithError:v3];
}

void __40__FCRecordFieldURLProtocol_startLoading__block_invoke_9(uint64_t a1)
{
  v3 = [MEMORY[0x1E696ABC0] fc_errorWithCode:16 description:@"Record field URL protocol is missing valid URL."];
  v2 = [*(a1 + 32) client];
  [v2 URLProtocol:*(a1 + 32) didFailWithError:v3];
}

- (void)stopLoading
{
  v3 = [(FCRecordFieldURLProtocol *)self fetchOperation];
  v4 = [v3 isFinished];

  if ((v4 & 1) == 0)
  {
    v5 = [(FCRecordFieldURLProtocol *)self fetchOperation];
    [v5 cancel];
  }
}

@end