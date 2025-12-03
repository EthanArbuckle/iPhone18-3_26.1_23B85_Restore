@interface CWFRemoteInterfaceManager
+ (id)sharedInstance;
- (BOOL)_isInterfaceDeactivationTimerValid;
- (CWFRemoteInterfaceManager)init;
- (id)_defaultScanParameters;
- (void)_activateInterface;
- (void)_deactivateInterface;
- (void)_invalidateInterfaceDeactivationTimer;
- (void)_startInterfaceDeactivationTimerIfNeeded;
- (void)associateNetwork:(id)network password:(id)password completion:(id)completion;
- (void)scanAvailableNetworksWithCompletion:(id)completion;
- (void)wifiStatusWithCompletion:(id)completion;
@end

@implementation CWFRemoteInterfaceManager

+ (id)sharedInstance
{
  if (qword_1ED7E3930 != -1)
  {
    dispatch_once(&qword_1ED7E3930, &unk_1F5B89AB0);
  }

  v3 = qword_1ED7E3938;

  return v3;
}

- (CWFRemoteInterfaceManager)init
{
  v8.receiver = self;
  v8.super_class = CWFRemoteInterfaceManager;
  v2 = [(CWFRemoteInterfaceManager *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);

    v5 = dispatch_queue_create("com.apple.corewifi.requestQueue", v4);
    requestQueue = v2->_requestQueue;
    v2->_requestQueue = v5;

    [(CWFRemoteInterfaceManager *)v2 _activateInterface];
  }

  return v2;
}

- (void)scanAvailableNetworksWithCompletion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = CWFGetOSLog();
  if (v5)
  {
    v6 = CWFGetOSLog();
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *location = 136446978;
    *&location[4] = "[CWFRemoteInterfaceManager scanAvailableNetworksWithCompletion:]";
    v15 = 2082;
    v16 = "CWFRemoteInterfaceManager.m";
    v17 = 1024;
    v18 = 61;
    v19 = 2080;
    v20 = "[CWFRemoteInterfaceManager scanAvailableNetworksWithCompletion:]";
    _os_log_send_and_compose_impl();
  }

  objc_initWeak(location, self);
  requestQueue = [(CWFRemoteInterfaceManager *)self requestQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C19C3C;
  block[3] = &unk_1E86E6618;
  block[4] = self;
  objc_copyWeak(&v13, location);
  v12 = completionCopy;
  v9 = completionCopy;
  dispatch_async(requestQueue, block);

  objc_destroyWeak(&v13);
  objc_destroyWeak(location);
  v10 = *MEMORY[0x1E69E9840];
}

- (void)associateNetwork:(id)network password:(id)password completion:(id)completion
{
  v31 = *MEMORY[0x1E69E9840];
  networkCopy = network;
  passwordCopy = password;
  completionCopy = completion;
  v11 = CWFGetOSLog();
  if (v11)
  {
    v12 = CWFGetOSLog();
  }

  else
  {
    v12 = MEMORY[0x1E69E9C10];
    v13 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *location = 136446978;
    *&location[4] = "[CWFRemoteInterfaceManager associateNetwork:password:completion:]";
    v25 = 2082;
    v26 = "CWFRemoteInterfaceManager.m";
    v27 = 1024;
    v28 = 101;
    v29 = 2080;
    v30 = "[CWFRemoteInterfaceManager associateNetwork:password:completion:]";
    _os_log_send_and_compose_impl();
  }

  objc_initWeak(location, self);
  requestQueue = [(CWFRemoteInterfaceManager *)self requestQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C1A33C;
  block[3] = &unk_1E86E6668;
  block[4] = self;
  objc_copyWeak(&v23, location);
  v20 = networkCopy;
  v21 = passwordCopy;
  v22 = completionCopy;
  v15 = completionCopy;
  v16 = passwordCopy;
  v17 = networkCopy;
  dispatch_async(requestQueue, block);

  objc_destroyWeak(&v23);
  objc_destroyWeak(location);
  v18 = *MEMORY[0x1E69E9840];
}

- (void)wifiStatusWithCompletion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = CWFGetOSLog();
  if (v5)
  {
    v6 = CWFGetOSLog();
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *location = 136446978;
    *&location[4] = "[CWFRemoteInterfaceManager wifiStatusWithCompletion:]";
    v15 = 2082;
    v16 = "CWFRemoteInterfaceManager.m";
    v17 = 1024;
    v18 = 152;
    v19 = 2080;
    v20 = "[CWFRemoteInterfaceManager wifiStatusWithCompletion:]";
    _os_log_send_and_compose_impl();
  }

  objc_initWeak(location, self);
  requestQueue = [(CWFRemoteInterfaceManager *)self requestQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C1A9E4;
  block[3] = &unk_1E86E6618;
  block[4] = self;
  objc_copyWeak(&v13, location);
  v12 = completionCopy;
  v9 = completionCopy;
  dispatch_async(requestQueue, block);

  objc_destroyWeak(&v13);
  objc_destroyWeak(location);
  v10 = *MEMORY[0x1E69E9840];
}

- (void)_startInterfaceDeactivationTimerIfNeeded
{
  objc_initWeak(&location, self);
  if (![(CWFRemoteInterfaceManager *)self _isInterfaceDeactivationTimerValid])
  {
    requestQueue = [(CWFRemoteInterfaceManager *)self requestQueue];
    v4 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, requestQueue);
    [(CWFRemoteInterfaceManager *)self setInterfaceDeactivationTimer:v4];

    interfaceDeactivationTimer = [(CWFRemoteInterfaceManager *)self interfaceDeactivationTimer];
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = sub_1E0C1AE64;
    v12 = &unk_1E86E6190;
    objc_copyWeak(&v13, &location);
    dispatch_source_set_event_handler(interfaceDeactivationTimer, &v9);

    v6 = dispatch_time(0, 30000000000);
    v7 = [(CWFRemoteInterfaceManager *)self interfaceDeactivationTimer:v9];
    dispatch_source_set_timer(v7, v6, 0x6FC23AC00uLL, 0);

    interfaceDeactivationTimer2 = [(CWFRemoteInterfaceManager *)self interfaceDeactivationTimer];
    dispatch_resume(interfaceDeactivationTimer2);

    objc_destroyWeak(&v13);
  }

  objc_destroyWeak(&location);
}

