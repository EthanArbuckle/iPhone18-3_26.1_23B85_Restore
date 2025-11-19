@interface FTEmbeddedReachability
+ (id)reachabilityForInternetConnection;
+ (id)reachabilityForLocalWiFi;
+ (id)reachabilityWithAddress:(const sockaddr_in *)a3;
+ (id)reachabilityWithHostName:(id)a3;
- (BOOL)connectionRequired;
- (int64_t)currentReachabilityStatus;
- (int64_t)networkStatusForFlags:(unsigned int)a3;
- (void)dealloc;
@end

@implementation FTEmbeddedReachability

+ (id)reachabilityForInternetConnection
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[1] = 0;
  v5[0] = 528;
  v2 = [a1 reachabilityWithAddress:v5];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (int64_t)currentReachabilityStatus
{
  if (!self->reachabilityRef)
  {
    sub_195963450(a2, self);
  }

  if (qword_1ED768698 != -1)
  {
    sub_1959634C4();
  }

  v4 = -1431655766;
  if (!off_1ED7686A0(self->reachabilityRef, &v4))
  {
    return 0;
  }

  if (self->localWiFiRef)
  {
    return [(FTEmbeddedReachability *)self localWiFiStatusForFlags:v4];
  }

  return [(FTEmbeddedReachability *)self networkStatusForFlags:v4];
}

- (void)dealloc
{
  reachabilityRef = self->reachabilityRef;
  if (reachabilityRef)
  {
    CFRelease(reachabilityRef);
    self->reachabilityRef = 0;
  }

  v4.receiver = self;
  v4.super_class = FTEmbeddedReachability;
  [(FTEmbeddedReachability *)&v4 dealloc];
}

+ (id)reachabilityWithHostName:(id)a3
{
  v4 = a3;
  if (qword_1EAED7810 != -1)
  {
    sub_1959633A0();
  }

  v5 = (off_1EAED7808)(0, [v4 UTF8String]);
  if (v5)
  {
    v6 = v5;
    v7 = objc_alloc_init(a1);
    v8 = v7;
    if (v7)
    {
      *(v7 + 2) = v6;
      *(v7 + 8) = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)reachabilityWithAddress:(const sockaddr_in *)a3
{
  if (qword_1ED7687E8 != -1)
  {
    sub_1959633B4();
  }

  v5 = off_1ED7687E0(*MEMORY[0x1E695E480], a3);
  if (v5)
  {
    v6 = v5;
    v5 = objc_alloc_init(a1);
    if (v5)
    {
      v5[2] = v6;
      *(v5 + 8) = 0;
    }
  }

  return v5;
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

- (int64_t)networkStatusForFlags:(unsigned int)a3
{
  sub_19592DAD0(a3, "networkStatusForFlags");
  if ((a3 & 2) == 0)
  {
    return 0;
  }

  LODWORD(v5) = (a3 & 0x28) != 0;
  if ((a3 & 0x10) != 0)
  {
    LODWORD(v5) = 0;
  }

  if ((a3 & 4) != 0)
  {
    v5 = v5;
  }

  else
  {
    v5 = 1;
  }

  if ((a3 & 0x40000) != 0)
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
  if (!self->reachabilityRef)
  {
    sub_1959633C8(a2, self);
  }

  if (qword_1EAED7820 != -1)
  {
    sub_19596343C();
  }

  v4 = -1431655766;
  return off_1EAED7818(self->reachabilityRef, &v4) && (v4 & 4) != 0;
}

@end