@interface HFMutableItemSection
- (void)setItems:(id)a3 filteringToDisplayedItems:(id)a4;
- (void)setItemsUsingDefaultSortComparator:(id)a3;
@end

@implementation HFMutableItemSection

- (void)setItems:(id)a3 filteringToDisplayedItems:(id)a4
{
  v6 = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__HFMutableItemSection_setItems_filteringToDisplayedItems___block_invoke;
  v9[3] = &unk_277DF4B70;
  v10 = v6;
  v7 = v6;
  v8 = [a3 na_filter:v9];
  [(HFItemSection *)self setItems:v8];
}

- (void)setItemsUsingDefaultSortComparator:(id)a3
{
  v6 = [a3 allObjects];
  v4 = +[HFItemSection defaultItemComparator];
  v5 = [v6 sortedArrayUsingComparator:v4];
  [(HFItemSection *)self setItems:v5];
}

@end