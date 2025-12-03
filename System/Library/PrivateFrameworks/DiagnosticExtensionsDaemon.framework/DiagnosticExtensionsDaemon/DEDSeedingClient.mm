@interface DEDSeedingClient
- (BOOL)isLoggedIn;
- (DEDSeedingClient)initWithConfiguration:(id)configuration sessionID:(id)d delegate:(id)delegate;
- (DEDSeedingClientDelegate)uploadDelegate;
- (id)HTTPErrorWithResponse:(id)response withData:(id)data;
- (id)_formEncodedBodyForDictionary:(id)dictionary;
- (id)_keyValuePairsForKey:(id)key value:(id)value;
- (id)_serverErrorFromTask:(id)task;
- (id)baseURL;
- (id)beginUploadWithRequest:(id)request fromFileURL:(id)l error:(id *)error;
- (id)bodyDataForParameters:(id)parameters encoding:(unint64_t)encoding error:(id *)error;
- (id)contentTypeForParameterEncoding:(unint64_t)encoding;
- (id)filePromiseURLForPromise:(id)promise;
- (id)filerURL;
- (id)loginWithTokenURL;
- (id)newFilePromiseURL;
- (id)newFilerTokenURL;
- (id)ongoingUploads;
- (id)promiseConfiguration;
- (id)seedingURL;
- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error;
- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task didSendBodyData:(int64_t)data totalBytesSent:(int64_t)sent totalBytesExpectedToSend:(int64_t)send;
- (void)URLSessionDidFinishEventsForBackgroundURLSession:(id)session;
- (void)cancelPromise:(id)promise withSuccess:(id)success error:(id)error;
- (void)cleanup;
- (void)dataForURL:(id)l success:(id)success error:(id)error;
- (void)dataForURLRequest:(id)request success:(id)success error:(id)error;
- (void)deleteResourceAtURL:(id)l success:(id)success error:(id)error;
- (void)getFilerTokenForPromise:(id)promise withSuccess:(id)success error:(id)error;
- (void)getPromise:(id)promise withSuccess:(id)success error:(id)error;
- (void)jsonForURL:(id)l success:(id)success error:(id)error;
- (void)jsonForURLRequest:(id)request success:(id)success error:(id)error;
- (void)makePromiseWithUUID:(id)d extensionID:(id)iD success:(id)success error:(id)error;
- (void)performHTTPMethod:(id)method toURL:(id)l parameters:(id)parameters encoding:(unint64_t)encoding success:(id)success error:(id)error;
- (void)seedingLoginWithSuccess:(id)success error:(id)error;
- (void)sendFile:(id)file promise:(id)promise withCompletion:(id)completion;
- (void)updatePromise:(id)promise withAttachmentGroup:(id)group status:(int64_t)status success:(id)success error:(id)error;
- (void)updatePromise:(id)promise withFilename:(id)filename size:(int64_t)size extensionID:(id)d status:(int64_t)status success:(id)success error:(id)error;
- (void)updatePromise:(id)promise withFilename:(id)filename size:(int64_t)size status:(int64_t)status success:(id)success error:(id)error;
@end

@implementation DEDSeedingClient

- (DEDSeedingClient)initWithConfiguration:(id)configuration sessionID:(id)d delegate:(id)delegate
{
  v41[2] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  dCopy = d;
  delegateCopy = delegate;
  v39.receiver = self;
  v39.super_class = DEDSeedingClient;
  v11 = [(DEDSeedingClient *)&v39 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_uploadDelegate, delegateCopy);
    v13 = [configurationCopy copy];
    config = v12->_config;
    v12->_config = v13;

    objc_storeStrong(&v12->_bugSessionIdentifier, d);
    v15 = +[DEDConfiguration sharedInstance];
    v16 = os_log_create([v15 loggingSubsystem], "seeding-client");
    log = v12->_log;
    v12->_log = v16;

    if (!v12->_config)
    {
      v18 = v12->_log;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [(DEDSeedingClient *)&v12->_bugSessionIdentifier initWithConfiguration:v18 sessionID:v19 delegate:v20, v21, v22, v23, v24];
      }
    }

    v40[0] = @"X-SP-API";
    0x4010666660000000 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.1f", 0x4010666660000000];
    v40[1] = @"User-Agent";
    v41[0] = 0x4010666660000000;
    v41[1] = @"Feedback Assistant/remote";
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:2];

    v27 = v12->_log;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_248AD7000, v27, OS_LOG_TYPE_INFO, "Using ephemeral url session configuration", buf, 2u);
    }

    ephemeralSessionConfiguration = [MEMORY[0x277CCAD38] ephemeralSessionConfiguration];
    [ephemeralSessionConfiguration setHTTPAdditionalHeaders:v26];
    [ephemeralSessionConfiguration setUpDataUsageWithConfiguration:configurationCopy];
    v29 = [MEMORY[0x277CCAD30] sessionWithConfiguration:ephemeralSessionConfiguration];
    foregroundSession = v12->_foregroundSession;
    v12->_foregroundSession = v29;

    dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"ded:%@", dCopy];
    v32 = [MEMORY[0x277CCAD38] backgroundSessionConfigurationWithIdentifier:dCopy];
    v33 = [v32 copy];

    [v33 setHTTPAdditionalHeaders:v26];
    [v33 setUpDataUsageWithConfiguration:configurationCopy];
    v34 = [MEMORY[0x277CCAD30] sessionWithConfiguration:v33 delegate:v12 delegateQueue:0];
    backgroundSession = v12->_backgroundSession;
    v12->_backgroundSession = v34;
  }

  v36 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)seedingLoginWithSuccess:(id)success error:(id)error
{
  v18[1] = *MEMORY[0x277D85DE8];
  successCopy = success;
  errorCopy = error;
  if ([(DEDSeedingClient *)self isLoggedIn])
  {
    successCopy[2](successCopy);
  }

  else
  {
    loginWithTokenURL = [(DEDSeedingClient *)self loginWithTokenURL];
    v17 = @"device_token";
    config = [(DEDSeedingClient *)self config];
    seedingDeviceToken = [config seedingDeviceToken];
    v18[0] = seedingDeviceToken;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __50__DEDSeedingClient_seedingLoginWithSuccess_error___block_invoke;
    v15[3] = &unk_278F66EC0;
    v15[4] = self;
    v16 = successCopy;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __50__DEDSeedingClient_seedingLoginWithSuccess_error___block_invoke_49;
    v13[3] = &unk_278F66EE8;
    v13[4] = self;
    v14 = errorCopy;
    [(DEDSeedingClient *)self postToURL:loginWithTokenURL parameters:v11 encoding:2 success:v15 error:v13];
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __50__DEDSeedingClient_seedingLoginWithSuccess_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_248AD7000, v2, OS_LOG_TYPE_DEFAULT, "logged in", v4, 2u);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __50__DEDSeedingClient_seedingLoginWithSuccess_error___block_invoke_49(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __50__DEDSeedingClient_seedingLoginWithSuccess_error___block_invoke_49_cold_1();
    }
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)sendFile:(id)file promise:(id)promise withCompletion:(id)completion
{
  fileCopy = file;
  promiseCopy = promise;
  completionCopy = completion;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __52__DEDSeedingClient_sendFile_promise_withCompletion___block_invoke;
  v17[3] = &unk_278F65AF8;
  v17[4] = self;
  v18 = promiseCopy;
  v19 = fileCopy;
  v20 = completionCopy;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __52__DEDSeedingClient_sendFile_promise_withCompletion___block_invoke_76;
  v14[3] = &unk_278F66F38;
  v14[4] = self;
  v15 = v18;
  v16 = v20;
  v11 = v20;
  v12 = v18;
  v13 = fileCopy;
  [(DEDSeedingClient *)self seedingLoginWithSuccess:v17 error:v14];
}

void __52__DEDSeedingClient_sendFile_promise_withCompletion___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __52__DEDSeedingClient_sendFile_promise_withCompletion___block_invoke_2;
  v14[3] = &unk_278F66F10;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  *&v5 = v4;
  *(&v5 + 1) = *v2;
  v10 = v5;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v15 = v10;
  v16 = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__DEDSeedingClient_sendFile_promise_withCompletion___block_invoke_74;
  v11[3] = &unk_278F66F38;
  v9 = *(a1 + 40);
  v11[4] = *(a1 + 32);
  v12 = v9;
  v13 = *(a1 + 56);
  [v3 getFilerTokenForPromise:v4 withSuccess:v14 error:v11];
}

