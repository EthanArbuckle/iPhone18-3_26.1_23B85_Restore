@interface HKOrganDonationCallToActionTableViewCell
- (HKOrganDonationCallToActionTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (NSAttributedString)callToActionTextViewString;
- (void)setupConstraints;
- (void)setupSubviews;
@end

@implementation HKOrganDonationCallToActionTableViewCell

- (HKOrganDonationCallToActionTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = HKOrganDonationCallToActionTableViewCell;
  v4 = [(HKOrganDonationCallToActionTableViewCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
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
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [(HKOrganDonationCallToActionTableViewCell *)self setBackgroundColor:systemBackgroundColor];

  v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(HKOrganDonationCallToActionTableViewCell *)self setTitleLabel:v4];

  titleLabel = [(HKOrganDonationCallToActionTableViewCell *)self titleLabel];
  [titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  titleLabel2 = [(HKOrganDonationCallToActionTableViewCell *)self titleLabel];
  [titleLabel2 setNumberOfLines:0];

  v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDDC0]];
  titleLabel3 = [(HKOrganDonationCallToActionTableViewCell *)self titleLabel];
  [titleLabel3 setFont:v7];

  v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v10 = [v9 localizedStringForKey:@"OD_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  titleLabel4 = [(HKOrganDonationCallToActionTableViewCell *)self titleLabel];
  [titleLabel4 setText:v10];

  contentView = [(HKOrganDonationCallToActionTableViewCell *)self contentView];
  titleLabel5 = [(HKOrganDonationCallToActionTableViewCell *)self titleLabel];
  [contentView addSubview:titleLabel5];

  v14 = objc_alloc(MEMORY[0x1E69DD250]);
  v15 = [v14 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(HKOrganDonationCallToActionTableViewCell *)self setSpacerView:v15];

  spacerView = [(HKOrganDonationCallToActionTableViewCell *)self spacerView];
  [spacerView setTranslatesAutoresizingMaskIntoConstraints:0];

  tableSeparatorColor = [MEMORY[0x1E69DC888] tableSeparatorColor];
  spacerView2 = [(HKOrganDonationCallToActionTableViewCell *)self spacerView];
  [spacerView2 setBackgroundColor:tableSeparatorColor];

  contentView2 = [(HKOrganDonationCallToActionTableViewCell *)self contentView];
  spacerView3 = [(HKOrganDonationCallToActionTableViewCell *)self spacerView];
  [contentView2 addSubview:spacerView3];

  v21 = objc_alloc_init(MEMORY[0x1E69DD168]);
  [(HKOrganDonationCallToActionTableViewCell *)self setCallToActionTextView:v21];

  callToActionTextView = [(HKOrganDonationCallToActionTableViewCell *)self callToActionTextView];
  [callToActionTextView setDelegate:self];

  callToActionTextView2 = [(HKOrganDonationCallToActionTableViewCell *)self callToActionTextView];
  [callToActionTextView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  callToActionTextViewString = [(HKOrganDonationCallToActionTableViewCell *)self callToActionTextViewString];
  callToActionTextView3 = [(HKOrganDonationCallToActionTableViewCell *)self callToActionTextView];
  [callToActionTextView3 setAttributedText:callToActionTextViewString];

  callToActionTextView4 = [(HKOrganDonationCallToActionTableViewCell *)self callToActionTextView];
  [callToActionTextView4 setScrollEnabled:0];

  callToActionTextView5 = [(HKOrganDonationCallToActionTableViewCell *)self callToActionTextView];
  [callToActionTextView5 setUserInteractionEnabled:1];

  callToActionTextView6 = [(HKOrganDonationCallToActionTableViewCell *)self callToActionTextView];
  [callToActionTextView6 _setInteractiveTextSelectionDisabled:1];

  callToActionTextView7 = [(HKOrganDonationCallToActionTableViewCell *)self callToActionTextView];
  [callToActionTextView7 setDataDetectorTypes:2];

  labelColor = [MEMORY[0x1E69DC888] labelColor];
  callToActionTextView8 = [(HKOrganDonationCallToActionTableViewCell *)self callToActionTextView];
  [callToActionTextView8 setTextColor:labelColor];

  secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  callToActionTextView9 = [(HKOrganDonationCallToActionTableViewCell *)self callToActionTextView];
  [callToActionTextView9 setBackgroundColor:secondarySystemBackgroundColor];

  contentView3 = [(HKOrganDonationCallToActionTableViewCell *)self contentView];
  callToActionTextView10 = [(HKOrganDonationCallToActionTableViewCell *)self callToActionTextView];
  [contentView3 addSubview:callToActionTextView10];

  v36 = MEMORY[0x1E69DC738];
  v37 = HKHealthKeyColor();
  v38 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v39 = [v38 localizedStringForKey:@"OD_SIGN_UP_WITH_DL" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v40 = [v36 hk_roundRectButtonTintedWithColor:v37 title:v39 target:0 action:0];
  [(HKOrganDonationCallToActionTableViewCell *)self setActionButton:v40];

  actionButton = [(HKOrganDonationCallToActionTableViewCell *)self actionButton];
  [actionButton setTranslatesAutoresizingMaskIntoConstraints:0];

  actionButton2 = [(HKOrganDonationCallToActionTableViewCell *)self actionButton];
  titleLabel6 = [actionButton2 titleLabel];
  [titleLabel6 setNumberOfLines:0];

  contentView4 = [(HKOrganDonationCallToActionTableViewCell *)self contentView];
  actionButton3 = [(HKOrganDonationCallToActionTableViewCell *)self actionButton];
  [contentView4 addSubview:actionButton3];
}

- (void)setupConstraints
{
  titleLabel = [(HKOrganDonationCallToActionTableViewCell *)self titleLabel];
  firstBaselineAnchor = [titleLabel firstBaselineAnchor];
  contentView = [(HKOrganDonationCallToActionTableViewCell *)self contentView];
  topAnchor = [contentView topAnchor];
  titleLabel2 = [(HKOrganDonationCallToActionTableViewCell *)self titleLabel];
  font = [titleLabel2 font];
  [font _scaledValueForValue:60.0];
  v9 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:?];
  [v9 setActive:1];

  titleLabel3 = [(HKOrganDonationCallToActionTableViewCell *)self titleLabel];
  leadingAnchor = [titleLabel3 leadingAnchor];
  contentView2 = [(HKOrganDonationCallToActionTableViewCell *)self contentView];
  leadingAnchor2 = [contentView2 leadingAnchor];
  v14 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  [v14 setActive:1];

  contentView3 = [(HKOrganDonationCallToActionTableViewCell *)self contentView];
  trailingAnchor = [contentView3 trailingAnchor];
  titleLabel4 = [(HKOrganDonationCallToActionTableViewCell *)self titleLabel];
  trailingAnchor2 = [titleLabel4 trailingAnchor];
  v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:16.0];
  [v19 setActive:1];

  spacerView = [(HKOrganDonationCallToActionTableViewCell *)self spacerView];
  heightAnchor = [spacerView heightAnchor];
  v22 = [heightAnchor constraintEqualToConstant:0.5];
  [v22 setActive:1];

  spacerView2 = [(HKOrganDonationCallToActionTableViewCell *)self spacerView];
  topAnchor2 = [spacerView2 topAnchor];
  titleLabel5 = [(HKOrganDonationCallToActionTableViewCell *)self titleLabel];
  lastBaselineAnchor = [titleLabel5 lastBaselineAnchor];
  v27 = [topAnchor2 constraintEqualToAnchor:lastBaselineAnchor constant:18.0];
  [v27 setActive:1];

  spacerView3 = [(HKOrganDonationCallToActionTableViewCell *)self spacerView];
  leadingAnchor3 = [spacerView3 leadingAnchor];
  contentView4 = [(HKOrganDonationCallToActionTableViewCell *)self contentView];
  leadingAnchor4 = [contentView4 leadingAnchor];
  v32 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:16.0];
  [v32 setActive:1];

  contentView5 = [(HKOrganDonationCallToActionTableViewCell *)self contentView];
  trailingAnchor3 = [contentView5 trailingAnchor];
  spacerView4 = [(HKOrganDonationCallToActionTableViewCell *)self spacerView];
  trailingAnchor4 = [spacerView4 trailingAnchor];
  v37 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:16.0];
  [v37 setActive:1];

  callToActionTextView = [(HKOrganDonationCallToActionTableViewCell *)self callToActionTextView];
  firstBaselineAnchor2 = [callToActionTextView firstBaselineAnchor];
  titleLabel6 = [(HKOrganDonationCallToActionTableViewCell *)self titleLabel];
  lastBaselineAnchor2 = [titleLabel6 lastBaselineAnchor];
  callToActionTextView2 = [(HKOrganDonationCallToActionTableViewCell *)self callToActionTextView];
  font2 = [callToActionTextView2 font];
  [font2 _scaledValueForValue:45.0];
  v44 = [firstBaselineAnchor2 constraintEqualToAnchor:lastBaselineAnchor2 constant:?];
  [v44 setActive:1];

  callToActionTextView3 = [(HKOrganDonationCallToActionTableViewCell *)self callToActionTextView];
  leadingAnchor5 = [callToActionTextView3 leadingAnchor];
  contentView6 = [(HKOrganDonationCallToActionTableViewCell *)self contentView];
  leadingAnchor6 = [contentView6 leadingAnchor];
  v49 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:16.0];
  [v49 setActive:1];

  contentView7 = [(HKOrganDonationCallToActionTableViewCell *)self contentView];
  trailingAnchor5 = [contentView7 trailingAnchor];
  callToActionTextView4 = [(HKOrganDonationCallToActionTableViewCell *)self callToActionTextView];
  trailingAnchor6 = [callToActionTextView4 trailingAnchor];
  v54 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:16.0];
  [v54 setActive:1];

  actionButton = [(HKOrganDonationCallToActionTableViewCell *)self actionButton];
  topAnchor3 = [actionButton topAnchor];
  callToActionTextView5 = [(HKOrganDonationCallToActionTableViewCell *)self callToActionTextView];
  lastBaselineAnchor3 = [callToActionTextView5 lastBaselineAnchor];
  v59 = [topAnchor3 constraintEqualToAnchor:lastBaselineAnchor3 constant:33.0];
  [v59 setActive:1];

  actionButton2 = [(HKOrganDonationCallToActionTableViewCell *)self actionButton];
  leadingAnchor7 = [actionButton2 leadingAnchor];
  contentView8 = [(HKOrganDonationCallToActionTableViewCell *)self contentView];
  leadingAnchor8 = [contentView8 leadingAnchor];
  v64 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8 constant:16.0];
  [v64 setActive:1];

  contentView9 = [(HKOrganDonationCallToActionTableViewCell *)self contentView];
  trailingAnchor7 = [contentView9 trailingAnchor];
  actionButton3 = [(HKOrganDonationCallToActionTableViewCell *)self actionButton];
  trailingAnchor8 = [actionButton3 trailingAnchor];
  v69 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8 constant:16.0];
  [v69 setActive:1];

  contentView10 = [(HKOrganDonationCallToActionTableViewCell *)self contentView];
  bottomAnchor = [contentView10 bottomAnchor];
  actionButton4 = [(HKOrganDonationCallToActionTableViewCell *)self actionButton];
  lastBaselineAnchor4 = [actionButton4 lastBaselineAnchor];
  v73 = [bottomAnchor constraintEqualToAnchor:lastBaselineAnchor4 constant:48.0];
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
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  v31[0] = labelColor;
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