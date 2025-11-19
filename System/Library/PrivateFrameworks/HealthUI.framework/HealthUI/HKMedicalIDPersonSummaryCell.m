@interface HKMedicalIDPersonSummaryCell
- (HKMedicalIDPersonSummaryCell)initWithFrame:(CGRect)a3;
- (id)_cachedCalendar;
- (id)notOrganDonorString;
- (id)stringWithImageNamed:(id)a3 withText:(id)a4 andColor:(id)a5;
- (void)_contentSizeCategoryDidChange:(id)a3;
- (void)buildEmergencyAccessTableItem;
- (void)dealloc;
- (void)timeZoneDidChange:(id)a3;
- (void)updateSubviewsFromData;
@end

@implementation HKMedicalIDPersonSummaryCell

- (HKMedicalIDPersonSummaryCell)initWithFrame:(CGRect)a3
{
  v54[3] = *MEMORY[0x1E69E9840];
  v50.receiver = self;
  v50.super_class = HKMedicalIDPersonSummaryCell;
  v3 = [(HKMedicalIDPersonSummaryCell *)&v50 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    pictureView = v3->_pictureView;
    v3->_pictureView = v4;

    [(UIImageView *)v3->_pictureView setContentMode:2];
    v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    nameLabel = v3->_nameLabel;
    v3->_nameLabel = v6;

    v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    birthdateLabel = v3->_birthdateLabel;
    v3->_birthdateLabel = v8;

    v10 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    organDonationLabel = v3->_organDonationLabel;
    v3->_organDonationLabel = v10;

    [(UIImageView *)v3->_pictureView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_nameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_birthdateLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_organDonationLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = objc_alloc(MEMORY[0x1E695DF70]);
    v54[0] = v3->_nameLabel;
    v54[1] = v3->_birthdateLabel;
    v54[2] = v3->_organDonationLabel;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:3];
    v49 = [v12 initWithArray:v13];

    v14 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    emergencyAccessLabel = v3->_emergencyAccessLabel;
    v3->_emergencyAccessLabel = v14;

    [(UILabel *)v3->_emergencyAccessLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_emergencyAccessLabel setNumberOfLines:0];
    v16 = [objc_alloc(MEMORY[0x1E69DCF90]) initWithArrangedSubviews:v49];
    labelContainerView = v3->_labelContainerView;
    v3->_labelContainerView = v16;

    [(UIStackView *)v3->_labelContainerView setAxis:1];
    [(UIStackView *)v3->_labelContainerView setAlignment:1];
    [(UIStackView *)v3->_labelContainerView setBaselineRelativeArrangement:0];
    [(UIStackView *)v3->_labelContainerView setCustomSpacing:v3->_nameLabel afterView:4.0];
    [(UIStackView *)v3->_labelContainerView setCustomSpacing:v3->_birthdateLabel afterView:4.0];
    [(UIStackView *)v3->_labelContainerView setLayoutMarginsRelativeArrangement:1];
    v18 = objc_alloc(MEMORY[0x1E69DCF90]);
    v53[0] = v3->_labelContainerView;
    v53[1] = v3->_pictureView;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:2];
    v20 = [v18 initWithArrangedSubviews:v19];
    mainContainerView = v3->_mainContainerView;
    v3->_mainContainerView = v20;

    [(UIStackView *)v3->_mainContainerView setAxis:0];
    [(UIStackView *)v3->_mainContainerView setDistribution:0];
    [(UIStackView *)v3->_mainContainerView setAlignment:1];
    [(UIStackView *)v3->_mainContainerView setSpacing:16.0];
    [(UIStackView *)v3->_mainContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    v22 = [(UIImageView *)v3->_pictureView layer];
    [v22 setMasksToBounds:1];

    [(UILabel *)v3->_nameLabel setNumberOfLines:0];
    [(UILabel *)v3->_birthdateLabel setNumberOfLines:0];
    [(UILabel *)v3->_organDonationLabel setNumberOfLines:0];
    v23 = objc_alloc(MEMORY[0x1E69DCF90]);
    v52 = v3->_mainContainerView;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v52 count:1];
    v25 = [v23 initWithArrangedSubviews:v24];
    fullContainerView = v3->_fullContainerView;
    v3->_fullContainerView = v25;

    [(UIStackView *)v3->_fullContainerView setDirectionalLayoutMargins:7.0, 0.0, 7.0, 0.0];
    [(UIStackView *)v3->_fullContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v3->_fullContainerView setAxis:1];
    [(UIStackView *)v3->_fullContainerView setSpacing:4.0];
    [(UIStackView *)v3->_fullContainerView addArrangedSubview:v3->_emergencyAccessLabel];
    v27 = [(HKMedicalIDPersonSummaryCell *)v3 contentView];
    [v27 addSubview:v3->_fullContainerView];

    v28 = [(HKMedicalIDPersonSummaryCell *)v3 contentView];
    v29 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
    [v28 setBackgroundColor:v29];

    v47 = [(UIStackView *)v3->_fullContainerView leadingAnchor];
    v48 = [(HKMedicalIDPersonSummaryCell *)v3 contentView];
    v46 = [v48 leadingAnchor];
    v45 = [v47 constraintEqualToAnchor:v46 constant:16.0];
    v51[0] = v45;
    v43 = [(UIStackView *)v3->_fullContainerView trailingAnchor];
    v44 = [(HKMedicalIDPersonSummaryCell *)v3 contentView];
    v42 = [v44 trailingAnchor];
    v30 = [v43 constraintEqualToAnchor:v42 constant:-16.0];
    v51[1] = v30;
    v31 = [(UIStackView *)v3->_fullContainerView topAnchor];
    v32 = [(HKMedicalIDPersonSummaryCell *)v3 contentView];
    v33 = [v32 topAnchor];
    v34 = [v31 constraintEqualToAnchor:v33 constant:20.0];
    v51[2] = v34;
    v35 = [(UIStackView *)v3->_fullContainerView bottomAnchor];
    v36 = [(HKMedicalIDPersonSummaryCell *)v3 contentView];
    v37 = [v36 bottomAnchor];
    v38 = [v35 constraintEqualToAnchor:v37 constant:-20.0];
    v51[3] = v38;
    v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:4];

    [MEMORY[0x1E696ACD8] activateConstraints:v41];
    [(HKMedicalIDPersonSummaryCell *)v3 _contentSizeCategoryDidChange:0];
    v39 = [MEMORY[0x1E696AD88] defaultCenter];
    [v39 addObserver:v3 selector:sel__contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v3;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];

  v4.receiver = self;
  v4.super_class = HKMedicalIDPersonSummaryCell;
  [(HKMedicalIDPersonSummaryCell *)&v4 dealloc];
}

