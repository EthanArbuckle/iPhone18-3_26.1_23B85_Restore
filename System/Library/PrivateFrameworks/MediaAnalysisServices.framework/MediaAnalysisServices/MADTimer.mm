@interface MADTimer
+ (id)timerWithInterval:(unint64_t)interval unit:(unint64_t)unit oneShot:(BOOL)shot andBlock:(id)block;
+ (id)timerWithIntervalSeconds:(unint64_t)seconds isOneShot:(BOOL)shot andBlock:(id)block;
- (MADTimer)initWithIntervalNanoseconds:(unint64_t)nanoseconds isOneShot:(BOOL)shot andBlock:(id)block;
- (void)dealloc;
- (void)destroy;
- (void)handleTimerEvent;
@end

@implementation MADTimer

- (MADTimer)initWithIntervalNanoseconds:(unint64_t)nanoseconds isOneShot:(BOOL)shot andBlock:(id)block
{
  blockCopy = block;
  v24.receiver = self;
  v24.super_class = MADTimer;
  v9 = [(MADTimer *)&v24 init];
  if (v9)
  {
    v10 = dispatch_queue_create("com.apple.mediaanalysisservices.timer", 0);
    v11 = *(v9 + 1);
    *(v9 + 1) = v10;

    v12 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v9 + 1));
    v13 = *(v9 + 2);
    *(v9 + 2) = v12;

    atomic_store(1u, v9 + 24);
    *(v9 + 25) = shot;
    v14 = MEMORY[0x1CCA8ECA0](blockCopy);
    v15 = *(v9 + 4);
    *(v9 + 4) = v14;

    v16 = *(v9 + 2);
    v17 = dispatch_time(0, nanoseconds);
    if (*(v9 + 25))
    {
      nanosecondsCopy = -1;
    }

    else
    {
      nanosecondsCopy = nanoseconds;
    }

    dispatch_source_set_timer(v16, v17, nanosecondsCopy, 0xF4240uLL);
    objc_initWeak(&location, v9);
    v19 = *(v9 + 2);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __59__MADTimer_initWithIntervalNanoseconds_isOneShot_andBlock___block_invoke;
    v21[3] = &unk_1E8342E88;
    objc_copyWeak(&v22, &location);
    dispatch_source_set_event_handler(v19, v21);
    dispatch_resume(*(v9 + 2));
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  return v9;
}

void __59__MADTimer_initWithIntervalNanoseconds_isOneShot_andBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained handleTimerEvent];
  }
}

+ (id)timerWithInterval:(unint64_t)interval unit:(unint64_t)unit oneShot:(BOOL)shot andBlock:(id)block
{
  shotCopy = shot;
  blockCopy = block;
  if (unit <= 3)
  {
    v10 = [objc_alloc(objc_opt_class()) initWithIntervalNanoseconds:+[MADTimer timerWithInterval:unit:oneShot:andBlock:]::kTimeScaler[unit] * interval isOneShot:shotCopy andBlock:blockCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)timerWithIntervalSeconds:(unint64_t)seconds isOneShot:(BOOL)shot andBlock:(id)block
{
  shotCopy = shot;
  blockCopy = block;
  v8 = [objc_opt_class() timerWithInterval:seconds unit:3 oneShot:shotCopy andBlock:blockCopy];

  return v8;
}

- (void)dealloc
{
  [(MADTimer *)self destroy];
  v3.receiver = self;
  v3.super_class = MADTimer;
  [(MADTimer *)&v3 dealloc];
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