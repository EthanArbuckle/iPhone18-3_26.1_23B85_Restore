@interface HUControlPanelFilterRule
+ (id)ruleWithFilter:(id)a3;
- (BOOL)ruleMatchesItem:(id)a3;
- (HUControlPanelFilterRule)initWithFilter:(id)a3;
@end

@implementation HUControlPanelFilterRule

+ (id)ruleWithFilter:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithFilter:v4];

  return v5;
}

- (HUControlPanelFilterRule)initWithFilter:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HUControlPanelFilterRule;
  v5 = [(HUControlPanelFilterRule *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(HUControlPanelFilterRule *)v5 setFilter:v4];
  }

  return v6;
}

- (BOOL)ruleMatchesItem:(id)a3
{
  v4 = a3;
  v5 = [(HUControlPanelFilterRule *)self filter];
  if (v5)
  {
    v6 = [(HUControlPanelFilterRule *)self filter];
    v7 = (v6)[2](v6, v4);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end