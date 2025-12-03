@interface WDBuddyFlowContinueFooterView
- (WDBuddyFlowContinueFooterView)initWithTarget:(id)target action:(SEL)action bottomInset:(double)inset width:(double)width isLastScreen:(BOOL)screen;
- (void)_updateForCurrentSizeCategory;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation WDBuddyFlowContinueFooterView

- (WDBuddyFlowContinueFooterView)initWithTarget:(id)target action:(SEL)action bottomInset:(double)inset width:(double)width isLastScreen:(BOOL)screen
{
  screenCopy = screen;
  v41[3] = *MEMORY[0x277D85DE8];
  targetCopy = target;
  v40.receiver = self;
  v40.super_class = WDBuddyFlowContinueFooterView;
  v13 = [(WDBuddyFlowContinueFooterView *)&v40 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v13)
  {
    v14 = WDBundle();
    v15 = v14;
    if (screenCopy)
    {
      v16 = @"DONE";
    }

    else
    {
      v16 = @"NEXT";
    }

    v17 = [v14 localizedStringForKey:v16 value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
    objc_storeStrong(&v13->_buttonText, v17);

    boldButton = [MEMORY[0x277D37618] boldButton];
    continueTrayButton = v13->_continueTrayButton;
    v13->_continueTrayButton = boldButton;

    [(OBBoldTrayButton *)v13->_continueTrayButton addTarget:targetCopy action:action forControlEvents:64];
    [(OBBoldTrayButton *)v13->_continueTrayButton setTitle:v13->_buttonText forState:0];
    [(WDBuddyFlowContinueFooterView *)v13 addSubview:v13->_continueTrayButton];
    [(UIButton *)v13->_continueButton setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v20) = 1148846080;
    [(UIButton *)v13->_continueButton setContentCompressionResistancePriority:1 forAxis:v20];
    [(WDBuddyFlowContinueFooterView *)v13 hk_onboardingDirectionalEdgeInsets];
    v22 = v21;
    v24 = v23;
    leadingAnchor = [(OBBoldTrayButton *)v13->_continueTrayButton leadingAnchor];
    leadingAnchor2 = [(WDBuddyFlowContinueFooterView *)v13 leadingAnchor];
    v27 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v22];
    continueTrayButtonLeadingConstraint = v13->_continueTrayButtonLeadingConstraint;
    v13->_continueTrayButtonLeadingConstraint = v27;

    trailingAnchor = [(OBBoldTrayButton *)v13->_continueTrayButton trailingAnchor];
    trailingAnchor2 = [(WDBuddyFlowContinueFooterView *)v13 trailingAnchor];
    v31 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v24];
    continueTrayButtonTrailingConstraint = v13->_continueTrayButtonTrailingConstraint;
    v13->_continueTrayButtonTrailingConstraint = v31;

    v33 = MEMORY[0x277CCAAD0];
    topAnchor = [(OBBoldTrayButton *)v13->_continueTrayButton topAnchor];
    topAnchor2 = [(WDBuddyFlowContinueFooterView *)v13 topAnchor];
    v36 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v41[0] = v36;
    v41[1] = v13->_continueTrayButtonLeadingConstraint;
    v41[2] = v13->_continueTrayButtonTrailingConstraint;
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:3];
    [v33 activateConstraints:v37];

    v13->_bottomInset = inset;
    v13->_width = width;
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

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = WDBuddyFlowContinueFooterView;
  [(WDBuddyFlowContinueFooterView *)&v9 traitCollectionDidChange:changeCopy];
  if (changeCopy)
  {
    traitCollection = [(WDBuddyFlowContinueFooterView *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];
    v8 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

    if ((v8 & 1) == 0)
    {
      [(WDBuddyFlowContinueFooterView *)self _updateForCurrentSizeCategory];
    }
  }
}

@end