@interface WDElectrocardiogramInternalSettingsViewController
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (BOOL)tableView:(id)a3 canMoveRowAtIndexPath:(id)a4;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (HKHostingAreaLayoutView)pickerInputView;
- (NSArray)allDemoResults;
- (UIPickerView)resultPicker;
- (WDElectrocardiogramInternalSettingsViewController)initWithHealthStore:(id)a3 dateCache:(id)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_buttonCellForTableView:(id)a3;
- (id)_onboardingCompletedAlgorithmVersion;
- (id)_styleSubtitleCellForTableView:(id)a3;
- (id)_styleValue1CellForTableView:(id)a3 inputView:(id)a4;
- (id)displayableDescriptionFromValue:(id)a3;
- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (unint64_t)_overrideAlgorithmVersion;
- (void)_presentAvailabilityInternalSettingsViewController;
- (void)_presentOnboardingManagerWithOnboardingType:(int64_t)a3;
- (void)_resetOnboarding;
- (void)_saveOverrideAlgorithmVersionIfNeeded:(int64_t)a3;
- (void)_startFullOnboardingFromSourceItem:(id)a3;
- (void)_startUpgradeFromSourceItem:(id)a3;
- (void)clearCellIndexNumberLabels;
- (void)dealloc;
- (void)didTapOnElectrocardiogram:(id)a3;
- (void)heartRhythmAvailabilityDidUpdate;
- (void)keyboardDidDismiss:(id)a3;
- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5;
- (void)reloadKeyValueDomainContent;
- (void)setDemoResultKeys:(id)a3;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5;
- (void)updateCellIndexNumberLabels;
- (void)viewControllerDidLeaveAdaptiveModal;
- (void)viewControllerWillEnterAdaptiveModal;
- (void)viewDidLoad;
@end

@implementation WDElectrocardiogramInternalSettingsViewController

- (WDElectrocardiogramInternalSettingsViewController)initWithHealthStore:(id)a3 dateCache:(id)a4
{
  v25[3] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v24.receiver = self;
  v24.super_class = WDElectrocardiogramInternalSettingsViewController;
  v9 = [(WDElectrocardiogramInternalSettingsViewController *)&v24 initWithStyle:1];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dateCache, a4);
    objc_storeStrong(&v10->_healthStore, a3);
    v11 = [MEMORY[0x277CCD570] heartRhythmDefaultsDomainWithHealthStore:v7];
    keyValueDomain = v10->_keyValueDomain;
    v10->_keyValueDomain = v11;

    v13 = objc_alloc_init(MEMORY[0x277D2BA60]);
    syncManager = v10->_syncManager;
    v10->_syncManager = v13;

    v15 = [MEMORY[0x277CBEBD0] hk_heartRhythmDefaults];
    v16 = [v15 hk_demoResultKeys];
    demoResultKeys = v10->_demoResultKeys;
    v10->_demoResultKeys = v16;

    v18 = [objc_alloc(MEMORY[0x277CCD530]) initWithHealthStore:v7];
    heartRhythmAvailability = v10->_heartRhythmAvailability;
    v10->_heartRhythmAvailability = v18;

    v25[0] = @"No override";
    v25[1] = @"ECG 1";
    v25[2] = @"ECG 2";
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:3];
    allAlgorithmVersions = v10->_allAlgorithmVersions;
    v10->_allAlgorithmVersions = v20;

    [(HKHeartRhythmAvailability *)v10->_heartRhythmAvailability addHeartRhythmAvailabilityObserver:v10];
  }

  v22 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)dealloc
{
  [(HKHeartRhythmAvailability *)self->_heartRhythmAvailability removeHeartRhythmAvailabilityObserver:self];
  v3.receiver = self;
  v3.super_class = WDElectrocardiogramInternalSettingsViewController;
  [(WDElectrocardiogramInternalSettingsViewController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = WDElectrocardiogramInternalSettingsViewController;
  [(HKTableViewController *)&v14 viewDidLoad];
  v3 = objc_alloc_init(MEMORY[0x277D75840]);
  [(WDElectrocardiogramInternalSettingsViewController *)self setAlgorithmVersionPicker:v3];

  v4 = [(WDElectrocardiogramInternalSettingsViewController *)self algorithmVersionPicker];
  [v4 setDataSource:self];

  v5 = [(WDElectrocardiogramInternalSettingsViewController *)self algorithmVersionPicker];
  [v5 setDelegate:self];

  v6 = [(WDElectrocardiogramInternalSettingsViewController *)self algorithmVersionPicker];
  [v6 selectRow:-[WDElectrocardiogramInternalSettingsViewController _overrideAlgorithmVersion](self inComponent:"_overrideAlgorithmVersion") animated:{0, 0}];

  v7 = MEMORY[0x277D128D8];
  v8 = [(WDElectrocardiogramInternalSettingsViewController *)self algorithmVersionPicker];
  v9 = [v7 viewHostingView:v8];
  [(WDElectrocardiogramInternalSettingsViewController *)self setAlgorithmVersionPickerInputView:v9];

  v10 = [(WDElectrocardiogramInternalSettingsViewController *)self tableView];
  [v10 setKeyboardDismissMode:1];

  v11 = [(WDElectrocardiogramInternalSettingsViewController *)self editButtonItem];
  v12 = [(WDElectrocardiogramInternalSettingsViewController *)self navigationItem];
  [v12 setRightBarButtonItem:v11];

  v13 = [MEMORY[0x277CCAB98] defaultCenter];
  [v13 addObserver:self selector:sel_keyboardDidDismiss_ name:*MEMORY[0x277D76C50] object:0];

  [(WDElectrocardiogramInternalSettingsViewController *)self reloadKeyValueDomainContent];
}

- (void)reloadKeyValueDomainContent
{
  objc_initWeak(&location, self);
  v3 = [(WDElectrocardiogramInternalSettingsViewController *)self keyValueDomain];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __80__WDElectrocardiogramInternalSettingsViewController_reloadKeyValueDomainContent__block_invoke;
  v4[3] = &unk_2796E7C08;
  objc_copyWeak(&v5, &location);
  [v3 allValuesWithCompletion:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __80__WDElectrocardiogramInternalSettingsViewController_reloadKeyValueDomainContent__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __80__WDElectrocardiogramInternalSettingsViewController_reloadKeyValueDomainContent__block_invoke_2;
  v5[3] = &unk_2796E6DE0;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);

  objc_destroyWeak(&v7);
}

void __80__WDElectrocardiogramInternalSettingsViewController_reloadKeyValueDomainContent__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) allKeys];
  v3 = [v2 hk_filter:&__block_literal_global_8];
  v4 = [v3 sortedArrayUsingSelector:sel_compare_];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setKeyValueDomainContentKeys:v4];

  v6 = *(a1 + 32);
  v7 = objc_loadWeakRetained((a1 + 40));
  [v7 setKeyValueDomainContent:v6];

  v10 = objc_loadWeakRetained((a1 + 40));
  v8 = [v10 tableView];
  v9 = [MEMORY[0x277CCAA78] indexSetWithIndex:4];
  [v8 reloadSections:v9 withRowAnimation:100];
}

