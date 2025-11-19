@interface HUAppleMusicAccountViewController
- (BOOL)_accessorySupportsMultiUser;
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (HUAppleMusicAccountViewController)initWithAccessoryGroupItem:(id)a3;
- (HUAppleMusicAccountViewController)initWithAccessorySettingItem:(id)a3 module:(id)a4;
- (HUAppleMusicAccountViewController)initWithHFItem:(id)a3 mediaProfileContainer:(id)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)_appleMusicFooterMessage;
- (id)_appleMusicFooterView;
- (id)buildItemModuleControllerForModule:(id)a3;
- (id)itemModuleControllers;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (void)appleMusicModuleController:(id)a3 willPresentContext:(id)a4 account:(id)a5;
- (void)appleMusicModuleControllerDidUpdateAuthenticationState:(id)a3;
- (void)appleMusicModuleControllerPresentSignInFlow:(id)a3;
- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)viewDidLoad;
@end

@implementation HUAppleMusicAccountViewController

- (HUAppleMusicAccountViewController)initWithHFItem:(id)a3 mediaProfileContainer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[HUAppleMusicAccountItemManager alloc] initWithMediaProfileContainer:v7 delegate:self];

  v13.receiver = self;
  v13.super_class = HUAppleMusicAccountViewController;
  v9 = [(HUItemTableViewController *)&v13 initWithItemManager:v8 tableViewStyle:1];
  if (v9)
  {
    v10 = [v6 latestResults];
    v11 = [v10 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
    [(HUAppleMusicAccountViewController *)v9 setTitle:v11];
  }

  return v9;
}

- (HUAppleMusicAccountViewController)initWithAccessoryGroupItem:(id)a3
{
  v4 = a3;
  v5 = [v4 homeKitSettingsVendor];
  v6 = [v5 homeKitObject];
  v7 = &unk_2825BCB38;
  v8 = v6;
  v9 = v8;
  if (!v8)
  {
    goto LABEL_7;
  }

  if ([v8 conformsToProtocol:v7])
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v9;
  if (!v10)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertProtocolCast(Protocol * _Nonnull __strong, id  _Nonnull __strong)"}];
    v14 = NSStringFromProtocol(v7);
    [v12 handleFailureInFunction:v13 file:@"NSObject+NAAdditions.h" lineNumber:71 description:{@"Expected protocol %@", v14}];

LABEL_7:
    v11 = 0;
  }

  if (!v11)
  {
    v15 = HFLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_ERROR, "[HUAppleMusicAccountViewController initWithAccessoryGroupItem:] called without a HFMediaProfileContainer", buf, 2u);
    }
  }

  v16 = [(HUAppleMusicAccountViewController *)self initWithHFItem:v4 mediaProfileContainer:v11];

  return v16;
}

- (HUAppleMusicAccountViewController)initWithAccessorySettingItem:(id)a3 module:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"HUAppleMusicAccountViewController.m" lineNumber:72 description:@"HUAppleMusicAccountViewController initialized without HUHomeKitAccessorySettingsItemModule"];
  }

  v9 = [v8 sourceItem];
  v10 = [v9 accessories];
  v11 = [v10 anyObject];

  v12 = [v11 mediaProfile];
  v13 = [(HUAppleMusicAccountViewController *)self initWithHFItem:v7 mediaProfileContainer:v12];

  return v13;
}

- (id)buildItemModuleControllerForModule:(id)a3
{
  v5 = a3;
  objc_opt_class();
  v6 = [(HUItemTableViewController *)self itemManager];
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [v8 appleMusicAccountModule];

  if (v9 == v5)
  {
    v13 = [HUAppleMusicAccountModuleController alloc];
    v14 = [v8 appleMusicAccountModule];
    v15 = [(HUAppleMusicAccountModuleController *)v13 initWithModule:v14];
    [(HUAppleMusicAccountViewController *)self setAppleMusicAccountModuleController:v15];

    v16 = [(HUAppleMusicAccountViewController *)self appleMusicAccountModuleController];
    [v16 setDelegate:self];

    v17 = [(HUAppleMusicAccountViewController *)self appleMusicAccountModuleController];
  }

  else
  {
    v10 = [v8 primaryUserSettingsItemModule];

    if (v10 != v5)
    {
      v11 = [MEMORY[0x277CCA890] currentHandler];
      [v11 handleFailureInMethod:a2 object:self file:@"HUAppleMusicAccountViewController.m" lineNumber:93 description:{@"Unknown module %@", v5}];

      v12 = 0;
      goto LABEL_10;
    }

    v18 = [(HUItemModuleController *)[HUPrimaryUserSettingsItemModuleController alloc] initWithModule:v5];
    [(HUAppleMusicAccountViewController *)self setPrimaryUserModuleController:v18];

    v17 = [(HUAppleMusicAccountViewController *)self primaryUserModuleController];
  }

  v12 = v17;
LABEL_10:

  return v12;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = HUAppleMusicAccountViewController;
  [(HUItemTableViewController *)&v4 viewDidLoad];
  v3 = [(HUAppleMusicAccountViewController *)self tableView];
  [v3 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"HOAppleMusicAccountViewFooterViewReuseIdentifier"];
}

