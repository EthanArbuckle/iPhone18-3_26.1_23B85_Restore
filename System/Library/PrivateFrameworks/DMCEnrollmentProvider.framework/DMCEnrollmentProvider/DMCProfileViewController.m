@interface DMCProfileViewController
- (BOOL)_delegateCanPoll;
- (BOOL)_delegateCanRemove;
- (BOOL)_delegateCanUpdate;
- (BOOL)_isSectionPopulated:(int64_t)a3;
- (BOOL)_profileContainsDeclarationsPayload;
- (BOOL)_profileContainsMDMPayload;
- (BOOL)_profileContainsPayloadClass:(Class)a3;
- (BOOL)_shouldShowRemoveButton;
- (BOOL)_shouldShowUpdateButton;
- (DMCProfileViewController)initWithMDMProfileForRMAccount;
- (DMCProfileViewController)initWithProfile:(id)a3 viewMode:(int64_t)a4;
- (DMCProfileViewController)initWithProfile:(id)a3 viewMode:(int64_t)a4 profileUIDataProvider:(id)a5;
- (DMCProfileViewControllerDelegate)profileViewControllerDelegate;
- (double)_heightForHeaderFooterInSection:(int64_t)a3;
- (id)_emptyViewForHeaderFooter;
- (id)_tableView:(id)a3 buttonForRowAtIndexPath:(id)a4 text:(id)a5 color:(id)a6;
- (id)_tableView:(id)a3 elevatedPayloadCellForRowAtIndexPath:(id)a4;
- (id)_tableView:(id)a3 profileCellForRowAtIndexPath:(id)a4;
- (id)_tableView:(id)a3 profileMoreDetailsCellForRowAtIndexPath:(id)a4;
- (id)_tableView:(id)a3 removeButtonForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int)_profileDetailsModeForElevatedPayloadAtIndexPath:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (unint64_t)_profileExpiryForProfile:(id)a3;
- (void)_poll;
- (void)_removeProfile;
- (void)_rmConfigsChanged:(id)a3;
- (void)_setup;
- (void)_setupRMConfigurationsUI;
- (void)_tableChanged:(id)a3;
- (void)_updateProfile;
- (void)setProfile:(id)a3;
- (void)setProfileViewMode:(int64_t)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation DMCProfileViewController

- (DMCProfileViewController)initWithProfile:(id)a3 viewMode:(int64_t)a4
{
  v6 = a3;
  v7 = objc_opt_new();
  v8 = [(DMCProfileViewController *)self initWithProfile:v6 viewMode:a4 profileUIDataProvider:v7];

  return v8;
}

- (DMCProfileViewController)initWithProfile:(id)a3 viewMode:(int64_t)a4 profileUIDataProvider:(id)a5
{
  v8 = a3;
  v9 = a5;
  v13.receiver = self;
  v13.super_class = DMCProfileViewController;
  v10 = [(DMCProfileTableViewController *)&v13 initWithStyle:2];
  v11 = v10;
  if (v10)
  {
    v10->_profileViewMode = a4;
    objc_storeStrong(&v10->_profileUIDataProvider, a5);
    [(DMCProfileViewController *)v11 _setup];
    [(DMCProfileViewController *)v11 setProfile:v8];
  }

  return v11;
}

- (DMCProfileViewController)initWithMDMProfileForRMAccount
{
  v3 = objc_opt_new();
  profileUIDataProvider = self->_profileUIDataProvider;
  self->_profileUIDataProvider = v3;

  v5 = [(DMCProfileUIDataProvider *)self->_profileUIDataProvider installedMDMProfileIdentifier];
  v6 = [(DMCProfileUIDataProvider *)self->_profileUIDataProvider installedProfileWithIdentifier:v5];
  v7 = [(DMCProfileViewController *)self initWithProfile:v6 viewMode:0 profileUIDataProvider:self->_profileUIDataProvider];

  return v7;
}

