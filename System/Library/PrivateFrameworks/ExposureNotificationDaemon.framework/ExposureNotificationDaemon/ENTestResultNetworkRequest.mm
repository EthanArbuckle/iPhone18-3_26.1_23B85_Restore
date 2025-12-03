@interface ENTestResultNetworkRequest
- (ENTestResultNetworkRequest)initWithRequestURL:(id)l URLSession:(id)session queue:(id)queue;
- (NSDictionary)requestHeaders;
- (id)_createURLRequestWithError:(id *)error;
- (id)_dictionaryFromData:(id)data response:(id)response error:(id *)error;
- (id)_errorForURLRequestError:(id)error;
- (id)errorForUnsuccessfulResponse:(id)response body:(id)body;
- (id)getPaddedBodyJSONAndReturnError:(id *)error;
- (unint64_t)retryCheck:(id)check retryAttempt:(int)attempt baseMultiplier:(int)multiplier;
- (void)_completeWithError:(id)error;
- (void)_dataTaskWithRequest:(id)request completionHandler:(id)handler;
- (void)_performURLRequest:(id)request attempt:(int)attempt;
- (void)handleURLResponse:(id)response data:(id)data error:(id)error;
- (void)invalidate;
- (void)resumeWithCompletionHandler:(id)handler;
@end

@implementation ENTestResultNetworkRequest

- (ENTestResultNetworkRequest)initWithRequestURL:(id)l URLSession:(id)session queue:(id)queue
{
  lCopy = l;
  sessionCopy = session;
  queueCopy = queue;
  v15.receiver = self;
  v15.super_class = ENTestResultNetworkRequest;
  v11 = [(ENTestResultNetworkRequest *)&v15 init];
  if (v11)
  {
    v12 = [lCopy copy];
    requestURL = v11->_requestURL;
    v11->_requestURL = v12;

    objc_storeStrong(&v11->_queue, queue);
    objc_storeStrong(&v11->_URLSession, session);
  }

  return v11;
}

- (void)invalidate
{
  [(NSURLSessionTask *)self->_URLSessionTask cancel];
  URLSessionTask = self->_URLSessionTask;
  self->_URLSessionTask = 0;

  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;
}

- (id)getPaddedBodyJSONAndReturnError:(id *)error
{
  bodyJSON = [(ENTestResultNetworkRequest *)self bodyJSON];
  paddedRequestSize = [(ENTestResultNetworkRequest *)self paddedRequestSize];
  if (paddedRequestSize)
  {
    v7 = paddedRequestSize;
    v8 = [bodyJSON mutableCopy];
    [v8 setObject:&stru_285D62BB0 forKeyedSubscript:@"padding"];
    if ([MEMORY[0x277CCAA98] isValidJSONObject:bodyJSON])
    {
      v9 = [MEMORY[0x277CCAA98] dataWithJSONObject:v8 options:0 error:error];
      v10 = v9;
      if (v9)
      {
        v19 = 0;
        v20 = &v19;
        v21 = 0x2020000000;
        v22 = [v9 length];
        requestHeaders = [(ENTestResultNetworkRequest *)self requestHeaders];
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __62__ENTestResultNetworkRequest_getPaddedBodyJSONAndReturnError___block_invoke;
        v18[3] = &unk_278FD22D8;
        v18[4] = &v19;
        [requestHeaders enumerateKeysAndObjectsUsingBlock:v18];

        if (v7 <= v20[3])
        {
          if (error)
          {
            v17 = v20[3];
            ENErrorF();
            *error = v15 = 0;
          }

          else
          {
            v15 = 0;
          }
        }

        else
        {
          v12 = NSRandomData();
          v13 = v12;
          if (v12)
          {
            v14 = [v12 base64EncodedStringWithOptions:0];
            [v8 setObject:v14 forKeyedSubscript:@"padding"];

            v15 = v8;
          }

          else
          {
            v15 = 0;
          }
        }

        _Block_object_dispose(&v19, 8);
      }

      else
      {
        v15 = 0;
      }
    }

    else if (error)
    {
      ENErrorF();
      *error = v15 = 0;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = bodyJSON;
  }

  return v15;
}

void __62__ENTestResultNetworkRequest_getPaddedBodyJSONAndReturnError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) += [a2 length];
  v6 = [v5 length];

  *(*(*(a1 + 32) + 8) + 24) += v6;
}

