@interface DMLockdownModeTask
+ (id)createTaskIfAppropriateWithEnvironment:(id)environment;
+ (void)_enableLockdownModeIfNeededWithLockdownModeManager:(id)manager;
@end

@implementation DMLockdownModeTask

+ (id)createTaskIfAppropriateWithEnvironment:(id)environment
{
  environmentCopy = environment;
  if ([environmentCopy deviceModeIsSharediPad])
  {
    v4 = 0;
  }

  else
  {
    v4 = objc_alloc_init(DMLockdownModeTask);
    [(DMLockdownModeTask *)v4 setName:@"Lockdown mode"];
    [(DMLockdownModeTask *)v4 setEstimatedDurationTimeInterval:1.0];
    [(DMLockdownModeTask *)v4 setTelemetryIdentifier:@"com.apple.datamigrator.LockdownMode"];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100001B4C;
    v6[3] = &unk_1000246D8;
    v7 = environmentCopy;
    [(DMLockdownModeTask *)v4 setWorkBlock:v6];
  }

  return v4;
}

+ (void)_enableLockdownModeIfNeededWithLockdownModeManager:(id)manager
{
  managerCopy = manager;
  v4 = dispatch_semaphore_create(0);
  _DMLogFunc();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100001CA8;
  v7[3] = &unk_100024700;
  v5 = v4;
  v8 = v5;
  [managerCopy enableIfNeeded:1 completion:v7];

  v6 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v5, v6))
  {
    _DMLogFunc();
  }
}

@end