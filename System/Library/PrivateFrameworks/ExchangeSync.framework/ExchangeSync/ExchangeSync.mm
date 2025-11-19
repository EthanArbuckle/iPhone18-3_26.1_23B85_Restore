uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id OUTLINED_FUNCTION_3(id a1)
{

  return a1;
}

uint64_t OUTLINED_FUNCTION_4(uint64_t *a1)
{
  v2 = *a1;

  return objc_opt_class();
}

id _InfoForNotification(uint64_t a1)
{
  v2 = _NotificationHandlerMap();
  v3 = [v2 objectForKey:a1];

  return v3;
}

void _ReceiveNotificationResponseCallback(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = _InfoForNotification(a1);
  v5 = [v4 groupIdentifier];
  if (v5)
  {
    v6 = [MEMORY[0x277D037B0] sharedPowerAssertionManager];
    [v6 reattainPowerAssertionsForGroupIdentifier:v5];
  }

  v7 = [v4 handler];
  v8 = v7;
  if (v7)
  {
    (*(v7 + 16))(v7, a1, a2);
  }

  else
  {
    v9 = DALoggingwithCategory();
    v10 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v9, v10))
    {
      v13 = 138412290;
      v14 = a1;
      _os_log_impl(&dword_24A097000, v9, v10, "No completion block for notification %@", &v13, 0xCu);
    }
  }

  v11 = _NotificationHandlerMap();
  [v11 removeObjectForKey:a1];

  v12 = *MEMORY[0x277D85DE8];
}

id _NotificationHandlerMap()
{
  if (_NotificationHandlerMap_onceToken != -1)
  {
    _NotificationHandlerMap_cold_1();
  }

  v1 = _NotificationHandlerMap_sNotificationHandlerMap;

  return v1;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}