- (void)resumeWithCompletionHandler:(id)handler
{
  v4 = [handler copy];
  completionHandler = self->_completionHandler;
  self->_completionHandler = v4;

  v8 = 0;
  v6 = [(ENTestResultNetworkRequest *)self _createURLRequestWithError:&v8];
  v7 = v8;
  if (v6)
  {
    [(ENTestResultNetworkRequest *)self _performURLRequest:v6 attempt:0];
  }

  else
  {
    [(ENTestResultNetworkRequest *)self _completeWithError:v7];
  }
}

- (void)handleURLResponse:(id)response data:(id)data error:(id)error
{
  responseCopy = response;
  dataCopy = data;
  errorCopy = error;
  [(NSURLSessionTask *)self->_URLSessionTask cancel];
  URLSessionTask = self->_URLSessionTask;
  self->_URLSessionTask = 0;

  v12 = responseCopy;
  v13 = [v12 URL];
  absoluteString = [v13 absoluteString];

  statusCode = [v12 statusCode];
  if (v12)
  {
    v16 = statusCode;
    v34 = absoluteString;
    if (dataCopy)
    {
      v35 = 0;
      v17 = dataCopy;
      v18 = [(ENTestResultNetworkRequest *)self _dictionaryFromData:dataCopy response:v12 error:&v35];
      v19 = v35;
    }

    else
    {
      v17 = 0;
      v18 = 0;
      v19 = 0;
    }

    v22 = +[ENLoggingPrefs sharedENLoggingPrefs];
    isSensitiveLoggingAllowed = [v22 isSensitiveLoggingAllowed];

    if ((isSensitiveLoggingAllowed & 1) != 0 && gLogCategory_ENTestResultNetworkRequest <= 30 && (gLogCategory_ENTestResultNetworkRequest != -1 || _LogCategory_Initialize()))
    {
      v32 = [v17 length];
      v33 = v18;
      v30 = v34;
      v31 = v16;
      LogPrintF_safe();
    }

    v24 = [ENLoggingPrefs sharedENLoggingPrefs:v30];
    isSensitiveLoggingAllowed2 = [v24 isSensitiveLoggingAllowed];

    if (isSensitiveLoggingAllowed2 && gLogCategory_ENTestResultNetworkRequest <= 30 && (gLogCategory_ENTestResultNetworkRequest != -1 || _LogCategory_Initialize()))
    {
      [ENTestResultNetworkRequest handleURLResponse:v12 data:? error:?];
    }

    dataCopy = v17;
    if (v16 != 200 && !v19)
    {
      if (v18)
      {
        v26 = v18;
      }

      else
      {
        v26 = MEMORY[0x277CBEC08];
      }

      v19 = [(ENTestResultNetworkRequest *)self errorForUnsuccessfulResponse:v12 body:v26];
    }

    absoluteString = v34;
    if (v18 && !v19)
    {
      CFStringGetTypeID();
      v27 = CFDictionaryGetTypedValue();
      v28 = v27;
      if (v27 && [v27 length])
      {
        v30 = v28;
        v29 = ENTestResultErrorF(6);
      }

      else
      {
        v29 = [(ENTestResultNetworkRequest *)self handleResponse:v12 body:v18];
      }

      v19 = v29;

      goto LABEL_35;
    }

    if (v19)
    {
      goto LABEL_35;
    }

LABEL_32:
    v19 = ENTestResultErrorF(1);
    goto LABEL_35;
  }

  v20 = +[ENLoggingPrefs sharedENLoggingPrefs];
  isSensitiveLoggingAllowed3 = [v20 isSensitiveLoggingAllowed];

  if (isSensitiveLoggingAllowed3 && gLogCategory_ENTestResultNetworkRequest <= 90 && (gLogCategory_ENTestResultNetworkRequest != -1 || _LogCategory_Initialize()))
  {
    [ENTestResultNetworkRequest handleURLResponse:data:error:];
  }

  v19 = [(ENTestResultNetworkRequest *)self _errorForURLRequestError:errorCopy];
  v18 = 0;
  if (!v19)
  {
    goto LABEL_32;
  }

LABEL_35:
  [(ENTestResultNetworkRequest *)self _completeWithError:v19, v30];
}

