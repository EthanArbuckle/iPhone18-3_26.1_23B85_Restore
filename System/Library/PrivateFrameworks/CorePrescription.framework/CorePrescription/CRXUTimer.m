@interface CRXUTimer
- (CRXUTimer)initWithTimeInterval:(double)a3 weakTarget:(id)a4 selector:(SEL)a5 repeats:(BOOL)a6 queue:(id)a7;
- (SEL)selector;
- (id)target;
- (void)dealloc;
- (void)handleTimer;
- (void)invalidate;
- (void)setSelector:(SEL)a3;
@end

@implementation CRXUTimer

- (CRXUTimer)initWithTimeInterval:(double)a3 weakTarget:(id)a4 selector:(SEL)a5 repeats:(BOOL)a6 queue:(id)a7
{
  v12 = a4;
  v13 = a7;
  v26.receiver = self;
  v26.super_class = CRXUTimer;
  v14 = [(CRXUTimer *)&v26 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_target, v12);
    if (a5)
    {
      v16 = a5;
    }

    else
    {
      v16 = 0;
    }

    v15->_selector = v16;
    v17 = [v13 queue];
    v18 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v17);
    timer = v15->_timer;
    v15->_timer = v18;

    v20 = dispatch_time(0, (a3 * 1000000000.0));
    dispatch_source_set_timer(v15->_timer, v20, v20, 0);
    v21 = v15->_timer;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __68__CRXUTimer_initWithTimeInterval_weakTarget_selector_repeats_queue___block_invoke;
    v23[3] = &unk_278EA0D70;
    v25 = a6;
    v24 = v15;
    dispatch_source_set_event_handler(v21, v23);
    dispatch_resume(v15->_timer);
  }

  return v15;
}

uint64_t __68__CRXUTimer_initWithTimeInterval_weakTarget_selector_repeats_queue___block_invoke(uint64_t a1)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    [*(a1 + 32) invalidate];
  }

  v2 = *(a1 + 32);

  return [v2 handleTimer];
}

- (void)dealloc
{
  timer = self->_timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
  }

  v4.receiver = self;
  v4.super_class = CRXUTimer;
  [(CRXUTimer *)&v4 dealloc];
}

- (void)invalidate
{
  timer = self->_timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
    v4 = self->_timer;
    self->_timer = 0;
  }
}

- (void)handleTimer
{
  v3 = [(CRXUTimer *)self target];
  if (v3 && (v4 = v3, [(CRXUTimer *)self target], v5 = objc_claimAutoreleasedReturnValue(), [(CRXUTimer *)self selector], v6 = objc_opt_respondsToSelector(), v5, v4, (v6 & 1) != 0))
  {
    v7 = [(CRXUTimer *)self target];
    v8 = [v7 methodForSelector:{-[CRXUTimer selector](self, "selector")}];

    v9 = [(CRXUTimer *)self target];
    v8(v9, [(CRXUTimer *)self selector], self);
  }

  else
  {

    [(CRXUTimer *)self invalidate];
  }
}

- (id)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

- (SEL)selector
{
  if (self->_selector)
  {
    return self->_selector;
  }

  else
  {
    return 0;
  }
}

- (void)setSelector:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  self->_selector = v3;
}

@end