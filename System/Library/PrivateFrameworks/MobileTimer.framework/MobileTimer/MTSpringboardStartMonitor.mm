@interface MTSpringboardStartMonitor
+ (id)sharedInstance;
- (BOOL)_checkSpringBoardStarted;
- (MTSpringboardStartMonitor)init;
- (void)_startMonitoringWithQueue:(id)queue;
- (void)_stopMonitoring;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)didReceiveSpringboardStarted:(BOOL)started;
- (void)removeObserver:(id)observer;
@end

@implementation MTSpringboardStartMonitor

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[MTSpringboardStartMonitor sharedInstance];
  }

  v3 = sharedInstance__sharedInstance;

  return v3;
}

uint64_t __43__MTSpringboardStartMonitor_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(MTSpringboardStartMonitor);
  v1 = sharedInstance__sharedInstance;
  sharedInstance__sharedInstance = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (MTSpringboardStartMonitor)init
{
  v8.receiver = self;
  v8.super_class = MTSpringboardStartMonitor;
  v2 = [(MTSpringboardStartMonitor *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    observers = v2->_observers;
    v2->_observers = v3;

    v2->_notifyToken = -1;
    v5 = dispatch_queue_create("Serial MTSpringboardStartMonitor queue", 0);
    queue = v2->_queue;
    v2->_queue = v5;

    v2->_isSpringBoardStarted = [(MTSpringboardStartMonitor *)v2 _checkSpringBoardStarted];
  }

  return v2;
}

- (void)dealloc
{
  [(MTSpringboardStartMonitor *)self _stopMonitoring];
  v3.receiver = self;
  v3.super_class = MTSpringboardStartMonitor;
  [(MTSpringboardStartMonitor *)&v3 dealloc];
}

- (void)addObserver:(id)observer
{
  if (observer)
  {
    v4 = 0;
    [(MTObserverStore *)self->_observers addObserver:observer wasFirst:&v4];
    if (v4 == 1)
    {
      [(MTSpringboardStartMonitor *)self _startMonitoringWithQueue:self->_queue];
    }
  }
}

- (void)removeObserver:(id)observer
{
  if (observer)
  {
    v4 = 0;
    [(MTObserverStore *)self->_observers removeObserver:observer wasLast:&v4];
    if (v4 == 1)
    {
      [(MTSpringboardStartMonitor *)self _stopMonitoring];
    }
  }
}

- (void)_startMonitoringWithQueue:(id)queue
{
  queueCopy = queue;
  if (self->_notifyToken == -1)
  {
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __55__MTSpringboardStartMonitor__startMonitoringWithQueue___block_invoke;
    handler[3] = &unk_1E7B0DA10;
    handler[4] = self;
    notify_register_dispatch("com.apple.springboard.finishedstartup", &self->_notifyToken, queueCopy, handler);
    v5 = MTLogForCategory(1);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *v7 = 0;
    v6 = "Start monitoring : Springboard/Carousel start";
  }

  else
  {
    v5 = MTLogForCategory(1);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *v7 = 0;
    v6 = "Cannot start monitoring Springboard/Carousel start because it was already started";
  }

  _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
LABEL_7:

  if (!self->_isSpringBoardStarted)
  {
    self->_isSpringBoardStarted = [(MTSpringboardStartMonitor *)self _checkSpringBoardStarted];
  }
}

uint64_t __55__MTSpringboardStartMonitor__startMonitoringWithQueue___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 12) = [*(a1 + 32) _checkSpringBoardStarted];
  v2 = *(a1 + 32);
  v3 = v2[12];

  return [v2 didReceiveSpringboardStarted:v3];
}

- (void)_stopMonitoring
{
  notifyToken = self->_notifyToken;
  if (notifyToken != -1)
  {
    notify_cancel(notifyToken);
    self->_notifyToken = -1;
    v4 = MTLogForCategory(1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, "Stop monitoring : Springboard/Carousel start", v5, 2u);
    }
  }
}

- (void)didReceiveSpringboardStarted:(BOOL)started
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __58__MTSpringboardStartMonitor_didReceiveSpringboardStarted___block_invoke;
  v3[3] = &unk_1E7B0DA38;
  v3[4] = self;
  startedCopy = started;
  [(MTSpringboardStartMonitor *)self enumerateObservers:v3];
}

void __58__MTSpringboardStartMonitor_didReceiveSpringboardStarted___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 springboardStartMonitor:*(a1 + 32) didReceiveStarted:*(a1 + 40)];
  }
}

- (BOOL)_checkSpringBoardStarted
{
  v9 = *MEMORY[0x1E69E9840];
  if (MTIsHorseman())
  {
    LOBYTE(v2) = 1;
  }

  else
  {
    out_token = -1;
    notify_register_check("com.apple.springboard.finishedstartup", &out_token);
    if (out_token == -1)
    {
      v2 = 0;
    }

    else
    {
      *state64 = 0;
      notify_get_state(out_token, state64);
      v2 = *state64 != 0;
    }

    v3 = MTLogForCategory(1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = @"NO";
      if (v2)
      {
        v4 = @"YES";
      }

      *state64 = 138543362;
      *&state64[4] = v4;
      _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "Springboard/Carousel started = %{public}@", state64, 0xCu);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return v2;
}

@end