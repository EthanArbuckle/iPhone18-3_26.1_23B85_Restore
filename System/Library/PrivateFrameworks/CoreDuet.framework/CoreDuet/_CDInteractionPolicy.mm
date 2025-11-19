@interface _CDInteractionPolicy
+ (id)defaultPolicy;
+ (id)defaultPolicyForCalls;
+ (id)defaultPolicyForEmail;
+ (id)defaultPolicyForMeetings;
+ (id)defaultPolicyForMessages;
+ (id)policyFromDictionary:(id)a3;
+ (id)policyWithRateLimiter:(id)a3 lifespanInSeconds:(unint64_t)a4 maxNumberStored:(unint64_t)a5 timeResolutionInSeconds:(unint64_t)a6 maxNumberOfRecipients:(unint64_t)a7 maxNumberOfKeywords:(unint64_t)a8 maxNumberOfAttachments:(unint64_t)a9;
+ (id)specialPolicyForFirstPartyApps;
- (_CDInteractionPolicy)initWithRateLimiter:(id)a3 lifespanInSeconds:(unint64_t)a4 maxNumberStored:(unint64_t)a5 timeResolutionInSeconds:(unint64_t)a6 maxNumberOfRecipients:(unint64_t)a7 maxNumberOfKeywords:(unint64_t)a8 maxNumberOfAttachments:(unint64_t)a9;
- (id)description;
@end

@implementation _CDInteractionPolicy

+ (id)policyWithRateLimiter:(id)a3 lifespanInSeconds:(unint64_t)a4 maxNumberStored:(unint64_t)a5 timeResolutionInSeconds:(unint64_t)a6 maxNumberOfRecipients:(unint64_t)a7 maxNumberOfKeywords:(unint64_t)a8 maxNumberOfAttachments:(unint64_t)a9
{
  v15 = a3;
  v16 = [[a1 alloc] initWithRateLimiter:v15 lifespanInSeconds:a4 maxNumberStored:a5 timeResolutionInSeconds:a6 maxNumberOfRecipients:a7 maxNumberOfKeywords:a8 maxNumberOfAttachments:a9];

  return v16;
}

- (_CDInteractionPolicy)initWithRateLimiter:(id)a3 lifespanInSeconds:(unint64_t)a4 maxNumberStored:(unint64_t)a5 timeResolutionInSeconds:(unint64_t)a6 maxNumberOfRecipients:(unint64_t)a7 maxNumberOfKeywords:(unint64_t)a8 maxNumberOfAttachments:(unint64_t)a9
{
  v16 = a3;
  v20.receiver = self;
  v20.super_class = _CDInteractionPolicy;
  v17 = [(_CDInteractionPolicy *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_rateLimiter, a3);
    v18->_lifespanInSeconds = a4;
    v18->_maxNumberStored = a5;
    v18->_timeResolutionInSeconds = a6;
    v18->_maxNumberOfRecipients = a7;
    v18->_maxNumberOfKeywords = a8;
    v18->_maxNumberOfAttachments = a9;
  }

  return v18;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"%@ { \n", v5];

  v6 = MEMORY[0x1E696AD98];
  v7 = [(_CDInteractionPolicy *)self rateLimiter];
  v8 = [v6 numberWithInteger:{objc_msgSend(v7, "count")}];
  [v3 appendFormat:@"     rateLimitCount: %@\n", v8];

  v9 = MEMORY[0x1E696AD98];
  v10 = [(_CDInteractionPolicy *)self rateLimiter];
  [v10 period];
  v11 = [v9 numberWithDouble:?];
  [v3 appendFormat:@"    rateLimitPeriod: %@\n", v11];

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_CDInteractionPolicy lifespanInSeconds](self, "lifespanInSeconds")}];
  [v3 appendFormat:@"           lifespan: %@\n", v12];

  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_CDInteractionPolicy maxNumberStored](self, "maxNumberStored")}];
  [v3 appendFormat:@"    maxNumberStored: %@\n", v13];

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_CDInteractionPolicy timeResolutionInSeconds](self, "timeResolutionInSeconds")}];
  [v3 appendFormat:@"     timeResolution: %@s\n", v14];

  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_CDInteractionPolicy maxNumberOfRecipients](self, "maxNumberOfRecipients")}];
  [v3 appendFormat:@"      maxRecipients: %@\n", v15];

  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_CDInteractionPolicy maxNumberOfKeywords](self, "maxNumberOfKeywords")}];
  [v3 appendFormat:@"        maxKeywords: %@\n", v16];

  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_CDInteractionPolicy maxNumberOfAttachments](self, "maxNumberOfAttachments")}];
  [v3 appendFormat:@"     maxAttachments: %@\n", v17];

  [v3 appendString:@"}\n"];

  return v3;
}

