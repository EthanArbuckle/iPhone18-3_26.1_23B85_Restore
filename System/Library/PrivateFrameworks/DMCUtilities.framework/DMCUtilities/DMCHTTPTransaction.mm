@interface DMCHTTPTransaction
- (BOOL)_shouldAllowTrust:(__SecTrust *)trust forHost:(id)host;
- (BOOL)_shouldAllowTrustWithPinning:(__SecTrust *)pinning forHost:(id)host;
- (DMCHTTPTransaction)initWithURL:(id)l method:(id)method;
- (DMCHTTPTransaction)initWithURL:(id)l method:(id)method downloadURL:(id)rL;
- (__SecIdentity)copyIdentity;
- (id)_constructRequestOutError:(id *)error;
- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data;
- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler;
- (void)URLSession:(id)session downloadTask:(id)task didFinishDownloadingToURL:(id)l;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler;
- (void)_beginDataTaskWithSessionConfiguration:(id)configuration request:(id)request;
- (void)_beginDownloadTaskWithSessionConfiguration:(id)configuration request:(id)request;
- (void)_beginTransaction;
- (void)_completeTransaction;
- (void)_simulateTransaction;
- (void)addHeaderKey:(id)key value:(id)value;
- (void)dealloc;
- (void)performCompletionBlock:(id)block;
- (void)performSynchronously;
- (void)setIdentity:(__SecIdentity *)identity;
@end

@implementation DMCHTTPTransaction

- (__SecIdentity)copyIdentity
{
  result = self->_identity;
  if (result)
  {
    CFRetain(result);
    return self->_identity;
  }

  return result;
}

- (void)setIdentity:(__SecIdentity *)identity
{
  identity = self->_identity;
  if (identity)
  {
    CFRelease(identity);
  }

  self->_identity = identity;
  if (identity)
  {

    CFRetain(identity);
  }
}

- (DMCHTTPTransaction)initWithURL:(id)l method:(id)method
{
  lCopy = l;
  methodCopy = method;
  v14.receiver = self;
  v14.super_class = DMCHTTPTransaction;
  v9 = [(DMCHTTPTransaction *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_requestURL, l);
    v11 = [methodCopy copy];
    method = v10->_method;
    v10->_method = v11;

    objc_storeStrong(&v10->_userAgent, @"DeviceManagementClient/1.0");
    v10->_timeout = 45.0;
  }

  return v10;
}

- (DMCHTTPTransaction)initWithURL:(id)l method:(id)method downloadURL:(id)rL
{
  rLCopy = rL;
  v10 = [(DMCHTTPTransaction *)self initWithURL:l method:method];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_downloadURL, rL);
  }

  return v11;
}

- (void)dealloc
{
  identity = self->_identity;
  if (identity)
  {
    CFRelease(identity);
  }

  v4.receiver = self;
  v4.super_class = DMCHTTPTransaction;
  [(DMCHTTPTransaction *)&v4 dealloc];
}

- (void)addHeaderKey:(id)key value:(id)value
{
  keyCopy = key;
  valueCopy = value;
  headers = self->_headers;
  if (!headers)
  {
    v8 = objc_opt_new();
    v9 = self->_headers;
    self->_headers = v8;

    headers = self->_headers;
  }

  [(NSMutableDictionary *)headers setObject:valueCopy forKeyedSubscript:keyCopy];
}

