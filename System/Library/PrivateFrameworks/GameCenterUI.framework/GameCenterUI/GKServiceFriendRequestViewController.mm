@interface GKServiceFriendRequestViewController
- (GKServiceFriendRequestViewController)init;
- (void)constructPrivateViewController;
- (void)displayAlertWithTitle:(id)a3 andMessage:(id)a4;
- (void)messageComposeViewController:(id)a3 didFinishWithResult:(int64_t)a4;
- (void)setInitialState:(id)a3 withReply:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation GKServiceFriendRequestViewController

- (GKServiceFriendRequestViewController)init
{
  v5.receiver = self;
  v5.super_class = GKServiceFriendRequestViewController;
  v2 = [(GKServiceViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(GKServiceViewController *)v2 setAlwaysShowDoneButton:1];
  }

  return v3;
}

- (void)viewWillAppear:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = GKServiceFriendRequestViewController;
  [(GKServiceViewController *)&v9 viewWillAppear:a3];
  v4 = [(GKServiceFriendRequestViewController *)self navigationBar];
  [v4 setHidden:1];

  v5 = [MEMORY[0x277D0C868] sharedPalette];
  v6 = [v5 viewBackgroundColor];
  v7 = [v6 colorWithAlphaComponent:0.0];
  v8 = [(GKServiceFriendRequestViewController *)self view];
  [v8 setBackgroundColor:v7];
}

- (void)viewDidAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = GKServiceFriendRequestViewController;
  [(GKServiceViewController *)&v8 viewDidAppear:a3];
  v4 = [MEMORY[0x277D0BFA8] reporter];
  [v4 recordPageWithID:@"MessageCompose" pageContext:&stru_28612D290 pageType:@"inviteFriend"];

  v5 = [(GKServiceFriendRequestViewController *)self view];
  v6 = [v5 window];
  v7 = [v6 _rootSheetPresentationController];
  [v7 _setShouldScaleDownBehindDescendantSheets:0];
}

- (void)setInitialState:(id)a3 withReply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 objectForKeyedSubscript:@"GKFriendCodeKey"];
  [(GKServiceFriendRequestViewController *)self setFriendCode:v8];

  v9 = [v7 objectForKeyedSubscript:@"GKFriendSupportPageURLKey"];
  [(GKServiceFriendRequestViewController *)self setFriendSupportPageURL:v9];

  v10 = [v7 objectForKeyedSubscript:@"GKFriendRecipientsKey"];
  [(GKServiceFriendRequestViewController *)self setRecipients:v10];

  v11 = [v7 objectForKeyedSubscript:@"GKChatGUIDKey"];
  [(GKServiceFriendRequestViewController *)self setChatGUID:v11];

  v12 = [v7 objectForKeyedSubscript:@"GKHostAppKey"];
  [(GKServiceFriendRequestViewController *)self setHostApp:v12];

  v13.receiver = self;
  v13.super_class = GKServiceFriendRequestViewController;
  [(GKServiceViewController *)&v13 setInitialState:v7 withReply:v6];
}

- (void)constructPrivateViewController
{
  v33 = *MEMORY[0x277D85DE8];
  [(GKServiceFriendRequestViewController *)self setMessageComposeSent:0];
  v3 = objc_alloc_init(GKMessageComposeViewController);
  [(GKServiceFriendRequestViewController *)self setComposeController:v3];
  [(GKServiceViewController *)self setPrivateViewController:v3];
  [(GKMessageComposeViewController *)v3 setMessageComposeDelegate:self];
  [(GKMessageComposeViewController *)v3 setGkComposeDelegate:self];
  v4 = [(GKServiceFriendRequestViewController *)self friendSupportPageURL];
  if (v4)
  {
    v5 = [(GKServiceFriendRequestViewController *)self friendCode];

    if (v5)
    {
      v6 = objc_opt_new();
      v7 = [(GKServiceFriendRequestViewController *)self friendSupportPageURL];
      [v6 setFriendSupportPageURL:v7];

      v8 = [(GKServiceFriendRequestViewController *)self friendCode];
      [v6 setFriendCode:v8];

      [v6 setFriendRequestState:@"1"];
      v9 = [MEMORY[0x277D0C138] local];
      [v6 setInitiator:v9];

      [v6 setFriendRequestVersion:@"1"];
      v4 = [MEMORY[0x277CBEBC0] _gkGenerateFriendRequestURL:v6];
    }

    else
    {
      v4 = 0;
    }
  }

  v10 = MEMORY[0x277CD68F8];
  v11 = objc_opt_new();
  v12 = [v10 friendInviteMessageWithUrl:v4 session:v11];

  [(GKMessageComposeViewController *)v3 setMessage:v12 withExtensionBundleIdentifier:@"com.apple.gamecenter.GameCenterUIService.GameCenterMessageExtension"];
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = [(GKServiceFriendRequestViewController *)self chatGUID];

  if (v14)
  {
    v15 = [(GKServiceFriendRequestViewController *)self chatGUID];
    [(GKMessageComposeViewController *)v3 setChatGUID:v15];
  }

  else
  {
    v26 = v12;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v16 = [(GKServiceFriendRequestViewController *)self recipients];
    v17 = [v16 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v29;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v29 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v28 + 1) + 8 * i);
          v22 = [v21 suggestedHandle];

          if (v22)
          {
            v23 = [v21 suggestedHandle];
            [v13 addObject:v23];
          }

          else
          {
            v23 = [GKUnifiedRecipient recipientForContact:v21];
            v24 = [v23 handle];

            if (v24)
            {
              v25 = [v23 handle];
              [v13 addObject:v25];
            }
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v18);
    }

    [(GKMessageComposeViewController *)v3 setRecipients:v13];
    v12 = v26;
  }

  v27.receiver = self;
  v27.super_class = GKServiceFriendRequestViewController;
  [(GKServiceViewController *)&v27 constructPrivateViewController];
}

