@interface IUwbSessionDelegate
- (IUwbSessionDelegate)initWithUWBBridge:(void *)a3;
- (void)dealloc;
- (void)session:(id)a3 didDiscoverNearbyObject:(id)a4;
- (void)session:(id)a3 didFailWithError:(id)a4;
- (void)session:(id)a3 didInvalidateWithError:(id)a4;
- (void)session:(id)a3 didRemoveNearbyObjects:(id)a4 withReason:(int64_t)a5;
- (void)session:(id)a3 didUpdateNearbyObjects:(id)a4;
- (void)sessionDidStartRunning:(id)a3;
- (void)sessionSuspensionEnded:(id)a3;
- (void)sessionWasSuspended:(id)a3;
@end

@implementation IUwbSessionDelegate

- (IUwbSessionDelegate)initWithUWBBridge:(void *)a3
{
  v7.receiver = self;
  v7.super_class = IUwbSessionDelegate;
  v4 = [(IUwbSessionDelegate *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(IUwbSessionDelegate *)v4 setUwbBridge:a3];
  }

  return v5;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = IUwbSessionDelegate;
  [(IUwbSessionDelegate *)&v2 dealloc];
}

- (void)session:(id)a3 didUpdateNearbyObjects:(id)a4
{
  v5 = a4;
  ULUWBBridge::updateNearbyObjects([(IUwbSessionDelegate *)self uwbBridge], v5);
}

- (void)session:(id)a3 didRemoveNearbyObjects:(id)a4 withReason:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  [(IUwbSessionDelegate *)self uwbBridge];
  v10 = "unknown";
  if (a5 == 1)
  {
    v10 = "PeerEnded";
  }

  if (a5)
  {
    v11 = v10;
  }

  else
  {
    v11 = "Timeout";
  }

  v12 = std::string::basic_string[abi:ne200100]<0>(__p, v11);
  ULUWBBridge::removeNearbyObjects(v12, v8, v9, __p);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)sessionWasSuspended:(id)a3
{
  v4 = a3;
  ULUWBBridge::sessionWasSuspended([(IUwbSessionDelegate *)self uwbBridge], v4);
}

- (void)sessionSuspensionEnded:(id)a3
{
  v4 = a3;
  ULUWBBridge::sessionSuspensionEnded([(IUwbSessionDelegate *)self uwbBridge], v4);
}

- (void)session:(id)a3 didInvalidateWithError:(id)a4
{
  v7 = a3;
  v6 = a4;
  ULUWBBridge::invalidateSessionWithError([(IUwbSessionDelegate *)self uwbBridge], v7, v6);
}

- (void)session:(id)a3 didFailWithError:(id)a4
{
  v5 = a4;
  ULUWBBridge::sessionFailWithError([(IUwbSessionDelegate *)self uwbBridge], v5);
}

- (void)session:(id)a3 didDiscoverNearbyObject:(id)a4
{
  v5 = a4;
  ULUWBBridge::sessionDiscoverNearbyObject([(IUwbSessionDelegate *)self uwbBridge], v5);
}

- (void)sessionDidStartRunning:(id)a3
{
  v4 = a3;
  ULUWBBridge::sessionStartRunning([(IUwbSessionDelegate *)self uwbBridge], v4);
}

@end