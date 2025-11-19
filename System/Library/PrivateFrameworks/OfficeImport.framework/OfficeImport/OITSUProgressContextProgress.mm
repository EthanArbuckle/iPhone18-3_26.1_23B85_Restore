@interface OITSUProgressContextProgress
- (OITSUProgressContextProgress)initWithProgressContext:(id)a3;
- (double)value;
- (id)addProgressObserverWithValueInterval:(double)a3 queue:(id)a4 handler:(id)a5;
- (void)dealloc;
- (void)p_progressDidChange:(id)a3;
- (void)p_updateProgressContextObserver;
- (void)removeProgressObserver:(id)a3;
@end

@implementation OITSUProgressContextProgress

- (OITSUProgressContextProgress)initWithProgressContext:(id)a3
{
  v6.receiver = self;
  v6.super_class = OITSUProgressContextProgress;
  v4 = [(OITSUProgress *)&v6 init];
  if (v4)
  {
    v4->mProgressContext = a3;
    v4->mProgressContextObserverQueue = dispatch_queue_create("com.apple.iWork.TSUProgressContextProgress", 0);
  }

  return v4;
}

- (void)dealloc
{
  mProgressContextObserverQueue = self->mProgressContextObserverQueue;
  if (mProgressContextObserverQueue)
  {
    dispatch_release(mProgressContextObserverQueue);
  }

  v4.receiver = self;
  v4.super_class = OITSUProgressContextProgress;
  [(OITSUProgress *)&v4 dealloc];
}

- (double)value
{
  mProgressContext = self->mProgressContext;
  if (!mProgressContext)
  {
    return 0.0;
  }

  [(OITSUProgressContext *)mProgressContext overallProgress];
  return result;
}

- (id)addProgressObserverWithValueInterval:(double)a3 queue:(id)a4 handler:(id)a5
{
  v8.receiver = self;
  v8.super_class = OITSUProgressContextProgress;
  v6 = [(OITSUProgress *)&v8 addProgressObserverWithValueInterval:a4 queue:a5 handler:a3];
  [(OITSUProgressContextProgress *)self p_updateProgressContextObserver];
  return v6;
}

- (void)removeProgressObserver:(id)a3
{
  v4.receiver = self;
  v4.super_class = OITSUProgressContextProgress;
  [(OITSUProgress *)&v4 removeProgressObserver:a3];
  [(OITSUProgressContextProgress *)self p_updateProgressContextObserver];
}

- (void)p_updateProgressContextObserver
{
  mProgressContextObserverQueue = self->mProgressContextObserverQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__OITSUProgressContextProgress_p_updateProgressContextObserver__block_invoke;
  block[3] = &unk_2799C60B0;
  block[4] = self;
  dispatch_async(mProgressContextObserverQueue, block);
}

void __63__OITSUProgressContextProgress_p_updateProgressContextObserver__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) protected_hasProgressObservers];
  v4 = *(a1 + 32);
  if ((*(v4 + 48) & 1) != 0 || !v3)
  {
    if (!(v3 & 1 | ((*(v4 + 48) & 1) == 0)))
    {
      [*(v4 + 32) removeProgressObserver:?];
    }
  }

  else
  {
    [*(v4 + 32) addProgressObserver:v4 selector:sel_p_progressDidChange_];
    *(*(a1 + 32) + 48) = 1;
  }

  objc_autoreleasePoolPop(v2);
}

- (void)p_progressDidChange:(id)a3
{
  v4 = [objc_msgSend(a3 "userInfo")];
  if (v4)
  {
    [(OITSUProgress *)self setMessage:v4];
  }

  [(OITSUProgress *)self protected_progressDidChange];
}

@end