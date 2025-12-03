@interface UITableViewController(HUAdditions)
- (id)hu_actionSheetWithTitle:()HUAdditions message:indexPath:;
- (id)hu_getSelectedCell;
- (uint64_t)hu_shouldScrollToTop;
@end

@implementation UITableViewController(HUAdditions)

- (id)hu_actionSheetWithTitle:()HUAdditions message:indexPath:
{
  v8 = a5;
  v9 = [MEMORY[0x277D75110] alertControllerWithTitle:a3 message:a4 preferredStyle:0];
  popoverPresentationController = [v9 popoverPresentationController];

  if (popoverPresentationController)
  {
    tableView = [self tableView];
    tableView2 = [tableView cellForRowAtIndexPath:v8];

    if (!tableView2)
    {
      tableView2 = [self tableView];
    }

    popoverPresentationController2 = [v9 popoverPresentationController];
    [popoverPresentationController2 setSourceView:tableView2];
  }

  return v9;
}

- (id)hu_getSelectedCell
{
  tableView = [self tableView];
  indexPathForSelectedRow = [tableView indexPathForSelectedRow];

  if (indexPathForSelectedRow)
  {
    tableView2 = [self tableView];
    v5 = [tableView2 cellForRowAtIndexPath:indexPathForSelectedRow];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (uint64_t)hu_shouldScrollToTop
{
  if (![self isViewLoaded])
  {
    return 1;
  }

  tableView = [self tableView];
  [tableView adjustedContentInset];
  v4 = v3 <= 0.0;

  return v4;
}

@end