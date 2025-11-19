@interface UITableViewController
@end

@implementation UITableViewController

void __182__UITableViewController_CKBlackHoleUtilities___confirmDeleteConversationFromView_alertTitle_forMultipleConversations_withReportSpamHander_withNotReportSpamHandler_withCancelHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = CKFrameworkBundle();
  v4 = v3;
  if (v2)
  {
    v5 = @"REPORT_MULTIPLE_CONVERSATIONS_SPAM_ALERT_TITLE";
  }

  else
  {
    v5 = @"REPORT_CONVERSATION_SPAM_ALERT_TITLE";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_1F04268F8 table:@"ChatKit"];
  v7 = [CKAlertController alertControllerWithTitle:0 message:v6 preferredStyle:1];

  v8 = CKFrameworkBundle();
  v9 = [v8 localizedStringForKey:@"REPORT_SPAM_BUTTON_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __182__UITableViewController_CKBlackHoleUtilities___confirmDeleteConversationFromView_alertTitle_forMultipleConversations_withReportSpamHander_withNotReportSpamHandler_withCancelHandler___block_invoke_2;
  v22[3] = &unk_1E72EC218;
  v23 = *(a1 + 48);
  v10 = [CKAlertAction actionWithTitle:v9 style:0 handler:v22];
  [v7 addAction:v10];

  v11 = CKFrameworkBundle();
  v12 = [v11 localizedStringForKey:@"DONT_REPORT_SPAM_BUTTON_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __182__UITableViewController_CKBlackHoleUtilities___confirmDeleteConversationFromView_alertTitle_forMultipleConversations_withReportSpamHander_withNotReportSpamHandler_withCancelHandler___block_invoke_3;
  v20 = &unk_1E72EC218;
  v21 = *(a1 + 56);
  v13 = [CKAlertAction actionWithTitle:v12 style:1 handler:&v17];
  [v7 addAction:{v13, v17, v18, v19, v20}];

  v14 = [*(a1 + 32) popoverPresentationController];
  [v14 setSourceView:*(a1 + 40)];

  v15 = [*(a1 + 32) popoverPresentationController];
  [*(a1 + 40) frame];
  [v15 setSourceRect:?];

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [v7 presentFromViewController:WeakRetained animated:1 completion:0];
}

uint64_t __182__UITableViewController_CKBlackHoleUtilities___confirmDeleteConversationFromView_alertTitle_forMultipleConversations_withReportSpamHander_withNotReportSpamHandler_withCancelHandler___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end