void __52__DEDSeedingClient_sendFile_promise_withCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v5 = [v4 entityID];
  v6 = [*(a1 + 32) UUIDString];
  v7 = [v3 stringWithFormat:@"%@_-_%@", v5, v6];

  v8 = MEMORY[0x277CCAB70];
  v9 = [*(a1 + 40) filerURL];
  v10 = [v8 requestWithURL:v9];

  [v10 setHTTPMethod:@"POST"];
  v11 = [v4 token];
  [v10 setValue:v11 forHTTPHeaderField:@"Auth_Token"];

  v12 = [v4 dsid];

  [v10 setValue:v12 forHTTPHeaderField:@"DS_Person_ID"];
  [v10 setValue:v7 forHTTPHeaderField:@"Form_Response_ID"];
  [v10 setValue:@"application/gzip" forHTTPHeaderField:@"Content-Type"];
  v13 = [*(a1 + 40) config];
  [v10 setAllowsCellularAccess:{objc_msgSend(v13, "allowsCellularUpload")}];

  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v29 = 0;
  v16 = [v14 beginUploadWithRequest:v10 fromFileURL:v15 error:&v29];
  v17 = v29;
  v18 = [*(a1 + 40) log];
  v19 = v18;
  if (v16)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v16 taskIdentifier];
      v21 = [*(a1 + 32) UUIDString];
      v22 = [*(a1 + 40) config];
      v23 = [v22 allowsCellularUpload];
      *buf = 134218498;
      v31 = v20;
      v32 = 2114;
      v33 = v21;
      v34 = 1024;
      v35 = v23;
      _os_log_impl(&dword_248AD7000, v19, OS_LOG_TYPE_DEFAULT, "created upload task [%lu] for promise UUID [%{public}@] with cellular access? [%i]", buf, 0x1Cu);
    }

    v24 = [*(a1 + 40) log];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [v10 URL];
      v26 = [v10 allHTTPHeaderFields];
      *buf = 138412546;
      v31 = v25;
      v32 = 2112;
      v33 = v26;
      _os_log_impl(&dword_248AD7000, v24, OS_LOG_TYPE_DEFAULT, "Uploading to [%@] with headers [%@]", buf, 0x16u);
    }

    v27 = *(*(a1 + 56) + 16);
  }

  else
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      __52__DEDSeedingClient_sendFile_promise_withCompletion___block_invoke_2_cold_1((a1 + 32), v17);
    }

    v27 = *(*(a1 + 56) + 16);
  }

  v27();

  v28 = *MEMORY[0x277D85DE8];
}

void __52__DEDSeedingClient_sendFile_promise_withCompletion___block_invoke_74(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __52__DEDSeedingClient_sendFile_promise_withCompletion___block_invoke_74_cold_1(a1);
    }
  }

  (*(*(a1 + 48) + 16))();
}

void __52__DEDSeedingClient_sendFile_promise_withCompletion___block_invoke_76(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __52__DEDSeedingClient_sendFile_promise_withCompletion___block_invoke_76_cold_1(a1);
    }
  }

  (*(*(a1 + 48) + 16))();
}

- (void)getFilerTokenForPromise:(id)promise withSuccess:(id)success error:(id)error
{
  v41 = *MEMORY[0x277D85DE8];
  successCopy = success;
  errorCopy = error;
  v10 = MEMORY[0x277CCABB0];
  promiseCopy = promise;
  config = [(DEDSeedingClient *)self config];
  v13 = [v10 numberWithInteger:{objc_msgSend(config, "seedingSubmissionID")}];

  uUIDString = [promiseCopy UUIDString];

  v15 = MEMORY[0x277CCACA8];
  config2 = [(DEDSeedingClient *)self config];
  seedingSubmissionType = [config2 seedingSubmissionType];
  v18 = "Unknown";
  if (seedingSubmissionType == 2)
  {
    v18 = "FFU";
  }

  if (seedingSubmissionType == 1)
  {
    v19 = "FR";
  }

  else
  {
    v19 = v18;
  }

  v20 = [v15 stringWithUTF8String:v19];

  config3 = [(DEDSeedingClient *)self config];

  v22 = [(DEDSeedingClient *)self log];
  v23 = v22;
  if (config3 && v13 && uUIDString && v20)
  {
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [DEDSeedingClient getFilerTokenForPromise:withSuccess:error:];
    }

    v31[0] = @"Form_Response_ID";
    v31[1] = @"Promise_UUID";
    v32[0] = v13;
    v32[1] = uUIDString;
    v31[2] = @"Token_Type";
    v32[2] = v20;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:3];
    newFilerTokenURL = [(DEDSeedingClient *)self newFilerTokenURL];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __62__DEDSeedingClient_getFilerTokenForPromise_withSuccess_error___block_invoke;
    v28[3] = &unk_278F66F60;
    v28[4] = self;
    v29 = successCopy;
    v30 = errorCopy;
    [(DEDSeedingClient *)self postToURL:newFilerTokenURL parameters:v24 encoding:1 success:v28 error:v30];
  }

  else
  {
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      config4 = [(DEDSeedingClient *)self config];
      *buf = 138544130;
      v34 = config4;
      v35 = 2114;
      v36 = v13;
      v37 = 2114;
      v38 = uUIDString;
      v39 = 2114;
      v40 = v20;
      _os_log_error_impl(&dword_248AD7000, v23, OS_LOG_TYPE_ERROR, "Cannot get Filer Token. One of these is nil: Config: [%{public}@] Form_Response_ID:[%{public}@] UUID:[%{public}@] Type:[%{public}@]", buf, 0x2Au);
    }

    v24 = [MEMORY[0x277CCA9B8] errorWithDomain:@"FBAFilerErrorDomain" code:3 userInfo:0];
    (*(errorCopy + 2))(errorCopy, v24);
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __62__DEDSeedingClient_getFilerTokenForPromise_withSuccess_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v19 = 0;
  v3 = [MEMORY[0x277CCAAA0] JSONObjectWithData:a2 options:0 error:&v19];
  v4 = v19;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v3;
    v6 = [v5 objectForKeyedSubscript:@"error_code"];
    v7 = [v5 objectForKeyedSubscript:@"token"];
    if ([v6 isEqual:&unk_285B89D78])
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8 || ![v7 length])
    {
      v16 = [*(a1 + 32) log];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __62__DEDSeedingClient_getFilerTokenForPromise_withSuccess_error___block_invoke_cold_1(v6);
      }

      v17 = *(a1 + 48);
      v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"FBAFilerErrorDomain" code:objc_msgSend(v6 userInfo:{"integerValue"), 0}];
      (*(v17 + 16))(v17, v9);
    }

    else
    {
      v9 = [v5 objectForKeyedSubscript:@"dsid"];
      v10 = [DEDSeedingFilerToken alloc];
      v11 = MEMORY[0x277CCABB0];
      v18 = [*(a1 + 32) config];
      v12 = [v11 numberWithInteger:{objc_msgSend(v18, "seedingSubmissionID")}];
      v13 = [*(a1 + 32) config];
      v14 = -[DEDSeedingFilerToken initWithEntityID:type:token:dsid:](v10, "initWithEntityID:type:token:dsid:", v12, [v13 seedingSubmissionType], v7, v9);

      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    v15 = *(a1 + 48);
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"FBAFilerErrorDomain" code:2 userInfo:0];
    (*(v15 + 16))(v15, v5);
  }
}

- (void)dataForURLRequest:(id)request success:(id)success error:(id)error
{
  v32 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  successCopy = success;
  errorCopy = error;
  v11 = [(DEDSeedingClient *)self log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    hTTPMethod = [requestCopy HTTPMethod];
    v13 = [requestCopy URL];
    path = [v13 path];
    *buf = 138543618;
    v29 = hTTPMethod;
    v30 = 2114;
    v31 = path;
    _os_log_impl(&dword_248AD7000, v11, OS_LOG_TYPE_INFO, "-> %{public}@ %{public}@", buf, 0x16u);
  }

  v15 = CACurrentMediaTime();
  foregroundSession = [(DEDSeedingClient *)self foregroundSession];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __52__DEDSeedingClient_dataForURLRequest_success_error___block_invoke;
  v22[3] = &unk_278F66FD8;
  v23 = requestCopy;
  selfCopy = self;
  v27 = v15;
  v25 = errorCopy;
  v26 = successCopy;
  v17 = successCopy;
  v18 = errorCopy;
  v19 = requestCopy;
  v20 = [foregroundSession dataTaskWithRequest:v19 completionHandler:v22];

  [v20 resume];
  v21 = *MEMORY[0x277D85DE8];
}