- (void)_setup
{
  v14.receiver = self;
  v14.super_class = DMCProfileViewController;
  [(DMCProfileTableViewController *)&v14 updateExtendedLayoutIncludesOpaqueBars];
  [(DMCProfileViewController *)self setEdgesForExtendedLayout:15];
  v3 = [(DMCProfileViewController *)self tableView];
  v4 = objc_opt_class();
  v5 = +[DMCProfileSummaryCell cellIdentifier];
  [v3 registerClass:v4 forCellReuseIdentifier:v5];

  v6 = [(DMCProfileViewController *)self tableView];
  v7 = objc_opt_class();
  v8 = +[DMCProfileDetailsSummaryCell cellIdentifier];
  [v6 registerClass:v7 forCellReuseIdentifier:v8];

  v9 = [(DMCProfileViewController *)self tableView];
  [v9 registerClass:objc_opt_class() forCellReuseIdentifier:@"kMCUIProfileMoreDetailsCellID"];

  v10 = [(DMCProfileViewController *)self tableView];
  [v10 registerClass:objc_opt_class() forCellReuseIdentifier:@"kMCUIElevatedPayloadCellID"];

  v11 = [(DMCProfileViewController *)self tableView];
  [v11 registerClass:objc_opt_class() forCellReuseIdentifier:@"kMCUIButtonCellID"];

  v13.receiver = self;
  v13.super_class = DMCProfileViewController;
  [(DMCProfileTableViewController *)&v13 reloadTableOnContentSizeCategoryChange];
  v12 = [MEMORY[0x277CCAB98] defaultCenter];
  [v12 addObserver:self selector:sel__tableChanged_ name:@"kMCUIProfileDidChangeNotification" object:0];
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = DMCProfileViewController;
  [(DMCProfileViewController *)&v6 viewWillAppear:a3];
  v4 = [(DMCProfileViewController *)self rmSpecifierProvider];
  [v4 reloadSpecifiers];

  if ([MEMORY[0x277D03538] isSharediPad])
  {
    v5 = [(DMCProfileViewController *)self rmSpecifierProviderUserScope];
    [v5 reloadSpecifiers];
  }
}

- (void)_tableChanged:(id)a3
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

- (void)_rmConfigsChanged:(id)a3
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

