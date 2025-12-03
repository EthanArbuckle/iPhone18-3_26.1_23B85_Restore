@interface HUControlPanelClassRule
+ (id)ruleWithControlItemClass:(Class)class;
+ (id)ruleWithControlItemProtocol:(id)protocol;
- (BOOL)ruleMatchesItem:(id)item;
- (HUControlPanelClassRule)initWithControlItemClass:(Class)class protocol:(id)protocol;
@end

@implementation HUControlPanelClassRule

+ (id)ruleWithControlItemClass:(Class)class
{
  v3 = [[self alloc] initWithControlItemClass:class protocol:&unk_282494538];

  return v3;
}

+ (id)ruleWithControlItemProtocol:(id)protocol
{
  protocolCopy = protocol;
  v5 = [[self alloc] initWithControlItemClass:objc_opt_class() protocol:protocolCopy];

  return v5;
}

- (HUControlPanelClassRule)initWithControlItemClass:(Class)class protocol:(id)protocol
{
  protocolCopy = protocol;
  v10.receiver = self;
  v10.super_class = HUControlPanelClassRule;
  v7 = [(HUControlPanelClassRule *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(HUControlPanelClassRule *)v7 setClass:class];
    [(HUControlPanelClassRule *)v8 setProtocol:protocolCopy];
  }

  return v8;
}

- (BOOL)ruleMatchesItem:(id)item
{
  itemCopy = item;
  controlItems = [itemCopy controlItems];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __43__HUControlPanelClassRule_ruleMatchesItem___block_invoke;
  v10[3] = &unk_277DB7330;
  v10[4] = self;
  v6 = [controlItems na_all:v10];

  controlItems2 = [itemCopy controlItems];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__HUControlPanelClassRule_ruleMatchesItem___block_invoke_2;
  v9[3] = &unk_277DB7330;
  v9[4] = self;
  LOBYTE(self) = [controlItems2 na_all:v9];

  return v6 & self;
}

uint64_t __43__HUControlPanelClassRule_ruleMatchesItem___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 protocol];
  v5 = [v3 conformsToProtocol:v4];

  return v5;
}

uint64_t __43__HUControlPanelClassRule_ruleMatchesItem___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end