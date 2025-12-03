@interface _DKBatteryMonitor
+ (id)_eventWithBatteryPercentage:(double)percentage isFullyCharged:(BOOL)charged;
+ (void)setCurrentBatteryPercentage:(double)percentage;
- (BOOL)adapterType:(id)type differsFrom:(id)from;
- (BOOL)externalConnected:(id)connected differsFrom:(id)from;
- (BOOL)fullyCharged:(id)charged differsFrom:(id)from;
- (BOOL)fullyChargedFromPowerSourceDictionary:(id)dictionary;
- (BOOL)isCharging:(id)charging differsFrom:(id)from;
- (BOOL)newBatteryState:(id)state differsSignificantlyFromState:(id)fromState currentBatteryPercentage:(double)percentage previousBatteryPercentage:(double)batteryPercentage;
- (BOOL)percentage:(double)percentage differsFrom:(double)from;
- (BOOL)temperature:(id)temperature differsFrom:(id)from;
- (BOOL)voltage:(id)voltage differsFrom:(id)from;
- (double)batteryPercentageFromPowerSourceDictionary:(id)dictionary;
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
- (void)postImminentShutdownNotification:(double)notification;
- (void)start;
- (void)stop;
- (void)synchronouslyReflectCurrentValue;
- (void)updateBatteryStateDictionary:(id)dictionary currentBatteryPercentage:(double)percentage;
@end

@implementation _DKBatteryMonitor

- (void)batteryStateChangeHandler
{
  getBatteryProperties = [(_DKBatteryMonitor *)self getBatteryProperties];
  [(_DKBatteryMonitor *)self batteryPercentageFromPowerSourceDictionary:?];
  v4 = v3;
  if (v3 != -1.0)
  {
    v5 = [(_DKBatteryMonitor *)self fullyChargedFromPowerSourceDictionary:getBatteryProperties];
    [(_DKBatteryMonitor *)self updateBatteryStateDictionary:getBatteryProperties currentBatteryPercentage:v4];
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
      contextChannel = [MEMORY[0x277CFE0C8] contextChannel];
      if (os_log_type_enabled(contextChannel, OS_LOG_TYPE_ERROR))
      {
        [_DKBatteryMonitor getBatteryProperties];
      }

      v4 = MEMORY[0x277CBEC10];
    }

    else
    {
      contextChannel = properties;
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

+ (void)setCurrentBatteryPercentage:(double)percentage
{
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:percentage];
  userContext = [MEMORY[0x277CFE318] userContext];
  keyPathForBatteryLevel = [MEMORY[0x277CFE338] keyPathForBatteryLevel];
  [userContext setObject:v5 forKeyedSubscript:keyPathForBatteryLevel];
}

+ (id)_eventWithBatteryPercentage:(double)percentage isFullyCharged:(BOOL)charged
{
  chargedCopy = charged;
  v17[1] = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CFE190] withBatteryPercentage:percentage];
  if (chargedCopy)
  {
    fullyCharged = [MEMORY[0x277CFE1C0] fullyCharged];
    v16 = fullyCharged;
    v7 = [MEMORY[0x277CCABB0] numberWithBool:1];
    v17[0] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  }

  else
  {
    v8 = 0;
  }

  v9 = MEMORY[0x277CFE1D8];
  deviceBatteryPercentageStream = [MEMORY[0x277CFE298] deviceBatteryPercentageStream];
  date = [MEMORY[0x277CBEAA8] date];
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  v13 = [v9 eventWithStream:deviceBatteryPercentageStream startDate:date endDate:distantFuture value:v5 metadata:v8];

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
    device = [v3 Device];
    power = [device Power];
    batteryLevel = [power BatteryLevel];
    source = [batteryLevel source];
    source = self->_source;
    self->_source = source;

    userContext = [MEMORY[0x277CFE318] userContext];
    keyPathForBatteryStateDataDictionary = [MEMORY[0x277CFE338] keyPathForBatteryStateDataDictionary];
    v11 = [userContext objectForKeyedSubscript:keyPathForBatteryStateDataDictionary];
    previousBatteryState = self->_previousBatteryState;
    self->_previousBatteryState = v11;

    v13 = self->_previousBatteryState;
    batteryPercentageKey = [MEMORY[0x277CFE338] batteryPercentageKey];
    v15 = [(NSDictionary *)v13 objectForKeyedSubscript:batteryPercentageKey];
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
      contextChannel = [MEMORY[0x277CFE0C8] contextChannel];
      if (os_log_type_enabled(contextChannel, OS_LOG_TYPE_ERROR))
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
  *(buf + 4) = self;
  _os_log_fault_impl(&dword_22595A000, log, OS_LOG_TYPE_FAULT, "Failed to register for battery attach notification: %@", buf, 0xCu);
}

