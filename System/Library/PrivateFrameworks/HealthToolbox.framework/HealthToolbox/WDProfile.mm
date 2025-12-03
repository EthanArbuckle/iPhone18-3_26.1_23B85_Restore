@interface WDProfile
- (HKSampleTypeDateRangeController)sampleTypeDateRangeController;
- (WDProfile)initWithHealthStore:(id)store;
- (id)_createHealthStore;
@end

@implementation WDProfile

- (WDProfile)initWithHealthStore:(id)store
{
  storeCopy = store;
  v40.receiver = self;
  v40.super_class = WDProfile;
  v5 = [(WDProfile *)&v40 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    if (storeCopy)
    {
      _createHealthStore = storeCopy;
    }

    else
    {
      _createHealthStore = [(WDProfile *)v5 _createHealthStore];
    }

    healthStore = v6->_healthStore;
    v6->_healthStore = _createHealthStore;

    v9 = [objc_alloc(MEMORY[0x277CCD4C0]) initWithHealthStore:v6->_healthStore];
    healthRecordsStore = v6->_healthRecordsStore;
    v6->_healthRecordsStore = v9;

    v11 = [MEMORY[0x277D12840] sharedInstanceForHealthStore:v6->_healthStore];
    displayTypeController = v6->_displayTypeController;
    v6->_displayTypeController = v11;

    profileIdentifier = [(HKHealthStore *)v6->_healthStore profileIdentifier];
    if ([profileIdentifier type] == 3)
    {
    }

    else
    {
      profileIdentifier2 = [(HKHealthStore *)v6->_healthStore profileIdentifier];
      type = [profileIdentifier2 type];

      if (type != 2)
      {
        v20 = [objc_alloc(MEMORY[0x277CCDAC0]) initWithHealthStore:v6->_healthStore];
        unitController = v6->_unitController;
        v6->_unitController = v20;
        goto LABEL_10;
      }
    }

    v16 = objc_alloc(MEMORY[0x277CCDAC0]);
    unitController = objc_alloc_init(MEMORY[0x277CCD4D8]);
    v18 = [v16 initWithHealthStore:unitController];
    v19 = v6->_unitController;
    v6->_unitController = v18;

LABEL_10:
    v21 = objc_alloc_init(MEMORY[0x277D12920]);
    manualEntryValidationController = v6->_manualEntryValidationController;
    v6->_manualEntryValidationController = v21;

    v23 = [[WDUserDefaults alloc] initWithHealthStore:v6->_healthStore];
    userDefaults = v6->_userDefaults;
    v6->_userDefaults = v23;

    v25 = [[WDSourceOrderController alloc] initWithHealthStore:v6->_healthStore];
    sourceOrderController = v6->_sourceOrderController;
    v6->_sourceOrderController = v25;

    v27 = objc_alloc_init(MEMORY[0x277D12A40]);
    selectedTimeScopeController = v6->_selectedTimeScopeController;
    v6->_selectedTimeScopeController = v27;

    v29 = objc_alloc(MEMORY[0x277D12820]);
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v31 = [v29 initWithCalendar:currentCalendar];
    dateCache = v6->_dateCache;
    v6->_dateCache = v31;

    v33 = [objc_alloc(MEMORY[0x277D12A30]) initWithHealthStore:v6->_healthStore];
    updateController = v6->_updateController;
    v6->_updateController = v33;

    v35 = [objc_alloc(MEMORY[0x277D127D0]) initWithHealthStore:v6->_healthStore unitController:v6->_unitController updateController:v6->_updateController];
    dataCacheController = v6->_dataCacheController;
    v6->_dataCacheController = v35;

    v37 = objc_alloc_init(MEMORY[0x277CCDAA8]);
    ucumDisplayConverter = v6->_ucumDisplayConverter;
    v6->_ucumDisplayConverter = v37;
  }

  return v6;
}

- (id)_createHealthStore
{
  v17 = *MEMORY[0x277D85DE8];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults stringForKey:@"HealthProfileIdentifierKey"];
  v4 = MEMORY[0x277CCC2B0];
  if (!v3)
  {
    goto LABEL_6;
  }

  v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v3];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = v5;
  v7 = [MEMORY[0x277CCD7C8] _profileWithUUID:v5 type:2];
  _HKInitializeLogging();
  v8 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [v7 debugDescription];
    v15 = 138412290;
    v16 = v10;
    _os_log_impl(&dword_251E85000, v9, OS_LOG_TYPE_DEFAULT, "WDProfile: Using healthstore for profile: %@", &v15, 0xCu);
  }

  v11 = objc_alloc_init(MEMORY[0x277CCD4D8]);
  [v11 setProfileIdentifier:v7];
  [v11 resume];

  if (!v11)
  {
LABEL_6:
    _HKInitializeLogging();
    v12 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
    {
      [(WDProfile *)v12 _createHealthStore];
    }

    v11 = objc_alloc_init(MEMORY[0x277CCD4D8]);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v11;
}

- (HKSampleTypeDateRangeController)sampleTypeDateRangeController
{
  os_unfair_lock_lock(&self->_lock);
  sampleTypeDateRangeController = self->_sampleTypeDateRangeController;
  if (!sampleTypeDateRangeController)
  {
    v4 = [objc_alloc(MEMORY[0x277D12A28]) initWithHealthStore:self->_healthStore];
    v5 = self->_sampleTypeDateRangeController;
    self->_sampleTypeDateRangeController = v4;

    sampleTypeDateRangeController = self->_sampleTypeDateRangeController;
  }

  v6 = sampleTypeDateRangeController;
  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

@end