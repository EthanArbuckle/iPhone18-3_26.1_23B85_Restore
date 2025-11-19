@interface WDHeartRhythmSectionHeaderView
- (NSString)titleText;
- (WDHeartRhythmSectionHeaderView)initWithReuseIdentifier:(id)a3;
- (void)setTitleText:(id)a3;
- (void)setUpUI;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateConstraintConstants;
@end

@implementation WDHeartRhythmSectionHeaderView

- (WDHeartRhythmSectionHeaderView)initWithReuseIdentifier:(id)a3
{
  v8.receiver = self;
  v8.super_class = WDHeartRhythmSectionHeaderView;
  v3 = [(WDHeartRhythmSectionHeaderView *)&v8 initWithReuseIdentifier:a3];
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
  v3 = [(WDHeartRhythmSectionHeaderView *)self titleLabel];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = [(WDHeartRhythmSectionHeaderView *)self titleLabel];
  [v4 setAdjustsFontForContentSizeCategory:1];

  v5 = [(WDHeartRhythmSectionHeaderView *)self titleLabel];
  [v5 setTextAlignment:4];

  v6 = [(WDHeartRhythmSectionHeaderView *)self titleLabel];
  [v6 setNumberOfLines:0];

  v7 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A20] addingSymbolicTraits:32770 options:0];
  v8 = [MEMORY[0x277D74300] fontWithDescriptor:v7 size:0.0];
  v9 = [(WDHeartRhythmSectionHeaderView *)self titleLabel];
  [v9 setFont:v8];

  v10 = [MEMORY[0x277D75348] labelColor];
  v11 = [(WDHeartRhythmSectionHeaderView *)self titleLabel];
  [v11 setTextColor:v10];

  v12 = [(WDHeartRhythmSectionHeaderView *)self contentView];
  v13 = [(WDHeartRhythmSectionHeaderView *)self titleLabel];
  [v12 addSubview:v13];

  v14 = [(WDHeartRhythmSectionHeaderView *)self titleLabel];
  v15 = [v14 topAnchor];
  v16 = [(WDHeartRhythmSectionHeaderView *)self contentView];
  v17 = [v16 topAnchor];
  v18 = [v15 constraintEqualToAnchor:v17 constant:12.0];
  [v18 setActive:1];

  v19 = [(WDHeartRhythmSectionHeaderView *)self contentView];
  v20 = [v19 bottomAnchor];
  v21 = [(WDHeartRhythmSectionHeaderView *)self titleLabel];
  v22 = [v21 lastBaselineAnchor];
  v23 = [v20 constraintEqualToAnchor:v22];
  bottomToTitleLastBaselineConstraint = self->_bottomToTitleLastBaselineConstraint;
  self->_bottomToTitleLastBaselineConstraint = v23;

  [(WDHeartRhythmSectionHeaderView *)self updateConstraintConstants];
  v25 = [(WDHeartRhythmSectionHeaderView *)self titleLabel];
  v26 = [v25 leadingAnchor];
  v27 = [(WDHeartRhythmSectionHeaderView *)self contentView];
  v28 = [v27 layoutMarginsGuide];
  v29 = [v28 leadingAnchor];
  v30 = [v26 constraintEqualToAnchor:v29];

  v31 = [(WDHeartRhythmSectionHeaderView *)self titleLabel];
  v32 = [v31 trailingAnchor];
  v33 = [(WDHeartRhythmSectionHeaderView *)self contentView];
  v34 = [v33 layoutMarginsGuide];
  v35 = [v34 trailingAnchor];
  v36 = [v32 constraintEqualToAnchor:v35];

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
  v6 = [(WDHeartRhythmSectionHeaderView *)self bottomToTitleLastBaselineConstraint];
  [v6 setConstant:v5];
}

- (void)traitCollectionDidChange:(id)a3
{
  v8 = a3;
  if (!v8)
  {
    goto LABEL_3;
  }

  v4 = [(WDHeartRhythmSectionHeaderView *)self traitCollection];
  v5 = [v4 preferredContentSizeCategory];
  v6 = [v8 preferredContentSizeCategory];
  v7 = [v5 isEqualToString:v6];

  if ((v7 & 1) == 0)
  {
LABEL_3:
    [(WDHeartRhythmSectionHeaderView *)self updateConstraintConstants];
  }
}

- (void)setTitleText:(id)a3
{
  v4 = a3;
  v5 = [(WDHeartRhythmSectionHeaderView *)self titleLabel];
  [v5 setText:v4];
}

- (NSString)titleText
{
  v2 = [(WDHeartRhythmSectionHeaderView *)self titleLabel];
  v3 = [v2 text];

  return v3;
}

@end