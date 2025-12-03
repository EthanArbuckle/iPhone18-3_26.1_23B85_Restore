@interface WDElectrocardiogramListDataProvider
- (WDElectrocardiogramListDataProvider)initWithDisplayType:(id)type profile:(id)profile;
- (WDElectrocardiogramListDataProvider)initWithDisplayType:(id)type profile:(id)profile mode:(int64_t)mode;
- (id)_cellForSample:(id)sample indexPath:(id)path tableView:(id)view activeAlgorithmVersion:(int64_t)version;
- (id)_compactCellForSample:(id)sample indexPath:(id)path tableView:(id)view activeAlgorithmVersion:(int64_t)version;
- (id)_waveCellForSample:(id)sample indexPath:(id)path tableView:(id)view activeAlgorithmVersion:(int64_t)version;
- (id)activeECGAlgorithmVersion;
- (id)createQueryForSampleType:(id)type predicate:(id)predicate limit:(int64_t)limit sortDescriptors:(id)descriptors resultsHandler:(id)handler;
- (id)customCellForObject:(id)object indexPath:(id)path tableView:(id)view;
- (id)customLoadingCellForRowAtIndexPath:(id)path tableView:(id)view;
- (id)sampleTypes;
- (id)viewControllerForItemAtIndexPath:(id)path;
- (unint64_t)numberOfObjectsForSection:(unint64_t)section;
- (unint64_t)numberOfSections;
- (void)activeECGAlgorithmVersion;
- (void)customizeTableView:(id)view;
- (void)refineSamplesWithCompletion:(id)completion;
@end

@implementation WDElectrocardiogramListDataProvider

- (WDElectrocardiogramListDataProvider)initWithDisplayType:(id)type profile:(id)profile
{
  v5.receiver = self;
  v5.super_class = WDElectrocardiogramListDataProvider;
  result = [(WDSampleListDataProvider *)&v5 initWithDisplayType:type profile:profile];
  if (result)
  {
    result->_mode = 0;
  }

  return result;
}

- (WDElectrocardiogramListDataProvider)initWithDisplayType:(id)type profile:(id)profile mode:(int64_t)mode
{
  v7.receiver = self;
  v7.super_class = WDElectrocardiogramListDataProvider;
  result = [(WDSampleListDataProvider *)&v7 initWithDisplayType:type profile:profile];
  if (result)
  {
    result->_mode = mode;
  }

  return result;
}

- (id)activeECGAlgorithmVersion
{
  v2 = MEMORY[0x277CCD380];
  profile = [(WDSampleListDataProvider *)self profile];
  healthStore = [profile healthStore];
  v9 = 0;
  v5 = [v2 versionWithHealthStore:healthStore error:&v9];
  v6 = v9;

  if (v6)
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
    {
      [(WDElectrocardiogramListDataProvider *)v6 activeECGAlgorithmVersion];
    }
  }

  return v5;
}

- (id)createQueryForSampleType:(id)type predicate:(id)predicate limit:(int64_t)limit sortDescriptors:(id)descriptors resultsHandler:(id)handler
{
  typeCopy = type;
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
  handlerCopy = handler;
  if ([(WDElectrocardiogramListDataProvider *)self recentSampleLimit])
  {
    limit = [(WDElectrocardiogramListDataProvider *)self recentSampleLimit];
  }

  v18.receiver = self;
  v18.super_class = WDElectrocardiogramListDataProvider;
  v16 = [(WDSampleListDataProvider *)&v18 createQueryForSampleType:typeCopy predicate:predicateCopy limit:limit sortDescriptors:descriptorsCopy resultsHandler:handlerCopy];

  return v16;
}

