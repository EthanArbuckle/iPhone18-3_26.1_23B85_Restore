@interface MXUIService_BannerUIDelegate
- (void)dismissBannerWithUUID:(id)a3 withResponse:(id)a4;
- (void)showConnectButton:(id)a3 completionHandler:(id)a4;
- (void)showDisconnectedButton:(id)a3 completionHandler:(id)a4;
- (void)showInputDeviceReplacementPillForConnectedDevice:(id)a3 replacedDevice:(id)a4;
- (void)showUndoButton:(id)a3 completionHandler:(id)a4;
@end

@implementation MXUIService_BannerUIDelegate

- (void)showConnectButton:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__MXUIService_BannerUIDelegate_showConnectButton_completionHandler___block_invoke;
  v9[3] = &unk_2798506A8;
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

- (void)showUndoButton:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __65__MXUIService_BannerUIDelegate_showUndoButton_completionHandler___block_invoke;
  v9[3] = &unk_2798506A8;
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

- (void)showDisconnectedButton:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__MXUIService_BannerUIDelegate_showDisconnectedButton_completionHandler___block_invoke;
  v9[3] = &unk_2798506A8;
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

- (void)dismissBannerWithUUID:(id)a3 withResponse:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (dword_27F8F0278)
  {
    v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  +[MXUIServiceBanner dismissBannerWithUUID:withResponse:](MXUIServiceBanner, "dismissBannerWithUUID:withResponse:", v5, [v6 intValue]);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)showInputDeviceReplacementPillForConnectedDevice:(id)a3 replacedDevice:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (dword_27F8F0278)
  {
    v15 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __96__MXUIService_BannerUIDelegate_showInputDeviceReplacementPillForConnectedDevice_replacedDevice___block_invoke;
  block[3] = &unk_2798506D0;
  v12 = v5;
  v13 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v10 = *MEMORY[0x277D85DE8];
}

@end