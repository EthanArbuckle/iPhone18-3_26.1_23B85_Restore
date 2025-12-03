@interface HUAppleMusicAccountViewController
- (BOOL)_accessorySupportsMultiUser;
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (HUAppleMusicAccountViewController)initWithAccessoryGroupItem:(id)item;
- (HUAppleMusicAccountViewController)initWithAccessorySettingItem:(id)item module:(id)module;
- (HUAppleMusicAccountViewController)initWithHFItem:(id)item mediaProfileContainer:(id)container;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)_appleMusicFooterMessage;
- (id)_appleMusicFooterView;
- (id)buildItemModuleControllerForModule:(id)module;
- (id)itemModuleControllers;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (void)appleMusicModuleController:(id)controller willPresentContext:(id)context account:(id)account;
- (void)appleMusicModuleControllerDidUpdateAuthenticationState:(id)state;
- (void)appleMusicModuleControllerPresentSignInFlow:(id)flow;
- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)viewDidLoad;
@end

@implementation HUAppleMusicAccountViewController

- (HUAppleMusicAccountViewController)initWithHFItem:(id)item mediaProfileContainer:(id)container
{
  itemCopy = item;
  containerCopy = container;
  v8 = [[HUAppleMusicAccountItemManager alloc] initWithMediaProfileContainer:containerCopy delegate:self];

  v13.receiver = self;
  v13.super_class = HUAppleMusicAccountViewController;
  v9 = [(HUItemTableViewController *)&v13 initWithItemManager:v8 tableViewStyle:1];
  if (v9)
  {
    latestResults = [itemCopy latestResults];
    v11 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];
    [(HUAppleMusicAccountViewController *)v9 setTitle:v11];
  }

  return v9;
}

- (HUAppleMusicAccountViewController)initWithAccessoryGroupItem:(id)item
{
  itemCopy = item;
  homeKitSettingsVendor = [itemCopy homeKitSettingsVendor];
  homeKitObject = [homeKitSettingsVendor homeKitObject];
  v7 = &unk_2825BCB38;
  v8 = homeKitObject;
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
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertProtocolCast(Protocol * _Nonnull __strong, id  _Nonnull __strong)"}];
    v14 = NSStringFromProtocol(v7);
    [currentHandler handleFailureInFunction:v13 file:@"NSObject+NAAdditions.h" lineNumber:71 description:{@"Expected protocol %@", v14}];

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

  v16 = [(HUAppleMusicAccountViewController *)self initWithHFItem:itemCopy mediaProfileContainer:v11];

  return v16;
}

- (HUAppleMusicAccountViewController)initWithAccessorySettingItem:(id)item module:(id)module
{
  itemCopy = item;
  moduleCopy = module;
  if (!moduleCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUAppleMusicAccountViewController.m" lineNumber:72 description:@"HUAppleMusicAccountViewController initialized without HUHomeKitAccessorySettingsItemModule"];
  }

  sourceItem = [moduleCopy sourceItem];
  accessories = [sourceItem accessories];
  anyObject = [accessories anyObject];

  mediaProfile = [anyObject mediaProfile];
  v13 = [(HUAppleMusicAccountViewController *)self initWithHFItem:itemCopy mediaProfileContainer:mediaProfile];

  return v13;
}

- (id)buildItemModuleControllerForModule:(id)module
{
  moduleCopy = module;
  objc_opt_class();
  itemManager = [(HUItemTableViewController *)self itemManager];
  if (objc_opt_isKindOfClass())
  {
    v7 = itemManager;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  appleMusicAccountModule = [v8 appleMusicAccountModule];

  if (appleMusicAccountModule == moduleCopy)
  {
    v13 = [HUAppleMusicAccountModuleController alloc];
    appleMusicAccountModule2 = [v8 appleMusicAccountModule];
    v15 = [(HUAppleMusicAccountModuleController *)v13 initWithModule:appleMusicAccountModule2];
    [(HUAppleMusicAccountViewController *)self setAppleMusicAccountModuleController:v15];

    appleMusicAccountModuleController = [(HUAppleMusicAccountViewController *)self appleMusicAccountModuleController];
    [appleMusicAccountModuleController setDelegate:self];

    appleMusicAccountModuleController2 = [(HUAppleMusicAccountViewController *)self appleMusicAccountModuleController];
  }

  else
  {
    primaryUserSettingsItemModule = [v8 primaryUserSettingsItemModule];

    if (primaryUserSettingsItemModule != moduleCopy)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"HUAppleMusicAccountViewController.m" lineNumber:93 description:{@"Unknown module %@", moduleCopy}];

      v12 = 0;
      goto LABEL_10;
    }

    v18 = [(HUItemModuleController *)[HUPrimaryUserSettingsItemModuleController alloc] initWithModule:moduleCopy];
    [(HUAppleMusicAccountViewController *)self setPrimaryUserModuleController:v18];

    appleMusicAccountModuleController2 = [(HUAppleMusicAccountViewController *)self primaryUserModuleController];
  }

  v12 = appleMusicAccountModuleController2;