- (id)itemModuleControllers
{
  v3 = objc_opt_new();
  v8.receiver = self;
  v8.super_class = HUAppleMusicAccountViewController;
  v4 = [(HUItemTableViewController *)&v8 itemModuleControllers];
  [v3 unionSet:v4];

  v5 = [(HUAppleMusicAccountViewController *)self appleMusicAccountModuleController];
  [v3 na_safeAddObject:v5];

  v6 = [(HUAppleMusicAccountViewController *)self primaryUserModuleController];
  [v3 na_safeAddObject:v6];

  return v3;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(HUItemTableViewController *)self itemManager];
  v8 = [v7 displayedSectionIdentifierForSectionIndex:a4];

  if (![v8 isEqualToString:@"HUAppleMusicAccountModule_MusicActionsSectionIdentifier"])
  {
    v15.receiver = self;
    v15.super_class = HUAppleMusicAccountViewController;
    v12 = [(HUItemTableViewController *)&v15 tableView:v6 viewForHeaderInSection:a4];
    goto LABEL_6;
  }

  v9 = [(HUAppleMusicAccountViewController *)self _appleMusicFooterMessage];
  if (v9)
  {
    v10 = v9;
    v11 = [(HUAppleMusicAccountViewController *)self _accessorySupportsMultiUser];

    if (v11)
    {
      v12 = [(HUAppleMusicAccountViewController *)self _appleMusicFooterView];
LABEL_6:
      v13 = v12;
      goto LABEL_8;
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(HUItemTableViewController *)self itemManager];
  v8 = [v7 displayedSectionIdentifierForSectionIndex:a4];

  if ([v8 isEqualToString:@"HUAppleMusicAccountModule_MusicActionsSectionIdentifier"])
  {
    if ([(HUAppleMusicAccountViewController *)self _accessorySupportsMultiUser])
    {
      v9 = 0;
      goto LABEL_7;
    }

    v10 = [(HUAppleMusicAccountViewController *)self _appleMusicFooterView];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = HUAppleMusicAccountViewController;
    v10 = [(HUItemTableViewController *)&v12 tableView:v6 viewForFooterInSection:a4];
  }

  v9 = v10;
LABEL_7:

  return v9;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v5 = [(HUItemTableViewController *)self itemManager];
  v6 = [v5 displayedSectionIdentifierForSectionIndex:a4];

  if ([v6 isEqualToString:@"HUPrimaryUserSettingsUserSectionIdentifier"])
  {
    v7 = 0.01;
  }

  else
  {
    v7 = *MEMORY[0x277D76F30];
  }

  return v7;
}

- (void)appleMusicModuleController:(id)a3 willPresentContext:(id)a4 account:(id)a5
{
  v13 = a4;
  v7 = a5;
  v8 = _HULocalizedStringWithDefaultValue(@"HUAppleMusicPromptTitle", @"HUAppleMusicPromptTitle", 1);
  [v13 setTitle:v8];

  if (v7)
  {
    v9 = [v7 username];
    [v13 setUsername:v9];

    [v13 setIsUsernameEditable:0];
    v10 = _HULocalizedStringWithDefaultValue(@"HUAppleMusicPromptReason", @"HUAppleMusicPromptReason", 1);
    v11 = [v7 username];
    v12 = [v10 stringByAppendingFormat:@"\n\n%@", v11];
    [v13 setReason:v12];
  }

  else
  {
    v10 = _HULocalizedStringWithDefaultValue(@"HUAppleMusicPromptReason", @"HUAppleMusicPromptReason", 1);
    [v13 setReason:v10];
  }

  [v13 setPresentingViewController:self];
}

