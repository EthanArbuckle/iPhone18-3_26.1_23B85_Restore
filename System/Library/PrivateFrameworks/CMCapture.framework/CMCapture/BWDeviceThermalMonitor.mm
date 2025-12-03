@interface BWDeviceThermalMonitor
+ (void)initialize;
- (BWDeviceThermalMonitor)init;
- (int)thermalLevel;
- (uint64_t)_thermalNotification:(uint64_t)result;
- (void)dealloc;
@end

@implementation BWDeviceThermalMonitor

- (BWDeviceThermalMonitor)init
{
  v10.receiver = self;
  v10.super_class = BWDeviceThermalMonitor;
  v2 = [(BWDeviceThermalMonitor *)&v10 init];
  if (v2)
  {
    v3 = FigSimpleMutexCreate();
    *(v2 + 4) = v3;
    if (v3)
    {
      *(v2 + 4) = -1;
      v4 = FigDispatchQueueCreateWithPriority();
      *(v2 + 1) = v4;
      if (v4)
      {
        v5 = [FigWeakReference weakReferenceToObject:v2];
        handler[0] = MEMORY[0x1E69E9820];
        handler[1] = 3221225472;
        handler[2] = __30__BWDeviceThermalMonitor_init__block_invoke;
        handler[3] = &unk_1E7991270;
        handler[4] = v5;
        if (!notify_register_dispatch(*MEMORY[0x1E69E98B8], v2 + 4, *(v2 + 1), handler))
        {
          v6 = *(v2 + 1);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __30__BWDeviceThermalMonitor_init__block_invoke_2;
          block[3] = &unk_1E79907D8;
          block[4] = v2;
          block[5] = handler;
          dispatch_sync(v6, block);
          return v2;
        }

        [BWDeviceThermalMonitor init];
      }

      else
      {
        [BWDeviceThermalMonitor init];
      }
    }

    else
    {
      [BWDeviceThermalMonitor init];
    }

    return 0;
  }

  return v2;
}

void __30__BWDeviceThermalMonitor_init__block_invoke(uint64_t a1, int a2)
{
  v4 = objc_autoreleasePoolPush();
  state64 = 0;
  if (!notify_get_state(a2, &state64))
  {
    v5 = [*(a1 + 32) referencedObject];
    [(BWDeviceThermalMonitor *)v5 _thermalNotification:?];
  }

  objc_autoreleasePoolPop(v4);
}

- (int)thermalLevel
{
  FigSimpleMutexLock();
  thermalLevel = self->_thermalLevel;
  FigSimpleMutexUnlock();
  return thermalLevel;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (void)dealloc
{
  registrationToken = self->_registrationToken;
  if ((registrationToken & 0x80000000) == 0)
  {
    notify_cancel(registrationToken);
  }

  FigSimpleMutexDestroy();
  v4.receiver = self;
  v4.super_class = BWDeviceThermalMonitor;
  [(BWDeviceThermalMonitor *)&v4 dealloc];
}

- (uint64_t)_thermalNotification:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    FigSimpleMutexLock();
    if (a2 <= 4)
    {
      v4 = a2 > 1;
    }

    else
    {
      v4 = 2;
    }

    if (a2 <= 9)
    {
      v5 = v4;
    }

    else
    {
      v5 = 3;
    }

    v6 = *(v3 + 40);
    if (v5 > v6)
    {
      *(v3 + 40) = v5;
    }

    result = FigSimpleMutexUnlock();
    if (v5 > v6)
    {
      result = *(v3 + 24);
      if (result)
      {
        if (dword_1EB58E1C0)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          result = *(v3 + 24);
        }

        return (*(result + 16))(result, v3);
      }
    }
  }

  return result;
}

@end