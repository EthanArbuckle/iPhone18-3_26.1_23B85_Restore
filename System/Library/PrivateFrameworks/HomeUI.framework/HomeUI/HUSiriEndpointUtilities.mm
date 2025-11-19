@interface HUSiriEndpointUtilities
+ (id)presentShareSiriAndDictationAlert:(id)a3 alertTitle:(id)a4 alertMessage:(id)a5;
+ (id)presentShareSiriAndDictationAlertForMultipleAccessories:(id)a3;
+ (id)presentShareSiriAndDictationAlertForSingleAccessory:(id)a3 accessoryName:(id)a4;
@end

@implementation HUSiriEndpointUtilities

+ (id)presentShareSiriAndDictationAlertForMultipleAccessories:(id)a3
{
  v3 = a3;
  v4 = _HULocalizedStringWithDefaultValue(@"HUSiriEndpointSetup_ShareSiriDictation_AlertTitle_Multiple", @"HUSiriEndpointSetup_ShareSiriDictation_AlertTitle_Multiple", 1);
  v5 = _HULocalizedStringWithDefaultValue(@"HUSiriEndpointSetup_ShareSiriDictation_AlertMessage_Multiple", @"HUSiriEndpointSetup_ShareSiriDictation_AlertMessage_Multiple", 1);
  v6 = [HUSiriEndpointUtilities presentShareSiriAndDictationAlert:v3 alertTitle:v4 alertMessage:v5];

  return v6;
}

+ (id)presentShareSiriAndDictationAlertForSingleAccessory:(id)a3 accessoryName:(id)a4
{
  v5 = a3;
  v12 = HULocalizedStringWithFormat(@"HUSiriEndpointSetup_ShareSiriDictation_AlertTitle_Single", @"%@", v6, v7, v8, v9, v10, v11, a4);
  v13 = _HULocalizedStringWithDefaultValue(@"HUSiriEndpointSetup_ShareSiriDictation_AlertMessage_Single", @"HUSiriEndpointSetup_ShareSiriDictation_AlertMessage_Single", 1);
  v14 = [HUSiriEndpointUtilities presentShareSiriAndDictationAlert:v5 alertTitle:v12 alertMessage:v13];

  return v14;
}

+ (id)presentShareSiriAndDictationAlert:(id)a3 alertTitle:(id)a4 alertMessage:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    NSLog(&cfstr_NoVcFoundCanno.isa);
  }

  v11 = MEMORY[0x277D2C900];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __85__HUSiriEndpointUtilities_presentShareSiriAndDictationAlert_alertTitle_alertMessage___block_invoke;
  v17[3] = &unk_277DC0468;
  v18 = v9;
  v19 = v10;
  v20 = v8;
  v21 = a2;
  v12 = v8;
  v13 = v10;
  v14 = v9;
  v15 = [v11 futureWithBlock:v17];

  return v15;
}

void __85__HUSiriEndpointUtilities_presentShareSiriAndDictationAlert_alertTitle_alertMessage___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 56));
    *buf = 138412290;
    v19 = v5;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "%@ Showing Share Siri & Dictation alert", buf, 0xCu);
  }

  v6 = _HULocalizedStringWithDefaultValue(@"HUAlertDismiss", @"HUAlertDismiss", 1);
  v7 = [MEMORY[0x277D75110] alertControllerWithTitle:*(a1 + 32) message:*(a1 + 40) preferredStyle:1];
  v8 = MEMORY[0x277D750F8];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __85__HUSiriEndpointUtilities_presentShareSiriAndDictationAlert_alertTitle_alertMessage___block_invoke_22;
  v15 = &unk_277DC0C80;
  v9 = *(a1 + 56);
  v16 = v3;
  v17 = v9;
  v10 = v3;
  v11 = [v8 actionWithTitle:v6 style:0 handler:&v12];
  [v7 addAction:{v11, v12, v13, v14, v15}];

  [*(a1 + 48) presentViewController:v7 animated:1 completion:0];
}

uint64_t __85__HUSiriEndpointUtilities_presentShareSiriAndDictationAlert_alertTitle_alertMessage___block_invoke_22(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_DEFAULT, "%@ Dismissing Share Siri & Dictation alert.", &v5, 0xCu);
  }

  return [*(a1 + 32) finishWithNoResult];
}

@end