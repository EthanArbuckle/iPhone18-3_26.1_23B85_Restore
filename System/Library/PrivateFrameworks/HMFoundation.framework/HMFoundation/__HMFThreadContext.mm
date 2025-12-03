@interface __HMFThreadContext
+ (__HMFThreadContext)currentContext;
- (BOOL)isEqual:(id)equal;
- (__HMFThreadContext)init;
- (id)__init;
@end

@implementation __HMFThreadContext

+ (__HMFThreadContext)currentContext
{
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  __init = [objc_alloc(objc_opt_class()) __init];
  v4 = __init;
  if (__init)
  {
    objc_storeStrong((__init + 16), currentThread);
    v5 = voucher_copy();
    v6 = v4[4];
    v4[4] = v5;
  }

  return v4;
}

- (id)__init
{
  v3.receiver = self;
  v3.super_class = __HMFThreadContext;
  return [(__HMFThreadContext *)&v3 init];
}

- (__HMFThreadContext)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      v7 = [(NSThread *)self->_thread isEqual:v6->_thread];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end