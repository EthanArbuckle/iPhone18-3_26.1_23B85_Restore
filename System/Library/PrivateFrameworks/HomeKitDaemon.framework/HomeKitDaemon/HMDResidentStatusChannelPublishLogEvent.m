@interface HMDResidentStatusChannelPublishLogEvent
+ (id)denominatorEvent:(id)a3;
- (HMDResidentStatusChannelPublishLogEvent)initWithHomeUUID:(id)a3 publishReason:(int64_t)a4 count:(int64_t)a5;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDResidentStatusChannelPublishLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDResidentStatusChannelPublishLogEvent count](self, "count")}];
  [v3 setObject:v4 forKeyedSubscript:@"publishReasonCountAny"];

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

    [v3 setObject:v5 forKeyedSubscript:@"publishReasonCountUnknown"];
    if ([(HMDResidentStatusChannelPublishLogEvent *)self publishReason]== 1)
    {
      v6 = &unk_283E74FF0;
    }

    else
    {
      v6 = &unk_283E75008;
    }

    [v3 setObject:v6 forKeyedSubscript:@"publishReasonCountResident"];
    if ([(HMDResidentStatusChannelPublishLogEvent *)self publishReason]== 2)
    {
      v7 = &unk_283E74FF0;
    }

    else
    {
      v7 = &unk_283E75008;
    }

    [v3 setObject:v7 forKeyedSubscript:@"publishReasonCountBecamePrimary"];
    if ([(HMDResidentStatusChannelPublishLogEvent *)self publishReason]== 3)
    {
      v8 = &unk_283E74FF0;
    }

    else
    {
      v8 = &unk_283E75008;
    }

    [v3 setObject:v8 forKeyedSubscript:@"publishReasonCountLostPrimary"];
    if ([(HMDResidentStatusChannelPublishLogEvent *)self publishReason]== 4)
    {
      v9 = &unk_283E74FF0;
    }

    else
    {
      v9 = &unk_283E75008;
    }

    [v3 setObject:v9 forKeyedSubscript:@"publishReasonCountPreferredResidentsListUpdate"];
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDResidentStatusChannelPublishLogEvent publishReason](self, "publishReason")}];
    [v3 setObject:v10 forKeyedSubscript:@"publishReason"];
  }

  v11 = [v3 copy];

  return v11;
}

- (HMDResidentStatusChannelPublishLogEvent)initWithHomeUUID:(id)a3 publishReason:(int64_t)a4 count:(int64_t)a5
{
  v8.receiver = self;
  v8.super_class = HMDResidentStatusChannelPublishLogEvent;
  result = [(HMMHomeLogEvent *)&v8 initWithHomeUUID:a3];
  if (result)
  {
    result->_publishReason = a4;
    result->_count = a5;
  }

  return result;
}

+ (id)denominatorEvent:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithHomeUUID:v3 publishReason:0 count:0];

  return v4;
}

@end