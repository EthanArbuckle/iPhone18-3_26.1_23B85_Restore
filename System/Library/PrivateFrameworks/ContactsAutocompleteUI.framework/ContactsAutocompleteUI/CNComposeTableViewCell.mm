@interface CNComposeTableViewCell
+ (id)axCappedFontWithTextStyle:(id)a3 bold:(BOOL)a4;
+ (id)axCappedSymbolConfigurationIsBold:(BOOL)a3;
+ (void)requireIntrinsicSizeForView:(id)a3;
- (CGSize)containerView:(id)a3 systemLayoutSizeFittingSize:(CGSize)a4 forArrangedSubview:(id)a5;
- (CNComposeTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)labelWithTextStyle:(id)a3;
- (void)containerViewDidLayoutArrangedSubviews:(id)a3;
- (void)layoutMarginsDidChange;
- (void)setLabelColor:(id)a3;
@end

@implementation CNComposeTableViewCell

+ (void)requireIntrinsicSizeForView:(id)a3
{
  v5 = a3;
  LODWORD(v3) = 1148846080;
  [v5 setContentHuggingPriority:0 forAxis:v3];
  LODWORD(v4) = 1148846080;
  [v5 setContentCompressionResistancePriority:0 forAxis:v4];
}

- (CNComposeTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v36[2] = *MEMORY[0x1E69E9840];
  v34.receiver = self;
  v34.super_class = CNComposeTableViewCell;
  v4 = [(NUITableViewContainerCell *)&v34 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(CNComposeTableViewCell *)v4 titleTextStyle];
    v7 = [(CNComposeTableViewCell *)v5 labelWithTextStyle:v6];
    [(CNComposeTableViewCell *)v5 setTitleLabel:v7];

    v8 = [MEMORY[0x1E69DC888] labelColor];
    v9 = [(CNComposeTableViewCell *)v5 titleLabel];
    [v9 setTextColor:v8];

    IsAppDesignedForVisionOS = CNComposeIsAppDesignedForVisionOS();
    v11 = MEMORY[0x1E69DDD28];
    if (!IsAppDesignedForVisionOS)
    {
      v11 = MEMORY[0x1E69DDD80];
    }

    v12 = [(CNComposeTableViewCell *)v5 labelWithTextStyle:*v11];
    [(CNComposeTableViewCell *)v5 setDetailLabel:v12];

    v13 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v14 = [(CNComposeTableViewCell *)v5 detailLabel];
    [v14 setTextColor:v13];

    v15 = MEMORY[0x1E698B730];
    v16 = [(CNComposeTableViewCell *)v5 titleLabel];
    v36[0] = v16;
    v17 = [(CNComposeTableViewCell *)v5 detailLabel];
    v36[1] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:2];
    v19 = [v15 verticalContainerStackViewWithArrangedSubviews:v18];

    [v19 setDelegate:v5];
    [v19 setBaselineRelativeArrangement:0];
    v20 = CNComposeIsAppDesignedForVisionOS();
    v21 = 0.0;
    if (v20)
    {
      v21 = 4.0;
    }

    [v19 setSpacing:v21];
    [(CNComposeTableViewCell *)v5 setLabelViewStack:v19];
    v35 = v19;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
    v23 = [(NUITableViewContainerCell *)v5 containerView];
    [v23 setArrangedSubviews:v22];

    v24 = [(NUITableViewContainerCell *)v5 containerView];
    [v24 setPreservesSuperviewLayoutMargins:0];

    v25 = [(NUITableViewContainerCell *)v5 containerView];
    [v25 setSpacing:12.0];

    v26 = [(NUITableViewContainerCell *)v5 containerView];
    [v26 setAlignment:3];

    v27 = [(NUITableViewContainerCell *)v5 containerView];
    [v27 setDelegate:v5];

    v28 = objc_opt_new();
    [(CNComposeTableViewCell *)v5 setBackgroundView:v28];

    v29 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    v30 = [(CNComposeTableViewCell *)v5 backgroundView];
    [v30 setBackgroundColor:v29];

    v31 = [(CNComposeTableViewCell *)v5 contentView];
    [v31 cn_applyCornerRadius:2];

    v32 = [(CNComposeTableViewCell *)v5 selectedBackgroundView];
    [v32 cn_applyCornerRadius:2];
  }

  return v5;
}

+ (id)axCappedFontWithTextStyle:(id)a3 bold:(BOOL)a4
{
  v4 = a4;
  v5 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:a3 maximumContentSizeCategory:*MEMORY[0x1E69DDC38]];
  v6 = v5;
  if (v4)
  {
    v7 = 32770;
  }

  else
  {
    v7 = 0x8000;
  }

  v8 = [v5 fontDescriptor];
  v9 = [v8 fontDescriptorWithSymbolicTraits:v7];

  v10 = [MEMORY[0x1E69DB878] fontWithDescriptor:v9 size:0.0];

  return v10;
}

