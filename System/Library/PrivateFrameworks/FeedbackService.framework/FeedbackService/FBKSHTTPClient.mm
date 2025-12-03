@interface FBKSHTTPClient
- (FBKSHTTPClient)init;
- (id)formattedRequestHeader:(id)header session:(id)session cookies:(id)cookies;
- (id)logHTTPErrorWithResponse:(id)response withData:(id)data fromRequest:(id)request;
- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error;
- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)dataForURL:(id)l success:(id)success error:(id)error;
- (void)dataForURLRequest:(id)request success:(id)success error:(id)error;
- (void)dataForURLRequest:(id)request successWithResponse:(id)response error:(id)error;
- (void)jsonForURLRequest:(id)request success:(id)success error:(id)error;
@end

@implementation FBKSHTTPClient

- (FBKSHTTPClient)init
{
  v36 = *MEMORY[0x1E69E9840];
  v30.receiver = self;
  v30.super_class = FBKSHTTPClient;
  v2 = [(FBKSHTTPClient *)&v30 init];
  if (v2)
  {
    defaultSessionConfiguration = [MEMORY[0x1E695AC80] defaultSessionConfiguration];
    v4 = [defaultSessionConfiguration copy];

    [v4 setURLCache:0];
    v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    infoDictionary = [v5 infoDictionary];

    v7 = [infoDictionary objectForKey:@"CFBundleShortVersionString"];
    v29 = infoDictionary;
    v8 = [infoDictionary objectForKey:*MEMORY[0x1E695E500]];
    memset(&v35, 0, 512);
    uname(&v35);
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", v35.machine];
    v10 = @"Unknown";
    v27 = v8;
    v28 = v7;
    if (v8)
    {
      v10 = v8;
    }

    if (v7)
    {
      v10 = v7;
    }

    v11 = v10;
    v12 = +[FBKSSharedConstants productVersion];
    v13 = +[FBKSSharedConstants swVers];
    v14 = MEMORY[0x1E696AEC0];
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    processName = [processInfo processName];
    v26 = v9;
    v17 = [v14 stringWithFormat:@"%@/%@ (Feedback Framework) (%@ %@) (Build %@) (Model %@)", processName, v11, @"iOS", v12, v13, v9];

    v18 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:6];
    v33[0] = @"X-SP-API";
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.1f", 4.3];
    v34[0] = v19;
    v34[1] = v17;
    v33[1] = @"User-Agent";
    v33[2] = @"Accept";
    v33[3] = @"Content-Type";
    v34[2] = @"application/json";
    v34[3] = @"application/json";
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:4];
    [v18 addEntriesFromDictionary:v20];

    v21 = Log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v32 = v12;
      _os_log_impl(&dword_1B00C4000, v21, OS_LOG_TYPE_INFO, "Using filing device OS version: [%{public}@]", buf, 0xCu);
    }

    [v18 setValue:v12 forKey:@"X-OS-Version"];
    [v4 setHTTPAdditionalHeaders:v18];
    v22 = [MEMORY[0x1E695AC78] sessionWithConfiguration:v4 delegate:v2 delegateQueue:0];
    session = v2->_session;
    v2->_session = v22;
  }

  v24 = *MEMORY[0x1E69E9840];
  return v2;
}

- (void)jsonForURLRequest:(id)request success:(id)success error:(id)error
{
  successCopy = success;
  errorCopy = error;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __50__FBKSHTTPClient_jsonForURLRequest_success_error___block_invoke;
  v14[3] = &unk_1E7A8FFD0;
  v15 = successCopy;
  v16 = errorCopy;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __50__FBKSHTTPClient_jsonForURLRequest_success_error___block_invoke_49;
  v12[3] = &unk_1E7A8FFF8;
  v13 = v16;
  v10 = v16;
  v11 = successCopy;
  [(FBKSHTTPClient *)self dataForURLRequest:request success:v14 error:v12];
}

