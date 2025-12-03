@interface MCProfileTitlePageWarningSectionController
- (MCProfileTitlePageWarningSectionController)initWithWarning:(id)warning;
- (UITableView)tableView;
- (double)heightForHeader;
- (id)cellForRowAtIndex:(unint64_t)index;
- (id)titleForHeader;
- (void)registerCellClassWithTableView:(id)view;
@end

@implementation MCProfileTitlePageWarningSectionController

- (MCProfileTitlePageWarningSectionController)initWithWarning:(id)warning
{
  warningCopy = warning;
  v9.receiver = self;
  v9.super_class = MCProfileTitlePageWarningSectionController;
  v6 = [(MCProfileTitlePageWarningSectionController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_warning, warning);
  }

  return v7;
}

- (void)registerCellClassWithTableView:(id)view
{
  viewCopy = view;
  [(MCProfileTitlePageWarningSectionController *)self setTableView:viewCopy];
  [viewCopy registerClass:objc_opt_class() forCellReuseIdentifier:@"warningCell"];
}

- (id)cellForRowAtIndex:(unint64_t)index
{
  tableView = [(MCProfileTitlePageWarningSectionController *)self tableView];

  if (tableView)
  {
    tableView2 = [(MCProfileTitlePageWarningSectionController *)self tableView];
    v6 = [tableView2 dequeueReusableCellWithIdentifier:@"warningCell"];

    warning = [(MCProfileTitlePageWarningSectionController *)self warning];
    localizedBody = [warning localizedBody];
    label = [v6 label];
    [label setText:localizedBody];
  }

  else
  {
    v6 = objc_opt_new();
  }

  return v6;
}

- (id)titleForHeader
{
  warning = [(MCProfileTitlePageWarningSectionController *)self warning];
  localizedTitle = [warning localizedTitle];

  return localizedTitle;
}

- (double)heightForHeader
{
  v2 = MCUIIsiPhone();
  result = 50.0;
  if (v2)
  {
    return 40.0;
  }

  return result;
}

- (UITableView)tableView
{
  WeakRetained = objc_loadWeakRetained(&self->_tableView);

  return WeakRetained;
}

@end