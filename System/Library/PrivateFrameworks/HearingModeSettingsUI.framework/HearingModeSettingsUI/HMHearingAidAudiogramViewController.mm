@interface HMHearingAidAudiogramViewController
- (HMHearingAidAudiogramViewController)init;
- (HMHearingAidEnrollmentDelegate)delegate;
- (_TtP21HearingModeSettingsUI25HearingFlowControllerType_)flowController;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)_tableFooterView;
- (id)_tableFooterViewWith:(id)with;
- (id)addAudiogramViewController;
- (id)getAudiogramSummary:(id)summary;
- (id)getHearingLossLevel:(unint64_t)level;
- (id)invalidAudiogramFooterLabel;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (void)_updateTableFooter;
- (void)addDeviceLisenters;
- (void)insertAudiogram:(id)audiogram;
- (void)linkButtonTapped;
- (void)mainButtonTapped;
- (void)refreshAudiogramList;
- (void)retrieveAndShowAudiograms;
- (void)setAGListResult;
- (void)setFlowController:(id)controller;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)traitCollectionDidChange:(id)change;
- (void)updateButtonTray;
- (void)updateTableView;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation HMHearingAidAudiogramViewController

- (HMHearingAidAudiogramViewController)init
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"Choose a Hearing Test Result" value:&stru_28643BDD8 table:0];

  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"Choose which test result you’d like to use to set up Hearing Assistance." value:&stru_28643BDD8 table:0];

  v13.receiver = self;
  v13.super_class = HMHearingAidAudiogramViewController;
  v7 = [(HMHearingAidAudiogramViewController *)&v13 initWithTitle:v4 detailText:v6 icon:0];
  v8 = v7;
  if (v7)
  {
    v7->_selectedIndex = -1;
    v9 = objc_alloc_init(MEMORY[0x277D75B40]);
    tableView = v8->_tableView;
    v8->_tableView = v9;

    [(UITableView *)v8->_tableView setDataSource:v8];
    [(UITableView *)v8->_tableView setDelegate:v8];
    [(UITableView *)v8->_tableView setScrollEnabled:0];
    checkedIndexPath = v8->_checkedIndexPath;
    v8->_checkedIndexPath = 0;

    [(UITableView *)v8->_tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"HMHearingAidAudiogram_Cell"];
  }

  return v8;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = HMHearingAidAudiogramViewController;
  [(OBBaseWelcomeController *)&v4 viewDidLoad];
  [(HMHearingAidAudiogramViewController *)self updateTableView];
  [(HMHearingAidAudiogramViewController *)self updateButtonTray];
  [(HMHearingAidAudiogramViewController *)self retrieveAndShowAudiograms];
  [(HMHearingAidAudiogramViewController *)self addDeviceLisenters];
  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem setRightBarButtonItem:0];

  [(HMHearingAidAudiogramViewController *)self set_shouldInlineButtontray:0];
}

- (void)viewDidLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = HMHearingAidAudiogramViewController;
  [(OBBaseWelcomeController *)&v6 viewDidLayoutSubviews];
  [(HMHearingAidAudiogramViewController *)self _updateTableFooter];
  [(UITableView *)self->_tableView layoutIfNeeded];
  [(UITableView *)self->_tableView contentSize];
  v4 = v3;
  contentHeightConstraint = [(HMHearingAidAudiogramViewController *)self contentHeightConstraint];
  [contentHeightConstraint setConstant:v4];
}

- (void)retrieveAndShowAudiograms
{
  v39 = *MEMORY[0x277D85DE8];
  validAudiograms = [(HMHearingAidAudiogramViewController *)self validAudiograms];
  v4 = [validAudiograms mutableCopy];
  validAudiograms = self->_validAudiograms;
  self->_validAudiograms = v4;

  invalidAudiograms = [(HMHearingAidAudiogramViewController *)self invalidAudiograms];
  v7 = [invalidAudiograms mutableCopy];
  invalidAudiograms = self->_invalidAudiograms;
  self->_invalidAudiograms = v7;

  NSLog(&cfstr_HearingAidList.isa);
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v9 = self->_validAudiograms;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v34;
    do
    {
      v14 = 0;
      v15 = v12;
      do
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v12 = v15 + 1;
        v16 = [*(*(&v33 + 1) + 8 * v14) description];
        NSLog(&cfstr_HearingAidVali.isa, v15, v16);

        ++v14;
        ++v15;
      }

      while (v11 != v14);
      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v11);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v17 = self->_invalidAudiograms;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = 0;
    v21 = *v30;
    do
    {
      v22 = 0;
      v23 = v20;
      do
      {
        if (*v30 != v21)
        {
          objc_enumerationMutation(v17);
        }

        v20 = v23 + 1;
        v24 = [*(*(&v29 + 1) + 8 * v22) description];
        NSLog(&cfstr_HearingAidInva.isa, v23, v24);

        ++v22;
        ++v23;
      }

      while (v19 != v22);
      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v19);
  }

  if ([(NSMutableArray *)self->_validAudiograms count])
  {
    v25 = [(NSMutableArray *)self->_validAudiograms sortedArrayUsingComparator:&__block_literal_global_0];
    v26 = [v25 mutableCopy];
    v27 = self->_validAudiograms;
    self->_validAudiograms = v26;
  }

  v28 = *MEMORY[0x277D85DE8];
}

