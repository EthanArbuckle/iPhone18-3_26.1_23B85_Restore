@interface PDScheduledActivityCriteria
+ (id)maintenanceActivityCriteriaWithStartDate:(id)date;
+ (id)priorityActivityCriteriaWithStartDate:(id)date;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToScheduledAcivityCriteria:(id)criteria;
- (PDScheduledActivityCriteria)init;
- (PDScheduledActivityCriteria)initWithCoder:(id)coder;
- (PDScheduledActivityCriteria)initWithPriorityKey:(id)key gracePeriod:(int64_t)period startDate:(id)date;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)xpcActivityCriteria;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PDScheduledActivityCriteria

+ (id)priorityActivityCriteriaWithStartDate:(id)date
{
  dateCopy = date;
  v5 = [self alloc];
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*MEMORY[0x1E69E9D78]];
  v7 = [v5 initWithPriorityKey:v6 gracePeriod:1 startDate:dateCopy];

  return v7;
}

+ (id)maintenanceActivityCriteriaWithStartDate:(id)date
{
  dateCopy = date;
  v5 = [self alloc];
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*MEMORY[0x1E69E9D70]];
  v7 = [v5 initWithPriorityKey:v6 gracePeriod:5 startDate:dateCopy];

  return v7;
}

- (PDScheduledActivityCriteria)init
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*MEMORY[0x1E69E9D70]];
  v4 = [(PDScheduledActivityCriteria *)self initWithPriorityKey:v3 gracePeriod:5 startDate:0];

  return v4;
}

- (PDScheduledActivityCriteria)initWithPriorityKey:(id)key gracePeriod:(int64_t)period startDate:(id)date
{
  keyCopy = key;
  dateCopy = date;
  v14.receiver = self;
  v14.super_class = PDScheduledActivityCriteria;
  v10 = [(PDScheduledActivityCriteria *)&v14 init];
  if (v10)
  {
    v11 = [keyCopy copy];
    priorityKey = v10->_priorityKey;
    v10->_priorityKey = v11;

    v10->_gracePeriod = period;
    objc_storeStrong(&v10->_startDate, date);
  }

  return v10;
}

- (PDScheduledActivityCriteria)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = PDScheduledActivityCriteria;
  v5 = [(PDScheduledActivityCriteria *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"priority"];
    priorityKey = v5->_priorityKey;
    v5->_priorityKey = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
    endDate = v5->_endDate;
    v5->_endDate = v10;

    v5->_requireMainsPower = [coderCopy decodeBoolForKey:@"requireMainsPower"];
    v5->_requireScreenSleep = [coderCopy decodeBoolForKey:@"requireScreenSleep"];
    v5->_requireNetworkConnectivity = [coderCopy decodeBoolForKey:@"requireNetworkConnectivity"];
    v5->_repeating = [coderCopy decodeBoolForKey:@"repeating"];
    v5->_repeatInterval = [coderCopy decodeIntegerForKey:@"repeatInterval"];
    v5->_gracePeriod = [coderCopy decodeInt64ForKey:@"gracePeriod"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"reason"];
    reason = v5->_reason;
    v5->_reason = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  priorityKey = self->_priorityKey;
  coderCopy = coder;
  [coderCopy encodeObject:priorityKey forKey:@"priority"];
  [coderCopy encodeObject:self->_startDate forKey:@"startDate"];
  [coderCopy encodeObject:self->_endDate forKey:@"endDate"];
  [coderCopy encodeBool:self->_requireMainsPower forKey:@"requireMainsPower"];
  [coderCopy encodeBool:self->_requireScreenSleep forKey:@"requireScreenSleep"];
  [coderCopy encodeBool:self->_requireNetworkConnectivity forKey:@"requireNetworkConnectivity"];
  [coderCopy encodeBool:self->_repeating forKey:@"repeating"];
  [coderCopy encodeInteger:self->_repeatInterval forKey:@"repeatInterval"];
  [coderCopy encodeInt64:self->_gracePeriod forKey:@"gracePeriod"];
  [coderCopy encodeObject:self->_reason forKey:@"reason"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PDScheduledActivityCriteria allocWithZone:](PDScheduledActivityCriteria init];
  v6 = [(NSString *)self->_priorityKey copyWithZone:zone];
  priorityKey = v5->_priorityKey;
  v5->_priorityKey = v6;

  v8 = [(NSDate *)self->_startDate copyWithZone:zone];
  startDate = v5->_startDate;
  v5->_startDate = v8;

  v10 = [(NSDate *)self->_endDate copyWithZone:zone];
  endDate = v5->_endDate;
  v5->_endDate = v10;

  v5->_requireMainsPower = self->_requireMainsPower;
  v5->_requireScreenSleep = self->_requireScreenSleep;
  v5->_requireNetworkConnectivity = self->_requireNetworkConnectivity;
  v5->_repeating = self->_repeating;
  v5->_repeatInterval = self->_repeatInterval;
  v5->_gracePeriod = self->_gracePeriod;
  v12 = [(NSString *)self->_reason copyWithZone:zone];
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
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_priorityKey];
  [array safelyAddObject:self->_startDate];
  [array safelyAddObject:self->_endDate];
  [array safelyAddObject:self->_reason];
  v4 = PKCombinedHash(17, array);
  v5 = self->_requireMainsPower - v4 + 32 * v4;
  v6 = self->_requireScreenSleep - v5 + 32 * v5;
  v7 = self->_requireNetworkConnectivity - v6 + 32 * v6;
  v8 = self->_repeating - v7 + 32 * v7;
  v9 = self->_repeatInterval - v8 + 32 * v8;
  v10 = self->_gracePeriod - v9 + 32 * v9;

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PDScheduledActivityCriteria *)self isEqualToScheduledAcivityCriteria:v5];
  }

  return v6;
}

- (BOOL)isEqualToScheduledAcivityCriteria:(id)criteria
{
  criteriaCopy = criteria;
  priorityKey = self->_priorityKey;
  v6 = *(criteriaCopy + 1);
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
  v9 = *(criteriaCopy + 4);
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
  v11 = *(criteriaCopy + 5);
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
  if (self->_requireMainsPower != *(criteriaCopy + 24) || self->_requireScreenSleep != *(criteriaCopy + 25) || self->_requireNetworkConnectivity != *(criteriaCopy + 26) || self->_repeating != *(criteriaCopy + 27) || self->_repeatInterval != criteriaCopy[6] || self->_gracePeriod != *(criteriaCopy + 2))
  {
    goto LABEL_28;
  }

  reason = self->_reason;
  v13 = *(criteriaCopy + 7);
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