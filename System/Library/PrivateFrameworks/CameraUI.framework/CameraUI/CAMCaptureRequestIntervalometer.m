@interface CAMCaptureRequestIntervalometer
- (CAMCaptureRequestIntervalometer)initWithDelegate:(id)a3 interval:(double)a4 delay:(double)a5 maximumCount:(int64_t)a6;
- (CAMCaptureRequestIntervalometerDelegate)delegate;
- (void)_generateRequestForDelegate;
- (void)startGeneratingRequests;
- (void)stopGeneratingRequests;
@end

@implementation CAMCaptureRequestIntervalometer

- (CAMCaptureRequestIntervalometer)initWithDelegate:(id)a3 interval:(double)a4 delay:(double)a5 maximumCount:(int64_t)a6
{
  v10 = a3;
  v21.receiver = self;
  v21.super_class = CAMCaptureRequestIntervalometer;
  v11 = [(CAMCaptureRequestIntervalometer *)&v21 init];
  v12 = v11;
  if (v11)
  {
    if (!a6)
    {
      a6 = 0x7FFFFFFFFFFFFFFFLL;
    }

    objc_storeWeak(&v11->_delegate, v10);
    v12->_interval = a4;
    v12->_delay = a5;
    v12->_maximumCount = a6;
    v12->_remaining = a6;
    objc_initWeak(&location, v12);
    v13 = [CAMPreciseTimer alloc];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __80__CAMCaptureRequestIntervalometer_initWithDelegate_interval_delay_maximumCount___block_invoke;
    v18[3] = &unk_1E76F9A10;
    objc_copyWeak(&v19, &location);
    v14 = [(CAMPreciseTimer *)v13 initWithDelay:v18 interval:a5 handler:a4];
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
  v7 = [(CAMCaptureRequestIntervalometer *)self prototypeRequest];
  v3 = [v7 distinctPersistenceCopy];
  v4 = [(CAMCaptureRequestIntervalometer *)self delegate];
  v5 = v4;
  if (v4)
  {
    if ([v4 intervalometer:self didGenerateCaptureRequest:v3])
    {
      v6 = [(CAMCaptureRequestIntervalometer *)self remaining]- 1;
      [(CAMCaptureRequestIntervalometer *)self setRemaining:v6];
      if (!v6)
      {
        [(CAMCaptureRequestIntervalometer *)self stopGeneratingRequests];
        if (objc_opt_respondsToSelector())
        {
          [v5 intervalometer:self didReachMaximumCountWithRequest:v3];
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
  v3 = [(CAMCaptureRequestIntervalometer *)self prototypeRequest];
  if (v3)
  {
    v4 = [(CAMCaptureRequestIntervalometer *)self _timer];
    [v4 start];
  }

  else
  {
    v4 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(CAMCaptureRequestIntervalometer *)v4 startGeneratingRequests];
    }
  }
}

- (void)stopGeneratingRequests
{
  v2 = [(CAMCaptureRequestIntervalometer *)self _timer];
  [v2 invalidate];
}

- (CAMCaptureRequestIntervalometerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end