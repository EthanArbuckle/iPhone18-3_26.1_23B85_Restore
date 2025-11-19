@interface CUReachabilityMonitor
- (BOOL)_captiveDetectedCheck;
- (CUReachabilityMonitor)init;
- (void)URLSession:(id)a3 downloadTask:(id)a4 didFinishDownloadingToURL:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)_activate;
- (void)_complete:(id)a3;
- (void)_pathMonitorStart;
- (void)_pathMonitorUpdated:(id)a3;
- (void)_startDownload;
- (void)activate;
- (void)dealloc;
- (void)invalidate;
@end

@implementation CUReachabilityMonitor

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v11 = a5;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ([v11 code] == -1001)
  {
    if (gLogCategory_CUReachability <= 60 && (gLogCategory_CUReachability != -1 || _LogCategory_Initialize(&gLogCategory_CUReachability, 0x3Cu)))
    {
      LogPrintF(&gLogCategory_CUReachability, "[CUReachabilityMonitor URLSession:task:didCompleteWithError:]", 0x3Cu, "### CFURL timeout for <%@>: %{error}, retrying...\n", v6, v7, v8, v9, self->_destinationURL);
    }

    [(NSURLSession *)self->_urlSession invalidateAndCancel];
    urlSession = self->_urlSession;
    self->_urlSession = 0;

    [(CUReachabilityMonitor *)self _startDownload];
  }

  else
  {
    [(CUReachabilityMonitor *)self _complete:v11];
  }
}

- (void)URLSession:(id)a3 downloadTask:(id)a4 didFinishDownloadingToURL:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a5;
  v26[0] = 0;
  if ([v6 getFileSystemRepresentation:v26 maxLength:1024])
  {
    memset(&v25, 0, sizeof(v25));
    v11 = stat(v26, &v25);
    if ((v25.st_size - 1001) >= 0xFFFFFFFFFFFFFC18)
    {
      v12 = 0;
    }

    else
    {
      v12 = -6743;
    }

    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = v12;
    }

    if (!v13)
    {
      v14 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:v6 options:2 error:0];
      v15 = v14;
      if (v14)
      {
        v16 = [v14 bytes];
        if (strncasestr(v16, "<BODY>Success</BODY>", [v15 length]))
        {

          self->_downloadStatus = 0;
          if (gLogCategory_CUReachability <= 30 && (gLogCategory_CUReachability != -1 || _LogCategory_Initialize(&gLogCategory_CUReachability, 0x1Eu)))
          {
            LogPrintF(&gLogCategory_CUReachability, "[CUReachabilityMonitor URLSession:downloadTask:didFinishDownloadingToURL:]", 0x1Eu, "Downloaded to <%@>, %lld bytes\n", v21, v22, v23, v24, v6);
          }

          goto LABEL_19;
        }

        v13 = 301048;
        if (gLogCategory_CUReachability <= 60 && (gLogCategory_CUReachability != -1 || _LogCategory_Initialize(&gLogCategory_CUReachability, 0x3Cu)))
        {
          LogPrintF(&gLogCategory_CUReachability, "[CUReachabilityMonitor URLSession:downloadTask:didFinishDownloadingToURL:]", 0x3Cu, "### Downloaded content mismatch:\n%.2H\n", v17, v18, v19, v20, v16);
        }
      }

      else
      {
        v13 = -6755;
      }
    }
  }

  else
  {
    v13 = -6704;
  }

  self->_downloadStatus = v13;
  if (gLogCategory_CUReachability <= 60 && (gLogCategory_CUReachability != -1 || _LogCategory_Initialize(&gLogCategory_CUReachability, 0x3Cu)))
  {
    LogPrintF(&gLogCategory_CUReachability, "[CUReachabilityMonitor URLSession:downloadTask:didFinishDownloadingToURL:]", 0x3Cu, "### Downloaded to <%@> bad: %#m\n", v7, v8, v9, v10, v6);
  }

