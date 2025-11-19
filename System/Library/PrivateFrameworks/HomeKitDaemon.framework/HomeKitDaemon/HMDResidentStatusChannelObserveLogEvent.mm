@interface HMDResidentStatusChannelObserveLogEvent
+ (id)denominatorEvent:(id)a3;
- (HMDResidentStatusChannelObserveLogEvent)initWithHomeUUID:(id)a3 didLoseStatuses:(BOOL)a4 didAddStatuses:(BOOL)a5 didUpdateStatuses:(BOOL)a6 didFindPrimary:(BOOL)a7 didPrimaryChange:(BOOL)a8 isStatusesEmpty:(BOOL)a9 count:(int64_t)a10;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDResidentStatusChannelObserveLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDResidentStatusChannelObserveLogEvent count](self, "count")}];
  [v3 setObject:v4 forKeyedSubscript:@"countObserveAny"];

  if ([(HMDResidentStatusChannelObserveLogEvent *)self count])
  {
    if ([(HMDResidentStatusChannelObserveLogEvent *)self didLoseStatuses])
    {
      v5 = &unk_283E74FF0;
    }

    else
    {
      v5 = &unk_283E75008;
    }

    [v3 setObject:v5 forKeyedSubscript:@"countLostStatuses"];
    if ([(HMDResidentStatusChannelObserveLogEvent *)self didAddStatuses])
    {
      v6 = &unk_283E74FF0;
    }

    else
    {
      v6 = &unk_283E75008;
    }

    [v3 setObject:v6 forKeyedSubscript:@"countAddedStatuses"];
    if ([(HMDResidentStatusChannelObserveLogEvent *)self didUpdateStatuses])
    {
      v7 = &unk_283E74FF0;
    }

    else
    {
      v7 = &unk_283E75008;
    }

    [v3 setObject:v7 forKeyedSubscript:@"countUpdatedStatuses"];
    if ([(HMDResidentStatusChannelObserveLogEvent *)self didFindPrimary])
    {
      v8 = &unk_283E75008;
    }

    else
    {
      v8 = &unk_283E74FF0;
    }

    [v3 setObject:v8 forKeyedSubscript:@"countPrimaryNotFound"];
    if ([(HMDResidentStatusChannelObserveLogEvent *)self didPrimaryChange])
    {
      v9 = &unk_283E74FF0;
    }

    else
    {
      v9 = &unk_283E75008;
    }

    [v3 setObject:v9 forKeyedSubscript:@"countPrimaryChanged"];
    if ([(HMDResidentStatusChannelObserveLogEvent *)self isStatusesEmpty])
    {
      v10 = &unk_283E74FF0;
    }

    else
    {
      v10 = &unk_283E75008;
    }

    [v3 setObject:v10 forKeyedSubscript:@"countEmptyStatuses"];
  }

  v11 = [v3 copy];

  return v11;
}

- (HMDResidentStatusChannelObserveLogEvent)initWithHomeUUID:(id)a3 didLoseStatuses:(BOOL)a4 didAddStatuses:(BOOL)a5 didUpdateStatuses:(BOOL)a6 didFindPrimary:(BOOL)a7 didPrimaryChange:(BOOL)a8 isStatusesEmpty:(BOOL)a9 count:(int64_t)a10
{
  v16.receiver = self;
  v16.super_class = HMDResidentStatusChannelObserveLogEvent;
  result = [(HMMHomeLogEvent *)&v16 initWithHomeUUID:a3];
  if (result)
  {
    result->_didLoseStatuses = a4;
    result->_didAddStatuses = a5;
    result->_didUpdateStatuses = a6;
    result->_didFindPrimary = a7;
    result->_didPrimaryChange = a8;
    result->_isStatusesEmpty = a9;
    result->_count = a10;
  }

  return result;
}

+ (id)denominatorEvent:(id)a3
{
  v3 = a3;
  LOBYTE(v6) = 0;
  v4 = [objc_alloc(objc_opt_class()) initWithHomeUUID:v3 didLoseStatuses:0 didAddStatuses:0 didUpdateStatuses:0 didFindPrimary:0 didPrimaryChange:0 isStatusesEmpty:v6 count:0];

  return v4;
}

@end