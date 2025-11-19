@interface HKClinicalAuthorizationPrivacyDetailsCell
- (HKClinicalAuthorizationPrivacyDetailsCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (HKSource)source;
- (id)_attributedContentsTextViewStringForCurrentContentSizeCategory;
- (id)_attributedStringForBullet;
- (id)_attributedStringForBulletAtIndex:(int64_t)a3;
- (id)_bulletContentParagraphStyle;
- (id)_createContentsTextViewWithLayoutManager:(id)a3;
- (id)_localizedBulletContentStringForBulletAtIndex:(int64_t)a3;
- (id)_titleParagraphStyle;
- (void)_setUpConstraints;
- (void)_setUpSubviews;
- (void)_updateForCurrentContentSizeCategory;
- (void)setSource:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation HKClinicalAuthorizationPrivacyDetailsCell

- (HKClinicalAuthorizationPrivacyDetailsCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = HKClinicalAuthorizationPrivacyDetailsCell;
  v4 = [(HKClinicalAuthorizationPrivacyDetailsCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(HKClinicalAuthorizationPrivacyDetailsCell *)v4 setPreservesSuperviewLayoutMargins:1];
    [(HKClinicalAuthorizationPrivacyDetailsCell *)v5 setSelectionStyle:0];
    [(HKClinicalAuthorizationPrivacyDetailsCell *)v5 _setUpSubviews];
    [(HKClinicalAuthorizationPrivacyDetailsCell *)v5 _setUpConstraints];
    [(HKClinicalAuthorizationPrivacyDetailsCell *)v5 _updateForCurrentContentSizeCategory];
  }

  return v5;
}

- (void)setSource:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_source);
  v5 = [WeakRetained isEqual:obj];

  if ((v5 & 1) == 0)
  {
    objc_storeWeak(&self->_source, obj);
    [(HKClinicalAuthorizationPrivacyDetailsCell *)self _updateForCurrentContentSizeCategory];
  }
}

- (void)_setUpSubviews
{
  v8 = [(HKClinicalAuthorizationPrivacyDetailsCell *)self contentView];
  [v8 setPreservesSuperviewLayoutMargins:1];
  v3 = objc_alloc_init(_HKClinicalBulletedListLayoutManager);
  bulletLayoutManager = self->_bulletLayoutManager;
  self->_bulletLayoutManager = v3;
  v5 = v3;

  v6 = [(HKClinicalAuthorizationPrivacyDetailsCell *)self _createContentsTextViewWithLayoutManager:v5];
  [v8 addSubview:v6];
  contentsTextView = self->_contentsTextView;
  self->_contentsTextView = v6;
}

- (void)_setUpConstraints
{
  v20 = [(HKClinicalAuthorizationPrivacyDetailsCell *)self contentView];
  v3 = [v20 layoutMarginsGuide];
  v4 = [(HKClinicalAuthorizationPrivacyDetailsCell *)self contentsTextView];
  v5 = [v4 leadingAnchor];
  v6 = [v3 leadingAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  [v7 setActive:1];

  v8 = [v4 trailingAnchor];
  v9 = [v3 trailingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  [v10 setActive:1];

  v11 = [v4 firstBaselineAnchor];
  v12 = [v20 topAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];

  [(NSLayoutConstraint *)v13 setActive:1];
  superviewTopToContentsTextViewFirstBaselineConstraint = self->_superviewTopToContentsTextViewFirstBaselineConstraint;
  self->_superviewTopToContentsTextViewFirstBaselineConstraint = v13;
  v15 = v13;

  v16 = [v20 bottomAnchor];
  v17 = [v4 lastBaselineAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];

  [(NSLayoutConstraint *)v18 setActive:1];
  contentsTextViewLastBaselineToSuperviewBottomConstraint = self->_contentsTextViewLastBaselineToSuperviewBottomConstraint;
  self->_contentsTextViewLastBaselineToSuperviewBottomConstraint = v18;
}

- (id)_createContentsTextViewWithLayoutManager:(id)a3
{
  v3 = MEMORY[0x1E69DB850];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 addLayoutManager:v4];
  v6 = objc_alloc(MEMORY[0x1E69DB800]);
  v7 = [v6 initWithSize:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  [v4 addTextContainer:v7];

  v8 = objc_alloc(MEMORY[0x1E69DD168]);
  v9 = [v8 initWithFrame:v7 textContainer:{*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)}];
  v10 = [MEMORY[0x1E69DC888] clearColor];
  [v9 setBackgroundColor:v10];

  v11 = [MEMORY[0x1E69DC888] labelColor];
  [v9 setTextColor:v11];

  [v9 setEditable:0];
  [v9 setScrollEnabled:0];
  v12 = [v9 textContainer];
  [v12 setLineFragmentPadding:0.0];

  [v9 setTextContainerInset:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v9 setUserInteractionEnabled:0];

  return v9;
}

- (id)_attributedContentsTextViewStringForCurrentContentSizeCategory
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD40]);
  for (i = 0; i != 3; ++i)
  {
    v5 = [(HKClinicalAuthorizationPrivacyDetailsCell *)self _attributedStringForBulletAtIndex:i];
    [v3 appendAttributedString:v5];
  }

  return v3;
}

