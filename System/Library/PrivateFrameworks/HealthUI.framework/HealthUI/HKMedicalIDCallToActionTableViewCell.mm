@interface HKMedicalIDCallToActionTableViewCell
- (HKMedicalIDCallToActionTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)setupConstraints;
- (void)setupSubviews;
@end

@implementation HKMedicalIDCallToActionTableViewCell

- (HKMedicalIDCallToActionTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = HKMedicalIDCallToActionTableViewCell;
  v4 = [(HKMedicalIDCallToActionTableViewCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(HKMedicalIDCallToActionTableViewCell *)v4 setupSubviews];
    [(HKMedicalIDCallToActionTableViewCell *)v5 setupConstraints];
  }

  return v5;
}

- (void)setupSubviews
{
  v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(HKMedicalIDCallToActionTableViewCell *)self setCallToActionLabel:v3];

  callToActionLabel = [(HKMedicalIDCallToActionTableViewCell *)self callToActionLabel];
  [callToActionLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  callToActionLabel2 = [(HKMedicalIDCallToActionTableViewCell *)self callToActionLabel];
  [callToActionLabel2 setNumberOfLines:0];

  v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  callToActionLabel3 = [(HKMedicalIDCallToActionTableViewCell *)self callToActionLabel];
  [callToActionLabel3 setFont:v6];

  v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v9 = [v8 localizedStringForKey:@"MEDICAL_ID_DESCRIPTION" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  callToActionLabel4 = [(HKMedicalIDCallToActionTableViewCell *)self callToActionLabel];
  [callToActionLabel4 setText:v9];

  contentView = [(HKMedicalIDCallToActionTableViewCell *)self contentView];
  callToActionLabel5 = [(HKMedicalIDCallToActionTableViewCell *)self callToActionLabel];
  [contentView addSubview:callToActionLabel5];

  v13 = MEMORY[0x1E69DC738];
  v14 = HKHealthKeyColor();
  v15 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v16 = [v15 localizedStringForKey:@"CREATE_MEDICAL_ID" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v17 = [v13 hk_multiLineRoundRectButtonTintedWithColor:v14 title:v16 target:0 action:0];
  [(HKMedicalIDCallToActionTableViewCell *)self setActionButton:v17];

  actionButton = [(HKMedicalIDCallToActionTableViewCell *)self actionButton];
  [actionButton setTranslatesAutoresizingMaskIntoConstraints:0];

  actionButton2 = [(HKMedicalIDCallToActionTableViewCell *)self actionButton];
  titleLabel = [actionButton2 titleLabel];
  [titleLabel setNumberOfLines:0];

  contentView2 = [(HKMedicalIDCallToActionTableViewCell *)self contentView];
  actionButton3 = [(HKMedicalIDCallToActionTableViewCell *)self actionButton];
  [contentView2 addSubview:actionButton3];

  [(HKMedicalIDCallToActionTableViewCell *)self setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (void)setupConstraints
{
  v46[7] = *MEMORY[0x1E69E9840];
  v27 = MEMORY[0x1E696ACD8];
  callToActionLabel = [(HKMedicalIDCallToActionTableViewCell *)self callToActionLabel];
  topAnchor = [callToActionLabel topAnchor];
  contentView = [(HKMedicalIDCallToActionTableViewCell *)self contentView];
  layoutMarginsGuide = [contentView layoutMarginsGuide];
  topAnchor2 = [layoutMarginsGuide topAnchor];
  v40 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v46[0] = v40;
  callToActionLabel2 = [(HKMedicalIDCallToActionTableViewCell *)self callToActionLabel];
  leadingAnchor = [callToActionLabel2 leadingAnchor];
  contentView2 = [(HKMedicalIDCallToActionTableViewCell *)self contentView];
  layoutMarginsGuide2 = [contentView2 layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide2 leadingAnchor];
  v34 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v46[1] = v34;
  callToActionLabel3 = [(HKMedicalIDCallToActionTableViewCell *)self callToActionLabel];
  trailingAnchor = [callToActionLabel3 trailingAnchor];
  contentView3 = [(HKMedicalIDCallToActionTableViewCell *)self contentView];
  layoutMarginsGuide3 = [contentView3 layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide3 trailingAnchor];
  v28 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v46[2] = v28;
  callToActionLabel4 = [(HKMedicalIDCallToActionTableViewCell *)self callToActionLabel];
  bottomAnchor = [callToActionLabel4 bottomAnchor];
  actionButton = [(HKMedicalIDCallToActionTableViewCell *)self actionButton];
  topAnchor3 = [actionButton topAnchor];
  v22 = [bottomAnchor constraintEqualToAnchor:topAnchor3 constant:-22.0];
  v46[3] = v22;
  actionButton2 = [(HKMedicalIDCallToActionTableViewCell *)self actionButton];
  leadingAnchor3 = [actionButton2 leadingAnchor];
  contentView4 = [(HKMedicalIDCallToActionTableViewCell *)self contentView];
  layoutMarginsGuide4 = [contentView4 layoutMarginsGuide];
  leadingAnchor4 = [layoutMarginsGuide4 leadingAnchor];
  v16 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v46[4] = v16;
  actionButton3 = [(HKMedicalIDCallToActionTableViewCell *)self actionButton];
  trailingAnchor3 = [actionButton3 trailingAnchor];
  contentView5 = [(HKMedicalIDCallToActionTableViewCell *)self contentView];
  layoutMarginsGuide5 = [contentView5 layoutMarginsGuide];
  trailingAnchor4 = [layoutMarginsGuide5 trailingAnchor];
  v5 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v46[5] = v5;
  actionButton4 = [(HKMedicalIDCallToActionTableViewCell *)self actionButton];
  bottomAnchor2 = [actionButton4 bottomAnchor];
  contentView6 = [(HKMedicalIDCallToActionTableViewCell *)self contentView];
  layoutMarginsGuide6 = [contentView6 layoutMarginsGuide];
  bottomAnchor3 = [layoutMarginsGuide6 bottomAnchor];
  v11 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v46[6] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:7];
  [v27 activateConstraints:v12];
}

@end