- (void)timeZoneDidChange:(id)a3
{
  gregorianCalendar = self->_gregorianCalendar;
  self->_gregorianCalendar = 0;

  [(HKMedicalIDPersonSummaryCell *)self updateSubviewsFromData];
}

- (void)_contentSizeCategoryDidChange:(id)a3
{
  if (HKUIApplicationIsUsingAccessibilityContentSizeCategory())
  {
    IsLargerThanSizeCategory = HKUIApplicationContentSizeCategoryIsLargerThanSizeCategory(*MEMORY[0x1E69DDC70]);
    v5 = &OBJC_IVAR___HKMedicalIDPersonSummaryCell__pictureView;
    if (IsLargerThanSizeCategory)
    {
      v5 = &OBJC_IVAR___HKMedicalIDPersonSummaryCell__labelContainerView;
    }

    v23 = 3;
    if (IsLargerThanSizeCategory)
    {
      v6 = 3;
    }

    else
    {
      v6 = 1;
    }

    if (IsLargerThanSizeCategory)
    {
      v7 = 150.0;
    }

    else
    {
      v7 = 60.0;
    }

    v8 = *v5;
    [(UIStackView *)self->_mainContainerView removeArrangedSubview:*(&self->super.super.super.super.isa + v8)];
    [(UIStackView *)self->_mainContainerView addArrangedSubview:*(&self->super.super.super.super.isa + v8)];
    [(UIStackView *)self->_mainContainerView setAlignment:v6];
    v9 = 1;
  }

  else
  {
    v9 = 0;
    v7 = 60.0;
    v23 = 1;
  }

  IsSmallerThanSizeCategory = HKUIApplicationContentSizeCategoryIsSmallerThanSizeCategory(*MEMORY[0x1E69DDC78]);
  emergencyAccessLabel = self->_emergencyAccessLabel;
  if (IsSmallerThanSizeCategory)
  {
    [(UIStackView *)self->_fullContainerView removeArrangedSubview:emergencyAccessLabel];
    [(UIStackView *)self->_labelContainerView addArrangedSubview:self->_emergencyAccessLabel];
    [(UIStackView *)self->_labelContainerView setCustomSpacing:self->_organDonationLabel afterView:4.0];
  }

  else
  {
    [(UIStackView *)self->_labelContainerView removeArrangedSubview:emergencyAccessLabel];
    [(UIStackView *)self->_fullContainerView addArrangedSubview:self->_emergencyAccessLabel];
  }

  v12 = [(UIImageView *)self->_pictureView widthAnchor];
  v13 = [v12 constraintEqualToConstant:v7];
  pictureWidthAnchor = self->_pictureWidthAnchor;
  self->_pictureWidthAnchor = v13;

  [(NSLayoutConstraint *)self->_pictureWidthAnchor setActive:1];
  v15 = [(UIImageView *)self->_pictureView heightAnchor];
  v16 = [(UIImageView *)self->_pictureView widthAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];
  [v17 setActive:1];

  v18 = [(UIImageView *)self->_pictureView layer];
  [v18 setCornerRadius:v7 * 0.5];

  v19 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:*MEMORY[0x1E69DDDC8] symbolicTraits:32770];
  [(UILabel *)self->_nameLabel setFont:v19];

  v20 = *MEMORY[0x1E69DDD78];
  v21 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:*MEMORY[0x1E69DDD78] symbolicTraits:0x8000];
  [(UILabel *)self->_birthdateLabel setFont:v21];

  v22 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:v20 symbolicTraits:0x8000];
  [(UILabel *)self->_organDonationLabel setFont:v22];

  [(UILabel *)self->_nameLabel setTextAlignment:v9];
  [(UILabel *)self->_birthdateLabel setTextAlignment:v9];
  [(UILabel *)self->_organDonationLabel setTextAlignment:v9];
  [(UIStackView *)self->_labelContainerView setAlignment:v23];
  [(UIStackView *)self->_mainContainerView setAxis:v9];
  [(UILabel *)self->_emergencyAccessLabel setTextAlignment:v9];
  v24 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:v20 symbolicTraits:0x8000];
  [(UILabel *)self->_emergencyAccessLabel setFont:v24];
}