- (void)messageComposeViewController:(id)a3 didFinishWithResult:(int64_t)a4
{
  v6 = a3;
  switch(a4)
  {
    case 2:
      v14 = [MEMORY[0x277D0C1F8] reporter];
      [v14 reportEvent:*MEMORY[0x277D0BE88] type:*MEMORY[0x277D0BAA0]];

      v9 = [MEMORY[0x277D0BFA8] reporter];
      [v9 recordClickWithAction:@"error" targetId:@"error" targetType:@"button" pageId:@"MessageCompose" pageType:@"inviteFriend"];
      goto LABEL_11;
    case 1:
      [(GKServiceFriendRequestViewController *)self setMessageComposeSent:1];
      v12 = [MEMORY[0x277D0C1F8] reporter];
      [v12 reportEvent:*MEMORY[0x277D0BE88] type:*MEMORY[0x277D0BAB8]];

      v13 = [MEMORY[0x277D0BFA8] reporter];
      [v13 recordClickWithAction:@"send" targetId:@"send" targetType:@"button" pageId:@"MessageCompose" pageType:@"inviteFriend"];

      v9 = [MEMORY[0x277D0BFA8] reporter];
      v11 = [(GKServiceFriendRequestViewController *)self hostApp];
      [v9 recordFriendInviteActivityEventAtStage:1 hostApp:v11];
      goto LABEL_9;
    case 0:
      v7 = [MEMORY[0x277D0C1F8] reporter];
      [v7 reportEvent:*MEMORY[0x277D0BE88] type:*MEMORY[0x277D0BA80]];

      if (![(GKServiceFriendRequestViewController *)self messageComposeSent])
      {
        v8 = [MEMORY[0x277D0BFA8] reporter];
        [v8 recordClickWithAction:@"cancel" targetId:@"cancel" targetType:@"button" pageId:@"MessageCompose" pageType:@"inviteFriend"];

        v9 = [MEMORY[0x277D0C138] local];
        if (([v9 isAuthenticated] & 1) == 0)
        {
LABEL_11:

          break;
        }

        v10 = [(GKServiceFriendRequestViewController *)self friendCode];

        if (v10)
        {
          v9 = [MEMORY[0x277D0C138] local];
          v11 = [(GKServiceFriendRequestViewController *)self friendCode];
          v16[0] = MEMORY[0x277D85DD0];
          v16[1] = 3221225472;
          v16[2] = __89__GKServiceFriendRequestViewController_messageComposeViewController_didFinishWithResult___block_invoke;
          v16[3] = &unk_279669D38;
          v16[4] = self;
          [v9 cancelFriendRequestWithIdentifier:v11 handler:v16];
LABEL_9:

          goto LABEL_11;
        }
      }

      break;
  }

  v15 = [(GKServiceFriendRequestViewController *)self composeController];
  [v15 dismissViewControllerAnimated:1 completion:0];

  [(GKServiceFriendRequestViewController *)self setComposeController:0];
}

void __89__GKServiceFriendRequestViewController_messageComposeViewController_didFinishWithResult___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v4 = GKOSLoggers();
    }

    v5 = *MEMORY[0x277D0C290];
    if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
    {
      __89__GKServiceFriendRequestViewController_messageComposeViewController_didFinishWithResult___block_invoke_cold_1(v3, v5);
    }
  }

  else
  {
    v6 = [MEMORY[0x277D0C1F8] reporter];
    [v6 reportEvent:*MEMORY[0x277D0BE88] type:*MEMORY[0x277D0BA88]];

    [*(a1 + 32) setFriendCode:0];
  }
}

- (void)displayAlertWithTitle:(id)a3 andMessage:(id)a4
{
  v5 = a3;
  v6 = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__GKServiceFriendRequestViewController_displayAlertWithTitle_andMessage___block_invoke;
  v9[3] = &unk_279669E48;
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

void __73__GKServiceFriendRequestViewController_displayAlertWithTitle_andMessage___block_invoke(uint64_t a1)
{
  v5 = 0;
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = GKGameCenterUIFrameworkBundle();
  v4 = GKGetLocalizedStringFromTableInBundle();
  CFUserNotificationDisplayAlert(30.0, 0, 0, 0, 0, v1, v2, v4, 0, 0, &v5);
}

void __89__GKServiceFriendRequestViewController_messageComposeViewController_didFinishWithResult___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_24DE53000, a2, OS_LOG_TYPE_ERROR, "cancelFriendRequest error: %@", &v2, 0xCu);
}

@end