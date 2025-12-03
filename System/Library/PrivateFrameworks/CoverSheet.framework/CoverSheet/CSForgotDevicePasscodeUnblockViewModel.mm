@interface CSForgotDevicePasscodeUnblockViewModel
- (id)bodyTextForTimeout:(id)timeout;
- (id)primaryButtonText;
- (id)secondaryButtonText;
- (void)cancelButtonAction;
- (void)primaryButtonAction;
- (void)secondaryButtonAction;
@end

@implementation CSForgotDevicePasscodeUnblockViewModel

- (id)bodyTextForTimeout:(id)timeout
{
  timeoutCopy = timeout;
  unblockPolicy = [(CSDeviceUnblockViewModel *)self unblockPolicy];
  canUnblockDevice = [unblockPolicy canUnblockDevice];

  if ((canUnblockDevice & 1) == 0)
  {
    v23 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"No unlock methods found" userInfo:0];
    objc_exception_throw(v23);
  }

  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  passcodeCreationDate = [mEMORY[0x277D262A0] passcodeCreationDate];

  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v10 = [currentCalendar isDateInToday:passcodeCreationDate];

  if (v10)
  {
    v11 = @"DASHBOARD_BLOCK_FORGOT_PASSCODE_CHANGED_TODAY";
LABEL_6:
    v14 = [(CSDeviceUnblockViewModel *)self _localizedStringForKey:v11];
    goto LABEL_8;
  }

  currentCalendar2 = [MEMORY[0x277CBEA80] currentCalendar];
  v13 = [currentCalendar2 isDateInYesterday:passcodeCreationDate];

  if (v13)
  {
    v11 = @"DASHBOARD_BLOCK_FORGOT_PASSCODE_CHANGED_YESTERDAY";
    goto LABEL_6;
  }

  currentCalendar3 = [MEMORY[0x277CBEA80] currentCalendar];
  date = [MEMORY[0x277CBEAA8] date];
  v17 = [currentCalendar3 components:16 fromDate:passcodeCreationDate toDate:date options:0];

  v18 = [v17 day];
  v19 = MEMORY[0x277CCACA8];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v21 = [mainBundle localizedStringForKey:@"DASHBOARD_BLOCK_FORGOT_PASSCODE_CHANGED_DAYS_AGO" value:&stru_28302FDA0 table:@"CoverSheetPlurals"];
  v14 = [v19 localizedStringWithFormat:v21, v18];

LABEL_8:

  return v14;
}

- (id)primaryButtonText
{
  unblockPolicy = [(CSDeviceUnblockViewModel *)self unblockPolicy];
  canUnblockDeviceUsingRecovery = [unblockPolicy canUnblockDeviceUsingRecovery];

  if (canUnblockDeviceUsingRecovery)
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
  unblockPolicy = [(CSDeviceUnblockViewModel *)self unblockPolicy];
  canUnblockDeviceUsingErase = [unblockPolicy canUnblockDeviceUsingErase];

  if (canUnblockDeviceUsingErase)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [(CSDeviceUnblockViewModel *)self _localizedStringForKey:@"DASHBOARD_BLOCK_FORGOT_PASSCODE_SCREEN_ERASE_ACTION"];
    _localizedProductName = [(CSDeviceUnblockViewModel *)self _localizedProductName];
    v8 = [v5 stringWithFormat:v6, _localizedProductName];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)primaryButtonAction
{
  blockViewController = [(CSDeviceUnblockViewModel *)self blockViewController];
  [blockViewController deviceUnblockViewModelHandleDidRequestRecovery];
}

- (void)secondaryButtonAction
{
  blockViewController = [(CSDeviceUnblockViewModel *)self blockViewController];
  [blockViewController deviceUnblockViewModelHandleDidRequestErase];
}

- (void)cancelButtonAction
{
  blockViewController = [(CSDeviceUnblockViewModel *)self blockViewController];
  [blockViewController deviceUnblockViewModelHandleDidRequestCancel];
}

@end