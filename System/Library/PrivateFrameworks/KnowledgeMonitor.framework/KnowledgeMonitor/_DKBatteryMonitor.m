@interface _DKBatteryMonitor
+ (id)_eventWithBatteryPercentage:(double)a3 isFullyCharged:(BOOL)a4;
+ (void)setCurrentBatteryPercentage:(double)a3;
- (BOOL)adapterType:(id)a3 differsFrom:(id)a4;
- (BOOL)externalConnected:(id)a3 differsFrom:(id)a4;
- (BOOL)fullyCharged:(id)a3 differsFrom:(id)a4;
- (BOOL)fullyChargedFromPowerSourceDictionary:(id)a3;
- (BOOL)isCharging:(id)a3 differsFrom:(id)a4;
- (BOOL)newBatteryState:(id)a3 differsSignificantlyFromState:(id)a4 currentBatteryPercentage:(double)a5 previousBatteryPercentage:(double)a6;
- (BOOL)percentage:(double)a3 differsFrom:(double)a4;
- (BOOL)temperature:(id)a3 differsFrom:(id)a4;
- (BOOL)voltage:(id)a3 differsFrom:(id)a4;
- (double)batteryPercentageFromPowerSourceDictionary:(id)a3;
- (double)currentBatteryPercentage;
- (id)getBatteryProperties;
- (void)_handleBatteryNotification;
- (void)_registerIOPSNotifyAttachListener;
- (void)batteryStateChangeHandler;
- (void)completeStart;
- (void)currentBatteryPercentage;
- (void)deactivate;
- (void)dealloc;
- (void)getBatteryProperties;
- (void)postImminentShutdownNotification:(double)a3;
- (void)start;
- (void)stop;
- (void)synchronouslyReflectCurrentValue;
- (void)updateBatteryStateDictionary:(id)a3 currentBatteryPercentage:(double)a4;
@end

@implementation _DKBatteryMonitor

- (void)batteryStateChangeHandler
{
  v10 = [(_DKBatteryMonitor *)self getBatteryProperties];
  [(_DKBatteryMonitor *)self batteryPercentageFromPowerSourceDictionary:?];
  v4 = v3;
  if (v3 != -1.0)
  {
    v5 = [(_DKBatteryMonitor *)self fullyChargedFromPowerSourceDictionary:v10];
    [(_DKBatteryMonitor *)self updateBatteryStateDictionary:v10 currentBatteryPercentage:v4];
    if (vabdd_f64(self->_previousPercentage, v4) >= 1.0 || self->_previouslyFullyCharged != v5)
    {
      v6 = objc_opt_class();
      [v6 setCurrentBatteryPercentage:v4];
      v7 = [v6 _eventWithBatteryPercentage:v5 isFullyCharged:v4];
      [(_DKMonitor *)self setCurrentEvent:v7 inferHistoricalState:1];

      source = self->_source;
      v9 = [objc_opt_class() _BMEventWithBatteryPercentage:v5 isFullyCharged:v4];
      [(BMSource *)source sendEvent:v9];

      self->_previousPercentage = v4;
      self->_previouslyFullyCharged = v5;
      [(_DKBatteryMonitor *)self postImminentShutdownNotification:v4];
    }
  }
}

- (id)getBatteryProperties
{
  powerService = self->_powerService;
  if (powerService)
  {
    properties = 0;
    if (IORegistryEntryCreateCFProperties(powerService, &properties, *MEMORY[0x277CBECE8], 0))
    {
      v3 = [MEMORY[0x277CFE0C8] contextChannel];
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        [_DKBatteryMonitor getBatteryProperties];
      }

      v4 = MEMORY[0x277CBEC10];
    }

    else
    {
      v3 = properties;
      v4 = [(__CFDictionary *)properties copy];
    }
  }

  else
  {
    v4 = MEMORY[0x277CBEC10];
  }

  return v4;
}

