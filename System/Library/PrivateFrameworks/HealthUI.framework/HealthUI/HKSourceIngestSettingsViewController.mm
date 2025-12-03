@interface HKSourceIngestSettingsViewController
- (HKSourceIngestSettingsViewController)initWithHealthStore:(id)store displayTypeController:(id)controller source:(id)source useInsetStyling:(BOOL)styling;
- (void)viewDidLoad;
@end

@implementation HKSourceIngestSettingsViewController

- (HKSourceIngestSettingsViewController)initWithHealthStore:(id)store displayTypeController:(id)controller source:(id)source useInsetStyling:(BOOL)styling
{
  stylingCopy = styling;
  sourceCopy = source;
  v12 = [(_HKIngestSettingsViewController *)self _initWithHealthStore:store displayTypeController:controller useInsetStyling:stylingCopy];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(v12 + 137, source);
    name = [(HKSource *)v13->_source name];
    [(HKSourceIngestSettingsViewController *)v13 setTitle:name];

    v15 = objc_alloc(MEMORY[0x1E696AFB0]);
    bundleIdentifier = [(HKSource *)v13->_source bundleIdentifier];
    v17 = [v15 initWithUUIDString:bundleIdentifier];
    [(_HKIngestSettingsViewController *)v13 setDeviceIdentifier:v17];
  }

  return v13;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = HKSourceIngestSettingsViewController;
  [(_HKIngestSettingsViewController *)&v8 viewDidLoad];
  v3 = [MEMORY[0x1E696C378] predicateForObjectsFromSource:self->_source];
  v4 = objc_alloc(MEMORY[0x1E696C668]);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__HKSourceIngestSettingsViewController_viewDidLoad__block_invoke;
  v7[3] = &unk_1E81B8468;
  v7[4] = self;
  v5 = [v4 initWithPredicate:v3 resultsHandler:v7];
  healthStore = [(_HKIngestSettingsViewController *)self healthStore];
  [healthStore executeQuery:v5];
}

void __51__HKSourceIngestSettingsViewController_viewDidLoad__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  if (a3)
  {
    [*(a1 + 32) reloadData:a3];
  }

  else
  {
    _HKInitializeLogging();
    v7 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __51__HKSourceIngestSettingsViewController_viewDidLoad__block_invoke_cold_1(v6, v7);
    }
  }
}

void __51__HKSourceIngestSettingsViewController_viewDidLoad__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1C3942000, a2, OS_LOG_TYPE_ERROR, "Source sample types not returned: %@", &v2, 0xCu);
}

@end