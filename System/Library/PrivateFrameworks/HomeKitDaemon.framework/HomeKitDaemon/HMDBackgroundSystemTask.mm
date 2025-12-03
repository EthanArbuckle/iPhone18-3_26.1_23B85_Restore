@interface HMDBackgroundSystemTask
- (HMDBackgroundSystemTask)initWithUnderlyingTask:(id)task;
- (void)setTaskCompleted;
@end

@implementation HMDBackgroundSystemTask

- (void)setTaskCompleted
{
  underlyingTask = [(HMDBackgroundSystemTask *)self underlyingTask];
  [underlyingTask setTaskCompleted];
}

- (HMDBackgroundSystemTask)initWithUnderlyingTask:(id)task
{
  taskCopy = task;
  v9.receiver = self;
  v9.super_class = HMDBackgroundSystemTask;
  v6 = [(HMDBackgroundSystemTask *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingTask, task);
  }

  return v7;
}

@end