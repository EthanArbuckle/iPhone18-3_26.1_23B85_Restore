@interface HLPURLSessionHandler
+ (id)sharedInstance;
- (HLPURLSessionHandler)init;
- (id)URLSessionManagerSessionConfiguration:(id)a3;
- (id)URLSessionManagerSessionOperationQueue:(id)a3;
- (id)cacheControllerForDataType:(int64_t)a3;
- (id)processJSONFormattedDataForCDSError:(id)a3;
- (void)URLSessionManagerDidReceiveChallenge:(id)a3 completionHandler:(id)a4;
- (void)URLSessionManagerRequestCompleted:(id)a3 sessionTask:(id)a4;
- (void)sessionTask:(id)a3 didCompleteWithError:(id)a4;
- (void)sessionTask:(id)a3 didFinishDownloadingToURL:(id)a4;
- (void)sessionTask:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5;
- (void)sessionTask:(id)a3 didReceiveResponse:(id)a4 completionHandler:(id)a5;
- (void)sessionTask:(id)a3 willCacheResponse:(id)a4 completionHandler:(id)a5;
- (void)sessionTask:(id)a3 willPerformHTTPRedirection:(id)a4 newRequest:(id)a5 completionHandler:(id)a6;
@end

@implementation HLPURLSessionHandler

+ (id)sharedInstance
{
  if (sharedInstance_predicate_1 != -1)
  {
    +[HLPURLSessionHandler sharedInstance];
  }

  v3 = sharedInstance_gHLPURLSessionHandler;

  return v3;
}

uint64_t __38__HLPURLSessionHandler_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(HLPURLSessionHandler);
  v1 = sharedInstance_gHLPURLSessionHandler;
  sharedInstance_gHLPURLSessionHandler = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (HLPURLSessionHandler)init
{
  v6.receiver = self;
  v6.super_class = HLPURLSessionHandler;
  v2 = [(HLPURLSessionHandler *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAA78] indexSetWithIndex:1];
    excludeCachingDataTypes = v2->_excludeCachingDataTypes;
    v2->_excludeCachingDataTypes = v3;
  }

  return v2;
}

- (id)cacheControllerForDataType:(int64_t)a3
{
  if ((a3 - 1) > 4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(__objc2_class *)*off_279707590[a3 - 1] sharedInstance];
  }

  return v5;
}

- (id)URLSessionManagerSessionOperationQueue:(id)a3
{
  v3 = objc_alloc_init(MEMORY[0x277CCABD8]);
  [v3 setMaxConcurrentOperationCount:4];

  return v3;
}

- (id)URLSessionManagerSessionConfiguration:(id)a3
{
  v3 = [objc_alloc(MEMORY[0x277CCACD8]) initWithMemoryCapacity:0 diskCapacity:26214400 diskPath:@"com.apple.helpkit"];
  [MEMORY[0x277CCACD8] setSharedURLCache:v3];
  v4 = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
  [v4 setURLCache:v3];

  return v4;
}

- (void)URLSessionManagerRequestCompleted:(id)a3 sessionTask:(id)a4
{
  if (gNetworkActivityIndicatorCount >= 1)
  {
    --gNetworkActivityIndicatorCount;
  }
}

- (void)sessionTask:(id)a3 willCacheResponse:(id)a4 completionHandler:(id)a5
{
  v10 = a4;
  v8 = a5;
  if (-[NSIndexSet containsIndex:](self->_excludeCachingDataTypes, "containsIndex:", [a3 dataType]))
  {
    v9 = v10;
  }

  else
  {
    v9 = 0;
  }

  (v8)[2](v8, v9);
}

