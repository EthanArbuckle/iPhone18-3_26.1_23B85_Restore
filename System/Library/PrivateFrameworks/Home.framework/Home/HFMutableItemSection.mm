@interface HFMutableItemSection
- (void)setItems:(id)items filteringToDisplayedItems:(id)displayedItems;
- (void)setItemsUsingDefaultSortComparator:(id)comparator;
@end

@implementation HFMutableItemSection

- (void)setItems:(id)items filteringToDisplayedItems:(id)displayedItems
{
  displayedItemsCopy = displayedItems;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__HFMutableItemSection_setItems_filteringToDisplayedItems___block_invoke;
  v9[3] = &unk_277DF4B70;
  v10 = displayedItemsCopy;
  v7 = displayedItemsCopy;
  v8 = [items na_filter:v9];
  [(HFItemSection *)self setItems:v8];
}

- (void)setItemsUsingDefaultSortComparator:(id)comparator
{
  allObjects = [comparator allObjects];
  v4 = +[HFItemSection defaultItemComparator];
  v5 = [allObjects sortedArrayUsingComparator:v4];
  [(HFItemSection *)self setItems:v5];
}

@end