@interface MSVBlockGuard
- (BOOL)disarm;
- (MSVBlockGuard)init;
- (MSVBlockGuard)initWithDeallocHandler:(id)a3;
- (MSVBlockGuard)initWithTimeout:(double)a3 interruptionHandler:(id)a4;
- (void)_interruptWithReason:(int64_t)a3;
- (void)dealloc;
@end

@implementation MSVBlockGuard

- (void)dealloc
{
  [(MSVBlockGuard *)self _interruptWithReason:1];
  v3.receiver = self;
  v3.super_class = MSVBlockGuard;
  [(MSVBlockGuard *)&v3 dealloc];
}

- (BOOL)disarm
{
  os_unfair_lock_lock(&self->_lock);
  v3 = *(self + 28);
  *(self + 28) = v3 | 1;
  [(MSVTimer *)self->_timeoutTimer invalidate];
  timeoutTimer = self->_timeoutTimer;
  self->_timeoutTimer = 0;

  interruptionHandler = self->_interruptionHandler;
  self->_interruptionHandler = 0;

  v6 = (*(self + 28) & 2) == 0;
  os_unfair_lock_unlock(&self->_lock);
  return v6 & (v3 ^ 1);
}

- (void)_interruptWithReason:(int64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  if ((*(self + 28) & 1) != 0 || !self->_interruptionHandler)
  {

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    if (!a3)
    {
      *(self + 28) |= 2u;
    }

    v5 = MEMORY[0x1B26EC6C0]();
    os_unfair_lock_unlock(&self->_lock);
    if (v5)
    {
      v5[2](v5, a3);
    }
  }
}

- (MSVBlockGuard)initWithTimeout:(double)a3 interruptionHandler:(id)a4
{
  v6 = a4;
  v18.receiver = self;
  v18.super_class = MSVBlockGuard;
  v7 = [(MSVBlockGuard *)&v18 init];
  v8 = v7;
  if (v7)
  {
    v7->_lock._os_unfair_lock_opaque = 0;
    v9 = MEMORY[0x1B26EC6C0](v6);
    interruptionHandler = v8->_interruptionHandler;
    v8->_interruptionHandler = v9;

    if (a3 > 0.0)
    {
      objc_initWeak(&location, v8);
      v11 = dispatch_get_global_queue(21, 0);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __53__MSVBlockGuard_initWithTimeout_interruptionHandler___block_invoke;
      v15[3] = &unk_1E7982AB0;
      objc_copyWeak(&v16, &location);
      v12 = [MSVTimer timerWithInterval:0 repeats:v11 queue:v15 block:a3];
      timeoutTimer = v8->_timeoutTimer;
      v8->_timeoutTimer = v12;

      objc_destroyWeak(&v16);
      objc_destroyWeak(&location);
    }
  }

  return v8;
}

void __53__MSVBlockGuard_initWithTimeout_interruptionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _interruptWithReason:0];
}

- (MSVBlockGuard)initWithDeallocHandler:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__MSVBlockGuard_initWithDeallocHandler___block_invoke;
  v8[3] = &unk_1E7982A68;
  v9 = v4;
  v5 = v4;
  v6 = [(MSVBlockGuard *)self initWithTimeout:v8 interruptionHandler:0.0];

  return v6;
}

uint64_t __40__MSVBlockGuard_initWithDeallocHandler___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2 == 1)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (MSVBlockGuard)init
{
  v3.receiver = self;
  v3.super_class = MSVBlockGuard;
  result = [(MSVBlockGuard *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

@end