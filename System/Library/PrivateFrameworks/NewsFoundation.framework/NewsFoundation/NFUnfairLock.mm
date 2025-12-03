@interface NFUnfairLock
- (NFUnfairLock)initWithOptions:(int64_t)options;
- (void)performWithLockSync:(id)sync;
@end

@implementation NFUnfairLock

- (NFUnfairLock)initWithOptions:(int64_t)options
{
  optionsCopy = options;
  v5.receiver = self;
  v5.super_class = NFUnfairLock;
  result = [(NFUnfairLock *)&v5 init];
  if (result)
  {
    result->_unfairLock._os_unfair_lock_opaque = 0;
    if (optionsCopy)
    {
      result->_unfairLockOptions |= 0x10000u;
    }
  }

  return result;
}

- (void)performWithLockSync:(id)sync
{
  syncCopy = sync;
  [(NFUnfairLock *)self lock];
  syncCopy[2](syncCopy);

  [(NFUnfairLock *)self unlock];
}

@end