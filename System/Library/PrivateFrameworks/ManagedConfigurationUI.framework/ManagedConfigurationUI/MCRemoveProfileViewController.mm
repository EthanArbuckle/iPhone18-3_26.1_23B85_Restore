@interface MCRemoveProfileViewController
- (BOOL)_hasYorktownWatch;
- (BOOL)profileViewControllerShouldDisplayPoll:(id)poll;
- (MCRemoveProfileViewController)initWithProfile:(id)profile;
- (id)_mdmProfileRemovalAlertBody;
- (void)_didFinishEnteringPINWithCompletion:(id)completion;
- (void)_leaveProvisionalRemoteManagementAndErase;
- (void)_performReEnroll;
- (void)_performReEnrollAfterPINVerification;
- (void)_showEraseDeviceAlert;
- (void)_showLeaveProvisionalRemoteManagementAlert;
- (void)_showLeaveProvisionalRemoteManagementExpiredAlert;
- (void)_showRemovalWarningAfterPINVerification;
- (void)_showRemovalWarningAlert;
- (void)_showWrongRemovalPasswordAlert;
- (void)didAcceptEnteredPIN:(id)n;
- (void)didCancelEnteringPIN;
- (void)profileRemovalDidFinish;
- (void)profileViewControllerDidSelectPoll:(id)poll;
- (void)profileViewControllerDidSelectRemoveProfile:(id)profile;
- (void)profileViewControllerDidSelectUpdateProfile:(id)profile;
- (void)updateTitleForProfileInstallationState:(int)state;
@end

@implementation MCRemoveProfileViewController

- (MCRemoveProfileViewController)initWithProfile:(id)profile
{
  profileCopy = profile;
  v5 = +[MCUIWatchManager shared];
  v6 = 0x277D03278;
  if (v5)
  {
    v6 = off_2798612F8;
  }

  v7 = *v6;
  v8 = objc_opt_new();

  v12.receiver = self;
  v12.super_class = MCRemoveProfileViewController;
  v9 = [(MCInstallProfileViewController *)&v12 initWithProfile:profileCopy viewMode:2 profileUIDataProvider:v8];

  if (v9)
  {
    objc_storeStrong(&v9->_profileUIDataProvider, v8);
    v9->_cachedHasYorktownWatch = 0;
    [(MCRemoveProfileViewController *)v9 updateTitleForProfileInstallationState:1];
    v11.receiver = v9;
    v11.super_class = MCRemoveProfileViewController;
    [(MCUIViewController *)&v11 updateExtendedLayoutIncludesOpaqueBars];
  }

  return v9;
}

- (void)updateTitleForProfileInstallationState:(int)state
{
  if (state == 9)
  {
    v4 = @"BLOB_JUST_UPDATED_TITLE";
  }

  else
  {
    if (state != 1)
    {
      return;
    }

    v4 = @"SINGULAR_BLOBS_DESIGNATION";
  }

  v6 = MCUILocalizedString(v4);
  navigationItem = [(MCRemoveProfileViewController *)self navigationItem];
  [navigationItem setTitle:v6];
}

- (void)profileViewControllerDidSelectRemoveProfile:(id)profile
{
  if ([(DMCProfileUIDataProvider *)self->_profileUIDataProvider isPasscodeSet])
  {

    [(MCInstallProfileViewController *)self pinExtensionShowPINSheet];
  }

  else
  {

    [(MCRemoveProfileViewController *)self _showRemovalWarningAfterPINVerification];
  }
}

- (void)profileViewControllerDidSelectUpdateProfile:(id)profile
{
  profile = [(MCInstallProfileViewController *)self profile];
  isManagedByProfileService = [profile isManagedByProfileService];

  if (isManagedByProfileService)
  {

    [(MCRemoveProfileViewController *)self _performReEnroll];
  }

  else
  {

    [(MCInstallProfileViewController *)self showReEnrollFailureAlert];
  }
}

- (BOOL)profileViewControllerShouldDisplayPoll:(id)poll
{
  profile = [(MCInstallProfileViewController *)self profile];
  isHRNProfile = [profile isHRNProfile];

  return isHRNProfile;
}

- (void)profileViewControllerDidSelectPoll:(id)poll
{
  profile = [(MCInstallProfileViewController *)self profile];
  isHRNProfile = [profile isHRNProfile];

  if (isHRNProfile)
  {
    mEMORY[0x277D24638] = [MEMORY[0x277D24638] sharedClient];
    [mEMORY[0x277D24638] simulatePushWithCompletion:&__block_literal_global_1];
  }

  else
  {
    NSLog(&cfstr_Mcremoveprofil.isa);
  }
}