void __50__FBKSHTTPClient_jsonForURLRequest_success_error___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    v8 = 0;
    v3 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a2 options:0 error:&v8];
    v4 = v8;
    if (v4)
    {
      v5 = Log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __50__FBKSHTTPClient_jsonForURLRequest_success_error___block_invoke_cold_1();
      }

      v6 = *(a1 + 40);
      if (!v6)
      {
        goto LABEL_9;
      }

      v7 = *(v6 + 16);
    }

    else
    {
      v7 = *(*(a1 + 32) + 16);
    }

    v7();
LABEL_9:
  }
}

uint64_t __50__FBKSHTTPClient_jsonForURLRequest_success_error___block_invoke_49(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)dataForURLRequest:(id)request success:(id)success error:(id)error
{
  successCopy = success;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__FBKSHTTPClient_dataForURLRequest_success_error___block_invoke;
  v10[3] = &unk_1E7A90020;
  v11 = successCopy;
  v9 = successCopy;
  [(FBKSHTTPClient *)self dataForURLRequest:request successWithResponse:v10 error:error];
}

- (id)formattedRequestHeader:(id)header session:(id)session cookies:(id)cookies
{
  v62 = *MEMORY[0x1E69E9840];
  headerCopy = header;
  sessionCopy = session;
  cookiesCopy = cookies;
  v9 = MEMORY[0x1E696AD60];
  hTTPMethod = [headerCopy HTTPMethod];
  v11 = [headerCopy URL];
  v12 = [v11 debugDescription];
  v13 = [v9 stringWithFormat:@"%@ %@\n", hTTPMethod, v12];

  v45 = headerCopy;
  v14 = [headerCopy URL];
  host = [v14 host];
  [v13 appendFormat:@"Host: %@\n", host];

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v46 = sessionCopy;
  configuration = [sessionCopy configuration];
  hTTPAdditionalHeaders = [configuration HTTPAdditionalHeaders];

  v18 = [hTTPAdditionalHeaders countByEnumeratingWithState:&v55 objects:v61 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v56;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v56 != v20)
        {
          objc_enumerationMutation(hTTPAdditionalHeaders);
        }

        v22 = *(*(&v55 + 1) + 8 * i);
        configuration2 = [v46 configuration];
        hTTPAdditionalHeaders2 = [configuration2 HTTPAdditionalHeaders];
        v25 = [hTTPAdditionalHeaders2 objectForKeyedSubscript:v22];
        [v13 appendFormat:@"%@: %@\n", v22, v25];
      }

      v19 = [hTTPAdditionalHeaders countByEnumeratingWithState:&v55 objects:v61 count:16];
    }

    while (v19);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v26 = cookiesCopy;
  v27 = [v26 countByEnumeratingWithState:&v51 objects:v60 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v52;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v52 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v51 + 1) + 8 * j);
        name = [v31 name];
        value = [v31 value];
        [v13 appendFormat:@"%@: %@\n", name, value];
      }

      v28 = [v26 countByEnumeratingWithState:&v51 objects:v60 count:16];
    }

    while (v28);
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  allHTTPHeaderFields = [v45 allHTTPHeaderFields];
  v35 = [allHTTPHeaderFields countByEnumeratingWithState:&v47 objects:v59 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v48;
    do
    {
      for (k = 0; k != v36; ++k)
      {
        if (*v48 != v37)
        {
          objc_enumerationMutation(allHTTPHeaderFields);
        }

        v39 = *(*(&v47 + 1) + 8 * k);
        v40 = [v45 valueForHTTPHeaderField:v39];
        [v13 appendFormat:@"%@: %@\n", v39, v40];
      }

      v36 = [allHTTPHeaderFields countByEnumeratingWithState:&v47 objects:v59 count:16];
    }

    while (v36);
  }

  v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v13];

  v42 = *MEMORY[0x1E69E9840];

  return v41;
}

