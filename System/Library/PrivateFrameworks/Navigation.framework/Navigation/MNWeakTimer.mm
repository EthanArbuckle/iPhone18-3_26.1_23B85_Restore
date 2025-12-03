@interface MNWeakTimer
+ (id)scheduledTimerWithTimeInterval:(double)interval target:(id)target selector:(SEL)selector;
- (MNWeakTimer)initWithTimeInterval:(double)interval target:(id)target selector:(SEL)selector;
- (SEL)selector;
- (id)target;
- (void)_timerDidFire;
- (void)dealloc;
- (void)invalidate;
- (void)setSelector:(SEL)selector;
@end

@implementation MNWeakTimer

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

- (id)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

- (void)_timerDidFire
{
  target = [(MNWeakTimer *)self target];

  if (target)
  {
    target2 = [(MNWeakTimer *)self target];
    [target2 performSelector:{-[MNWeakTimer selector](self, "selector")}];
  }

  else
  {

    [(MNWeakTimer *)self invalidate];
  }
}

- (void)invalidate
{
  [(NSTimer *)self->_timer invalidate];
  timer = self->_timer;
  self->_timer = 0;
}

- (void)dealloc
{
  [(NSTimer *)self->_timer invalidate];
  timer = self->_timer;
  self->_timer = 0;

  v4.receiver = self;
  v4.super_class = MNWeakTimer;
  [(MNWeakTimer *)&v4 dealloc];
}

- (MNWeakTimer)initWithTimeInterval:(double)interval target:(id)target selector:(SEL)selector
{
  targetCopy = target;
  v15.receiver = self;
  v15.super_class = MNWeakTimer;
  v9 = [(MNWeakTimer *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_target, targetCopy);
    if (selector)
    {
      selectorCopy = selector;
    }

    else
    {
      selectorCopy = 0;
    }

    v10->_selector = selectorCopy;
    v12 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:v10 target:sel__timerDidFire selector:0 userInfo:0 repeats:interval];
    timer = v10->_timer;
    v10->_timer = v12;
  }

  return v10;
}

+ (id)scheduledTimerWithTimeInterval:(double)interval target:(id)target selector:(SEL)selector
{
  targetCopy = target;
  v8 = [[MNWeakTimer alloc] initWithTimeInterval:targetCopy target:selector selector:interval];

  return v8;
}

@end