- (void)_handleBatteryNotification
{
  v3 = [(_DKMonitor *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(_DKBatteryMonitor *)v3 _handleBatteryNotification];
  }

  v4 = os_transaction_create();
  v5 = objc_autoreleasePoolPush();
  [(_DKBatteryMonitor *)self _queue_handleNotification];
  objc_autoreleasePoolPop(v5);
}

- (void)dealloc
{
  [(_DKBatteryMonitor *)self deactivate];
  v3.receiver = self;
  v3.super_class = _DKBatteryMonitor;
  [(_DKMonitor *)&v3 dealloc];
}

+ (void)setCurrentBatteryPercentage:(double)a3
{
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  v3 = [MEMORY[0x277CFE318] userContext];
  v4 = [MEMORY[0x277CFE338] keyPathForBatteryLevel];
  [v3 setObject:v5 forKeyedSubscript:v4];
}

+ (id)_eventWithBatteryPercentage:(double)a3 isFullyCharged:(BOOL)a4
{
  v4 = a4;
  v17[1] = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CFE190] withBatteryPercentage:a3];
  if (v4)
  {
    v6 = [MEMORY[0x277CFE1C0] fullyCharged];
    v16 = v6;
    v7 = [MEMORY[0x277CCABB0] numberWithBool:1];
    v17[0] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  }

  else
  {
    v8 = 0;
  }

  v9 = MEMORY[0x277CFE1D8];
  v10 = [MEMORY[0x277CFE298] deviceBatteryPercentageStream];
  v11 = [MEMORY[0x277CBEAA8] date];
  v12 = [MEMORY[0x277CBEAA8] distantFuture];
  v13 = [v9 eventWithStream:v10 startDate:v11 endDate:v12 value:v5 metadata:v8];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)start
{
  v21.receiver = self;
  v21.super_class = _DKBatteryMonitor;
  if ([(_DKMonitor *)&v21 instantMonitorNeedsActivation])
  {
    v3 = BiomeLibrary();
    v4 = [v3 Device];
    v5 = [v4 Power];
    v6 = [v5 BatteryLevel];
    v7 = [v6 source];
    source = self->_source;
    self->_source = v7;

    v9 = [MEMORY[0x277CFE318] userContext];
    v10 = [MEMORY[0x277CFE338] keyPathForBatteryStateDataDictionary];
    v11 = [v9 objectForKeyedSubscript:v10];
    previousBatteryState = self->_previousBatteryState;
    self->_previousBatteryState = v11;

    v13 = self->_previousBatteryState;
    v14 = [MEMORY[0x277CFE338] batteryPercentageKey];
    v15 = [(NSDictionary *)v13 objectForKeyedSubscript:v14];
    [v15 doubleValue];
    self->_previousPercentage = v16;

    v17 = IOPSCopyPowerSourcesInfo();
    if (v17)
    {
      v18 = v17;
      v19 = IOPSPowerSourceSupported();
      self->_hasInternalBattery = CFBooleanGetValue(v19) != 0;
      CFRelease(v18);
      [(_DKBatteryMonitor *)self completeStart];
    }

    else
    {
      v20 = [MEMORY[0x277CFE0C8] contextChannel];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [_DKBatteryMonitor start];
      }

      [(_DKBatteryMonitor *)self _registerIOPSNotifyAttachListener];
    }
  }
}

- (void)_registerIOPSNotifyAttachListener
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_fault_impl(&dword_22595A000, log, OS_LOG_TYPE_FAULT, "Failed to register for battery attach notification: %@", buf, 0xCu);
}

- (void)completeStart
{
  v3 = a1;
  v8 = *MEMORY[0x277D85DE8];
  if (a1 == 256)
  {
    v4 = @"unable to get power service or notify port";
  }

  else
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInt:a1];
  }

  v6 = 138412290;
  v7 = v4;
  _os_log_error_impl(&dword_22595A000, log, OS_LOG_TYPE_ERROR, "Unable to register for battery notifications: %@", &v6, 0xCu);
  if (v3 != 256)
  {
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)stop
{
  v3.receiver = self;
  v3.super_class = _DKBatteryMonitor;
  if ([(_DKMonitor *)&v3 instantMonitorNeedsDeactivation])
  {
    [(_DKBatteryMonitor *)self deactivate];
  }
}

