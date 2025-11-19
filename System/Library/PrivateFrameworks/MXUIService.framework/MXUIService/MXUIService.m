void sub_257AF6414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t frameworkLaunch(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = objc_alloc_init(MXUIService_BannerUIDelegate);
  v6 = [objc_alloc(MEMORY[0x277D25818]) init:v5];
  v7 = kMXUIService_ServerListener;
  kMXUIService_ServerListener = v6;

  UIApplicationMain(a1, a2, &cfstr_Mxuiservice.isa, &cfstr_Mxuiservice.isa);
  objc_autoreleasePoolPop(v4);
  return 0;
}

reUndoBanner:*(a1 + 32)];
  [(MXUIServiceBanner *)v2 activateWithActionHandler:*(a1 + 40)];
}

void __73__MXUIService_BannerUIDelegate_showDisconnectedButton_completionHandler___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MXUIServiceBanner);
  [(MXUIServiceBanner *)v2 configureDisconnectedBanner:*(a1 + 32)];
  [(MXUIServiceBanner *)v2 activateWithActionHandler:*(a1 + 40)];
}

void __96__MXUIService_BannerUIDelegate_showInputDeviceReplacementPillForConnectedDevice_replacedDevice___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MXUIServiceBanner);
  [(MXUIServiceBanner *)v2 configureInputDeviceReplacementPillForConnectedDevice:*(a1 + 32) replacedDevice:*(a1 + 40)];
  [(MXUIServiceBanner *)v2 activateWithActionHandler:0];
}

- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4
{
  v7 = *MEMORY[0x277D85DE8];
  objc_storeStrong(&self->_mainQueue, MEMORY[0x277D85CD0]);
  if (dword_27F8F0278)
  {
    v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v5 = *MEMORY[0x277D85DE8];
  return 1;
}

@end