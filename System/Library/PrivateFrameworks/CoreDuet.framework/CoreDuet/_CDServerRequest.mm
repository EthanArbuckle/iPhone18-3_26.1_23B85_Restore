@interface _CDServerRequest
+ (id)getHTTPModifiedSinceFromHeaders:(uint64_t)headers;
+ (void)addHTTPIfModifiedSinceToHeaders:(void *)headers date:;
- (NSString)description;
- (_CDServerRequest)init;
- (id)_requestForMethod:(uint64_t)method URI:(void *)i queryItems:(void *)items headers:(void *)headers body:(double)body timeoutInterval:;
- (id)startDataTaskWithURI:(id)i headers:(uint64_t)headers timeoutInterval:(void *)interval responseHandler:(void *)handler;
- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error;
- (void)URLSession:(id)session downloadTask:(id)task didFinishDownloadingToURL:(id)l;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task didSendBodyData:(int64_t)data totalBytesSent:(int64_t)sent totalBytesExpectedToSend:(int64_t)send;
- (void)_newDefaultSession;
@end

@implementation _CDServerRequest

- (_CDServerRequest)init
{
  v6.receiver = self;
  v6.super_class = _CDServerRequest;
  v2 = [(_CDServerRequest *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    sessionQueue = v2->_sessionQueue;
    v2->_sessionQueue = v3;

    [(NSOperationQueue *)v2->_sessionQueue setMaxConcurrentOperationCount:1];
  }

  return v2;
}

+ (void)addHTTPIfModifiedSinceToHeaders:(void *)headers date:
{
  v8 = a2;
  headersCopy = headers;
  objc_opt_self();
  if (v8 && headersCopy)
  {
    v5 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v5 setDateFormat:@"EEE, dd MMM yyyy HH:mm:ss zzz"];
    v6 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"GMT"];
    [v5 setTimeZone:v6];

    v7 = [v5 stringFromDate:headersCopy];
    [v8 setObject:v7 forKeyedSubscript:@"If-Modified-Since"];
  }
}