uint64_t __64__HMHearingAidAudiogramViewController_retrieveAndShowAudiograms__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];

  v7 = [v5 compare:v6];
  v8 = 1;
  if (v7 != -1)
  {
    v8 = -1;
  }

  if (v7)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

- (void)updateTableView
{
  v28[5] = *MEMORY[0x277D85DE8];
  contentView = [(HMHearingAidAudiogramViewController *)self contentView];
  [contentView addSubview:self->_tableView];

  [(UITableView *)self->_tableView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UITableView *)self->_tableView setSeparatorStyle:1];
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  [(UITableView *)self->_tableView setSeparatorColor:systemBackgroundColor];

  [(UITableView *)self->_tableView setSectionHeaderTopPadding:0.0];
  contentView2 = [(HMHearingAidAudiogramViewController *)self contentView];
  heightAnchor = [contentView2 heightAnchor];
  v7 = [heightAnchor constraintEqualToConstant:400.0];
  [(HMHearingAidAudiogramViewController *)self setContentHeightConstraint:v7];

  v20 = MEMORY[0x277CCAAD0];
  contentHeightConstraint = [(HMHearingAidAudiogramViewController *)self contentHeightConstraint];
  v28[0] = contentHeightConstraint;
  topAnchor = [(UITableView *)self->_tableView topAnchor];
  contentView3 = [(HMHearingAidAudiogramViewController *)self contentView];
  topAnchor2 = [contentView3 topAnchor];
  v23 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v28[1] = v23;
  bottomAnchor = [(UITableView *)self->_tableView bottomAnchor];
  contentView4 = [(HMHearingAidAudiogramViewController *)self contentView];
  bottomAnchor2 = [contentView4 bottomAnchor];
  v8 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v28[2] = v8;
  leadingAnchor = [(UITableView *)self->_tableView leadingAnchor];
  contentView5 = [(HMHearingAidAudiogramViewController *)self contentView];
  leadingAnchor2 = [contentView5 leadingAnchor];
  v12 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v28[3] = v12;
  trailingAnchor = [(UITableView *)self->_tableView trailingAnchor];
  contentView6 = [(HMHearingAidAudiogramViewController *)self contentView];
  trailingAnchor2 = [contentView6 trailingAnchor];
  v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v28[4] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:5];
  [v20 activateConstraints:v17];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)updateButtonTray
{
  boldButton = [MEMORY[0x277D37618] boldButton];
  boldButton = self->_boldButton;
  self->_boldButton = boldButton;

  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v5 localizedStringForKey:@"Next" value:&stru_28643BDD8 table:0];

  [(OBTrayButton *)self->_boldButton setTitle:v11 forState:0];
  [(OBTrayButton *)self->_boldButton addTarget:self action:sel_mainButtonTapped forControlEvents:64];
  [(OBTrayButton *)self->_boldButton setEnabled:0];
  buttonTray = [(HMHearingAidAudiogramViewController *)self buttonTray];
  [buttonTray addButton:self->_boldButton];

  linkButton = [MEMORY[0x277D37650] linkButton];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"Cancel" value:&stru_28643BDD8 table:0];

  [linkButton setTitle:v9 forState:0];
  [linkButton addTarget:self action:sel_linkButtonTapped forControlEvents:64];
  buttonTray2 = [(HMHearingAidAudiogramViewController *)self buttonTray];
  [buttonTray2 addButton:linkButton];
}

