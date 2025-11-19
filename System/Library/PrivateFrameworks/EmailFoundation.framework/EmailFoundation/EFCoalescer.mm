@interface EFCoalescer
- (EFCoalescer)initWithCoalescingAction:(id)a3;
- (void)_handleCoalesceEvent;
- (void)coalesceValue:(id)a3;
- (void)dealloc;
@end

@implementation EFCoalescer

- (EFCoalescer)initWithCoalescingAction:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = EFCoalescer;
  v5 = [(EFCoalescer *)&v21 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = [v4 copy];
    coalescerAction = v6->_coalescerAction;
    v6->_coalescerAction = v7;

    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%p", objc_opt_class(), v6];
    v10 = [v9 UTF8String];
    v11 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, -15);
    v12 = dispatch_queue_create(v10, v11);
    queue = v6->_queue;
    v6->_queue = v12;

    v14 = dispatch_source_create(MEMORY[0x1E69E96B8], 0, 0, v6->_queue);
    coalescer = v6->_coalescer;
    v6->_coalescer = v14;

    objc_initWeak(&location, v6);
    v16 = v6->_coalescer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __40__EFCoalescer_initWithCoalescingAction___block_invoke;
    handler[3] = &unk_1E8248558;
    objc_copyWeak(&v19, &location);
    dispatch_source_set_event_handler(v16, handler);
    dispatch_resume(v6->_coalescer);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __40__EFCoalescer_initWithCoalescingAction___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleCoalesceEvent];
}

- (void)dealloc
{
  coalescer = self->_coalescer;
  if (coalescer)
  {
    dispatch_source_cancel(coalescer);
  }

  v4.receiver = self;
  v4.super_class = EFCoalescer;
  [(EFCoalescer *)&v4 dealloc];
}

- (void)coalesceValue:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock(&self->_lock);
  objc_storeStrong(&self->_coalescedValue, a3);
  os_unfair_lock_unlock(&self->_lock);
  if (v5)
  {
    dispatch_source_merge_data(self->_coalescer, 1uLL);
  }

  else
  {
    (*(self->_coalescerAction + 2))();
  }
}

- (void)_handleCoalesceEvent
{
  os_unfair_lock_lock(&self->_lock);
  v4 = self->_coalescedValue;
  coalescedValue = self->_coalescedValue;
  self->_coalescedValue = 0;

  os_unfair_lock_unlock(&self->_lock);
  if (v4)
  {
    (*(self->_coalescerAction + 2))();
  }

  sleep(1u);
}

@end