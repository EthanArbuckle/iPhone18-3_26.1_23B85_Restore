@interface HKElectrocardiogramBulletedTextView
- (HKElectrocardiogramBulletedTextView)init;
- (NSString)detailText;
- (NSString)titleText;
- (void)_setUpUI;
- (void)_setupConstraints;
- (void)_updateLeadingDetailAttributedTextSize;
- (void)setDetailTextWithBullets:(id)bullets;
- (void)setTitleText:(id)text;
- (void)traitCollectionDidChange:(id)change;
- (void)updateConstraints;
@end

@implementation HKElectrocardiogramBulletedTextView

- (HKElectrocardiogramBulletedTextView)init
{
  v10.receiver = self;
  v10.super_class = HKElectrocardiogramBulletedTextView;
  v2 = [(HKElectrocardiogramBulletedTextView *)&v10 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v2->_titleLabel;
    v2->_titleLabel = v3;

    v5 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    detailLabel = v2->_detailLabel;
    v2->_detailLabel = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    bodyFirstBaselineConstraints = v2->_bodyFirstBaselineConstraints;
    v2->_bodyFirstBaselineConstraints = v7;

    [(HKElectrocardiogramBulletedTextView *)v2 _setUpUI];
  }

  return v2;
}

- (NSString)titleText
{
  titleLabel = [(HKElectrocardiogramBulletedTextView *)self titleLabel];
  text = [titleLabel text];

  return text;
}

- (void)setTitleText:(id)text
{
  textCopy = text;
  titleLabel = [(HKElectrocardiogramBulletedTextView *)self titleLabel];
  [titleLabel setText:textCopy];
}

- (NSString)detailText
{
  detailLabel = [(HKElectrocardiogramBulletedTextView *)self detailLabel];
  text = [detailLabel text];

  return text;
}

- (void)setDetailTextWithBullets:(id)bullets
{
  v19 = *MEMORY[0x1E69E9840];
  bulletsCopy = bullets;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = bulletsCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"•\t%@", *(*(&v14 + 1) + 8 * v10)];
        [v5 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    v12 = [v5 componentsJoinedByString:@"\n"];
    detailLabel = [(HKElectrocardiogramBulletedTextView *)self detailLabel];
    [detailLabel setText:v12];
  }

  [(HKElectrocardiogramBulletedTextView *)self _updateLeadingDetailAttributedTextSize];
}

- (void)_updateLeadingDetailAttributedTextSize
{
  v24[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69DCA40]);
  v4 = *MEMORY[0x1E69DDD80];
  v5 = [v3 initForTextStyle:*MEMORY[0x1E69DDD80]];
  [v5 scaledValueForValue:12.0];
  v7 = v6;
  defaultParagraphStyle = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
  v9 = [defaultParagraphStyle mutableCopy];

  v10 = objc_alloc(MEMORY[0x1E69DB858]);
  v11 = [v10 initWithTextAlignment:4 location:MEMORY[0x1E695E0F8] options:v7];
  v24[0] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  [v9 setTabStops:v12];

  [v5 scaledValueForValue:4.0];
  [v9 setParagraphSpacingBefore:?];
  [v9 setDefaultTabInterval:v7];
  [v9 setFirstLineHeadIndent:0.0];
  [v9 setHeadIndent:v7];
  v13 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v4];
  v14 = *MEMORY[0x1E69DB648];
  v22[0] = *MEMORY[0x1E69DB688];
  v22[1] = v14;
  v23[0] = v9;
  v23[1] = v13;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
  detailLabel = [(HKElectrocardiogramBulletedTextView *)self detailLabel];
  [detailLabel setFont:v13];

  detailText = [(HKElectrocardiogramBulletedTextView *)self detailText];

  if (detailText)
  {
    v18 = objc_alloc(MEMORY[0x1E696AAB0]);
    detailText2 = [(HKElectrocardiogramBulletedTextView *)self detailText];
    v20 = [v18 initWithString:detailText2 attributes:v15];
    detailLabel2 = [(HKElectrocardiogramBulletedTextView *)self detailLabel];
    [detailLabel2 setAttributedText:v20];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  if (!changeCopy || ([changeCopy preferredContentSizeCategory], v4 = objc_claimAutoreleasedReturnValue(), -[HKElectrocardiogramBulletedTextView traitCollection](self, "traitCollection"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "preferredContentSizeCategory"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v4, "isEqualToString:", v6), v6, v5, v4, v8 = changeCopy, (v7 & 1) == 0))
  {
    [(HKElectrocardiogramBulletedTextView *)self _updateLeadingDetailAttributedTextSize];
    [(HKElectrocardiogramBulletedTextView *)self setNeedsUpdateConstraints];
    v8 = changeCopy;
  }
}

