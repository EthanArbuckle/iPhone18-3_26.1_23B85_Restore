@interface HMDResidentStatusChannelPublishLogEvent
+ (id)denominatorEvent:(id)event;
- (HMDResidentStatusChannelPublishLogEvent)initWithHomeUUID:(id)d publishReason:(int64_t)reason count:(int64_t)count;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDResidentStatusChannelPublishLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDResidentStatusChannelPublishLogEvent count](self, "count")}];
  [dictionary setObject:v4 forKeyedSubscript:@"publishReasonCountAny"];

  if ([(HMDResidentStatusChannelPublishLogEvent *)self count])
  {
    if ([(HMDResidentStatusChannelPublishLogEvent *)self publishReason])
    {
      v5 = &unk_283E75008;
    }

    else
    {
      v5 = &unk_283E74FF0;
    }

    [dictionary setObject:v5 forKeyedSubscript:@"publishReasonCountUnknown"];
    if ([(HMDResidentStatusChannelPublishLogEvent *)self publishReason]== 1)
    {
      v6 = &unk_283E74FF0;
    }

    else
    {
      v6 = &unk_283E75008;
    }

    [dictionary setObject:v6 forKeyedSubscript:@"publishReasonCountResident"];
    if ([(HMDResidentStatusChannelPublishLogEvent *)self publishReason]== 2)
    {
      v7 = &unk_283E74FF0;
    }

    else
    {
      v7 = &unk_283E75008;
    }

    [dictionary setObject:v7 forKeyedSubscript:@"publishReasonCountBecamePrimary"];
    if ([(HMDResidentStatusChannelPublishLogEvent *)self publishReason]== 3)
    {
      v8 = &unk_283E74FF0;
    }

    else
    {
      v8 = &unk_283E75008;
    }

    [dictionary setObject:v8 forKeyedSubscript:@"publishReasonCountLostPrimary"];
    if ([(HMDResidentStatusChannelPublishLogEvent *)self publishReason]== 4)
    {
      v9 = &unk_283E74FF0;
    }

    else
    {
      v9 = &unk_283E75008;
    }

    [dictionary setObject:v9 forKeyedSubscript:@"publishReasonCountPreferredResidentsListUpdate"];
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDResidentStatusChannelPublishLogEvent publishReason](self, "publishReason")}];
    [dictionary setObject:v10 forKeyedSubscript:@"publishReason"];
  }

  v11 = [dictionary copy];

  return v11;
}

- (HMDResidentStatusChannelPublishLogEvent)initWithHomeUUID:(id)d publishReason:(int64_t)reason count:(int64_t)count
{
  v8.receiver = self;
  v8.super_class = HMDResidentStatusChannelPublishLogEvent;
  result = [(HMMHomeLogEvent *)&v8 initWithHomeUUID:d];
  if (result)
  {
    result->_publishReason = reason;
    result->_count = count;
  }

  return result;
}

+ (id)denominatorEvent:(id)event
{
  eventCopy = event;
  v4 = [objc_alloc(objc_opt_class()) initWithHomeUUID:eventCopy publishReason:0 count:0];

  return v4;
}

@end