- (void)deactivate
{
  batteryNotification = self->_batteryNotification;
  if (batteryNotification)
  {
    IOObjectRelease(batteryNotification);
  }

  notifyPort = self->_notifyPort;
  if (notifyPort)
  {
    IONotificationPortDestroy(notifyPort);
  }

  powerService = self->_powerService;
  if (powerService)
  {

    IOObjectRelease(powerService);
  }
}

- (void)postImminentShutdownNotification:(double)a3
{
  if (self->_immediateShutdownThreshold <= a3 || (IOPSDrawingUnlimitedPower() & 1) != 0)
  {
    postImminentShutdownNotification__posted = 0;
  }

  else if ((postImminentShutdownNotification__posted & 1) == 0)
  {
    postImminentShutdownNotification__posted = 1;

    notify_post("com.apple.DuetHeuristic-BM.shutdowsoon");
  }
}

- (void)synchronouslyReflectCurrentValue
{
  if (self->_hasInternalBattery)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = [(_DKBatteryMonitor *)self getBatteryProperties];
    [(_DKBatteryMonitor *)self batteryPercentageFromPowerSourceDictionary:v5];
    v7 = v6;
    if (v6 != -1.0)
    {
      [(_DKBatteryMonitor *)self updateBatteryStateDictionary:v5 currentBatteryPercentage:v6];
      if (vabdd_f64(self->_previousPercentage, v7) >= 1.0)
      {
        [_DKBatteryMonitor setCurrentBatteryPercentage:v7];
        [(_DKBatteryMonitor *)self postImminentShutdownNotification:v7];
        self->_previousPercentage = v7;
      }
    }

    objc_autoreleasePoolPop(v4);
  }
}

- (BOOL)percentage:(double)a3 differsFrom:(double)a4
{
  v4 = a3 - a4;
  if (v4 < 0.0)
  {
    v4 = -v4;
  }

  return v4 >= 1.0;
}