- (void)dataForURLRequest:(id)request successWithResponse:(id)response error:(id)error
{
  v33 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  responseCopy = response;
  errorCopy = error;
  v11 = Log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    hTTPMethod = [requestCopy HTTPMethod];
    v13 = [requestCopy URL];
    path = [v13 path];
    *buf = 138543618;
    v30 = hTTPMethod;
    v31 = 2114;
    v32 = path;
    _os_log_impl(&dword_1B00C4000, v11, OS_LOG_TYPE_INFO, "-> %{public}@ %{public}@", buf, 0x16u);
  }

  session = [(FBKSHTTPClient *)self session];
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __62__FBKSHTTPClient_dataForURLRequest_successWithResponse_error___block_invoke;
  v24 = &unk_1E7A90098;
  selfCopy = self;
  v26 = requestCopy;
  v27 = errorCopy;
  v28 = responseCopy;
  v16 = responseCopy;
  v17 = errorCopy;
  v18 = requestCopy;
  v19 = [session dataTaskWithRequest:v18 completionHandler:&v21];

  [v19 resume];
  v20 = *MEMORY[0x1E69E9840];
}

void __62__FBKSHTTPClient_dataForURLRequest_successWithResponse_error___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v66 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v40 = a4;
  v8 = v7;
  v9 = MEMORY[0x1E695ABF8];
  v10 = [v8 allHeaderFields];
  v39 = v8;
  v11 = [v8 URL];
  v12 = [v9 cookiesWithResponseHeaderFields:v10 forURL:v11];

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = v12;
  v13 = [obj countByEnumeratingWithState:&v55 objects:v65 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v56;
    while (2)
    {
      v16 = v6;
      for (i = 0; i != v14; ++i)
      {
        if (*v56 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v55 + 1) + 8 * i);
        v19 = [v18 name];
        if ([v19 isEqualToString:@"_seedportal_session"])
        {

LABEL_12:
          [*(a1 + 32) setSeedPortalSession:v18];
          v6 = v16;
          goto LABEL_13;
        }

        v20 = [v18 name];
        v21 = [v20 isEqualToString:@"_seedportal_session_uat"];

        if (v21)
        {
          goto LABEL_12;
        }
      }

      v14 = [obj countByEnumeratingWithState:&v55 objects:v65 count:16];
      v6 = v16;
      if (v14)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v22 = Log();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = [*(a1 + 40) HTTPMethod];
    v24 = [*(a1 + 40) URL];
    v25 = [v24 path];
    v26 = [v39 statusCode];
    *buf = 138543874;
    v60 = v23;
    v61 = 2114;
    v62 = v25;
    v63 = 2048;
    v64 = v26;
    _os_log_impl(&dword_1B00C4000, v22, OS_LOG_TYPE_INFO, "<- %{public}@ %{public}@ %li", buf, 0x20u);
  }

  if (v40)
  {
    if ([v40 code] == -999)
    {
      v27 = [v40 domain];
      v28 = [v27 isEqualToString:*MEMORY[0x1E696A978]];

      if (v28)
      {
        v29 = Log();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = [*(a1 + 40) URL];
          v31 = [v30 path];
          *buf = 138543362;
          v60 = v31;
          _os_log_impl(&dword_1B00C4000, v29, OS_LOG_TYPE_DEFAULT, "Request was cancelled, ignoring error on [%{public}@]", buf, 0xCu);
        }

        goto LABEL_22;
      }
    }

    v29 = _os_activity_create(&dword_1B00C4000, "HTTP Error", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__FBKSHTTPClient_dataForURLRequest_successWithResponse_error___block_invoke_66;
    block[3] = &unk_1E7A90048;
    block[4] = *(a1 + 32);
    v50 = v39;
    v51 = v6;
    v52 = *(a1 + 40);
    v53 = v40;
    v54 = *(a1 + 48);
    os_activity_apply(v29, block);

    v32 = v50;
LABEL_21:

LABEL_22:
    goto LABEL_23;
  }

  v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%li", objc_msgSend(v39, "statusCode")];
  if ([v34 characterAtIndex:0] == 50)
  {
  }

  else
  {
    v35 = [v39 statusCode];

    if (v35 != 302)
    {
      v29 = _os_activity_create(&dword_1B00C4000, "HTTP Error", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __62__FBKSHTTPClient_dataForURLRequest_successWithResponse_error___block_invoke_2;
      v43[3] = &unk_1E7A90070;
      v37 = v6;
      v38 = *(a1 + 32);
      v44 = v37;
      v45 = v38;
      v46 = v39;
      v47 = *(a1 + 40);
      v48 = *(a1 + 48);
      os_activity_apply(v29, v43);

      v32 = v44;
      goto LABEL_21;
    }
  }

  v36 = *(a1 + 56);
  if (v36)
  {
    (*(v36 + 16))(v36, v6, v39);
  }

LABEL_23:

  v33 = *MEMORY[0x1E69E9840];
}

