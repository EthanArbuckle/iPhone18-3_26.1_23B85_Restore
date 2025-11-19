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
    v15 = [MEMORY[0x277D75418] currentDevice];
    v16 = [v15 userInterfaceIdiom];

    v4 = v31;
    if (v16 != 1 || *v5 == 1 && (*MEMORY[0x277D0C8F0] & 1) == 0)
    {
      v6 = [[GKNavigationController alloc] initWithRootViewController:v31];
      v17 = [(GKNavigationController *)v6 navigationBar];
      v18 = [MEMORY[0x277D0C8C8] sharedTheme];
      [v17 _gkApplyTheme:v18 navbarStyle:1];

      v19 = [MEMORY[0x277D75418] currentDevice];
      v20 = [v19 userInterfaceIdiom];

      if (v20 == 1)
      {
        [(GKNavigationController *)v6 setModalPresentationStyle:16];
        v21 = [MEMORY[0x277D0C8C8] sharedTheme];
        [v21 formSheetSize];
        [(GKNavigationController *)v6 setFormSheetSize:?];
      }

      [a1 setWantsFullScreenLayout:1];
      v22 = [a1 _popoverController];
      v23 = [v22 delegate];
      if (v23)
      {
        v24 = v23;
        v25 = [a1 _popoverController];
        v26 = [v25 delegate];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v28 = [a1 _popoverController];
          v29 = [v28 delegate];

          goto LABEL_18;
        }
      }

      else
      {
      }

      v29 = [a1 navigationController];
LABEL_18:
      [v29 presentViewController:v6 animated:1 completion:&__block_literal_global_145];
      if (objc_opt_respondsToSelector())
      {
        [v29 dismissPopoverAnimated:0];
      }

      else
      {
        v30 = [a1 _popoverController];
        [v30 dismissPopoverAnimated:0];
      }

      goto LABEL_21;
    }
  }

  v6 = [v4 view];
  [(GKNavigationController *)v6 setBackgroundColor:0];
  [(GKNavigationController *)v6 setOpaque:0];
  v7 = [MEMORY[0x277D75418] currentDevice];
  v8 = [v7 userInterfaceIdiom];

  if (v8 == 1)
  {
    v9 = [MEMORY[0x277D759A0] mainScreen];
    [v9 bounds];
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
  v29 = [a1 navigationController];
  [v29 pushViewController:v31 animated:1];
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
  v18[4] = a1;
  v18[5] = v19;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __113__UIViewController_GKChallengeAdditions___gkPresentSendDialogForChallenge_selectPlayers_defaultMessage_complete___block_invoke_2;
  v15[3] = &unk_27966B618;
  v17 = v19;
  v14 = v13;
  v15[4] = a1;
  v16 = v14;
  [GKChallengeComposeController composeAndSendFlowForChallenge:v10 selectPlayers:v11 defaultMessage:v12 forcePicker:0 readyHandler:v18 completionHandler:v15];

  _Block_object_dispose(v19, 8);
}

@end