- (void)setDemoResultKeys:(id)a3
{
  objc_storeStrong(&self->_demoResultKeys, a3);
  v5 = a3;
  v6 = [MEMORY[0x277CBEBD0] hk_heartRhythmDefaults];
  [v6 hk_setDemoResultKeys:v5];

  v9 = [(WDElectrocardiogramInternalSettingsViewController *)self syncManager];
  v7 = *MEMORY[0x277CCE460];
  v8 = [MEMORY[0x277CBEB98] setWithObject:@"DemoResultKeys"];

  [v9 synchronizeUserDefaultsDomain:v7 keys:v8];
}

- (UIPickerView)resultPicker
{
  resultPicker = self->_resultPicker;
  if (!resultPicker)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75840]);
    v5 = self->_resultPicker;
    self->_resultPicker = v4;

    [(UIPickerView *)self->_resultPicker setDataSource:self];
    [(UIPickerView *)self->_resultPicker setDelegate:self];
    resultPicker = self->_resultPicker;
  }

  return resultPicker;
}

- (HKHostingAreaLayoutView)pickerInputView
{
  pickerInputView = self->_pickerInputView;
  if (!pickerInputView)
  {
    v4 = MEMORY[0x277D128D8];
    v5 = [(WDElectrocardiogramInternalSettingsViewController *)self resultPicker];
    v6 = [v4 viewHostingView:v5];
    v7 = self->_pickerInputView;
    self->_pickerInputView = v6;

    pickerInputView = self->_pickerInputView;
  }

  return pickerInputView;
}

- (NSArray)allDemoResults
{
  allDemoResults = self->_allDemoResults;
  if (!allDemoResults)
  {
    self->_allDemoResults = &unk_28642DFC0;

    allDemoResults = self->_allDemoResults;
  }

  return allDemoResults;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  v7 = 1;
  if (a4 > 2)
  {
    if (a4 == 3)
    {
      v7 = 2;
    }

    else if (a4 == 4)
    {
      v8 = [(WDElectrocardiogramInternalSettingsViewController *)self keyValueDomainContentKeys];
      v9 = [v8 count];

      if (v9 <= 1)
      {
        v7 = 1;
      }

      else
      {
        v7 = v9;
      }
    }
  }

  else if (a4)
  {
    if (a4 == 2)
    {
      v7 = 2;
    }
  }

  else
  {
    v10 = [(WDElectrocardiogramInternalSettingsViewController *)self demoResultKeys];
    v7 = [v10 count] + 1;
  }

  return v7;
}

- (id)_buttonCellForTableView:(id)a3
{
  v3 = [a3 dequeueReusableCellWithIdentifier:@"ButtonCell"];
  if (!v3)
  {
    v3 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"ButtonCell"];
    v4 = [MEMORY[0x277D75348] hk_appKeyColor];
    v5 = [v3 textLabel];
    [v5 setTextColor:v4];
  }

  return v3;
}

- (id)_styleValue1CellForTableView:(id)a3 inputView:(id)a4
{
  v5 = a4;
  v6 = [a3 dequeueReusableCellWithIdentifier:@"AlgorithmVersionReuseIdentifier"];
  if (!v6)
  {
    v6 = [[WDProfileTableViewCell alloc] initWithStyle:1 reuseIdentifier:@"AlgorithmVersionReuseIdentifier"];
    [(WDProfileTableViewCell *)v6 setInputView:v5];
    v7 = [MEMORY[0x277D75348] hk_appKeyColor];
    v8 = [(WDProfileTableViewCell *)v6 displayNameLabel];
    [v8 setTextColor:v7];
  }

  return v6;
}

