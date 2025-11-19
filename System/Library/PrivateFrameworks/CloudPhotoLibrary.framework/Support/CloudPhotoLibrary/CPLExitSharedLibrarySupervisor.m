@interface CPLExitSharedLibrarySupervisor
+ (id)descriptionForExitState:(int64_t)a3;
- (BOOL)shouldRunForceProcessingStagedScopesTaskNow;
- (BOOL)shouldRunForceProcessingStagedScopesTaskNowMovingToForeground;
- (BOOL)shouldScheduleForceProcessingStagedScopesTask;
- (CPLExitSharedLibrarySupervisor)initWithScopeIdentifier:(id)a3 exitState:(int64_t)a4 supervisorInfo:(id)a5;
- (NSDictionary)supervisorInfo;
- (NSString)status;
- (void)noteServerHasChanges;
- (void)ping;
- (void)setExitState:(int64_t)a3;
- (void)updateLastForcedExitDate;
@end

@implementation CPLExitSharedLibrarySupervisor

- (CPLExitSharedLibrarySupervisor)initWithScopeIdentifier:(id)a3 exitState:(int64_t)a4 supervisorInfo:(id)a5
{
  v8 = a3;
  v9 = a5;
  v42.receiver = self;
  v42.super_class = CPLExitSharedLibrarySupervisor;
  v10 = [(CPLExitSharedLibrarySupervisor *)&v42 init];
  if (v10)
  {
    v11 = [v8 copy];
    scopeIdentifier = v10->_scopeIdentifier;
    v10->_scopeIdentifier = v11;

    if (v9)
    {
      v13 = [v9 objectForKeyedSubscript:@"exitStartDate"];
      if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([v13 timeIntervalSinceNow], v14 <= 0.0))
      {
        v15 = v13;
      }

      else
      {
        v15 = 0;
      }

      exitStartDate = v10->_exitStartDate;
      v10->_exitStartDate = v15;

      v17 = [v9 objectForKeyedSubscript:@"lastForcedExitDate"];
      if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([v17 timeIntervalSinceNow], v18 <= 0.0))
      {
        v19 = v17;
      }

      else
      {
        v19 = 0;
      }

      lastForcedExitDate = v10->_lastForcedExitDate;
      v10->_lastForcedExitDate = v19;

      v21 = [v9 objectForKeyedSubscript:@"nextForcedExitDate"];
      if (v10->_lastForcedExitDate)
      {
        v22 = 86400.0;
      }

      else
      {
        v22 = 60.0;
      }

      v23 = v21;
      if (v23 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([v23 timeIntervalSinceNow], v24 <= v22))
      {
        v25 = v23;
      }

      else
      {
        v25 = 0;
      }

      nextForcedExitDate = v10->_nextForcedExitDate;
      v10->_nextForcedExitDate = v25;
    }

    v27 = objc_alloc_init(NSMutableDictionary);
    supervisorInfo = v10->_supervisorInfo;
    v10->_supervisorInfo = v27;

    v29 = v10->_exitStartDate;
    if (!v29)
    {
      v30 = +[NSDate date];
      v31 = v10->_exitStartDate;
      v10->_exitStartDate = v30;

      [(NSMutableDictionary *)v10->_supervisorInfo setObject:v10->_exitStartDate forKeyedSubscript:@"exitStartDate"];
      v29 = v10->_exitStartDate;
    }

    [(NSMutableDictionary *)v10->_supervisorInfo setObject:v29 forKeyedSubscript:@"exitStartDate"];
    v32 = v10->_lastForcedExitDate;
    if (v32)
    {
      [(NSMutableDictionary *)v10->_supervisorInfo setObject:v32 forKeyedSubscript:@"lastForcedExitDate"];
    }

    if (v10->_nextForcedExitDate)
    {
      goto LABEL_34;
    }

    v33 = v10->_lastForcedExitDate;
    if (v33)
    {
      v34 = v33;
      v35 = arc4random_uniform(0x15180u);
      v36 = 86400.0;
    }

    else
    {
      exitState = v10->_exitState;
      v34 = v10->_exitStartDate;
      if (exitState == 4)
      {
        v38 = 10.0;
LABEL_33:
        v39 = [(NSDate *)v34 dateByAddingTimeInterval:v38];

        v40 = v10->_nextForcedExitDate;
        v10->_nextForcedExitDate = v39;

LABEL_34:
        v10->_exitState = a4;
        [(NSMutableDictionary *)v10->_supervisorInfo setObject:v10->_nextForcedExitDate forKeyedSubscript:@"nextForcedExitDate"];
        goto LABEL_35;
      }

      v35 = arc4random_uniform(0x3Cu);
      v36 = 60.0;
    }

    v38 = v35 + v36;
    goto LABEL_33;
  }

LABEL_35:

  return v10;
}

- (void)setExitState:(int64_t)a3
{
  if (self->_exitState == 4 && !self->_lastForcedExitDate)
  {
    nextForcedExitDate = self->_nextForcedExitDate;
    v6 = self->_exitStartDate;
    v7 = nextForcedExitDate;
    v8 = [(NSDate *)v6 dateByAddingTimeInterval:10.0];
    v9 = v8;
    if (!v7 || (v10 = [(NSDate *)v8 compare:v7], v11 = v7, v10 != 1))
    {
      v11 = v9;
    }

    v12 = v11;

    v13 = self->_nextForcedExitDate;
    self->_nextForcedExitDate = v12;

    [(NSMutableDictionary *)self->_supervisorInfo setObject:self->_nextForcedExitDate forKeyedSubscript:@"nextForcedExitDate"];
  }

  self->_exitState = a3;
}

