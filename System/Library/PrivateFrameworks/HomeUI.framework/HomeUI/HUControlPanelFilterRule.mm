@interface HUControlPanelFilterRule
+ (id)ruleWithFilter:(id)filter;
- (BOOL)ruleMatchesItem:(id)item;
- (HUControlPanelFilterRule)initWithFilter:(id)filter;
@end

@implementation HUControlPanelFilterRule

+ (id)ruleWithFilter:(id)filter
{
  filterCopy = filter;
  v5 = [[self alloc] initWithFilter:filterCopy];

  return v5;
}

- (HUControlPanelFilterRule)initWithFilter:(id)filter
{
  filterCopy = filter;
  v8.receiver = self;
  v8.super_class = HUControlPanelFilterRule;
  v5 = [(HUControlPanelFilterRule *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(HUControlPanelFilterRule *)v5 setFilter:filterCopy];
  }

  return v6;
}

- (BOOL)ruleMatchesItem:(id)item
{
  itemCopy = item;
  filter = [(HUControlPanelFilterRule *)self filter];
  if (filter)
  {
    filter2 = [(HUControlPanelFilterRule *)self filter];
    v7 = (filter2)[2](filter2, itemCopy);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end