- (void)appleMusicModuleControllerDidUpdateAuthenticationState:(id)a3
{
  v13 = a3;
  v4 = [v13 module];
  if ([v4 state] == 2)
  {
    v5 = 0;
  }

  else
  {
    v6 = [v13 module];
    v5 = [v6 state] != 3;
  }

  v7 = [(HUAppleMusicAccountViewController *)self navigationItem];
  v8 = [v7 backBarButtonItem];
  [v8 setEnabled:v5];

  v9 = [MEMORY[0x277CCAB58] indexSetWithIndex:0];
  v10 = [(HUAppleMusicAccountViewController *)self tableView];
  v11 = [v10 numberOfSections];

  if (v11 >= 2)
  {
    [v9 addIndex:1];
  }

  v12 = [(HUAppleMusicAccountViewController *)self tableView];
  [v12 _reloadSectionHeaderFooters:v9 withRowAnimation:100];
}

- (void)appleMusicModuleControllerPresentSignInFlow:(id)a3
{
  v4 = a3;
  v5 = [(HUAppleMusicAccountViewController *)self tableView];
  objc_opt_class();
  v6 = self;
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = [(UITableViewController *)v8 hu_getSelectedCell];

    v5 = v9;
  }

  objc_initWeak(&location, v6);
  v10 = MEMORY[0x277D75110];
  v11 = _HULocalizedStringWithDefaultValue(@"HUAppleMusicAccountSignInActionSheetTitle", @"HUAppleMusicAccountSignInActionSheetTitle", 1);
  v12 = [v10 hu_actionSheetWithTitle:0 message:v11 anchorView:v5];

  v13 = MEMORY[0x277D750F8];
  v14 = _HULocalizedStringWithDefaultValue(@"HUAppleMusicAccountActionSheetChangeDefaultAccountButtonTitle", @"HUAppleMusicAccountActionSheetChangeDefaultAccountButtonTitle", 1);
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __81__HUAppleMusicAccountViewController_appleMusicModuleControllerPresentSignInFlow___block_invoke;
  v22 = &unk_277DBEEF0;
  objc_copyWeak(&v23, &location);
  v15 = [v13 actionWithTitle:v14 style:0 handler:&v19];
  [v12 addAction:{v15, v19, v20, v21, v22}];

  v16 = MEMORY[0x277D750F8];
  v17 = _HULocalizedStringWithDefaultValue(@"HUAppleMusicAccountActionSheetCancelButtonTitle", @"HUAppleMusicAccountActionSheetCancelButtonTitle", 1);
  v18 = [v16 actionWithTitle:v17 style:1 handler:0];
  [v12 addAction:v18];

  [(HUAppleMusicAccountViewController *)v6 presentViewController:v12 animated:1 completion:0];
  objc_destroyWeak(&v23);

  objc_destroyWeak(&location);
}

void __81__HUAppleMusicAccountViewController_appleMusicModuleControllerPresentSignInFlow___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = MEMORY[0x277D75110];
  v6 = _HULocalizedStringWithDefaultValue(@"HUMediaSystemAppleMusicAccountEditorViewControllerLoadingText", @"HUMediaSystemAppleMusicAccountEditorViewControllerLoadingText", 1);
  v7 = [v5 hu_alertControllerWithActivityIndicatorAndTitle:v6];
  [WeakRetained setAppleMusicLoadingViewController:v7];

  v8 = [WeakRetained appleMusicLoadingViewController];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __81__HUAppleMusicAccountViewController_appleMusicModuleControllerPresentSignInFlow___block_invoke_2;
  v9[3] = &unk_277DB8770;
  objc_copyWeak(&v10, (a1 + 32));
  [WeakRetained presentViewController:v8 animated:1 completion:v9];

  objc_destroyWeak(&v10);
}

void __81__HUAppleMusicAccountViewController_appleMusicModuleControllerPresentSignInFlow___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained appleMusicAccountModuleController];
  v4 = [v3 kickOffManualLogin];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __81__HUAppleMusicAccountViewController_appleMusicModuleControllerPresentSignInFlow___block_invoke_3;
  v6[3] = &unk_277DB8CA8;
  objc_copyWeak(&v7, (a1 + 32));
  v5 = [v4 addCompletionBlock:v6];
  [WeakRetained setAccountArbitrationFuture:v5];

  objc_destroyWeak(&v7);
}

void __81__HUAppleMusicAccountViewController_appleMusicModuleControllerPresentSignInFlow___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained appleMusicLoadingViewController];
  v9 = [WeakRetained presentedViewController];

  if (v8 == v9)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __81__HUAppleMusicAccountViewController_appleMusicModuleControllerPresentSignInFlow___block_invoke_4;
    v10[3] = &unk_277DB8770;
    objc_copyWeak(&v11, (a1 + 32));
    [WeakRetained dismissViewControllerAnimated:1 completion:v10];
    objc_destroyWeak(&v11);
  }
}

