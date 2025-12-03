@interface BCSXPCLaunchEventPrefetchTrigger
- (BCSXPCLaunchEventPrefetchTrigger)initWithActivityName:(id)name;
- (NSString)description;
- (void)scheduleFetchBlock:(id)block;
@end

@implementation BCSXPCLaunchEventPrefetchTrigger

- (BCSXPCLaunchEventPrefetchTrigger)initWithActivityName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = BCSXPCLaunchEventPrefetchTrigger;
  v5 = [(BCSXPCLaunchEventPrefetchTrigger *)&v9 init];
  if (v5)
  {
    v6 = [nameCopy copy];
    activityName = v5->_activityName;
    v5->_activityName = v6;
  }

  return v5;
}

- (void)scheduleFetchBlock:(id)block
{
  blockCopy = block;
  v5 = +[BGSystemTaskScheduler sharedScheduler];
  activityName = [(BCSXPCLaunchEventPrefetchTrigger *)self activityName];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001D380;
  v8[3] = &unk_1000297B0;
  v8[4] = self;
  v9 = blockCopy;
  v7 = blockCopy;
  [v5 registerForTaskWithIdentifier:activityName usingQueue:0 launchHandler:v8];
}

- (NSString)description
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  activityName = [(BCSXPCLaunchEventPrefetchTrigger *)self activityName];
  [v3 appendString:activityName withName:@"activityName"];

  build = [v3 build];

  return build;
}

@end