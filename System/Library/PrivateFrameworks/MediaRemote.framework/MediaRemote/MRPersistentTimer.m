@interface MRPersistentTimer
- (MRPersistentTimer)initWithInterval:(double)a3 name:(id)a4 queue:(id)a5 block:(id)a6;
- (void)invalidate;
- (void)invalidateWithReason:(id)a3;
@end

@implementation MRPersistentTimer

- (MRPersistentTimer)initWithInterval:(double)a3 name:(id)a4 queue:(id)a5 block:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v18.receiver = self;
  v18.super_class = MRPersistentTimer;
  v13 = [(MRPersistentTimer *)&v18 init];
  if (v13)
  {
    if ([objc_opt_class() usePersistentTimer])
    {
      v14 = [objc_alloc(MEMORY[0x1E69B1478]) initWithInterval:v10 name:v11 queue:v12 block:a3];
      v15 = 8;
    }

    else
    {
      v14 = [objc_alloc(MEMORY[0x1E69B14D8]) initWithInterval:0 repeats:v11 queue:v12 block:a3];
      v15 = 16;
    }

    v16 = *(&v13->super.isa + v15);
    *(&v13->super.isa + v15) = v14;
  }

  return v13;
}

- (void)invalidate
{
  [(MSVPersistentTimer *)self->_pTimer invalidate];
  timer = self->_timer;

  [(MSVTimer *)timer invalidate];
}

- (void)invalidateWithReason:(id)a3
{
  [(MSVPersistentTimer *)self->_pTimer invalidateWithReason:a3];
  timer = self->_timer;

  [(MSVTimer *)timer invalidate];
}

@end