@interface NSSGizmoPowerMonitor
+ (id)sharedMonitor;
- (BOOL)_droppedFromLastNotifiedLevel:(int64_t)level;
- (BOOL)_powerStatusNotifierEnabled;
- (BOOL)_shouldPostNotificationForPowerLevel:(int64_t)level;
- (BOOL)forceEnabledOverride;
- (NSSGizmoPowerMonitor)init;
- (id)_activeNRDevice;
- (id)levels;
- (id)sleepSchedulePredicate;
- (int64_t)lastKnownPowerLevelBeforeGoingOffCharger;
- (int64_t)substantialChange;
- (void)_beginMonitoringForPowerUpdates;
- (void)_beginMonitoringOnWristState;
- (void)_loadSleepSettingsFrom:(id)from;
- (void)_postNotificationForLowPowerModeAutoDisabled:(unint64_t)disabled;
- (void)_postNotificationForPowerLevel:(int64_t)level;
- (void)_processOffChargerState;
- (void)_registerForSleepSettingsChanges;
- (void)_removedFromChargerNotification;
- (void)_setLevels:(id)levels;
- (void)_stopMonitoringForPowerUpdates;
- (void)_updatePowerSourceDescription;
- (void)_updateSettings;
- (void)addLevel:(int64_t)level;
- (void)processBatteryUpdate;
- (void)processLowPowerModeAutoDisableUpdateType:(unint64_t)type;
- (void)resetLevels;
- (void)setLastKnownPowerLevelBeforeGoingOffCharger:(int64_t)charger;
- (void)sleepStore:(id)store sleepModeOnDidChange:(BOOL)change;
- (void)sleepStore:(id)store sleepSettingsDidChange:(id)change;
@end

@implementation NSSGizmoPowerMonitor

+ (id)sharedMonitor
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015340;
  block[3] = &unk_100034E60;
  block[4] = self;
  if (qword_10003DD38 != -1)
  {
    dispatch_once(&qword_10003DD38, block);
  }

  v2 = qword_10003DD30;

  return v2;
}

- (NSSGizmoPowerMonitor)init
{
  v11.receiver = self;
  v11.super_class = NSSGizmoPowerMonitor;
  v2 = [(NSSGizmoPowerMonitor *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.nanosystemsettings.gizmoPowerMonitoring", v3);
    workQueue = v2->_workQueue;
    v2->_workQueue = v4;

    v2->_psNotifyTokenAnyPowerSource = -1;
    objc_initWeak(&location, v2);
    v6 = v2->_workQueue;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100015484;
    v8[3] = &unk_100034ED8;
    objc_copyWeak(&v9, &location);
    dispatch_async(v6, v8);
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)processBatteryUpdate
{
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015624;
  block[3] = &unk_100034B48;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (id)_activeNRDevice
{
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  v3 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
  v4 = [v2 getAllDevicesWithArchivedAltAccountDevicesMatching:v3];
  firstObject = [v4 firstObject];

  return firstObject;
}

- (void)_updatePowerSourceDescription
{
  v3 = IOPSCopyPowerSourcesByType();
  _activeNRDevice = [(NSSGizmoPowerMonitor *)self _activeNRDevice];
  v16 = [_activeNRDevice valueForProperty:NRDevicePropertyName];

  if (v3)
  {
    cf = IOPSCopyPowerSourcesList(v3);
    Count = CFArrayGetCount(cf);
    if (Count >= 1)
    {
      v6 = Count;
      v7 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v3, v7);
        v9 = IOPSGetPowerSourceDescription(v3, ValueAtIndex);
        v10 = [(NSDictionary *)v9 objectForKeyedSubscript:@"Accessory Category"];
        v11 = [(NSDictionary *)v9 objectForKeyedSubscript:@"Name"];
        v12 = NSSLogForType();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v18 = v10;
          v19 = 2112;
          v20 = v11;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "GizmoPowerMonitor: Processing power source %@ %@", buf, 0x16u);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v10 isEqualToString:@"Watch"] && objc_msgSend(v11, "isEqualToString:", v16))
        {
          break;
        }

        if (v6 == ++v7)
        {
          goto LABEL_14;
        }
      }

      v13 = NSSLogForType();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "GizmoPowerMonitor: Found power source for active watch.", buf, 2u);
      }

      powerSourceDescription = self->_powerSourceDescription;
      self->_powerSourceDescription = v9;
    }

