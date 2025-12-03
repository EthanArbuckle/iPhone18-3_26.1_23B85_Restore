@interface HFStaticItemProvider
- (HFStaticItemProvider)init;
- (HFStaticItemProvider)initWithItems:(id)items;
- (id)copyWithZone:(_NSZone *)zone;
- (id)items;
- (id)reloadItems;
@end

@implementation HFStaticItemProvider

- (HFStaticItemProvider)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithItems_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFStaticItemProvider.m" lineNumber:23 description:{@"%s is unavailable; use %@ instead", "-[HFStaticItemProvider init]", v5}];

  return 0;
}

- (HFStaticItemProvider)initWithItems:(id)items
{
  itemsCopy = items;
  v8.receiver = self;
  v8.super_class = HFStaticItemProvider;
  v5 = [(HFItemProvider *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(HFStaticItemProvider *)v5 setStaticItems:itemsCopy];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  items = [(HFStaticItemProvider *)self items];
  v6 = [v4 initWithItems:items];

  return v6;
}

- (id)reloadItems
{
  if ([(HFStaticItemProvider *)self hasProvidedItems])
  {
    staticItems = 0;
  }

  else
  {
    staticItems = [(HFStaticItemProvider *)self staticItems];
  }

  if ([(HFStaticItemProvider *)self hasProvidedItems])
  {
    staticItems2 = [(HFStaticItemProvider *)self staticItems];
  }

  else
  {
    staticItems2 = 0;
  }

  [(HFStaticItemProvider *)self setHasProvidedItems:1];
  v5 = [[HFItemProviderReloadResults alloc] initWithAddedItems:staticItems removedItems:0 existingItems:staticItems2];
  v6 = [MEMORY[0x277D2C900] futureWithResult:v5];

  return v6;
}

- (id)items
{
  if ([(HFStaticItemProvider *)self hasProvidedItems])
  {
    [(HFStaticItemProvider *)self staticItems];
  }

  else
  {
    [MEMORY[0x277CBEB98] set];
  }
  v3 = ;

  return v3;
}

@end