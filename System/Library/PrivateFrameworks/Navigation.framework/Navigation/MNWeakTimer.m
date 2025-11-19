@interface MNWeakTimer
+ (id)scheduledTimerWithTimeInterval:(double)a3 target:(id)a4 selector:(SEL)a5;
- (MNWeakTimer)initWithTimeInterval:(double)a3 target:(id)a4 selector:(SEL)a5;
- (SEL)selector;
- (id)target;
- (void)_timerDidFire;
- (void)dealloc;
- (void)invalidate;
- (void)setSelector:(SEL)a3;
@end

@implementation MNWeakTimer

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
  v3 = [(MNWeakTimer *)self target];

  if (v3)
  {
    v4 = [(MNWeakTimer *)self target];
    [v4 performSelector:{-[MNWeakTimer selector](self, "selector")}];
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

- (MNWeakTimer)initWithTimeInterval:(double)a3 target:(id)a4 selector:(SEL)a5
{
  v8 = a4;
  v15.receiver = self;
  v15.super_class = MNWeakTimer;
  v9 = [(MNWeakTimer *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_target, v8);
    if (a5)
    {
      v11 = a5;
    }

    else
    {
      v11 = 0;
    }

    v10->_selector = v11;
    v12 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:v10 target:sel__timerDidFire selector:0 userInfo:0 repeats:a3];
    timer = v10->_timer;
    v10->_timer = v12;
  }

  return v10;
}

+ (id)scheduledTimerWithTimeInterval:(double)a3 target:(id)a4 selector:(SEL)a5
{
  v7 = a4;
  v8 = [[MNWeakTimer alloc] initWithTimeInterval:v7 target:a5 selector:a3];

  return v8;
}

@end