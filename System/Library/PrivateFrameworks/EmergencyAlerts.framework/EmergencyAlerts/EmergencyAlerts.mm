void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

id ea_getFormattedDatePrint(void *a1, BOOL *a2)
{
  v3 = a1;
  v4 = objc_alloc_init(MEMORY[0x277CCAA68]);
  [v4 setFormatOptions:1907];
  v5 = [v4 dateFromString:v3];
  v6 = v5;
  if (!v5)
  {
    v11 = v3;
    goto LABEL_14;
  }

  [v5 timeIntervalSinceNow];
  *a2 = v7 < 0.0;
  v8 = [MEMORY[0x277CBEA80] currentCalendar];
  v9 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/UserNotifications/Bundles/com.apple.cmas.bundle"];
  if ([v8 isDateInToday:v6])
  {
    v10 = @"TODAY";
  }

  else if ([v8 isDateInTomorrow:v6])
  {
    v10 = @"TOMORROW";
  }

  else
  {
    if (([v8 isDateInYesterday:v6] & 1) == 0)
    {
      v13 = objc_alloc_init(MEMORY[0x277CCA968]);
LABEL_12:
      [v13 setLocalizedDateFormatFromTemplate:@"MMMMd"];
      v12 = [v13 stringFromDate:v6];
      goto LABEL_13;
    }

    v10 = @"YESTERDAY";
  }

  v12 = [v9 localizedStringForKey:v10 value:&stru_285D24188 table:0];
  v13 = objc_alloc_init(MEMORY[0x277CCA968]);
  if (!v12)
  {
    goto LABEL_12;
  }

LABEL_13:
  [v13 setDateFormat:@"hh:mm a"];
  v14 = [v13 stringFromDate:v6];
  v11 = [v12 stringByAppendingFormat:@", %@", v14];

LABEL_14:

  return v11;
}

void *ea_isValidString(void *result)
{
  if (result)
  {
    return ([result length] != 0);
  }

  return result;
}

uint64_t ea_getEpochTimestamp()
{
  v0 = MEMORY[0x277CCABB0];
  v1 = [MEMORY[0x277CBEAA8] date];
  [v1 timeIntervalSince1970];
  v2 = [v0 numberWithDouble:?];
  v3 = [v2 integerValue];

  return v3;
}

id ea_getHashForString(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v1 = [a1 UTF8String];
    v2 = strlen(v1);
    CC_SHA256(v1, v2, md);
    v3 = [MEMORY[0x277CCAB68] stringWithCapacity:32];
    for (i = 0; i != 16; ++i)
    {
      [v3 appendFormat:@"%02x", md[i]];
    }
  }

  else
  {
    v3 = 0;
  }

  v5 = *MEMORY[0x277D85DE8];

  return v3;
}

void ea_sendSafetyAlertTapIndication(void *a1, uint64_t a2)
{
  v10[3] = *MEMORY[0x277D85DE8];
  v10[0] = a1;
  v9[0] = @"WeaMessage";
  v9[1] = @"WeaHash";
  v3 = a1;
  v4 = ea_getHashForString(v3);
  v10[1] = v4;
  v9[2] = @"UserInteractionType";
  v5 = [MEMORY[0x277CCABB0] numberWithInt:a2];
  v10[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = [MEMORY[0x277D4A9F8] sharedInterface];

  [v7 onUserTappedOnWeaWithInfo:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void EARegisterUserNotificationsLogging()
{
  if (EARegisterUserNotificationsLogging_onceToken != -1)
  {
    EARegisterUserNotificationsLogging_cold_1();
  }
}

uint64_t __EARegisterUserNotificationsLogging_block_invoke()
{
  EALogDefault = os_log_create(EALogSubsystem, "Default");

  return MEMORY[0x2821F96F8]();
}

void EAHandleCellBroadcastMessageReceivedNotification(int a1, uint64_t a2, CFTypeRef cf, uint64_t a4, const void *a5)
{
  CFRetain(cf);
  CFRetain(a5);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __EAHandleCellBroadcastMessageReceivedNotification_block_invoke;
  block[3] = &__block_descriptor_56_e5_v8__0l;
  block[4] = a5;
  block[5] = a2;
  block[6] = cf;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __EAHandleCellBroadcastMessageReceivedNotification_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = EALogDefault;
  if (os_log_type_enabled(EALogDefault, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_249FC1000, v2, OS_LOG_TYPE_DEFAULT, "Received broadcast message notification %{public}@", &v6, 0xCu);
  }

  if (*(a1 + 32))
  {
    v4 = *(a1 + 40);
    if (objc_opt_respondsToSelector())
    {
      [*(a1 + 40) _cellBroadcastMessageReceived:*(a1 + 32)];
    }
  }

  CFRelease(*(a1 + 48));
  CFRelease(*(a1 + 32));
  v5 = *MEMORY[0x277D85DE8];
}