LABEL_10:

  return v12;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = HUAppleMusicAccountViewController;
  [(HUItemTableViewController *)&v4 viewDidLoad];
  tableView = [(HUAppleMusicAccountViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"HOAppleMusicAccountViewFooterViewReuseIdentifier"];
}

- (id)itemModuleControllers
{
  v3 = objc_opt_new();
  v8.receiver = self;
  v8.super_class = HUAppleMusicAccountViewController;
  itemModuleControllers = [(HUItemTableViewController *)&v8 itemModuleControllers];
  [v3 unionSet:itemModuleControllers];

  appleMusicAccountModuleController = [(HUAppleMusicAccountViewController *)self appleMusicAccountModuleController];
  [v3 na_safeAddObject:appleMusicAccountModuleController];

  primaryUserModuleController = [(HUAppleMusicAccountViewController *)self primaryUserModuleController];
  [v3 na_safeAddObject:primaryUserModuleController];

  return v3;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  itemManager = [(HUItemTableViewController *)self itemManager];
  v8 = [itemManager displayedSectionIdentifierForSectionIndex:section];

  if (![v8 isEqualToString:@"HUAppleMusicAccountModule_MusicActionsSectionIdentifier"])
  {
    v15.receiver = self;
    v15.super_class = HUAppleMusicAccountViewController;
    _appleMusicFooterView = [(HUItemTableViewController *)&v15 tableView:viewCopy viewForHeaderInSection:section];
    goto LABEL_6;
  }

  _appleMusicFooterMessage = [(HUAppleMusicAccountViewController *)self _appleMusicFooterMessage];
  if (_appleMusicFooterMessage)
  {
    v10 = _appleMusicFooterMessage;
    _accessorySupportsMultiUser = [(HUAppleMusicAccountViewController *)self _accessorySupportsMultiUser];

    if (_accessorySupportsMultiUser)
    {
      _appleMusicFooterView = [(HUAppleMusicAccountViewController *)self _appleMusicFooterView];
LABEL_6:
      v13 = _appleMusicFooterView;
      goto LABEL_8;
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  viewCopy = view;
  itemManager = [(HUItemTableViewController *)self itemManager];
  v8 = [itemManager displayedSectionIdentifierForSectionIndex:section];

  if ([v8 isEqualToString:@"HUAppleMusicAccountModule_MusicActionsSectionIdentifier"])
  {
    if ([(HUAppleMusicAccountViewController *)self _accessorySupportsMultiUser])
    {
      v9 = 0;
      goto LABEL_7;
    }

    _appleMusicFooterView = [(HUAppleMusicAccountViewController *)self _appleMusicFooterView];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = HUAppleMusicAccountViewController;
    _appleMusicFooterView = [(HUItemTableViewController *)&v12 tableView:viewCopy viewForFooterInSection:section];
  }

  v9 = _appleMusicFooterView;
LABEL_7:

  return v9;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  itemManager = [(HUItemTableViewController *)self itemManager];
  v6 = [itemManager displayedSectionIdentifierForSectionIndex:section];

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

- (void)appleMusicModuleController:(id)controller willPresentContext:(id)context account:(id)account
{
  contextCopy = context;
  accountCopy = account;
  v8 = _HULocalizedStringWithDefaultValue(@"HUAppleMusicPromptTitle", @"HUAppleMusicPromptTitle", 1);
  [contextCopy setTitle:v8];

  if (accountCopy)
  {
    username = [accountCopy username];
    [contextCopy setUsername:username];

    [contextCopy setIsUsernameEditable:0];
    v10 = _HULocalizedStringWithDefaultValue(@"HUAppleMusicPromptReason", @"HUAppleMusicPromptReason", 1);
    username2 = [accountCopy username];
    v12 = [v10 stringByAppendingFormat:@"\n\n%@", username2];
    [contextCopy setReason:v12];
  }

  else
  {
    v10 = _HULocalizedStringWithDefaultValue(@"HUAppleMusicPromptReason", @"HUAppleMusicPromptReason", 1);
    [contextCopy setReason:v10];
  }

  [contextCopy setPresentingViewController:self];
}

- (void)appleMusicModuleControllerDidUpdateAuthenticationState:(id)state
{
  stateCopy = state;
  module = [stateCopy module];
  if ([module state] == 2)
  {
    v5 = 0;
  }

  else
  {
    module2 = [stateCopy module];
    v5 = [module2 state] != 3;
  }

  navigationItem = [(HUAppleMusicAccountViewController *)self navigationItem];
  backBarButtonItem = [navigationItem backBarButtonItem];
  [backBarButtonItem setEnabled:v5];

  v9 = [MEMORY[0x277CCAB58] indexSetWithIndex:0];
  tableView = [(HUAppleMusicAccountViewController *)self tableView];
  numberOfSections = [tableView numberOfSections];

  if (numberOfSections >= 2)
  {
    [v9 addIndex:1];
  }

  tableView2 = [(HUAppleMusicAccountViewController *)self tableView];
  [tableView2 _reloadSectionHeaderFooters:v9 withRowAnimation:100];
}

- (void)appleMusicModuleControllerPresentSignInFlow:(id)flow
{
  flowCopy = flow;
  tableView = [(HUAppleMusicAccountViewController *)self tableView];
  objc_opt_class();
  selfCopy = self;
  if (objc_opt_isKindOfClass())
  {
    v7 = selfCopy;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    hu_getSelectedCell = [(UITableViewController *)v8 hu_getSelectedCell];

    tableView = hu_getSelectedCell;
  }

  objc_initWeak(&location, selfCopy);
  v10 = MEMORY[0x277D75110];
  v11 = _HULocalizedStringWithDefaultValue(@"HUAppleMusicAccountSignInActionSheetTitle", @"HUAppleMusicAccountSignInActionSheetTitle", 1);
  v12 = [v10 hu_actionSheetWithTitle:0 message:v11 anchorView:tableView];

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

  [(HUAppleMusicAccountViewController *)selfCopy presentViewController:v12 animated:1 completion:0];
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

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  v27 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  lCopy = l;
  v10 = HFLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v25 = 2112;
    v26 = lCopy;
    _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "%@: User tapped URL: %@", buf, 0x16u);
  }

  musicLoginURL = [MEMORY[0x277D14C80] musicLoginURL];
  v12 = [lCopy isEqual:musicLoginURL];

  if (v12)
  {
    appleMusicAccountModuleController = [(HUAppleMusicAccountViewController *)self appleMusicAccountModuleController];
    module = [appleMusicAccountModuleController module];
    state = [module state];

    if ((state & 0xFFFFFFFFFFFFFFFELL) != 2)
    {
      v16 = MEMORY[0x277D75110];
      v17 = _HULocalizedStringWithDefaultValue(@"HUMediaSystemAppleMusicAccountEditorViewControllerLoadingText", @"HUMediaSystemAppleMusicAccountEditorViewControllerLoadingText", 1);
      v18 = [v16 hu_alertControllerWithActivityIndicatorAndTitle:v17];
      [(HUAppleMusicAccountViewController *)self setAppleMusicLoadingViewController:v18];

      objc_initWeak(buf, self);
      appleMusicLoadingViewController = [(HUAppleMusicAccountViewController *)self appleMusicLoadingViewController];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __88__HUAppleMusicAccountViewController_textView_shouldInteractWithURL_inRange_interaction___block_invoke;
      v21[3] = &unk_277DB8770;
      objc_copyWeak(&v22, buf);
      [(HUAppleMusicAccountViewController *)self presentViewController:appleMusicLoadingViewController animated:1 completion:v21];

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
  tableView = [(HUAppleMusicAccountViewController *)self tableView];
  v4 = [tableView dequeueReusableHeaderFooterViewWithIdentifier:@"HOAppleMusicAccountViewFooterViewReuseIdentifier"];

  [v4 setType:1];
  _appleMusicFooterMessage = [(HUAppleMusicAccountViewController *)self _appleMusicFooterMessage];
  [v4 setMessage:_appleMusicFooterMessage];

  messageTextView = [v4 messageTextView];
  [messageTextView setDelegate:self];

  return v4;
}

- (id)_appleMusicFooterMessage
{
  _accessorySupportsMultiUser = [(HUAppleMusicAccountViewController *)self _accessorySupportsMultiUser];
  appleMusicAccountModuleController = [(HUAppleMusicAccountViewController *)self appleMusicAccountModuleController];
  module = [appleMusicAccountModuleController module];
  v6 = [module signInMessage:_accessorySupportsMultiUser];

  if (![v6 length] && -[HUAppleMusicAccountViewController _accessorySupportsMultiUser](self, "_accessorySupportsMultiUser"))
  {
    appleMusicAccountModuleController2 = [(HUAppleMusicAccountViewController *)self appleMusicAccountModuleController];
    module2 = [appleMusicAccountModuleController2 module];
    explicitAccountSignedInMessage = [module2 explicitAccountSignedInMessage];

    v6 = explicitAccountSignedInMessage;
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
  appleMusicAccountModuleController3 = [(HUAppleMusicAccountViewController *)self appleMusicAccountModuleController];
  module3 = [appleMusicAccountModuleController3 module];
  numberOfKnownAccounts = [module3 numberOfKnownAccounts];

  if (numberOfKnownAccounts)
  {
    v14 = objc_alloc(MEMORY[0x277CCAB48]);
    v15 = MEMORY[0x277CCA898];
    v16 = _HULocalizedStringWithDefaultValue(@"HUAppleMusicAccountSignInUsingADifferentAppleID", @"HUAppleMusicAccountSignInUsingADifferentAppleID", 1);
    musicLoginURL = [MEMORY[0x277D14C80] musicLoginURL];
    v18 = [v15 hf_attributedString:v6 withAppendedLinkString:v16 linkURL:musicLoginURL];
    v19 = [v14 initWithAttributedString:v18];

    v10 = v19;
  }

LABEL_11:

  return v10;
}

- (BOOL)_accessorySupportsMultiUser
{
  objc_opt_class();
  itemManager = [(HUItemTableViewController *)self itemManager];
  if (objc_opt_isKindOfClass())
  {
    v4 = itemManager;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  appleMusicAccountModule = [v5 appleMusicAccountModule];

  mediaProfileContainer = [appleMusicAccountModule mediaProfileContainer];
  hf_homePodSupportsMultiUser = [mediaProfileContainer hf_homePodSupportsMultiUser];

  return hf_homePodSupportsMultiUser;
}

- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  completionCopy = completion;
  objc_initWeak(&location, self);
  accountArbitrationFuture = [(HUAppleMusicAccountViewController *)self accountArbitrationFuture];
  if (!accountArbitrationFuture || ([(HUAppleMusicAccountViewController *)self appleMusicLoadingViewController], v11 = objc_claimAutoreleasedReturnValue(), v11, accountArbitrationFuture, v11 == controllerCopy))
  {
    v12.receiver = self;
    v12.super_class = HUAppleMusicAccountViewController;
    [(HUAppleMusicAccountViewController *)&v12 presentViewController:controllerCopy animated:animatedCopy completion:completionCopy];
  }

  else
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __79__HUAppleMusicAccountViewController_presentViewController_animated_completion___block_invoke;
    v13[3] = &unk_277DC0F18;
    v14 = controllerCopy;
    v18 = animatedCopy;
    v16 = completionCopy;
    objc_copyWeak(&v17, &location);
    selfCopy = self;
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