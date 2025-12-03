@interface WDMedicalRecordReferenceRangeViewCell
- (void)setAttributedSubtitleText:(id)text;
- (void)setSubtitle:(id)subtitle;
- (void)setValueInRange:(id)range;
- (void)setupSubviews;
@end

@implementation WDMedicalRecordReferenceRangeViewCell

- (void)setupSubviews
{
  v51.receiver = self;
  v51.super_class = WDMedicalRecordReferenceRangeViewCell;
  [(WDMedicalRecordGroupableCell *)&v51 setupSubviews];
  v3 = [HRExpandedRangeValueView alloc];
  v4 = [(HRExpandedRangeValueView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(WDMedicalRecordReferenceRangeViewCell *)self setExpandedRangeValueView:v4];

  expandedRangeValueView = [(WDMedicalRecordReferenceRangeViewCell *)self expandedRangeValueView];
  [expandedRangeValueView setTranslatesAutoresizingMaskIntoConstraints:0];

  pillBackgroundView = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  expandedRangeValueView2 = [(WDMedicalRecordReferenceRangeViewCell *)self expandedRangeValueView];
  [pillBackgroundView addSubview:expandedRangeValueView2];

  v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(WDMedicalRecordReferenceRangeViewCell *)self setSubtitleLabel:v8];

  subtitleLabel = [(WDMedicalRecordReferenceRangeViewCell *)self subtitleLabel];
  [subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  v10 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD80] variant:1280];
  subtitleLabel2 = [(WDMedicalRecordReferenceRangeViewCell *)self subtitleLabel];
  [subtitleLabel2 setFont:v10];

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  subtitleLabel3 = [(WDMedicalRecordReferenceRangeViewCell *)self subtitleLabel];
  [subtitleLabel3 setTextColor:secondaryLabelColor];

  pillBackgroundView2 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  subtitleLabel4 = [(WDMedicalRecordReferenceRangeViewCell *)self subtitleLabel];
  [pillBackgroundView2 addSubview:subtitleLabel4];

  expandedRangeValueView3 = [(WDMedicalRecordReferenceRangeViewCell *)self expandedRangeValueView];
  leadingAnchor = [expandedRangeValueView3 leadingAnchor];
  pillBackgroundView3 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  leadingAnchor2 = [pillBackgroundView3 leadingAnchor];
  v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  [v20 setActive:1];

  expandedRangeValueView4 = [(WDMedicalRecordReferenceRangeViewCell *)self expandedRangeValueView];
  trailingAnchor = [expandedRangeValueView4 trailingAnchor];
  pillBackgroundView4 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  trailingAnchor2 = [pillBackgroundView4 trailingAnchor];
  v25 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
  [v25 setActive:1];

  expandedRangeValueView5 = [(WDMedicalRecordReferenceRangeViewCell *)self expandedRangeValueView];
  topAnchor = [expandedRangeValueView5 topAnchor];
  pillBackgroundView5 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  topAnchor2 = [pillBackgroundView5 topAnchor];
  v30 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:8.0];
  [v30 setActive:1];

  expandedRangeValueView6 = [(WDMedicalRecordReferenceRangeViewCell *)self expandedRangeValueView];
  bottomAnchor = [expandedRangeValueView6 bottomAnchor];
  subtitleLabel5 = [(WDMedicalRecordReferenceRangeViewCell *)self subtitleLabel];
  topAnchor3 = [subtitleLabel5 topAnchor];
  v35 = [bottomAnchor constraintEqualToAnchor:topAnchor3 constant:-3.0];
  [v35 setActive:1];

  subtitleLabel6 = [(WDMedicalRecordReferenceRangeViewCell *)self subtitleLabel];
  leadingAnchor3 = [subtitleLabel6 leadingAnchor];
  pillBackgroundView6 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  leadingAnchor4 = [pillBackgroundView6 leadingAnchor];
  v40 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:16.0];
  [v40 setActive:1];

  subtitleLabel7 = [(WDMedicalRecordReferenceRangeViewCell *)self subtitleLabel];
  trailingAnchor3 = [subtitleLabel7 trailingAnchor];
  pillBackgroundView7 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  trailingAnchor4 = [pillBackgroundView7 trailingAnchor];
  v45 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-16.0];
  [v45 setActive:1];

  subtitleLabel8 = [(WDMedicalRecordReferenceRangeViewCell *)self subtitleLabel];
  bottomAnchor2 = [subtitleLabel8 bottomAnchor];
  pillBackgroundView8 = [(WDMedicalRecordGroupableCell *)self pillBackgroundView];
  bottomAnchor3 = [pillBackgroundView8 bottomAnchor];
  v50 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-12.0];
  [v50 setActive:1];
}

- (void)setValueInRange:(id)range
{
  v11 = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  v5 = [MEMORY[0x1E69A4488] referenceRangeViewDataFromInspectableValueInRange:rangeCopy];
  if (v5)
  {
    expandedRangeValueView = [(WDMedicalRecordReferenceRangeViewCell *)self expandedRangeValueView];
    [expandedRangeValueView updateWithData:v5];
LABEL_5:

    goto LABEL_6;
  }

  _HKInitializeLogging();
  v7 = *MEMORY[0x1E696B948];
  if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_INFO))
  {
    expandedRangeValueView = v7;
    v8 = HKSensitiveLogItem();
    v9 = 138543362;
    v10 = v8;
    _os_log_impl(&dword_1D101F000, expandedRangeValueView, OS_LOG_TYPE_INFO, "Unable to use %{public}@ as data source for our reference range view", &v9, 0xCu);

    goto LABEL_5;
  }

LABEL_6:
}

- (void)setSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  subtitleLabel = [(WDMedicalRecordReferenceRangeViewCell *)self subtitleLabel];
  text = [subtitleLabel text];
  v7 = [text isEqualToString:subtitleCopy];

  if ((v7 & 1) == 0)
  {
    objc_storeStrong(&self->_subtitle, subtitle);
    subtitle = self->_subtitle;
    subtitleLabel2 = [(WDMedicalRecordReferenceRangeViewCell *)self subtitleLabel];
    [subtitleLabel2 setText:subtitle];
  }
}

- (void)setAttributedSubtitleText:(id)text
{
  textCopy = text;
  subtitleLabel = [(WDMedicalRecordReferenceRangeViewCell *)self subtitleLabel];
  [subtitleLabel setAttributedText:textCopy];
}

@end