void __52__DEDSeedingClient_dataForURLRequest_success_error___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v25 = a2;
  v7 = a3;
  v8 = a4;
  v9 = v7;
  v10 = [DEDRequestRecord alloc];
  v11 = *(a1 + 32);
  v12 = [*(a1 + 40) foregroundSession];
  v13 = [*(a1 + 40) foregroundSession];
  v14 = [v13 configuration];
  v15 = [v14 HTTPCookieStorage];
  v16 = [v15 cookies];
  v17 = [DEDRequestRecord initWithRequest:v10 response:"initWithRequest:response:session:cookies:body:error:" session:v11 cookies:v9 body:v12 error:v16];

  v18 = v17;
  v19 = +[DEDRequestAdvertiser sharedInstance];
  [v19 broadcastRecord:v17];

  if (v8)
  {
    v20 = _os_activity_create(&dword_248AD7000, "HTTP Error", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__DEDSeedingClient_dataForURLRequest_success_error___block_invoke_2;
    block[3] = &unk_278F66F88;
    block[4] = *(a1 + 40);
    v33 = v9;
    v34 = v25;
    v35 = *(a1 + 32);
    v36 = v8;
    v38 = *(a1 + 64);
    v37 = *(a1 + 48);
    os_activity_apply(v20, block);

    v21 = v33;
LABEL_7:

    goto LABEL_8;
  }

  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%li", objc_msgSend(v9, "statusCode")];
  v23 = [v22 characterAtIndex:0];

  if (v23 != 50)
  {
    v20 = _os_activity_create(&dword_248AD7000, "HTTP Error", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __52__DEDSeedingClient_dataForURLRequest_success_error___block_invoke_3;
    v26[3] = &unk_278F66FB0;
    v26[4] = *(a1 + 40);
    v27 = v9;
    v28 = v25;
    v29 = *(a1 + 32);
    v31 = *(a1 + 64);
    v30 = *(a1 + 48);
    os_activity_apply(v20, v26);

    v21 = v27;
    goto LABEL_7;
  }

  +[DEDFeedbackAnalytics logEventWithRequest:httpStatusCode:nsurlErrorCode:success:startedAt:endedAt:](DEDFeedbackAnalytics, "logEventWithRequest:httpStatusCode:nsurlErrorCode:success:startedAt:endedAt:", *(a1 + 32), [v9 statusCode], 0, 1, *(a1 + 64), CACurrentMediaTime());
  v24 = *(a1 + 56);
  if (v24)
  {
    (*(v24 + 16))(v24, v25);
  }

LABEL_8:
}

uint64_t __52__DEDSeedingClient_dataForURLRequest_success_error___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) HTTPErrorWithResponse:*(a1 + 40) withData:*(a1 + 48)];
  +[DEDFeedbackAnalytics logEventWithRequest:httpStatusCode:nsurlErrorCode:success:startedAt:endedAt:](DEDFeedbackAnalytics, "logEventWithRequest:httpStatusCode:nsurlErrorCode:success:startedAt:endedAt:", *(a1 + 56), [*(a1 + 40) statusCode], objc_msgSend(*(a1 + 64), "code"), 0, *(a1 + 80), CACurrentMediaTime());
  result = *(a1 + 72);
  if (result)
  {
    v4 = *(a1 + 64);
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void __52__DEDSeedingClient_dataForURLRequest_success_error___block_invoke_3(uint64_t a1)
{
  v3 = [*(a1 + 32) HTTPErrorWithResponse:*(a1 + 40) withData:*(a1 + 48)];
  +[DEDFeedbackAnalytics logEventWithRequest:httpStatusCode:nsurlErrorCode:success:startedAt:endedAt:](DEDFeedbackAnalytics, "logEventWithRequest:httpStatusCode:nsurlErrorCode:success:startedAt:endedAt:", *(a1 + 56), [*(a1 + 40) statusCode], 0, 0, *(a1 + 72), CACurrentMediaTime());
  v2 = *(a1 + 64);
  if (v2)
  {
    (*(v2 + 16))(v2, v3);
  }
}

- (void)jsonForURLRequest:(id)request success:(id)success error:(id)error
{
  successCopy = success;
  errorCopy = error;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __52__DEDSeedingClient_jsonForURLRequest_success_error___block_invoke;
  v14[3] = &unk_278F67000;
  v14[4] = self;
  v15 = successCopy;
  v16 = errorCopy;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __52__DEDSeedingClient_jsonForURLRequest_success_error___block_invoke_104;
  v12[3] = &unk_278F67028;
  v13 = v16;
  v10 = v16;
  v11 = successCopy;
  [(DEDSeedingClient *)self dataForURLRequest:request success:v14 error:v12];
}

void __52__DEDSeedingClient_jsonForURLRequest_success_error___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40))
  {
    v8 = 0;
    v3 = [MEMORY[0x277CCAAA0] JSONObjectWithData:a2 options:0 error:&v8];
    v4 = v8;
    if (v4)
    {
      v5 = [*(a1 + 32) log];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __52__DEDSeedingClient_jsonForURLRequest_success_error___block_invoke_cold_1();
      }

      v6 = *(a1 + 48);
      if (!v6)
      {
        goto LABEL_9;
      }

      v7 = *(v6 + 16);
    }

    else
    {
      v7 = *(*(a1 + 40) + 16);
    }

    v7();
LABEL_9:
  }
}

uint64_t __52__DEDSeedingClient_jsonForURLRequest_success_error___block_invoke_104(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)dataForURL:(id)l success:(id)success error:(id)error
{
  v8 = MEMORY[0x277CCAD20];
  errorCopy = error;
  successCopy = success;
  v11 = [v8 requestWithURL:l];
  [(DEDSeedingClient *)self dataForURLRequest:v11 success:successCopy error:errorCopy];
}

- (void)jsonForURL:(id)l success:(id)success error:(id)error
{
  v8 = MEMORY[0x277CCAD20];
  errorCopy = error;
  successCopy = success;
  v11 = [v8 requestWithURL:l];
  [(DEDSeedingClient *)self jsonForURLRequest:v11 success:successCopy error:errorCopy];
}

- (void)deleteResourceAtURL:(id)l success:(id)success error:(id)error
{
  v8 = MEMORY[0x277CCAB70];
  errorCopy = error;
  successCopy = success;
  v11 = [v8 requestWithURL:l];
  [v11 setHTTPMethod:@"DELETE"];
  [(DEDSeedingClient *)self dataForURLRequest:v11 success:successCopy error:errorCopy];
}

- (void)performHTTPMethod:(id)method toURL:(id)l parameters:(id)parameters encoding:(unint64_t)encoding success:(id)success error:(id)error
{
  successCopy = success;
  errorCopy = error;
  v16 = MEMORY[0x277CCAB70];
  parametersCopy = parameters;
  methodCopy = method;
  v19 = [v16 requestWithURL:l];
  [v19 setHTTPMethod:methodCopy];

  v28 = 0;
  v20 = [(DEDSeedingClient *)self bodyDataForParameters:parametersCopy encoding:encoding error:&v28];

  v21 = v28;
  if (v20)
  {
    [v19 setHTTPBody:v20];
    v22 = [(DEDSeedingClient *)self contentTypeForParameterEncoding:encoding];
    [v19 setValue:v22 forHTTPHeaderField:@"Content-Type"];
  }

  if (v21)
  {
    v23 = [(DEDSeedingClient *)self log];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [DEDSeedingClient performHTTPMethod:toURL:parameters:encoding:success:error:];
    }

    v24 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __78__DEDSeedingClient_performHTTPMethod_toURL_parameters_encoding_success_error___block_invoke;
    block[3] = &unk_278F653F8;
    v27 = errorCopy;
    v26 = v21;
    dispatch_async(v24, block);
  }

  else
  {
    [(DEDSeedingClient *)self dataForURLRequest:v19 success:successCopy error:errorCopy];
  }
}