- (void)linkButtonTapped
{
  navigationController = [(HMHearingAidAudiogramViewController *)self navigationController];
  [navigationController dismissViewControllerAnimated:1 completion:0];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  NSLog(&cfstr_HearingAidInde.isa, [(NSIndexPath *)pathCopy section], [(NSIndexPath *)pathCopy row]);
  v8 = [viewCopy dequeueReusableCellWithIdentifier:@"HMHearingAidAudiogram_Cell" forIndexPath:pathCopy];

  textLabel = [v8 textLabel];
  [textLabel setNumberOfLines:0];

  layer = [v8 layer];
  [layer setCornerRadius:10.0];

  secondarySystemBackgroundColor = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
  [v8 setBackgroundColor:secondarySystemBackgroundColor];

  [v8 setSelectionStyle:0];
  v12 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v12 setDateStyle:3];
  [v12 setTimeStyle:0];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  [v12 setLocale:currentLocale];

  v14 = [(NSMutableArray *)self->_validAudiograms objectAtIndexedSubscript:[(NSIndexPath *)pathCopy section]];
  startDate = [v14 startDate];
  v16 = [v12 stringFromDate:startDate];

  textLabel2 = [v8 textLabel];
  font = [textLabel2 font];
  v19 = [v14 audiogramSelectionDescriptionWithDate:v16 font:font];
  textLabel3 = [v8 textLabel];
  [textLabel3 setAttributedText:v19];

  checkedIndexPath = self->_checkedIndexPath;
  if (checkedIndexPath == pathCopy)
  {
    v22 = 3;
  }

  else
  {
    v22 = 0;
  }

  [v8 setAccessoryType:v22];

  return v8;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  if (section)
  {
    v4 = 0;
  }

  else
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = [v5 localizedStringForKey:@"COMPATIBLE RESULTS IN HEALTH" value:&stru_28643BDD8 table:0];
  }

  return v4;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  if (section)
  {
    v5 = objc_alloc(MEMORY[0x277D75D18]);
    v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  result = *MEMORY[0x277D76F30];
  if (section)
  {
    return 8.0;
  }

  return result;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v15[1] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  pathCopy = path;
  NSLog(&cfstr_HearingAidCell.isa, [(NSIndexPath *)pathCopy section], [(NSIndexPath *)pathCopy row]);
  if (self->_checkedIndexPath)
  {
    v8 = [viewCopy cellForRowAtIndexPath:?];
    [v8 setAccessoryType:0];
  }

  [(OBTrayButton *)self->_boldButton setEnabled:1];
  self->_selectedIndex = [(NSIndexPath *)pathCopy section];
  checkedIndexPath = self->_checkedIndexPath;
  self->_checkedIndexPath = pathCopy;
  v10 = pathCopy;

  v11 = [viewCopy cellForRowAtIndexPath:v10];
  v15[0] = v10;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  [viewCopy reloadRowsAtIndexPaths:v12 withRowAnimation:100];

  v13 = [(NSMutableArray *)self->_validAudiograms objectAtIndexedSubscript:self->_selectedIndex];

  [(HMHearingAidAudiogramViewController *)self setSelectedSample:v13];
  v14 = *MEMORY[0x277D85DE8];
}

- (id)getAudiogramSummary:(id)summary
{
  [summary diagnostic];

  return HKLocalizedStringForHearingLevelClassification();
}

- (id)getHearingLossLevel:(unint64_t)level
{
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = v4;
  if (level - 1 > 4)
  {
    v6 = @"Unavailable";
  }

  else
  {
    v6 = off_2796F1D10[level - 1];
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_28643BDD8 table:0];

  return v7;
}

- (id)invalidAudiogramFooterLabel
{
  invalidAudiogramFooterLabel = self->_invalidAudiogramFooterLabel;
  if (invalidAudiogramFooterLabel)
  {
    v3 = invalidAudiogramFooterLabel;
  }

  else
  {
    v5 = objc_alloc(MEMORY[0x277D756B8]);
    v3 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [(UILabel *)v3 setNumberOfLines:0];
    [(UILabel *)v3 setLineBreakMode:0];
    v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
    [(UILabel *)v3 setFont:v6];

    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v3 setTextColor:secondaryLabelColor];

    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [(UILabel *)v3 setBackgroundColor:systemBackgroundColor];

    v9 = MEMORY[0x277CCACA8];
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"%lu other test results were not recent enough or did not have enough data to be used for set up." value:&stru_28643BDD8 table:0];
    v12 = [v9 localizedStringWithFormat:v11, -[NSMutableArray count](self->_invalidAudiograms, "count")];
    [(UILabel *)v3 setText:v12];

    objc_storeStrong(&self->_invalidAudiogramFooterLabel, v3);
  }

  return v3;
}

- (void)insertAudiogram:(id)audiogram
{
  audiogramCopy = audiogram;
  v5 = isAudiogramValid(audiogramCopy);
  v6 = &OBJC_IVAR___HMHearingAidAudiogramViewController__invalidAudiograms;
  if (v5)
  {
    v6 = &OBJC_IVAR___HMHearingAidAudiogramViewController__validAudiograms;
  }

  v7 = *(&self->super.super.super.super.super.isa + *v6);
  [v7 addObject:audiogramCopy];

  [(UITableView *)self->_tableView reloadData];

  [(HMHearingAidAudiogramViewController *)self _updateTableFooter];
}

