@interface HKOrganDonationMoreAboutPrivacyViewController
- (void)_updateForCurrentSizeCategory;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation HKOrganDonationMoreAboutPrivacyViewController

- (void)viewDidLoad
{
  v26.receiver = self;
  v26.super_class = HKOrganDonationMoreAboutPrivacyViewController;
  [(HKOrganDonationMoreAboutPrivacyViewController *)&v26 viewDidLoad];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  view = [(HKOrganDonationMoreAboutPrivacyViewController *)self view];
  [view setBackgroundColor:systemBackgroundColor];

  v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_doneButtonTapped_];
  navigationItem = [(HKOrganDonationMoreAboutPrivacyViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v5];

  v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v8 = [v7 localizedStringForKey:@"OD_PRIVACY_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  [(HKOrganDonationMoreAboutPrivacyViewController *)self setTitle:v8];

  v9 = objc_alloc_init(MEMORY[0x1E69DD168]);
  textView = self->_textView;
  self->_textView = v9;

  [(UITextView *)self->_textView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UITextView *)self->_textView setEditable:0];
  [(UITextView *)self->_textView setSelectable:0];
  view2 = [(HKOrganDonationMoreAboutPrivacyViewController *)self view];
  [view2 addSubview:self->_textView];

  widthAnchor = [(UITextView *)self->_textView widthAnchor];
  v13 = [widthAnchor constraintEqualToConstant:308.0];
  [v13 setActive:1];

  centerXAnchor = [(UITextView *)self->_textView centerXAnchor];
  view3 = [(HKOrganDonationMoreAboutPrivacyViewController *)self view];
  centerXAnchor2 = [view3 centerXAnchor];
  v17 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v17 setActive:1];

  topAnchor = [(UITextView *)self->_textView topAnchor];
  view4 = [(HKOrganDonationMoreAboutPrivacyViewController *)self view];
  topAnchor2 = [view4 topAnchor];
  v21 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v21 setActive:1];

  bottomAnchor = [(UITextView *)self->_textView bottomAnchor];
  view5 = [(HKOrganDonationMoreAboutPrivacyViewController *)self view];
  bottomAnchor2 = [view5 bottomAnchor];
  v25 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v25 setActive:1];

  [(HKOrganDonationMoreAboutPrivacyViewController *)self _updateForCurrentSizeCategory];
}

- (void)_updateForCurrentSizeCategory
{
  v18[3] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v3 _scaledValueForValue:22.0];
  v5 = v4;
  [v3 _scaledValueForValue:32.0];
  v7 = v6 - v5;
  defaultParagraphStyle = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
  v9 = [defaultParagraphStyle mutableCopy];

  [v9 setMinimumLineHeight:v5];
  [v9 setParagraphSpacing:v7];
  [v9 setParagraphSpacingBefore:0.0];
  [v9 setAlignment:4];
  v10 = *MEMORY[0x1E69DB688];
  v17[0] = *MEMORY[0x1E69DB648];
  v17[1] = v10;
  v18[0] = v3;
  v18[1] = v9;
  v17[2] = *MEMORY[0x1E69DB650];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  v18[2] = labelColor;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:3];

  v13 = objc_alloc(MEMORY[0x1E696AAB0]);
  v14 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v15 = [v14 localizedStringForKey:@"OD_MORE_ABOUT_PRIVACY_BODY" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v16 = [v13 initWithString:v15 attributes:v12];

  [(UITextView *)self->_textView setAttributedText:v16];
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = HKOrganDonationMoreAboutPrivacyViewController;
  [(HKOrganDonationMoreAboutPrivacyViewController *)&v6 viewWillAppear:appear];
  textView = self->_textView;
  [(UITextView *)textView contentInset];
  [(UITextView *)textView setContentOffset:0.0, -v5];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = HKOrganDonationMoreAboutPrivacyViewController;
  [(HKOrganDonationMoreAboutPrivacyViewController *)&v9 traitCollectionDidChange:changeCopy];
  if (changeCopy)
  {
    traitCollection = [(HKOrganDonationMoreAboutPrivacyViewController *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];
    v8 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

    if ((v8 & 1) == 0)
    {
      [(HKOrganDonationMoreAboutPrivacyViewController *)self _updateForCurrentSizeCategory];
    }
  }
}

@end