@interface HMDHomeActivityHomeAwayAggregatorState
- (BOOL)isEqual:(id)a3;
- (HMDHomeActivityHomeAwayAggregatorState)initWithType:(unint64_t)a3 awayChangedTimestamp:(id)a4;
- (id)attributeDescriptions;
@end

@implementation HMDHomeActivityHomeAwayAggregatorState

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6 && (v7 = -[HMDHomeActivityHomeAwayAggregatorState type](self, "type"), v7 == [v6 type]))
  {
    v8 = [(HMDHomeActivityHomeAwayAggregatorState *)self awayChangedTimestamp];
    v9 = [v6 awayChangedTimestamp];
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
  v4 = [(HMDHomeActivityHomeAwayAggregatorState *)self type];
  if (v4 >= 3)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HomeAway aggregator state %tu", v4];
  }

  else
  {
    v5 = off_2786754C0[v4];
  }

  v6 = [v3 initWithName:@"Type" value:v5];
  v14[0] = v6;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  v8 = [(HMDHomeActivityHomeAwayAggregatorState *)self awayChangedTimestamp];
  v9 = [v8 hmf_localTimeDescription];
  v10 = [v7 initWithName:@"Away Changed Timestamp" value:v9];
  v14[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (HMDHomeActivityHomeAwayAggregatorState)initWithType:(unint64_t)a3 awayChangedTimestamp:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HMDHomeActivityHomeAwayAggregatorState;
  v8 = [(HMDHomeActivityHomeAwayAggregatorState *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = a3;
    objc_storeStrong(&v8->_awayChangedTimestamp, a4);
  }

  return v9;
}

@end