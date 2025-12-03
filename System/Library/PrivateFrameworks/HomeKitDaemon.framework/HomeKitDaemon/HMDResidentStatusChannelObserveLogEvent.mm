@interface HMDResidentStatusChannelObserveLogEvent
+ (id)denominatorEvent:(id)event;
- (HMDResidentStatusChannelObserveLogEvent)initWithHomeUUID:(id)d didLoseStatuses:(BOOL)statuses didAddStatuses:(BOOL)addStatuses didUpdateStatuses:(BOOL)updateStatuses didFindPrimary:(BOOL)primary didPrimaryChange:(BOOL)change isStatusesEmpty:(BOOL)empty count:(int64_t)self0;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDResidentStatusChannelObserveLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDResidentStatusChannelObserveLogEvent count](self, "count")}];
  [dictionary setObject:v4 forKeyedSubscript:@"countObserveAny"];

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

    [dictionary setObject:v5 forKeyedSubscript:@"countLostStatuses"];
    if ([(HMDResidentStatusChannelObserveLogEvent *)self didAddStatuses])
    {
      v6 = &unk_283E74FF0;
    }

    else
    {
      v6 = &unk_283E75008;
    }

    [dictionary setObject:v6 forKeyedSubscript:@"countAddedStatuses"];
    if ([(HMDResidentStatusChannelObserveLogEvent *)self didUpdateStatuses])
    {
      v7 = &unk_283E74FF0;
    }

    else
    {
      v7 = &unk_283E75008;
    }

    [dictionary setObject:v7 forKeyedSubscript:@"countUpdatedStatuses"];
    if ([(HMDResidentStatusChannelObserveLogEvent *)self didFindPrimary])
    {
      v8 = &unk_283E75008;
    }

    else
    {
      v8 = &unk_283E74FF0;
    }

    [dictionary setObject:v8 forKeyedSubscript:@"countPrimaryNotFound"];
    if ([(HMDResidentStatusChannelObserveLogEvent *)self didPrimaryChange])
    {
      v9 = &unk_283E74FF0;
    }

    else
    {
      v9 = &unk_283E75008;
    }

    [dictionary setObject:v9 forKeyedSubscript:@"countPrimaryChanged"];
    if ([(HMDResidentStatusChannelObserveLogEvent *)self isStatusesEmpty])
    {
      v10 = &unk_283E74FF0;
    }

    else
    {
      v10 = &unk_283E75008;
    }

    [dictionary setObject:v10 forKeyedSubscript:@"countEmptyStatuses"];
  }

  v11 = [dictionary copy];

  return v11;
}

- (HMDResidentStatusChannelObserveLogEvent)initWithHomeUUID:(id)d didLoseStatuses:(BOOL)statuses didAddStatuses:(BOOL)addStatuses didUpdateStatuses:(BOOL)updateStatuses didFindPrimary:(BOOL)primary didPrimaryChange:(BOOL)change isStatusesEmpty:(BOOL)empty count:(int64_t)self0
{
  v16.receiver = self;
  v16.super_class = HMDResidentStatusChannelObserveLogEvent;
  result = [(HMMHomeLogEvent *)&v16 initWithHomeUUID:d];
  if (result)
  {
    result->_didLoseStatuses = statuses;
    result->_didAddStatuses = addStatuses;
    result->_didUpdateStatuses = updateStatuses;
    result->_didFindPrimary = primary;
    result->_didPrimaryChange = change;
    result->_isStatusesEmpty = empty;
    result->_count = count;
  }

  return result;
}

+ (id)denominatorEvent:(id)event
{
  eventCopy = event;
  LOBYTE(v6) = 0;
  v4 = [objc_alloc(objc_opt_class()) initWithHomeUUID:eventCopy didLoseStatuses:0 didAddStatuses:0 didUpdateStatuses:0 didFindPrimary:0 didPrimaryChange:0 isStatusesEmpty:v6 count:0];

  return v4;
}

@end