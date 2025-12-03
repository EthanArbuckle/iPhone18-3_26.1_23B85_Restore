@interface MRUDiffableDataSource
- (MRUDiffableDataSourceDelegate)delegate;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath;
@end

@implementation MRUDiffableDataSource

- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  indexPathCopy = indexPath;
  v12 = [(UITableViewDiffableDataSource *)self itemIdentifierForIndexPath:path];
  v8 = [(UITableViewDiffableDataSource *)self itemIdentifierForIndexPath:indexPathCopy];
  snapshot = [(UITableViewDiffableDataSource *)self snapshot];
  delegate = [(MRUDiffableDataSource *)self delegate];
  item = [indexPathCopy item];

  if (item)
  {
    if (v8 && ([v12 isEqualToString:v8] & 1) == 0)
    {
      [snapshot moveItemWithIdentifier:v12 afterItemWithIdentifier:v8];
      [(UITableViewDiffableDataSource *)self applySnapshot:snapshot animatingDifferences:0];
      [delegate dataSource:self moveItemWithIdentifier:v12 aferIndentifier:v8];
    }
  }

  else
  {
    [snapshot moveItemWithIdentifier:v12 beforeItemWithIdentifier:v8];
    [(UITableViewDiffableDataSource *)self applySnapshot:snapshot animatingDifferences:0];
    [delegate dataSource:self moveItemToTopWithIdentifier:v12];
  }
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (style == 1)
  {
    v6 = [(UITableViewDiffableDataSource *)self itemIdentifierForIndexPath:path];
    if (v6)
    {
      snapshot = [(UITableViewDiffableDataSource *)self snapshot];
      v10[0] = v6;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
      [snapshot deleteItemsWithIdentifiers:v8];

      [(UITableViewDiffableDataSource *)self applySnapshot:snapshot animatingDifferences:0];
      delegate = [(MRUDiffableDataSource *)self delegate];
      [delegate dataSource:self didDeleteItemWithIdentifier:v6];
    }
  }
}

- (MRUDiffableDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end