+ (id)getHTTPModifiedSinceFromHeaders:(uint64_t)headers
{
  v2 = a2;
  objc_opt_self();
  if (v2)
  {
    v3 = [v2 objectForKeyedSubscript:@"Last-Modified"];
    v4 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v4 setDateFormat:@"EEE, dd MMM yyyy HH:mm:ss zzz"];
    v5 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"GMT"];
    [v4 setTimeZone:v5];

    v6 = [v4 dateFromString:v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_newDefaultSession
{
  selfCopy = self;
  if (self)
  {
    defaultSessionConfiguration = [MEMORY[0x1E696AF80] defaultSessionConfiguration];
    selfCopy = [MEMORY[0x1E696AF78] sessionWithConfiguration:defaultSessionConfiguration delegate:selfCopy delegateQueue:{objc_getProperty(selfCopy, v3, 16, 1)}];
  }

  return selfCopy;
}

- (id)_requestForMethod:(uint64_t)method URI:(void *)i queryItems:(void *)items headers:(void *)headers body:(double)body timeoutInterval:
{
  if (self)
  {
    v12 = MEMORY[0x1E695DFF8];
    headersCopy = headers;
    itemsCopy = items;
    iCopy = i;
    v16 = a2;
    v17 = [v12 URLWithString:method];
    v18 = [MEMORY[0x1E696AF20] componentsWithURL:v17 resolvingAgainstBaseURL:1];
    [v18 setQueryItems:iCopy];

    v19 = [v18 URL];

    v20 = [MEMORY[0x1E696AD68] requestWithURL:v19 cachePolicy:1 timeoutInterval:body];
    [v20 setHTTPMethod:v16];

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __82___CDServerRequest__requestForMethod_URI_queryItems_headers_body_timeoutInterval___block_invoke;
    v23[3] = &unk_1E73684A8;
    v21 = v20;
    v24 = v21;
    [itemsCopy enumerateKeysAndObjectsUsingBlock:v23];

    [v21 setHTTPBody:headersCopy];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)startDataTaskWithURI:(id)i headers:(uint64_t)headers timeoutInterval:(void *)interval responseHandler:(void *)handler
{
  iCopy = i;
  v41 = *MEMORY[0x1E69E9840];
  if (i)
  {
    handlerCopy = handler;
    v7 = OUTLINED_FUNCTION_6_6();
    [(_CDServerRequest *)v8 _requestForMethod:v9 URI:v10 queryItems:v11 headers:v12 body:v13 timeoutInterval:v7];
    objc_claimAutoreleasedReturnValue();
    v14 = OUTLINED_FUNCTION_5_3();
    objc_setProperty_atomic(v14, v15, v16, 32);

    objc_setProperty_atomic_copy(iCopy, v17, handlerCopy, 8);
    v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG);
    if (v18)
    {
      OUTLINED_FUNCTION_7_1(v18, v19);
      OUTLINED_FUNCTION_8();
      _os_log_debug_impl(v20, v21, v22, v23, v24, 0xCu);
    }

    [(_CDServerRequest *)iCopy _newDefaultSession];
    v25 = OUTLINED_FUNCTION_5_3();
    objc_setProperty_atomic(v25, v26, v27, 24);

    OUTLINED_FUNCTION_3_6();
    v32 = [objc_getProperty(v28 v29];
    [v32 timeoutIntervalForResource];
    [v32 setTimeoutIntervalForRequest:?];
    OUTLINED_FUNCTION_3_6();
    v37 = objc_getProperty(v33, v34, v35, v36);
    iCopy = [v37 dataTaskWithRequest:{OUTLINED_FUNCTION_7_1(v37, v38)}];

    [iCopy resume];
  }

  v39 = *MEMORY[0x1E69E9840];

  return iCopy;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v6 = NSStringFromClass(v4);
  if (self)
  {
    Property = objc_getProperty(self, v5, 32, 1);
  }

  else
  {
    Property = 0;
  }

  v8 = [Property URL];
  absoluteString = [v8 absoluteString];
  v10 = [v3 stringWithFormat:@"%@<%p>{ url=%@ }", v6, self, absoluteString];

  return v10;
}

- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error
{
  v35 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  errorCopy = error;
  if (self)
  {
    OUTLINED_FUNCTION_3_6();
    Property = objc_getProperty(v9, v10, v11, v12);
  }

  else
  {
    Property = 0;
  }

  if (Property == sessionCopy)
  {
    if (self)
    {
      v16 = objc_getProperty(self, v7, 8, 1);
      objc_setProperty_atomic_copy(self, v17, 0, 8);
      if (v16)
      {
        (*(v16 + 2))(v16, 0, 0, 0, errorCopy);
      }

      OUTLINED_FUNCTION_3_6();
      v22 = objc_getProperty(v18, v19, v20, v21);
    }

    else
    {
      v16 = 0;
      v22 = 0;
    }

    [v22 invalidateAndCancel];
    if (self)
    {
      objc_setProperty_atomic(self, v23, 0, 24);
    }
  }

  else
  {
    v14 = MEMORY[0x1E69E9C10];
    v15 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      if (self)
      {
        OUTLINED_FUNCTION_3_6();
        objc_getProperty(v25, v26, v27, v28);
      }

      OUTLINED_FUNCTION_1_10();
      OUTLINED_FUNCTION_2_7();
      _os_log_debug_impl(v29, v30, v31, v32, v33, v34);
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)URLSession:(id)session downloadTask:(id)task didFinishDownloadingToURL:(id)l
{
  v42 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  taskCopy = task;
  lCopy = l;
  if (self)
  {
    OUTLINED_FUNCTION_3_6();
    Property = objc_getProperty(v11, v12, v13, v14);
  }

  else
  {
    Property = 0;
  }

  if (Property == sessionCopy)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      LODWORD(v41) = 138412290;
      *(&v41 + 4) = self;
      OUTLINED_FUNCTION_8();
      _os_log_debug_impl(v36, v37, v38, v39, v40, 0xCu);
    }

    response = [taskCopy response];
    objc_opt_class();
    if (!((self == 0) | ((objc_opt_isKindOfClass() & 1) == 0)))
    {
      objc_setProperty_atomic(self, v28, response, 40);
      v30 = objc_getProperty(self, v29, 8, 1);
      objc_setProperty_atomic_copy(self, v31, 0, 8);
      if (v30)
      {
        v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(taskCopy, "taskIdentifier")}];
        v34 = OUTLINED_FUNCTION_8_3(v32, v33);
        v30[2](v30, v32, v34, lCopy, 0);
      }
    }
  }

  else
  {
    response = MEMORY[0x1E69E9C10];
    v17 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(response, OS_LOG_TYPE_DEBUG))
    {
      if (self)
      {
        OUTLINED_FUNCTION_3_6();
        objc_getProperty(v24, v25, v26, v27);
      }

      OUTLINED_FUNCTION_10_4(&dword_191750000, v18, v19, "Delegate session %@ is NOT the same as our session %@", v20, v21, v22, v23, 2u);
    }
  }

  v35 = *MEMORY[0x1E69E9840];
}