- (id)_constructRequestOutError:(id *)error
{
  v42[1] = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AD68] requestWithURL:self->_requestURL cachePolicy:4 timeoutInterval:self->_timeout];
  [v5 setHTTPMethod:self->_method];
  contentType = self->_contentType;
  if (contentType)
  {
    [v5 addValue:contentType forHTTPHeaderField:@"Content-Type"];
  }

  userAgent = self->_userAgent;
  if (userAgent)
  {
    [v5 addValue:userAgent forHTTPHeaderField:@"User-Agent"];
  }

  if (self->_data)
  {
    [v5 setHTTPBody:?];
  }

  if (self->_CMSSignatureHeaderName && self->_identity)
  {
    v41 = *MEMORY[0x1E697AFB0];
    v42[0] = MEMORY[0x1E695E118];
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:&v41 count:1];
    data = [MEMORY[0x1E695DF88] data];
    identity = self->_identity;
    data = self->_data;
    v12 = SecCMSCreateSignedData();
    if (v12)
    {
      v13 = v12;
      v14 = *DMCLogObjects();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v39) = v13;
        _os_log_impl(&dword_1B1630000, v14, OS_LOG_TYPE_ERROR, "Cannot compute message signature. Error: %d", buf, 8u);
      }
    }

    else
    {
      v15 = [data base64EncodedStringWithOptions:0];
      [v5 addValue:v15 forHTTPHeaderField:self->_CMSSignatureHeaderName];
    }
  }

  headers = self->_headers;
  if (headers)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v17 = headers;
    v18 = [(NSMutableDictionary *)v17 countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v35;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v35 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v34 + 1) + 8 * i);
          v23 = [(NSMutableDictionary *)self->_headers objectForKeyedSubscript:v22];
          [v5 addValue:v23 forHTTPHeaderField:v22];
        }

        v19 = [(NSMutableDictionary *)v17 countByEnumeratingWithState:&v34 objects:v40 count:16];
      }

      while (v19);
    }
  }

  authenticator = [(DMCHTTPTransaction *)self authenticator];

  if (!authenticator)
  {
    goto LABEL_29;
  }

  authenticator2 = [(DMCHTTPTransaction *)self authenticator];
  v33 = 0;
  v26 = [authenticator2 authenticateRequest:v5 error:&v33];
  v27 = v33;

  if (v26)
  {
    goto LABEL_28;
  }

  v28 = *DMCLogObjects();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v39 = v27;
    _os_log_impl(&dword_1B1630000, v28, OS_LOG_TYPE_ERROR, "Failed to authenticate request with error: %{public}@", buf, 0xCu);
  }

  if ([(DMCHTTPTransaction *)self ignoreAuthenticatorError])
  {
LABEL_28:

LABEL_29:
    v29 = v5;
    goto LABEL_30;
  }

  if (error)
  {
    v32 = v27;
    *error = v27;
  }

  v29 = 0;
LABEL_30:

  v30 = *MEMORY[0x1E69E9840];

  return v29;
}

- (void)_beginTransaction
{
  v8 = 0;
  v3 = [(DMCHTTPTransaction *)self _constructRequestOutError:&v8];
  v4 = v8;
  v5 = v8;
  if (v3)
  {
    self->_rememberData = 0;
    ephemeralSessionConfiguration = [MEMORY[0x1E696AF80] ephemeralSessionConfiguration];
    [ephemeralSessionConfiguration setTLSMinimumSupportedProtocolVersion:771];
    downloadURL = [(DMCHTTPTransaction *)self downloadURL];

    if (downloadURL)
    {
      [(DMCHTTPTransaction *)self _beginDownloadTaskWithSessionConfiguration:ephemeralSessionConfiguration request:v3];
    }

    else
    {
      [(DMCHTTPTransaction *)self _beginDataTaskWithSessionConfiguration:ephemeralSessionConfiguration request:v3];
    }
  }

  else
  {
    objc_storeStrong(&self->_error, v4);
    [(DMCHTTPTransaction *)self _completeTransaction];
  }
}

