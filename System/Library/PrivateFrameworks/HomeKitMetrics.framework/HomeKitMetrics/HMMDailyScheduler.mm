@interface HMMDailyScheduler
- (HMMDailyScheduler)initWithDelegate:(id)delegate;
- (void)registerDailyTaskRunner:(id)runner;
@end

@implementation HMMDailyScheduler

- (void)registerDailyTaskRunner:(id)runner
{
  runnerCopy = runner;
  delegate = [(HMMDailyScheduler *)self delegate];
  [delegate registerDailyTaskRunner:runnerCopy];
}

- (HMMDailyScheduler)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v9.receiver = self;
  v9.super_class = HMMDailyScheduler;
  v6 = [(HMMDailyScheduler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_delegate, delegate);
  }

  return v7;
}

@end