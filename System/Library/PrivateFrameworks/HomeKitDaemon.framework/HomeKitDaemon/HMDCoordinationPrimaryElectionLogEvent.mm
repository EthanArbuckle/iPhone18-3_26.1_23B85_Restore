@interface HMDCoordinationPrimaryElectionLogEvent
- (HMDCoordinationPrimaryElectionLogEvent)initWithIsPrimary:(BOOL)primary didChangePrimary:(BOOL)changePrimary;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDCoordinationPrimaryElectionLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ([(HMDCoordinationPrimaryElectionLogEvent *)self isPrimary])
  {
    v4 = &unk_283E715D0;
  }

  else
  {
    v4 = &unk_283E715E8;
  }

  [dictionary setObject:v4 forKeyedSubscript:@"isPrimary"];
  if ([(HMDCoordinationPrimaryElectionLogEvent *)self didChangePrimary])
  {
    v5 = &unk_283E715D0;
  }

  else
  {
    v5 = &unk_283E715E8;
  }

  [dictionary setObject:v5 forKeyedSubscript:@"didChangePrimary"];
  v6 = [dictionary copy];

  return v6;
}

- (HMDCoordinationPrimaryElectionLogEvent)initWithIsPrimary:(BOOL)primary didChangePrimary:(BOOL)changePrimary
{
  v7.receiver = self;
  v7.super_class = HMDCoordinationPrimaryElectionLogEvent;
  result = [(HMMLogEvent *)&v7 init];
  if (result)
  {
    result->_isPrimary = primary;
    result->_didChangePrimary = changePrimary;
  }

  return result;
}

@end