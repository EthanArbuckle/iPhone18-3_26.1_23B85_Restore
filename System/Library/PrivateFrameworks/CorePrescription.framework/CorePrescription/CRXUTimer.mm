@interface CRXUTimer
- (CRXUTimer)initWithTimeInterval:(double)interval weakTarget:(id)target selector:(SEL)selector repeats:(BOOL)repeats queue:(id)queue;
- (SEL)selector;
- (id)target;
- (void)dealloc;
- (void)handleTimer;
- (void)invalidate;
- (void)setSelector:(SEL)selector;
@end

@implementation CRXUTimer

- (CRXUTimer)initWithTimeInterval:(double)interval weakTarget:(id)target selector:(SEL)selector repeats:(BOOL)repeats queue:(id)queue
{
  targetCopy = target;
  queueCopy = queue;
  v26.receiver = self;
  v26.super_class = CRXUTimer;
  v14 = [(CRXUTimer *)&v26 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_target, targetCopy);
    if (selector)
    {
      selectorCopy = selector;
    }

    else
    {
      selectorCopy = 0;
    }

    v15->_selector = selectorCopy;
    queue = [queueCopy queue];
    v18 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, queue);
    timer = v15->_timer;
    v15->_timer = v18;

    v20 = dispatch_time(0, (interval * 1000000000.0));
    dispatch_source_set_timer(v15->_timer, v20, v20, 0);
    v21 = v15->_timer;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __68__CRXUTimer_initWithTimeInterval_weakTarget_selector_repeats_queue___block_invoke;
    v23[3] = &unk_278EA0D70;
    repeatsCopy = repeats;
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
  target = [(CRXUTimer *)self target];
  if (target && (v4 = target, [(CRXUTimer *)self target], v5 = objc_claimAutoreleasedReturnValue(), [(CRXUTimer *)self selector], v6 = objc_opt_respondsToSelector(), v5, v4, (v6 & 1) != 0))
  {
    target2 = [(CRXUTimer *)self target];
    v8 = [target2 methodForSelector:{-[CRXUTimer selector](self, "selector")}];

    target3 = [(CRXUTimer *)self target];
    v8(target3, [(CRXUTimer *)self selector], self);
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

- (void)setSelector:(SEL)selector
{
  if (selector)
  {
    selectorCopy = selector;
  }

  else
  {
    selectorCopy = 0;
  }

  self->_selector = selectorCopy;
}

@end