uint64_t __78__DEDSeedingClient_performHTTPMethod_toURL_parameters_encoding_success_error___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (id)beginUploadWithRequest:(id)request fromFileURL:(id)l error:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  lCopy = l;
  v22 = 0;
  v10 = [lCopy checkResourceIsReachableAndReturnError:&v22];
  v11 = v22;
  v12 = v11;
  if (!v10 || v11)
  {
    v18 = [(DEDSeedingClient *)self log];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      [DEDSeedingClient beginUploadWithRequest:lCopy fromFileURL:v12 error:v18];
    }

    if (error)
    {
      v19 = v12;
      v14 = 0;
      *error = v12;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    backgroundSession = [(DEDSeedingClient *)self backgroundSession];
    v14 = [backgroundSession uploadTaskWithRequest:requestCopy fromFile:lCopy];

    v15 = [(DEDSeedingClient *)self log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      taskIdentifier = [v14 taskIdentifier];
      bugSessionIdentifier = [(DEDSeedingClient *)self bugSessionIdentifier];
      *buf = 134218242;
      v24 = taskIdentifier;
      v25 = 2114;
      v26 = bugSessionIdentifier;
      _os_log_impl(&dword_248AD7000, v15, OS_LOG_TYPE_DEFAULT, "Beginning upload task with identifier [%lu] for session [%{public}@]", buf, 0x16u);
    }

    [v14 resume];
  }

  v20 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)ongoingUploads
{
  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:5];
  backgroundSession = [(DEDSeedingClient *)self backgroundSession];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __34__DEDSeedingClient_ongoingUploads__block_invoke;
  v13[3] = &unk_278F67050;
  v6 = v4;
  v14 = v6;
  v16 = &v17;
  v7 = v3;
  v15 = v7;
  [backgroundSession getAllTasksWithCompletionHandler:v13];

  v8 = dispatch_time(0, 2000000000);
  dispatch_group_wait(v7, v8);
  if ((v18[3] & 1) == 0)
  {
    v9 = [(DEDSeedingClient *)self log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(DEDSeedingClient *)v9 ongoingUploads];
    }
  }

  v10 = v15;
  v11 = v6;

  _Block_object_dispose(&v17, 8);

  return v11;
}

void __34__DEDSeedingClient_ongoingUploads__block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) addObjectsFromArray:a2];
  *(*(*(a1 + 48) + 8) + 24) = 1;
  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

- (void)cleanup
{
  v22 = *MEMORY[0x277D85DE8];
  backgroundSession = [(DEDSeedingClient *)self backgroundSession];
  [backgroundSession invalidateAndCancel];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  foregroundSession = [(DEDSeedingClient *)self foregroundSession];
  configuration = [foregroundSession configuration];
  hTTPCookieStorage = [configuration HTTPCookieStorage];
  cookies = [hTTPCookieStorage cookies];

  v8 = [cookies countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(cookies);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        foregroundSession2 = [(DEDSeedingClient *)self foregroundSession];
        configuration2 = [foregroundSession2 configuration];
        hTTPCookieStorage2 = [configuration2 HTTPCookieStorage];
        [hTTPCookieStorage2 deleteCookie:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [cookies countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)makePromiseWithUUID:(id)d extensionID:(id)iD success:(id)success error:(id)error
{
  v39 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  successCopy = success;
  errorCopy = error;
  v14 = objc_alloc(MEMORY[0x277CBEB38]);
  promiseConfiguration = [(DEDSeedingClient *)self promiseConfiguration];
  v16 = [v14 initWithDictionary:promiseConfiguration];

  uUIDString = [dCopy UUIDString];
  [v16 setObject:uUIDString forKeyedSubscript:@"uuid"];

  if (iDCopy)
  {
    [v16 setObject:iDCopy forKeyedSubscript:@"de_bundle_identifier"];
  }

  v18 = [(DEDSeedingClient *)self log];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString2 = [dCopy UUIDString];
    *buf = 138543618;
    v36 = uUIDString2;
    v37 = 2114;
    v38 = iDCopy;
    _os_log_impl(&dword_248AD7000, v18, OS_LOG_TYPE_DEFAULT, "will make promise with uuid: [%{public}@] extension: [%{public}@]", buf, 0x16u);
  }

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __66__DEDSeedingClient_makePromiseWithUUID_extensionID_success_error___block_invoke;
  v29[3] = &unk_278F670A0;
  v29[4] = self;
  v30 = v16;
  v31 = dCopy;
  v32 = iDCopy;
  v33 = successCopy;
  v34 = errorCopy;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __66__DEDSeedingClient_makePromiseWithUUID_extensionID_success_error___block_invoke_125;
  v26[3] = &unk_278F66F38;
  v26[4] = self;
  v27 = v30;
  v28 = v34;
  v20 = v34;
  v21 = v30;
  v22 = successCopy;
  v23 = iDCopy;
  v24 = dCopy;
  [(DEDSeedingClient *)self seedingLoginWithSuccess:v29 error:v26];

  v25 = *MEMORY[0x277D85DE8];
}

void __66__DEDSeedingClient_makePromiseWithUUID_extensionID_success_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 newFilePromiseURL];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__DEDSeedingClient_makePromiseWithUUID_extensionID_success_error___block_invoke_2;
  v7[3] = &unk_278F67078;
  v4 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __66__DEDSeedingClient_makePromiseWithUUID_extensionID_success_error___block_invoke_124;
  v5[3] = &unk_278F66EE8;
  v5[4] = *(a1 + 32);
  v6 = *(a1 + 72);
  [v2 postToURL:v3 parameters:v4 encoding:2 success:v7 error:v5];
}

uint64_t __66__DEDSeedingClient_makePromiseWithUUID_extensionID_success_error___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 40) UUIDString];
    v4 = *(a1 + 48);
    v7 = 138543618;
    v8 = v3;
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&dword_248AD7000, v2, OS_LOG_TYPE_INFO, "did make promise with uuid: [%{public}@] extension: [%{public}@]", &v7, 0x16u);
  }

  result = *(a1 + 56);
  if (result)
  {
    result = (*(result + 16))();
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void __66__DEDSeedingClient_makePromiseWithUUID_extensionID_success_error___block_invoke_124(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __66__DEDSeedingClient_makePromiseWithUUID_extensionID_success_error___block_invoke_124_cold_1(v3);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void __66__DEDSeedingClient_makePromiseWithUUID_extensionID_success_error___block_invoke_125(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __66__DEDSeedingClient_makePromiseWithUUID_extensionID_success_error___block_invoke_125_cold_1(a1, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    (*(v11 + 16))(v11, v3);
  }
}

- (void)getPromise:(id)promise withSuccess:(id)success error:(id)error
{
  promiseCopy = promise;
  successCopy = success;
  errorCopy = error;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __49__DEDSeedingClient_getPromise_withSuccess_error___block_invoke;
  v17[3] = &unk_278F670F0;
  v17[4] = self;
  v18 = promiseCopy;
  v19 = successCopy;
  v20 = errorCopy;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __49__DEDSeedingClient_getPromise_withSuccess_error___block_invoke_4;
  v14[3] = &unk_278F66F38;
  v14[4] = self;
  v15 = v18;
  v16 = v20;
  v11 = v20;
  v12 = v18;
  v13 = successCopy;
  [(DEDSeedingClient *)self seedingLoginWithSuccess:v17 error:v14];
}

void __49__DEDSeedingClient_getPromise_withSuccess_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 filePromiseURLForPromise:*(a1 + 40)];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__DEDSeedingClient_getPromise_withSuccess_error___block_invoke_2;
  v6[3] = &unk_278F670C8;
  v7 = *(a1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__DEDSeedingClient_getPromise_withSuccess_error___block_invoke_3;
  v4[3] = &unk_278F67028;
  v5 = *(a1 + 56);
  [v2 jsonForURL:v3 success:v6 error:v4];
}

uint64_t __49__DEDSeedingClient_getPromise_withSuccess_error___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __49__DEDSeedingClient_getPromise_withSuccess_error___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __49__DEDSeedingClient_getPromise_withSuccess_error___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __49__DEDSeedingClient_getPromise_withSuccess_error___block_invoke_4_cold_1(a1);
    }
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)updatePromise:(id)promise withAttachmentGroup:(id)group status:(int64_t)status success:(id)success error:(id)error
{
  errorCopy = error;
  successCopy = success;
  groupCopy = group;
  promiseCopy = promise;
  archiveName = [groupCopy archiveName];
  totalFileSize = [groupCopy totalFileSize];
  integerValue = [totalFileSize integerValue];

  extensionID = [groupCopy extensionID];

  [(DEDSeedingClient *)self updatePromise:promiseCopy withFilename:archiveName size:integerValue extensionID:extensionID status:status success:successCopy error:errorCopy];
}

