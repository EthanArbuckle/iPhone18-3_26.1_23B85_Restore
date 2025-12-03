@interface GKFriendRequestViewController
+ (void)addFriends:(id)friends recipients:(id)recipients;
+ (void)presentAlertControllerOn:(id)on withMessage:(id)message andTitle:(id)title;
+ (void)presentFriendRequestOn:(id)on forRecipients:(id)recipients withFriendCode:(id)code andFriendSupportPageURL:(id)l;
- (GKFriendRequestViewController)init;
- (GKFriendRequestViewControllerDelegate)delegate;
- (UIViewController)requestingViewController;
- (id)_presentingViewController;
- (void)notifyDelegateOnWillFinish;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation GKFriendRequestViewController

- (GKFriendRequestViewController)init
{
  v6.receiver = self;
  v6.super_class = GKFriendRequestViewController;
  v2 = [(GKHostedViewController *)&v6 init];
  if (v2)
  {
    currentGame = [MEMORY[0x277D0C048] currentGame];
    bundleIdentifier = [currentGame bundleIdentifier];
    [(GKFriendRequestViewController *)v2 setHostApp:bundleIdentifier];
  }

  return v2;
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = GKFriendRequestViewController;
  [(GKHostedViewController *)&v4 viewDidDisappear:disappear];
  local = [MEMORY[0x277D0C138] local];
  [local setIsShowingFriendRequestUI:0];
}

- (void)notifyDelegateOnWillFinish
{
  delegate = [(GKFriendRequestViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate friendRequestControllerDidFinish:self];
  }
}

- (id)_presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_requestingViewController);

  return WeakRetained;
}

+ (void)addFriends:(id)friends recipients:(id)recipients
{
  friendsCopy = friends;
  recipientsCopy = recipients;
  if (!friendsCopy)
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    keyWindow = [mEMORY[0x277D75128] keyWindow];
    friendsCopy = [keyWindow rootViewController];
  }

  if (![MEMORY[0x277CD6888] canSendText])
  {
    reporter = [MEMORY[0x277D0C1F8] reporter];
    [reporter reportEvent:*MEMORY[0x277D0BE88] type:*MEMORY[0x277D0BA90]];

    v12 = GKGameCenterUIFrameworkBundle();
    goto LABEL_7;
  }

  mEMORY[0x277D0C1D8] = [MEMORY[0x277D0C1D8] shared];
  isAddingFriendsRestricted = [mEMORY[0x277D0C1D8] isAddingFriendsRestricted];

  if (isAddingFriendsRestricted)
  {
    reporter2 = [MEMORY[0x277D0C1F8] reporter];
    [reporter2 reportEvent:*MEMORY[0x277D0BE88] type:*MEMORY[0x277D0BAB0]];

    v12 = GKGameCenterUIFrameworkBundle();
LABEL_7:
    v14 = GKGetLocalizedStringFromTableInBundle();
    v15 = GKGameCenterUIFrameworkBundle();
    v16 = GKGetLocalizedStringFromTableInBundle();
    [GKFriendRequestViewController presentAlertControllerOn:friendsCopy withMessage:v14 andTitle:v16];

    goto LABEL_12;
  }

  v17 = MEMORY[0x277D0C020];
  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKFriendRequestViewController.m", 86, "+[GKFriendRequestViewController addFriends:recipients:]"];
  v19 = [v17 dispatchGroupWithName:v18];

  mEMORY[0x277D0C1D8]2 = [MEMORY[0x277D0C1D8] shared];
  fetchFriendCodeInExtensionEnabled = [mEMORY[0x277D0C1D8]2 fetchFriendCodeInExtensionEnabled];

  if (fetchFriendCodeInExtensionEnabled)
  {
    [GKFriendRequestViewController presentFriendRequestOn:friendsCopy forRecipients:recipientsCopy withFriendCode:0 andFriendSupportPageURL:0];
  }

  else
  {
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __55__GKFriendRequestViewController_addFriends_recipients___block_invoke;
    v27[3] = &unk_27966A148;
    v28 = v19;
    [v28 perform:v27];
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __55__GKFriendRequestViewController_addFriends_recipients___block_invoke_26;
  v23[3] = &unk_27966A9A8;
  v24 = v19;
  v25 = friendsCopy;
  v26 = recipientsCopy;
  v22 = v19;
  [v22 notifyOnMainQueueWithBlock:v23];

LABEL_12:
}