LABEL_14:
    CFRelease(cf);
    CFRelease(v3);
  }
}

- (void)_postNotificationForPowerLevel:(int64_t)level
{
  if ([(NSSGizmoPowerMonitor *)self _powerStatusNotifierEnabled]|| [(NSSGizmoPowerMonitor *)self forceEnabledOverride])
  {
    if ([(NSSGizmoPowerMonitor *)self _shouldPostNotificationForPowerLevel:level])
    {
      levels = [(NSSGizmoPowerMonitor *)self levels];
      v6 = [NSNumber numberWithInteger:level];
      v7 = [levels containsObject:v6];

      if ((v7 & 1) == 0)
      {
        [(NSSGizmoPowerMonitor *)self addLevel:level];
        [(NSSGizmoPowerMonitor *)self setLastKnownPowerLevelBeforeGoingOffCharger:level];
        v11 = +[NSSUserNotificationManager sharedInstance];
        _activeNRDevice = [(NSSGizmoPowerMonitor *)self _activeNRDevice];
        v9 = [_activeNRDevice valueForProperty:NRDevicePropertyName];

        v10 = [NSNumber numberWithLong:level];
        [v11 postBatteryNotificationForWatch:v9 withValue:v10];
      }
    }
  }
}

- (BOOL)_powerStatusNotifierEnabled
{
  v3 = [NPSDomainAccessor alloc];
  v4 = kSFPowerSourceStatusDomain;
  _activeNRDevice = [(NSSGizmoPowerMonitor *)self _activeNRDevice];
  v6 = [v3 initWithDomain:v4 pairedDevice:_activeNRDevice];

  synchronize = [v6 synchronize];
  v8 = [v6 BOOLForKey:kSFPowerSourceStatusFeatureKey];
  v9 = NSSLogForType();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"NO";
    if (v8)
    {
      v10 = @"YES";
    }

    v12 = 138412290;
    v13 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "GizmoPowerMonitor: Power status notifier enabled: %@", &v12, 0xCu);
  }

  return v8;
}

- (void)_processOffChargerState
{
  powerSourceDescription = self->_powerSourceDescription;
  self->_powerSourceDescription = 0;

  [(NSSGizmoPowerMonitor *)self _updatePowerSourceDescription];
  if (self->_powerSourceDescription)
  {
    v4 = NSSLogForType();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = self->_powerSourceDescription;
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "GizmoPowerMonitor: Processing off charger state %@", &v9, 0xCu);
    }

    v6 = [(NSDictionary *)self->_powerSourceDescription objectForKeyedSubscript:@"Current Capacity"];
    v7 = [(NSDictionary *)self->_powerSourceDescription objectForKeyedSubscript:@"Is Charging"];
    if (([v7 BOOLValue] & 1) != 0 || !-[NSSGizmoPowerMonitor substantialChangeFromLastNotifiedLevel:](self, "substantialChangeFromLastNotifiedLevel:", objc_msgSend(v6, "integerValue")))
    {
      if ([v7 BOOLValue] && -[NSSGizmoPowerMonitor _droppedFromLastNotifiedLevel:](self, "_droppedFromLastNotifiedLevel:", objc_msgSend(v6, "integerValue")))
      {
        v8 = NSSLogForType();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v9) = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "GizmoPowerMonitor: Watch still on charger, but level dropped. Removing last posted notification", &v9, 2u);
        }

        [(NSSGizmoPowerMonitor *)self _removedFromChargerNotification];
      }
    }

    else
    {
      [(NSSGizmoPowerMonitor *)self _removedFromChargerNotification];
      [(NSSGizmoPowerMonitor *)self _stopMonitoringForPowerUpdates];
      [(NSSGizmoPowerMonitor *)self _stopMonitoringOnWristState];
    }
  }
}

