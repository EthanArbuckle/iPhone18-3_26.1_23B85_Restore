@interface DAUserNotificationUtilities
+ (void)showUserNotification:(__CFUserNotification *)notification groupIdentifier:(id)identifier callbackQueue:(id)queue sourceRunLoop:(id)loop completionBlock:(id)block;
@end

@implementation DAUserNotificationUtilities

+ (void)showUserNotification:(__CFUserNotification *)notification groupIdentifier:(id)identifier callbackQueue:(id)queue sourceRunLoop:(id)loop completionBlock:(id)block
{
  v32 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  queueCopy = queue;
  loopCopy = loop;
  blockCopy = block;
  v17 = blockCopy;
  if (notification)
  {
    if (blockCopy)
    {
      goto LABEL_3;
    }

LABEL_17:
    [DAUserNotificationUtilities showUserNotification:a2 groupIdentifier:self callbackQueue:? sourceRunLoop:? completionBlock:?];
    if (loopCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_18;
  }

  [DAUserNotificationUtilities showUserNotification:a2 groupIdentifier:self callbackQueue:? sourceRunLoop:? completionBlock:?];
  if (!v17)
  {
    goto LABEL_17;
  }

LABEL_3:
  if (loopCopy)
  {
    goto LABEL_4;
  }

LABEL_18:
  [DAUserNotificationUtilities showUserNotification:a2 groupIdentifier:self callbackQueue:? sourceRunLoop:? completionBlock:?];
LABEL_4:
  v18 = _InfoForNotification(notification);

  if (v18)
  {
    [DAUserNotificationUtilities showUserNotification:a2 groupIdentifier:self callbackQueue:notification sourceRunLoop:? completionBlock:?];
  }

  RunLoopSource = CFUserNotificationCreateRunLoopSource(*MEMORY[0x277CBECE8], notification, _ReceiveNotificationResponseCallback, 0);
  if (RunLoopSource)
  {
    v20 = RunLoopSource;
    getCFRunLoop = [loopCopy getCFRunLoop];
    v22 = CFRunLoopCopyCurrentMode(getCFRunLoop);
    if (!v22)
    {
      v22 = CFRetain(*MEMORY[0x277CBF048]);
    }

    v23 = objc_opt_new();
    [v23 setGroupIdentifier:identifierCopy];
    [v23 setHandler:v17];
    [v23 setCallbackQueue:queueCopy];
    v24 = v23;
    v25 = _NotificationHandlerMap();
    [v25 setObject:v24 forKey:notification];

    if (identifierCopy)
    {
      v26 = +[DAPowerAssertionManager sharedPowerAssertionManager];
      [v26 dropPowerAssertionsForGroupIdentifier:identifierCopy];
    }

    CFRunLoopAddSource(getCFRunLoop, v20, v22);
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
      notificationCopy = notification;
      _os_log_impl(&dword_24844D000, v27, v28, "Couldn't schedule response for notification %@", &v30, 0xCu);
    }

    CFUserNotificationCancel(notification);
    (v17)[2](v17, notification, 3);
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