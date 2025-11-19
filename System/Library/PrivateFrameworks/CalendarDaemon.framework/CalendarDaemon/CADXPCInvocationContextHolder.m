@interface CADXPCInvocationContextHolder
- (void)clear;
- (void)retainProxy:(id)a3 andArgumentsInInvocation:(id)a4;
@end

@implementation CADXPCInvocationContextHolder

- (void)clear
{
  retainedArguments = self->_retainedArguments;
  self->_retainedArguments = 0;

  proxy = self->_proxy;
  self->_proxy = 0;
}

- (void)retainProxy:(id)a3 andArgumentsInInvocation:(id)a4
{
  v7 = a3;
  v8 = a4;
  objc_storeStrong(&self->_proxy, a3);
  v9 = [v8 methodSignature];
  v10 = [v9 numberOfArguments];
  v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v10 - 2];
  retainedArguments = self->_retainedArguments;
  self->_retainedArguments = v11;

  if (v10 >= 3)
  {
    for (i = 2; i != v10; ++i)
    {
      if (*[v9 getArgumentTypeAtIndex:i] == 64)
      {
        v14 = 0;
        [v8 getArgument:&v14 atIndex:i];
        if (v14)
        {
          [(NSMutableArray *)self->_retainedArguments addObject:?];
        }
      }
    }
  }
}

@end