void __55__GKFriendRequestViewController_addFriends_recipients___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D0C138] local];
  v5 = [MEMORY[0x277CCAD78] UUID];
  v6 = [v5 UUIDString];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__GKFriendRequestViewController_addFriends_recipients___block_invoke_2;
  v8[3] = &unk_27966C3D0;
  v9 = *(a1 + 32);
  v10 = v3;
  v7 = v3;
  [v4 createFriendRequestWithIdentifier:v6 handler:v8];
}

void __55__GKFriendRequestViewController_addFriends_recipients___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v10 = GKOSLoggers();
    }

    v11 = *MEMORY[0x277D0C290];
    if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
    {
      __55__GKFriendRequestViewController_addFriends_recipients___block_invoke_2_cold_1(v9, v11);
    }
  }

  else
  {
    v12 = [MEMORY[0x277D0C1F8] reporter];
    [v12 reportEvent:*MEMORY[0x277D0BE88] type:*MEMORY[0x277D0BA98]];

    [*(a1 + 32) setObject:v7 forKeyedSubscript:@"friendCode"];
    [*(a1 + 32) setObject:v8 forKeyedSubscript:@"friendSupportPageURL"];
  }

  (*(*(a1 + 40) + 16))();
}

void __55__GKFriendRequestViewController_addFriends_recipients___block_invoke_26(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"friendCode"];

  if (v2)
  {
    v3 = [MEMORY[0x277D0C138] local];
    [v3 setIsShowingFriendRequestUI:1];

    v5 = *(a1 + 40);
    v4 = *(a1 + 48);
    v10 = [*(a1 + 32) objectForKeyedSubscript:@"friendCode"];
    v6 = [*(a1 + 32) objectForKeyedSubscript:@"friendSupportPageURL"];
    [GKFriendRequestViewController presentFriendRequestOn:v5 forRecipients:v4 withFriendCode:v10 andFriendSupportPageURL:v6];
  }

  else
  {
    v7 = *(a1 + 40);
    v10 = GKGameCenterUIFrameworkBundle();
    v6 = GKGetLocalizedStringFromTableInBundle();
    v8 = GKGameCenterUIFrameworkBundle();
    v9 = GKGetLocalizedStringFromTableInBundle();
    [GKFriendRequestViewController presentAlertControllerOn:v7 withMessage:v6 andTitle:v9];
  }
}

+ (void)presentFriendRequestOn:(id)on forRecipients:(id)recipients withFriendCode:(id)code andFriendSupportPageURL:(id)l
{
  onCopy = on;
  lCopy = l;
  codeCopy = code;
  recipientsCopy = recipients;
  v12 = objc_alloc_init(GKFriendRequestViewController);
  [(GKFriendRequestViewController *)v12 setRequestingViewController:onCopy];
  [(GKFriendRequestViewController *)v12 setFriendCode:codeCopy];

  [(GKFriendRequestViewController *)v12 setFriendSupportPageURL:lCopy];
  [(GKFriendRequestViewController *)v12 setRecipients:recipientsCopy];

  if ([onCopy conformsToProtocol:&unk_286226E78])
  {
    [(GKFriendRequestViewController *)v12 setDelegate:onCopy];
  }

  [onCopy _gkPresentViewController:v12 animated:1];
}

+ (void)presentAlertControllerOn:(id)on withMessage:(id)message andTitle:(id)title
{
  onCopy = on;
  v7 = [MEMORY[0x277D75110] alertControllerWithTitle:title message:message preferredStyle:1];
  v8 = MEMORY[0x277D750F8];
  v9 = GKGameCenterUIFrameworkBundle();
  v10 = GKGetLocalizedStringFromTableInBundle();
  v11 = [v8 actionWithTitle:v10 style:0 handler:0];
  [v7 addAction:v11];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [onCopy presentViewController:v7 animated:1 completion:0];
  }

  else
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    keyWindow = [mEMORY[0x277D75128] keyWindow];
    rootViewController = [keyWindow rootViewController];

    [rootViewController presentViewController:v7 animated:1 completion:0];
  }
}

- (GKFriendRequestViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIViewController)requestingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_requestingViewController);

  return WeakRetained;
}

void __55__GKFriendRequestViewController_addFriends_recipients___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_24DE53000, a2, OS_LOG_TYPE_ERROR, "createFriendRequest error: %@", &v2, 0xCu);
}

@end