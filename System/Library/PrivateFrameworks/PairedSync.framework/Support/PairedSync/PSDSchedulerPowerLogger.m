@interface PSDSchedulerPowerLogger
- (id)stringForPowerLogEvent:(unint64_t)a3;
- (void)didFinishActivity:(id)a3;
- (void)didFinishSession;
- (void)didStartActivity:(id)a3;
- (void)didStartSyncSessionWithActivityCount:(unint64_t)a3 isResuming:(BOOL)a4;
- (void)scheduler:(id)a3 didUpdateSyncSessionWithUpdate:(id)a4;
- (void)scheduler:(id)a3 willStartSyncSession:(id)a4;
@end

@implementation PSDSchedulerPowerLogger

- (void)scheduler:(id)a3 willStartSyncSession:(id)a4
{
  v5 = a4;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v5 activities];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v6);
        }

        if ([*(*(&v12 + 1) + 8 * i) activityState] != 2)
        {
          ++v9;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  -[PSDSchedulerPowerLogger didStartSyncSessionWithActivityCount:isResuming:](self, "didStartSyncSessionWithActivityCount:isResuming:", v9, [v5 syncSessionState] == 1);
}

- (void)scheduler:(id)a3 didUpdateSyncSessionWithUpdate:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100016DE4;
  v8[3] = &unk_10002C9A0;
  v8[4] = self;
  v5 = a4;
  [v5 enumerateNewlyRunningActivitiesWithBlock:v8];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100016DEC;
  v7[3] = &unk_10002C9A0;
  v7[4] = self;
  [v5 enumerateNewlyCompletedActivitiesWithBlock:v7];
  v6 = [v5 didUpdateCompleteSyncSession];

  if (v6)
  {
    [(PSDSchedulerPowerLogger *)self didFinishSession];
  }
}

- (void)didStartActivity:(id)a3
{
  v4 = a3;
  v5 = [(PSDSchedulerPowerLogger *)self stringForPowerLogEvent:0];
  v9[0] = @"state";
  v9[1] = @"activity";
  v10[0] = v5;
  v6 = [v4 activityInfo];

  v7 = [v6 label];
  v10[1] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];

  PLLogRegisteredEvent();
}

- (void)didFinishActivity:(id)a3
{
  v8 = [a3 error];
  v4 = [(PSDSchedulerPowerLogger *)self stringForPowerLogEvent:1];
  v5 = [NSNumber numberWithBool:v8 == 0];
  v6 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v4, @"state", v5, @"success", 0];

  if (v8)
  {
    v7 = [v8 localizedDescription];
    if (v7)
    {
      [v6 setObject:v7 forKeyedSubscript:@"error"];
    }
  }

  PLLogRegisteredEvent();
}

- (void)didStartSyncSessionWithActivityCount:(unint64_t)a3 isResuming:(BOOL)a4
{
  v4 = a4;
  v8 = [(PSDSchedulerPowerLogger *)self stringForPowerLogEvent:0];
  v6 = [NSNumber numberWithUnsignedInteger:a3];
  v7 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v8, @"state", v6, @"activityCount", 0];

  if (v4)
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

- (id)stringForPowerLogEvent:(unint64_t)a3
{
  v3 = @"end";
  if (a3 != 1)
  {
    v3 = 0;
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return @"start";
  }
}

@end