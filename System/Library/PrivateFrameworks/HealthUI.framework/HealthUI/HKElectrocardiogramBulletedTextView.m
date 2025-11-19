@interface HKElectrocardiogramBulletedTextView
- (HKElectrocardiogramBulletedTextView)init;
- (NSString)detailText;
- (NSString)titleText;
- (void)_setUpUI;
- (void)_setupConstraints;
- (void)_updateLeadingDetailAttributedTextSize;
- (void)setDetailTextWithBullets:(id)a3;
- (void)setTitleText:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
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
  v2 = [(HKElectrocardiogramBulletedTextView *)self titleLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setTitleText:(id)a3
{
  v4 = a3;
  v5 = [(HKElectrocardiogramBulletedTextView *)self titleLabel];
  [v5 setText:v4];
}

- (NSString)detailText
{
  v2 = [(HKElectrocardiogramBulletedTextView *)self detailLabel];
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
    v13 = [(HKElectrocardiogramBulletedTextView *)self detailLabel];
    [v13 setText:v12];
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
  v16 = [(HKElectrocardiogramBulletedTextView *)self detailLabel];
  [v16 setFont:v13];

  v17 = [(HKElectrocardiogramBulletedTextView *)self detailText];

  if (v17)
  {
    v18 = objc_alloc(MEMORY[0x1E696AAB0]);
    v19 = [(HKElectrocardiogramBulletedTextView *)self detailText];
    v20 = [v18 initWithString:v19 attributes:v15];
    v21 = [(HKElectrocardiogramBulletedTextView *)self detailLabel];
    [v21 setAttributedText:v20];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v9 = a3;
  if (!v9 || ([v9 preferredContentSizeCategory], v4 = objc_claimAutoreleasedReturnValue(), -[HKElectrocardiogramBulletedTextView traitCollection](self, "traitCollection"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "preferredContentSizeCategory"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v4, "isEqualToString:", v6), v6, v5, v4, v8 = v9, (v7 & 1) == 0))
  {
    [(HKElectrocardiogramBulletedTextView *)self _updateLeadingDetailAttributedTextSize];
    [(HKElectrocardiogramBulletedTextView *)self setNeedsUpdateConstraints];
    v8 = v9;
  }
}

- (void)_setUpUI
{
  v3 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [(HKElectrocardiogramBulletedTextView *)self setBackgroundColor:v3];

  v4 = [(HKElectrocardiogramBulletedTextView *)self titleLabel];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [(HKElectrocardiogramBulletedTextView *)self titleLabel];
  [v5 setAdjustsFontForContentSizeCategory:1];

  v6 = [(HKElectrocardiogramBulletedTextView *)self titleLabel];
  [v6 setNumberOfLines:0];

  v7 = [(HKElectrocardiogramBulletedTextView *)self titleLabel];
  [v7 setTextAlignment:4];

  v8 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v9 = [(HKElectrocardiogramBulletedTextView *)self titleLabel];
  [v9 setFont:v8];

  v10 = [MEMORY[0x1E69DC888] labelColor];
  v11 = [(HKElectrocardiogramBulletedTextView *)self titleLabel];
  [v11 setTextColor:v10];

  v12 = [(HKElectrocardiogramBulletedTextView *)self titleLabel];
  [(HKElectrocardiogramBulletedTextView *)self addSubview:v12];

  v13 = [(HKElectrocardiogramBulletedTextView *)self detailLabel];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

  v14 = [(HKElectrocardiogramBulletedTextView *)self detailLabel];
  [v14 setAdjustsFontForContentSizeCategory:1];

  v15 = [(HKElectrocardiogramBulletedTextView *)self detailLabel];
  [v15 setNumberOfLines:0];

  v16 = [(HKElectrocardiogramBulletedTextView *)self detailLabel];
  [v16 setTextAlignment:4];

  v17 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  v18 = [(HKElectrocardiogramBulletedTextView *)self detailLabel];
  [v18 setFont:v17];

  v19 = [MEMORY[0x1E69DC888] labelColor];
  v20 = [(HKElectrocardiogramBulletedTextView *)self detailLabel];
  [v20 setTextColor:v19];

  v21 = [(HKElectrocardiogramBulletedTextView *)self detailLabel];
  [(HKElectrocardiogramBulletedTextView *)self addSubview:v21];

  [(HKElectrocardiogramBulletedTextView *)self _setupConstraints];
}

- (void)_setupConstraints
{
  v43[1] = *MEMORY[0x1E69E9840];
  v3 = [(HKElectrocardiogramBulletedTextView *)self titleLabel];
  v4 = [v3 topAnchor];
  v5 = [(HKElectrocardiogramBulletedTextView *)self topAnchor];
  v6 = [v4 constraintEqualToAnchor:v5 constant:10.0];
  [v6 setActive:1];

  v7 = [(HKElectrocardiogramBulletedTextView *)self bodyFirstBaselineConstraints];
  v8 = [(HKElectrocardiogramBulletedTextView *)self detailLabel];
  v9 = [v8 firstBaselineAnchor];
  v10 = [(HKElectrocardiogramBulletedTextView *)self titleLabel];
  v11 = [v10 lastBaselineAnchor];
  v12 = [v9 constraintEqualToAnchor:v11];
  v43[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:1];
  [v7 addObjectsFromArray:v13];

  v14 = MEMORY[0x1E696ACD8];
  v15 = [(HKElectrocardiogramBulletedTextView *)self bodyFirstBaselineConstraints];
  [v14 activateConstraints:v15];

  v16 = [(HKElectrocardiogramBulletedTextView *)self bottomAnchor];
  v17 = [(HKElectrocardiogramBulletedTextView *)self detailLabel];
  v18 = [v17 bottomAnchor];
  v19 = [v16 constraintEqualToAnchor:v18 constant:10.0];
  [v19 setActive:1];

  v32 = MEMORY[0x1E696ACD8];
  v41 = [(HKElectrocardiogramBulletedTextView *)self layoutMarginsGuide];
  v39 = [v41 leadingAnchor];
  v40 = [(HKElectrocardiogramBulletedTextView *)self titleLabel];
  v38 = [v40 leadingAnchor];
  v37 = [v39 constraintEqualToAnchor:v38];
  v42[0] = v37;
  v36 = [(HKElectrocardiogramBulletedTextView *)self titleLabel];
  v34 = [v36 trailingAnchor];
  v35 = [(HKElectrocardiogramBulletedTextView *)self layoutMarginsGuide];
  v33 = [v35 trailingAnchor];
  v31 = [v34 constraintGreaterThanOrEqualToAnchor:v33];
  v42[1] = v31;
  v30 = [(HKElectrocardiogramBulletedTextView *)self detailLabel];
  v20 = [v30 leadingAnchor];
  v21 = [(HKElectrocardiogramBulletedTextView *)self layoutMarginsGuide];
  v22 = [v21 leadingAnchor];
  v23 = [v20 constraintEqualToAnchor:v22];
  v42[2] = v23;
  v24 = [(HKElectrocardiogramBulletedTextView *)self layoutMarginsGuide];
  v25 = [v24 trailingAnchor];
  v26 = [(HKElectrocardiogramBulletedTextView *)self detailLabel];
  v27 = [v26 trailingAnchor];
  v28 = [v25 constraintGreaterThanOrEqualToAnchor:v27];
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
  v5 = [(HKElectrocardiogramBulletedTextView *)self bodyFirstBaselineConstraints];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        [v4 scaledValueForValue:24.0];
        [v10 setConstant:?];
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11.receiver = self;
  v11.super_class = HKElectrocardiogramBulletedTextView;
  [(HKElectrocardiogramBulletedTextView *)&v11 updateConstraints];
}

@end