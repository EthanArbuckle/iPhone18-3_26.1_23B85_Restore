@interface HFStaticItemProvider
- (HFStaticItemProvider)init;
- (HFStaticItemProvider)initWithItems:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)items;
- (id)reloadItems;
@end

@implementation HFStaticItemProvider

- (HFStaticItemProvider)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithItems_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFStaticItemProvider.m" lineNumber:23 description:{@"%s is unavailable; use %@ instead", "-[HFStaticItemProvider init]", v5}];

  return 0;
}

- (HFStaticItemProvider)initWithItems:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HFStaticItemProvider;
  v5 = [(HFItemProvider *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(HFStaticItemProvider *)v5 setStaticItems:v4];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(HFStaticItemProvider *)self items];
  v6 = [v4 initWithItems:v5];

  return v6;
}

- (id)reloadItems
{
  if ([(HFStaticItemProvider *)self hasProvidedItems])
  {
    v3 = 0;
  }

  else
  {
    v3 = [(HFStaticItemProvider *)self staticItems];
  }

  if ([(HFStaticItemProvider *)self hasProvidedItems])
  {
    v4 = [(HFStaticItemProvider *)self staticItems];
  }

  else
  {
    v4 = 0;
  }

  [(HFStaticItemProvider *)self setHasProvidedItems:1];
  v5 = [[HFItemProviderReloadResults alloc] initWithAddedItems:v3 removedItems:0 existingItems:v4];
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