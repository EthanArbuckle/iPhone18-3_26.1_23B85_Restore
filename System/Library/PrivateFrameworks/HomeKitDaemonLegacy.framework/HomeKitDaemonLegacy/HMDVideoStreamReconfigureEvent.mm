@interface HMDVideoStreamReconfigureEvent
- (BOOL)isEqual:(id)a3;
- (HMDVideoStreamReconfigureEvent)initWithEventType:(unint64_t)a3;
- (id)description;
- (int64_t)compare:(id)a3;
- (unint64_t)hash;
@end

@implementation HMDVideoStreamReconfigureEvent

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDVideoStreamReconfigureEvent *)self eventType];
  if (v4 == 1)
  {
    v5 = @"HMDVideoStreamReconfigureEventTypeImprove";
  }

  else if (v4 == 2)
  {
    v5 = @"HMDVideoStreamReconfigureEventTypeDeteriorate";
  }

  else
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown reconfig event: %tu", v4];
  }

  v6 = [(HMDVideoStreamReconfigureEvent *)self timestamp];
  v7 = [v6 hmf_localTimeDescription];
  v8 = [v3 stringWithFormat:@"Event: %@, Timestamp %@", v5, v7];

  return v8;
}

- (unint64_t)hash
{
  v2 = [(HMDVideoStreamReconfigureEvent *)self timestamp];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(HMDVideoStreamReconfigureEvent *)self timestamp];
      v7 = [(HMDVideoStreamReconfigureEvent *)v5 timestamp];

      v8 = [v6 isEqual:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(HMDVideoStreamReconfigureEvent *)self timestamp];
  v6 = [v4 timestamp];

  v7 = [v5 compare:v6];
  return v7;
}

- (HMDVideoStreamReconfigureEvent)initWithEventType:(unint64_t)a3
{
  v9.receiver = self;
  v9.super_class = HMDVideoStreamReconfigureEvent;
  v4 = [(HMDVideoStreamReconfigureEvent *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_eventType = a3;
    v6 = [MEMORY[0x277CBEAA8] date];
    timestamp = v5->_timestamp;
    v5->_timestamp = v6;
  }

  return v5;
}

@end