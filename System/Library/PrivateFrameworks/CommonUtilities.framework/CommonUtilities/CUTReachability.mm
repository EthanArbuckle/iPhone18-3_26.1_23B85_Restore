@interface CUTReachability
+ (id)reachabilityForInternetConnection;
+ (id)reachabilityForLocalWiFi;
+ (id)reachabilityWithAddress:(const sockaddr_in *)address;
+ (id)reachabilityWithHostName:(id)name;
- (BOOL)connectionRequired;
- (int64_t)currentReachabilityStatus;
- (int64_t)networkStatusForFlags:(unsigned int)flags;
- (void)dealloc;
@end

@implementation CUTReachability

- (void)dealloc
{
  reachabilityRef = self->reachabilityRef;
  if (reachabilityRef)
  {
    CFRelease(reachabilityRef);
    self->reachabilityRef = 0;
  }

  v4.receiver = self;
  v4.super_class = CUTReachability;
  [(CUTReachability *)&v4 dealloc];
}

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
  v4 = SCNetworkReachabilityCreateWithAddress(*MEMORY[0x1E695E480], address);
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
  v5[2] = *MEMORY[0x1E69E9840];
  v5[1] = 0;
  v5[0] = 528;
  v2 = [self reachabilityWithAddress:v5];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (id)reachabilityForLocalWiFi
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[1] = 0;
  v5[0] = 0xFEA900000210;
  v2 = [self reachabilityWithAddress:v5];
  if (v2)
  {
    v2[8] = 1;
  }

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (int64_t)networkStatusForFlags:(unsigned int)flags
{
  sub_1B232A6A0(flags, "networkStatusForFlags");
  if ((flags & 2) == 0)
  {
    return 0;
  }

  LODWORD(v5) = (flags & 0x28) != 0;
  if ((flags & 0x10) != 0)
  {
    LODWORD(v5) = 0;
  }

  if ((flags & 4) != 0)
  {
    v5 = v5;
  }

  else
  {
    v5 = 1;
  }

  if ((flags & 0x40000) != 0)
  {
    return 2;
  }

  else
  {
    return v5;
  }
}

- (BOOL)connectionRequired
{
  reachabilityRef = self->reachabilityRef;
  if (!reachabilityRef)
  {
    sub_1B2331A3C();
    reachabilityRef = v5;
  }

  flags = -1431655766;
  return SCNetworkReachabilityGetFlags(reachabilityRef, &flags) && (flags & 4) != 0;
}

- (int64_t)currentReachabilityStatus
{
  reachabilityRef = self->reachabilityRef;
  if (!reachabilityRef)
  {
    sub_1B2331AAC();
    reachabilityRef = v6;
  }

  flags = -1431655766;
  if (!SCNetworkReachabilityGetFlags(reachabilityRef, &flags))
  {
    return 0;
  }

  if (self->localWiFiRef)
  {
    return [(CUTReachability *)self localWiFiStatusForFlags:flags];
  }

  return [(CUTReachability *)self networkStatusForFlags:flags];
}

@end