- (void)completeStart
{
  selfCopy = self;
  v8 = *MEMORY[0x277D85DE8];
  if (self == 256)
  {
    v4 = @"unable to get power service or notify port";
  }

  else
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInt:self];
  }

  v6 = 138412290;
  v7 = v4;
  _os_log_error_impl(&dword_22595A000, log, OS_LOG_TYPE_ERROR, "Unable to register for battery notifications: %@", &v6, 0xCu);
  if (selfCopy != 256)
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

- (void)postImminentShutdownNotification:(double)notification
{
  if (self->_immediateShutdownThreshold <= notification || (IOPSDrawingUnlimitedPower() & 1) != 0)
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
    getBatteryProperties = [(_DKBatteryMonitor *)self getBatteryProperties];
    [(_DKBatteryMonitor *)self batteryPercentageFromPowerSourceDictionary:getBatteryProperties];
    v7 = v6;
    if (v6 != -1.0)
    {
      [(_DKBatteryMonitor *)self updateBatteryStateDictionary:getBatteryProperties currentBatteryPercentage:v6];
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

- (BOOL)percentage:(double)percentage differsFrom:(double)from
{
  v4 = percentage - from;
  if (v4 < 0.0)
  {
    v4 = -v4;
  }

  return v4 >= 1.0;
}

- (BOOL)temperature:(id)temperature differsFrom:(id)from
{
  temperatureCopy = temperature;
  fromCopy = from;
  v7 = fromCopy;
  if (temperatureCopy | fromCopy)
  {
    v8 = 1;
    if (temperatureCopy && fromCopy)
    {
      if (__ROR8__(0x8F5C28F5C28F5C29 * [temperatureCopy integerValue] + 0x51EB851EB851EB8, 2) > 0x28F5C28F5C28F5CuLL || __ROR8__(0x51EB851EB851EB8 - 0x70A3D70A3D70A3D7 * objc_msgSend(v7, "integerValue"), 2) <= 0x28F5C28F5C28F5CuLL)
      {
        [temperatureCopy doubleValue];
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

- (BOOL)voltage:(id)voltage differsFrom:(id)from
{
  voltageCopy = voltage;
  fromCopy = from;
  v7 = fromCopy;
  if (voltageCopy | fromCopy)
  {
    v8 = 1;
    if (voltageCopy && fromCopy)
    {
      if (__ROR8__(0x8F5C28F5C28F5C29 * [voltageCopy integerValue] + 0x51EB851EB851EB8, 1) > 0x51EB851EB851EB8uLL || __ROR8__(0x8F5C28F5C28F5C29 * objc_msgSend(v7, "integerValue") + 0x51EB851EB851EB8, 1) <= 0x51EB851EB851EB8uLL)
      {
        integerValue = [voltageCopy integerValue];
        integerValue2 = [v7 integerValue];
        v11 = integerValue - integerValue2;
        if (integerValue - integerValue2 < 0)
        {
          v11 = integerValue2 - integerValue;
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

- (BOOL)fullyCharged:(id)charged differsFrom:(id)from
{
  fromCopy = from;
  LOBYTE(charged) = [charged BOOLValue];
  bOOLValue = [fromCopy BOOLValue];

  return charged ^ bOOLValue;
}

- (BOOL)isCharging:(id)charging differsFrom:(id)from
{
  fromCopy = from;
  LOBYTE(charging) = [charging BOOLValue];
  bOOLValue = [fromCopy BOOLValue];

  return charging ^ bOOLValue;
}

- (BOOL)externalConnected:(id)connected differsFrom:(id)from
{
  fromCopy = from;
  LOBYTE(connected) = [connected BOOLValue];
  bOOLValue = [fromCopy BOOLValue];

  return connected ^ bOOLValue;
}

- (BOOL)adapterType:(id)type differsFrom:(id)from
{
  fromCopy = from;
  integerValue = [type integerValue];
  integerValue2 = [fromCopy integerValue];

  return integerValue != integerValue2;
}

- (BOOL)newBatteryState:(id)state differsSignificantlyFromState:(id)fromState currentBatteryPercentage:(double)percentage previousBatteryPercentage:(double)batteryPercentage
{
  stateCopy = state;
  fromStateCopy = fromState;
  v12 = fromStateCopy;
  if (stateCopy | fromStateCopy)
  {
    v13 = 1;
    if (stateCopy && fromStateCopy)
    {
      v48 = [(_DKBatteryMonitor *)self percentage:percentage differsFrom:batteryPercentage];
      batteryTemperatureKey = [MEMORY[0x277CFE338] batteryTemperatureKey];
      v15 = [stateCopy objectForKeyedSubscript:batteryTemperatureKey];
      batteryTemperatureKey2 = [MEMORY[0x277CFE338] batteryTemperatureKey];
      v17 = [v12 objectForKeyedSubscript:batteryTemperatureKey2];
      v47 = [(_DKBatteryMonitor *)self temperature:v15 differsFrom:v17];

      batteryVoltageKey = [MEMORY[0x277CFE338] batteryVoltageKey];
      v19 = [stateCopy objectForKeyedSubscript:batteryVoltageKey];
      batteryVoltageKey2 = [MEMORY[0x277CFE338] batteryVoltageKey];
      v21 = [v12 objectForKeyedSubscript:batteryVoltageKey2];
      v46 = [(_DKBatteryMonitor *)self voltage:v19 differsFrom:v21];

      batteryFullyChargedKey = [MEMORY[0x277CFE338] batteryFullyChargedKey];
      v23 = [stateCopy objectForKeyedSubscript:batteryFullyChargedKey];
      batteryFullyChargedKey2 = [MEMORY[0x277CFE338] batteryFullyChargedKey];
      v25 = [v12 objectForKeyedSubscript:batteryFullyChargedKey2];
      v45 = [(_DKBatteryMonitor *)self fullyCharged:v23 differsFrom:v25];

      batteryIsChargingKey = [MEMORY[0x277CFE338] batteryIsChargingKey];
      v27 = [stateCopy objectForKeyedSubscript:batteryIsChargingKey];
      batteryIsChargingKey2 = [MEMORY[0x277CFE338] batteryIsChargingKey];
      v29 = [v12 objectForKeyedSubscript:batteryIsChargingKey2];
      v44 = [(_DKBatteryMonitor *)self isCharging:v27 differsFrom:v29];

      batteryExternalConnectedKey = [MEMORY[0x277CFE338] batteryExternalConnectedKey];
      v31 = [stateCopy objectForKeyedSubscript:batteryExternalConnectedKey];
      batteryExternalConnectedKey2 = [MEMORY[0x277CFE338] batteryExternalConnectedKey];
      v33 = [v12 objectForKeyedSubscript:batteryExternalConnectedKey2];
      LOBYTE(v27) = [(_DKBatteryMonitor *)self externalConnected:v31 differsFrom:v33];

      batteryRawExternalConnectedKey = [MEMORY[0x277CFE338] batteryRawExternalConnectedKey];
      v35 = [stateCopy objectForKeyedSubscript:batteryRawExternalConnectedKey];
      batteryRawExternalConnectedKey2 = [MEMORY[0x277CFE338] batteryRawExternalConnectedKey];
      v37 = [v12 objectForKeyedSubscript:batteryRawExternalConnectedKey2];
      LOBYTE(batteryExternalConnectedKey2) = [(_DKBatteryMonitor *)self externalConnected:v35 differsFrom:v37];

      batteryAdapterTypeKey = [MEMORY[0x277CFE338] batteryAdapterTypeKey];
      v39 = [stateCopy objectForKeyedSubscript:batteryAdapterTypeKey];
      batteryAdapterTypeKey2 = [MEMORY[0x277CFE338] batteryAdapterTypeKey];
      v41 = [v12 objectForKeyedSubscript:batteryAdapterTypeKey2];
      v42 = [(_DKBatteryMonitor *)self adapterType:v39 differsFrom:v41];

      v13 = (v48 || v47 || v46 || v45) | v44 | v27 | batteryExternalConnectedKey2 | v42;
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
  contextChannel = [MEMORY[0x277CFE0C8] contextChannel];
  if (os_log_type_enabled(contextChannel, OS_LOG_TYPE_ERROR))
  {
    [(_DKBatteryMonitor *)v3 currentBatteryPercentage];
  }

  return -1.0;
}

- (double)batteryPercentageFromPowerSourceDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"MaxCapacity"];

  if (v4)
  {
    v5 = [dictionaryCopy objectForKeyedSubscript:@"CurrentCapacity"];
    [v5 doubleValue];
    v7 = v6 * 100.0;
    v8 = [dictionaryCopy objectForKeyedSubscript:@"MaxCapacity"];
    [v8 doubleValue];
    v10 = v7 / v9;
  }

  else
  {
    contextChannel = [MEMORY[0x277CFE0C8] contextChannel];
    if (os_log_type_enabled(contextChannel, OS_LOG_TYPE_ERROR))
    {
      [_DKBatteryMonitor batteryPercentageFromPowerSourceDictionary:];
    }

    v10 = -1.0;
  }

  return v10;
}

- (BOOL)fullyChargedFromPowerSourceDictionary:(id)dictionary
{
  v3 = [dictionary objectForKeyedSubscript:@"FullyCharged"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)updateBatteryStateDictionary:(id)dictionary currentBatteryPercentage:(double)percentage
{
  dictionaryCopy = dictionary;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = objc_autoreleasePoolPush();
  v8 = [dictionaryCopy objectForKeyedSubscript:@"ExternalConnected"];
  bOOLValue = [v8 BOOLValue];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (percentage > 0.0)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithDouble:percentage];
    batteryPercentageKey = [MEMORY[0x277CFE338] batteryPercentageKey];
    [dictionary setObject:v11 forKeyedSubscript:batteryPercentageKey];
  }

  v13 = [dictionaryCopy objectForKeyedSubscript:@"Voltage"];
  batteryVoltageKey = [MEMORY[0x277CFE338] batteryVoltageKey];
  [dictionary setObject:v13 forKeyedSubscript:batteryVoltageKey];

  v15 = [dictionaryCopy objectForKeyedSubscript:@"Temperature"];
  batteryTemperatureKey = [MEMORY[0x277CFE338] batteryTemperatureKey];
  [dictionary setObject:v15 forKeyedSubscript:batteryTemperatureKey];

  v17 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue];
  batteryExternalConnectedKey = [MEMORY[0x277CFE338] batteryExternalConnectedKey];
  [dictionary setObject:v17 forKeyedSubscript:batteryExternalConnectedKey];

  v19 = [dictionaryCopy objectForKeyedSubscript:@"AppleRawExternalConnected"];
  batteryRawExternalConnectedKey = [MEMORY[0x277CFE338] batteryRawExternalConnectedKey];
  [dictionary setObject:v19 forKeyedSubscript:batteryRawExternalConnectedKey];

  v21 = [dictionaryCopy objectForKeyedSubscript:@"FullyCharged"];
  batteryFullyChargedKey = [MEMORY[0x277CFE338] batteryFullyChargedKey];
  [dictionary setObject:v21 forKeyedSubscript:batteryFullyChargedKey];

  v23 = [dictionaryCopy objectForKeyedSubscript:@"IsCharging"];
  batteryIsChargingKey = [MEMORY[0x277CFE338] batteryIsChargingKey];
  [dictionary setObject:v23 forKeyedSubscript:batteryIsChargingKey];
  context = v7;

  previousBatteryState = selfCopy->_previousBatteryState;
  batteryExternalConnectedKey2 = [MEMORY[0x277CFE338] batteryExternalConnectedKey];
  v27 = [(NSDictionary *)previousBatteryState objectForKeyedSubscript:batteryExternalConnectedKey2];

  if (v27 && ([MEMORY[0x277CFE338] batteryExternalConnectedKey], v28 = objc_claimAutoreleasedReturnValue(), objc_msgSend(dictionary, "objectForKeyedSubscript:", v28), v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v29, "isEqual:", v27), v29, v28, (v30 & 1) != 0))
  {
    v31 = selfCopy->_previousBatteryState;
    batteryExternalConnectedChangeDateKey = [MEMORY[0x277CFE338] batteryExternalConnectedChangeDateKey];
    batteryExternalConnectedChangeDateKey3 = [(NSDictionary *)v31 objectForKeyedSubscript:batteryExternalConnectedChangeDateKey];
    batteryExternalConnectedChangeDateKey2 = [MEMORY[0x277CFE338] batteryExternalConnectedChangeDateKey];
    [dictionary setObject:batteryExternalConnectedChangeDateKey3 forKeyedSubscript:batteryExternalConnectedChangeDateKey2];
  }

  else
  {
    batteryExternalConnectedChangeDateKey = [MEMORY[0x277CBEAA8] date];
    batteryExternalConnectedChangeDateKey3 = [MEMORY[0x277CFE338] batteryExternalConnectedChangeDateKey];
    [dictionary setObject:batteryExternalConnectedChangeDateKey forKeyedSubscript:batteryExternalConnectedChangeDateKey3];
  }

  v35 = selfCopy->_previousBatteryState;
  batteryRawExternalConnectedKey2 = [MEMORY[0x277CFE338] batteryRawExternalConnectedKey];
  v37 = [(NSDictionary *)v35 objectForKeyedSubscript:batteryRawExternalConnectedKey2];

  if (v37 && ([MEMORY[0x277CFE338] batteryRawExternalConnectedKey], v38 = objc_claimAutoreleasedReturnValue(), objc_msgSend(dictionary, "objectForKeyedSubscript:", v38), v39 = objc_claimAutoreleasedReturnValue(), v40 = objc_msgSend(v39, "isEqual:", v37), v39, v38, (v40 & 1) != 0))
  {
    v41 = selfCopy->_previousBatteryState;
    batteryRawExternalConnectedChangeDateKey = [MEMORY[0x277CFE338] batteryRawExternalConnectedChangeDateKey];
    batteryRawExternalConnectedChangeDateKey3 = [(NSDictionary *)v41 objectForKeyedSubscript:batteryRawExternalConnectedChangeDateKey];
    batteryRawExternalConnectedChangeDateKey2 = [MEMORY[0x277CFE338] batteryRawExternalConnectedChangeDateKey];
    [dictionary setObject:batteryRawExternalConnectedChangeDateKey3 forKeyedSubscript:batteryRawExternalConnectedChangeDateKey2];
  }

  else
  {
    batteryRawExternalConnectedChangeDateKey = [MEMORY[0x277CBEAA8] date];
    batteryRawExternalConnectedChangeDateKey3 = [MEMORY[0x277CFE338] batteryRawExternalConnectedChangeDateKey];
    [dictionary setObject:batteryRawExternalConnectedChangeDateKey forKeyedSubscript:batteryRawExternalConnectedChangeDateKey3];
  }

  v45 = [dictionaryCopy objectForKeyedSubscript:@"BatteryInstalled"];

  if (!v45)
  {
    batteryPercentageKey2 = [MEMORY[0x277CFE338] batteryPercentageKey];
    [dictionary setObject:&unk_2838F7890 forKeyedSubscript:batteryPercentageKey2];

    batteryExternalConnectedKey3 = [MEMORY[0x277CFE338] batteryExternalConnectedKey];
    [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:batteryExternalConnectedKey3];

    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    batteryExternalConnectedChangeDateKey4 = [MEMORY[0x277CFE338] batteryExternalConnectedChangeDateKey];
    [dictionary setObject:distantPast forKeyedSubscript:batteryExternalConnectedChangeDateKey4];

    batteryRawExternalConnectedKey3 = [MEMORY[0x277CFE338] batteryRawExternalConnectedKey];
    [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:batteryRawExternalConnectedKey3];

    distantPast2 = [MEMORY[0x277CBEAA8] distantPast];
    batteryRawExternalConnectedChangeDateKey4 = [MEMORY[0x277CFE338] batteryRawExternalConnectedChangeDateKey];
    [dictionary setObject:distantPast2 forKeyedSubscript:batteryRawExternalConnectedChangeDateKey4];

    batteryFullyChargedKey2 = [MEMORY[0x277CFE338] batteryFullyChargedKey];
    [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:batteryFullyChargedKey2];
  }

  v54 = [dictionaryCopy objectForKeyedSubscript:@"AdapterDetails"];
  v55 = [v54 objectForKeyedSubscript:@"FamilyCode"];
  batteryAdapterTypeKey = [MEMORY[0x277CFE338] batteryAdapterTypeKey];
  [dictionary setObject:v55 forKeyedSubscript:batteryAdapterTypeKey];

  v57 = [v54 objectForKeyedSubscript:@"IsWireless"];
  batteryAdapterIsWirelessKey = [MEMORY[0x277CFE338] batteryAdapterIsWirelessKey];
  [dictionary setObject:v57 forKeyedSubscript:batteryAdapterIsWirelessKey];

  if ([(_DKBatteryMonitor *)selfCopy newBatteryState:dictionary differsSignificantlyFromState:selfCopy->_previousBatteryState currentBatteryPercentage:percentage previousBatteryPercentage:selfCopy->_previousPercentage])
  {
    objc_storeStrong(&selfCopy->_previousBatteryState, dictionary);
    v59 = selfCopy->_previousBatteryState;
    userContext = [MEMORY[0x277CFE318] userContext];
    keyPathForBatteryStateDataDictionary = [MEMORY[0x277CFE338] keyPathForBatteryStateDataDictionary];
    [userContext setObject:v59 forKeyedSubscript:keyPathForBatteryStateDataDictionary];
  }

  objc_autoreleasePoolPop(context);
  objc_sync_exit(selfCopy);
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
  v3 = [MEMORY[0x277CCABB0] numberWithInt:self];
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