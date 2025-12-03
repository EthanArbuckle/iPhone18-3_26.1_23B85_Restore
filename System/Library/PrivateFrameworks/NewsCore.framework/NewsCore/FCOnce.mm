@interface FCOnce
- (BOOL)hasBeenTriggered;
- (BOOL)trigger;
- (FCOnce)initWithOptions:(unint64_t)options;
- (void)executeOnce:(id)once;
@end

@implementation FCOnce

- (BOOL)trigger
{
  [(NFUnfairLock *)self->_lock lock];
  finished = self->_finished;
  self->_finished = 1;
  [(NFUnfairLock *)self->_lock unlock];
  return !finished;
}

- (FCOnce)initWithOptions:(unint64_t)options
{
  optionsCopy = options;
  v9.receiver = self;
  v9.super_class = FCOnce;
  v4 = [(FCOnce *)&v9 init];
  v5 = v4;
  if ((optionsCopy & 1) != 0 && v4)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69B6920]);
    lock = v5->_lock;
    v5->_lock = v6;
  }

  return v5;
}

- (void)executeOnce:(id)once
{
  onceCopy = once;
  [(NFUnfairLock *)self->_lock lock];
  if (!self->_finished)
  {
    if (onceCopy)
    {
      onceCopy[2]();
    }

    self->_finished = 1;
  }

  [(NFUnfairLock *)self->_lock unlock];
}

- (BOOL)hasBeenTriggered
{
  [(NFUnfairLock *)self->_lock lock];
  finished = self->_finished;
  [(NFUnfairLock *)self->_lock unlock];
  return finished;
}

@end