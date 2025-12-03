@interface CRKDeadmanScreenshotServiceProxy
- (CRKDeadmanScreenshotServiceProxy)initWithTimeout:(double)timeout;
- (CRKScreenshotServiceInterface)underlyingProxy;
- (void)dealloc;
- (void)fetchScreenshotDataWithMaximumSizeInPixels:(CGSize)pixels completion:(id)completion;
- (void)startTimer;
- (void)stopTimer;
@end

@implementation CRKDeadmanScreenshotServiceProxy

- (void)dealloc
{
  [(CRKDeadmanScreenshotServiceProxy *)self stopTimer];
  v3.receiver = self;
  v3.super_class = CRKDeadmanScreenshotServiceProxy;
  [(CRKDeadmanScreenshotServiceProxy *)&v3 dealloc];
}

- (CRKDeadmanScreenshotServiceProxy)initWithTimeout:(double)timeout
{
  v5.receiver = self;
  v5.super_class = CRKDeadmanScreenshotServiceProxy;
  result = [(CRKDeadmanScreenshotServiceProxy *)&v5 init];
  if (result)
  {
    result->_timeout = timeout;
  }

  return result;
}

- (void)fetchScreenshotDataWithMaximumSizeInPixels:(CGSize)pixels completion:(id)completion
{
  height = pixels.height;
  width = pixels.width;
  completionCopy = completion;
  [(CRKDeadmanScreenshotServiceProxy *)self setCountOfInFlightRequests:[(CRKDeadmanScreenshotServiceProxy *)self countOfInFlightRequests]+ 1];
  [(CRKDeadmanScreenshotServiceProxy *)self stopTimer];
  underlyingProxy = [(CRKDeadmanScreenshotServiceProxy *)self underlyingProxy];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __90__CRKDeadmanScreenshotServiceProxy_fetchScreenshotDataWithMaximumSizeInPixels_completion___block_invoke;
  v10[3] = &unk_278DC2F70;
  v10[4] = self;
  v11 = completionCopy;
  v9 = completionCopy;
  [underlyingProxy fetchScreenshotDataWithMaximumSizeInPixels:v10 completion:{width, height}];
}

uint64_t __90__CRKDeadmanScreenshotServiceProxy_fetchScreenshotDataWithMaximumSizeInPixels_completion___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) setCountOfInFlightRequests:{objc_msgSend(*(a1 + 32), "countOfInFlightRequests") - 1}];
  result = [*(a1 + 32) countOfInFlightRequests];
  if (!result)
  {
    v3 = *(a1 + 32);

    return [v3 startTimer];
  }

  return result;
}

- (void)startTimer
{
  timer = [(CRKDeadmanScreenshotServiceProxy *)self timer];

  if (!timer)
  {
    v4 = _CRKLogGeneral_14();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_243550000, v4, OS_LOG_TYPE_DEFAULT, "Starting ScreenshotService deadman timer", buf, 2u);
    }

    objc_initWeak(buf, self);
    v5 = MEMORY[0x277CBEBB8];
    [(CRKDeadmanScreenshotServiceProxy *)self timeout];
    v7 = v6;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __46__CRKDeadmanScreenshotServiceProxy_startTimer__block_invoke;
    v9[3] = &unk_278DC2F98;
    objc_copyWeak(&v10, buf);
    v8 = [v5 scheduledTimerWithTimeInterval:0 repeats:v9 block:v7];
    [(CRKDeadmanScreenshotServiceProxy *)self setTimer:v8];

    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);
  }
}

void __46__CRKDeadmanScreenshotServiceProxy_startTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = _CRKLogGeneral_14();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_243550000, v2, OS_LOG_TYPE_DEFAULT, "ScreenshotService deadman timer fired. Tearing down connection", v3, 2u);
    }

    [WeakRetained setUnderlyingProxy:0];
    [WeakRetained setTimer:0];
  }
}

- (void)stopTimer
{
  timer = [(CRKDeadmanScreenshotServiceProxy *)self timer];

  if (timer)
  {
    v4 = _CRKLogGeneral_14();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_243550000, v4, OS_LOG_TYPE_DEFAULT, "Invalidating ScreenshotService deadman timer", v6, 2u);
    }

    timer2 = [(CRKDeadmanScreenshotServiceProxy *)self timer];
    [timer2 invalidate];

    [(CRKDeadmanScreenshotServiceProxy *)self setTimer:0];
  }
}

- (CRKScreenshotServiceInterface)underlyingProxy
{
  underlyingProxy = self->_underlyingProxy;
  if (!underlyingProxy)
  {
    v4 = objc_opt_new();
    v5 = self->_underlyingProxy;
    self->_underlyingProxy = v4;

    underlyingProxy = self->_underlyingProxy;
  }

  return underlyingProxy;
}

@end