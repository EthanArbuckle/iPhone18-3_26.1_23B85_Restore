@interface HMDErrorAggregationLogEvent
+ (id)createErrorEventForRequestGroup:(id)group errorString:(id)string errorCount:(id)count;
+ (id)createSummaryEventForRequestGroup:(id)group totalErrorCount:(id)count totalEventCount:(id)eventCount;
- (HMDErrorAggregationLogEvent)initWithEventGroupName:(id)name errorString:(id)string errorCount:(id)count eventCount:(id)eventCount;
@end

@implementation HMDErrorAggregationLogEvent

- (HMDErrorAggregationLogEvent)initWithEventGroupName:(id)name errorString:(id)string errorCount:(id)count eventCount:(id)eventCount
{
  nameCopy = name;
  stringCopy = string;
  countCopy = count;
  eventCountCopy = eventCount;
  v20.receiver = self;
  v20.super_class = HMDErrorAggregationLogEvent;
  v14 = [(HMMLogEvent *)&v20 init];
  if (v14)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [dictionary setObject:stringCopy forKeyedSubscript:@"errorString"];
    [dictionary setObject:nameCopy forKeyedSubscript:@"eventGroupName"];
    [dictionary setObject:countCopy forKeyedSubscript:@"errorCount"];
    if (eventCountCopy)
    {
      [dictionary setObject:eventCountCopy forKeyedSubscript:@"eventCount"];
      if ([eventCountCopy intValue] >= 1)
      {
        v16 = [MEMORY[0x277CCABB0] numberWithInt:{((100 * (objc_msgSend(eventCountCopy, "intValue") - objc_msgSend(countCopy, "intValue"))) / objc_msgSend(eventCountCopy, "intValue"))}];
        [dictionary setObject:v16 forKeyedSubscript:@"successRate"];
      }
    }

    v17 = [dictionary copy];
    coreAnalyticsSerializedEvent = v14->_coreAnalyticsSerializedEvent;
    v14->_coreAnalyticsSerializedEvent = v17;
  }

  return v14;
}

+ (id)createErrorEventForRequestGroup:(id)group errorString:(id)string errorCount:(id)count
{
  countCopy = count;
  stringCopy = string;
  groupCopy = group;
  v10 = [[HMDErrorAggregationLogEvent alloc] initWithEventGroupName:groupCopy errorString:stringCopy errorCount:countCopy eventCount:0];

  return v10;
}

+ (id)createSummaryEventForRequestGroup:(id)group totalErrorCount:(id)count totalEventCount:(id)eventCount
{
  eventCountCopy = eventCount;
  countCopy = count;
  groupCopy = group;
  v10 = [[HMDErrorAggregationLogEvent alloc] initWithEventGroupName:groupCopy errorString:@"Summary" errorCount:countCopy eventCount:eventCountCopy];

  return v10;
}

@end