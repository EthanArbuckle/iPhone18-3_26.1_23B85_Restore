@interface DKUserIsFirstBacklightOnAfterWakeupMonitor
@end

@implementation DKUserIsFirstBacklightOnAfterWakeupMonitor

void __91___DKUserIsFirstBacklightOnAfterWakeupMonitor_setInternalSettingsChangedNotficationHandler__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setUINotificationEligibility];
}

void __66___DKUserIsFirstBacklightOnAfterWakeupMonitor_showUINotification___block_invoke(uint64_t a1)
{
  v3 = 0;
  CFUserNotificationDisplayAlert(0.0, 0x40uLL, 0, 0, 0, [*(a1 + 32) objectForKey:@"alert_title"], objc_msgSend(*(a1 + 32), "objectForKey:", @"alert_msg"), objc_msgSend(*(a1 + 32), "objectForKey:", @"alert_option_one"), objc_msgSend(*(a1 + 32), "objectForKey:", @"alert_option_two"), 0, &v3);
  v2 = [*(a1 + 32) objectForKey:@"response_alert_title"];

  if (v2)
  {
    if (v3)
    {
      CFUserNotificationDisplayAlert(0.0, 0x40uLL, 0, 0, 0, [*(a1 + 32) objectForKey:@"response_alert_title"], objc_msgSend(*(a1 + 32), "objectForKey:", @"response_alert_msg"), 0, 0, 0, 0);
    }
  }
}

void __76___DKUserIsFirstBacklightOnAfterWakeupMonitor_registerHandleBacklightEvents__block_invoke(uint64_t a1, int a2)
{
  v4 = [MEMORY[0x277CFE0C8] knowledgeChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __76___DKUserIsFirstBacklightOnAfterWakeupMonitor_registerHandleBacklightEvents__block_invoke_cold_1();
  }

  v5 = os_transaction_create();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    state64 = 0;
    if (!notify_get_state(a2, &state64))
    {
      v7 = [*(a1 + 32) queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __76___DKUserIsFirstBacklightOnAfterWakeupMonitor_registerHandleBacklightEvents__block_invoke_145;
      block[3] = &unk_27856F588;
      v10 = WeakRetained;
      v11 = state64;
      dispatch_sync(v7, block);
    }

    v8 = [MEMORY[0x277CFE0C8] knowledgeChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __76___DKUserIsFirstBacklightOnAfterWakeupMonitor_registerHandleBacklightEvents__block_invoke_cold_2();
    }
  }
}

void __76___DKUserIsFirstBacklightOnAfterWakeupMonitor_registerHandleBacklightEvents__block_invoke_145(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) setupNotificationEligiblityPeriod];
  v3 = *(a1 + 32);
  if (*(a1 + 40))
  {
    [v3 handleBacklightTurnedOnEvent];
  }

  else
  {
    [v3 handleBacklightTurnedOffEvent];
  }

  objc_autoreleasePoolPop(v2);
}

void __76___DKUserIsFirstBacklightOnAfterWakeupMonitor_registerHandleBacklightEvents__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __76___DKUserIsFirstBacklightOnAfterWakeupMonitor_registerHandleBacklightEvents__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end