@interface HMDHomeActivityHomeAwayAggregatorState
- (BOOL)isEqual:(id)equal;
- (HMDHomeActivityHomeAwayAggregatorState)initWithType:(unint64_t)type awayChangedTimestamp:(id)timestamp;
- (id)attributeDescriptions;
@end

@implementation HMDHomeActivityHomeAwayAggregatorState

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6 && (v7 = -[HMDHomeActivityHomeAwayAggregatorState type](self, "type"), v7 == [v6 type]))
  {
    awayChangedTimestamp = [(HMDHomeActivityHomeAwayAggregatorState *)self awayChangedTimestamp];
    awayChangedTimestamp2 = [v6 awayChangedTimestamp];
    v10 = HMFEqualObjects();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)attributeDescriptions
{
  v14[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  type = [(HMDHomeActivityHomeAwayAggregatorState *)self type];
  if (type >= 3)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HomeAway aggregator state %tu", type];
  }

  else
  {
    v5 = off_2786754C0[type];
  }

  v6 = [v3 initWithName:@"Type" value:v5];
  v14[0] = v6;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  awayChangedTimestamp = [(HMDHomeActivityHomeAwayAggregatorState *)self awayChangedTimestamp];
  hmf_localTimeDescription = [awayChangedTimestamp hmf_localTimeDescription];
  v10 = [v7 initWithName:@"Away Changed Timestamp" value:hmf_localTimeDescription];
  v14[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (HMDHomeActivityHomeAwayAggregatorState)initWithType:(unint64_t)type awayChangedTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  v11.receiver = self;
  v11.super_class = HMDHomeActivityHomeAwayAggregatorState;
  v8 = [(HMDHomeActivityHomeAwayAggregatorState *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = type;
    objc_storeStrong(&v8->_awayChangedTimestamp, timestamp);
  }

  return v9;
}

@end