@interface SubCalURLRequest
+ (id)_cachedICSFilesDirectory;
+ (void)_initializeFileCache;
- (BOOL)_canAuthenticateAgainstProtectionSpace:(id)a3;
- (SubCalURLRequest)initWithURL:(id)a3 wasUserRequested:(BOOL)a4;
- (SubCalURLRequestDelegate)delegate;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4;
- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7;
- (void)_cancelIdleTimer;
- (void)_createIdleTimer;
- (void)_extendIdleTimer;
- (void)_finishWithError:(id)a3;
- (void)_handleAuthenticationChallenge:(id)a3 completionHandler:(id)a4;
- (void)_idleTimerFired;
- (void)_markEndTime;
- (void)_markStartTime;
- (void)_openFileHandle;
- (void)_receivedDataForFile:(id)a3;
- (void)_respondToChallenge:(id)a3 withCredential:(id)a4 noCredentialBehavior:(int)a5 completionHandler:(id)a6;
- (void)_setHeadersOnRequest:(id)a3;
- (void)cancel;
- (void)setDelegate:(id)a3;
- (void)startConnection;
@end

@implementation SubCalURLRequest

- (SubCalURLRequest)initWithURL:(id)a3 wasUserRequested:(BOOL)a4
{
  v8 = a3;
  v11.receiver = self;
  v11.super_class = SubCalURLRequest;
  v9 = [(SubCalURLRequest *)&v11 init];
  if (v9)
  {
    if ([v8 isFileURL])
    {
      [SubCalURLRequest initWithURL:a2 wasUserRequested:v9];
    }

    objc_storeStrong(&v9->_url, a3);
    v9->_wasUserRequested = a4;
    v9->_timestamp = 0.0;
  }

  return v9;
}

- (void)_setHeadersOnRequest:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DAUserAgent();
  [v4 setValue:v5 forHTTPHeaderField:@"User-Agent"];

  [v4 setValue:@"text/calendar" forHTTPHeaderField:@"Accept"];
  [(SubCalURLRequest *)self timestamp];
  v6 = MEMORY[0x277D03988];
  if (v7 != 0.0)
  {
    [(SubCalURLRequest *)self timestamp];
    v9 = v8;
    v10 = CFTimeZoneCreateWithName(*MEMORY[0x277CBECE8], @"GMT", 1u);
    GregorianDate = CFAbsoluteTimeGetGregorianDate(v9, v10);
    DayOfWeek = CFAbsoluteTimeGetDayOfWeek(v9, v10);
    if (v10)
    {
      CFRelease(v10);
    }

    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s, %02d %s %04ld %02d:%02d:%02d GMT", *(&off_278F20750 + DayOfWeek), ((*&GregorianDate.year >> 16) >> 24), *(&off_278F20790 + ((*&GregorianDate.year << 24) >> 56)), GregorianDate.year, ((*&GregorianDate.year >> 24) >> 24), (*&GregorianDate.month >> 24), GregorianDate.second];
    v14 = DALoggingwithCategory();
    v15 = *(v6 + 6);
    if (os_log_type_enabled(v14, v15))
    {
      *buf = 138412290;
      v21 = v13;
      _os_log_impl(&dword_248587000, v14, v15, "Setting If-Modified-Since: %@", buf, 0xCu);
    }

    [v4 setValue:v13 forHTTPHeaderField:@"If-Modified-Since"];
  }

  v16 = DALoggingwithCategory();
  v17 = *(v6 + 7);
  if (os_log_type_enabled(v16, v17))
  {
    v18 = [v4 allHTTPHeaderFields];
    *buf = 138412290;
    v21 = v18;
    _os_log_impl(&dword_248587000, v16, v17, "Request Headers %@", buf, 0xCu);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_markStartTime
{
  v3 = objc_opt_new();
  [(SubCalURLRequest *)self setStartTime:v3];
}

- (void)_markEndTime
{
  v3 = [(SubCalURLRequest *)self startTime];

  if (v3)
  {
    v4 = [(SubCalURLRequest *)self statusReport];
    v5 = [MEMORY[0x277CBEAA8] date];
    v6 = [(SubCalURLRequest *)self startTime];
    [v5 timeIntervalSinceDate:v6];
    [v4 noteTimeSpentInNetworking:?];

    [(SubCalURLRequest *)self setStartTime:0];
  }
}

- (void)_idleTimerFired
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = [(SubCalURLRequest *)self startTime];
    [v5 timeIntervalSinceNow];
    v15 = 138412546;
    v16 = self;
    v17 = 2048;
    v18 = -v6;
    _os_log_impl(&dword_248587000, v3, v4, "Idle Timer fired for request %@ after %lf seconds", &v15, 0x16u);
  }

  v7 = DALoggingwithCategory();
  if (os_log_type_enabled(v7, v4))
  {
    v8 = [MEMORY[0x277CBEB88] currentRunLoop];
    v15 = 138412290;
    v16 = v8;
    _os_log_impl(&dword_248587000, v7, v4, "Current RunLoop: %@", &v15, 0xCu);
  }

  v9 = DALoggingwithCategory();
  if (os_log_type_enabled(v9, v4))
  {
    v10 = [MEMORY[0x277CBEB88] currentRunLoop];
    v11 = [v10 currentMode];
    v15 = 138412290;
    v16 = v11;
    _os_log_impl(&dword_248587000, v9, v4, "Current Mode: %@", &v15, 0xCu);
  }

  v12 = DALoggingwithCategory();
  if (os_log_type_enabled(v12, v4))
  {
    v13 = [(SubCalURLRequest *)self startRunloopDescriptionString];
    v15 = 138412290;
    v16 = v13;
    _os_log_impl(&dword_248587000, v12, v4, "Starting runloop %@", &v15, 0xCu);
  }

  [(SubCalURLRequest *)self cancel];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)_createIdleTimer
{
  v3 = objc_alloc(MEMORY[0x277CBEBB8]);
  v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:60.0];
  v4 = [v3 initWithFireDate:v5 interval:self target:sel__idleTimerFired selector:0 userInfo:0 repeats:60.0];
  [(SubCalURLRequest *)self setIdleTimer:v4];
}