- (void)_invalidateInterfaceDeactivationTimer
{
  v11 = *MEMORY[0x1E69E9840];
  interfaceDeactivationTimer = [(CWFRemoteInterfaceManager *)self interfaceDeactivationTimer];
  if (interfaceDeactivationTimer)
  {
    v4 = interfaceDeactivationTimer;
    _isInterfaceDeactivationTimerValid = [(CWFRemoteInterfaceManager *)self _isInterfaceDeactivationTimerValid];

    if (_isInterfaceDeactivationTimerValid)
    {
      v6 = CWFGetOSLog();
      if (v6)
      {
        v7 = CWFGetOSLog();
      }

      else
      {
        v7 = MEMORY[0x1E69E9C10];
        v8 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        _os_log_send_and_compose_impl();
      }

      interfaceDeactivationTimer2 = [(CWFRemoteInterfaceManager *)self interfaceDeactivationTimer];
      dispatch_source_cancel(interfaceDeactivationTimer2);

      [(CWFRemoteInterfaceManager *)self setInterfaceDeactivationTimer:0];
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)_isInterfaceDeactivationTimerValid
{
  interfaceDeactivationTimer = [(CWFRemoteInterfaceManager *)self interfaceDeactivationTimer];
  if (interfaceDeactivationTimer)
  {
    interfaceDeactivationTimer2 = [(CWFRemoteInterfaceManager *)self interfaceDeactivationTimer];
    v5 = dispatch_source_testcancel(interfaceDeactivationTimer2) == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_activateInterface
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = dispatch_get_current_queue();
  requestQueue = [(CWFRemoteInterfaceManager *)self requestQueue];

  if (v3 == requestQueue)
  {
    v6 = CWFGetOSLog();
    if (v6)
    {
      v7 = CWFGetOSLog();
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *location = 136446722;
      *&location[4] = "[CWFRemoteInterfaceManager _activateInterface]";
      v19 = 2082;
      v20 = "CWFRemoteInterfaceManager.m";
      v21 = 1024;
      v22 = 229;
      LODWORD(v15) = 28;
      v14 = location;
      _os_log_send_and_compose_impl();
    }

    interface = [(CWFRemoteInterfaceManager *)self interface];
    v10 = interface == 0;

    if (v10)
    {
      v11 = objc_alloc_init(CWFInterface);
      [(CWFRemoteInterfaceManager *)self setInterface:v11];
    }

    v12 = [(CWFRemoteInterfaceManager *)self interface:v14];
    [v12 activate];
  }

  else
  {
    objc_initWeak(location, self);
    requestQueue2 = [(CWFRemoteInterfaceManager *)self requestQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0C1B2D4;
    block[3] = &unk_1E86E6190;
    objc_copyWeak(&v17, location);
    dispatch_async(requestQueue2, block);

    objc_destroyWeak(&v17);
    objc_destroyWeak(location);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_deactivateInterface
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = dispatch_get_current_queue();
  requestQueue = [(CWFRemoteInterfaceManager *)self requestQueue];

  if (v3 == requestQueue)
  {
    v6 = CWFGetOSLog();
    if (v6)
    {
      v7 = CWFGetOSLog();
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *location = 136446722;
      *&location[4] = "[CWFRemoteInterfaceManager _deactivateInterface]";
      v14 = 2082;
      v15 = "CWFRemoteInterfaceManager.m";
      v16 = 1024;
      v17 = 249;
      _os_log_send_and_compose_impl();
    }

    interface = [(CWFRemoteInterfaceManager *)self interface];
    [interface invalidate];

    [(CWFRemoteInterfaceManager *)self setInterface:0];
  }

  else
  {
    objc_initWeak(location, self);
    requestQueue2 = [(CWFRemoteInterfaceManager *)self requestQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0C1B528;
    block[3] = &unk_1E86E6190;
    objc_copyWeak(&v12, location);
    dispatch_async(requestQueue2, block);

    objc_destroyWeak(&v12);
    objc_destroyWeak(location);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (id)_defaultScanParameters
{
  v2 = objc_opt_new();
  [v2 setAcceptableANQPCacheAgeForPasspointScanResults:20];
  [v2 setMergeScanResults:1];
  [v2 setScanType:1];
  [v2 setNumberOfScans:1];
  [v2 setDwellTime:0];
  [v2 setANQPElementIDListForPasspointScanResults:&unk_1F5BB9AD8];
  [v2 setIncludeMatchingKnownNetworkProfiles:1];

  return v2;
}

@end