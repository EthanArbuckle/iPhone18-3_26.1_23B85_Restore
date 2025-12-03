@interface HRElectrocardiogramEducationSection
- (BOOL)_hasOnboardedBefore;
- (HRElectrocardiogramEducationSection)initWithHealthStore:(id)store forSinglePlayer:(BOOL)player activeAlgorithmVersion:(id)version;
- (id)_cellTitleForEducationRow:(unint64_t)row;
- (id)_viewControllerForEducationRow:(unint64_t)row;
- (id)cellForIndex:(unint64_t)index tableView:(id)view;
- (id)fetchActiveECGAlgorithmVersion;
- (unint64_t)numberOfRowsInSection;
- (void)_hasOnboardedBefore;
- (void)fetchActiveECGAlgorithmVersion;
- (void)selectCellForIndex:(unint64_t)index navigationController:(id)controller animated:(BOOL)animated;
@end

@implementation HRElectrocardiogramEducationSection

- (HRElectrocardiogramEducationSection)initWithHealthStore:(id)store forSinglePlayer:(BOOL)player activeAlgorithmVersion:(id)version
{
  storeCopy = store;
  versionCopy = version;
  v14.receiver = self;
  v14.super_class = HRElectrocardiogramEducationSection;
  v11 = [(HRElectrocardiogramEducationSection *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_store, store);
    v12->_forSinglePlayer = player;
    objc_storeStrong(&v12->_activeAlgorithmVersion, version);
  }

  return v12;
}

- (id)fetchActiveECGAlgorithmVersion
{
  activeAlgorithmVersion = self->_activeAlgorithmVersion;
  if (activeAlgorithmVersion)
  {
    v3 = activeAlgorithmVersion;
  }

  else
  {
    store = [(HRElectrocardiogramEducationSection *)self store];
    profileIdentifier = [store profileIdentifier];
    type = [profileIdentifier type];

    if (type == 1)
    {
      v8 = MEMORY[0x277CCD380];
      store2 = [(HRElectrocardiogramEducationSection *)self store];
      v13 = 0;
      v3 = [v8 versionWithHealthStore:store2 error:&v13];
      v10 = v13;

      if (v10)
      {
        _HKInitializeLogging();
        v11 = *MEMORY[0x277CCC2D8];
        if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
        {
          [(HRElectrocardiogramEducationSection *)v10 fetchActiveECGAlgorithmVersion];
        }
      }
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (unint64_t)numberOfRowsInSection
{
  if (self->_forSinglePlayer)
  {
    return 4;
  }

  else
  {
    return 3;
  }
}

- (id)cellForIndex:(unint64_t)index tableView:(id)view
{
  v6 = [view dequeueReusableCellWithIdentifier:@"UITableViewCell"];
  if (!v6)
  {
    v6 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:@"UITableViewCell"];
    textLabel = [v6 textLabel];
    [textLabel setAdjustsFontForContentSizeCategory:1];

    textLabel2 = [v6 textLabel];
    [textLabel2 setNumberOfLines:0];

    [v6 setAccessoryType:1];
  }

  v9 = [(HRElectrocardiogramEducationSection *)self _cellTitleForEducationRow:index];
  textLabel3 = [v6 textLabel];
  [textLabel3 setText:v9];

  detailTextLabel = [v6 detailTextLabel];
  [detailTextLabel setText:0];

  v12 = [@"Education" stringByAppendingFormat:@".Cell.%@", v9];
  v13 = [MEMORY[0x277CCACA8] healthAccessibilityIdentifier:1 suffix:v12];
  [v6 setAccessibilityIdentifier:v13];

  return v6;
}

- (void)selectCellForIndex:(unint64_t)index navigationController:(id)controller animated:(BOOL)animated
{
  controllerCopy = controller;
  v7 = [(HRElectrocardiogramEducationSection *)self _viewControllerForEducationRow:index];
  if (v7)
  {
    topViewController = [controllerCopy topViewController];
    [topViewController showAdaptively:v7 sender:0 animated:1];
  }
}

- (id)_cellTitleForEducationRow:(unint64_t)row
{
  if (row > 1)
  {
    if (row == 2)
    {
      if ([(HRElectrocardiogramEducationSection *)self _hasOnboardedBefore])
      {
        v3 = @"ECG_V2_ONBOARDING_4_TITLE";
      }

      else
      {
        v3 = @"ECG_ONBOARDING_4_TITLE";
      }
    }

    else
    {
      if (row != 3)
      {
        goto LABEL_13;
      }

      v3 = @"ECG_EDUCATION_5_TITLE";
    }
  }

  else if (row)
  {
    if (row != 1)
    {
      goto LABEL_13;
    }

    v3 = @"ECG_EDUCATION_3_TITLE";
  }

  else
  {
    v3 = @"ECG_ONBOARDING_2_TITLE";
  }

  self = HRUIECGLocalizedString(v3);
LABEL_13:

  return self;
}

- (id)_viewControllerForEducationRow:(unint64_t)row
{
  v4 = 0;
  if (row > 1)
  {
    if (row == 2)
    {
      v7 = HROnboardingElectrocardiogramFeatureLimitationsViewController;
    }

    else
    {
      if (row != 3)
      {
        goto LABEL_14;
      }

      v7 = HROnboardingElectrocardiogramTakeRecordingViewController;
    }

    goto LABEL_11;
  }

  if (!row)
  {
    v7 = HROnboardingElectrocardiogramExplanationViewController;
LABEL_11:
    v4 = [[v7 alloc] initForOnboarding:0];
    goto LABEL_14;
  }

  if (row == 1)
  {
    fetchActiveECGAlgorithmVersion = [(HRElectrocardiogramEducationSection *)self fetchActiveECGAlgorithmVersion];
    v6 = fetchActiveECGAlgorithmVersion;
    if (fetchActiveECGAlgorithmVersion)
    {
      v4 = +[HRElectrocardiogramOnboardingManager electrocardiogramPossibleResultsViewControllerForAlgorithmVersion:forOnboarding:](HRElectrocardiogramOnboardingManager, "electrocardiogramPossibleResultsViewControllerForAlgorithmVersion:forOnboarding:", [fetchActiveECGAlgorithmVersion integerValue], 0);
    }

    else
    {
      v4 = 0;
    }
  }

LABEL_14:
  [v4 setDelegate:self];

  return v4;
}

- (BOOL)_hasOnboardedBefore
{
  v3 = objc_alloc(MEMORY[0x277CCD460]);
  v4 = *MEMORY[0x277CCC010];
  store = [(HRElectrocardiogramEducationSection *)self store];
  v6 = [v3 initWithFeatureIdentifier:v4 healthStore:store];

  v12 = 0;
  v7 = [v6 featureStatusWithError:&v12];
  v8 = v12;
  if (!v7)
  {
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
    {
      [(HRElectrocardiogramEducationSection *)self _hasOnboardedBefore];
    }
  }

  isOnboardingRecordPresent = [v7 isOnboardingRecordPresent];

  return isOnboardingRecordPresent;
}

- (void)fetchActiveECGAlgorithmVersion
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136446466;
  v3 = "[HRElectrocardiogramEducationSection fetchActiveECGAlgorithmVersion]";
  v4 = 2114;
  selfCopy = self;
  _os_log_error_impl(&dword_2521E7000, a2, OS_LOG_TYPE_ERROR, "[%{public}s] Failed to fetch algorithm version: %{public}@", &v2, 0x16u);
}

- (void)_hasOnboardedBefore
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  selfCopy = self;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_2521E7000, log, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to get feature status with error: %@", &v3, 0x16u);
}

@end