- (void)setProfile:(id)a3
{
  v17 = a3;
  v4 = [(DMCProfileViewModel *)self->_UIProfile profile];

  v5 = v17;
  if (v4 != v17)
  {
    v6 = [[DMCProfileViewModel alloc] initWithProfile:v17 managedPayloads:[(DMCProfileViewController *)self _showManagedPayloads] profileUIDataProvider:self->_profileUIDataProvider];
    UIProfile = self->_UIProfile;
    self->_UIProfile = v6;

    [(DMCProfileViewController *)self setProfileExpiry:[(DMCProfileViewController *)self _profileExpiryForProfile:v17]];
    v8 = self->_UIProfile;
    if (v8)
    {
      v9 = [(DMCProfileViewModel *)v8 isMDMProfile];
      if (v9)
      {
        LOBYTE(v9) = [(DMCProfileUIDataProvider *)self->_profileUIDataProvider isProvisionallyEnrolled];
      }

      self->_isProvisionalMDMProfile = v9;
    }

    else
    {
      self->_isProvisionalMDMProfile = 0;
    }

    if ([v17 isLocked])
    {
      v10 = [v17 removalPasscode];
      if (v10)
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

    v12 = [v17 installOptions];
    v13 = [v12 objectForKeyedSubscript:*MEMORY[0x277D26430]];
    v14 = [v13 BOOLValue];

    v15 = 0;
    if (!v11 && (v14 & 1) == 0)
    {
      v15 = [MEMORY[0x277D03538] isSharediPad] ^ 1;
    }

    [(DMCProfileViewController *)self setProfileRemovable:v15];
    [(DMCProfileViewController *)self _setupRMConfigurationsUI];
    v16 = [(DMCProfileViewController *)self tableView];
    [v16 reloadData];

    v5 = v17;
  }
}

- (void)setProfileViewMode:(int64_t)a3
{
  if (self->_profileViewMode != a3)
  {
    self->_profileViewMode = a3;
    [(DMCProfileViewModel *)self->_UIProfile setShowManagedPayloads:[(DMCProfileViewController *)self _showManagedPayloads]];
    v5 = [(DMCProfileViewController *)self tableView];
    [v5 reloadData];
  }
}

- (unint64_t)_profileExpiryForProfile:(id)a3
{
  v3 = a3;
  v4 = [v3 expiryDate];
  if (v4 && [v3 isManagedByProfileService] && (v5 = MEMORY[0x277CBEAA8], v6 = v4, objc_msgSend(v5, "date"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "compare:", v7), v6, v7, v8 != 1))
  {
    v11 = [v3 unmodifiedExpiryDate];
    if (v11 && ([MEMORY[0x277CBEAA8] date], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v11, "compare:", v12), v12, v13 == 1))
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
  v2 = [(DMCProfileViewController *)self profileViewControllerDelegate];
  v3 = objc_opt_respondsToSelector();

  return v3 & 1;
}

- (BOOL)_shouldShowRemoveButton
{
  v3 = [(DMCProfileViewController *)self _delegateCanRemove];
  if (!v3)
  {
    return v3;
  }

  v4 = [(DMCProfileViewController *)self profileViewMode];
  if (v4 == 1)
  {
    if ([(DMCProfileViewController *)self installProfileSource]== 1 || [(DMCProfileViewController *)self installProfileSource]== 2)
    {
      LOBYTE(v3) = ![(DMCProfileViewController *)self installComplete];
      return v3;
    }

LABEL_10:
    LOBYTE(v3) = 0;
    return v3;
  }

  if (v4 != 2)
  {
    goto LABEL_10;
  }

  LOBYTE(v3) = [(DMCProfileViewController *)self profileRemovable];
  return v3;
}

- (void)_removeProfile
{
  if ([(DMCProfileViewController *)self _delegateCanRemove])
  {
    v3 = [(DMCProfileViewController *)self UIProfile];
    v4 = [v3 profile];
    v5 = [v4 identifier];
    NSLog(&cfstr_Dmcprofileview_1.isa, v5);

    v6 = [(DMCProfileViewController *)self profileViewControllerDelegate];
    [v6 profileViewControllerDidSelectRemoveProfile:self];
  }
}

- (BOOL)_delegateCanUpdate
{
  v3 = [(DMCProfileViewController *)self profileViewControllerDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4 & 1) != 0 && (-[DMCProfileViewController profileViewControllerDelegate](self, "profileViewControllerDelegate"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 profileViewControllerHideUpdateProfile:self], v5, (v6))
  {
    v7 = 0;
  }

  else
  {
    v8 = [(DMCProfileViewController *)self profileViewControllerDelegate];
    v7 = objc_opt_respondsToSelector();
  }

  return v7 & 1;
}

- (BOOL)_shouldShowUpdateButton
{
  LODWORD(v3) = [(DMCProfileViewController *)self _delegateCanUpdate];
  if (v3)
  {
    v3 = [(DMCProfileViewController *)self profileExpiry];
    if (v3)
    {
      LOBYTE(v3) = [(DMCProfileViewController *)self profileViewMode]== 2;
    }
  }

  return v3;
}

- (void)_updateProfile
{
  if ([(DMCProfileViewController *)self _delegateCanUpdate])
  {
    v3 = [(DMCProfileViewController *)self UIProfile];
    v4 = [v3 profile];
    v5 = [v4 identifier];
    NSLog(&cfstr_Dmcprofileview_2.isa, v5);

    v6 = [(DMCProfileViewController *)self profileViewControllerDelegate];
    [v6 profileViewControllerDidSelectUpdateProfile:self];
  }
}

- (BOOL)_delegateCanPoll
{
  v3 = [(DMCProfileViewController *)self profileViewControllerDelegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) != 0 && (-[DMCProfileViewController profileViewControllerDelegate](self, "profileViewControllerDelegate"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 profileViewControllerShouldDisplayPoll:self], v5, !v6))
  {
    v8 = 0;
  }

  else
  {
    v7 = [(DMCProfileViewController *)self profileViewControllerDelegate];
    v8 = objc_opt_respondsToSelector();
  }

  return v8 & 1;
}

