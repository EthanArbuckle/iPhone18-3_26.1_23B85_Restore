@interface CAMViewfinderActionIntervalometer
- (CAMViewfinderActionIntervalometer)initWithDelegate:(id)a3 interval:(double)a4 delay:(double)a5 maximumCount:(int64_t)a6 viewfinderViewController:(id)a7;
- (CAMViewfinderActionIntervalometerDelegate)delegate;
- (void)_attemptViewfinderActions;
- (void)startGeneratingRequests;
- (void)stopAttemptingActions;
@end

@implementation CAMViewfinderActionIntervalometer

- (CAMViewfinderActionIntervalometer)initWithDelegate:(id)a3 interval:(double)a4 delay:(double)a5 maximumCount:(int64_t)a6 viewfinderViewController:(id)a7
{
  v12 = a3;
  v13 = a7;
  v24.receiver = self;
  v24.super_class = CAMViewfinderActionIntervalometer;
  v14 = [(CAMViewfinderActionIntervalometer *)&v24 init];
  v15 = v14;
  if (v14)
  {
    if (!a6)
    {
      a6 = 0x7FFFFFFFFFFFFFFFLL;
    }

    objc_storeWeak(&v14->_delegate, v12);
    v15->_interval = a4;
    v15->_delay = a5;
    v15->_maximumCount = a6;
    v15->__remaining = a6;
    objc_storeStrong(&v15->__viewfinderViewController, a7);
    objc_initWeak(&location, v15);
    v16 = [CAMPreciseTimer alloc];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __107__CAMViewfinderActionIntervalometer_initWithDelegate_interval_delay_maximumCount_viewfinderViewController___block_invoke;
    v21[3] = &unk_1E76F9A10;
    objc_copyWeak(&v22, &location);
    v17 = [(CAMPreciseTimer *)v16 initWithDelay:v21 interval:a5 handler:a4];
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
  v3 = [(CAMViewfinderActionIntervalometer *)self _viewfinderViewController];

  if (v3)
  {
    v5 = [(CAMViewfinderActionIntervalometer *)self _timer];
    [v5 start];
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
  v3 = [(CAMViewfinderActionIntervalometer *)self delegate];
  v4 = v3;
  if (v3)
  {
    if ([v3 shouldAttemptAction])
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
  v2 = [(CAMViewfinderActionIntervalometer *)self _timer];
  [v2 invalidate];
}

- (CAMViewfinderActionIntervalometerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end