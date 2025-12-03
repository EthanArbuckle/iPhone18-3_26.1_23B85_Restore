@interface DMCProfileViewController
- (BOOL)_delegateCanPoll;
- (BOOL)_delegateCanRemove;
- (BOOL)_delegateCanUpdate;
- (BOOL)_isSectionPopulated:(int64_t)populated;
- (BOOL)_profileContainsDeclarationsPayload;
- (BOOL)_profileContainsMDMPayload;
- (BOOL)_profileContainsPayloadClass:(Class)class;
- (BOOL)_shouldShowRemoveButton;
- (BOOL)_shouldShowUpdateButton;
- (DMCProfileViewController)initWithMDMProfileForRMAccount;
- (DMCProfileViewController)initWithProfile:(id)profile viewMode:(int64_t)mode;
- (DMCProfileViewController)initWithProfile:(id)profile viewMode:(int64_t)mode profileUIDataProvider:(id)provider;
- (DMCProfileViewControllerDelegate)profileViewControllerDelegate;
- (double)_heightForHeaderFooterInSection:(int64_t)section;
- (id)_emptyViewForHeaderFooter;
- (id)_tableView:(id)view buttonForRowAtIndexPath:(id)path text:(id)text color:(id)color;
- (id)_tableView:(id)view elevatedPayloadCellForRowAtIndexPath:(id)path;
- (id)_tableView:(id)view profileCellForRowAtIndexPath:(id)path;
- (id)_tableView:(id)view profileMoreDetailsCellForRowAtIndexPath:(id)path;
- (id)_tableView:(id)view removeButtonForRowAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int)_profileDetailsModeForElevatedPayloadAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (unint64_t)_profileExpiryForProfile:(id)profile;
- (void)_poll;
- (void)_removeProfile;
- (void)_rmConfigsChanged:(id)changed;
- (void)_setup;
- (void)_setupRMConfigurationsUI;
- (void)_tableChanged:(id)changed;
- (void)_updateProfile;
- (void)setProfile:(id)profile;
- (void)setProfileViewMode:(int64_t)mode;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation DMCProfileViewController

- (DMCProfileViewController)initWithProfile:(id)profile viewMode:(int64_t)mode
{
  profileCopy = profile;
  v7 = objc_opt_new();
  v8 = [(DMCProfileViewController *)self initWithProfile:profileCopy viewMode:mode profileUIDataProvider:v7];

  return v8;
}

- (DMCProfileViewController)initWithProfile:(id)profile viewMode:(int64_t)mode profileUIDataProvider:(id)provider
{
  profileCopy = profile;
  providerCopy = provider;
  v13.receiver = self;
  v13.super_class = DMCProfileViewController;
  v10 = [(DMCProfileTableViewController *)&v13 initWithStyle:2];
  v11 = v10;
  if (v10)
  {
    v10->_profileViewMode = mode;
    objc_storeStrong(&v10->_profileUIDataProvider, provider);
    [(DMCProfileViewController *)v11 _setup];
    [(DMCProfileViewController *)v11 setProfile:profileCopy];
  }

  return v11;
}

- (DMCProfileViewController)initWithMDMProfileForRMAccount
{
  v3 = objc_opt_new();
  profileUIDataProvider = self->_profileUIDataProvider;
  self->_profileUIDataProvider = v3;

  installedMDMProfileIdentifier = [(DMCProfileUIDataProvider *)self->_profileUIDataProvider installedMDMProfileIdentifier];
  v6 = [(DMCProfileUIDataProvider *)self->_profileUIDataProvider installedProfileWithIdentifier:installedMDMProfileIdentifier];
  v7 = [(DMCProfileViewController *)self initWithProfile:v6 viewMode:0 profileUIDataProvider:self->_profileUIDataProvider];

  return v7;
}

