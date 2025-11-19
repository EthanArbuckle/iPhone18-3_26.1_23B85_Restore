@interface WDAtrialFibrillationEventMetadataViewController
- (BOOL)_addSectionIfNonNull:(id)a3;
- (HKDataMetadataViewControllerDelegate)delegate;
- (WDAtrialFibrillationEventMetadataViewController)initWithEvent:(id)a3 delegate:(id)a4;
- (id)_atrialFibrillationEducationContainerView;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_loadSections;
- (void)_reloadAtrialFibrillationEducationTableHeaderView;
- (void)heartbeatSequecesListQueryComplete:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewControllerDidLeaveAdaptiveModal;
- (void)viewControllerWillEnterAdaptiveModal;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation WDAtrialFibrillationEventMetadataViewController

- (WDAtrialFibrillationEventMetadataViewController)initWithEvent:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = WDAtrialFibrillationEventMetadataViewController;
  v9 = [(WDAtrialFibrillationEventMetadataViewController *)&v14 initWithStyle:1];
  v10 = v9;
  if (v9)
  {
    v9->_firstViewDidLayoutSubviews = 1;
    objc_storeStrong(&v9->_event, a3);
    objc_storeWeak(&v10->_delegate, v8);
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    sections = v10->_sections;
    v10->_sections = v11;
  }

  return v10;
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = WDAtrialFibrillationEventMetadataViewController;
  [(HKTableViewController *)&v11 viewDidLoad];
  v3 = [(WDAtrialFibrillationEventMetadataViewController *)self navigationItem];
  [v3 setLargeTitleDisplayMode:2];

  v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v5 = [v4 localizedStringForKey:@"DETAILS" value:&stru_28641D9B8 table:@"HealthUI-Localizable"];
  [(WDAtrialFibrillationEventMetadataViewController *)self setTitle:v5];

  v6 = *MEMORY[0x277D12780];
  v7 = [(WDAtrialFibrillationEventMetadataViewController *)self tableView];
  [v7 setEstimatedRowHeight:v6];

  v8 = [(WDAtrialFibrillationEventMetadataViewController *)self tableView];
  [v8 _setSectionContentInsetFollowsLayoutMargins:1];

  v9 = *MEMORY[0x277D12798];
  v10 = [(WDAtrialFibrillationEventMetadataViewController *)self tableView];
  [v10 _setSectionCornerRadius:v9];

  [(WDAtrialFibrillationEventMetadataViewController *)self _loadSections];
  [(WDAtrialFibrillationEventMetadataViewController *)self _reloadAtrialFibrillationEducationTableHeaderView];
}

- (void)viewDidLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = WDAtrialFibrillationEventMetadataViewController;
  [(WDAtrialFibrillationEventMetadataViewController *)&v6 viewDidLayoutSubviews];
  if ([(WDAtrialFibrillationEventMetadataViewController *)self firstViewDidLayoutSubviews])
  {
    [(WDAtrialFibrillationEventMetadataViewController *)self setFirstViewDidLayoutSubviews:0];
    v3 = [(WDAtrialFibrillationEventMetadataViewController *)self tableView];
    v4 = [v3 tableHeaderView];
    v5 = [(WDAtrialFibrillationEventMetadataViewController *)self tableView];
    [v5 setTableHeaderView:v4];
  }
}

- (BOOL)_addSectionIfNonNull:(id)a3
{
  if (a3)
  {
    v5 = a3;
    v6 = [(WDAtrialFibrillationEventMetadataViewController *)self sections];
    [v6 addObject:v5];
  }

  return a3 != 0;
}