- (void)updatePromise:(id)promise withFilename:(id)filename size:(int64_t)size status:(int64_t)status success:(id)success error:(id)error
{
  filenameCopy = filename;
  errorCopy = error;
  successCopy = success;
  promiseCopy = promise;
  v18 = [(DEDSeedingClient *)self log];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [DEDSeedingClient updatePromise:filenameCopy withFilename:v18 size:? status:? success:? error:?];
  }

  [(DEDSeedingClient *)self updatePromise:promiseCopy withFilename:filenameCopy size:size extensionID:0 status:status success:successCopy error:errorCopy];
}

- (void)updatePromise:(id)promise withFilename:(id)filename size:(int64_t)size extensionID:(id)d status:(int64_t)status success:(id)success error:(id)error
{
  v55 = *MEMORY[0x277D85DE8];
  promiseCopy = promise;
  filenameCopy = filename;
  dCopy = d;
  successCopy = success;
  errorCopy = error;
  v20 = [(DEDSeedingClient *)self log];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v30 = errorCopy;
    v31 = successCopy;
    uUIDString = [promiseCopy UUIDString];
    v22 = dCopy;
    v23 = filenameCopy;
    if (status <= 5)
    {
      if (status > 2)
      {
        if (status == 3)
        {
          v24 = "uploading";
        }

        else if (status == 4)
        {
          v24 = "uploaded";
        }

        else
        {
          v24 = "received";
        }

        goto LABEL_31;
      }

      if (!status)
      {
        v24 = "user_canceled";
        goto LABEL_31;
      }

      if (status == 1)
      {
        v24 = "promised";
        goto LABEL_31;
      }

      if (status != 2)
      {
        goto LABEL_30;
      }

      v24 = "collected";
    }

    else
    {
      if (status > 12)
      {
        if (status <= 14)
        {
          if (status == 13)
          {
            v24 = "deleted";
          }

          else
          {
            v24 = "user_delete_requested";
          }

          goto LABEL_31;
        }

        if (status == 15)
        {
          v24 = "user_deleted";
          goto LABEL_31;
        }

        if (status == 99)
        {
          v24 = "upload_error";
          goto LABEL_31;
        }

LABEL_30:
        v24 = "Unknown";
        goto LABEL_31;
      }

      if (status == 6)
      {
        v24 = "virus_scanning";
        goto LABEL_31;
      }

      if (status == 7)
      {
        v24 = "analyzing:";
        goto LABEL_31;
      }

      if (status != 8)
      {
        goto LABEL_30;
      }

      v24 = "done";
    }

LABEL_31:
    v25 = [MEMORY[0x277CCABB0] numberWithLongLong:size];
    *buf = 138544386;
    v46 = uUIDString;
    v47 = 2114;
    v48 = v22;
    v49 = 2082;
    v50 = v24;
    v51 = 2114;
    filenameCopy = v23;
    dCopy = v22;
    v52 = filenameCopy;
    v53 = 2114;
    v54 = v25;
    _os_log_impl(&dword_248AD7000, v20, OS_LOG_TYPE_DEFAULT, "Will update [%{public}@ | %{public}@ ] with status [%{public}s] filename [%{public}@] file size [%{public}@]", buf, 0x34u);

    errorCopy = v30;
    successCopy = v31;
  }

  if (promiseCopy)
  {
    if (status <= 5)
    {
      if (status > 2)
      {
        if (status == 3)
        {
          v26 = "uploading";
        }

        else if (status == 4)
        {
          v26 = "uploaded";
        }

        else
        {
          v26 = "received";
        }

        goto LABEL_64;
      }

      if (!status)
      {
        v26 = "user_canceled";
        goto LABEL_64;
      }

      if (status == 1)
      {
        v26 = "promised";
        goto LABEL_64;
      }

      if (status != 2)
      {
        goto LABEL_63;
      }

      v26 = "collected";
    }

    else
    {
      if (status > 12)
      {
        if (status <= 14)
        {
          if (status == 13)
          {
            v26 = "deleted";
          }

          else
          {
            v26 = "user_delete_requested";
          }

          goto LABEL_64;
        }

        if (status == 15)
        {
          v26 = "user_deleted";
          goto LABEL_64;
        }

        if (status == 99)
        {
          v26 = "upload_error";
          goto LABEL_64;
        }

LABEL_63:
        v26 = "Unknown";
        goto LABEL_64;
      }

      if (status == 6)
      {
        v26 = "virus_scanning";
        goto LABEL_64;
      }

      if (status == 7)
      {
        v26 = "analyzing:";
        goto LABEL_64;
      }

      if (status != 8)
      {
        goto LABEL_63;
      }

      v26 = "done";
    }

LABEL_64:
    v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:v26];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __85__DEDSeedingClient_updatePromise_withFilename_size_extensionID_status_success_error___block_invoke;
    v36[3] = &unk_278F67140;
    v37 = filenameCopy;
    v38 = dCopy;
    sizeCopy = size;
    v39 = promiseCopy;
    selfCopy = self;
    v41 = v28;
    v42 = successCopy;
    v43 = errorCopy;
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __85__DEDSeedingClient_updatePromise_withFilename_size_extensionID_status_success_error___block_invoke_141;
    v32[3] = &unk_278F67168;
    v32[4] = self;
    v33 = v39;
    v34 = v41;
    v35 = v43;
    v27 = v41;
    [(DEDSeedingClient *)self seedingLoginWithSuccess:v36 error:v32];

    goto LABEL_65;
  }

  v27 = [(DEDSeedingClient *)self log];
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    [DEDSeedingClient updatePromise:withFilename:size:extensionID:status:success:error:];
  }

LABEL_65:

  v29 = *MEMORY[0x277D85DE8];
}