- (id)_styleSubtitleCellForTableView:(id)a3
{
  v3 = [a3 dequeueReusableCellWithIdentifier:@"SubtitleCellStyleReuseIdentifier"];
  if (!v3)
  {
    v3 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:3 reuseIdentifier:@"SubtitleCellStyleReuseIdentifier"];
    v4 = [MEMORY[0x277D75348] hk_appKeyColor];
    v5 = [v3 textLabel];
    [v5 setTextColor:v4];

    v6 = [v3 textLabel];
    v7 = [v6 font];
    v8 = [v3 detailTextLabel];
    [v8 setFont:v7];
  }

  return v3;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v8 section];
  if (v9 > 2)
  {
    if (v9 == 3)
    {
      v21 = [v8 row];
      v4 = [(WDElectrocardiogramInternalSettingsViewController *)self _buttonCellForTableView:v7];
      v22 = [(WDProfileTableViewCell *)v4 textLabel];
      v11 = v22;
      if (v21)
      {
        v23 = @"Start Upgrade";
      }

      else
      {
        v23 = @"Start Full Onboarding";
      }
    }

    else
    {
      if (v9 == 4)
      {
        v4 = [(WDElectrocardiogramInternalSettingsViewController *)self _styleSubtitleCellForTableView:v7];
        v24 = [(WDElectrocardiogramInternalSettingsViewController *)self keyValueDomainContentKeys];
        v25 = [v24 count];

        if (v25)
        {
          v26 = [(WDElectrocardiogramInternalSettingsViewController *)self keyValueDomainContentKeys];
          v11 = [v26 objectAtIndexedSubscript:{objc_msgSend(v8, "row")}];

          v27 = [(WDElectrocardiogramInternalSettingsViewController *)self keyValueDomainContent];
          v28 = [v27 objectForKeyedSubscript:v11];

          v29 = [v11 substringFromIndex:{objc_msgSend(@"HKElectrocardiogram", "length")}];
          v30 = [(WDProfileTableViewCell *)v4 textLabel];
          [v30 setText:v29];

          v31 = [(WDElectrocardiogramInternalSettingsViewController *)self displayableDescriptionFromValue:v28];
          v32 = [(WDProfileTableViewCell *)v4 detailTextLabel];
          [v32 setText:v31];

          goto LABEL_28;
        }

        v33 = [(WDProfileTableViewCell *)v4 textLabel];
        [v33 setText:@"N/A"];
      }

      else
      {
        if (v9 != 5)
        {
          goto LABEL_29;
        }

        v4 = [(WDElectrocardiogramInternalSettingsViewController *)self _styleValue1CellForTableView:v7 inputView:0];
        [(WDProfileTableViewCell *)v4 setAccessoryType:1];
        [(WDProfileTableViewCell *)v4 setDisplayName:@"Remote Feature Availability"];
      }

      v22 = [(WDProfileTableViewCell *)v4 detailTextLabel];
      v11 = v22;
      v23 = 0;
    }

    goto LABEL_27;
  }

  if (!v9)
  {
    v14 = [v8 row];
    v15 = [(WDElectrocardiogramInternalSettingsViewController *)self demoResultKeys];
    v16 = [v15 count];

    if (v14 < v16)
    {
      v4 = [v7 dequeueReusableCellWithIdentifier:@"DemoResult"];
      if (!v4)
      {
        v4 = [[WDProfileTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"DemoResult"];
        v17 = [(WDElectrocardiogramInternalSettingsViewController *)self pickerInputView];
        [(WDProfileTableViewCell *)v4 setInputView:v17];
      }

      v18 = MEMORY[0x277CCABB8];
      v19 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v8, "row") + 1}];
      v20 = [v18 localizedStringFromNumber:v19 numberStyle:0];
      [(WDProfileTableViewCell *)v4 setDisplayName:v20];

      v11 = [(WDElectrocardiogramInternalSettingsViewController *)self demoResultKeys];
      v12 = [v11 objectAtIndexedSubscript:{objc_msgSend(v8, "row")}];
      [(WDProfileTableViewCell *)v4 setDisplayValue:v12];
      goto LABEL_15;
    }

    v4 = [(WDElectrocardiogramInternalSettingsViewController *)self _buttonCellForTableView:v7];
    v22 = [(WDProfileTableViewCell *)v4 textLabel];
    v11 = v22;
    v23 = @"Add Result";
