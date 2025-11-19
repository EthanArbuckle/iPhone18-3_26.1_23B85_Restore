@interface PSDSchedulerAWDSessionState
- (BOOL)hasDurationForActivity:(id)a3;
- (BOOL)hasErrorCodeForActivity:(id)a3;
- (BOOL)wasDropoutForActivity:(id)a3;
- (PSDSchedulerAWDSessionState)init;
- (PSDSchedulerAWDSessionState)initWithCoder:(id)a3;
- (double)durationForActivity:(id)a3;
- (id)errorCodeForActivity:(id)a3;
- (id)retryCountForActivity:(id)a3;
- (id)stateDictionaryForActivity:(id)a3;
- (id)syncTypeForActivity:(id)a3;
- (void)_computeDurationForStateDictionary:(id)a3 activity:(id)a4;
- (void)enumerateActivityNamesWithBlock:(id)a3;
- (void)noteActivityDropout:(id)a3;
- (void)noteActivityFinished:(id)a3;
- (void)noteActivityInterrupted:(id)a3;
- (void)noteActivityStarted:(id)a3 syncSession:(id)a4;
@end

@implementation PSDSchedulerAWDSessionState

- (PSDSchedulerAWDSessionState)init
{
  v6.receiver = self;
  v6.super_class = PSDSchedulerAWDSessionState;
  v2 = [(PSDSchedulerAWDSessionState *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    stateDictionary = v2->_stateDictionary;
    v2->_stateDictionary = v3;
  }

  return v2;
}

- (PSDSchedulerAWDSessionState)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = PSDSchedulerAWDSessionState;
  v5 = [(PSDSchedulerAWDSessionState *)&v17 init];
  if (v5)
  {
    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v18[2] = objc_opt_class();
    v18[3] = objc_opt_class();
    v6 = [NSArray arrayWithObjects:v18 count:4];
    v7 = [NSSet setWithArray:v6];
    v8 = [v4 decodeObjectOfClasses:v7 forKey:@"sessionState"];
    v9 = [v8 mutableCopy];
    stateDictionary = v5->_stateDictionary;
    v5->_stateDictionary = v9;

    if (!v5->_stateDictionary)
    {
      v11 = psd_log();
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);

      if (v12)
      {
        v13 = psd_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_10001ADB0();
        }
      }

      v14 = objc_alloc_init(NSMutableDictionary);
      v15 = v5->_stateDictionary;
      v5->_stateDictionary = v14;
    }
  }

  return v5;
}

- (void)noteActivityStarted:(id)a3 syncSession:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [v6 activityInfo];
    v9 = [v8 label];
  }

  else
  {
    v9 = @"initialSyncSession";
  }

  v10 = [(PSDSchedulerAWDSessionState *)self stateDictionaryForActivity:v9];
  v11 = [v10 objectForKeyedSubscript:@"startDate"];

  if (v11)
  {
    v12 = psd_log();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    v13 = [v10 objectForKeyedSubscript:@"startDate"];
    [v13 timeIntervalSinceReferenceDate];
    v22 = 138543618;
    v23 = v9;
    v24 = 2048;
    v25 = v14;
    v15 = "Inheriting start datestamp for %{public}@: %f";
  }

  else
  {
    v16 = +[NSDate date];
    [v10 setObject:v16 forKeyedSubscript:@"startDate"];

    v17 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v7 syncSessionType]);
    [v10 setObject:v17 forKeyedSubscript:@"syncType"];

    v12 = psd_log();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    v13 = [v10 objectForKeyedSubscript:@"startDate"];
    [v13 timeIntervalSinceReferenceDate];
    v22 = 138543618;
    v23 = v9;
    v24 = 2048;
    v25 = v18;
    v15 = "Start datestamp for %{public}@: %f";
  }

  _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v15, &v22, 0x16u);

LABEL_10:
  if (!v6)
  {
    v19 = [v10 objectForKeyedSubscript:@"retryCount"];

    if (v19)
    {
      v20 = [v10 objectForKeyedSubscript:@"retryCount"];
      v21 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v20 integerValue] + 1);
      [v10 setObject:v21 forKeyedSubscript:@"retryCount"];
    }

    else
    {
      [v10 setObject:&off_10002E688 forKeyedSubscript:@"retryCount"];
    }
  }
}

- (void)_computeDurationForStateDictionary:(id)a3 activity:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 objectForKeyedSubscript:@"startDate"];

  if (v7)
  {
    v8 = +[NSDate date];
    v9 = [v5 objectForKeyedSubscript:@"startDate"];
    [v8 timeIntervalSinceDate:v9];
    v10 = [NSNumber numberWithDouble:?];
    [v5 setObject:v10 forKeyedSubscript:@"duration"];

    [v5 setObject:0 forKeyedSubscript:@"startDate"];
    v11 = psd_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v5 objectForKeyedSubscript:@"duration"];
      [v12 doubleValue];
      v14 = 138543618;
      v15 = v6;
      v16 = 2048;
      v17 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Duration for activity %{public}@ is %f", &v14, 0x16u);
    }
  }
}