- (void)_beginDataTaskWithSessionConfiguration:(id)configuration request:(id)request
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AF78];
  requestCopy = request;
  v8 = [v6 sessionWithConfiguration:configuration delegate:self delegateQueue:0];
  session = self->_session;
  self->_session = v8;

  v10 = [(NSURLSession *)self->_session dataTaskWithRequest:requestCopy];

  authenticator = [(DMCHTTPTransaction *)self authenticator];
  LOBYTE(requestCopy) = objc_opt_respondsToSelector();

  v12 = 0;
  if ((requestCopy & 1) != 0 && (-[DMCHTTPTransaction authenticator](self, "authenticator"), v13 = objc_claimAutoreleasedReturnValue(), v18 = 0, v14 = [v13 prepareTask:v10 error:&v18], v15 = v18, v12 = v18, v13, (v14 & 1) == 0))
  {
    v16 = *DMCLogObjects();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v20 = v12;
      _os_log_impl(&dword_1B1630000, v16, OS_LOG_TYPE_ERROR, "Failed to prepare data task with error: %{public}@", buf, 0xCu);
    }

    objc_storeStrong(&self->_error, v15);
    [(DMCHTTPTransaction *)self _completeTransaction];
  }

  else
  {
    [v10 resume];
    [(NSURLSession *)self->_session finishTasksAndInvalidate];
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_beginDownloadTaskWithSessionConfiguration:(id)configuration request:(id)request
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AF78];
  requestCopy = request;
  v8 = [v6 sessionWithConfiguration:configuration delegate:self delegateQueue:0];
  session = self->_session;
  self->_session = v8;

  v10 = [(NSURLSession *)self->_session downloadTaskWithRequest:requestCopy];

  authenticator = [(DMCHTTPTransaction *)self authenticator];
  LOBYTE(requestCopy) = objc_opt_respondsToSelector();

  v12 = 0;
  if ((requestCopy & 1) != 0 && (-[DMCHTTPTransaction authenticator](self, "authenticator"), v13 = objc_claimAutoreleasedReturnValue(), v18 = 0, v14 = [v13 prepareTask:v10 error:&v18], v15 = v18, v12 = v18, v13, (v14 & 1) == 0))
  {
    v16 = *DMCLogObjects();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v20 = v12;
      _os_log_impl(&dword_1B1630000, v16, OS_LOG_TYPE_ERROR, "Failed to prepare download task with error: %{public}@", buf, 0xCu);
    }

    objc_storeStrong(&self->_error, v15);
    [(DMCHTTPTransaction *)self _completeTransaction];
  }

  else
  {
    [v10 resume];
    [(NSURLSession *)self->_session finishTasksAndInvalidate];
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_simulateTransaction
{
  v14 = 200;
  v3 = *DMCLogObjects();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B1630000, v3, OS_LOG_TYPE_INFO, "Simulating transaction with transaction block", buf, 2u);
  }

  simulatedTransactionBlock = [(DMCHTTPTransaction *)self simulatedTransactionBlock];
  v11 = 0;
  v12 = 0;
  (simulatedTransactionBlock)[2](simulatedTransactionBlock, &v14, &v12, &v11);
  v5 = v12;
  v6 = v11;

  self->_statusCode = v14;
  v7 = [v5 copy];
  responseData = self->_responseData;
  self->_responseData = v7;

  v9 = [v6 copy];
  error = self->_error;
  self->_error = v9;

  [(DMCHTTPTransaction *)self _completeTransaction];
}

