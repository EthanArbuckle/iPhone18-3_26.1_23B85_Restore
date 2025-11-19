@interface UIDelayedAction
- (UIDelayedAction)init;
- (UIDelayedAction)initWithTarget:(id)a3 action:(SEL)a4 userInfo:(id)a5 delay:(double)a6 mode:(id)a7;
- (void)dealloc;
- (void)timerFired:(id)a3;
- (void)touchWithDelay:(double)a3;
- (void)unschedule;
@end

@implementation UIDelayedAction

- (UIDelayedAction)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[UIDelayedAction init]"];
  [v3 raise:v4 format:{@"Don't call %@.", v5}];

  return 0;
}

- (UIDelayedAction)initWithTarget:(id)a3 action:(SEL)a4 userInfo:(id)a5 delay:(double)a6 mode:(id)a7
{
  v13 = a3;
  v14 = a5;
  v15 = a7;
  v22.receiver = self;
  v22.super_class = UIDelayedAction;
  v16 = [(UIDelayedAction *)&v22 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->m_target, a3);
    if (a4)
    {
      v18 = a4;
    }

    else
    {
      v18 = 0;
    }

    v17->m_action = v18;
    objc_storeStrong(&v17->m_userInfo, a5);
    v17->m_delay = a6;
    v19 = [v15 copy];
    m_runLoopMode = v17->m_runLoopMode;
    v17->m_runLoopMode = v19;

    [(UIDelayedAction *)v17 touchWithDelay:v17->m_delay];
  }

  return v17;
}

- (void)dealloc
{
  [(NSTimer *)self->m_timer invalidate];
  m_timer = self->m_timer;
  self->m_timer = 0;

  v4.receiver = self;
  v4.super_class = UIDelayedAction;
  [(UIDelayedAction *)&v4 dealloc];
}

- (void)touchWithDelay:(double)a3
{
  self->m_canceled = 0;
  self->m_delay = a3;
  v5 = [MEMORY[0x277CBEAA8] date];
  m_startDate = self->m_startDate;
  self->m_startDate = v5;

  v7 = [(NSDate *)self->m_startDate dateByAddingTimeInterval:a3];
  m_timer = self->m_timer;
  v12 = v7;
  if (m_timer)
  {
    [(NSTimer *)m_timer setFireDate:v7];
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x277CBEBB8]) initWithFireDate:v7 interval:self target:sel_timerFired_ selector:self->m_userInfo userInfo:0 repeats:a3];
    v10 = self->m_timer;
    self->m_timer = v9;

    v11 = [MEMORY[0x277CBEB88] currentRunLoop];
    [v11 addTimer:self->m_timer forMode:self->m_runLoopMode];
  }
}

- (void)unschedule
{
  [(NSTimer *)self->m_timer invalidate];
  m_timer = self->m_timer;
  self->m_timer = 0;
}

- (void)timerFired:(id)a3
{
  if (!self->m_canceled)
  {
    m_action = self->m_action;
    m_target = self->m_target;
    if (m_action)
    {
      v6 = self->m_action;
      [m_target m_action];
    }

    else
    {
      [m_target 0];
    }
  }

  [(UIDelayedAction *)self cancel];
}

@end