void __81__HUAppleMusicAccountViewController_appleMusicModuleControllerPresentSignInFlow___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setAppleMusicLoadingViewController:0];
  [WeakRetained setAccountArbitrationFuture:0];
}

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = HFLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v24 = self;
    v25 = 2112;
    v26 = v9;
    _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "%@: User tapped URL: %@", buf, 0x16u);
  }

  v11 = [MEMORY[0x277D14C80] musicLoginURL];
  v12 = [v9 isEqual:v11];

  if (v12)
  {
    v13 = [(HUAppleMusicAccountViewController *)self appleMusicAccountModuleController];
    v14 = [v13 module];
    v15 = [v14 state];

    if ((v15 & 0xFFFFFFFFFFFFFFFELL) != 2)
    {
      v16 = MEMORY[0x277D75110];
      v17 = _HULocalizedStringWithDefaultValue(@"HUMediaSystemAppleMusicAccountEditorViewControllerLoadingText", @"HUMediaSystemAppleMusicAccountEditorViewControllerLoadingText", 1);
      v18 = [v16 hu_alertControllerWithActivityIndicatorAndTitle:v17];
      [(HUAppleMusicAccountViewController *)self setAppleMusicLoadingViewController:v18];

      objc_initWeak(buf, self);
      v19 = [(HUAppleMusicAccountViewController *)self appleMusicLoadingViewController];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __88__HUAppleMusicAccountViewController_textView_shouldInteractWithURL_inRange_interaction___block_invoke;
      v21[3] = &unk_277DB8770;
      objc_copyWeak(&v22, buf);
      [(HUAppleMusicAccountViewController *)self presentViewController:v19 animated:1 completion:v21];

      objc_destroyWeak(&v22);
      objc_destroyWeak(buf);
    }
  }

  return 0;
}

void __88__HUAppleMusicAccountViewController_textView_shouldInteractWithURL_inRange_interaction___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained appleMusicAccountModuleController];
  v4 = [v3 kickOffManualLogin];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __88__HUAppleMusicAccountViewController_textView_shouldInteractWithURL_inRange_interaction___block_invoke_2;
  v6[3] = &unk_277DB8CA8;
  objc_copyWeak(&v7, (a1 + 32));
  v5 = [v4 addCompletionBlock:v6];
  [WeakRetained setAccountArbitrationFuture:v5];

  objc_destroyWeak(&v7);
}

void __88__HUAppleMusicAccountViewController_textView_shouldInteractWithURL_inRange_interaction___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained appleMusicLoadingViewController];
  v9 = [WeakRetained presentedViewController];

  if (v8 == v9)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __88__HUAppleMusicAccountViewController_textView_shouldInteractWithURL_inRange_interaction___block_invoke_3;
    v10[3] = &unk_277DB8770;
    objc_copyWeak(&v11, (a1 + 32));
    [WeakRetained dismissViewControllerAnimated:1 completion:v10];
    objc_destroyWeak(&v11);
  }
}

void __88__HUAppleMusicAccountViewController_textView_shouldInteractWithURL_inRange_interaction___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setAppleMusicLoadingViewController:0];
  [WeakRetained setAccountArbitrationFuture:0];
}

- (id)_appleMusicFooterView
{
  v3 = [(HUAppleMusicAccountViewController *)self tableView];
  v4 = [v3 dequeueReusableHeaderFooterViewWithIdentifier:@"HOAppleMusicAccountViewFooterViewReuseIdentifier"];

  [v4 setType:1];
  v5 = [(HUAppleMusicAccountViewController *)self _appleMusicFooterMessage];
  [v4 setMessage:v5];

  v6 = [v4 messageTextView];
  [v6 setDelegate:self];

  return v4;
}

