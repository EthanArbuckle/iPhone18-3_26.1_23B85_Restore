@interface HRQuestionSelectionView
- (HRQuestionSelectionView)init;
- (HRQuestionSelectionViewDelegate)delegate;
- (id)_checkmarkedCircleImageView;
- (id)_circleImageView;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (void)layoutSubviews;
- (void)reloadOptions;
- (void)setQuestionText:(id)text;
- (void)setSelectedIndex:(int64_t)index;
- (void)setUpConstraints;
- (void)setUpTableView;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation HRQuestionSelectionView

- (HRQuestionSelectionView)init
{
  v5.receiver = self;
  v5.super_class = HRQuestionSelectionView;
  v2 = [(HRQuestionSelectionView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(HRQuestionSelectionView *)v2 setSelectedIndex:-1];
    [(HRQuestionSelectionView *)v3 setUpTableView];
    [(HRQuestionSelectionView *)v3 setUpConstraints];
  }

  return v3;
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = HRQuestionSelectionView;
  [(HRQuestionSelectionView *)&v7 layoutSubviews];
  tableView = [(HRQuestionSelectionView *)self tableView];
  [tableView contentSize];
  v5 = v4;
  tableViewHeightConstraint = [(HRQuestionSelectionView *)self tableViewHeightConstraint];
  [tableViewHeightConstraint setConstant:v5];
}

- (void)setUpTableView
{
  v3 = objc_alloc(MEMORY[0x277D75B40]);
  v4 = [v3 initWithFrame:2 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(HRQuestionSelectionView *)self setTableView:v4];

  tableView = [(HRQuestionSelectionView *)self tableView];
  [tableView setScrollEnabled:0];

  tableView2 = [(HRQuestionSelectionView *)self tableView];
  [tableView2 setDelegate:self];

  tableView3 = [(HRQuestionSelectionView *)self tableView];
  [tableView3 setDataSource:self];

  tableView4 = [(HRQuestionSelectionView *)self tableView];
  [tableView4 registerClass:objc_opt_class() forCellReuseIdentifier:@"Cell"];

  clearColor = [MEMORY[0x277D75348] clearColor];
  [(HRQuestionSelectionView *)self setBackgroundColor:clearColor];

  clearColor2 = [MEMORY[0x277D75348] clearColor];
  tableView5 = [(HRQuestionSelectionView *)self tableView];
  [tableView5 setBackgroundColor:clearColor2];

  tableView6 = [(HRQuestionSelectionView *)self tableView];
  [(HRQuestionSelectionView *)self addSubview:tableView6];
}

- (void)reloadOptions
{
  tableView = [(HRQuestionSelectionView *)self tableView];
  [tableView reloadData];
}

- (void)setUpConstraints
{
  v26[4] = *MEMORY[0x277D85DE8];
  tableView = [(HRQuestionSelectionView *)self tableView];
  [tableView setTranslatesAutoresizingMaskIntoConstraints:0];

  tableView2 = [(HRQuestionSelectionView *)self tableView];
  heightAnchor = [tableView2 heightAnchor];
  v6 = [heightAnchor constraintEqualToConstant:1.0];
  [(HRQuestionSelectionView *)self setTableViewHeightConstraint:v6];

  tableViewHeightConstraint = [(HRQuestionSelectionView *)self tableViewHeightConstraint];
  [tableViewHeightConstraint setActive:1];

  v18 = MEMORY[0x277CCAAD0];
  tableView3 = [(HRQuestionSelectionView *)self tableView];
  topAnchor = [tableView3 topAnchor];
  topAnchor2 = [(HRQuestionSelectionView *)self topAnchor];
  v22 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v26[0] = v22;
  tableView4 = [(HRQuestionSelectionView *)self tableView];
  leadingAnchor = [tableView4 leadingAnchor];
  leadingAnchor2 = [(HRQuestionSelectionView *)self leadingAnchor];
  v8 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v26[1] = v8;
  tableView5 = [(HRQuestionSelectionView *)self tableView];
  trailingAnchor = [tableView5 trailingAnchor];
  trailingAnchor2 = [(HRQuestionSelectionView *)self trailingAnchor];
  v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v26[2] = v12;
  tableView6 = [(HRQuestionSelectionView *)self tableView];
  bottomAnchor = [tableView6 bottomAnchor];
  bottomAnchor2 = [(HRQuestionSelectionView *)self bottomAnchor];
  v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v26[3] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:4];
  [v18 activateConstraints:v17];
}

- (void)setQuestionText:(id)text
{
  objc_storeStrong(&self->_questionText, text);

  [(HRQuestionSelectionView *)self reloadOptions];
}

