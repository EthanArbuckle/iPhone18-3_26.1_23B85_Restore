@interface BCSXPCLaunchEventPrefetchTrigger
- (BCSXPCLaunchEventPrefetchTrigger)initWithActivityName:(id)a3;
- (NSString)description;
- (void)scheduleFetchBlock:(id)a3;
@end

@implementation BCSXPCLaunchEventPrefetchTrigger

- (BCSXPCLaunchEventPrefetchTrigger)initWithActivityName:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BCSXPCLaunchEventPrefetchTrigger;
  v5 = [(BCSXPCLaunchEventPrefetchTrigger *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    activityName = v5->_activityName;
    v5->_activityName = v6;
  }

  return v5;
}

- (void)scheduleFetchBlock:(id)a3
{
  v4 = a3;
  v5 = +[BGSystemTaskScheduler sharedScheduler];
  v6 = [(BCSXPCLaunchEventPrefetchTrigger *)self activityName];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001D380;
  v8[3] = &unk_1000297B0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v5 registerForTaskWithIdentifier:v6 usingQueue:0 launchHandler:v8];
}

- (NSString)description
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  v4 = [(BCSXPCLaunchEventPrefetchTrigger *)self activityName];
  [v3 appendString:v4 withName:@"activityName"];

  v5 = [v3 build];

  return v5;
}

@end