@interface HMDUserActivityType6StateEvent
- (HMDUserActivityType6StateEvent)initWithState:(unint64_t)state stateEnd:(id)end changedTimestamp:(id)timestamp withReason:(unint64_t)reason;
- (id)attributeDescriptions;
@end

@implementation HMDUserActivityType6StateEvent

- (id)attributeDescriptions
{
  v18[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = HMDUserComingHomeStateAsString([(HMDUserActivityType6StateEvent *)self state]);
  v5 = [v3 initWithName:@"State" value:v4];
  v18[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  stateEnd = [(HMDUserActivityType6StateEvent *)self stateEnd];
  v8 = [v6 initWithName:@"State End" value:stateEnd];
  v18[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  changedTimestamp = [(HMDUserActivityType6StateEvent *)self changedTimestamp];
  v11 = [v9 initWithName:@"Changed Timestamp" value:changedTimestamp];
  v18[2] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  v13 = HMDUserActivityStateDetectorUpdateReasonAsString([(HMDUserActivityType6StateEvent *)self reason]);
  v14 = [v12 initWithName:@"Reason" value:v13];
  v18[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:4];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (HMDUserActivityType6StateEvent)initWithState:(unint64_t)state stateEnd:(id)end changedTimestamp:(id)timestamp withReason:(unint64_t)reason
{
  endCopy = end;
  timestampCopy = timestamp;
  v16.receiver = self;
  v16.super_class = HMDUserActivityType6StateEvent;
  v13 = [(HMDUserActivityType6StateEvent *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_state = state;
    objc_storeStrong(&v13->_stateEnd, end);
    objc_storeStrong(&v14->_changedTimestamp, timestamp);
    v14->_reason = reason;
  }

  return v14;
}

@end