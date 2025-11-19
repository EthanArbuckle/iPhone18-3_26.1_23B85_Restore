@interface WDElectrocardiogramDataMetadataViewController
- (BOOL)_addSectionIfNonNull:(id)a3;
- (HKDataMetadataViewControllerDelegate)delegate;
- (WDElectrocardiogramDataMetadataViewController)initWithSample:(id)a3 delegate:(id)a4 mode:(int64_t)a5 activeAlgorithmVersion:(id)a6;
- (id)_electrocardiogramMetadataContainerView;
- (id)accessibilityIdentifier;
- (id)electrocardiogramMetadataView:(id)a3 regulatedBodyTextForSample:(id)a4;
- (id)featureVersionFromUpdateVersion:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)_fetchActiveAlgorithmVersionWithHealthStore:(id)a3;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)sampleAlgorithmVersion;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_loadSections;
- (void)_localeOrDisplayTypeChange:(id)a3;
- (void)_reloadElectrocardiogramMetadataTableHeaderView;
- (void)dealloc;
- (void)deleteSampleTriggeredBySection:(id)a3;
- (void)deletionSectionDidSelectRow:(id)a3 sourceItem:(id)a4;
- (void)electrocardiogramMetadataViewDidTapDetailButton:(id)a3;
- (void)presentPDFViewController;
- (void)shareButtonTapped:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewControllerDidLeaveAdaptiveModal;
- (void)viewControllerWillEnterAdaptiveModal;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation WDElectrocardiogramDataMetadataViewController

- (WDElectrocardiogramDataMetadataViewController)initWithSample:(id)a3 delegate:(id)a4 mode:(int64_t)a5 activeAlgorithmVersion:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v30.receiver = self;
  v30.super_class = WDElectrocardiogramDataMetadataViewController;
  v14 = [(HKTableViewController *)&v30 initWithUsingInsetStyling:1];
  v15 = v14;
  if (v14)
  {
    v14->_firstViewDidLayoutSubviews = 1;
    objc_storeStrong(&v14->_sample, a3);
    objc_storeWeak(&v15->_delegate, v12);
    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    sections = v15->_sections;
    v15->_sections = v16;

    v15->_actionsEnabled = 1;
    v15->_mode = a5;
    if (v13)
    {
      v15->_activeAlgorithmVersion = [v13 integerValue];
    }

    else
    {
      v18 = [(WDElectrocardiogramDataMetadataViewController *)v15 delegate];
      v19 = [v18 healthStore];
      v15->_activeAlgorithmVersion = [(WDElectrocardiogramDataMetadataViewController *)v15 _fetchActiveAlgorithmVersionWithHealthStore:v19];
    }

    v20 = [WDElectrocardiogramReportDataSource alloc];
    v21 = [(WDElectrocardiogramDataMetadataViewController *)v15 delegate];
    v22 = [v21 healthStore];
    v23 = [(WDElectrocardiogramReportDataSource *)v20 initWithSample:v11 healthStore:v22 activeAlgorithmVersion:v15->_activeAlgorithmVersion];
    reportDataSource = v15->_reportDataSource;
    v15->_reportDataSource = v23;

    v25 = [objc_alloc(MEMORY[0x277D130A8]) initWithDataSource:v15->_reportDataSource];
    reportGenerator = v15->_reportGenerator;
    v15->_reportGenerator = v25;

    v27 = [MEMORY[0x277CCAB98] defaultCenter];
    [v27 addObserver:v15 selector:sel__localeOrDisplayTypeChange_ name:*MEMORY[0x277CBE620] object:0];

    v28 = [MEMORY[0x277CCAB98] defaultCenter];
    [v28 addObserver:v15 selector:sel__localeOrDisplayTypeChange_ name:*MEMORY[0x277D12730] object:0];
  }

  return v15;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277CBE620] object:0];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x277D12730] object:0];

  v5.receiver = self;
  v5.super_class = WDElectrocardiogramDataMetadataViewController;
  [(WDElectrocardiogramDataMetadataViewController *)&v5 dealloc];
}

