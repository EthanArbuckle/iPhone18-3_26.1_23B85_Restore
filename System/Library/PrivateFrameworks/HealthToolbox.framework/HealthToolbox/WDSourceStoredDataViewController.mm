@interface WDSourceStoredDataViewController
- (BOOL)shouldShowDeleteAllDataButton;
- (BOOL)sourceHasData;
- (BOOL)sourceIsInstalled;
- (id)storedDataDisplayName;
- (id)storedDataPredicate;
- (void)deleteAllSourceData;
- (void)deleteAllStoredData;
- (void)deleteSource;
- (void)sourceIsInstalled;
@end

@implementation WDSourceStoredDataViewController

- (BOOL)sourceIsInstalled
{
  v4 = objc_alloc(MEMORY[0x277CC1E70]);
  source = [(WDSourceStoredDataViewController *)self source];
  bundleIdentifier = [source bundleIdentifier];
  v13 = 0;
  v7 = [v4 initWithBundleIdentifier:bundleIdentifier allowPlaceholder:1 error:&v13];
  v8 = v13;

  if (v7)
  {
    applicationState = [v7 applicationState];
    isInstalled = [applicationState isInstalled];
  }

  else
  {
    if (v8)
    {
      _HKInitializeLogging();
      v11 = *MEMORY[0x277CCC2B0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
      {
        [(WDSourceStoredDataViewController *)v11 sourceIsInstalled];
      }
    }

    isInstalled = 0;
  }

  return isInstalled;
}

- (BOOL)sourceHasData
{
  capturedSampleTypes = [(WDStoredDataByCategoryViewController *)self capturedSampleTypes];
  v3 = [capturedSampleTypes count] != 0;

  return v3;
}

- (id)storedDataPredicate
{
  v2 = MEMORY[0x277CCD838];
  source = [(WDSourceStoredDataViewController *)self source];
  v4 = [v2 predicateForObjectsFromSource:source];

  return v4;
}

- (id)storedDataDisplayName
{
  source = [(WDSourceStoredDataViewController *)self source];
  name = [source name];

  return name;
}

- (BOOL)shouldShowDeleteAllDataButton
{
  profile = [(WDStoredDataByCategoryViewController *)self profile];
  healthStore = [profile healthStore];
  profileIdentifier = [healthStore profileIdentifier];
  type = [profileIdentifier type];

  if (type == 3)
  {
    return 0;
  }

  if ([(WDSourceStoredDataViewController *)self sourceHasData])
  {
    return 1;
  }

  return ![(WDSourceStoredDataViewController *)self sourceIsInstalled];
}

- (void)deleteAllStoredData
{
  if (-[WDSourceStoredDataViewController sourceIsInstalled](self, "sourceIsInstalled") || (-[WDSourceStoredDataViewController source](self, "source"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 _isLocalDevice], v3, (v4 & 1) != 0))
  {
    if ([(WDSourceStoredDataViewController *)self sourceHasData])
    {

      [(WDSourceStoredDataViewController *)self deleteAllSourceData];
    }
  }

  else
  {

    [(WDSourceStoredDataViewController *)self deleteSource];
  }
}

- (void)deleteSource
{
  v3 = objc_alloc(MEMORY[0x277CCDA20]);
  profile = [(WDStoredDataByCategoryViewController *)self profile];
  healthStore = [profile healthStore];
  v6 = [v3 initWithHealthStore:healthStore];

  source = [(WDSourceStoredDataViewController *)self source];
  bundleIdentifier = [source bundleIdentifier];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__WDSourceStoredDataViewController_deleteSource__block_invoke;
  v9[3] = &unk_2796E6CC8;
  v9[4] = self;
  [v6 deleteSourceWithBundleIdentifier:bundleIdentifier completion:v9];
}

void __48__WDSourceStoredDataViewController_deleteSource__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2B0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
    {
      __48__WDSourceStoredDataViewController_deleteSource__block_invoke_cold_1(a1, v6);
    }
  }
}

- (void)deleteAllSourceData
{
  profile = [(WDStoredDataByCategoryViewController *)self profile];
  healthStore = [profile healthStore];
  capturedSampleTypes = [(WDStoredDataByCategoryViewController *)self capturedSampleTypes];
  source = [(WDSourceStoredDataViewController *)self source];
  bundleIdentifier = [source bundleIdentifier];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__WDSourceStoredDataViewController_deleteAllSourceData__block_invoke;
  v9[3] = &__block_descriptor_40_e20_v20__0B8__NSError_12l;
  v9[4] = a2;
  [healthStore deleteAllSamplesWithTypes:capturedSampleTypes sourceBundleIdentifier:bundleIdentifier options:2 completion:v9];
}

void __55__WDSourceStoredDataViewController_deleteAllSourceData__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2B0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
    {
      __55__WDSourceStoredDataViewController_deleteAllSourceData__block_invoke_cold_1(a1, v6);
    }
  }
}

- (void)sourceIsInstalled
{
  v13 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v4 = NSStringFromSelector(a2);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1(&dword_251E85000, v5, v6, "%@ sourceIsInstalled: %@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

void __48__WDSourceStoredDataViewController_deleteSource__block_invoke_cold_1(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 source];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1(&dword_251E85000, v5, v6, "Source %@ not deleted: %@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

void __55__WDSourceStoredDataViewController_deleteAllSourceData__block_invoke_cold_1(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = NSStringFromSelector(v2);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1(&dword_251E85000, v5, v6, "%@ deleteAllSamplesWithTypes: %@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

@end