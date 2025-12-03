@interface WDClinicalOnboardingRetrievingRecordsMessageCell
- (WDClinicalOnboardingRetrievingRecordsMessageCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_setupConstraints;
- (void)_setupSubviews;
@end

@implementation WDClinicalOnboardingRetrievingRecordsMessageCell

- (WDClinicalOnboardingRetrievingRecordsMessageCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = WDClinicalOnboardingRetrievingRecordsMessageCell;
  v4 = [(WDClinicalOnboardingRetrievingRecordsMessageCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(WDClinicalOnboardingRetrievingRecordsMessageCell *)v4 _setupSubviews];
    [(WDClinicalOnboardingRetrievingRecordsMessageCell *)v5 _setupConstraints];
  }

  return v5;
}

- (void)_setupSubviews
{
  v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(WDClinicalOnboardingRetrievingRecordsMessageCell *)self setTitleLabel:v3];

  v4 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD58] variant:1280];
  titleLabel = [(WDClinicalOnboardingRetrievingRecordsMessageCell *)self titleLabel];
  [titleLabel setFont:v4];

  titleLabel2 = [(WDClinicalOnboardingRetrievingRecordsMessageCell *)self titleLabel];
  [titleLabel2 setLineBreakMode:0];

  titleLabel3 = [(WDClinicalOnboardingRetrievingRecordsMessageCell *)self titleLabel];
  [titleLabel3 setNumberOfLines:0];

  v8 = HRLocalizedString(@"HEALTH_RECORDS_ONBOARDING_ACCOUNT_SUCCESSFULLY_CONNECTED");
  titleLabel4 = [(WDClinicalOnboardingRetrievingRecordsMessageCell *)self titleLabel];
  [titleLabel4 setText:v8];

  titleLabel5 = [(WDClinicalOnboardingRetrievingRecordsMessageCell *)self titleLabel];
  [titleLabel5 setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView = [(WDClinicalOnboardingRetrievingRecordsMessageCell *)self contentView];
  titleLabel6 = [(WDClinicalOnboardingRetrievingRecordsMessageCell *)self titleLabel];
  [contentView addSubview:titleLabel6];

  v13 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(WDClinicalOnboardingRetrievingRecordsMessageCell *)self setMessageLabel:v13];

  v14 = MEMORY[0x1E69DB878];
  v15 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8]];
  v16 = [v14 fontWithDescriptor:v15 size:0.0];
  messageLabel = [(WDClinicalOnboardingRetrievingRecordsMessageCell *)self messageLabel];
  [messageLabel setFont:v16];

  messageLabel2 = [(WDClinicalOnboardingRetrievingRecordsMessageCell *)self messageLabel];
  [messageLabel2 setLineBreakMode:0];

  messageLabel3 = [(WDClinicalOnboardingRetrievingRecordsMessageCell *)self messageLabel];
  [messageLabel3 setNumberOfLines:0];

  v20 = [MEMORY[0x1E69DC938] modelSpecificLocalizedStringKeyForKey:@"HEALTH_RECORDS_ONBOARDING_ACCOUNT_SUCCESSFULLY_CONNECTED_MESSAGE"];
  v21 = HRLocalizedString(v20);
  messageLabel4 = [(WDClinicalOnboardingRetrievingRecordsMessageCell *)self messageLabel];
  [messageLabel4 setText:v21];

  messageLabel5 = [(WDClinicalOnboardingRetrievingRecordsMessageCell *)self messageLabel];
  [messageLabel5 setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView2 = [(WDClinicalOnboardingRetrievingRecordsMessageCell *)self contentView];
  messageLabel6 = [(WDClinicalOnboardingRetrievingRecordsMessageCell *)self messageLabel];
  [contentView2 addSubview:messageLabel6];

  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [(WDClinicalOnboardingRetrievingRecordsMessageCell *)self setBackgroundColor:systemBackgroundColor];
}

- (void)_setupConstraints
{
  titleLabel = [(WDClinicalOnboardingRetrievingRecordsMessageCell *)self titleLabel];
  leadingAnchor = [titleLabel leadingAnchor];
  contentView = [(WDClinicalOnboardingRetrievingRecordsMessageCell *)self contentView];
  safeAreaLayoutGuide = [contentView safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  v8 = *MEMORY[0x1E69A4090];
  v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:*MEMORY[0x1E69A4090]];
  [v9 setActive:1];

  contentView2 = [(WDClinicalOnboardingRetrievingRecordsMessageCell *)self contentView];
  safeAreaLayoutGuide2 = [contentView2 safeAreaLayoutGuide];
  trailingAnchor = [safeAreaLayoutGuide2 trailingAnchor];
  titleLabel2 = [(WDClinicalOnboardingRetrievingRecordsMessageCell *)self titleLabel];
  trailingAnchor2 = [titleLabel2 trailingAnchor];
  v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:v8];
  [v15 setActive:1];

  titleLabel3 = [(WDClinicalOnboardingRetrievingRecordsMessageCell *)self titleLabel];
  topAnchor = [titleLabel3 topAnchor];
  contentView3 = [(WDClinicalOnboardingRetrievingRecordsMessageCell *)self contentView];
  safeAreaLayoutGuide3 = [contentView3 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide3 topAnchor];
  v21 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:12.0];
  [v21 setActive:1];

  messageLabel = [(WDClinicalOnboardingRetrievingRecordsMessageCell *)self messageLabel];
  leadingAnchor3 = [messageLabel leadingAnchor];
  titleLabel4 = [(WDClinicalOnboardingRetrievingRecordsMessageCell *)self titleLabel];
  leadingAnchor4 = [titleLabel4 leadingAnchor];
  v26 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [v26 setActive:1];

  messageLabel2 = [(WDClinicalOnboardingRetrievingRecordsMessageCell *)self messageLabel];
  trailingAnchor3 = [messageLabel2 trailingAnchor];
  titleLabel5 = [(WDClinicalOnboardingRetrievingRecordsMessageCell *)self titleLabel];
  trailingAnchor4 = [titleLabel5 trailingAnchor];
  v31 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  [v31 setActive:1];

  messageLabel3 = [(WDClinicalOnboardingRetrievingRecordsMessageCell *)self messageLabel];
  topAnchor3 = [messageLabel3 topAnchor];
  titleLabel6 = [(WDClinicalOnboardingRetrievingRecordsMessageCell *)self titleLabel];
  bottomAnchor = [titleLabel6 bottomAnchor];
  v36 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:12.0];
  [v36 setActive:1];

  contentView4 = [(WDClinicalOnboardingRetrievingRecordsMessageCell *)self contentView];
  safeAreaLayoutGuide4 = [contentView4 safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide4 bottomAnchor];
  messageLabel4 = [(WDClinicalOnboardingRetrievingRecordsMessageCell *)self messageLabel];
  bottomAnchor3 = [messageLabel4 bottomAnchor];
  v41 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:44.0];
  [v41 setActive:1];
}

@end