- (void)performSynchronously
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = *DMCLogObjects();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    requestURL = self->_requestURL;
    *buf = 138543362;
    v13 = requestURL;
    _os_log_impl(&dword_1B1630000, v3, OS_LOG_TYPE_INFO, "Beginning synchronous HTTP request to URL: %{public}@", buf, 0xCu);
  }

  v5 = dispatch_semaphore_create(0);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __42__DMCHTTPTransaction_performSynchronously__block_invoke;
  v10[3] = &unk_1E7ADC760;
  v6 = v5;
  v11 = v6;
  [(DMCHTTPTransaction *)self performCompletionBlock:v10];
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v7 = *DMCLogObjects();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = self->_requestURL;
    *buf = 138543362;
    v13 = v8;
    _os_log_impl(&dword_1B1630000, v7, OS_LOG_TYPE_INFO, "Synchronous HTTP request complete to URL: %{public}@", buf, 0xCu);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)performCompletionBlock:(id)block
{
  v20 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v5 = *DMCLogObjects();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    requestURL = self->_requestURL;
    *buf = 138543362;
    v19 = requestURL;
    _os_log_impl(&dword_1B1630000, v5, OS_LOG_TYPE_INFO, "Beginning HTTP request to URL: %{public}@", buf, 0xCu);
  }

  v7 = objc_alloc_init(MEMORY[0x1E695DF88]);
  responseData = self->_responseData;
  self->_responseData = v7;

  error = self->_error;
  self->_error = 0;

  objc_storeStrong(&self->_currentURL, self->_requestURL);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __45__DMCHTTPTransaction_performCompletionBlock___block_invoke;
  v16[3] = &unk_1E7ADC950;
  v16[4] = self;
  v17 = blockCopy;
  v10 = blockCopy;
  v11 = MEMORY[0x1B2731A20](v16);
  transactionCompletionBlock = self->_transactionCompletionBlock;
  self->_transactionCompletionBlock = v11;

  v13 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__DMCHTTPTransaction_performCompletionBlock___block_invoke_14;
  block[3] = &unk_1E7ADC760;
  block[4] = self;
  dispatch_async(v13, block);

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __45__DMCHTTPTransaction_performCompletionBlock___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 112))
  {
    v3 = *(v2 + 120);
    *(v2 + 120) = 0;
  }

  v4 = *DMCLogObjects();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(*(a1 + 32) + 8);
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_1B1630000, v4, OS_LOG_TYPE_INFO, "HTTP request complete to URL: %{public}@", &v8, 0xCu);
  }

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))();
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __45__DMCHTTPTransaction_performCompletionBlock___block_invoke_14(uint64_t a1)
{
  v2 = [*(a1 + 32) simulatedTransactionBlock];

  v3 = *(a1 + 32);
  if (v2)
  {

    return [v3 _simulateTransaction];
  }

  else
  {

    return [v3 _beginTransaction];
  }
}

- (void)_completeTransaction
{
  transactionCompletionBlock = [(DMCHTTPTransaction *)self transactionCompletionBlock];

  if (transactionCompletionBlock)
  {
    transactionCompletionBlock2 = [(DMCHTTPTransaction *)self transactionCompletionBlock];
    transactionCompletionBlock2[2]();

    [(DMCHTTPTransaction *)self setTransactionCompletionBlock:0];
  }
}

- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler
{
  v28 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  handlerCopy = handler;
  redirectionCopy = redirection;
  self->_statusCode = [redirectionCopy statusCode];
  allHeaderFields = [redirectionCopy allHeaderFields];

  responseHeaders = self->_responseHeaders;
  self->_responseHeaders = allHeaderFields;

  v15 = [requestCopy URL];
  v16 = [v15 copy];
  currentURL = self->_currentURL;
  self->_currentURL = v16;

  statusCode = self->_statusCode;
  v19 = *DMCLogObjects();
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
  if (statusCode == 301)
  {
    if (v20)
    {
      v21 = self->_currentURL;
      v26 = 138543362;
      v27 = v21;
      _os_log_impl(&dword_1B1630000, v19, OS_LOG_TYPE_DEFAULT, "Redirected permanently to URL: %{public}@", &v26, 0xCu);
    }

    v22 = [(NSURL *)self->_currentURL copy];
    permanentlyRedirectedURL = self->_permanentlyRedirectedURL;
    self->_permanentlyRedirectedURL = v22;
  }

  else if (v20)
  {
    v24 = self->_currentURL;
    v26 = 138543362;
    v27 = v24;
    _os_log_impl(&dword_1B1630000, v19, OS_LOG_TYPE_DEFAULT, "Redirected to URL: %{public}@", &v26, 0xCu);
  }

  handlerCopy[2](handlerCopy, requestCopy);

  v25 = *MEMORY[0x1E69E9840];
}

