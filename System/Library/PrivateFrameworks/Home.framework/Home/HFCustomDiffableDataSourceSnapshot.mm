@interface HFCustomDiffableDataSourceSnapshot
- (id)itemIdentifiers;
- (id)itemIdentifiersInSectionWithIdentifier:(id)identifier;
- (int64_t)numberOfItems;
- (int64_t)numberOfSections;
@end

@implementation HFCustomDiffableDataSourceSnapshot

- (int64_t)numberOfSections
{
  sections = [(HFCustomDiffableDataSourceSnapshot *)self sections];
  v3 = [sections count];

  return v3;
}

- (id)itemIdentifiers
{
  sections = [(HFCustomDiffableDataSourceSnapshot *)self sections];
  v3 = [sections na_flatMap:&__block_literal_global_228];

  return v3;
}

- (int64_t)numberOfItems
{
  itemIdentifiers = [(HFCustomDiffableDataSourceSnapshot *)self itemIdentifiers];
  v3 = [itemIdentifiers count];

  return v3;
}

- (id)itemIdentifiersInSectionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  sections = [(HFCustomDiffableDataSourceSnapshot *)self sections];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __77__HFCustomDiffableDataSourceSnapshot_itemIdentifiersInSectionWithIdentifier___block_invoke;
  v9[3] = &unk_277E01DB0;
  v10 = identifierCopy;
  v6 = identifierCopy;
  v7 = [sections na_flatMap:v9];

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