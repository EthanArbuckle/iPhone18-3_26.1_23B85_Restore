@interface DDRSchedulerPreObliterate
- (DDRSchedulerPreObliterate)initWithRequest:(id)request;
- (id)scheduledTasks;
- (void)configureTasks;
@end

@implementation DDRSchedulerPreObliterate

- (DDRSchedulerPreObliterate)initWithRequest:(id)request
{
  requestCopy = request;
  v8.receiver = self;
  v8.super_class = DDRSchedulerPreObliterate;
  v5 = [(DDRScheduler *)&v8 init];
  if (v5)
  {
    -[DDRScheduler setMode:](v5, "setMode:", [requestCopy mode]);
    options = [requestCopy options];
    -[DDRSchedulerPreObliterate setEraseDataPlan:](v5, "setEraseDataPlan:", [options eraseDataPlan]);
  }

  return v5;
}

- (void)configureTasks
{
  v13 = objc_alloc_init(DDRScheduler);
  [(DDRScheduler *)v13 configureTasks];
  scheduledTasks = [(DDRScheduler *)v13 scheduledTasks];
  v4 = [NSMutableArray arrayWithArray:scheduledTasks];

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
  allResetTasks = [(DDRSchedulerPreObliterate *)self allResetTasks];
  v3 = [allResetTasks copy];

  return v3;
}

@end