LABEL_27:
    [v22 setText:v23];
    goto LABEL_28;
  }

  if (v9 == 1)
  {
    v4 = [(WDElectrocardiogramInternalSettingsViewController *)self _buttonCellForTableView:v7];
    v22 = [(WDProfileTableViewCell *)v4 textLabel];
    v11 = v22;
    v23 = @"Delete All ECG Readings";
    goto LABEL_27;
  }

  if (v9 != 2)
  {
    goto LABEL_29;
  }

  if (![v8 row])
  {
    v4 = [(WDElectrocardiogramInternalSettingsViewController *)self _buttonCellForTableView:v7];
    v22 = [(WDProfileTableViewCell *)v4 textLabel];
    v11 = v22;
    v23 = @"Reset Onboarding History";
    goto LABEL_27;
  }

  v10 = [(WDElectrocardiogramInternalSettingsViewController *)self algorithmVersionPickerInputView];
  v4 = [(WDElectrocardiogramInternalSettingsViewController *)self _styleValue1CellForTableView:v7 inputView:v10];

  [(WDProfileTableViewCell *)v4 setDisplayName:@"Next Onboarding Override:"];
  v11 = [(WDElectrocardiogramInternalSettingsViewController *)self allAlgorithmVersions];
  v12 = [v11 objectAtIndexedSubscript:{-[WDElectrocardiogramInternalSettingsViewController _overrideAlgorithmVersion](self, "_overrideAlgorithmVersion")}];
  v13 = [(WDProfileTableViewCell *)v4 detailTextLabel];
  [v13 setText:v12];

LABEL_15:
LABEL_28:

LABEL_29:

  return v4;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v4 = [a4 section];
  result = 44.0;
  if (v4 == 4)
  {
    return 60.0;
  }

  return result;
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v5 = [a4 section];
  if (v5 == 4)
  {
    return 0;
  }

  if (v5 == 1)
  {
    return ![(WDElectrocardiogramInternalSettingsViewController *)self isDeletingSamples];
  }

  return 1;
}

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  v5 = a4;
  if ([v5 section])
  {
    v6 = 0;
  }

  else
  {
    v7 = [v5 row];
    v8 = [(WDElectrocardiogramInternalSettingsViewController *)self demoResultKeys];
    v6 = v7 < [v8 count];
  }

  return v6;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v18[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (a4 == 1 && ![v9 section])
  {
    v11 = [v10 row];
    v12 = [(WDElectrocardiogramInternalSettingsViewController *)self demoResultKeys];
    v13 = [v12 count];

    if (v11 < v13)
    {
      v14 = [(WDElectrocardiogramInternalSettingsViewController *)self demoResultKeys];
      v15 = [v14 mutableCopy];

      [v15 removeObjectAtIndex:{objc_msgSend(v10, "row")}];
      [(WDElectrocardiogramInternalSettingsViewController *)self setDemoResultKeys:v15];
      v18[0] = v10;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
      [v8 deleteRowsAtIndexPaths:v16 withRowAnimation:0];

      [(WDElectrocardiogramInternalSettingsViewController *)self updateCellIndexNumberLabels];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5
{
  v11 = a4;
  v7 = a5;
  if (![v11 section] && !objc_msgSend(v7, "section"))
  {
    v8 = [(WDElectrocardiogramInternalSettingsViewController *)self demoResultKeys];
    v9 = [v8 mutableCopy];

    v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v11, "row")}];
    [v9 removeObjectAtIndex:{objc_msgSend(v11, "row")}];
    [v9 insertObject:v10 atIndex:{objc_msgSend(v7, "row")}];
    [(WDElectrocardiogramInternalSettingsViewController *)self setDemoResultKeys:v9];
  }
}

