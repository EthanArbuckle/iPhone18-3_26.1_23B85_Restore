@interface HKFitnessDiagnosticsPrivacyDetailsCell
- (HKFitnessDiagnosticsPrivacyDetailsCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)_attributedContentsTextViewStringForCurrentContentSizeCategory;
- (id)_attributedStringForBullet;
- (id)_attributedStringForBulletAtIndex:(int64_t)index;
- (id)_attributedTitleString;
- (id)_bulletContentParagraphStyle;
- (id)_createContentsTextViewWithLayoutManager:(id)manager;
- (id)_localizedBulletContentStringForBulletAtIndex:(int64_t)index;
- (id)_localizedTitleString;
- (id)_newLineAttributedString;
- (id)_titleParagraphStyle;
- (void)_setUpConstraints;
- (void)_setUpSubviews;
- (void)_updateForCurrentContentSizeCategory;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation HKFitnessDiagnosticsPrivacyDetailsCell

- (HKFitnessDiagnosticsPrivacyDetailsCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = HKFitnessDiagnosticsPrivacyDetailsCell;
  v4 = [(HKFitnessDiagnosticsPrivacyDetailsCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(HKFitnessDiagnosticsPrivacyDetailsCell *)v4 setPreservesSuperviewLayoutMargins:1];
    [(HKFitnessDiagnosticsPrivacyDetailsCell *)v5 setSelectionStyle:0];
    [(HKFitnessDiagnosticsPrivacyDetailsCell *)v5 _setUpSubviews];
    [(HKFitnessDiagnosticsPrivacyDetailsCell *)v5 _setUpConstraints];
    [(HKFitnessDiagnosticsPrivacyDetailsCell *)v5 _updateForCurrentContentSizeCategory];
  }

  return v5;
}

- (void)_setUpSubviews
{
  contentView = [(HKFitnessDiagnosticsPrivacyDetailsCell *)self contentView];
  [contentView setPreservesSuperviewLayoutMargins:1];
  v3 = objc_alloc_init(_HKFitnessDiagnosticsPrivacyBulletedListLayoutManager);
  bulletLayoutManager = self->_bulletLayoutManager;
  self->_bulletLayoutManager = v3;
  v5 = v3;

  v6 = [(HKFitnessDiagnosticsPrivacyDetailsCell *)self _createContentsTextViewWithLayoutManager:v5];
  [contentView addSubview:v6];
  contentsTextView = self->_contentsTextView;
  self->_contentsTextView = v6;
}

- (void)_setUpConstraints
{
  contentView = [(HKFitnessDiagnosticsPrivacyDetailsCell *)self contentView];
  layoutMarginsGuide = [contentView layoutMarginsGuide];
  contentsTextView = [(HKFitnessDiagnosticsPrivacyDetailsCell *)self contentsTextView];
  leadingAnchor = [contentsTextView leadingAnchor];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v7 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v7 setActive:1];

  trailingAnchor = [contentsTextView trailingAnchor];
  trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
  v10 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v10 setActive:1];

  firstBaselineAnchor = [contentsTextView firstBaselineAnchor];
  topAnchor = [contentView topAnchor];
  v13 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor];

  [(NSLayoutConstraint *)v13 setActive:1];
  superviewTopToContentsTextViewFirstBaselineConstraint = self->_superviewTopToContentsTextViewFirstBaselineConstraint;
  self->_superviewTopToContentsTextViewFirstBaselineConstraint = v13;
  v15 = v13;

  bottomAnchor = [contentView bottomAnchor];
  lastBaselineAnchor = [contentsTextView lastBaselineAnchor];
  v18 = [bottomAnchor constraintEqualToAnchor:lastBaselineAnchor];

  [(NSLayoutConstraint *)v18 setActive:1];
  contentsTextViewLastBaselineToSuperviewBottomConstraint = self->_contentsTextViewLastBaselineToSuperviewBottomConstraint;
  self->_contentsTextViewLastBaselineToSuperviewBottomConstraint = v18;
}

