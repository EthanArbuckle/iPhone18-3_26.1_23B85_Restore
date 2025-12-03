@interface HMDRVCOperationCompletionLogEvent
+ (id)eventWithErrorCode:(id)code totalOperationalTime:(id)time;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDRVCOperationCompletionLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  totalOperationalTime = [(HMDRVCOperationCompletionLogEvent *)self totalOperationalTime];
  [dictionary setObject:totalOperationalTime forKeyedSubscript:@"totalOperationalTime"];

  errorCode = [(HMDRVCOperationCompletionLogEvent *)self errorCode];
  [dictionary setObject:errorCode forKeyedSubscript:@"errorCode"];

  v6 = [dictionary copy];

  return v6;
}

+ (id)eventWithErrorCode:(id)code totalOperationalTime:(id)time
{
  timeCopy = time;
  codeCopy = code;
  v7 = objc_alloc_init(HMDRVCOperationCompletionLogEvent);
  [(HMDRVCOperationCompletionLogEvent *)v7 setErrorCode:codeCopy];

  [(HMDRVCOperationCompletionLogEvent *)v7 setTotalOperationalTime:timeCopy];

  return v7;
}

@end