- (BOOL)_shouldAllowTrust:(__SecTrust *)trust forHost:(id)host
{
  v17 = *MEMORY[0x1E69E9840];
  hostCopy = host;
  if (trust)
  {
    if (SecTrustGetCertificateCount(trust) < 1)
    {
      LOBYTE(trust) = 0;
    }

    else if ([(NSArray *)self->_pinnedSecCertificateRefs count])
    {
      LOBYTE(trust) = [(DMCHTTPTransaction *)self _shouldAllowTrustWithPinning:trust forHost:hostCopy];
    }

    else
    {
      error = 0;
      LODWORD(trust) = SecTrustEvaluateWithError(trust, &error);
      if ((trust & 1) == 0)
      {
        CFRelease(error);
      }

      v7 = *DMCLogObjects();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v8 = v7;
        v9 = DMCStringForBool(trust);
        *buf = 138543618;
        v14 = hostCopy;
        v15 = 2114;
        v16 = v9;
        _os_log_impl(&dword_1B1630000, v8, OS_LOG_TYPE_DEBUG, "Evaluating trust for host: %{public}@ result: %{public}@", buf, 0x16u);
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return trust;
}

- (BOOL)_shouldAllowTrustWithPinning:(__SecTrust *)pinning forHost:(id)host
{
  v29 = *MEMORY[0x1E69E9840];
  hostCopy = host;
  cf = 0;
  *v26 = 0;
  if (!pinning)
  {
    goto LABEL_18;
  }

  v7 = SecTrustSerialize();
  if (!v7)
  {
    v16 = *DMCLogObjects();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1B1630000, v16, OS_LOG_TYPE_ERROR, "Failed to serialize trust when copying", buf, 2u);
    }

    goto LABEL_18;
  }

  v8 = v7;
  if (CFDataGetLength(v7))
  {
    v9 = SecTrustDeserialize();
    if (v9)
    {
      v10 = v9;
      CFRelease(v8);
      SSL = SecPolicyCreateSSL(1u, hostCopy);
      v12 = [MEMORY[0x1E695DF70] arrayWithObject:SSL];

      if (self->_pinningRevocationCheckRequired)
      {
        Revocation = SecPolicyCreateRevocation(0xBuLL);
        [v12 addObject:Revocation];
      }

      if (SecTrustSetPolicies(v10, v12))
      {
        v14 = *DMCLogObjects();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *v26 = 138543362;
          *&v26[4] = hostCopy;
          v15 = "Failed to set policies when evaluating pinning trust for host %{public}@";
LABEL_25:
          _os_log_impl(&dword_1B1630000, v14, OS_LOG_TYPE_ERROR, v15, v26, 0xCu);
        }
      }

      else
      {
        if (!SecTrustSetAnchorCertificates(v10, self->_pinnedSecCertificateRefs))
        {
          cf = 0;
          v20 = SecTrustEvaluateWithError(v10, &cf);
          if (cf)
          {
            v23 = *DMCLogObjects();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              *v26 = 138543618;
              *&v26[4] = hostCopy;
              v27 = 2114;
              v28 = cf;
              _os_log_impl(&dword_1B1630000, v23, OS_LOG_TYPE_ERROR, "Evaluating pinned trust for host %{public}@ failed with error %{public}@", v26, 0x16u);
            }
          }

          goto LABEL_27;
        }

        v14 = *DMCLogObjects();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *v26 = 138543362;
          *&v26[4] = hostCopy;
          v15 = "Failed to set anchors when evaluating pinning trust for host %{public}@";
          goto LABEL_25;
        }
      }

      v20 = 0;
LABEL_27:

      if (cf)
      {
        CFRelease(cf);
      }

      CFRelease(v10);
      goto LABEL_21;
    }

    v17 = *DMCLogObjects();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v18 = "Failed to deserialize trust when copying";
    goto LABEL_16;
  }

  v17 = *DMCLogObjects();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v18 = "Failed to serialize trust when copying, zero length result";
LABEL_16:
    _os_log_impl(&dword_1B1630000, v17, OS_LOG_TYPE_ERROR, v18, buf, 2u);
  }

LABEL_17:
  CFRelease(v8);
LABEL_18:
  v19 = *DMCLogObjects();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *v26 = 138543362;
    *&v26[4] = hostCopy;
    _os_log_impl(&dword_1B1630000, v19, OS_LOG_TYPE_ERROR, "Failed to copy trust when evaluating pinning trust for host %{public}@", v26, 0xCu);
  }

  v20 = 0;
