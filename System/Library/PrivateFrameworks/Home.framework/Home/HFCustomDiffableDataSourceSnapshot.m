@interface HFCustomDiffableDataSourceSnapshot
- (id)itemIdentifiers;
- (id)itemIdentifiersInSectionWithIdentifier:(id)a3;
- (int64_t)numberOfItems;
- (int64_t)numberOfSections;
@end

@implementation HFCustomDiffableDataSourceSnapshot

- (int64_t)numberOfSections
{
  v2 = [(HFCustomDiffableDataSourceSnapshot *)self sections];
  v3 = [v2 count];

  return v3;
}

- (id)itemIdentifiers
{
  v2 = [(HFCustomDiffableDataSourceSnapshot *)self sections];
  v3 = [v2 na_flatMap:&__block_literal_global_228];

  return v3;
}

- (int64_t)numberOfItems
{
  v2 = [(HFCustomDiffableDataSourceSnapshot *)self itemIdentifiers];
  v3 = [v2 count];

  return v3;
}

- (id)itemIdentifiersInSectionWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(HFCustomDiffableDataSourceSnapshot *)self sections];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __77__HFCustomDiffableDataSourceSnapshot_itemIdentifiersInSectionWithIdentifier___block_invoke;
  v9[3] = &unk_277E01DB0;
  v10 = v4;
  v6 = v4;
  v7 = [v5 na_flatMap:v9];

  return v7;
}

id __77__HFCustomDiffableDataSourceSnapshot_itemIdentifiersInSectionWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 identifier];
  v5 = [*(a1 + 32) identifier];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    v7 = [v3 items];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end