@interface MCInstallationWarningViewController
- (MCInstallationWarningDelegate)warningDelegate;
- (MCInstallationWarningViewController)initWithStyle:(int64_t)style;
- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_cancelInstallProfile;
- (void)_installProfile;
- (void)_setup;
@end

@implementation MCInstallationWarningViewController

- (MCInstallationWarningViewController)initWithStyle:(int64_t)style
{
  v6.receiver = self;
  v6.super_class = MCInstallationWarningViewController;
  v3 = [(MCUITableViewController *)&v6 initWithStyle:style];
  v4 = v3;
  if (v3)
  {
    [(MCInstallationWarningViewController *)v3 _setup];
  }

  return v4;
}

- (void)_setup
{
  v14.receiver = self;
  v14.super_class = MCInstallationWarningViewController;
  [(MCUITableViewController *)&v14 updateExtendedLayoutIncludesOpaqueBars];
  tableView = [(MCInstallationWarningViewController *)self tableView];
  v4 = objc_opt_class();
  v5 = +[MCInstallationWarningCell reuseIdentifier];
  [tableView registerClass:v4 forCellReuseIdentifier:v5];

  v6 = MCUILocalizedString(@"INSTALL_WARNING_TITLE");
  navigationItem = [(MCInstallationWarningViewController *)self navigationItem];
  [navigationItem setTitle:v6];

  v8 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__cancelInstallProfile];
  navigationItem2 = [(MCInstallationWarningViewController *)self navigationItem];
  [navigationItem2 setLeftBarButtonItem:v8];

  v10 = objc_alloc(MEMORY[0x277D751E0]);
  v11 = MCUILocalizedString(@"INSTALL");
  v12 = [v10 initWithTitle:v11 style:2 target:self action:sel__confirmInstallProfileIfNeeded];
  navigationItem3 = [(MCInstallationWarningViewController *)self navigationItem];
  [navigationItem3 setRightBarButtonItem:v12];
}

- (void)_cancelInstallProfile
{
  warningDelegate = [(MCInstallationWarningViewController *)self warningDelegate];
  [warningDelegate installationWarningViewController:self finishedWithUserContinueResponse:0];
}

- (void)_installProfile
{
  warningDelegate = [(MCInstallationWarningViewController *)self warningDelegate];
  [warningDelegate installationWarningViewController:self finishedWithUserContinueResponse:1];
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  warnings = [(MCInstallationWarningViewController *)self warnings];
  v4 = [warnings count];

  return v4;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  warnings = [(MCInstallationWarningViewController *)self warnings];
  v6 = [warnings count] > section;

  return v6;
}

- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path
{
  v4 = [(MCInstallationWarningViewController *)self tableView:view];
  [v4 rowHeight];
  v6 = v5;

  return v6;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  warnings = [(MCInstallationWarningViewController *)self warnings];
  v7 = [warnings count];

  if (v7 <= section)
  {
    localizedTitle = 0;
  }

  else
  {
    warnings2 = [(MCInstallationWarningViewController *)self warnings];
    v9 = [warnings2 objectAtIndex:section];

    localizedTitle = [v9 localizedTitle];
  }

  return localizedTitle;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = +[MCInstallationWarningCell reuseIdentifier];
  v9 = [viewCopy dequeueReusableCellWithIdentifier:v8 forIndexPath:pathCopy];

  warnings = [(MCInstallationWarningViewController *)self warnings];
  section = [pathCopy section];

  v12 = [warnings objectAtIndex:section];

  localizedBody = [v12 localizedBody];
  [v9 setWarningLabelText:localizedBody];

  return v9;
}

- (MCInstallationWarningDelegate)warningDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_warningDelegate);

  return WeakRetained;
}

@end