LABEL_21:

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  v44 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  protectionSpace = [challenge protectionSpace];
  authenticationMethod = [protectionSpace authenticationMethod];
  v11 = *DMCLogObjects();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    *&buf[4] = authenticationMethod;
    _os_log_impl(&dword_1B1630000, v11, OS_LOG_TYPE_DEBUG, "Handling challenge: %{public}@", buf, 0xCu);
  }

  if ([authenticationMethod isEqualToString:*MEMORY[0x1E696A968]])
  {
    serverTrust = [protectionSpace serverTrust];
    host = [protectionSpace host];
    LOBYTE(serverTrust) = [(DMCHTTPTransaction *)self _shouldAllowTrust:serverTrust forHost:host];

    if ((serverTrust & 1) == 0)
    {
      if (!self->_error)
      {
        v21 = MEMORY[0x1E696ABC0];
        v22 = DMCErrorArray(@"HTTP_ERROR_INVALID_SERVER_CERT_P_URL_%@", v14, v15, v16, v17, v18, v19, v20, self->_requestURL);
        v23 = [v21 DMCErrorWithDomain:@"DMCHTTPTransactionErrorDomain" code:23002 descriptionArray:v22 errorType:@"DMCFatalError"];
        error = self->_error;
        self->_error = v23;
      }

      v25 = *DMCLogObjects();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1B1630000, v25, OS_LOG_TYPE_DEBUG, "NOT sending client identity certificate", buf, 2u);
      }

      handlerCopy[2](handlerCopy, 2, 0);
      goto LABEL_22;
    }
  }

  else if (([authenticationMethod isEqualToString:*MEMORY[0x1E696A940]] & 1) == 0)
  {
    handlerCopy[2](handlerCopy, 3, 0);
    goto LABEL_22;
  }

  if (self->_identity)
  {
    v26 = *DMCLogObjects();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1B1630000, v26, OS_LOG_TYPE_DEBUG, "Preparing to send identity...", buf, 2u);
    }

    *buf = 0;
    if (!SecIdentityCopyCertificate(self->_identity, buf) && self->_identity && *buf)
    {
      v39 = +[DMCFeatureOverrides bypassMDMTLSClientAuthentication];
      v40 = *DMCLogObjects();
      if (v39)
      {
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          *v42 = 0;
          _os_log_impl(&dword_1B1630000, v40, OS_LOG_TYPE_ERROR, "Ignoring request for client identity and performing default handling", v42, 2u);
        }

        handlerCopy[2](handlerCopy, 1, 0);
      }

      else
      {
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
        {
          *v42 = 0;
          _os_log_impl(&dword_1B1630000, v40, OS_LOG_TYPE_DEBUG, "Sending client identity certificate", v42, 2u);
        }

        v41 = [MEMORY[0x1E696AF30] credentialWithIdentity:self->_identity certificates:0 persistence:1];
        (handlerCopy)[2](handlerCopy, 0, v41);
      }
    }

    else
    {
      if (!self->_error)
      {
        v34 = MEMORY[0x1E696ABC0];
        v35 = DMCErrorArray(@"HTTP_ERROR_INVALID_IDENTITY_P_URL_%@", v27, v28, v29, v30, v31, v32, v33, self->_requestURL);
        v36 = [v34 DMCErrorWithDomain:@"DMCHTTPTransactionErrorDomain" code:23000 descriptionArray:v35 errorType:@"DMCFatalError"];
        v37 = self->_error;
        self->_error = v36;
      }

      handlerCopy[2](handlerCopy, 2, 0);
    }

    if (*buf)
    {
      CFRelease(*buf);
    }
  }

  else
  {
    handlerCopy[2](handlerCopy, 0, 0);
  }

