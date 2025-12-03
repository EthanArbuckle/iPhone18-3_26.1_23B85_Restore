@interface WDElectrocardiogramDataMetadataViewController
- (BOOL)_addSectionIfNonNull:(id)null;
- (HKDataMetadataViewControllerDelegate)delegate;
- (WDElectrocardiogramDataMetadataViewController)initWithSample:(id)sample delegate:(id)delegate mode:(int64_t)mode activeAlgorithmVersion:(id)version;
- (id)_electrocardiogramMetadataContainerView;
- (id)accessibilityIdentifier;
- (id)electrocardiogramMetadataView:(id)view regulatedBodyTextForSample:(id)sample;
- (id)featureVersionFromUpdateVersion:(id)version;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)_fetchActiveAlgorithmVersionWithHealthStore:(id)store;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)sampleAlgorithmVersion;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_loadSections;
- (void)_localeOrDisplayTypeChange:(id)change;
- (void)_reloadElectrocardiogramMetadataTableHeaderView;
- (void)dealloc;
- (void)deleteSampleTriggeredBySection:(id)section;
- (void)deletionSectionDidSelectRow:(id)row sourceItem:(id)item;
- (void)electrocardiogramMetadataViewDidTapDetailButton:(id)button;
- (void)presentPDFViewController;
- (void)shareButtonTapped:(id)tapped;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)traitCollectionDidChange:(id)change;
- (void)viewControllerDidLeaveAdaptiveModal;
- (void)viewControllerWillEnterAdaptiveModal;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation WDElectrocardiogramDataMetadataViewController

- (WDElectrocardiogramDataMetadataViewController)initWithSample:(id)sample delegate:(id)delegate mode:(int64_t)mode activeAlgorithmVersion:(id)version
{
  sampleCopy = sample;
  delegateCopy = delegate;
  versionCopy = version;
  v30.receiver = self;
  v30.super_class = WDElectrocardiogramDataMetadataViewController;
  v14 = [(HKTableViewController *)&v30 initWithUsingInsetStyling:1];
  v15 = v14;
  if (v14)
  {
    v14->_firstViewDidLayoutSubviews = 1;
    objc_storeStrong(&v14->_sample, sample);
    objc_storeWeak(&v15->_delegate, delegateCopy);
    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    sections = v15->_sections;
    v15->_sections = v16;

    v15->_actionsEnabled = 1;
    v15->_mode = mode;
    if (versionCopy)
    {
      v15->_activeAlgorithmVersion = [versionCopy integerValue];
    }

    else
    {
      delegate = [(WDElectrocardiogramDataMetadataViewController *)v15 delegate];
      healthStore = [delegate healthStore];
      v15->_activeAlgorithmVersion = [(WDElectrocardiogramDataMetadataViewController *)v15 _fetchActiveAlgorithmVersionWithHealthStore:healthStore];
    }

    v20 = [WDElectrocardiogramReportDataSource alloc];
    delegate2 = [(WDElectrocardiogramDataMetadataViewController *)v15 delegate];
    healthStore2 = [delegate2 healthStore];
    v23 = [(WDElectrocardiogramReportDataSource *)v20 initWithSample:sampleCopy healthStore:healthStore2 activeAlgorithmVersion:v15->_activeAlgorithmVersion];
    reportDataSource = v15->_reportDataSource;
    v15->_reportDataSource = v23;

    v25 = [objc_alloc(MEMORY[0x277D130A8]) initWithDataSource:v15->_reportDataSource];
    reportGenerator = v15->_reportGenerator;
    v15->_reportGenerator = v25;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v15 selector:sel__localeOrDisplayTypeChange_ name:*MEMORY[0x277CBE620] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v15 selector:sel__localeOrDisplayTypeChange_ name:*MEMORY[0x277D12730] object:0];
  }

  return v15;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CBE620] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 removeObserver:self name:*MEMORY[0x277D12730] object:0];

  v5.receiver = self;
  v5.super_class = WDElectrocardiogramDataMetadataViewController;
  [(WDElectrocardiogramDataMetadataViewController *)&v5 dealloc];
}

