@interface DSReviewAccessController
- (DSNavigationDelegate)delegate;
- (DSReviewAccessController)init;
- (id)_descriptionTextForDeviceNameList:(id)a3 format:(id)a4;
- (void)cancelReset;
- (void)goToSafetyCheck;
- (void)presentErrorAlert:(id)a3;
- (void)presentMoreOptions;
- (void)resetAllDeviceAccess;
- (void)viewDidLoad;
@end

@implementation DSReviewAccessController

- (DSReviewAccessController)init
{
  v3 = MEMORY[0x277D755D0];
  v4 = [MEMORY[0x277D75348] systemBlueColor];
  v5 = [v3 configurationWithHierarchicalColor:v4];

  if (+[DSFeatureFlags isNaturalUIEnabled])
  {
    [MEMORY[0x277D755B8] systemImageNamed:@"person.crop.circle.badge.exclamationmark"];
  }

  else
  {
    [MEMORY[0x277D755B8] systemImageNamed:@"person.crop.circle.badge.exclamationmark" withConfiguration:v5];
  }
  v6 = ;
  v7 = DSUILocStringForKey(@"REVIEW_ACCESS");
  v8 = DSUILocStringForKey(@"REVIEW_ACCESS_DETAIL");
  v14.receiver = self;
  v14.super_class = DSReviewAccessController;
  v9 = [(DSReviewAccessController *)&v14 initWithTitle:v7 detailText:v8 icon:v6];

  if (v9)
  {
    v10 = os_log_create("com.apple.DigitalSeparation", "DSReviewAccessController");
    v11 = DSLog_13;
    DSLog_13 = v10;

    v12 = +[DSAlternateDeviceAccessManager sharedManager];
    [(DSReviewAccessController *)v9 setAccessManager:v12];
  }

  return v9;
}

- (void)viewDidLoad
{
  v31.receiver = self;
  v31.super_class = DSReviewAccessController;
  [(DSOBWelcomeController *)&v31 viewDidLoad];
  v3 = DSUILocStringForKey(@"RESET_ALL");
  v4 = [DSUIUtilities setUpBoldButtonForController:self title:v3 target:self selector:sel_resetAllDeviceAccess];

  v5 = DSUILocStringForKey(@"MORE_OPTIONS");
  v6 = [DSUIUtilities setUpLinkButtonForController:self title:v5 target:self selector:sel_presentMoreOptions];

  v7 = [(DSReviewAccessController *)self accessManager];
  v8 = [v7 mirroringDevices];

  if ([v8 count])
  {
    v9 = DSUILocStringForKey(@"REVIEW_ACCESS_BULLET_MIRRORING_DETAIL");
    v10 = [(DSReviewAccessController *)self _descriptionTextForDeviceNameList:v8 format:v9];

    v11 = DSUILocStringForKey(@"REVIEW_ACCESS_BULLET_MIRRORING");
    v12 = [MEMORY[0x277D755B8] systemImageNamed:@"macbook.and.iphone"];
    [(DSReviewAccessController *)self addBulletedListItemWithTitle:v11 description:v10 image:v12];
  }

  v13 = [(DSReviewAccessController *)self accessManager];
  v14 = [v13 syncingDevices];

  if ([v14 count])
  {
    v15 = DSUILocStringForKey(@"REVIEW_ACCESS_BULLET_PAIRING_DETAIL");
    v16 = [(DSReviewAccessController *)self _descriptionTextForDeviceNameList:v14 format:v15];

    v17 = DSUILocStringForKey(@"REVIEW_ACCESS_BULLET_PAIRING");
    v18 = [MEMORY[0x277D755B8] systemImageNamed:@"arrow.triangle.2.circlepath"];
    [(DSReviewAccessController *)self addBulletedListItemWithTitle:v17 description:v16 image:v18];
  }

  v19 = [(DSReviewAccessController *)self accessManager];
  v20 = [v19 hasAlternateFaceID];

  if (v20)
  {
    v21 = @"faceid";
    v22 = @"REVIEW_ACCESS_BULLET_ALT_FACEID_DETAIL";
LABEL_9:
    v25 = DSUILocStringForKey(@"REVIEW_ACCESS_BULLET_ALT_BIO");
    v26 = DSUILocStringForKey(v22);
    v27 = [MEMORY[0x277D755B8] systemImageNamed:v21];
    [(DSReviewAccessController *)self addBulletedListItemWithTitle:v25 description:v26 image:v27];

    goto LABEL_10;
  }

  v23 = [(DSReviewAccessController *)self accessManager];
  v24 = [v23 hasAlternateTouchID];

  if (v24)
  {
    v21 = @"touchid";
    v22 = @"REVIEW_ACCESS_BULLET_ALT_TOUCHID_DETAIL";
    goto LABEL_9;
  }

LABEL_10:
  v28 = DSUILocStringForKey(@"REVIEW_ACCESS_BULLET_PASSCODE");
  v29 = DSUILocStringForKey(@"REVIEW_ACCESS_BULLET_PASSCODE_DETAIL");
  v30 = [MEMORY[0x277D755B8] _systemImageNamed:@"dots.below.lock"];
  [(DSReviewAccessController *)self addBulletedListItemWithTitle:v28 description:v29 image:v30];
}

