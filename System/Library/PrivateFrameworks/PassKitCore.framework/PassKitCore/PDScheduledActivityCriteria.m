@interface PDScheduledActivityCriteria
+ (id)maintenanceActivityCriteriaWithStartDate:(id)a3;
+ (id)priorityActivityCriteriaWithStartDate:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToScheduledAcivityCriteria:(id)a3;
- (PDScheduledActivityCriteria)init;
- (PDScheduledActivityCriteria)initWithCoder:(id)a3;
- (PDScheduledActivityCriteria)initWithPriorityKey:(id)a3 gracePeriod:(int64_t)a4 startDate:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)xpcActivityCriteria;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PDScheduledActivityCriteria

+ (id)priorityActivityCriteriaWithStartDate:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*MEMORY[0x1E69E9D78]];
  v7 = [v5 initWithPriorityKey:v6 gracePeriod:1 startDate:v4];

  return v7;
}

+ (id)maintenanceActivityCriteriaWithStartDate:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*MEMORY[0x1E69E9D70]];
  v7 = [v5 initWithPriorityKey:v6 gracePeriod:5 startDate:v4];

  return v7;
}

- (PDScheduledActivityCriteria)init
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*MEMORY[0x1E69E9D70]];
  v4 = [(PDScheduledActivityCriteria *)self initWithPriorityKey:v3 gracePeriod:5 startDate:0];

  return v4;
}

- (PDScheduledActivityCriteria)initWithPriorityKey:(id)a3 gracePeriod:(int64_t)a4 startDate:(id)a5
{
  v8 = a3;
  v9 = a5;
  v14.receiver = self;
  v14.super_class = PDScheduledActivityCriteria;
  v10 = [(PDScheduledActivityCriteria *)&v14 init];
  if (v10)
  {
    v11 = [v8 copy];
    priorityKey = v10->_priorityKey;
    v10->_priorityKey = v11;

    v10->_gracePeriod = a4;
    objc_storeStrong(&v10->_startDate, a5);
  }

  return v10;
}

- (PDScheduledActivityCriteria)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PDScheduledActivityCriteria;
  v5 = [(PDScheduledActivityCriteria *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"priority"];
    priorityKey = v5->_priorityKey;
    v5->_priorityKey = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
    endDate = v5->_endDate;
    v5->_endDate = v10;

    v5->_requireMainsPower = [v4 decodeBoolForKey:@"requireMainsPower"];
    v5->_requireScreenSleep = [v4 decodeBoolForKey:@"requireScreenSleep"];
    v5->_requireNetworkConnectivity = [v4 decodeBoolForKey:@"requireNetworkConnectivity"];
    v5->_repeating = [v4 decodeBoolForKey:@"repeating"];
    v5->_repeatInterval = [v4 decodeIntegerForKey:@"repeatInterval"];
    v5->_gracePeriod = [v4 decodeInt64ForKey:@"gracePeriod"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"reason"];
    reason = v5->_reason;
    v5->_reason = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  priorityKey = self->_priorityKey;
  v5 = a3;
  [v5 encodeObject:priorityKey forKey:@"priority"];
  [v5 encodeObject:self->_startDate forKey:@"startDate"];
  [v5 encodeObject:self->_endDate forKey:@"endDate"];
  [v5 encodeBool:self->_requireMainsPower forKey:@"requireMainsPower"];
  [v5 encodeBool:self->_requireScreenSleep forKey:@"requireScreenSleep"];
  [v5 encodeBool:self->_requireNetworkConnectivity forKey:@"requireNetworkConnectivity"];
  [v5 encodeBool:self->_repeating forKey:@"repeating"];
  [v5 encodeInteger:self->_repeatInterval forKey:@"repeatInterval"];
  [v5 encodeInt64:self->_gracePeriod forKey:@"gracePeriod"];
  [v5 encodeObject:self->_reason forKey:@"reason"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PDScheduledActivityCriteria allocWithZone:](PDScheduledActivityCriteria init];
  v6 = [(NSString *)self->_priorityKey copyWithZone:a3];
  priorityKey = v5->_priorityKey;
  v5->_priorityKey = v6;

  v8 = [(NSDate *)self->_startDate copyWithZone:a3];
  startDate = v5->_startDate;
  v5->_startDate = v8;

  v10 = [(NSDate *)self->_endDate copyWithZone:a3];
  endDate = v5->_endDate;
  v5->_endDate = v10;

  v5->_requireMainsPower = self->_requireMainsPower;
  v5->_requireScreenSleep = self->_requireScreenSleep;
  v5->_requireNetworkConnectivity = self->_requireNetworkConnectivity;
  v5->_repeating = self->_repeating;
  v5->_repeatInterval = self->_repeatInterval;
  v5->_gracePeriod = self->_gracePeriod;
  v12 = [(NSString *)self->_reason copyWithZone:a3];
  reason = v5->_reason;
  v5->_reason = v12;

  return v5;
}

