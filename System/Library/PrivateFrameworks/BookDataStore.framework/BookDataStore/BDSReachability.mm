@interface BDSReachability
+ (id)reachabilityForInternetConnection;
+ (id)reachabilityForLocalWiFi;
+ (id)reachabilityWithAddress:(const sockaddr_in *)a3;
+ (id)reachabilityWithHostName:(id)a3;
+ (id)sharedReachabilityForInternetConnection;
+ (void)_updateIsOffline;
- (BOOL)startNotifier;
- (int)currentReachabilityStatus;
- (int)networkStatusForFlags:(unsigned int)a3;
- (void)dealloc;
- (void)stopNotifier;
@end

@implementation BDSReachability

+ (id)sharedReachabilityForInternetConnection
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E45E45B8;
  block[3] = &unk_1E875A198;
  block[4] = a1;
  if (qword_1EE2B04E8 != -1)
  {
    dispatch_once(&qword_1EE2B04E8, block);
  }

  v2 = qword_1EE2B04E0;

  return v2;
}

+ (id)reachabilityForInternetConnection
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[1] = 0;
  v5[0] = 528;
  v2 = [a1 reachabilityWithAddress:v5];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (int)currentReachabilityStatus
{
  flags = 0;
  result = SCNetworkReachabilityGetFlags(self->reachabilityRef, &flags);
  if (result)
  {
    if (self->localWiFiRef)
    {
      return [(BDSReachability *)self localWiFiStatusForFlags:flags];
    }

    else
    {
      return [(BDSReachability *)self networkStatusForFlags:flags];
    }
  }

  return result;
}

- (BOOL)startNotifier
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v7.version = 0;
  memset(&v7.retain, 0, 24);
  v7.info = self;
  v3 = SCNetworkReachabilitySetCallback(self->reachabilityRef, sub_1E462F880, &v7);
  if (v3)
  {
    reachabilityRef = self->reachabilityRef;
    Current = CFRunLoopGetCurrent();
    LOBYTE(v3) = SCNetworkReachabilityScheduleWithRunLoop(reachabilityRef, Current, *MEMORY[0x1E695E8E0]) != 0;
  }

  return v3;
}

- (void)stopNotifier
{
  reachabilityRef = self->reachabilityRef;
  if (reachabilityRef)
  {
    Current = CFRunLoopGetCurrent();
    v4 = *MEMORY[0x1E695E8E0];

    SCNetworkReachabilityUnscheduleFromRunLoop(reachabilityRef, Current, v4);
  }
}

- (void)dealloc
{
  [(BDSReachability *)self stopNotifier];
  reachabilityRef = self->reachabilityRef;
  if (reachabilityRef)
  {
    CFRelease(reachabilityRef);
  }

  v4.receiver = self;
  v4.super_class = BDSReachability;
  [(BDSReachability *)&v4 dealloc];
}

+ (id)reachabilityWithHostName:(id)a3
{
  v5 = a3;
  v6 = SCNetworkReachabilityCreateWithName(0, [a3 UTF8String]);
  if (v6)
  {
    v7 = v6;
    v6 = objc_alloc_init(a1);
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

+ (id)reachabilityWithAddress:(const sockaddr_in *)a3
{
  v4 = SCNetworkReachabilityCreateWithAddress(*MEMORY[0x1E695E480], a3);
  if (v4)
  {
    v5 = v4;
    v4 = objc_alloc_init(a1);
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

+ (id)reachabilityForLocalWiFi
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[1] = 0;
  v5[0] = 0xFEA900000210;
  v2 = [a1 reachabilityWithAddress:v5];
  if (v2)
  {
    v2[8] = 1;
  }

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (int)networkStatusForFlags:(unsigned int)a3
{
  v3 = ((a3 >> 2) & 1) == 0;
  if ((a3 & 0x10) == 0 && (a3 & 0x28) != 0)
  {
    v3 = 1;
  }

  if ((a3 & 0x40000) != 0)
  {
    v3 = 2;
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

+ (void)_updateIsOffline
{
  v2 = +[BDSReachability sharedReachabilityForInternetConnection];
  byte_1EE2AEBE8 = [v2 currentReachabilityStatus] == 0;
}

@end