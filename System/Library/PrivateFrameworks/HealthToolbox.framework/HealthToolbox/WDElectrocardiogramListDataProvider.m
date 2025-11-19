@interface WDElectrocardiogramListDataProvider
- (WDElectrocardiogramListDataProvider)initWithDisplayType:(id)a3 profile:(id)a4;
- (WDElectrocardiogramListDataProvider)initWithDisplayType:(id)a3 profile:(id)a4 mode:(int64_t)a5;
- (id)_cellForSample:(id)a3 indexPath:(id)a4 tableView:(id)a5 activeAlgorithmVersion:(int64_t)a6;
- (id)_compactCellForSample:(id)a3 indexPath:(id)a4 tableView:(id)a5 activeAlgorithmVersion:(int64_t)a6;
- (id)_waveCellForSample:(id)a3 indexPath:(id)a4 tableView:(id)a5 activeAlgorithmVersion:(int64_t)a6;
- (id)activeECGAlgorithmVersion;
- (id)createQueryForSampleType:(id)a3 predicate:(id)a4 limit:(int64_t)a5 sortDescriptors:(id)a6 resultsHandler:(id)a7;
- (id)customCellForObject:(id)a3 indexPath:(id)a4 tableView:(id)a5;
- (id)customLoadingCellForRowAtIndexPath:(id)a3 tableView:(id)a4;
- (id)sampleTypes;
- (id)viewControllerForItemAtIndexPath:(id)a3;
- (unint64_t)numberOfObjectsForSection:(unint64_t)a3;
- (unint64_t)numberOfSections;
- (void)activeECGAlgorithmVersion;
- (void)customizeTableView:(id)a3;
- (void)refineSamplesWithCompletion:(id)a3;
@end

@implementation WDElectrocardiogramListDataProvider

- (WDElectrocardiogramListDataProvider)initWithDisplayType:(id)a3 profile:(id)a4
{
  v5.receiver = self;
  v5.super_class = WDElectrocardiogramListDataProvider;
  result = [(WDSampleListDataProvider *)&v5 initWithDisplayType:a3 profile:a4];
  if (result)
  {
    result->_mode = 0;
  }

  return result;
}

- (WDElectrocardiogramListDataProvider)initWithDisplayType:(id)a3 profile:(id)a4 mode:(int64_t)a5
{
  v7.receiver = self;
  v7.super_class = WDElectrocardiogramListDataProvider;
  result = [(WDSampleListDataProvider *)&v7 initWithDisplayType:a3 profile:a4];
  if (result)
  {
    result->_mode = a5;
  }

  return result;
}

- (id)activeECGAlgorithmVersion
{
  v2 = MEMORY[0x277CCD380];
  v3 = [(WDSampleListDataProvider *)self profile];
  v4 = [v3 healthStore];
  v9 = 0;
  v5 = [v2 versionWithHealthStore:v4 error:&v9];
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

- (id)createQueryForSampleType:(id)a3 predicate:(id)a4 limit:(int64_t)a5 sortDescriptors:(id)a6 resultsHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  if ([(WDElectrocardiogramListDataProvider *)self recentSampleLimit])
  {
    a5 = [(WDElectrocardiogramListDataProvider *)self recentSampleLimit];
  }

  v18.receiver = self;
  v18.super_class = WDElectrocardiogramListDataProvider;
  v16 = [(WDSampleListDataProvider *)&v18 createQueryForSampleType:v12 predicate:v13 limit:a5 sortDescriptors:v14 resultsHandler:v15];

  return v16;
}

- (void)refineSamplesWithCompletion:(id)a3
{
  v13 = a3;
  if ([(WDElectrocardiogramListDataProvider *)self recentSampleLimit])
  {
    v4 = [(WDSampleListDataProvider *)self samples];
    v5 = [v4 allSamples];

    v6 = [MEMORY[0x277CBEB58] set];
    for (i = -[WDElectrocardiogramListDataProvider recentSampleLimit](self, "recentSampleLimit"); i < [v5 count]; ++i)
    {
      v8 = [v5 objectAtIndexedSubscript:i];
      v9 = [v8 UUID];
      [v6 addObject:v9];
    }

    v13[2](v13, v6, 0);
    if ([(WDElectrocardiogramListDataProvider *)self shouldConsiderRequeryDueToDeletedObjects])
    {
      [(WDElectrocardiogramListDataProvider *)self setShouldConsiderRequeryDueToDeletedObjects:0];
      v10 = [(WDSampleListDataProvider *)self samples];
      v11 = [v10 count];
      v12 = [(WDElectrocardiogramListDataProvider *)self recentSampleLimit];

      if (v11 < v12)
      {
        [(WDSampleListDataProvider *)self viewControllerWantsDataIncludingDate:0];
      }
    }
  }

  else
  {
    v13[2](v13, 0, 0);
  }
}

- (id)sampleTypes
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = [(WDSampleListDataProvider *)self displayType];
  v3 = [v2 sampleType];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (unint64_t)numberOfSections
{
  v2 = [(WDSampleListDataProvider *)self samples];
  v3 = [v2 count] > 0;

  return v3;
}

- (unint64_t)numberOfObjectsForSection:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = WDElectrocardiogramListDataProvider;
  return [(WDSampleListDataProvider *)&v4 numberOfObjectsForSection:a3];
}

- (void)customizeTableView:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = WDElectrocardiogramListDataProvider;
  [(WDSampleListDataProvider *)&v6 customizeTableView:v4];
  if (![(WDElectrocardiogramListDataProvider *)self recentSampleLimit]&& ![(WDElectrocardiogramListDataProvider *)self mode])
  {
    v5 = [MEMORY[0x277D75348] clearColor];
    [v4 setSeparatorColor:v5];
  }
}