- (void)_setup
{
  v14.receiver = self;
  v14.super_class = DMCProfileViewController;
  [(DMCProfileTableViewController *)&v14 updateExtendedLayoutIncludesOpaqueBars];
  [(DMCProfileViewController *)self setEdgesForExtendedLayout:15];
  tableView = [(DMCProfileViewController *)self tableView];
  v4 = objc_opt_class();
  v5 = +[DMCProfileSummaryCell cellIdentifier];
  [tableView registerClass:v4 forCellReuseIdentifier:v5];

  tableView2 = [(DMCProfileViewController *)self tableView];
  v7 = objc_opt_class();
  v8 = +[DMCProfileDetailsSummaryCell cellIdentifier];
  [tableView2 registerClass:v7 forCellReuseIdentifier:v8];

  tableView3 = [(DMCProfileViewController *)self tableView];
  [tableView3 registerClass:objc_opt_class() forCellReuseIdentifier:@"kMCUIProfileMoreDetailsCellID"];

  tableView4 = [(DMCProfileViewController *)self tableView];
  [tableView4 registerClass:objc_opt_class() forCellReuseIdentifier:@"kMCUIElevatedPayloadCellID"];

  tableView5 = [(DMCProfileViewController *)self tableView];
  [tableView5 registerClass:objc_opt_class() forCellReuseIdentifier:@"kMCUIButtonCellID"];

  v13.receiver = self;
  v13.super_class = DMCProfileViewController;
  [(DMCProfileTableViewController *)&v13 reloadTableOnContentSizeCategoryChange];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__tableChanged_ name:@"kMCUIProfileDidChangeNotification" object:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = DMCProfileViewController;
  [(DMCProfileViewController *)&v6 viewWillAppear:appear];
  rmSpecifierProvider = [(DMCProfileViewController *)self rmSpecifierProvider];
  [rmSpecifierProvider reloadSpecifiers];

  if ([MEMORY[0x277D03538] isSharediPad])
  {
    rmSpecifierProviderUserScope = [(DMCProfileViewController *)self rmSpecifierProviderUserScope];
    [rmSpecifierProviderUserScope reloadSpecifiers];
  }
}

- (void)_tableChanged:(id)changed
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __42__DMCProfileViewController__tableChanged___block_invoke;
  v3[3] = &unk_278EE7880;
  objc_copyWeak(&v4, &location);
  dispatch_async(MEMORY[0x277D85CD0], v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __42__DMCProfileViewController__tableChanged___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained tableView];
    [v2 reloadData];

    WeakRetained = v3;
  }
}

- (void)_rmConfigsChanged:(id)changed
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __46__DMCProfileViewController__rmConfigsChanged___block_invoke;
  v3[3] = &unk_278EE7880;
  objc_copyWeak(&v4, &location);
  dispatch_async(MEMORY[0x277D85CD0], v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __46__DMCProfileViewController__rmConfigsChanged___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v1 = [WeakRetained rmSpecifierProvider];
    v2 = [v1 specifiers];
    [WeakRetained setRmConfigurationsCount:{objc_msgSend(v2, "count")}];

    if ([MEMORY[0x277D03538] isSharediPad])
    {
      v3 = [WeakRetained rmSpecifierProviderUserScope];
      v4 = [v3 specifiers];
      [WeakRetained setRmConfigurationsCountUserScope:{objc_msgSend(v4, "count")}];
    }

    v5 = [WeakRetained tableView];
    [v5 reloadData];
  }
}

- (void)setProfile:(id)profile
{
  profileCopy = profile;
  profile = [(DMCProfileViewModel *)self->_UIProfile profile];

  v5 = profileCopy;
  if (profile != profileCopy)
  {
    v6 = [[DMCProfileViewModel alloc] initWithProfile:profileCopy managedPayloads:[(DMCProfileViewController *)self _showManagedPayloads] profileUIDataProvider:self->_profileUIDataProvider];
    UIProfile = self->_UIProfile;
    self->_UIProfile = v6;

    [(DMCProfileViewController *)self setProfileExpiry:[(DMCProfileViewController *)self _profileExpiryForProfile:profileCopy]];
    v8 = self->_UIProfile;
    if (v8)
    {
      isMDMProfile = [(DMCProfileViewModel *)v8 isMDMProfile];
      if (isMDMProfile)
      {
        LOBYTE(isMDMProfile) = [(DMCProfileUIDataProvider *)self->_profileUIDataProvider isProvisionallyEnrolled];
      }

      self->_isProvisionalMDMProfile = isMDMProfile;
    }

    else
    {
      self->_isProvisionalMDMProfile = 0;
    }

    if ([profileCopy isLocked])
    {
      removalPasscode = [profileCopy removalPasscode];
      if (removalPasscode)
      {
        v11 = 0;
      }

      else
      {
        v11 = !self->_isProvisionalMDMProfile;
      }
    }

    else
    {
      v11 = 0;
    }

    installOptions = [profileCopy installOptions];
    v13 = [installOptions objectForKeyedSubscript:*MEMORY[0x277D26430]];
    bOOLValue = [v13 BOOLValue];

    v15 = 0;
    if (!v11 && (bOOLValue & 1) == 0)
    {
      v15 = [MEMORY[0x277D03538] isSharediPad] ^ 1;
    }

    [(DMCProfileViewController *)self setProfileRemovable:v15];
    [(DMCProfileViewController *)self _setupRMConfigurationsUI];
    tableView = [(DMCProfileViewController *)self tableView];
    [tableView reloadData];

    v5 = profileCopy;
  }
}