- (BOOL)tableView:(id)a3 canMoveRowAtIndexPath:(id)a4
{
  v5 = a4;
  if ([v5 section])
  {
    v6 = 0;
  }

  else
  {
    v7 = [v5 row];
    v8 = [(WDElectrocardiogramInternalSettingsViewController *)self demoResultKeys];
    v6 = v7 < [v8 count];
  }

  return v6;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isEditing])
  {
    goto LABEL_28;
  }

  v8 = [v7 section];
  if (v8 <= 1)
  {
    if (v8)
    {
      if (v8 != 1)
      {
        goto LABEL_28;
      }

      v11 = [(WDElectrocardiogramInternalSettingsViewController *)self tableView];
      [v11 endEditing:0];

      v12 = [(WDElectrocardiogramInternalSettingsViewController *)self tableView];
      [v12 deselectRowAtIndexPath:v7 animated:1];

      if ([(WDElectrocardiogramInternalSettingsViewController *)self isDeletingSamples])
      {
        goto LABEL_28;
      }

      [(WDElectrocardiogramInternalSettingsViewController *)self setDeletingSamples:1];
      v13 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:@"Delete All ECG Samples" preferredStyle:0];
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __87__WDElectrocardiogramInternalSettingsViewController_tableView_didSelectRowAtIndexPath___block_invoke_3;
      v36[3] = &unk_2796E7088;
      v36[4] = self;
      v14 = [MEMORY[0x277D750F8] actionWithTitle:@"Delete All" style:2 handler:v36];
      [v13 addAction:v14];

      v15 = [MEMORY[0x277D750F8] actionWithTitle:@"Cancel" style:1 handler:0];
      [v13 addAction:v15];

      v16 = [v6 cellForRowAtIndexPath:v7];
      v17 = [v13 popoverPresentationController];
      [v17 setSourceItem:v16];

      [(WDElectrocardiogramInternalSettingsViewController *)self presentViewController:v13 animated:1 completion:0];
      goto LABEL_27;
    }

    v25 = [v7 row];
    v26 = [(WDElectrocardiogramInternalSettingsViewController *)self demoResultKeys];
    v27 = [v26 count];

    if (v25 >= v27)
    {
      v33 = [(WDElectrocardiogramInternalSettingsViewController *)self tableView];
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __87__WDElectrocardiogramInternalSettingsViewController_tableView_didSelectRowAtIndexPath___block_invoke;
      v37[3] = &unk_2796E6BD8;
      v37[4] = self;
      v38 = v7;
      [v33 performBatchUpdates:v37 completion:&__block_literal_global_396];

      goto LABEL_28;
    }

    v28 = [v6 cellForRowAtIndexPath:v7];
    if (v28)
    {
      v13 = v28;
      v29 = [(WDElectrocardiogramInternalSettingsViewController *)self allDemoResults];
      v30 = [(WDElectrocardiogramInternalSettingsViewController *)self demoResultKeys];
      v31 = [v30 objectAtIndexedSubscript:{objc_msgSend(v7, "row")}];
      v22 = [v29 indexOfObject:v31];

      if (v22 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v23 = [(WDElectrocardiogramInternalSettingsViewController *)self resultPicker];
        goto LABEL_22;
      }

LABEL_23:
      [v13 becomeFirstResponder];
      goto LABEL_27;
    }
  }

  else
  {
    if (v8 != 2)
    {
      if (v8 != 3)
      {
        if (v8 == 5)
        {
          v9 = [(WDElectrocardiogramInternalSettingsViewController *)self tableView];
          [v9 endEditing:0];

          v10 = [(WDElectrocardiogramInternalSettingsViewController *)self tableView];
          [v10 deselectRowAtIndexPath:v7 animated:1];

          [(WDElectrocardiogramInternalSettingsViewController *)self _presentAvailabilityInternalSettingsViewController];
        }

        goto LABEL_28;
      }

      v24 = [(WDElectrocardiogramInternalSettingsViewController *)self tableView];
      [v24 deselectRowAtIndexPath:v7 animated:1];

      v13 = [v6 cellForRowAtIndexPath:v7];
      if ([v7 row])
      {
        [(WDElectrocardiogramInternalSettingsViewController *)self _startUpgradeFromSourceItem:v13];
      }

      else
      {
        [(WDElectrocardiogramInternalSettingsViewController *)self _startFullOnboardingFromSourceItem:v13];
      }

LABEL_27:

      goto LABEL_28;
    }

    if (![v7 row])
    {
      v34 = [(WDElectrocardiogramInternalSettingsViewController *)self tableView];
      [v34 endEditing:0];

      v35 = [(WDElectrocardiogramInternalSettingsViewController *)self tableView];
      [v35 deselectRowAtIndexPath:v7 animated:1];

      [(WDElectrocardiogramInternalSettingsViewController *)self _resetOnboarding];
      goto LABEL_28;
    }

    if ([v7 row] == 1)
    {
      v18 = [v6 cellForRowAtIndexPath:v7];
      if (v18)
      {
        v13 = v18;
        v19 = [(WDElectrocardiogramInternalSettingsViewController *)self allAlgorithmVersions];
        v20 = [v13 detailTextLabel];
        v21 = [v20 text];
        v22 = [v19 indexOfObject:v21];

        if (v22 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v23 = [(WDElectrocardiogramInternalSettingsViewController *)self algorithmVersionPicker];
LABEL_22:
          v32 = v23;
          [v23 selectRow:v22 inComponent:0 animated:0];

          goto LABEL_23;
        }

        goto LABEL_23;
      }
    }
  }

LABEL_28:
}

void __87__WDElectrocardiogramInternalSettingsViewController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) tableView];
  [v2 endEditing:0];

  v3 = [*(a1 + 32) tableView];
  [v3 deselectRowAtIndexPath:*(a1 + 40) animated:1];

  v4 = [*(a1 + 32) demoResultKeys];
  v5 = [v4 mutableCopy];

  v6 = [*(a1 + 32) allDemoResults];
  v7 = [v6 objectAtIndexedSubscript:0];
  [v5 addObject:v7];

  [*(a1 + 32) setDemoResultKeys:v5];
  v8 = [*(a1 + 32) tableView];
  v11[0] = *(a1 + 40);
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  [v8 insertRowsAtIndexPaths:v9 withRowAnimation:100];

  v10 = *MEMORY[0x277D85DE8];
}

void __87__WDElectrocardiogramInternalSettingsViewController_tableView_didSelectRowAtIndexPath___block_invoke_3(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) healthStore];
  v3 = [MEMORY[0x277CCD3A8] electrocardiogramType];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __87__WDElectrocardiogramInternalSettingsViewController_tableView_didSelectRowAtIndexPath___block_invoke_4;
  v6[3] = &unk_2796E6CC8;
  v6[4] = *(a1 + 32);
  [v2 deleteAllSamplesWithTypes:v4 sourceBundleIdentifier:0 options:2 completion:v6];

  v5 = *MEMORY[0x277D85DE8];
}