- (id)_createContentsTextViewWithLayoutManager:(id)manager
{
  v3 = MEMORY[0x1E69DB850];
  managerCopy = manager;
  v5 = objc_alloc_init(v3);
  [v5 addLayoutManager:managerCopy];
  v6 = objc_alloc(MEMORY[0x1E69DB800]);
  v7 = [v6 initWithSize:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  [managerCopy addTextContainer:v7];

  v8 = objc_alloc(MEMORY[0x1E69DD168]);
  v9 = [v8 initWithFrame:v7 textContainer:{*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)}];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v9 setBackgroundColor:clearColor];

  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [v9 setTextColor:labelColor];

  [v9 setEditable:0];
  [v9 setScrollEnabled:0];
  textContainer = [v9 textContainer];
  [textContainer setLineFragmentPadding:0.0];

  [v9 setTextContainerInset:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v9 setUserInteractionEnabled:0];

  return v9;
}

- (id)_attributedContentsTextViewStringForCurrentContentSizeCategory
{
  v3 = objc_alloc(MEMORY[0x1E696AD40]);
  _attributedTitleString = [(HKFitnessDiagnosticsPrivacyDetailsCell *)self _attributedTitleString];
  v5 = [v3 initWithAttributedString:_attributedTitleString];

  _newLineAttributedString = [(HKFitnessDiagnosticsPrivacyDetailsCell *)self _newLineAttributedString];
  [v5 appendAttributedString:_newLineAttributedString];

  for (i = 0; i != 7; ++i)
  {
    v8 = [(HKFitnessDiagnosticsPrivacyDetailsCell *)self _attributedStringForBulletAtIndex:i];
    [v5 appendAttributedString:v8];

    _newLineAttributedString2 = [(HKFitnessDiagnosticsPrivacyDetailsCell *)self _newLineAttributedString];
    [v5 appendAttributedString:_newLineAttributedString2];
  }

  return v5;
}

- (id)_newLineAttributedString
{
  v2 = objc_alloc(MEMORY[0x1E696AAB0]);

  return [v2 initWithString:@"\n"];
}

- (id)_localizedTitleString
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"DATA_COLLECTION_BODY_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  return v3;
}

- (id)_attributedTitleString
{
  v11[3] = *MEMORY[0x1E69E9840];
  v10[0] = *MEMORY[0x1E69DB648];
  _bodyEmph = [(HKFitnessDiagnosticsPrivacyDetailsCell *)self _bodyEmph];
  v11[0] = _bodyEmph;
  v10[1] = *MEMORY[0x1E69DB688];
  _titleParagraphStyle = [(HKFitnessDiagnosticsPrivacyDetailsCell *)self _titleParagraphStyle];
  v11[1] = _titleParagraphStyle;
  v10[2] = *MEMORY[0x1E69DB650];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  v11[2] = labelColor;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];

  _localizedTitleString = [(HKFitnessDiagnosticsPrivacyDetailsCell *)self _localizedTitleString];
  v8 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:_localizedTitleString attributes:v6];

  return v8;
}

- (id)_titleParagraphStyle
{
  _bulletContentFont = [(HKFitnessDiagnosticsPrivacyDetailsCell *)self _bulletContentFont];
  v3 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  [_bulletContentFont _scaledValueForValue:8.0];
  [v3 setParagraphSpacing:?];

  return v3;
}

- (id)_localizedBulletContentStringForBulletAtIndex:(int64_t)index
{
  if (index >= 7)
  {
    [(HKFitnessDiagnosticsPrivacyDetailsCell *)a2 _localizedBulletContentStringForBulletAtIndex:?];
  }

  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DATA_COLLECTION_BODY_BULLET_%ld", index + 1];
  v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v6 = [v5 localizedStringForKey:v4 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  return v6;
}

- (id)_attributedStringForBulletAtIndex:(int64_t)index
{
  v14[4] = *MEMORY[0x1E69E9840];
  v14[0] = MEMORY[0x1E695E118];
  v5 = *MEMORY[0x1E69DB648];
  v13[0] = @"_IsBulletedAttributeName";
  v13[1] = v5;
  _bulletContentFont = [(HKFitnessDiagnosticsPrivacyDetailsCell *)self _bulletContentFont];
  v14[1] = _bulletContentFont;
  v13[2] = *MEMORY[0x1E69DB688];
  _bulletContentParagraphStyle = [(HKFitnessDiagnosticsPrivacyDetailsCell *)self _bulletContentParagraphStyle];
  v14[2] = _bulletContentParagraphStyle;
  v13[3] = *MEMORY[0x1E69DB650];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  v14[3] = labelColor;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:4];

  v10 = [(HKFitnessDiagnosticsPrivacyDetailsCell *)self _localizedBulletContentStringForBulletAtIndex:index];
  v11 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v10 attributes:v9];

  return v11;
}

