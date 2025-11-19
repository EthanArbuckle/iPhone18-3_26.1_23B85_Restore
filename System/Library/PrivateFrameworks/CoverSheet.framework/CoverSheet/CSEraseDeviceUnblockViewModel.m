@interface CSEraseDeviceUnblockViewModel
- (id)bodyTextForTimeout:(id)a3;
- (id)iconName;
- (id)primaryButtonText;
- (void)cancelButtonAction;
- (void)primaryButtonAction;
- (void)secondaryButtonAction;
@end

@implementation CSEraseDeviceUnblockViewModel

- (id)iconName
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if ((v3 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v4 = @"lock.ipad";
  }

  else
  {
    v4 = @"lock.iphone";
  }

  return v4;
}

- (id)bodyTextForTimeout:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x277D75418];
    v5 = a3;
    v6 = [v4 currentDevice];
    v7 = [v6 userInterfaceIdiom];

    if ((v7 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v8 = @"DASHBOARD_BLOCK_ERASE_MESSAGE_PAD";
    }

    else
    {
      v8 = @"DASHBOARD_BLOCK_ERASE_MESSAGE_PHONE";
    }

    v9 = [(CSDeviceUnblockViewModel *)self _localizedStringForKey:v8];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:v9, v5];
  }

  else
  {
    v10 = &stru_28302FDA0;
  }

  return v10;
}

- (id)primaryButtonText
{
  v3 = [(CSDeviceUnblockViewModel *)self unblockPolicy];
  v4 = [v3 canUnblockDeviceUsingErase];

  if (v4)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [(CSDeviceUnblockViewModel *)self _localizedStringForKey:@"DASHBOARD_BLOCK_CONFIRM_ERASE_ACTION"];
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
  [v2 deviceUnblockViewModelHandleDidRequestErase];
}

- (void)secondaryButtonAction
{
  v2 = [(CSDeviceUnblockViewModel *)self blockViewController];
  [v2 deviceUnblockViewModelHandleDidRequestCancel];
}

- (void)cancelButtonAction
{
  v2 = [(CSDeviceUnblockViewModel *)self blockViewController];
  [v2 deviceUnblockViewModelHandleDidRequestCancel];
}

@end