void __68__MCRemoveProfileViewController_profileViewControllerDidSelectPoll___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    NSLog(&cfstr_Mcremoveprofil_1.isa, a2);
  }

  else
  {
    NSLog(&cfstr_Mcremoveprofil_0.isa);
  }
}

- (void)didAcceptEnteredPIN:(id)n
{
  nCopy = n;
  if (![(MCInstallProfileViewController *)self installHasFailed]&& [(MCRemoveProfileViewController *)self profileWantsToReEnroll])
  {
    [(MCInstallProfileViewController *)self setPin:nCopy];
  }

  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__MCRemoveProfileViewController_didAcceptEnteredPIN___block_invoke;
  v5[3] = &unk_279861990;
  objc_copyWeak(&v6, &location);
  [(MCRemoveProfileViewController *)self _didFinishEnteringPINWithCompletion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __53__MCRemoveProfileViewController_didAcceptEnteredPIN___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained profileWantsToReEnroll])
    {
      v4 = &v8;
      v5 = v7;
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v6 = __53__MCRemoveProfileViewController_didAcceptEnteredPIN___block_invoke_3;
    }

    else
    {
      v4 = &v10;
      v5 = v9;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v6 = __53__MCRemoveProfileViewController_didAcceptEnteredPIN___block_invoke_2;
    }

    v5[2] = v6;
    v5[3] = &unk_279861990;
    objc_copyWeak(v4, (a1 + 32));
    dispatch_async(MEMORY[0x277D85CD0], v5);
    objc_destroyWeak(v4);
    [v3 setProfileWantsToReEnroll:0];
  }
}

void __53__MCRemoveProfileViewController_didAcceptEnteredPIN___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _showRemovalWarningAfterPINVerification];
    WeakRetained = v2;
  }
}

void __53__MCRemoveProfileViewController_didAcceptEnteredPIN___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _performReEnrollAfterPINVerification];
    WeakRetained = v2;
  }
}

- (void)didCancelEnteringPIN
{
  [(MCRemoveProfileViewController *)self setProfileWantsToReEnroll:0];

  [(MCRemoveProfileViewController *)self _didFinishEnteringPINWithCompletion:0];
}

- (void)_didFinishEnteringPINWithCompletion:(id)completion
{
  completionCopy = completion;
  navigationController = [(MCRemoveProfileViewController *)self navigationController];
  [navigationController dismissViewControllerAnimated:1 completion:completionCopy];
}

- (void)_showRemovalWarningAfterPINVerification
{
  profileViewController = [(MCInstallProfileViewController *)self profileViewController];
  isProvisionalMDMProfile = [profileViewController isProvisionalMDMProfile];

  if (isProvisionalMDMProfile)
  {
    if ([(DMCProfileUIDataProvider *)self->_profileUIDataProvider isProvisionallyEnrolled])
    {

      [(MCRemoveProfileViewController *)self _showLeaveProvisionalRemoteManagementAlert];
    }

    else
    {

      [(MCRemoveProfileViewController *)self _showLeaveProvisionalRemoteManagementExpiredAlert];
    }
  }

  else
  {

    [(MCRemoveProfileViewController *)self _showRemovalWarningAlert];
  }
}

- (void)_performReEnroll
{
  [(MCInstallProfileViewController *)self setInstallHasFailed:0];
  if ([(DMCProfileUIDataProvider *)self->_profileUIDataProvider isPasscodeSet])
  {
    [(MCRemoveProfileViewController *)self setProfileWantsToReEnroll:1];

    [(MCInstallProfileViewController *)self pinExtensionShowPINSheet];
  }

  else
  {

    [(MCRemoveProfileViewController *)self _performReEnrollAfterPINVerification];
  }
}

- (void)_performReEnrollAfterPINVerification
{
  [(MCInstallProfileViewController *)self setQuestionsAlreadyAsked:1];
  profile = [(MCInstallProfileViewController *)self profile];
  [(MCRemoveProfileViewController *)self setUpdatingProfile:profile];

  [(MCInstallProfileViewController *)self showProgressIndicator];
  profileUIDataProvider = self->_profileUIDataProvider;
  profile2 = [(MCInstallProfileViewController *)self profile];
  identifier = [profile2 identifier];
  [(DMCProfileUIDataProvider *)profileUIDataProvider updateProfileWithIdentifier:identifier interactionDelegate:self];
}

