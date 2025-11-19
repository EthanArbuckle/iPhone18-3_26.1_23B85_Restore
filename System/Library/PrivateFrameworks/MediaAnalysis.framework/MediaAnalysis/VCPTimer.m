@interface VCPTimer
+ (id)timerWithInterval:(unint64_t)a3 unit:(unint64_t)a4 oneShot:(BOOL)a5 andBlock:(id)a6;
+ (id)timerWithIntervalSeconds:(unint64_t)a3 isOneShot:(BOOL)a4 andBlock:(id)a5;
- (VCPTimer)initWithIntervalNanoseconds:(unint64_t)a3 isOneShot:(BOOL)a4 andBlock:(id)a5;
- (void)dealloc;
- (void)destroy;
- (void)handleTimerEvent;
@end

@implementation VCPTimer

- (VCPTimer)initWithIntervalNanoseconds:(unint64_t)a3 isOneShot:(BOOL)a4 andBlock:(id)a5
{
  v8 = a5;
  v24.receiver = self;
  v24.super_class = VCPTimer;
  v9 = [(VCPTimer *)&v24 init];
  if (v9)
  {
    v10 = dispatch_queue_create("com.apple.mediaanalysisd.timer", 0);
    v11 = *(v9 + 1);
    *(v9 + 1) = v10;

    v12 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v9 + 1));
    v13 = *(v9 + 2);
    *(v9 + 2) = v12;

    atomic_store(1u, v9 + 24);
    *(v9 + 25) = a4;
    v14 = _Block_copy(v8);
    v15 = *(v9 + 4);
    *(v9 + 4) = v14;

    v16 = *(v9 + 2);
    v17 = dispatch_time(0, a3);
    if (*(v9 + 25))
    {
      v18 = -1;
    }

    else
    {
      v18 = a3;
    }

    dispatch_source_set_timer(v16, v17, v18, 0xF4240uLL);
    objc_initWeak(&location, v9);
    v19 = *(v9 + 2);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __59__VCPTimer_initWithIntervalNanoseconds_isOneShot_andBlock___block_invoke;
    v21[3] = &unk_1E834D098;
    objc_copyWeak(&v22, &location);
    dispatch_source_set_event_handler(v19, v21);
    dispatch_resume(*(v9 + 2));
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  return v9;
}

void __59__VCPTimer_initWithIntervalNanoseconds_isOneShot_andBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained handleTimerEvent];
  }
}

+ (id)timerWithInterval:(unint64_t)a3 unit:(unint64_t)a4 oneShot:(BOOL)a5 andBlock:(id)a6
{
  v6 = a5;
  v9 = a6;
  if (a4 <= 3)
  {
    v10 = [objc_alloc(objc_opt_class()) initWithIntervalNanoseconds:+[VCPTimer timerWithInterval:unit:oneShot:andBlock:]::kTimeScaler[a4] * a3 isOneShot:v6 andBlock:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)timerWithIntervalSeconds:(unint64_t)a3 isOneShot:(BOOL)a4 andBlock:(id)a5
{
  v5 = a4;
  v7 = a5;
  v8 = [objc_opt_class() timerWithInterval:a3 unit:3 oneShot:v5 andBlock:v7];

  return v8;
}

- (void)dealloc
{
  [(VCPTimer *)self destroy];
  v3.receiver = self;
  v3.super_class = VCPTimer;
  [(VCPTimer *)&v3 dealloc];
}

- (void)handleTimerEvent
{
  if (self->_isOneShot)
  {
    if ((atomic_exchange(&self->_active, 0) & 1) == 0)
    {
      return;
    }

LABEL_5:
    (*(self->_block + 2))();
    return;
  }

  v2 = atomic_load(&self->_active);
  if (v2)
  {
    goto LABEL_5;
  }
}

- (void)destroy
{
  if (atomic_exchange(&self->_active, 0))
  {
    dispatch_source_cancel(self->_source);
  }
}

@end