LABEL_19:
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__CUReachabilityMonitor_invalidate__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __35__CUReachabilityMonitor_invalidate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (gLogCategory_CUReachability <= 30 && (gLogCategory_CUReachability != -1 || _LogCategory_Initialize(&gLogCategory_CUReachability, 0x1Eu)))
  {
    LogPrintF(&gLogCategory_CUReachability, "[CUReachabilityMonitor invalidate]_block_invoke", 0x1Eu, "Invalidate\n", a5, a6, a7, a8, v10);
  }

  v9 = *(a1 + 32);
  if (v9[5])
  {
    v11 = NSErrorWithOSStatusF(4294960573, "Invalidated", a3, a4, a5, a6, a7, a8, v10);
    [v9 _complete:v11];
  }

  else
  {

    [v9 _complete:0];
  }
}

- (void)_complete:(id)a3
{
  v4 = a3;
  captiveNotifyToken = self->_captiveNotifyToken;
  if (captiveNotifyToken != -1)
  {
    v23 = v4;
    notify_cancel(captiveNotifyToken);
    v4 = v23;
    self->_captiveNotifyToken = -1;
  }

  if (v4)
  {
LABEL_6:
    p_completionHandler = &self->_completionHandler;
    if (!self->_completionHandler)
    {
      v25 = v4;
      goto LABEL_21;
    }

    if (v4)
    {
      if (gLogCategory_CUReachability <= 60)
      {
        v24 = v4;
        if (gLogCategory_CUReachability != -1 || (v14 = _LogCategory_Initialize(&gLogCategory_CUReachability, 0x3Cu), v4 = v24, v14))
        {
          LogPrintF(&gLogCategory_CUReachability, "[CUReachabilityMonitor _complete:]", 0x3Cu, "### Not reachable <%@>: %{error}\n", v7, v8, v9, v10, self->_destinationURL);
          v4 = v24;
        }
      }

LABEL_20:
      v25 = v4;
      (*(*p_completionHandler + 2))();
      v15 = *p_completionHandler;
      *p_completionHandler = 0;

      goto LABEL_21;
    }

LABEL_13:
    if (gLogCategory_CUReachability <= 30 && (gLogCategory_CUReachability != -1 || _LogCategory_Initialize(&gLogCategory_CUReachability, 0x1Eu)))
    {
      LogPrintF(&gLogCategory_CUReachability, "[CUReachabilityMonitor _complete:]", 0x1Eu, "Reachable: <%@>\n", v7, v8, v9, v10, self->_destinationURL);
    }

    v4 = 0;
    goto LABEL_20;
  }

  downloadStatus = self->_downloadStatus;
  if (downloadStatus)
  {
    v4 = NSErrorWithOSStatusF(downloadStatus, "Download failed", v5, v6, v7, v8, v9, v10, v22);
    goto LABEL_6;
  }

  p_completionHandler = &self->_completionHandler;
  if (self->_completionHandler)
  {
    goto LABEL_13;
  }

  v25 = 0;
LABEL_21:
  pathMonitor = self->_pathMonitor;
  if (pathMonitor)
  {
    nw_path_monitor_cancel(pathMonitor);
    v17 = self->_pathMonitor;
    self->_pathMonitor = 0;
  }

  timeoutTimer = self->_timeoutTimer;
  if (timeoutTimer)
  {
    v19 = timeoutTimer;
    dispatch_source_cancel(v19);
    v20 = self->_timeoutTimer;
    self->_timeoutTimer = 0;
  }

  [(NSURLSession *)self->_urlSession invalidateAndCancel];
  urlSession = self->_urlSession;
  self->_urlSession = 0;
}

- (void)_pathMonitorUpdated:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = logger_7532();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_191EAF000, v5, OS_LOG_TYPE_DEFAULT, "Path monitor update: path=%@", &v6, 0xCu);
  }

  if (nw_path_get_status(v4) == nw_path_status_satisfied)
  {
    [(CUReachabilityMonitor *)self _complete:0];
  }
}

