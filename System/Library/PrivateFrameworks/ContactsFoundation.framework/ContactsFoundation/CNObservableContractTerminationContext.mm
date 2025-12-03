@interface CNObservableContractTerminationContext
+ (id)currentContext;
+ (unint64_t)currentThreadId;
- (CNObservableContractTerminationContext)initWithCallStack:(id)stack threadId:(unint64_t)id;
@end

@implementation CNObservableContractTerminationContext

+ (id)currentContext
{
  callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
  v4 = [[self alloc] initWithCallStack:callStackSymbols threadId:{objc_msgSend(self, "currentThreadId")}];

  return v4;
}

+ (unint64_t)currentThreadId
{
  v4 = 0;
  if (!pthread_threadid_np(0, &v4))
  {
    return v4;
  }

  v2 = pthread_self();
  return pthread_mach_thread_np(v2);
}

- (CNObservableContractTerminationContext)initWithCallStack:(id)stack threadId:(unint64_t)id
{
  stackCopy = stack;
  v12.receiver = self;
  v12.super_class = CNObservableContractTerminationContext;
  v7 = [(CNObservableContractTerminationContext *)&v12 init];
  if (v7)
  {
    v8 = [stackCopy copy];
    callStack = v7->_callStack;
    v7->_callStack = v8;

    v7->_threadId = id;
    v10 = v7;
  }

  return v7;
}

@end