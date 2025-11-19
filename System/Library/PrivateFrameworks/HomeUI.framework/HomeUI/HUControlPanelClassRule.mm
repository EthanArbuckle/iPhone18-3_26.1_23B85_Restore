@interface HUControlPanelClassRule
+ (id)ruleWithControlItemClass:(Class)a3;
+ (id)ruleWithControlItemProtocol:(id)a3;
- (BOOL)ruleMatchesItem:(id)a3;
- (HUControlPanelClassRule)initWithControlItemClass:(Class)a3 protocol:(id)a4;
@end

@implementation HUControlPanelClassRule

+ (id)ruleWithControlItemClass:(Class)a3
{
  v3 = [[a1 alloc] initWithControlItemClass:a3 protocol:&unk_282494538];

  return v3;
}

+ (id)ruleWithControlItemProtocol:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithControlItemClass:objc_opt_class() protocol:v4];

  return v5;
}

- (HUControlPanelClassRule)initWithControlItemClass:(Class)a3 protocol:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = HUControlPanelClassRule;
  v7 = [(HUControlPanelClassRule *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(HUControlPanelClassRule *)v7 setClass:a3];
    [(HUControlPanelClassRule *)v8 setProtocol:v6];
  }

  return v8;
}

- (BOOL)ruleMatchesItem:(id)a3
{
  v4 = a3;
  v5 = [v4 controlItems];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __43__HUControlPanelClassRule_ruleMatchesItem___block_invoke;
  v10[3] = &unk_277DB7330;
  v10[4] = self;
  v6 = [v5 na_all:v10];

  v7 = [v4 controlItems];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__HUControlPanelClassRule_ruleMatchesItem___block_invoke_2;
  v9[3] = &unk_277DB7330;
  v9[4] = self;
  LOBYTE(self) = [v7 na_all:v9];

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