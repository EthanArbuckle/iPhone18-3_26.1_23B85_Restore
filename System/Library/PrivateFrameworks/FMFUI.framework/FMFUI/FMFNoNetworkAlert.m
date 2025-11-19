@interface FMFNoNetworkAlert
+ (BOOL)isAirplaneModeEnabled;
+ (BOOL)isGlobalCellularEnabled;
+ (id)alertInfoForInternetUnavailableReason:(unint64_t)a3;
+ (id)newAlertController;
+ (unint64_t)reasonForNoInternet;
@end

@implementation FMFNoNetworkAlert

+ (id)newAlertController
{
  v2 = [objc_opt_class() reasonForNoInternet];
  v3 = [objc_opt_class() alertInfoForInternetUnavailableReason:v2];
  v4 = v3;
  if (v3)
  {
    v5 = MEMORY[0x277D75110];
    v6 = [v3 title];
    v7 = [v4 message];
    v8 = [v5 alertControllerWithTitle:v6 message:v7 preferredStyle:1];

    v9 = [v4 actionURL];

    if (v9)
    {
      v10 = MEMORY[0x277D750F8];
      v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v12 = [v11 localizedStringForKey:@"ALERT_NO_NETWORK_ACTION_BUTTON_SETTINGS" value:&stru_285D99658 table:@"LocalizableUI"];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __39__FMFNoNetworkAlert_newAlertController__block_invoke;
      v19[3] = &unk_278FE2968;
      v20 = v4;
      v13 = [v10 actionWithTitle:v12 style:0 handler:v19];

      [v8 addAction:v13];
    }

    v14 = MEMORY[0x277D750F8];
    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"OK_BUTTON" value:&stru_285D99658 table:@"LocalizableUI"];
    v17 = [v14 actionWithTitle:v16 style:0 handler:&__block_literal_global];

    [v8 addAction:v17];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __39__FMFNoNetworkAlert_newAlertController__block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v2 = [*(a1 + 32) actionURL];
  [v3 openSensitiveURL:v2 withOptions:0];
}

+ (unint64_t)reasonForNoInternet
{
  if ([a1 isAirplaneModeEnabled])
  {
    return 1;
  }

  if (([a1 isGlobalCellularEnabled] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F9B0], "deviceSupportsCellularData") & 1) == 0)
  {
    return 3;
  }

  return 2;
}

+ (id)alertInfoForInternetUnavailableReason:(unint64_t)a3
{
  v4 = objc_opt_new();
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v16 = [v15 localizedStringForKey:@"ALERT_NO_NETWORK_TITLE_CELLULAR_DISABLED" value:&stru_285D99658 table:@"LocalizableUI"];
      v17 = [v16 fm_wifiToWLAN];
      [v4 setTitle:v17];

      v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v19 = [v18 localizedStringForKey:@"ALERT_NO_NETWORK_MESSAGE_CELLULAR_DISABLED" value:&stru_285D99658 table:@"LocalizableUI"];
      v20 = [v19 fm_wifiToWLAN];
      [v4 setMessage:v20];

      v8 = MEMORY[0x277CBEBC0];
      v9 = @"prefs:root=MOBILE_DATA_SETTINGS_ID";
      goto LABEL_12;
    }

    if (a3 == 3)
    {
      v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v11 = [v10 localizedStringForKey:@"ALERT_NO_NETWORK_TITLE_NO_INTERNET" value:&stru_285D99658 table:@"LocalizableUI"];
      v12 = [v11 fm_wifiToWLAN];
      [v4 setTitle:v12];

LABEL_13:
    }

LABEL_14:
    v14 = v4;
    goto LABEL_15;
  }

  if (a3)
  {
    if (a3 == 1)
    {
      v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v6 = [v5 localizedStringForKey:@"ALERT_NO_NETWORK_TITLE_AIRPLANE_MODE" value:&stru_285D99658 table:@"LocalizableUI"];
      v7 = [v6 fm_wifiToWLAN];
      [v4 setTitle:v7];

      v8 = MEMORY[0x277CBEBC0];
      v9 = @"prefs:root=ROOT#AIRPLANE_MODE";
LABEL_12:
      v10 = [v8 URLWithString:v9];
      [v4 setActionURL:v10];
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v13 = LogCategory_Daemon();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [FMFNoNetworkAlert alertInfoForInternetUnavailableReason:v13];
  }

  v14 = 0;
LABEL_15:

  return v14;
}

+ (BOOL)isGlobalCellularEnabled
{
  v2 = *MEMORY[0x277CBECE8];
  v3 = _CTServerConnectionCreateOnTargetQueue();
  if (v3)
  {
    _CTServerConnectionCopyCellularUsagePolicy();
    CFRelease(v3);
    LOBYTE(v3) = 0;
  }

  v4 = [MEMORY[0x277D3F9B0] isEnabled];
  if (v4)
  {
    LOBYTE(v4) = [MEMORY[0x277D3F9B0] deviceSupportsCellularData];
  }

  return v3 & v4;
}

+ (BOOL)isAirplaneModeEnabled
{
  v2 = objc_alloc_init(MEMORY[0x277CEC5D0]);
  [v2 refresh];
  v3 = [v2 airplaneMode];

  return v3;
}

@end