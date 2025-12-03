@interface CAMViewfinderActionIntervalometer
- (CAMViewfinderActionIntervalometer)initWithDelegate:(id)delegate interval:(double)interval delay:(double)delay maximumCount:(int64_t)count viewfinderViewController:(id)controller;
- (CAMViewfinderActionIntervalometerDelegate)delegate;
- (void)_attemptViewfinderActions;
- (void)startGeneratingRequests;
- (void)stopAttemptingActions;
@end

@implementation CAMViewfinderActionIntervalometer

- (CAMViewfinderActionIntervalometer)initWithDelegate:(id)delegate interval:(double)interval delay:(double)delay maximumCount:(int64_t)count viewfinderViewController:(id)controller
{
  delegateCopy = delegate;
  controllerCopy = controller;
  v24.receiver = self;
  v24.super_class = CAMViewfinderActionIntervalometer;
  v14 = [(CAMViewfinderActionIntervalometer *)&v24 init];
  v15 = v14;
  if (v14)
  {
    if (!count)
    {
      count = 0x7FFFFFFFFFFFFFFFLL;
    }

    objc_storeWeak(&v14->_delegate, delegateCopy);
    v15->_interval = interval;
    v15->_delay = delay;
    v15->_maximumCount = count;
    v15->__remaining = count;
    objc_storeStrong(&v15->__viewfinderViewController, controller);
    objc_initWeak(&location, v15);
    v16 = [CAMPreciseTimer alloc];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __107__CAMViewfinderActionIntervalometer_initWithDelegate_interval_delay_maximumCount_viewfinderViewController___block_invoke;
    v21[3] = &unk_1E76F9A10;
    objc_copyWeak(&v22, &location);
    v17 = [(CAMPreciseTimer *)v16 initWithDelay:v21 interval:delay handler:interval];
    timer = v15->__timer;
    v15->__timer = v17;

    v19 = v15;
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  return v15;
}

void __107__CAMViewfinderActionIntervalometer_initWithDelegate_interval_delay_maximumCount_viewfinderViewController___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _attemptViewfinderActions];
}

- (void)startGeneratingRequests
{
  _viewfinderViewController = [(CAMViewfinderActionIntervalometer *)self _viewfinderViewController];

  if (_viewfinderViewController)
  {
    _timer = [(CAMViewfinderActionIntervalometer *)self _timer];
    [_timer start];
  }

  else
  {
    v4 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(CAMViewfinderActionIntervalometer *)v4 startGeneratingRequests];
    }
  }
}

- (void)_attemptViewfinderActions
{
  delegate = [(CAMViewfinderActionIntervalometer *)self delegate];
  v4 = delegate;
  if (delegate)
  {
    if ([delegate shouldAttemptAction])
    {
      if ([v4 executeAction])
      {
        [(CAMViewfinderActionIntervalometer *)self set_remaining:[(CAMViewfinderActionIntervalometer *)self _remaining]- 1];
        if (![(CAMViewfinderActionIntervalometer *)self _remaining])
        {
          [(CAMViewfinderActionIntervalometer *)self stopAttemptingActions];
          if (objc_opt_respondsToSelector())
          {
            [v4 intervalometerDidReachMaximumCount:self];
          }
        }
      }
    }
  }

  else
  {
    [(CAMViewfinderActionIntervalometer *)self stopAttemptingActions];
  }
}

- (void)stopAttemptingActions
{
  _timer = [(CAMViewfinderActionIntervalometer *)self _timer];
  [_timer invalidate];
}

- (CAMViewfinderActionIntervalometerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end