@interface NUAnimationQueue
- (NUAnimationQueue)init;
- (void)addAnimation:(id)a3;
- (void)cancel;
- (void)runUntilEmpty;
@end

@implementation NUAnimationQueue

- (NUAnimationQueue)init
{
  v6.receiver = self;
  v6.super_class = NUAnimationQueue;
  v2 = [(NUAnimationQueue *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    queue = v2->_queue;
    v2->_queue = v3;

    v2->_running = 0;
  }

  return v2;
}

- (void)addAnimation:(id)a3
{
  v4 = MEMORY[0x277CCACC8];
  v5 = a3;
  [v4 isMainThread];
  v7 = [[NUAnimationRunner alloc] initWithRunBlock:v5];

  v6 = [(NUAnimationQueue *)self queue];
  [v6 addObject:v7];

  if (![(NUAnimationQueue *)self isRunning])
  {
    [(NUAnimationQueue *)self runUntilEmpty];
  }
}

- (void)cancel
{
  [MEMORY[0x277CCACC8] isMainThread];
  v3 = [(NUAnimationQueue *)self queue];
  [v3 removeAllObjects];
}

- (void)runUntilEmpty
{
  [MEMORY[0x277CCACC8] isMainThread];
  v3 = [(NUAnimationQueue *)self queue];
  v4 = [v3 count];

  if (v4)
  {
    [(NUAnimationQueue *)self setRunning:1];
    v5 = [(NUAnimationQueue *)self queue];
    v6 = [v5 fc_popFirstObject];

    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __33__NUAnimationQueue_runUntilEmpty__block_invoke;
    v7[3] = &unk_2799A3CD0;
    objc_copyWeak(&v8, &location);
    [v6 runWithFinishBlock:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  else
  {

    [(NUAnimationQueue *)self setRunning:0];
  }
}

void __33__NUAnimationQueue_runUntilEmpty__block_invoke(uint64_t a1)
{
  [MEMORY[0x277CCACC8] isMainThread];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained runUntilEmpty];
    WeakRetained = v3;
  }
}

@end