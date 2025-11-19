@interface HMDHomeActivityComingHomeAggregatorState
+ (id)comingHomeWithEstimatedEndDate:(id)a3;
+ (id)notComingHome;
- (BOOL)isEqual:(id)a3;
- (HMDHomeActivityComingHomeAggregatorState)initWithType:(unint64_t)a3 transitionalStateEndDate:(id)a4;
- (id)attributeDescriptions;
@end

@implementation HMDHomeActivityComingHomeAggregatorState

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
  if (v6 && (v7 = -[HMDHomeActivityComingHomeAggregatorState type](self, "type"), v7 == [v6 type]))
  {
    v8 = [v6 transitionalStateEndDate];
    v9 = [v6 transitionalStateEndDate];
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
  v4 = [(HMDHomeActivityComingHomeAggregatorState *)self type];
  if (v4)
  {
    if (v4 == 1)
    {
      v5 = @"HMDHomeActivityComingHomeAggregatorStateTypeComingHome";
    }

    else
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown coming home aggregator state type %tu", v4];
    }
  }

  else
  {
    v5 = @"HMDHomeActivityComingHomeAggregatorStateTypeNotComingHome";
  }

  v6 = [v3 initWithName:@"Type" value:v5];
  v14[0] = v6;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  v8 = [(HMDHomeActivityComingHomeAggregatorState *)self transitionalStateEndDate];
  v9 = [v8 hmf_localTimeDescription];
  v10 = [v7 initWithName:@"Transitional State End Date" value:v9];
  v14[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (HMDHomeActivityComingHomeAggregatorState)initWithType:(unint64_t)a3 transitionalStateEndDate:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = HMDHomeActivityComingHomeAggregatorState;
  v7 = [(HMDHomeActivityComingHomeAggregatorState *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_type = a3;
    v9 = [v6 copy];
    transitionalStateEndDate = v8->_transitionalStateEndDate;
    v8->_transitionalStateEndDate = v9;
  }

  return v8;
}

+ (id)comingHomeWithEstimatedEndDate:(id)a3
{
  v3 = a3;
  v4 = [[HMDHomeActivityComingHomeAggregatorState alloc] initWithType:1 transitionalStateEndDate:v3];

  return v4;
}

+ (id)notComingHome
{
  v2 = [[HMDHomeActivityComingHomeAggregatorState alloc] initWithType:0 transitionalStateEndDate:0];

  return v2;
}

@end