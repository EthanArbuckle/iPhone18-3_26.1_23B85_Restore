@interface CRKInternetDateProvider
- (CRKInternetDateProvider)init;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)callAndRemoveCompletionHandlerWithDate:(id)date error:(id)error task:(id)task;
- (void)fetchInternetDateWithCompletion:(id)completion;
- (void)internetDateRequestDidReceiveTask:(id)task;
- (void)storeCompletionHandler:(id)handler forTask:(id)task;
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

- (void)fetchInternetDateWithCompletion:(id)completion
{
  completionCopy = completion;
  session = [(CRKInternetDateProvider *)self session];

  if (!session)
  {
    ephemeralSessionConfiguration = [MEMORY[0x277CBABC8] ephemeralSessionConfiguration];
    [ephemeralSessionConfiguration setHTTPCookieAcceptPolicy:1];
    [ephemeralSessionConfiguration setHTTPMaximumConnectionsPerHost:1];
    [ephemeralSessionConfiguration setRequestCachePolicy:4];
    [ephemeralSessionConfiguration setAllowsCellularAccess:1];
    v7 = MEMORY[0x277CBABB8];
    mainQueue = [MEMORY[0x277CCABD8] mainQueue];
    v9 = [v7 sessionWithConfiguration:ephemeralSessionConfiguration delegate:self delegateQueue:mainQueue];
    [(CRKInternetDateProvider *)self setSession:v9];
  }

  v13 = [MEMORY[0x277CBEBC0] URLWithString:@"https://www.apple.com"];
  v10 = [MEMORY[0x277CBAB50] requestWithURL:v13];
  [v10 setHTTPMethod:@"HEAD"];
  session2 = [(CRKInternetDateProvider *)self session];
  v12 = [session2 dataTaskWithRequest:v10];

  [(CRKInternetDateProvider *)self storeCompletionHandler:completionCopy forTask:v12];
  [v12 resume];
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  if (error)
  {
    [(CRKInternetDateProvider *)self callAndRemoveCompletionHandlerWithDate:0 error:error task:task];
  }

  else
  {
    [(CRKInternetDateProvider *)self internetDateRequestDidReceiveTask:task];
  }
}

- (void)internetDateRequestDidReceiveTask:(id)task
{
  taskCopy = task;
  response = [taskCopy response];
  v6 = response;
  if (response && [response statusCode] <= 299 && objc_msgSend(v6, "statusCode") > 199)
  {
    allHeaderFields = [v6 allHeaderFields];
    v8 = [allHeaderFields objectForKeyedSubscript:@"Date"];
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

    [(CRKInternetDateProvider *)self callAndRemoveCompletionHandlerWithDate:v14[5] error:v11 task:taskCopy];

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    allHeaderFields = CRKErrorWithCodeAndUserInfo(113, 0);
    [(CRKInternetDateProvider *)self callAndRemoveCompletionHandlerWithDate:0 error:allHeaderFields task:taskCopy];
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

- (void)storeCompletionHandler:(id)handler forTask:(id)task
{
  taskCopy = task;
  v8 = MEMORY[0x245D3AAD0](handler);
  completionHandlerTable = [(CRKInternetDateProvider *)self completionHandlerTable];
  [completionHandlerTable setObject:v8 forKeyedSubscript:taskCopy];
}

- (void)callAndRemoveCompletionHandlerWithDate:(id)date error:(id)error task:(id)task
{
  dateCopy = date;
  errorCopy = error;
  taskCopy = task;
  completionHandlerTable = [(CRKInternetDateProvider *)self completionHandlerTable];
  v12 = [completionHandlerTable objectForKeyedSubscript:taskCopy];

  if (v12)
  {
    (v12)[2](v12, dateCopy, errorCopy);
    completionHandlerTable2 = [(CRKInternetDateProvider *)self completionHandlerTable];
    [completionHandlerTable2 setObject:0 forKeyedSubscript:taskCopy];

    completionHandlerTable3 = [(CRKInternetDateProvider *)self completionHandlerTable];
    allKeys = [completionHandlerTable3 allKeys];
    v16 = [allKeys count];

    if (!v16)
    {
      session = [(CRKInternetDateProvider *)self session];
      [session invalidateAndCancel];

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