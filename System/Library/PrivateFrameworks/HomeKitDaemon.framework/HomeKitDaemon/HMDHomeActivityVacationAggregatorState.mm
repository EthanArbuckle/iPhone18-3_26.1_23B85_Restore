@interface HMDHomeActivityVacationAggregatorState
- (BOOL)isEqual:(id)equal;
- (HMDHomeActivityVacationAggregatorState)initWithType:(unint64_t)type changedReason:(unint64_t)reason;
- (id)attributeDescriptions;
@end

@implementation HMDHomeActivityVacationAggregatorState

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
  if (v6)
  {
    type = [(HMDHomeActivityVacationAggregatorState *)self type];
    v8 = type == [v6 type];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)attributeDescriptions
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = HMDHomeActivityVacationAggregatorStateTypeAsString([(HMDHomeActivityVacationAggregatorState *)self type]);
  v5 = [v3 initWithName:@"Type" value:v4];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = HMDHomeActivityVacationStateChangeReasonAsString([(HMDHomeActivityVacationAggregatorState *)self changedReason]);
  v8 = [v6 initWithName:@"Changed Reason" value:v7];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (HMDHomeActivityVacationAggregatorState)initWithType:(unint64_t)type changedReason:(unint64_t)reason
{
  if (reason)
  {
    v9.receiver = self;
    v9.super_class = HMDHomeActivityVacationAggregatorState;
    result = [(HMDHomeActivityVacationAggregatorState *)&v9 init];
    if (result)
    {
      result->_type = type;
      result->_changedReason = reason;
    }
  }

  else
  {
    v7 = _HMFPreconditionFailure();
    [(HMDCharacteristicNotificationRegistration *)v7 .cxx_destruct];
  }

  return result;
}

@end