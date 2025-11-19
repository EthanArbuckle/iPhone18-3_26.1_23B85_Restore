@interface FMCommandBase
- (BOOL)isTransactionCompleteWithError:(id)a3;
- (BOOL)wasSuccessful;
- (FMCommandBase)init;
- (FMServerInteractionController)serverInteractionController;
- (id)authHeaders;
- (id)headers;
- (id)valueForResponseHTTPHeader:(id)a3;
- (void)_dataTaskCompletionHandlerWithData:(id)a3 response:(id)a4 error:(id)a5;
- (void)cancel;
- (void)sendRequest;
@end

@implementation FMCommandBase

- (FMCommandBase)init
{
  v14 = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = FMCommandBase;
  v2 = [(FMCommandBase *)&v9 init];
  v3 = v2;
  if (v2)
  {
    [(FMCommandBase *)v2 setTimeout:120.0];
    [(FMCommandBase *)v3 setCommandTaskComplete:0];
    v4 = LogCategory_Networking();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = objc_opt_class();
      *buf = 138412546;
      v11 = v5;
      v12 = 2048;
      v13 = v3;
      v6 = v5;
      _os_log_impl(&dword_24A2EE000, v4, OS_LOG_TYPE_INFO, "%@ created [%p]", buf, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)cancel
{
  v3 = [(FMCommandBase *)self task];
  [v3 cancel];

  v4.receiver = self;
  v4.super_class = FMCommandBase;
  [(FMCommandBase *)&v4 cancel];
}

- (void)sendRequest
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = [(FMCommandBase *)self headers];
  v37 = [(FMCommandBase *)self serverInteractionController];
  v38 = [v37 session];
  if (v38)
  {
    v4 = [MEMORY[0x277CCABD8] currentQueue];
    objc_initWeak(&location, v4);

    [(FMCommandBase *)self timeout];
    when = dispatch_time(0, (v5 * 1000000000.0));
    objc_initWeak(&from, self);
    v6 = MEMORY[0x277CCAB68];
    v7 = [(FMCommandBase *)self scheme];
    v8 = [(FMCommandBase *)self host];
    v36 = [v6 stringWithFormat:@"%@://%@", v7, v8];

    v9 = [(FMCommandBase *)self port];
    LOBYTE(v4) = v9 == 0;

    if ((v4 & 1) == 0)
    {
      v10 = [(FMCommandBase *)self port];
      [v36 appendFormat:@":%@", v10];
    }

    v11 = [(FMCommandBase *)self path];
    [v36 appendString:v11];

    v35 = [MEMORY[0x277CBEBC0] URLWithString:v36];
    v12 = LogCategory_Networking();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 134218242;
      v51 = self;
      v52 = 2112;
      v53 = v35;
      _os_log_impl(&dword_24A2EE000, v12, OS_LOG_TYPE_INFO, "[%p] request_url: %@", buf, 0x16u);
    }

    v13 = objc_alloc(MEMORY[0x277CCAB70]);
    [(FMCommandBase *)self timeout];
    v14 = [v13 initWithURL:v35 cachePolicy:4 timeoutInterval:?];
    v15 = [(FMCommandBase *)self method];
    [v14 setHTTPMethod:v15];

    v16 = [v3 mutableCopy];
    v17 = [v16 objectForKeyedSubscript:@"Authorization"];

    if (v17)
    {
      [v16 setObject:@"REDACTED" forKeyedSubscript:@"Authorization"];
    }

    v18 = LogCategory_NetworkingVerbose();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 134218242;
      v51 = self;
      v52 = 2112;
      v53 = v16;
      _os_log_impl(&dword_24A2EE000, v18, OS_LOG_TYPE_INFO, "[%p] request_headers: %@", buf, 0x16u);
    }

    v46 = 0u;
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
    v19 = [v3 allKeys];
    v20 = [v19 countByEnumeratingWithState:&v43 objects:v49 count:16];
    if (v20)
    {
      v21 = *v44;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v44 != v21)
          {
            objc_enumerationMutation(v19);
          }

          v23 = *(*(&v43 + 1) + 8 * i);
          v24 = [v3 objectForKeyedSubscript:v23];
          [v14 addValue:v24 forHTTPHeaderField:v23];
        }

        v20 = [v19 countByEnumeratingWithState:&v43 objects:v49 count:16];
      }

      while (v20);
    }

    v25 = [(FMCommandBase *)self body];
    [v14 setHTTPBody:v25];

    v26 = [(FMCommandBase *)self connection];
    [v26 cancel];

    [(FMCommandBase *)self setConnection:0];
    v27 = [v14 copy];
    [(FMCommandBase *)self setRequest:v27];

    [(FMCommandBase *)self setResponse:0];
    [(FMCommandBase *)self setResponseData:0];
    v28 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __28__FMCommandBase_sendRequest__block_invoke;
    block[3] = &unk_278FD9708;
    objc_copyWeak(&v41, &location);
    objc_copyWeak(&v42, &from);
    dispatch_after(when, v28, block);

    v29 = [(FMCommandBase *)self request];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __28__FMCommandBase_sendRequest__block_invoke_32;
    v39[3] = &unk_278FD9730;
    v39[4] = self;
    v30 = [v38 dataTaskWithRequest:v29 completionHandler:v39];
    [(FMCommandBase *)self setTask:v30];

    v31 = [(FMCommandBase *)self task];
    [v31 resume];

    objc_destroyWeak(&v42);
    objc_destroyWeak(&v41);

    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  else
  {
    v32 = LogCategory_Unspecified();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [(FMCommandBase *)v32 sendRequest];
    }

    v14 = [(FMCommandBase *)self task];
    [v14 cancel];
  }

  v33 = *MEMORY[0x277D85DE8];
}

