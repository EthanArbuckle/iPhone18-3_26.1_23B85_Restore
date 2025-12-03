@interface GKServiceFriendRequestViewController
- (GKServiceFriendRequestViewController)init;
- (void)constructPrivateViewController;
- (void)displayAlertWithTitle:(id)title andMessage:(id)message;
- (void)messageComposeViewController:(id)controller didFinishWithResult:(int64_t)result;
- (void)setInitialState:(id)state withReply:(id)reply;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
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

- (void)viewWillAppear:(BOOL)appear
{
  v9.receiver = self;
  v9.super_class = GKServiceFriendRequestViewController;
  [(GKServiceViewController *)&v9 viewWillAppear:appear];
  navigationBar = [(GKServiceFriendRequestViewController *)self navigationBar];
  [navigationBar setHidden:1];

  mEMORY[0x277D0C868] = [MEMORY[0x277D0C868] sharedPalette];
  viewBackgroundColor = [mEMORY[0x277D0C868] viewBackgroundColor];
  v7 = [viewBackgroundColor colorWithAlphaComponent:0.0];
  view = [(GKServiceFriendRequestViewController *)self view];
  [view setBackgroundColor:v7];
}

- (void)viewDidAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = GKServiceFriendRequestViewController;
  [(GKServiceViewController *)&v8 viewDidAppear:appear];
  reporter = [MEMORY[0x277D0BFA8] reporter];
  [reporter recordPageWithID:@"MessageCompose" pageContext:&stru_28612D290 pageType:@"inviteFriend"];

  view = [(GKServiceFriendRequestViewController *)self view];
  window = [view window];
  _rootSheetPresentationController = [window _rootSheetPresentationController];
  [_rootSheetPresentationController _setShouldScaleDownBehindDescendantSheets:0];
}

- (void)setInitialState:(id)state withReply:(id)reply
{
  replyCopy = reply;
  stateCopy = state;
  v8 = [stateCopy objectForKeyedSubscript:@"GKFriendCodeKey"];
  [(GKServiceFriendRequestViewController *)self setFriendCode:v8];

  v9 = [stateCopy objectForKeyedSubscript:@"GKFriendSupportPageURLKey"];
  [(GKServiceFriendRequestViewController *)self setFriendSupportPageURL:v9];

  v10 = [stateCopy objectForKeyedSubscript:@"GKFriendRecipientsKey"];
  [(GKServiceFriendRequestViewController *)self setRecipients:v10];

  v11 = [stateCopy objectForKeyedSubscript:@"GKChatGUIDKey"];
  [(GKServiceFriendRequestViewController *)self setChatGUID:v11];

  v12 = [stateCopy objectForKeyedSubscript:@"GKHostAppKey"];
  [(GKServiceFriendRequestViewController *)self setHostApp:v12];

  v13.receiver = self;
  v13.super_class = GKServiceFriendRequestViewController;
  [(GKServiceViewController *)&v13 setInitialState:stateCopy withReply:replyCopy];
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
  friendSupportPageURL = [(GKServiceFriendRequestViewController *)self friendSupportPageURL];
  if (friendSupportPageURL)
  {
    friendCode = [(GKServiceFriendRequestViewController *)self friendCode];

    if (friendCode)
    {
      v6 = objc_opt_new();
      friendSupportPageURL2 = [(GKServiceFriendRequestViewController *)self friendSupportPageURL];
      [v6 setFriendSupportPageURL:friendSupportPageURL2];

      friendCode2 = [(GKServiceFriendRequestViewController *)self friendCode];
      [v6 setFriendCode:friendCode2];

      [v6 setFriendRequestState:@"1"];
      local = [MEMORY[0x277D0C138] local];
      [v6 setInitiator:local];

      [v6 setFriendRequestVersion:@"1"];
      friendSupportPageURL = [MEMORY[0x277CBEBC0] _gkGenerateFriendRequestURL:v6];
    }

    else
    {
      friendSupportPageURL = 0;
    }
  }

  v10 = MEMORY[0x277CD68F8];
  v11 = objc_opt_new();
  v12 = [v10 friendInviteMessageWithUrl:friendSupportPageURL session:v11];

  [(GKMessageComposeViewController *)v3 setMessage:v12 withExtensionBundleIdentifier:@"com.apple.gamecenter.GameCenterUIService.GameCenterMessageExtension"];
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  chatGUID = [(GKServiceFriendRequestViewController *)self chatGUID];

  if (chatGUID)
  {
    chatGUID2 = [(GKServiceFriendRequestViewController *)self chatGUID];
    [(GKMessageComposeViewController *)v3 setChatGUID:chatGUID2];
  }

  else
  {
    v26 = v12;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    recipients = [(GKServiceFriendRequestViewController *)self recipients];
    v17 = [recipients countByEnumeratingWithState:&v28 objects:v32 count:16];
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
            objc_enumerationMutation(recipients);
          }

          v21 = *(*(&v28 + 1) + 8 * i);
          suggestedHandle = [v21 suggestedHandle];

          if (suggestedHandle)
          {
            suggestedHandle2 = [v21 suggestedHandle];
            [v13 addObject:suggestedHandle2];
          }

          else
          {
            suggestedHandle2 = [GKUnifiedRecipient recipientForContact:v21];
            handle = [suggestedHandle2 handle];

            if (handle)
            {
              handle2 = [suggestedHandle2 handle];
              [v13 addObject:handle2];
            }
          }
        }

        v18 = [recipients countByEnumeratingWithState:&v28 objects:v32 count:16];
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