- (void)sessionTask:(id)a3 willPerformHTTPRedirection:(id)a4 newRequest:(id)a5 completionHandler:(id)a6
{
  v26 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (self->_shouldDisallowOffsiteRedirects && ([v12 URL], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "host"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "hasSuffix:", @".apple.com"), v15, v14, (v16 & 1) == 0))
  {
    v18 = HLPLogForCategory(1uLL);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v12 URL];
      v20 = [v19 absoluteString];
      v24 = 138412290;
      v25 = v20;
      _os_log_impl(&dword_2522BC000, v18, OS_LOG_TYPE_DEFAULT, "Rejecting off-site redirect: %@", &v24, 0xCu);
    }

    v21 = [MEMORY[0x277CBEBC0] URLWithString:@"about:blank"];
    v22 = [MEMORY[0x277CCAD20] requestWithURL:v21];
    v13[2](v13, v22);
  }

  else
  {
    v17 = HLPLogForCategory(1uLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [HLPURLSessionHandler sessionTask:v11 willPerformHTTPRedirection:v12 newRequest:v17 completionHandler:?];
    }

    v13[2](v13, v12);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (id)processJSONFormattedDataForCDSError:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 objectForKeyedSubscript:@"errorDetail"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v4 objectForKey:@"errorCode"];
      v6 = [v5 integerValue];

      v7 = [v4 objectForKey:@"errorMessage"];
      v8 = v7;
      v9 = 0;
      if (v6 >= 1 && v7)
      {
        v9 = [MEMORY[0x277CCA9B8] errorWithDomain:v7 code:v6 userInfo:0];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)sessionTask:(id)a3 didFinishDownloadingToURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 dataType];
  v9 = [(HLPURLSessionHandler *)self cacheControllerForDataType:v8];
  v10 = [v6 identifier];
  v11 = [v9 dataCacheForIdentifier:v10];
  v12 = [v6 downloadTaskTotalBytes];
  if (v9)
  {
    v24 = v12;
    v25 = v11;
    v13 = [v6 response];
    v14 = [v13 statusCode];

    v15 = v7;
    if (v8 == 1)
    {
      v16 = [v9 formattedDataWithFileURL:v15];
      v17 = [(HLPURLSessionHandler *)self processJSONFormattedDataForCDSError:v16];
      if (v17)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v17 = 0;
      v16 = 0;
    }

    if (v14 != 200)
    {
      v17 = [MEMORY[0x277CCA9B8] errorWithDomain:@"Unknown error" code:v14 userInfo:0];
    }

LABEL_9:
    if (v17)
    {
      [v6 setDataError:v17];
      v21 = v15;
    }

    else
    {
      if ([(HLPURLSessionHandler *)self shouldCacheToDiskForSessionTask:v6])
      {
        v23 = [v6 lastModified];
        v21 = [v9 saveFileURL:v15 identifier:v10 fileSize:v24 lastModified:v23 dataCache:v25];

        v22 = HLPLogForCategory(1uLL);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          [HLPURLSessionHandler sessionTask:v21 didFinishDownloadingToURL:v22];
        }
      }

      else
      {
        v21 = v15;
      }

      if (v8 != 1)
      {
        v20 = [v9 formattedDataWithFileURL:v21];

        if (v8 == 4 && !self->_shouldIgnoreInMemoryCaching)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v9 addInMemoryCacheForImage:v20 identifier:v10 cost:v24];
          }
        }

        goto LABEL_18;
      }
    }

    v20 = v16;
LABEL_18:

    v11 = v25;
    goto LABEL_19;
  }

  v18 = MEMORY[0x277CBEA90];
  v19 = [v7 path];
  v20 = [v18 dataWithContentsOfFile:v19];

LABEL_19:
  [v6 setFormattedData:v20];
}

