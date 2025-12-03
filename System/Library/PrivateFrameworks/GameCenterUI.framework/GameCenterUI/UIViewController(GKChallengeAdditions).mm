@interface UIViewController(GKChallengeAdditions)
- (void)_gkPresentChallengeVC:()GKChallengeAdditions;
- (void)_gkPresentSendDialogForChallenge:()GKChallengeAdditions selectPlayers:defaultMessage:complete:;
@end

@implementation UIViewController(GKChallengeAdditions)

- (void)_gkPresentChallengeVC:()GKChallengeAdditions
{
  v4 = a3;
  v5 = MEMORY[0x277D0C258];
  v31 = v4;
  if ((*MEMORY[0x277D0C258] & 1) == 0)
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    v4 = v31;
    if (userInterfaceIdiom != 1 || *v5 == 1 && (*MEMORY[0x277D0C8F0] & 1) == 0)
    {
      view = [[GKNavigationController alloc] initWithRootViewController:v31];
      navigationBar = [(GKNavigationController *)view navigationBar];
      mEMORY[0x277D0C8C8] = [MEMORY[0x277D0C8C8] sharedTheme];
      [navigationBar _gkApplyTheme:mEMORY[0x277D0C8C8] navbarStyle:1];

      currentDevice2 = [MEMORY[0x277D75418] currentDevice];
      userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

      if (userInterfaceIdiom2 == 1)
      {
        [(GKNavigationController *)view setModalPresentationStyle:16];
        mEMORY[0x277D0C8C8]2 = [MEMORY[0x277D0C8C8] sharedTheme];
        [mEMORY[0x277D0C8C8]2 formSheetSize];
        [(GKNavigationController *)view setFormSheetSize:?];
      }

      [self setWantsFullScreenLayout:1];
      _popoverController = [self _popoverController];
      delegate = [_popoverController delegate];
      if (delegate)
      {
        v24 = delegate;
        _popoverController2 = [self _popoverController];
        delegate2 = [_popoverController2 delegate];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          _popoverController3 = [self _popoverController];
          delegate3 = [_popoverController3 delegate];

          goto LABEL_18;
        }
      }

      else
      {
      }

      delegate3 = [self navigationController];
LABEL_18:
      [delegate3 presentViewController:view animated:1 completion:&__block_literal_global_145];
      if (objc_opt_respondsToSelector())
      {
        [delegate3 dismissPopoverAnimated:0];
      }

      else
      {
        _popoverController4 = [self _popoverController];
        [_popoverController4 dismissPopoverAnimated:0];
      }

      goto LABEL_21;
    }
  }

  view = [v4 view];
  [(GKNavigationController *)view setBackgroundColor:0];
  [(GKNavigationController *)view setOpaque:0];
  currentDevice3 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom3 = [currentDevice3 userInterfaceIdiom];

  if (userInterfaceIdiom3 == 1)
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
    v11 = v10;
    v13 = v12;

    v14 = 320.0;
    if (fmax(v11, v13) > 1024.0)
    {
      v14 = 375.0;
    }
  }

  else
  {
    v14 = 320.0;
  }

  [v31 setPreferredContentSize:{v14, 440.0}];
  delegate3 = [self navigationController];
  [delegate3 pushViewController:v31 animated:1];
LABEL_21:
}

- (void)_gkPresentSendDialogForChallenge:()GKChallengeAdditions selectPlayers:defaultMessage:complete:
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy__3;
  v19[4] = __Block_byref_object_dispose__3;
  v20 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __113__UIViewController_GKChallengeAdditions___gkPresentSendDialogForChallenge_selectPlayers_defaultMessage_complete___block_invoke;
  v18[3] = &unk_27966B5F0;
  v18[4] = self;
  v18[5] = v19;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __113__UIViewController_GKChallengeAdditions___gkPresentSendDialogForChallenge_selectPlayers_defaultMessage_complete___block_invoke_2;
  v15[3] = &unk_27966B618;
  v17 = v19;
  v14 = v13;
  v15[4] = self;
  v16 = v14;
  [GKChallengeComposeController composeAndSendFlowForChallenge:v10 selectPlayers:v11 defaultMessage:v12 forcePicker:0 readyHandler:v18 completionHandler:v15];

  _Block_object_dispose(v19, 8);
}

@end