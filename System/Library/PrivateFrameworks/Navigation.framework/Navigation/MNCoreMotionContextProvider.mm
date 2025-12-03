@interface MNCoreMotionContextProvider
- (GEOMotionContextProviderDelegate)motionDelegate;
- (MNCoreMotionContextProvider)initWithTraceRecorder:(id)recorder;
- (void)dealloc;
- (void)startMotionUpdates;
- (void)stopMotionUpdates;
@end

@implementation MNCoreMotionContextProvider

- (GEOMotionContextProviderDelegate)motionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)stopMotionUpdates
{
  [(CMActivityManager *)self->_activityManager setActivityHandler:0];
  activityManager = self->_activityManager;
  self->_activityManager = 0;
}

- (void)startMotionUpdates
{
  if (!self->_activityManager)
  {
    v3 = objc_alloc_init(MEMORY[0x1E6963480]);
    activityManager = self->_activityManager;
    self->_activityManager = v3;
  }

  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__MNCoreMotionContextProvider_startMotionUpdates__block_invoke;
  v5[3] = &unk_1E842F698;
  objc_copyWeak(&v6, &location);
  [(CMActivityManager *)self->_activityManager setActivityHandler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __49__MNCoreMotionContextProvider_startMotionUpdates__block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v11 isMoving];
  if ([v11 isWalking])
  {
    v4 |= 2uLL;
  }

  if ([v11 isRunning])
  {
    v4 |= 4uLL;
  }

  if ([v11 isDriving])
  {
    v4 |= 0x10uLL;
  }

  if ([v11 hasExitedVehicle])
  {
    v5 = 2;
  }

  else
  {
    v5 = [v11 maybeExitingVehicle];
  }

  v6 = [v11 confidence];
  if (WeakRetained)
  {
    v7 = WeakRetained[3];
    if (v7)
    {
      [v7 recordMotionUpdate:v4 exitType:v5 confidence:v6];
    }
  }

  v8 = objc_loadWeakRetained((a1 + 32));
  v9 = [v8 motionDelegate];
  v10 = objc_loadWeakRetained((a1 + 32));
  [v9 motionContextProvider:v10 didUpdateMotion:v4 exitType:v5 confidence:v6];
}

- (void)dealloc
{
  [(MNCoreMotionContextProvider *)self stopMotionUpdates];
  v3.receiver = self;
  v3.super_class = MNCoreMotionContextProvider;
  [(MNCoreMotionContextProvider *)&v3 dealloc];
}

- (MNCoreMotionContextProvider)initWithTraceRecorder:(id)recorder
{
  recorderCopy = recorder;
  v10.receiver = self;
  v10.super_class = MNCoreMotionContextProvider;
  v6 = [(MNCoreMotionContextProvider *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_traceRecorder, recorder);
    v8 = v7;
  }

  return v7;
}

@end