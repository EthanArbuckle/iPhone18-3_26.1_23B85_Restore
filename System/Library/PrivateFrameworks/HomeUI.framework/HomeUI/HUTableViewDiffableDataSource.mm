@interface HUTableViewDiffableDataSource
- (BOOL)respondsToSelector:(SEL)a3;
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (BOOL)tableView:(id)a3 canMoveRowAtIndexPath:(id)a4;
- (HUTableViewDiffableDataSource)initWithTableView:(id)a3 cellProvider:(id)a4 delegate:(id)a5;
- (HUTableViewDiffableDataSourceDelegate)delegate;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5;
@end

@implementation HUTableViewDiffableDataSource

- (HUTableViewDiffableDataSource)initWithTableView:(id)a3 cellProvider:(id)a4 delegate:(id)a5
{
  v8 = a4;
  v9 = a3;
  objc_storeWeak(&self->_delegate, a5);
  v12.receiver = self;
  v12.super_class = HUTableViewDiffableDataSource;
  v10 = [(UITableViewDiffableDataSource *)&v12 initWithTableView:v9 cellProvider:v8];

  return v10;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(HUTableViewDiffableDataSource *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(HUTableViewDiffableDataSource *)self delegate];
    v10 = [v9 tableView:v6 titleForHeaderInSection:a4];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(HUTableViewDiffableDataSource *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(HUTableViewDiffableDataSource *)self delegate];
    v10 = [v9 tableView:v6 titleForFooterInSection:a4];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HUTableViewDiffableDataSource *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(HUTableViewDiffableDataSource *)self delegate];
    v11 = [v10 tableView:v6 canEditRowAtIndexPath:v7];
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (BOOL)tableView:(id)a3 canMoveRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HUTableViewDiffableDataSource *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(HUTableViewDiffableDataSource *)self delegate];
    v11 = [v10 tableView:v6 canMoveRowAtIndexPath:v7];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v12 = a3;
  v8 = a5;
  v9 = [(HUTableViewDiffableDataSource *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(HUTableViewDiffableDataSource *)self delegate];
    [v11 tableView:v12 commitEditingStyle:a4 forRowAtIndexPath:v8];
  }
}

- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(HUTableViewDiffableDataSource *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(HUTableViewDiffableDataSource *)self delegate];
    [v12 tableView:v13 moveRowAtIndexPath:v8 toIndexPath:v9];
  }
}

- (BOOL)respondsToSelector:(SEL)a3
{
  if (sel_tableView_commitEditingStyle_forRowAtIndexPath_ == a3)
  {
    v4 = [(HUTableViewDiffableDataSource *)self delegate];
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