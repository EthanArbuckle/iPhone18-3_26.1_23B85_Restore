@interface DTMobileNotificationsService
- (void)_setAppStateNotificationsEnabled:(BOOL)a3;
- (void)_setMemNotificationsEnabled:(BOOL)a3;
- (void)messageReceived:(id)a3;
- (void)postDarwinNotification:(id)a3;
- (void)setApplicationStateNotificationsEnabled:(id)a3;
- (void)setMemoryNotificationsEnabled:(id)a3;
@end

@implementation DTMobileNotificationsService

- (void)messageReceived:(id)a3
{
  if ([a3 errorStatus] == 2)
  {
    [(DTMobileNotificationsService *)self _setAppStateNotificationsEnabled:0];

    MEMORY[0x2821F9670](self, sel__setMemNotificationsEnabled_);
  }
}

- (void)setApplicationStateNotificationsEnabled:(id)a3
{
  v4 = [a3 BOOLValue];

  [(DTMobileNotificationsService *)self _setAppStateNotificationsEnabled:v4];
}

- (void)_setAppStateNotificationsEnabled:(BOOL)a3
{
  if (self->_applicationStateNotificationsEnabled != a3)
  {
    self->_applicationStateNotificationsEnabled = a3;
    if (a3)
    {
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = sub_247FB6B38;
      v6[3] = &unk_278EF2EC8;
      v6[4] = self;
      v4 = [MEMORY[0x277D46F80] monitorWithConfiguration:v6];
      [(DTMobileNotificationsService *)self setAppStateMonitor:v4];
    }

    else
    {
      [(RBSProcessMonitor *)self->_appStateMonitor invalidate];
      appStateMonitor = self->_appStateMonitor;
      self->_appStateMonitor = 0;
    }
  }
}

- (void)setMemoryNotificationsEnabled:(id)a3
{
  [a3 BOOLValue];

  MEMORY[0x2821F9670](self, sel__setMemNotificationsEnabled_);
}

- (void)postDarwinNotification:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (qword_27EE84350 != -1)
  {
    sub_24802EC44();
  }

  if ([qword_27EE84348 containsObject:v3])
  {
    v4 = notify_post([v3 UTF8String]);
    if (v4)
    {
      v5 = v4;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v10 = 138412546;
        v11 = v3;
        v12 = 1024;
        v13 = v5;
        v6 = MEMORY[0x277D86220];
        v7 = "Failed to post notification %@, status %d";
        v8 = 18;
LABEL_9:
        _os_log_impl(&dword_247F67000, v6, OS_LOG_TYPE_ERROR, v7, &v10, v8);
      }
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v10 = 138412290;
    v11 = v3;
    v6 = MEMORY[0x277D86220];
    v7 = "Failed to post notification %@";
    v8 = 12;
    goto LABEL_9;
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_setMemNotificationsEnabled:(BOOL)a3
{
  memoryNotificationSource = self->_memoryNotificationSource;
  if (a3)
  {
    if (memoryNotificationSource)
    {
      return;
    }

    v5 = socket(32, 3, 1);
    if (v5 == -1)
    {
      v9 = __error();
      printf("could not open event socket, socket() failed: %d\n", *v9);
    }

    else
    {
      v6 = v5;
      v23 = 0x300000001;
      v24 = 3;
      if (ioctl(v5, 0x800C6502uLL, &v23))
      {
        v7 = *__error();
        printf("could not establish event filter, ioctl() failed: %d\n");
      }

      else
      {
        LODWORD(v23) = 1;
        if (ioctl(v6, 0x8004667EuLL, &v23))
        {
          v10 = __error();
          printf("could not set non-blocking io, ioctl() failed: %d\n", *v10);
          close(v6);
          v6 = -1;
          if (!fcntl(-1, 2, 0x1000000))
          {
            goto LABEL_17;
          }
        }

        else if (!fcntl(v6, 2, 0x1000000))
        {
LABEL_18:
          v12 = dispatch_get_global_queue(0, 0);
          v13 = dispatch_source_create(MEMORY[0x277D85D28], v6, 0, v12);

          handler[0] = MEMORY[0x277D85DD0];
          handler[1] = 3221225472;
          handler[2] = sub_247FB7340;
          handler[3] = &unk_278EF2898;
          v22 = v6;
          v14 = v13;
          v20 = v14;
          v21 = self;
          dispatch_source_set_event_handler(v14, handler);
          v17[0] = MEMORY[0x277D85DD0];
          v17[1] = 3221225472;
          v17[2] = sub_247FB7470;
          v17[3] = &unk_278EF2820;
          v18 = v6;
          dispatch_source_set_cancel_handler(v14, v17);
          v15 = self->_memoryNotificationSource;
          self->_memoryNotificationSource = v14;
          v16 = v14;

          dispatch_resume(self->_memoryNotificationSource);
          return;
        }

        v11 = *__error();
        printf("could not set close-on-exec, fcntl() failed: %d\n");
      }

      close(v6);
    }

LABEL_17:
    [MEMORY[0x277CBEAD8] raise:@"DTMobileNotificationServiceException" format:@"Memory monitoring disabled due to error."];
    v6 = -1;
    goto LABEL_18;
  }

  if (memoryNotificationSource)
  {
    dispatch_source_cancel(memoryNotificationSource);
    v8 = self->_memoryNotificationSource;
    self->_memoryNotificationSource = 0;
  }
}

@end