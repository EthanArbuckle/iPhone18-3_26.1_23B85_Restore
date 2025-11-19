@interface FlexReachability
+ (id)reachabilityForInternetConnection;
+ (id)reachabilityForLocalWiFi;
+ (id)reachabilityWithAddress:(const sockaddr_in *)a3;
+ (id)reachabilityWithHostName:(id)a3;
- (BOOL)startNotifier;
- (FlexReachability)init;
- (int64_t)currentReachabilityStatus;
- (int64_t)networkStatusForFlags:(unsigned int)a3;
- (void)dealloc;
- (void)stopNotifier;
@end

@implementation FlexReachability

- (FlexReachability)init
{
  v7.receiver = self;
  v7.super_class = FlexReachability;
  v2 = [(FlexReachability *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v4 = dispatch_queue_create("com.apple.FlexMusic.reachability", v3);
    reachabilityQueue = v2->_reachabilityQueue;
    v2->_reachabilityQueue = v4;
  }

  return v2;
}

+ (id)reachabilityWithHostName:(id)a3
{
  v5 = a3;
  v10 = objc_msgSend_UTF8String(a3, v6, v7, v8, v9);
  result = SCNetworkReachabilityCreateWithName(0, v10);
  if (result)
  {
    v12 = result;
    result = objc_alloc_init(a1);
    if (result)
    {
      *(result + 2) = v12;
      *(result + 9) = 0;
    }
  }

  return result;
}

+ (id)reachabilityWithAddress:(const sockaddr_in *)a3
{
  result = SCNetworkReachabilityCreateWithAddress(*MEMORY[0x277CBECE8], a3);
  if (result)
  {
    v5 = result;
    result = objc_alloc_init(a1);
    if (result)
    {
      *(result + 2) = v5;
      *(result + 9) = 0;
    }
  }

  return result;
}

+ (id)reachabilityForInternetConnection
{
  v7[2] = *MEMORY[0x277D85DE8];
  v7[1] = 0;
  v7[0] = 528;
  v4 = objc_msgSend_reachabilityWithAddress_(a1, a2, v7, v2, v3);
  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)reachabilityForLocalWiFi
{
  v7[2] = *MEMORY[0x277D85DE8];
  v7[1] = 0;
  v7[0] = 0xFEA900000210;
  v4 = objc_msgSend_reachabilityWithAddress_(a1, a2, v7, v2, v3);
  if (v4)
  {
    v4[9] = 1;
  }

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (BOOL)startNotifier
{
  v11 = *MEMORY[0x277D85DE8];
  if (self->_isNotifying)
  {
    v3 = FlexLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(context.version) = 138412290;
      *(&context.version + 4) = self;
      v4 = "ERROR: Attempting to start notifier when already notifying for %@";
      p_context = &context;
LABEL_9:
      _os_log_impl(&dword_24B7E5000, v3, OS_LOG_TYPE_DEFAULT, v4, p_context, 0xCu);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  context.version = 0;
  memset(&context.retain, 0, 24);
  context.info = self;
  if (!SCNetworkReachabilitySetCallback(self->reachabilityRef, sub_24B7E7E8C, &context) || !SCNetworkReachabilitySetDispatchQueue(self->reachabilityRef, self->_reachabilityQueue))
  {
    v3 = FlexLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = self;
      v4 = "ERROR: Could not start notifier for %@";
      p_context = &v8;
      goto LABEL_9;
    }

LABEL_10:

    result = 0;
    goto LABEL_11;
  }

  result = 1;
  self->_isNotifying = 1;
LABEL_11:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)stopNotifier
{
  v8 = *MEMORY[0x277D85DE8];
  if (self->_isNotifying)
  {
    reachabilityRef = self->reachabilityRef;
    if (reachabilityRef)
    {
      if (SCNetworkReachabilitySetDispatchQueue(reachabilityRef, 0) && SCNetworkReachabilitySetCallback(self->reachabilityRef, 0, 0))
      {
        self->_isNotifying = 0;
      }
    }
  }

  if (self->_isNotifying)
  {
    v4 = FlexLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = self;
      _os_log_impl(&dword_24B7E5000, v4, OS_LOG_TYPE_DEFAULT, "ERROR: Could not stop notifier for %@", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  objc_msgSend_stopNotifier(self, a2, v2, v3, v4);
  reachabilityRef = self->reachabilityRef;
  if (reachabilityRef)
  {
    CFRelease(reachabilityRef);
  }

  v7.receiver = self;
  v7.super_class = FlexReachability;
  [(FlexReachability *)&v7 dealloc];
}

- (int64_t)networkStatusForFlags:(unsigned int)a3
{
  if ((a3 & 2) == 0)
  {
    return 0;
  }

  LODWORD(v4) = (a3 & 0x28) != 0;
  if ((a3 & 0x10) != 0)
  {
    LODWORD(v4) = 0;
  }

  if ((a3 & 4) != 0)
  {
    v4 = v4;
  }

  else
  {
    v4 = 1;
  }

  if ((a3 & 0x40000) != 0)
  {
    return 2;
  }

  else
  {
    return v4;
  }
}

- (int64_t)currentReachabilityStatus
{
  flags = 0;
  if (!SCNetworkReachabilityGetFlags(self->reachabilityRef, &flags))
  {
    return 0;
  }

  if (self->localWiFiRef)
  {
    return objc_msgSend_localWiFiStatusForFlags_(self, v3, flags, v4, v5);
  }

  return objc_msgSend_networkStatusForFlags_(self, v3, flags, v4, v5);
}

@end