- (void)refineSamplesWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(WDElectrocardiogramListDataProvider *)self recentSampleLimit])
  {
    samples = [(WDSampleListDataProvider *)self samples];
    allSamples = [samples allSamples];

    v6 = [MEMORY[0x277CBEB58] set];
    for (i = -[WDElectrocardiogramListDataProvider recentSampleLimit](self, "recentSampleLimit"); i < [allSamples count]; ++i)
    {
      v8 = [allSamples objectAtIndexedSubscript:i];
      uUID = [v8 UUID];
      [v6 addObject:uUID];
    }

    completionCopy[2](completionCopy, v6, 0);
    if ([(WDElectrocardiogramListDataProvider *)self shouldConsiderRequeryDueToDeletedObjects])
    {
      [(WDElectrocardiogramListDataProvider *)self setShouldConsiderRequeryDueToDeletedObjects:0];
      samples2 = [(WDSampleListDataProvider *)self samples];
      v11 = [samples2 count];
      recentSampleLimit = [(WDElectrocardiogramListDataProvider *)self recentSampleLimit];

      if (v11 < recentSampleLimit)
      {
        [(WDSampleListDataProvider *)self viewControllerWantsDataIncludingDate:0];
      }
    }
  }

  else
  {
    completionCopy[2](completionCopy, 0, 0);
  }
}

- (id)sampleTypes
{
  v7[1] = *MEMORY[0x277D85DE8];
  displayType = [(WDSampleListDataProvider *)self displayType];
  sampleType = [displayType sampleType];
  v7[0] = sampleType;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (unint64_t)numberOfSections
{
  samples = [(WDSampleListDataProvider *)self samples];
  v3 = [samples count] > 0;

  return v3;
}

- (unint64_t)numberOfObjectsForSection:(unint64_t)section
{
  v4.receiver = self;
  v4.super_class = WDElectrocardiogramListDataProvider;
  return [(WDSampleListDataProvider *)&v4 numberOfObjectsForSection:section];
}

- (void)customizeTableView:(id)view
{
  viewCopy = view;
  v6.receiver = self;
  v6.super_class = WDElectrocardiogramListDataProvider;
  [(WDSampleListDataProvider *)&v6 customizeTableView:viewCopy];
  if (![(WDElectrocardiogramListDataProvider *)self recentSampleLimit]&& ![(WDElectrocardiogramListDataProvider *)self mode])
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [viewCopy setSeparatorColor:clearColor];
  }
}

- (id)_cellForSample:(id)sample indexPath:(id)path tableView:(id)view activeAlgorithmVersion:(int64_t)version
{
  viewCopy = view;
  pathCopy = path;
  sampleCopy = sample;
  if ([(WDElectrocardiogramListDataProvider *)self mode])
  {
    [(WDElectrocardiogramListDataProvider *)self _compactCellForSample:sampleCopy indexPath:pathCopy tableView:viewCopy activeAlgorithmVersion:version];
  }

  else
  {
    [(WDElectrocardiogramListDataProvider *)self _waveCellForSample:sampleCopy indexPath:pathCopy tableView:viewCopy activeAlgorithmVersion:version];
  }
  v13 = ;

  return v13;
}

- (id)_waveCellForSample:(id)sample indexPath:(id)path tableView:(id)view activeAlgorithmVersion:(int64_t)version
{
  sampleCopy = sample;
  v11 = MEMORY[0x277D12888];
  viewCopy = view;
  pathCopy = path;
  defaultReuseIdentifier = [v11 defaultReuseIdentifier];
  v15 = [viewCopy dequeueReusableCellWithIdentifier:defaultReuseIdentifier];

  if (v15)
  {
    [v15 setSample:sampleCopy];
    [v15 setActiveAlgorithmVersion:version];
  }

  else
  {
    v16 = objc_alloc(MEMORY[0x277D12888]);
    profile = [(WDSampleListDataProvider *)self profile];
    dateCache = [profile dateCache];
    v15 = [v16 initWithSample:sampleCopy dateCache:dateCache onboarding:0 activeAlgorithmVersion:version];
  }

  v19 = [pathCopy row];

  samples = [(WDSampleListDataProvider *)self samples];
  allSamples = [samples allSamples];
  [v15 setBottomPaddingDisabled:{v19 == objc_msgSend(allSamples, "count") - 1}];

  return v15;
}

