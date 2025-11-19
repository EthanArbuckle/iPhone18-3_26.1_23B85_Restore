@interface MapsSuggestionsGCDTimer
- (MapsSuggestionsGCDTimer)initWithName:(id)a3 queue:(id)a4 block:(id)a5;
- (MapsSuggestionsGCDTimer)initWithName:(id)a3 queue:(id)a4 timerReturningBlock:(id)a5;
- (id).cxx_construct;
- (void)dealloc;
- (void)scheduleWithInterval:(Duration)a3 leeway:(Duration)a4;
- (void)scheduleWithInterval:(Duration)a3 repeatAfter:(Duration)a4 leeway:(Duration)a5;
- (void)scheduleWithTimeInterval:(double)a3 leeway:(double)a4;
- (void)scheduleWithTimeInterval:(double)a3 repeatAfter:(double)a4 leeway:(double)a5;
@end

@implementation MapsSuggestionsGCDTimer

- (id).cxx_construct
{
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 8) = 0;
  return self;
}

- (void)dealloc
{
  MSg::Timer::unschedule(&self->_timer);
  v3.receiver = self;
  v3.super_class = MapsSuggestionsGCDTimer;
  [(MapsSuggestionsGCDTimer *)&v3 dealloc];
}

- (MapsSuggestionsGCDTimer)initWithName:(id)a3 queue:(id)a4 block:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = MapsSuggestionsGCDTimer;
  v11 = [(MapsSuggestionsBaseTrigger *)&v20 initWithName:@"MapsSuggestionsGCDTimer"];
  if (v11)
  {
    objc_initWeak(&location, v11);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __52__MapsSuggestionsGCDTimer_initWithName_queue_block___block_invoke;
    aBlock[3] = &unk_1E81F5190;
    objc_copyWeak(&v18, &location);
    v17 = v10;
    v12 = _Block_copy(aBlock);
    MSg::Queue::Queue(v14, v9);
    MSg::Timer::Timer(v15, v8, v14, v12);
    MSg::Timer::operator=(&v11->_timer, v15);
    MSg::Timer::~Timer(v15);

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v11;
}

void __52__MapsSuggestionsGCDTimer_initWithName_queue_block___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained triggerMyObservers];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "MapsSuggestionsTimer.mm";
      v7 = 1026;
      v8 = 33;
      v9 = 2082;
      v10 = "[MapsSuggestionsGCDTimer initWithName:queue:block:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
    }
  }
}

- (MapsSuggestionsGCDTimer)initWithName:(id)a3 queue:(id)a4 timerReturningBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = MapsSuggestionsGCDTimer;
  v11 = [(MapsSuggestionsBaseTrigger *)&v20 initWithName:@"MapsSuggestionsGCDTimer"];
  if (v11)
  {
    objc_initWeak(&location, v11);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __66__MapsSuggestionsGCDTimer_initWithName_queue_timerReturningBlock___block_invoke;
    aBlock[3] = &unk_1E81F5190;
    objc_copyWeak(&v18, &location);
    v17 = v10;
    v12 = _Block_copy(aBlock);
    MSg::Queue::Queue(v14, v9);
    MSg::Timer::Timer(v15, v8, v14, v12);
    MSg::Timer::operator=(&v11->_timer, v15);
    MSg::Timer::~Timer(v15);

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v11;
}

void __66__MapsSuggestionsGCDTimer_initWithName_queue_timerReturningBlock___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained triggerMyObservers];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "MapsSuggestionsTimer.mm";
      v7 = 1026;
      v8 = 51;
      v9 = 2082;
      v10 = "[MapsSuggestionsGCDTimer initWithName:queue:timerReturningBlock:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
    }
  }
}

- (void)scheduleWithTimeInterval:(double)a3 repeatAfter:(double)a4 leeway:(double)a5
{
  *v7 = (a3 * 1000000000.0);
  *v5 = (a4 * 1000000000.0);
  *v6 = (a5 * 1000000000.0);
  MSg::Timer::schedule(&self->_timer, v7, v6, v5);
}

- (void)scheduleWithTimeInterval:(double)a3 leeway:(double)a4
{
  *v6 = (a3 * 1000000000.0);
  *v4 = -1;
  *v5 = (a4 * 1000000000.0);
  MSg::Timer::schedule(&self->_timer, v6, v5, v4);
}

- (void)scheduleWithInterval:(Duration)a3 repeatAfter:(Duration)a4 leeway:(Duration)a5
{
  *v7 = *&a3;
  *v5 = *&a5;
  *v6 = *&a4;
  MSg::Timer::schedule(&self->_timer, v7, v5, v6);
}

- (void)scheduleWithInterval:(Duration)a3 leeway:(Duration)a4
{
  *v6 = *&a3;
  *v4 = -1;
  *v5 = *&a4;
  MSg::Timer::schedule(&self->_timer, v6, v5, v4);
}

@end