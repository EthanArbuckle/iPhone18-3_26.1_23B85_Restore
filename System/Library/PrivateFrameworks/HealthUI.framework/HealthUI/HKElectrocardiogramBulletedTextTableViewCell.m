@interface HKElectrocardiogramBulletedTextTableViewCell
- (HKElectrocardiogramBulletedTextTableViewCell)initWithReuseIdentifier:(id)a3;
- (NSString)detailText;
- (NSString)titleText;
- (void)_setUpUI;
- (void)_setupConstraints;
- (void)_updateLeadingDetailAttributedTextSize;
- (void)prepareForReuse;
- (void)setDetailTextWithBullets:(id)a3;
- (void)setTitleText:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateConstraints;
@end

@implementation HKElectrocardiogramBulletedTextTableViewCell

- (HKElectrocardiogramBulletedTextTableViewCell)initWithReuseIdentifier:(id)a3
{
  v11.receiver = self;
  v11.super_class = HKElectrocardiogramBulletedTextTableViewCell;
  v3 = [(HKElectrocardiogramBulletedTextTableViewCell *)&v11 initWithStyle:0 reuseIdentifier:a3];
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
  v3 = [(HKElectrocardiogramBulletedTextTableViewCell *)self detailLabel];
  [v3 setText:0];
}

