@interface ESUserNotificationUtilities
+ (void)showUserNotification:(__CFUserNotification *)a3 groupIdentifier:(id)a4 withCompletionBlock:(id)a5;
@end

@implementation ESUserNotificationUtilities

+ (void)showUserNotification:(__CFUserNotification *)a3 groupIdentifier:(id)a4 withCompletionBlock:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (a3)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [ESUserNotificationUtilities showUserNotification:a2 groupIdentifier:a1 withCompletionBlock:?];
    if (v11)
    {
      goto LABEL_3;
    }
  }

  [ESUserNotificationUtilities showUserNotification:a2 groupIdentifier:a1 withCompletionBlock:?];
LABEL_3:
  v12 = _InfoForNotification(a3);

  if (v12)
  {
    [ESUserNotificationUtilities showUserNotification:a2 groupIdentifier:a1 withCompletionBlock:a3];
  }

  RunLoopSource = CFUserNotificationCreateRunLoopSource(*MEMORY[0x277CBECE8], a3, _ReceiveNotificationResponseCallback, 0);
  if (RunLoopSource)
  {
    v14 = RunLoopSource;
    Current = CFRunLoopGetCurrent();
    v16 = CFRunLoopCopyCurrentMode(Current);
    if (!v16)
    {
      v16 = CFRetain(*MEMORY[0x277CBF048]);
    }

    v17 = objc_opt_new();
    [v17 setGroupIdentifier:v9];
    [v17 setHandler:v11];
    v18 = v17;
    v19 = _NotificationHandlerMap();
    [v19 setObject:v18 forKey:a3];

    if (v9)
    {
      v20 = [MEMORY[0x277D037B0] sharedPowerAssertionManager];
      [v20 dropPowerAssertionsForGroupIdentifier:v9];
    }

    CFRunLoopAddSource(Current, v14, v16);
    CFRelease(v16);
    CFRelease(v14);
  }

  else
  {
    v21 = DALoggingwithCategory();
    v22 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v21, v22))
    {
      v24 = 138412290;
      v25 = a3;
      _os_log_impl(&dword_24A097000, v21, v22, "Couldn't schedule response for notification %@", &v24, 0xCu);
    }

    CFUserNotificationCancel(a3);
    (v11)[2](v11, a3, 3);
  }

  v23 = *MEMORY[0x277D85DE8];
}

+ (void)showUserNotification:(uint64_t)a1 groupIdentifier:(uint64_t)a2 withCompletionBlock:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ESUserNotificationUtilities.m" lineNumber:65 description:@"Must have a notification"];
}

+ (void)showUserNotification:(uint64_t)a1 groupIdentifier:(uint64_t)a2 withCompletionBlock:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ESUserNotificationUtilities.m" lineNumber:66 description:@"Must have a block here"];
}

+ (void)showUserNotification:(uint64_t)a1 groupIdentifier:(uint64_t)a2 withCompletionBlock:(uint64_t)a3 .cold.3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"ESUserNotificationUtilities.m" lineNumber:67 description:{@"Already waiting on this notification %p", a3}];
}

@end