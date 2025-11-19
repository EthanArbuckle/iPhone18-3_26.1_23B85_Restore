@interface _HMFMainThreadAsyncContext
- (void)assertIsExecuting;
- (void)performBlock:(id)a3;
@end

@implementation _HMFMainThreadAsyncContext

- (void)assertIsExecuting
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    _HMFPreconditionFailure(@"[NSThread isMainThread]");
  }
}

- (void)performBlock:(id)a3
{
  v4 = a3;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v4[2]();
  }

  else
  {
    v3 = [MEMORY[0x277CBEB88] mainRunLoop];
    [v3 performBlock:v4];
  }
}

@end