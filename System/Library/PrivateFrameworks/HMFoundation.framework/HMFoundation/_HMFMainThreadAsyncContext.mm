@interface _HMFMainThreadAsyncContext
- (void)assertIsExecuting;
- (void)performBlock:(id)block;
@end

@implementation _HMFMainThreadAsyncContext

- (void)assertIsExecuting
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    _HMFPreconditionFailure(@"[NSThread isMainThread]");
  }
}

- (void)performBlock:(id)block
{
  blockCopy = block;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    blockCopy[2]();
  }

  else
  {
    mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
    [mainRunLoop performBlock:blockCopy];
  }
}

@end