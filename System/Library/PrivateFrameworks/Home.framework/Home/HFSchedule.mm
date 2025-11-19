@interface HFSchedule
- (HFSchedule)initWithScheduleRules:(id)a3;
- (id)allWeekDayRules;
- (id)allYearDayRules;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation HFSchedule

- (HFSchedule)initWithScheduleRules:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"HFSchedule.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"rules"}];
  }

  v11.receiver = self;
  v11.super_class = HFSchedule;
  v7 = [(HFSchedule *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_rules, a3);
  }

  return v8;
}

- (id)allYearDayRules
{
  v2 = [(HFSchedule *)self rules];
  v3 = [v2 na_filter:&__block_literal_global_103];

  return v3;
}

- (id)allWeekDayRules
{
  v2 = [(HFSchedule *)self rules];
  v3 = [v2 na_filter:&__block_literal_global_9_4];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(HFSchedule *)self rules];
  v6 = [v5 copy];
  v7 = v4[1];
  v4[1] = v6;

  return v4;
}

- (id)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  v4 = [(HFSchedule *)self rules];
  v5 = [v3 appendObject:v4 withName:@"rules"];

  v6 = [v3 build];

  return v6;
}

@end