- (int64_t)_fetchActiveAlgorithmVersionWithHealthStore:(id)store
{
  v10 = 0;
  v3 = [MEMORY[0x277CCD380] versionWithHealthStore:store error:&v10];
  v4 = v10;
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    if (v4)
    {
      _HKInitializeLogging();
      v7 = *MEMORY[0x277CCC2D8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
      {
        [WDElectrocardiogramDataMetadataViewController _fetchActiveAlgorithmVersionWithHealthStore:v7];
      }
    }

    integerValue = *MEMORY[0x277CCDEA8];
  }

  return integerValue;
}

- (void)_localeOrDisplayTypeChange:(id)change
{
  [(WDElectrocardiogramDataMetadataViewController *)self _loadSections];
  tableView = [(WDElectrocardiogramDataMetadataViewController *)self tableView];
  [tableView reloadData];
}

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = WDElectrocardiogramDataMetadataViewController;
  [(HKTableViewController *)&v17 viewDidLoad];
  v3 = WDBundle();
  v4 = [v3 localizedStringForKey:@"ECG_DETAIL" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Cinnamon"];
  v5 = HKConditionallyRedactedHeartRhythmString();
  [(WDElectrocardiogramDataMetadataViewController *)self setTitle:v5];

  if ([(WDElectrocardiogramDataMetadataViewController *)self mode]!= 2)
  {
    v6 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:9 target:self action:sel_shareButtonTapped_];
    identifierBundle = [(WDElectrocardiogramDataMetadataViewController *)self identifierBundle];
    v8 = [identifierBundle stringByAppendingString:@".shareButton"];
    [v6 setAccessibilityIdentifier:v8];

    navigationItem = [(WDElectrocardiogramDataMetadataViewController *)self navigationItem];
    [navigationItem setRightBarButtonItem:v6];
  }

  v10 = *MEMORY[0x277D76F30];
  tableView = [(WDElectrocardiogramDataMetadataViewController *)self tableView];
  [tableView setRowHeight:v10];

  tableView2 = [(WDElectrocardiogramDataMetadataViewController *)self tableView];
  [tableView2 setEstimatedRowHeight:64.0];

  tableView3 = [(WDElectrocardiogramDataMetadataViewController *)self tableView];
  [tableView3 _setSectionContentInsetFollowsLayoutMargins:1];

  v14 = *MEMORY[0x277D12798];
  tableView4 = [(WDElectrocardiogramDataMetadataViewController *)self tableView];
  [tableView4 _setSectionCornerRadius:v14];

  [(WDElectrocardiogramDataMetadataViewController *)self _loadSections];
  tableView5 = [(WDElectrocardiogramDataMetadataViewController *)self tableView];
  [tableView5 reloadData];

  [(WDElectrocardiogramDataMetadataViewController *)self _reloadElectrocardiogramMetadataTableHeaderView];
}

- (void)viewDidLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = WDElectrocardiogramDataMetadataViewController;
  [(WDElectrocardiogramDataMetadataViewController *)&v6 viewDidLayoutSubviews];
  if ([(WDElectrocardiogramDataMetadataViewController *)self firstViewDidLayoutSubviews])
  {
    [(WDElectrocardiogramDataMetadataViewController *)self setFirstViewDidLayoutSubviews:0];
    tableView = [(WDElectrocardiogramDataMetadataViewController *)self tableView];
    tableHeaderView = [tableView tableHeaderView];
    tableView2 = [(WDElectrocardiogramDataMetadataViewController *)self tableView];
    [tableView2 setTableHeaderView:tableHeaderView];
  }
}

- (BOOL)_addSectionIfNonNull:(id)null
{
  if (null)
  {
    nullCopy = null;
    sections = [(WDElectrocardiogramDataMetadataViewController *)self sections];
    [sections addObject:nullCopy];
  }

  return null != 0;
}

