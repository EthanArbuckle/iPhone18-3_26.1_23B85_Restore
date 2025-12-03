@interface HUQuickControlSingleItemPredicate
+ (id)predicateWithControlItemClass:(Class)class;
- (BOOL)matchesControlItem:(id)item;
- (HUQuickControlSingleItemPredicate)initWithBlock:(id)block;
- (id)matchingControlItemsForControlItems:(id)items;
@end

@implementation HUQuickControlSingleItemPredicate

+ (id)predicateWithControlItemClass:(Class)class
{
  v4 = [HUQuickControlSingleItemPredicate alloc];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__HUQuickControlSingleItemPredicate_predicateWithControlItemClass___block_invoke;
  v7[3] = &__block_descriptor_40_e23_B16__0__HFControlItem_8lu32l8;
  v7[4] = class;
  v5 = [(HUQuickControlSingleItemPredicate *)v4 initWithBlock:v7];

  return v5;
}

- (HUQuickControlSingleItemPredicate)initWithBlock:(id)block
{
  blockCopy = block;
  v8.receiver = self;
  v8.super_class = HUQuickControlSingleItemPredicate;
  v5 = [(HUQuickControlSingleItemPredicate *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(HUQuickControlSingleItemPredicate *)v5 setBlock:blockCopy];
  }

  return v6;
}

- (BOOL)matchesControlItem:(id)item
{
  itemCopy = item;
  block = [(HUQuickControlSingleItemPredicate *)self block];
  if (block)
  {
    block2 = [(HUQuickControlSingleItemPredicate *)self block];
    v7 = (block2)[2](block2, itemCopy);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)matchingControlItemsForControlItems:(id)items
{
  v3 = MEMORY[0x277CBEA60];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__HUQuickControlSingleItemPredicate_matchingControlItemsForControlItems___block_invoke;
  v7[3] = &unk_277DB7330;
  v7[4] = self;
  v4 = [items na_firstObjectPassingTest:v7];
  v5 = [v3 na_arrayWithSafeObject:v4];

  return v5;
}

@end