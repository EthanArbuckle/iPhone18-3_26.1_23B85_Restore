@interface SFTableViewDiffableDataSource
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (SFTableViewDiffableDataSourceDelegate)delegate;
- (id)sectionIndexTitlesForTableView:(id)view;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view sectionForSectionIndexTitle:(id)title atIndex:(int64_t)index;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
@end

@implementation SFTableViewDiffableDataSource

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v7 = [WeakRetained dataSource:self headerTextForSection:section];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v7 = [WeakRetained dataSource:self footerTextForSection:section];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)sectionIndexTitlesForTableView:(id)view
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v5 = [WeakRetained sectionIndexTitlesForDataSource:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int64_t)tableView:(id)view sectionForSectionIndexTitle:(id)title atIndex:(int64_t)index
{
  titleCopy = title;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v9 = [WeakRetained dataSource:self sectionForSectionIndexTitle:titleCopy atIndex:index];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  pathCopy = path;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v8 = [(UITableViewDiffableDataSource *)self itemIdentifierForIndexPath:pathCopy];
    [WeakRetained dataSource:self commitEditingStyle:style forItemIdentifier:v8];
  }
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  pathCopy = path;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v7 = [WeakRetained dataSource:self canEditRowAtIndexPath:pathCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (SFTableViewDiffableDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end