- (void)_poll
{
  if ([(DMCProfileViewController *)self _delegateCanPoll])
  {
    v3 = [(DMCProfileViewController *)self UIProfile];
    v4 = [v3 profile];
    v5 = [v4 identifier];
    NSLog(&cfstr_Dmcprofileview_3.isa, v5);

    v6 = [(DMCProfileViewController *)self profileViewControllerDelegate];
    [v6 profileViewControllerDidSelectPoll:self];
  }
}

- (BOOL)_profileContainsPayloadClass:(Class)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(DMCProfileViewModel *)self->_UIProfile profile:0];
  v4 = [v3 payloads];

  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        if (objc_opt_isKindOfClass())
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
    v5 = [(DMCProfileViewModel *)self->_UIProfile profile];
    v15 = [v5 identifier];

    v6 = [(DMCProfileUIDataProvider *)self->_profileUIDataProvider rmSpecifierProviderForProfileIdentifier:v15 scope:1];
    rmSpecifierProvider = self->_rmSpecifierProvider;
    self->_rmSpecifierProvider = v6;

    v8 = self->_rmSpecifierProvider;
    if (v8)
    {
      v9 = [(RMConfigurationsSpecifierProvider *)v8 specifiers];
      self->_rmConfigurationsCount = [v9 count];

      v10 = [MEMORY[0x277CCAB98] defaultCenter];
      [v10 addObserver:self selector:sel__rmConfigsChanged_ name:@"RMConfigurationsSpecifiersDidChangeNotification" object:0];
    }

    if ([MEMORY[0x277D03538] isSharediPad])
    {
      v11 = [(DMCProfileUIDataProvider *)self->_profileUIDataProvider rmSpecifierProviderForProfileIdentifier:v15 scope:0];
      rmSpecifierProviderUserScope = self->_rmSpecifierProviderUserScope;
      self->_rmSpecifierProviderUserScope = v11;

      v13 = self->_rmSpecifierProviderUserScope;
      if (v13)
      {
        v14 = [(RMConfigurationsSpecifierProvider *)v13 specifiers];
        self->_rmConfigurationsCountUserScope = [v14 count];
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

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  if (a4 == 1)
  {
    v7 = [(DMCProfileViewController *)self UIProfile];
    v8 = [v7 elevatedPayloadTypes];
    v10 = [v8 count];
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
    if (a4)
    {
      v9 = [(DMCProfileViewController *)self _isSectionPopulated:a4];
      goto LABEL_13;
    }

    v7 = [(DMCProfileViewController *)self UIProfile];
    v8 = [v7 moreDetailsSections];
    if ([v8 count])
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

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 section];
  if (v8 <= 1)
  {
    if (!v8)
    {
      v9 = [(DMCProfileViewController *)self _tableView:v6 profileCellForRowAtIndexPath:v7];
      goto LABEL_14;
    }

    if (v8 == 1)
    {
      v9 = [(DMCProfileViewController *)self _tableView:v6 elevatedPayloadCellForRowAtIndexPath:v7];
      goto LABEL_14;
    }

LABEL_13:
    NSLog(&cfstr_Dmcprofileview_4.isa, v7);
    v9 = objc_opt_new();
    goto LABEL_14;
  }

  if (v8 == 2)
  {
    v10 = @"DMC_POLL_HRN_TITLE";
LABEL_11:
    v11 = DMCEnrollmentLocalizedString(v10);
    v12 = [MEMORY[0x277D75348] systemBlueColor];
    v13 = [(DMCProfileViewController *)self _tableView:v6 buttonForRowAtIndexPath:v7 text:v11 color:v12];

    goto LABEL_15;
  }

  if (v8 == 3)
  {
    v10 = @"DMC_UPDATE_PROFILE_TITLE";
    goto LABEL_11;
  }

  if (v8 != 4)
  {
    goto LABEL_13;
  }

  v9 = [(DMCProfileViewController *)self _tableView:v6 removeButtonForRowAtIndexPath:v7];
LABEL_14:
  v13 = v9;
LABEL_15:

  return v13;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v21 = a3;
  v6 = a4;
  v7 = [v6 section];
  if (v7 <= 1)
  {
    if (v7)
    {
      if (v7 != 1)
      {
        goto LABEL_21;
      }

      v8 = [(DMCProfileViewController *)self _profileDetailsModeForElevatedPayloadAtIndexPath:v6];
      if (v8 == 7)
      {
        if (![MEMORY[0x277D03538] isSharediPad])
        {
          goto LABEL_21;
        }

        v17 = [DMCRMConfigurationsViewController alloc];
        v11 = [(DMCProfileViewController *)self rmSpecifierProviderUserScope];
        v12 = v17;
        v13 = v11;
        v14 = 0;
      }

      else
      {
        v9 = v8;
        if (v8 != 6)
        {
          v19 = [DMCProfileDetailsViewController alloc];
          v20 = [(DMCProfileViewController *)self UIProfile];
          v18 = [(DMCProfileDetailsViewController *)v19 initWithProfileViewModel:v20 mode:v9];

          goto LABEL_20;
        }

        v10 = [DMCRMConfigurationsViewController alloc];
        v11 = [(DMCProfileViewController *)self rmSpecifierProvider];
        v12 = v10;
        v13 = v11;
        v14 = 1;
      }

      v16 = [(DMCRMConfigurationsViewController *)v12 initWithRMConfigurationsSpecifierProvider:v13 scope:v14];
    }

    else
    {
      if ([v6 row] != 2)
      {
        goto LABEL_21;
      }

      v15 = [DMCProfileDetailsViewController alloc];
      v11 = [(DMCProfileViewController *)self UIProfile];
      v16 = [(DMCProfileDetailsViewController *)v15 initWithProfileViewModel:v11 mode:0];
    }

    v18 = v16;

LABEL_20:
    [(UIViewController *)self dmc_pushViewController:v18 animated:1];

    goto LABEL_21;
  }

  switch(v7)
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
  [v21 deselectRowAtIndexPath:v6 animated:1];
}

- (double)_heightForHeaderFooterInSection:(int64_t)a3
{
  v3 = [(DMCProfileViewController *)self _isSectionPopulated:a3];
  result = *MEMORY[0x277D76F30];
  if (!v3)
  {
    return 2.22507386e-308;
  }

  return result;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  if ([(DMCProfileViewController *)self _isSectionPopulated:a4])
  {
    v10.receiver = self;
    v10.super_class = DMCProfileViewController;
    v7 = [(DMCProfileViewController *)&v10 tableView:v6 viewForHeaderInSection:a4];
  }

  else
  {
    v7 = [(DMCProfileViewController *)self _emptyViewForHeaderFooter];
  }

  v8 = v7;

  return v8;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v6 = a3;
  if ([(DMCProfileViewController *)self _isSectionPopulated:a4])
  {
    v10.receiver = self;
    v10.super_class = DMCProfileViewController;
    v7 = [(DMCProfileViewController *)&v10 tableView:v6 viewForFooterInSection:a4];
  }

  else
  {
    v7 = [(DMCProfileViewController *)self _emptyViewForHeaderFooter];
  }

  v8 = v7;

  return v8;
}

- (id)_emptyViewForHeaderFooter
{
  v2 = objc_alloc(MEMORY[0x277D75D18]);
  v3 = [v2 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  v4 = [MEMORY[0x277D75348] clearColor];
  [v3 setBackgroundColor:v4];

  return v3;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  if (a4)
  {
    v5 = 0;

    return v5;
  }

  v8 = [(DMCProfileViewController *)self profileExpiry];
  if (v8 == 1)
  {
    v9 = [(DMCProfileViewController *)self _delegateCanUpdate];
    v10 = @"DMC_PROFILE_EXPIRING_CERT";
    v11 = @"DMC_PROFILE_EXPIRING_CERT_REENROLL";
  }

  else
  {
    if (v8 != 2)
    {
      v5 = 0;
      goto LABEL_14;
    }

    v9 = [(DMCProfileViewController *)self _delegateCanUpdate];
    v10 = @"DMC_PROFILE_EXPIRED";
    v11 = @"DMC_PROFILE_EXPIRED_REENROLL";
  }

  if (v9)
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

- (BOOL)_isSectionPopulated:(int64_t)a3
{
  if (a3 <= 1)
  {
    if (!a3)
    {
      return 1;
    }

    if (a3 == 1)
    {
      v5 = [(DMCProfileViewController *)self UIProfile];
      v6 = [v5 elevatedPayloadTypes];
      v7 = [v6 count] || -[DMCProfileViewController rmConfigurationsCount](self, "rmConfigurationsCount") || -[DMCProfileViewController rmConfigurationsCountUserScope](self, "rmConfigurationsCountUserScope") != 0;

      return v7;
    }

    return 0;
  }

  switch(a3)
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

- (int)_profileDetailsModeForElevatedPayloadAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(DMCProfileViewController *)self UIProfile];
  v6 = [v5 elevatedPayloadTypes];

  v7 = [v4 row];
  if (v7 == [v6 count])
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
    v9 = [v4 row];
    if (v9 == [v6 count] + 1)
    {
      v8 = 7;
    }

    else
    {
      v10 = [v6 objectAtIndexedSubscript:{objc_msgSend(v4, "row")}];
      v11 = [v10 integerValue];

      if ((v11 - 1) >= 4)
      {
        NSLog(&cfstr_Dmcprofileview_5.isa, v11);
        v8 = 0;
      }

      else
      {
        v8 = v11 + 1;
      }
    }
  }

  return v8;
}

- (id)_tableView:(id)a3 profileCellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 row];
  switch(v8)
  {
    case 2:
      v14 = [(DMCProfileViewController *)self _tableView:v6 profileMoreDetailsCellForRowAtIndexPath:v7];
      break;
    case 1:
      v13 = +[DMCProfileDetailsSummaryCell cellIdentifier];
      v10 = [v6 dequeueReusableCellWithIdentifier:v13 forIndexPath:v7];

      v11 = [(DMCProfileViewController *)self UIProfile];
      [v10 setProfileViewModel:v11];
      goto LABEL_6;
    case 0:
      v9 = +[DMCProfileSummaryCell cellIdentifier];
      v10 = [v6 dequeueReusableCellWithIdentifier:v9 forIndexPath:v7];

      v11 = [(DMCProfileViewController *)self UIProfile];
      v12 = [v11 profile];
      [v10 setProfile:v12];

LABEL_6:
      goto LABEL_10;
    default:
      NSLog(&cfstr_Dmcprofileview_6.isa, v7);
      v14 = objc_opt_new();
      break;
  }

  v10 = v14;
