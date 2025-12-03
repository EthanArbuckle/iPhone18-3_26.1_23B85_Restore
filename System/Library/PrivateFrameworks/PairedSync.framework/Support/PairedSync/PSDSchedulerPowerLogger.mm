@interface PSDSchedulerPowerLogger
- (id)stringForPowerLogEvent:(unint64_t)event;
- (void)didFinishActivity:(id)activity;
- (void)didFinishSession;
- (void)didStartActivity:(id)activity;
- (void)didStartSyncSessionWithActivityCount:(unint64_t)count isResuming:(BOOL)resuming;
- (void)scheduler:(id)scheduler didUpdateSyncSessionWithUpdate:(id)update;
- (void)scheduler:(id)scheduler willStartSyncSession:(id)session;
@end

@implementation PSDSchedulerPowerLogger

- (void)scheduler:(id)scheduler willStartSyncSession:(id)session
{
  sessionCopy = session;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  activities = [sessionCopy activities];
  v7 = [activities countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v13;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(activities);
        }

        if ([*(*(&v12 + 1) + 8 * i) activityState] != 2)
        {
          ++v9;
        }
      }

      v8 = [activities countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  -[PSDSchedulerPowerLogger didStartSyncSessionWithActivityCount:isResuming:](self, "didStartSyncSessionWithActivityCount:isResuming:", v9, [sessionCopy syncSessionState] == 1);
}

- (void)scheduler:(id)scheduler didUpdateSyncSessionWithUpdate:(id)update
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100016DE4;
  v8[3] = &unk_10002C9A0;
  v8[4] = self;
  updateCopy = update;
  [updateCopy enumerateNewlyRunningActivitiesWithBlock:v8];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100016DEC;
  v7[3] = &unk_10002C9A0;
  v7[4] = self;
  [updateCopy enumerateNewlyCompletedActivitiesWithBlock:v7];
  didUpdateCompleteSyncSession = [updateCopy didUpdateCompleteSyncSession];

  if (didUpdateCompleteSyncSession)
  {
    [(PSDSchedulerPowerLogger *)self didFinishSession];
  }
}

- (void)didStartActivity:(id)activity
{
  activityCopy = activity;
  v5 = [(PSDSchedulerPowerLogger *)self stringForPowerLogEvent:0];
  v9[0] = @"state";
  v9[1] = @"activity";
  v10[0] = v5;
  activityInfo = [activityCopy activityInfo];

  label = [activityInfo label];
  v10[1] = label;
  v8 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];

  PLLogRegisteredEvent();
}

- (void)didFinishActivity:(id)activity
{
  error = [activity error];
  v4 = [(PSDSchedulerPowerLogger *)self stringForPowerLogEvent:1];
  v5 = [NSNumber numberWithBool:error == 0];
  v6 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v4, @"state", v5, @"success", 0];

  if (error)
  {
    localizedDescription = [error localizedDescription];
    if (localizedDescription)
    {
      [v6 setObject:localizedDescription forKeyedSubscript:@"error"];
    }
  }

  PLLogRegisteredEvent();
}

- (void)didStartSyncSessionWithActivityCount:(unint64_t)count isResuming:(BOOL)resuming
{
  resumingCopy = resuming;
  v8 = [(PSDSchedulerPowerLogger *)self stringForPowerLogEvent:0];
  v6 = [NSNumber numberWithUnsignedInteger:count];
  v7 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v8, @"state", v6, @"activityCount", 0];

  if (resumingCopy)
  {
    [v7 setObject:&__kCFBooleanTrue forKeyedSubscript:@"resuming"];
  }

  PLLogRegisteredEvent();
}

- (void)didFinishSession
{
  v2 = [(PSDSchedulerPowerLogger *)self stringForPowerLogEvent:1];
  v4 = @"state";
  v5 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];
  PLLogRegisteredEvent();
}

- (id)stringForPowerLogEvent:(unint64_t)event
{
  v3 = @"end";
  if (event != 1)
  {
    v3 = 0;
  }

  if (event)
  {
    return v3;
  }

  else
  {
    return @"start";
  }
}

@end