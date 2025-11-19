@interface WDBuddyFlowContinueFooterView
- (WDBuddyFlowContinueFooterView)initWithTarget:(id)a3 action:(SEL)a4 bottomInset:(double)a5 width:(double)a6 isLastScreen:(BOOL)a7;
- (void)_updateForCurrentSizeCategory;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation WDBuddyFlowContinueFooterView

- (WDBuddyFlowContinueFooterView)initWithTarget:(id)a3 action:(SEL)a4 bottomInset:(double)a5 width:(double)a6 isLastScreen:(BOOL)a7
{
  v7 = a7;
  v41[3] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v40.receiver = self;
  v40.super_class = WDBuddyFlowContinueFooterView;
  v13 = [(WDBuddyFlowContinueFooterView *)&v40 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v13)
  {
    v14 = WDBundle();
    v15 = v14;
    if (v7)
    {
      v16 = @"DONE";
    }

    else
    {
      v16 = @"NEXT";
    }

    v17 = [v14 localizedStringForKey:v16 value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
    objc_storeStrong(&v13->_buttonText, v17);

    v18 = [MEMORY[0x277D37618] boldButton];
    continueTrayButton = v13->_continueTrayButton;
    v13->_continueTrayButton = v18;

    [(OBBoldTrayButton *)v13->_continueTrayButton addTarget:v12 action:a4 forControlEvents:64];
    [(OBBoldTrayButton *)v13->_continueTrayButton setTitle:v13->_buttonText forState:0];
    [(WDBuddyFlowContinueFooterView *)v13 addSubview:v13->_continueTrayButton];
    [(UIButton *)v13->_continueButton setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v20) = 1148846080;
    [(UIButton *)v13->_continueButton setContentCompressionResistancePriority:1 forAxis:v20];
    [(WDBuddyFlowContinueFooterView *)v13 hk_onboardingDirectionalEdgeInsets];
    v22 = v21;
    v24 = v23;
    v25 = [(OBBoldTrayButton *)v13->_continueTrayButton leadingAnchor];
    v26 = [(WDBuddyFlowContinueFooterView *)v13 leadingAnchor];
    v27 = [v25 constraintEqualToAnchor:v26 constant:v22];
    continueTrayButtonLeadingConstraint = v13->_continueTrayButtonLeadingConstraint;
    v13->_continueTrayButtonLeadingConstraint = v27;

    v29 = [(OBBoldTrayButton *)v13->_continueTrayButton trailingAnchor];
    v30 = [(WDBuddyFlowContinueFooterView *)v13 trailingAnchor];
    v31 = [v29 constraintEqualToAnchor:v30 constant:-v24];
    continueTrayButtonTrailingConstraint = v13->_continueTrayButtonTrailingConstraint;
    v13->_continueTrayButtonTrailingConstraint = v31;

    v33 = MEMORY[0x277CCAAD0];
    v34 = [(OBBoldTrayButton *)v13->_continueTrayButton topAnchor];
    v35 = [(WDBuddyFlowContinueFooterView *)v13 topAnchor];
    v36 = [v34 constraintEqualToAnchor:v35];
    v41[0] = v36;
    v41[1] = v13->_continueTrayButtonLeadingConstraint;
    v41[2] = v13->_continueTrayButtonTrailingConstraint;
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:3];
    [v33 activateConstraints:v37];

    v13->_bottomInset = a5;
    v13->_width = a6;
    [(WDBuddyFlowContinueFooterView *)v13 _updateForCurrentSizeCategory];
  }

  v38 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = WDBuddyFlowContinueFooterView;
  [(WDBuddyFlowContinueFooterView *)&v6 layoutSubviews];
  [(WDBuddyFlowContinueFooterView *)self hk_onboardingDirectionalEdgeInsets];
  v4 = v3;
  [(NSLayoutConstraint *)self->_continueTrayButtonLeadingConstraint setConstant:v5];
  [(NSLayoutConstraint *)self->_continueTrayButtonTrailingConstraint setConstant:-v4];
}

- (void)_updateForCurrentSizeCategory
{
  v6 = [MEMORY[0x277D74300] hk_preferredFontForTextStyle:*MEMORY[0x277D76A28]];
  [v6 _scaledValueForValue:44.0];
  v4 = v3;
  [v6 _scaledValueForValue:self->_bottomInset];
  [(WDBuddyFlowContinueFooterView *)self setFrame:0.0, 0.0, self->_width, v4 + v5];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = WDBuddyFlowContinueFooterView;
  [(WDBuddyFlowContinueFooterView *)&v9 traitCollectionDidChange:v4];
  if (v4)
  {
    v5 = [(WDBuddyFlowContinueFooterView *)self traitCollection];
    v6 = [v5 preferredContentSizeCategory];
    v7 = [v4 preferredContentSizeCategory];
    v8 = [v6 isEqualToString:v7];

    if ((v8 & 1) == 0)
    {
      [(WDBuddyFlowContinueFooterView *)self _updateForCurrentSizeCategory];
    }
  }
}

@end