- (void)_extendIdleTimer
{
  v3 = [(SubCalURLRequest *)self idleTimer];
  v2 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:60.0];
  [v3 setFireDate:v2];
}

- (void)_cancelIdleTimer
{
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v3, v4))
  {
    *v6 = 0;
    _os_log_impl(&dword_248587000, v3, v4, "Canceling idle timer", v6, 2u);
  }

  v5 = [(SubCalURLRequest *)self idleTimer];
  [v5 invalidate];

  [(SubCalURLRequest *)self setIdleTimer:0];
}

- (void)startConnection
{
  v22 = *MEMORY[0x277D85DE8];
  [(SubCalURLRequest *)self setFinished:0];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = [(SubCalURLRequest *)self url];
    v20 = 138412290;
    v21 = v5;
    _os_log_impl(&dword_248587000, v3, v4, "Starting connection to %@", &v20, 0xCu);
  }

  [(SubCalURLRequest *)self timestamp];
  v7 = v6;
  v8 = objc_alloc(MEMORY[0x277CBAB50]);
  v9 = [(SubCalURLRequest *)self url];
  if (v7 == 0.0)
  {
    v10 = [v8 initWithURL:v9];
  }

  else
  {
    v10 = [v8 initWithURL:v9 cachePolicy:1 timeoutInterval:60.0];
  }

  v11 = v10;

  [(SubCalURLRequest *)self _setHeadersOnRequest:v11];
  if (([MEMORY[0x277D03910] cookiesEnabled] & 1) == 0)
  {
    [v11 setHTTPShouldHandleCookies:0];
    [v11 setValue:@"True" forHTTPHeaderField:@"X-Apple-Bad-iPhone-No-Cookie"];
  }

  [v11 _setNonAppInitiated:1];
  v12 = [MEMORY[0x277CBABC8] defaultSessionConfiguration];
  [v12 set_sourceApplicationBundleIdentifier:*MEMORY[0x277CF78A0]];
  v13 = [(SubCalURLRequest *)self useShortTimeoutInterval];
  v14 = 60.0;
  if (v13)
  {
    v14 = 20.0;
  }

  [v12 setTimeoutIntervalForRequest:v14];
  [v12 setURLCache:0];
  [v12 setDiscretionary:{-[SubCalURLRequest wasUserRequested](self, "wasUserRequested") ^ 1}];
  v15 = [MEMORY[0x277CBABB8] sessionWithConfiguration:v12 delegate:self delegateQueue:0];
  [(SubCalURLRequest *)self setSession:v15];

  v16 = [(SubCalURLRequest *)self session];
  v17 = [v16 dataTaskWithRequest:v11];
  [(SubCalURLRequest *)self setTask:v17];

  v18 = [(SubCalURLRequest *)self task];
  [v18 resume];

  [(SubCalURLRequest *)self _markStartTime];
  v19 = *MEMORY[0x277D85DE8];
}

