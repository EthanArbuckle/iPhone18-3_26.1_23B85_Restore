@interface NTKDelayedBlock
- (NTKDelayedBlock)initWithDelay:(double)a3 runLoopMode:(id)a4 action:(id)a5;
- (void)cancel;
- (void)dealloc;
- (void)reset;
- (void)resetWithDelay:(double)a3;
- (void)timerFired:(id)a3;
@end

@implementation NTKDelayedBlock

- (NTKDelayedBlock)initWithDelay:(double)a3 runLoopMode:(id)a4 action:(id)a5
{
  v8 = a4;
  v9 = a5;
  v13.receiver = self;
  v13.super_class = NTKDelayedBlock;
  v10 = [(NTKDelayedBlock *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(NTKDelayedBlock *)v10 setDelay:a3];
    [(NTKDelayedBlock *)v11 setRunLoopMode:v8];
    [(NTKDelayedBlock *)v11 setAction:v9];
    [(NTKDelayedBlock *)v11 delay];
    [(NTKDelayedBlock *)v11 resetWithDelay:?];
  }

  return v11;
}

- (void)dealloc
{
  v3 = [(NTKDelayedBlock *)self timer];
  [v3 invalidate];

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

- (void)resetWithDelay:(double)a3
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

  v6 = [(NTKDelayedBlock *)self action];

  if (v6)
  {
    if (a3 >= 0.0)
    {
      [(NTKDelayedBlock *)self setCanceled:0];
      [(NTKDelayedBlock *)self setDelay:a3];
      v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:a3];
      v8 = [(NTKDelayedBlock *)self timer];

      if (v8)
      {
        v9 = [(NTKDelayedBlock *)self timer];
        [v9 setFireDate:v7];
      }

      else
      {
        v10 = [objc_alloc(MEMORY[0x277CBEBB8]) initWithFireDate:v7 interval:self target:sel_timerFired_ selector:0 userInfo:0 repeats:a3];
        [(NTKDelayedBlock *)self setTimer:v10];

        v9 = [MEMORY[0x277CBEB88] currentRunLoop];
        v11 = [(NTKDelayedBlock *)self timer];
        v12 = [(NTKDelayedBlock *)self runLoopMode];
        [v9 addTimer:v11 forMode:v12];
      }
    }

    else
    {
      [(NTKDelayedBlock *)self cancel];
    }
  }
}

- (void)timerFired:(id)a3
{
  if (![(NTKDelayedBlock *)self canceled])
  {
    v4 = [(NTKDelayedBlock *)self action];

    if (v4)
    {
      v5 = [(NTKDelayedBlock *)self action];
      (v5)[2](v5, self);
    }
  }

  [(NTKDelayedBlock *)self cancel];
}

- (void)cancel
{
  [(NTKDelayedBlock *)self setCanceled:1];
  v3 = [(NTKDelayedBlock *)self timer];
  [v3 invalidate];

  [(NTKDelayedBlock *)self setTimer:0];

  [(NTKDelayedBlock *)self setAction:0];
}

@end