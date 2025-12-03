@interface IUwbSessionDelegate
- (IUwbSessionDelegate)initWithUWBBridge:(void *)bridge;
- (void)dealloc;
- (void)session:(id)session didDiscoverNearbyObject:(id)object;
- (void)session:(id)session didFailWithError:(id)error;
- (void)session:(id)session didInvalidateWithError:(id)error;
- (void)session:(id)session didRemoveNearbyObjects:(id)objects withReason:(int64_t)reason;
- (void)session:(id)session didUpdateNearbyObjects:(id)objects;
- (void)sessionDidStartRunning:(id)running;
- (void)sessionSuspensionEnded:(id)ended;
- (void)sessionWasSuspended:(id)suspended;
@end

@implementation IUwbSessionDelegate

- (IUwbSessionDelegate)initWithUWBBridge:(void *)bridge
{
  v7.receiver = self;
  v7.super_class = IUwbSessionDelegate;
  v4 = [(IUwbSessionDelegate *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(IUwbSessionDelegate *)v4 setUwbBridge:bridge];
  }

  return v5;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = IUwbSessionDelegate;
  [(IUwbSessionDelegate *)&v2 dealloc];
}

- (void)session:(id)session didUpdateNearbyObjects:(id)objects
{
  objectsCopy = objects;
  ULUWBBridge::updateNearbyObjects([(IUwbSessionDelegate *)self uwbBridge], objectsCopy);
}

- (void)session:(id)session didRemoveNearbyObjects:(id)objects withReason:(int64_t)reason
{
  sessionCopy = session;
  objectsCopy = objects;
  [(IUwbSessionDelegate *)self uwbBridge];
  v10 = "unknown";
  if (reason == 1)
  {
    v10 = "PeerEnded";
  }

  if (reason)
  {
    v11 = v10;
  }

  else
  {
    v11 = "Timeout";
  }

  v12 = std::string::basic_string[abi:ne200100]<0>(__p, v11);
  ULUWBBridge::removeNearbyObjects(v12, sessionCopy, objectsCopy, __p);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)sessionWasSuspended:(id)suspended
{
  suspendedCopy = suspended;
  ULUWBBridge::sessionWasSuspended([(IUwbSessionDelegate *)self uwbBridge], suspendedCopy);
}

- (void)sessionSuspensionEnded:(id)ended
{
  endedCopy = ended;
  ULUWBBridge::sessionSuspensionEnded([(IUwbSessionDelegate *)self uwbBridge], endedCopy);
}

- (void)session:(id)session didInvalidateWithError:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  ULUWBBridge::invalidateSessionWithError([(IUwbSessionDelegate *)self uwbBridge], sessionCopy, errorCopy);
}

- (void)session:(id)session didFailWithError:(id)error
{
  errorCopy = error;
  ULUWBBridge::sessionFailWithError([(IUwbSessionDelegate *)self uwbBridge], errorCopy);
}

- (void)session:(id)session didDiscoverNearbyObject:(id)object
{
  objectCopy = object;
  ULUWBBridge::sessionDiscoverNearbyObject([(IUwbSessionDelegate *)self uwbBridge], objectCopy);
}

- (void)sessionDidStartRunning:(id)running
{
  runningCopy = running;
  ULUWBBridge::sessionStartRunning([(IUwbSessionDelegate *)self uwbBridge], runningCopy);
}

@end