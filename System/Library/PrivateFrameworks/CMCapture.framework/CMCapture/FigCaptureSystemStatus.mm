@interface FigCaptureSystemStatus
+ (BOOL)clamshellIsClosed;
+ (id)sharedInstance;
+ (void)initialize;
- (FigCaptureSystemStatus)initWithQueue:(id)a3;
- (void)_setupClamshellStateChangeHandler;
- (void)_setupPowerStateChangeHandler;
- (void)clamshellStateChangeHandler:(BOOL)a3;
- (void)dealloc;
- (void)powerStateChangeHandler:(unint64_t)a3 args:(void *)a4;
@end

@implementation FigCaptureSystemStatus

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[FigCaptureSystemStatus sharedInstance];
  }

  return sStatus;
}

FigCaptureSystemStatus *__40__FigCaptureSystemStatus_sharedInstance__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  result = [[FigCaptureSystemStatus alloc] initWithQueue:dispatch_queue_create("com.apple.figcapture.systemstatus", v0)];
  sStatus = result;
  return result;
}

- (FigCaptureSystemStatus)initWithQueue:(id)a3
{
  v9.receiver = self;
  v9.super_class = FigCaptureSystemStatus;
  v4 = [(FigCaptureSystemStatus *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_queue = a3;
    atomic_store(0, &v4->_systemState);
    dispatch_assert_queue_not_V2(a3);
    queue = v5->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__FigCaptureSystemStatus_initWithQueue___block_invoke;
    block[3] = &unk_1E798F870;
    block[4] = v5;
    dispatch_async_and_wait(queue, block);
  }

  return v5;
}

uint64_t __40__FigCaptureSystemStatus_initWithQueue___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setupClamshellStateChangeHandler];
  v2 = *(a1 + 32);

  return [v2 _setupPowerStateChangeHandler];
}

- (void)dealloc
{
  ioNotificationPort = self->_ioNotificationPort;
  if (ioNotificationPort)
  {
    IONotificationPortDestroy(ioNotificationPort);
  }

  serviceNotification = self->_serviceNotification;
  if (serviceNotification)
  {
    IOObjectRelease(serviceNotification);
  }

  if (self->_powerNotifier)
  {
    IODeregisterForSystemPower(&self->_powerNotifier);
  }

  powerNotificationPort = self->_powerNotificationPort;
  if (powerNotificationPort)
  {
    IONotificationPortDestroy(powerNotificationPort);
  }

  powerNotifierConnect = self->_powerNotifierConnect;
  if (powerNotifierConnect)
  {
    IOServiceClose(powerNotifierConnect);
  }

  v7.receiver = self;
  v7.super_class = FigCaptureSystemStatus;
  [(FigCaptureSystemStatus *)&v7 dealloc];
}

- (void)clamshellStateChangeHandler:(BOOL)a3
{
  v3 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = atomic_load(&self->_systemState);
  if (v3)
  {
    if (dword_1EB58E780)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v8 = v5 | 1;
  }

  else
  {
    if ((v5 & 1) == 0)
    {
      return;
    }

    if (dword_1EB58E780)
    {
      v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v8 = v5 & 0xFFFFFFFFFFFFFFFELL;
  }

  if (v8 != v5)
  {
    [(FigCaptureSystemStatus *)self willChangeValueForKey:@"systemState"];
    atomic_store(v8, &self->_systemState);
    [(FigCaptureSystemStatus *)self didChangeValueForKey:@"systemState"];
  }
}

- (void)powerStateChangeHandler:(unint64_t)a3 args:(void *)a4
{
  if (dword_1EB58E780)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  dispatch_assert_queue_V2(self->_queue);
  if (a3 == 3758097024)
  {
    IOAllowPowerChange(self->_powerNotifierConnect, a4);
    v8 = atomic_load(&self->_systemState);
    if (dword_1EB58E780)
    {
      v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v11 = v8 | 2;
    goto LABEL_13;
  }

  if (a3 == 3758097008)
  {
    IOAllowPowerChange(self->_powerNotifierConnect, a4);
  }

  v8 = atomic_load(&self->_systemState);
  if ((v8 & 2) != 0)
  {
    if (dword_1EB58E780)
    {
      v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v11 = v8 & 0xFFFFFFFFFFFFFFFDLL;
LABEL_13:
    if (v11 != v8)
    {
      [(FigCaptureSystemStatus *)self willChangeValueForKey:@"systemState"];
      atomic_store(v11, &self->_systemState);
      [(FigCaptureSystemStatus *)self didChangeValueForKey:@"systemState"];
    }
  }
}

- (void)_setupClamshellStateChangeHandler
{
  dispatch_assert_queue_V2(self->_queue);
  notification = 0;
  v3 = *MEMORY[0x1E696CD60];
  v4 = IONotificationPortCreate(*MEMORY[0x1E696CD60]);
  v5 = IOServiceMatching("IOPMrootDomain");
  MatchingService = IOServiceGetMatchingService(v3, v5);
  if (MatchingService && !IOServiceAddInterestNotification(v4, MatchingService, "IOGeneralInterest", sClamshellStateChangeHandler, self, &notification))
  {
    IONotificationPortSetDispatchQueue(v4, self->_queue);
    self->_ioNotificationPort = v4;
    self->_serviceNotification = notification;
    [(FigCaptureSystemStatus *)self clamshellStateChangeHandler:+[FigCaptureSystemStatus clamshellIsClosed]];
LABEL_4:
    IOObjectRelease(MatchingService);
    return;
  }

  if (v4)
  {
    IONotificationPortDestroy(v4);
  }

  if (notification)
  {
    IOObjectRelease(notification);
  }

  if (MatchingService)
  {
    goto LABEL_4;
  }
}

+ (BOOL)clamshellIsClosed
{
  v2 = IORegistryEntryFromPath(*MEMORY[0x1E696CD60], "IOPower:/IOPowerConnection/IOPMrootDomain");
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  CFProperty = IORegistryEntryCreateCFProperty(v2, @"AppleClamshellState", *MEMORY[0x1E695E480], 0);
  if (CFProperty)
  {
    v5 = CFProperty;
    v6 = CFBooleanGetValue(CFProperty) != 0;
    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  IOObjectRelease(v3);
  return v6;
}

- (void)_setupPowerStateChangeHandler
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = IORegisterForSystemPower(self, &self->_powerNotificationPort, sPowerStateChangeHandler, &self->_powerNotifier);
  self->_powerNotifierConnect = v3;
  if (v3)
  {
    powerNotificationPort = self->_powerNotificationPort;
    if (powerNotificationPort)
    {
      queue = self->_queue;

      IONotificationPortSetDispatchQueue(powerNotificationPort, queue);
    }
  }
}

@end