@interface HMDRVCOperationCompletionLogEvent
+ (id)eventWithErrorCode:(id)a3 totalOperationalTime:(id)a4;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDRVCOperationCompletionLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(HMDRVCOperationCompletionLogEvent *)self totalOperationalTime];
  [v3 setObject:v4 forKeyedSubscript:@"totalOperationalTime"];

  v5 = [(HMDRVCOperationCompletionLogEvent *)self errorCode];
  [v3 setObject:v5 forKeyedSubscript:@"errorCode"];

  v6 = [v3 copy];

  return v6;
}

+ (id)eventWithErrorCode:(id)a3 totalOperationalTime:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(HMDRVCOperationCompletionLogEvent);
  [(HMDRVCOperationCompletionLogEvent *)v7 setErrorCode:v6];

  [(HMDRVCOperationCompletionLogEvent *)v7 setTotalOperationalTime:v5];

  return v7;
}

@end