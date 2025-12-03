@interface _DASLimiterResponse
+ (BOOL)queryActivityDecision:(unint64_t)decision fromResponses:(id)responses;
+ (id)limitResponseWithDecision:(unint64_t)decision withLimiter:(id)limiter validityDuration:(double)duration rationale:(id)rationale;
+ (unint64_t)bitmaskFromResponses:(id)responses;
+ (void)updateActivity:(id)activity withLimitResponse:(id)response;
- (BOOL)isEqual:(id)equal;
- (_DASLimiterResponse)initWithCoder:(id)coder;
- (_DASLimiterResponse)initWithDecision:(unint64_t)decision withLimiter:(id)limiter validityDuration:(double)duration rationale:(id)rationale;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _DASLimiterResponse

- (id)description
{
  v4 = self->_decision - 1;
  if (v4 > 4)
  {
    v5 = @"None";
  }

  else
  {
    v5 = off_1E7C8F640[v4];
  }

  validityDuration = self->_validityDuration;
  rationale = self->_rationale;
  limiterName = self->_limiterName;
  if (validityDuration == 0.0)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Limiter Decision: '%@' Rationale: '%@'", limiterName, v5, rationale, v11, v2];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Limiter Decision: '%@' Rationale: '%@' Duration: '%f mins'", limiterName, v5, rationale, validityDuration / 60.0, v2];
  }
  v9 = ;

  return v9;
}

- (_DASLimiterResponse)initWithDecision:(unint64_t)decision withLimiter:(id)limiter validityDuration:(double)duration rationale:(id)rationale
{
  limiterCopy = limiter;
  rationaleCopy = rationale;
  v16.receiver = self;
  v16.super_class = _DASLimiterResponse;
  v13 = [(_DASLimiterResponse *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_decision = decision;
    objc_storeStrong(&v13->_limiterName, limiter);
    v14->_validityDuration = duration;
    if (rationaleCopy)
    {
      objc_storeStrong(&v14->_rationale, rationale);
    }
  }

  return v14;
}

+ (id)limitResponseWithDecision:(unint64_t)decision withLimiter:(id)limiter validityDuration:(double)duration rationale:(id)rationale
{
  rationaleCopy = rationale;
  limiterCopy = limiter;
  v11 = [[_DASLimiterResponse alloc] initWithDecision:decision withLimiter:limiterCopy validityDuration:rationaleCopy rationale:duration];

  return v11;
}

+ (BOOL)queryActivityDecision:(unint64_t)decision fromResponses:(id)responses
{
  v20 = *MEMORY[0x1E69E9840];
  responsesCopy = responses;
  v6 = responsesCopy;
  if (responsesCopy)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = responsesCopy;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          if ([*(*(&v15 + 1) + 8 * i) decision] == decision)
          {
            v12 = 1;
            goto LABEL_12;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v12 = 0;
LABEL_12:
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

+ (void)updateActivity:(id)activity withLimitResponse:(id)response
{
  responseCopy = response;
  activityCopy = activity;
  limitationResponse = [activityCopy limitationResponse];

  if (limitationResponse)
  {
    limitationResponse2 = [activityCopy limitationResponse];
    v8 = [MEMORY[0x1E695DFA8] setWithArray:limitationResponse2];
    [v8 addObjectsFromArray:responseCopy];
    allObjects = [v8 allObjects];
    v10 = [allObjects mutableCopy];
    [activityCopy setLimitationResponse:v10];

    activityCopy = v8;
  }

  else
  {
    limitationResponse2 = [responseCopy mutableCopy];
    [activityCopy setLimitationResponse:limitationResponse2];
  }
}

+ (unint64_t)bitmaskFromResponses:(id)responses
{
  v19 = *MEMORY[0x1E69E9840];
  responsesCopy = responses;
  v4 = responsesCopy;
  if (responsesCopy && [responsesCopy count])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = 0;
      v8 = *v15;
      do
      {
        v9 = 0;
        do
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          limiterName = [*(*(&v14 + 1) + 8 * v9) limiterName];
          v11 = [_DASLimitsUtilities bitmaskForLimitationName:limiterName];

          v7 |= v11 & ~(v11 >> 63);
          ++v9;
        }

        while (v6 != v9);
        v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);
      v6 = v7;
    }
  }

  else
  {
    v6 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      decision = self->_decision;
      if (decision == [(_DASLimiterResponse *)v5 decision])
      {
        rationale = self->_rationale;
        rationale = [(_DASLimiterResponse *)v5 rationale];
        if ([(NSString *)rationale isEqualToString:rationale]&& (validityDuration = self->_validityDuration, [(_DASLimiterResponse *)v5 validityDuration], validityDuration == v10))
        {
          limiterName = self->_limiterName;
          limiterName = [(_DASLimiterResponse *)v5 limiterName];
          v13 = [(NSString *)limiterName isEqualToString:limiterName];
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  decision = self->_decision;
  coderCopy = coder;
  v6 = [v4 numberWithUnsignedInteger:decision];
  [coderCopy encodeObject:v6 forKey:@"decision"];

  [coderCopy encodeObject:self->_rationale forKey:@"rationale"];
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_validityDuration];
  [coderCopy encodeObject:v7 forKey:@"validityDuration"];

  [coderCopy encodeObject:self->_limiterName forKey:@"limiterName"];
}

- (_DASLimiterResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = _DASLimiterResponse;
  v5 = [(_DASLimiterResponse *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"decision"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rationale"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"limiterName"];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"validityDuration"];
    v10 = v9;
    v11 = 0;
    if (v6 && v9 && v7 && v8)
    {
      v5->_decision = [v6 unsignedIntValue];
      [v10 doubleValue];
      v5->_validityDuration = v12;
      objc_storeStrong(&v5->_rationale, v7);
      objc_storeStrong(&v5->_limiterName, v8);
      v11 = v5;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end