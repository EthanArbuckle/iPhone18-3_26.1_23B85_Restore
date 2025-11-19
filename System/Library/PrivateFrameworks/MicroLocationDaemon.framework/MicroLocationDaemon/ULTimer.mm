@interface ULTimer
- (BOOL)isTimerSourceNil;
- (ULTimer)init;
- (ULTimer)initWithInterval:(double)a3 repeats:(BOOL)a4 queue:(id)a5 block:(id)a6;
- (void)dealloc;
- (void)invalidate;
@end

@implementation ULTimer

- (void)invalidate
{
  v3 = [(ULTimer *)self timerSource];

  if (v3)
  {
    v4 = [(ULTimer *)self timerSource];
    dispatch_source_cancel(v4);

    [(ULTimer *)self setTimerSource:0];
  }
}

- (void)dealloc
{
  [(ULTimer *)self invalidate];
  v3.receiver = self;
  v3.super_class = ULTimer;
  [(ULTimer *)&v3 dealloc];
}

- (ULTimer)init
{
  [MEMORY[0x277CCACA8] stringWithFormat:@"%@ cannot be initialized directly", objc_opt_class()];
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
  objc_exception_throw(v2);
}

- (ULTimer)initWithInterval:(double)a3 repeats:(BOOL)a4 queue:(id)a5 block:(id)a6
{
  v7 = a4;
  v10 = a5;
  v11 = a6;
  v29.receiver = self;
  v29.super_class = ULTimer;
  v12 = [(ULTimer *)&v29 init];
  if (v12)
  {
    v13 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v10);
    [(ULTimer *)v12 setTimerSource:v13];

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

    v17 = [(ULTimer *)v12 timerSource];
    dispatch_source_set_timer(v17, v15, v16, 0x989680uLL);

    objc_initWeak(&location, v12);
    v18 = [(ULTimer *)v12 timerSource];
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __54__ULTimer_init__initWithInterval_repeats_queue_block___block_invoke;
    v24 = &unk_2798D56A8;
    v25 = v11;
    v27 = v7;
    objc_copyWeak(&v26, &location);
    dispatch_source_set_event_handler(v18, &v21);

    v19 = [(ULTimer *)v12 timerSource:v21];
    dispatch_activate(v19);

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  return v12;
}

void __54__ULTimer_init__initWithInterval_repeats_queue_block___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  if ((*(a1 + 48) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained invalidate];
  }
}

- (BOOL)isTimerSourceNil
{
  v2 = [(ULTimer *)self timerSource];
  v3 = v2 == 0;

  return v3;
}

@end