- (void)profileRemovalDidFinish
{
  v5.receiver = self;
  v5.super_class = MCRemoveProfileViewController;
  [(MCInstallProfileViewController *)&v5 profileRemovalDidFinish];
  profile = [(MCInstallProfileViewController *)self profile];
  needsReboot = [profile needsReboot];

  if (needsReboot)
  {
    [MEMORY[0x277D75110] MCUIShowRebootAlertFromViewController:self];
  }
}

- (void)_showLeaveProvisionalRemoteManagementAlert
{
  v3 = MCUILocalizedString(@"MOBILE_DEVICE_MANAGEMENT_LEAVE_REMOTE_MANAGEMENT");
  v4 = MCUILocalizedStringByDevice(@"MOBILE_DEVICE_MANAGEMENT_LEAVE_REMOTE_MANAGEMENT_ALERT_BODY");
  v5 = [MEMORY[0x277D75110] alertControllerWithTitle:v3 message:v4 preferredStyle:1];
  v6 = MCUILocalizedString(@"CANCEL");
  [v5 MCUIAddCancelActionWithTitle:v6];

  objc_initWeak(&location, self);
  v7 = MCUILocalizedString(@"ERASE");
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __75__MCRemoveProfileViewController__showLeaveProvisionalRemoteManagementAlert__block_invoke;
  v11 = &unk_279861990;
  objc_copyWeak(&v12, &location);
  [v5 MCUIAddActionWithTitle:v7 style:2 completion:&v8];

  [(MCRemoveProfileViewController *)self dmc_presentAlert:v5 completion:0, v8, v9, v10, v11];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __75__MCRemoveProfileViewController__showLeaveProvisionalRemoteManagementAlert__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _showEraseDeviceAlert];
    WeakRetained = v2;
  }
}

- (void)_showEraseDeviceAlert
{
  v3 = MCUILocalizedStringByDevice(@"ERASE_ALERT_TITLE");
  v4 = MEMORY[0x277D75110];
  v5 = MCUILocalizedString(@"ERASE_ALERT_BODY");
  v6 = [v4 alertControllerWithTitle:v3 message:v5 preferredStyle:1];

  v7 = MCUILocalizedString(@"CANCEL");
  [v6 MCUIAddCancelActionWithTitle:v7];

  objc_initWeak(&location, self);
  v8 = MCUILocalizedString(@"ERASE");
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __54__MCRemoveProfileViewController__showEraseDeviceAlert__block_invoke;
  v12 = &unk_279861990;
  objc_copyWeak(&v13, &location);
  [v6 MCUIAddActionWithTitle:v8 style:2 completion:&v9];

  [(MCRemoveProfileViewController *)self dmc_presentAlert:v6 completion:0, v9, v10, v11, v12];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __54__MCRemoveProfileViewController__showEraseDeviceAlert__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _leaveProvisionalRemoteManagementAndErase];
    WeakRetained = v2;
  }
}

- (void)_leaveProvisionalRemoteManagementAndErase
{
  if (([(DMCProfileUIDataProvider *)self->_profileUIDataProvider isProvisionallyEnrolled]& 1) != 0)
  {
    objc_initWeak(&location, self);
    profileUIDataProvider = self->_profileUIDataProvider;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __74__MCRemoveProfileViewController__leaveProvisionalRemoteManagementAndErase__block_invoke;
    v4[3] = &unk_279861B08;
    objc_copyWeak(&v5, &location);
    [(DMCProfileUIDataProvider *)profileUIDataProvider unenrollWithCompletionBlock:v4];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }

  else
  {

    [(MCRemoveProfileViewController *)self _showLeaveProvisionalRemoteManagementExpiredAlert];
  }
}

void __74__MCRemoveProfileViewController__leaveProvisionalRemoteManagementAndErase__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __74__MCRemoveProfileViewController__leaveProvisionalRemoteManagementAndErase__block_invoke_2;
  v5[3] = &unk_279861A40;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);

  objc_destroyWeak(&v7);
}

