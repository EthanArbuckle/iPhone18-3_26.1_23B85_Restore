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
  v10 = [v9 popoverPresentationController];

  if (v10)
  {
    v11 = [a1 tableView];
    v12 = [v11 cellForRowAtIndexPath:v8];

    if (!v12)
    {
      v12 = [a1 tableView];
    }

    v13 = [v9 popoverPresentationController];
    [v13 setSourceView:v12];
  }

  return v9;
}

- (id)hu_getSelectedCell
{
  v2 = [a1 tableView];
  v3 = [v2 indexPathForSelectedRow];

  if (v3)
  {
    v4 = [a1 tableView];
    v5 = [v4 cellForRowAtIndexPath:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (uint64_t)hu_shouldScrollToTop
{
  if (![a1 isViewLoaded])
  {
    return 1;
  }

  v2 = [a1 tableView];
  [v2 adjustedContentInset];
  v4 = v3 <= 0.0;

  return v4;
}

@end