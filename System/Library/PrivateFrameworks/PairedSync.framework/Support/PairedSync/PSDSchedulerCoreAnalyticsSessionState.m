@interface PSDSchedulerCoreAnalyticsSessionState
- (BOOL)hasDurationForActivity:(id)a3 milestone:(unint64_t)a4;
- (PSDSchedulerCoreAnalyticsSessionState)init;
- (PSDSchedulerCoreAnalyticsSessionState)initWithCoder:(id)a3;
- (double)durationForActivity:(id)a3 milestone:(unint64_t)a4;
- (id)_keyForAmountOfTimeSpentOnGivenLinkType:(int64_t)a3;
- (id)_keyForMilestone:(unint64_t)a3;
- (id)linkDurationsForActivity:(id)a3;
- (id)stateDictionaryForActivity:(id)a3;
- (void)noteActivityCompletedSending:(id)a3;
- (void)noteActivityFinished:(id)a3;
- (void)noteActivityStarted:(id)a3;
- (void)updateLinkDurationForActivity:(id)a3 withLinkType:(int64_t)a4 linkStartTime:(id)a5 endTime:(id)a6;
@end

@implementation PSDSchedulerCoreAnalyticsSessionState

- (PSDSchedulerCoreAnalyticsSessionState)init
{
  v6.receiver = self;
  v6.super_class = PSDSchedulerCoreAnalyticsSessionState;
  v2 = [(PSDSchedulerCoreAnalyticsSessionState *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    stateDictionary = v2->_stateDictionary;
    v2->_stateDictionary = v3;
  }

  return v2;
}

- (PSDSchedulerCoreAnalyticsSessionState)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = PSDSchedulerCoreAnalyticsSessionState;
  v5 = [(PSDSchedulerCoreAnalyticsSessionState *)&v17 init];
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
          sub_10001B36C(v13);
        }
      }

      v14 = objc_alloc_init(NSMutableDictionary);
      v15 = v5->_stateDictionary;
      v5->_stateDictionary = v14;
    }
  }

  return v5;
}

- (void)noteActivityStarted:(id)a3
{
  v5 = [(PSDSchedulerCoreAnalyticsSessionState *)self stateDictionaryForActivity:a3];
  v3 = [v5 objectForKeyedSubscript:@"startDate"];

  if (!v3)
  {
    v4 = +[NSDate date];
    [v5 setObject:v4 forKeyedSubscript:@"startDate"];
  }
}

- (void)noteActivityCompletedSending:(id)a3
{
  v7 = [(PSDSchedulerCoreAnalyticsSessionState *)self stateDictionaryForActivity:a3];
  v4 = [(PSDSchedulerCoreAnalyticsSessionState *)self _keyForMilestone:0];
  v5 = [v7 objectForKeyedSubscript:v4];

  if (!v5)
  {
    v6 = +[NSDate date];
    [v7 setObject:v6 forKeyedSubscript:v4];
  }
}

- (void)noteActivityFinished:(id)a3
{
  v7 = [(PSDSchedulerCoreAnalyticsSessionState *)self stateDictionaryForActivity:a3];
  v4 = [(PSDSchedulerCoreAnalyticsSessionState *)self _keyForMilestone:1];
  v5 = [v7 objectForKeyedSubscript:v4];

  if (!v5)
  {
    v6 = +[NSDate date];
    [v7 setObject:v6 forKeyedSubscript:v4];
  }
}

- (BOOL)hasDurationForActivity:(id)a3 milestone:(unint64_t)a4
{
  v6 = [(PSDSchedulerCoreAnalyticsSessionState *)self stateDictionaryForActivity:a3];
  v7 = [(PSDSchedulerCoreAnalyticsSessionState *)self _keyForMilestone:a4];
  v8 = [v6 objectForKeyedSubscript:@"startDate"];
  if (v8)
  {
    v9 = [v6 objectForKeyedSubscript:v7];
    v10 = v9 != 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)updateLinkDurationForActivity:(id)a3 withLinkType:(int64_t)a4 linkStartTime:(id)a5 endTime:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = [(PSDSchedulerCoreAnalyticsSessionState *)self stateDictionaryForActivity:a3];
  v13 = [(PSDSchedulerCoreAnalyticsSessionState *)self _keyForAmountOfTimeSpentOnGivenLinkType:a4];
  v14 = [v12 objectForKeyedSubscript:@"startDate"];
  v15 = v10;
  v16 = v15;
  v23 = v15;
  if (v11)
  {
    v16 = v15;
    if (v15)
    {
      v16 = v15;
      if (v14)
      {
        v16 = v15;
        if ([v14 compare:v15] == 1)
        {
          v16 = v14;
        }

        [v11 timeIntervalSinceDate:v16];
        if (v17 > 0.0)
        {
          v18 = v17;
          v19 = [v12 objectForKeyedSubscript:v13];
          [v19 doubleValue];
          v21 = v20;

          v22 = [NSNumber numberWithDouble:v18 + v21];
          [v12 setObject:v22 forKeyedSubscript:v13];
        }
      }
    }
  }
}

- (id)linkDurationsForActivity:(id)a3
{
  v3 = [(PSDSchedulerCoreAnalyticsSessionState *)self stateDictionaryForActivity:a3];
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = [v3 objectForKeyedSubscript:@"amountOfTimeLinkOnBT"];
  [v4 setObject:v5 forKeyedSubscript:@"amountOfTimeLinkOnBT"];

  v6 = [v3 objectForKeyedSubscript:@"amountOfTimeLinkOnAWDL"];
  [v4 setObject:v6 forKeyedSubscript:@"amountOfTimeLinkOnAWDL"];

  v7 = [v3 objectForKeyedSubscript:@"amountOfTimeLinkOnInfraWiFi"];
  [v4 setObject:v7 forKeyedSubscript:@"amountOfTimeLinkOnInfraWiFi"];

  v8 = [v3 objectForKeyedSubscript:@"amountOfTimeLinkOnOther"];
  [v4 setObject:v8 forKeyedSubscript:@"amountOfTimeLinkOnOther"];

  v9 = [v3 objectForKeyedSubscript:@"amountOfTimeLinkInactive"];
  [v4 setObject:v9 forKeyedSubscript:@"amountOfTimeLinkInactive"];

  return v4;
}

- (id)_keyForAmountOfTimeSpentOnGivenLinkType:(int64_t)a3
{
  if (a3 > 3)
  {
    return @"amountOfTimeLinkOnOther";
  }

  else
  {
    return off_10002CC70[a3];
  }
}

- (double)durationForActivity:(id)a3 milestone:(unint64_t)a4
{
  v6 = [(PSDSchedulerCoreAnalyticsSessionState *)self stateDictionaryForActivity:a3];
  v7 = [(PSDSchedulerCoreAnalyticsSessionState *)self _keyForMilestone:a4];
  v8 = [v6 objectForKeyedSubscript:@"startDate"];
  v9 = [v6 objectForKeyedSubscript:v7];
  v10 = v9;
  v11 = 0.0;
  if (v8 && v9)
  {
    [v9 timeIntervalSinceDate:v8];
    v11 = fmax(v12, 0.0);
  }

  return v11;
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

- (id)_keyForMilestone:(unint64_t)a3
{
  v3 = @"endDate";
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
    return @"sendCompleteDate";
  }
}

@end