@interface MCInstallationWarningViewController
- (MCInstallationWarningDelegate)warningDelegate;
- (MCInstallationWarningViewController)initWithStyle:(int64_t)a3;
- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_cancelInstallProfile;
- (void)_installProfile;
- (void)_setup;
@end

@implementation MCInstallationWarningViewController

- (MCInstallationWarningViewController)initWithStyle:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = MCInstallationWarningViewController;
  v3 = [(MCUITableViewController *)&v6 initWithStyle:a3];
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
  v3 = [(MCInstallationWarningViewController *)self tableView];
  v4 = objc_opt_class();
  v5 = +[MCInstallationWarningCell reuseIdentifier];
  [v3 registerClass:v4 forCellReuseIdentifier:v5];

  v6 = MCUILocalizedString(@"INSTALL_WARNING_TITLE");
  v7 = [(MCInstallationWarningViewController *)self navigationItem];
  [v7 setTitle:v6];

  v8 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__cancelInstallProfile];
  v9 = [(MCInstallationWarningViewController *)self navigationItem];
  [v9 setLeftBarButtonItem:v8];

  v10 = objc_alloc(MEMORY[0x277D751E0]);
  v11 = MCUILocalizedString(@"INSTALL");
  v12 = [v10 initWithTitle:v11 style:2 target:self action:sel__confirmInstallProfileIfNeeded];
  v13 = [(MCInstallationWarningViewController *)self navigationItem];
  [v13 setRightBarButtonItem:v12];
}

- (void)_cancelInstallProfile
{
  v3 = [(MCInstallationWarningViewController *)self warningDelegate];
  [v3 installationWarningViewController:self finishedWithUserContinueResponse:0];
}

- (void)_installProfile
{
  v3 = [(MCInstallationWarningViewController *)self warningDelegate];
  [v3 installationWarningViewController:self finishedWithUserContinueResponse:1];
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(MCInstallationWarningViewController *)self warnings];
  v4 = [v3 count];

  return v4;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(MCInstallationWarningViewController *)self warnings];
  v6 = [v5 count] > a4;

  return v6;
}

- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4
{
  v4 = [(MCInstallationWarningViewController *)self tableView:a3];
  [v4 rowHeight];
  v6 = v5;

  return v6;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v6 = [(MCInstallationWarningViewController *)self warnings];
  v7 = [v6 count];

  if (v7 <= a4)
  {
    v10 = 0;
  }

  else
  {
    v8 = [(MCInstallationWarningViewController *)self warnings];
    v9 = [v8 objectAtIndex:a4];

    v10 = [v9 localizedTitle];
  }

  return v10;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[MCInstallationWarningCell reuseIdentifier];
  v9 = [v7 dequeueReusableCellWithIdentifier:v8 forIndexPath:v6];

  v10 = [(MCInstallationWarningViewController *)self warnings];
  v11 = [v6 section];

  v12 = [v10 objectAtIndex:v11];

  v13 = [v12 localizedBody];
  [v9 setWarningLabelText:v13];

  return v9;
}

- (MCInstallationWarningDelegate)warningDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_warningDelegate);

  return WeakRetained;
}

@end