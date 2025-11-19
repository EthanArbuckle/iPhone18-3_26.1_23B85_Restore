@interface CATNetworkReachability
+ (BOOL)isReachableForNetworkWithFlags:(unsigned int)a3;
+ (id)reachabilityForInternetConnection;
+ (id)reachabilityForLocalWiFi;
+ (id)reachabilityWithAddress:(id)a3;
- (BOOL)isReachable;
- (CATNetworkReachability)initWithAddress:(id)a3;
- (CATNetworkReachabilityDelegate)delegate;
- (id)debugDescription;
- (void)configureCallback;
- (void)dealloc;
- (void)delegateDidChange;
- (void)removeFromRunLoop:(id)a3 forMode:(id)a4;
- (void)scheduleInRunLoop:(id)a3 forMode:(id)a4;
@end

@implementation CATNetworkReachability

- (BOOL)isReachable
{
  v3 = [(CATNetworkReachability *)self address];
  v4 = [v3 isLocalWiFi];

  v5 = [(CATNetworkReachability *)self flags];
  if (v4)
  {

    return [CATNetworkReachability isReachableForLocalWiFiWithFlags:v5];
  }

  else
  {

    return [CATNetworkReachability isReachableForNetworkWithFlags:v5];
  }
}

+ (id)reachabilityWithAddress:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithAddress:v4];

  return v5;
}

+ (id)reachabilityForInternetConnection
{
  v3 = +[CATAddress any];
  v4 = [a1 reachabilityWithAddress:v3];

  return v4;
}

+ (id)reachabilityForLocalWiFi
{
  v3 = +[CATAddress localWiFi];
  v4 = [a1 reachabilityWithAddress:v3];

  return v4;
}

- (CATNetworkReachability)initWithAddress:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [(CATNetworkReachability *)a2 initWithAddress:?];
  }

  v7 = [(CATNetworkReachability *)self init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_address, a3);
    v9 = [v6 data];
    v8->mReachabilityRef = SCNetworkReachabilityCreateWithAddress(0, [v9 bytes]);

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
  v3 = [(CATNetworkReachability *)self flags];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = [(CATNetworkReachability *)self isReachable];
  v7 = @"unreachable";
  if (v6)
  {
    v7 = @"reachable";
  }

  v8 = 100;
  if ((v3 & 0x20000) == 0)
  {
    v8 = 45;
  }

  v22 = v8;
  v9 = 108;
  if ((v3 & 0x10000) == 0)
  {
    v9 = 45;
  }

  v10 = 68;
  if ((v3 & 0x20) == 0)
  {
    v10 = 45;
  }

  v20 = v10;
  v21 = v9;
  v11 = 105;
  if ((v3 & 0x10) == 0)
  {
    v11 = 45;
  }

  v12 = 67;
  if ((v3 & 8) == 0)
  {
    v12 = 45;
  }

  v18 = v12;
  v19 = v11;
  v13 = 99;
  if ((v3 & 4) == 0)
  {
    v13 = 45;
  }

  v14 = 116;
  if ((v3 & 1) == 0)
  {
    v14 = 45;
  }

  v17 = v13;
  v15 = 82;
  if ((v3 & 2) == 0)
  {
    v15 = 45;
  }

  return [v4 stringWithFormat:@"<%@: %p { %@, flags = '%c %c%c%c%c%c%c%c' }>", v5, self, v7, v15, v14, v17, v18, v19, v20, v21, v22];
}

- (void)scheduleInRunLoop:(id)a3 forMode:(id)a4
{
  mReachabilityRef = self->mReachabilityRef;
  v7 = a4;
  SCNetworkReachabilityScheduleWithRunLoop(mReachabilityRef, [a3 getCFRunLoop], v7);

  flags = 0;
  if (SCNetworkReachabilityGetFlags(self->mReachabilityRef, &flags))
  {
    [(CATNetworkReachability *)self reachabilityDidChangeWithFlags:flags];
  }
}

- (void)removeFromRunLoop:(id)a3 forMode:(id)a4
{
  mReachabilityRef = self->mReachabilityRef;
  runLoopMode = a4;
  SCNetworkReachabilityUnscheduleFromRunLoop(mReachabilityRef, [a3 getCFRunLoop], runLoopMode);
}

- (void)delegateDidChange
{
  v3 = [(CATNetworkReachability *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(CATNetworkReachability *)self delegate];
    [v5 reachabilityDidChange:self];
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

+ (BOOL)isReachableForNetworkWithFlags:(unsigned int)a3
{
  v3 = (a3 & 0x28) != 0;
  if ((a3 & 0x10) != 0)
  {
    v3 = 0;
  }

  v4 = (a3 & 4) == 0 || v3;
  return (a3 & 2) != 0 && v4;
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