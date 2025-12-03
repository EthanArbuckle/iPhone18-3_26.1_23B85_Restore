@interface HMDHomeActivityComingHomeAggregatorState
+ (id)comingHomeWithEstimatedEndDate:(id)date;
+ (id)notComingHome;
- (BOOL)isEqual:(id)equal;
- (HMDHomeActivityComingHomeAggregatorState)initWithType:(unint64_t)type transitionalStateEndDate:(id)date;
- (id)attributeDescriptions;
@end

@implementation HMDHomeActivityComingHomeAggregatorState

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
  if (v6 && (v7 = -[HMDHomeActivityComingHomeAggregatorState type](self, "type"), v7 == [v6 type]))
  {
    transitionalStateEndDate = [v6 transitionalStateEndDate];
    transitionalStateEndDate2 = [v6 transitionalStateEndDate];
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
  type = [(HMDHomeActivityComingHomeAggregatorState *)self type];
  if (type)
  {
    if (type == 1)
    {
      v5 = @"HMDHomeActivityComingHomeAggregatorStateTypeComingHome";
    }

    else
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown coming home aggregator state type %tu", type];
    }
  }

  else
  {
    v5 = @"HMDHomeActivityComingHomeAggregatorStateTypeNotComingHome";
  }

  v6 = [v3 initWithName:@"Type" value:v5];
  v14[0] = v6;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  transitionalStateEndDate = [(HMDHomeActivityComingHomeAggregatorState *)self transitionalStateEndDate];
  hmf_localTimeDescription = [transitionalStateEndDate hmf_localTimeDescription];
  v10 = [v7 initWithName:@"Transitional State End Date" value:hmf_localTimeDescription];
  v14[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (HMDHomeActivityComingHomeAggregatorState)initWithType:(unint64_t)type transitionalStateEndDate:(id)date
{
  dateCopy = date;
  v12.receiver = self;
  v12.super_class = HMDHomeActivityComingHomeAggregatorState;
  v7 = [(HMDHomeActivityComingHomeAggregatorState *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_type = type;
    v9 = [dateCopy copy];
    transitionalStateEndDate = v8->_transitionalStateEndDate;
    v8->_transitionalStateEndDate = v9;
  }

  return v8;
}

+ (id)comingHomeWithEstimatedEndDate:(id)date
{
  dateCopy = date;
  v4 = [[HMDHomeActivityComingHomeAggregatorState alloc] initWithType:1 transitionalStateEndDate:dateCopy];

  return v4;
}

+ (id)notComingHome
{
  v2 = [[HMDHomeActivityComingHomeAggregatorState alloc] initWithType:0 transitionalStateEndDate:0];

  return v2;
}

@end