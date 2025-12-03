@interface PSDSchedulerCoreAnalyticsSessionState
- (BOOL)hasDurationForActivity:(id)activity milestone:(unint64_t)milestone;
- (PSDSchedulerCoreAnalyticsSessionState)init;
- (PSDSchedulerCoreAnalyticsSessionState)initWithCoder:(id)coder;
- (double)durationForActivity:(id)activity milestone:(unint64_t)milestone;
- (id)_keyForAmountOfTimeSpentOnGivenLinkType:(int64_t)type;
- (id)_keyForMilestone:(unint64_t)milestone;
- (id)linkDurationsForActivity:(id)activity;
- (id)stateDictionaryForActivity:(id)activity;
- (void)noteActivityCompletedSending:(id)sending;
- (void)noteActivityFinished:(id)finished;
- (void)noteActivityStarted:(id)started;
- (void)updateLinkDurationForActivity:(id)activity withLinkType:(int64_t)type linkStartTime:(id)time endTime:(id)endTime;
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

- (PSDSchedulerCoreAnalyticsSessionState)initWithCoder:(id)coder
{
  coderCopy = coder;
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
    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"sessionState"];
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

- (void)noteActivityStarted:(id)started
{
  v5 = [(PSDSchedulerCoreAnalyticsSessionState *)self stateDictionaryForActivity:started];
  v3 = [v5 objectForKeyedSubscript:@"startDate"];

  if (!v3)
  {
    v4 = +[NSDate date];
    [v5 setObject:v4 forKeyedSubscript:@"startDate"];
  }
}

- (void)noteActivityCompletedSending:(id)sending
{
  v7 = [(PSDSchedulerCoreAnalyticsSessionState *)self stateDictionaryForActivity:sending];
  v4 = [(PSDSchedulerCoreAnalyticsSessionState *)self _keyForMilestone:0];
  v5 = [v7 objectForKeyedSubscript:v4];

  if (!v5)
  {
    v6 = +[NSDate date];
    [v7 setObject:v6 forKeyedSubscript:v4];
  }
}

- (void)noteActivityFinished:(id)finished
{
  v7 = [(PSDSchedulerCoreAnalyticsSessionState *)self stateDictionaryForActivity:finished];
  v4 = [(PSDSchedulerCoreAnalyticsSessionState *)self _keyForMilestone:1];
  v5 = [v7 objectForKeyedSubscript:v4];

  if (!v5)
  {
    v6 = +[NSDate date];
    [v7 setObject:v6 forKeyedSubscript:v4];
  }
}

- (BOOL)hasDurationForActivity:(id)activity milestone:(unint64_t)milestone
{
  v6 = [(PSDSchedulerCoreAnalyticsSessionState *)self stateDictionaryForActivity:activity];
  v7 = [(PSDSchedulerCoreAnalyticsSessionState *)self _keyForMilestone:milestone];
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

- (void)updateLinkDurationForActivity:(id)activity withLinkType:(int64_t)type linkStartTime:(id)time endTime:(id)endTime
{
  timeCopy = time;
  endTimeCopy = endTime;
  v12 = [(PSDSchedulerCoreAnalyticsSessionState *)self stateDictionaryForActivity:activity];
  v13 = [(PSDSchedulerCoreAnalyticsSessionState *)self _keyForAmountOfTimeSpentOnGivenLinkType:type];
  v14 = [v12 objectForKeyedSubscript:@"startDate"];
  v15 = timeCopy;
  v16 = v15;
  v23 = v15;
  if (endTimeCopy)
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

        [endTimeCopy timeIntervalSinceDate:v16];
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

- (id)linkDurationsForActivity:(id)activity
{
  v3 = [(PSDSchedulerCoreAnalyticsSessionState *)self stateDictionaryForActivity:activity];
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

- (id)_keyForAmountOfTimeSpentOnGivenLinkType:(int64_t)type
{
  if (type > 3)
  {
    return @"amountOfTimeLinkOnOther";
  }

  else
  {
    return off_10002CC70[type];
  }
}

- (double)durationForActivity:(id)activity milestone:(unint64_t)milestone
{
  v6 = [(PSDSchedulerCoreAnalyticsSessionState *)self stateDictionaryForActivity:activity];
  v7 = [(PSDSchedulerCoreAnalyticsSessionState *)self _keyForMilestone:milestone];
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

- (id)stateDictionaryForActivity:(id)activity
{
  activityCopy = activity;
  v5 = [(NSMutableDictionary *)self->_stateDictionary objectForKeyedSubscript:activityCopy];
  v6 = v5;
  if (activityCopy && !v5)
  {
    v6 = objc_alloc_init(NSMutableDictionary);
    [(NSMutableDictionary *)self->_stateDictionary setObject:v6 forKeyedSubscript:activityCopy];
  }

  return v6;
}

- (id)_keyForMilestone:(unint64_t)milestone
{
  v3 = @"endDate";
  if (milestone != 1)
  {
    v3 = 0;
  }

  if (milestone)
  {
    return v3;
  }

  else
  {
    return @"sendCompleteDate";
  }
}

@end