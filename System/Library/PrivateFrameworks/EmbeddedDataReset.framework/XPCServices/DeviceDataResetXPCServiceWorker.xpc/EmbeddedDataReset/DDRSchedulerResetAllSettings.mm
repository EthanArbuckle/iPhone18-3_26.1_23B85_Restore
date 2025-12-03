@interface DDRSchedulerResetAllSettings
- (DDRSchedulerResetAllSettings)init;
- (id)scheduledTasks;
- (void)configureTasks;
@end

@implementation DDRSchedulerResetAllSettings

- (DDRSchedulerResetAllSettings)init
{
  v5.receiver = self;
  v5.super_class = DDRSchedulerResetAllSettings;
  v2 = [(DDRScheduler *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(DDRScheduler *)v2 setMode:3];
  }

  return v3;
}

- (void)configureTasks
{
  v3 = objc_opt_new();
  v23 = [NSMutableArray arrayWithObject:v3];

  v4 = objc_alloc_init(DDRSchedulerResetNetworkSettings);
  [(DDRSchedulerResetNetworkSettings *)v4 configureTasks];
  scheduledTasks = [(DDRSchedulerResetNetworkSettings *)v4 scheduledTasks];
  [v23 addObjectsFromArray:scheduledTasks];

  v6 = objc_opt_new();
  [v23 addObject:v6];

  v7 = objc_opt_new();
  [v23 addObject:v7];

  v8 = objc_opt_new();
  [v23 addObject:v8];

  v9 = objc_opt_new();
  [v23 addObject:v9];

  v10 = objc_opt_new();
  [v23 addObject:v10];

  v11 = objc_opt_new();
  [v23 addObject:v11];

  v12 = objc_opt_new();
  [v23 addObject:v12];

  v13 = objc_opt_new();
  [v23 addObject:v13];

  v14 = objc_opt_new();
  [v23 addObject:v14];

  v15 = objc_opt_new();
  [v23 addObject:v15];

  v16 = objc_opt_new();
  [v23 addObject:v16];

  v17 = objc_opt_new();
  [v23 addObject:v17];

  v18 = objc_opt_new();
  [v23 addObject:v18];

  v19 = objc_opt_new();
  [v23 addObject:v19];

  v20 = objc_opt_new();
  [v23 addObject:v20];

  v21 = objc_opt_new();
  [v23 addObject:v21];

  v22 = [v23 copy];
  [(DDRSchedulerResetAllSettings *)self setResetTasks:v22];
}

- (id)scheduledTasks
{
  resetTasks = [(DDRSchedulerResetAllSettings *)self resetTasks];
  v3 = [resetTasks copy];

  return v3;
}

@end