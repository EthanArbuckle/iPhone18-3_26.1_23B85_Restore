@interface DDRTaskTerminateAllRunningApplications
- (void)run;
@end

@implementation DDRTaskTerminateAllRunningApplications

- (void)run
{
  v2 = dispatch_semaphore_create(0);
  v3 = +[FBSSystemService sharedService];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100001864;
  v6[3] = &unk_1000145D8;
  v7 = v2;
  v4 = v2;
  [v3 terminateApplicationGroup:1 forReason:5 andReport:0 withDescription:@"data reset" completion:v6];

  v5 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v4, v5);
}

@end