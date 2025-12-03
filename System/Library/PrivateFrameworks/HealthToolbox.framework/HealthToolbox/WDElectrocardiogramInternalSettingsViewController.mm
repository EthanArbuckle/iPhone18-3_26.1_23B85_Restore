@interface WDElectrocardiogramInternalSettingsViewController
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (BOOL)tableView:(id)view canMoveRowAtIndexPath:(id)path;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (HKHostingAreaLayoutView)pickerInputView;
- (NSArray)allDemoResults;
- (UIPickerView)resultPicker;
- (WDElectrocardiogramInternalSettingsViewController)initWithHealthStore:(id)store dateCache:(id)cache;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_buttonCellForTableView:(id)view;
- (id)_onboardingCompletedAlgorithmVersion;
- (id)_styleSubtitleCellForTableView:(id)view;
- (id)_styleValue1CellForTableView:(id)view inputView:(id)inputView;
- (id)displayableDescriptionFromValue:(id)value;
- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (unint64_t)_overrideAlgorithmVersion;
- (void)_presentAvailabilityInternalSettingsViewController;
- (void)_presentOnboardingManagerWithOnboardingType:(int64_t)type;
- (void)_resetOnboarding;
- (void)_saveOverrideAlgorithmVersionIfNeeded:(int64_t)needed;
- (void)_startFullOnboardingFromSourceItem:(id)item;
- (void)_startUpgradeFromSourceItem:(id)item;
- (void)clearCellIndexNumberLabels;
- (void)dealloc;
- (void)didTapOnElectrocardiogram:(id)electrocardiogram;
- (void)heartRhythmAvailabilityDidUpdate;
- (void)keyboardDidDismiss:(id)dismiss;
- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component;
- (void)reloadKeyValueDomainContent;
- (void)setDemoResultKeys:(id)keys;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath;
- (void)updateCellIndexNumberLabels;
- (void)viewControllerDidLeaveAdaptiveModal;
- (void)viewControllerWillEnterAdaptiveModal;
- (void)viewDidLoad;
@end

@implementation WDElectrocardiogramInternalSettingsViewController

- (WDElectrocardiogramInternalSettingsViewController)initWithHealthStore:(id)store dateCache:(id)cache
{
  v25[3] = *MEMORY[0x277D85DE8];
  storeCopy = store;
  cacheCopy = cache;
  v24.receiver = self;
  v24.super_class = WDElectrocardiogramInternalSettingsViewController;
  v9 = [(WDElectrocardiogramInternalSettingsViewController *)&v24 initWithStyle:1];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dateCache, cache);
    objc_storeStrong(&v10->_healthStore, store);
    v11 = [MEMORY[0x277CCD570] heartRhythmDefaultsDomainWithHealthStore:storeCopy];
    keyValueDomain = v10->_keyValueDomain;
    v10->_keyValueDomain = v11;

    v13 = objc_alloc_init(MEMORY[0x277D2BA60]);
    syncManager = v10->_syncManager;
    v10->_syncManager = v13;

    hk_heartRhythmDefaults = [MEMORY[0x277CBEBD0] hk_heartRhythmDefaults];
    hk_demoResultKeys = [hk_heartRhythmDefaults hk_demoResultKeys];
    demoResultKeys = v10->_demoResultKeys;
    v10->_demoResultKeys = hk_demoResultKeys;

    v18 = [objc_alloc(MEMORY[0x277CCD530]) initWithHealthStore:storeCopy];
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

  algorithmVersionPicker = [(WDElectrocardiogramInternalSettingsViewController *)self algorithmVersionPicker];
  [algorithmVersionPicker setDataSource:self];

  algorithmVersionPicker2 = [(WDElectrocardiogramInternalSettingsViewController *)self algorithmVersionPicker];
  [algorithmVersionPicker2 setDelegate:self];

  algorithmVersionPicker3 = [(WDElectrocardiogramInternalSettingsViewController *)self algorithmVersionPicker];
  [algorithmVersionPicker3 selectRow:-[WDElectrocardiogramInternalSettingsViewController _overrideAlgorithmVersion](self inComponent:"_overrideAlgorithmVersion") animated:{0, 0}];

  v7 = MEMORY[0x277D128D8];
  algorithmVersionPicker4 = [(WDElectrocardiogramInternalSettingsViewController *)self algorithmVersionPicker];
  v9 = [v7 viewHostingView:algorithmVersionPicker4];
  [(WDElectrocardiogramInternalSettingsViewController *)self setAlgorithmVersionPickerInputView:v9];

  tableView = [(WDElectrocardiogramInternalSettingsViewController *)self tableView];
  [tableView setKeyboardDismissMode:1];

  editButtonItem = [(WDElectrocardiogramInternalSettingsViewController *)self editButtonItem];
  navigationItem = [(WDElectrocardiogramInternalSettingsViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:editButtonItem];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_keyboardDidDismiss_ name:*MEMORY[0x277D76C50] object:0];

  [(WDElectrocardiogramInternalSettingsViewController *)self reloadKeyValueDomainContent];
}

