@interface DSBlockingAlertController
+ (id)_localizedTitleForPeople:(id)a3;
+ (id)alertControllerWithBlockedPeople:(id)a3;
- (id)showSafetyCheckHandler;
@end

@implementation DSBlockingAlertController

+ (id)alertControllerWithBlockedPeople:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v5 = DSLog_6;
    if (!DSLog_6)
    {
      v6 = os_log_create("com.apple.DigitalSeparation", "DSSafetyCheck");
      v7 = DSLog_6;
      DSLog_6 = v6;

      v5 = DSLog_6;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v20 = 138412290;
      v21 = v4;
      _os_log_impl(&dword_248C7E000, v5, OS_LOG_TYPE_INFO, "[DSBlockingAlertController] creating alert for %@", &v20, 0xCu);
    }

    v8 = [a1 _localizedTitleForPeople:v4];
    v9 = [a1 _localizedMessage];
    v10 = [a1 alertControllerWithTitle:v8 message:v9 preferredStyle:0];

    v11 = MEMORY[0x277D750F8];
    v12 = [a1 localizedShowSafetyCheckButtonTitle];
    v13 = [v10 showSafetyCheckHandler];
    v14 = [v11 actionWithTitle:v12 style:0 handler:v13];

    [v10 addAction:v14];
    [v10 setPreferredAction:v14];
    v15 = MEMORY[0x277D750F8];
    v16 = [a1 localizedCancelButtonTitle];
    v17 = [v15 actionWithTitle:v16 style:1 handler:&__block_literal_global_13];

    [v10 addAction:v17];
  }

  else
  {
    v10 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)_localizedTitleForPeople:(id)a3
{
  v3 = a3;
  v4 = [v3 valueForKey:@"displayName"];
  v5 = [v3 count];

  if (v5 == 1)
  {
    [v4 firstObject];
  }

  else
  {
    [MEMORY[0x277CCAAF0] localizedStringByJoiningStrings:v4];
  }
  v6 = ;
  v7 = MEMORY[0x277CCACA8];
  v8 = DSUILocStringForKey(@"SCWB_ALERT_TITLE");
  v9 = [v7 stringWithFormat:v8, v6];

  return v9;
}

- (id)showSafetyCheckHandler
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__DSBlockingAlertController_showSafetyCheckHandler__block_invoke;
  aBlock[3] = &unk_278F750A0;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);

  return v2;
}

void __51__DSBlockingAlertController_showSafetyCheckHandler__block_invoke(uint64_t a1)
{
  v2 = DSLog_6;
  if (os_log_type_enabled(DSLog_6, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_248C7E000, v2, OS_LOG_TYPE_INFO, "[DSBlockingAlertController] presenting safety check", v5, 2u);
  }

  v3 = [*(a1 + 32) alertPresentingViewController];
  v4 = [*(a1 + 32) safetyCheckController];
  [DSSafetyCheck authForSafetyCheckWithPresentingViewController:v3 safetyCheckController:v4];
}

id __46__DSBlockingAlertController_viewDidDisappear___block_invoke()
{
  v6[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"entrypoint";
  v0 = [MEMORY[0x277CCAC38] processInfo];
  v1 = [v0 processName];
  v5[1] = @"presentedViewController";
  v6[0] = v1;
  v6[1] = MEMORY[0x277CBEC28];
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end