- (void)updateSubviewsFromData
{
  if (self->_resetFormatters)
  {
    v3 = updateSubviewsFromData___birthdayFormatter;
    updateSubviewsFromData___birthdayFormatter = 0;

    v4 = updateSubviewsFromData___ageFormatter;
    updateSubviewsFromData___ageFormatter = 0;

    self->_resetFormatters = 0;
  }

  if (!updateSubviewsFromData___birthdayFormatter)
  {
    v5 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v6 = updateSubviewsFromData___birthdayFormatter;
    updateSubviewsFromData___birthdayFormatter = v5;

    [updateSubviewsFromData___birthdayFormatter setDateStyle:3];
  }

  if (!updateSubviewsFromData___ageFormatter)
  {
    v7 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    v8 = updateSubviewsFromData___ageFormatter;
    updateSubviewsFromData___ageFormatter = v7;
  }

  [(UIImageView *)self->_pictureView setHidden:self->_picture == 0];
  [(NSLayoutConstraint *)self->_pictureWidthAnchor setActive:self->_picture != 0];
  if (self->_gregorianBirthday)
  {
    v9 = [(HKMedicalIDPersonSummaryCell *)self _cachedCalendar];
    v10 = [v9 dateFromComponents:self->_gregorianBirthday];

    v11 = [(HKMedicalIDPersonSummaryCell *)self _cachedCalendar];
    v12 = [MEMORY[0x1E695DF00] date];
    v13 = [v11 components:4 fromDate:v10 toDate:v12 options:0];

    v14 = updateSubviewsFromData___ageFormatter;
    v15 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v13, "year")}];
    v16 = [v14 stringFromNumber:v15];

    v17 = MEMORY[0x1E696AEC0];
    v18 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v19 = [v18 localizedStringForKey:@"age_%@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v30 = [v17 stringWithFormat:v19, v16];

    [(UILabel *)self->_birthdateLabel setHidden:0];
  }

  else
  {
    [(UILabel *)self->_birthdateLabel setHidden:1];
    v30 = 0;
  }

  [(UIImageView *)self->_pictureView setImage:self->_picture];
  [(UILabel *)self->_nameLabel setText:self->_name];
  [(UILabel *)self->_birthdateLabel setText:v30];
  if (+[HKOrganDonationConnectionManager shouldShowStoreDemoOrganDonation])
  {
    [(UILabel *)self->_organDonationLabel setHidden:0];
LABEL_12:
    organDonationLabel = self->_organDonationLabel;
    v21 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v22 = v21;
    v23 = @"organ_donor_donate_life_registered";
LABEL_13:
    v24 = [v21 localizedStringForKey:v23 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v25 = [MEMORY[0x1E69DC888] hk_vitalsKeyColor];
    v26 = [(HKMedicalIDPersonSummaryCell *)self stringWithImageNamed:@"heart.fill" withText:v24 andColor:v25];
    [(UILabel *)organDonationLabel setAttributedText:v26];

LABEL_14:
    goto LABEL_21;
  }

  v27 = self->_organDonationLabel;
  if (self->_organDonationStatus)
  {
    [(UILabel *)v27 setHidden:0];
    v28 = [(NSNumber *)self->_organDonationStatus integerValue];
    switch(v28)
    {
      case 2:
        goto LABEL_12;
      case 1:
        organDonationLabel = self->_organDonationLabel;
        v21 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v22 = v21;
        v23 = @"organ_donor_self_reported";
        goto LABEL_13;
      case 0:
        v29 = self->_organDonationLabel;
        v22 = [(HKMedicalIDPersonSummaryCell *)self notOrganDonorString];
        [(UILabel *)v29 setAttributedText:v22];
        goto LABEL_14;
    }
  }

  else
  {
    [(UILabel *)v27 setHidden:1];
    [(UIStackView *)self->_fullContainerView removeArrangedSubview:self->_emergencyAccessLabel];
    [(UIStackView *)self->_labelContainerView addArrangedSubview:self->_emergencyAccessLabel];
  }

LABEL_21:
  [(HKMedicalIDPersonSummaryCell *)self buildEmergencyAccessTableItem];
}

