@interface CLSReachability
+ (id)reachabilityForInternetConnection;
+ (id)reachabilityForLocalWiFi;
+ (id)reachabilityWithAddress:(const sockaddr_in *)a3;
+ (id)reachabilityWithHostName:(id)a3;
- (BOOL)startNotifier;
- (CLSReachability)initWithNetworkReachability:(__SCNetworkReachability *)a3;
- (int64_t)_networkStatusForFlags:(unsigned int)a3;
- (int64_t)currentNetworkStatus;
- (void)dealloc;
- (void)stopNotifier;
@end

@implementation CLSReachability

- (int64_t)currentNetworkStatus
{
  flags = 0;
  if (!SCNetworkReachabilityGetFlags(self->_reachabilityRef, &flags))
  {
    return 0;
  }

  if (self->_localWiFiRef)
  {
    return [(CLSReachability *)self _localWiFiStatusForFlags:flags];
  }

  return [(CLSReachability *)self _networkStatusForFlags:flags];
}

- (int64_t)_networkStatusForFlags:(unsigned int)a3
{
  v3 = 2;
  if ((a3 & 0x10) != 0 || (a3 & 0x28) == 0)
  {
    v3 = ~(a3 >> 1) & 2;
  }

  if ((a3 & 0x40000) != 0)
  {
    v3 = 1;
  }

  if ((a3 & 2) != 0)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

- (void)stopNotifier
{
  reachabilityRef = self->_reachabilityRef;
  if (reachabilityRef)
  {
    Current = CFRunLoopGetCurrent();
    v4 = *MEMORY[0x277CBF058];

    SCNetworkReachabilityUnscheduleFromRunLoop(reachabilityRef, Current, v4);
  }
}

- (BOOL)startNotifier
{
  v7.version = 0;
  memset(&v7.retain, 0, 24);
  v7.info = self;
  v3 = SCNetworkReachabilitySetCallback(self->_reachabilityRef, _CLSReachabilityCallback, &v7);
  if (v3)
  {
    reachabilityRef = self->_reachabilityRef;
    Current = CFRunLoopGetCurrent();
    LOBYTE(v3) = SCNetworkReachabilityScheduleWithRunLoop(reachabilityRef, Current, *MEMORY[0x277CBF058]) != 0;
  }

  return v3;
}

- (void)dealloc
{
  [(CLSReachability *)self stopNotifier];
  reachabilityRef = self->_reachabilityRef;
  if (reachabilityRef)
  {
    CFRelease(reachabilityRef);
    self->_reachabilityRef = 0;
  }

  v4.receiver = self;
  v4.super_class = CLSReachability;
  [(CLSReachability *)&v4 dealloc];
}

- (CLSReachability)initWithNetworkReachability:(__SCNetworkReachability *)a3
{
  v6.receiver = self;
  v6.super_class = CLSReachability;
  v4 = [(CLSReachability *)&v6 init];
  if (v4)
  {
    if (a3)
    {
      v4->_reachabilityRef = CFRetain(a3);
    }

    v4->_localWiFiRef = 0;
  }

  return v4;
}

+ (id)reachabilityForLocalWiFi
{
  v3[2] = *MEMORY[0x277D85DE8];
  v3[1] = 0;
  v3[0] = 0xFEA900000210;
  result = [CLSReachability reachabilityWithAddress:v3];
  if (result)
  {
    *(result + 16) = 1;
  }

  return result;
}

+ (id)reachabilityForInternetConnection
{
  v3[2] = *MEMORY[0x277D85DE8];
  v3[1] = 0;
  v3[0] = 528;
  return [CLSReachability reachabilityWithAddress:v3];
}

+ (id)reachabilityWithAddress:(const sockaddr_in *)a3
{
  v3 = SCNetworkReachabilityCreateWithAddress(*MEMORY[0x277CBECE8], a3);
  if (v3)
  {
    v4 = v3;
    v5 = [[CLSReachability alloc] initWithNetworkReachability:v3];
    CFRelease(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)reachabilityWithHostName:(id)a3
{
  v3 = SCNetworkReachabilityCreateWithName(0, [a3 UTF8String]);
  if (v3)
  {
    v4 = v3;
    v5 = [[CLSReachability alloc] initWithNetworkReachability:v3];
    CFRelease(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end