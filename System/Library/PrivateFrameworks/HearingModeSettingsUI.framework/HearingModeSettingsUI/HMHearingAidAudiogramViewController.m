@interface HMHearingAidAudiogramViewController
- (HMHearingAidAudiogramViewController)init;
- (HMHearingAidEnrollmentDelegate)delegate;
- (_TtP21HearingModeSettingsUI25HearingFlowControllerType_)flowController;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)_tableFooterView;
- (id)_tableFooterViewWith:(id)a3;
- (id)addAudiogramViewController;
- (id)getAudiogramSummary:(id)a3;
- (id)getHearingLossLevel:(unint64_t)a3;
- (id)invalidAudiogramFooterLabel;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (void)_updateTableFooter;
- (void)addDeviceLisenters;
- (void)insertAudiogram:(id)a3;
- (void)linkButtonTapped;
- (void)mainButtonTapped;
- (void)refreshAudiogramList;
- (void)retrieveAndShowAudiograms;
- (void)setAGListResult;
- (void)setFlowController:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
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
  v3 = [(OBBaseWelcomeController *)self navigationItem];
  [v3 setRightBarButtonItem:0];

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
  v5 = [(HMHearingAidAudiogramViewController *)self contentHeightConstraint];
  [v5 setConstant:v4];
}

- (void)retrieveAndShowAudiograms
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = [(HMHearingAidAudiogramViewController *)self validAudiograms];
  v4 = [v3 mutableCopy];
  validAudiograms = self->_validAudiograms;
  self->_validAudiograms = v4;

  v6 = [(HMHearingAidAudiogramViewController *)self invalidAudiograms];
  v7 = [v6 mutableCopy];
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
  v3 = [(HMHearingAidAudiogramViewController *)self contentView];
  [v3 addSubview:self->_tableView];

  [(UITableView *)self->_tableView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UITableView *)self->_tableView setSeparatorStyle:1];
  v4 = [MEMORY[0x277D75348] systemBackgroundColor];
  [(UITableView *)self->_tableView setSeparatorColor:v4];

  [(UITableView *)self->_tableView setSectionHeaderTopPadding:0.0];
  v5 = [(HMHearingAidAudiogramViewController *)self contentView];
  v6 = [v5 heightAnchor];
  v7 = [v6 constraintEqualToConstant:400.0];
  [(HMHearingAidAudiogramViewController *)self setContentHeightConstraint:v7];

  v20 = MEMORY[0x277CCAAD0];
  v27 = [(HMHearingAidAudiogramViewController *)self contentHeightConstraint];
  v28[0] = v27;
  v25 = [(UITableView *)self->_tableView topAnchor];
  v26 = [(HMHearingAidAudiogramViewController *)self contentView];
  v24 = [v26 topAnchor];
  v23 = [v25 constraintEqualToAnchor:v24];
  v28[1] = v23;
  v21 = [(UITableView *)self->_tableView bottomAnchor];
  v22 = [(HMHearingAidAudiogramViewController *)self contentView];
  v19 = [v22 bottomAnchor];
  v8 = [v21 constraintEqualToAnchor:v19];
  v28[2] = v8;
  v9 = [(UITableView *)self->_tableView leadingAnchor];
  v10 = [(HMHearingAidAudiogramViewController *)self contentView];
  v11 = [v10 leadingAnchor];
  v12 = [v9 constraintEqualToAnchor:v11];
  v28[3] = v12;
  v13 = [(UITableView *)self->_tableView trailingAnchor];
  v14 = [(HMHearingAidAudiogramViewController *)self contentView];
  v15 = [v14 trailingAnchor];
  v16 = [v13 constraintEqualToAnchor:v15];
  v28[4] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:5];
  [v20 activateConstraints:v17];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)updateButtonTray
{
  v3 = [MEMORY[0x277D37618] boldButton];
  boldButton = self->_boldButton;
  self->_boldButton = v3;

  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v5 localizedStringForKey:@"Next" value:&stru_28643BDD8 table:0];

  [(OBTrayButton *)self->_boldButton setTitle:v11 forState:0];
  [(OBTrayButton *)self->_boldButton addTarget:self action:sel_mainButtonTapped forControlEvents:64];
  [(OBTrayButton *)self->_boldButton setEnabled:0];
  v6 = [(HMHearingAidAudiogramViewController *)self buttonTray];
  [v6 addButton:self->_boldButton];

  v7 = [MEMORY[0x277D37650] linkButton];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"Cancel" value:&stru_28643BDD8 table:0];

  [v7 setTitle:v9 forState:0];
  [v7 addTarget:self action:sel_linkButtonTapped forControlEvents:64];
  v10 = [(HMHearingAidAudiogramViewController *)self buttonTray];
  [v10 addButton:v7];
}