- (void)_removedFromChargerNotification
{
  if ([(NSSGizmoPowerMonitor *)self _powerStatusNotifierEnabled]|| [(NSSGizmoPowerMonitor *)self forceEnabledOverride])
  {
    [(NSSGizmoPowerMonitor *)self resetLevels];
    [(NSSGizmoPowerMonitor *)self setLastKnownPowerLevelBeforeGoingOffCharger:0];
    v3 = NSSLogForType();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "GizmoPowerMonitor: Removing last posted charge notification", v5, 2u);
    }

    v4 = +[NSSUserNotificationManager sharedInstance];
    [v4 removeLastPostedBatteryNotification];
  }
}

- (void)_beginMonitoringForPowerUpdates
{
  p_psNotifyTokenAnyPowerSource = &self->_psNotifyTokenAnyPowerSource;
  if (self->_psNotifyTokenAnyPowerSource == -1 && ([(NSSGizmoPowerMonitor *)self _powerStatusNotifierEnabled]|| [(NSSGizmoPowerMonitor *)self forceEnabledOverride]))
  {
    v4 = os_transaction_create();
    keepAliveTransaction = self->_keepAliveTransaction;
    self->_keepAliveTransaction = v4;

    workQueue = self->_workQueue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000160FC;
    handler[3] = &unk_100034F00;
    handler[4] = self;
    v7 = notify_register_dispatch("com.apple.system.powersources", p_psNotifyTokenAnyPowerSource, workQueue, handler);
    if (v7)
    {
      v8 = v7;
      v9 = NSSLogForType();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v12 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Gizmo Power Monitor unable to register for power change notification (%lu).", buf, 0xCu);
      }
    }
  }
}

- (void)_stopMonitoringForPowerUpdates
{
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000161E8;
  block[3] = &unk_100034B48;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)_loadSleepSettingsFrom:(id)from
{
  v8 = 0;
  v4 = [from currentSleepSettingsWithError:&v8];
  v5 = v8;
  sleepSettings = self->_sleepSettings;
  self->_sleepSettings = v4;

  if (v5)
  {
    v7 = NSSLogForType();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v10 = "[NSSGizmoPowerMonitor _loadSleepSettingsFrom:]";
      v11 = 2114;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: Error loading settings (%{public}@)", buf, 0x16u);
    }
  }
}

- (void)sleepStore:(id)store sleepModeOnDidChange:(BOOL)change
{
  storeCopy = store;
  v6 = NSSLogForType();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[NSSGizmoPowerMonitor sleepStore:sleepModeOnDidChange:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s", &v7, 0xCu);
  }

  [(NSSGizmoPowerMonitor *)self _loadSleepSettingsFrom:storeCopy];
  [(NSSGizmoPowerMonitor *)self _updateSettings];
}

- (void)sleepStore:(id)store sleepSettingsDidChange:(id)change
{
  v5 = NSSLogForType();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[NSSGizmoPowerMonitor sleepStore:sleepSettingsDidChange:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  [(NSSGizmoPowerMonitor *)self _loadSleepSettingsFrom:self->_sleepStore];
  [(NSSGizmoPowerMonitor *)self _updateSettings];
}

- (void)_updateSettings
{
  if ([(HKSPSleepSettings *)self->_sleepSettings watchSleepFeaturesEnabled]&& [(HKSPSleepSettings *)self->_sleepSettings chargingReminders])
  {
    if (![(NSSGizmoPowerMonitor *)self _powerStatusNotifierEnabled])
    {
      forceEnabledOverride = 1;
LABEL_6:
      v4 = NSSLogForType();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = @"disabled";
        if (forceEnabledOverride)
        {
          v5 = @"enabled";
        }

        *buf = 136315394;
        v16 = "[NSSGizmoPowerMonitor _updateSettings]";
        v17 = 2114;
        v18 = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: Updating setting to %{public}@", buf, 0x16u);
      }

      v6 = [NPSDomainAccessor alloc];
      v7 = kSFPowerSourceStatusDomain;
      _activeNRDevice = [(NSSGizmoPowerMonitor *)self _activeNRDevice];
      v9 = [v6 initWithDomain:v7 pairedDevice:_activeNRDevice];

      v10 = kSFPowerSourceStatusFeatureKey;
      [v9 setBool:forceEnabledOverride forKey:kSFPowerSourceStatusFeatureKey];
      v11 = kSFPowerChargingMonitoringLevelKeys;
      [v9 setObject:&off_1000367E8 forKey:kSFPowerChargingMonitoringLevelKeys];
      synchronize = [v9 synchronize];
      npsManager = self->_npsManager;
      v14 = [NSSet setWithObjects:v10, v11, 0];
      [(NPSManager *)npsManager synchronizeNanoDomain:v7 keys:v14];

      goto LABEL_13;
    }
  }

  else
  {
    forceEnabledOverride = [(NSSGizmoPowerMonitor *)self forceEnabledOverride];
    if (forceEnabledOverride != [(NSSGizmoPowerMonitor *)self _powerStatusNotifierEnabled])
    {
      goto LABEL_6;
    }
  }

  v9 = NSSLogForType();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "No change in setting.", buf, 2u);
  }