- (void)cancel
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(SubCalURLRequest *)self session];
  [v3 invalidateAndCancel];

  [(SubCalURLRequest *)self setConnectionData:0];
  v4 = [(SubCalURLRequest *)self fileHandle];

  if (v4)
  {
    v5 = [(SubCalURLRequest *)self fileHandle];
    [v5 closeFile];

    [(SubCalURLRequest *)self setFileHandle:0];
    v6 = [MEMORY[0x277CCAA00] defaultManager];
    v7 = [(SubCalURLRequest *)self filePath];
    v13 = 0;
    [v6 removeItemAtPath:v7 error:&v13];
    v8 = v13;

    if (v8)
    {
      v9 = DALoggingwithCategory();
      v10 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v9, v10))
      {
        v11 = [(SubCalURLRequest *)self filePath];
        *buf = 138412290;
        v15 = v11;
        _os_log_impl(&dword_248587000, v9, v10, "Couldn't remove item at path %@", buf, 0xCu);
      }
    }
  }

  [(SubCalURLRequest *)self setFilePath:0];
  [(SubCalURLRequest *)self _markEndTime];
  [(SubCalURLRequest *)self _cancelIdleTimer];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)_finishWithError:(id)a3
{
  v4 = a3;
  if ([(SubCalURLRequest *)self finished])
  {
    v5 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v5, v6))
    {
      *v12 = 0;
      _os_log_impl(&dword_248587000, v5, v6, "SubCalURLRequest, _finishWithError invoked after finished", v12, 2u);
    }
  }

  else
  {
    [(SubCalURLRequest *)self setFinished:1];
    [(SubCalURLRequest *)self _markEndTime];
    [(SubCalURLRequest *)self _cancelIdleTimer];
    if ([v4 code] == 10)
    {
      v7 = [(SubCalURLRequest *)self statusReport];
      [v7 noteFailedProtocolRequest];
    }

    else
    {
      v8 = [(SubCalURLRequest *)self statusReport];
      v7 = v8;
      if (v4)
      {
        [v8 noteFailedNetworkRequest];
      }

      else
      {
        v9 = [(SubCalURLRequest *)self connectionData];
        [v7 noteSuccessfulRequestWithNumDownloadedElements:v9 != 0];
      }
    }

    v10 = [(SubCalURLRequest *)self delegate];
    v11 = [(SubCalURLRequest *)self connectionData];
    [v10 subCalURLRequest:self finishedWithData:v11 error:v4];

    [(SubCalURLRequest *)self setConnectionData:0];
    v5 = [(SubCalURLRequest *)self session];
    [v5 finishTasksAndInvalidate];
  }
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_delegate, v4);
  v5 = objc_opt_respondsToSelector();

  [(SubCalURLRequest *)self setSendDataUpdateCallback:v5 & 1];
}

- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4
{
  v5 = a4;
  if (![(SubCalURLRequest *)self finished])
  {
    v6 = dataaccess_get_global_queue();
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __57__SubCalURLRequest_URLSession_didBecomeInvalidWithError___block_invoke;
    v7[3] = &unk_278F20698;
    v7[4] = self;
    v8 = v5;
    dispatch_sync(v6, v7);
  }
}

- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = dataaccess_get_global_queue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__SubCalURLRequest_URLSession_didReceiveChallenge_completionHandler___block_invoke;
  block[3] = &unk_278F206C0;
  block[4] = self;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(v9, block);
}

- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6
{
  v8 = a5;
  v9 = a6;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__SubCalURLRequest_URLSession_task_didReceiveChallenge_completionHandler___block_invoke;
  block[3] = &unk_278F206C0;
  block[4] = self;
  v13 = v8;
  v14 = v9;
  v10 = v9;
  v11 = v8;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)URLSession:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = dataaccess_get_global_queue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __92__SubCalURLRequest_URLSession_task_willPerformHTTPRedirection_newRequest_completionHandler___block_invoke;
  block[3] = &unk_278F206E8;
  v25 = v15;
  v26 = v16;
  v30 = v17;
  v31 = a2;
  v27 = self;
  v28 = v13;
  v29 = v14;
  v19 = v14;
  v20 = v13;
  v21 = v16;
  v22 = v17;
  v23 = v15;
  dispatch_async(v18, block);
}

