@interface __HMFOSUnfairLock
- (__HMFOSUnfairLock)initWithOptions:(unint64_t)a3;
- (void)performBlock:(id)a3;
@end

@implementation __HMFOSUnfairLock

- (__HMFOSUnfairLock)initWithOptions:(unint64_t)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = __HMFOSUnfairLock;
  result = [(HMFUnfairLock *)&v5 initWithOptions:?];
  if (result)
  {
    result->_internal._os_unfair_lock_opaque = 0;
    result->_internalOptions = (v3 & 1) << 16;
  }

  return result;
}

- (void)performBlock:(id)a3
{
  if (a3)
  {
    internalOptions = self->_internalOptions;
    v5 = a3;
    os_unfair_lock_lock_with_options();
    v5[2](v5);

    os_unfair_lock_unlock(&self->_internal);
  }
}

@end