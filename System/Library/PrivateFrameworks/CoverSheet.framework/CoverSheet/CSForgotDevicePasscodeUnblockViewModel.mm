@interface CSForgotDevicePasscodeUnblockViewModel
- (id)bodyTextForTimeout:(id)a3;
- (id)primaryButtonText;
- (id)secondaryButtonText;
- (void)cancelButtonAction;
- (void)primaryButtonAction;
- (void)secondaryButtonAction;
@end

@implementation CSForgotDevicePasscodeUnblockViewModel

- (id)bodyTextForTimeout:(id)a3
{
  v4 = a3;
  v5 = [(CSDeviceUnblockViewModel *)self unblockPolicy];
  v6 = [v5 canUnblockDevice];

  if ((v6 & 1) == 0)
  {
    v23 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"No unlock methods found" userInfo:0];
    objc_exception_throw(v23);
  }

  v7 = [MEMORY[0x277D262A0] sharedConnection];
  v8 = [v7 passcodeCreationDate];

  v9 = [MEMORY[0x277CBEA80] currentCalendar];
  v10 = [v9 isDateInToday:v8];

  if (v10)
  {
    v11 = @"DASHBOARD_BLOCK_FORGOT_PASSCODE_CHANGED_TODAY";
LABEL_6:
    v14 = [(CSDeviceUnblockViewModel *)self _localizedStringForKey:v11];
    goto LABEL_8;
  }

  v12 = [MEMORY[0x277CBEA80] currentCalendar];
  v13 = [v12 isDateInYesterday:v8];

  if (v13)
  {
    v11 = @"DASHBOARD_BLOCK_FORGOT_PASSCODE_CHANGED_YESTERDAY";
    goto LABEL_6;
  }

  v15 = [MEMORY[0x277CBEA80] currentCalendar];
  v16 = [MEMORY[0x277CBEAA8] date];
  v17 = [v15 components:16 fromDate:v8 toDate:v16 options:0];

  v18 = [v17 day];
  v19 = MEMORY[0x277CCACA8];
  v20 = [MEMORY[0x277CCA8D8] mainBundle];
  v21 = [v20 localizedStringForKey:@"DASHBOARD_BLOCK_FORGOT_PASSCODE_CHANGED_DAYS_AGO" value:&stru_28302FDA0 table:@"CoverSheetPlurals"];
  v14 = [v19 localizedStringWithFormat:v21, v18];

LABEL_8:

  return v14;
}

- (id)primaryButtonText
{
  v3 = [(CSDeviceUnblockViewModel *)self unblockPolicy];
  v4 = [v3 canUnblockDeviceUsingRecovery];

  if (v4)
  {
    v5 = [(CSDeviceUnblockViewModel *)self _localizedStringForKey:@"DASHBOARD_BLOCK_FORGOT_PASSCODE_SCREEN_RECOVERY_ACTION"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)secondaryButtonText
{
  v3 = [(CSDeviceUnblockViewModel *)self unblockPolicy];
  v4 = [v3 canUnblockDeviceUsingErase];

  if (v4)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [(CSDeviceUnblockViewModel *)self _localizedStringForKey:@"DASHBOARD_BLOCK_FORGOT_PASSCODE_SCREEN_ERASE_ACTION"];
    v7 = [(CSDeviceUnblockViewModel *)self _localizedProductName];
    v8 = [v5 stringWithFormat:v6, v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)primaryButtonAction
{
  v2 = [(CSDeviceUnblockViewModel *)self blockViewController];
  [v2 deviceUnblockViewModelHandleDidRequestRecovery];
}

- (void)secondaryButtonAction
{
  v2 = [(CSDeviceUnblockViewModel *)self blockViewController];
  [v2 deviceUnblockViewModelHandleDidRequestErase];
}

- (void)cancelButtonAction
{
  v2 = [(CSDeviceUnblockViewModel *)self blockViewController];
  [v2 deviceUnblockViewModelHandleDidRequestCancel];
}

@end