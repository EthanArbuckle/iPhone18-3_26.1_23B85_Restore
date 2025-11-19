@interface HRProfile
+ (id)userProfileWithProfileIdentifier:(id)a3;
- (BOOL)isEqual:(id)a3;
- (HKConceptStore)conceptStore;
- (HRProfile)initWithHealthStore:(id)a3 healthRecordsStore:(id)a4 clinicalAccountStore:(id)a5 ingestionStore:(id)a6;
- (HRProfile)initWithHealthStore:(id)a3 profileIdentifier:(id)a4;
- (WDClinicalSampleAccountsLoader)clinicalSampleAccountsLoader;
- (unint64_t)hash;
@end

@implementation HRProfile

- (HRProfile)initWithHealthStore:(id)a3 profileIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = v8;
  v10 = v8;
  if (v7)
  {
    v11 = [v8 profileIdentifier];
    v12 = [v11 isEqual:v7];

    v10 = v9;
    if ((v12 & 1) == 0)
    {
      v10 = objc_alloc_init(MEMORY[0x1E696C1C0]);
      [v10 setProfileIdentifier:v7];
      [v10 resume];
    }
  }

  v13 = [objc_alloc(MEMORY[0x1E696C1A8]) initWithHealthStore:v10];
  v14 = [objc_alloc(MEMORY[0x1E69A3F10]) initWithHealthStore:v10];
  v15 = [objc_alloc(MEMORY[0x1E69A3F38]) initWithHealthStore:v10];
  v16 = [(HRProfile *)self initWithHealthStore:v10 healthRecordsStore:v13 clinicalAccountStore:v14 ingestionStore:v15];

  return v16;
}

- (HRProfile)initWithHealthStore:(id)a3 healthRecordsStore:(id)a4 clinicalAccountStore:(id)a5 ingestionStore:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v36.receiver = self;
  v36.super_class = HRProfile;
  v15 = [(HRProfile *)&v36 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_healthStore, a3);
    objc_storeStrong(&v16->_healthRecordsStore, a4);
    objc_storeStrong(&v16->_clinicalAccountStore, a5);
    objc_storeStrong(&v16->_ingestionStore, a6);
    v17 = [[WDClinicalSourcesDataProvider alloc] initWithHealthRecordsStore:v16->_healthRecordsStore];
    clinicalSourcesDataProvider = v16->_clinicalSourcesDataProvider;
    v16->_clinicalSourcesDataProvider = v17;

    v19 = [objc_alloc(MEMORY[0x1E69A4498]) initWithHealthStore:v16->_healthStore];
    updateController = v16->_updateController;
    v16->_updateController = v19;

    v21 = objc_alloc(MEMORY[0x1E69A4358]);
    v22 = [MEMORY[0x1E695DEE8] currentCalendar];
    v23 = [v21 initWithCalendar:v22];
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
  v2 = [(HRProfile *)self healthStore];
  v3 = [v2 profileIdentifier];
  v4 = [v3 hash];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(HRProfile *)v4 healthStore];
      v6 = [v5 profileIdentifier];
      v7 = [(HRProfile *)self healthStore];
      v8 = [v7 profileIdentifier];
      v9 = [v6 isEqual:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

+ (id)userProfileWithProfileIdentifier:(id)a3
{
  v3 = a3;
  v4 = [HRProfile alloc];
  v5 = objc_alloc_init(MEMORY[0x1E696C1C0]);
  v6 = [(HRProfile *)v4 initWithHealthStore:v5 profileIdentifier:v3];

  return v6;
}

- (HKConceptStore)conceptStore
{
  v2 = self;
  objc_sync_enter(v2);
  conceptStore = v2->_conceptStore;
  if (!conceptStore)
  {
    v4 = objc_alloc(MEMORY[0x1E696C038]);
    v5 = [(HRProfile *)v2 healthStore];
    v6 = [v4 initWithHealthStore:v5];
    v7 = v2->_conceptStore;
    v2->_conceptStore = v6;

    conceptStore = v2->_conceptStore;
  }

  v8 = conceptStore;
  objc_sync_exit(v2);

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