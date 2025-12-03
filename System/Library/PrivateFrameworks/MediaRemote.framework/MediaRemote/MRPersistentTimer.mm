@interface MRPersistentTimer
- (MRPersistentTimer)initWithInterval:(double)interval name:(id)name queue:(id)queue block:(id)block;
- (void)invalidate;
- (void)invalidateWithReason:(id)reason;
@end

@implementation MRPersistentTimer

- (MRPersistentTimer)initWithInterval:(double)interval name:(id)name queue:(id)queue block:(id)block
{
  nameCopy = name;
  queueCopy = queue;
  blockCopy = block;
  v18.receiver = self;
  v18.super_class = MRPersistentTimer;
  v13 = [(MRPersistentTimer *)&v18 init];
  if (v13)
  {
    if ([objc_opt_class() usePersistentTimer])
    {
      v14 = [objc_alloc(MEMORY[0x1E69B1478]) initWithInterval:nameCopy name:queueCopy queue:blockCopy block:interval];
      v15 = 8;
    }

    else
    {
      v14 = [objc_alloc(MEMORY[0x1E69B14D8]) initWithInterval:0 repeats:queueCopy queue:blockCopy block:interval];
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

- (void)invalidateWithReason:(id)reason
{
  [(MSVPersistentTimer *)self->_pTimer invalidateWithReason:reason];
  timer = self->_timer;

  [(MSVTimer *)timer invalidate];
}

@end