- (id)errorForUnsuccessfulResponse:(id)response body:(id)body
{
  bodyCopy = body;
  responseCopy = response;
  CFStringGetTypeID();
  v7 = CFDictionaryGetTypedValue();
  CFStringGetTypeID();
  v8 = CFDictionaryGetTypedValue();

  statusCode = [responseCopy statusCode];
  if (statusCode == 429)
  {
    v10 = ENTestResultErrorF(7);
  }

  else
  {
    v11 = [&unk_285D6E520 objectForKeyedSubscript:v8];
    v12 = v11;
    if (v11)
    {
      integerValue = [v11 integerValue];
    }

    else
    {
      integerValue = 6;
    }

    [v7 length];
    v10 = ENTestResultErrorF(integerValue);
  }

  return v10;
}

- (id)_createURLRequestWithError:(id *)error
{
  v5 = objc_autoreleasePoolPush();
  v18 = 0;
  bodyJSON = [(ENTestResultNetworkRequest *)self getPaddedBodyJSONAndReturnError:&v18];
  v7 = v18;
  if (!bodyJSON)
  {
    v8 = +[ENLoggingPrefs sharedENLoggingPrefs];
    isSensitiveLoggingAllowed = [v8 isSensitiveLoggingAllowed];

    if (isSensitiveLoggingAllowed && gLogCategory_ENTestResultNetworkRequest <= 90 && (gLogCategory_ENTestResultNetworkRequest != -1 || _LogCategory_Initialize()))
    {
      [ENTestResultNetworkRequest _createURLRequestWithError:];
    }

    bodyJSON = [(ENTestResultNetworkRequest *)self bodyJSON];
  }

  if ([MEMORY[0x277CCAA98] isValidJSONObject:bodyJSON])
  {
    v17 = 0;
    v10 = [MEMORY[0x277CCAA98] dataWithJSONObject:bodyJSON options:0 error:&v17];
    v11 = v17;
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  objc_autoreleasePoolPop(v5);
  if (v10)
  {
    v12 = objc_alloc(MEMORY[0x277CBAB58]);
    requestURL = [(ENTestResultNetworkRequest *)self requestURL];
    v14 = [v12 initWithURL:requestURL];

    requestHeaders = [(ENTestResultNetworkRequest *)self requestHeaders];
    [v14 setAllHTTPHeaderFields:requestHeaders];

    [v14 setHTTPBody:v10];
    [v14 setHTTPMethod:@"POST"];
  }

  else if (error)
  {
    ENNestedTestResultErrorF(v11, 1);
    *error = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (NSDictionary)requestHeaders
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB30]);
  [v3 setObject:self->_APIKey forKeyedSubscript:@"X-API-Key"];
  [v3 setObject:@"application/json" forKeyedSubscript:@"Content-Type"];
  additionalRequestHeaders = [(ENTestResultNetworkRequest *)self additionalRequestHeaders];
  [v3 addEntriesFromDictionary:additionalRequestHeaders];

  v5 = [v3 copy];

  return v5;
}

- (id)_errorForURLRequestError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v5 = [domain isEqualToString:*MEMORY[0x277CCA740]];

  if (!v5 || (v6 = [errorCopy code], v6 == -1002))
  {
    v7 = errorCopy;
    v8 = 1;
  }

  else if (v6 == -1001)
  {
    v7 = errorCopy;
    v8 = 8;
  }

  else
  {
    v7 = errorCopy;
    v8 = 11;
  }

  v9 = ENNestedTestResultErrorF(v7, v8);

  return v9;
}