void __85__DEDSeedingClient_updatePromise_withFilename_size_extensionID_status_success_error___block_invoke(uint64_t a1)
{
  v33[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:6];
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4)
  {
    [v2 setObject:v4 forKeyedSubscript:@"name"];
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    [v3 setObject:v5 forKeyedSubscript:@"de_bundle_identifier"];
  }

  v6 = [MEMORY[0x277CCABB0] numberWithLongLong:*(a1 + 88)];
  [v3 setObject:v6 forKeyedSubscript:@"size"];

  v7 = [*(a1 + 48) UUIDString];
  [v3 setObject:v7 forKeyedSubscript:@"uuid"];

  v8 = [*(a1 + 56) promiseConfiguration];
  [v3 addEntriesFromDictionary:v8];

  v9 = *(a1 + 64);
  v32[0] = @"status";
  v32[1] = @"options";
  v33[0] = v9;
  v33[1] = v3;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
  v11 = [*(a1 + 56) log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [*(a1 + 48) UUIDString];
    v13 = *(a1 + 64);
    *buf = 138543618;
    v29 = v12;
    v30 = 2114;
    v31 = v13;
    _os_log_impl(&dword_248AD7000, v11, OS_LOG_TYPE_INFO, "will update promise [%{public}@] with status [%{public}@]", buf, 0x16u);
  }

  v14 = *(a1 + 56);
  v15 = [v14 filePromiseURLForPromise:*(a1 + 48)];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __85__DEDSeedingClient_updatePromise_withFilename_size_extensionID_status_success_error___block_invoke_139;
  v23[3] = &unk_278F67118;
  v19 = *(a1 + 48);
  v16 = v19.i64[0];
  v24 = vextq_s8(v19, v19, 8uLL);
  v25 = *(a1 + 64);
  v26 = *(a1 + 32);
  v27 = *(a1 + 72);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __85__DEDSeedingClient_updatePromise_withFilename_size_extensionID_status_success_error___block_invoke_140;
  v20[3] = &unk_278F66F38;
  v17 = *(a1 + 64);
  v20[4] = *(a1 + 56);
  v21 = v17;
  v22 = *(a1 + 80);
  [v14 putToURL:v15 parameters:v10 encoding:2 success:v23 error:v20];

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __85__DEDSeedingClient_updatePromise_withFilename_size_extensionID_status_success_error___block_invoke_139(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 40) UUIDString];
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v8 = 138543874;
    v9 = v3;
    v10 = 2114;
    v11 = v4;
    v12 = 2114;
    v13 = v5;
    _os_log_impl(&dword_248AD7000, v2, OS_LOG_TYPE_DEFAULT, "did update promise [%{public}@] [%{public}@] [%{public}@]", &v8, 0x20u);
  }

  result = *(a1 + 64);
  if (result)
  {
    result = (*(result + 16))();
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void __85__DEDSeedingClient_updatePromise_withFilename_size_extensionID_status_success_error___block_invoke_140(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __85__DEDSeedingClient_updatePromise_withFilename_size_extensionID_status_success_error___block_invoke_140_cold_1(a1, v3);
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void __85__DEDSeedingClient_updatePromise_withFilename_size_extensionID_status_success_error___block_invoke_141(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __85__DEDSeedingClient_updatePromise_withFilename_size_extensionID_status_success_error___block_invoke_141_cold_1(a1);
    }
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)cancelPromise:(id)promise withSuccess:(id)success error:(id)error
{
  v16 = *MEMORY[0x277D85DE8];
  promiseCopy = promise;
  errorCopy = error;
  successCopy = success;
  v11 = [(DEDSeedingClient *)self log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [promiseCopy UUIDString];
    v14 = 138543362;
    v15 = uUIDString;
    _os_log_impl(&dword_248AD7000, v11, OS_LOG_TYPE_DEFAULT, "Will cancel promise [%{public}@]", &v14, 0xCu);
  }

  [(DEDSeedingClient *)self updatePromise:promiseCopy withFilename:&stru_285B72378 size:0 status:0 success:successCopy error:errorCopy];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error
{
  v15 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  errorCopy = error;
  v8 = [(DEDSeedingClient *)self log];
  v9 = v8;
  if (errorCopy)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [DEDSeedingClient URLSession:sessionCopy didBecomeInvalidWithError:?];
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    configuration = [sessionCopy configuration];
    identifier = [configuration identifier];
    v13 = 138543362;
    v14 = identifier;
    _os_log_impl(&dword_248AD7000, v9, OS_LOG_TYPE_INFO, "URL Session [%{public}@] became invalid", &v13, 0xCu);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)URLSessionDidFinishEventsForBackgroundURLSession:(id)session
{
  v11 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v5 = [(DEDSeedingClient *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    configuration = [sessionCopy configuration];
    identifier = [configuration identifier];
    v9 = 138543362;
    v10 = identifier;
    _os_log_impl(&dword_248AD7000, v5, OS_LOG_TYPE_INFO, "did finish event for URL Session [%{public}@]", &v9, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  v36 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  challengeCopy = challenge;
  handlerCopy = handler;
  v11 = [(DEDSeedingClient *)self log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    configuration = [sessionCopy configuration];
    identifier = [configuration identifier];
    v34 = 138543362;
    v35 = identifier;
    _os_log_impl(&dword_248AD7000, v11, OS_LOG_TYPE_DEFAULT, "URL Session [%{public}@] did receive challenge", &v34, 0xCu);
  }

  config = [(DEDSeedingClient *)self config];
  seedingEnvironment = [config seedingEnvironment];

  if (seedingEnvironment == 4)
  {
    v16 = [(DEDSeedingClient *)self log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v34) = 0;
      v17 = "Running in development mode; skipping pinning check.";
LABEL_15:
      _os_log_impl(&dword_248AD7000, v16, OS_LOG_TYPE_DEFAULT, v17, &v34, 2u);
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  protectionSpace = [challengeCopy protectionSpace];
  host = [protectionSpace host];
  baseURL = [(DEDSeedingClient *)self baseURL];
  host2 = [baseURL host];
  v22 = [host isEqualToString:host2];

  if ((v22 & 1) == 0)
  {
    v16 = [(DEDSeedingClient *)self log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v34) = 0;
      v17 = "Connecting to other server; skipping pinning check.";
      goto LABEL_15;
    }

LABEL_16:

    goto LABEL_17;
  }

  protectionSpace2 = [challengeCopy protectionSpace];
  authenticationMethod = [protectionSpace2 authenticationMethod];
  v25 = [authenticationMethod isEqualToString:*MEMORY[0x277CCA720]];

  if (!v25)
  {
LABEL_17:
    handlerCopy[2](handlerCopy, 1, 0);
    goto LABEL_18;
  }

  baseURL2 = [(DEDSeedingClient *)self baseURL];
  host3 = [baseURL2 host];

  AppleSSLPinned = SecPolicyCreateAppleSSLPinned();
  if (!AppleSSLPinned)
  {
    goto LABEL_11;
  }

  v29 = AppleSSLPinned;
  protectionSpace3 = [challengeCopy protectionSpace];
  serverTrust = [protectionSpace3 serverTrust];

  LODWORD(protectionSpace3) = SecTrustSetPolicies(serverTrust, v29);
  CFRelease(v29);
  if (protectionSpace3)
  {
    goto LABEL_11;
  }

  v34 = 0;
  if (!MEMORY[0x24C1E4EB0](serverTrust, &v34) && (v34 == 4 || v34 == 1))
  {
    v33 = [MEMORY[0x277CCACF0] credentialForTrust:serverTrust];
    (handlerCopy)[2](handlerCopy, 0, v33);
  }

  else
  {
LABEL_11:
    handlerCopy[2](handlerCopy, 2, 0);
  }

LABEL_18:
  v32 = *MEMORY[0x277D85DE8];
}

- (id)_serverErrorFromTask:(id)task
{
  taskCopy = task;
  response = [taskCopy response];
  statusCode = [response statusCode];

  v7 = [(DEDSeedingClient *)self log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [DEDSeedingClient _serverErrorFromTask:];
  }

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%li", statusCode];
  v9 = [v8 characterAtIndex:0];

  v10 = 0;
  if (v9 != 50)
  {
    v11 = objc_opt_new();
    originalRequest = [taskCopy originalRequest];
    v13 = [originalRequest valueForHTTPHeaderField:@"Form_Response_ID"];

    if (v13)
    {
      [v11 setObject:v13 forKeyedSubscript:@"Form_Response_ID"];
    }

    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HTTPErrorDomain" code:statusCode userInfo:v11];
    v14 = [(DEDSeedingClient *)self log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(DEDSeedingClient *)v13 _serverErrorFromTask:statusCode];
    }
  }

  return v10;
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  v26 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  errorCopy = error;
  v9 = [(DEDSeedingClient *)self _serverErrorFromTask:taskCopy];
  v10 = [(DEDSeedingClient *)self log];
  v11 = v10;
  if (errorCopy | v9)
  {
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    taskIdentifier = [taskCopy taskIdentifier];
    bugSessionIdentifier = [(DEDSeedingClient *)self bugSessionIdentifier];
    bugSessionIdentifier2 = bugSessionIdentifier;
    *v21 = 134218498;
    if (errorCopy)
    {
      v15 = errorCopy;
    }

    else
    {
      v15 = v9;
    }

    *&v21[4] = taskIdentifier;
    v22 = 2114;
    v23 = bugSessionIdentifier;
    v24 = 2114;
    v25 = v15;
    _os_log_error_impl(&dword_248AD7000, v11, OS_LOG_TYPE_ERROR, "Upload task [%lu] for session [%{public}@] completed with error %{public}@", v21, 0x20u);
  }

  else
  {
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    taskIdentifier2 = [taskCopy taskIdentifier];
    bugSessionIdentifier2 = [(DEDSeedingClient *)self bugSessionIdentifier];
    *v21 = 134218242;
    *&v21[4] = taskIdentifier2;
    v22 = 2114;
    v23 = bugSessionIdentifier2;
    _os_log_impl(&dword_248AD7000, v11, OS_LOG_TYPE_DEFAULT, "Upload task [%lu] completed successfully for session [%{public}@]", v21, 0x16u);
  }

LABEL_10:
  uploadDelegate = [(DEDSeedingClient *)self uploadDelegate];
  v18 = uploadDelegate;
  if (errorCopy)
  {
    v19 = errorCopy;
  }

  else
  {
    v19 = v9;
  }

  [uploadDelegate uploadTask:taskCopy didCompleteWithError:{v19, *v21}];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)session task:(id)task didSendBodyData:(int64_t)data totalBytesSent:(int64_t)sent totalBytesExpectedToSend:(int64_t)send
{
  taskCopy = task;
  uploadDelegate = [(DEDSeedingClient *)self uploadDelegate];
  [uploadDelegate uploadTask:taskCopy didSendBytes:sent totalBytesExpectedToSend:send];
}

- (id)baseURL
{
  config = [(DEDSeedingClient *)self config];
  seedingEnvironment = [config seedingEnvironment];

  if ((seedingEnvironment - 2) > 3)
  {
    seedingHost = @"https://fba.apple.com/";
  }

  else
  {
    config2 = [(DEDSeedingClient *)self config];
    seedingHost = [config2 seedingHost];
  }

  v7 = [MEMORY[0x277CBEBC0] URLWithString:seedingHost];
  v8 = v7;
  if (!v7 || ([v7 host], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
  {
    v10 = [MEMORY[0x277CBEBC0] URLWithString:@"https://fba.apple.com/"];

    v8 = v10;
  }

  return v8;
}

- (id)seedingURL
{
  config = [(DEDSeedingClient *)self config];
  seedingEnvironment = [config seedingEnvironment];

  if (seedingEnvironment < 4 || seedingEnvironment == 5)
  {
    baseURL = [(DEDSeedingClient *)self baseURL];
    baseURL2 = [baseURL URLByAppendingPathComponent:@"sp"];
  }

  else if (seedingEnvironment == 4)
  {
    baseURL2 = [(DEDSeedingClient *)self baseURL];
  }

  else
  {
    baseURL2 = 0;
  }

  return baseURL2;
}

- (id)loginWithTokenURL
{
  seedingURL = [(DEDSeedingClient *)self seedingURL];
  v3 = [seedingURL URLByAppendingPathComponent:@"login/with_token"];

  return v3;
}

- (id)newFilePromiseURL
{
  seedingURL = [(DEDSeedingClient *)self seedingURL];
  v3 = [seedingURL URLByAppendingPathComponent:@"feedback/file_promise/new"];

  return v3;
}

- (id)filePromiseURLForPromise:(id)promise
{
  promiseCopy = promise;
  seedingURL = [(DEDSeedingClient *)self seedingURL];
  v6 = MEMORY[0x277CCACA8];
  uUIDString = [promiseCopy UUIDString];

  v8 = [v6 stringWithFormat:@"feedback/file_promise/%@", uUIDString];
  v9 = [seedingURL URLByAppendingPathComponent:v8];

  return v9;
}

- (id)newFilerTokenURL
{
  seedingURL = [(DEDSeedingClient *)self seedingURL];
  v3 = [seedingURL URLByAppendingPathComponent:@"feedback/filer/get_token"];

  return v3;
}

- (id)filerURL
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [standardUserDefaults stringForKey:@"FBAFilerURL"];

  if (v4 && [(__CFString *)v4 length])
  {
    v5 = [(DEDSeedingClient *)self log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_248AD7000, v5, OS_LOG_TYPE_INFO, "Using user default value for filer URL", v8, 2u);
    }
  }

  else
  {

    v4 = @"https://cssubmissions.apple.com/CusSeedSub/submit?version=2";
  }

  v6 = [MEMORY[0x277CBEBC0] URLWithString:v4];

  return v6;
}

- (id)HTTPErrorWithResponse:(id)response withData:(id)data
{
  v21[1] = *MEMORY[0x277D85DE8];
  responseCopy = response;
  dataCopy = data;
  allHeaderFields = [responseCopy allHeaderFields];
  v8 = [allHeaderFields objectForKeyedSubscript:@"Content-Type"];
  if ([v8 containsString:@"application/json"] && objc_msgSend(responseCopy, "statusCode") != 404)
  {
    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:dataCopy encoding:4];
  }

  else
  {
    v9 = 0;
  }

  v10 = objc_alloc(MEMORY[0x277CBEB38]);
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = &stru_285B72378;
  }

  v20 = @"body";
  v21[0] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  v13 = [v10 initWithDictionary:v12];

  if (responseCopy)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(responseCopy, "statusCode")}];
    [v13 setObject:v14 forKeyedSubscript:@"HTTP Status Code"];

    v15 = [responseCopy URL];

    if (v15)
    {
      v16 = [responseCopy URL];
      [v13 setObject:v16 forKeyedSubscript:@"URL"];
    }
  }

  v17 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HTTPErrorDomain" code:objc_msgSend(responseCopy userInfo:{"statusCode"), v13}];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)promiseConfiguration
{
  v22[4] = *MEMORY[0x277D85DE8];
  v3 = +[DEDDevice currentDevice];
  config = [(DEDSeedingClient *)self config];
  isUnauthenticatedSession = [config isUnauthenticatedSession];

  if (isUnauthenticatedSession)
  {
    config2 = [(DEDSeedingClient *)self config];
    v7 = +[DEDUtils unauthenticatedDeviceSpecifierFormResponseID:device:](DEDUtils, "unauthenticatedDeviceSpecifierFormResponseID:device:", [config2 seedingSubmissionID], v3);
  }

  else
  {
    v7 = +[DEDUtils uniqueDeviceSpecifier];
  }

  v21[0] = @"parent_type";
  v8 = MEMORY[0x277CCACA8];
  config3 = [(DEDSeedingClient *)self config];
  seedingSubmissionType = [config3 seedingSubmissionType];
  v11 = "Unknown";
  if (seedingSubmissionType == 2)
  {
    v11 = "FeedbackFollowup";
  }

  if (seedingSubmissionType == 1)
  {
    v12 = "FormResponse";
  }

  else
  {
    v12 = v11;
  }

  v13 = [v8 stringWithUTF8String:v12];
  v22[0] = v13;
  v21[1] = @"parent_id";
  v14 = MEMORY[0x277CCABB0];
  config4 = [(DEDSeedingClient *)self config];
  v16 = [v14 numberWithInteger:{objc_msgSend(config4, "seedingSubmissionID")}];
  v22[1] = v16;
  v22[2] = v7;
  v21[2] = @"device_udid";
  v21[3] = @"build";
  build = [v3 build];
  v22[3] = build;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:4];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)bodyDataForParameters:(id)parameters encoding:(unint64_t)encoding error:(id *)error
{
  parametersCopy = parameters;
  if (!parametersCopy)
  {
    goto LABEL_5;
  }

  if (encoding == 1)
  {
    v9 = [(DEDSeedingClient *)self _formEncodedBodyForDictionary:parametersCopy];
    goto LABEL_7;
  }

  if (encoding != 2)
  {
LABEL_5:
    v10 = 0;
    goto LABEL_8;
  }

  v9 = [MEMORY[0x277CCAAA0] dataWithJSONObject:parametersCopy options:0 error:error];
LABEL_7:
  v10 = v9;
LABEL_8:

  return v10;
}

