@interface CADXPCInvocationContextHolder
- (void)clear;
- (void)retainProxy:(id)proxy andArgumentsInInvocation:(id)invocation;
@end

@implementation CADXPCInvocationContextHolder

- (void)clear
{
  retainedArguments = self->_retainedArguments;
  self->_retainedArguments = 0;

  proxy = self->_proxy;
  self->_proxy = 0;
}

- (void)retainProxy:(id)proxy andArgumentsInInvocation:(id)invocation
{
  proxyCopy = proxy;
  invocationCopy = invocation;
  objc_storeStrong(&self->_proxy, proxy);
  methodSignature = [invocationCopy methodSignature];
  numberOfArguments = [methodSignature numberOfArguments];
  v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:numberOfArguments - 2];
  retainedArguments = self->_retainedArguments;
  self->_retainedArguments = v11;

  if (numberOfArguments >= 3)
  {
    for (i = 2; i != numberOfArguments; ++i)
    {
      if (*[methodSignature getArgumentTypeAtIndex:i] == 64)
      {
        v14 = 0;
        [invocationCopy getArgument:&v14 atIndex:i];
        if (v14)
        {
          [(NSMutableArray *)self->_retainedArguments addObject:?];
        }
      }
    }
  }
}

@end