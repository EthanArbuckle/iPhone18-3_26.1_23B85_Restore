@interface HUTableViewDiffableDataSource
- (BOOL)respondsToSelector:(SEL)selector;
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (BOOL)tableView:(id)view canMoveRowAtIndexPath:(id)path;
- (HUTableViewDiffableDataSource)initWithTableView:(id)view cellProvider:(id)provider delegate:(id)delegate;
- (HUTableViewDiffableDataSourceDelegate)delegate;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath;
@end

@implementation HUTableViewDiffableDataSource

- (HUTableViewDiffableDataSource)initWithTableView:(id)view cellProvider:(id)provider delegate:(id)delegate
{
  providerCopy = provider;
  viewCopy = view;
  objc_storeWeak(&self->_delegate, delegate);
  v12.receiver = self;
  v12.super_class = HUTableViewDiffableDataSource;
  v10 = [(UITableViewDiffableDataSource *)&v12 initWithTableView:viewCopy cellProvider:providerCopy];

  return v10;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  delegate = [(HUTableViewDiffableDataSource *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(HUTableViewDiffableDataSource *)self delegate];
    v10 = [delegate2 tableView:viewCopy titleForHeaderInSection:section];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  viewCopy = view;
  delegate = [(HUTableViewDiffableDataSource *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(HUTableViewDiffableDataSource *)self delegate];
    v10 = [delegate2 tableView:viewCopy titleForFooterInSection:section];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  delegate = [(HUTableViewDiffableDataSource *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(HUTableViewDiffableDataSource *)self delegate];
    v11 = [delegate2 tableView:viewCopy canEditRowAtIndexPath:pathCopy];
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (BOOL)tableView:(id)view canMoveRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  delegate = [(HUTableViewDiffableDataSource *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(HUTableViewDiffableDataSource *)self delegate];
    v11 = [delegate2 tableView:viewCopy canMoveRowAtIndexPath:pathCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  delegate = [(HUTableViewDiffableDataSource *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    delegate2 = [(HUTableViewDiffableDataSource *)self delegate];
    [delegate2 tableView:viewCopy commitEditingStyle:style forRowAtIndexPath:pathCopy];
  }
}

- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  viewCopy = view;
  pathCopy = path;
  indexPathCopy = indexPath;
  delegate = [(HUTableViewDiffableDataSource *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    delegate2 = [(HUTableViewDiffableDataSource *)self delegate];
    [delegate2 tableView:viewCopy moveRowAtIndexPath:pathCopy toIndexPath:indexPathCopy];
  }
}

- (BOOL)respondsToSelector:(SEL)selector
{
  if (sel_tableView_commitEditingStyle_forRowAtIndexPath_ == selector)
  {
    delegate = [(HUTableViewDiffableDataSource *)self delegate];
    v3 = objc_opt_respondsToSelector();
  }

  else
  {
    v6.receiver = self;
    v6.super_class = HUTableViewDiffableDataSource;
    v3 = [(HUTableViewDiffableDataSource *)&v6 respondsToSelector:?];
  }

  return v3 & 1;
}

- (HUTableViewDiffableDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end