void __74__MCRemoveProfileViewController__leaveProvisionalRemoteManagementAndErase__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (*(a1 + 32))
    {
      v3 = MCUILocalizedString(@"MOBILE_DEVICE_MANAGEMENT_LEAVING_REMOTE_MANAGEMENT_FAILED_ALERT_TITLE");
      v4 = MCUILocalizedString(@"MOBILE_DEVICE_MANAGEMENT_LEAVING_REMOTE_MANAGEMENT_FAILED_ALERT_BODY");
      v5 = [MEMORY[0x277D75110] alertControllerWithTitle:v3 message:v4 preferredStyle:1];
      v6 = MCUILocalizedString(@"OK");
      [v5 MCUIAddCancelActionWithTitle:v6];

      [WeakRetained dmc_presentAlert:v5 completion:0];
    }

    else
    {
      NSLog(&cfstr_UnenrolledFrom.isa);
      v3 = [WeakRetained profile];
      v4 = [v3 identifier];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __74__MCRemoveProfileViewController__leaveProvisionalRemoteManagementAndErase__block_invoke_3;
      v7[3] = &unk_279861E90;
      v7[4] = WeakRetained;
      [WeakRetained _removeProfileWithIdentifier:v4 isProtectedProfile:1 completionHandler:v7];
    }
  }
}

uint64_t __74__MCRemoveProfileViewController__leaveProvisionalRemoteManagementAndErase__block_invoke_3(uint64_t a1, uint64_t a2)
{
  NSLog(&cfstr_ProfileRemoval.isa, a2);
  v3 = *(a1 + 32);

  return [v3 _resetWithMode:7];
}

- (void)_showRemovalWarningAlert
{
  profile = [(MCInstallProfileViewController *)self profile];
  if ([profile isLocked])
  {
    removalPasscode = [profile removalPasscode];
    v5 = removalPasscode != 0;
  }

  else
  {
    v5 = 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [profile isMDMProfile])
  {
    v6 = MCUILocalizedString(@"MOBILE_DEVICE_MANAGEMENT_REMOVE_TITLE");
    _mdmProfileRemovalAlertBody = [(MCRemoveProfileViewController *)self _mdmProfileRemovalAlertBody];
  }

  else
  {
    if (v5)
    {
      v6 = MCUILocalizedString(@"BLOB_REMOVE_TITLE_PROTECTED");
      v8 = @"PROFILE_REMOVE_WARNING_PROTECTED";
    }

    else
    {
      v6 = MCUILocalizedString(@"BLOB_REMOVE_TITLE");
      v8 = @"PROFILE_REMOVE_WARNING";
    }

    _mdmProfileRemovalAlertBody = MCUILocalizedStringByDevice(v8);
  }

  v9 = _mdmProfileRemovalAlertBody;
  v10 = [MEMORY[0x277D75110] alertControllerWithTitle:v6 message:_mdmProfileRemovalAlertBody preferredStyle:1];
  v11 = MCUILocalizedString(@"CANCEL");
  [v10 MCUIAddCancelActionWithTitle:v11];

  objc_initWeak(&location, self);
  v12 = MCUILocalizedString(@"REMOVE");
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __57__MCRemoveProfileViewController__showRemovalWarningAlert__block_invoke;
  v26[3] = &unk_279861990;
  objc_copyWeak(&v27, &location);
  [v10 MCUIAddActionWithTitle:v12 style:2 completion:v26];

  if (v5)
  {
    v13 = MCUILocalizedString(@"REMOVAL_PASSCODE");
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __57__MCRemoveProfileViewController__showRemovalWarningAlert__block_invoke_2;
    v23 = &unk_279861EB8;
    objc_copyWeak(&v25, &location);
    v14 = v13;
    v24 = v14;
    [v10 addTextFieldWithConfigurationHandler:&v20];

    objc_destroyWeak(&v25);
  }

  v15 = [(MCInstallProfileViewController *)self profileViewController:v20];
  removeButton = [v15 removeButton];

  if (removeButton)
  {
    profileViewController = [(MCInstallProfileViewController *)self profileViewController];
    removeButton2 = [profileViewController removeButton];
    popoverPresentationController = [v10 popoverPresentationController];
    [popoverPresentationController setSourceItem:removeButton2];
  }

  [(MCRemoveProfileViewController *)self dmc_presentAlert:v10 completion:0];
  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
}

void __57__MCRemoveProfileViewController__showRemovalWarningAlert__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v2 = [WeakRetained profile];
    v3 = [v2 removalPasscode];

    if (v3 && ([v7 passwordField], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "text"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v3, "isEqualToString:", v5), v5, v4, !v6))
    {
      [v7 _showWrongRemovalPasswordAlert];
    }

    else
    {
      [v7 performRemoveAfterFinalVerification];
    }

    WeakRetained = v7;
  }
}