- (id)contentTypeForParameterEncoding:(unint64_t)encoding
{
  if (encoding == 2)
  {
    return @"application/json; charset=utf-8";
  }

  else
  {
    return @"application/x-www-form-urlencoded; charset=utf-8";
  }
}

- (id)_formEncodedBodyForDictionary:(id)dictionary
{
  v32[1] = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  allKeys = [dictionaryCopy allKeys];
  v5 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"description" ascending:1 selector:sel_caseInsensitiveCompare_];
  v32[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
  v7 = [allKeys sortedArrayUsingDescriptors:v6];

  v26 = dictionaryCopy;
  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(dictionaryCopy, "count")}];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v7;
  v9 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v27 + 1) + 8 * i);
        v14 = [v26 objectForKey:v13];
        v15 = [v13 description];
        v16 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:{@":/?#[]@!$&'(void)*+, ="}];;
        invertedSet = [v16 invertedSet];
        v18 = [v15 stringByAddingPercentEncodingWithAllowedCharacters:invertedSet];
        v19 = [(DEDSeedingClient *)self _keyValuePairsForKey:v18 value:v14];
        [v8 addObjectsFromArray:v19];
      }

      v10 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v10);
  }

  v20 = [v8 componentsJoinedByString:@"&"];
  v21 = [v20 dataUsingEncoding:4];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)_keyValuePairsForKey:(id)key value:(id)value
{
  v54[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  valueCopy = value;
  v6 = objc_opt_class();
  if ([v6 isSubclassOfClass:objc_opt_class()])
  {
    allKeys = [valueCopy allKeys];
    v8 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"description" ascending:1 selector:sel_caseInsensitiveCompare_];
    v54[0] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:1];
    v10 = [allKeys sortedArrayUsingDescriptors:v9];

    v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(valueCopy, "count")}];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v47 objects:v53 count:16];
    if (v13)
    {
      v14 = v13;
      obj = v12;
      v40 = *v48;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          v16 = valueCopy;
          if (*v48 != v40)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v47 + 1) + 8 * i);
          v18 = MEMORY[0x277CCACA8];
          v19 = [v17 description];
          v20 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:{@":/?#[]@!$&'()*+, ="}];;
          invertedSet = [v20 invertedSet];
          v22 = [v19 stringByAddingPercentEncodingWithAllowedCharacters:invertedSet];
          v23 = [v18 stringWithFormat:@"%@[%@]", keyCopy, v22];

          valueCopy = v16;
          v24 = [v16 objectForKeyedSubscript:v17];
          v25 = [(DEDSeedingClient *)self _keyValuePairsForKey:v23 value:v24];
          [v11 addObjectsFromArray:v25];
        }

        v12 = obj;
        v14 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
      }

      while (v14);
    }