- (id)_bulletContentParagraphStyle
{
  _bulletContentFont = [(HKFitnessDiagnosticsPrivacyDetailsCell *)self _bulletContentFont];
  _attributedStringForBullet = [(HKFitnessDiagnosticsPrivacyDetailsCell *)self _attributedStringForBullet];
  [_attributedStringForBullet size];
  v6 = v5 + 14.0;
  v7 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  [v7 setFirstLineHeadIndent:v6];
  [v7 setHeadIndent:v6];
  [_bulletContentFont _scaledValueForValue:34.0];
  v9 = v8;
  [_bulletContentFont lineHeight];
  [v7 setParagraphSpacingBefore:v9 - v10];

  return v7;
}

- (id)_attributedStringForBullet
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = *MEMORY[0x1E69DB648];
  _bulletFont = [(HKFitnessDiagnosticsPrivacyDetailsCell *)self _bulletFont];
  v8[0] = _bulletFont;
  v7[1] = *MEMORY[0x1E69DB650];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  v8[1] = labelColor;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"⦁" attributes:v4];

  return v5;
}

- (void)_updateForCurrentContentSizeCategory
{
  _bodyEmph = [(HKFitnessDiagnosticsPrivacyDetailsCell *)self _bodyEmph];
  [_bodyEmph _scaledValueForValue:36.0];
  v5 = v4;
  superviewTopToContentsTextViewFirstBaselineConstraint = [(HKFitnessDiagnosticsPrivacyDetailsCell *)self superviewTopToContentsTextViewFirstBaselineConstraint];
  [superviewTopToContentsTextViewFirstBaselineConstraint setConstant:v5];

  _bulletContentFont = [(HKFitnessDiagnosticsPrivacyDetailsCell *)self _bulletContentFont];
  [_bulletContentFont _scaledValueForValue:32.0];
  v9 = v8;
  contentsTextViewLastBaselineToSuperviewBottomConstraint = [(HKFitnessDiagnosticsPrivacyDetailsCell *)self contentsTextViewLastBaselineToSuperviewBottomConstraint];
  [contentsTextViewLastBaselineToSuperviewBottomConstraint setConstant:v9];

  _attributedStringForBullet = [(HKFitnessDiagnosticsPrivacyDetailsCell *)self _attributedStringForBullet];
  bulletLayoutManager = [(HKFitnessDiagnosticsPrivacyDetailsCell *)self bulletLayoutManager];
  [bulletLayoutManager setBullet:_attributedStringForBullet];

  _attributedContentsTextViewStringForCurrentContentSizeCategory = [(HKFitnessDiagnosticsPrivacyDetailsCell *)self _attributedContentsTextViewStringForCurrentContentSizeCategory];
  contentsTextView = [(HKFitnessDiagnosticsPrivacyDetailsCell *)self contentsTextView];
  [contentsTextView setAttributedText:_attributedContentsTextViewStringForCurrentContentSizeCategory];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = HKFitnessDiagnosticsPrivacyDetailsCell;
  [(HKFitnessDiagnosticsPrivacyDetailsCell *)&v9 traitCollectionDidChange:changeCopy];
  if (changeCopy)
  {
    traitCollection = [(HKFitnessDiagnosticsPrivacyDetailsCell *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];
    v8 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

    if ((v8 & 1) == 0)
    {
      [(HKFitnessDiagnosticsPrivacyDetailsCell *)self _updateForCurrentContentSizeCategory];
    }
  }
}

- (void)_localizedBulletContentStringForBulletAtIndex:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKFitnessDiagnosticsPrivacyDetailsCell.m" lineNumber:153 description:{@"Invalid parameter not satisfying: %@", @"index >= 0 && index < _BulletCount"}];
}

@end