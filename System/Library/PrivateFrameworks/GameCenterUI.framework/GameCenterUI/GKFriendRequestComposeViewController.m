@interface GKFriendRequestComposeViewController
- (GKFriendRequestComposeViewController)init;
- (id)composeViewDelegate;
- (unint64_t)supportedInterfaceOrientations;
- (void)_setupChildViewController;
- (void)prepareForNewRecipients:(id)a3;
- (void)sendFinishedMessageToDelegateCancelled:(BOOL)a3;
- (void)setMessage:(NSString *)message;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation GKFriendRequestComposeViewController

- (GKFriendRequestComposeViewController)init
{
  v5.receiver = self;
  v5.super_class = GKFriendRequestComposeViewController;
  v2 = [(GKFriendRequestComposeViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(GKFriendRequestComposeViewController *)v2 _setupChildViewController];
  }

  return v3;
}

- (void)viewWillAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = GKFriendRequestComposeViewController;
  [(GKFriendRequestComposeViewController *)&v3 viewWillAppear:a3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = GKFriendRequestComposeViewController;
  [(GKFriendRequestComposeViewController *)&v6 viewDidAppear:a3];
  v4 = [(GKFriendRequestComposeViewController *)self alertController];

  if (v4)
  {
    v5 = [(GKFriendRequestComposeViewController *)self alertController];
    [(GKFriendRequestComposeViewController *)self presentViewController:v5 animated:1 completion:&__block_literal_global_14];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = GKFriendRequestComposeViewController;
  [(GKFriendRequestComposeViewController *)&v4 viewDidDisappear:a3];
  [(GKFriendRequestComposeViewController *)self setViewControllers:MEMORY[0x277CBEBF8]];
}

- (void)_setupChildViewController
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __65__GKFriendRequestComposeViewController__setupChildViewController__block_invoke;
  v4[3] = &unk_2796699A8;
  v4[4] = self;
  v3 = [(GKFriendRequestComposeViewController *)self _gkInGameUIUnavailableAlertWithRestrictionMode:1 dismissHandler:v4];
  [(GKFriendRequestComposeViewController *)self setAlertController:v3];
}

uint64_t __65__GKFriendRequestComposeViewController__setupChildViewController__block_invoke(uint64_t a1)
{
  [*(a1 + 32) dismissViewControllerAnimated:1 completion:0];
  [*(a1 + 32) sendFinishedMessageToDelegateCancelled:1];
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CBEBF8];

  return [v2 setViewControllers:v3];
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 != 1 || (result = 30, *MEMORY[0x277D0C258] == 1) && (*MEMORY[0x277D0C8F0] & 1) == 0)
  {
    v5 = [MEMORY[0x277D75418] currentDevice];
    v6 = [v5 userInterfaceIdiom];

    if (v6 || (([MEMORY[0x277D759A0] mainScreen], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "bounds"), v9 = v8, v11 = v10, v7, v9 >= 414.0) ? (v12 = v11 < 736.0) : (v12 = 1), v12 && (v9 < 736.0 || v11 < 414.0)))
    {
      if ([MEMORY[0x277D0C048] isGameCenter])
      {
        return 2;
      }

      else
      {
        return 30;
      }
    }

    else
    {
      return 30;
    }
  }

  return result;
}

- (void)setMessage:(NSString *)message
{
  v6 = message;
  if (![(NSString *)self->_message isEqualToString:?])
  {
    v4 = [(NSString *)v6 copy];
    v5 = self->_message;
    self->_message = v4;
  }
}

- (void)prepareForNewRecipients:(id)a3
{
  v9 = a3;
  if (self->_recipientCount + [v9 count] >= 4)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"can't add more than %d recipients", 3];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/API/GKFriendRequestComposeViewController.m"];
    v7 = [v6 lastPathComponent];
    v8 = [v4 stringWithFormat:@"%@ ([additionalRecipients count] + _recipientCount <= MAX_RECIPIENTS)\n[%s (%s:%d)]", v5, "-[GKFriendRequestComposeViewController prepareForNewRecipients:]", objc_msgSend(v7, "UTF8String"), 154];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v8}];
  }

  self->_recipientCount += [v9 count];
}

- (void)sendFinishedMessageToDelegateCancelled:(BOOL)a3
{
  v3 = a3;
  v5 = [(GKFriendRequestComposeViewController *)self composeViewDelegate];
  if (!*MEMORY[0x277D0C2A0])
  {
    v6 = GKOSLoggers();
  }

  v7 = *MEMORY[0x277D0C2A8];
  if (os_log_type_enabled(*MEMORY[0x277D0C2A8], OS_LOG_TYPE_DEBUG))
  {
    [(GKFriendRequestComposeViewController *)v3 sendFinishedMessageToDelegateCancelled:v7];
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else if (!v3)
  {
    goto LABEL_8;
  }

  if (objc_opt_respondsToSelector())
  {
    [v5 friendRequestComposeViewControllerWasCancelled:self];
    goto LABEL_10;
  }

LABEL_8:
  if (objc_opt_respondsToSelector())
  {
    [v5 friendRequestComposeViewControllerDidFinish:self];
  }

LABEL_10:
}

- (id)composeViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_composeViewDelegate);

  return WeakRetained;
}

- (void)sendFinishedMessageToDelegateCancelled:(char)a1 .cold.1(char a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = @"NO";
  if (a1)
  {
    v2 = @"YES";
  }

  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_24DE53000, a2, OS_LOG_TYPE_DEBUG, "SEND FINISHED MESSAGE TO DELEGATE (canceled:%@)", &v3, 0xCu);
}

@end