- (void)sessionTask:(id)a3 didReceiveResponse:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 dataType];
  v12 = [(HLPURLSessionHandler *)self shouldCacheToDiskForSessionTask:v8];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_11;
  }

  v13 = v9;
  [v8 setResponse:v13];
  v14 = [v8 task];
  v15 = [v14 currentRequest];
  v16 = [(HLPURLSessionHandler *)self respectCachingForRequest:v15];

  if (!v12 || !v16)
  {

LABEL_11:
    if (v12)
    {
      v30 = 2;
    }

    else
    {
      v30 = 1;
    }

    goto LABEL_14;
  }

  v17 = [v13 allHeaderFields];
  v18 = [v17 objectForKeyedSubscript:@"Last-Modified"];

  [v8 setLastModified:v18];
  if (v18 && ![(NSIndexSet *)self->_excludeCachingDataTypes containsIndex:v11])
  {
    v19 = [(HLPURLSessionHandler *)self cacheControllerForDataType:v11];
    v20 = [v8 identifier];
    v21 = [v19 dataCacheForIdentifier:v20];

    if (v21)
    {
      v22 = [v21 lastModified];
      v23 = [v22 isEqualToString:v18];

      if (v23)
      {
        v24 = HLPLogForCategory(2uLL);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          [HLPURLSessionHandler sessionTask:v21 didReceiveResponse:v24 completionHandler:?];
        }

        v25 = [v19 cacheFileURLForDataCache:v21];
        v26 = [v19 formattedDataWithFileURL:v25];
        [v8 setFormattedData:v26];

        v27 = 1;
        [v8 setIsCacheData:1];
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __73__HLPURLSessionHandler_sessionTask_didReceiveResponse_completionHandler___block_invoke;
        v33[3] = &unk_279706F08;
        v34 = v21;
        v35 = v19;
        v28 = v19;
        v29 = v21;
        dispatch_async(MEMORY[0x277D85CD0], v33);

        goto LABEL_20;
      }
    }
  }

  if ((v11 & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    v31 = [v13 allHeaderFields];
    v32 = [v31 objectForKeyedSubscript:@"Content-Type"];

    LOBYTE(v31) = [v32 containsString:@"text/html"];
    if (v31)
    {
      v27 = 0;
LABEL_20:
      v30 = 0;
      goto LABEL_15;
    }
  }

  else
  {
  }

  v30 = 2;
LABEL_14:
  v27 = 0;
LABEL_15:
  v10[2](v10, v30, v27);
}

uint64_t __73__HLPURLSessionHandler_sessionTask_didReceiveResponse_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEAA8] date];
  [*(a1 + 32) setUpdatedDate:v2];

  v3 = *(a1 + 40);

  return [v3 updateCache];
}

- (void)sessionTask:(id)a3 didCompleteWithError:(id)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 task];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v6 response];
    v10 = [v9 statusCode];

    v11 = [v8 response];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v13 = [v8 response];
      v14 = [v13 allHeaderFields];
      v15 = [v14 objectForKeyedSubscript:@"Last-Modified"];
      [v6 setLastModified:v15];
    }

    else
    {
      v13 = 0;
    }

    v16 = [v6 dataTaskData];
    v17 = [v6 task];
    v18 = [v17 originalRequest];

    v19 = [(HLPURLSessionHandler *)self respectCachingForRequest:v18];
    if (v6 && v19 && [v13 statusCode] != 404)
    {
      v20 = [v13 statusCode] == 200 && v7 == 0;
      if (!v20 && v18)
      {
        v44 = self;
        v21 = v16;
        v22 = [MEMORY[0x277CCACD8] sharedURLCache];
        v23 = [v22 cachedResponseForRequest:v18];

        v24 = [v23 response];
        objc_opt_class();
        v25 = objc_opt_isKindOfClass();

        if (v25)
        {
          v26 = [v23 response];

          if ([v26 statusCode] == 200)
          {
            v27 = [v23 data];

            if (v27)
            {
              v10 = [v26 statusCode];
              v28 = HLPLogForCategory(1uLL);
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                v29 = [v18 URL];
                *buf = 138412290;
                v50 = v29;
                _os_log_impl(&dword_2522BC000, v28, OS_LOG_TYPE_DEFAULT, "Using cache data for request: %@", buf, 0xCu);
              }

              v30 = MEMORY[0x277CBEB28];
              v31 = [v23 data];
              v32 = [v30 dataWithData:v31];

              [v6 setDataTaskData:v32];
              [v6 setIsCacheData:v32 != 0];
              v21 = v32;
            }
          }
        }

        else
        {
          v26 = v13;
        }

        v13 = v26;
        v16 = v21;
        self = v44;
      }
    }

    if (v10 == 200)
    {
      v33 = 0;
      if (!v6)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v33 = [MEMORY[0x277CCA9B8] errorWithDomain:@"Unknown error" code:v10 userInfo:0];
      if (!v6)
      {
LABEL_37:
        [v6 setDataError:v33];

        goto LABEL_38;
      }
    }

    if ([v16 length])
    {
      v45 = v16;
      v34 = [v6 dataType];
      v35 = [v6 dataError];

      if (!v35 || v34 == 1)
      {
        v36 = [v6 dataType];
        v43 = [(HLPURLSessionHandler *)self cacheControllerForDataType:v36];
        v37 = [v43 formattedDataWithData:v45];
        if (v34 == 1)
        {
          v38 = [(HLPURLSessionHandler *)self processJSONFormattedDataForCDSError:v37];

          v33 = v38;
        }

        if (v36 == 4 && !self->_shouldIgnoreInMemoryCaching)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v39 = [v6 identifier];
            [v43 addInMemoryCacheForImage:v37 identifier:v39 cost:{objc_msgSend(v45, "length")}];
          }
        }

        if (v37)
        {
          [v6 setFormattedData:v37];
        }
      }

      v16 = v45;
    }

    goto LABEL_37;
  }

