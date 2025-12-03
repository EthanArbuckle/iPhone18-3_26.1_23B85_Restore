@interface IMNetworkReachability
+ (id)reachabilityForInternetConnection;
+ (id)reachabilityForLocalWiFi;
+ (id)reachabilityWithAddress:(const sockaddr_in *)address;
+ (id)reachabilityWithHostName:(id)name;
- (int64_t)currentReachabilityStatus;
- (int64_t)networkStatusForFlags:(unsigned int)flags;
- (void)dealloc;
@end

@implementation IMNetworkReachability

- (void)dealloc
{
  reachabilityRef = self->reachabilityRef;
  if (reachabilityRef)
  {
    CFRelease(reachabilityRef);
    self->reachabilityRef = 0;
  }

  v4.receiver = self;
  v4.super_class = IMNetworkReachability;
  [(IMNetworkReachability *)&v4 dealloc];
}

+ (id)reachabilityWithHostName:(id)name
{
  nameCopy = name;
  if (qword_1EAED93F8 != -1)
  {
    sub_1959D6424();
  }

  v5 = off_1EAED93F0;
  v6 = nameCopy;
  v9 = objc_msgSend_UTF8String(v6, v7, v8);
  v10 = v5(0, v9);
  if (v10)
  {
    v11 = v10;
    v12 = objc_alloc_init(self);
    v13 = v12;
    if (v12)
    {
      *(v12 + 2) = v11;
      *(v12 + 8) = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)reachabilityWithAddress:(const sockaddr_in *)address
{
  if (qword_1EAED9408 != -1)
  {
    sub_1959D6438();
  }

  v5 = off_1EAED9400(*MEMORY[0x1E695E480], address);
  if (v5)
  {
    v6 = v5;
    v5 = objc_alloc_init(self);
    if (v5)
    {
      v5[2] = v6;
      *(v5 + 8) = 0;
    }
  }

  return v5;
}

+ (id)reachabilityForInternetConnection
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[1] = 0;
  v5[0] = 528;
  v2 = objc_msgSend_reachabilityWithAddress_(self, a2, v5);
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (id)reachabilityForLocalWiFi
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[1] = 0;
  v5[0] = 0xFEA900000210;
  v2 = objc_msgSend_reachabilityWithAddress_(self, a2, v5);
  if (v2)
  {
    v2[8] = 1;
  }

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (int64_t)networkStatusForFlags:(unsigned int)flags
{
  sub_1959CA454(flags, "networkStatusForFlags");
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

- (int64_t)currentReachabilityStatus
{
  if (!self->reachabilityRef)
  {
    sub_1959D644C(a2, self, v2);
  }

  if (qword_1EAED8850 != -1)
  {
    sub_1959D64C0();
  }

  v6 = -1431655766;
  if (!off_1EAED8858(self->reachabilityRef, &v6))
  {
    return 0;
  }

  if (self->localWiFiRef)
  {
    return objc_msgSend_localWiFiStatusForFlags_(self, v4, v6);
  }

  return objc_msgSend_networkStatusForFlags_(self, v4, v6);
}

@end