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
  v3 = [(HMDMediaPlaybackActionEvent *)&v7 coreAnalyticsEventDictionary];
  v4 = [v3 mutableCopy];

  v5 = [(HMDMPCSessionControllerExecutionEvent *)self resultString];
  [v4 setObject:v5 forKeyedSubscript:@"executionResult"];

  return v4;
}

- (NSString)resultString
{
  v3 = [(HMMLogEvent *)self error];
  if (v3)
  {
    v4 = v3;
    v5 = [(HMDMPCSessionControllerExecutionEvent *)self didPartiallySucceed];

    if (v5)
    {
      return @"Partial Success";
    }
  }

  v7 = [(HMMLogEvent *)self error];

  if (v7)
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