void __28__FMCommandBase_sendRequest__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __28__FMCommandBase_sendRequest__block_invoke_2;
  v3[3] = &unk_278FD96E0;
  objc_copyWeak(&v4, (a1 + 40));
  [WeakRetained addOperationWithBlock:v3];
  objc_destroyWeak(&v4);
}

void __28__FMCommandBase_sendRequest__block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = LogCategory_Networking();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [WeakRetained request];
      v4 = [v3 URL];
      [WeakRetained timeout];
      v8 = 138412546;
      v9 = v4;
      v10 = 2048;
      v11 = v5;
      _os_log_impl(&dword_24A2EE000, v2, OS_LOG_TYPE_DEFAULT, "Transaction %@ timed out after %.1f s", &v8, 0x16u);
    }

    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA738] code:-1001 userInfo:0];
    [WeakRetained setError:v6];

    [WeakRetained cancel];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_dataTaskCompletionHandlerWithData:(id)a3 response:(id)a4 error:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(FMCommandBase *)self task];
  v12 = [v11 state];

  if (v12 != 3)
  {
    v13 = LogCategory_Networking();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [FMCommandBase _dataTaskCompletionHandlerWithData:v13 response:? error:?];
    }
  }

  [(FMCommandBase *)self setCommandTaskComplete:1];
  v14 = [v10 copy];

  [(FMCommandBase *)self setResponseData:v14];
  [(FMCommandBase *)self setError:v8];

  [(FMCommandBase *)self setResponse:v9];
  v15 = [(FMCommandBase *)self error];
  v16 = [(FMCommandBase *)self isTransactionCompleteWithError:v15];

  if (v16)
  {
    [(FMCommandBase *)self willChangeValueForKey:@"isFinished"];
    [(FMCommandBase *)self didChangeValueForKey:@"isFinished"];
  }
}

- (id)headers
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(FMCommandBase *)self authHeaders];
  [v3 addEntriesFromDictionary:v4];

  return v3;
}

- (BOOL)wasSuccessful
{
  v2 = [(FMCommandBase *)self response];
  v3 = [v2 statusCode];

  return (v3 - 200) < 0x64;
}

- (id)valueForResponseHTTPHeader:(id)a3
{
  v4 = a3;
  v5 = [(FMCommandBase *)self response];
  v6 = [v5 allHeaderFields];
  v7 = [v6 valueForKey:v4];

  return v7;
}

