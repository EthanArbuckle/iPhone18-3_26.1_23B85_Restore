@interface MCInstallationConsentViewController
- (MCInstallationConsentDelegate)consentDelegate;
- (MCInstallationConsentViewController)initWithStyle:(int64_t)a3;
- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (void)_cancelInstallProfile;
- (void)_installProfile;
- (void)_setup;
- (void)setProfile:(id)a3;
- (void)setShowInstall:(BOOL)a3;
@end

@implementation MCInstallationConsentViewController

- (MCInstallationConsentViewController)initWithStyle:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = MCInstallationConsentViewController;
  v3 = [(MCUITableViewController *)&v6 initWithStyle:a3];
  v4 = v3;
  if (v3)
  {
    [(MCInstallationConsentViewController *)v3 _setup];
  }

  return v4;
}

- (void)_setup
{
  v14.receiver = self;
  v14.super_class = MCInstallationConsentViewController;
  [(MCUITableViewController *)&v14 updateExtendedLayoutIncludesOpaqueBars];
  v3 = [(MCInstallationConsentViewController *)self tableView];
  v4 = objc_opt_class();
  v5 = +[MCInstallationWarningCell reuseIdentifier];
  [v3 registerClass:v4 forCellReuseIdentifier:v5];

  if (self->_showInstall)
  {
    v6 = @"INSTALL";
  }

  else
  {
    v6 = @"NEXT";
  }

  v7 = MCUILocalizedString(v6);
  v8 = MCUILocalizedString(@"INSTALL_CONSENT_TITLE");
  v9 = [(MCInstallationConsentViewController *)self navigationItem];
  [v9 setTitle:v8];

  v10 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__cancelInstallProfile];
  v11 = [(MCInstallationConsentViewController *)self navigationItem];
  [v11 setLeftBarButtonItem:v10];

  v12 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:v7 style:2 target:self action:sel__installProfile];
  v13 = [(MCInstallationConsentViewController *)self navigationItem];
  [v13 setRightBarButtonItem:v12];
}

- (void)_cancelInstallProfile
{
  v3 = [(MCInstallationConsentViewController *)self consentDelegate];
  [v3 installationConsentViewController:self finishedWithUserContinueResponse:0];
}

- (void)_installProfile
{
  v3 = [(MCInstallationConsentViewController *)self consentDelegate];
  [v3 installationConsentViewController:self finishedWithUserContinueResponse:1];
}

- (void)setProfile:(id)a3
{
  v5 = a3;
  if (self->_profile != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_profile, a3);
    v6 = [(MCInstallationConsentViewController *)self tableView];
    [v6 reloadData];

    v5 = v7;
  }
}

- (void)setShowInstall:(BOOL)a3
{
  if (self->_showInstall != a3)
  {
    self->_showInstall = a3;
    if (a3)
    {
      v5 = @"INSTALL";
    }

    else
    {
      v5 = @"NEXT";
    }

    v9 = MCUILocalizedString(v5);
    v6 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:v9 style:2 target:self action:sel__installProfile];
    v7 = [(MCInstallationConsentViewController *)self navigationItem];
    [v7 setRightBarButtonItem:v6];

    v8 = [(MCInstallationConsentViewController *)self navigationItem];
    DMCSendNavUIUpdatedNotification();
  }
}

- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4
{
  v4 = [(MCInstallationConsentViewController *)self tableView:a3];
  [v4 rowHeight];
  v6 = v5;

  return v6;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v6 = [(MCInstallationConsentViewController *)self profile];
  v7 = [v6 localizedConsentText];

  v8 = 0;
  if (!a4 && v7)
  {
    v9 = [(MCInstallationConsentViewController *)self profile];
    v10 = [v9 organization];
    v11 = [(MCInstallationConsentViewController *)self profile];
    v12 = v11;
    if (v10)
    {
      [v11 organization];
    }

    else
    {
      [v11 friendlyName];
    }
    v13 = ;

    v14 = MEMORY[0x277CCACA8];
    v15 = MCUILocalizedString(@"INSTALL_CONSENT_MESSAGE_FROM_%@");
    v8 = [v14 stringWithFormat:v15, v13];
  }

  return v8;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[MCInstallationWarningCell reuseIdentifier];
  v9 = [v7 dequeueReusableCellWithIdentifier:v8 forIndexPath:v6];

  v10 = [(MCInstallationConsentViewController *)self profile];
  v11 = [v10 localizedConsentText];
  [v9 setWarningLabelText:v11];

  return v9;
}

- (MCInstallationConsentDelegate)consentDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_consentDelegate);

  return WeakRetained;
}

@end