LABEL_10:

  return v10;
}

- (id)_tableView:(id)a3 profileMoreDetailsCellForRowAtIndexPath:(id)a4
{
  v4 = [a3 dequeueReusableCellWithIdentifier:@"kMCUIProfileMoreDetailsCellID" forIndexPath:a4];
  v5 = DMCEnrollmentLocalizedString(@"DMC_MORE_DETAILS_TITLE");
  v6 = [v4 textLabel];
  [v6 setText:v5];

  [v4 setAccessoryType:1];

  return v4;
}

- (id)_tableView:(id)a3 elevatedPayloadCellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"kMCUIElevatedPayloadCellID" forIndexPath:v6];
  v8 = [(DMCProfileViewController *)self _profileDetailsModeForElevatedPayloadAtIndexPath:v6];
  if (v8 > 4)
  {
    switch(v8)
    {
      case 5:
        v9 = DMCEnrollmentLocalizedString(@"DMC_PROFILE_DETAILS_RESTRICTIONS");
        v10 = [(DMCProfileViewController *)self UIProfile];
        v11 = [v10 numberOfRestrictions];
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
        v12 = [(DMCProfileViewController *)self rmConfigurationsCount];
        break;
      case 7:
        v9 = DMCEnrollmentLocalizedString(@"DMC_USER_CONFIGURATIONS_TITLE");
        v12 = [(DMCProfileViewController *)self rmConfigurationsCountUserScope];
        break;
      default:
        goto LABEL_12;
    }

    v14 = v12;
    goto LABEL_20;
  }

  if (v8 == 2)
  {
    v9 = DMCEnrollmentLocalizedString(@"DMC_PROFILE_DETAILS_ACCOUNTS");
    v10 = [(DMCProfileViewController *)self UIProfile];
    v11 = [v10 numberOfAccounts];
    goto LABEL_14;
  }

  if (v8 == 3)
  {
    v9 = DMCEnrollmentLocalizedString(@"DMC_PROFILE_DETAILS_APPS");
    v10 = [(DMCProfileViewController *)self UIProfile];
    v11 = [v10 numberOfManagedApps];
    goto LABEL_14;
  }

  if (v8 != 4)
  {
LABEL_12:
    NSLog(&cfstr_Dmcprofileview_7.isa, v8, v6);
    v13 = objc_opt_new();
    goto LABEL_21;
  }

  v9 = DMCEnrollmentLocalizedString(@"DMC_PROFILE_DETAILS_BOOKS");
  v10 = [(DMCProfileViewController *)self UIProfile];
  v11 = [v10 numberOfManagedBooks];