+ (id)policyFromDictionary:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [v4 objectForKeyedSubscript:@"RateLimitCount"];
    v6 = [v4 objectForKeyedSubscript:@"RateLimitPeriodInSecounds"];
    v27 = [v4 objectForKeyedSubscript:@"LifespanInSeconds"];
    v7 = [v4 objectForKeyedSubscript:@"MaxNumberStored"];
    v8 = [v4 objectForKeyedSubscript:@"TimeResolutionInSeconds"];
    v9 = [v4 objectForKeyedSubscript:@"MaxNumberOfRecipients"];
    v10 = [v4 objectForKeyedSubscript:@"MaxNumberOfKeywords"];
    v11 = [v4 objectForKeyedSubscript:@"MaxNumberOfAttachments"];
    v12 = v11;
    v13 = 0;
    if (v5 && v6 && v27 && v7 && v8 && v9 && v10 && v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_isKindOfClass())
      {
        v25 = [_CDRateLimiter alloc];
        v14 = [v5 unsignedIntegerValue];
        [v6 doubleValue];
        v15 = [(_CDRateLimiter *)v25 initWithCount:v14 perPeriod:?];
        if (v15)
        {
          v26 = v15;
          v24 = [v27 unsignedIntegerValue];
          v23 = [v7 unsignedIntegerValue];
          v22 = [v8 unsignedIntegerValue];
          v21 = [v9 unsignedIntegerValue];
          v16 = [v10 unsignedIntegerValue];
          v20 = [v12 unsignedIntegerValue];
          v17 = a1;
          v18 = v26;
          v13 = [v17 policyWithRateLimiter:v26 lifespanInSeconds:v24 maxNumberStored:v23 timeResolutionInSeconds:v22 maxNumberOfRecipients:v21 maxNumberOfKeywords:v16 maxNumberOfAttachments:v20];
        }

        else
        {
          v13 = 0;
          v18 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)defaultPolicy
{
  v3 = [[_CDRateLimiter alloc] initWithCount:500 perPeriod:60.0];
  v4 = [a1 policyWithRateLimiter:v3 lifespanInSeconds:objc_msgSend(a1 maxNumberStored:"defaultLifespan") timeResolutionInSeconds:objc_msgSend(a1 maxNumberOfRecipients:"defaultMaxNumberStored") maxNumberOfKeywords:objc_msgSend(a1 maxNumberOfAttachments:{"defaultTimeResolutionInSeconds"), objc_msgSend(a1, "defaultMaxNumberOfRecipients"), objc_msgSend(a1, "defaultMaxNumberOfKeywords"), objc_msgSend(a1, "defaultMaxNumberOfAttachments")}];

  return v4;
}

+ (id)defaultPolicyForEmail
{
  v2 = [a1 defaultPolicy];
  v3 = [[_CDRateLimiter alloc] initWithCount:5000 perPeriod:60.0];
  [v2 setRateLimiter:v3];

  [v2 setTimeResolutionInSeconds:3600];
  [v2 setMaxNumberOfKeywords:0];

  return v2;
}

+ (id)defaultPolicyForMeetings
{
  v2 = [a1 defaultPolicy];
  v3 = [[_CDRateLimiter alloc] initWithCount:1000 perPeriod:60.0];
  [v2 setRateLimiter:v3];

  return v2;
}

+ (id)defaultPolicyForMessages
{
  v2 = [a1 defaultPolicy];
  v3 = [[_CDRateLimiter alloc] initWithCount:2000 perPeriod:60.0];
  [v2 setRateLimiter:v3];

  [v2 setMaxNumberOfKeywords:0];

  return v2;
}

+ (id)defaultPolicyForCalls
{
  v2 = [a1 defaultPolicy];
  [v2 setMaxNumberOfKeywords:0];

  return v2;
}

+ (id)specialPolicyForFirstPartyApps
{
  v2 = [a1 defaultPolicy];
  v3 = [[_CDRateLimiter alloc] initWithCount:2000 perPeriod:60.0];
  [v2 setRateLimiter:v3];

  [v2 setLifespanInSeconds:14515200];
  [v2 setMaxNumberStored:50000];

  return v2;
}

@end