- (int64_t)_fetchActiveAlgorithmVersionWithHealthStore:(id)a3
{
  v10 = 0;
  v3 = [MEMORY[0x277CCD380] versionWithHealthStore:a3 error:&v10];
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
    v8 = [v3 integerValue];
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

    v8 = *MEMORY[0x277CCDEA8];
  }

  return v8;
}

- (void)_localeOrDisplayTypeChange:(id)a3
{
  [(WDElectrocardiogramDataMetadataViewController *)self _loadSections];
  v4 = [(WDElectrocardiogramDataMetadataViewController *)self tableView];
  [v4 reloadData];
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
    v7 = [(WDElectrocardiogramDataMetadataViewController *)self identifierBundle];
    v8 = [v7 stringByAppendingString:@".shareButton"];
    [v6 setAccessibilityIdentifier:v8];

    v9 = [(WDElectrocardiogramDataMetadataViewController *)self navigationItem];
    [v9 setRightBarButtonItem:v6];
  }

  v10 = *MEMORY[0x277D76F30];
  v11 = [(WDElectrocardiogramDataMetadataViewController *)self tableView];
  [v11 setRowHeight:v10];

  v12 = [(WDElectrocardiogramDataMetadataViewController *)self tableView];
  [v12 setEstimatedRowHeight:64.0];

  v13 = [(WDElectrocardiogramDataMetadataViewController *)self tableView];
  [v13 _setSectionContentInsetFollowsLayoutMargins:1];

  v14 = *MEMORY[0x277D12798];
  v15 = [(WDElectrocardiogramDataMetadataViewController *)self tableView];
  [v15 _setSectionCornerRadius:v14];

  [(WDElectrocardiogramDataMetadataViewController *)self _loadSections];
  v16 = [(WDElectrocardiogramDataMetadataViewController *)self tableView];
  [v16 reloadData];

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
    v3 = [(WDElectrocardiogramDataMetadataViewController *)self tableView];
    v4 = [v3 tableHeaderView];
    v5 = [(WDElectrocardiogramDataMetadataViewController *)self tableView];
    [v5 setTableHeaderView:v4];
  }
}

- (BOOL)_addSectionIfNonNull:(id)a3
{
  if (a3)
  {
    v5 = a3;
    v6 = [(WDElectrocardiogramDataMetadataViewController *)self sections];
    [v6 addObject:v5];
  }

  return a3 != 0;
}

