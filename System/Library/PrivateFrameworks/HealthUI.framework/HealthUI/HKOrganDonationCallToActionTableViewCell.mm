@interface HKOrganDonationCallToActionTableViewCell
- (HKOrganDonationCallToActionTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (NSAttributedString)callToActionTextViewString;
- (void)setupConstraints;
- (void)setupSubviews;
@end

@implementation HKOrganDonationCallToActionTableViewCell

- (HKOrganDonationCallToActionTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = HKOrganDonationCallToActionTableViewCell;
  v4 = [(HKOrganDonationCallToActionTableViewCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(HKOrganDonationCallToActionTableViewCell *)v4 setupSubviews];
    [(HKOrganDonationCallToActionTableViewCell *)v5 setupConstraints];
  }

  return v5;
}

- (void)setupSubviews
{
  v3 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [(HKOrganDonationCallToActionTableViewCell *)self setBackgroundColor:v3];

  v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(HKOrganDonationCallToActionTableViewCell *)self setTitleLabel:v4];

  v5 = [(HKOrganDonationCallToActionTableViewCell *)self titleLabel];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(HKOrganDonationCallToActionTableViewCell *)self titleLabel];
  [v6 setNumberOfLines:0];

  v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDDC0]];
  v8 = [(HKOrganDonationCallToActionTableViewCell *)self titleLabel];
  [v8 setFont:v7];

  v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v10 = [v9 localizedStringForKey:@"OD_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v11 = [(HKOrganDonationCallToActionTableViewCell *)self titleLabel];
  [v11 setText:v10];

  v12 = [(HKOrganDonationCallToActionTableViewCell *)self contentView];
  v13 = [(HKOrganDonationCallToActionTableViewCell *)self titleLabel];
  [v12 addSubview:v13];

  v14 = objc_alloc(MEMORY[0x1E69DD250]);
  v15 = [v14 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(HKOrganDonationCallToActionTableViewCell *)self setSpacerView:v15];

  v16 = [(HKOrganDonationCallToActionTableViewCell *)self spacerView];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];

  v17 = [MEMORY[0x1E69DC888] tableSeparatorColor];
  v18 = [(HKOrganDonationCallToActionTableViewCell *)self spacerView];
  [v18 setBackgroundColor:v17];

  v19 = [(HKOrganDonationCallToActionTableViewCell *)self contentView];
  v20 = [(HKOrganDonationCallToActionTableViewCell *)self spacerView];
  [v19 addSubview:v20];

  v21 = objc_alloc_init(MEMORY[0x1E69DD168]);
  [(HKOrganDonationCallToActionTableViewCell *)self setCallToActionTextView:v21];

  v22 = [(HKOrganDonationCallToActionTableViewCell *)self callToActionTextView];
  [v22 setDelegate:self];

  v23 = [(HKOrganDonationCallToActionTableViewCell *)self callToActionTextView];
  [v23 setTranslatesAutoresizingMaskIntoConstraints:0];

  v24 = [(HKOrganDonationCallToActionTableViewCell *)self callToActionTextViewString];
  v25 = [(HKOrganDonationCallToActionTableViewCell *)self callToActionTextView];
  [v25 setAttributedText:v24];

  v26 = [(HKOrganDonationCallToActionTableViewCell *)self callToActionTextView];
  [v26 setScrollEnabled:0];

  v27 = [(HKOrganDonationCallToActionTableViewCell *)self callToActionTextView];
  [v27 setUserInteractionEnabled:1];

  v28 = [(HKOrganDonationCallToActionTableViewCell *)self callToActionTextView];
  [v28 _setInteractiveTextSelectionDisabled:1];

  v29 = [(HKOrganDonationCallToActionTableViewCell *)self callToActionTextView];
  [v29 setDataDetectorTypes:2];

  v30 = [MEMORY[0x1E69DC888] labelColor];
  v31 = [(HKOrganDonationCallToActionTableViewCell *)self callToActionTextView];
  [v31 setTextColor:v30];

  v32 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  v33 = [(HKOrganDonationCallToActionTableViewCell *)self callToActionTextView];
  [v33 setBackgroundColor:v32];

  v34 = [(HKOrganDonationCallToActionTableViewCell *)self contentView];
  v35 = [(HKOrganDonationCallToActionTableViewCell *)self callToActionTextView];
  [v34 addSubview:v35];

  v36 = MEMORY[0x1E69DC738];
  v37 = HKHealthKeyColor();
  v38 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v39 = [v38 localizedStringForKey:@"OD_SIGN_UP_WITH_DL" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v40 = [v36 hk_roundRectButtonTintedWithColor:v37 title:v39 target:0 action:0];
  [(HKOrganDonationCallToActionTableViewCell *)self setActionButton:v40];

  v41 = [(HKOrganDonationCallToActionTableViewCell *)self actionButton];
  [v41 setTranslatesAutoresizingMaskIntoConstraints:0];

  v42 = [(HKOrganDonationCallToActionTableViewCell *)self actionButton];
  v43 = [v42 titleLabel];
  [v43 setNumberOfLines:0];

  v45 = [(HKOrganDonationCallToActionTableViewCell *)self contentView];
  v44 = [(HKOrganDonationCallToActionTableViewCell *)self actionButton];
  [v45 addSubview:v44];
}