- (void)noteActivityFinished:(id)a3
{
  v4 = a3;
  v12 = v4;
  if (v4)
  {
    v5 = [v4 activityInfo];
    v6 = [v5 label];

    v4 = v12;
  }

  else
  {
    v6 = @"initialSyncSession";
  }

  v7 = [v4 error];
  if (v7)
  {
    v8 = [v12 error];
    v9 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v8 code]);
  }

  else
  {
    v9 = 0;
  }

  v10 = [(PSDSchedulerAWDSessionState *)self stateDictionaryForActivity:v6];
  [(PSDSchedulerAWDSessionState *)self _computeDurationForStateDictionary:v10 activity:v6];
  [v10 setObject:v9 forKeyedSubscript:@"errorCode"];
  v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v12 interruptionCount]);
  [v10 setObject:v11 forKeyedSubscript:@"retryCount"];
}

- (void)noteActivityInterrupted:(id)a3
{
  v4 = a3;
  v12 = v4;
  if (v4)
  {
    v5 = [v4 activityInfo];
    v6 = [v5 label];
  }

  else
  {
    v6 = @"initialSyncSession";
  }

  v7 = [(PSDSchedulerAWDSessionState *)self stateDictionaryForActivity:v6];
  v8 = [v12 error];
  if (v8)
  {
    v9 = [v12 error];
    v10 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v9 code]);
  }

  else
  {
    v10 = 0;
  }

  [(PSDSchedulerAWDSessionState *)self _computeDurationForStateDictionary:v7 activity:v6];
  [v7 setObject:v10 forKeyedSubscript:@"errorCode"];
  v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v12 interruptionCount]);
  [v7 setObject:v11 forKeyedSubscript:@"retryCount"];
}

- (void)noteActivityDropout:(id)a3
{
  if (a3)
  {
    v4 = [a3 activityInfo];
    v6 = [v4 label];
  }

  else
  {
    v6 = @"initialSyncSession";
  }

  v5 = [(PSDSchedulerAWDSessionState *)self stateDictionaryForActivity:v6];
  [v5 setObject:&__kCFBooleanTrue forKeyedSubscript:@"dropout"];
}

- (BOOL)hasDurationForActivity:(id)a3
{
  v3 = [(PSDSchedulerAWDSessionState *)self stateDictionaryForActivity:a3];
  v4 = [v3 objectForKeyedSubscript:@"duration"];
  v5 = v4 != 0;

  return v5;
}

- (BOOL)wasDropoutForActivity:(id)a3
{
  v3 = [(PSDSchedulerAWDSessionState *)self stateDictionaryForActivity:a3];
  v4 = [v3 objectForKeyedSubscript:@"dropout"];
  v5 = [v4 BOOLValue];

  return v5;
}

- (BOOL)hasErrorCodeForActivity:(id)a3
{
  v3 = [(PSDSchedulerAWDSessionState *)self stateDictionaryForActivity:a3];
  v4 = [v3 objectForKeyedSubscript:@"errorCode"];
  v5 = v4 != 0;

  return v5;
}

- (id)errorCodeForActivity:(id)a3
{
  v3 = [(PSDSchedulerAWDSessionState *)self stateDictionaryForActivity:a3];
  v4 = [v3 objectForKeyedSubscript:@"errorCode"];

  return v4;
}

- (id)syncTypeForActivity:(id)a3
{
  v3 = [(PSDSchedulerAWDSessionState *)self stateDictionaryForActivity:a3];
  v4 = [v3 objectForKeyedSubscript:@"syncType"];

  return v4;
}

- (id)retryCountForActivity:(id)a3
{
  v3 = [(PSDSchedulerAWDSessionState *)self stateDictionaryForActivity:a3];
  v4 = [v3 objectForKeyedSubscript:@"retryCount"];

  return v4;
}

- (double)durationForActivity:(id)a3
{
  v4 = a3;
  v5 = [(PSDSchedulerAWDSessionState *)self stateDictionaryForActivity:v4];
  v6 = [v5 objectForKeyedSubscript:@"duration"];
  [v6 doubleValue];
  v8 = v7;

  if (v8 < 0.0)
  {
    v9 = psd_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10001ADF0();
    }
  }

  if (v8 > 1200.0)
  {
    v10 = psd_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10001AE64();
    }
  }

  return fmax(v8, 0.0);
}

- (id)stateDictionaryForActivity:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_stateDictionary objectForKeyedSubscript:v4];
  v6 = v5;
  if (v4 && !v5)
  {
    v6 = objc_alloc_init(NSMutableDictionary);
    [(NSMutableDictionary *)self->_stateDictionary setObject:v6 forKeyedSubscript:v4];
  }

  return v6;
}

- (void)enumerateActivityNamesWithBlock:(id)a3
{
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_stateDictionary;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v4[2](v4, *(*(&v10 + 1) + 8 * v9));
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end