- (void)_setUpUI
{
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [(HKElectrocardiogramBulletedTextView *)self setBackgroundColor:systemBackgroundColor];

  titleLabel = [(HKElectrocardiogramBulletedTextView *)self titleLabel];
  [titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  titleLabel2 = [(HKElectrocardiogramBulletedTextView *)self titleLabel];
  [titleLabel2 setAdjustsFontForContentSizeCategory:1];

  titleLabel3 = [(HKElectrocardiogramBulletedTextView *)self titleLabel];
  [titleLabel3 setNumberOfLines:0];

  titleLabel4 = [(HKElectrocardiogramBulletedTextView *)self titleLabel];
  [titleLabel4 setTextAlignment:4];

  v8 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  titleLabel5 = [(HKElectrocardiogramBulletedTextView *)self titleLabel];
  [titleLabel5 setFont:v8];

  labelColor = [MEMORY[0x1E69DC888] labelColor];
  titleLabel6 = [(HKElectrocardiogramBulletedTextView *)self titleLabel];
  [titleLabel6 setTextColor:labelColor];

  titleLabel7 = [(HKElectrocardiogramBulletedTextView *)self titleLabel];
  [(HKElectrocardiogramBulletedTextView *)self addSubview:titleLabel7];

  detailLabel = [(HKElectrocardiogramBulletedTextView *)self detailLabel];
  [detailLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  detailLabel2 = [(HKElectrocardiogramBulletedTextView *)self detailLabel];
  [detailLabel2 setAdjustsFontForContentSizeCategory:1];

  detailLabel3 = [(HKElectrocardiogramBulletedTextView *)self detailLabel];
  [detailLabel3 setNumberOfLines:0];

  detailLabel4 = [(HKElectrocardiogramBulletedTextView *)self detailLabel];
  [detailLabel4 setTextAlignment:4];

  v17 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  detailLabel5 = [(HKElectrocardiogramBulletedTextView *)self detailLabel];
  [detailLabel5 setFont:v17];

  labelColor2 = [MEMORY[0x1E69DC888] labelColor];
  detailLabel6 = [(HKElectrocardiogramBulletedTextView *)self detailLabel];
  [detailLabel6 setTextColor:labelColor2];

  detailLabel7 = [(HKElectrocardiogramBulletedTextView *)self detailLabel];
  [(HKElectrocardiogramBulletedTextView *)self addSubview:detailLabel7];

  [(HKElectrocardiogramBulletedTextView *)self _setupConstraints];
}

- (void)_setupConstraints
{
  v43[1] = *MEMORY[0x1E69E9840];
  titleLabel = [(HKElectrocardiogramBulletedTextView *)self titleLabel];
  topAnchor = [titleLabel topAnchor];
  topAnchor2 = [(HKElectrocardiogramBulletedTextView *)self topAnchor];
  v6 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:10.0];
  [v6 setActive:1];

  bodyFirstBaselineConstraints = [(HKElectrocardiogramBulletedTextView *)self bodyFirstBaselineConstraints];
  detailLabel = [(HKElectrocardiogramBulletedTextView *)self detailLabel];
  firstBaselineAnchor = [detailLabel firstBaselineAnchor];
  titleLabel2 = [(HKElectrocardiogramBulletedTextView *)self titleLabel];
  lastBaselineAnchor = [titleLabel2 lastBaselineAnchor];
  v12 = [firstBaselineAnchor constraintEqualToAnchor:lastBaselineAnchor];
  v43[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:1];
  [bodyFirstBaselineConstraints addObjectsFromArray:v13];

  v14 = MEMORY[0x1E696ACD8];
  bodyFirstBaselineConstraints2 = [(HKElectrocardiogramBulletedTextView *)self bodyFirstBaselineConstraints];
  [v14 activateConstraints:bodyFirstBaselineConstraints2];

  bottomAnchor = [(HKElectrocardiogramBulletedTextView *)self bottomAnchor];
  detailLabel2 = [(HKElectrocardiogramBulletedTextView *)self detailLabel];
  bottomAnchor2 = [detailLabel2 bottomAnchor];
  v19 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:10.0];
  [v19 setActive:1];

  v32 = MEMORY[0x1E696ACD8];
  layoutMarginsGuide = [(HKElectrocardiogramBulletedTextView *)self layoutMarginsGuide];
  leadingAnchor = [layoutMarginsGuide leadingAnchor];
  titleLabel3 = [(HKElectrocardiogramBulletedTextView *)self titleLabel];
  leadingAnchor2 = [titleLabel3 leadingAnchor];
  v37 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v42[0] = v37;
  titleLabel4 = [(HKElectrocardiogramBulletedTextView *)self titleLabel];
  trailingAnchor = [titleLabel4 trailingAnchor];
  layoutMarginsGuide2 = [(HKElectrocardiogramBulletedTextView *)self layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
  v31 = [trailingAnchor constraintGreaterThanOrEqualToAnchor:trailingAnchor2];
  v42[1] = v31;
  detailLabel3 = [(HKElectrocardiogramBulletedTextView *)self detailLabel];
  leadingAnchor3 = [detailLabel3 leadingAnchor];
  layoutMarginsGuide3 = [(HKElectrocardiogramBulletedTextView *)self layoutMarginsGuide];
  leadingAnchor4 = [layoutMarginsGuide3 leadingAnchor];
  v23 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v42[2] = v23;
  layoutMarginsGuide4 = [(HKElectrocardiogramBulletedTextView *)self layoutMarginsGuide];
  trailingAnchor3 = [layoutMarginsGuide4 trailingAnchor];
  detailLabel4 = [(HKElectrocardiogramBulletedTextView *)self detailLabel];
  trailingAnchor4 = [detailLabel4 trailingAnchor];
  v28 = [trailingAnchor3 constraintGreaterThanOrEqualToAnchor:trailingAnchor4];
  v42[3] = v28;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:4];
  [v32 activateConstraints:v29];
}

- (void)updateConstraints
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69DCA40]);
  v4 = [v3 initForTextStyle:*MEMORY[0x1E69DDCF8]];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  bodyFirstBaselineConstraints = [(HKElectrocardiogramBulletedTextView *)self bodyFirstBaselineConstraints];
  v6 = [bodyFirstBaselineConstraints countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(bodyFirstBaselineConstraints);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        [v4 scaledValueForValue:24.0];
        [v10 setConstant:?];
        ++v9;
      }

      while (v7 != v9);
      v7 = [bodyFirstBaselineConstraints countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11.receiver = self;
  v11.super_class = HKElectrocardiogramBulletedTextView;
  [(HKElectrocardiogramBulletedTextView *)&v11 updateConstraints];
}

@end