- (void)setupConstraints
{
  v3 = [(HKOrganDonationCallToActionTableViewCell *)self titleLabel];
  v4 = [v3 firstBaselineAnchor];
  v5 = [(HKOrganDonationCallToActionTableViewCell *)self contentView];
  v6 = [v5 topAnchor];
  v7 = [(HKOrganDonationCallToActionTableViewCell *)self titleLabel];
  v8 = [v7 font];
  [v8 _scaledValueForValue:60.0];
  v9 = [v4 constraintEqualToAnchor:v6 constant:?];
  [v9 setActive:1];

  v10 = [(HKOrganDonationCallToActionTableViewCell *)self titleLabel];
  v11 = [v10 leadingAnchor];
  v12 = [(HKOrganDonationCallToActionTableViewCell *)self contentView];
  v13 = [v12 leadingAnchor];
  v14 = [v11 constraintEqualToAnchor:v13 constant:16.0];
  [v14 setActive:1];

  v15 = [(HKOrganDonationCallToActionTableViewCell *)self contentView];
  v16 = [v15 trailingAnchor];
  v17 = [(HKOrganDonationCallToActionTableViewCell *)self titleLabel];
  v18 = [v17 trailingAnchor];
  v19 = [v16 constraintEqualToAnchor:v18 constant:16.0];
  [v19 setActive:1];

  v20 = [(HKOrganDonationCallToActionTableViewCell *)self spacerView];
  v21 = [v20 heightAnchor];
  v22 = [v21 constraintEqualToConstant:0.5];
  [v22 setActive:1];

  v23 = [(HKOrganDonationCallToActionTableViewCell *)self spacerView];
  v24 = [v23 topAnchor];
  v25 = [(HKOrganDonationCallToActionTableViewCell *)self titleLabel];
  v26 = [v25 lastBaselineAnchor];
  v27 = [v24 constraintEqualToAnchor:v26 constant:18.0];
  [v27 setActive:1];

  v28 = [(HKOrganDonationCallToActionTableViewCell *)self spacerView];
  v29 = [v28 leadingAnchor];
  v30 = [(HKOrganDonationCallToActionTableViewCell *)self contentView];
  v31 = [v30 leadingAnchor];
  v32 = [v29 constraintEqualToAnchor:v31 constant:16.0];
  [v32 setActive:1];

  v33 = [(HKOrganDonationCallToActionTableViewCell *)self contentView];
  v34 = [v33 trailingAnchor];
  v35 = [(HKOrganDonationCallToActionTableViewCell *)self spacerView];
  v36 = [v35 trailingAnchor];
  v37 = [v34 constraintEqualToAnchor:v36 constant:16.0];
  [v37 setActive:1];

  v38 = [(HKOrganDonationCallToActionTableViewCell *)self callToActionTextView];
  v39 = [v38 firstBaselineAnchor];
  v40 = [(HKOrganDonationCallToActionTableViewCell *)self titleLabel];
  v41 = [v40 lastBaselineAnchor];
  v42 = [(HKOrganDonationCallToActionTableViewCell *)self callToActionTextView];
  v43 = [v42 font];
  [v43 _scaledValueForValue:45.0];
  v44 = [v39 constraintEqualToAnchor:v41 constant:?];
  [v44 setActive:1];

  v45 = [(HKOrganDonationCallToActionTableViewCell *)self callToActionTextView];
  v46 = [v45 leadingAnchor];
  v47 = [(HKOrganDonationCallToActionTableViewCell *)self contentView];
  v48 = [v47 leadingAnchor];
  v49 = [v46 constraintEqualToAnchor:v48 constant:16.0];
  [v49 setActive:1];

  v50 = [(HKOrganDonationCallToActionTableViewCell *)self contentView];
  v51 = [v50 trailingAnchor];
  v52 = [(HKOrganDonationCallToActionTableViewCell *)self callToActionTextView];
  v53 = [v52 trailingAnchor];
  v54 = [v51 constraintEqualToAnchor:v53 constant:16.0];
  [v54 setActive:1];

  v55 = [(HKOrganDonationCallToActionTableViewCell *)self actionButton];
  v56 = [v55 topAnchor];
  v57 = [(HKOrganDonationCallToActionTableViewCell *)self callToActionTextView];
  v58 = [v57 lastBaselineAnchor];
  v59 = [v56 constraintEqualToAnchor:v58 constant:33.0];
  [v59 setActive:1];

  v60 = [(HKOrganDonationCallToActionTableViewCell *)self actionButton];
  v61 = [v60 leadingAnchor];
  v62 = [(HKOrganDonationCallToActionTableViewCell *)self contentView];
  v63 = [v62 leadingAnchor];
  v64 = [v61 constraintEqualToAnchor:v63 constant:16.0];
  [v64 setActive:1];

  v65 = [(HKOrganDonationCallToActionTableViewCell *)self contentView];
  v66 = [v65 trailingAnchor];
  v67 = [(HKOrganDonationCallToActionTableViewCell *)self actionButton];
  v68 = [v67 trailingAnchor];
  v69 = [v66 constraintEqualToAnchor:v68 constant:16.0];
  [v69 setActive:1];

  v74 = [(HKOrganDonationCallToActionTableViewCell *)self contentView];
  v70 = [v74 bottomAnchor];
  v71 = [(HKOrganDonationCallToActionTableViewCell *)self actionButton];
  v72 = [v71 lastBaselineAnchor];
  v73 = [v70 constraintEqualToAnchor:v72 constant:48.0];
  [v73 setActive:1];
}