void __62__FBKSHTTPClient_dataForURLRequest_successWithResponse_error___block_invoke_66(uint64_t a1)
{
  v10 = [*(a1 + 32) logHTTPErrorWithResponse:*(a1 + 40) withData:*(a1 + 48) fromRequest:*(a1 + 56)];
  v2 = *(a1 + 64);
  if (v10)
  {
    v3 = [*(a1 + 64) userInfo];

    if (v3)
    {
      v4 = MEMORY[0x1E695DF90];
      v5 = [*(a1 + 64) userInfo];
      v3 = [v4 dictionaryWithDictionary:v5];

      [v3 setObject:v10 forKeyedSubscript:@"SeedingHTTPRequestDetails"];
    }

    v6 = MEMORY[0x1E696ABC0];
    v7 = [*(a1 + 64) domain];
    v8 = [v6 errorWithDomain:v7 code:objc_msgSend(*(a1 + 64) userInfo:{"code"), v3}];

    v2 = v8;
  }

  v9 = *(a1 + 72);
  if (v9)
  {
    (*(v9 + 16))(v9, v2);
  }
}

void __62__FBKSHTTPClient_dataForURLRequest_successWithResponse_error___block_invoke_2(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v25 = 0;
    v3 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v2 options:0 error:&v25];
    v4 = v25;
    v5 = 0;
    if (FBKSIsValidErrorResponse(v3))
    {
      v6 = v3;
      v7 = MEMORY[0x1E695DF70];
      v8 = [v6 objectForKeyedSubscript:@"errors"];
      v9 = [v7 arrayWithCapacity:{objc_msgSend(v8, "count")}];

      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v10 = [v6 objectForKeyedSubscript:{@"errors", 0}];
      v11 = [v10 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v22;
        do
        {
          v14 = 0;
          do
          {
            if (*v22 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = FBKSErrorForDict(*(*(&v21 + 1) + 8 * v14));
            if (v15)
            {
              [v9 addObject:v15];
            }

            ++v14;
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v21 objects:v26 count:16];
        }

        while (v12);
      }

      v5 = [v9 copy];
    }
  }

  else
  {
    v5 = 0;
  }

  v16 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
  v17 = v16;
  if (v5)
  {
    [v16 setObject:v5 forKey:@"FBKSSeedPortalErrorsKey"];
  }

  v18 = [*(a1 + 40) logHTTPErrorWithResponse:*(a1 + 48) withData:*(a1 + 32) fromRequest:*(a1 + 56)];
  if (v18)
  {
    [v17 setObject:v18 forKeyedSubscript:@"SeedingHTTPRequestDetails"];
  }

  if (*(a1 + 64))
  {
    v19 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HTTPErrorDomain" code:objc_msgSend(*(a1 + 48) userInfo:{"statusCode"), v17}];
    (*(*(a1 + 64) + 16))();
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)dataForURL:(id)l success:(id)success error:(id)error
{
  v8 = MEMORY[0x1E695AC68];
  errorCopy = error;
  successCopy = success;
  v11 = [v8 requestWithURL:l];
  [(FBKSHTTPClient *)self dataForURLRequest:v11 success:successCopy error:errorCopy];
}

- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error
{
  errorCopy = error;
  v5 = Log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [FBKSHTTPClient URLSession:didBecomeInvalidWithError:];
  }
}

- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  challengeCopy = challenge;
  handlerCopy = handler;
  v8 = +[FBKSSharedConstants environment];
  if (FBKSHasInternalUI() && (v8 & 0xFFFFFFFD) == 1)
  {
    v9 = Log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 0;
      v10 = "Running in development/stagingDev mode; skipping pinning check (internal only).";
      v11 = &v31;
LABEL_13:
      _os_log_impl(&dword_1B00C4000, v9, OS_LOG_TYPE_DEFAULT, v10, v11, 2u);
      goto LABEL_14;
    }

    goto LABEL_14;
  }

  protectionSpace = [challengeCopy protectionSpace];
  host = [protectionSpace host];
  v14 = +[FBKSSharedConstants appleSeedURL];
  host2 = [v14 host];
  v16 = [host isEqualToString:host2];

  if ((v16 & 1) == 0)
  {
    v9 = Log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v10 = "Connecting to other server; skipping pinning check.";
      v11 = buf;
      goto LABEL_13;
    }

LABEL_14:

    goto LABEL_15;
  }

  protectionSpace2 = [challengeCopy protectionSpace];
  authenticationMethod = [protectionSpace2 authenticationMethod];
  v19 = [authenticationMethod isEqualToString:*MEMORY[0x1E695AB80]];

  if (!v19)
  {
LABEL_15:
    handlerCopy[2](handlerCopy, 1, 0);
    goto LABEL_16;
  }

  v20 = +[FBKSSharedConstants appleSeedURL];
  host3 = [v20 host];

  AppleSSLPinned = SecPolicyCreateAppleSSLPinned();
  if (AppleSSLPinned)
  {
    v23 = AppleSSLPinned;
    protectionSpace3 = [challengeCopy protectionSpace];
    serverTrust = [protectionSpace3 serverTrust];

    LODWORD(protectionSpace3) = SecTrustSetPolicies(serverTrust, v23);
    CFRelease(v23);
    if (!protectionSpace3)
    {
      error = 0;
      if (SecTrustEvaluateWithError(serverTrust, &error))
      {
        v26 = [MEMORY[0x1E695AC48] credentialForTrust:serverTrust];
        (handlerCopy)[2](handlerCopy, 0, v26);

        goto LABEL_10;
      }

      if (error)
      {
        v27 = error;
        v28 = Log();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          [FBKSHTTPClient URLSession:v27 didReceiveChallenge:v28 completionHandler:?];
        }

        CFRelease(error);
      }
    }
  }

  handlerCopy[2](handlerCopy, 2, 0);
LABEL_10:

LABEL_16:
}