- (void)_loadSections
{
  v54[2] = *MEMORY[0x277D85DE8];
  v3 = [(WDElectrocardiogramDataMetadataViewController *)self sections];
  [v3 removeAllObjects];

  v4 = [(WDElectrocardiogramDataMetadataViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [(WDElectrocardiogramDataMetadataViewController *)self delegate];
    v6 = [v5 displayTypeController];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(WDElectrocardiogramDataMetadataViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v8 = [(WDElectrocardiogramDataMetadataViewController *)self delegate];
    v9 = [v8 unitController];
  }

  else
  {
    v9 = 0;
  }

  v10 = [(WDElectrocardiogramDataMetadataViewController *)self sections];
  v11 = objc_alloc(MEMORY[0x277D12800]);
  v12 = [(WDElectrocardiogramDataMetadataViewController *)self sample];
  v13 = [v11 initWithSample:v12 displayTypeController:v6 unitController:v9];
  [v10 addObject:v13];

  v14 = [MEMORY[0x277CBEBD0] hk_heartRhythmDefaults];
  v15 = ([v14 hk_hfeModeEnabled] & 1) == 0 && -[WDElectrocardiogramDataMetadataViewController mode](self, "mode") != 2;

  v16 = [(WDElectrocardiogramDataMetadataViewController *)self mode];
  if (v15)
  {
    v17 = objc_alloc(MEMORY[0x277D12808]);
    v18 = [(WDElectrocardiogramDataMetadataViewController *)self sample];
    v19 = [v17 initWithSample:v18];

    v20 = [(WDElectrocardiogramDataMetadataViewController *)self sample];
    v21 = [v20 sourceRevision];
    v22 = [v21 version];

    v23 = [(WDElectrocardiogramDataMetadataViewController *)self sampleAlgorithmVersion];
    v24 = [objc_alloc(MEMORY[0x277D12880]) initWithSourceVersion:v22 algorithmVersion:v23];
    if (v24)
    {
      v47 = v16;
      v52 = v6;
      v25 = [(WDElectrocardiogramDataMetadataViewController *)self sample];
      v26 = [v25 metadata];
      v27 = [v26 objectForKey:*MEMORY[0x277CCE0D0]];

      v50 = v22;
      v51 = v9;
      v48 = v27;
      if (v27)
      {
        v49 = v27;
        [(WDElectrocardiogramDataMetadataViewController *)self featureVersionFromUpdateVersion:?];
      }

      else
      {
        v49 = [v24 updateVersion];
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
      [v19 addText:v49 detail:v37 baseIdentifier:v39];

      v9 = v51;
      v6 = v52;
      v22 = v50;
      v16 = v47;
    }

    [(WDElectrocardiogramDataMetadataViewController *)self _addSectionIfNonNull:v19];
  }

  if (!v16)
  {
    v40 = objc_alloc(MEMORY[0x277D127F8]);
    v41 = WDBundle();
    v42 = [v41 localizedStringForKey:@"DELETE_ECG_SAMPLE_CELL_TITLE" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Cinnamon"];
    v43 = HKConditionallyRedactedHeartRhythmString();
    v44 = [v40 initWithTitle:v43];

    [v44 setDelegate:self];
    v45 = [(WDElectrocardiogramDataMetadataViewController *)self sections];
    [v45 addObject:v44];
  }

  v46 = *MEMORY[0x277D85DE8];
}

- (void)_reloadElectrocardiogramMetadataTableHeaderView
{
  v18 = [(WDElectrocardiogramDataMetadataViewController *)self _electrocardiogramMetadataContainerView];
  v3 = [(WDElectrocardiogramDataMetadataViewController *)self tableView];
  [v3 setTableHeaderView:v18];

  v4 = [v18 widthAnchor];
  v5 = [(WDElectrocardiogramDataMetadataViewController *)self tableView];
  v6 = [v5 widthAnchor];
  v7 = [v4 constraintEqualToAnchor:v6];
  [v7 setActive:1];

  v8 = [v18 centerXAnchor];
  v9 = [(WDElectrocardiogramDataMetadataViewController *)self tableView];
  v10 = [v9 centerXAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  [v11 setActive:1];

  v12 = [v18 topAnchor];
  v13 = [(WDElectrocardiogramDataMetadataViewController *)self tableView];
  v14 = [v13 topAnchor];
  v15 = [v12 constraintEqualToAnchor:v14];
  [v15 setActive:1];

  v16 = [(WDElectrocardiogramDataMetadataViewController *)self tableView];
  v17 = [v16 tableHeaderView];
  [v17 layoutIfNeeded];
}

- (id)_electrocardiogramMetadataContainerView
{
  v3 = objc_alloc(MEMORY[0x277D75D18]);
  v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [(WDElectrocardiogramDataMetadataViewController *)self activeAlgorithmVersion];
  if (v5 == *MEMORY[0x277CCDEA8] || (v6 = [(WDElectrocardiogramDataMetadataViewController *)self activeAlgorithmVersion], v6 == *MEMORY[0x277CCDEA0]))
  {
    v7 = 0;
  }

  else
  {
    v8 = [(WDElectrocardiogramDataMetadataViewController *)self mode]!= 2;
    v9 = [(WDElectrocardiogramDataMetadataViewController *)self mode]!= 2;
    v10 = [(WDElectrocardiogramDataMetadataViewController *)self mode]!= 0;
    v11 = objc_alloc(MEMORY[0x277D12868]);
    v12 = [(WDElectrocardiogramDataMetadataViewController *)self sample];
    v7 = [v11 initWithSample:v12 activeAlgorithmVersion:-[WDElectrocardiogramDataMetadataViewController activeAlgorithmVersion](self displayGraph:"activeAlgorithmVersion") allowExportToPDF:v8 isSharedData:v9 delegate:{v10, self}];
  }

  [v4 addSubview:v7];
  [v7 hk_alignConstraintsWithView:v4];

  return v4;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(WDElectrocardiogramDataMetadataViewController *)self sections];
  v4 = [v3 count];

  return v4;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v5 = [(WDElectrocardiogramDataMetadataViewController *)self sections];
  v6 = [v5 objectAtIndexedSubscript:a4];

  v7 = [v6 sectionTitle];

  return v7;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v5 = [(WDElectrocardiogramDataMetadataViewController *)self sections];
  v6 = [v5 objectAtIndexedSubscript:a4];

  v7 = [v6 sectionFooter];

  return v7;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(WDElectrocardiogramDataMetadataViewController *)self sections];
  v6 = [v5 objectAtIndexedSubscript:a4];

  v7 = [v6 numberOfRowsInSection];
  return v7;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(WDElectrocardiogramDataMetadataViewController *)self sections];
  v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v6, "section")}];

  v10 = [v6 row];
  v11 = [v9 cellForIndex:v10 tableView:v7];

  return v11;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  [a3 deselectRowAtIndexPath:v6 animated:1];
  v7 = [(WDElectrocardiogramDataMetadataViewController *)self sections];
  v10 = [v7 objectAtIndexedSubscript:{objc_msgSend(v6, "section")}];

  v8 = [v6 row];
  v9 = [(WDElectrocardiogramDataMetadataViewController *)self navigationController];
  [v10 selectCellForIndex:v8 navigationController:v9 animated:1];
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(WDElectrocardiogramDataMetadataViewController *)self sections];
  v13 = [v11 objectAtIndexedSubscript:{objc_msgSend(v8, "section")}];

  v12 = [v8 row];
  [v13 willDisplayCell:v9 forIndex:v12 tableView:v10];
}

