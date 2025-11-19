@interface VCPInternetReachability
+ (id)sharedInstance;
- (VCPInternetReachability)init;
- (void)dealloc;
- (void)setReachabilityForFlags:(unsigned int)a3 update:(BOOL)a4;
@end

@implementation VCPInternetReachability

- (VCPInternetReachability)init
{
  v16 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = VCPInternetReachability;
  v2 = [(VCPInternetReachability *)&v14 init];
  v3 = v2;
  if (v2)
  {
    *&address.sa_len = 528;
    *&address.sa_data[6] = 0;
    context.version = 0;
    context.info = v2;
    memset(&context.retain, 0, 24);
    v4 = dispatch_queue_create("com.apple.mediaanalysis.reachability", 0);
    callbackQueue = v3->_callbackQueue;
    v3->_callbackQueue = v4;

    if (v3->_callbackQueue && (v6 = SCNetworkReachabilityCreateWithAddress(0, &address), (v3->_reachability = v6) != 0) && SCNetworkReachabilitySetCallback(v6, ReachabilityCallback, &context) && SCNetworkReachabilitySetDispatchQueue(v3->_reachability, v3->_callbackQueue))
    {
      v7 = v3->_callbackQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __31__VCPInternetReachability_init__block_invoke;
      block[3] = &unk_1E834BDC0;
      v11 = v3;
      dispatch_sync(v7, block);
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Reachability initialization failed; assuming no connection", buf, 2u);
      }

      v3->_hasWifiOrEthernetConnection = 0;
    }

    v8 = v3;
  }

  return v3;
}

void __31__VCPInternetReachability_init__block_invoke(uint64_t a1)
{
  flags = 0;
  if (SCNetworkReachabilityGetFlags(*(*(a1 + 32) + 16), &flags))
  {
    [*(a1 + 32) setReachabilityForFlags:flags update:0];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *v2 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Reachability flags invalid; assuming no connection", v2, 2u);
    }

    *(*(a1 + 32) + 24) = 0;
  }
}

+ (id)sharedInstance
{
  if (+[VCPInternetReachability sharedInstance]::once != -1)
  {
    +[VCPInternetReachability sharedInstance];
  }

  v3 = +[VCPInternetReachability sharedInstance]::instance;

  return v3;
}

void __41__VCPInternetReachability_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(VCPInternetReachability);
  v1 = +[VCPInternetReachability sharedInstance]::instance;
  +[VCPInternetReachability sharedInstance]::instance = v0;
}

- (void)dealloc
{
  reachability = self->_reachability;
  if (reachability)
  {
    SCNetworkReachabilitySetDispatchQueue(reachability, 0);
    CFRelease(self->_reachability);
  }

  v4.receiver = self;
  v4.super_class = VCPInternetReachability;
  [(VCPInternetReachability *)&v4 dealloc];
}

- (void)setReachabilityForFlags:(unsigned int)a3 update:(BOOL)a4
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = (a3 & 0x28) != 0;
  if ((a3 & 0x10) != 0)
  {
    v5 = 0;
  }

  if ((a3 & 4) == 0)
  {
    v5 = 1;
  }

  if ((a3 & 0x40000) != 0)
  {
    v5 = 0;
  }

  if ((a3 & 2) == 0)
  {
    v5 = 0;
  }

  if (!a4 || self->_hasWifiOrEthernetConnection != v5)
  {
    self->_hasWifiOrEthernetConnection = v5;
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      if (self->_hasWifiOrEthernetConnection)
      {
        v6 = "C";
      }

      else
      {
        v6 = "Not c";
      }

      v7 = 136315138;
      v8 = v6;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%sonnected to internet via WiFi/Ethernet", &v7, 0xCu);
    }
  }
}

@end