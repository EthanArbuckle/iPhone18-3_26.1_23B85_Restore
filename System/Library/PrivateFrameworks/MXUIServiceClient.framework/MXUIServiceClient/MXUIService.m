@interface MXUIService
@end

@implementation MXUIService

uint64_t __72__MXUIService_ServerDelegate_listener_didReceiveConnection_withContext___block_invoke()
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work();
  fig_note_initialize_category_with_default_work();
  v0 = [MEMORY[0x277CF3278] interfaceWithIdentifier:@"com.apple.MXUIService"];
  [v0 setServer:{objc_msgSend(MEMORY[0x277CF0C90], "protocolForProtocol:", &unk_2868F4830)}];
  [v0 setClient:{objc_msgSend(MEMORY[0x277CF0C90], "protocolForProtocol:", &unk_2868F4D30)}];
  [v0 setClientMessagingExpectation:1];
  result = [v0 copy];
  listener_didReceiveConnection_withContext__interface = result;
  return result;
}

uint64_t __72__MXUIService_ServerDelegate_listener_didReceiveConnection_withContext___block_invoke_2(uint64_t a1, void *a2)
{
  [a2 setTargetQueue:*(*(a1 + 32) + 8)];
  [a2 setServiceQuality:{objc_msgSend(MEMORY[0x277CF32C8], "userInitiated")}];
  [a2 setInterface:listener_didReceiveConnection_withContext__interface];
  [a2 setInterfaceTarget:*(a1 + 32)];

  return [a2 setInvalidationHandler:&__block_literal_global_60];
}

uint64_t __66__MXUIService_ServerDelegate_showConnectButton_completionHandler___block_invoke(uint64_t a1, int a2)
{
  v3 = a2 == 1;
  v4 = a2 != 1 && a2 == 6;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (v5)
  {
    [v5 setValue:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithBool:", v3), @"UserPressedButton"}];
    [v5 setValue:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithBool:", v4), @"BannerTimeout"}];
  }

  v6 = *(*(a1 + 32) + 16);

  return v6();
}

uint64_t __63__MXUIService_ServerDelegate_showUndoButton_completionHandler___block_invoke(uint64_t a1, int a2)
{
  v3 = a2 == 1;
  v4 = a2 != 1 && a2 == 6;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (v5)
  {
    [v5 setValue:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithBool:", v3), @"UserPressedButton"}];
    [v5 setValue:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithBool:", v4), @"BannerTimeout"}];
  }

  v6 = *(*(a1 + 32) + 16);

  return v6();
}

uint64_t __71__MXUIService_ServerDelegate_showDisconnectedButton_completionHandler___block_invoke(uint64_t a1, int a2)
{
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (v4)
  {
    [v4 setValue:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithBool:", a2 == 6), @"BannerTimeout"}];
  }

  v5 = *(*(a1 + 32) + 16);

  return v5();
}

uint64_t __35__MXUIService_ServerListener_init___block_invoke(uint64_t a1, void *a2)
{
  [a2 setDomain:@"com.apple.MXUIService"];
  [a2 setService:@"com.apple.MXUIService"];
  v4 = *(a1 + 32);

  return [a2 setDelegate:v4];
}

MXUIService_Client *__36__MXUIService_Client_sharedInstance__block_invoke()
{
  result = objc_alloc_init(MXUIService_Client);
  sharedInstance_sSharedInstance = result;
  return result;
}

dispatch_queue_t __51__MXUIService_Client_recreateConnectionIfNecessary__block_invoke()
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work();
  fig_note_initialize_category_with_default_work();
  v0 = [MEMORY[0x277CF3278] interfaceWithIdentifier:@"com.apple.MXUIService"];
  [v0 setServer:{objc_msgSend(MEMORY[0x277CF0C90], "protocolForProtocol:", &unk_2868F4830)}];
  [v0 setClient:{objc_msgSend(MEMORY[0x277CF0C90], "protocolForProtocol:", &unk_2868F4D30)}];
  [v0 setClientMessagingExpectation:1];
  qword_27F8F04C0 = [v0 copy];
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  result = dispatch_queue_create("com.apple.mediaexperience.MXUIServiceClient", v1);
  qword_27F8F04C8 = result;
  return result;
}

uint64_t __51__MXUIService_Client_recreateConnectionIfNecessary__block_invoke_2(uint64_t a1, void *a2)
{
  [a2 setTargetQueue:qword_27F8F04C8];
  [a2 setServiceQuality:{objc_msgSend(MEMORY[0x277CF32C8], "userInitiated")}];
  [a2 setInterface:qword_27F8F04C0];
  [a2 setInterfaceTarget:*(a1 + 32)];
  [a2 setActivationHandler:&__block_literal_global_80];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__MXUIService_Client_recreateConnectionIfNecessary__block_invoke_81;
  v6[3] = &unk_2798510C8;
  v6[4] = *(a1 + 32);
  [a2 setInterruptionHandler:v6];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__MXUIService_Client_recreateConnectionIfNecessary__block_invoke_82;
  v5[3] = &unk_2798510C8;
  v5[4] = *(a1 + 32);
  return [a2 setInvalidationHandler:v5];
}

void __51__MXUIService_Client_recreateConnectionIfNecessary__block_invoke_3()
{
  v2 = *MEMORY[0x277D85DE8];
  if (dword_27F8F0490)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v1 = *MEMORY[0x277D85DE8];
}

void __51__MXUIService_Client_recreateConnectionIfNecessary__block_invoke_81(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((*(a1 + 32) + 28));
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  *(*(a1 + 32) + 24) = 1;
  [*(*(a1 + 32) + 8) invalidate];

  *(*(a1 + 32) + 8) = 0;
  *(*(a1 + 32) + 16) = 0;
  os_unfair_lock_unlock((*(a1 + 32) + 28));
  v3 = *MEMORY[0x277D85DE8];
}

void __51__MXUIService_Client_recreateConnectionIfNecessary__block_invoke_82(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((*(a1 + 32) + 28));
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  *(*(a1 + 32) + 24) = 1;
  [*(*(a1 + 32) + 8) invalidate];

  *(*(a1 + 32) + 8) = 0;
  *(*(a1 + 32) + 16) = 0;
  os_unfair_lock_unlock((*(a1 + 32) + 28));
  v3 = *MEMORY[0x277D85DE8];
}

uint64_t __74__MXUIService_Client_promptForConnectDialog_withIconType_callbackHandler___block_invoke(uint64_t a1, void *a2)
{
  [objc_msgSend(a2 valueForKey:{@"UserPressedButton", "BOOLValue"}];
  [objc_msgSend(a2 valueForKey:{@"BannerTimeout", "BOOLValue"}];
  v4 = *(*(a1 + 32) + 16);

  return v4();
}

uint64_t __71__MXUIService_Client_promptForUndoBanner_withIconType_callbackHandler___block_invoke(uint64_t a1, void *a2)
{
  [objc_msgSend(a2 valueForKey:{@"UserPressedButton", "BOOLValue"}];
  [objc_msgSend(a2 valueForKey:{@"BannerTimeout", "BOOLValue"}];
  v4 = *(*(a1 + 32) + 16);

  return v4();
}

uint64_t __79__MXUIService_Client_promptForDisconnectedBanner_withIconType_callbackHandler___block_invoke(uint64_t a1, void *a2)
{
  [objc_msgSend(a2 valueForKey:{@"UserPressedButton", "BOOLValue"}];
  [objc_msgSend(a2 valueForKey:{@"BannerTimeout", "BOOLValue"}];
  v4 = *(*(a1 + 32) + 16);

  return v4();
}

@end