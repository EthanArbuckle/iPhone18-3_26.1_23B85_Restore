@interface ICBackoffTimer
- (BOOL)isScheduled;
- (ICBackoffTimer)init;
- (ICBackoffTimer)initWithInitialInterval:(double)interval maxInterval:(double)maxInterval target:(id)target selector:(SEL)selector userInfo:(id)info;
- (SEL)selector;
- (double)nextTimeInterval;
- (id)target;
- (void)dealloc;
- (void)fire;
- (void)fire:(id)fire;
- (void)invalidate;
- (void)scheduleToFire;
- (void)setSelector:(SEL)selector;
@end

@implementation ICBackoffTimer

- (ICBackoffTimer)init
{
  [(ICBackoffTimer *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ICBackoffTimer)initWithInitialInterval:(double)interval maxInterval:(double)maxInterval target:(id)target selector:(SEL)selector userInfo:(id)info
{
  targetCopy = target;
  infoCopy = info;
  v17.receiver = self;
  v17.super_class = ICBackoffTimer;
  v14 = [(ICBackoffTimer *)&v17 init];
  v15 = v14;
  if (v14)
  {
    [(ICBackoffTimer *)v14 setInitialTimeInterval:interval];
    [(ICBackoffTimer *)v15 setMaxTimeInterval:maxInterval];
    [(ICBackoffTimer *)v15 setTarget:targetCopy];
    [(ICBackoffTimer *)v15 setSelector:selector];
    [(ICBackoffTimer *)v15 setUserInfo:infoCopy];
    [(ICBackoffTimer *)v15 setBackoffCount:0];
  }

  return v15;
}

- (void)dealloc
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __25__ICBackoffTimer_dealloc__block_invoke;
  v4[3] = &unk_1E84848B8;
  v4[4] = self;
  performBlockOnMainThreadAndWait(v4);
  v3.receiver = self;
  v3.super_class = ICBackoffTimer;
  [(ICBackoffTimer *)&v3 dealloc];
}

void __25__ICBackoffTimer_dealloc__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) timer];
  [v1 invalidate];
}

- (double)nextTimeInterval
{
  [(ICBackoffTimer *)self initialTimeInterval];
  v4 = v3 + pow(3.0, [(ICBackoffTimer *)self backoffCount]) + -1.0;
  [(ICBackoffTimer *)self maxTimeInterval];
  if (v4 < result)
  {
    return v4;
  }

  return result;
}

- (void)fire:(id)fire
{
  fireCopy = fire;
  timer = [(ICBackoffTimer *)self timer];

  v5 = timer;
  if (timer == fireCopy)
  {
    target = [(ICBackoffTimer *)self target];

    if (!target)
    {
      return;
    }

    target2 = [(ICBackoffTimer *)self target];
    v8 = [target2 methodForSelector:{-[ICBackoffTimer selector](self, "selector")}];

    target3 = [(ICBackoffTimer *)self target];
    v8(target3, [(ICBackoffTimer *)self selector], self);
    v5 = target3;
  }
}

- (void)invalidate
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __28__ICBackoffTimer_invalidate__block_invoke;
  v2[3] = &unk_1E84848B8;
  v2[4] = self;
  performBlockOnMainThreadAndWait(v2);
}

uint64_t __28__ICBackoffTimer_invalidate__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) timer];
  [v2 invalidate];

  v3 = *(a1 + 32);

  return [v3 setTimer:0];
}

- (BOOL)isScheduled
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __29__ICBackoffTimer_isScheduled__block_invoke;
  v4[3] = &unk_1E8484848;
  v4[4] = self;
  v4[5] = &v5;
  performBlockOnMainThreadAndWait(v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __29__ICBackoffTimer_isScheduled__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) timer];
  *(*(*(a1 + 40) + 8) + 24) = [v2 isValid];
}

- (void)scheduleToFire
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __32__ICBackoffTimer_scheduleToFire__block_invoke;
  v2[3] = &unk_1E84848B8;
  v2[4] = self;
  performBlockOnMainThreadAndWait(v2);
}

uint64_t __32__ICBackoffTimer_scheduleToFire__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) timer];

  if (v2)
  {
    v3 = [*(a1 + 32) timer];
    [v3 invalidate];
  }

  v4 = MEMORY[0x1E695DFF0];
  [*(a1 + 32) nextTimeInterval];
  v5 = [v4 scheduledTimerWithTimeInterval:*(a1 + 32) target:sel_fire_ selector:0 userInfo:0 repeats:?];
  [*(a1 + 32) setTimer:v5];

  v6 = *(a1 + 32);
  v7 = [v6 backoffCount] + 1;

  return [v6 setBackoffCount:v7];
}

- (void)fire
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __22__ICBackoffTimer_fire__block_invoke;
  v2[3] = &unk_1E84848B8;
  v2[4] = self;
  performBlockOnMainThreadAndWait(v2);
}

uint64_t __22__ICBackoffTimer_fire__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) timer];
  [v2 fire];

  v3 = *(a1 + 32);

  return [v3 setTimer:0];
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