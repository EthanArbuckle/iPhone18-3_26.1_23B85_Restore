@interface HFScheduleRuleItem
- (BOOL)isEqual:(id)equal;
- (HFScheduleRuleItem)initWithScheduleRule:(id)rule;
- (id)_subclass_updateWithOptions:(id)options;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation HFScheduleRuleItem

- (HFScheduleRuleItem)initWithScheduleRule:(id)rule
{
  ruleCopy = rule;
  v9.receiver = self;
  v9.super_class = HFScheduleRuleItem;
  v6 = [(HFScheduleRuleItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rule, rule);
  }

  return v7;
}

- (id)_subclass_updateWithOptions:(id)options
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  rule = [(HFScheduleRuleItem *)self rule];
  v6 = [HFScheduleUtilities localizedStringForRule:rule];
  [dictionary setObject:v6 forKeyedSubscript:@"title"];

  v7 = [[HFImageIconDescriptor alloc] initWithSystemImageNamed:@"calendar.badge.clock"];
  [dictionary setObject:@"Home.Guest.Schedule.Rule" forKeyedSubscript:@"HFResultDisplayAccessibilityIDKey"];
  [dictionary setObject:v7 forKeyedSubscript:@"icon"];
  [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"elementWithMaxWidth"];
  v8 = MEMORY[0x277D2C900];
  v9 = [HFItemUpdateOutcome outcomeWithResults:dictionary];
  v10 = [v8 futureWithResult:v9];

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  rule = [(HFScheduleRuleItem *)self rule];
  v6 = v4[7];
  v4[7] = rule;

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      rule = [(HFScheduleRuleItem *)equalCopy rule];
      rule2 = [(HFScheduleRuleItem *)self rule];
      v7 = [rule isEqual:rule2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  rule = [(HFScheduleRuleItem *)self rule];
  v3 = [rule hash];

  return v3;
}

@end