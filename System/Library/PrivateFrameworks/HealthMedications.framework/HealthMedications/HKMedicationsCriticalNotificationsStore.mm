@interface HKMedicationsCriticalNotificationsStore
+ (id)sharedInstance;
- (BOOL)containsAtLeastOneOfIdentifiers:(id)a3;
- (BOOL)containsAtLeastOneOfMedications:(id)a3;
- (HKMedicationsCriticalNotificationsStore)init;
- (HKMedicationsCriticalNotificationsStore)initWithUserDefaults:(id)a3;
- (id)_lock_getIdentifiersSet;
- (int64_t)identifiersCount;
- (void)_lock_removeMedication:(id)a3;
- (void)_lock_syncUserDefaultUpdateToNanoPreferences:(id)a3;
- (void)_lock_writeToUserDefaultsWithNewIdentifier:(id)a3;
- (void)addMedications:(id)a3;
- (void)removeAll;
- (void)removeMedication:(id)a3;
- (void)setMedications:(id)a3;
@end

@implementation HKMedicationsCriticalNotificationsStore

- (HKMedicationsCriticalNotificationsStore)initWithUserDefaults:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HKMedicationsCriticalNotificationsStore;
  v6 = [(HKMedicationsCriticalNotificationsStore *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_medicationsUserDefaults, a3);
    v7->_lock._os_unfair_lock_opaque = 0;
  }

  return v7;
}

- (HKMedicationsCriticalNotificationsStore)init
{
  v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.private.health.medications"];
  v4 = [(HKMedicationsCriticalNotificationsStore *)self initWithUserDefaults:v3];

  return v4;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[HKMedicationsCriticalNotificationsStore sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

uint64_t __57__HKMedicationsCriticalNotificationsStore_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = objc_alloc_init(HKMedicationsCriticalNotificationsStore);

  return MEMORY[0x2821F96F8]();
}

- (void)addMedications:(id)a3
{
  v6 = [(HKMedicationsCriticalNotificationsStore *)self _getIdentifiersSetFromMedications:a3];
  os_unfair_lock_lock(&self->_lock);
  v4 = [(HKMedicationsCriticalNotificationsStore *)self _lock_getIdentifiersSet];
  v5 = [v6 setByAddingObjectsFromSet:v4];
  [(HKMedicationsCriticalNotificationsStore *)self _lock_writeToUserDefaultsWithNewIdentifier:v5];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeMedication:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(HKMedicationsCriticalNotificationsStore *)self _lock_removeMedication:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setMedications:(id)a3
{
  v4 = [(HKMedicationsCriticalNotificationsStore *)self _getIdentifiersSetFromMedications:a3];
  os_unfair_lock_lock(&self->_lock);
  [(HKMedicationsCriticalNotificationsStore *)self _lock_writeToUserDefaultsWithNewIdentifier:v4];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeAll
{
  os_unfair_lock_lock(&self->_lock);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __52__HKMedicationsCriticalNotificationsStore_removeAll__block_invoke;
  v3[3] = &unk_2796CA058;
  v3[4] = self;
  [(HKMedicationsCriticalNotificationsStore *)self _lock_syncUserDefaultUpdateToNanoPreferences:v3];
  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)containsAtLeastOneOfIdentifiers:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(HKMedicationsCriticalNotificationsStore *)self _lock_getIdentifiersSet];
  os_unfair_lock_unlock(&self->_lock);
  if ([v5 count])
  {
    v6 = [MEMORY[0x277CBEB98] setWithArray:v4];
    v7 = [v5 intersectsSet:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)containsAtLeastOneOfMedications:(id)a3
{
  v4 = [a3 hk_map:&__block_literal_global_297];
  LOBYTE(self) = [(HKMedicationsCriticalNotificationsStore *)self containsAtLeastOneOfIdentifiers:v4];

  return self;
}

id __75__HKMedicationsCriticalNotificationsStore_containsAtLeastOneOfMedications___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 semanticIdentifier];
  v3 = [v2 stringValue];

  return v3;
}

- (int64_t)identifiersCount
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HKMedicationsCriticalNotificationsStore *)self _lock_getIdentifiersSet];
  os_unfair_lock_unlock(&self->_lock);
  v4 = [v3 count];

  return v4;
}

- (void)_lock_removeMedication:(id)a3
{
  v8 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  v4 = [(HKMedicationsCriticalNotificationsStore *)self _lock_getIdentifiersSet];
  v5 = [v4 mutableCopy];

  if ([v5 count])
  {
    v6 = [v8 semanticIdentifier];
    v7 = [v6 stringValue];
    [v5 removeObject:v7];

    [(HKMedicationsCriticalNotificationsStore *)self _lock_writeToUserDefaultsWithNewIdentifier:v5];
  }
}

- (void)_lock_writeToUserDefaultsWithNewIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __86__HKMedicationsCriticalNotificationsStore__lock_writeToUserDefaultsWithNewIdentifier___block_invoke;
  v6[3] = &unk_2796CA0A0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(HKMedicationsCriticalNotificationsStore *)self _lock_syncUserDefaultUpdateToNanoPreferences:v6];
}

void __86__HKMedicationsCriticalNotificationsStore__lock_writeToUserDefaultsWithNewIdentifier___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = [*(a1 + 40) allObjects];
  [v1 setObject:v2 forKey:@"MedicationsCriticalNotificationIdentifiersSet"];
}

- (void)_lock_syncUserDefaultUpdateToNanoPreferences:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  v4[2](v4);

  v5 = [MEMORY[0x277CBEB98] setWithObjects:{@"MedicationsFollowUpNotificationsEnabled", @"MedicationsCriticalNotificationIdentifiersSet", 0}];
  HKSynchronizeNanoPreferencesUserDefaults();
}

- (id)_lock_getIdentifiersSet
{
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = [(NSUserDefaults *)self->_medicationsUserDefaults objectForKey:@"MedicationsCriticalNotificationIdentifiersSet"];
  if (v3)
  {
    [MEMORY[0x277CBEB98] setWithArray:v3];
  }

  else
  {
    [MEMORY[0x277CBEB98] set];
  }
  v4 = ;

  return v4;
}

id __77__HKMedicationsCriticalNotificationsStore__getIdentifiersSetFromMedications___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 semanticIdentifier];
  v3 = [v2 stringValue];

  return v3;
}

@end