- (void)setProfileViewMode:(int64_t)mode
{
  if (self->_profileViewMode != mode)
  {
    self->_profileViewMode = mode;
    [(DMCProfileViewModel *)self->_UIProfile setShowManagedPayloads:[(DMCProfileViewController *)self _showManagedPayloads]];
    tableView = [(DMCProfileViewController *)self tableView];
    [tableView reloadData];
  }
}

- (unint64_t)_profileExpiryForProfile:(id)profile
{
  profileCopy = profile;
  expiryDate = [profileCopy expiryDate];
  if (expiryDate && [profileCopy isManagedByProfileService] && (v5 = MEMORY[0x277CBEAA8], v6 = expiryDate, objc_msgSend(v5, "date"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "compare:", v7), v6, v7, v8 != 1))
  {
    unmodifiedExpiryDate = [profileCopy unmodifiedExpiryDate];
    if (unmodifiedExpiryDate && ([MEMORY[0x277CBEAA8] date], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(unmodifiedExpiryDate, "compare:", v12), v12, v13 == 1))
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_delegateCanRemove
{
  profileViewControllerDelegate = [(DMCProfileViewController *)self profileViewControllerDelegate];
  v3 = objc_opt_respondsToSelector();

  return v3 & 1;
}

- (BOOL)_shouldShowRemoveButton
{
  _delegateCanRemove = [(DMCProfileViewController *)self _delegateCanRemove];
  if (!_delegateCanRemove)
  {
    return _delegateCanRemove;
  }

  profileViewMode = [(DMCProfileViewController *)self profileViewMode];
  if (profileViewMode == 1)
  {
    if ([(DMCProfileViewController *)self installProfileSource]== 1 || [(DMCProfileViewController *)self installProfileSource]== 2)
    {
      LOBYTE(_delegateCanRemove) = ![(DMCProfileViewController *)self installComplete];
      return _delegateCanRemove;
    }

LABEL_10:
    LOBYTE(_delegateCanRemove) = 0;
    return _delegateCanRemove;
  }

  if (profileViewMode != 2)
  {
    goto LABEL_10;
  }

  LOBYTE(_delegateCanRemove) = [(DMCProfileViewController *)self profileRemovable];
  return _delegateCanRemove;
}

- (void)_removeProfile
{
  if ([(DMCProfileViewController *)self _delegateCanRemove])
  {
    uIProfile = [(DMCProfileViewController *)self UIProfile];
    profile = [uIProfile profile];
    identifier = [profile identifier];
    NSLog(&cfstr_Dmcprofileview_1.isa, identifier);

    profileViewControllerDelegate = [(DMCProfileViewController *)self profileViewControllerDelegate];
    [profileViewControllerDelegate profileViewControllerDidSelectRemoveProfile:self];
  }
}

- (BOOL)_delegateCanUpdate
{
  profileViewControllerDelegate = [(DMCProfileViewController *)self profileViewControllerDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4 & 1) != 0 && (-[DMCProfileViewController profileViewControllerDelegate](self, "profileViewControllerDelegate"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 profileViewControllerHideUpdateProfile:self], v5, (v6))
  {
    v7 = 0;
  }

  else
  {
    profileViewControllerDelegate2 = [(DMCProfileViewController *)self profileViewControllerDelegate];
    v7 = objc_opt_respondsToSelector();
  }

  return v7 & 1;
}

- (BOOL)_shouldShowUpdateButton
{
  LODWORD(profileExpiry) = [(DMCProfileViewController *)self _delegateCanUpdate];
  if (profileExpiry)
  {
    profileExpiry = [(DMCProfileViewController *)self profileExpiry];
    if (profileExpiry)
    {
      LOBYTE(profileExpiry) = [(DMCProfileViewController *)self profileViewMode]== 2;
    }
  }

  return profileExpiry;
}

- (void)_updateProfile
{
  if ([(DMCProfileViewController *)self _delegateCanUpdate])
  {
    uIProfile = [(DMCProfileViewController *)self UIProfile];
    profile = [uIProfile profile];
    identifier = [profile identifier];
    NSLog(&cfstr_Dmcprofileview_2.isa, identifier);

    profileViewControllerDelegate = [(DMCProfileViewController *)self profileViewControllerDelegate];
    [profileViewControllerDelegate profileViewControllerDidSelectUpdateProfile:self];
  }
}

- (BOOL)_delegateCanPoll
{
  profileViewControllerDelegate = [(DMCProfileViewController *)self profileViewControllerDelegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) != 0 && (-[DMCProfileViewController profileViewControllerDelegate](self, "profileViewControllerDelegate"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 profileViewControllerShouldDisplayPoll:self], v5, !v6))
  {
    v8 = 0;
  }

  else
  {
    profileViewControllerDelegate2 = [(DMCProfileViewController *)self profileViewControllerDelegate];
    v8 = objc_opt_respondsToSelector();
  }

  return v8 & 1;
}

- (void)_poll
{
  if ([(DMCProfileViewController *)self _delegateCanPoll])
  {
    uIProfile = [(DMCProfileViewController *)self UIProfile];
    profile = [uIProfile profile];
    identifier = [profile identifier];
    NSLog(&cfstr_Dmcprofileview_3.isa, identifier);

    profileViewControllerDelegate = [(DMCProfileViewController *)self profileViewControllerDelegate];
    [profileViewControllerDelegate profileViewControllerDidSelectPoll:self];
  }
}

- (BOOL)_profileContainsPayloadClass:(Class)class
{
  v16 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(DMCProfileViewModel *)self->_UIProfile profile:0];
  payloads = [v3 payloads];

  v5 = [payloads countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(payloads);
        }

        if (objc_opt_isKindOfClass())
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [payloads countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (BOOL)_profileContainsMDMPayload
{
  v3 = objc_opt_class();

  return [(DMCProfileViewController *)self _profileContainsPayloadClass:v3];
}

- (BOOL)_profileContainsDeclarationsPayload
{
  v3 = objc_opt_class();

  return [(DMCProfileViewController *)self _profileContainsPayloadClass:v3];
}

- (void)_setupRMConfigurationsUI
{
  if (self->_profileViewMode != 1 && ([(DMCProfileViewController *)self _profileContainsMDMPayload]|| [(DMCProfileViewController *)self _profileContainsDeclarationsPayload]))
  {
    profile = [(DMCProfileViewModel *)self->_UIProfile profile];
    identifier = [profile identifier];

    v6 = [(DMCProfileUIDataProvider *)self->_profileUIDataProvider rmSpecifierProviderForProfileIdentifier:identifier scope:1];
    rmSpecifierProvider = self->_rmSpecifierProvider;
    self->_rmSpecifierProvider = v6;

    v8 = self->_rmSpecifierProvider;
    if (v8)
    {
      specifiers = [(RMConfigurationsSpecifierProvider *)v8 specifiers];
      self->_rmConfigurationsCount = [specifiers count];

      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:self selector:sel__rmConfigsChanged_ name:@"RMConfigurationsSpecifiersDidChangeNotification" object:0];
    }

    if ([MEMORY[0x277D03538] isSharediPad])
    {
      v11 = [(DMCProfileUIDataProvider *)self->_profileUIDataProvider rmSpecifierProviderForProfileIdentifier:identifier scope:0];
      rmSpecifierProviderUserScope = self->_rmSpecifierProviderUserScope;
      self->_rmSpecifierProviderUserScope = v11;

      v13 = self->_rmSpecifierProviderUserScope;
      if (v13)
      {
        specifiers2 = [(RMConfigurationsSpecifierProvider *)v13 specifiers];
        self->_rmConfigurationsCountUserScope = [specifiers2 count];
      }
    }
  }

  else
  {
    v3 = self->_rmSpecifierProvider;
    self->_rmSpecifierProvider = 0;

    v4 = self->_rmSpecifierProviderUserScope;
    self->_rmSpecifierProviderUserScope = 0;

    self->_rmConfigurationsCount = 0;
    self->_rmConfigurationsCountUserScope = 0;
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  if (section == 1)
  {
    uIProfile = [(DMCProfileViewController *)self UIProfile];
    elevatedPayloadTypes = [uIProfile elevatedPayloadTypes];
    v10 = [elevatedPayloadTypes count];
    if ([(DMCProfileViewController *)self rmConfigurationsCount])
    {
      ++v10;
    }

    if ([(DMCProfileViewController *)self rmConfigurationsCountUserScope])
    {
      v9 = v10 + 1;
    }

    else
    {
      v9 = v10;
    }
  }

  else
  {
    if (section)
    {
      v9 = [(DMCProfileViewController *)self _isSectionPopulated:section];
      goto LABEL_13;
    }

    uIProfile = [(DMCProfileViewController *)self UIProfile];
    elevatedPayloadTypes = [uIProfile moreDetailsSections];
    if ([elevatedPayloadTypes count])
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }
  }

LABEL_13:
  return v9;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  section = [pathCopy section];
  if (section <= 1)
  {
    if (!section)
    {
      v9 = [(DMCProfileViewController *)self _tableView:viewCopy profileCellForRowAtIndexPath:pathCopy];
      goto LABEL_14;
    }

    if (section == 1)
    {
      v9 = [(DMCProfileViewController *)self _tableView:viewCopy elevatedPayloadCellForRowAtIndexPath:pathCopy];
      goto LABEL_14;
    }

LABEL_13:
    NSLog(&cfstr_Dmcprofileview_4.isa, pathCopy);
    v9 = objc_opt_new();
    goto LABEL_14;
  }

  if (section == 2)
  {
    v10 = @"DMC_POLL_HRN_TITLE";
LABEL_11:
    v11 = DMCEnrollmentLocalizedString(v10);
    systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
    v13 = [(DMCProfileViewController *)self _tableView:viewCopy buttonForRowAtIndexPath:pathCopy text:v11 color:systemBlueColor];

    goto LABEL_15;
  }

  if (section == 3)
  {
    v10 = @"DMC_UPDATE_PROFILE_TITLE";
    goto LABEL_11;
  }

  if (section != 4)
  {
    goto LABEL_13;
  }

  v9 = [(DMCProfileViewController *)self _tableView:viewCopy removeButtonForRowAtIndexPath:pathCopy];
LABEL_14:
  v13 = v9;
LABEL_15:

  return v13;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  section = [pathCopy section];
  if (section <= 1)
  {
    if (section)
    {
      if (section != 1)
      {
        goto LABEL_21;
      }

      v8 = [(DMCProfileViewController *)self _profileDetailsModeForElevatedPayloadAtIndexPath:pathCopy];
      if (v8 == 7)
      {
        if (![MEMORY[0x277D03538] isSharediPad])
        {
          goto LABEL_21;
        }

        v17 = [DMCRMConfigurationsViewController alloc];
        rmSpecifierProviderUserScope = [(DMCProfileViewController *)self rmSpecifierProviderUserScope];
        v12 = v17;
        v13 = rmSpecifierProviderUserScope;
        v14 = 0;
      }

      else
      {
        v9 = v8;
        if (v8 != 6)
        {
          v19 = [DMCProfileDetailsViewController alloc];
          uIProfile = [(DMCProfileViewController *)self UIProfile];
          v18 = [(DMCProfileDetailsViewController *)v19 initWithProfileViewModel:uIProfile mode:v9];

          goto LABEL_20;
        }

        v10 = [DMCRMConfigurationsViewController alloc];
        rmSpecifierProviderUserScope = [(DMCProfileViewController *)self rmSpecifierProvider];
        v12 = v10;
        v13 = rmSpecifierProviderUserScope;
        v14 = 1;
      }

      v16 = [(DMCRMConfigurationsViewController *)v12 initWithRMConfigurationsSpecifierProvider:v13 scope:v14];
    }

    else
    {
      if ([pathCopy row] != 2)
      {
        goto LABEL_21;
      }

      v15 = [DMCProfileDetailsViewController alloc];
      rmSpecifierProviderUserScope = [(DMCProfileViewController *)self UIProfile];
      v16 = [(DMCProfileDetailsViewController *)v15 initWithProfileViewModel:rmSpecifierProviderUserScope mode:0];
    }

    v18 = v16;

LABEL_20:
    [(UIViewController *)self dmc_pushViewController:v18 animated:1];

    goto LABEL_21;
  }

  switch(section)
  {
    case 2:
      [(DMCProfileViewController *)self _poll];
      break;
    case 3:
      [(DMCProfileViewController *)self _updateProfile];
      break;
    case 4:
      [(DMCProfileViewController *)self _removeProfile];
      break;
  }

LABEL_21:
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

- (double)_heightForHeaderFooterInSection:(int64_t)section
{
  v3 = [(DMCProfileViewController *)self _isSectionPopulated:section];
  result = *MEMORY[0x277D76F30];
  if (!v3)
  {
    return 2.22507386e-308;
  }

  return result;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  if ([(DMCProfileViewController *)self _isSectionPopulated:section])
  {
    v10.receiver = self;
    v10.super_class = DMCProfileViewController;
    _emptyViewForHeaderFooter = [(DMCProfileViewController *)&v10 tableView:viewCopy viewForHeaderInSection:section];
  }

  else
  {
    _emptyViewForHeaderFooter = [(DMCProfileViewController *)self _emptyViewForHeaderFooter];
  }

  v8 = _emptyViewForHeaderFooter;

  return v8;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  viewCopy = view;
  if ([(DMCProfileViewController *)self _isSectionPopulated:section])
  {
    v10.receiver = self;
    v10.super_class = DMCProfileViewController;
    _emptyViewForHeaderFooter = [(DMCProfileViewController *)&v10 tableView:viewCopy viewForFooterInSection:section];
  }

  else
  {
    _emptyViewForHeaderFooter = [(DMCProfileViewController *)self _emptyViewForHeaderFooter];
  }

  v8 = _emptyViewForHeaderFooter;

  return v8;
}

- (id)_emptyViewForHeaderFooter
{
  v2 = objc_alloc(MEMORY[0x277D75D18]);
  v3 = [v2 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [v3 setBackgroundColor:clearColor];

  return v3;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  if (section)
  {
    v5 = 0;

    return v5;
  }

  profileExpiry = [(DMCProfileViewController *)self profileExpiry];
  if (profileExpiry == 1)
  {
    _delegateCanUpdate = [(DMCProfileViewController *)self _delegateCanUpdate];
    v10 = @"DMC_PROFILE_EXPIRING_CERT";
    v11 = @"DMC_PROFILE_EXPIRING_CERT_REENROLL";
  }

  else
  {
    if (profileExpiry != 2)
    {
      v5 = 0;
      goto LABEL_14;
    }

    _delegateCanUpdate = [(DMCProfileViewController *)self _delegateCanUpdate];
    v10 = @"DMC_PROFILE_EXPIRED";
    v11 = @"DMC_PROFILE_EXPIRED_REENROLL";
  }

  if (_delegateCanUpdate)
  {
    v12 = v11;
  }

  else
  {
    v12 = v10;
  }

  v5 = DMCEnrollmentLocalizedString(v12);
LABEL_14:

  return v5;
}

- (BOOL)_isSectionPopulated:(int64_t)populated
{
  if (populated <= 1)
  {
    if (!populated)
    {
      return 1;
    }

    if (populated == 1)
    {
      uIProfile = [(DMCProfileViewController *)self UIProfile];
      elevatedPayloadTypes = [uIProfile elevatedPayloadTypes];
      v7 = [elevatedPayloadTypes count] || -[DMCProfileViewController rmConfigurationsCount](self, "rmConfigurationsCount") || -[DMCProfileViewController rmConfigurationsCountUserScope](self, "rmConfigurationsCountUserScope") != 0;

      return v7;
    }

    return 0;
  }

  switch(populated)
  {
    case 2:

      return [(DMCProfileViewController *)self _shouldShowPollButton];
    case 3:

      return [(DMCProfileViewController *)self _shouldShowUpdateButton];
    case 4:

      return [(DMCProfileViewController *)self _shouldShowRemoveButton];
    default:
      return 0;
  }
}

- (int)_profileDetailsModeForElevatedPayloadAtIndexPath:(id)path
{
  pathCopy = path;
  uIProfile = [(DMCProfileViewController *)self UIProfile];
  elevatedPayloadTypes = [uIProfile elevatedPayloadTypes];

  v7 = [pathCopy row];
  if (v7 == [elevatedPayloadTypes count])
  {
    if ([(DMCProfileViewController *)self rmConfigurationsCount])
    {
      v8 = 6;
    }

    else
    {
      v8 = 7;
    }
  }

  else
  {
    v9 = [pathCopy row];
    if (v9 == [elevatedPayloadTypes count] + 1)
    {
      v8 = 7;
    }

    else
    {
      v10 = [elevatedPayloadTypes objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
      integerValue = [v10 integerValue];

      if ((integerValue - 1) >= 4)
      {
        NSLog(&cfstr_Dmcprofileview_5.isa, integerValue);
        v8 = 0;
      }

      else
      {
        v8 = integerValue + 1;
      }
    }
  }

  return v8;
}

- (id)_tableView:(id)view profileCellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [pathCopy row];
  switch(v8)
  {
    case 2:
      v14 = [(DMCProfileViewController *)self _tableView:viewCopy profileMoreDetailsCellForRowAtIndexPath:pathCopy];
      break;
    case 1:
      v13 = +[DMCProfileDetailsSummaryCell cellIdentifier];
      v10 = [viewCopy dequeueReusableCellWithIdentifier:v13 forIndexPath:pathCopy];

      uIProfile = [(DMCProfileViewController *)self UIProfile];
      [v10 setProfileViewModel:uIProfile];
      goto LABEL_6;
    case 0:
      v9 = +[DMCProfileSummaryCell cellIdentifier];
      v10 = [viewCopy dequeueReusableCellWithIdentifier:v9 forIndexPath:pathCopy];

      uIProfile = [(DMCProfileViewController *)self UIProfile];
      profile = [uIProfile profile];
      [v10 setProfile:profile];

LABEL_6:
      goto LABEL_10;
    default:
      NSLog(&cfstr_Dmcprofileview_6.isa, pathCopy);
      v14 = objc_opt_new();
      break;
  }

  v10 = v14;
LABEL_10:

  return v10;
}

- (id)_tableView:(id)view profileMoreDetailsCellForRowAtIndexPath:(id)path
{
  v4 = [view dequeueReusableCellWithIdentifier:@"kMCUIProfileMoreDetailsCellID" forIndexPath:path];
  v5 = DMCEnrollmentLocalizedString(@"DMC_MORE_DETAILS_TITLE");
  textLabel = [v4 textLabel];
  [textLabel setText:v5];

  [v4 setAccessoryType:1];

  return v4;
}

- (id)_tableView:(id)view elevatedPayloadCellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"kMCUIElevatedPayloadCellID" forIndexPath:pathCopy];
  v8 = [(DMCProfileViewController *)self _profileDetailsModeForElevatedPayloadAtIndexPath:pathCopy];
  if (v8 > 4)
  {
    switch(v8)
    {
      case 5:
        v9 = DMCEnrollmentLocalizedString(@"DMC_PROFILE_DETAILS_RESTRICTIONS");
        uIProfile = [(DMCProfileViewController *)self UIProfile];
        numberOfRestrictions = [uIProfile numberOfRestrictions];
        goto LABEL_14;
      case 6:
        if ([MEMORY[0x277D03538] isSharediPad])
        {
          v15 = @"DMC_DEVICE_CONFIGURATIONS_TITLE";
        }

        else
        {
          v15 = @"DMC_CONFIGURATIONS_TITLE";
        }

        v9 = DMCEnrollmentLocalizedString(v15);
        rmConfigurationsCount = [(DMCProfileViewController *)self rmConfigurationsCount];
        break;
      case 7:
        v9 = DMCEnrollmentLocalizedString(@"DMC_USER_CONFIGURATIONS_TITLE");
        rmConfigurationsCount = [(DMCProfileViewController *)self rmConfigurationsCountUserScope];
        break;
      default:
        goto LABEL_12;
    }

    v14 = rmConfigurationsCount;
    goto LABEL_20;
  }

  if (v8 == 2)
  {
    v9 = DMCEnrollmentLocalizedString(@"DMC_PROFILE_DETAILS_ACCOUNTS");
    uIProfile = [(DMCProfileViewController *)self UIProfile];
    numberOfRestrictions = [uIProfile numberOfAccounts];
    goto LABEL_14;
  }

  if (v8 == 3)
  {
    v9 = DMCEnrollmentLocalizedString(@"DMC_PROFILE_DETAILS_APPS");
    uIProfile = [(DMCProfileViewController *)self UIProfile];
    numberOfRestrictions = [uIProfile numberOfManagedApps];
    goto LABEL_14;
  }

  if (v8 != 4)
  {
LABEL_12:
    NSLog(&cfstr_Dmcprofileview_7.isa, v8, pathCopy);
    v13 = objc_opt_new();
    goto LABEL_21;
  }

  v9 = DMCEnrollmentLocalizedString(@"DMC_PROFILE_DETAILS_BOOKS");
  uIProfile = [(DMCProfileViewController *)self UIProfile];
  numberOfRestrictions = [uIProfile numberOfManagedBooks];
LABEL_14:
  v14 = numberOfRestrictions;

LABEL_20:
  textLabel = [v7 textLabel];
  [textLabel setText:v9];

  textLabel2 = [v7 textLabel];
  [textLabel2 setTextAlignment:4];

  v18 = MEMORY[0x277CCABB8];
  v19 = [MEMORY[0x277CCABB0] numberWithInteger:v14];
  v20 = [v18 localizedStringFromNumber:v19 numberStyle:0];
  detailTextLabel = [v7 detailTextLabel];
  [detailTextLabel setText:v20];

  [v7 setAccessoryType:1];
  v13 = v7;

LABEL_21:

  return v13;
}

- (id)_tableView:(id)view buttonForRowAtIndexPath:(id)path text:(id)text color:(id)color
{
  colorCopy = color;
  textCopy = text;
  v11 = [view dequeueReusableCellWithIdentifier:@"kMCUIButtonCellID" forIndexPath:path];
  textLabel = [v11 textLabel];
  [textLabel setText:textCopy];

  textLabel2 = [v11 textLabel];
  [textLabel2 setTextAlignment:1];

  textLabel3 = [v11 textLabel];
  [textLabel3 setTextColor:colorCopy];

  return v11;
}

- (id)_tableView:(id)view removeButtonForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  if ([(DMCProfileViewController *)self profileViewMode]== 2)
  {
    uIProfile = [(DMCProfileViewController *)self UIProfile];
    isMDMProfile = [uIProfile isMDMProfile];

    if (isMDMProfile)
    {
      if ([(DMCProfileUIDataProvider *)self->_profileUIDataProvider isProvisionallyEnrolled])
      {
        v10 = @"DMC_MDM_LEAVE_REMOTE_MANAGEMENT";
      }

      else
      {
        v10 = @"DMC_MDM_REMOVE_TITLE";
      }
    }

    else
    {
      v10 = @"DMC_PROFILE_REMOVE_TITLE";
    }
  }

  else
  {
    v10 = @"DMC_PROFILE_REMOVE_UNINSTALLED_TITLE";
  }

  v11 = DMCEnrollmentLocalizedString(v10);
  dMCProfileRedColor = [MEMORY[0x277D75348] DMCProfileRedColor];
  v13 = [(DMCProfileViewController *)self _tableView:viewCopy buttonForRowAtIndexPath:pathCopy text:v11 color:dMCProfileRedColor];

  removeButton = self->_removeButton;
  self->_removeButton = v13;

  v15 = self->_removeButton;
  v16 = v15;

  return v15;
}

- (DMCProfileViewControllerDelegate)profileViewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_profileViewControllerDelegate);

  return WeakRetained;
}

@end