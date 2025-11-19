@interface MCProfileTitlePageWarningSectionController
- (MCProfileTitlePageWarningSectionController)initWithWarning:(id)a3;
- (UITableView)tableView;
- (double)heightForHeader;
- (id)cellForRowAtIndex:(unint64_t)a3;
- (id)titleForHeader;
- (void)registerCellClassWithTableView:(id)a3;
@end

@implementation MCProfileTitlePageWarningSectionController

- (MCProfileTitlePageWarningSectionController)initWithWarning:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MCProfileTitlePageWarningSectionController;
  v6 = [(MCProfileTitlePageWarningSectionController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_warning, a3);
  }

  return v7;
}

- (void)registerCellClassWithTableView:(id)a3
{
  v4 = a3;
  [(MCProfileTitlePageWarningSectionController *)self setTableView:v4];
  [v4 registerClass:objc_opt_class() forCellReuseIdentifier:@"warningCell"];
}

- (id)cellForRowAtIndex:(unint64_t)a3
{
  v4 = [(MCProfileTitlePageWarningSectionController *)self tableView];

  if (v4)
  {
    v5 = [(MCProfileTitlePageWarningSectionController *)self tableView];
    v6 = [v5 dequeueReusableCellWithIdentifier:@"warningCell"];

    v7 = [(MCProfileTitlePageWarningSectionController *)self warning];
    v8 = [v7 localizedBody];
    v9 = [v6 label];
    [v9 setText:v8];
  }

  else
  {
    v6 = objc_opt_new();
  }

  return v6;
}

- (id)titleForHeader
{
  v2 = [(MCProfileTitlePageWarningSectionController *)self warning];
  v3 = [v2 localizedTitle];

  return v3;
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