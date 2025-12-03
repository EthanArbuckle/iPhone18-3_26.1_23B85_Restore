@interface CAMCaptureRequestIntervalometer
- (CAMCaptureRequestIntervalometer)initWithDelegate:(id)delegate interval:(double)interval delay:(double)delay maximumCount:(int64_t)count;
- (CAMCaptureRequestIntervalometerDelegate)delegate;
- (void)_generateRequestForDelegate;
- (void)startGeneratingRequests;
- (void)stopGeneratingRequests;
@end

@implementation CAMCaptureRequestIntervalometer

- (CAMCaptureRequestIntervalometer)initWithDelegate:(id)delegate interval:(double)interval delay:(double)delay maximumCount:(int64_t)count
{
  delegateCopy = delegate;
  v21.receiver = self;
  v21.super_class = CAMCaptureRequestIntervalometer;
  v11 = [(CAMCaptureRequestIntervalometer *)&v21 init];
  v12 = v11;
  if (v11)
  {
    if (!count)
    {
      count = 0x7FFFFFFFFFFFFFFFLL;
    }

    objc_storeWeak(&v11->_delegate, delegateCopy);
    v12->_interval = interval;
    v12->_delay = delay;
    v12->_maximumCount = count;
    v12->_remaining = count;
    objc_initWeak(&location, v12);
    v13 = [CAMPreciseTimer alloc];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __80__CAMCaptureRequestIntervalometer_initWithDelegate_interval_delay_maximumCount___block_invoke;
    v18[3] = &unk_1E76F9A10;
    objc_copyWeak(&v19, &location);
    v14 = [(CAMPreciseTimer *)v13 initWithDelay:v18 interval:delay handler:interval];
    timer = v12->__timer;
    v12->__timer = v14;

    v16 = v12;
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v12;
}

void __80__CAMCaptureRequestIntervalometer_initWithDelegate_interval_delay_maximumCount___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _generateRequestForDelegate];
}

- (void)_generateRequestForDelegate
{
  prototypeRequest = [(CAMCaptureRequestIntervalometer *)self prototypeRequest];
  distinctPersistenceCopy = [prototypeRequest distinctPersistenceCopy];
  delegate = [(CAMCaptureRequestIntervalometer *)self delegate];
  v5 = delegate;
  if (delegate)
  {
    if ([delegate intervalometer:self didGenerateCaptureRequest:distinctPersistenceCopy])
    {
      v6 = [(CAMCaptureRequestIntervalometer *)self remaining]- 1;
      [(CAMCaptureRequestIntervalometer *)self setRemaining:v6];
      if (!v6)
      {
        [(CAMCaptureRequestIntervalometer *)self stopGeneratingRequests];
        if (objc_opt_respondsToSelector())
        {
          [v5 intervalometer:self didReachMaximumCountWithRequest:distinctPersistenceCopy];
        }
      }
    }
  }

  else
  {
    [(CAMCaptureRequestIntervalometer *)self stopGeneratingRequests];
  }
}

- (void)startGeneratingRequests
{
  prototypeRequest = [(CAMCaptureRequestIntervalometer *)self prototypeRequest];
  if (prototypeRequest)
  {
    _timer = [(CAMCaptureRequestIntervalometer *)self _timer];
    [_timer start];
  }

  else
  {
    _timer = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(_timer, OS_LOG_TYPE_ERROR))
    {
      [(CAMCaptureRequestIntervalometer *)_timer startGeneratingRequests];
    }
  }
}

- (void)stopGeneratingRequests
{
  _timer = [(CAMCaptureRequestIntervalometer *)self _timer];
  [_timer invalidate];
}

- (CAMCaptureRequestIntervalometerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end