@interface WDAtrialFibrillationEventMetadataViewController
- (BOOL)_addSectionIfNonNull:(id)null;
- (HKDataMetadataViewControllerDelegate)delegate;
- (WDAtrialFibrillationEventMetadataViewController)initWithEvent:(id)event delegate:(id)delegate;
- (id)_atrialFibrillationEducationContainerView;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_loadSections;
- (void)_reloadAtrialFibrillationEducationTableHeaderView;
- (void)heartbeatSequecesListQueryComplete:(id)complete;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)traitCollectionDidChange:(id)change;
- (void)viewControllerDidLeaveAdaptiveModal;
- (void)viewControllerWillEnterAdaptiveModal;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation WDAtrialFibrillationEventMetadataViewController

- (WDAtrialFibrillationEventMetadataViewController)initWithEvent:(id)event delegate:(id)delegate
{
  eventCopy = event;
  delegateCopy = delegate;
  v14.receiver = self;
  v14.super_class = WDAtrialFibrillationEventMetadataViewController;
  v9 = [(WDAtrialFibrillationEventMetadataViewController *)&v14 initWithStyle:1];
  v10 = v9;
  if (v9)
  {
    v9->_firstViewDidLayoutSubviews = 1;
    objc_storeStrong(&v9->_event, event);
    objc_storeWeak(&v10->_delegate, delegateCopy);
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
  navigationItem = [(WDAtrialFibrillationEventMetadataViewController *)self navigationItem];
  [navigationItem setLargeTitleDisplayMode:2];

  v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v5 = [v4 localizedStringForKey:@"DETAILS" value:&stru_28641D9B8 table:@"HealthUI-Localizable"];
  [(WDAtrialFibrillationEventMetadataViewController *)self setTitle:v5];

  v6 = *MEMORY[0x277D12780];
  tableView = [(WDAtrialFibrillationEventMetadataViewController *)self tableView];
  [tableView setEstimatedRowHeight:v6];

  tableView2 = [(WDAtrialFibrillationEventMetadataViewController *)self tableView];
  [tableView2 _setSectionContentInsetFollowsLayoutMargins:1];

  v9 = *MEMORY[0x277D12798];
  tableView3 = [(WDAtrialFibrillationEventMetadataViewController *)self tableView];
  [tableView3 _setSectionCornerRadius:v9];

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
    tableView = [(WDAtrialFibrillationEventMetadataViewController *)self tableView];
    tableHeaderView = [tableView tableHeaderView];
    tableView2 = [(WDAtrialFibrillationEventMetadataViewController *)self tableView];
    [tableView2 setTableHeaderView:tableHeaderView];
  }
}

- (BOOL)_addSectionIfNonNull:(id)null
{
  if (null)
  {
    nullCopy = null;
    sections = [(WDAtrialFibrillationEventMetadataViewController *)self sections];
    [sections addObject:nullCopy];
  }

  return null != 0;
}

