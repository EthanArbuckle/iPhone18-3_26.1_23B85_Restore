@interface HLPReachability
+ (id)reachabilityForInternetConnection;
+ (id)reachabilityForLocalWiFi;
+ (id)reachabilityWithAddress:(const sockaddr_in *)address;
+ (id)reachabilityWithHostName:(id)name;
- (BOOL)startNotifier;
- (int64_t)currentReachabilityStatus;
- (int64_t)networkStatusForFlags:(unsigned int)flags;
- (void)dealloc;
- (void)stopNotifier;
@end

@implementation HLPReachability

+ (id)reachabilityWithHostName:(id)name
{
  nameCopy = name;
  v6 = SCNetworkReachabilityCreateWithName(0, [name UTF8String]);
  if (v6)
  {
    v7 = v6;
    v6 = objc_alloc_init(self);
    if (v6)
    {
      *(v6 + 2) = v7;
      *(v6 + 8) = 0;
    }

    else
    {
      CFRelease(v7);
      v6 = 0;
    }
  }

  return v6;
}

+ (id)reachabilityWithAddress:(const sockaddr_in *)address
{
  v4 = SCNetworkReachabilityCreateWithAddress(*MEMORY[0x277CBECE8], address);
  if (v4)
  {
    v5 = v4;
    v4 = objc_alloc_init(self);
    if (v4)
    {
      *(v4 + 2) = v5;
      *(v4 + 8) = 0;
    }

    else
    {
      CFRelease(v5);
      v4 = 0;
    }
  }

  return v4;
}

+ (id)reachabilityForInternetConnection
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[1] = 0;
  v5[0] = 528;
  v2 = [self reachabilityWithAddress:v5];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)reachabilityForLocalWiFi
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[1] = 0;
  v5[0] = 0xFEA900000210;
  v2 = [self reachabilityWithAddress:v5];
  if (v2)
  {
    v2[8] = 1;
  }

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (BOOL)startNotifier
{
  v7.version = 0;
  memset(&v7.retain, 0, 24);
  v7.info = self;
  v3 = SCNetworkReachabilitySetCallback(self->_reachabilityRef, ReachabilityCallback, &v7);
  if (v3)
  {
    reachabilityRef = self->_reachabilityRef;
    Current = CFRunLoopGetCurrent();
    LOBYTE(v3) = SCNetworkReachabilityScheduleWithRunLoop(reachabilityRef, Current, *MEMORY[0x277CBF058]) != 0;
  }

  return v3;
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

- (void)dealloc
{
  [(HLPReachability *)self stopNotifier];
  reachabilityRef = self->_reachabilityRef;
  if (reachabilityRef)
  {
    CFRelease(reachabilityRef);
  }

  v4.receiver = self;
  v4.super_class = HLPReachability;
  [(HLPReachability *)&v4 dealloc];
}

- (int64_t)networkStatusForFlags:(unsigned int)flags
{
  if ((flags & 2) == 0)
  {
    return 0;
  }

  LODWORD(v4) = (flags & 0x28) != 0;
  if ((flags & 0x10) != 0)
  {
    LODWORD(v4) = 0;
  }

  if ((flags & 4) != 0)
  {
    v4 = v4;
  }

  else
  {
    v4 = 1;
  }

  if ((flags & 0x40000) != 0)
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
  if (!SCNetworkReachabilityGetFlags(self->_reachabilityRef, &flags))
  {
    return 0;
  }

  if (self->_alwaysReturnLocalWiFiStatus)
  {
    return [(HLPReachability *)self localWiFiStatusForFlags:flags];
  }

  return [(HLPReachability *)self networkStatusForFlags:flags];
}

@end