- (void)reloadKeyValueDomainContent
{
  objc_initWeak(&location, self);
  keyValueDomain = [(WDElectrocardiogramInternalSettingsViewController *)self keyValueDomain];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __80__WDElectrocardiogramInternalSettingsViewController_reloadKeyValueDomainContent__block_invoke;
  v4[3] = &unk_2796E7C08;
  objc_copyWeak(&v5, &location);
  [keyValueDomain allValuesWithCompletion:v4];

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

- (void)setDemoResultKeys:(id)keys
{
  objc_storeStrong(&self->_demoResultKeys, keys);
  keysCopy = keys;
  hk_heartRhythmDefaults = [MEMORY[0x277CBEBD0] hk_heartRhythmDefaults];
  [hk_heartRhythmDefaults hk_setDemoResultKeys:keysCopy];

  syncManager = [(WDElectrocardiogramInternalSettingsViewController *)self syncManager];
  v7 = *MEMORY[0x277CCE460];
  v8 = [MEMORY[0x277CBEB98] setWithObject:@"DemoResultKeys"];

  [syncManager synchronizeUserDefaultsDomain:v7 keys:v8];
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
    resultPicker = [(WDElectrocardiogramInternalSettingsViewController *)self resultPicker];
    v6 = [v4 viewHostingView:resultPicker];
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

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  v7 = 1;
  if (section > 2)
  {
    if (section == 3)
    {
      v7 = 2;
    }

    else if (section == 4)
    {
      keyValueDomainContentKeys = [(WDElectrocardiogramInternalSettingsViewController *)self keyValueDomainContentKeys];
      v9 = [keyValueDomainContentKeys count];

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

  else if (section)
  {
    if (section == 2)
    {
      v7 = 2;
    }
  }

  else
  {
    demoResultKeys = [(WDElectrocardiogramInternalSettingsViewController *)self demoResultKeys];
    v7 = [demoResultKeys count] + 1;
  }

  return v7;
}

- (id)_buttonCellForTableView:(id)view
{
  v3 = [view dequeueReusableCellWithIdentifier:@"ButtonCell"];
  if (!v3)
  {
    v3 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"ButtonCell"];
    hk_appKeyColor = [MEMORY[0x277D75348] hk_appKeyColor];
    textLabel = [v3 textLabel];
    [textLabel setTextColor:hk_appKeyColor];
  }

  return v3;
}

- (id)_styleValue1CellForTableView:(id)view inputView:(id)inputView
{
  inputViewCopy = inputView;
  v6 = [view dequeueReusableCellWithIdentifier:@"AlgorithmVersionReuseIdentifier"];
  if (!v6)
  {
    v6 = [[WDProfileTableViewCell alloc] initWithStyle:1 reuseIdentifier:@"AlgorithmVersionReuseIdentifier"];
    [(WDProfileTableViewCell *)v6 setInputView:inputViewCopy];
    hk_appKeyColor = [MEMORY[0x277D75348] hk_appKeyColor];
    displayNameLabel = [(WDProfileTableViewCell *)v6 displayNameLabel];
    [displayNameLabel setTextColor:hk_appKeyColor];
  }

  return v6;
}

- (id)_styleSubtitleCellForTableView:(id)view
{
  v3 = [view dequeueReusableCellWithIdentifier:@"SubtitleCellStyleReuseIdentifier"];
  if (!v3)
  {
    v3 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:3 reuseIdentifier:@"SubtitleCellStyleReuseIdentifier"];
    hk_appKeyColor = [MEMORY[0x277D75348] hk_appKeyColor];
    textLabel = [v3 textLabel];
    [textLabel setTextColor:hk_appKeyColor];

    textLabel2 = [v3 textLabel];
    font = [textLabel2 font];
    detailTextLabel = [v3 detailTextLabel];
    [detailTextLabel setFont:font];
  }

  return v3;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  section = [pathCopy section];
  if (section > 2)
  {
    if (section == 3)
    {
      v21 = [pathCopy row];
      v4 = [(WDElectrocardiogramInternalSettingsViewController *)self _buttonCellForTableView:viewCopy];
      textLabel = [(WDProfileTableViewCell *)v4 textLabel];
      demoResultKeys2 = textLabel;
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
      if (section == 4)
      {
        v4 = [(WDElectrocardiogramInternalSettingsViewController *)self _styleSubtitleCellForTableView:viewCopy];
        keyValueDomainContentKeys = [(WDElectrocardiogramInternalSettingsViewController *)self keyValueDomainContentKeys];
        v25 = [keyValueDomainContentKeys count];

        if (v25)
        {
          keyValueDomainContentKeys2 = [(WDElectrocardiogramInternalSettingsViewController *)self keyValueDomainContentKeys];
          demoResultKeys2 = [keyValueDomainContentKeys2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

          keyValueDomainContent = [(WDElectrocardiogramInternalSettingsViewController *)self keyValueDomainContent];
          v28 = [keyValueDomainContent objectForKeyedSubscript:demoResultKeys2];

          v29 = [demoResultKeys2 substringFromIndex:{objc_msgSend(@"HKElectrocardiogram", "length")}];
          textLabel2 = [(WDProfileTableViewCell *)v4 textLabel];
          [textLabel2 setText:v29];

          v31 = [(WDElectrocardiogramInternalSettingsViewController *)self displayableDescriptionFromValue:v28];
          detailTextLabel = [(WDProfileTableViewCell *)v4 detailTextLabel];
          [detailTextLabel setText:v31];

          goto LABEL_28;
        }

        textLabel3 = [(WDProfileTableViewCell *)v4 textLabel];
        [textLabel3 setText:@"N/A"];
      }

      else
      {
        if (section != 5)
        {
          goto LABEL_29;
        }

        v4 = [(WDElectrocardiogramInternalSettingsViewController *)self _styleValue1CellForTableView:viewCopy inputView:0];
        [(WDProfileTableViewCell *)v4 setAccessoryType:1];
        [(WDProfileTableViewCell *)v4 setDisplayName:@"Remote Feature Availability"];
      }

      textLabel = [(WDProfileTableViewCell *)v4 detailTextLabel];
      demoResultKeys2 = textLabel;
      v23 = 0;
    }

    goto LABEL_27;
  }

  if (!section)
  {
    v14 = [pathCopy row];
    demoResultKeys = [(WDElectrocardiogramInternalSettingsViewController *)self demoResultKeys];
    v16 = [demoResultKeys count];

    if (v14 < v16)
    {
      v4 = [viewCopy dequeueReusableCellWithIdentifier:@"DemoResult"];
      if (!v4)
      {
        v4 = [[WDProfileTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"DemoResult"];
        pickerInputView = [(WDElectrocardiogramInternalSettingsViewController *)self pickerInputView];
        [(WDProfileTableViewCell *)v4 setInputView:pickerInputView];
      }

      v18 = MEMORY[0x277CCABB8];
      v19 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(pathCopy, "row") + 1}];
      v20 = [v18 localizedStringFromNumber:v19 numberStyle:0];
      [(WDProfileTableViewCell *)v4 setDisplayName:v20];

      demoResultKeys2 = [(WDElectrocardiogramInternalSettingsViewController *)self demoResultKeys];
      v12 = [demoResultKeys2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
      [(WDProfileTableViewCell *)v4 setDisplayValue:v12];
      goto LABEL_15;
    }

    v4 = [(WDElectrocardiogramInternalSettingsViewController *)self _buttonCellForTableView:viewCopy];
    textLabel = [(WDProfileTableViewCell *)v4 textLabel];
    demoResultKeys2 = textLabel;
    v23 = @"Add Result";
LABEL_27:
    [textLabel setText:v23];
    goto LABEL_28;
  }

  if (section == 1)
  {
    v4 = [(WDElectrocardiogramInternalSettingsViewController *)self _buttonCellForTableView:viewCopy];
    textLabel = [(WDProfileTableViewCell *)v4 textLabel];
    demoResultKeys2 = textLabel;
    v23 = @"Delete All ECG Readings";
    goto LABEL_27;
  }

  if (section != 2)
  {
    goto LABEL_29;
  }

  if (![pathCopy row])
  {
    v4 = [(WDElectrocardiogramInternalSettingsViewController *)self _buttonCellForTableView:viewCopy];
    textLabel = [(WDProfileTableViewCell *)v4 textLabel];
    demoResultKeys2 = textLabel;
    v23 = @"Reset Onboarding History";
    goto LABEL_27;
  }

  algorithmVersionPickerInputView = [(WDElectrocardiogramInternalSettingsViewController *)self algorithmVersionPickerInputView];
  v4 = [(WDElectrocardiogramInternalSettingsViewController *)self _styleValue1CellForTableView:viewCopy inputView:algorithmVersionPickerInputView];

  [(WDProfileTableViewCell *)v4 setDisplayName:@"Next Onboarding Override:"];
  demoResultKeys2 = [(WDElectrocardiogramInternalSettingsViewController *)self allAlgorithmVersions];
  v12 = [demoResultKeys2 objectAtIndexedSubscript:{-[WDElectrocardiogramInternalSettingsViewController _overrideAlgorithmVersion](self, "_overrideAlgorithmVersion")}];
  detailTextLabel2 = [(WDProfileTableViewCell *)v4 detailTextLabel];
  [detailTextLabel2 setText:v12];

LABEL_15:
LABEL_28:

LABEL_29:

  return v4;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  section = [path section];
  result = 44.0;
  if (section == 4)
  {
    return 60.0;
  }

  return result;
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  section = [path section];
  if (section == 4)
  {
    return 0;
  }

  if (section == 1)
  {
    return ![(WDElectrocardiogramInternalSettingsViewController *)self isDeletingSamples];
  }

  return 1;
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy section])
  {
    v6 = 0;
  }

  else
  {
    v7 = [pathCopy row];
    demoResultKeys = [(WDElectrocardiogramInternalSettingsViewController *)self demoResultKeys];
    v6 = v7 < [demoResultKeys count];
  }

  return v6;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  v18[1] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  pathCopy = path;
  v10 = pathCopy;
  if (style == 1 && ![pathCopy section])
  {
    v11 = [v10 row];
    demoResultKeys = [(WDElectrocardiogramInternalSettingsViewController *)self demoResultKeys];
    v13 = [demoResultKeys count];

    if (v11 < v13)
    {
      demoResultKeys2 = [(WDElectrocardiogramInternalSettingsViewController *)self demoResultKeys];
      v15 = [demoResultKeys2 mutableCopy];

      [v15 removeObjectAtIndex:{objc_msgSend(v10, "row")}];
      [(WDElectrocardiogramInternalSettingsViewController *)self setDemoResultKeys:v15];
      v18[0] = v10;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
      [viewCopy deleteRowsAtIndexPaths:v16 withRowAnimation:0];

      [(WDElectrocardiogramInternalSettingsViewController *)self updateCellIndexNumberLabels];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  pathCopy = path;
  indexPathCopy = indexPath;
  if (![pathCopy section] && !objc_msgSend(indexPathCopy, "section"))
  {
    demoResultKeys = [(WDElectrocardiogramInternalSettingsViewController *)self demoResultKeys];
    v9 = [demoResultKeys mutableCopy];

    v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
    [v9 removeObjectAtIndex:{objc_msgSend(pathCopy, "row")}];
    [v9 insertObject:v10 atIndex:{objc_msgSend(indexPathCopy, "row")}];
    [(WDElectrocardiogramInternalSettingsViewController *)self setDemoResultKeys:v9];
  }
}

- (BOOL)tableView:(id)view canMoveRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy section])
  {
    v6 = 0;
  }

  else
  {
    v7 = [pathCopy row];
    demoResultKeys = [(WDElectrocardiogramInternalSettingsViewController *)self demoResultKeys];
    v6 = v7 < [demoResultKeys count];
  }

  return v6;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([viewCopy isEditing])
  {
    goto LABEL_28;
  }

  section = [pathCopy section];
  if (section <= 1)
  {
    if (section)
    {
      if (section != 1)
      {
        goto LABEL_28;
      }

      tableView = [(WDElectrocardiogramInternalSettingsViewController *)self tableView];
      [tableView endEditing:0];

      tableView2 = [(WDElectrocardiogramInternalSettingsViewController *)self tableView];
      [tableView2 deselectRowAtIndexPath:pathCopy animated:1];

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

      v16 = [viewCopy cellForRowAtIndexPath:pathCopy];
      popoverPresentationController = [v13 popoverPresentationController];
      [popoverPresentationController setSourceItem:v16];

      [(WDElectrocardiogramInternalSettingsViewController *)self presentViewController:v13 animated:1 completion:0];
      goto LABEL_27;
    }

    v25 = [pathCopy row];
    demoResultKeys = [(WDElectrocardiogramInternalSettingsViewController *)self demoResultKeys];
    v27 = [demoResultKeys count];

    if (v25 >= v27)
    {
      tableView3 = [(WDElectrocardiogramInternalSettingsViewController *)self tableView];
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __87__WDElectrocardiogramInternalSettingsViewController_tableView_didSelectRowAtIndexPath___block_invoke;
      v37[3] = &unk_2796E6BD8;
      v37[4] = self;
      v38 = pathCopy;
      [tableView3 performBatchUpdates:v37 completion:&__block_literal_global_396];

      goto LABEL_28;
    }

    v28 = [viewCopy cellForRowAtIndexPath:pathCopy];
    if (v28)
    {
      v13 = v28;
      allDemoResults = [(WDElectrocardiogramInternalSettingsViewController *)self allDemoResults];
      demoResultKeys2 = [(WDElectrocardiogramInternalSettingsViewController *)self demoResultKeys];
      v31 = [demoResultKeys2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
      v22 = [allDemoResults indexOfObject:v31];

      if (v22 != 0x7FFFFFFFFFFFFFFFLL)
      {
        resultPicker = [(WDElectrocardiogramInternalSettingsViewController *)self resultPicker];
        goto LABEL_22;
      }

LABEL_23:
      [v13 becomeFirstResponder];
      goto LABEL_27;
    }
  }

  else
  {
    if (section != 2)
    {
      if (section != 3)
      {
        if (section == 5)
        {
          tableView4 = [(WDElectrocardiogramInternalSettingsViewController *)self tableView];
          [tableView4 endEditing:0];

          tableView5 = [(WDElectrocardiogramInternalSettingsViewController *)self tableView];
          [tableView5 deselectRowAtIndexPath:pathCopy animated:1];

          [(WDElectrocardiogramInternalSettingsViewController *)self _presentAvailabilityInternalSettingsViewController];
        }

        goto LABEL_28;
      }

      tableView6 = [(WDElectrocardiogramInternalSettingsViewController *)self tableView];
      [tableView6 deselectRowAtIndexPath:pathCopy animated:1];

      v13 = [viewCopy cellForRowAtIndexPath:pathCopy];
      if ([pathCopy row])
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

    if (![pathCopy row])
    {
      tableView7 = [(WDElectrocardiogramInternalSettingsViewController *)self tableView];
      [tableView7 endEditing:0];

      tableView8 = [(WDElectrocardiogramInternalSettingsViewController *)self tableView];
      [tableView8 deselectRowAtIndexPath:pathCopy animated:1];

      [(WDElectrocardiogramInternalSettingsViewController *)self _resetOnboarding];
      goto LABEL_28;
    }

    if ([pathCopy row] == 1)
    {
      v18 = [viewCopy cellForRowAtIndexPath:pathCopy];
      if (v18)
      {
        v13 = v18;
        allAlgorithmVersions = [(WDElectrocardiogramInternalSettingsViewController *)self allAlgorithmVersions];
        detailTextLabel = [v13 detailTextLabel];
        text = [detailTextLabel text];
        v22 = [allAlgorithmVersions indexOfObject:text];

        if (v22 != 0x7FFFFFFFFFFFFFFFLL)
        {
          resultPicker = [(WDElectrocardiogramInternalSettingsViewController *)self algorithmVersionPicker];
LABEL_22:
          v32 = resultPicker;
          [resultPicker selectRow:v22 inComponent:0 animated:0];

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

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v4 = @"HK Key Value Domain";
  if (section != 4)
  {
    v4 = 0;
  }

  if (section)
  {
    return v4;
  }

  else
  {
    return @"Demo Result Order";
  }
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  viewCopy = view;
  if (section == 2)
  {
    heartRhythmAvailability = [(WDElectrocardiogramInternalSettingsViewController *)self heartRhythmAvailability];
    isElectrocardiogramOnboardingCompletedForAnyOnboardingVersion = [heartRhythmAvailability isElectrocardiogramOnboardingCompletedForAnyOnboardingVersion];

    if (isElectrocardiogramOnboardingCompletedForAnyOnboardingVersion)
    {
      heartRhythmAvailability2 = [(WDElectrocardiogramInternalSettingsViewController *)self heartRhythmAvailability];
      electrocardiogramOnboardingCompletedVersionNoCache = [heartRhythmAvailability2 electrocardiogramOnboardingCompletedVersionNoCache];

      _onboardingCompletedAlgorithmVersion = [(WDElectrocardiogramInternalSettingsViewController *)self _onboardingCompletedAlgorithmVersion];
      heartRhythmAvailability3 = [(WDElectrocardiogramInternalSettingsViewController *)self heartRhythmAvailability];
      electrocardiogramOnboardingCountryCode = [heartRhythmAvailability3 electrocardiogramOnboardingCountryCode];

      heartRhythmAvailability4 = [(WDElectrocardiogramInternalSettingsViewController *)self heartRhythmAvailability];
      v17 = [heartRhythmAvailability4 electrocardiogramOnboardingHistoryType:1];

      v18 = MEMORY[0x277CCACA8];
      v19 = [v17 description];
      v7 = [v18 stringWithFormat:@"Completed onboarding for %@ (onboarding = %d) with country code %@.\n\nOnboarding history: %@", _onboardingCompletedAlgorithmVersion, electrocardiogramOnboardingCompletedVersionNoCache, electrocardiogramOnboardingCountryCode, v19];
    }

    else
    {
      v7 = @"Onboarding for ECG has not been completed.";
    }
  }

  else if (section)
  {
    v7 = 0;
  }

  else
  {
    v7 = @"Results will repeat indefinitely when the ECG app has Demo Results enabled. Changes will sync to the active paired watch. Quit the ECG app to apply changes or restart result order.";
  }

  return v7;
}

- (id)displayableDescriptionFromValue:(id)value
{
  valueCopy = value;
  if (valueCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = valueCopy;
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
        v6 = [MEMORY[0x277CCAC58] propertyListWithData:valueCopy options:0 format:0 error:&v15];
        v7 = v15;
        v8 = v7;
        if (!v6 || v7)
        {
          localizedDescription = [v7 localizedDescription];
          v9 = localizedDescription;
          v12 = @"(error)";
          if (localizedDescription)
          {
            v12 = localizedDescription;
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
        v5 = [valueCopy description];
      }
    }
  }

  else
  {
    v5 = @"(null)";
  }

  return v5;
}

- (void)keyboardDidDismiss:(id)dismiss
{
  tableView = [(WDElectrocardiogramInternalSettingsViewController *)self tableView];
  indexPathForSelectedRow = [tableView indexPathForSelectedRow];

  if (indexPathForSelectedRow)
  {
    tableView2 = [(WDElectrocardiogramInternalSettingsViewController *)self tableView];
    tableView3 = [(WDElectrocardiogramInternalSettingsViewController *)self tableView];
    indexPathForSelectedRow2 = [tableView3 indexPathForSelectedRow];
    [tableView2 deselectRowAtIndexPath:indexPathForSelectedRow2 animated:1];

    tableView4 = [(WDElectrocardiogramInternalSettingsViewController *)self tableView];
    [tableView4 endEditing:0];
  }
}

- (void)updateCellIndexNumberLabels
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  tableView = [(WDElectrocardiogramInternalSettingsViewController *)self tableView];
  visibleCells = [tableView visibleCells];

  v5 = [visibleCells countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(visibleCells);
        }

        v9 = *(*(&v16 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          tableView2 = [(WDElectrocardiogramInternalSettingsViewController *)self tableView];
          v11 = [tableView2 indexPathForCell:v9];

          v12 = MEMORY[0x277CCABB8];
          v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v11, "row") + 1}];
          v14 = [v12 localizedStringFromNumber:v13 numberStyle:0];
          [v9 setDisplayName:v14];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [visibleCells countByEnumeratingWithState:&v16 objects:v20 count:16];
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
  tableView = [(WDElectrocardiogramInternalSettingsViewController *)self tableView];
  visibleCells = [tableView visibleCells];

  v4 = [visibleCells countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(visibleCells);
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
      v5 = [visibleCells countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component
{
  viewCopy = view;
  resultPicker = [(WDElectrocardiogramInternalSettingsViewController *)self resultPicker];

  if (resultPicker == viewCopy)
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

- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component
{
  viewCopy = view;
  resultPicker = [(WDElectrocardiogramInternalSettingsViewController *)self resultPicker];

  if (resultPicker == viewCopy)
  {
    [(WDElectrocardiogramInternalSettingsViewController *)self allDemoResults];
  }

  else
  {
    [(WDElectrocardiogramInternalSettingsViewController *)self allAlgorithmVersions];
  }
  v9 = ;
  v10 = [v9 objectAtIndexedSubscript:row];

  return v10;
}

- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component
{
  viewCopy = view;
  resultPicker = [(WDElectrocardiogramInternalSettingsViewController *)self resultPicker];

  tableView = [(WDElectrocardiogramInternalSettingsViewController *)self tableView];
  indexPathForSelectedRow = [tableView indexPathForSelectedRow];

  if (resultPicker == viewCopy)
  {
    v11 = indexPathForSelectedRow;
    if (indexPathForSelectedRow)
    {
      section = [indexPathForSelectedRow section];
      v11 = indexPathForSelectedRow;
      if (!section)
      {
        tableView2 = [(WDElectrocardiogramInternalSettingsViewController *)self tableView];
        v13 = [tableView2 cellForRowAtIndexPath:indexPathForSelectedRow];

        if (v13)
        {
          allDemoResults = [(WDElectrocardiogramInternalSettingsViewController *)self allDemoResults];
          v20 = [allDemoResults objectAtIndexedSubscript:row];
          [v13 setDisplayValue:v20];

          demoResultKeys = [(WDElectrocardiogramInternalSettingsViewController *)self demoResultKeys];
          v15 = [demoResultKeys mutableCopy];

          allDemoResults2 = [(WDElectrocardiogramInternalSettingsViewController *)self allDemoResults];
          v23 = [allDemoResults2 objectAtIndexedSubscript:row];
          [v15 setObject:v23 atIndexedSubscript:{objc_msgSend(indexPathForSelectedRow, "row")}];

          [(WDElectrocardiogramInternalSettingsViewController *)self setDemoResultKeys:v15];
          goto LABEL_10;
        }

LABEL_11:

        v11 = indexPathForSelectedRow;
      }
    }
  }

  else
  {
    v11 = indexPathForSelectedRow;
    if (indexPathForSelectedRow)
    {
      section = [indexPathForSelectedRow section];
      v11 = indexPathForSelectedRow;
      if (section == 2)
      {
        tableView3 = [(WDElectrocardiogramInternalSettingsViewController *)self tableView];
        v13 = [tableView3 cellForRowAtIndexPath:indexPathForSelectedRow];

        if (v13)
        {
          allAlgorithmVersions = [(WDElectrocardiogramInternalSettingsViewController *)self allAlgorithmVersions];
          v15 = [allAlgorithmVersions objectAtIndexedSubscript:row];

          detailTextLabel = [v13 detailTextLabel];
          [detailTextLabel setText:v15];

          [(WDElectrocardiogramInternalSettingsViewController *)self _saveOverrideAlgorithmVersionIfNeeded:row];
          tableView4 = [(WDElectrocardiogramInternalSettingsViewController *)self tableView];
          [tableView4 endEditing:0];

LABEL_10:
          goto LABEL_11;
        }

        goto LABEL_11;
      }
    }
  }

  MEMORY[0x2821F96F8](section, v11);
}

- (void)_presentAvailabilityInternalSettingsViewController
{
  v5 = [MEMORY[0x277CBEB98] setWithArray:&unk_28642DFD8];
  v3 = [[WDRemoteFeatureAvailabilityInternalSettingsViewController alloc] initWithConditions:v5];
  navigationController = [(WDElectrocardiogramInternalSettingsViewController *)self navigationController];
  [navigationController pushViewController:v3 animated:1];
}

- (void)_saveOverrideAlgorithmVersionIfNeeded:(int64_t)needed
{
  if (*MEMORY[0x277CCDEA8] == needed)
  {
    hk_heartRhythmDefaults = [MEMORY[0x277CBEBD0] hk_heartRhythmDefaults];
    [hk_heartRhythmDefaults removeObjectForKey:*MEMORY[0x277CCBCC0]];
  }

  else
  {
    v3 = [MEMORY[0x277CCD380] onboardingVersionForKnownAlgorithmVersion:?];
    hk_heartRhythmDefaults = [MEMORY[0x277CBEBD0] hk_heartRhythmDefaults];
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v3];
    [hk_heartRhythmDefaults setObject:v4 forKey:*MEMORY[0x277CCBCC0]];
  }
}

- (unint64_t)_overrideAlgorithmVersion
{
  hk_heartRhythmDefaults = [MEMORY[0x277CBEBD0] hk_heartRhythmDefaults];
  v3 = [hk_heartRhythmDefaults objectForKey:*MEMORY[0x277CCBCC0]];

  v4 = [MEMORY[0x277CCD380] algorithmVersionForOnboardingVersion:{objc_msgSend(v3, "integerValue")}];
  return v4;
}

- (id)_onboardingCompletedAlgorithmVersion
{
  heartRhythmAvailability = [(WDElectrocardiogramInternalSettingsViewController *)self heartRhythmAvailability];
  electrocardiogramOnboardingCompletedVersionNoCache = [heartRhythmAvailability electrocardiogramOnboardingCompletedVersionNoCache];

  v4 = [MEMORY[0x277CCD380] algorithmVersionForOnboardingVersion:electrocardiogramOnboardingCompletedVersionNoCache];
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

- (void)_startFullOnboardingFromSourceItem:(id)item
{
  itemCopy = item;
  heartRhythmAvailability = [(WDElectrocardiogramInternalSettingsViewController *)self heartRhythmAvailability];
  isElectrocardiogramOnboardingCompletedForAnyOnboardingVersion = [heartRhythmAvailability isElectrocardiogramOnboardingCompletedForAnyOnboardingVersion];

  if (isElectrocardiogramOnboardingCompletedForAnyOnboardingVersion)
  {
    v6 = [MEMORY[0x277D75110] alertControllerWithTitle:@"Cannot Start Full Onboarding" message:@"The ECG feature already has an onboarded completed! Please reset the current onboarding first or choose the upgrade flow." preferredStyle:0];
    v7 = [MEMORY[0x277D750F8] actionWithTitle:@"Ok" style:1 handler:0];
    [v6 addAction:v7];

    popoverPresentationController = [v6 popoverPresentationController];
    [popoverPresentationController setSourceItem:itemCopy];

    [(WDElectrocardiogramInternalSettingsViewController *)self presentViewController:v6 animated:1 completion:0];
  }

  else
  {
    [(WDElectrocardiogramInternalSettingsViewController *)self _presentOnboardingManagerWithOnboardingType:0];
  }
}

- (void)_startUpgradeFromSourceItem:(id)item
{
  itemCopy = item;
  heartRhythmAvailability = [(WDElectrocardiogramInternalSettingsViewController *)self heartRhythmAvailability];
  isElectrocardiogramOnboardingCompletedForAnyOnboardingVersion = [heartRhythmAvailability isElectrocardiogramOnboardingCompletedForAnyOnboardingVersion];

  if (isElectrocardiogramOnboardingCompletedForAnyOnboardingVersion)
  {
    [(WDElectrocardiogramInternalSettingsViewController *)self _presentOnboardingManagerWithOnboardingType:1];
  }

  else
  {
    v6 = [MEMORY[0x277D75110] alertControllerWithTitle:@"Cannot Start Upgrade" message:@"Cannot upgrade ECG without a full onboarding already completed before preferredStyle:{as there is nothing to upgrade from! Please start a full onboarding instead.", 0}];
    v7 = [MEMORY[0x277D750F8] actionWithTitle:@"Ok" style:1 handler:0];
    [v6 addAction:v7];

    popoverPresentationController = [v6 popoverPresentationController];
    [popoverPresentationController setSourceItem:itemCopy];

    [(WDElectrocardiogramInternalSettingsViewController *)self presentViewController:v6 animated:1 completion:0];
  }
}

- (void)_presentOnboardingManagerWithOnboardingType:(int64_t)type
{
  v5 = type != 1;
  v6 = objc_alloc(MEMORY[0x277D130A0]);
  healthStore = [(WDElectrocardiogramInternalSettingsViewController *)self healthStore];
  dateCache = [(WDElectrocardiogramInternalSettingsViewController *)self dateCache];
  LOBYTE(v12) = 1;
  v9 = [v6 initWithOnboardingType:type isFirstTimeOnboarding:v5 healthStore:healthStore dateCache:dateCache provenance:0 delegate:self isSampleInteractive:v12];
  [(WDElectrocardiogramInternalSettingsViewController *)self setOnboardingManager:v9];

  onboardingManager = [(WDElectrocardiogramInternalSettingsViewController *)self onboardingManager];
  onboardingNavigationController = [onboardingManager onboardingNavigationController];

  [onboardingNavigationController setModalInPresentation:1];
  navigationController = [(WDElectrocardiogramInternalSettingsViewController *)self navigationController];
  [navigationController presentViewController:onboardingNavigationController animated:1 completion:0];
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
  healthStore = [(WDElectrocardiogramInternalSettingsViewController *)self healthStore];
  v9 = [v6 initWithFeatureIdentifier:v7 healthStore:healthStore];

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

- (void)didTapOnElectrocardiogram:(id)electrocardiogram
{
  onboardingManager = [(WDElectrocardiogramInternalSettingsViewController *)self onboardingManager];
  [onboardingManager dismissOnboarding];
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

  navigationItem = [(WDElectrocardiogramInternalSettingsViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v6];

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
  navigationItem = [(WDElectrocardiogramInternalSettingsViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:0];
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