- (id)_titleParagraphStyle
{
  v2 = [(HKClinicalAuthorizationPrivacyDetailsCell *)self _bulletContentFont];
  v3 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  [v2 _scaledValueForValue:8.0];
  [v3 setParagraphSpacing:?];

  return v3;
}

- (id)_localizedBulletContentStringForBulletAtIndex:(int64_t)a3
{
  if (a3 >= 3)
  {
    [(HKClinicalAuthorizationPrivacyDetailsCell *)a2 _localizedBulletContentStringForBulletAtIndex:?];
  }

  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"YOU_SHOULD_KNOW_PRIVACY_DETAILS_BULLET_%ld", a3 + 1];
  v5 = HKHealthRecordsAPILocalizedString(v4);
  v6 = [v5 stringByAppendingString:@"\n"];

  return v6;
}

- (id)_attributedStringForBulletAtIndex:(int64_t)a3
{
  v14[4] = *MEMORY[0x1E69E9840];
  v14[0] = MEMORY[0x1E695E118];
  v5 = *MEMORY[0x1E69DB648];
  v13[0] = @"_IsBulletedAttributeName";
  v13[1] = v5;
  v6 = [(HKClinicalAuthorizationPrivacyDetailsCell *)self _bulletContentFont];
  v14[1] = v6;
  v13[2] = *MEMORY[0x1E69DB688];
  v7 = [(HKClinicalAuthorizationPrivacyDetailsCell *)self _bulletContentParagraphStyle];
  v14[2] = v7;
  v13[3] = *MEMORY[0x1E69DB650];
  v8 = [MEMORY[0x1E69DC888] labelColor];
  v14[3] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:4];

  v10 = [(HKClinicalAuthorizationPrivacyDetailsCell *)self _localizedBulletContentStringForBulletAtIndex:a3];
  v11 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v10 attributes:v9];

  return v11;
}

- (id)_bulletContentParagraphStyle
{
  v3 = [(HKClinicalAuthorizationPrivacyDetailsCell *)self _bulletContentFont];
  v4 = [(HKClinicalAuthorizationPrivacyDetailsCell *)self _attributedStringForBullet];
  [v4 size];
  v6 = v5 + 14.0;
  v7 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  [v7 setFirstLineHeadIndent:v6];
  [v7 setHeadIndent:v6];
  [v3 _scaledValueForValue:34.0];
  v9 = v8;
  [v3 lineHeight];
  [v7 setParagraphSpacingBefore:v9 - v10];

  return v7;
}

- (id)_attributedStringForBullet
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = *MEMORY[0x1E69DB648];
  v2 = [(HKClinicalAuthorizationPrivacyDetailsCell *)self _bulletFont];
  v8[0] = v2;
  v7[1] = *MEMORY[0x1E69DB650];
  v3 = [MEMORY[0x1E69DC888] labelColor];
  v8[1] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"⦁" attributes:v4];

  return v5;
}

- (void)_updateForCurrentContentSizeCategory
{
  v3 = [(HKClinicalAuthorizationPrivacyDetailsCell *)self _bodyEmph];
  [v3 _scaledValueForValue:36.0];
  v5 = v4;
  v6 = [(HKClinicalAuthorizationPrivacyDetailsCell *)self superviewTopToContentsTextViewFirstBaselineConstraint];
  [v6 setConstant:v5];

  v7 = [(HKClinicalAuthorizationPrivacyDetailsCell *)self _bulletContentFont];
  [v7 _scaledValueForValue:32.0];
  v9 = v8;
  v10 = [(HKClinicalAuthorizationPrivacyDetailsCell *)self contentsTextViewLastBaselineToSuperviewBottomConstraint];
  [v10 setConstant:v9];

  v11 = [(HKClinicalAuthorizationPrivacyDetailsCell *)self _attributedStringForBullet];
  v12 = [(HKClinicalAuthorizationPrivacyDetailsCell *)self bulletLayoutManager];
  [v12 setBullet:v11];

  v14 = [(HKClinicalAuthorizationPrivacyDetailsCell *)self _attributedContentsTextViewStringForCurrentContentSizeCategory];
  v13 = [(HKClinicalAuthorizationPrivacyDetailsCell *)self contentsTextView];
  [v13 setAttributedText:v14];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HKClinicalAuthorizationPrivacyDetailsCell;
  [(HKClinicalAuthorizationPrivacyDetailsCell *)&v9 traitCollectionDidChange:v4];
  if (v4)
  {
    v5 = [(HKClinicalAuthorizationPrivacyDetailsCell *)self traitCollection];
    v6 = [v5 preferredContentSizeCategory];
    v7 = [v4 preferredContentSizeCategory];
    v8 = [v6 isEqualToString:v7];

    if ((v8 & 1) == 0)
    {
      [(HKClinicalAuthorizationPrivacyDetailsCell *)self _updateForCurrentContentSizeCategory];
    }
  }
}

- (HKSource)source
{
  WeakRetained = objc_loadWeakRetained(&self->_source);

  return WeakRetained;
}

- (void)_localizedBulletContentStringForBulletAtIndex:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKClinicalAuthorizationPrivacyDetailsCell.m" lineNumber:142 description:{@"Invalid parameter not satisfying: %@", @"index >= 0 && index < _BulletCount"}];
}

@end