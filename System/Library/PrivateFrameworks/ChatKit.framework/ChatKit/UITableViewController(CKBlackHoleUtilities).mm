@interface UITableViewController(CKBlackHoleUtilities)
- (void)_confirmDeleteConversationFromView:()CKBlackHoleUtilities alertTitle:forMultipleConversations:withReportSpamHander:withNotReportSpamHandler:withCancelHandler:;
@end

@implementation UITableViewController(CKBlackHoleUtilities)

- (void)_confirmDeleteConversationFromView:()CKBlackHoleUtilities alertTitle:forMultipleConversations:withReportSpamHander:withNotReportSpamHandler:withCancelHandler:
{
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = [CKAlertController alertControllerWithTitle:v15 message:0 preferredStyle:0];
  v31 = a1;
  objc_initWeak(location, a1);
  v20 = CKFrameworkBundle();
  if (a5)
  {
    [v20 localizedStringForKey:@"CLEAR_ALL" value:&stru_1F04268F8 table:@"ChatKit"];
  }

  else
  {
    [v20 localizedStringForKey:@"DELETE" value:&stru_1F04268F8 table:@"ChatKit"];
  }
  v21 = ;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __182__UITableViewController_CKBlackHoleUtilities___confirmDeleteConversationFromView_alertTitle_forMultipleConversations_withReportSpamHander_withNotReportSpamHandler_withCancelHandler___block_invoke;
  v34[3] = &unk_1E72EC240;
  v40 = a5;
  v22 = v16;
  v37 = v22;
  v23 = v17;
  v38 = v23;
  v24 = v19;
  v35 = v24;
  v25 = v14;
  v36 = v25;
  objc_copyWeak(&v39, location);
  v26 = [CKAlertAction actionWithTitle:v21 style:2 handler:v34];
  [v24 addAction:v26];

  v27 = CKFrameworkBundle();
  v28 = [v27 localizedStringForKey:@"CANCEL" value:&stru_1F04268F8 table:@"ChatKit"];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __182__UITableViewController_CKBlackHoleUtilities___confirmDeleteConversationFromView_alertTitle_forMultipleConversations_withReportSpamHander_withNotReportSpamHandler_withCancelHandler___block_invoke_4;
  v32[3] = &unk_1E72EC218;
  v29 = v18;
  v33 = v29;
  v30 = [CKAlertAction actionWithTitle:v28 style:1 handler:v32];
  [v24 addAction:v30];

  [v31 presentViewController:v24 animated:1 completion:0];
  objc_destroyWeak(&v39);

  objc_destroyWeak(location);
}

@end