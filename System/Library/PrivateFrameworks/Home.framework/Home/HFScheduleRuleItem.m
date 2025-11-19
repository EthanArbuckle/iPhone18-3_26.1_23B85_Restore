@interface HFScheduleRuleItem
- (BOOL)isEqual:(id)a3;
- (HFScheduleRuleItem)initWithScheduleRule:(id)a3;
- (id)_subclass_updateWithOptions:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation HFScheduleRuleItem

- (HFScheduleRuleItem)initWithScheduleRule:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HFScheduleRuleItem;
  v6 = [(HFScheduleRuleItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rule, a3);
  }

  return v7;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = [(HFScheduleRuleItem *)self rule];
  v6 = [HFScheduleUtilities localizedStringForRule:v5];
  [v4 setObject:v6 forKeyedSubscript:@"title"];

  v7 = [[HFImageIconDescriptor alloc] initWithSystemImageNamed:@"calendar.badge.clock"];
  [v4 setObject:@"Home.Guest.Schedule.Rule" forKeyedSubscript:@"HFResultDisplayAccessibilityIDKey"];
  [v4 setObject:v7 forKeyedSubscript:@"icon"];
  [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"elementWithMaxWidth"];
  v8 = MEMORY[0x277D2C900];
  v9 = [HFItemUpdateOutcome outcomeWithResults:v4];
  v10 = [v8 futureWithResult:v9];

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(HFScheduleRuleItem *)self rule];
  v6 = v4[7];
  v4[7] = v5;

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(HFScheduleRuleItem *)v4 rule];
      v6 = [(HFScheduleRuleItem *)self rule];
      v7 = [v5 isEqual:v6];
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
  v2 = [(HFScheduleRuleItem *)self rule];
  v3 = [v2 hash];

  return v3;
}

@end