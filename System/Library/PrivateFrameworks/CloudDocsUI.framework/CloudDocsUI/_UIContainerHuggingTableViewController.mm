@interface _UIContainerHuggingTableViewController
- (_UIContainerHuggingTableViewController)initWithStyle:(int64_t)style;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation _UIContainerHuggingTableViewController

- (_UIContainerHuggingTableViewController)initWithStyle:(int64_t)style
{
  v7.receiver = self;
  v7.super_class = _UIContainerHuggingTableViewController;
  v3 = [(_UIContainerHuggingTableViewController *)&v7 initWithStyle:style];
  if (v3)
  {
    v4 = objc_alloc_init(_UIDocumentPickerContainerViewHuggingTableView);
    [(_UIContainerHuggingTableViewController *)v3 setTableView:v4];

    tableView = [(_UIContainerHuggingTableViewController *)v3 tableView];
    [tableView setAutoresizingMask:18];
  }

  return v3;
}

- (void)willMoveToParentViewController:(id)controller
{
  controllerCopy = controller;
  view = [controllerCopy view];
  tableView = [(_UIContainerHuggingTableViewController *)self tableView];
  [tableView setAncestralContainerView:view];

  v7.receiver = self;
  v7.super_class = _UIContainerHuggingTableViewController;
  [(_UIContainerHuggingTableViewController *)&v7 willMoveToParentViewController:controllerCopy];
}

@end