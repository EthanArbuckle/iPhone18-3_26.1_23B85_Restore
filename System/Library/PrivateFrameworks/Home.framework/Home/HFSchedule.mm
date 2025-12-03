@interface HFSchedule
- (HFSchedule)initWithScheduleRules:(id)rules;
- (id)allWeekDayRules;
- (id)allYearDayRules;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation HFSchedule

- (HFSchedule)initWithScheduleRules:(id)rules
{
  rulesCopy = rules;
  if (!rulesCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFSchedule.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"rules"}];
  }

  v11.receiver = self;
  v11.super_class = HFSchedule;
  v7 = [(HFSchedule *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_rules, rules);
  }

  return v8;
}

- (id)allYearDayRules
{
  rules = [(HFSchedule *)self rules];
  v3 = [rules na_filter:&__block_literal_global_103];

  return v3;
}

- (id)allWeekDayRules
{
  rules = [(HFSchedule *)self rules];
  v3 = [rules na_filter:&__block_literal_global_9_4];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  rules = [(HFSchedule *)self rules];
  v6 = [rules copy];
  v7 = v4[1];
  v4[1] = v6;

  return v4;
}

- (id)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  rules = [(HFSchedule *)self rules];
  v5 = [v3 appendObject:rules withName:@"rules"];

  build = [v3 build];

  return build;
}

@end