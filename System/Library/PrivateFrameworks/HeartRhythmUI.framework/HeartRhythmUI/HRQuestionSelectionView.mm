@interface HRQuestionSelectionView
- (HRQuestionSelectionView)init;
- (HRQuestionSelectionViewDelegate)delegate;
- (id)_checkmarkedCircleImageView;
- (id)_circleImageView;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (void)layoutSubviews;
- (void)reloadOptions;
- (void)setQuestionText:(id)a3;
- (void)setSelectedIndex:(int64_t)a3;
- (void)setUpConstraints;
- (void)setUpTableView;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
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
  v3 = [(HRQuestionSelectionView *)self tableView];
  [v3 contentSize];
  v5 = v4;
  v6 = [(HRQuestionSelectionView *)self tableViewHeightConstraint];
  [v6 setConstant:v5];
}

- (void)setUpTableView
{
  v3 = objc_alloc(MEMORY[0x277D75B40]);
  v4 = [v3 initWithFrame:2 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(HRQuestionSelectionView *)self setTableView:v4];

  v5 = [(HRQuestionSelectionView *)self tableView];
  [v5 setScrollEnabled:0];

  v6 = [(HRQuestionSelectionView *)self tableView];
  [v6 setDelegate:self];

  v7 = [(HRQuestionSelectionView *)self tableView];
  [v7 setDataSource:self];

  v8 = [(HRQuestionSelectionView *)self tableView];
  [v8 registerClass:objc_opt_class() forCellReuseIdentifier:@"Cell"];

  v9 = [MEMORY[0x277D75348] clearColor];
  [(HRQuestionSelectionView *)self setBackgroundColor:v9];

  v10 = [MEMORY[0x277D75348] clearColor];
  v11 = [(HRQuestionSelectionView *)self tableView];
  [v11 setBackgroundColor:v10];

  v12 = [(HRQuestionSelectionView *)self tableView];
  [(HRQuestionSelectionView *)self addSubview:v12];
}

- (void)reloadOptions
{
  v2 = [(HRQuestionSelectionView *)self tableView];
  [v2 reloadData];
}

- (void)setUpConstraints
{
  v26[4] = *MEMORY[0x277D85DE8];
  v3 = [(HRQuestionSelectionView *)self tableView];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = [(HRQuestionSelectionView *)self tableView];
  v5 = [v4 heightAnchor];
  v6 = [v5 constraintEqualToConstant:1.0];
  [(HRQuestionSelectionView *)self setTableViewHeightConstraint:v6];

  v7 = [(HRQuestionSelectionView *)self tableViewHeightConstraint];
  [v7 setActive:1];

  v18 = MEMORY[0x277CCAAD0];
  v25 = [(HRQuestionSelectionView *)self tableView];
  v24 = [v25 topAnchor];
  v23 = [(HRQuestionSelectionView *)self topAnchor];
  v22 = [v24 constraintEqualToAnchor:v23];
  v26[0] = v22;
  v21 = [(HRQuestionSelectionView *)self tableView];
  v20 = [v21 leadingAnchor];
  v19 = [(HRQuestionSelectionView *)self leadingAnchor];
  v8 = [v20 constraintEqualToAnchor:v19];
  v26[1] = v8;
  v9 = [(HRQuestionSelectionView *)self tableView];
  v10 = [v9 trailingAnchor];
  v11 = [(HRQuestionSelectionView *)self trailingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  v26[2] = v12;
  v13 = [(HRQuestionSelectionView *)self tableView];
  v14 = [v13 bottomAnchor];
  v15 = [(HRQuestionSelectionView *)self bottomAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];
  v26[3] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:4];
  [v18 activateConstraints:v17];
}

- (void)setQuestionText:(id)a3
{
  objc_storeStrong(&self->_questionText, a3);

  [(HRQuestionSelectionView *)self reloadOptions];
}

- (void)setSelectedIndex:(int64_t)a3
{
  self->_selectedIndex = a3;
  [(HRQuestionSelectionView *)self reloadOptions];
  v5 = [(HRQuestionSelectionView *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(HRQuestionSelectionView *)self delegate];
    [v7 optionSelectorView:self didSelectOptionAtIndex:a3];
  }
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v34[4] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D756B8];
  v6 = a3;
  v7 = objc_alloc_init(v5);
  [v7 setText:self->_questionText];
  v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
  [v7 setFont:v8];

  v9 = [MEMORY[0x277D75348] labelColor];
  [v7 setTextColor:v9];

  [v7 setNumberOfLines:0];
  [v7 setLineBreakMode:0];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v10 addSubview:v7];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 bounds];
  v12 = v11;

  v13 = [v10 widthAnchor];
  v14 = [v13 constraintEqualToConstant:v12];
  [v14 setActive:1];

  [(HRQuestionSelectionView *)self hk_onboardingEdgeInsets];
  v16 = v15;
  v18 = v17;
  [v10 setLayoutMargins:?];
  v28 = MEMORY[0x277CCAAD0];
  v33 = [v7 topAnchor];
  v32 = [v10 topAnchor];
  v31 = [v33 constraintEqualToAnchor:v32];
  v34[0] = v31;
  v30 = [v7 bottomAnchor];
  v29 = [v10 bottomAnchor];
  v19 = [v30 constraintEqualToAnchor:v29 constant:-10.0];
  v34[1] = v19;
  v20 = [v7 leadingAnchor];
  v21 = [v10 leadingAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:v16];
  v34[2] = v22;
  v23 = [v7 trailingAnchor];
  v24 = [v10 trailingAnchor];
  v25 = [v23 constraintEqualToAnchor:v24 constant:-v18];
  v34[3] = v25;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:4];
  [v28 activateConstraints:v26];

  return v10;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:v6];
  v8 = [v6 row];
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
  v13 = [v7 textLabel];
  [v13 setText:v12];

  v14 = [v6 row];
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
  v16 = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
  [v7 setBackgroundColor:v16];

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v10 = a4;
  v6 = a3;
  -[HRQuestionSelectionView setSelectedIndex:](self, "setSelectedIndex:", [v10 row]);
  [v6 reloadData];

  v7 = [(HRQuestionSelectionView *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(HRQuestionSelectionView *)self delegate];
    [v9 optionSelectorView:self didSelectOptionAtIndex:{objc_msgSend(v10, "row")}];
  }
}

- (id)_circleImageView
{
  v2 = objc_alloc_init(MEMORY[0x277D755E8]);
  v3 = MEMORY[0x277D755D0];
  v4 = [MEMORY[0x277D75348] systemGrayColor];
  v5 = [v3 configurationWithHierarchicalColor:v4];

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
  v3 = [MEMORY[0x277D75348] systemWhiteColor];
  v13[0] = v3;
  v4 = [MEMORY[0x277D75348] systemBlueColor];
  v13[1] = v4;
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