- (void)_pathMonitorStart
{
  v3 = nw_path_monitor_create();
  pathMonitor = self->_pathMonitor;
  self->_pathMonitor = v3;

  nw_path_monitor_set_queue(self->_pathMonitor, self->_dispatchQueue);
  objc_initWeak(&location, self);
  v5 = self->_pathMonitor;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__CUReachabilityMonitor__pathMonitorStart__block_invoke;
  v6[3] = &unk_1E73A3BD0;
  objc_copyWeak(&v7, &location);
  nw_path_monitor_set_update_handler(v5, v6);
  nw_path_monitor_start(self->_pathMonitor);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __42__CUReachabilityMonitor__pathMonitorStart__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _pathMonitorUpdated:v3];
}

- (void)_startDownload
{
  v3 = [MEMORY[0x1E696AF80] ephemeralSessionConfiguration];
  [v3 setDiscretionary:0];
  [v3 setHTTPCookieAcceptPolicy:1];
  [v3 setHTTPCookieStorage:0];
  [v3 setHTTPShouldSetCookies:0];
  [v3 setRequestCachePolicy:1];
  [v3 setURLCredentialStorage:0];
  [v3 setURLCache:0];
  [v3 setWaitsForConnectivity:1];
  v19 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  [v19 setUnderlyingQueue:self->_dispatchQueue];
  v4 = [MEMORY[0x1E696AF78] sessionWithConfiguration:v3 delegate:self delegateQueue:v19];
  urlSession = self->_urlSession;
  self->_urlSession = v4;

  if (self->_urlSession)
  {
    v12 = self->_destinationURL;
    v13 = [(NSURLSession *)self->_urlSession downloadTaskWithURL:v12];
    if (v13)
    {
      v15 = v13;
      LODWORD(v14) = 1.0;
      [v13 setPriority:v14];
      [v15 resume];
LABEL_4:

      goto LABEL_5;
    }

    v16 = "Create DownloadTask failed";
  }

  else
  {
    v12 = 0;
    v16 = "Create NSURLSession failed";
  }

  v17 = NSErrorWithOSStatusF(4294960596, v16, v6, v7, v8, v9, v10, v11, v18);
  if (v17)
  {
    v15 = v17;
    [(CUReachabilityMonitor *)self _complete:v17];
    goto LABEL_4;
  }

LABEL_5:
}

- (BOOL)_captiveDetectedCheck
{
  v13[1] = *MEMORY[0x1E69E9840];
  captiveNotifyToken = self->_captiveNotifyToken;
  v13[0] = 0;
  notify_get_state(captiveNotifyToken, v13);
  v4 = v13[0];
  v5 = logger_7532();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v13[0]) = 67109120;
    HIDWORD(v13[0]) = v4 == 1;
    _os_log_impl(&dword_191EAF000, v5, OS_LOG_TYPE_DEFAULT, "Captive network state: detected=%{BOOL}d", v13, 8u);
  }

  if (v4 == 1)
  {
    v11 = NSErrorF_safe(*MEMORY[0x1E696A768], 301047, "Captive network detected", v6, v7, v8, v9, v10, v13[0]);
    [(CUReachabilityMonitor *)self _complete:v11];
  }

  return v4 == 1;
}