- (NSDictionary)supervisorInfo
{
  v2 = [(NSMutableDictionary *)self->_supervisorInfo copy];

  return v2;
}

- (BOOL)shouldScheduleForceProcessingStagedScopesTask
{
  exitState = self->_exitState;
  if ((exitState - 1) < 3)
  {
    return 1;
  }

  if (exitState != 4)
  {
    return 0;
  }

  [(NSDate *)self->_exitStartDate timeIntervalSinceNow:v2];
  return v6 >= -604800.0;
}

- (BOOL)shouldRunForceProcessingStagedScopesTaskNow
{
  v3 = [(CPLExitSharedLibrarySupervisor *)self shouldScheduleForceProcessingStagedScopesTask];
  if (v3)
  {
    [(NSDate *)self->_nextForcedExitDate timeIntervalSinceNow];
    LOBYTE(v3) = v4 < 10.0;
  }

  return v3;
}

- (BOOL)shouldRunForceProcessingStagedScopesTaskNowMovingToForeground
{
  v3 = [(CPLExitSharedLibrarySupervisor *)self shouldScheduleForceProcessingStagedScopesTask];
  if (v3)
  {
    lastForcedExitDate = self->_lastForcedExitDate;
    LOBYTE(v3) = !lastForcedExitDate || ([(NSDate *)lastForcedExitDate timeIntervalSinceNow], v5 < -3600.0);
  }

  return v3;
}

- (void)updateLastForcedExitDate
{
  v3 = +[NSDate date];
  lastForcedExitDate = self->_lastForcedExitDate;
  self->_lastForcedExitDate = v3;

  [(NSMutableDictionary *)self->_supervisorInfo setObject:self->_lastForcedExitDate forKeyedSubscript:@"lastForcedExitDate"];
  v5 = self->_lastForcedExitDate;
  v6 = [(NSDate *)v5 dateByAddingTimeInterval:arc4random_uniform(0x15180u) + 86400.0];

  nextForcedExitDate = self->_nextForcedExitDate;
  self->_nextForcedExitDate = v6;

  v8 = self->_nextForcedExitDate;
  supervisorInfo = self->_supervisorInfo;

  [(NSMutableDictionary *)supervisorInfo setObject:v8 forKeyedSubscript:@"nextForcedExitDate"];
}

- (void)noteServerHasChanges
{
  lastForcedExitDate = self->_lastForcedExitDate;
  if (lastForcedExitDate)
  {
    nextForcedExitDate = self->_nextForcedExitDate;
    v5 = lastForcedExitDate;
    v6 = nextForcedExitDate;
    v7 = [(NSDate *)v5 dateByAddingTimeInterval:10.0];
    v8 = v7;
    if (!v6 || (v9 = [(NSDate *)v7 compare:v6], v10 = v6, v9 != 1))
    {
      v10 = v8;
    }

    v11 = v10;

    v12 = self->_nextForcedExitDate;
    self->_nextForcedExitDate = v11;
  }

  else
  {
    v13 = self->_exitStartDate;
    v14 = [(NSDate *)v13 dateByAddingTimeInterval:10.0];

    v12 = self->_nextForcedExitDate;
    self->_nextForcedExitDate = v14;
  }

  v15 = self->_nextForcedExitDate;
  supervisorInfo = self->_supervisorInfo;

  [(NSMutableDictionary *)supervisorInfo setObject:v15 forKeyedSubscript:@"nextForcedExitDate"];
}

- (void)ping
{
  v3 = +[NSDate date];
  v4 = self->_nextForcedExitDate;
  v5 = [v3 dateByAddingTimeInterval:10.0];
  v6 = v5;
  if (!v4 || (v7 = [(NSDate *)v5 compare:v4], v8 = v4, v7 != 1))
  {
    v8 = v6;
  }

  v9 = v8;

  nextForcedExitDate = self->_nextForcedExitDate;
  self->_nextForcedExitDate = v9;

  v11 = self->_nextForcedExitDate;
  supervisorInfo = self->_supervisorInfo;

  [(NSMutableDictionary *)supervisorInfo setObject:v11 forKeyedSubscript:@"nextForcedExitDate"];
}

+ (id)descriptionForExitState:(int64_t)a3
{
  if (a3 > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_100273708[a3];
  }
}

- (NSString)status
{
  v3 = +[NSDate date];
  v4 = [(CPLExitSharedLibrarySupervisor *)self shouldScheduleForceProcessingStagedScopesTask];
  v5 = [NSString alloc];
  v6 = [CPLExitSharedLibrarySupervisor descriptionForExitState:self->_exitState];
  v7 = [CPLDateFormatter stringFromDateAgo:self->_exitStartDate now:v3];
  v8 = v7;
  if (v4)
  {
    v9 = [CPLDateFormatter stringFromDateAgo:self->_nextForcedExitDate now:v3];
    v10 = [v5 initWithFormat:@"%@ - start: %@ - next retry: %@", v6, v8, v9];
  }

  else
  {
    v10 = [v5 initWithFormat:@"%@ - start: %@ - no retry", v6, v7];
  }

  return v10;
}

@end