- (void)deletionSectionDidSelectRow:(id)a3 sourceItem:(id)a4
{
  v6 = a3;
  v7 = a4;
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
    v27 = self;
    v28 = v6;
    v21 = [v17 actionWithTitle:v20 style:2 handler:&v23];
    [v12 addAction:{v21, v23, v24, v25, v26, v27}];

    v22 = [v12 popoverPresentationController];
    [v22 setSourceItem:v7];

    [(WDElectrocardiogramDataMetadataViewController *)self presentViewController:v12 animated:1 completion:0];
  }
}

- (id)accessibilityIdentifier
{
  v2 = [(WDElectrocardiogramDataMetadataViewController *)self identifierBundle];
  v3 = [v2 stringByAppendingString:@".DeleteRecordingButton"];

  return v3;
}

- (void)electrocardiogramMetadataViewDidTapDetailButton:(id)a3
{
  v4 = MEMORY[0x277D130A0];
  v5 = [(WDElectrocardiogramDataMetadataViewController *)self sample];
  v6 = [(WDElectrocardiogramDataMetadataViewController *)self reportDataSource];
  v9 = [v4 electrocardiogramPossibleResultsViewControllerForSample:v5 forAlgorithmVersion:{objc_msgSend(v6, "activeAlgorithmVersion")}];

  [v9 setLeftButtonType:3];
  v7 = [objc_alloc(MEMORY[0x277D12978]) initWithRootViewController:v9];
  v8 = [(WDElectrocardiogramDataMetadataViewController *)self navigationController];
  [v8 presentViewController:v7 animated:1 completion:0];
}

- (id)electrocardiogramMetadataView:(id)a3 regulatedBodyTextForSample:(id)a4
{
  v5 = a4;
  v6 = [(WDElectrocardiogramDataMetadataViewController *)self mode]!= 0;
  v7 = [(WDElectrocardiogramDataMetadataViewController *)self reportDataSource];
  v8 = [v5 hrui_classificationShortBodyTextWithActiveAlgorithmVersion:objc_msgSend(v7 isSharedData:{"activeAlgorithmVersion"), v6}];

  return v8;
}

