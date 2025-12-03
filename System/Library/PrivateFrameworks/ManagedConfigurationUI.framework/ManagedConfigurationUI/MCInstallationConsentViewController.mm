@interface MCInstallationConsentViewController
- (MCInstallationConsentDelegate)consentDelegate;
- (MCInstallationConsentViewController)initWithStyle:(int64_t)style;
- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (void)_cancelInstallProfile;
- (void)_installProfile;
- (void)_setup;
- (void)setProfile:(id)profile;
- (void)setShowInstall:(BOOL)install;
@end

@implementation MCInstallationConsentViewController

- (MCInstallationConsentViewController)initWithStyle:(int64_t)style
{
  v6.receiver = self;
  v6.super_class = MCInstallationConsentViewController;
  v3 = [(MCUITableViewController *)&v6 initWithStyle:style];
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
  tableView = [(MCInstallationConsentViewController *)self tableView];
  v4 = objc_opt_class();
  v5 = +[MCInstallationWarningCell reuseIdentifier];
  [tableView registerClass:v4 forCellReuseIdentifier:v5];

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
  navigationItem = [(MCInstallationConsentViewController *)self navigationItem];
  [navigationItem setTitle:v8];

  v10 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__cancelInstallProfile];
  navigationItem2 = [(MCInstallationConsentViewController *)self navigationItem];
  [navigationItem2 setLeftBarButtonItem:v10];

  v12 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:v7 style:2 target:self action:sel__installProfile];
  navigationItem3 = [(MCInstallationConsentViewController *)self navigationItem];
  [navigationItem3 setRightBarButtonItem:v12];
}

- (void)_cancelInstallProfile
{
  consentDelegate = [(MCInstallationConsentViewController *)self consentDelegate];
  [consentDelegate installationConsentViewController:self finishedWithUserContinueResponse:0];
}

- (void)_installProfile
{
  consentDelegate = [(MCInstallationConsentViewController *)self consentDelegate];
  [consentDelegate installationConsentViewController:self finishedWithUserContinueResponse:1];
}

- (void)setProfile:(id)profile
{
  profileCopy = profile;
  if (self->_profile != profileCopy)
  {
    v7 = profileCopy;
    objc_storeStrong(&self->_profile, profile);
    tableView = [(MCInstallationConsentViewController *)self tableView];
    [tableView reloadData];

    profileCopy = v7;
  }
}

- (void)setShowInstall:(BOOL)install
{
  if (self->_showInstall != install)
  {
    self->_showInstall = install;
    if (install)
    {
      v5 = @"INSTALL";
    }

    else
    {
      v5 = @"NEXT";
    }

    v9 = MCUILocalizedString(v5);
    v6 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:v9 style:2 target:self action:sel__installProfile];
    navigationItem = [(MCInstallationConsentViewController *)self navigationItem];
    [navigationItem setRightBarButtonItem:v6];

    navigationItem2 = [(MCInstallationConsentViewController *)self navigationItem];
    DMCSendNavUIUpdatedNotification();
  }
}

- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path
{
  v4 = [(MCInstallationConsentViewController *)self tableView:view];
  [v4 rowHeight];
  v6 = v5;

  return v6;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  profile = [(MCInstallationConsentViewController *)self profile];
  localizedConsentText = [profile localizedConsentText];

  v8 = 0;
  if (!section && localizedConsentText)
  {
    profile2 = [(MCInstallationConsentViewController *)self profile];
    organization = [profile2 organization];
    profile3 = [(MCInstallationConsentViewController *)self profile];
    v12 = profile3;
    if (organization)
    {
      [profile3 organization];
    }

    else
    {
      [profile3 friendlyName];
    }
    v13 = ;

    v14 = MEMORY[0x277CCACA8];
    v15 = MCUILocalizedString(@"INSTALL_CONSENT_MESSAGE_FROM_%@");
    v8 = [v14 stringWithFormat:v15, v13];
  }

  return v8;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = +[MCInstallationWarningCell reuseIdentifier];
  v9 = [viewCopy dequeueReusableCellWithIdentifier:v8 forIndexPath:pathCopy];

  profile = [(MCInstallationConsentViewController *)self profile];
  localizedConsentText = [profile localizedConsentText];
  [v9 setWarningLabelText:localizedConsentText];

  return v9;
}

- (MCInstallationConsentDelegate)consentDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_consentDelegate);

  return WeakRetained;
}

@end