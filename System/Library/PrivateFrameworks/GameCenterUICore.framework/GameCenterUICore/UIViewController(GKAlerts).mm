@interface UIViewController(GKAlerts)
+ (id)_gkKeyWindowRootViewController;
- (id)_gkAlertControllerForBarButtonItem:()GKAlerts;
- (id)_gkPresentAlertForError:()GKAlerts title:defaultMessage:;
- (id)_gkPresentAlertWithTitle:()GKAlerts message:buttonTitle:dismissHandler:presentationCompletionHandler:;
- (id)_gkPresentConfirmationAlertWithTitle:()GKAlerts message:buttonTitle:block:cancelAction:;
@end

@implementation UIViewController(GKAlerts)

+ (id)_gkKeyWindowRootViewController
{
  v0 = [MEMORY[0x277D75128] sharedApplication];
  v1 = [v0 keyWindow];
  v2 = [v1 rootViewController];

  return v2;
}

- (id)_gkPresentAlertWithTitle:()GKAlerts message:buttonTitle:dismissHandler:presentationCompletionHandler:
{
  v12 = a6;
  v13 = MEMORY[0x277D75110];
  v14 = a7;
  v15 = a5;
  v16 = [v13 alertControllerWithTitle:a3 message:a4 preferredStyle:1];
  v17 = MEMORY[0x277D750F8];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __120__UIViewController_GKAlerts___gkPresentAlertWithTitle_message_buttonTitle_dismissHandler_presentationCompletionHandler___block_invoke;
  v21[3] = &unk_27967F710;
  v22 = v12;
  v18 = v12;
  v19 = [v17 actionWithTitle:v15 style:0 handler:v21];

  [v16 addAction:v19];
  [a1 presentViewController:v16 animated:1 completion:v14];

  return v16;
}

- (id)_gkPresentConfirmationAlertWithTitle:()GKAlerts message:buttonTitle:block:cancelAction:
{
  v12 = a6;
  v13 = MEMORY[0x277D75110];
  v14 = a7;
  v15 = a5;
  v16 = [v13 alertControllerWithTitle:a3 message:a4 preferredStyle:1];
  v17 = MEMORY[0x277D750F8];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __106__UIViewController_GKAlerts___gkPresentConfirmationAlertWithTitle_message_buttonTitle_block_cancelAction___block_invoke;
  v21[3] = &unk_27967F710;
  v22 = v12;
  v18 = v12;
  v19 = [v17 actionWithTitle:v15 style:0 handler:v21];

  [v16 addAction:v19];
  [v16 _gkAddCancelButtonWithAction:v14];

  [v16 setPreferredAction:v19];
  [a1 presentViewController:v16 animated:1 completion:0];

  return v16;
}

- (id)_gkPresentAlertForError:()GKAlerts title:defaultMessage:
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [UIViewController(GKAlerts) _gkPresentAlertForError:a2 title:a1 defaultMessage:?];
    if (v10)
    {
      goto LABEL_3;
    }
  }

  [UIViewController(GKAlerts) _gkPresentAlertForError:a2 title:a1 defaultMessage:?];
LABEL_3:
  v12 = [v9 localizedDescription];
  v13 = v12;
  if (v11 | v12)
  {
    v14 = v12;
    if (v13)
    {
      goto LABEL_6;
    }
  }

  else
  {
    [UIViewController(GKAlerts) _gkPresentAlertForError:a2 title:a1 defaultMessage:?];
  }

  v14 = v11;
LABEL_6:
  v15 = v14;
  v16 = [MEMORY[0x277D75110] alertControllerWithTitle:v10 message:v14 preferredStyle:1];
  v17 = MEMORY[0x277D750F8];
  v18 = GKGameCenterUIFrameworkBundle();
  v19 = GKGetLocalizedStringFromTableInBundle();
  v20 = [v17 actionWithTitle:v19 style:0 handler:&__block_literal_global_12];

  [v16 addAction:v20];
  [a1 presentViewController:v16 animated:1 completion:0];

  return v16;
}

- (id)_gkAlertControllerForBarButtonItem:()GKAlerts
{
  v3 = a3;
  v4 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:0 preferredStyle:0];
  v5 = [MEMORY[0x277D75418] currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if (v6 == 1 && (*MEMORY[0x277D0C258] != 1 || (_GKIsRemoteUIUsingPadIdiom & 1) != 0))
  {
    [v4 setModalPresentationStyle:7];
    v7 = [v4 popoverPresentationController];
    [v7 setPermittedArrowDirections:15];
    [v7 setBarButtonItem:v3];
  }

  return v4;
}

- (void)_gkPresentAlertForError:()GKAlerts title:defaultMessage:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"UIViewController+GKAlerts.m" lineNumber:99 description:{@"Invalid parameter not satisfying: %@", @"error != nil"}];
}

- (void)_gkPresentAlertForError:()GKAlerts title:defaultMessage:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"UIViewController+GKAlerts.m" lineNumber:100 description:{@"Invalid parameter not satisfying: %@", @"title != nil"}];
}

- (void)_gkPresentAlertForError:()GKAlerts title:defaultMessage:.cold.3(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"UIViewController+GKAlerts.m" lineNumber:103 description:{@"Invalid parameter not satisfying: %@", @"localizedDescription != nil || defaultMessage != nil"}];
}

@end