@interface HRProfile
+ (id)userProfileWithProfileIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (HKConceptStore)conceptStore;
- (HRProfile)initWithHealthStore:(id)store healthRecordsStore:(id)recordsStore clinicalAccountStore:(id)accountStore ingestionStore:(id)ingestionStore;
- (HRProfile)initWithHealthStore:(id)store profileIdentifier:(id)identifier;
- (WDClinicalSampleAccountsLoader)clinicalSampleAccountsLoader;
- (unint64_t)hash;
@end

@implementation HRProfile

- (HRProfile)initWithHealthStore:(id)store profileIdentifier:(id)identifier
{
  storeCopy = store;
  identifierCopy = identifier;
  v8 = storeCopy;
  v9 = v8;
  v10 = v8;
  if (identifierCopy)
  {
    profileIdentifier = [v8 profileIdentifier];
    v12 = [profileIdentifier isEqual:identifierCopy];

    v10 = v9;
    if ((v12 & 1) == 0)
    {
      v10 = objc_alloc_init(MEMORY[0x1E696C1C0]);
      [v10 setProfileIdentifier:identifierCopy];
      [v10 resume];
    }
  }

  v13 = [objc_alloc(MEMORY[0x1E696C1A8]) initWithHealthStore:v10];
  v14 = [objc_alloc(MEMORY[0x1E69A3F10]) initWithHealthStore:v10];
  v15 = [objc_alloc(MEMORY[0x1E69A3F38]) initWithHealthStore:v10];
  v16 = [(HRProfile *)self initWithHealthStore:v10 healthRecordsStore:v13 clinicalAccountStore:v14 ingestionStore:v15];

  return v16;
}

- (HRProfile)initWithHealthStore:(id)store healthRecordsStore:(id)recordsStore clinicalAccountStore:(id)accountStore ingestionStore:(id)ingestionStore
{
  storeCopy = store;
  recordsStoreCopy = recordsStore;
  accountStoreCopy = accountStore;
  ingestionStoreCopy = ingestionStore;
  v36.receiver = self;
  v36.super_class = HRProfile;
  v15 = [(HRProfile *)&v36 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_healthStore, store);
    objc_storeStrong(&v16->_healthRecordsStore, recordsStore);
    objc_storeStrong(&v16->_clinicalAccountStore, accountStore);
    objc_storeStrong(&v16->_ingestionStore, ingestionStore);
    v17 = [[WDClinicalSourcesDataProvider alloc] initWithHealthRecordsStore:v16->_healthRecordsStore];
    clinicalSourcesDataProvider = v16->_clinicalSourcesDataProvider;
    v16->_clinicalSourcesDataProvider = v17;

    v19 = [objc_alloc(MEMORY[0x1E69A4498]) initWithHealthStore:v16->_healthStore];
    updateController = v16->_updateController;
    v16->_updateController = v19;

    v21 = objc_alloc(MEMORY[0x1E69A4358]);
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    v23 = [v21 initWithCalendar:currentCalendar];
    dateCache = v16->_dateCache;
    v16->_dateCache = v23;

    v25 = [[UTCDateFormatter alloc] initWithDateCache:v16->_dateCache];
    utcDateFormatter = v16->_utcDateFormatter;
    v16->_utcDateFormatter = v25;

    v27 = objc_alloc_init(MEMORY[0x1E696C508]);
    ucumDisplayConverter = v16->_ucumDisplayConverter;
    v16->_ucumDisplayConverter = v27;

    v29 = [[WDClinicalOnboardingManager alloc] initWithProfile:v16];
    onboardingManager = v16->_onboardingManager;
    v16->_onboardingManager = v29;

    v31 = [[HRHealthRecordsMigrator alloc] initWithHealthStore:v16->_healthStore];
    migrator = v16->_migrator;
    v16->_migrator = v31;

    _HKInitializeLogging();
    v33 = *MEMORY[0x1E696B948];
    if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_INFO))
    {
      *v35 = 0;
      _os_log_impl(&dword_1D101F000, v33, OS_LOG_TYPE_INFO, "Health Records migration started.", v35, 2u);
    }

    [(HRHealthRecordsMigrator *)v16->_migrator migrateIfNeededWithCompletion:&__block_literal_global_6];
  }

  return v16;
}

void __88__HRProfile_initWithHealthStore_healthRecordsStore_clinicalAccountStore_ingestionStore___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  _HKInitializeLogging();
  v3 = *MEMORY[0x1E696B948];
  v4 = *MEMORY[0x1E696B948];
  if (v2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __88__HRProfile_initWithHealthStore_healthRecordsStore_clinicalAccountStore_ingestionStore___block_invoke_cold_1(v2, v3);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1D101F000, v3, OS_LOG_TYPE_INFO, "Health Records migration completed successfully.", v5, 2u);
  }
}

- (unint64_t)hash
{
  healthStore = [(HRProfile *)self healthStore];
  profileIdentifier = [healthStore profileIdentifier];
  v4 = [profileIdentifier hash];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      healthStore = [(HRProfile *)equalCopy healthStore];
      profileIdentifier = [healthStore profileIdentifier];
      healthStore2 = [(HRProfile *)self healthStore];
      profileIdentifier2 = [healthStore2 profileIdentifier];
      v9 = [profileIdentifier isEqual:profileIdentifier2];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

+ (id)userProfileWithProfileIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [HRProfile alloc];
  v5 = objc_alloc_init(MEMORY[0x1E696C1C0]);
  v6 = [(HRProfile *)v4 initWithHealthStore:v5 profileIdentifier:identifierCopy];

  return v6;
}

- (HKConceptStore)conceptStore
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  conceptStore = selfCopy->_conceptStore;
  if (!conceptStore)
  {
    v4 = objc_alloc(MEMORY[0x1E696C038]);
    healthStore = [(HRProfile *)selfCopy healthStore];
    v6 = [v4 initWithHealthStore:healthStore];
    v7 = selfCopy->_conceptStore;
    selfCopy->_conceptStore = v6;

    conceptStore = selfCopy->_conceptStore;
  }

  v8 = conceptStore;
  objc_sync_exit(selfCopy);

  return v8;
}

- (WDClinicalSampleAccountsLoader)clinicalSampleAccountsLoader
{
  WeakRetained = objc_loadWeakRetained(&self->_clinicalSampleAccountsLoader);

  return WeakRetained;
}

void __88__HRProfile_initWithHealthStore_healthRecordsStore_clinicalAccountStore_ingestionStore___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1D101F000, a2, OS_LOG_TYPE_ERROR, "Health Records migration failed: %@.", &v2, 0xCu);
}

@end