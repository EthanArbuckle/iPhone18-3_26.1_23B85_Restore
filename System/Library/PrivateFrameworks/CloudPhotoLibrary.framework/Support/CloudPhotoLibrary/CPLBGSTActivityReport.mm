@interface CPLBGSTActivityReport
+ (id)descriptionForExpirationReason:(unint64_t)reason;
+ (id)descriptionForPhase:(int64_t)phase;
+ (id)simplifiedTaskIdentifierForTaskIdentifier:(id)identifier;
- (CPLBGSTActivityReport)initWithCoder:(id)coder;
- (CPLBGSTActivityReport)initWithTaskIdentifier:(id)identifier;
- (NSDate)lastSubmitDate;
- (id)statusWithNow:(id)now prefix:(id)prefix;
- (void)_didReportPhase:(int64_t)phase;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CPLBGSTActivityReport

+ (id)descriptionForExpirationReason:(unint64_t)reason
{
  if (reason + 1 >= 4)
  {
    reason = [[NSString alloc] initWithFormat:@"unknown-%ld", reason];
  }

  else
  {
    reason = *(&off_100273200 + reason + 1);
  }

  return reason;
}

- (CPLBGSTActivityReport)initWithTaskIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = CPLBGSTActivityReport;
  v5 = [(CPLBGSTActivityReport *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    taskIdentifier = v5->_taskIdentifier;
    v5->_taskIdentifier = v6;

    v5->_expireReason = 0;
  }

  return v5;
}

- (CPLBGSTActivityReport)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"taskIdentifier"];
  if (v5)
  {
    v6 = [(CPLBGSTActivityReport *)self initWithTaskIdentifier:v5];
    if (v6)
    {
      v7 = objc_opt_class();
      v8 = +[NSDate date];
      v9 = [NSSet setWithObjects:v7, v8, objc_opt_class(), 0];
      v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"dates"];

      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v20;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v20 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v19 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_storeStrong(v6->_phaseDates, v16);
              v6->_phase = 0;
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v13);
      }
    }

    self = v6;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_taskIdentifier forKey:@"taskIdentifier"];
  v5 = 0;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  phaseDates = self->_phaseDates;
  do
  {
    v7 = phaseDates[v5];
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = [NSNull null:v12];
    }

    v9 = *(&v12 + v5 * 8);
    *(&v12 + v5 * 8) = v8;

    ++v5;
  }

  while (v5 != 8);
  v10 = [[NSArray alloc] initWithObjects:&v12 count:8];
  [coderCopy encodeObject:v10 forKey:@"dates"];

  for (i = 56; i != -8; i -= 8)
  {
  }
}

- (void)_didReportPhase:(int64_t)phase
{
  phase = self->_phase;
  if (phase <= 3)
  {
    self->_expireReason = 0;
  }

  if (!phase)
  {
    self->_submitDateIsDeferredDate = 0;
  }

  if (phase == 5 && (phase | 2) == 3)
  {
    self->_submitDateIsDeferredDate = 1;
    objc_storeStrong(self->_phaseDates, self->_phaseDates[5]);
  }

  v7 = +[NSDate date];
  phaseDates = self->_phaseDates;
  v9 = self->_phaseDates[phase];
  self->_phaseDates[phase] = v7;

  v10 = self->_phase;
  if (phase == 5 && v10 == 4)
  {
    v11 = self->_phaseDates[4];
    if (v11)
    {
      [(NSDate *)self->_phaseDates[5] timeIntervalSinceDate:v11];
      if (v12 < 0.0)
      {
        v12 = -v12;
      }

      if (v12 < 1.0)
      {
        v13 = self->_phase;
        v14 = phaseDates[v13];
        phaseDates[v13] = 0;
      }
    }

    v10 = self->_phase;
  }

  if (v10 > phase)
  {
    v15 = &self->_phaseDates[1];
    phaseCopy = phase;
    do
    {
      v17 = phaseCopy + 1;
      v18 = v15[phaseCopy];
      v15[phaseCopy] = 0;

      phaseCopy = v17;
    }

    while (v17 < self->_phase);
  }

  self->_phase = phase;
}

+ (id)descriptionForPhase:(int64_t)phase
{
  if (phase >= 8)
  {
    sub_10018FD1C(a2, self, phase);
  }

  return *(&off_100273220 + phase);
}

+ (id)simplifiedTaskIdentifierForTaskIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy hasPrefix:@"com.apple.cloudphotod."])
  {
    v4 = [identifierCopy substringFromIndex:22];
  }

  else
  {
    v4 = identifierCopy;
  }

  v5 = v4;

  return v5;
}

- (id)statusWithNow:(id)now prefix:(id)prefix
{
  nowCopy = now;
  prefixCopy = prefix;
  p_info = &OBJC_METACLASS___CPLCloudKitPushNotificationCenter.info;
  v8 = [CPLBGSTActivityReport simplifiedTaskIdentifierForTaskIdentifier:self->_taskIdentifier];
  v9 = [NSMutableString alloc];
  v29 = v8;
  v30 = prefixCopy;
  if (prefixCopy)
  {
    v10 = prefixCopy;
  }

  else
  {
    v10 = v8;
  }

  v11 = [v9 initWithFormat:@"%@: ", v10];
  v12 = 0;
  v33 = 0;
  v13 = 0;
  phaseDates = self->_phaseDates;
  v15 = &CPLFeatureNameEPP_ptr;
  v31 = self->_phaseDates;
  do
  {
    v16 = phaseDates[v13];
    if (!v16)
    {
      goto LABEL_21;
    }

    if (!v13 && self->_submitDateIsDeferredDate)
    {
      v17 = [p_info + 101 descriptionForPhase:5];
      if (!v12)
      {
        goto LABEL_18;
      }

      goto LABEL_14;
    }

    v17 = [p_info + 101 descriptionForPhase:v13];
    if ((v13 < 4) | v33 & 1)
    {
      goto LABEL_13;
    }

    if (self->_expireReason)
    {
      v18 = [p_info + 101 descriptionForExpirationReason:?];
      v19 = v15;
      v20 = v11;
      selfCopy = self;
      v22 = p_info;
      v23 = [[NSString alloc] initWithFormat:@"%@ (%@)", v17, v18];

      v33 = 1;
      v17 = v23;
      p_info = v22;
      self = selfCopy;
      v11 = v20;
      v15 = v19;
      phaseDates = v31;
LABEL_13:
      if (!v12)
      {
        goto LABEL_18;
      }

      goto LABEL_14;
    }

    v33 = 1;
    if (!v12)
    {
LABEL_18:
      v25 = [v15[46] stringFromDateAgo:v16 now:nowCopy];
      [v11 appendFormat:@"%@ [%@]", v17, v25];
      goto LABEL_19;
    }

LABEL_14:
    [(NSDate *)v16 timeIntervalSinceDate:v12];
    if (v24 > 1.0)
    {
      v25 = [v15[46] stringForTimeInterval:?];
      [v11 appendFormat:@" ... %@ ... %@", v25, v17];
LABEL_19:

      goto LABEL_20;
    }

    [v11 appendFormat:@" ... %@", v17];
LABEL_20:
    v26 = v16;

    v12 = v26;
LABEL_21:

    ++v13;
  }

  while (v13 != 8);
  if (!v12)
  {
    [v11 appendString:@"never"];
  }

  v27 = [v11 copy];

  return v27;
}

- (NSDate)lastSubmitDate
{
  if (self->_phase < 1 || (v2 = self->_phaseDates[1]) == 0)
  {
    v2 = self->_phaseDates[0];
  }

  return v2;
}

@end