void __57__MCRemoveProfileViewController__showRemovalWarningAlert__block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [v4 setPlaceholder:*(a1 + 32)];
    [v4 setSecureTextEntry:1];
    [WeakRetained setPasswordField:v4];
  }
}

- (void)_showWrongRemovalPasswordAlert
{
  v3 = MEMORY[0x277D75110];
  v4 = MCUILocalizedString(@"BLOB_REMOVE_TITLE_PROTECTED");
  v5 = MCUILocalizedString(@"BLOB_REMOVE_FAILURE_PROTECTED");
  v7 = [v3 alertControllerWithTitle:v4 message:v5 preferredStyle:1];

  v6 = MCUILocalizedString(@"CANCEL");
  [v7 MCUIAddCancelActionWithTitle:v6];

  [(MCRemoveProfileViewController *)self dmc_presentAlert:v7 completion:0];
}

- (void)_showLeaveProvisionalRemoteManagementExpiredAlert
{
  v3 = MEMORY[0x277D75110];
  v4 = MCUILocalizedString(@"MOBILE_DEVICE_MANAGEMENT_LEAVING_REMOTE_MANAGEMENT_EXPIRED_ALERT_TITLE");
  v5 = MCUILocalizedString(@"MOBILE_DEVICE_MANAGEMENT_LEAVING_REMOTE_MANAGEMENT_EXPIRED_ALERT_BODY");
  v7 = [v3 alertControllerWithTitle:v4 message:v5 preferredStyle:1];

  v6 = MCUILocalizedString(@"CANCEL");
  [v7 MCUIAddCancelActionWithTitle:v6];

  [(MCRemoveProfileViewController *)self dmc_presentAlert:v7 completion:0];
}

- (id)_mdmProfileRemovalAlertBody
{
  profileUIDataProvider = [(MCRemoveProfileViewController *)self profileUIDataProvider];
  managedAppsUninstalledOnMDMRemoval = [profileUIDataProvider managedAppsUninstalledOnMDMRemoval];

  if (!managedAppsUninstalledOnMDMRemoval)
  {
    goto LABEL_7;
  }

  v5 = [managedAppsUninstalledOnMDMRemoval objectForKeyedSubscript:*MEMORY[0x277D03220]];
  unsignedIntValue = [v5 unsignedIntValue];

  if (!unsignedIntValue)
  {
    goto LABEL_7;
  }

  if (unsignedIntValue == 1)
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = MCUILocalizedStringByDevice(@"MOBILE_DEVICE_MANAGEMENT_REMOVE_WARNING_SINGULAR_APP_%@");
    v9 = [managedAppsUninstalledOnMDMRemoval objectForKeyedSubscript:*MEMORY[0x277D03228]];
    v10 = [v7 stringWithFormat:v8, v9];
  }

  else
  {
    v11 = unsignedIntValue;
    v12 = MEMORY[0x277CCACA8];
    v8 = MCUILocalizedStringByDevice(@"MOBILE_DEVICE_MANAGEMENT_REMOVE_WARNING_MULTIPLE_APPS_%ld");
    v10 = [v12 stringWithFormat:v8, v11];
  }

  if (!v10)
  {
LABEL_7:
    v10 = MCUILocalizedStringByDevice(@"MOBILE_DEVICE_MANAGEMENT_REMOVE_WARNING");
  }

  if ([(MCRemoveProfileViewController *)self _hasYorktownWatch])
  {
    v13 = MEMORY[0x277CCACA8];
    v14 = MCUILocalizedString(@"MOBILE_DEVICE_MANAGEMENT_REMOVE_WARNING_YORKTOWN");
    v15 = [v13 stringWithFormat:@"%@ %@", v10, v14];
  }

  else
  {
    v15 = v10;
  }

  return v15;
}

- (BOOL)_hasYorktownWatch
{
  cachedHasYorktownWatch = [(MCRemoveProfileViewController *)self cachedHasYorktownWatch];
  if (cachedHasYorktownWatch == 2)
  {
    return 0;
  }

  if (cachedHasYorktownWatch)
  {
    return 1;
  }

  if (!+[MCUISettingsWatchManager hasAnyYorktownEnrolledWatches])
  {
    [(MCRemoveProfileViewController *)self setCachedHasYorktownWatch:0];
    return 0;
  }

  v4 = 1;
  [(MCRemoveProfileViewController *)self setCachedHasYorktownWatch:1];
  return v4;
}

@end