- (void)_loadSections
{
  v45[2] = *MEMORY[0x277D85DE8];
  v3 = [(WDAtrialFibrillationEventMetadataViewController *)self sections];
  [v3 removeAllObjects];

  v4 = [(WDAtrialFibrillationEventMetadataViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [(WDAtrialFibrillationEventMetadataViewController *)self delegate];
    v6 = [v5 displayTypeController];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(WDAtrialFibrillationEventMetadataViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v8 = [(WDAtrialFibrillationEventMetadataViewController *)self delegate];
    v9 = [v8 unitController];
  }

  else
  {
    v9 = 0;
  }

  v10 = [(WDAtrialFibrillationEventMetadataViewController *)self delegate];
  v11 = [v10 healthStore];

  v12 = objc_alloc(MEMORY[0x277D128D0]);
  v13 = [(WDAtrialFibrillationEventMetadataViewController *)self event];
  v14 = [v12 initWithEvent:v13 healthStore:v11 displayTypeController:v6 unitController:v9 delegate:self];

  [(WDAtrialFibrillationEventMetadataViewController *)self _addSectionIfNonNull:v14];
  v15 = [(WDAtrialFibrillationEventMetadataViewController *)self sections];
  v16 = objc_alloc(MEMORY[0x277D12800]);
  v17 = [(WDAtrialFibrillationEventMetadataViewController *)self event];
  v18 = [v16 initWithSample:v17 displayTypeController:v6 unitController:v9];
  [v15 addObject:v18];

  v19 = [v11 profileIdentifier];
  v20 = [v19 type];

  if (v20 != 2)
  {
    v21 = objc_alloc(MEMORY[0x277D12808]);
    v22 = [(WDAtrialFibrillationEventMetadataViewController *)self event];
    v23 = [v21 initWithSample:v22];

    if (!v23)
    {
      v24 = objc_alloc(MEMORY[0x277D12810]);
      v25 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v26 = [v25 localizedStringForKey:@"DEVICE_DETAILS" value:&stru_28641D9B8 table:@"HealthUI-Localizable"];
      v23 = [v24 initWithTitle:v26];
    }

    v27 = [(WDAtrialFibrillationEventMetadataViewController *)self event];
    v28 = [v27 metadata];
    v29 = [v28 objectForKeyedSubscript:*MEMORY[0x277CCDFB8]];

    if (v29)
    {
      v30 = [(WDAtrialFibrillationEventMetadataViewController *)self _shortVersionNumberFromString:v29];
      v31 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v32 = [v31 localizedStringForKey:@"ATRIAL_FIBRILLATION_PRODUCT_FEATURE_VERSION_WATCH" value:&stru_28641D9B8 table:@"HealthUI-Localizable-Antimony"];
      v42 = v9;
      v45[0] = *MEMORY[0x277CCC950];
      v33 = v45[0];
      v45[1] = @"FeatureVersion";
      [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:2];
      v34 = v41 = v14;
      HKUIJoinStringsForAutomationIdentifier();
      v35 = v43 = v6;
      [v23 addText:v30 detail:v32 baseIdentifier:v35];

      v36 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v37 = [v36 localizedStringForKey:@"ATRIAL_FIBRILLATION_PRODUCT_UPDATE_VERSION_WATCH" value:&stru_28641D9B8 table:@"HealthUI-Localizable-Antimony"];
      v44[0] = v33;
      v44[1] = @"UpdateVersion";
      v9 = v42;
      v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:2];
      v39 = HKUIJoinStringsForAutomationIdentifier();
      [v23 addText:v29 detail:v37 baseIdentifier:v39];

      v14 = v41;
      v6 = v43;
    }

    [(WDAtrialFibrillationEventMetadataViewController *)self _addSectionIfNonNull:v23, v41];
  }

  v40 = *MEMORY[0x277D85DE8];
}

- (void)_reloadAtrialFibrillationEducationTableHeaderView
{
  v18 = [(WDAtrialFibrillationEventMetadataViewController *)self _atrialFibrillationEducationContainerView];
  v3 = [(WDAtrialFibrillationEventMetadataViewController *)self tableView];
  [v3 setTableHeaderView:v18];

  v4 = [v18 widthAnchor];
  v5 = [(WDAtrialFibrillationEventMetadataViewController *)self tableView];
  v6 = [v5 widthAnchor];
  v7 = [v4 constraintEqualToAnchor:v6];
  [v7 setActive:1];

  v8 = [v18 centerXAnchor];
  v9 = [(WDAtrialFibrillationEventMetadataViewController *)self tableView];
  v10 = [v9 centerXAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  [v11 setActive:1];

  v12 = [v18 topAnchor];
  v13 = [(WDAtrialFibrillationEventMetadataViewController *)self tableView];
  v14 = [v13 topAnchor];
  v15 = [v12 constraintEqualToAnchor:v14];
  [v15 setActive:1];

  v16 = [(WDAtrialFibrillationEventMetadataViewController *)self tableView];
  v17 = [v16 tableHeaderView];
  [v17 layoutIfNeeded];
}

- (id)_atrialFibrillationEducationContainerView
{
  v2 = objc_alloc(MEMORY[0x277D75D18]);
  v3 = [v2 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = objc_alloc_init(MEMORY[0x277D13080]);
  [v3 addSubview:v4];
  [v4 hk_alignConstraintsWithView:v3];

  return v3;
}

- (void)traitCollectionDidChange:(id)a3
{
  v8 = a3;
  if (!v8)
  {
    goto LABEL_3;
  }

  v4 = [(WDAtrialFibrillationEventMetadataViewController *)self traitCollection];
  v5 = [v4 preferredContentSizeCategory];
  v6 = [v8 preferredContentSizeCategory];
  v7 = [v5 isEqualToString:v6];

  if ((v7 & 1) == 0)
  {
LABEL_3:
    [(WDAtrialFibrillationEventMetadataViewController *)self _reloadAtrialFibrillationEducationTableHeaderView];
  }
}

- (void)heartbeatSequecesListQueryComplete:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__WDAtrialFibrillationEventMetadataViewController_heartbeatSequecesListQueryComplete___block_invoke;
  block[3] = &unk_2796E6D18;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __86__WDAtrialFibrillationEventMetadataViewController_heartbeatSequecesListQueryComplete___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) tableView];
  [v1 reloadData];
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(WDAtrialFibrillationEventMetadataViewController *)self sections];
  v4 = [v3 count];

  return v4;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v5 = [(WDAtrialFibrillationEventMetadataViewController *)self sections];
  v6 = [v5 objectAtIndexedSubscript:a4];

  v7 = [v6 sectionTitle];

  return v7;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v5 = [(WDAtrialFibrillationEventMetadataViewController *)self sections];
  v6 = [v5 objectAtIndexedSubscript:a4];

  v7 = [v6 sectionFooter];

  return v7;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(WDAtrialFibrillationEventMetadataViewController *)self sections];
  v6 = [v5 objectAtIndexedSubscript:a4];

  v7 = [v6 numberOfRowsInSection];
  return v7;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(WDAtrialFibrillationEventMetadataViewController *)self sections];
  v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v6, "section")}];

  v10 = [v6 row];
  v11 = [v9 cellForIndex:v10 tableView:v7];

  return v11;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  [a3 deselectRowAtIndexPath:v6 animated:1];
  v7 = [(WDAtrialFibrillationEventMetadataViewController *)self sections];
  v10 = [v7 objectAtIndexedSubscript:{objc_msgSend(v6, "section")}];

  v8 = [v6 row];
  v9 = [(WDAtrialFibrillationEventMetadataViewController *)self navigationController];
  [v10 selectCellForIndex:v8 navigationController:v9 animated:1];
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(WDAtrialFibrillationEventMetadataViewController *)self sections];
  v13 = [v11 objectAtIndexedSubscript:{objc_msgSend(v8, "section")}];

  v12 = [v8 row];
  [v13 willDisplayCell:v9 forIndex:v12 tableView:v10];
}

- (void)viewControllerWillEnterAdaptiveModal
{
  objc_initWeak(&location, self);
  v3 = objc_alloc(MEMORY[0x277D751E0]);
  v4 = MEMORY[0x277D750C8];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __87__WDAtrialFibrillationEventMetadataViewController_viewControllerWillEnterAdaptiveModal__block_invoke;
  v11 = &unk_2796E6DB8;
  objc_copyWeak(&v12, &location);
  v5 = [v4 actionWithHandler:&v8];
  v6 = [v3 initWithBarButtonSystemItem:0 primaryAction:{v5, v8, v9, v10, v11}];

  v7 = [(WDAtrialFibrillationEventMetadataViewController *)self navigationItem];
  [v7 setLeftBarButtonItem:v6];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __87__WDAtrialFibrillationEventMetadataViewController_viewControllerWillEnterAdaptiveModal__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

- (void)viewControllerDidLeaveAdaptiveModal
{
  v2 = [(WDAtrialFibrillationEventMetadataViewController *)self navigationItem];
  [v2 setLeftBarButtonItem:0];
}

- (HKDataMetadataViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end