- (id)_appleMusicFooterMessage
{
  v3 = [(HUAppleMusicAccountViewController *)self _accessorySupportsMultiUser];
  v4 = [(HUAppleMusicAccountViewController *)self appleMusicAccountModuleController];
  v5 = [v4 module];
  v6 = [v5 signInMessage:v3];

  if (![v6 length] && -[HUAppleMusicAccountViewController _accessorySupportsMultiUser](self, "_accessorySupportsMultiUser"))
  {
    v7 = [(HUAppleMusicAccountViewController *)self appleMusicAccountModuleController];
    v8 = [v7 module];
    v9 = [v8 explicitAccountSignedInMessage];

    v6 = v9;
LABEL_6:
    if ([v6 length])
    {
      v10 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v6];
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_11;
  }

  if (![v6 length] || -[HUAppleMusicAccountViewController _accessorySupportsMultiUser](self, "_accessorySupportsMultiUser"))
  {
    goto LABEL_6;
  }

  v10 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v6];
  v11 = [(HUAppleMusicAccountViewController *)self appleMusicAccountModuleController];
  v12 = [v11 module];
  v13 = [v12 numberOfKnownAccounts];

  if (v13)
  {
    v14 = objc_alloc(MEMORY[0x277CCAB48]);
    v15 = MEMORY[0x277CCA898];
    v16 = _HULocalizedStringWithDefaultValue(@"HUAppleMusicAccountSignInUsingADifferentAppleID", @"HUAppleMusicAccountSignInUsingADifferentAppleID", 1);
    v17 = [MEMORY[0x277D14C80] musicLoginURL];
    v18 = [v15 hf_attributedString:v6 withAppendedLinkString:v16 linkURL:v17];
    v19 = [v14 initWithAttributedString:v18];

    v10 = v19;
  }

LABEL_11:

  return v10;
}

- (BOOL)_accessorySupportsMultiUser
{
  objc_opt_class();
  v3 = [(HUItemTableViewController *)self itemManager];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 appleMusicAccountModule];

  v7 = [v6 mediaProfileContainer];
  v8 = [v7 hf_homePodSupportsMultiUser];

  return v8;
}

- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  objc_initWeak(&location, self);
  v10 = [(HUAppleMusicAccountViewController *)self accountArbitrationFuture];
  if (!v10 || ([(HUAppleMusicAccountViewController *)self appleMusicLoadingViewController], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11 == v8))
  {
    v12.receiver = self;
    v12.super_class = HUAppleMusicAccountViewController;
    [(HUAppleMusicAccountViewController *)&v12 presentViewController:v8 animated:v6 completion:v9];
  }

  else
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __79__HUAppleMusicAccountViewController_presentViewController_animated_completion___block_invoke;
    v13[3] = &unk_277DC0F18;
    v14 = v8;
    v18 = v6;
    v16 = v9;
    objc_copyWeak(&v17, &location);
    v15 = self;
    [(HUAppleMusicAccountViewController *)self dismissViewControllerAnimated:1 completion:v13];
    objc_destroyWeak(&v17);
  }

  objc_destroyWeak(&location);
}

void __79__HUAppleMusicAccountViewController_presentViewController_animated_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 64);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __79__HUAppleMusicAccountViewController_presentViewController_animated_completion___block_invoke_2;
  v6[3] = &unk_277DC0EF0;
  v8 = *(a1 + 48);
  objc_copyWeak(&v9, (a1 + 56));
  v7 = *(a1 + 32);
  v5.receiver = v3;
  v5.super_class = HUAppleMusicAccountViewController;
  objc_msgSendSuper2(&v5, sel_presentViewController_animated_completion_, v2, v4, v6);

  objc_destroyWeak(&v9);
}

void __79__HUAppleMusicAccountViewController_presentViewController_animated_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = objc_alloc(MEMORY[0x277D2C8D0]);
  v5 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__HUAppleMusicAccountViewController_presentViewController_animated_completion___block_invoke_3;
  v7[3] = &unk_277DB99B8;
  objc_copyWeak(&v8, (a1 + 48));
  v6 = [v4 initWithTargetObject:v5 finalizer:v7];
  [WeakRetained setAppleMusicLoadingViewControllerDeallocationSentinel:v6];

  objc_destroyWeak(&v8);
}

void __79__HUAppleMusicAccountViewController_presentViewController_animated_completion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained appleMusicLoadingViewController];
  if (v1)
  {
    v2 = v1;
    v3 = [WeakRetained accountArbitrationFuture];
    if (v3)
    {
      v4 = v3;
      v5 = [WeakRetained accountArbitrationFuture];
      v6 = [v5 isFinished];

      if (v6)
      {
        goto LABEL_6;
      }

      v2 = [WeakRetained appleMusicLoadingViewController];
      [WeakRetained presentViewController:v2 animated:1 completion:0];
    }
  }

LABEL_6:
  [WeakRetained setAppleMusicLoadingViewControllerDeallocationSentinel:0];
}

@end