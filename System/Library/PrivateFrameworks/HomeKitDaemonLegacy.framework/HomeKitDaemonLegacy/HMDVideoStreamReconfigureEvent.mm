@interface HMDVideoStreamReconfigureEvent
- (BOOL)isEqual:(id)equal;
- (HMDVideoStreamReconfigureEvent)initWithEventType:(unint64_t)type;
- (id)description;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
@end

@implementation HMDVideoStreamReconfigureEvent

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  eventType = [(HMDVideoStreamReconfigureEvent *)self eventType];
  if (eventType == 1)
  {
    v5 = @"HMDVideoStreamReconfigureEventTypeImprove";
  }

  else if (eventType == 2)
  {
    v5 = @"HMDVideoStreamReconfigureEventTypeDeteriorate";
  }

  else
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown reconfig event: %tu", eventType];
  }

  timestamp = [(HMDVideoStreamReconfigureEvent *)self timestamp];
  hmf_localTimeDescription = [timestamp hmf_localTimeDescription];
  v8 = [v3 stringWithFormat:@"Event: %@, Timestamp %@", v5, hmf_localTimeDescription];

  return v8;
}

- (unint64_t)hash
{
  timestamp = [(HMDVideoStreamReconfigureEvent *)self timestamp];
  v3 = [timestamp hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      timestamp = [(HMDVideoStreamReconfigureEvent *)self timestamp];
      timestamp2 = [(HMDVideoStreamReconfigureEvent *)v5 timestamp];

      v8 = [timestamp isEqual:timestamp2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  timestamp = [(HMDVideoStreamReconfigureEvent *)self timestamp];
  timestamp2 = [compareCopy timestamp];

  v7 = [timestamp compare:timestamp2];
  return v7;
}

- (HMDVideoStreamReconfigureEvent)initWithEventType:(unint64_t)type
{
  v9.receiver = self;
  v9.super_class = HMDVideoStreamReconfigureEvent;
  v4 = [(HMDVideoStreamReconfigureEvent *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_eventType = type;
    date = [MEMORY[0x277CBEAA8] date];
    timestamp = v5->_timestamp;
    v5->_timestamp = date;
  }

  return v5;
}

@end