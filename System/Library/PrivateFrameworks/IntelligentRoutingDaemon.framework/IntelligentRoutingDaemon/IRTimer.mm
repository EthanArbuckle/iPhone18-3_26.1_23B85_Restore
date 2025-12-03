@interface IRTimer
- (IRTimer)initWithInterval:(double)interval repeats:(BOOL)repeats queue:(id)queue block:(id)block;
- (void)dealloc;
- (void)invalidate;
@end

@implementation IRTimer

- (IRTimer)initWithInterval:(double)interval repeats:(BOOL)repeats queue:(id)queue block:(id)block
{
  repeatsCopy = repeats;
  queueCopy = queue;
  blockCopy = block;
  v29.receiver = self;
  v29.super_class = IRTimer;
  v12 = [(IRTimer *)&v29 init];
  if (v12)
  {
    v13 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, queueCopy);
    [(IRTimer *)v12 setTimerSource:v13];

    v14 = interval * 1000000000.0;
    v15 = dispatch_time(0, v14);
    if (repeatsCopy)
    {
      v16 = v14;
    }

    else
    {
      v16 = -1;
    }

    timerSource = [(IRTimer *)v12 timerSource];
    dispatch_source_set_timer(timerSource, v15, v16, 0x989680uLL);

    objc_initWeak(&location, v12);
    timerSource2 = [(IRTimer *)v12 timerSource];
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __48__IRTimer_initWithInterval_repeats_queue_block___block_invoke;
    v24 = &unk_2797E22D0;
    v25 = blockCopy;
    v27 = repeatsCopy;
    objc_copyWeak(&v26, &location);
    dispatch_source_set_event_handler(timerSource2, &v21);

    v19 = [(IRTimer *)v12 timerSource:v21];
    dispatch_activate(v19);

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  return v12;
}

void __48__IRTimer_initWithInterval_repeats_queue_block___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  if ((*(a1 + 48) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained invalidate];
  }
}

- (void)dealloc
{
  [(IRTimer *)self invalidate];
  v3.receiver = self;
  v3.super_class = IRTimer;
  [(IRTimer *)&v3 dealloc];
}

- (void)invalidate
{
  timerSource = [(IRTimer *)self timerSource];

  if (timerSource)
  {
    timerSource2 = [(IRTimer *)self timerSource];
    dispatch_source_cancel(timerSource2);

    [(IRTimer *)self setTimerSource:0];
  }
}

@end