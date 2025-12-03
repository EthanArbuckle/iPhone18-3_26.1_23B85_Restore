@interface HKMedicationsBehavior
+ (BOOL)_medicationFutureMigrationsEnabled;
+ (BOOL)hasSupportedAppleWatchPaired;
+ (id)_getActivePairedDevice;
+ (id)_unitTesting_behaviorWithMockPairedDevice:(id)device;
+ (id)sharedBehavior;
+ (void)resetSharedBehavior;
+ (void)setSharedBehavior:(id)behavior;
- (HKMedicationsBehavior)init;
- (id)_initWithFutureMigrationsEnabled:(BOOL)enabled asyncMedicationReschedulesEnabled:(BOOL)reschedulesEnabled mockPairedDevice:(id)device;
@end

@implementation HKMedicationsBehavior

- (HKMedicationsBehavior)init
{
  v3 = +[HKMedicationsBehavior _medicationFutureMigrationsEnabled];

  return [(HKMedicationsBehavior *)self _initWithFutureMigrationsEnabled:v3 asyncMedicationReschedulesEnabled:1 mockPairedDevice:0];
}

- (id)_initWithFutureMigrationsEnabled:(BOOL)enabled asyncMedicationReschedulesEnabled:(BOOL)reschedulesEnabled mockPairedDevice:(id)device
{
  deviceCopy = device;
  v13.receiver = self;
  v13.super_class = HKMedicationsBehavior;
  v10 = [(HKMedicationsBehavior *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_medicationsFutureMigrationsEnabled = enabled;
    v10->_asyncMedicationReschedulesEnabled = reschedulesEnabled;
    objc_storeStrong(&v10->_mockPairedDevice, device);
  }

  return v11;
}

+ (id)sharedBehavior
{
  os_unfair_lock_lock(&_sharedMedicationsBehaviorLock);
  if (!sharedBehavior_defaultBehavior)
  {
    v2 = objc_alloc_init(HKMedicationsBehavior);
    v3 = sharedBehavior_defaultBehavior;
    sharedBehavior_defaultBehavior = v2;
  }

  v4 = _sharedMedicationsBehaviorOverride;
  os_unfair_lock_unlock(&_sharedMedicationsBehaviorLock);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = sharedBehavior_defaultBehavior;
  }

  v6 = v5;

  return v5;
}

+ (void)setSharedBehavior:(id)behavior
{
  behaviorCopy = behavior;
  os_unfair_lock_lock(&_sharedMedicationsBehaviorLock);
  v4 = _sharedMedicationsBehaviorOverride;
  _sharedMedicationsBehaviorOverride = behaviorCopy;

  os_unfair_lock_unlock(&_sharedMedicationsBehaviorLock);
}

+ (void)resetSharedBehavior
{
  os_unfair_lock_lock(&_sharedMedicationsBehaviorLock);
  v2 = _sharedMedicationsBehaviorOverride;
  _sharedMedicationsBehaviorOverride = 0;

  os_unfair_lock_unlock(&_sharedMedicationsBehaviorLock);
}

+ (BOOL)_medicationFutureMigrationsEnabled
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults persistentDomainForName:*MEMORY[0x277CCE2F0]];

  v4 = [v3 objectForKey:@"EnableMedicationsDatabaseFutureMigrations"];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

+ (BOOL)hasSupportedAppleWatchPaired
{
  _getActivePairedDevice = [objc_opt_class() _getActivePairedDevice];
  v3 = _getActivePairedDevice;
  if (_getActivePairedDevice)
  {
    if ([_getActivePairedDevice supportsMedicationsCapability])
    {
      supportsMeadowCapability = 1;
    }

    else
    {
      supportsMeadowCapability = [v3 supportsMeadowCapability];
    }
  }

  else
  {
    supportsMeadowCapability = 0;
  }

  return supportsMeadowCapability;
}

+ (id)_getActivePairedDevice
{
  v2 = +[HKMedicationsBehavior sharedBehavior];
  mockPairedDevice = [v2 mockPairedDevice];

  if (mockPairedDevice)
  {
    getActivePairedDevice = mockPairedDevice;
  }

  else
  {
    mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
    getActivePairedDevice = [mEMORY[0x277D2BCF8] getActivePairedDevice];
  }

  return getActivePairedDevice;
}

+ (id)_unitTesting_behaviorWithMockPairedDevice:(id)device
{
  deviceCopy = device;
  deviceCopy = [[HKMedicationsBehavior alloc] _initWithFutureMigrationsEnabled:+[HKMedicationsBehavior asyncMedicationReschedulesEnabled:"_medicationFutureMigrationsEnabled"]mockPairedDevice:1, deviceCopy];

  return deviceCopy;
}

@end