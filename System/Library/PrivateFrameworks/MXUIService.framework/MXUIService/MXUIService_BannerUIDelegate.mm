@interface MXUIService_BannerUIDelegate
- (void)dismissBannerWithUUID:(id)d withResponse:(id)response;
- (void)showConnectButton:(id)button completionHandler:(id)handler;
- (void)showDisconnectedButton:(id)button completionHandler:(id)handler;
- (void)showInputDeviceReplacementPillForConnectedDevice:(id)device replacedDevice:(id)replacedDevice;
- (void)showUndoButton:(id)button completionHandler:(id)handler;
@end

@implementation MXUIService_BannerUIDelegate

- (void)showConnectButton:(id)button completionHandler:(id)handler
{
  buttonCopy = button;
  handlerCopy = handler;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__MXUIService_BannerUIDelegate_showConnectButton_completionHandler___block_invoke;
  v9[3] = &unk_2798506A8;
  v10 = buttonCopy;
  v11 = handlerCopy;
  v7 = handlerCopy;
  v8 = buttonCopy;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

- (void)showUndoButton:(id)button completionHandler:(id)handler
{
  buttonCopy = button;
  handlerCopy = handler;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __65__MXUIService_BannerUIDelegate_showUndoButton_completionHandler___block_invoke;
  v9[3] = &unk_2798506A8;
  v10 = buttonCopy;
  v11 = handlerCopy;
  v7 = handlerCopy;
  v8 = buttonCopy;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

- (void)showDisconnectedButton:(id)button completionHandler:(id)handler
{
  buttonCopy = button;
  handlerCopy = handler;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__MXUIService_BannerUIDelegate_showDisconnectedButton_completionHandler___block_invoke;
  v9[3] = &unk_2798506A8;
  v10 = buttonCopy;
  v11 = handlerCopy;
  v7 = handlerCopy;
  v8 = buttonCopy;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

- (void)dismissBannerWithUUID:(id)d withResponse:(id)response
{
  v11 = *MEMORY[0x277D85DE8];
  dCopy = d;
  responseCopy = response;
  if (dword_27F8F0278)
  {
    v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  +[MXUIServiceBanner dismissBannerWithUUID:withResponse:](MXUIServiceBanner, "dismissBannerWithUUID:withResponse:", dCopy, [responseCopy intValue]);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)showInputDeviceReplacementPillForConnectedDevice:(id)device replacedDevice:(id)replacedDevice
{
  v16 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  replacedDeviceCopy = replacedDevice;
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
  v12 = deviceCopy;
  v13 = replacedDeviceCopy;
  v8 = replacedDeviceCopy;
  v9 = deviceCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v10 = *MEMORY[0x277D85DE8];
}

@end