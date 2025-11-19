@interface HFFakeMediaAccessoryItemProvider
- (HFFakeMediaAccessoryItemProvider)init;
- (id)items;
- (id)reloadItems;
@end

@implementation HFFakeMediaAccessoryItemProvider

- (HFFakeMediaAccessoryItemProvider)init
{
  v8.receiver = self;
  v8.super_class = HFFakeMediaAccessoryItemProvider;
  v2 = [(HFItemProvider *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB58] set];
    for (i = 1; i != 9; ++i)
    {
      v5 = [MEMORY[0x277CCABB0] numberWithInteger:i];
      [v3 addObject:v5];
    }

    [(HFFakeMediaAccessoryItemProvider *)v2 setMediaAccessoryItemTypes:v3];
    v6 = [MEMORY[0x277CBEB58] set];
    [(HFFakeMediaAccessoryItemProvider *)v2 setMediaAccessoryItems:v6];
  }

  return v2;
}

- (id)items
{
  v2 = [(HFFakeMediaAccessoryItemProvider *)self mediaAccessoryItems];
  v3 = [v2 copy];

  return v3;
}

- (id)reloadItems
{
  v3 = [(HFFakeMediaAccessoryItemProvider *)self mediaAccessoryItemTypes];
  v4 = [v3 allObjects];
  v5 = [(HFItemProvider *)self reloadItemsWithObjects:v4 keyAdaptor:&__block_literal_global_240 itemAdaptor:&__block_literal_global_4_17 filter:&__block_literal_global_7_14 itemMap:&__block_literal_global_10_13];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__HFFakeMediaAccessoryItemProvider_reloadItems__block_invoke_5;
  v8[3] = &unk_277DF6960;
  v8[4] = self;
  v6 = [v5 flatMap:v8];

  return v6;
}

uint64_t __47__HFFakeMediaAccessoryItemProvider_reloadItems__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 mediaAccessoryItemType];

  return [v2 numberWithInteger:v3];
}

HFFakeMediaAccessoryItem *__47__HFFakeMediaAccessoryItemProvider_reloadItems__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [HFFakeMediaAccessoryItem alloc];
  v4 = [v2 unsignedIntegerValue];

  v5 = [(HFFakeMediaAccessoryItem *)v3 initWithMediaAccessoryItemType:v4];

  return v5;
}

id __47__HFFakeMediaAccessoryItemProvider_reloadItems__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 mediaAccessoryItems];
  v6 = [v4 removedItems];
  [v5 minusSet:v6];

  v7 = [*(a1 + 32) mediaAccessoryItems];
  v8 = [v4 addedItems];
  [v7 unionSet:v8];

  v9 = [MEMORY[0x277D2C900] futureWithResult:v4];

  return v9;
}

@end