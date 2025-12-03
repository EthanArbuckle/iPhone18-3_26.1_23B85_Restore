@interface OITSUProgressContextProgress
- (OITSUProgressContextProgress)initWithProgressContext:(id)context;
- (double)value;
- (id)addProgressObserverWithValueInterval:(double)interval queue:(id)queue handler:(id)handler;
- (void)dealloc;
- (void)p_progressDidChange:(id)change;
- (void)p_updateProgressContextObserver;
- (void)removeProgressObserver:(id)observer;
@end

@implementation OITSUProgressContextProgress

- (OITSUProgressContextProgress)initWithProgressContext:(id)context
{
  v6.receiver = self;
  v6.super_class = OITSUProgressContextProgress;
  v4 = [(OITSUProgress *)&v6 init];
  if (v4)
  {
    v4->mProgressContext = context;
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

- (id)addProgressObserverWithValueInterval:(double)interval queue:(id)queue handler:(id)handler
{
  v8.receiver = self;
  v8.super_class = OITSUProgressContextProgress;
  v6 = [(OITSUProgress *)&v8 addProgressObserverWithValueInterval:queue queue:handler handler:interval];
  [(OITSUProgressContextProgress *)self p_updateProgressContextObserver];
  return v6;
}

- (void)removeProgressObserver:(id)observer
{
  v4.receiver = self;
  v4.super_class = OITSUProgressContextProgress;
  [(OITSUProgress *)&v4 removeProgressObserver:observer];
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

- (void)p_progressDidChange:(id)change
{
  v4 = [objc_msgSend(change "userInfo")];
  if (v4)
  {
    [(OITSUProgress *)self setMessage:v4];
  }

  [(OITSUProgress *)self protected_progressDidChange];
}

@end