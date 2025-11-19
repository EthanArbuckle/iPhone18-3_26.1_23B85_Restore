@interface CRKInternetDateProvider
- (CRKInternetDateProvider)init;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)callAndRemoveCompletionHandlerWithDate:(id)a3 error:(id)a4 task:(id)a5;
- (void)fetchInternetDateWithCompletion:(id)a3;
- (void)internetDateRequestDidReceiveTask:(id)a3;
- (void)storeCompletionHandler:(id)a3 forTask:(id)a4;
@end

@implementation CRKInternetDateProvider

- (CRKInternetDateProvider)init
{
  v6.receiver = self;
  v6.super_class = CRKInternetDateProvider;
  v2 = [(CRKInternetDateProvider *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    completionHandlerTable = v2->_completionHandlerTable;
    v2->_completionHandlerTable = v3;
  }

  return v2;
}

- (void)fetchInternetDateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CRKInternetDateProvider *)self session];

  if (!v5)
  {
    v6 = [MEMORY[0x277CBABC8] ephemeralSessionConfiguration];
    [v6 setHTTPCookieAcceptPolicy:1];
    [v6 setHTTPMaximumConnectionsPerHost:1];
    [v6 setRequestCachePolicy:4];
    [v6 setAllowsCellularAccess:1];
    v7 = MEMORY[0x277CBABB8];
    v8 = [MEMORY[0x277CCABD8] mainQueue];
    v9 = [v7 sessionWithConfiguration:v6 delegate:self delegateQueue:v8];
    [(CRKInternetDateProvider *)self setSession:v9];
  }

  v13 = [MEMORY[0x277CBEBC0] URLWithString:@"https://www.apple.com"];
  v10 = [MEMORY[0x277CBAB50] requestWithURL:v13];
  [v10 setHTTPMethod:@"HEAD"];
  v11 = [(CRKInternetDateProvider *)self session];
  v12 = [v11 dataTaskWithRequest:v10];

  [(CRKInternetDateProvider *)self storeCompletionHandler:v4 forTask:v12];
  [v12 resume];
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  if (a5)
  {
    [(CRKInternetDateProvider *)self callAndRemoveCompletionHandlerWithDate:0 error:a5 task:a4];
  }

  else
  {
    [(CRKInternetDateProvider *)self internetDateRequestDidReceiveTask:a4];
  }
}

- (void)internetDateRequestDidReceiveTask:(id)a3
{
  v4 = a3;
  v5 = [v4 response];
  v6 = v5;
  if (v5 && [v5 statusCode] <= 299 && objc_msgSend(v6, "statusCode") > 199)
  {
    v7 = [v6 allHeaderFields];
    v8 = [v7 objectForKeyedSubscript:@"Date"];
    v9 = [MEMORY[0x277CCA948] dataDetectorWithTypes:8 error:0];
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__4;
    v17 = __Block_byref_object_dispose__4;
    v18 = 0;
    if (v8 && (v10 = [v8 length], v12[0] = MEMORY[0x277D85DD0], v12[1] = 3221225472, v12[2] = __61__CRKInternetDateProvider_internetDateRequestDidReceiveTask___block_invoke, v12[3] = &unk_278DC3328, v12[4] = &v13, objc_msgSend(v9, "enumerateMatchesInString:options:range:usingBlock:", v8, 0, 0, v10, v12), v14[5]))
    {
      v11 = 0;
    }

    else
    {
      v11 = CRKErrorWithCodeAndUserInfo(113, 0);
    }

    [(CRKInternetDateProvider *)self callAndRemoveCompletionHandlerWithDate:v14[5] error:v11 task:v4];

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v7 = CRKErrorWithCodeAndUserInfo(113, 0);
    [(CRKInternetDateProvider *)self callAndRemoveCompletionHandlerWithDate:0 error:v7 task:v4];
  }
}

void __61__CRKInternetDateProvider_internetDateRequestDidReceiveTask___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if (a2)
  {
    v6 = [a2 date];
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    *a4 = 1;
  }
}

- (void)storeCompletionHandler:(id)a3 forTask:(id)a4
{
  v6 = a4;
  v8 = MEMORY[0x245D3AAD0](a3);
  v7 = [(CRKInternetDateProvider *)self completionHandlerTable];
  [v7 setObject:v8 forKeyedSubscript:v6];
}

- (void)callAndRemoveCompletionHandlerWithDate:(id)a3 error:(id)a4 task:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CRKInternetDateProvider *)self completionHandlerTable];
  v12 = [v11 objectForKeyedSubscript:v10];

  if (v12)
  {
    (v12)[2](v12, v8, v9);
    v13 = [(CRKInternetDateProvider *)self completionHandlerTable];
    [v13 setObject:0 forKeyedSubscript:v10];

    v14 = [(CRKInternetDateProvider *)self completionHandlerTable];
    v15 = [v14 allKeys];
    v16 = [v15 count];

    if (!v16)
    {
      v17 = [(CRKInternetDateProvider *)self session];
      [v17 invalidateAndCancel];

      [(CRKInternetDateProvider *)self setSession:0];
      if (_CRKLogGeneral_onceToken_38 != -1)
      {
        [CRKInternetDateProvider callAndRemoveCompletionHandlerWithDate:error:task:];
      }

      v18 = _CRKLogGeneral_logObj_38;
      if (os_log_type_enabled(_CRKLogGeneral_logObj_38, OS_LOG_TYPE_DEFAULT))
      {
        *v19 = 0;
        _os_log_impl(&dword_243550000, v18, OS_LOG_TYPE_DEFAULT, "All tasks to fetch the internet date and time have been completed. The session has been invalidated.", v19, 2u);
      }
    }
  }
}

@end