- (void)linkButtonTapped
{
  v2 = [(HMHearingAidAudiogramViewController *)self navigationController];
  [v2 dismissViewControllerAnimated:1 completion:0];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  NSLog(&cfstr_HearingAidInde.isa, [(NSIndexPath *)v6 section], [(NSIndexPath *)v6 row]);
  v8 = [v7 dequeueReusableCellWithIdentifier:@"HMHearingAidAudiogram_Cell" forIndexPath:v6];

  v9 = [v8 textLabel];
  [v9 setNumberOfLines:0];

  v10 = [v8 layer];
  [v10 setCornerRadius:10.0];

  v11 = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
  [v8 setBackgroundColor:v11];

  [v8 setSelectionStyle:0];
  v12 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v12 setDateStyle:3];
  [v12 setTimeStyle:0];
  v13 = [MEMORY[0x277CBEAF8] currentLocale];
  [v12 setLocale:v13];

  v14 = [(NSMutableArray *)self->_validAudiograms objectAtIndexedSubscript:[(NSIndexPath *)v6 section]];
  v15 = [v14 startDate];
  v16 = [v12 stringFromDate:v15];

  v17 = [v8 textLabel];
  v18 = [v17 font];
  v19 = [v14 audiogramSelectionDescriptionWithDate:v16 font:v18];
  v20 = [v8 textLabel];
  [v20 setAttributedText:v19];

  checkedIndexPath = self->_checkedIndexPath;
  if (checkedIndexPath == v6)
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

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  if (a4)
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

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  if (a4)
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

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  result = *MEMORY[0x277D76F30];
  if (a4)
  {
    return 8.0;
  }

  return result;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  NSLog(&cfstr_HearingAidCell.isa, [(NSIndexPath *)v7 section], [(NSIndexPath *)v7 row]);
  if (self->_checkedIndexPath)
  {
    v8 = [v6 cellForRowAtIndexPath:?];
    [v8 setAccessoryType:0];
  }

  [(OBTrayButton *)self->_boldButton setEnabled:1];
  self->_selectedIndex = [(NSIndexPath *)v7 section];
  checkedIndexPath = self->_checkedIndexPath;
  self->_checkedIndexPath = v7;
  v10 = v7;

  v11 = [v6 cellForRowAtIndexPath:v10];
  v15[0] = v10;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  [v6 reloadRowsAtIndexPaths:v12 withRowAnimation:100];

  v13 = [(NSMutableArray *)self->_validAudiograms objectAtIndexedSubscript:self->_selectedIndex];

  [(HMHearingAidAudiogramViewController *)self setSelectedSample:v13];
  v14 = *MEMORY[0x277D85DE8];
}

- (id)getAudiogramSummary:(id)a3
{
  [a3 diagnostic];

  return HKLocalizedStringForHearingLevelClassification();
}

- (id)getHearingLossLevel:(unint64_t)a3
{
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = v4;
  if (a3 - 1 > 4)
  {
    v6 = @"Unavailable";
  }

  else
  {
    v6 = off_2796F1D10[a3 - 1];
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

    v7 = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v3 setTextColor:v7];

    v8 = [MEMORY[0x277D75348] systemBackgroundColor];
    [(UILabel *)v3 setBackgroundColor:v8];

    v9 = MEMORY[0x277CCACA8];
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"%lu other test results were not recent enough or did not have enough data to be used for set up." value:&stru_28643BDD8 table:0];
    v12 = [v9 localizedStringWithFormat:v11, -[NSMutableArray count](self->_invalidAudiograms, "count")];
    [(UILabel *)v3 setText:v12];

    objc_storeStrong(&self->_invalidAudiogramFooterLabel, v3);
  }

  return v3;
}