- (void)shareButtonTapped:(id)a3
{
  v22[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WDElectrocardiogramDataMetadataViewController *)self reportGenerator];
  v6 = [v5 generatePDF];

  v7 = [WDElectrocardiogramActivityItemSource alloc];
  v8 = [(WDElectrocardiogramDataMetadataViewController *)self sample];
  v9 = [v8 startDate];
  v10 = [(WDElectrocardiogramDataMetadataViewController *)self reportDataSource];
  v11 = [v10 firstName];
  v12 = [(WDElectrocardiogramDataMetadataViewController *)self reportDataSource];
  v13 = [v12 lastName];
  v14 = [(WDElectrocardiogramActivityItemSource *)v7 initWithPDFData:v6 sampleDate:v9 firstName:v11 lastName:v13 provenance:0];

  if (v14)
  {
    v15 = objc_alloc(MEMORY[0x277D546D8]);
    v22[0] = v14;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
    v17 = [v15 initWithActivityItems:v16 applicationActivities:0];

    v18 = [v17 popoverPresentationController];
    [v18 setSourceItem:v4];

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
    v3 = [(WDElectrocardiogramDataMetadataViewController *)self reportGenerator];
    v14 = [v3 generatePDF];

    v4 = [WDElectrocardiogramPDFViewController alloc];
    v5 = [(WDElectrocardiogramDataMetadataViewController *)self sample];
    v6 = [v5 startDate];
    v7 = [(WDElectrocardiogramDataMetadataViewController *)self reportDataSource];
    v8 = [v7 firstName];
    v9 = [(WDElectrocardiogramDataMetadataViewController *)self reportDataSource];
    v10 = [v9 lastName];
    v11 = [(WDElectrocardiogramPDFViewController *)v4 initWithPDFData:v14 sampleDate:v6 firstName:v8 lastName:v10];

    v12 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v11];
    [(WDElectrocardiogramDataMetadataViewController *)self presentViewController:v12 animated:1 completion:0];
    v13 = [MEMORY[0x277D130C0] sharedManager];
    [v13 trackElectrocardiogramPDFViewed];
  }
}

- (void)deleteSampleTriggeredBySection:(id)a3
{
  [a3 setEnabled:0];
  [(WDElectrocardiogramDataMetadataViewController *)self setActionsEnabled:0];
  v4 = [(WDElectrocardiogramDataMetadataViewController *)self delegate];
  v5 = [v4 healthStore];
  v6 = [(WDElectrocardiogramDataMetadataViewController *)self sample];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80__WDElectrocardiogramDataMetadataViewController_deleteSampleTriggeredBySection___block_invoke;
  v7[3] = &unk_2796E6CC8;
  v7[4] = self;
  [v5 deleteObject:v6 options:3 withCompletion:v7];
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

- (void)traitCollectionDidChange:(id)a3
{
  v8 = a3;
  if (!v8)
  {
    goto LABEL_3;
  }

  v4 = [(WDElectrocardiogramDataMetadataViewController *)self traitCollection];
  v5 = [v4 preferredContentSizeCategory];
  v6 = [v8 preferredContentSizeCategory];
  v7 = [v5 isEqualToString:v6];

  if ((v7 & 1) == 0)
  {
LABEL_3:
    [(WDElectrocardiogramDataMetadataViewController *)self _reloadElectrocardiogramMetadataTableHeaderView];
  }
}

- (int64_t)sampleAlgorithmVersion
{
  v2 = [(WDElectrocardiogramDataMetadataViewController *)self sample];
  v3 = [v2 _algorithmVersion];

  if (v3)
  {
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)featureVersionFromUpdateVersion:(id)a3
{
  v3 = [a3 componentsSeparatedByString:@"."];
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

  v7 = [(WDElectrocardiogramDataMetadataViewController *)self identifierBundle];
  v8 = [v7 stringByAppendingString:@".doneButton"];
  [v6 setAccessibilityIdentifier:v8];

  v9 = [(WDElectrocardiogramDataMetadataViewController *)self navigationItem];
  [v9 setLeftBarButtonItem:v6];

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
  v2 = [(WDElectrocardiogramDataMetadataViewController *)self navigationItem];
  [v2 setLeftBarButtonItem:0];
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