- (id)debugDescription
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p \n", objc_opt_class(), self];;
  [v3 appendFormat:@"priorityKey: '%@'; ", self->_priorityKey];
  [v3 appendFormat:@"startDate: '%@'; ", self->_startDate];
  [v3 appendFormat:@"endDate: '%@'; ", self->_endDate];
  if (self->_requireMainsPower)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  [v3 appendFormat:@"requireMainsPower: '%@'; ", v4];
  if (self->_requireScreenSleep)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  [v3 appendFormat:@"requireScreenSleep: '%@'; ", v5];
  if (self->_requireNetworkConnectivity)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [v3 appendFormat:@"requireNetworkConnectivity: '%@'; ", v6];
  if (self->_repeating)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [v3 appendFormat:@"repeating: '%@'; ", v7];
  [v3 appendFormat:@"repeatInterval: '%ld'; ", self->_repeatInterval];
  [v3 appendFormat:@"endDate: '%ld'; ", self->_gracePeriod];
  [v3 appendFormat:@"reason: '%@'; ", self->_reason];
  v8 = [v3 copy];

  return v8;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_priorityKey];
  [v3 safelyAddObject:self->_startDate];
  [v3 safelyAddObject:self->_endDate];
  [v3 safelyAddObject:self->_reason];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_requireMainsPower - v4 + 32 * v4;
  v6 = self->_requireScreenSleep - v5 + 32 * v5;
  v7 = self->_requireNetworkConnectivity - v6 + 32 * v6;
  v8 = self->_repeating - v7 + 32 * v7;
  v9 = self->_repeatInterval - v8 + 32 * v8;
  v10 = self->_gracePeriod - v9 + 32 * v9;

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PDScheduledActivityCriteria *)self isEqualToScheduledAcivityCriteria:v5];
  }

  return v6;
}

- (BOOL)isEqualToScheduledAcivityCriteria:(id)a3
{
  v4 = a3;
  priorityKey = self->_priorityKey;
  v6 = *(v4 + 1);
  if (priorityKey)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (priorityKey != v6)
    {
      goto LABEL_28;
    }
  }

  else if (([(NSString *)priorityKey isEqual:?]& 1) == 0)
  {
    goto LABEL_28;
  }

  startDate = self->_startDate;
  v9 = *(v4 + 4);
  if (startDate && v9)
  {
    if (([(NSDate *)startDate isEqual:?]& 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (startDate != v9)
  {
    goto LABEL_28;
  }

  endDate = self->_endDate;
  v11 = *(v4 + 5);
  if (!endDate || !v11)
  {
    if (endDate == v11)
    {
      goto LABEL_19;
    }

LABEL_28:
    v14 = 0;
    goto LABEL_29;
  }

  if (([(NSDate *)endDate isEqual:?]& 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_19:
  if (self->_requireMainsPower != *(v4 + 24) || self->_requireScreenSleep != *(v4 + 25) || self->_requireNetworkConnectivity != *(v4 + 26) || self->_repeating != *(v4 + 27) || self->_repeatInterval != v4[6] || self->_gracePeriod != *(v4 + 2))
  {
    goto LABEL_28;
  }

  reason = self->_reason;
  v13 = *(v4 + 7);
  if (reason && v13)
  {
    v14 = [(NSString *)reason isEqual:?];
  }

  else
  {
    v14 = reason == v13;
  }

LABEL_29:

  return v14;
}

- (id)xpcActivityCriteria
{
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = v3;
  if (v3)
  {
    xpc_dictionary_set_BOOL(v3, *MEMORY[0x1E69E9C40], !self->_requireMainsPower);
    xpc_dictionary_set_BOOL(v4, *MEMORY[0x1E69E9DC0], self->_requireScreenSleep);
    xpc_dictionary_set_BOOL(v4, *MEMORY[0x1E69E9DB8], self->_requireNetworkConnectivity);
    xpc_dictionary_set_BOOL(v4, *MEMORY[0x1E69E9D88], self->_repeating);
    xpc_dictionary_set_string(v4, *MEMORY[0x1E69E9D68], [(NSString *)self->_priorityKey UTF8String]);
    v5 = *MEMORY[0x1E69E9C68];
    [(NSDate *)self->_startDate timeIntervalSinceNow];
    if (v6 <= 0.0)
    {
      v8 = 0;
    }

    else
    {
      [(NSDate *)self->_startDate timeIntervalSinceNow];
      v8 = v7;
    }

    xpc_dictionary_set_int64(v4, v5, v8);
    xpc_dictionary_set_int64(v4, *MEMORY[0x1E69E9C98], self->_gracePeriod);
    if (self->_repeating)
    {
      repeatInterval = self->_repeatInterval;
      if (repeatInterval > 0.0)
      {
        xpc_dictionary_set_int64(v4, *MEMORY[0x1E69E9CB0], repeatInterval);
      }
    }
  }

  return v4;
}

@end