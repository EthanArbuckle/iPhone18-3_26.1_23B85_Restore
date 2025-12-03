@interface CAMPreciseTimer
- (CAMPreciseTimer)initWithDelay:(double)delay interval:(double)interval handler:(id)handler;
- (void)invalidate;
- (void)start;
@end

@implementation CAMPreciseTimer

- (void)start
{
  if (self->__currentTimer)
  {
    [(CAMPreciseTimer *)self invalidate];
  }

  [(CAMPreciseTimer *)self _setFired:0];
  [(CAMPreciseTimer *)self delay];
  v4 = v3;
  [(CAMPreciseTimer *)self interval];
  v6 = v5;
  _handler = [(CAMPreciseTimer *)self _handler];
  v8 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
  v9 = dispatch_time(0, (v4 * 1000000000.0));
  dispatch_source_set_timer(v8, v9, (v6 * 1000000000.0), 0);
  objc_initWeak(&location, self);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __24__CAMPreciseTimer_start__block_invoke;
  handler[3] = &unk_1E76FA3A0;
  objc_copyWeak(&v13, &location);
  v10 = _handler;
  v12 = v10;
  dispatch_source_set_event_handler(v8, handler);
  dispatch_resume(v8);
  [(CAMPreciseTimer *)self _setCurrentTimer:v8];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)invalidate
{
  _currentTimer = [(CAMPreciseTimer *)self _currentTimer];
  if (_currentTimer)
  {
    v4 = _currentTimer;
    dispatch_source_cancel(_currentTimer);
    [(CAMPreciseTimer *)self _setCurrentTimer:0];
    _currentTimer = v4;
  }
}

- (CAMPreciseTimer)initWithDelay:(double)delay interval:(double)interval handler:(id)handler
{
  handlerCopy = handler;
  v15.receiver = self;
  v15.super_class = CAMPreciseTimer;
  v9 = [(CAMPreciseTimer *)&v15 init];
  v10 = v9;
  if (v9)
  {
    v9->_delay = delay;
    v9->_interval = interval;
    v11 = [handlerCopy copy];
    handler = v10->__handler;
    v10->__handler = v11;

    v13 = v10;
  }

  return v10;
}

void __24__CAMPreciseTimer_start__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _setFired:1];
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))(v2, WeakRetained);
  }
}

@end