- (void)insertAudiogram:(id)a3
{
  v4 = a3;
  v5 = isAudiogramValid(v4);
  v6 = &OBJC_IVAR___HMHearingAidAudiogramViewController__invalidAudiograms;
  if (v5)
  {
    v6 = &OBJC_IVAR___HMHearingAidAudiogramViewController__validAudiograms;
  }

  v7 = *(&self->super.super.super.super.super.isa + *v6);
  [v7 addObject:v4];

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
    v6 = [v3 localizedStringWithFormat:v5, -[NSMutableArray count](self->_invalidAudiograms, "count")];

    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:v6 value:&stru_28643BDD8 table:0];
    v9 = [(HMHearingAidAudiogramViewController *)self invalidAudiogramFooterLabel];
    [v9 setText:v8];
  }

  else
  {
    v6 = [(HMHearingAidAudiogramViewController *)self invalidAudiogramFooterLabel];
    [v6 setText:&stru_28643BDD8];
  }

  footerView = self->_footerView;
  if (!footerView)
  {
    v11 = [(HMHearingAidAudiogramViewController *)self invalidAudiogramFooterLabel];
    [(UITableView *)self->_tableView bounds];
    v13 = v12;
    LODWORD(v12) = 1112014848;
    LODWORD(v14) = 1148846080;
    [v11 systemLayoutSizeFittingSize:v13 withHorizontalFittingPriority:0.0 verticalFittingPriority:{v12, v14}];
    [v11 setFrame:{0.0, 0.0, v15, v16}];
    v17 = [(HMHearingAidAudiogramViewController *)self _tableFooterViewWith:v11];
    v18 = self->_footerView;
    self->_footerView = v17;

    footerView = self->_footerView;
  }

  return footerView;
}

- (void)_updateTableFooter
{
  v3 = [(HMHearingAidAudiogramViewController *)self _tableFooterView];
  [v3 layoutSubviews];

  tableView = self->_tableView;
  v5 = [(HMHearingAidAudiogramViewController *)self _tableFooterView];
  [(UITableView *)tableView setTableFooterView:v5];
}

- (HMHearingAidEnrollmentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (_TtP21HearingModeSettingsUI25HearingFlowControllerType_)flowController
{
  v2 = self;
  v3 = HMHearingAidAudiogramViewController.flowController.getter();

  return v3;
}

- (void)setFlowController:(id)a3
{
  swift_beginAccess();
  swift_unknownObjectRetain();
  v5 = self;
  objc_setAssociatedObject(v5, &unk_27F4C93E8, a3, 1);
  swift_endAccess();
  swift_unknownObjectRelease();
}

- (id)addAudiogramViewController
{
  v3 = objc_allocWithZone(MEMORY[0x277CEFE90]);
  v4 = self;
  v5 = [v3 initWithDelegate_];
  [v5 setAnalyticsClient_];

  return v5;
}

- (id)_tableFooterViewWith:(id)a3
{
  v4 = a3;
  v5 = self;
  HMHearingAidAudiogramViewController._tableFooterView(with:)(v6, v4);
  v8 = v7;

  return v8;
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = HMHearingAidAudiogramViewController;
  v4 = self;
  v5 = a3;
  [(HMHearingAidAudiogramViewController *)&v8 traitCollectionDidChange:v5];
  v6 = [(HMHearingAidAudiogramViewController *)v4 view:v8.receiver];
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
  v2 = self;
  HMHearingAidAudiogramViewController.addDeviceLisenters()();
}

- (void)mainButtonTapped
{
  v2 = self;
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
  v2 = self;
  sub_252003D50();
  sub_251FD9100();
}

@end