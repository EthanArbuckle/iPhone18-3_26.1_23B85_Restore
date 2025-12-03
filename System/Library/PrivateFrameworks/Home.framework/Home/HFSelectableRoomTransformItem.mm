@interface HFSelectableRoomTransformItem
- (HFSelectableRoomTransformItem)initWithRoomItem:(id)item accessoryVendor:(id)vendor;
- (HFSelectableRoomTransformItem)initWithSourceItem:(id)item updateOptionsTransformBlock:(id)block resultsTransformBlock:(id)transformBlock;
@end

@implementation HFSelectableRoomTransformItem

- (HFSelectableRoomTransformItem)initWithSourceItem:(id)item updateOptionsTransformBlock:(id)block resultsTransformBlock:(id)transformBlock
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v8 = NSStringFromSelector(sel_initWithRoomItem_accessoryVendor_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFSelectableRoomTransformItem.m" lineNumber:25 description:{@"%s is unavailable; use %@ instead", "-[HFSelectableRoomTransformItem initWithSourceItem:updateOptionsTransformBlock:resultsTransformBlock:]", v8}];

  return 0;
}

- (HFSelectableRoomTransformItem)initWithRoomItem:(id)item accessoryVendor:(id)vendor
{
  itemCopy = item;
  vendorCopy = vendor;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __66__HFSelectableRoomTransformItem_initWithRoomItem_accessoryVendor___block_invoke;
  v13[3] = &unk_277DFA7A0;
  v14 = vendorCopy;
  v15 = itemCopy;
  v12.receiver = self;
  v12.super_class = HFSelectableRoomTransformItem;
  v8 = itemCopy;
  v9 = vendorCopy;
  v10 = [(HFTransformItem *)&v12 initWithSourceItem:v8 updateOptionsTransformBlock:0 resultsTransformBlock:v13];

  return v10;
}

id __66__HFSelectableRoomTransformItem_initWithRoomItem_accessoryVendor___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  v4 = [*(a1 + 32) accessories];
  v5 = [v4 na_map:&__block_literal_global_96];
  v6 = [*(a1 + 40) room];
  v7 = [v6 accessories];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __66__HFSelectableRoomTransformItem_initWithRoomItem_accessoryVendor___block_invoke_3;
  v16[3] = &unk_277DF3888;
  v8 = v5;
  v17 = v8;
  v9 = [v7 na_any:v16];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:v9];
  [v3 setObject:v10 forKeyedSubscript:@"selected"];

  v11 = [v3 objectForKeyedSubscript:@"dependentHomeKitObjects"];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 mutableCopy];
  }

  else
  {
    v14 = [MEMORY[0x277CBEB98] set];
    v13 = [v14 mutableCopy];
  }

  [v13 unionSet:v4];
  [v3 setObject:v13 forKeyedSubscript:@"dependentHomeKitObjects"];

  return v3;
}

uint64_t __66__HFSelectableRoomTransformItem_initWithRoomItem_accessoryVendor___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uniqueIdentifier];
  v4 = [v2 containsObject:v3];

  return v4;
}

@end