void __92__SubCalURLRequest_URLSession_task_willPerformHTTPRedirection_newRequest_completionHandler___block_invoke(uint64_t a1)
{
  v50 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = DALoggingwithCategory();
      v3 = MEMORY[0x277D03988];
      v4 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v2, v4))
      {
        v5 = *(a1 + 32);
        v40 = 138412290;
        v41 = v5;
        _os_log_impl(&dword_248587000, v2, v4, "Connection will send a request with a redirect response: %@", &v40, 0xCu);
      }

      v6 = [*(a1 + 48) url];
      v7 = [v6 scheme];
      if ([v7 hasPrefix:@"https"])
      {
        v8 = [*(a1 + 40) URL];
        v9 = [v8 scheme];
        v10 = [v9 hasPrefix:@"https"];

        if ((v10 & 1) == 0)
        {
          (*(*(a1 + 72) + 16))();
LABEL_26:
          v39 = *MEMORY[0x277D85DE8];
          return;
        }
      }

      else
      {
      }

      v18 = [*(a1 + 40) mutableCopy];
      v19 = [*(a1 + 40) URL];
      v20 = [v19 host];
      v21 = [v20 length];

      if (v21)
      {
        v22 = [v19 CDVURLWithUser:*(*(a1 + 48) + 32)];
        v23 = [v22 CDVURLWithPassword:0];

        [v18 setURL:v23];
      }

      else
      {
        v24 = DALoggingwithCategory();
        v25 = *(v3 + 3);
        if (os_log_type_enabled(v24, *(v3 + 3)))
        {
          Name = sel_getName(*(a1 + 80));
          v27 = [*(a1 + 48) url];
          v40 = 136315650;
          v41 = Name;
          v42 = 2112;
          v43 = v27;
          v44 = 2112;
          v45 = v19;
          _os_log_impl(&dword_248587000, v24, v25, "%s: Received redirect where request.url.host is empty, not setting user on the redirected URL. \nOriginal URL: %@\nRedirected to:%@  ", &v40, 0x20u);
        }

        v23 = v19;
      }

      v28 = [*(a1 + 40) HTTPBody];
      [v18 setHTTPBody:v28];

      v29 = [*(a1 + 40) HTTPMethod];
      [v18 setHTTPMethod:v29];

      v30 = [*(a1 + 40) allHTTPHeaderFields];
      [v18 setAllHTTPHeaderFields:v30];

      if (*(a1 + 32))
      {
        v31 = DALoggingwithCategory();
        if (os_log_type_enabled(v31, v4))
        {
          v32 = *(a1 + 56);
          v33 = *(a1 + 64);
          v35 = *(a1 + 32);
          v34 = *(a1 + 40);
          v40 = 134219010;
          v41 = v32;
          v42 = 2048;
          v43 = v33;
          v44 = 2112;
          v45 = v34;
          v46 = 2112;
          v47 = v18;
          v48 = 2112;
          v49 = v35;
          _os_log_impl(&dword_248587000, v31, v4, "Session %p task %p is getting redirected\nProposed request: [%@]\nReconstructed request: [%@]\nRedirect response: [%@]", &v40, 0x34u);
        }

        if ([*(a1 + 32) statusCode] == 301)
        {
          v36 = [*(a1 + 48) delegate];
          v37 = objc_opt_respondsToSelector();

          if (v37)
          {
            v38 = [*(a1 + 48) delegate];
            [v38 subCalURLRequest:*(a1 + 48) didRedirectToURL:v23];
          }
        }
      }

      (*(*(a1 + 72) + 16))();

      goto LABEL_26;
    }

    [*(a1 + 48) cancel];
    v15 = *(a1 + 48);
    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D03F90] code:4 userInfo:0];
    [v15 _finishWithError:v16];

    v13 = *(*(a1 + 72) + 16);
    v17 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v11 = *(a1 + 72);
    v12 = *(a1 + 40);
    v13 = *(*(a1 + 72) + 16);
    v14 = *MEMORY[0x277D85DE8];
  }

  v13();
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v6 = a5;
  v7 = dataaccess_get_global_queue();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__SubCalURLRequest_URLSession_task_didCompleteWithError___block_invoke;
  v9[3] = &unk_278F20698;
  v10 = v6;
  v11 = self;
  v8 = v6;
  dispatch_sync(v7, v9);
}

void __57__SubCalURLRequest_URLSession_task_didCompleteWithError___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 32))
  {
    v9 = [*(a1 + 40) fileHandle];
    [v9 closeFile];

    [*(a1 + 40) setFileHandle:0];
    v10 = [*(a1 + 40) filePath];
    if (v10)
    {
    }

    else
    {
      v15 = [*(a1 + 40) connectionData];

      if (!v15)
      {
        v17 = DALoggingwithCategory();
        v18 = *(MEMORY[0x277D03988] + 3);
        if (os_log_type_enabled(v17, v18))
        {
          v19 = *(a1 + 40);
          *v21 = 138412290;
          *&v21[4] = objc_opt_class();
          v20 = *&v21[4];
          _os_log_impl(&dword_248587000, v17, v18, "%@ connection finished, but no data?", v21, 0xCu);
        }

        v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D03F90] code:0 userInfo:0];
        goto LABEL_15;
      }
    }

    v13 = 0;