- (BOOL)isTransactionCompleteWithError:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = [(FMCommandBase *)self response];

  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = [(FMCommandBase *)self response];
  v7 = [v6 allHeaderFields];

  v8 = [(FMCommandBase *)self response];
  v9 = [v8 statusCode];

  v10 = LogCategory_Networking();
  v11 = v10;
  if (v9 < 400)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = [(FMCommandBase *)self response];
      *buf = 134218240;
      v36 = self;
      v37 = 2048;
      v38 = [v12 statusCode];
      v13 = v11;
      v14 = OS_LOG_TYPE_INFO;
      goto LABEL_7;
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(FMCommandBase *)self response];
    *buf = 134218240;
    v36 = self;
    v37 = 2048;
    v38 = [v12 statusCode];
    v13 = v11;
    v14 = OS_LOG_TYPE_DEFAULT;
LABEL_7:
    _os_log_impl(&dword_24A2EE000, v13, v14, "[%p] response_http_status : %ld", buf, 0x16u);
  }

  v15 = LogCategory_NetworkingVerbose();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 134218242;
    v36 = self;
    v37 = 2112;
    v38 = v7;
    _os_log_impl(&dword_24A2EE000, v15, OS_LOG_TYPE_INFO, "[%p] response_headers: %@", buf, 0x16u);
  }

LABEL_11:
  if (!a3)
  {
    v16 = [(FMCommandBase *)self response];
    v17 = [v16 statusCode];

    if (v17 == 330)
    {
      v18 = [(FMCommandBase *)self request];
      v19 = [v18 URL];

      v20 = [v19 host];
      v21 = [(FMCommandBase *)self valueForResponseHTTPHeader:@"X-Apple-Mme-Host"];
      if ([v20 length] && objc_msgSend(v21, "length"))
      {
        if ([(FMCommandBase *)self redirectCount]<= 4)
        {
          [(FMCommandBase *)self setRedirectCount:[(FMCommandBase *)self redirectCount]+ 1];
          if (!self->_originalHostname)
          {
            v27 = [v20 copy];
            originalHostname = self->_originalHostname;
            self->_originalHostname = v27;
          }

          v29 = [v21 copy];
          redirectedHostname = self->_redirectedHostname;
          self->_redirectedHostname = v29;

          [(FMCommandBase *)self setHost:v21];
          v33[0] = @"originalHostname";
          v33[1] = @"redirectedHostname";
          v34[0] = v20;
          v34[1] = v21;
          v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];
          v32 = [MEMORY[0x277CCAB98] defaultCenter];
          [v32 postNotificationName:FMCommandRedirectedNotification object:self userInfo:v31];

          [(FMCommandBase *)self sendRequest];
          v23 = 0;
          goto LABEL_23;
        }

        v22 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA738] code:-1007 userInfo:0];
        [(FMCommandBase *)self setError:v22];

        [(FMCommandBase *)self cancel];
      }

      else
      {
        v26 = LogCategory_ServerError();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          [FMCommandBase isTransactionCompleteWithError:v26];
        }
      }

      v23 = 1;
LABEL_23:

      goto LABEL_18;
    }
  }

  v23 = 1;
LABEL_18:
  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

- (id)authHeaders
{
  v17[1] = *MEMORY[0x277D85DE8];
  v3 = [(FMCommandBase *)self username];
  if ([v3 length])
  {
    v4 = [(FMCommandBase *)self password];
    v5 = [v4 length];

    if (v5)
    {
      v6 = MEMORY[0x277CCACA8];
      v7 = [(FMCommandBase *)self username];
      v8 = [(FMCommandBase *)self password];
      v9 = [v6 stringWithFormat:@"%@:%@", v7, v8];
      v10 = [v9 dataUsingEncoding:1];

      v11 = [v10 base64EncodedStringWithOptions:0];
      v16 = @"Authorization";
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Basic %@", v11];
      v17[0] = v12;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];

      goto LABEL_6;
    }
  }

  else
  {
  }

  v11 = 0;
  v13 = 0;
LABEL_6:

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (FMServerInteractionController)serverInteractionController
{
  WeakRetained = objc_loadWeakRetained(&self->_serverInteractionController);

  return WeakRetained;
}

- (void)_dataTaskCompletionHandlerWithData:(void *)a1 response:(NSObject *)a2 error:.cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 task];
  v5 = 134217984;
  v6 = [v3 state];
  _os_log_error_impl(&dword_24A2EE000, a2, OS_LOG_TYPE_ERROR, "BUG in NSURLSessionDataTask: self.task.state is %ld in completion handler <rdar://problem/16847465", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end