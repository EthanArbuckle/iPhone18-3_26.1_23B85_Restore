@interface __HMFOSUnfairRecursiveLock
- (__HMFOSUnfairRecursiveLock)initWithOptions:(unint64_t)a3;
- (void)performBlock:(id)a3;
@end

@implementation __HMFOSUnfairRecursiveLock

- (__HMFOSUnfairRecursiveLock)initWithOptions:(unint64_t)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = __HMFOSUnfairRecursiveLock;
  result = [(HMFUnfairLock *)&v5 initWithOptions:a3 | 2];
  if (result)
  {
    result->_internal = 0;
    result->_internalOptions = (v3 & 1) << 16;
  }

  return result;
}

- (void)performBlock:(id)a3
{
  if (a3)
  {
    internalOptions = self->_internalOptions;
    v4 = a3;
    os_unfair_recursive_lock_lock_with_options();
    v4[2](v4);

    os_unfair_recursive_lock_unlock();
  }
}

@end