- (id)logHTTPErrorWithResponse:(id)response withData:(id)data fromRequest:(id)request
{
  v41 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  dataCopy = data;
  requestCopy = request;
  v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:5];
  v11 = Log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [FBKSHTTPClient logHTTPErrorWithResponse:responseCopy withData:requestCopy fromRequest:v11];
  }

  allHeaderFields = [responseCopy allHeaderFields];
  v13 = [requestCopy URL];
  v14 = [v13 description];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = &stru_1F25DB460;
  }

  [v10 setObject:v16 forKeyedSubscript:@"url"];

  hTTPMethod = [requestCopy HTTPMethod];
  v18 = hTTPMethod;
  if (hTTPMethod)
  {
    v19 = hTTPMethod;
  }

  else
  {
    v19 = &stru_1F25DB460;
  }

  [v10 setObject:v19 forKeyedSubscript:@"HTTP method"];

  v20 = FBKSStringFromEnvironment(+[FBKSSharedConstants environment]);
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = &stru_1F25DB460;
  }

  [v10 setObject:v22 forKeyedSubscript:@"environment"];

  v23 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(responseCopy, "statusCode")}];
  [v10 setObject:v23 forKeyedSubscript:@"HTTP error"];

  v24 = [allHeaderFields objectForKeyedSubscript:@"X-Request-Id"];
  v25 = v24;
  if (v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = &stru_1F25DB460;
  }

  [v10 setObject:v26 forKeyedSubscript:@"request id"];

  v27 = [allHeaderFields objectForKeyedSubscript:@"Content-Type"];
  if ((([v27 containsString:@"application/json"] & 1) != 0 || objc_msgSend(v27, "containsString:", @"text/html")) && objc_msgSend(responseCopy, "statusCode") != 404)
  {
    v39 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:dataCopy encoding:4];
    v28 = Log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [FBKSHTTPClient logHTTPErrorWithResponse:withData:fromRequest:];
    }

    v29 = Log();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = [allHeaderFields objectForKeyedSubscript:@"X-Request-Id"];
      [FBKSHTTPClient logHTTPErrorWithResponse:v30 withData:buf fromRequest:v29];
    }

    v31 = [MEMORY[0x1E696ACB0] JSONObjectWithData:dataCopy options:0 error:0];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_32;
    }

    v32 = [v31 objectForKeyedSubscript:@"errors"];
    if (v32 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      firstObject = [v32 firstObject];
      v34 = [firstObject objectForKeyedSubscript:@"message"];

      if (!v34)
      {
        goto LABEL_31;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v34 = [v31 objectForKeyedSubscript:@"error"];
      if (!v34)
      {
        goto LABEL_31;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    [v10 setObject:v34 forKeyedSubscript:@"error message"];
LABEL_31:

LABEL_32:
  }

  v35 = Log();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
  {
    [FBKSHTTPClient logHTTPErrorWithResponse:withData:fromRequest:];
  }

  v36 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v10];

  v37 = *MEMORY[0x1E69E9840];

  return v36;
}

void __50__FBKSHTTPClient_jsonForURLRequest_success_error___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1B00C4000, v0, v1, "Could not create object from JSON data. Error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)URLSession:didBecomeInvalidWithError:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1B00C4000, v0, v1, "URLSession became invalid with error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)URLSession:(void *)a1 didReceiveChallenge:(NSObject *)a2 completionHandler:.cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 debugDescription];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_1B00C4000, a2, OS_LOG_TYPE_ERROR, "Error in certificate: %{public}@", v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

- (void)logHTTPErrorWithResponse:(void *)a1 withData:(void *)a2 fromRequest:(NSObject *)a3 .cold.1(void *a1, void *a2, NSObject *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = [a1 statusCode];
  v6 = [a2 HTTPMethod];
  v7 = [a2 URL];
  v8 = [v7 path];
  v10 = 134218498;
  v11 = v5;
  v12 = 2114;
  v13 = v6;
  v14 = 2114;
  v15 = v8;
  _os_log_error_impl(&dword_1B00C4000, a3, OS_LOG_TYPE_ERROR, "HTTP Error: [%ld] from request: [%{public}@ %{public}@]", &v10, 0x20u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)logHTTPErrorWithResponse:withData:fromRequest:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1B00C4000, v0, v1, "Error Body: [%{public}@]", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)logHTTPErrorWithResponse:(__CFString *)a1 withData:(uint8_t *)buf fromRequest:(os_log_t)log .cold.3(__CFString *a1, uint8_t *buf, os_log_t log)
{
  v4 = @"unknown";
  if (a1)
  {
    v4 = a1;
  }

  *buf = 138543362;
  *(buf + 4) = v4;
  _os_log_error_impl(&dword_1B00C4000, log, OS_LOG_TYPE_ERROR, "Request ID: [%{public}@]", buf, 0xCu);
}

- (void)logHTTPErrorWithResponse:withData:fromRequest:.cold.4()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_1B00C4000, v0, OS_LOG_TYPE_DEBUG, "SP2 Request Attributes: %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)logHTTPErrorWithResponse:withData:fromRequest:.cold.5()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  v4 = 2114;
  v5 = v0;
  _os_log_error_impl(&dword_1B00C4000, v1, OS_LOG_TYPE_ERROR, "Exception [%{public}@] decoding HTTP error for response [%{public}@]", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

@end