@interface HMDHomeActivityVacationAggregatorState
- (BOOL)isEqual:(id)a3;
- (HMDHomeActivityVacationAggregatorState)initWithType:(unint64_t)a3 changedReason:(unint64_t)a4;
- (id)attributeDescriptions;
@end

@implementation HMDHomeActivityVacationAggregatorState

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
  if (v6)
  {
    v7 = [(HMDHomeActivityVacationAggregatorState *)self type];
    v8 = v7 == [v6 type];
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

- (HMDHomeActivityVacationAggregatorState)initWithType:(unint64_t)a3 changedReason:(unint64_t)a4
{
  if (a4)
  {
    v9.receiver = self;
    v9.super_class = HMDHomeActivityVacationAggregatorState;
    result = [(HMDHomeActivityVacationAggregatorState *)&v9 init];
    if (result)
    {
      result->_type = a3;
      result->_changedReason = a4;
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