LABEL_15:
    v14 = *(a1 + 40);
    goto LABEL_16;
  }

  v2 = DALoggingwithCategory();
  v3 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(a1 + 40);
    v5 = objc_opt_class();
    v6 = *(a1 + 32);
    *v21 = 138412546;
    *&v21[4] = v5;
    *&v21[12] = 2112;
    *&v21[14] = v6;
    v7 = v5;
    _os_log_impl(&dword_248587000, v2, v3, "%@ connection failed with error %@", v21, 0x16u);
  }

  v8 = [*(a1 + 32) domain];
  if ([v8 isEqualToString:*MEMORY[0x277CCA738]])
  {
    if ([*(a1 + 32) code] == -1012)
    {

LABEL_12:
      v12 = *(a1 + 40);
      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D03F90] code:5 userInfo:{0, *v21, *&v21[8], v22}];
      v14 = v12;
LABEL_16:
      [v14 _finishWithError:{v13, *v21, *&v21[8]}];

      goto LABEL_17;
    }

    v11 = [*(a1 + 32) code];

    if (v11 == -1013)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  [*(a1 + 40) _finishWithError:{*(a1 + 32), *v21, *&v21[16], v22}];
LABEL_17:
  v16 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6
{
  v8 = a5;
  v9 = a6;
  v10 = dataaccess_get_global_queue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__SubCalURLRequest_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke;
  block[3] = &unk_278F206C0;
  v14 = v8;
  v15 = self;
  v16 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, block);
}

void __77__SubCalURLRequest_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D03F90] code:4 userInfo:0];
LABEL_24:
    [*(a1 + 40) cancel];
    [*(a1 + 40) _finishWithError:v10];
    (*(*(a1 + 48) + 16))();

    goto LABEL_25;
  }

  v3 = *(a1 + 32);
  v4 = DALoggingwithCategory();
  v5 = MEMORY[0x277D03988];
  v6 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v4, v6))
  {
    v18 = 134217984;
    v19 = [v3 statusCode];
    _os_log_impl(&dword_248587000, v4, v6, "Connection got response of %ld", &v18, 0xCu);
  }

  v7 = [v3 statusCode];
  v8 = v7;
  if (v7 > 400)
  {
    if (v7 != 401)
    {
      if (v7 == 403)
      {
        v11 = MEMORY[0x277CCA9B8];
        v12 = *MEMORY[0x277D03F90];
        v13 = 9;
      }

      else
      {
        if (v7 != 404)
        {
LABEL_17:
          v14 = DALoggingwithCategory();
          v15 = *(v5 + 3);
          if (os_log_type_enabled(v14, v15))
          {
            v18 = 134217984;
            v19 = v8;
            _os_log_impl(&dword_248587000, v14, v15, "Connection failed with error %ld", &v18, 0xCu);
          }

          v11 = MEMORY[0x277CCA9B8];
          v12 = *MEMORY[0x277D03F90];
          v13 = v8;
          goto LABEL_22;
        }

        v11 = MEMORY[0x277CCA9B8];
        v12 = *MEMORY[0x277D03F90];
        v13 = 8;
      }

LABEL_22:
      v10 = [v11 errorWithDomain:v12 code:v13 userInfo:0];
LABEL_23:

      goto LABEL_24;
    }

LABEL_16:
    v11 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277D03F90];
    v13 = 5;
    goto LABEL_22;
  }

  if ((v7 + 1013) < 2)
  {
    goto LABEL_16;
  }

  if (v7 != 200)
  {
    if (v7 == 304)
    {
      v9 = DALoggingwithCategory();
      if (os_log_type_enabled(v9, v6))
      {
        LOWORD(v18) = 0;
        _os_log_impl(&dword_248587000, v9, v6, "Calendar doesn't need to be updated", &v18, 2u);
      }

      v10 = 0;
      goto LABEL_23;
    }

    goto LABEL_17;
  }

  v16 = [v3 valueForHTTPHeaderField:@"Content-Length"];
  *(*(a1 + 40) + 72) = [v16 longLongValue];

  (*(*(a1 + 48) + 16))();
LABEL_25:
  v17 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5
{
  v6 = a5;
  v7 = dataaccess_get_global_queue();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__SubCalURLRequest_URLSession_dataTask_didReceiveData___block_invoke;
  v9[3] = &unk_278F20698;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_sync(v7, v9);
}

void __55__SubCalURLRequest_URLSession_dataTask_didReceiveData___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 80) += [*(a1 + 40) length];
  v2 = [*(a1 + 32) useFileCache];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = *(a1 + 40);

    [v3 _receivedDataForFile:v4];
  }

  else
  {
    v5 = [v3 connectionData];

    if (v5)
    {
      v6 = [*(a1 + 32) connectionData];
      [v6 appendData:*(a1 + 40)];
    }

    else
    {
      v6 = [*(a1 + 40) mutableCopy];
      [*(a1 + 32) setConnectionData:v6];
    }

    if ([*(a1 + 32) sendDataUpdateCallback])
    {
      v9 = [*(a1 + 32) delegate];
      v7 = *(a1 + 32);
      v8 = [v7 connectionData];
      [v9 subCalURLRequest:v7 updatedData:v8];
    }
  }
}