- (NSString)titleText
{
  v2 = [(HKElectrocardiogramBulletedTextTableViewCell *)self titleLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setTitleText:(id)a3
{
  v4 = a3;
  v5 = [(HKElectrocardiogramBulletedTextTableViewCell *)self titleLabel];
  [v5 setText:v4];
}

- (NSString)detailText
{
  v2 = [(HKElectrocardiogramBulletedTextTableViewCell *)self detailLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setDetailTextWithBullets:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
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
    v13 = [(HKElectrocardiogramBulletedTextTableViewCell *)self detailLabel];
    [v13 setText:v12];
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
  v8 = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
  v9 = [v8 mutableCopy];

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
  v16 = [(HKElectrocardiogramBulletedTextTableViewCell *)self detailLabel];
  [v16 setFont:v13];

  v17 = [(HKElectrocardiogramBulletedTextTableViewCell *)self detailText];

  if (v17)
  {
    v18 = objc_alloc(MEMORY[0x1E696AAB0]);
    v19 = [(HKElectrocardiogramBulletedTextTableViewCell *)self detailText];
    v20 = [v18 initWithString:v19 attributes:v15];
    v21 = [(HKElectrocardiogramBulletedTextTableViewCell *)self detailLabel];
    [v21 setAttributedText:v20];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v9 = a3;
  if (!v9 || ([v9 preferredContentSizeCategory], v4 = objc_claimAutoreleasedReturnValue(), -[HKElectrocardiogramBulletedTextTableViewCell traitCollection](self, "traitCollection"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "preferredContentSizeCategory"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v4, "isEqualToString:", v6), v6, v5, v4, v8 = v9, (v7 & 1) == 0))
  {
    [(HKElectrocardiogramBulletedTextTableViewCell *)self _updateLeadingDetailAttributedTextSize];
    [(HKElectrocardiogramBulletedTextTableViewCell *)self setNeedsUpdateConstraints];
    v8 = v9;
  }
}

- (void)_setUpUI
{
  v3 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
  [(HKElectrocardiogramBulletedTextTableViewCell *)self setBackgroundColor:v3];

  v4 = [(HKElectrocardiogramBulletedTextTableViewCell *)self titleLabel];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [(HKElectrocardiogramBulletedTextTableViewCell *)self titleLabel];
  [v5 setAdjustsFontForContentSizeCategory:1];

  v6 = [(HKElectrocardiogramBulletedTextTableViewCell *)self titleLabel];
  [v6 setNumberOfLines:0];

  v7 = [(HKElectrocardiogramBulletedTextTableViewCell *)self titleLabel];
  [v7 setTextAlignment:4];

  v8 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v9 = [(HKElectrocardiogramBulletedTextTableViewCell *)self titleLabel];
  [v9 setFont:v8];

  v10 = [MEMORY[0x1E69DC888] labelColor];
  v11 = [(HKElectrocardiogramBulletedTextTableViewCell *)self titleLabel];
  [v11 setTextColor:v10];

  v12 = [(HKElectrocardiogramBulletedTextTableViewCell *)self contentView];
  v13 = [(HKElectrocardiogramBulletedTextTableViewCell *)self titleLabel];
  [v12 addSubview:v13];

  v14 = [(HKElectrocardiogramBulletedTextTableViewCell *)self detailLabel];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];

  v15 = [(HKElectrocardiogramBulletedTextTableViewCell *)self detailLabel];
  [v15 setAdjustsFontForContentSizeCategory:1];

  v16 = [(HKElectrocardiogramBulletedTextTableViewCell *)self detailLabel];
  [v16 setNumberOfLines:0];

  v17 = [(HKElectrocardiogramBulletedTextTableViewCell *)self detailLabel];
  [v17 setTextAlignment:4];

  v18 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  v19 = [(HKElectrocardiogramBulletedTextTableViewCell *)self detailLabel];
  [v19 setFont:v18];

  v20 = [MEMORY[0x1E69DC888] labelColor];
  v21 = [(HKElectrocardiogramBulletedTextTableViewCell *)self detailLabel];
  [v21 setTextColor:v20];

  v22 = [(HKElectrocardiogramBulletedTextTableViewCell *)self contentView];
  v23 = [(HKElectrocardiogramBulletedTextTableViewCell *)self detailLabel];
  [v22 addSubview:v23];

  [(HKElectrocardiogramBulletedTextTableViewCell *)self setSelectionStyle:0];

  [(HKElectrocardiogramBulletedTextTableViewCell *)self _setupConstraints];
}

- (void)_setupConstraints
{
  v50[2] = *MEMORY[0x1E69E9840];
  v3 = [(HKElectrocardiogramBulletedTextTableViewCell *)self bodyFirstBaselineConstraints];
  v47 = [(HKElectrocardiogramBulletedTextTableViewCell *)self titleLabel];
  v43 = [v47 firstBaselineAnchor];
  v45 = [(HKElectrocardiogramBulletedTextTableViewCell *)self contentView];
  v4 = [v45 topAnchor];
  v5 = [v43 constraintEqualToAnchor:v4];
  v50[0] = v5;
  v6 = [(HKElectrocardiogramBulletedTextTableViewCell *)self detailLabel];
  v7 = [v6 firstBaselineAnchor];
  v8 = [(HKElectrocardiogramBulletedTextTableViewCell *)self titleLabel];
  v9 = [v8 lastBaselineAnchor];
  v10 = [v7 constraintEqualToAnchor:v9];
  v50[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:2];
  [v3 addObjectsFromArray:v11];

  v12 = MEMORY[0x1E696ACD8];
  v13 = [(HKElectrocardiogramBulletedTextTableViewCell *)self bodyFirstBaselineConstraints];
  [v12 activateConstraints:v13];

  v14 = [(HKElectrocardiogramBulletedTextTableViewCell *)self contentView];
  v15 = [v14 bottomAnchor];
  v16 = [(HKElectrocardiogramBulletedTextTableViewCell *)self detailLabel];
  v17 = [v16 lastBaselineAnchor];
  v18 = [v15 constraintEqualToAnchor:v17];
  [(HKElectrocardiogramBulletedTextTableViewCell *)self setDetailLabelLastBaselineConstraint:v18];

  v19 = [(HKElectrocardiogramBulletedTextTableViewCell *)self detailLabelLastBaselineConstraint];
  [v19 setActive:1];

  v34 = MEMORY[0x1E696ACD8];
  v48 = [(HKElectrocardiogramBulletedTextTableViewCell *)self contentView];
  v46 = [v48 layoutMarginsGuide];
  v42 = [v46 leadingAnchor];
  v44 = [(HKElectrocardiogramBulletedTextTableViewCell *)self titleLabel];
  v41 = [v44 leadingAnchor];
  v40 = [v42 constraintEqualToAnchor:v41];
  v49[0] = v40;
  v39 = [(HKElectrocardiogramBulletedTextTableViewCell *)self titleLabel];
  v37 = [v39 trailingAnchor];
  v38 = [(HKElectrocardiogramBulletedTextTableViewCell *)self contentView];
  v36 = [v38 layoutMarginsGuide];
  v35 = [v36 trailingAnchor];
  v33 = [v37 constraintGreaterThanOrEqualToAnchor:v35];
  v49[1] = v33;
  v32 = [(HKElectrocardiogramBulletedTextTableViewCell *)self detailLabel];
  v30 = [v32 leadingAnchor];
  v31 = [(HKElectrocardiogramBulletedTextTableViewCell *)self contentView];
  v20 = [v31 layoutMarginsGuide];
  v21 = [v20 leadingAnchor];
  v22 = [v30 constraintEqualToAnchor:v21];
  v49[2] = v22;
  v23 = [(HKElectrocardiogramBulletedTextTableViewCell *)self contentView];
  v24 = [v23 layoutMarginsGuide];
  v25 = [v24 trailingAnchor];
  v26 = [(HKElectrocardiogramBulletedTextTableViewCell *)self detailLabel];
  v27 = [v26 trailingAnchor];
  v28 = [v25 constraintGreaterThanOrEqualToAnchor:v27];
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
  v5 = [(HKElectrocardiogramBulletedTextTableViewCell *)self bodyFirstBaselineConstraints];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * v9);
        [v4 scaledValueForValue:24.0];
        [v10 setConstant:?];
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v11 = objc_alloc(MEMORY[0x1E69DCA40]);
  v12 = [v11 initForTextStyle:*MEMORY[0x1E69DDD80]];
  [v12 scaledValueForValue:16.0];
  v14 = v13;
  v15 = [(HKElectrocardiogramBulletedTextTableViewCell *)self detailLabelLastBaselineConstraint];
  [v15 setConstant:v14];

  v16.receiver = self;
  v16.super_class = HKElectrocardiogramBulletedTextTableViewCell;
  [(HKElectrocardiogramBulletedTextTableViewCell *)&v16 updateConstraints];
}

@end