- (void)_loadSections
{
  v54[2] = *MEMORY[0x277D85DE8];
  sections = [(WDElectrocardiogramDataMetadataViewController *)self sections];
  [sections removeAllObjects];

  delegate = [(WDElectrocardiogramDataMetadataViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate2 = [(WDElectrocardiogramDataMetadataViewController *)self delegate];
    displayTypeController = [delegate2 displayTypeController];
  }

  else
  {
    displayTypeController = 0;
  }

  delegate3 = [(WDElectrocardiogramDataMetadataViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate4 = [(WDElectrocardiogramDataMetadataViewController *)self delegate];
    unitController = [delegate4 unitController];
  }

  else
  {
    unitController = 0;
  }

  sections2 = [(WDElectrocardiogramDataMetadataViewController *)self sections];
  v11 = objc_alloc(MEMORY[0x277D12800]);
  sample = [(WDElectrocardiogramDataMetadataViewController *)self sample];
  v13 = [v11 initWithSample:sample displayTypeController:displayTypeController unitController:unitController];
  [sections2 addObject:v13];

  hk_heartRhythmDefaults = [MEMORY[0x277CBEBD0] hk_heartRhythmDefaults];
  v15 = ([hk_heartRhythmDefaults hk_hfeModeEnabled] & 1) == 0 && -[WDElectrocardiogramDataMetadataViewController mode](self, "mode") != 2;

  mode = [(WDElectrocardiogramDataMetadataViewController *)self mode];
  if (v15)
  {
    v17 = objc_alloc(MEMORY[0x277D12808]);
    sample2 = [(WDElectrocardiogramDataMetadataViewController *)self sample];
    v19 = [v17 initWithSample:sample2];

    sample3 = [(WDElectrocardiogramDataMetadataViewController *)self sample];
    sourceRevision = [sample3 sourceRevision];
    version = [sourceRevision version];

    sampleAlgorithmVersion = [(WDElectrocardiogramDataMetadataViewController *)self sampleAlgorithmVersion];
    v24 = [objc_alloc(MEMORY[0x277D12880]) initWithSourceVersion:version algorithmVersion:sampleAlgorithmVersion];
    if (v24)
    {
      v47 = mode;
      v52 = displayTypeController;
      sample4 = [(WDElectrocardiogramDataMetadataViewController *)self sample];
      metadata = [sample4 metadata];
      v27 = [metadata objectForKey:*MEMORY[0x277CCE0D0]];

      v50 = version;
      v51 = unitController;
      v48 = v27;
      if (v27)
      {
        updateVersion = v27;
        [(WDElectrocardiogramDataMetadataViewController *)self featureVersionFromUpdateVersion:?];
      }

      else
      {
        updateVersion = [v24 updateVersion];
        [v24 featureVersion];
      }
      v28 = ;
      v29 = HKHealthKitFrameworkBundle();
      v30 = [v29 localizedStringForKey:@"SOURCE_FEATURE_VERSION_TITLE" value:&stru_28641D9B8 table:@"Localizable-Cinnamon"];
      v31 = HKConditionallyRedactedHeartRhythmString();
      v54[0] = *MEMORY[0x277CCDEF8];
      v32 = v54[0];
      v54[1] = @"FeatureVersion";
      v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:2];
      v34 = HKUIJoinStringsForAutomationIdentifier();
      [v19 addText:v28 detail:v31 baseIdentifier:v34];

      v35 = HKHealthKitFrameworkBundle();
      v36 = [v35 localizedStringForKey:@"SOURCE_UPDATE_VERSION_TITLE" value:&stru_28641D9B8 table:@"Localizable-Cinnamon"];
      v37 = HKConditionallyRedactedHeartRhythmString();
      v53[0] = v32;
      v53[1] = @"UpdateVersion";
      v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:2];
      v39 = HKUIJoinStringsForAutomationIdentifier();
      [v19 addText:updateVersion detail:v37 baseIdentifier:v39];

      unitController = v51;
      displayTypeController = v52;
      version = v50;
      mode = v47;
    }

    [(WDElectrocardiogramDataMetadataViewController *)self _addSectionIfNonNull:v19];
  }

  if (!mode)
  {
    v40 = objc_alloc(MEMORY[0x277D127F8]);
    v41 = WDBundle();
    v42 = [v41 localizedStringForKey:@"DELETE_ECG_SAMPLE_CELL_TITLE" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Cinnamon"];
    v43 = HKConditionallyRedactedHeartRhythmString();
    v44 = [v40 initWithTitle:v43];

    [v44 setDelegate:self];
    sections3 = [(WDElectrocardiogramDataMetadataViewController *)self sections];
    [sections3 addObject:v44];
  }

  v46 = *MEMORY[0x277D85DE8];
}

- (void)_reloadElectrocardiogramMetadataTableHeaderView
{
  _electrocardiogramMetadataContainerView = [(WDElectrocardiogramDataMetadataViewController *)self _electrocardiogramMetadataContainerView];
  tableView = [(WDElectrocardiogramDataMetadataViewController *)self tableView];
  [tableView setTableHeaderView:_electrocardiogramMetadataContainerView];

  widthAnchor = [_electrocardiogramMetadataContainerView widthAnchor];
  tableView2 = [(WDElectrocardiogramDataMetadataViewController *)self tableView];
  widthAnchor2 = [tableView2 widthAnchor];
  v7 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  [v7 setActive:1];

  centerXAnchor = [_electrocardiogramMetadataContainerView centerXAnchor];
  tableView3 = [(WDElectrocardiogramDataMetadataViewController *)self tableView];
  centerXAnchor2 = [tableView3 centerXAnchor];
  v11 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v11 setActive:1];

  topAnchor = [_electrocardiogramMetadataContainerView topAnchor];
  tableView4 = [(WDElectrocardiogramDataMetadataViewController *)self tableView];
  topAnchor2 = [tableView4 topAnchor];
  v15 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v15 setActive:1];

  tableView5 = [(WDElectrocardiogramDataMetadataViewController *)self tableView];
  tableHeaderView = [tableView5 tableHeaderView];
  [tableHeaderView layoutIfNeeded];
}