LABEL_13:
}

- (BOOL)_shouldPostNotificationForPowerLevel:(int64_t)level
{
  v5 = [NPSDomainAccessor alloc];
  v6 = kSFPowerSourceStatusDomain;
  _activeNRDevice = [(NSSGizmoPowerMonitor *)self _activeNRDevice];
  v8 = [v5 initWithDomain:v6 pairedDevice:_activeNRDevice];

  v9 = [v8 arrayForKey:kSFPowerChargingMonitoringLevelKeys];
  v10 = [NSNumber numberWithInteger:level / 10];
  LOBYTE(v6) = [v9 containsObject:v10];

  return v6;
}

- (id)sleepSchedulePredicate
{
  v2 = [_CDContextualKeyPath ephemeralKeyPathWithKey:@"/system/currentSleepState"];
  v3 = [_CDContextualPredicate predicateForChangeAtKeyPath:v2];

  return v3;
}

- (void)_registerForSleepSettingsChanges
{
  if (!self->_context)
  {
    v9[9] = v2;
    v9[10] = v3;
    v5 = +[_CDClientContext userContext];
    context = self->_context;
    self->_context = v5;

    sleepSchedulePredicate = [(NSSGizmoPowerMonitor *)self sleepSchedulePredicate];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000169DC;
    v9[3] = &unk_100035040;
    v9[4] = self;
    v8 = [_CDContextualChangeRegistration localWakingRegistrationWithIdentifier:@"com.apple.nanosystemsettingsd.contextstore-registration" contextualPredicate:sleepSchedulePredicate clientIdentifier:@"com.apple.nanosystemsettingsd.contextstore-registration" callback:v9];

    [(_CDClientContext *)self->_context registerCallback:v8];
  }
}

- (BOOL)forceEnabledOverride
{
  v3 = [NPSDomainAccessor alloc];
  v4 = kSFPowerSourceStatusDomain;
  _activeNRDevice = [(NSSGizmoPowerMonitor *)self _activeNRDevice];
  v6 = [v3 initWithDomain:v4 pairedDevice:_activeNRDevice];

  if (MGGetBoolAnswer())
  {
    v7 = [v6 BOOLForKey:@"forceEnabledOverride"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)lastKnownPowerLevelBeforeGoingOffCharger
{
  v3 = [NPSDomainAccessor alloc];
  v4 = kSFPowerSourceStatusDomain;
  _activeNRDevice = [(NSSGizmoPowerMonitor *)self _activeNRDevice];
  v6 = [v3 initWithDomain:v4 pairedDevice:_activeNRDevice];

  v7 = [v6 integerForKey:@"lastKnownPowerLevelBeforeGoingOffCharger"];
  return v7;
}

- (void)setLastKnownPowerLevelBeforeGoingOffCharger:(int64_t)charger
{
  v5 = [NPSDomainAccessor alloc];
  v6 = kSFPowerSourceStatusDomain;
  _activeNRDevice = [(NSSGizmoPowerMonitor *)self _activeNRDevice];
  v9 = [v5 initWithDomain:v6 pairedDevice:_activeNRDevice];

  [v9 setInteger:charger forKey:@"lastKnownPowerLevelBeforeGoingOffCharger"];
  synchronize = [v9 synchronize];
}

- (int64_t)substantialChange
{
  keyExistsAndHasValidFormat = 0;
  CFPreferencesAppSynchronize(@"com.apple.nanosystemsettings");
  result = CFPreferencesGetAppIntegerValue(@"com.apple.nanosystemsettings", @"substantialChangeOverride", &keyExistsAndHasValidFormat);
  if (!keyExistsAndHasValidFormat)
  {
    return 3;
  }

  return result;
}

- (BOOL)_droppedFromLastNotifiedLevel:(int64_t)level
{
  lastKnownPowerLevelBeforeGoingOffCharger = [(NSSGizmoPowerMonitor *)self lastKnownPowerLevelBeforeGoingOffCharger];
  v5 = NSSLogForType();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    v8 = 134218498;
    v9 = lastKnownPowerLevelBeforeGoingOffCharger;
    if (lastKnownPowerLevelBeforeGoingOffCharger > level)
    {
      v6 = @"YES";
    }

    v10 = 2048;
    levelCopy = level;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "GizmoPowerMonitor: lastKnownPowerLevelBeforeGoingOffCharger (%ld); currentCharge (%ld) = dropped (%@)", &v8, 0x20u);
  }

  return lastKnownPowerLevelBeforeGoingOffCharger > level;
}

