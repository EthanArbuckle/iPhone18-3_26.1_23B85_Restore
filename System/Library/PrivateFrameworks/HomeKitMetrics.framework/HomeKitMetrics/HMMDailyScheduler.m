@interface HMMDailyScheduler
- (HMMDailyScheduler)initWithDelegate:(id)a3;
- (void)registerDailyTaskRunner:(id)a3;
@end

@implementation HMMDailyScheduler

- (void)registerDailyTaskRunner:(id)a3
{
  v4 = a3;
  v5 = [(HMMDailyScheduler *)self delegate];
  [v5 registerDailyTaskRunner:v4];
}

- (HMMDailyScheduler)initWithDelegate:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMMDailyScheduler;
  v6 = [(HMMDailyScheduler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_delegate, a3);
  }

  return v7;
}

@end