+ (id)axCappedSymbolConfigurationIsBold:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  v4 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v5 = [v4 fontDescriptor];

  v6 = MEMORY[0x1E69DB878];
  v7 = [v5 fontDescriptorWithSymbolicTraits:v3];
  v8 = [v6 fontWithDescriptor:v7 size:0.0];

  v9 = [MEMORY[0x1E69DC668] sharedApplication];
  v10 = [v9 preferredContentSizeCategory];

  if (v10)
  {
    if (UIContentSizeCategoryCompareToCategory(v10, *MEMORY[0x1E69DDC38]) == NSOrderedDescending)
    {
      v11 = 1;
    }

    else if (UIContentSizeCategoryCompareToCategory(v10, *MEMORY[0x1E69DDC50]) == NSOrderedDescending)
    {
      v11 = 2;
    }

    else
    {
      v11 = 3;
    }
  }

  else
  {
    v11 = 3;
  }

  v12 = [MEMORY[0x1E69DCAD8] configurationWithFont:v8 scale:v11];

  return v12;
}

- (id)labelWithTextStyle:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setLineBreakMode:4];
  v5 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v3];

  [v4 setFont:v5];

  return v4;
}

- (void)layoutMarginsDidChange
{
  v8.receiver = self;
  v8.super_class = CNComposeTableViewCell;
  [(CNComposeTableViewCell *)&v8 layoutMarginsDidChange];
  [(CNComposeTableViewCell *)self directionalLayoutMargins];
  v4 = v3;
  [(CNComposeTableViewCell *)self leadingInsetsFromCurrentMargins:8.0];
  v6 = v5;
  v7 = [(NUITableViewContainerCell *)self containerView];
  [v7 setDirectionalLayoutMargins:{8.0, v6, 8.0, v4}];
}

- (CGSize)containerView:(id)a3 systemLayoutSizeFittingSize:(CGSize)a4 forArrangedSubview:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [(NUITableViewContainerCell *)self containerView];
  if (v9 != v7)
  {
    goto LABEL_4;
  }

  v10 = [v7 arrangedSubviews];
  v11 = [v10 firstObject];
  v12 = v11;
  if (v11 != v8)
  {

LABEL_4:
    goto LABEL_5;
  }

  v17 = [(CNComposeTableViewCell *)self supportsAvatarView];

  if (v17)
  {
    v13 = 0x4042000000000000;
    v14 = 0x4042000000000000;
    goto LABEL_6;
  }

LABEL_5:
  v13 = *MEMORY[0x1E698B708];
  v14 = *(MEMORY[0x1E698B708] + 8);
LABEL_6:

  v15 = *&v13;
  v16 = *&v14;
  result.height = v16;
  result.width = v15;
  return result;
}

- (void)containerViewDidLayoutArrangedSubviews:(id)a3
{
  v4 = a3;
  v5 = [(CNComposeTableViewCell *)self labelViewStack];

  if (v5 == v4)
  {
    v6 = [(CNComposeTableViewCell *)self labelViewStack];
    [v6 frame];
    [(CNComposeTableViewCell *)self labelsChangedWidth:CGRectGetWidth(v8)];
  }
}

- (void)setLabelColor:(id)a3
{
  v13 = a3;
  if ([v13 isEqual:self->_labelColor])
  {
    goto LABEL_13;
  }

  objc_storeStrong(&self->_labelColor, a3);
  v5 = v13;
  if (!v13)
  {
    v5 = [MEMORY[0x1E69DC888] labelColor];
  }

  v6 = [(CNComposeTableViewCell *)self titleLabel];
  [v6 setTextColor:v5];

  if (!v13)
  {
  }

  v7 = [(CNComposeTableViewCell *)self recipient];
  if ([v7 kind] == 6)
  {

LABEL_9:
LABEL_10:
    v10 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v13 = 0;
    v11 = 1;
    goto LABEL_11;
  }

  v8 = [(CNComposeTableViewCell *)self recipient];
  v9 = [v8 kind];

  if (v9 == 7)
  {
    goto LABEL_9;
  }

  if (!v13)
  {
    goto LABEL_10;
  }

  v11 = 0;
  v10 = v13;
LABEL_11:
  v12 = [(CNComposeTableViewCell *)self detailLabel];
  [v12 setTextColor:v10];

  if (v11)
  {
  }

LABEL_13:
}

@end