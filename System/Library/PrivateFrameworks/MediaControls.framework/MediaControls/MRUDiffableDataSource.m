@interface MRUDiffableDataSource
- (MRUDiffableDataSourceDelegate)delegate;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5;
@end

@implementation MRUDiffableDataSource

- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5
{
  v7 = a5;
  v12 = [(UITableViewDiffableDataSource *)self itemIdentifierForIndexPath:a4];
  v8 = [(UITableViewDiffableDataSource *)self itemIdentifierForIndexPath:v7];
  v9 = [(UITableViewDiffableDataSource *)self snapshot];
  v10 = [(MRUDiffableDataSource *)self delegate];
  v11 = [v7 item];

  if (v11)
  {
    if (v8 && ([v12 isEqualToString:v8] & 1) == 0)
    {
      [v9 moveItemWithIdentifier:v12 afterItemWithIdentifier:v8];
      [(UITableViewDiffableDataSource *)self applySnapshot:v9 animatingDifferences:0];
      [v10 dataSource:self moveItemWithIdentifier:v12 aferIndentifier:v8];
    }
  }

  else
  {
    [v9 moveItemWithIdentifier:v12 beforeItemWithIdentifier:v8];
    [(UITableViewDiffableDataSource *)self applySnapshot:v9 animatingDifferences:0];
    [v10 dataSource:self moveItemToTopWithIdentifier:v12];
  }
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (a4 == 1)
  {
    v6 = [(UITableViewDiffableDataSource *)self itemIdentifierForIndexPath:a5];
    if (v6)
    {
      v7 = [(UITableViewDiffableDataSource *)self snapshot];
      v10[0] = v6;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
      [v7 deleteItemsWithIdentifiers:v8];

      [(UITableViewDiffableDataSource *)self applySnapshot:v7 animatingDifferences:0];
      v9 = [(MRUDiffableDataSource *)self delegate];
      [v9 dataSource:self didDeleteItemWithIdentifier:v6];
    }
  }
}

- (MRUDiffableDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end