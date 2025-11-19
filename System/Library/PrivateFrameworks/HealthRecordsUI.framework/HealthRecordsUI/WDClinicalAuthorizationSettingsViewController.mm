@interface WDClinicalAuthorizationSettingsViewController
+ (id)contextUsingProfile:(id)a3 source:(id)a4;
- (HRProfile)profile;
- (WDClinicalAuthorizationSettingsViewController)initWithContext:(id)a3 style:(int64_t)a4;
- (WDClinicalAuthorizationSettingsViewController)initWithProfile:(id)a3 source:(id)a4;
@end

@implementation WDClinicalAuthorizationSettingsViewController

- (WDClinicalAuthorizationSettingsViewController)initWithContext:(id)a3 style:(int64_t)a4
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D940];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The -%@ method is not available on %@", v7, objc_opt_class()}];

  return 0;
}

- (WDClinicalAuthorizationSettingsViewController)initWithProfile:(id)a3 source:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [objc_opt_class() contextUsingProfile:v6 source:v7];

  v12.receiver = self;
  v12.super_class = WDClinicalAuthorizationSettingsViewController;
  v9 = [(HKClinicalAuthorizationSettingsViewController *)&v12 initWithContext:v8 style:0];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_profile, v6);
  }

  return v10;
}

+ (id)contextUsingProfile:(id)a3 source:(id)a4
{
  v5 = a4;
  v19 = 0;
  v6 = a3;
  v7 = [v5 _fetchBundleWithError:&v19];
  v8 = v19;
  if (!v7)
  {
    _HKInitializeLogging();
    v9 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(WDClinicalAuthorizationSettingsViewController *)v5 contextUsingProfile:v8 source:v9];
    }
  }

  v10 = [v6 healthStore];
  v11 = [v6 healthRecordsStore];

  v12 = [objc_alloc(MEMORY[0x1E69A4158]) initWithHealthStore:v10 healthRecordsStore:v11 source:v5 typesRequestedForReading:0];
  v13 = objc_alloc(MEMORY[0x1E69A4150]);
  v14 = [v7 objectForInfoDictionaryKey:*MEMORY[0x1E69A40B0]];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = &stru_1F4D16E38;
  }

  v17 = [v13 initWithHealthStore:v10 healthRecordsStore:v11 authorizationController:v12 readUsageDescription:v16 source:v5];

  return v17;
}

- (HRProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

+ (void)contextUsingProfile:(os_log_t)log source:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_1D101F000, log, OS_LOG_TYPE_ERROR, "Failed to fetch app bundle for source %@. Using fallback values for authorization settings controller. Fetch error: %{public}@", &v3, 0x16u);
}

@end