LABEL_22:

  v38 = *MEMORY[0x1E69E9840];
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  v50[1] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  taskCopy = task;
  originalRequest = [taskCopy originalRequest];
  response = [taskCopy response];

  [DMCHTTPLog logHTTPDetailsForIdentifier:@"Logs" request:originalRequest response:response responseData:self->_responseData responseError:errorCopy];
  if (errorCopy)
  {
    if (!self->_error)
    {
      v11 = MEMORY[0x1E696ABC0];
      domain = [errorCopy domain];
      code = [errorCopy code];
      localizedDescription = [errorCopy localizedDescription];
      v50[0] = localizedDescription;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:1];
      v16 = [v11 DMCErrorWithDomain:domain code:code descriptionArray:v15 errorType:@"DMCRetryableError"];
      error = self->_error;
      self->_error = v16;
    }

    v18 = *DMCLogObjects();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      currentURL = self->_currentURL;
      v20 = self->_error;
      v21 = v18;
      dMCVerboseDescription = [(NSError *)v20 DMCVerboseDescription];
      *buf = 138543618;
      v47 = currentURL;
      v48 = 2114;
      v49 = dMCVerboseDescription;
      _os_log_impl(&dword_1B1630000, v21, OS_LOG_TYPE_ERROR, "Connection to %{public}@ failed with error: %{public}@", buf, 0x16u);
    }

    goto LABEL_17;
  }

  statusCode = self->_statusCode;
  v24 = *DMCLogObjects();
  if (statusCode == 403)
  {
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = self->_currentURL;
      *buf = 138543362;
      v47 = v25;
      _os_log_impl(&dword_1B1630000, v24, OS_LOG_TYPE_ERROR, "Connection to %{public}@ finished with 403 response", buf, 0xCu);
    }

    v26 = [MEMORY[0x1E695DF20] dmc_jsonDictionaryFromData:self->_responseData];
    if (v26)
    {
      v45 = 0;
      v27 = [DMCHTTPRequestor parse403ErrorWithResponseDictionary:v26 outError:&v45];
      v28 = v45;
      v29 = v28;
      if (v27)
      {
        v29 = v28;
        v30 = self->_error;
        self->_error = v29;
LABEL_16:

        goto LABEL_17;
      }
    }

    else
    {
      v29 = 0;
    }

    v32 = MEMORY[0x1E696ABC0];
    requestURL = self->_requestURL;
    v30 = [MEMORY[0x1E696AD98] numberWithInteger:self->_statusCode];
    v41 = DMCErrorArray(@"HTTP_ERROR_REQUEST_FAILED_%@_%@", v34, v35, v36, v37, v38, v39, v40, requestURL);
    v42 = [v32 DMCErrorWithDomain:@"DMCHTTPTransactionErrorDomain" code:23010 descriptionArray:v41 errorType:@"DMCFatalError"];
    v43 = self->_error;
    self->_error = v42;

    goto LABEL_16;
  }

  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    v31 = self->_currentURL;
    *buf = 138543362;
    v47 = v31;
    _os_log_impl(&dword_1B1630000, v24, OS_LOG_TYPE_DEBUG, "Connection finished loading to URL %{public}@", buf, 0xCu);
  }

LABEL_17:
  [(DMCHTTPTransaction *)self _completeTransaction];

  v44 = *MEMORY[0x1E69E9840];
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler
{
  v31 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  responseCopy = response;
  self->_statusCode = [responseCopy statusCode];
  allHeaderFields = [responseCopy allHeaderFields];

  responseHeaders = self->_responseHeaders;
  self->_responseHeaders = allHeaderFields;

  v12 = *DMCLogObjects();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    statusCode = self->_statusCode;
    *buf = 67109120;
    v30 = statusCode;
    _os_log_impl(&dword_1B1630000, v12, OS_LOG_TYPE_DEBUG, "Received response status code: %d", buf, 8u);
  }

  v14 = self->_statusCode;
  if (v14 == 403 || v14 == 200)
  {
    self->_rememberData = 1;
  }

  else if (!self->_error)
  {
    v15 = MEMORY[0x1E696ABC0];
    requestURL = self->_requestURL;
    v28 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    v24 = DMCErrorArray(@"HTTP_ERROR_REQUEST_FAILED_%@_%@", v17, v18, v19, v20, v21, v22, v23, requestURL);
    v25 = [v15 DMCErrorWithDomain:@"DMCHTTPTransactionErrorDomain" code:23002 descriptionArray:v24 errorType:@"DMCFatalError"];
    error = self->_error;
    self->_error = v25;
  }

  handlerCopy[2](handlerCopy);

  v27 = *MEMORY[0x1E69E9840];
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data
{
  if (self->_rememberData)
  {
    [(NSMutableData *)self->_responseData appendData:data, task];
  }
}