- (void)_loadSections
{
  v45[2] = *MEMORY[0x277D85DE8];
  sections = [(WDAtrialFibrillationEventMetadataViewController *)self sections];
  [sections removeAllObjects];

  delegate = [(WDAtrialFibrillationEventMetadataViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate2 = [(WDAtrialFibrillationEventMetadataViewController *)self delegate];
    displayTypeController = [delegate2 displayTypeController];
  }

  else
  {
    displayTypeController = 0;
  }

  delegate3 = [(WDAtrialFibrillationEventMetadataViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate4 = [(WDAtrialFibrillationEventMetadataViewController *)self delegate];
    unitController = [delegate4 unitController];
  }

  else
  {
    unitController = 0;
  }

  delegate5 = [(WDAtrialFibrillationEventMetadataViewController *)self delegate];
  healthStore = [delegate5 healthStore];

  v12 = objc_alloc(MEMORY[0x277D128D0]);
  event = [(WDAtrialFibrillationEventMetadataViewController *)self event];
  v14 = [v12 initWithEvent:event healthStore:healthStore displayTypeController:displayTypeController unitController:unitController delegate:self];

  [(WDAtrialFibrillationEventMetadataViewController *)self _addSectionIfNonNull:v14];
  sections2 = [(WDAtrialFibrillationEventMetadataViewController *)self sections];
  v16 = objc_alloc(MEMORY[0x277D12800]);
  event2 = [(WDAtrialFibrillationEventMetadataViewController *)self event];
  v18 = [v16 initWithSample:event2 displayTypeController:displayTypeController unitController:unitController];
  [sections2 addObject:v18];

  profileIdentifier = [healthStore profileIdentifier];
  type = [profileIdentifier type];

  if (type != 2)
  {
    v21 = objc_alloc(MEMORY[0x277D12808]);
    event3 = [(WDAtrialFibrillationEventMetadataViewController *)self event];
    v23 = [v21 initWithSample:event3];

    if (!v23)
    {
      v24 = objc_alloc(MEMORY[0x277D12810]);
      v25 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v26 = [v25 localizedStringForKey:@"DEVICE_DETAILS" value:&stru_28641D9B8 table:@"HealthUI-Localizable"];
      v23 = [v24 initWithTitle:v26];
    }

    event4 = [(WDAtrialFibrillationEventMetadataViewController *)self event];
    metadata = [event4 metadata];
    v29 = [metadata objectForKeyedSubscript:*MEMORY[0x277CCDFB8]];

    if (v29)
    {
      v30 = [(WDAtrialFibrillationEventMetadataViewController *)self _shortVersionNumberFromString:v29];
      v31 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v32 = [v31 localizedStringForKey:@"ATRIAL_FIBRILLATION_PRODUCT_FEATURE_VERSION_WATCH" value:&stru_28641D9B8 table:@"HealthUI-Localizable-Antimony"];
      v42 = unitController;
      v45[0] = *MEMORY[0x277CCC950];
      v33 = v45[0];
      v45[1] = @"FeatureVersion";
      [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:2];
      v34 = v41 = v14;
      HKUIJoinStringsForAutomationIdentifier();
      v35 = v43 = displayTypeController;
      [v23 addText:v30 detail:v32 baseIdentifier:v35];

      v36 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v37 = [v36 localizedStringForKey:@"ATRIAL_FIBRILLATION_PRODUCT_UPDATE_VERSION_WATCH" value:&stru_28641D9B8 table:@"HealthUI-Localizable-Antimony"];
      v44[0] = v33;
      v44[1] = @"UpdateVersion";
      unitController = v42;
      v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:2];
      v39 = HKUIJoinStringsForAutomationIdentifier();
      [v23 addText:v29 detail:v37 baseIdentifier:v39];

      v14 = v41;
      displayTypeController = v43;
    }

    [(WDAtrialFibrillationEventMetadataViewController *)self _addSectionIfNonNull:v23, v41];
  }

  v40 = *MEMORY[0x277D85DE8];
}

- (void)_reloadAtrialFibrillationEducationTableHeaderView
{
  _atrialFibrillationEducationContainerView = [(WDAtrialFibrillationEventMetadataViewController *)self _atrialFibrillationEducationContainerView];
  tableView = [(WDAtrialFibrillationEventMetadataViewController *)self tableView];
  [tableView setTableHeaderView:_atrialFibrillationEducationContainerView];

  widthAnchor = [_atrialFibrillationEducationContainerView widthAnchor];
  tableView2 = [(WDAtrialFibrillationEventMetadataViewController *)self tableView];
  widthAnchor2 = [tableView2 widthAnchor];
  v7 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  [v7 setActive:1];

  centerXAnchor = [_atrialFibrillationEducationContainerView centerXAnchor];
  tableView3 = [(WDAtrialFibrillationEventMetadataViewController *)self tableView];
  centerXAnchor2 = [tableView3 centerXAnchor];
  v11 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v11 setActive:1];

  topAnchor = [_atrialFibrillationEducationContainerView topAnchor];
  tableView4 = [(WDAtrialFibrillationEventMetadataViewController *)self tableView];
  topAnchor2 = [tableView4 topAnchor];
  v15 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v15 setActive:1];

  tableView5 = [(WDAtrialFibrillationEventMetadataViewController *)self tableView];
  tableHeaderView = [tableView5 tableHeaderView];
  [tableHeaderView layoutIfNeeded];
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

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  if (!changeCopy)
  {
    goto LABEL_3;
  }

  traitCollection = [(WDAtrialFibrillationEventMetadataViewController *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];
  v7 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

  if ((v7 & 1) == 0)
  {
LABEL_3:
    [(WDAtrialFibrillationEventMetadataViewController *)self _reloadAtrialFibrillationEducationTableHeaderView];
  }
}

- (void)heartbeatSequecesListQueryComplete:(id)complete
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

- (int64_t)numberOfSectionsInTableView:(id)view
{
  sections = [(WDAtrialFibrillationEventMetadataViewController *)self sections];
  v4 = [sections count];

  return v4;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  sections = [(WDAtrialFibrillationEventMetadataViewController *)self sections];
  v6 = [sections objectAtIndexedSubscript:section];

  sectionTitle = [v6 sectionTitle];

  return sectionTitle;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  sections = [(WDAtrialFibrillationEventMetadataViewController *)self sections];
  v6 = [sections objectAtIndexedSubscript:section];

  sectionFooter = [v6 sectionFooter];

  return sectionFooter;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  sections = [(WDAtrialFibrillationEventMetadataViewController *)self sections];
  v6 = [sections objectAtIndexedSubscript:section];

  numberOfRowsInSection = [v6 numberOfRowsInSection];
  return numberOfRowsInSection;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  sections = [(WDAtrialFibrillationEventMetadataViewController *)self sections];
  v9 = [sections objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

  v10 = [pathCopy row];
  v11 = [v9 cellForIndex:v10 tableView:viewCopy];

  return v11;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  sections = [(WDAtrialFibrillationEventMetadataViewController *)self sections];
  v10 = [sections objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

  v8 = [pathCopy row];
  navigationController = [(WDAtrialFibrillationEventMetadataViewController *)self navigationController];
  [v10 selectCellForIndex:v8 navigationController:navigationController animated:1];
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  pathCopy = path;
  cellCopy = cell;
  viewCopy = view;
  sections = [(WDAtrialFibrillationEventMetadataViewController *)self sections];
  v13 = [sections objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

  v12 = [pathCopy row];
  [v13 willDisplayCell:cellCopy forIndex:v12 tableView:viewCopy];
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

  navigationItem = [(WDAtrialFibrillationEventMetadataViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v6];

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
  navigationItem = [(WDAtrialFibrillationEventMetadataViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:0];
}

- (HKDataMetadataViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end