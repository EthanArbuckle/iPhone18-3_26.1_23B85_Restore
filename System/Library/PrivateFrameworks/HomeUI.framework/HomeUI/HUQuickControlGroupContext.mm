@interface HUQuickControlGroupContext
- (HUQuickControlGroupContext)initWithPrimaryQuickControlContext:(id)a3 alternateQuickControlContexts:(id)a4;
- (id)allControlItems;
@end

@implementation HUQuickControlGroupContext

- (HUQuickControlGroupContext)initWithPrimaryQuickControlContext:(id)a3 alternateQuickControlContexts:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HUQuickControlGroupContext;
  v9 = [(HUQuickControlGroupContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_primaryQuickControlContext, a3);
    objc_storeStrong(&v10->_alternateQuickControlContexts, a4);
  }

  return v10;
}

- (id)allControlItems
{
  v3 = objc_alloc(MEMORY[0x277CBEB58]);
  v4 = [(HUQuickControlGroupContext *)self primaryQuickControlContext];
  v5 = [v4 controlItems];
  v6 = [v3 initWithSet:v5];

  v7 = [(HUQuickControlGroupContext *)self alternateQuickControlContexts];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __45__HUQuickControlGroupContext_allControlItems__block_invoke;
  v10[3] = &unk_277DC40A8;
  v8 = v6;
  v11 = v8;
  [v7 na_each:v10];

  return v8;
}

void __45__HUQuickControlGroupContext_allControlItems__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 controlItems];
  v3 = [v4 allObjects];
  [v2 addObjectsFromArray:v3];
}

@end