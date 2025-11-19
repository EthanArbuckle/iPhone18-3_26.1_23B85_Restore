@interface HUQuickControlSingleItemPredicate
+ (id)predicateWithControlItemClass:(Class)a3;
- (BOOL)matchesControlItem:(id)a3;
- (HUQuickControlSingleItemPredicate)initWithBlock:(id)a3;
- (id)matchingControlItemsForControlItems:(id)a3;
@end

@implementation HUQuickControlSingleItemPredicate

+ (id)predicateWithControlItemClass:(Class)a3
{
  v4 = [HUQuickControlSingleItemPredicate alloc];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__HUQuickControlSingleItemPredicate_predicateWithControlItemClass___block_invoke;
  v7[3] = &__block_descriptor_40_e23_B16__0__HFControlItem_8lu32l8;
  v7[4] = a3;
  v5 = [(HUQuickControlSingleItemPredicate *)v4 initWithBlock:v7];

  return v5;
}

- (HUQuickControlSingleItemPredicate)initWithBlock:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HUQuickControlSingleItemPredicate;
  v5 = [(HUQuickControlSingleItemPredicate *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(HUQuickControlSingleItemPredicate *)v5 setBlock:v4];
  }

  return v6;
}

- (BOOL)matchesControlItem:(id)a3
{
  v4 = a3;
  v5 = [(HUQuickControlSingleItemPredicate *)self block];
  if (v5)
  {
    v6 = [(HUQuickControlSingleItemPredicate *)self block];
    v7 = (v6)[2](v6, v4);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)matchingControlItemsForControlItems:(id)a3
{
  v3 = MEMORY[0x277CBEA60];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__HUQuickControlSingleItemPredicate_matchingControlItemsForControlItems___block_invoke;
  v7[3] = &unk_277DB7330;
  v7[4] = self;
  v4 = [a3 na_firstObjectPassingTest:v7];
  v5 = [v3 na_arrayWithSafeObject:v4];

  return v5;
}

@end