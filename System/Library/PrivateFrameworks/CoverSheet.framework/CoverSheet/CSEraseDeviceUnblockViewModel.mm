@interface CSEraseDeviceUnblockViewModel
- (id)bodyTextForTimeout:(id)timeout;
- (id)iconName;
- (id)primaryButtonText;
- (void)cancelButtonAction;
- (void)primaryButtonAction;
- (void)secondaryButtonAction;
@end

@implementation CSEraseDeviceUnblockViewModel

- (id)iconName
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v4 = @"lock.ipad";
  }

  else
  {
    v4 = @"lock.iphone";
  }

  return v4;
}

- (id)bodyTextForTimeout:(id)timeout
{
  if (timeout)
  {
    v4 = MEMORY[0x277D75418];
    timeoutCopy = timeout;
    currentDevice = [v4 currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v8 = @"DASHBOARD_BLOCK_ERASE_MESSAGE_PAD";
    }

    else
    {
      v8 = @"DASHBOARD_BLOCK_ERASE_MESSAGE_PHONE";
    }

    v9 = [(CSDeviceUnblockViewModel *)self _localizedStringForKey:v8];
    timeoutCopy = [MEMORY[0x277CCACA8] stringWithFormat:v9, timeoutCopy];
  }

  else
  {
    timeoutCopy = &stru_28302FDA0;
  }

  return timeoutCopy;
}

- (id)primaryButtonText
{
  unblockPolicy = [(CSDeviceUnblockViewModel *)self unblockPolicy];
  canUnblockDeviceUsingErase = [unblockPolicy canUnblockDeviceUsingErase];

  if (canUnblockDeviceUsingErase)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [(CSDeviceUnblockViewModel *)self _localizedStringForKey:@"DASHBOARD_BLOCK_CONFIRM_ERASE_ACTION"];
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
  [blockViewController deviceUnblockViewModelHandleDidRequestErase];
}

- (void)secondaryButtonAction
{
  blockViewController = [(CSDeviceUnblockViewModel *)self blockViewController];
  [blockViewController deviceUnblockViewModelHandleDidRequestCancel];
}

- (void)cancelButtonAction
{
  blockViewController = [(CSDeviceUnblockViewModel *)self blockViewController];
  [blockViewController deviceUnblockViewModelHandleDidRequestCancel];
}

@end