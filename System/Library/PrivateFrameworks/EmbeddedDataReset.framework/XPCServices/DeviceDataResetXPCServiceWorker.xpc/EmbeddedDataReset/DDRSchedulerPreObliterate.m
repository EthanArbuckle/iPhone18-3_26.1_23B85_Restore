@interface DDRSchedulerPreObliterate
- (DDRSchedulerPreObliterate)initWithRequest:(id)a3;
- (id)scheduledTasks;
- (void)configureTasks;
@end

@implementation DDRSchedulerPreObliterate

- (DDRSchedulerPreObliterate)initWithRequest:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = DDRSchedulerPreObliterate;
  v5 = [(DDRScheduler *)&v8 init];
  if (v5)
  {
    -[DDRScheduler setMode:](v5, "setMode:", [v4 mode]);
    v6 = [v4 options];
    -[DDRSchedulerPreObliterate setEraseDataPlan:](v5, "setEraseDataPlan:", [v6 eraseDataPlan]);
  }

  return v5;
}

- (void)configureTasks
{
  v13 = objc_alloc_init(DDRScheduler);
  [(DDRScheduler *)v13 configureTasks];
  v3 = [(DDRScheduler *)v13 scheduledTasks];
  v4 = [NSMutableArray arrayWithArray:v3];

  v5 = objc_opt_new();
  [v4 addObject:v5];

  v6 = objc_opt_new();
  [v4 addObject:v6];

  v7 = [[DDRTaskClearTelephonySettings alloc] initWithEraseDataPlan:[(DDRSchedulerPreObliterate *)self eraseDataPlan]];
  [v4 addObject:v7];

  v8 = objc_opt_new();
  [v4 addObject:v8];

  v9 = objc_opt_new();
  [v4 addObject:v9];

  v10 = objc_opt_new();
  [v4 addObject:v10];

  v11 = objc_opt_new();
  [v4 addObject:v11];

  v12 = [v4 copy];
  [(DDRSchedulerPreObliterate *)self setAllResetTasks:v12];
}

- (id)scheduledTasks
{
  v2 = [(DDRSchedulerPreObliterate *)self allResetTasks];
  v3 = [v2 copy];

  return v3;
}

@end