- (void)URLSession:(id)session task:(id)task didSendBodyData:(int64_t)data totalBytesSent:(int64_t)sent totalBytesExpectedToSend:(int64_t)send
{
  v34 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  taskCopy = task;
  if (self)
  {
    OUTLINED_FUNCTION_3_6();
    Property = objc_getProperty(v11, v12, v13, v14);
  }

  else
  {
    Property = 0;
  }

  if (Property == sessionCopy)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_8();
      _os_log_debug_impl(v29, v30, v31, v32, v33, 0x20u);
    }
  }

  else
  {
    v16 = MEMORY[0x1E69E9C10];
    v17 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      if (self)
      {
        OUTLINED_FUNCTION_3_6();
        objc_getProperty(v19, v20, v21, v22);
      }

      OUTLINED_FUNCTION_1_10();
      OUTLINED_FUNCTION_2_7();
      _os_log_debug_impl(v23, v24, v25, v26, v27, v28);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  v59 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  taskCopy = task;
  errorCopy = error;
  if (self)
  {
    OUTLINED_FUNCTION_3_6();
    Property = objc_getProperty(v11, v12, v13, v14);
  }

  else
  {
    Property = 0;
  }

  if (Property != sessionCopy)
  {
    v16 = MEMORY[0x1E69E9C10];
    v17 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      if (self)
      {
        OUTLINED_FUNCTION_3_6();
        objc_getProperty(v18, v19, v20, v21);
      }

      OUTLINED_FUNCTION_1_10();
      OUTLINED_FUNCTION_10_4(&dword_191750000, v22, v23, "Delegate session %@ is NOT the same as our session %@", v24, v25, v26, v27, v58[0]);
    }

    goto LABEL_29;
  }

  v28 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG);
  if (errorCopy)
  {
    if (v28)
    {
      *v58 = 138412546;
      *&v58[4] = self;
      *&v58[12] = 2112;
      *&v58[14] = errorCopy;
      OUTLINED_FUNCTION_2_7();
      goto LABEL_31;
    }
  }

  else if (v28)
  {
    *v58 = 138412290;
    *&v58[4] = self;
    OUTLINED_FUNCTION_8();
    v35 = 12;
LABEL_31:
    _os_log_debug_impl(v30, v31, v32, v33, v34, v35);
    if (!self)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (!self)
  {
    goto LABEL_14;
  }

LABEL_13:
  v36 = objc_getProperty(self, v29, 32, 1);
  if (!v36)
  {
LABEL_14:
    originalRequest = [taskCopy originalRequest];
    v40 = [originalRequest mutableCopy];
    if (self)
    {
      objc_setProperty_atomic(self, v39, v40, 32);
    }
  }

  if (!self || !OUTLINED_FUNCTION_8_3(v36, v37))
  {
    response = [taskCopy response];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (self && (isKindOfClass & 1) != 0)
    {
      objc_setProperty_atomic(self, v44, response, 40);
    }
  }

  if (self)
  {
    v16 = objc_getProperty(self, v41, 8, 1);
    objc_setProperty_atomic_copy(self, v45, 0, 8);
    if (v16)
    {
      v46 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(taskCopy, "taskIdentifier")}];
      v48 = OUTLINED_FUNCTION_8_3(v46, v47);
      v50 = OUTLINED_FUNCTION_9_2(v48, v49);
      (v16[2].isa)(v16, v46, v48, v50, errorCopy);
    }

    OUTLINED_FUNCTION_3_6();
    v55 = objc_getProperty(v51, v52, v53, v54);
  }

  else
  {
    v16 = 0;
    v55 = 0;
  }

  [v55 invalidateAndCancel];
  if (self)
  {
    objc_setProperty_atomic(self, v56, 0, 24);
  }

LABEL_29:

  v57 = *MEMORY[0x1E69E9840];
}

@end