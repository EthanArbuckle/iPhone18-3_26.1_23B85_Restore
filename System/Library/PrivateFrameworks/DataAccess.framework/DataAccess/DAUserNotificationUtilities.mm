@interface DAUserNotificationUtilities
+ (void)showUserNotification:(__CFUserNotification *)a3 groupIdentifier:(id)a4 callbackQueue:(id)a5 sourceRunLoop:(id)a6 completionBlock:(id)a7;
@end

@implementation DAUserNotificationUtilities

+ (void)showUserNotification:(__CFUserNotification *)a3 groupIdentifier:(id)a4 callbackQueue:(id)a5 sourceRunLoop:(id)a6 completionBlock:(id)a7
{
  v32 = *MEMORY[0x277D85DE8];
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = v16;
  if (a3)
  {
    if (v16)
    {
      goto LABEL_3;
    }

LABEL_17:
    [DAUserNotificationUtilities showUserNotification:a2 groupIdentifier:a1 callbackQueue:? sourceRunLoop:? completionBlock:?];
    if (v15)
    {
      goto LABEL_4;
    }

    goto LABEL_18;
  }

  [DAUserNotificationUtilities showUserNotification:a2 groupIdentifier:a1 callbackQueue:? sourceRunLoop:? completionBlock:?];
  if (!v17)
  {
    goto LABEL_17;
  }

LABEL_3:
  if (v15)
  {
    goto LABEL_4;
  }

LABEL_18:
  [DAUserNotificationUtilities showUserNotification:a2 groupIdentifier:a1 callbackQueue:? sourceRunLoop:? completionBlock:?];
LABEL_4:
  v18 = _InfoForNotification(a3);

  if (v18)
  {
    [DAUserNotificationUtilities showUserNotification:a2 groupIdentifier:a1 callbackQueue:a3 sourceRunLoop:? completionBlock:?];
  }

  RunLoopSource = CFUserNotificationCreateRunLoopSource(*MEMORY[0x277CBECE8], a3, _ReceiveNotificationResponseCallback, 0);
  if (RunLoopSource)
  {
    v20 = RunLoopSource;
    v21 = [v15 getCFRunLoop];
    v22 = CFRunLoopCopyCurrentMode(v21);
    if (!v22)
    {
      v22 = CFRetain(*MEMORY[0x277CBF048]);
    }

    v23 = objc_opt_new();
    [v23 setGroupIdentifier:v13];
    [v23 setHandler:v17];
    [v23 setCallbackQueue:v14];
    v24 = v23;
    v25 = _NotificationHandlerMap();
    [v25 setObject:v24 forKey:a3];

    if (v13)
    {
      v26 = +[DAPowerAssertionManager sharedPowerAssertionManager];
      [v26 dropPowerAssertionsForGroupIdentifier:v13];
    }

    CFRunLoopAddSource(v21, v20, v22);
    CFRelease(v22);
    CFRelease(v20);
  }

  else
  {
    v27 = DALoggingwithCategory();
    v28 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v27, v28))
    {
      v30 = 138412290;
      v31 = a3;
      _os_log_impl(&dword_24844D000, v27, v28, "Couldn't schedule response for notification %@", &v30, 0xCu);
    }

    CFUserNotificationCancel(a3);
    (v17)[2](v17, a3, 3);
  }

  v29 = *MEMORY[0x277D85DE8];
}

+ (void)showUserNotification:(uint64_t)a1 groupIdentifier:(uint64_t)a2 callbackQueue:sourceRunLoop:completionBlock:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DAUserNotificationUtilities.m" lineNumber:73 description:{@"Invalid parameter not satisfying: %@", @"notification != nil"}];
}

+ (void)showUserNotification:(uint64_t)a1 groupIdentifier:(uint64_t)a2 callbackQueue:sourceRunLoop:completionBlock:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DAUserNotificationUtilities.m" lineNumber:74 description:{@"Invalid parameter not satisfying: %@", @"completionBlock != nil"}];
}

+ (void)showUserNotification:(uint64_t)a1 groupIdentifier:(uint64_t)a2 callbackQueue:sourceRunLoop:completionBlock:.cold.3(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DAUserNotificationUtilities.m" lineNumber:75 description:{@"Invalid parameter not satisfying: %@", @"runLoop != nil"}];
}

+ (void)showUserNotification:(uint64_t)a3 groupIdentifier:callbackQueue:sourceRunLoop:completionBlock:.cold.4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"DAUserNotificationUtilities.m" lineNumber:76 description:{@"Already waiting on this notification %p", a3}];
}

@end