@interface _CDInteractionPolicy
+ (id)defaultPolicy;
+ (id)defaultPolicyForCalls;
+ (id)defaultPolicyForEmail;
+ (id)defaultPolicyForMeetings;
+ (id)defaultPolicyForMessages;
+ (id)policyFromDictionary:(id)dictionary;
+ (id)policyWithRateLimiter:(id)limiter lifespanInSeconds:(unint64_t)seconds maxNumberStored:(unint64_t)stored timeResolutionInSeconds:(unint64_t)inSeconds maxNumberOfRecipients:(unint64_t)recipients maxNumberOfKeywords:(unint64_t)keywords maxNumberOfAttachments:(unint64_t)attachments;
+ (id)specialPolicyForFirstPartyApps;
- (_CDInteractionPolicy)initWithRateLimiter:(id)limiter lifespanInSeconds:(unint64_t)seconds maxNumberStored:(unint64_t)stored timeResolutionInSeconds:(unint64_t)inSeconds maxNumberOfRecipients:(unint64_t)recipients maxNumberOfKeywords:(unint64_t)keywords maxNumberOfAttachments:(unint64_t)attachments;
- (id)description;
@end

@implementation _CDInteractionPolicy

+ (id)policyWithRateLimiter:(id)limiter lifespanInSeconds:(unint64_t)seconds maxNumberStored:(unint64_t)stored timeResolutionInSeconds:(unint64_t)inSeconds maxNumberOfRecipients:(unint64_t)recipients maxNumberOfKeywords:(unint64_t)keywords maxNumberOfAttachments:(unint64_t)attachments
{
  limiterCopy = limiter;
  v16 = [[self alloc] initWithRateLimiter:limiterCopy lifespanInSeconds:seconds maxNumberStored:stored timeResolutionInSeconds:inSeconds maxNumberOfRecipients:recipients maxNumberOfKeywords:keywords maxNumberOfAttachments:attachments];

  return v16;
}

