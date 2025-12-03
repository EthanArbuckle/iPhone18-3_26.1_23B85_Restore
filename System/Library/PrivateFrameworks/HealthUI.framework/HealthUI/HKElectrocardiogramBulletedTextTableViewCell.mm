@interface HKElectrocardiogramBulletedTextTableViewCell
- (HKElectrocardiogramBulletedTextTableViewCell)initWithReuseIdentifier:(id)identifier;
- (NSString)detailText;
- (NSString)titleText;
- (void)_setUpUI;
- (void)_setupConstraints;
- (void)_updateLeadingDetailAttributedTextSize;
- (void)prepareForReuse;
- (void)setDetailTextWithBullets:(id)bullets;
- (void)setTitleText:(id)text;
- (void)traitCollectionDidChange:(id)change;
- (void)updateConstraints;
@end

@implementation HKElectrocardiogramBulletedTextTableViewCell

- (HKElectrocardiogramBulletedTextTableViewCell)initWithReuseIdentifier:(id)identifier
{
  v11.receiver = self;
  v11.super_class = HKElectrocardiogramBulletedTextTableViewCell;
  v3 = [(HKElectrocardiogramBulletedTextTableViewCell *)&v11 initWithStyle:0 reuseIdentifier:identifier];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v4;

    v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    detailLabel = v3->_detailLabel;
    v3->_detailLabel = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    bodyFirstBaselineConstraints = v3->_bodyFirstBaselineConstraints;
    v3->_bodyFirstBaselineConstraints = v8;

    [(HKElectrocardiogramBulletedTextTableViewCell *)v3 _setUpUI];
  }

  return v3;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = HKElectrocardiogramBulletedTextTableViewCell;
  [(HKElectrocardiogramBulletedTextTableViewCell *)&v4 prepareForReuse];
  [(HKElectrocardiogramBulletedTextTableViewCell *)self setTitleText:0];
  detailLabel = [(HKElectrocardiogramBulletedTextTableViewCell *)self detailLabel];
  [detailLabel setText:0];
}

- (NSString)titleText
{
  titleLabel = [(HKElectrocardiogramBulletedTextTableViewCell *)self titleLabel];
  text = [titleLabel text];

  return text;
}

- (void)setTitleText:(id)text
{
  textCopy = text;
  titleLabel = [(HKElectrocardiogramBulletedTextTableViewCell *)self titleLabel];
  [titleLabel setText:textCopy];
}

- (NSString)detailText
{
  detailLabel = [(HKElectrocardiogramBulletedTextTableViewCell *)self detailLabel];
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
    detailLabel = [(HKElectrocardiogramBulletedTextTableViewCell *)self detailLabel];
    [detailLabel setText:v12];
  }

  [(HKElectrocardiogramBulletedTextTableViewCell *)self _updateLeadingDetailAttributedTextSize];
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
  detailLabel = [(HKElectrocardiogramBulletedTextTableViewCell *)self detailLabel];
  [detailLabel setFont:v13];

  detailText = [(HKElectrocardiogramBulletedTextTableViewCell *)self detailText];

  if (detailText)
  {
    v18 = objc_alloc(MEMORY[0x1E696AAB0]);
    detailText2 = [(HKElectrocardiogramBulletedTextTableViewCell *)self detailText];
    v20 = [v18 initWithString:detailText2 attributes:v15];
    detailLabel2 = [(HKElectrocardiogramBulletedTextTableViewCell *)self detailLabel];
    [detailLabel2 setAttributedText:v20];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  if (!changeCopy || ([changeCopy preferredContentSizeCategory], v4 = objc_claimAutoreleasedReturnValue(), -[HKElectrocardiogramBulletedTextTableViewCell traitCollection](self, "traitCollection"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "preferredContentSizeCategory"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v4, "isEqualToString:", v6), v6, v5, v4, v8 = changeCopy, (v7 & 1) == 0))
  {
    [(HKElectrocardiogramBulletedTextTableViewCell *)self _updateLeadingDetailAttributedTextSize];
    [(HKElectrocardiogramBulletedTextTableViewCell *)self setNeedsUpdateConstraints];
    v8 = changeCopy;
  }
}

