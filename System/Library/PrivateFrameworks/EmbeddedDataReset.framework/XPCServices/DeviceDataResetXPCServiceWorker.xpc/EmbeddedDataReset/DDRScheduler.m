@interface DDRScheduler
- (DDRScheduler)init;
- (id)scheduledTasks;
- (void)configureTasks;
@end

@implementation DDRScheduler

- (DDRScheduler)init
{
  NSLog(@"initialize pre-reset scheduler", a2);
  v4.receiver = self;
  v4.super_class = DDRScheduler;
  result = [(DDRScheduler *)&v4 init];
  if (result)
  {
    result->_mode = 0;
  }

  return result;
}

- (id)scheduledTasks
{
  v2 = [(DDRScheduler *)self resetTasks];
  v3 = [v2 copy];

  return v3;
}

- (void)configureTasks
{
  NSLog(@"configure all pre-reset tasks", a2);
  v3 = objc_opt_new();
  v9[0] = v3;
  v4 = objc_opt_new();
  v9[1] = v4;
  v5 = objc_opt_new();
  v9[2] = v5;
  v6 = objc_opt_new();
  v9[3] = v6;
  v7 = [NSArray arrayWithObjects:v9 count:4];
  resetTasks = self->_resetTasks;
  self->_resetTasks = v7;
}

@end