- (BOOL)_canAuthenticateAgainstProtectionSpace:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(SubCalURLRequest *)self _extendIdleTimer];
  v5 = [v4 authenticationMethod];

  if ([v5 isEqualToString:*MEMORY[0x277CBAB00]] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", *MEMORY[0x277CBAAE0]))
  {
    v6 = 1;
  }

  else
  {
    v6 = [v5 isEqualToString:*MEMORY[0x277CBAAE8]];
  }

  v7 = DALoggingwithCategory();
  v8 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = @"NO";
    if (v6)
    {
      v9 = @"YES";
    }

    v12 = 138412546;
    v13 = v5;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_248587000, v7, v8, "Can authenticate against protection space %@? %@", &v12, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)_respondToChallenge:(id)a3 withCredential:(id)a4 noCredentialBehavior:(int)a5 completionHandler:(id)a6
{
  v21 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = DALoggingwithCategory();
  v13 = *(MEMORY[0x277D03988] + 6);
  v14 = os_log_type_enabled(v12, v13);
  if (v10)
  {
    if (v14)
    {
      v19 = 138412290;
      v20 = v10;
      _os_log_impl(&dword_248587000, v12, v13, "Using credential %@ for challenge", &v19, 0xCu);
    }

    v11[2](v11, 0, v10);
    goto LABEL_14;
  }

  if (a5 == 1)
  {
    if (v14)
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_248587000, v12, v13, "continuing without credential for challenge", &v19, 2u);
    }

    v15 = v11[2];
    v16 = v11;
    v17 = 1;
    goto LABEL_13;
  }

  if (!a5)
  {
    if (v14)
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_248587000, v12, v13, "Cancelling auth challenge", &v19, 2u);
    }

    v15 = v11[2];
    v16 = v11;
    v17 = 2;
LABEL_13:
    v15(v16, v17, 0);
    goto LABEL_14;
  }

  if (v14)
  {
    LOWORD(v19) = 0;
    _os_log_impl(&dword_248587000, v12, v13, "Waiting for runloop callback to decide what to do", &v19, 2u);
  }

LABEL_14:
  v18 = *MEMORY[0x277D85DE8];
}

- (void)_handleAuthenticationChallenge:(id)a3 completionHandler:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 protectionSpace];
  v9 = [v8 authenticationMethod];
  v10 = [(SubCalURLRequest *)self _canAuthenticateAgainstProtectionSpace:v8];
  v11 = DALoggingwithCategory();
  v12 = MEMORY[0x277D03988];
  v13 = *(MEMORY[0x277D03988] + 6);
  v14 = os_log_type_enabled(v11, v13);
  if (v10)
  {
    if (v14)
    {
      *buf = 138412290;
      v35 = v9;
      _os_log_impl(&dword_248587000, v11, v13, "Received authentication challenge for method %@", buf, 0xCu);
    }

    if ([v9 isEqualToString:*MEMORY[0x277CBAB00]])
    {
      v15 = [(SubCalURLRequest *)self delegate];
      [v15 handleTrustChallenge:v6 forSubCalURLRequest:self completionHandler:v7];

      goto LABEL_20;
    }

    if (([v9 isEqualToString:*MEMORY[0x277CBAAE0]] & 1) != 0 || objc_msgSend(v9, "isEqualToString:", *MEMORY[0x277CBAAE8]))
    {
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __69__SubCalURLRequest__handleAuthenticationChallenge_completionHandler___block_invoke;
      v31[3] = &unk_278F20710;
      v31[4] = self;
      v16 = v6;
      v32 = v16;
      v17 = v7;
      v33 = v17;
      v18 = MEMORY[0x24C1D2310](v31);
      v19 = [v16 proposedCredential];
      if (v19)
      {
      }

      else
      {
        v24 = [(SubCalURLRequest *)self password];
        v25 = [v24 length];

        if (v25)
        {
          v26 = [(SubCalURLRequest *)self username];
          v27 = [(SubCalURLRequest *)self password];
          (v18)[2](v18, v26, v27);

LABEL_19:
          goto LABEL_20;
        }
      }

      v20 = [(SubCalURLRequest *)self delegate];
      v21 = objc_opt_respondsToSelector();

      if (v21)
      {
        v22 = [(SubCalURLRequest *)self delegate];
        v23 = [v8 host];
        [v22 subCalURLRequestNeedsUsernameAndPasswordForHost:v23 continuation:v18];
      }

      else
      {
        [(SubCalURLRequest *)self _respondToChallenge:v16 withCredential:0 noCredentialBehavior:1 completionHandler:v17];
      }

      goto LABEL_19;
    }

    v29 = DALoggingwithCategory();
    v30 = *(v12 + 3);
    if (os_log_type_enabled(v29, v30))
    {
      *buf = 138412290;
      v35 = v9;
      _os_log_impl(&dword_248587000, v29, v30, "Try default handling for authentication method %@", buf, 0xCu);
    }

    (*(v7 + 2))(v7, 1, 0);
  }

  else
  {
    if (v14)
    {
      *buf = 138412290;
      v35 = v9;
      _os_log_impl(&dword_248587000, v11, v13, "Rejecting authentication challenge for method %@", buf, 0xCu);
    }

    (*(v7 + 2))(v7, 3, 0);
  }