- (id)levels
{
  v3 = [NPSDomainAccessor alloc];
  v4 = kSFPowerSourceStatusDomain;
  _activeNRDevice = [(NSSGizmoPowerMonitor *)self _activeNRDevice];
  v6 = [v3 initWithDomain:v4 pairedDevice:_activeNRDevice];

  v7 = [v6 objectForKey:@"power-levels"];

  return v7;
}

- (void)_setLevels:(id)levels
{
  levelsCopy = levels;
  v5 = NSSLogForType();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = levelsCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "GizmoPowerMonitor: Setting levels to %@", &v12, 0xCu);
  }

  v6 = [NPSDomainAccessor alloc];
  v7 = kSFPowerSourceStatusDomain;
  _activeNRDevice = [(NSSGizmoPowerMonitor *)self _activeNRDevice];
  v9 = [v6 initWithDomain:v7 pairedDevice:_activeNRDevice];

  allObjects = [levelsCopy allObjects];
  [v9 setObject:allObjects forKey:@"power-levels"];

  synchronize = [v9 synchronize];
}

- (void)addLevel:(int64_t)level
{
  v5 = NSSLogForType();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [NSNumber numberWithInteger:level];
    v13 = 138412290;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "GizmoPowerMonitor: Adding level %@", &v13, 0xCu);
  }

  levels = [(NSSGizmoPowerMonitor *)self levels];
  v8 = [levels mutableCopy];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = objc_opt_new();
  }

  v11 = v10;

  v12 = [NSNumber numberWithInteger:level];
  [v11 addObject:v12];

  [(NSSGizmoPowerMonitor *)self _setLevels:v11];
}

- (void)resetLevels
{
  v3 = NSSLogForType();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "GizmoPowerMonitor: Resetting levels.", v4, 2u);
  }

  [(NSSGizmoPowerMonitor *)self _setLevels:0];
}

- (void)processLowPowerModeAutoDisableUpdateType:(unint64_t)type
{
  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001725C;
  block[3] = &unk_100035068;
  objc_copyWeak(v7, &location);
  v7[1] = type;
  dispatch_async(workQueue, block);
  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

- (void)_postNotificationForLowPowerModeAutoDisabled:(unint64_t)disabled
{
  v4 = +[NSSUserNotificationManager sharedInstance];
  [v4 postLowPowerModeAutoDisabledNotification:disabled];
}

- (void)_beginMonitoringOnWristState
{
  v3 = objc_alloc_init(SFClient);
  [(NSSGizmoPowerMonitor *)self setSfClient:v3];

  workQueue = [(NSSGizmoPowerMonitor *)self workQueue];
  sfClient = [(NSSGizmoPowerMonitor *)self sfClient];
  [sfClient setDispatchQueue:workQueue];

  objc_initWeak(&location, self);
  sfClient2 = [(NSSGizmoPowerMonitor *)self sfClient];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100017574;
  v7[3] = &unk_100035090;
  objc_copyWeak(&v8, &location);
  [sfClient2 monitorPairedWatchWristStateWithCompletionHandler:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

@end