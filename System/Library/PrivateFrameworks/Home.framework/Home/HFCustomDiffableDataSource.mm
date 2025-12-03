@interface HFCustomDiffableDataSource
- (HFCustomDiffableDataSource)init;
- (NSArray)sections;
- (id)_indexPathForItem:(id)item inDisplayedItemsArray:(id)array;
- (id)indexPathForItemIdentifier:(id)identifier;
- (id)itemIdentifierForIndexPath:(id)path;
- (unint64_t)_sectionForItem:(id)item assertOnNotFound:(BOOL)found;
- (void)setSections:(id)sections;
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

- (void)setSections:(id)sections
{
  sectionsCopy = sections;
  snapshot = [(HFCustomDiffableDataSource *)self snapshot];
  [snapshot setSections:sectionsCopy];
}

- (NSArray)sections
{
  snapshot = [(HFCustomDiffableDataSource *)self snapshot];
  sections = [snapshot sections];

  return sections;
}

- (id)itemIdentifierForIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  sections = [(HFCustomDiffableDataSource *)self sections];
  v7 = [sections count];

  if (section >= v7)
  {
    v12 = 0;
  }

  else
  {
    sections2 = [(HFCustomDiffableDataSource *)self sections];
    v9 = [sections2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

    items = [v9 items];
    if ([pathCopy item] < 0 || (v11 = objc_msgSend(pathCopy, "item"), v11 >= objc_msgSend(items, "count")))
    {
      v12 = 0;
    }

    else
    {
      v12 = [items objectAtIndexedSubscript:{objc_msgSend(pathCopy, "item")}];
    }
  }

  return v12;
}

- (id)indexPathForItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(HFCustomDiffableDataSource *)self _sectionForItem:identifierCopy assertOnNotFound:0];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v7 = v5;
    sections = [(HFCustomDiffableDataSource *)self sections];
    v9 = [sections objectAtIndexedSubscript:v7];

    items = [v9 items];
    v6 = [(HFCustomDiffableDataSource *)self _indexPathForItem:identifierCopy inDisplayedItemsArray:items];
  }

  return v6;
}

- (unint64_t)_sectionForItem:(id)item assertOnNotFound:(BOOL)found
{
  foundCopy = found;
  itemCopy = item;
  sections = [(HFCustomDiffableDataSource *)self sections];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __63__HFCustomDiffableDataSource__sectionForItem_assertOnNotFound___block_invoke;
  v16 = &unk_277DFBC40;
  v9 = itemCopy;
  v17 = v9;
  v10 = [sections indexOfObjectPassingTest:&v13];

  if (foundCopy && v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFCustomDiffableDataSource.m" lineNumber:142 description:{@"Could not find section for item: %@", v9, v13, v14, v15, v16}];
  }

  return v10;
}

uint64_t __63__HFCustomDiffableDataSource__sectionForItem_assertOnNotFound___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 items];
  v4 = [v3 containsObject:*(a1 + 32)];

  return v4;
}

- (id)_indexPathForItem:(id)item inDisplayedItemsArray:(id)array
{
  itemCopy = item;
  arrayCopy = array;
  if (arrayCopy && (v8 = -[HFCustomDiffableDataSource _sectionForItem:](self, "_sectionForItem:", itemCopy), v9 = [arrayCopy indexOfObjectIdenticalTo:itemCopy], v9 != 0x7FFFFFFFFFFFFFFFLL))
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