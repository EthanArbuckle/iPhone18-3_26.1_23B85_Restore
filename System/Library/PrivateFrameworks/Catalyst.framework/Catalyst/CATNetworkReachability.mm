@interface CATNetworkReachability
+ (BOOL)isReachableForNetworkWithFlags:(unsigned int)flags;
+ (id)reachabilityForInternetConnection;
+ (id)reachabilityForLocalWiFi;
+ (id)reachabilityWithAddress:(id)address;
- (BOOL)isReachable;
- (CATNetworkReachability)initWithAddress:(id)address;
- (CATNetworkReachabilityDelegate)delegate;
- (id)debugDescription;
- (void)configureCallback;
- (void)dealloc;
- (void)delegateDidChange;
- (void)removeFromRunLoop:(id)loop forMode:(id)mode;
- (void)scheduleInRunLoop:(id)loop forMode:(id)mode;
@end

@implementation CATNetworkReachability

- (BOOL)isReachable
{
  address = [(CATNetworkReachability *)self address];
  isLocalWiFi = [address isLocalWiFi];

  flags = [(CATNetworkReachability *)self flags];
  if (isLocalWiFi)
  {

    return [CATNetworkReachability isReachableForLocalWiFiWithFlags:flags];
  }

  else
  {

    return [CATNetworkReachability isReachableForNetworkWithFlags:flags];
  }
}

+ (id)reachabilityWithAddress:(id)address
{
  addressCopy = address;
  v5 = [[self alloc] initWithAddress:addressCopy];

  return v5;
}

+ (id)reachabilityForInternetConnection
{
  v3 = +[CATAddress any];
  v4 = [self reachabilityWithAddress:v3];

  return v4;
}

+ (id)reachabilityForLocalWiFi
{
  v3 = +[CATAddress localWiFi];
  v4 = [self reachabilityWithAddress:v3];

  return v4;
}

- (CATNetworkReachability)initWithAddress:(id)address
{
  addressCopy = address;
  if (!addressCopy)
  {
    [(CATNetworkReachability *)a2 initWithAddress:?];
  }

  v7 = [(CATNetworkReachability *)self init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_address, address);
    data = [addressCopy data];
    v8->mReachabilityRef = SCNetworkReachabilityCreateWithAddress(0, [data bytes]);

    [(CATNetworkReachability *)v8 configureCallback];
  }

  return v8;
}

- (void)dealloc
{
  mReachabilityRef = self->mReachabilityRef;
  if (mReachabilityRef)
  {
    CFRelease(mReachabilityRef);
    self->mReachabilityRef = 0;
  }

  v4.receiver = self;
  v4.super_class = CATNetworkReachability;
  [(CATNetworkReachability *)&v4 dealloc];
}

- (id)debugDescription
{
  flags = [(CATNetworkReachability *)self flags];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  isReachable = [(CATNetworkReachability *)self isReachable];
  v7 = @"unreachable";
  if (isReachable)
  {
    v7 = @"reachable";
  }

  v8 = 100;
  if ((flags & 0x20000) == 0)
  {
    v8 = 45;
  }

  v22 = v8;
  v9 = 108;
  if ((flags & 0x10000) == 0)
  {
    v9 = 45;
  }

  v10 = 68;
  if ((flags & 0x20) == 0)
  {
    v10 = 45;
  }

  v20 = v10;
  v21 = v9;
  v11 = 105;
  if ((flags & 0x10) == 0)
  {
    v11 = 45;
  }

  v12 = 67;
  if ((flags & 8) == 0)
  {
    v12 = 45;
  }

  v18 = v12;
  v19 = v11;
  v13 = 99;
  if ((flags & 4) == 0)
  {
    v13 = 45;
  }

  v14 = 116;
  if ((flags & 1) == 0)
  {
    v14 = 45;
  }

  v17 = v13;
  v15 = 82;
  if ((flags & 2) == 0)
  {
    v15 = 45;
  }

  return [v4 stringWithFormat:@"<%@: %p { %@, flags = '%c %c%c%c%c%c%c%c' }>", v5, self, v7, v15, v14, v17, v18, v19, v20, v21, v22];
}

- (void)scheduleInRunLoop:(id)loop forMode:(id)mode
{
  mReachabilityRef = self->mReachabilityRef;
  modeCopy = mode;
  SCNetworkReachabilityScheduleWithRunLoop(mReachabilityRef, [loop getCFRunLoop], modeCopy);

  flags = 0;
  if (SCNetworkReachabilityGetFlags(self->mReachabilityRef, &flags))
  {
    [(CATNetworkReachability *)self reachabilityDidChangeWithFlags:flags];
  }
}

- (void)removeFromRunLoop:(id)loop forMode:(id)mode
{
  mReachabilityRef = self->mReachabilityRef;
  runLoopMode = mode;
  SCNetworkReachabilityUnscheduleFromRunLoop(mReachabilityRef, [loop getCFRunLoop], runLoopMode);
}

- (void)delegateDidChange
{
  delegate = [(CATNetworkReachability *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(CATNetworkReachability *)self delegate];
    [delegate2 reachabilityDidChange:self];
  }
}

- (void)configureCallback
{
  context.version = 0;
  context.info = self;
  context.retain = MEMORY[0x277CBE558];
  context.release = MEMORY[0x277CBE550];
  context.copyDescription = MEMORY[0x277CBE530];
  SCNetworkReachabilitySetCallback(self->mReachabilityRef, __REACHABILITY_CALLBACK__, &context);
}

+ (BOOL)isReachableForNetworkWithFlags:(unsigned int)flags
{
  v3 = (flags & 0x28) != 0;
  if ((flags & 0x10) != 0)
  {
    v3 = 0;
  }

  v4 = (flags & 4) == 0 || v3;
  return (flags & 2) != 0 && v4;
}

- (CATNetworkReachabilityDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithAddress:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CATNetworkReachability.m" lineNumber:73 description:{@"Invalid parameter not satisfying: %@", @"address"}];
}

@end