- (id)_cellForSample:(id)a3 indexPath:(id)a4 tableView:(id)a5 activeAlgorithmVersion:(int64_t)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  if ([(WDElectrocardiogramListDataProvider *)self mode])
  {
    [(WDElectrocardiogramListDataProvider *)self _compactCellForSample:v12 indexPath:v11 tableView:v10 activeAlgorithmVersion:a6];
  }

  else
  {
    [(WDElectrocardiogramListDataProvider *)self _waveCellForSample:v12 indexPath:v11 tableView:v10 activeAlgorithmVersion:a6];
  }
  v13 = ;

  return v13;
}

- (id)_waveCellForSample:(id)a3 indexPath:(id)a4 tableView:(id)a5 activeAlgorithmVersion:(int64_t)a6
{
  v10 = a3;
  v11 = MEMORY[0x277D12888];
  v12 = a5;
  v13 = a4;
  v14 = [v11 defaultReuseIdentifier];
  v15 = [v12 dequeueReusableCellWithIdentifier:v14];

  if (v15)
  {
    [v15 setSample:v10];
    [v15 setActiveAlgorithmVersion:a6];
  }

  else
  {
    v16 = objc_alloc(MEMORY[0x277D12888]);
    v17 = [(WDSampleListDataProvider *)self profile];
    v18 = [v17 dateCache];
    v15 = [v16 initWithSample:v10 dateCache:v18 onboarding:0 activeAlgorithmVersion:a6];
  }

  v19 = [v13 row];

  v20 = [(WDSampleListDataProvider *)self samples];
  v21 = [v20 allSamples];
  [v15 setBottomPaddingDisabled:{v19 == objc_msgSend(v21, "count") - 1}];

  return v15;
}

- (id)_compactCellForSample:(id)a3 indexPath:(id)a4 tableView:(id)a5 activeAlgorithmVersion:(int64_t)a6
{
  v8 = a3;
  v9 = MEMORY[0x277D12888];
  v10 = a5;
  v11 = [v9 defaultReuseIdentifier];
  v12 = [v10 dequeueReusableCellWithIdentifier:v11];

  if (v12)
  {
    if (v8)
    {
LABEL_3:
      v13 = [v8 _localizedClassificationWithActiveAlgorithmVersion:a6];
      v14 = v13;
      if (v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = @" ";
      }

      v16 = [v12 textLabel];
      [v16 setText:v15];

      v17 = [v8 endDate];
      v18 = HKLocalizedStringForDateAndTemplate();
      v19 = [v12 detailTextLabel];
      [v19 setText:v18];

      goto LABEL_9;
    }
  }

  else
  {
    v20 = objc_alloc(MEMORY[0x277D75B48]);
    v21 = [MEMORY[0x277D12888] defaultReuseIdentifier];
    v12 = [v20 initWithStyle:3 reuseIdentifier:v21];

    if (v8)
    {
      goto LABEL_3;
    }
  }

  v22 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v23 = [v22 localizedStringForKey:@"ECG_CARD_LOADING_TEXT" value:&stru_28641D9B8 table:@"HealthUI-Localizable-Cinnamon"];
  v24 = HKConditionallyRedactedHeartRhythmString();
  v25 = [v12 textLabel];
  [v25 setText:v24];

  v17 = [v12 detailTextLabel];
  [v17 setText:&stru_28641D9B8];
LABEL_9:

  v26 = [MEMORY[0x277D75348] secondaryLabelColor];
  v27 = [v12 detailTextLabel];
  [v27 setTextColor:v26];

  [v12 setAccessoryType:1];

  return v12;
}

- (id)customCellForObject:(id)a3 indexPath:(id)a4 tableView:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(WDElectrocardiogramListDataProvider *)self activeECGAlgorithmVersion];
  v12 = v11;
  if (v11)
  {
    -[WDElectrocardiogramListDataProvider _cellForSample:indexPath:tableView:activeAlgorithmVersion:](self, "_cellForSample:indexPath:tableView:activeAlgorithmVersion:", v8, v9, v10, [v11 integerValue]);
  }

  else
  {
    [(WDElectrocardiogramListDataProvider *)self placeholderCellAtIndexPath:v9 tableView:v10];
  }
  v13 = ;

  return v13;
}

- (id)customLoadingCellForRowAtIndexPath:(id)a3 tableView:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[WDSpinnerTableViewCell defaultReuseIdentifier];
  v8 = [v5 dequeueReusableCellWithIdentifier:v7 forIndexPath:v6];

  v9 = [MEMORY[0x277D75348] clearColor];
  [v8 setBackgroundColor:v9];

  return v8;
}

- (id)viewControllerForItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 row];
  v6 = [v4 section];

  v7 = [(WDSampleListDataProvider *)self objectAtIndex:v5 forSection:v6];
  v8 = [WDElectrocardiogramDataMetadataViewController alloc];
  v9 = [(WDElectrocardiogramListDataProvider *)self mode];
  v10 = [(WDElectrocardiogramListDataProvider *)self activeECGAlgorithmVersion];
  v11 = [(WDElectrocardiogramDataMetadataViewController *)v8 initWithSample:v7 delegate:self mode:v9 activeAlgorithmVersion:v10];

  return v11;
}

- (void)activeECGAlgorithmVersion
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136446466;
  v4 = "[WDElectrocardiogramListDataProvider activeECGAlgorithmVersion]";
  v5 = 2114;
  v6 = a1;
  _os_log_error_impl(&dword_251E85000, a2, OS_LOG_TYPE_ERROR, "[%{public}s] Failed to fetch algorithm version: %{public}@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end