LABEL_20:
    v32 = [v11 copy];
    goto LABEL_21;
  }

  if (([v6 isSubclassOfClass:objc_opt_class()] & 1) != 0 || objc_msgSend(v6, "isSubclassOfClass:", objc_opt_class()))
  {
    v12 = [keyCopy stringByAppendingString:@"[]"];
    v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(valueCopy, "count")}];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v26 = valueCopy;
    v27 = [v26 countByEnumeratingWithState:&v43 objects:v52 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v44;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v44 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = [(DEDSeedingClient *)self _keyValuePairsForKey:v12 value:*(*(&v43 + 1) + 8 * j)];
          [v11 addObjectsFromArray:v31];
        }

        v28 = [v26 countByEnumeratingWithState:&v43 objects:v52 count:16];
      }

      while (v28);
    }

    goto LABEL_20;
  }

  v35 = MEMORY[0x277CCACA8];
  v12 = [valueCopy description];
  v11 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:{@":/?#[]@!$&'()*+, ="}];;
  invertedSet2 = [v11 invertedSet];
  v37 = [v12 stringByAddingPercentEncodingWithAllowedCharacters:invertedSet2];
  v38 = [v35 stringWithFormat:@"%@=%@", keyCopy, v37];
  v51 = v38;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v51 count:1];

LABEL_21:
  v33 = *MEMORY[0x277D85DE8];

  return v32;
}

- (BOOL)isLoggedIn
{
  v35 = *MEMORY[0x277D85DE8];
  config = [(DEDSeedingClient *)self config];
  seedingEnvironment = [config seedingEnvironment];

  if (seedingEnvironment == 3)
  {
    v5 = @"_seedportal_session_uat";
  }

  else
  {
    v5 = @"_seedportal_session";
  }

  foregroundSession = [(DEDSeedingClient *)self foregroundSession];
  configuration = [foregroundSession configuration];
  hTTPCookieStorage = [configuration HTTPCookieStorage];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  baseURL = [(DEDSeedingClient *)self baseURL];
  v10 = [hTTPCookieStorage cookiesForURL:baseURL];

  v11 = [v10 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v11)
  {
    v12 = v11;
    selfCopy = self;
    v13 = *v27;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v26 + 1) + 8 * i);
        expiresDate = [v15 expiresDate];
        date = [MEMORY[0x277CBEAA8] date];
        if ([date compare:expiresDate] == -1)
        {
          name = [v15 name];
          v19 = [name isEqualToString:v5];

          if (v19)
          {
            v21 = [(DEDSeedingClient *)selfCopy log];
            if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
            {
              baseURL2 = [(DEDSeedingClient *)selfCopy baseURL];
              *buf = 138543618;
              v31 = baseURL2;
              v32 = 2114;
              v33 = v5;
              _os_log_impl(&dword_248AD7000, v21, OS_LOG_TYPE_INFO, "has valid cookie from [%{public}@] name [%{public}@]", buf, 0x16u);
            }

            v20 = 1;
            goto LABEL_18;
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v26 objects:v34 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }

    v20 = 0;
  }

  else
  {
    v20 = 0;
  }

LABEL_18:

  v23 = *MEMORY[0x277D85DE8];
  return v20;
}

- (DEDSeedingClientDelegate)uploadDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_uploadDelegate);

  return WeakRetained;
}

- (void)initWithConfiguration:(uint64_t)a3 sessionID:(uint64_t)a4 delegate:(uint64_t)a5 .cold.1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_1_0(&dword_248AD7000, a2, a3, "Started session [%{public}@] with nil config!", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __50__DEDSeedingClient_seedingLoginWithSuccess_error___block_invoke_49_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0(&dword_248AD7000, v0, v1, "Error logging in: [%{public}@]", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __52__DEDSeedingClient_sendFile_promise_withCompletion___block_invoke_2_cold_1(id *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [*a1 UUIDString];
  v4 = [a2 localizedDescription];
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

void __52__DEDSeedingClient_sendFile_promise_withCompletion___block_invoke_74_cold_1(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = [OUTLINED_FUNCTION_5_3(a1) UUIDString];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

void __52__DEDSeedingClient_sendFile_promise_withCompletion___block_invoke_76_cold_1(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = [OUTLINED_FUNCTION_5_3(a1) UUIDString];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)getFilerTokenForPromise:withSuccess:error:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(&dword_248AD7000, v0, OS_LOG_TYPE_DEBUG, "Getting Filer Token for promise UUID [%{public}@]", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __62__DEDSeedingClient_getFilerTokenForPromise_withSuccess_error___block_invoke_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 intValue];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

void __52__DEDSeedingClient_jsonForURLRequest_success_error___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0(&dword_248AD7000, v0, v1, "Could not create object from JSON data. Error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)performHTTPMethod:toURL:parameters:encoding:success:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0(&dword_248AD7000, v0, v1, "performHTTPMethod failed with error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)beginUploadWithRequest:(uint64_t)a1 fromFileURL:(void *)a2 error:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = [a2 localizedDescription];
  v7 = 138543618;
  v8 = a1;
  OUTLINED_FUNCTION_3_2();
  _os_log_fault_impl(&dword_248AD7000, a3, OS_LOG_TYPE_FAULT, "File [%{public}@] doesn't exist on disk. Not creating upload task. Error: %{public}@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

void __66__DEDSeedingClient_makePromiseWithUUID_extensionID_success_error___block_invoke_124_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __66__DEDSeedingClient_makePromiseWithUUID_extensionID_success_error___block_invoke_125_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*(a1 + 40));
  OUTLINED_FUNCTION_1_0(&dword_248AD7000, a2, a3, "Error logging in to make promise with configuration [%{public}@]", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __49__DEDSeedingClient_getPromise_withSuccess_error___block_invoke_4_cold_1(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = [OUTLINED_FUNCTION_5_3(a1) UUIDString];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)updatePromise:(uint64_t)a1 withFilename:(NSObject *)a2 size:status:success:error:.cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "[DEDSeedingClient updatePromise:withFilename:size:status:success:error:]";
  v5 = 2112;
  v6 = a1;
  _os_log_debug_impl(&dword_248AD7000, a2, OS_LOG_TYPE_DEBUG, "%s: %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)updatePromise:withFilename:size:extensionID:status:success:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0(&dword_248AD7000, v0, v1, "nil uuid promise for file [%{public}@] cannot update", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __85__DEDSeedingClient_updatePromise_withFilename_size_extensionID_status_success_error___block_invoke_140_cold_1(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = [a2 description];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

void __85__DEDSeedingClient_updatePromise_withFilename_size_extensionID_status_success_error___block_invoke_141_cold_1(uint64_t a1)
{
  v2 = *MEMORY[0x277D85DE8];
  v3 = [OUTLINED_FUNCTION_5_3(a1) UUIDString];
  v4 = *(a1 + 48);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(void *)a1 didBecomeInvalidWithError:.cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 configuration];
  v2 = [v1 identifier];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_serverErrorFromTask:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(&dword_248AD7000, v0, OS_LOG_TYPE_DEBUG, "session task returned [%li] status code", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_serverErrorFromTask:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  LODWORD(v6) = 134218242;
  *(&v6 + 4) = a2;
  OUTLINED_FUNCTION_4_1();
  *v7 = v2;
  OUTLINED_FUNCTION_7_0(&dword_248AD7000, v3, v4, "did complete upload with HTTP error [%ld] for upload identifier [%{public}@]", v6, DWORD2(v6), *&v7[2], v8);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)HTTPErrorWithResponse:withData:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0(&dword_248AD7000, v0, v1, "Exception [%{public}@] decoding HTTP error for response [%{public}@]");
  v2 = *MEMORY[0x277D85DE8];
}

@end