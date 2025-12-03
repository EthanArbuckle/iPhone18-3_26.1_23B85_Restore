@interface GKReachability
+ (id)_gkReachabilityForInternetConnection;
+ (id)_gkReachabilityWithAddress:(const sockaddr_in *)address;
- (BOOL)_gkStartNotifier;
- (int)_gkCurrentReachabilityStatus;
- (int)networkStatusForFlags:(unsigned int)flags;
- (void)_gkStopNotifier;
- (void)dealloc;
@end

@implementation GKReachability

- (BOOL)_gkStartNotifier
{
  v7.version = 0;
  memset(&v7.retain, 0, 24);
  v7.info = self;
  v3 = SCNetworkReachabilitySetCallback(self->reachabilityRef, ReachabilityCallback, &v7);
  if (v3)
  {
    reachabilityRef = self->reachabilityRef;
    Current = CFRunLoopGetCurrent();
    LOBYTE(v3) = SCNetworkReachabilityScheduleWithRunLoop(reachabilityRef, Current, *MEMORY[0x277CBF058]) != 0;
  }

  return v3;
}

- (void)_gkStopNotifier
{
  reachabilityRef = self->reachabilityRef;
  if (reachabilityRef)
  {
    Current = CFRunLoopGetCurrent();
    v4 = *MEMORY[0x277CBF058];

    SCNetworkReachabilityUnscheduleFromRunLoop(reachabilityRef, Current, v4);
  }
}

- (void)dealloc
{
  [(GKReachability *)self _gkStopNotifier];
  reachabilityRef = self->reachabilityRef;
  if (reachabilityRef)
  {
    CFRelease(reachabilityRef);
  }

  v4.receiver = self;
  v4.super_class = GKReachability;
  [(GKReachability *)&v4 dealloc];
}

+ (id)_gkReachabilityWithAddress:(const sockaddr_in *)address
{
  result = SCNetworkReachabilityCreateWithAddress(*MEMORY[0x277CBECE8], address);
  if (result)
  {
    v5 = result;
    result = objc_alloc_init(self);
    if (result)
    {
      *(result + 2) = v5;
      *(result + 8) = 0;
    }
  }

  return result;
}

+ (id)_gkReachabilityForInternetConnection
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[1] = 0;
  v4[0] = 528;
  result = [self _gkReachabilityWithAddress:v4];
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)networkStatusForFlags:(unsigned int)flags
{
  v3 = ((flags >> 2) & 1) == 0;
  if ((flags & 0x10) == 0 && (flags & 0x28) != 0)
  {
    v3 = 1;
  }

  if ((flags & 0x40000) != 0)
  {
    v3 = 2;
  }

  if ((flags & 2) != 0)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

- (int)_gkCurrentReachabilityStatus
{
  flags = 0;
  result = SCNetworkReachabilityGetFlags(self->reachabilityRef, &flags);
  if (result)
  {
    if (self->localWiFiRef)
    {
      return [(GKReachability *)self localWiFiStatusForFlags:flags];
    }

    else
    {
      return [(GKReachability *)self networkStatusForFlags:flags];
    }
  }

  return result;
}

@end