- (void)messageComposeViewController:(id)controller didFinishWithResult:(int64_t)result
{
  controllerCopy = controller;
  switch(result)
  {
    case 2:
      reporter = [MEMORY[0x277D0C1F8] reporter];
      [reporter reportEvent:*MEMORY[0x277D0BE88] type:*MEMORY[0x277D0BAA0]];

      reporter2 = [MEMORY[0x277D0BFA8] reporter];
      [reporter2 recordClickWithAction:@"error" targetId:@"error" targetType:@"button" pageId:@"MessageCompose" pageType:@"inviteFriend"];
      goto LABEL_11;
    case 1:
      [(GKServiceFriendRequestViewController *)self setMessageComposeSent:1];
      reporter3 = [MEMORY[0x277D0C1F8] reporter];
      [reporter3 reportEvent:*MEMORY[0x277D0BE88] type:*MEMORY[0x277D0BAB8]];

      reporter4 = [MEMORY[0x277D0BFA8] reporter];
      [reporter4 recordClickWithAction:@"send" targetId:@"send" targetType:@"button" pageId:@"MessageCompose" pageType:@"inviteFriend"];

      reporter2 = [MEMORY[0x277D0BFA8] reporter];
      hostApp = [(GKServiceFriendRequestViewController *)self hostApp];
      [reporter2 recordFriendInviteActivityEventAtStage:1 hostApp:hostApp];
      goto LABEL_9;
    case 0:
      reporter5 = [MEMORY[0x277D0C1F8] reporter];
      [reporter5 reportEvent:*MEMORY[0x277D0BE88] type:*MEMORY[0x277D0BA80]];

      if (![(GKServiceFriendRequestViewController *)self messageComposeSent])
      {
        reporter6 = [MEMORY[0x277D0BFA8] reporter];
        [reporter6 recordClickWithAction:@"cancel" targetId:@"cancel" targetType:@"button" pageId:@"MessageCompose" pageType:@"inviteFriend"];

        reporter2 = [MEMORY[0x277D0C138] local];
        if (([reporter2 isAuthenticated] & 1) == 0)
        {
LABEL_11:

          break;
        }

        friendCode = [(GKServiceFriendRequestViewController *)self friendCode];

        if (friendCode)
        {
          reporter2 = [MEMORY[0x277D0C138] local];
          hostApp = [(GKServiceFriendRequestViewController *)self friendCode];
          v16[0] = MEMORY[0x277D85DD0];
          v16[1] = 3221225472;
          v16[2] = __89__GKServiceFriendRequestViewController_messageComposeViewController_didFinishWithResult___block_invoke;
          v16[3] = &unk_279669D38;
          v16[4] = self;
          [reporter2 cancelFriendRequestWithIdentifier:hostApp handler:v16];
LABEL_9:

          goto LABEL_11;
        }
      }

      break;
  }

  composeController = [(GKServiceFriendRequestViewController *)self composeController];
  [composeController dismissViewControllerAnimated:1 completion:0];

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

- (void)displayAlertWithTitle:(id)title andMessage:(id)message
{
  titleCopy = title;
  messageCopy = message;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__GKServiceFriendRequestViewController_displayAlertWithTitle_andMessage___block_invoke;
  v9[3] = &unk_279669E48;
  v10 = titleCopy;
  v11 = messageCopy;
  v7 = messageCopy;
  v8 = titleCopy;
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