@interface WDClinicalOnboardingRetrievingRecordsMessageCell
- (WDClinicalOnboardingRetrievingRecordsMessageCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_setupConstraints;
- (void)_setupSubviews;
@end

@implementation WDClinicalOnboardingRetrievingRecordsMessageCell

- (WDClinicalOnboardingRetrievingRecordsMessageCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = WDClinicalOnboardingRetrievingRecordsMessageCell;
  v4 = [(WDClinicalOnboardingRetrievingRecordsMessageCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
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
  v5 = [(WDClinicalOnboardingRetrievingRecordsMessageCell *)self titleLabel];
  [v5 setFont:v4];

  v6 = [(WDClinicalOnboardingRetrievingRecordsMessageCell *)self titleLabel];
  [v6 setLineBreakMode:0];

  v7 = [(WDClinicalOnboardingRetrievingRecordsMessageCell *)self titleLabel];
  [v7 setNumberOfLines:0];

  v8 = HRLocalizedString(@"HEALTH_RECORDS_ONBOARDING_ACCOUNT_SUCCESSFULLY_CONNECTED");
  v9 = [(WDClinicalOnboardingRetrievingRecordsMessageCell *)self titleLabel];
  [v9 setText:v8];

  v10 = [(WDClinicalOnboardingRetrievingRecordsMessageCell *)self titleLabel];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

  v11 = [(WDClinicalOnboardingRetrievingRecordsMessageCell *)self contentView];
  v12 = [(WDClinicalOnboardingRetrievingRecordsMessageCell *)self titleLabel];
  [v11 addSubview:v12];

  v13 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(WDClinicalOnboardingRetrievingRecordsMessageCell *)self setMessageLabel:v13];

  v14 = MEMORY[0x1E69DB878];
  v15 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8]];
  v16 = [v14 fontWithDescriptor:v15 size:0.0];
  v17 = [(WDClinicalOnboardingRetrievingRecordsMessageCell *)self messageLabel];
  [v17 setFont:v16];

  v18 = [(WDClinicalOnboardingRetrievingRecordsMessageCell *)self messageLabel];
  [v18 setLineBreakMode:0];

  v19 = [(WDClinicalOnboardingRetrievingRecordsMessageCell *)self messageLabel];
  [v19 setNumberOfLines:0];

  v20 = [MEMORY[0x1E69DC938] modelSpecificLocalizedStringKeyForKey:@"HEALTH_RECORDS_ONBOARDING_ACCOUNT_SUCCESSFULLY_CONNECTED_MESSAGE"];
  v21 = HRLocalizedString(v20);
  v22 = [(WDClinicalOnboardingRetrievingRecordsMessageCell *)self messageLabel];
  [v22 setText:v21];

  v23 = [(WDClinicalOnboardingRetrievingRecordsMessageCell *)self messageLabel];
  [v23 setTranslatesAutoresizingMaskIntoConstraints:0];

  v24 = [(WDClinicalOnboardingRetrievingRecordsMessageCell *)self contentView];
  v25 = [(WDClinicalOnboardingRetrievingRecordsMessageCell *)self messageLabel];
  [v24 addSubview:v25];

  v26 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [(WDClinicalOnboardingRetrievingRecordsMessageCell *)self setBackgroundColor:v26];
}

- (void)_setupConstraints
{
  v3 = [(WDClinicalOnboardingRetrievingRecordsMessageCell *)self titleLabel];
  v4 = [v3 leadingAnchor];
  v5 = [(WDClinicalOnboardingRetrievingRecordsMessageCell *)self contentView];
  v6 = [v5 safeAreaLayoutGuide];
  v7 = [v6 leadingAnchor];
  v8 = *MEMORY[0x1E69A4090];
  v9 = [v4 constraintEqualToAnchor:v7 constant:*MEMORY[0x1E69A4090]];
  [v9 setActive:1];

  v10 = [(WDClinicalOnboardingRetrievingRecordsMessageCell *)self contentView];
  v11 = [v10 safeAreaLayoutGuide];
  v12 = [v11 trailingAnchor];
  v13 = [(WDClinicalOnboardingRetrievingRecordsMessageCell *)self titleLabel];
  v14 = [v13 trailingAnchor];
  v15 = [v12 constraintEqualToAnchor:v14 constant:v8];
  [v15 setActive:1];

  v16 = [(WDClinicalOnboardingRetrievingRecordsMessageCell *)self titleLabel];
  v17 = [v16 topAnchor];
  v18 = [(WDClinicalOnboardingRetrievingRecordsMessageCell *)self contentView];
  v19 = [v18 safeAreaLayoutGuide];
  v20 = [v19 topAnchor];
  v21 = [v17 constraintEqualToAnchor:v20 constant:12.0];
  [v21 setActive:1];

  v22 = [(WDClinicalOnboardingRetrievingRecordsMessageCell *)self messageLabel];
  v23 = [v22 leadingAnchor];
  v24 = [(WDClinicalOnboardingRetrievingRecordsMessageCell *)self titleLabel];
  v25 = [v24 leadingAnchor];
  v26 = [v23 constraintEqualToAnchor:v25];
  [v26 setActive:1];

  v27 = [(WDClinicalOnboardingRetrievingRecordsMessageCell *)self messageLabel];
  v28 = [v27 trailingAnchor];
  v29 = [(WDClinicalOnboardingRetrievingRecordsMessageCell *)self titleLabel];
  v30 = [v29 trailingAnchor];
  v31 = [v28 constraintEqualToAnchor:v30];
  [v31 setActive:1];

  v32 = [(WDClinicalOnboardingRetrievingRecordsMessageCell *)self messageLabel];
  v33 = [v32 topAnchor];
  v34 = [(WDClinicalOnboardingRetrievingRecordsMessageCell *)self titleLabel];
  v35 = [v34 bottomAnchor];
  v36 = [v33 constraintEqualToAnchor:v35 constant:12.0];
  [v36 setActive:1];

  v42 = [(WDClinicalOnboardingRetrievingRecordsMessageCell *)self contentView];
  v37 = [v42 safeAreaLayoutGuide];
  v38 = [v37 bottomAnchor];
  v39 = [(WDClinicalOnboardingRetrievingRecordsMessageCell *)self messageLabel];
  v40 = [v39 bottomAnchor];
  v41 = [v38 constraintEqualToAnchor:v40 constant:44.0];
  [v41 setActive:1];
}

@end