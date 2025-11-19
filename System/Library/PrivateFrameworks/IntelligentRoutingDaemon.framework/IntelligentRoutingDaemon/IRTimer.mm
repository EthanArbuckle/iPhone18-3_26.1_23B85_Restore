@interface IRTimer
- (IRTimer)initWithInterval:(double)a3 repeats:(BOOL)a4 queue:(id)a5 block:(id)a6;
- (void)dealloc;
- (void)invalidate;
@end

@implementation IRTimer

- (IRTimer)initWithInterval:(double)a3 repeats:(BOOL)a4 queue:(id)a5 block:(id)a6
{
  v7 = a4;
  v10 = a5;
  v11 = a6;
  v29.receiver = self;
  v29.super_class = IRTimer;
  v12 = [(IRTimer *)&v29 init];
  if (v12)
  {
    v13 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v10);
    [(IRTimer *)v12 setTimerSource:v13];

    v14 = a3 * 1000000000.0;
    v15 = dispatch_time(0, v14);
    if (v7)
    {
      v16 = v14;
    }

    else
    {
      v16 = -1;
    }

    v17 = [(IRTimer *)v12 timerSource];
    dispatch_source_set_timer(v17, v15, v16, 0x989680uLL);

    objc_initWeak(&location, v12);
    v18 = [(IRTimer *)v12 timerSource];
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __48__IRTimer_initWithInterval_repeats_queue_block___block_invoke;
    v24 = &unk_2797E22D0;
    v25 = v11;
    v27 = v7;
    objc_copyWeak(&v26, &location);
    dispatch_source_set_event_handler(v18, &v21);

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
  v3 = [(IRTimer *)self timerSource];

  if (v3)
  {
    v4 = [(IRTimer *)self timerSource];
    dispatch_source_cancel(v4);

    [(IRTimer *)self setTimerSource:0];
  }
}

@end