- (void)URLSession:(id)session downloadTask:(id)task didFinishDownloadingToURL:(id)l
{
  v51 = *MEMORY[0x1E69E9840];
  lCopy = l;
  response = [task response];
  self->_statusCode = [response statusCode];
  allHeaderFields = [response allHeaderFields];
  responseHeaders = self->_responseHeaders;
  self->_responseHeaders = allHeaderFields;

  v11 = *DMCLogObjects();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    statusCode = self->_statusCode;
    *buf = 67109120;
    LODWORD(v46) = statusCode;
    _os_log_impl(&dword_1B1630000, v11, OS_LOG_TYPE_DEBUG, "Received response status code: %d", buf, 8u);
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  downloadURL = [(DMCHTTPTransaction *)self downloadURL];
  v44 = 0;
  v15 = [defaultManager removeItemAtURL:downloadURL error:&v44];
  v16 = v44;
  v17 = v44;

  if (v15)
  {
    v18 = *DMCLogObjects();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v19 = v18;
      downloadURL2 = [(DMCHTTPTransaction *)self downloadURL];
      path = [downloadURL2 path];
      *buf = 138543362;
      v46 = path;
      _os_log_impl(&dword_1B1630000, v19, OS_LOG_TYPE_DEBUG, "Removed existing downloaded data file at %{public}@", buf, 0xCu);
    }

    goto LABEL_8;
  }

  domain = [v17 domain];
  if ([domain isEqualToString:*MEMORY[0x1E696A250]])
  {
    code = [v17 code];

    if (code == 4)
    {
LABEL_8:
      defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
      downloadURL3 = [(DMCHTTPTransaction *)self downloadURL];
      v43 = v17;
      v26 = [defaultManager2 moveItemAtURL:lCopy toURL:downloadURL3 error:&v43];
      v27 = v43;
      v28 = v43;

      v29 = *DMCLogObjects();
      if (v26)
      {
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          v30 = v29;
          path2 = [lCopy path];
          downloadURL4 = [(DMCHTTPTransaction *)self downloadURL];
          path3 = [downloadURL4 path];
          *buf = 138543618;
          v46 = path2;
          v47 = 2114;
          v48 = path3;
          _os_log_impl(&dword_1B1630000, v30, OS_LOG_TYPE_DEBUG, "Moved downloaded data file at %{public}@, to %{public}@", buf, 0x16u);
        }
      }

      else
      {
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v34 = v29;
          path4 = [lCopy path];
          downloadURL5 = [(DMCHTTPTransaction *)self downloadURL];
          path5 = [downloadURL5 path];
          *buf = 138543874;
          v46 = path4;
          v47 = 2114;
          v48 = path5;
          v49 = 2114;
          v50 = v28;
          _os_log_impl(&dword_1B1630000, v34, OS_LOG_TYPE_ERROR, "Could not move downloaded data file at %{public}@, to %{public}@: %{public}@", buf, 0x20u);
        }

        objc_storeStrong(&self->_error, v27);
      }

      v17 = v28;
      goto LABEL_19;
    }
  }

  else
  {
  }

  v38 = *DMCLogObjects();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
  {
    v39 = v38;
    downloadURL6 = [(DMCHTTPTransaction *)self downloadURL];
    path6 = [downloadURL6 path];
    *buf = 138543618;
    v46 = path6;
    v47 = 2114;
    v48 = v17;
    _os_log_impl(&dword_1B1630000, v39, OS_LOG_TYPE_ERROR, "Failed to remove existing downloaded data file at %{public}@: %{public}@", buf, 0x16u);
  }

  objc_storeStrong(&self->_error, v16);
LABEL_19:

  v42 = *MEMORY[0x1E69E9840];
}

void __47__DMCHTTPTransaction_emptySuccessResponseBlock__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  *a2 = 200;
  *a3 = 0;
  if (a4)
  {
    *a4 = 0;
  }
}

@end