LABEL_20:

  v28 = *MEMORY[0x277D85DE8];
}

void __69__SubCalURLRequest__handleAuthenticationChallenge_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if ([v7 length] && objc_msgSend(v5, "length"))
  {
    v6 = [MEMORY[0x277CBAB80] credentialWithUser:v7 password:v5 persistence:0];
    [*(a1 + 32) setUsername:v7];
    [*(a1 + 32) setPassword:v5];
  }

  else
  {
    v6 = 0;
  }

  [*(a1 + 32) _respondToChallenge:*(a1 + 40) withCredential:v6 noCredentialBehavior:1 completionHandler:*(a1 + 48)];
}

- (void)_openFileHandle
{
  v18 = *MEMORY[0x277D85DE8];
  +[SubCalURLRequest _initializeFileCache];
  v3 = DALoggingwithCategory();
  v4 = MEMORY[0x277D03988];
  v5 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v3, v5))
  {
    LOWORD(v16) = 0;
    _os_log_impl(&dword_248587000, v3, v5, "opening file handle", &v16, 2u);
  }

  v6 = +[SubCalURLRequest _cachedICSFilesDirectory];
  v7 = [v6 stringByAppendingPathComponent:@"XXXXXX.ics"];
  v8 = [v7 fileSystemRepresentation];

  if (v8)
  {
    v9 = strdup(v8);
    v10 = mkstemps(v9, 4);
    if (v10 == -1)
    {
      v13 = DALoggingwithCategory();
      v14 = *(v4 + 3);
      if (os_log_type_enabled(v13, v14))
      {
        v16 = 136315138;
        v17 = v9;
        _os_log_impl(&dword_248587000, v13, v14, "Couldn't create file at path %s", &v16, 0xCu);
      }
    }

    else
    {
      v11 = v10;
      v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v9];
      [(SubCalURLRequest *)self setFilePath:v12];

      v13 = [objc_alloc(MEMORY[0x277CCA9F8]) initWithFileDescriptor:v11 closeOnDealloc:1];
      [(SubCalURLRequest *)self setFileHandle:v13];
    }

    if (v9)
    {
      free(v9);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_receivedDataForFile:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SubCalURLRequest *)self fileHandle];

  if (!v5)
  {
    v10 = [(SubCalURLRequest *)self connectionData];

    if (v10)
    {
      v11 = [(SubCalURLRequest *)self connectionData];
      v12 = [v11 length];
      v13 = (*MEMORY[0x277D85FA0] + 5242879) & -*MEMORY[0x277D85FA0];

      if (v12 < v13)
      {
        v14 = DALoggingwithCategory();
        v15 = *(MEMORY[0x277D03988] + 7);
        if (os_log_type_enabled(v14, v15))
        {
          LOWORD(v24) = 0;
          _os_log_impl(&dword_248587000, v14, v15, "Data is smaller than 5MB caching in memory", &v24, 2u);
        }

        v8 = [(SubCalURLRequest *)self connectionData];
        [v8 appendData:v4];
        goto LABEL_6;
      }

      [(SubCalURLRequest *)self _openFileHandle];
      v16 = [(SubCalURLRequest *)self fileHandle];

      if (v16)
      {
        v17 = [(SubCalURLRequest *)self connectionData];

        if (v17)
        {
          v18 = [(SubCalURLRequest *)self fileHandle];
          v19 = [(SubCalURLRequest *)self connectionData];
          [v18 writeData:v19];

          [(SubCalURLRequest *)self setConnectionData:0];
        }

        goto LABEL_5;
      }

      v20 = DALoggingwithCategory();
      v21 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v20, v21))
      {
        v22 = [(SubCalURLRequest *)self filePath];
        v24 = 138412290;
        v25 = v22;
        _os_log_impl(&dword_248587000, v20, v21, "Couldn't open file handle at path %@. Will try downloading in memory", &v24, 0xCu);
      }

      [(SubCalURLRequest *)self setUseFileCache:0];
      [(SubCalURLRequest *)self setFilePath:0];
    }

    v23 = [v4 mutableCopy];
    [(SubCalURLRequest *)self setConnectionData:v23];

    goto LABEL_7;
  }

  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v6, v7))
  {
    LOWORD(v24) = 0;
    _os_log_impl(&dword_248587000, v6, v7, "Already have file handle writing to file", &v24, 2u);
  }