- (id)_electrocardiogramMetadataContainerView
{
  v3 = objc_alloc(MEMORY[0x277D75D18]);
  v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  activeAlgorithmVersion = [(WDElectrocardiogramDataMetadataViewController *)self activeAlgorithmVersion];
  if (activeAlgorithmVersion == *MEMORY[0x277CCDEA8] || (v6 = [(WDElectrocardiogramDataMetadataViewController *)self activeAlgorithmVersion], v6 == *MEMORY[0x277CCDEA0]))
  {
    v7 = 0;
  }

  else
  {
    v8 = [(WDElectrocardiogramDataMetadataViewController *)self mode]!= 2;
    v9 = [(WDElectrocardiogramDataMetadataViewController *)self mode]!= 2;
    v10 = [(WDElectrocardiogramDataMetadataViewController *)self mode]!= 0;
    v11 = objc_alloc(MEMORY[0x277D12868]);
    sample = [(WDElectrocardiogramDataMetadataViewController *)self sample];
    v7 = [v11 initWithSample:sample activeAlgorithmVersion:-[WDElectrocardiogramDataMetadataViewController activeAlgorithmVersion](self displayGraph:"activeAlgorithmVersion") allowExportToPDF:v8 isSharedData:v9 delegate:{v10, self}];
  }

  [v4 addSubview:v7];
  [v7 hk_alignConstraintsWithView:v4];

  return v4;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  sections = [(WDElectrocardiogramDataMetadataViewController *)self sections];
  v4 = [sections count];

  return v4;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  sections = [(WDElectrocardiogramDataMetadataViewController *)self sections];
  v6 = [sections objectAtIndexedSubscript:section];

  sectionTitle = [v6 sectionTitle];

  return sectionTitle;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  sections = [(WDElectrocardiogramDataMetadataViewController *)self sections];
  v6 = [sections objectAtIndexedSubscript:section];

  sectionFooter = [v6 sectionFooter];

  return sectionFooter;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  sections = [(WDElectrocardiogramDataMetadataViewController *)self sections];
  v6 = [sections objectAtIndexedSubscript:section];

  numberOfRowsInSection = [v6 numberOfRowsInSection];
  return numberOfRowsInSection;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  sections = [(WDElectrocardiogramDataMetadataViewController *)self sections];
  v9 = [sections objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

  v10 = [pathCopy row];
  v11 = [v9 cellForIndex:v10 tableView:viewCopy];

  return v11;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  sections = [(WDElectrocardiogramDataMetadataViewController *)self sections];
  v10 = [sections objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

  v8 = [pathCopy row];
  navigationController = [(WDElectrocardiogramDataMetadataViewController *)self navigationController];
  [v10 selectCellForIndex:v8 navigationController:navigationController animated:1];
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  pathCopy = path;
  cellCopy = cell;
  viewCopy = view;
  sections = [(WDElectrocardiogramDataMetadataViewController *)self sections];
  v13 = [sections objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

  v12 = [pathCopy row];
  [v13 willDisplayCell:cellCopy forIndex:v12 tableView:viewCopy];
}

- (void)deletionSectionDidSelectRow:(id)row sourceItem:(id)item
{
  rowCopy = row;
  itemCopy = item;
  if ([(WDElectrocardiogramDataMetadataViewController *)self actionsEnabled])
  {
    v8 = MEMORY[0x277D75110];
    v9 = WDBundle();
    v10 = [v9 localizedStringForKey:@"DELETE_ECG_SAMPLE_ACTION_SHEET_TITLE" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Cinnamon"];
    v11 = HKConditionallyRedactedHeartRhythmString();
    v12 = [v8 alertControllerWithTitle:v11 message:0 preferredStyle:0];

    v13 = MEMORY[0x277D750F8];
    v14 = WDBundle();
    v15 = [v14 localizedStringForKey:@"CANCEL" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
    v16 = [v13 actionWithTitle:v15 style:1 handler:0];
    [v12 addAction:v16];

    v17 = MEMORY[0x277D750F8];
    v18 = WDBundle();
    v19 = [v18 localizedStringForKey:@"DELETE_ECG_SAMPLE_BUTTON_TITLE" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Cinnamon"];
    v20 = HKConditionallyRedactedHeartRhythmString();
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __88__WDElectrocardiogramDataMetadataViewController_deletionSectionDidSelectRow_sourceItem___block_invoke;
    v26 = &unk_2796E6F78;
    selfCopy = self;
    v28 = rowCopy;
    v21 = [v17 actionWithTitle:v20 style:2 handler:&v23];
    [v12 addAction:{v21, v23, v24, v25, v26, selfCopy}];

    popoverPresentationController = [v12 popoverPresentationController];
    [popoverPresentationController setSourceItem:itemCopy];

    [(WDElectrocardiogramDataMetadataViewController *)self presentViewController:v12 animated:1 completion:0];
  }
}

- (id)accessibilityIdentifier
{
  identifierBundle = [(WDElectrocardiogramDataMetadataViewController *)self identifierBundle];
  v3 = [identifierBundle stringByAppendingString:@".DeleteRecordingButton"];

  return v3;
}

- (void)electrocardiogramMetadataViewDidTapDetailButton:(id)button
{
  v4 = MEMORY[0x277D130A0];
  sample = [(WDElectrocardiogramDataMetadataViewController *)self sample];
  reportDataSource = [(WDElectrocardiogramDataMetadataViewController *)self reportDataSource];
  v9 = [v4 electrocardiogramPossibleResultsViewControllerForSample:sample forAlgorithmVersion:{objc_msgSend(reportDataSource, "activeAlgorithmVersion")}];

  [v9 setLeftButtonType:3];
  v7 = [objc_alloc(MEMORY[0x277D12978]) initWithRootViewController:v9];
  navigationController = [(WDElectrocardiogramDataMetadataViewController *)self navigationController];
  [navigationController presentViewController:v7 animated:1 completion:0];
}

- (id)electrocardiogramMetadataView:(id)view regulatedBodyTextForSample:(id)sample
{
  sampleCopy = sample;
  v6 = [(WDElectrocardiogramDataMetadataViewController *)self mode]!= 0;
  reportDataSource = [(WDElectrocardiogramDataMetadataViewController *)self reportDataSource];
  v8 = [sampleCopy hrui_classificationShortBodyTextWithActiveAlgorithmVersion:objc_msgSend(reportDataSource isSharedData:{"activeAlgorithmVersion"), v6}];

  return v8;
}

- (void)shareButtonTapped:(id)tapped
{
  v22[1] = *MEMORY[0x277D85DE8];
  tappedCopy = tapped;
  reportGenerator = [(WDElectrocardiogramDataMetadataViewController *)self reportGenerator];
  generatePDF = [reportGenerator generatePDF];

  v7 = [WDElectrocardiogramActivityItemSource alloc];
  sample = [(WDElectrocardiogramDataMetadataViewController *)self sample];
  startDate = [sample startDate];
  reportDataSource = [(WDElectrocardiogramDataMetadataViewController *)self reportDataSource];
  firstName = [reportDataSource firstName];
  reportDataSource2 = [(WDElectrocardiogramDataMetadataViewController *)self reportDataSource];
  lastName = [reportDataSource2 lastName];
  v14 = [(WDElectrocardiogramActivityItemSource *)v7 initWithPDFData:generatePDF sampleDate:startDate firstName:firstName lastName:lastName provenance:0];

  if (v14)
  {
    v15 = objc_alloc(MEMORY[0x277D546D8]);
    v22[0] = v14;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
    v17 = [v15 initWithActivityItems:v16 applicationActivities:0];

    popoverPresentationController = [v17 popoverPresentationController];
    [popoverPresentationController setSourceItem:tappedCopy];

    v21 = *MEMORY[0x277D54730];
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
    [v17 setExcludedActivityTypes:v19];

    [(WDElectrocardiogramDataMetadataViewController *)self presentViewController:v17 animated:1 completion:0];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)presentPDFViewController
{
  if ([(WDElectrocardiogramDataMetadataViewController *)self actionsEnabled])
  {
    reportGenerator = [(WDElectrocardiogramDataMetadataViewController *)self reportGenerator];
    generatePDF = [reportGenerator generatePDF];

    v4 = [WDElectrocardiogramPDFViewController alloc];
    sample = [(WDElectrocardiogramDataMetadataViewController *)self sample];
    startDate = [sample startDate];
    reportDataSource = [(WDElectrocardiogramDataMetadataViewController *)self reportDataSource];
    firstName = [reportDataSource firstName];
    reportDataSource2 = [(WDElectrocardiogramDataMetadataViewController *)self reportDataSource];
    lastName = [reportDataSource2 lastName];
    v11 = [(WDElectrocardiogramPDFViewController *)v4 initWithPDFData:generatePDF sampleDate:startDate firstName:firstName lastName:lastName];

    v12 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v11];
    [(WDElectrocardiogramDataMetadataViewController *)self presentViewController:v12 animated:1 completion:0];
    mEMORY[0x277D130C0] = [MEMORY[0x277D130C0] sharedManager];
    [mEMORY[0x277D130C0] trackElectrocardiogramPDFViewed];
  }
}

- (void)deleteSampleTriggeredBySection:(id)section
{
  [section setEnabled:0];
  [(WDElectrocardiogramDataMetadataViewController *)self setActionsEnabled:0];
  delegate = [(WDElectrocardiogramDataMetadataViewController *)self delegate];
  healthStore = [delegate healthStore];
  sample = [(WDElectrocardiogramDataMetadataViewController *)self sample];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80__WDElectrocardiogramDataMetadataViewController_deleteSampleTriggeredBySection___block_invoke;
  v7[3] = &unk_2796E6CC8;
  v7[4] = self;
  [healthStore deleteObject:sample options:3 withCompletion:v7];
}

void __80__WDElectrocardiogramDataMetadataViewController_deleteSampleTriggeredBySection___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__WDElectrocardiogramDataMetadataViewController_deleteSampleTriggeredBySection___block_invoke_2;
  block[3] = &unk_2796E6D18;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __80__WDElectrocardiogramDataMetadataViewController_deleteSampleTriggeredBySection___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  v3 = [v2 presentingViewController];

  v4 = *(a1 + 32);
  if (v3)
  {

    [v4 dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    v6 = [v4 navigationController];
    v5 = [v6 popViewControllerAnimated:1];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  if (!changeCopy)
  {
    goto LABEL_3;
  }

  traitCollection = [(WDElectrocardiogramDataMetadataViewController *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];
  v7 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

  if ((v7 & 1) == 0)
  {
LABEL_3:
    [(WDElectrocardiogramDataMetadataViewController *)self _reloadElectrocardiogramMetadataTableHeaderView];
  }
}

- (int64_t)sampleAlgorithmVersion
{
  sample = [(WDElectrocardiogramDataMetadataViewController *)self sample];
  _algorithmVersion = [sample _algorithmVersion];

  if (_algorithmVersion)
  {
    integerValue = [_algorithmVersion integerValue];
  }

  else
  {
    integerValue = 1;
  }

  return integerValue;
}

- (id)featureVersionFromUpdateVersion:(id)version
{
  v3 = [version componentsSeparatedByString:@"."];
  v4 = [v3 mutableCopy];

  if ([v4 count] >= 2)
  {
    [v4 removeLastObject];
  }

  v5 = [v4 componentsJoinedByString:@"."];

  return v5;
}

- (void)viewControllerWillEnterAdaptiveModal
{
  objc_initWeak(&location, self);
  v3 = objc_alloc(MEMORY[0x277D751E0]);
  v4 = MEMORY[0x277D750C8];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __85__WDElectrocardiogramDataMetadataViewController_viewControllerWillEnterAdaptiveModal__block_invoke;
  v13 = &unk_2796E6DB8;
  objc_copyWeak(&v14, &location);
  v5 = [v4 actionWithHandler:&v10];
  v6 = [v3 initWithBarButtonSystemItem:0 primaryAction:{v5, v10, v11, v12, v13}];

  identifierBundle = [(WDElectrocardiogramDataMetadataViewController *)self identifierBundle];
  v8 = [identifierBundle stringByAppendingString:@".doneButton"];
  [v6 setAccessibilityIdentifier:v8];

  navigationItem = [(WDElectrocardiogramDataMetadataViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v6];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __85__WDElectrocardiogramDataMetadataViewController_viewControllerWillEnterAdaptiveModal__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

- (void)viewControllerDidLeaveAdaptiveModal
{
  navigationItem = [(WDElectrocardiogramDataMetadataViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:0];
}

- (HKDataMetadataViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_fetchActiveAlgorithmVersionWithHealthStore:(os_log_t)log .cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136446210;
  v3 = "[WDElectrocardiogramDataMetadataViewController _fetchActiveAlgorithmVersionWithHealthStore:]";
  _os_log_error_impl(&dword_251E85000, log, OS_LOG_TYPE_ERROR, "%{public}s: Failed to fetch active algorithm version.", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end