- (void)_activate
{
  v31 = *MEMORY[0x1E69E9840];
  if (!self->_urlSession)
  {
    if (!self->_destinationURL)
    {
      v3 = [MEMORY[0x1E695DFF8] URLWithString:@"http://captive.apple.com"];
      destinationURL = self->_destinationURL;
      self->_destinationURL = v3;
    }

    v5 = logger_7532();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      mode = self->_mode;
      if (mode > 2)
      {
        v7 = @"?";
      }

      else
      {
        v7 = off_1E73A3BF0[mode];
      }

      v8 = self->_destinationURL;
      timeout = self->_timeout;
      *buf = 138412802;
      v26 = v7;
      v27 = 2112;
      v28 = v8;
      v29 = 2048;
      v30 = timeout;
      _os_log_impl(&dword_191EAF000, v5, OS_LOG_TYPE_DEFAULT, "Activate: mode=%@, url=%@, timeout=%f seconds", buf, 0x20u);
    }

    if ((self->_mode - 1) > 1 || (objc_initWeak(buf, self), dispatchQueue = self->_dispatchQueue, handler[0] = MEMORY[0x1E69E9820], handler[1] = 3221225472, handler[2] = __34__CUReachabilityMonitor__activate__block_invoke, handler[3] = &unk_1E73A3B80, objc_copyWeak(&v24, buf), notify_register_dispatch("com.apple.coreutils.captive-network-state", &self->_captiveNotifyToken, dispatchQueue, handler), LOBYTE(dispatchQueue) = [(CUReachabilityMonitor *)self _captiveDetectedCheck], objc_destroyWeak(&v24), objc_destroyWeak(buf), (dispatchQueue & 1) == 0))
    {
      if (self->_timeout > 0.0)
      {
        v11 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
        timeoutTimer = self->_timeoutTimer;
        self->_timeoutTimer = v11;

        objc_initWeak(buf, self);
        v13 = self->_timeoutTimer;
        v18 = MEMORY[0x1E69E9820];
        v19 = 3221225472;
        v20 = __34__CUReachabilityMonitor__activate__block_invoke_2;
        v21 = &unk_1E73A3BA8;
        objc_copyWeak(&v22, buf);
        dispatch_source_set_event_handler(v13, &v18);
        v14 = self->_timeoutTimer;
        v15 = (self->_timeout * 1000000000.0);
        v16 = dispatch_time(0, v15);
        dispatch_source_set_timer(v14, v16, 0xFFFFFFFFFFFFFFFFLL, v15 >> 2);
        dispatch_resume(self->_timeoutTimer);
        objc_destroyWeak(&v22);
        objc_destroyWeak(buf);
      }

      v17 = self->_mode;
      switch(v17)
      {
        case 2:
          goto LABEL_17;
        case 1:
          [(CUReachabilityMonitor *)self _pathMonitorStart];
          break;
        case 0:
LABEL_17:
          self->_downloadStatus = 1;
          [(CUReachabilityMonitor *)self _startDownload:v18];
          break;
      }
    }
  }
}

void __34__CUReachabilityMonitor__activate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _captiveDetectedCheck];
}

void __34__CUReachabilityMonitor__activate__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960574, "Timeout", v1, v2, v3, v4, v5, v7);
  [WeakRetained _complete:v6];
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__CUReachabilityMonitor_activate__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)dealloc
{
  urlSession = self->_urlSession;
  v4 = logger_7532();
  v5 = v4;
  if (urlSession)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_191EAF000, v5, OS_LOG_TYPE_DEFAULT, "dealloc: active", buf, 2u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_191EAF000, v5, OS_LOG_TYPE_DEBUG, "dealloc: inactive", buf, 2u);
  }

  captiveNotifyToken = self->_captiveNotifyToken;
  if (captiveNotifyToken != -1)
  {
    notify_cancel(captiveNotifyToken);
    self->_captiveNotifyToken = -1;
  }

  pathMonitor = self->_pathMonitor;
  if (pathMonitor)
  {
    nw_path_monitor_cancel(pathMonitor);
    v8 = self->_pathMonitor;
    self->_pathMonitor = 0;
  }

  timeoutTimer = self->_timeoutTimer;
  if (timeoutTimer)
  {
    v10 = timeoutTimer;
    dispatch_source_cancel(v10);
    v11 = self->_timeoutTimer;
    self->_timeoutTimer = 0;
  }

  v12 = self->_urlSession;
  if (v12)
  {
    [(NSURLSession *)v12 invalidateAndCancel];
    v13 = self->_urlSession;
    self->_urlSession = 0;
  }

  v14.receiver = self;
  v14.super_class = CUReachabilityMonitor;
  [(CUReachabilityMonitor *)&v14 dealloc];
}

- (CUReachabilityMonitor)init
{
  v5.receiver = self;
  v5.super_class = CUReachabilityMonitor;
  v2 = [(CUReachabilityMonitor *)&v5 init];
  if (v2)
  {
    if (CUMainQueue_sOnce != -1)
    {
      dispatch_once(&CUMainQueue_sOnce, &__block_literal_global_23);
    }

    objc_storeStrong(&v2->_dispatchQueue, CUMainQueue_sQueue);
    v2->_captiveNotifyToken = -1;
    v3 = v2;
  }

  return v2;
}

@end