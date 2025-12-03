@interface HMDMPCSessionControllerExecutionEvent
+ (id)identifier;
- (NSString)resultString;
- (id)coreAnalyticsEventDictionary;
@end

@implementation HMDMPCSessionControllerExecutionEvent

- (id)coreAnalyticsEventDictionary
{
  v7.receiver = self;
  v7.super_class = HMDMPCSessionControllerExecutionEvent;
  coreAnalyticsEventDictionary = [(HMDMediaPlaybackActionEvent *)&v7 coreAnalyticsEventDictionary];
  v4 = [coreAnalyticsEventDictionary mutableCopy];

  resultString = [(HMDMPCSessionControllerExecutionEvent *)self resultString];
  [v4 setObject:resultString forKeyedSubscript:@"executionResult"];

  return v4;
}

- (NSString)resultString
{
  error = [(HMMLogEvent *)self error];
  if (error)
  {
    v4 = error;
    didPartiallySucceed = [(HMDMPCSessionControllerExecutionEvent *)self didPartiallySucceed];

    if (didPartiallySucceed)
    {
      return @"Partial Success";
    }
  }

  error2 = [(HMMLogEvent *)self error];

  if (error2)
  {
    return @"Failure";
  }

  else
  {
    return @"Success";
  }
}

+ (id)identifier
{
  if (identifier_onceToken != -1)
  {
    dispatch_once(&identifier_onceToken, &__block_literal_global_187864);
  }

  v3 = identifier_identifier;

  return v3;
}

uint64_t __51__HMDMPCSessionControllerExecutionEvent_identifier__block_invoke()
{
  v0 = [MEMORY[0x277CCAD78] UUID];
  v1 = identifier_identifier;
  identifier_identifier = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end