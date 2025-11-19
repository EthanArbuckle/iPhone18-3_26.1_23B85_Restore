@interface HMDBackgroundSystemTask
- (HMDBackgroundSystemTask)initWithUnderlyingTask:(id)a3;
- (void)setTaskCompleted;
@end

@implementation HMDBackgroundSystemTask

- (void)setTaskCompleted
{
  v2 = [(HMDBackgroundSystemTask *)self underlyingTask];
  [v2 setTaskCompleted];
}

- (HMDBackgroundSystemTask)initWithUnderlyingTask:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMDBackgroundSystemTask;
  v6 = [(HMDBackgroundSystemTask *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingTask, a3);
  }

  return v7;
}

@end