- (id)_descriptionTextForDeviceNameList:(id)a3 format:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 count] - 1;
  v8 = MEMORY[0x277CCACA8];
  v9 = DSLocStringForKey();
  v10 = [v6 firstObject];

  v11 = [v8 localizedStringWithFormat:v9, v10, v7];

  v12 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v5, v11];

  return v12;
}

- (void)resetAllDeviceAccess
{
  v3 = [(DSReviewAccessController *)self buttonTray];
  [v3 showButtonsBusy];

  v4 = DSLog_13;
  if (os_log_type_enabled(DSLog_13, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_248C7E000, v4, OS_LOG_TYPE_INFO, "Resetting all alternative device access methods", buf, 2u);
  }

  v5 = [(DSReviewAccessController *)self accessManager];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__DSReviewAccessController_resetAllDeviceAccess__block_invoke;
  v6[3] = &unk_278F759C0;
  v6[4] = self;
  [v5 resetAllAccessMethodsWithCompletion:v6];
}

void __48__DSReviewAccessController_resetAllDeviceAccess__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__DSReviewAccessController_resetAllDeviceAccess__block_invoke_2;
  v5[3] = &unk_278F75650;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

void __48__DSReviewAccessController_resetAllDeviceAccess__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) buttonTray];
  [v2 showButtonsAvailable];

  if (*(a1 + 40))
  {
    v3 = *(a1 + 32);

    [v3 presentErrorAlert:?];
  }

  else
  {
    v4 = DSLog_13;
    if (os_log_type_enabled(DSLog_13, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_248C7E000, v4, OS_LOG_TYPE_INFO, "Successfully reset alternative device access methods", v7, 2u);
    }

    v5 = [*(a1 + 32) delegate];
    v6 = *(a1 + 32);
    [v5 pushPaneAfterPaneType:objc_opt_class()];
  }
}

- (void)presentErrorAlert:(id)a3
{
  v4 = a3;
  v5 = DSLog_13;
  if (os_log_type_enabled(DSLog_13, OS_LOG_TYPE_ERROR))
  {
    [(DSReviewAccessController *)v4 presentErrorAlert:v5];
  }

  v6 = [(DSReviewAccessController *)self delegate];
  [v6 pushPaneAfterPaneType:objc_opt_class()];
}

- (void)presentMoreOptions
{
  v3 = MEMORY[0x277D75110];
  v4 = DSUILocStringForKey(@"MORE_OPTIONS_ALERT");
  v5 = [v3 alertControllerWithTitle:0 message:v4 preferredStyle:0];

  v6 = MEMORY[0x277D750F8];
  v7 = DSUILocStringForKey(@"GO_TO_SAFETY_CHECK");
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __46__DSReviewAccessController_presentMoreOptions__block_invoke;
  v16[3] = &unk_278F750A0;
  v16[4] = self;
  v8 = [v6 actionWithTitle:v7 style:0 handler:v16];

  v9 = MEMORY[0x277D750F8];
  v10 = DSUILocStringForKey(@"CANCEL_RESET_ACCESS");
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __46__DSReviewAccessController_presentMoreOptions__block_invoke_2;
  v15[3] = &unk_278F750A0;
  v15[4] = self;
  v11 = [v9 actionWithTitle:v10 style:0 handler:v15];

  v12 = MEMORY[0x277D750F8];
  v13 = DSUILocStringForKey(@"CANCEL");
  v14 = [v12 actionWithTitle:v13 style:1 handler:&__block_literal_global_16];

  [v5 addAction:v8];
  [v5 addAction:v11];
  [v5 addAction:v14];
  [(DSReviewAccessController *)self presentViewController:v5 animated:1 completion:0];
}

- (void)goToSafetyCheck
{
  v3 = [(DSReviewAccessController *)self accessManager];
  [v3 sendSummaryAnalyticsWithReviewAction:1 resetAction:0 exit:1];

  v4 = [(DSReviewAccessController *)self delegate];
  [v4 goToCustomizeSharing];
}

- (void)cancelReset
{
  v3 = [(DSReviewAccessController *)self accessManager];
  [v3 sendSummaryAnalyticsWithReviewAction:1 resetAction:0 exit:0];

  v4 = [(DSReviewAccessController *)self presentingViewController];
  [v4 dismissViewControllerAnimated:1 completion:0];
}

- (DSNavigationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)presentErrorAlert:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_248C7E000, a2, OS_LOG_TYPE_ERROR, "Error resetting device access methods: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end