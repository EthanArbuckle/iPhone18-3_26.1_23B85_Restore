@interface __HMFOSUnfairRecursiveLock
- (__HMFOSUnfairRecursiveLock)initWithOptions:(unint64_t)options;
- (void)performBlock:(id)block;
@end

@implementation __HMFOSUnfairRecursiveLock

- (__HMFOSUnfairRecursiveLock)initWithOptions:(unint64_t)options
{
  optionsCopy = options;
  v5.receiver = self;
  v5.super_class = __HMFOSUnfairRecursiveLock;
  result = [(HMFUnfairLock *)&v5 initWithOptions:options | 2];
  if (result)
  {
    result->_internal = 0;
    result->_internalOptions = (optionsCopy & 1) << 16;
  }

  return result;
}

- (void)performBlock:(id)block
{
  if (block)
  {
    internalOptions = self->_internalOptions;
    blockCopy = block;
    os_unfair_recursive_lock_lock_with_options();
    blockCopy[2](blockCopy);

    os_unfair_recursive_lock_unlock();
  }
}

@end