void __87__WDElectrocardiogramInternalSettingsViewController_tableView_didSelectRowAtIndexPath___block_invoke_4(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__WDElectrocardiogramInternalSettingsViewController_tableView_didSelectRowAtIndexPath___block_invoke_5;
  block[3] = &unk_2796E6D18;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v4 = @"HK Key Value Domain";
  if (a4 != 4)
  {
    v4 = 0;
  }

  if (a4)
  {
    return v4;
  }

  else
  {
    return @"Demo Result Order";
  }
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v6 = a3;
  if (a4 == 2)
  {
    v9 = [(WDElectrocardiogramInternalSettingsViewController *)self heartRhythmAvailability];
    v10 = [v9 isElectrocardiogramOnboardingCompletedForAnyOnboardingVersion];

    if (v10)
    {
      v11 = [(WDElectrocardiogramInternalSettingsViewController *)self heartRhythmAvailability];
      v12 = [v11 electrocardiogramOnboardingCompletedVersionNoCache];

      v13 = [(WDElectrocardiogramInternalSettingsViewController *)self _onboardingCompletedAlgorithmVersion];
      v14 = [(WDElectrocardiogramInternalSettingsViewController *)self heartRhythmAvailability];
      v15 = [v14 electrocardiogramOnboardingCountryCode];

      v16 = [(WDElectrocardiogramInternalSettingsViewController *)self heartRhythmAvailability];
      v17 = [v16 electrocardiogramOnboardingHistoryType:1];

      v18 = MEMORY[0x277CCACA8];
      v19 = [v17 description];
      v7 = [v18 stringWithFormat:@"Completed onboarding for %@ (onboarding = %d) with country code %@.\n\nOnboarding history: %@", v13, v12, v15, v19];
    }

    else
    {
      v7 = @"Onboarding for ECG has not been completed.";
    }
  }

  else if (a4)
  {
    v7 = 0;
  }

  else
  {
    v7 = @"Results will repeat indefinitely when the ECG app has Demo Results enabled. Changes will sync to the active paired watch. Quit the ECG app to apply changes or restart result order.";
  }

  return v7;
}

- (id)displayableDescriptionFromValue:(id)a3
{
  v3 = a3;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
      if ([v4 isEqual:&stru_28641D9B8])
      {
        v5 = @"(empty string)";
      }

      else
      {
        v5 = v4;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = 0;
        v6 = [MEMORY[0x277CCAC58] propertyListWithData:v3 options:0 format:0 error:&v15];
        v7 = v15;
        v8 = v7;
        if (!v6 || v7)
        {
          v11 = [v7 localizedDescription];
          v9 = v11;
          v12 = @"(error)";
          if (v11)
          {
            v12 = v11;
          }

          v10 = v12;
        }

        else
        {
          v14 = 0;
          v9 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v6 options:0 error:&v14];
          v8 = v14;
          v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v9 encoding:4];
        }

        v5 = v10;
      }

      else
      {
        v5 = [v3 description];
      }
    }
  }

  else
  {
    v5 = @"(null)";
  }

  return v5;
}

- (void)keyboardDidDismiss:(id)a3
{
  v4 = [(WDElectrocardiogramInternalSettingsViewController *)self tableView];
  v5 = [v4 indexPathForSelectedRow];

  if (v5)
  {
    v6 = [(WDElectrocardiogramInternalSettingsViewController *)self tableView];
    v7 = [(WDElectrocardiogramInternalSettingsViewController *)self tableView];
    v8 = [v7 indexPathForSelectedRow];
    [v6 deselectRowAtIndexPath:v8 animated:1];

    v9 = [(WDElectrocardiogramInternalSettingsViewController *)self tableView];
    [v9 endEditing:0];
  }
}

- (void)updateCellIndexNumberLabels
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [(WDElectrocardiogramInternalSettingsViewController *)self tableView];
  v4 = [v3 visibleCells];

  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [(WDElectrocardiogramInternalSettingsViewController *)self tableView];
          v11 = [v10 indexPathForCell:v9];

          v12 = MEMORY[0x277CCABB8];
          v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v11, "row") + 1}];
          v14 = [v12 localizedStringFromNumber:v13 numberStyle:0];
          [v9 setDisplayName:v14];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)clearCellIndexNumberLabels
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(WDElectrocardiogramInternalSettingsViewController *)self tableView];
  v3 = [v2 visibleCells];

  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v8 setDisplayName:0];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4
{
  v5 = a3;
  v6 = [(WDElectrocardiogramInternalSettingsViewController *)self resultPicker];

  if (v6 == v5)
  {
    [(WDElectrocardiogramInternalSettingsViewController *)self allDemoResults];
  }

  else
  {
    [(WDElectrocardiogramInternalSettingsViewController *)self allAlgorithmVersions];
  }
  v7 = ;
  v8 = [v7 count];

  return v8;
}

- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5
{
  v7 = a3;
  v8 = [(WDElectrocardiogramInternalSettingsViewController *)self resultPicker];

  if (v8 == v7)
  {
    [(WDElectrocardiogramInternalSettingsViewController *)self allDemoResults];
  }

  else
  {
    [(WDElectrocardiogramInternalSettingsViewController *)self allAlgorithmVersions];
  }
  v9 = ;
  v10 = [v9 objectAtIndexedSubscript:a4];

  return v10;
}

- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5
{
  v7 = a3;
  v8 = [(WDElectrocardiogramInternalSettingsViewController *)self resultPicker];

  v9 = [(WDElectrocardiogramInternalSettingsViewController *)self tableView];
  v24 = [v9 indexPathForSelectedRow];

  if (v8 == v7)
  {
    v11 = v24;
    if (v24)
    {
      v10 = [v24 section];
      v11 = v24;
      if (!v10)
      {
        v18 = [(WDElectrocardiogramInternalSettingsViewController *)self tableView];
        v13 = [v18 cellForRowAtIndexPath:v24];

        if (v13)
        {
          v19 = [(WDElectrocardiogramInternalSettingsViewController *)self allDemoResults];
          v20 = [v19 objectAtIndexedSubscript:a4];
          [v13 setDisplayValue:v20];

          v21 = [(WDElectrocardiogramInternalSettingsViewController *)self demoResultKeys];
          v15 = [v21 mutableCopy];

          v22 = [(WDElectrocardiogramInternalSettingsViewController *)self allDemoResults];
          v23 = [v22 objectAtIndexedSubscript:a4];
          [v15 setObject:v23 atIndexedSubscript:{objc_msgSend(v24, "row")}];

          [(WDElectrocardiogramInternalSettingsViewController *)self setDemoResultKeys:v15];
          goto LABEL_10;
        }

LABEL_11:

        v11 = v24;
      }
    }
  }

  else
  {
    v11 = v24;
    if (v24)
    {
      v10 = [v24 section];
      v11 = v24;
      if (v10 == 2)
      {
        v12 = [(WDElectrocardiogramInternalSettingsViewController *)self tableView];
        v13 = [v12 cellForRowAtIndexPath:v24];

        if (v13)
        {
          v14 = [(WDElectrocardiogramInternalSettingsViewController *)self allAlgorithmVersions];
          v15 = [v14 objectAtIndexedSubscript:a4];

          v16 = [v13 detailTextLabel];
          [v16 setText:v15];

          [(WDElectrocardiogramInternalSettingsViewController *)self _saveOverrideAlgorithmVersionIfNeeded:a4];
          v17 = [(WDElectrocardiogramInternalSettingsViewController *)self tableView];
          [v17 endEditing:0];

LABEL_10:
          goto LABEL_11;
        }

        goto LABEL_11;
      }
    }
  }

  MEMORY[0x2821F96F8](v10, v11);
}

- (void)_presentAvailabilityInternalSettingsViewController
{
  v5 = [MEMORY[0x277CBEB98] setWithArray:&unk_28642DFD8];
  v3 = [[WDRemoteFeatureAvailabilityInternalSettingsViewController alloc] initWithConditions:v5];
  v4 = [(WDElectrocardiogramInternalSettingsViewController *)self navigationController];
  [v4 pushViewController:v3 animated:1];
}

- (void)_saveOverrideAlgorithmVersionIfNeeded:(int64_t)a3
{
  if (*MEMORY[0x277CCDEA8] == a3)
  {
    v5 = [MEMORY[0x277CBEBD0] hk_heartRhythmDefaults];
    [v5 removeObjectForKey:*MEMORY[0x277CCBCC0]];
  }

  else
  {
    v3 = [MEMORY[0x277CCD380] onboardingVersionForKnownAlgorithmVersion:?];
    v5 = [MEMORY[0x277CBEBD0] hk_heartRhythmDefaults];
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v3];
    [v5 setObject:v4 forKey:*MEMORY[0x277CCBCC0]];
  }
}

- (unint64_t)_overrideAlgorithmVersion
{
  v2 = [MEMORY[0x277CBEBD0] hk_heartRhythmDefaults];
  v3 = [v2 objectForKey:*MEMORY[0x277CCBCC0]];

  v4 = [MEMORY[0x277CCD380] algorithmVersionForOnboardingVersion:{objc_msgSend(v3, "integerValue")}];
  return v4;
}

- (id)_onboardingCompletedAlgorithmVersion
{
  v2 = [(WDElectrocardiogramInternalSettingsViewController *)self heartRhythmAvailability];
  v3 = [v2 electrocardiogramOnboardingCompletedVersionNoCache];

  v4 = [MEMORY[0x277CCD380] algorithmVersionForOnboardingVersion:v3];
  v5 = @"N/A";
  if (v4 == 2)
  {
    v5 = @"ECG 2";
  }

  if (v4 == 1)
  {
    return @"ECG 1";
  }

  else
  {
    return v5;
  }
}

- (void)_startFullOnboardingFromSourceItem:(id)a3
{
  v9 = a3;
  v4 = [(WDElectrocardiogramInternalSettingsViewController *)self heartRhythmAvailability];
  v5 = [v4 isElectrocardiogramOnboardingCompletedForAnyOnboardingVersion];

  if (v5)
  {
    v6 = [MEMORY[0x277D75110] alertControllerWithTitle:@"Cannot Start Full Onboarding" message:@"The ECG feature already has an onboarded completed! Please reset the current onboarding first or choose the upgrade flow." preferredStyle:0];
    v7 = [MEMORY[0x277D750F8] actionWithTitle:@"Ok" style:1 handler:0];
    [v6 addAction:v7];

    v8 = [v6 popoverPresentationController];
    [v8 setSourceItem:v9];

    [(WDElectrocardiogramInternalSettingsViewController *)self presentViewController:v6 animated:1 completion:0];
  }

  else
  {
    [(WDElectrocardiogramInternalSettingsViewController *)self _presentOnboardingManagerWithOnboardingType:0];
  }
}

