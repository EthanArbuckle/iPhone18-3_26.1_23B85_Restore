@interface HMITask
- (HMITask)initWithTaskID:(int)d timeout:(double)timeout;
- (NSDictionary)results;
- (void)main;
- (void)mainInsideAutoreleasePool;
@end

@implementation HMITask

- (HMITask)initWithTaskID:(int)d timeout:(double)timeout
{
  v6.receiver = self;
  v6.super_class = HMITask;
  result = [(HMFOperation *)&v6 initWithTimeout:timeout];
  if (result)
  {
    result->_taskID = d;
  }

  return result;
}

- (NSDictionary)results
{
  v14[1] = *MEMORY[0x277D85DE8];
  error = [(HMFOperation *)self error];
  if (error && (v4 = error, -[HMFOperation error](self, "error"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 code], v5, v4, v6 == 12))
  {
    v7 = @"Canceled";
  }

  else
  {
    error2 = [(HMFOperation *)self error];

    v7 = @"Error";
    if (!error2)
    {
      v7 = @"Success";
    }
  }

  v13 = @"resultCode";
  v14[0] = v7;
  v9 = MEMORY[0x277CBEAC0];
  v10 = v7;
  v11 = [v9 dictionaryWithObjects:v14 forKeys:&v13 count:1];

  return v11;
}

- (void)main
{
  v3 = objc_autoreleasePoolPush();
  [(HMITask *)self mainInsideAutoreleasePool];

  objc_autoreleasePoolPop(v3);
}

- (void)mainInsideAutoreleasePool
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

@end