- (void)_performURLRequest:(id)request attempt:(int)attempt
{
  requestCopy = request;
  if (self->_URLSessionTask)
  {
    [ENTestResultNetworkRequest _performURLRequest:a2 attempt:self];
  }

  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  attemptCopy = attempt;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__ENTestResultNetworkRequest__performURLRequest_attempt___block_invoke;
  v9[3] = &unk_278FD2300;
  v9[4] = self;
  v11 = v12;
  v8 = requestCopy;
  v10 = v8;
  [(ENTestResultNetworkRequest *)self _dataTaskWithRequest:v8 completionHandler:v9];

  _Block_object_dispose(v12, 8);
}

void __57__ENTestResultNetworkRequest__performURLRequest_attempt___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [*(a1 + 32) retryCheck:v8 retryAttempt:*(*(*(a1 + 48) + 8) + 24) baseMultiplier:2];
  if (v10)
  {
    v11 = v10;
    v12 = +[ENLoggingPrefs sharedENLoggingPrefs];
    v13 = [v12 isSensitiveLoggingAllowed];

    if (v13 && gLogCategory_ENTestResultNetworkRequest <= 30 && (gLogCategory_ENTestResultNetworkRequest != -1 || _LogCategory_Initialize()))
    {
      __57__ENTestResultNetworkRequest__performURLRequest_attempt___block_invoke_cold_1();
    }

    [*(*(a1 + 32) + 32) cancel];
    v14 = *(a1 + 32);
    v15 = *(v14 + 32);
    *(v14 + 32) = 0;

    v16 = dispatch_time(0, 1000000000 * v11);
    v17 = *(a1 + 32);
    v18 = *(v17 + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__ENTestResultNetworkRequest__performURLRequest_attempt___block_invoke_2;
    block[3] = &unk_278FD10D0;
    block[4] = v17;
    v19 = &v29;
    v23 = *(a1 + 40);
    v20 = v23;
    v29 = v23;
    dispatch_after(v16, v18, block);
  }

  else
  {
    v21 = *(a1 + 32);
    v22 = *(v21 + 16);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __57__ENTestResultNetworkRequest__performURLRequest_attempt___block_invoke_3;
    v24[3] = &unk_278FD1CA8;
    v24[4] = v21;
    v19 = &v25;
    v25 = v8;
    v26 = v7;
    v27 = v9;
    dispatch_async(v22, v24);
  }
}

- (void)_dataTaskWithRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  URLSession = self->_URLSession;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __69__ENTestResultNetworkRequest__dataTaskWithRequest_completionHandler___block_invoke;
  v14[3] = &unk_278FD2328;
  v9 = handlerCopy;
  v15 = v9;
  v10 = [(NSURLSession *)URLSession dataTaskWithRequest:requestCopy completionHandler:v14];
  URLSessionTask = self->_URLSessionTask;
  self->_URLSessionTask = v10;

  v12 = +[ENLoggingPrefs sharedENLoggingPrefs];
  isSensitiveLoggingAllowed = [v12 isSensitiveLoggingAllowed];

  if (isSensitiveLoggingAllowed && gLogCategory_ENTestResultNetworkRequest <= 30 && (gLogCategory_ENTestResultNetworkRequest != -1 || _LogCategory_Initialize()))
  {
    [ENTestResultNetworkRequest _dataTaskWithRequest:requestCopy completionHandler:?];
  }

  [(NSURLSessionTask *)self->_URLSessionTask resume];
}

- (unint64_t)retryCheck:(id)check retryAttempt:(int)attempt baseMultiplier:(int)multiplier
{
  statusCode = [check statusCode];
  if (attempt < 0)
  {
    v19 = 0;
  }

  else
  {
    v10 = vdup_n_s32(attempt);
    v11 = vdup_n_s32(multiplier);
    v12 = 0x100000000;
    v13 = (attempt & 0x7FFFFFFE) + 2;
    v14 = 0uLL;
    do
    {
      v15 = v12;
      v16 = v14;
      v14 = vaddw_s32(v14, vshl_u32(0x100000001, vmul_s32(v12, v11)));
      v12 = vadd_s32(v12, 0x200000002);
      v13 -= 2;
    }

    while (v13);
    v17 = vcgt_u32(v15, v10);
    v18.i64[0] = v17.i32[0];
    v18.i64[1] = v17.i32[1];
    v19 = vaddvq_s64(vbslq_s8(v18, v16, v14));
  }

  v20 = 0;
  v22 = statusCode != 429 && (statusCode - 600) < 0xFFFFFFFFFFFFFF9CLL;
  if (check)
  {
    if (!v22)
    {
      v20 = 1 << (multiplier * attempt);
      if (v19 >= self->_maxRetryTime)
      {
        return 0;
      }
    }
  }

  return v20;
}