- (void)_startUpgradeFromSourceItem:(id)a3
{
  v9 = a3;
  v4 = [(WDElectrocardiogramInternalSettingsViewController *)self heartRhythmAvailability];
  v5 = [v4 isElectrocardiogramOnboardingCompletedForAnyOnboardingVersion];

  if (v5)
  {
    [(WDElectrocardiogramInternalSettingsViewController *)self _presentOnboardingManagerWithOnboardingType:1];
  }

  else
  {
    v6 = [MEMORY[0x277D75110] alertControllerWithTitle:@"Cannot Start Upgrade" message:@"Cannot upgrade ECG without a full onboarding already completed before preferredStyle:{as there is nothing to upgrade from! Please start a full onboarding instead.", 0}];
    v7 = [MEMORY[0x277D750F8] actionWithTitle:@"Ok" style:1 handler:0];
    [v6 addAction:v7];

    v8 = [v6 popoverPresentationController];
    [v8 setSourceItem:v9];

    [(WDElectrocardiogramInternalSettingsViewController *)self presentViewController:v6 animated:1 completion:0];
  }
}

- (void)_presentOnboardingManagerWithOnboardingType:(int64_t)a3
{
  v5 = a3 != 1;
  v6 = objc_alloc(MEMORY[0x277D130A0]);
  v7 = [(WDElectrocardiogramInternalSettingsViewController *)self healthStore];
  v8 = [(WDElectrocardiogramInternalSettingsViewController *)self dateCache];
  LOBYTE(v12) = 1;
  v9 = [v6 initWithOnboardingType:a3 isFirstTimeOnboarding:v5 healthStore:v7 dateCache:v8 provenance:0 delegate:self isSampleInteractive:v12];
  [(WDElectrocardiogramInternalSettingsViewController *)self setOnboardingManager:v9];

  v10 = [(WDElectrocardiogramInternalSettingsViewController *)self onboardingManager];
  v13 = [v10 onboardingNavigationController];

  [v13 setModalInPresentation:1];
  v11 = [(WDElectrocardiogramInternalSettingsViewController *)self navigationController];
  [v11 presentViewController:v13 animated:1 completion:0];
}

- (void)_resetOnboarding
{
  v14 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC2D8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    *buf = 138543362;
    v13 = objc_opt_class();
    v5 = v13;
    _os_log_impl(&dword_251E85000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Resetting onboarding", buf, 0xCu);
  }

  v6 = objc_alloc(MEMORY[0x277CCD438]);
  v7 = *MEMORY[0x277CCC010];
  v8 = [(WDElectrocardiogramInternalSettingsViewController *)self healthStore];
  v9 = [v6 initWithFeatureIdentifier:v7 healthStore:v8];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __69__WDElectrocardiogramInternalSettingsViewController__resetOnboarding__block_invoke;
  v11[3] = &unk_2796E6CC8;
  v11[4] = self;
  [v9 resetOnboardingWithCompletion:v11];

  v10 = *MEMORY[0x277D85DE8];
}

void __69__WDElectrocardiogramInternalSettingsViewController__resetOnboarding__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
    {
      __69__WDElectrocardiogramInternalSettingsViewController__resetOnboarding__block_invoke_cold_1(a1, v6, v5);
    }
  }

  [*(a1 + 32) heartRhythmAvailabilityDidUpdate];
}

- (void)didTapOnElectrocardiogram:(id)a3
{
  v3 = [(WDElectrocardiogramInternalSettingsViewController *)self onboardingManager];
  [v3 dismissOnboarding];
}

- (void)heartRhythmAvailabilityDidUpdate
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__WDElectrocardiogramInternalSettingsViewController_heartRhythmAvailabilityDidUpdate__block_invoke;
  block[3] = &unk_2796E6D18;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __85__WDElectrocardiogramInternalSettingsViewController_heartRhythmAvailabilityDidUpdate__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  v3 = [MEMORY[0x277CCAA78] indexSetWithIndex:2];
  [v2 reloadSections:v3 withRowAnimation:100];

  v4 = *(a1 + 32);

  return [v4 reloadKeyValueDomainContent];
}

- (void)viewControllerWillEnterAdaptiveModal
{
  objc_initWeak(&location, self);
  v3 = objc_alloc(MEMORY[0x277D751E0]);
  v4 = MEMORY[0x277D750C8];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __89__WDElectrocardiogramInternalSettingsViewController_viewControllerWillEnterAdaptiveModal__block_invoke;
  v11 = &unk_2796E6DB8;
  objc_copyWeak(&v12, &location);
  v5 = [v4 actionWithHandler:&v8];
  v6 = [v3 initWithBarButtonSystemItem:0 primaryAction:{v5, v8, v9, v10, v11}];

  v7 = [(WDElectrocardiogramInternalSettingsViewController *)self navigationItem];
  [v7 setLeftBarButtonItem:v6];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __89__WDElectrocardiogramInternalSettingsViewController_viewControllerWillEnterAdaptiveModal__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

- (void)viewControllerDidLeaveAdaptiveModal
{
  v2 = [(WDElectrocardiogramInternalSettingsViewController *)self navigationItem];
  [v2 setLeftBarButtonItem:0];
}

void __69__WDElectrocardiogramInternalSettingsViewController__resetOnboarding__block_invoke_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = a2;
  v8 = 138543618;
  v9 = objc_opt_class();
  v10 = 2114;
  v11 = a3;
  v6 = v9;
  _os_log_error_impl(&dword_251E85000, v5, OS_LOG_TYPE_ERROR, "%{public}@: Error resetting ECG onboarding: %{public}@", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end