@interface DUTriggerMacFileUpdate
+ (id)findDocUConnectionWithUser:(unsigned int)user;
+ (unsigned)beMobileUser;
+ (void)sendDUNotification;
@end

@implementation DUTriggerMacFileUpdate

+ (id)findDocUConnectionWithUser:(unsigned int)user
{
  v3 = dispatch_queue_create("testingDocumentUpdateHandlerQueue", 0);
  mach_service = xpc_connection_create_mach_service("com.apple.TextUnderstanding.DocumentUpdateHandler", v3, 0);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = sub_249D20A74;
  handler[3] = &unk_278FB56A0;
  v5 = mach_service;
  v8 = v5;
  xpc_connection_set_event_handler(v5, handler);
  xpc_connection_set_target_uid();
  xpc_connection_activate(v5);

  return v5;
}

+ (void)sendDUNotification
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = [self findDocUConnectionWithUser:{objc_msgSend(self, "beMobileUser")}];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_249D14000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "DocumentUndersanding: Simulating DocU connection connection:%@", &v5, 0xCu);
  }

  if (v2)
  {
    v3 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v3, "event_type", "mds_index_updated");
    xpc_dictionary_set_int64(v3, "num_updates", 1);
    xpc_connection_send_message(v2, v3);
  }

  v4 = *MEMORY[0x277D85DE8];
}

+ (unsigned)beMobileUser
{
  if (!getuid())
  {
    v2 = getpwnam("mobile");
    if (!v2)
    {
      puts("Error: failed to get pwInfo Exiting.");
      _exit(7);
    }

    v3 = v2;
    if (!v2->pw_uid)
    {
      puts("Error: got pwInfo for uid=0. Exiting.");
      _exit(8);
    }

    v4 = fileno(*MEMORY[0x277D85E08]);
    if (isatty(v4) == 1)
    {
      printf("Dropping root privileges to %s (%i)\n", v3->pw_name, v3->pw_uid);
    }

    if (setuid(v3->pw_uid))
    {
      puts("Error: could not set uid");
      _exit(9);
    }

    if (!getuid())
    {
      puts("Error: failed to setuid to drop privileges. Exiting.");
      _exit(10);
    }
  }

  return getuid();
}

@end