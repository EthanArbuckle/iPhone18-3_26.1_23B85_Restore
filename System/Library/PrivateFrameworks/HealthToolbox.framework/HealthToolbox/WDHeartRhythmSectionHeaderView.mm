@interface WDHeartRhythmSectionHeaderView
- (NSString)titleText;
- (WDHeartRhythmSectionHeaderView)initWithReuseIdentifier:(id)identifier;
- (void)setTitleText:(id)text;
- (void)setUpUI;
- (void)traitCollectionDidChange:(id)change;
- (void)updateConstraintConstants;
@end

@implementation WDHeartRhythmSectionHeaderView

- (WDHeartRhythmSectionHeaderView)initWithReuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = WDHeartRhythmSectionHeaderView;
  v3 = [(WDHeartRhythmSectionHeaderView *)&v8 initWithReuseIdentifier:identifier];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D756B8]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v5;

    [(WDHeartRhythmSectionHeaderView *)v3 setUpUI];
  }

  return v3;
}

- (void)setUpUI
{
  v41[3] = *MEMORY[0x277D85DE8];
  titleLabel = [(WDHeartRhythmSectionHeaderView *)self titleLabel];
  [titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  titleLabel2 = [(WDHeartRhythmSectionHeaderView *)self titleLabel];
  [titleLabel2 setAdjustsFontForContentSizeCategory:1];

  titleLabel3 = [(WDHeartRhythmSectionHeaderView *)self titleLabel];
  [titleLabel3 setTextAlignment:4];

  titleLabel4 = [(WDHeartRhythmSectionHeaderView *)self titleLabel];
  [titleLabel4 setNumberOfLines:0];

  v7 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A20] addingSymbolicTraits:32770 options:0];
  v8 = [MEMORY[0x277D74300] fontWithDescriptor:v7 size:0.0];
  titleLabel5 = [(WDHeartRhythmSectionHeaderView *)self titleLabel];
  [titleLabel5 setFont:v8];

  labelColor = [MEMORY[0x277D75348] labelColor];
  titleLabel6 = [(WDHeartRhythmSectionHeaderView *)self titleLabel];
  [titleLabel6 setTextColor:labelColor];

  contentView = [(WDHeartRhythmSectionHeaderView *)self contentView];
  titleLabel7 = [(WDHeartRhythmSectionHeaderView *)self titleLabel];
  [contentView addSubview:titleLabel7];

  titleLabel8 = [(WDHeartRhythmSectionHeaderView *)self titleLabel];
  topAnchor = [titleLabel8 topAnchor];
  contentView2 = [(WDHeartRhythmSectionHeaderView *)self contentView];
  topAnchor2 = [contentView2 topAnchor];
  v18 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:12.0];
  [v18 setActive:1];

  contentView3 = [(WDHeartRhythmSectionHeaderView *)self contentView];
  bottomAnchor = [contentView3 bottomAnchor];
  titleLabel9 = [(WDHeartRhythmSectionHeaderView *)self titleLabel];
  lastBaselineAnchor = [titleLabel9 lastBaselineAnchor];
  v23 = [bottomAnchor constraintEqualToAnchor:lastBaselineAnchor];
  bottomToTitleLastBaselineConstraint = self->_bottomToTitleLastBaselineConstraint;
  self->_bottomToTitleLastBaselineConstraint = v23;

  [(WDHeartRhythmSectionHeaderView *)self updateConstraintConstants];
  titleLabel10 = [(WDHeartRhythmSectionHeaderView *)self titleLabel];
  leadingAnchor = [titleLabel10 leadingAnchor];
  contentView4 = [(WDHeartRhythmSectionHeaderView *)self contentView];
  layoutMarginsGuide = [contentView4 layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v30 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];

  titleLabel11 = [(WDHeartRhythmSectionHeaderView *)self titleLabel];
  trailingAnchor = [titleLabel11 trailingAnchor];
  contentView5 = [(WDHeartRhythmSectionHeaderView *)self contentView];
  layoutMarginsGuide2 = [contentView5 layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
  v36 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];

  v37 = self->_bottomToTitleLastBaselineConstraint;
  v38 = MEMORY[0x277CCAAD0];
  v41[0] = v37;
  v41[1] = v30;
  v41[2] = v36;
  v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:3];
  [v38 activateConstraints:v39];

  v40 = *MEMORY[0x277D85DE8];
}

- (void)updateConstraintConstants
{
  v3 = objc_alloc(MEMORY[0x277D75520]);
  v7 = [v3 initForTextStyle:*MEMORY[0x277D76A20]];
  [v7 scaledValueForValue:12.0];
  v5 = v4;
  bottomToTitleLastBaselineConstraint = [(WDHeartRhythmSectionHeaderView *)self bottomToTitleLastBaselineConstraint];
  [bottomToTitleLastBaselineConstraint setConstant:v5];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  if (!changeCopy)
  {
    goto LABEL_3;
  }

  traitCollection = [(WDHeartRhythmSectionHeaderView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];
  v7 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

  if ((v7 & 1) == 0)
  {
LABEL_3:
    [(WDHeartRhythmSectionHeaderView *)self updateConstraintConstants];
  }
}

- (void)setTitleText:(id)text
{
  textCopy = text;
  titleLabel = [(WDHeartRhythmSectionHeaderView *)self titleLabel];
  [titleLabel setText:textCopy];
}

- (NSString)titleText
{
  titleLabel = [(WDHeartRhythmSectionHeaderView *)self titleLabel];
  text = [titleLabel text];

  return text;
}

@end