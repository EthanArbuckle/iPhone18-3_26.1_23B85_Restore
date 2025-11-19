@interface HKMedicationsBehavior
+ (BOOL)_medicationFutureMigrationsEnabled;
+ (BOOL)hasSupportedAppleWatchPaired;
+ (id)_getActivePairedDevice;
+ (id)_unitTesting_behaviorWithMockPairedDevice:(id)a3;
+ (id)sharedBehavior;
+ (void)resetSharedBehavior;
+ (void)setSharedBehavior:(id)a3;
- (HKMedicationsBehavior)init;
- (id)_initWithFutureMigrationsEnabled:(BOOL)a3 asyncMedicationReschedulesEnabled:(BOOL)a4 mockPairedDevice:(id)a5;
@end

@implementation HKMedicationsBehavior

- (HKMedicationsBehavior)init
{
  v3 = +[HKMedicationsBehavior _medicationFutureMigrationsEnabled];

  return [(HKMedicationsBehavior *)self _initWithFutureMigrationsEnabled:v3 asyncMedicationReschedulesEnabled:1 mockPairedDevice:0];
}

- (id)_initWithFutureMigrationsEnabled:(BOOL)a3 asyncMedicationReschedulesEnabled:(BOOL)a4 mockPairedDevice:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = HKMedicationsBehavior;
  v10 = [(HKMedicationsBehavior *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_medicationsFutureMigrationsEnabled = a3;
    v10->_asyncMedicationReschedulesEnabled = a4;
    objc_storeStrong(&v10->_mockPairedDevice, a5);
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

+ (void)setSharedBehavior:(id)a3
{
  v3 = a3;
  os_unfair_lock_lock(&_sharedMedicationsBehaviorLock);
  v4 = _sharedMedicationsBehaviorOverride;
  _sharedMedicationsBehaviorOverride = v3;

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
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 persistentDomainForName:*MEMORY[0x277CCE2F0]];

  v4 = [v3 objectForKey:@"EnableMedicationsDatabaseFutureMigrations"];
  v5 = [v4 BOOLValue];

  return v5;
}

+ (BOOL)hasSupportedAppleWatchPaired
{
  v2 = [objc_opt_class() _getActivePairedDevice];
  v3 = v2;
  if (v2)
  {
    if ([v2 supportsMedicationsCapability])
    {
      v4 = 1;
    }

    else
    {
      v4 = [v3 supportsMeadowCapability];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_getActivePairedDevice
{
  v2 = +[HKMedicationsBehavior sharedBehavior];
  v3 = [v2 mockPairedDevice];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v5 = [MEMORY[0x277D2BCF8] sharedInstance];
    v4 = [v5 getActivePairedDevice];
  }

  return v4;
}

+ (id)_unitTesting_behaviorWithMockPairedDevice:(id)a3
{
  v3 = a3;
  v4 = [[HKMedicationsBehavior alloc] _initWithFutureMigrationsEnabled:+[HKMedicationsBehavior asyncMedicationReschedulesEnabled:"_medicationFutureMigrationsEnabled"]mockPairedDevice:1, v3];

  return v4;
}

@end