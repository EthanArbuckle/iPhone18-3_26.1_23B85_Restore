@interface NTKDelayedBlock
- (NTKDelayedBlock)initWithDelay:(double)delay runLoopMode:(id)mode action:(id)action;
- (void)cancel;
- (void)dealloc;
- (void)reset;
- (void)resetWithDelay:(double)delay;
- (void)timerFired:(id)fired;
@end

@implementation NTKDelayedBlock

- (NTKDelayedBlock)initWithDelay:(double)delay runLoopMode:(id)mode action:(id)action
{
  modeCopy = mode;
  actionCopy = action;
  v13.receiver = self;
  v13.super_class = NTKDelayedBlock;
  v10 = [(NTKDelayedBlock *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(NTKDelayedBlock *)v10 setDelay:delay];
    [(NTKDelayedBlock *)v11 setRunLoopMode:modeCopy];
    [(NTKDelayedBlock *)v11 setAction:actionCopy];
    [(NTKDelayedBlock *)v11 delay];
    [(NTKDelayedBlock *)v11 resetWithDelay:?];
  }

  return v11;
}

- (void)dealloc
{
  timer = [(NTKDelayedBlock *)self timer];
  [timer invalidate];

  [(NTKDelayedBlock *)self setAction:0];
  v4.receiver = self;
  v4.super_class = NTKDelayedBlock;
  [(NTKDelayedBlock *)&v4 dealloc];
}

- (void)reset
{
  [(NTKDelayedBlock *)self delay];

  [(NTKDelayedBlock *)self resetWithDelay:?];
}

- (void)resetWithDelay:(double)delay
{
  if ([(NTKDelayedBlock *)self canceled])
  {
    v5 = _NTKLoggingObjectForDomain(0, "NTKLoggingDomainDefault");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "*** warning: attempting to reset an NTKDelayedBlock which has been canceled or whose block has been called.", v13, 2u);
    }
  }

  action = [(NTKDelayedBlock *)self action];

  if (action)
  {
    if (delay >= 0.0)
    {
      [(NTKDelayedBlock *)self setCanceled:0];
      [(NTKDelayedBlock *)self setDelay:delay];
      v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:delay];
      timer = [(NTKDelayedBlock *)self timer];

      if (timer)
      {
        timer2 = [(NTKDelayedBlock *)self timer];
        [timer2 setFireDate:v7];
      }

      else
      {
        v10 = [objc_alloc(MEMORY[0x277CBEBB8]) initWithFireDate:v7 interval:self target:sel_timerFired_ selector:0 userInfo:0 repeats:delay];
        [(NTKDelayedBlock *)self setTimer:v10];

        timer2 = [MEMORY[0x277CBEB88] currentRunLoop];
        timer3 = [(NTKDelayedBlock *)self timer];
        runLoopMode = [(NTKDelayedBlock *)self runLoopMode];
        [timer2 addTimer:timer3 forMode:runLoopMode];
      }
    }

    else
    {
      [(NTKDelayedBlock *)self cancel];
    }
  }
}

- (void)timerFired:(id)fired
{
  if (![(NTKDelayedBlock *)self canceled])
  {
    action = [(NTKDelayedBlock *)self action];

    if (action)
    {
      action2 = [(NTKDelayedBlock *)self action];
      (action2)[2](action2, self);
    }
  }

  [(NTKDelayedBlock *)self cancel];
}

- (void)cancel
{
  [(NTKDelayedBlock *)self setCanceled:1];
  timer = [(NTKDelayedBlock *)self timer];
  [timer invalidate];

  [(NTKDelayedBlock *)self setTimer:0];

  [(NTKDelayedBlock *)self setAction:0];
}

@end