- (void)_completeWithError:(id)error
{
  errorCopy = error;
  v4 = [errorCopy copy];
  error = self->_error;
  self->_error = v4;

  v6 = MEMORY[0x24C214430](self->_completionHandler);
  v7 = v6;
  if (v6)
  {
    (*(v6 + 16))(v6, self, errorCopy);
    completionHandler = self->_completionHandler;
    self->_completionHandler = 0;
  }
}

- (id)_dictionaryFromData:(id)data response:(id)response error:(id *)error
{
  dataCopy = data;
  responseCopy = response;
  if ([dataCopy length])
  {
    mIMEType = [responseCopy MIMEType];
    v22 = 0;
    v10 = [MEMORY[0x277CCAA98] JSONObjectWithData:dataCopy options:0 error:&v22];
    v11 = v22;
    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v10;
LABEL_20:

        goto LABEL_21;
      }

      if (error)
      {
LABEL_32:
        v19 = ENTestResultErrorF(4);
        goto LABEL_33;
      }

LABEL_34:
      v12 = 0;
      goto LABEL_20;
    }

    if ([mIMEType isEqualToString:@"application/json"])
    {
      if (error)
      {
        v19 = ENNestedTestResultErrorF(v11, 4);
LABEL_33:
        v12 = 0;
        *error = v19;
        goto LABEL_20;
      }

      goto LABEL_34;
    }

    if ([mIMEType isEqualToString:@"text/plain"])
    {
      if ([dataCopy length] <= 0x3FF)
      {
        v13 = [objc_alloc(MEMORY[0x277CCACA0]) initWithData:dataCopy encoding:4];
        v14 = +[ENLoggingPrefs sharedENLoggingPrefs];
        isSensitiveLoggingAllowed = [v14 isSensitiveLoggingAllowed];

        if (isSensitiveLoggingAllowed && gLogCategory_ENTestResultNetworkRequest <= 50 && (gLogCategory_ENTestResultNetworkRequest != -1 || _LogCategory_Initialize()))
        {
          v20 = [responseCopy URL];
          v21 = v13;
          LogPrintF_safe();
        }

        goto LABEL_17;
      }

      v16 = +[ENLoggingPrefs sharedENLoggingPrefs];
      isSensitiveLoggingAllowed2 = [v16 isSensitiveLoggingAllowed];

      if (isSensitiveLoggingAllowed2 && gLogCategory_ENTestResultNetworkRequest <= 50 && (gLogCategory_ENTestResultNetworkRequest != -1 || _LogCategory_Initialize()))
      {
        v13 = [responseCopy URL];
        v20 = v13;
        v21 = [dataCopy length];
        LogPrintF_safe();
LABEL_17:
      }
    }

    if ([responseCopy statusCode] != 200)
    {
      v12 = MEMORY[0x277CBEC08];
      goto LABEL_20;
    }

    if (error)
    {
      goto LABEL_32;
    }

    goto LABEL_34;
  }

  v12 = MEMORY[0x277CBEC08];
LABEL_21:

  return v12;
}

- (void)handleURLResponse:(void *)a1 data:error:.cold.1(void *a1)
{
  v1 = [a1 allHeaderFields];
  LogPrintF_safe();
}

- (void)_performURLRequest:(uint64_t)a1 attempt:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA888] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ENTestResultNetworkRequest.m" lineNumber:296 description:{@"Invalid parameter not satisfying: %@", @"!_URLSessionTask"}];
}

- (void)_dataTaskWithRequest:(void *)a1 completionHandler:.cold.1(void *a1)
{
  v2 = [a1 allHTTPHeaderFields];
  v3 = [a1 HTTPBody];
  [v3 length];
  LogPrintF_safe();
}

@end