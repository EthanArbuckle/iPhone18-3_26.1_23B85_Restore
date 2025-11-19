@interface HFCustomDiffableDataSource
- (HFCustomDiffableDataSource)init;
- (NSArray)sections;
- (id)_indexPathForItem:(id)a3 inDisplayedItemsArray:(id)a4;
- (id)indexPathForItemIdentifier:(id)a3;
- (id)itemIdentifierForIndexPath:(id)a3;
- (unint64_t)_sectionForItem:(id)a3 assertOnNotFound:(BOOL)a4;
- (void)setSections:(id)a3;
@end

@implementation HFCustomDiffableDataSource

- (HFCustomDiffableDataSource)init
{
  v6.receiver = self;
  v6.super_class = HFCustomDiffableDataSource;
  v2 = [(HFCustomDiffableDataSource *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(HFCustomDiffableDataSourceSnapshot);
    snapshot = v2->_snapshot;
    v2->_snapshot = v3;
  }

  return v2;
}

- (void)setSections:(id)a3
{
  v4 = a3;
  v5 = [(HFCustomDiffableDataSource *)self snapshot];
  [v5 setSections:v4];
}

- (NSArray)sections
{
  v2 = [(HFCustomDiffableDataSource *)self snapshot];
  v3 = [v2 sections];

  return v3;
}

- (id)itemIdentifierForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 section];
  v6 = [(HFCustomDiffableDataSource *)self sections];
  v7 = [v6 count];

  if (v5 >= v7)
  {
    v12 = 0;
  }

  else
  {
    v8 = [(HFCustomDiffableDataSource *)self sections];
    v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v4, "section")}];

    v10 = [v9 items];
    if ([v4 item] < 0 || (v11 = objc_msgSend(v4, "item"), v11 >= objc_msgSend(v10, "count")))
    {
      v12 = 0;
    }

    else
    {
      v12 = [v10 objectAtIndexedSubscript:{objc_msgSend(v4, "item")}];
    }
  }

  return v12;
}

- (id)indexPathForItemIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(HFCustomDiffableDataSource *)self _sectionForItem:v4 assertOnNotFound:0];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v7 = v5;
    v8 = [(HFCustomDiffableDataSource *)self sections];
    v9 = [v8 objectAtIndexedSubscript:v7];

    v10 = [v9 items];
    v6 = [(HFCustomDiffableDataSource *)self _indexPathForItem:v4 inDisplayedItemsArray:v10];
  }

  return v6;
}

- (unint64_t)_sectionForItem:(id)a3 assertOnNotFound:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v8 = [(HFCustomDiffableDataSource *)self sections];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __63__HFCustomDiffableDataSource__sectionForItem_assertOnNotFound___block_invoke;
  v16 = &unk_277DFBC40;
  v9 = v7;
  v17 = v9;
  v10 = [v8 indexOfObjectPassingTest:&v13];

  if (v4 && v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"HFCustomDiffableDataSource.m" lineNumber:142 description:{@"Could not find section for item: %@", v9, v13, v14, v15, v16}];
  }

  return v10;
}

uint64_t __63__HFCustomDiffableDataSource__sectionForItem_assertOnNotFound___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 items];
  v4 = [v3 containsObject:*(a1 + 32)];

  return v4;
}

- (id)_indexPathForItem:(id)a3 inDisplayedItemsArray:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7 && (v8 = -[HFCustomDiffableDataSource _sectionForItem:](self, "_sectionForItem:", v6), v9 = [v7 indexOfObjectIdenticalTo:v6], v9 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v10 = [MEMORY[0x277CCAA70] indexPathForItem:v9 inSection:v8];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end