LABEL_38:
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__HLPURLSessionHandler_sessionTask_didCompleteWithError___block_invoke;
  block[3] = &unk_279706F08;
  v47 = v7;
  v48 = v8;
  v40 = v8;
  v41 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v42 = *MEMORY[0x277D85DE8];
}

void __57__HLPURLSessionHandler_sessionTask_didCompleteWithError___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    if ([v2 code] != -999)
    {
      v3 = HLPLogForCategory(1uLL);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = [*(a1 + 40) currentRequest];
        v5 = [v4 URL];
        v6 = *(a1 + 32);
        *buf = 138412546;
        v12 = v5;
        v13 = 2112;
        v14 = v6;
        _os_log_impl(&dword_2522BC000, v3, OS_LOG_TYPE_DEFAULT, "URLSession %@ failed with error, %@", buf, 0x16u);
      }

      v7 = +[HLPReachabilityManager defaultManager];
      [v7 startNotifier];
    }

    v8 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v10 = +[HLPReachabilityManager defaultManager];
    [v10 stopNotifier];
    v9 = *MEMORY[0x277D85DE8];
  }
}

- (void)URLSessionManagerDidReceiveChallenge:(id)a3 completionHandler:(id)a4
{
  v9 = a3;
  v5 = a4;
  if (+[HLPCommonDefines isInternalBuild](HLPCommonDefines, "isInternalBuild") && [v9 previousFailureCount] < 4)
  {
    v6 = [v9 proposedCredential];
    if (v6)
    {
      v7 = 0;
      v8 = v6;
    }

    else
    {
      v7 = 1;
      v8 = 0;
    }

    (v5)[2](v5, v7, v8);
  }

  else
  {
    v5[2](v5, 3, 0);
  }
}

