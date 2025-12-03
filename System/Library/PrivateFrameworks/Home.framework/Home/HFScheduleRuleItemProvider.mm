@interface HFScheduleRuleItemProvider
- (HFScheduleRuleItemProvider)init;
- (HFScheduleRuleItemProvider)initWithScheduleBuilder:(id)builder home:(id)home;
- (id)_scheduleRulesFromHome:(id)home;
- (id)copyWithZone:(_NSZone *)zone;
- (id)invalidationReasons;
- (id)reloadItems;
@end

@implementation HFScheduleRuleItemProvider

- (HFScheduleRuleItemProvider)initWithScheduleBuilder:(id)builder home:(id)home
{
  builderCopy = builder;
  homeCopy = home;
  v14.receiver = self;
  v14.super_class = HFScheduleRuleItemProvider;
  v9 = [(HFItemProvider *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_home, home);
    objc_storeStrong(&v10->_scheduleBuilder, builder);
    v11 = objc_opt_new();
    items = v10->_items;
    v10->_items = v11;
  }

  return v10;
}

- (HFScheduleRuleItemProvider)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithScheduleBuilder_home_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFScheduleRuleItemProvider.m" lineNumber:44 description:{@"%s is unavailable; use %@ instead", "-[HFScheduleRuleItemProvider init]", v5}];

  return 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  scheduleBuilder = [(HFScheduleRuleItemProvider *)self scheduleBuilder];
  home = [(HFScheduleRuleItemProvider *)self home];
  v7 = [v4 initWithScheduleBuilder:scheduleBuilder home:home];

  return v7;
}

- (id)reloadItems
{
  home = [(HFScheduleRuleItemProvider *)self home];
  if (home)
  {
    home2 = [(HFScheduleRuleItemProvider *)self home];
    [(HFScheduleRuleItemProvider *)self _scheduleRulesFromHome:home2];
  }

  else
  {
    home2 = [(HFScheduleRuleItemProvider *)self scheduleBuilder];
    [home2 rules];
  }
  v5 = ;

  allObjects = [v5 allObjects];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __41__HFScheduleRuleItemProvider_reloadItems__block_invoke_3;
  v11[3] = &unk_277E00F40;
  v11[4] = self;
  v7 = [(HFItemProvider *)self reloadItemsWithObjects:allObjects keyAdaptor:&__block_literal_global_212 itemAdaptor:&__block_literal_global_11_9 filter:0 itemMap:v11];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __41__HFScheduleRuleItemProvider_reloadItems__block_invoke_5;
  v10[3] = &unk_277DF6960;
  v10[4] = self;
  v8 = [v7 flatMap:v10];

  return v8;
}

uint64_t __41__HFScheduleRuleItemProvider_reloadItems__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 hash];

  return [v2 numberWithUnsignedInteger:v3];
}

uint64_t __41__HFScheduleRuleItemProvider_reloadItems__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 hash];

  return [v2 numberWithUnsignedInteger:v3];
}

HFScheduleRuleItem *__41__HFScheduleRuleItemProvider_reloadItems__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) items];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__HFScheduleRuleItemProvider_reloadItems__block_invoke_4;
  v8[3] = &unk_277DF4B70;
  v5 = v3;
  v9 = v5;
  v6 = [v4 na_firstObjectPassingTest:v8];

  if (!v6)
  {
    v6 = [[HFScheduleRuleItem alloc] initWithScheduleRule:v5];
  }

  return v6;
}

BOOL __41__HFScheduleRuleItemProvider_reloadItems__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v6 rule];
  v8 = v7 == *(a1 + 32);

  return v8;
}

id __41__HFScheduleRuleItemProvider_reloadItems__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 items];
  v6 = [v4 removedItems];
  [v5 minusSet:v6];

  v7 = [*(a1 + 32) items];
  v8 = [v4 addedItems];
  [v7 unionSet:v8];

  v9 = [MEMORY[0x277D2C900] futureWithResult:v4];

  return v9;
}

- (id)invalidationReasons
{
  v6.receiver = self;
  v6.super_class = HFScheduleRuleItemProvider;
  invalidationReasons = [(HFItemProvider *)&v6 invalidationReasons];
  v3 = [invalidationReasons mutableCopy];

  [v3 addObject:@"home"];
  [v3 addObject:@"user"];
  v4 = [v3 copy];

  return v4;
}

- (id)_scheduleRulesFromHome:(id)home
{
  homeCopy = home;
  currentUser = [homeCopy currentUser];
  v5 = [homeCopy homeAccessControlForUser:currentUser];

  restrictedGuestAccessSettings = [v5 restrictedGuestAccessSettings];
  guestAccessSchedule = [restrictedGuestAccessSettings guestAccessSchedule];
  v8 = [HFScheduleBuilder scheduleBuilderFromHomeAccessSchedule:guestAccessSchedule];
  rules = [v8 rules];
  v10 = rules;
  if (rules)
  {
    v11 = rules;
  }

  else
  {
    v11 = [MEMORY[0x277CBEB98] set];
  }

  v12 = v11;

  return v12;
}

@end