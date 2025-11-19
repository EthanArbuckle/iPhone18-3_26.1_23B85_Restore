@interface HMDCoordinationPrimaryElectionLogEvent
- (HMDCoordinationPrimaryElectionLogEvent)initWithIsPrimary:(BOOL)a3 didChangePrimary:(BOOL)a4;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDCoordinationPrimaryElectionLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if ([(HMDCoordinationPrimaryElectionLogEvent *)self isPrimary])
  {
    v4 = &unk_283E715D0;
  }

  else
  {
    v4 = &unk_283E715E8;
  }

  [v3 setObject:v4 forKeyedSubscript:@"isPrimary"];
  if ([(HMDCoordinationPrimaryElectionLogEvent *)self didChangePrimary])
  {
    v5 = &unk_283E715D0;
  }

  else
  {
    v5 = &unk_283E715E8;
  }

  [v3 setObject:v5 forKeyedSubscript:@"didChangePrimary"];
  v6 = [v3 copy];

  return v6;
}

- (HMDCoordinationPrimaryElectionLogEvent)initWithIsPrimary:(BOOL)a3 didChangePrimary:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = HMDCoordinationPrimaryElectionLogEvent;
  result = [(HMMLogEvent *)&v7 init];
  if (result)
  {
    result->_isPrimary = a3;
    result->_didChangePrimary = a4;
  }

  return result;
}

@end