- (id)_tableFooterView
{
  if ([(NSMutableArray *)self->_invalidAudiograms count])
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"%lu other test results were not recent enough or did not have enough data to be used for set up." value:&stru_28643BDD8 table:0];
    invalidAudiogramFooterLabel2 = [v3 localizedStringWithFormat:v5, -[NSMutableArray count](self->_invalidAudiograms, "count")];

    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:invalidAudiogramFooterLabel2 value:&stru_28643BDD8 table:0];
    invalidAudiogramFooterLabel = [(HMHearingAidAudiogramViewController *)self invalidAudiogramFooterLabel];
    [invalidAudiogramFooterLabel setText:v8];
  }

  else
  {
    invalidAudiogramFooterLabel2 = [(HMHearingAidAudiogramViewController *)self invalidAudiogramFooterLabel];
    [invalidAudiogramFooterLabel2 setText:&stru_28643BDD8];
  }

  footerView = self->_footerView;
  if (!footerView)
  {
    invalidAudiogramFooterLabel3 = [(HMHearingAidAudiogramViewController *)self invalidAudiogramFooterLabel];
    [(UITableView *)self->_tableView bounds];
    v13 = v12;
    LODWORD(v12) = 1112014848;
    LODWORD(v14) = 1148846080;
    [invalidAudiogramFooterLabel3 systemLayoutSizeFittingSize:v13 withHorizontalFittingPriority:0.0 verticalFittingPriority:{v12, v14}];
    [invalidAudiogramFooterLabel3 setFrame:{0.0, 0.0, v15, v16}];
    v17 = [(HMHearingAidAudiogramViewController *)self _tableFooterViewWith:invalidAudiogramFooterLabel3];
    v18 = self->_footerView;
    self->_footerView = v17;

    footerView = self->_footerView;
  }

  return footerView;
}

- (void)_updateTableFooter
{
  _tableFooterView = [(HMHearingAidAudiogramViewController *)self _tableFooterView];
  [_tableFooterView layoutSubviews];

  tableView = self->_tableView;
  _tableFooterView2 = [(HMHearingAidAudiogramViewController *)self _tableFooterView];
  [(UITableView *)tableView setTableFooterView:_tableFooterView2];
}

- (HMHearingAidEnrollmentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (_TtP21HearingModeSettingsUI25HearingFlowControllerType_)flowController
{
  selfCopy = self;
  v3 = HMHearingAidAudiogramViewController.flowController.getter();

  return v3;
}

- (void)setFlowController:(id)controller
{
  swift_beginAccess();
  swift_unknownObjectRetain();
  selfCopy = self;
  objc_setAssociatedObject(selfCopy, &unk_27F4C93E8, controller, 1);
  swift_endAccess();
  swift_unknownObjectRelease();
}

- (id)addAudiogramViewController
{
  v3 = objc_allocWithZone(MEMORY[0x277CEFE90]);
  selfCopy = self;
  initWithDelegate_ = [v3 initWithDelegate_];
  [initWithDelegate_ setAnalyticsClient_];

  return initWithDelegate_;
}

- (id)_tableFooterViewWith:(id)with
{
  withCopy = with;
  selfCopy = self;
  HMHearingAidAudiogramViewController._tableFooterView(with:)(v6, withCopy);
  v8 = v7;

  return v8;
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = HMHearingAidAudiogramViewController;
  selfCopy = self;
  changeCopy = change;
  [(HMHearingAidAudiogramViewController *)&v8 traitCollectionDidChange:changeCopy];
  v6 = [(HMHearingAidAudiogramViewController *)selfCopy view:v8.receiver];
  if (v6)
  {
    v7 = v6;
    [v6 layoutIfNeeded];
  }

  else
  {
    __break(1u);
  }
}

- (void)addDeviceLisenters
{
  selfCopy = self;
  HMHearingAidAudiogramViewController.addDeviceLisenters()();
}

- (void)mainButtonTapped
{
  selfCopy = self;
  sub_251FD8E6C();
}

- (void)refreshAudiogramList
{
  sub_252003F10();
  v2 = sub_252003EF0();
  v3 = sub_252003F00();

  v5[4] = sub_251FD9324;
  v5[5] = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_251FD9520;
  v5[3] = &block_descriptor_8;
  v4 = _Block_copy(v5);
  [v3 triggerFetchAudiogramsWithCompletion_];
  _Block_release(v4);
}

- (void)setAGListResult
{
  selfCopy = self;
  sub_252003D50();
  sub_251FD9100();
}

@end