- (void)sessionTask:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__HLPURLSessionHandler_sessionTask_didReceiveChallenge_completionHandler___block_invoke;
  block[3] = &unk_279707570;
  v15 = v7;
  v16 = v9;
  v14 = v8;
  v10 = v7;
  v11 = v8;
  v12 = v9;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __74__HLPURLSessionHandler_sessionTask_didReceiveChallenge_completionHandler___block_invoke(id *a1)
{
  if (+[HLPCommonDefines isInternalBuild])
  {
    v2 = [a1[4] protectionSpace];
    v3 = [v2 authenticationMethod];

    if (([v3 isEqualToString:*MEMORY[0x277CCA708]] & 1) == 0 && !objc_msgSend(v3, "isEqualToString:", *MEMORY[0x277CCA710]))
    {
      goto LABEL_15;
    }

    if ([a1[4] previousFailureCount] > 3)
    {
      v10 = [MEMORY[0x277D75110] alertControllerWithTitle:@"Authentication Failed" message:@"Please try again later." preferredStyle:1];
      v11 = MEMORY[0x277D750F8];
      v22 = MEMORY[0x277D85DD0];
      v23 = 3221225472;
      v24 = __74__HLPURLSessionHandler_sessionTask_didReceiveChallenge_completionHandler___block_invoke_6;
      v25 = &unk_279707520;
      v26 = a1[6];
      v12 = [v11 actionWithTitle:@"OK" style:1 handler:&v22];
      [v10 addAction:{v12, v22, v23, v24, v25}];

      v13 = v26;
    }

    else
    {
      v4 = [a1[4] proposedCredential];
      if (v4)
      {
        v5 = v4;
        v6 = [a1[4] previousFailureCount];

        if (v6 <= 1)
        {
          v7 = a1[6];
          v8 = [a1[4] proposedCredential];
          v7[2](v7, 0, v8);

LABEL_15:
          return;
        }
      }

      v14 = [a1[5] task];
      v15 = [v14 currentRequest];
      v16 = [v15 URL];
      v13 = [v16 host];

      v17 = [MEMORY[0x277D75110] alertControllerWithTitle:@"Authentication Required" message:v13 preferredStyle:1];
      [v17 addTextFieldWithConfigurationHandler:&__block_literal_global_62];
      [v17 addTextFieldWithConfigurationHandler:&__block_literal_global_67];
      v18 = MEMORY[0x277D750F8];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __74__HLPURLSessionHandler_sessionTask_didReceiveChallenge_completionHandler___block_invoke_4;
      v30[3] = &unk_279707520;
      v31 = a1[6];
      v19 = [v18 actionWithTitle:@"Cancel" style:1 handler:v30];
      [v17 addAction:v19];

      v20 = MEMORY[0x277D750F8];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __74__HLPURLSessionHandler_sessionTask_didReceiveChallenge_completionHandler___block_invoke_5;
      v27[3] = &unk_279707548;
      v10 = v17;
      v28 = v10;
      v29 = a1[6];
      v21 = [v20 actionWithTitle:@"Login In" style:0 handler:v27];
      [v10 addAction:v21];
    }

    if (v10)
    {
      [gHLPRootViewController presentViewController:v10 animated:1 completion:0];
    }

    goto LABEL_15;
  }

  v9 = *(a1[6] + 2);

  v9();
}

void __74__HLPURLSessionHandler_sessionTask_didReceiveChallenge_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setPlaceholder:@"Password"];
  [v2 setSecureTextEntry:1];
}

void __74__HLPURLSessionHandler_sessionTask_didReceiveChallenge_completionHandler___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) textFields];
  v9 = [v2 firstObject];

  v3 = [*(a1 + 32) textFields];
  v4 = [v3 lastObject];

  v5 = objc_alloc(MEMORY[0x277CCACF0]);
  v6 = [v9 text];
  v7 = [v4 text];
  v8 = [v5 initWithUser:v6 password:v7 persistence:2];

  (*(*(a1 + 40) + 16))();
}

- (void)sessionTask:(NSObject *)a3 willPerformHTTPRedirection:newRequest:completionHandler:.cold.1(void *a1, void *a2, NSObject *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = [a1 URL];
  v6 = [v5 absoluteURL];
  v7 = [a2 URL];
  v8 = [v7 absoluteString];
  v10 = 138412546;
  v11 = v6;
  v12 = 2112;
  v13 = v8;
  _os_log_debug_impl(&dword_2522BC000, a3, OS_LOG_TYPE_DEBUG, "willPerform HTTP Redirect. Original: %@. Redirected: %@", &v10, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)sessionTask:(uint64_t)a1 didFinishDownloadingToURL:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = @"Fail to save ";
  if (a1)
  {
    v2 = @"Saved";
  }

  v4 = 138412546;
  v5 = v2;
  v6 = 2112;
  v7 = a1;
  _os_log_debug_impl(&dword_2522BC000, a2, OS_LOG_TYPE_DEBUG, "%@ %@. ", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)sessionTask:(void *)a1 didReceiveResponse:(NSObject *)a2 completionHandler:.cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 identifier];
  v5 = 138412290;
  v6 = v3;
  _os_log_debug_impl(&dword_2522BC000, a2, OS_LOG_TYPE_DEBUG, "Data cache Last-Modified did not change, cancel request and use cache %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end