- (_CDInteractionPolicy)initWithRateLimiter:(id)limiter lifespanInSeconds:(unint64_t)seconds maxNumberStored:(unint64_t)stored timeResolutionInSeconds:(unint64_t)inSeconds maxNumberOfRecipients:(unint64_t)recipients maxNumberOfKeywords:(unint64_t)keywords maxNumberOfAttachments:(unint64_t)attachments
{
  limiterCopy = limiter;
  v20.receiver = self;
  v20.super_class = _CDInteractionPolicy;
  v17 = [(_CDInteractionPolicy *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_rateLimiter, limiter);
    v18->_lifespanInSeconds = seconds;
    v18->_maxNumberStored = stored;
    v18->_timeResolutionInSeconds = inSeconds;
    v18->_maxNumberOfRecipients = recipients;
    v18->_maxNumberOfKeywords = keywords;
    v18->_maxNumberOfAttachments = attachments;
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
  rateLimiter = [(_CDInteractionPolicy *)self rateLimiter];
  v8 = [v6 numberWithInteger:{objc_msgSend(rateLimiter, "count")}];
  [v3 appendFormat:@"     rateLimitCount: %@\n", v8];

  v9 = MEMORY[0x1E696AD98];
  rateLimiter2 = [(_CDInteractionPolicy *)self rateLimiter];
  [rateLimiter2 period];
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

+ (id)policyFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [dictionaryCopy objectForKeyedSubscript:@"RateLimitCount"];
    v6 = [dictionaryCopy objectForKeyedSubscript:@"RateLimitPeriodInSecounds"];
    v27 = [dictionaryCopy objectForKeyedSubscript:@"LifespanInSeconds"];
    v7 = [dictionaryCopy objectForKeyedSubscript:@"MaxNumberStored"];
    v8 = [dictionaryCopy objectForKeyedSubscript:@"TimeResolutionInSeconds"];
    v9 = [dictionaryCopy objectForKeyedSubscript:@"MaxNumberOfRecipients"];
    v10 = [dictionaryCopy objectForKeyedSubscript:@"MaxNumberOfKeywords"];
    v11 = [dictionaryCopy objectForKeyedSubscript:@"MaxNumberOfAttachments"];
    v12 = v11;
    v13 = 0;
    if (v5 && v6 && v27 && v7 && v8 && v9 && v10 && v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_isKindOfClass())
      {
        v25 = [_CDRateLimiter alloc];
        unsignedIntegerValue = [v5 unsignedIntegerValue];
        [v6 doubleValue];
        v15 = [(_CDRateLimiter *)v25 initWithCount:unsignedIntegerValue perPeriod:?];
        if (v15)
        {
          v26 = v15;
          unsignedIntegerValue2 = [v27 unsignedIntegerValue];
          unsignedIntegerValue3 = [v7 unsignedIntegerValue];
          unsignedIntegerValue4 = [v8 unsignedIntegerValue];
          unsignedIntegerValue5 = [v9 unsignedIntegerValue];
          unsignedIntegerValue6 = [v10 unsignedIntegerValue];
          unsignedIntegerValue7 = [v12 unsignedIntegerValue];
          selfCopy = self;
          v18 = v26;
          v13 = [selfCopy policyWithRateLimiter:v26 lifespanInSeconds:unsignedIntegerValue2 maxNumberStored:unsignedIntegerValue3 timeResolutionInSeconds:unsignedIntegerValue4 maxNumberOfRecipients:unsignedIntegerValue5 maxNumberOfKeywords:unsignedIntegerValue6 maxNumberOfAttachments:unsignedIntegerValue7];
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
  v4 = [self policyWithRateLimiter:v3 lifespanInSeconds:objc_msgSend(self maxNumberStored:"defaultLifespan") timeResolutionInSeconds:objc_msgSend(self maxNumberOfRecipients:"defaultMaxNumberStored") maxNumberOfKeywords:objc_msgSend(self maxNumberOfAttachments:{"defaultTimeResolutionInSeconds"), objc_msgSend(self, "defaultMaxNumberOfRecipients"), objc_msgSend(self, "defaultMaxNumberOfKeywords"), objc_msgSend(self, "defaultMaxNumberOfAttachments")}];

  return v4;
}

+ (id)defaultPolicyForEmail
{
  defaultPolicy = [self defaultPolicy];
  v3 = [[_CDRateLimiter alloc] initWithCount:5000 perPeriod:60.0];
  [defaultPolicy setRateLimiter:v3];

  [defaultPolicy setTimeResolutionInSeconds:3600];
  [defaultPolicy setMaxNumberOfKeywords:0];

  return defaultPolicy;
}

+ (id)defaultPolicyForMeetings
{
  defaultPolicy = [self defaultPolicy];
  v3 = [[_CDRateLimiter alloc] initWithCount:1000 perPeriod:60.0];
  [defaultPolicy setRateLimiter:v3];

  return defaultPolicy;
}

+ (id)defaultPolicyForMessages
{
  defaultPolicy = [self defaultPolicy];
  v3 = [[_CDRateLimiter alloc] initWithCount:2000 perPeriod:60.0];
  [defaultPolicy setRateLimiter:v3];

  [defaultPolicy setMaxNumberOfKeywords:0];

  return defaultPolicy;
}

+ (id)defaultPolicyForCalls
{
  defaultPolicy = [self defaultPolicy];
  [defaultPolicy setMaxNumberOfKeywords:0];

  return defaultPolicy;
}

+ (id)specialPolicyForFirstPartyApps
{
  defaultPolicy = [self defaultPolicy];
  v3 = [[_CDRateLimiter alloc] initWithCount:2000 perPeriod:60.0];
  [defaultPolicy setRateLimiter:v3];

  [defaultPolicy setLifespanInSeconds:14515200];
  [defaultPolicy setMaxNumberStored:50000];

  return defaultPolicy;
}

@end