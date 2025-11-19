@interface _UIContainerHuggingTableViewController
- (_UIContainerHuggingTableViewController)initWithStyle:(int64_t)a3;
- (void)willMoveToParentViewController:(id)a3;
@end

@implementation _UIContainerHuggingTableViewController

- (_UIContainerHuggingTableViewController)initWithStyle:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = _UIContainerHuggingTableViewController;
  v3 = [(_UIContainerHuggingTableViewController *)&v7 initWithStyle:a3];
  if (v3)
  {
    v4 = objc_alloc_init(_UIDocumentPickerContainerViewHuggingTableView);
    [(_UIContainerHuggingTableViewController *)v3 setTableView:v4];

    v5 = [(_UIContainerHuggingTableViewController *)v3 tableView];
    [v5 setAutoresizingMask:18];
  }

  return v3;
}

- (void)willMoveToParentViewController:(id)a3
{
  v4 = a3;
  v5 = [v4 view];
  v6 = [(_UIContainerHuggingTableViewController *)self tableView];
  [v6 setAncestralContainerView:v5];

  v7.receiver = self;
  v7.super_class = _UIContainerHuggingTableViewController;
  [(_UIContainerHuggingTableViewController *)&v7 willMoveToParentViewController:v4];
}

@end