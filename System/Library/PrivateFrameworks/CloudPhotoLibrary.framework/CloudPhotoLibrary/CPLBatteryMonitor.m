@interface CPLBatteryMonitor
+ (CPLBatteryMonitorDelegate)delegate;
+ (NSDictionary)powerStatusPlist;
+ (NSString)powerStatus;
+ (double)batteryLevel;
+ (void)_updateBatteryWithBatteryEntry:(unsigned int)a3;
+ (void)startMonitoringPowerEvents;
@end

@implementation CPLBatteryMonitor

+ (CPLBatteryMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&_delegate);

  return WeakRetained;
}

+ (NSDictionary)powerStatusPlist
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__18683;
  v9 = __Block_byref_object_dispose__18684;
  v10 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__CPLBatteryMonitor_powerStatusPlist__block_invoke;
  block[3] = &unk_1E861B528;
  block[4] = &v5;
  dispatch_sync(batteryQueue, block);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __37__CPLBatteryMonitor_powerStatusPlist__block_invoke(uint64_t a1)
{
  v15[2] = *MEMORY[0x1E69E9840];
  if (isExternalPowerConnected == 1)
  {
    v15[0] = @"plugged";
    v14[0] = @"state";
    v14[1] = @"batteryLevel";
    v2 = [MEMORY[0x1E696AD98] numberWithInt:*&batteryLevel];
    v15[1] = v2;
    v3 = MEMORY[0x1E695DF20];
    v4 = v15;
    v5 = v14;
    v6 = 2;
  }

  else
  {
    v12[0] = @"state";
    v12[1] = @"lowBattery";
    v7 = &unk_1F57EF6C8;
    if (!hasEnoughBattery)
    {
      v7 = &unk_1F57EF6E0;
    }

    v13[0] = @"battery";
    v13[1] = v7;
    v12[2] = @"batteryLevel";
    v2 = [MEMORY[0x1E696AD98] numberWithInt:*&batteryLevel];
    v13[2] = v2;
    v3 = MEMORY[0x1E695DF20];
    v4 = v13;
    v5 = v12;
    v6 = 3;
  }

  v8 = [v3 dictionaryWithObjects:v4 forKeys:v5 count:v6];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x1E69E9840];
}

+ (double)batteryLevel
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__CPLBatteryMonitor_batteryLevel__block_invoke;
  block[3] = &unk_1E861B528;
  block[4] = &v5;
  dispatch_sync(batteryQueue, block);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

double __33__CPLBatteryMonitor_batteryLevel__block_invoke(uint64_t a1)
{
  result = *&batteryLevel;
  *(*(*(a1 + 32) + 8) + 24) = batteryLevel;
  return result;
}

+ (NSString)powerStatus
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__18683;
  v9 = __Block_byref_object_dispose__18684;
  v10 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__CPLBatteryMonitor_powerStatus__block_invoke;
  block[3] = &unk_1E861B528;
  block[4] = &v5;
  dispatch_sync(batteryQueue, block);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __32__CPLBatteryMonitor_powerStatus__block_invoke(uint64_t a1)
{
  if (hasEnoughBattery)
  {
    v2 = @"high battery level";
  }

  else
  {
    v2 = @"low battery level";
  }

  if (isExternalPowerConnected)
  {
    v3 = @"connected to power";
  }

  else
  {
    v3 = v2;
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), v3);
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (battery level: %.0f%%)", *(*(*(a1 + 32) + 8) + 40), batteryLevel];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return MEMORY[0x1EEE66BB8](v4, v6);
}

+ (void)startMonitoringPowerEvents
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__CPLBatteryMonitor_startMonitoringPowerEvents__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (startMonitoringPowerEvents_onceToken != -1)
  {
    dispatch_once(&startMonitoringPowerEvents_onceToken, block);
  }
}

void __47__CPLBatteryMonitor_startMonitoringPowerEvents__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = CPLCopyDefaultSerialQueueAttributes();
  v3 = dispatch_queue_create("com.apple.cpl.powermonitor", v2);
  v4 = batteryQueue;
  batteryQueue = v3;

  LODWORD(v2) = *MEMORY[0x1E696CD60];
  batteryIONotifyPort = IONotificationPortCreate(*MEMORY[0x1E696CD60]);
  IONotificationPortSetDispatchQueue(batteryIONotifyPort, batteryQueue);
  v5 = IOServiceMatching("IOPMPowerSource");
  MatchingService = IOServiceGetMatchingService(v2, v5);
  v7 = IOServiceAddInterestNotification(batteryIONotifyPort, MatchingService, "IOGeneralInterest", BatteryStateChanged, *(a1 + 32), batteryNotificationRef);
  if (v7)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = v7;
      v9 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v13[0] = 67109120;
        v13[1] = v8;
        _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_ERROR, "Can't monitor power: %i", v13, 8u);
      }
    }

    v10 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v11 = *(a1 + 32);
    v12 = *MEMORY[0x1E69E9840];

    [v11 _updateBatteryWithBatteryEntry:MatchingService];
  }
}

+ (void)_updateBatteryWithBatteryEntry:(unsigned int)a3
{
  v4 = isExternalPowerConnected;
  v5 = hasEnoughBattery;
  v6 = *MEMORY[0x1E695E480];
  CFProperty = IORegistryEntryCreateCFProperty(a3, @"MaxCapacity", *MEMORY[0x1E695E480], 0);
  v7 = IORegistryEntryCreateCFProperty(a3, @"CurrentCapacity", v6, 0);
  v8 = IORegistryEntryCreateCFProperty(a3, @"ExternalConnected", v6, 0);
  if (CFProperty)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v14 = 0;
    v13 = 0.0;
  }

  else
  {
    [v7 doubleValue];
    v11 = v10;
    [CFProperty doubleValue];
    v13 = v11 / v12 * 100.0;
    v14 = v13 >= 80.0;
  }

  batteryLevel = *&v13;
  hasEnoughBattery = v14;
  isExternalPowerConnected = [v8 BOOLValue];
  v15 = isExternalPowerConnected | hasEnoughBattery;
  if (!v4)
  {
    v15 = v5 == ((isExternalPowerConnected | hasEnoughBattery) & 1);
  }

  if ((v15 & 1) == 0)
  {
    [CPLPowerAssertion setHasEnoughPower:?];
  }

  v16 = +[CPLBatteryMonitor delegate];
  [v16 batteryLevelDidChangeWithLevel:*&batteryLevel];
}

@end