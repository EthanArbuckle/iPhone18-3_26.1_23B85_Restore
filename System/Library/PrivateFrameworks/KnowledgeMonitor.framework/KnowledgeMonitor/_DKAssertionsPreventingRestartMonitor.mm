@interface _DKAssertionsPreventingRestartMonitor
- (BOOL)areAssertionsPreventingRestart;
- (void)deactivate;
- (void)dealloc;
- (void)start;
- (void)stop;
- (void)synchronouslyReflectCurrentValue;
@end

@implementation _DKAssertionsPreventingRestartMonitor

- (void)synchronouslyReflectCurrentValue
{
  areAssertionsPreventingRestart = [(_DKAssertionsPreventingRestartMonitor *)self areAssertionsPreventingRestart];
  if (self->_lastPreventingRestartAssertionsStatus != areAssertionsPreventingRestart)
  {
    v4 = areAssertionsPreventingRestart;
    v5 = [MEMORY[0x277CCABB0] numberWithBool:areAssertionsPreventingRestart];
    userContext = [MEMORY[0x277CFE318] userContext];
    keyPathForDeviceAssertionsHeldStatus = [MEMORY[0x277CFE338] keyPathForDeviceAssertionsHeldStatus];
    [userContext setObject:v5 forKeyedSubscript:keyPathForDeviceAssertionsHeldStatus];

    self->_lastPreventingRestartAssertionsStatus = v4;
  }
}

- (BOOL)areAssertionsPreventingRestart
{
  v27 = *MEMORY[0x277D85DE8];
  state64 = 0;
  notify_get_state(self->_systemAssertionsToken, &state64);
  if (!state64)
  {
    cf = 0;
    notify_get_state(self->_preventIdleSleepAssertionsToken, &cf);
    if (cf)
    {
      contextChannel = [MEMORY[0x277CFE0C8] contextChannel];
      if (os_log_type_enabled(contextChannel, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v26 = cf;
        _os_log_impl(&dword_22595A000, contextChannel, OS_LOG_TYPE_DEFAULT, "Idle Sleep Preventers Count: %llu", buf, 0xCu);
      }

      IOPMCopySleepPreventersList();
    }

    v21 = 0;
    restarted = IOPMCopyDeviceRestartPreventers();
    if (restarted)
    {
      v7 = restarted;
      contextChannel2 = [MEMORY[0x277CFE0C8] contextChannel];
      if (os_log_type_enabled(contextChannel2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v26) = v7;
        _os_log_impl(&dword_22595A000, contextChannel2, OS_LOG_TYPE_DEFAULT, "Unable to determine restart preventers (Ret=%d)", buf, 8u);
      }
    }

    else
    {
      if (![v21 count])
      {
        v5 = 0;
        goto LABEL_23;
      }

      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      contextChannel2 = 0;
      v9 = [contextChannel2 countByEnumeratingWithState:&v17 objects:v24 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v18;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v18 != v11)
            {
              objc_enumerationMutation(contextChannel2);
            }

            v13 = [*(*(&v17 + 1) + 8 * i) objectForKeyedSubscript:@"AssertName"];
            contextChannel3 = [MEMORY[0x277CFE0C8] contextChannel];
            if (os_log_type_enabled(contextChannel3, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v26 = v13;
              _os_log_impl(&dword_22595A000, contextChannel3, OS_LOG_TYPE_DEFAULT, "Restart preventer: %@", buf, 0xCu);
            }
          }

          v10 = [contextChannel2 countByEnumeratingWithState:&v17 objects:v24 count:16];
        }

        while (v10);
      }
    }

    v5 = 1;
LABEL_23:

    goto LABEL_24;
  }

  contextChannel4 = [MEMORY[0x277CFE0C8] contextChannel];
  if (os_log_type_enabled(contextChannel4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v26 = state64;
    _os_log_impl(&dword_22595A000, contextChannel4, OS_LOG_TYPE_DEFAULT, "System Sleep Preventers Count: %llu", buf, 0xCu);
  }

  cf = 0;
  IOPMCopySleepPreventersList();
  v5 = 1;
LABEL_24:
  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)dealloc
{
  [(_DKAssertionsPreventingRestartMonitor *)self deactivate];
  v3.receiver = self;
  v3.super_class = _DKAssertionsPreventingRestartMonitor;
  [(_DKMonitor *)&v3 dealloc];
}

- (void)start
{
  v13.receiver = self;
  v13.super_class = _DKAssertionsPreventingRestartMonitor;
  if ([(_DKMonitor *)&v13 instantMonitorNeedsActivation])
  {
    queue = [(_DKMonitor *)self queue];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __46___DKAssertionsPreventingRestartMonitor_start__block_invoke;
    handler[3] = &unk_27856F408;
    handler[4] = self;
    notify_register_dispatch("com.apple.powermanagement.idlesleeppreventers", &self->_preventIdleSleepAssertionsToken, queue, handler);

    queue2 = [(_DKMonitor *)self queue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __46___DKAssertionsPreventingRestartMonitor_start__block_invoke_2;
    v11[3] = &unk_27856F408;
    v11[4] = self;
    notify_register_dispatch("com.apple.powermanagement.systemsleeppreventers", &self->_systemAssertionsToken, queue2, v11);

    queue3 = [(_DKMonitor *)self queue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __46___DKAssertionsPreventingRestartMonitor_start__block_invoke_3;
    v10[3] = &unk_27856F408;
    v10[4] = self;
    notify_register_dispatch("com.apple.powermanagement.restartpreventers", &self->_restartPreventerAssertionsToken, queue3, v10);

    areAssertionsPreventingRestart = [(_DKAssertionsPreventingRestartMonitor *)self areAssertionsPreventingRestart];
    v7 = [MEMORY[0x277CCABB0] numberWithBool:areAssertionsPreventingRestart];
    userContext = [MEMORY[0x277CFE318] userContext];
    keyPathForDeviceAssertionsHeldStatus = [MEMORY[0x277CFE338] keyPathForDeviceAssertionsHeldStatus];
    [userContext setObject:v7 forKeyedSubscript:keyPathForDeviceAssertionsHeldStatus];

    self->_lastPreventingRestartAssertionsStatus = areAssertionsPreventingRestart;
  }
}

- (void)stop
{
  v3.receiver = self;
  v3.super_class = _DKAssertionsPreventingRestartMonitor;
  if ([(_DKMonitor *)&v3 instantMonitorNeedsDeactivation])
  {
    [(_DKAssertionsPreventingRestartMonitor *)self deactivate];
  }
}

- (void)deactivate
{
  notify_cancel(self->_userspaceAssertionsToken);
  IOPMAssertionNotify();
  notify_cancel(self->_preventIdleSleepAssertionsToken);
  systemAssertionsToken = self->_systemAssertionsToken;

  notify_cancel(systemAssertionsToken);
}

@end