- (id)_compactCellForSample:(id)sample indexPath:(id)path tableView:(id)view activeAlgorithmVersion:(int64_t)version
{
  sampleCopy = sample;
  v9 = MEMORY[0x277D12888];
  viewCopy = view;
  defaultReuseIdentifier = [v9 defaultReuseIdentifier];
  v12 = [viewCopy dequeueReusableCellWithIdentifier:defaultReuseIdentifier];

  if (v12)
  {
    if (sampleCopy)
    {
LABEL_3:
      v13 = [sampleCopy _localizedClassificationWithActiveAlgorithmVersion:version];
      v14 = v13;
      if (v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = @" ";
      }

      textLabel = [v12 textLabel];
      [textLabel setText:v15];

      endDate = [sampleCopy endDate];
      v18 = HKLocalizedStringForDateAndTemplate();
      detailTextLabel = [v12 detailTextLabel];
      [detailTextLabel setText:v18];

      goto LABEL_9;
    }
  }

  else
  {
    v20 = objc_alloc(MEMORY[0x277D75B48]);
    defaultReuseIdentifier2 = [MEMORY[0x277D12888] defaultReuseIdentifier];
    v12 = [v20 initWithStyle:3 reuseIdentifier:defaultReuseIdentifier2];

    if (sampleCopy)
    {
      goto LABEL_3;
    }
  }

  v22 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v23 = [v22 localizedStringForKey:@"ECG_CARD_LOADING_TEXT" value:&stru_28641D9B8 table:@"HealthUI-Localizable-Cinnamon"];
  v24 = HKConditionallyRedactedHeartRhythmString();
  textLabel2 = [v12 textLabel];
  [textLabel2 setText:v24];

  endDate = [v12 detailTextLabel];
  [endDate setText:&stru_28641D9B8];
LABEL_9:

  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  detailTextLabel2 = [v12 detailTextLabel];
  [detailTextLabel2 setTextColor:secondaryLabelColor];

  [v12 setAccessoryType:1];

  return v12;
}

- (id)customCellForObject:(id)object indexPath:(id)path tableView:(id)view
{
  objectCopy = object;
  pathCopy = path;
  viewCopy = view;
  activeECGAlgorithmVersion = [(WDElectrocardiogramListDataProvider *)self activeECGAlgorithmVersion];
  v12 = activeECGAlgorithmVersion;
  if (activeECGAlgorithmVersion)
  {
    -[WDElectrocardiogramListDataProvider _cellForSample:indexPath:tableView:activeAlgorithmVersion:](self, "_cellForSample:indexPath:tableView:activeAlgorithmVersion:", objectCopy, pathCopy, viewCopy, [activeECGAlgorithmVersion integerValue]);
  }

  else
  {
    [(WDElectrocardiogramListDataProvider *)self placeholderCellAtIndexPath:pathCopy tableView:viewCopy];
  }
  v13 = ;

  return v13;
}

- (id)customLoadingCellForRowAtIndexPath:(id)path tableView:(id)view
{
  viewCopy = view;
  pathCopy = path;
  v7 = +[WDSpinnerTableViewCell defaultReuseIdentifier];
  v8 = [viewCopy dequeueReusableCellWithIdentifier:v7 forIndexPath:pathCopy];

  clearColor = [MEMORY[0x277D75348] clearColor];
  [v8 setBackgroundColor:clearColor];

  return v8;
}

- (id)viewControllerForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [pathCopy row];
  section = [pathCopy section];

  v7 = [(WDSampleListDataProvider *)self objectAtIndex:v5 forSection:section];
  v8 = [WDElectrocardiogramDataMetadataViewController alloc];
  mode = [(WDElectrocardiogramListDataProvider *)self mode];
  activeECGAlgorithmVersion = [(WDElectrocardiogramListDataProvider *)self activeECGAlgorithmVersion];
  v11 = [(WDElectrocardiogramDataMetadataViewController *)v8 initWithSample:v7 delegate:self mode:mode activeAlgorithmVersion:activeECGAlgorithmVersion];

  return v11;
}

- (void)activeECGAlgorithmVersion
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136446466;
  v4 = "[WDElectrocardiogramListDataProvider activeECGAlgorithmVersion]";
  v5 = 2114;
  selfCopy = self;
  _os_log_error_impl(&dword_251E85000, a2, OS_LOG_TYPE_ERROR, "[%{public}s] Failed to fetch algorithm version: %{public}@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end