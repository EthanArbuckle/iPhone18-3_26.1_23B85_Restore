@interface _DKPluggedInMonitor
- (void)deactivate;
- (void)dealloc;
- (void)setCurrentState;
- (void)start;
- (void)stop;
- (void)synchronouslyReflectCurrentValue;
@end

@implementation _DKPluggedInMonitor

- (void)dealloc
{
  [(_DKPluggedInMonitor *)self deactivate];
  v3.receiver = self;
  v3.super_class = _DKPluggedInMonitor;
  [(_DKMonitor *)&v3 dealloc];
}

- (void)setCurrentState
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = _DKPluggedInMonitorLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 67109120;
    LODWORD(v25) = qos_class_self();
    _os_log_impl(&dword_22595A000, v3, OS_LOG_TYPE_DEFAULT, "Querying current state with QoS %d", &v24, 8u);
  }

  v4 = IOPSCopyPowerSourcesInfo();
  if (!v4)
  {
    v9 = _DKPluggedInMonitorLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [_DKPluggedInMonitor setCurrentState];
    }

    goto LABEL_13;
  }

  v5 = v4;
  v6 = IOPSPowerSourceSupported();
  if (!v6)
  {
    v7 = _DKPluggedInMonitorLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [_DKPluggedInMonitor setCurrentState];
    }
  }

  Value = CFBooleanGetValue(v6);
  CFRelease(v5);
  if (Value)
  {
    v9 = IOPSCopyExternalPowerAdapterDetails();
    if (v9)
    {
      v10 = IOPSDrawingUnlimitedPower();
      v11 = [v9 objectForKeyedSubscript:@"FamilyCode"];
      v12 = [v11 integerValue];

      v13 = [v9 objectForKeyedSubscript:@"IsWireless"];
      v14 = [v13 BOOLValue];

LABEL_14:
      goto LABEL_16;
    }

LABEL_13:
    v14 = 0;
    v12 = 0;
    v10 = 0;
    goto LABEL_14;
  }

  v14 = 0;
  v12 = 0;
  v10 = 1;
LABEL_16:
  v15 = _DKPluggedInMonitorLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [MEMORY[0x277CCABB0] numberWithBool:v10];
    v17 = [MEMORY[0x277CCABB0] numberWithInteger:v12];
    v18 = [MEMORY[0x277CCABB0] numberWithBool:v14];
    v24 = 138543874;
    v25 = v16;
    v26 = 2114;
    v27 = v17;
    v28 = 2114;
    v29 = v18;
    _os_log_impl(&dword_22595A000, v15, OS_LOG_TYPE_DEFAULT, "Setting current state plugin:%{public}@, adapterType:%{public}@, wireless:%{public}@", &v24, 0x20u);
  }

  v19 = [(_DKMonitor *)self currentEvent];
  v20 = [_DKPluggedInMonitor _eventWithState:v10 adapterType:v12 isWireless:v14];
  if ([(_DKMonitor *)self historicalStateHasChanged:v20])
  {
    v21 = [objc_opt_class() _BMEventWithState:v10 adapterType:v12 isWireless:v14];
    [(BMSource *)self->_source sendEvent:v21];
  }

  [(_DKMonitor *)self setCurrentEvent:v20 inferHistoricalState:1];
  v22 = _DKPluggedInMonitorLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138412546;
    v25 = v20;
    v26 = 2112;
    v27 = v19;
    _os_log_impl(&dword_22595A000, v22, OS_LOG_TYPE_DEFAULT, "Setting current event: %@, previousEvent: %@", &v24, 0x16u);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)start
{
  v12.receiver = self;
  v12.super_class = _DKPluggedInMonitor;
  if ([(_DKMonitor *)&v12 instantMonitorNeedsActivation])
  {
    v3 = BiomeLibrary();
    v4 = [v3 Device];
    v5 = [v4 Power];
    v6 = [v5 PluggedIn];
    v7 = [v6 source];
    source = self->_source;
    self->_source = v7;

    self->_enabled = 1;
    v9 = [@"com.apple.system.powermanagement.poweradapter" UTF8String];
    v10 = [(_DKMonitor *)self queue];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __28___DKPluggedInMonitor_start__block_invoke;
    handler[3] = &unk_27856F408;
    handler[4] = self;
    notify_register_dispatch(v9, &self->_pluggedInToken, v10, handler);

    [(_DKPluggedInMonitor *)self setCurrentState];
  }
}

- (void)stop
{
  v3.receiver = self;
  v3.super_class = _DKPluggedInMonitor;
  if ([(_DKMonitor *)&v3 instantMonitorNeedsDeactivation])
  {
    [(_DKPluggedInMonitor *)self deactivate];
  }
}

- (void)deactivate
{
  self->_enabled = 0;
  pluggedInToken = self->_pluggedInToken;
  if (pluggedInToken)
  {
    notify_cancel(pluggedInToken);
    self->_pluggedInToken = 0;
  }
}

- (void)synchronouslyReflectCurrentValue
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [(_DKMonitor *)self currentEvent];

  if (!v2)
  {
    v3 = IOPSCopyPowerSourcesInfo();
    if (v3)
    {
      v4 = v3;
      v5 = IOPSPowerSourceSupported();
      if (!v5)
      {
        v6 = _DKPluggedInMonitorLog();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          [_DKPluggedInMonitor setCurrentState];
        }
      }

      Value = CFBooleanGetValue(v5);
      CFRelease(v4);
      if (Value)
      {
        v8 = IOPSDrawingUnlimitedPower();
      }

      else
      {
        v8 = 1;
      }
    }

    else
    {
      v9 = _DKPluggedInMonitorLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [_DKPluggedInMonitor setCurrentState];
      }

      v8 = 0;
    }

    v10 = _DKPluggedInMonitorLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [MEMORY[0x277CCABB0] numberWithBool:v8];
      v13 = 138543362;
      v14 = v11;
      _os_log_impl(&dword_22595A000, v10, OS_LOG_TYPE_DEFAULT, "Synchronously reflecting current plug in status: %{public}@", &v13, 0xCu);
    }

    [_DKPluggedInMonitor setIsPluggedIn:v8];
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end