- (BOOL)temperature:(id)a3 differsFrom:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 | v6)
  {
    v8 = 1;
    if (v5 && v6)
    {
      if (__ROR8__(0x8F5C28F5C28F5C29 * [v5 integerValue] + 0x51EB851EB851EB8, 2) > 0x28F5C28F5C28F5CuLL || __ROR8__(0x51EB851EB851EB8 - 0x70A3D70A3D70A3D7 * objc_msgSend(v7, "integerValue"), 2) <= 0x28F5C28F5C28F5CuLL)
      {
        [v5 doubleValue];
        v10 = v9;
        [v7 doubleValue];
        v12 = v10 - v11;
        if (v12 < 0.0)
        {
          v12 = -v12;
        }

        v8 = v12 >= 50.0;
      }

      else
      {
        v8 = 1;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)voltage:(id)a3 differsFrom:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 | v6)
  {
    v8 = 1;
    if (v5 && v6)
    {
      if (__ROR8__(0x8F5C28F5C28F5C29 * [v5 integerValue] + 0x51EB851EB851EB8, 1) > 0x51EB851EB851EB8uLL || __ROR8__(0x8F5C28F5C28F5C29 * objc_msgSend(v7, "integerValue") + 0x51EB851EB851EB8, 1) <= 0x51EB851EB851EB8uLL)
      {
        v9 = [v5 integerValue];
        v10 = [v7 integerValue];
        v11 = v9 - v10;
        if (v9 - v10 < 0)
        {
          v11 = v10 - v9;
        }

        v8 = v11 > 0x63;
      }

      else
      {
        v8 = 1;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)fullyCharged:(id)a3 differsFrom:(id)a4
{
  v5 = a4;
  LOBYTE(a3) = [a3 BOOLValue];
  v6 = [v5 BOOLValue];

  return a3 ^ v6;
}

- (BOOL)isCharging:(id)a3 differsFrom:(id)a4
{
  v5 = a4;
  LOBYTE(a3) = [a3 BOOLValue];
  v6 = [v5 BOOLValue];

  return a3 ^ v6;
}

- (BOOL)externalConnected:(id)a3 differsFrom:(id)a4
{
  v5 = a4;
  LOBYTE(a3) = [a3 BOOLValue];
  v6 = [v5 BOOLValue];

  return a3 ^ v6;
}

- (BOOL)adapterType:(id)a3 differsFrom:(id)a4
{
  v5 = a4;
  v6 = [a3 integerValue];
  v7 = [v5 integerValue];

  return v6 != v7;
}

- (BOOL)newBatteryState:(id)a3 differsSignificantlyFromState:(id)a4 currentBatteryPercentage:(double)a5 previousBatteryPercentage:(double)a6
{
  v10 = a3;
  v11 = a4;
  v12 = v11;
  if (v10 | v11)
  {
    v13 = 1;
    if (v10 && v11)
    {
      v48 = [(_DKBatteryMonitor *)self percentage:a5 differsFrom:a6];
      v14 = [MEMORY[0x277CFE338] batteryTemperatureKey];
      v15 = [v10 objectForKeyedSubscript:v14];
      v16 = [MEMORY[0x277CFE338] batteryTemperatureKey];
      v17 = [v12 objectForKeyedSubscript:v16];
      v47 = [(_DKBatteryMonitor *)self temperature:v15 differsFrom:v17];

      v18 = [MEMORY[0x277CFE338] batteryVoltageKey];
      v19 = [v10 objectForKeyedSubscript:v18];
      v20 = [MEMORY[0x277CFE338] batteryVoltageKey];
      v21 = [v12 objectForKeyedSubscript:v20];
      v46 = [(_DKBatteryMonitor *)self voltage:v19 differsFrom:v21];

      v22 = [MEMORY[0x277CFE338] batteryFullyChargedKey];
      v23 = [v10 objectForKeyedSubscript:v22];
      v24 = [MEMORY[0x277CFE338] batteryFullyChargedKey];
      v25 = [v12 objectForKeyedSubscript:v24];
      v45 = [(_DKBatteryMonitor *)self fullyCharged:v23 differsFrom:v25];

      v26 = [MEMORY[0x277CFE338] batteryIsChargingKey];
      v27 = [v10 objectForKeyedSubscript:v26];
      v28 = [MEMORY[0x277CFE338] batteryIsChargingKey];
      v29 = [v12 objectForKeyedSubscript:v28];
      v44 = [(_DKBatteryMonitor *)self isCharging:v27 differsFrom:v29];

      v30 = [MEMORY[0x277CFE338] batteryExternalConnectedKey];
      v31 = [v10 objectForKeyedSubscript:v30];
      v32 = [MEMORY[0x277CFE338] batteryExternalConnectedKey];
      v33 = [v12 objectForKeyedSubscript:v32];
      LOBYTE(v27) = [(_DKBatteryMonitor *)self externalConnected:v31 differsFrom:v33];

      v34 = [MEMORY[0x277CFE338] batteryRawExternalConnectedKey];
      v35 = [v10 objectForKeyedSubscript:v34];
      v36 = [MEMORY[0x277CFE338] batteryRawExternalConnectedKey];
      v37 = [v12 objectForKeyedSubscript:v36];
      LOBYTE(v32) = [(_DKBatteryMonitor *)self externalConnected:v35 differsFrom:v37];

      v38 = [MEMORY[0x277CFE338] batteryAdapterTypeKey];
      v39 = [v10 objectForKeyedSubscript:v38];
      v40 = [MEMORY[0x277CFE338] batteryAdapterTypeKey];
      v41 = [v12 objectForKeyedSubscript:v40];
      v42 = [(_DKBatteryMonitor *)self adapterType:v39 differsFrom:v41];

      v13 = (v48 || v47 || v46 || v45) | v44 | v27 | v32 | v42;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

- (double)currentBatteryPercentage
{
  v2 = IOPSGetPercentRemaining();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [MEMORY[0x277CFE0C8] contextChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(_DKBatteryMonitor *)v3 currentBatteryPercentage];
  }

  return -1.0;
}

- (double)batteryPercentageFromPowerSourceDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"MaxCapacity"];

  if (v4)
  {
    v5 = [v3 objectForKeyedSubscript:@"CurrentCapacity"];
    [v5 doubleValue];
    v7 = v6 * 100.0;
    v8 = [v3 objectForKeyedSubscript:@"MaxCapacity"];
    [v8 doubleValue];
    v10 = v7 / v9;
  }

  else
  {
    v11 = [MEMORY[0x277CFE0C8] contextChannel];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [_DKBatteryMonitor batteryPercentageFromPowerSourceDictionary:];
    }

    v10 = -1.0;
  }

  return v10;
}

- (BOOL)fullyChargedFromPowerSourceDictionary:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"FullyCharged"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (void)updateBatteryStateDictionary:(id)a3 currentBatteryPercentage:(double)a4
{
  v63 = a3;
  v6 = self;
  objc_sync_enter(v6);
  v7 = objc_autoreleasePoolPush();
  v8 = [v63 objectForKeyedSubscript:@"ExternalConnected"];
  v9 = [v8 BOOLValue];

  v10 = [MEMORY[0x277CBEB38] dictionary];
  if (a4 > 0.0)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
    v12 = [MEMORY[0x277CFE338] batteryPercentageKey];
    [v10 setObject:v11 forKeyedSubscript:v12];
  }

  v13 = [v63 objectForKeyedSubscript:@"Voltage"];
  v14 = [MEMORY[0x277CFE338] batteryVoltageKey];
  [v10 setObject:v13 forKeyedSubscript:v14];

  v15 = [v63 objectForKeyedSubscript:@"Temperature"];
  v16 = [MEMORY[0x277CFE338] batteryTemperatureKey];
  [v10 setObject:v15 forKeyedSubscript:v16];

  v17 = [MEMORY[0x277CCABB0] numberWithBool:v9];
  v18 = [MEMORY[0x277CFE338] batteryExternalConnectedKey];
  [v10 setObject:v17 forKeyedSubscript:v18];

  v19 = [v63 objectForKeyedSubscript:@"AppleRawExternalConnected"];
  v20 = [MEMORY[0x277CFE338] batteryRawExternalConnectedKey];
  [v10 setObject:v19 forKeyedSubscript:v20];

  v21 = [v63 objectForKeyedSubscript:@"FullyCharged"];
  v22 = [MEMORY[0x277CFE338] batteryFullyChargedKey];
  [v10 setObject:v21 forKeyedSubscript:v22];

  v23 = [v63 objectForKeyedSubscript:@"IsCharging"];
  v24 = [MEMORY[0x277CFE338] batteryIsChargingKey];
  [v10 setObject:v23 forKeyedSubscript:v24];
  context = v7;

  previousBatteryState = v6->_previousBatteryState;
  v26 = [MEMORY[0x277CFE338] batteryExternalConnectedKey];
  v27 = [(NSDictionary *)previousBatteryState objectForKeyedSubscript:v26];

  if (v27 && ([MEMORY[0x277CFE338] batteryExternalConnectedKey], v28 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "objectForKeyedSubscript:", v28), v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v29, "isEqual:", v27), v29, v28, (v30 & 1) != 0))
  {
    v31 = v6->_previousBatteryState;
    v32 = [MEMORY[0x277CFE338] batteryExternalConnectedChangeDateKey];
    v33 = [(NSDictionary *)v31 objectForKeyedSubscript:v32];
    v34 = [MEMORY[0x277CFE338] batteryExternalConnectedChangeDateKey];
    [v10 setObject:v33 forKeyedSubscript:v34];
  }

  else
  {
    v32 = [MEMORY[0x277CBEAA8] date];
    v33 = [MEMORY[0x277CFE338] batteryExternalConnectedChangeDateKey];
    [v10 setObject:v32 forKeyedSubscript:v33];
  }

  v35 = v6->_previousBatteryState;
  v36 = [MEMORY[0x277CFE338] batteryRawExternalConnectedKey];
  v37 = [(NSDictionary *)v35 objectForKeyedSubscript:v36];

  if (v37 && ([MEMORY[0x277CFE338] batteryRawExternalConnectedKey], v38 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "objectForKeyedSubscript:", v38), v39 = objc_claimAutoreleasedReturnValue(), v40 = objc_msgSend(v39, "isEqual:", v37), v39, v38, (v40 & 1) != 0))
  {
    v41 = v6->_previousBatteryState;
    v42 = [MEMORY[0x277CFE338] batteryRawExternalConnectedChangeDateKey];
    v43 = [(NSDictionary *)v41 objectForKeyedSubscript:v42];
    v44 = [MEMORY[0x277CFE338] batteryRawExternalConnectedChangeDateKey];
    [v10 setObject:v43 forKeyedSubscript:v44];
  }

  else
  {
    v42 = [MEMORY[0x277CBEAA8] date];
    v43 = [MEMORY[0x277CFE338] batteryRawExternalConnectedChangeDateKey];
    [v10 setObject:v42 forKeyedSubscript:v43];
  }

  v45 = [v63 objectForKeyedSubscript:@"BatteryInstalled"];

  if (!v45)
  {
    v46 = [MEMORY[0x277CFE338] batteryPercentageKey];
    [v10 setObject:&unk_2838F7890 forKeyedSubscript:v46];

    v47 = [MEMORY[0x277CFE338] batteryExternalConnectedKey];
    [v10 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v47];

    v48 = [MEMORY[0x277CBEAA8] distantPast];
    v49 = [MEMORY[0x277CFE338] batteryExternalConnectedChangeDateKey];
    [v10 setObject:v48 forKeyedSubscript:v49];

    v50 = [MEMORY[0x277CFE338] batteryRawExternalConnectedKey];
    [v10 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v50];

    v51 = [MEMORY[0x277CBEAA8] distantPast];
    v52 = [MEMORY[0x277CFE338] batteryRawExternalConnectedChangeDateKey];
    [v10 setObject:v51 forKeyedSubscript:v52];

    v53 = [MEMORY[0x277CFE338] batteryFullyChargedKey];
    [v10 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v53];
  }

  v54 = [v63 objectForKeyedSubscript:@"AdapterDetails"];
  v55 = [v54 objectForKeyedSubscript:@"FamilyCode"];
  v56 = [MEMORY[0x277CFE338] batteryAdapterTypeKey];
  [v10 setObject:v55 forKeyedSubscript:v56];

  v57 = [v54 objectForKeyedSubscript:@"IsWireless"];
  v58 = [MEMORY[0x277CFE338] batteryAdapterIsWirelessKey];
  [v10 setObject:v57 forKeyedSubscript:v58];

  if ([(_DKBatteryMonitor *)v6 newBatteryState:v10 differsSignificantlyFromState:v6->_previousBatteryState currentBatteryPercentage:a4 previousBatteryPercentage:v6->_previousPercentage])
  {
    objc_storeStrong(&v6->_previousBatteryState, v10);
    v59 = v6->_previousBatteryState;
    v60 = [MEMORY[0x277CFE318] userContext];
    v61 = [MEMORY[0x277CFE338] keyPathForBatteryStateDataDictionary];
    [v60 setObject:v59 forKeyedSubscript:v61];
  }

  objc_autoreleasePoolPop(context);
  objc_sync_exit(v6);
}

- (void)getBatteryProperties
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)currentBatteryPercentage
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithInt:a1];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_22595A000, a2, OS_LOG_TYPE_ERROR, "Unable to get valid battery level: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)batteryPercentageFromPowerSourceDictionary:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end