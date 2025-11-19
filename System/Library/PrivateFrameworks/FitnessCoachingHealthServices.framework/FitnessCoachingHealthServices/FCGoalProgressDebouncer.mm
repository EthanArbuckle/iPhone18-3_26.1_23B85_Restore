@interface FCGoalProgressDebouncer
- (FCGoalProgressDebouncer)initWithServiceQueue:(id)a3;
- (FCGoalProgressDebouncerDelegate)delegate;
- (void)_handleTimerFired;
- (void)debounce;
@end

@implementation FCGoalProgressDebouncer

- (void)debounce
{
  if (!self->_timer)
  {
    objc_initWeak(location, self);
    v3 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_serviceQueue);
    timer = self->_timer;
    self->_timer = v3;

    v5 = self->_timer;
    v6 = dispatch_time(0, 2147483647000000000);
    dispatch_source_set_timer(v5, v6, 0x1DCD64FFC4653600uLL, 0);
    v7 = self->_timer;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __35__FCGoalProgressDebouncer_debounce__block_invoke;
    handler[3] = &unk_27900B388;
    objc_copyWeak(&v11, location);
    dispatch_source_set_event_handler(v7, handler);
    dispatch_resume(self->_timer);
    objc_destroyWeak(&v11);
    objc_destroyWeak(location);
  }

  v8 = dispatch_time(0, 10000000000);
  _HKInitializeLogging();
  v9 = *MEMORY[0x277CCC290];
  if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(location[0]) = 0;
    _os_log_impl(&dword_24B55B000, v9, OS_LOG_TYPE_DEFAULT, "Goal progress debounce pushed", location, 2u);
  }

  dispatch_source_set_timer(self->_timer, v8, 0x1DCD64FFC4653600uLL, 0);
}

- (FCGoalProgressDebouncer)initWithServiceQueue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FCGoalProgressDebouncer;
  v6 = [(FCGoalProgressDebouncer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serviceQueue, a3);
  }

  return v7;
}

void __35__FCGoalProgressDebouncer_debounce__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleTimerFired];
}

- (void)_handleTimerFired
{
  timer = self->_timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
    v4 = self->_timer;
    self->_timer = 0;
  }

  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC290];
  if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_24B55B000, v5, OS_LOG_TYPE_DEFAULT, "Goal progress debounce finished", v7, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained debouncerDidFinishDebounce:self];
}

- (FCGoalProgressDebouncerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end