LABEL_14:
  v14 = v11;

LABEL_20:
  v16 = [v7 textLabel];
  [v16 setText:v9];

  v17 = [v7 textLabel];
  [v17 setTextAlignment:4];

  v18 = MEMORY[0x277CCABB8];
  v19 = [MEMORY[0x277CCABB0] numberWithInteger:v14];
  v20 = [v18 localizedStringFromNumber:v19 numberStyle:0];
  v21 = [v7 detailTextLabel];
  [v21 setText:v20];

  [v7 setAccessoryType:1];
  v13 = v7;

LABEL_21:

  return v13;
}

- (id)_tableView:(id)a3 buttonForRowAtIndexPath:(id)a4 text:(id)a5 color:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = [a3 dequeueReusableCellWithIdentifier:@"kMCUIButtonCellID" forIndexPath:a4];
  v12 = [v11 textLabel];
  [v12 setText:v10];

  v13 = [v11 textLabel];
  [v13 setTextAlignment:1];

  v14 = [v11 textLabel];
  [v14 setTextColor:v9];

  return v11;
}

- (id)_tableView:(id)a3 removeButtonForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  if ([(DMCProfileViewController *)self profileViewMode]== 2)
  {
    v8 = [(DMCProfileViewController *)self UIProfile];
    v9 = [v8 isMDMProfile];

    if (v9)
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
  v12 = [MEMORY[0x277D75348] DMCProfileRedColor];
  v13 = [(DMCProfileViewController *)self _tableView:v7 buttonForRowAtIndexPath:v6 text:v11 color:v12];

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