- (void)_setUpUI
{
  secondarySystemGroupedBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
  [(HKElectrocardiogramBulletedTextTableViewCell *)self setBackgroundColor:secondarySystemGroupedBackgroundColor];

  titleLabel = [(HKElectrocardiogramBulletedTextTableViewCell *)self titleLabel];
  [titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  titleLabel2 = [(HKElectrocardiogramBulletedTextTableViewCell *)self titleLabel];
  [titleLabel2 setAdjustsFontForContentSizeCategory:1];

  titleLabel3 = [(HKElectrocardiogramBulletedTextTableViewCell *)self titleLabel];
  [titleLabel3 setNumberOfLines:0];

  titleLabel4 = [(HKElectrocardiogramBulletedTextTableViewCell *)self titleLabel];
  [titleLabel4 setTextAlignment:4];

  v8 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  titleLabel5 = [(HKElectrocardiogramBulletedTextTableViewCell *)self titleLabel];
  [titleLabel5 setFont:v8];

  labelColor = [MEMORY[0x1E69DC888] labelColor];
  titleLabel6 = [(HKElectrocardiogramBulletedTextTableViewCell *)self titleLabel];
  [titleLabel6 setTextColor:labelColor];

  contentView = [(HKElectrocardiogramBulletedTextTableViewCell *)self contentView];
  titleLabel7 = [(HKElectrocardiogramBulletedTextTableViewCell *)self titleLabel];
  [contentView addSubview:titleLabel7];

  detailLabel = [(HKElectrocardiogramBulletedTextTableViewCell *)self detailLabel];
  [detailLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  detailLabel2 = [(HKElectrocardiogramBulletedTextTableViewCell *)self detailLabel];
  [detailLabel2 setAdjustsFontForContentSizeCategory:1];

  detailLabel3 = [(HKElectrocardiogramBulletedTextTableViewCell *)self detailLabel];
  [detailLabel3 setNumberOfLines:0];

  detailLabel4 = [(HKElectrocardiogramBulletedTextTableViewCell *)self detailLabel];
  [detailLabel4 setTextAlignment:4];

  v18 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  detailLabel5 = [(HKElectrocardiogramBulletedTextTableViewCell *)self detailLabel];
  [detailLabel5 setFont:v18];

  labelColor2 = [MEMORY[0x1E69DC888] labelColor];
  detailLabel6 = [(HKElectrocardiogramBulletedTextTableViewCell *)self detailLabel];
  [detailLabel6 setTextColor:labelColor2];

  contentView2 = [(HKElectrocardiogramBulletedTextTableViewCell *)self contentView];
  detailLabel7 = [(HKElectrocardiogramBulletedTextTableViewCell *)self detailLabel];
  [contentView2 addSubview:detailLabel7];

  [(HKElectrocardiogramBulletedTextTableViewCell *)self setSelectionStyle:0];

  [(HKElectrocardiogramBulletedTextTableViewCell *)self _setupConstraints];
}

- (void)_setupConstraints
{
  v50[2] = *MEMORY[0x1E69E9840];
  bodyFirstBaselineConstraints = [(HKElectrocardiogramBulletedTextTableViewCell *)self bodyFirstBaselineConstraints];
  titleLabel = [(HKElectrocardiogramBulletedTextTableViewCell *)self titleLabel];
  firstBaselineAnchor = [titleLabel firstBaselineAnchor];
  contentView = [(HKElectrocardiogramBulletedTextTableViewCell *)self contentView];
  topAnchor = [contentView topAnchor];
  v5 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor];
  v50[0] = v5;
  detailLabel = [(HKElectrocardiogramBulletedTextTableViewCell *)self detailLabel];
  firstBaselineAnchor2 = [detailLabel firstBaselineAnchor];
  titleLabel2 = [(HKElectrocardiogramBulletedTextTableViewCell *)self titleLabel];
  lastBaselineAnchor = [titleLabel2 lastBaselineAnchor];
  v10 = [firstBaselineAnchor2 constraintEqualToAnchor:lastBaselineAnchor];
  v50[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:2];
  [bodyFirstBaselineConstraints addObjectsFromArray:v11];

  v12 = MEMORY[0x1E696ACD8];
  bodyFirstBaselineConstraints2 = [(HKElectrocardiogramBulletedTextTableViewCell *)self bodyFirstBaselineConstraints];
  [v12 activateConstraints:bodyFirstBaselineConstraints2];

  contentView2 = [(HKElectrocardiogramBulletedTextTableViewCell *)self contentView];
  bottomAnchor = [contentView2 bottomAnchor];
  detailLabel2 = [(HKElectrocardiogramBulletedTextTableViewCell *)self detailLabel];
  lastBaselineAnchor2 = [detailLabel2 lastBaselineAnchor];
  v18 = [bottomAnchor constraintEqualToAnchor:lastBaselineAnchor2];
  [(HKElectrocardiogramBulletedTextTableViewCell *)self setDetailLabelLastBaselineConstraint:v18];

  detailLabelLastBaselineConstraint = [(HKElectrocardiogramBulletedTextTableViewCell *)self detailLabelLastBaselineConstraint];
  [detailLabelLastBaselineConstraint setActive:1];

  v34 = MEMORY[0x1E696ACD8];
  contentView3 = [(HKElectrocardiogramBulletedTextTableViewCell *)self contentView];
  layoutMarginsGuide = [contentView3 layoutMarginsGuide];
  leadingAnchor = [layoutMarginsGuide leadingAnchor];
  titleLabel3 = [(HKElectrocardiogramBulletedTextTableViewCell *)self titleLabel];
  leadingAnchor2 = [titleLabel3 leadingAnchor];
  v40 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v49[0] = v40;
  titleLabel4 = [(HKElectrocardiogramBulletedTextTableViewCell *)self titleLabel];
  trailingAnchor = [titleLabel4 trailingAnchor];
  contentView4 = [(HKElectrocardiogramBulletedTextTableViewCell *)self contentView];
  layoutMarginsGuide2 = [contentView4 layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
  v33 = [trailingAnchor constraintGreaterThanOrEqualToAnchor:trailingAnchor2];
  v49[1] = v33;
  detailLabel3 = [(HKElectrocardiogramBulletedTextTableViewCell *)self detailLabel];
  leadingAnchor3 = [detailLabel3 leadingAnchor];
  contentView5 = [(HKElectrocardiogramBulletedTextTableViewCell *)self contentView];
  layoutMarginsGuide3 = [contentView5 layoutMarginsGuide];
  leadingAnchor4 = [layoutMarginsGuide3 leadingAnchor];
  v22 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v49[2] = v22;
  contentView6 = [(HKElectrocardiogramBulletedTextTableViewCell *)self contentView];
  layoutMarginsGuide4 = [contentView6 layoutMarginsGuide];
  trailingAnchor3 = [layoutMarginsGuide4 trailingAnchor];
  detailLabel4 = [(HKElectrocardiogramBulletedTextTableViewCell *)self detailLabel];
  trailingAnchor4 = [detailLabel4 trailingAnchor];
  v28 = [trailingAnchor3 constraintGreaterThanOrEqualToAnchor:trailingAnchor4];
  v49[3] = v28;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:4];
  [v34 activateConstraints:v29];
}

- (void)updateConstraints
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69DCA40]);
  v4 = [v3 initForTextStyle:*MEMORY[0x1E69DDCF8]];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  bodyFirstBaselineConstraints = [(HKElectrocardiogramBulletedTextTableViewCell *)self bodyFirstBaselineConstraints];
  v6 = [bodyFirstBaselineConstraints countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(bodyFirstBaselineConstraints);
        }

        v10 = *(*(&v17 + 1) + 8 * v9);
        [v4 scaledValueForValue:24.0];
        [v10 setConstant:?];
        ++v9;
      }

      while (v7 != v9);
      v7 = [bodyFirstBaselineConstraints countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v11 = objc_alloc(MEMORY[0x1E69DCA40]);
  v12 = [v11 initForTextStyle:*MEMORY[0x1E69DDD80]];
  [v12 scaledValueForValue:16.0];
  v14 = v13;
  detailLabelLastBaselineConstraint = [(HKElectrocardiogramBulletedTextTableViewCell *)self detailLabelLastBaselineConstraint];
  [detailLabelLastBaselineConstraint setConstant:v14];

  v16.receiver = self;
  v16.super_class = HKElectrocardiogramBulletedTextTableViewCell;
  [(HKElectrocardiogramBulletedTextTableViewCell *)&v16 updateConstraints];
}

@end