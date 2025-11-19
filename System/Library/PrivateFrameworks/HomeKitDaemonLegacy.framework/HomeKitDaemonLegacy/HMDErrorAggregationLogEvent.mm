@interface HMDErrorAggregationLogEvent
+ (id)createErrorEventForRequestGroup:(id)a3 errorString:(id)a4 errorCount:(id)a5;
+ (id)createSummaryEventForRequestGroup:(id)a3 totalErrorCount:(id)a4 totalEventCount:(id)a5;
- (HMDErrorAggregationLogEvent)initWithEventGroupName:(id)a3 errorString:(id)a4 errorCount:(id)a5 eventCount:(id)a6;
@end

@implementation HMDErrorAggregationLogEvent

- (HMDErrorAggregationLogEvent)initWithEventGroupName:(id)a3 errorString:(id)a4 errorCount:(id)a5 eventCount:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v20.receiver = self;
  v20.super_class = HMDErrorAggregationLogEvent;
  v14 = [(HMMLogEvent *)&v20 init];
  if (v14)
  {
    v15 = [MEMORY[0x277CBEB38] dictionary];
    [v15 setObject:v11 forKeyedSubscript:@"errorString"];
    [v15 setObject:v10 forKeyedSubscript:@"eventGroupName"];
    [v15 setObject:v12 forKeyedSubscript:@"errorCount"];
    if (v13)
    {
      [v15 setObject:v13 forKeyedSubscript:@"eventCount"];
      if ([v13 intValue] >= 1)
      {
        v16 = [MEMORY[0x277CCABB0] numberWithInt:{((100 * (objc_msgSend(v13, "intValue") - objc_msgSend(v12, "intValue"))) / objc_msgSend(v13, "intValue"))}];
        [v15 setObject:v16 forKeyedSubscript:@"successRate"];
      }
    }

    v17 = [v15 copy];
    coreAnalyticsSerializedEvent = v14->_coreAnalyticsSerializedEvent;
    v14->_coreAnalyticsSerializedEvent = v17;
  }

  return v14;
}

+ (id)createErrorEventForRequestGroup:(id)a3 errorString:(id)a4 errorCount:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[HMDErrorAggregationLogEvent alloc] initWithEventGroupName:v9 errorString:v8 errorCount:v7 eventCount:0];

  return v10;
}

+ (id)createSummaryEventForRequestGroup:(id)a3 totalErrorCount:(id)a4 totalEventCount:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[HMDErrorAggregationLogEvent alloc] initWithEventGroupName:v9 errorString:@"Summary" errorCount:v8 eventCount:v7];

  return v10;
}

@end