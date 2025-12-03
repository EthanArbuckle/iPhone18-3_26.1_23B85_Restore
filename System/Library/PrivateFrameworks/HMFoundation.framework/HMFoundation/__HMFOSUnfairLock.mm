@interface __HMFOSUnfairLock
- (__HMFOSUnfairLock)initWithOptions:(unint64_t)options;
- (void)performBlock:(id)block;
@end

@implementation __HMFOSUnfairLock

- (__HMFOSUnfairLock)initWithOptions:(unint64_t)options
{
  optionsCopy = options;
  v5.receiver = self;
  v5.super_class = __HMFOSUnfairLock;
  result = [(HMFUnfairLock *)&v5 initWithOptions:?];
  if (result)
  {
    result->_internal._os_unfair_lock_opaque = 0;
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
    os_unfair_lock_lock_with_options();
    blockCopy[2](blockCopy);

    os_unfair_lock_unlock(&self->_internal);
  }
}

@end