- (NSAttributedString)callToActionTextViewString
{
  v31[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v4 = [v3 localizedStringForKey:@"OD_BODY_CONCATENATION_RULE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v6 = [v5 localizedStringForKey:@"OD_BODY" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v8 = [v7 localizedStringForKey:@"OD_LEARN_MORE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v9 = [v2 stringWithFormat:v4, v6, v8];

  v10 = objc_alloc(MEMORY[0x1E696AD40]);
  v11 = *MEMORY[0x1E69DB650];
  v30[0] = *MEMORY[0x1E69DB650];
  v12 = [MEMORY[0x1E69DC888] labelColor];
  v31[0] = v12;
  v13 = *MEMORY[0x1E69DB648];
  v30[1] = *MEMORY[0x1E69DB648];
  v14 = *MEMORY[0x1E69DDCF8];
  v15 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v31[1] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:2];
  v17 = [v10 initWithString:v9 attributes:v16];

  v18 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v19 = [v18 localizedStringForKey:@"OD_LEARN_MORE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v20 = [v9 rangeOfString:v19];
  v22 = v21;

  if (v20 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v28[0] = v11;
    v23 = HKHealthKeyColor();
    v29[0] = v23;
    v28[1] = *MEMORY[0x1E69DB670];
    v24 = [MEMORY[0x1E695DFF8] URLWithString:@"OD_LEARN_MORE"];
    v29[1] = v24;
    v28[2] = v13;
    v25 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v14];
    v29[2] = v25;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:3];
    [v17 setAttributes:v26 range:{v20, v22}];
  }

  return v17;
}

@end