- (void)setSelectedIndex:(int64_t)index
{
  self->_selectedIndex = index;
  [(HRQuestionSelectionView *)self reloadOptions];
  delegate = [(HRQuestionSelectionView *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(HRQuestionSelectionView *)self delegate];
    [delegate2 optionSelectorView:self didSelectOptionAtIndex:index];
  }
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  v34[4] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D756B8];
  viewCopy = view;
  v7 = objc_alloc_init(v5);
  [v7 setText:self->_questionText];
  v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
  [v7 setFont:v8];

  labelColor = [MEMORY[0x277D75348] labelColor];
  [v7 setTextColor:labelColor];

  [v7 setNumberOfLines:0];
  [v7 setLineBreakMode:0];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v10 addSubview:v7];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  [viewCopy bounds];
  v12 = v11;

  widthAnchor = [v10 widthAnchor];
  v14 = [widthAnchor constraintEqualToConstant:v12];
  [v14 setActive:1];

  [(HRQuestionSelectionView *)self hk_onboardingEdgeInsets];
  v16 = v15;
  v18 = v17;
  [v10 setLayoutMargins:?];
  v28 = MEMORY[0x277CCAAD0];
  topAnchor = [v7 topAnchor];
  topAnchor2 = [v10 topAnchor];
  v31 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v34[0] = v31;
  bottomAnchor = [v7 bottomAnchor];
  bottomAnchor2 = [v10 bottomAnchor];
  v19 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-10.0];
  v34[1] = v19;
  leadingAnchor = [v7 leadingAnchor];
  leadingAnchor2 = [v10 leadingAnchor];
  v22 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v16];
  v34[2] = v22;
  trailingAnchor = [v7 trailingAnchor];
  trailingAnchor2 = [v10 trailingAnchor];
  v25 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v18];
  v34[3] = v25;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:4];
  [v28 activateConstraints:v26];

  return v10;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:pathCopy];
  v8 = [pathCopy row];
  v9 = HRHeartRhythmUIFrameworkBundle();
  v10 = v9;
  if (v8)
  {
    v11 = @"ATRIAL_FIBRILLATION_DETECTION_ONBOARDING_GATE_DIAGNOSIS_NO";
  }

  else
  {
    v11 = @"ATRIAL_FIBRILLATION_DETECTION_ONBOARDING_GATE_DIAGNOSIS_YES";
  }

  v12 = [v9 localizedStringForKey:v11 value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];
  textLabel = [v7 textLabel];
  [textLabel setText:v12];

  v14 = [pathCopy row];
  if (v14 == [(HRQuestionSelectionView *)self selectedIndex])
  {
    [(HRQuestionSelectionView *)self _checkmarkedCircleImageView];
  }

  else
  {
    [(HRQuestionSelectionView *)self _circleImageView];
  }
  v15 = ;
  [v7 setAccessoryView:v15];

  [(HRQuestionSelectionView *)self hk_onboardingListEdgeInsets];
  [v7 setLayoutMargins:?];
  secondarySystemBackgroundColor = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
  [v7 setBackgroundColor:secondarySystemBackgroundColor];

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  -[HRQuestionSelectionView setSelectedIndex:](self, "setSelectedIndex:", [pathCopy row]);
  [viewCopy reloadData];

  delegate = [(HRQuestionSelectionView *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(HRQuestionSelectionView *)self delegate];
    [delegate2 optionSelectorView:self didSelectOptionAtIndex:{objc_msgSend(pathCopy, "row")}];
  }
}

- (id)_circleImageView
{
  v2 = objc_alloc_init(MEMORY[0x277D755E8]);
  v3 = MEMORY[0x277D755D0];
  systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  v5 = [v3 configurationWithHierarchicalColor:systemGrayColor];

  v6 = [MEMORY[0x277D755B8] systemImageNamed:@"circle" withConfiguration:v5];
  [v2 setImage:v6];

  v7 = MEMORY[0x277D755D0];
  v8 = [MEMORY[0x277D74300] hk_preferredFontForTextStyle:*MEMORY[0x277D76918]];
  v9 = [v7 configurationWithFont:v8];
  [v2 setPreferredSymbolConfiguration:v9];

  [v2 setAdjustsImageSizeForAccessibilityContentSizeCategory:1];

  return v2;
}

- (id)_checkmarkedCircleImageView
{
  v13[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D755D0];
  systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
  v13[0] = systemWhiteColor;
  systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  v13[1] = systemBlueColor;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v6 = [v2 configurationWithPaletteColors:v5];

  v7 = objc_alloc_init(MEMORY[0x277D755E8]);
  v8 = [MEMORY[0x277D755B8] systemImageNamed:@"checkmark.circle.fill" withConfiguration:v6];
  [v7 setImage:v8];

  v9 = MEMORY[0x277D755D0];
  v10 = [MEMORY[0x277D74300] hk_preferredFontForTextStyle:*MEMORY[0x277D76918]];
  v11 = [v9 configurationWithFont:v10];
  [v7 setPreferredSymbolConfiguration:v11];

  [v7 setAdjustsImageSizeForAccessibilityContentSizeCategory:1];

  return v7;
}

- (HRQuestionSelectionViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end