LABEL_5:
  v8 = [(SubCalURLRequest *)self fileHandle];
  [v8 writeData:v4];
LABEL_6:

LABEL_7:
  v9 = *MEMORY[0x277D85DE8];
}

+ (id)_cachedICSFilesDirectory
{
  if (_cachedICSFilesDirectory_onceToken != -1)
  {
    +[SubCalURLRequest _cachedICSFilesDirectory];
  }

  v3 = _cachedICSFilesDirectory_sDirPath;

  return v3;
}

void __44__SubCalURLRequest__cachedICSFilesDirectory__block_invoke()
{
  v3 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  if ([v3 count])
  {
    v0 = [v3 objectAtIndexedSubscript:0];
    v1 = [v0 stringByAppendingPathComponent:@"DataAccess/SubCalICSCache"];
    v2 = _cachedICSFilesDirectory_sDirPath;
    _cachedICSFilesDirectory_sDirPath = v1;
  }
}

+ (void)_initializeFileCache
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__SubCalURLRequest__initializeFileCache__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_initializeFileCache_onceToken != -1)
  {
    dispatch_once(&_initializeFileCache_onceToken, block);
  }
}

void __40__SubCalURLRequest__initializeFileCache__block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) _cachedICSFilesDirectory];
  v2 = DALoggingwithCategory();
  v3 = MEMORY[0x277D03988];
  v4 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v2, v4))
  {
    *buf = 138412290;
    v37 = v1;
    _os_log_impl(&dword_248587000, v2, v4, "Initializing file cache at %@", buf, 0xCu);
  }

  if (v1)
  {
    v5 = [MEMORY[0x277CCAA00] defaultManager];
    v35 = 0;
    v28 = v1;
    v6 = [v5 contentsOfDirectoryAtPath:v1 error:&v35];
    v7 = v35;

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v31 objects:v42 count:16];
    if (!v9)
    {
      goto LABEL_19;
    }

    v10 = v9;
    v11 = *v32;
    v12 = *MEMORY[0x277CCA050];
    v13 = *(v3 + 4);
    while (1)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v31 + 1) + 8 * i);

        v16 = [MEMORY[0x277CCAA00] defaultManager];
        v30 = 0;
        [v16 removeItemAtPath:v15 error:&v30];
        v7 = v30;

        if (v7)
        {
          v17 = [v7 domain];
          if ([v17 isEqualToString:v12])
          {
            v18 = [v7 code];

            if (v18 == 4)
            {
              continue;
            }
          }

          else
          {
          }

          v19 = DALoggingwithCategory();
          if (os_log_type_enabled(v19, v13))
          {
            v20 = [v7 userInfo];
            *buf = 138412802;
            v37 = v28;
            v38 = 2112;
            v39 = v7;
            v40 = 2112;
            v41 = v20;
            _os_log_impl(&dword_248587000, v19, v13, "Couldn't clean up ics file cache at path %@ %@ %@", buf, 0x20u);
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v31 objects:v42 count:16];
      if (!v10)
      {
LABEL_19:

        v21 = [MEMORY[0x277CCAA00] defaultManager];
        v29 = 0;
        v1 = v28;
        [v21 createDirectoryAtPath:v28 withIntermediateDirectories:1 attributes:0 error:&v29];
        v22 = v29;

        if (v22)
        {
          v23 = DALoggingwithCategory();
          v24 = *(MEMORY[0x277D03988] + 3);
          if (os_log_type_enabled(v23, v24))
          {
            v25 = [v22 userInfo];
            *buf = 138412802;
            v37 = v28;
            v38 = 2112;
            v39 = v22;
            v40 = 2112;
            v41 = v25;
            _os_log_impl(&dword_248587000, v23, v24, "Couldn't create ics cache at path %@ %@ %@", buf, 0x20u);
          }
        }

        goto LABEL_26;
      }
    }
  }

  v22 = DALoggingwithCategory();
  v26 = *(v3 + 3);
  if (os_log_type_enabled(v22, v26))
  {
    *buf = 0;
    _os_log_impl(&dword_248587000, v22, v26, "No directory path, ics cache not initialized", buf, 2u);
  }

LABEL_26:

  v27 = *MEMORY[0x277D85DE8];
}

- (SubCalURLRequestDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithURL:(uint64_t)a1 wasUserRequested:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SubCalURLRequest.m" lineNumber:59 description:@"File URLs not supported"];
}

@end