- (id)stringWithImageNamed:(id)a3 withText:(id)a4 andColor:(id)a5
{
  v26[2] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E69DB878];
  v8 = *MEMORY[0x1E69DDD78];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v7 hk_preferredFontForTextStyle:v8];
  v13 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
  v14 = [MEMORY[0x1E69DCAD8] configurationWithFont:v12 scale:1];
  v15 = [MEMORY[0x1E69DCAB8] systemImageNamed:v11 withConfiguration:v14];

  v16 = [v15 imageWithRenderingMode:2];
  [v13 setImage:v16];

  v17 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v13];
  v18 = [v17 mutableCopy];

  v19 = *MEMORY[0x1E69DB650];
  [v18 addAttribute:*MEMORY[0x1E69DB650] value:v9 range:{0, objc_msgSend(v18, "length")}];

  v20 = *MEMORY[0x1E69DB648];
  v25[1] = v19;
  v26[0] = v12;
  v25[0] = v20;
  v21 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v26[1] = v21;
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2];

  v23 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v10 attributes:v22];
  [v18 appendAttributedString:v23];

  return v18;
}

- (id)notOrganDonorString
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = *MEMORY[0x1E69DB648];
  v2 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:*MEMORY[0x1E69DDD78]];
  v11[0] = v2;
  v10[1] = *MEMORY[0x1E69DB650];
  v3 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v11[1] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];

  v5 = objc_alloc(MEMORY[0x1E696AAB0]);
  v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v7 = [v6 localizedStringForKey:@"organ_donor_not_donor" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v8 = [v5 initWithString:v7 attributes:v4];

  return v8;
}

- (id)_cachedCalendar
{
  gregorianCalendar = self->_gregorianCalendar;
  if (!gregorianCalendar)
  {
    v4 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
    v5 = self->_gregorianCalendar;
    self->_gregorianCalendar = v4;

    gregorianCalendar = self->_gregorianCalendar;
  }

  return gregorianCalendar;
}

- (void)buildEmergencyAccessTableItem
{
  if (self->_shareDuringEmergencyCalls || self->_shareOnLockScreen)
  {
    [(UILabel *)self->_emergencyAccessLabel setHidden:0];
    v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v10 = [v3 localizedStringForKey:@"medical_id_sharing_status_lock_screen" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

    if (self->_shareDuringEmergencyCalls)
    {
      v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v5 = [v4 localizedStringForKey:@"medical_id_sharing_status_emergency_calls" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

      if (self->_shareOnLockScreen)
      {
        v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v10 = [v6 localizedStringForKey:@"medical_id_sharing_status_emergency_calls_and_lock_screen" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      }

      else
      {
        v10 = v5;
      }
    }

    v8 = [MEMORY[0x1E69DC888] hk_appKeyColor];
    v9 = [(HKMedicalIDPersonSummaryCell *)self stringWithImageNamed:@"checkmark.circle.fill" withText:v10 andColor:v8];
    [(UILabel *)self->_emergencyAccessLabel setAttributedText:v9];
  }

  else
  {
    emergencyAccessLabel = self->_emergencyAccessLabel;

    [(UILabel *)emergencyAccessLabel setHidden:1];
  }
}

@end