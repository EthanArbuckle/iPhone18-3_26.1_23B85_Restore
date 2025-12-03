@interface CNComposeTableViewCell
+ (id)axCappedFontWithTextStyle:(id)style bold:(BOOL)bold;
+ (id)axCappedSymbolConfigurationIsBold:(BOOL)bold;
+ (void)requireIntrinsicSizeForView:(id)view;
- (CGSize)containerView:(id)view systemLayoutSizeFittingSize:(CGSize)size forArrangedSubview:(id)subview;
- (CNComposeTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)labelWithTextStyle:(id)style;
- (void)containerViewDidLayoutArrangedSubviews:(id)subviews;
- (void)layoutMarginsDidChange;
- (void)setLabelColor:(id)color;
@end

@implementation CNComposeTableViewCell

+ (void)requireIntrinsicSizeForView:(id)view
{
  viewCopy = view;
  LODWORD(v3) = 1148846080;
  [viewCopy setContentHuggingPriority:0 forAxis:v3];
  LODWORD(v4) = 1148846080;
  [viewCopy setContentCompressionResistancePriority:0 forAxis:v4];
}

- (CNComposeTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v36[2] = *MEMORY[0x1E69E9840];
  v34.receiver = self;
  v34.super_class = CNComposeTableViewCell;
  v4 = [(NUITableViewContainerCell *)&v34 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    titleTextStyle = [(CNComposeTableViewCell *)v4 titleTextStyle];
    v7 = [(CNComposeTableViewCell *)v5 labelWithTextStyle:titleTextStyle];
    [(CNComposeTableViewCell *)v5 setTitleLabel:v7];

    labelColor = [MEMORY[0x1E69DC888] labelColor];
    titleLabel = [(CNComposeTableViewCell *)v5 titleLabel];
    [titleLabel setTextColor:labelColor];

    IsAppDesignedForVisionOS = CNComposeIsAppDesignedForVisionOS();
    v11 = MEMORY[0x1E69DDD28];
    if (!IsAppDesignedForVisionOS)
    {
      v11 = MEMORY[0x1E69DDD80];
    }

    v12 = [(CNComposeTableViewCell *)v5 labelWithTextStyle:*v11];
    [(CNComposeTableViewCell *)v5 setDetailLabel:v12];

    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    detailLabel = [(CNComposeTableViewCell *)v5 detailLabel];
    [detailLabel setTextColor:secondaryLabelColor];

    v15 = MEMORY[0x1E698B730];
    titleLabel2 = [(CNComposeTableViewCell *)v5 titleLabel];
    v36[0] = titleLabel2;
    detailLabel2 = [(CNComposeTableViewCell *)v5 detailLabel];
    v36[1] = detailLabel2;
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
    containerView = [(NUITableViewContainerCell *)v5 containerView];
    [containerView setArrangedSubviews:v22];

    containerView2 = [(NUITableViewContainerCell *)v5 containerView];
    [containerView2 setPreservesSuperviewLayoutMargins:0];

    containerView3 = [(NUITableViewContainerCell *)v5 containerView];
    [containerView3 setSpacing:12.0];

    containerView4 = [(NUITableViewContainerCell *)v5 containerView];
    [containerView4 setAlignment:3];

    containerView5 = [(NUITableViewContainerCell *)v5 containerView];
    [containerView5 setDelegate:v5];

    v28 = objc_opt_new();
    [(CNComposeTableViewCell *)v5 setBackgroundView:v28];

    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    backgroundView = [(CNComposeTableViewCell *)v5 backgroundView];
    [backgroundView setBackgroundColor:systemBackgroundColor];

    contentView = [(CNComposeTableViewCell *)v5 contentView];
    [contentView cn_applyCornerRadius:2];

    selectedBackgroundView = [(CNComposeTableViewCell *)v5 selectedBackgroundView];
    [selectedBackgroundView cn_applyCornerRadius:2];
  }

  return v5;
}

+ (id)axCappedFontWithTextStyle:(id)style bold:(BOOL)bold
{
  boldCopy = bold;
  v5 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:style maximumContentSizeCategory:*MEMORY[0x1E69DDC38]];
  v6 = v5;
  if (boldCopy)
  {
    v7 = 32770;
  }

  else
  {
    v7 = 0x8000;
  }

  fontDescriptor = [v5 fontDescriptor];
  v9 = [fontDescriptor fontDescriptorWithSymbolicTraits:v7];

  v10 = [MEMORY[0x1E69DB878] fontWithDescriptor:v9 size:0.0];

  return v10;
}

+ (id)axCappedSymbolConfigurationIsBold:(BOOL)bold
{
  if (bold)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  v4 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  fontDescriptor = [v4 fontDescriptor];

  v6 = MEMORY[0x1E69DB878];
  v7 = [fontDescriptor fontDescriptorWithSymbolicTraits:v3];
  v8 = [v6 fontWithDescriptor:v7 size:0.0];

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];

  if (preferredContentSizeCategory)
  {
    if (UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, *MEMORY[0x1E69DDC38]) == NSOrderedDescending)
    {
      v11 = 1;
    }

    else if (UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, *MEMORY[0x1E69DDC50]) == NSOrderedDescending)
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

- (id)labelWithTextStyle:(id)style
{
  styleCopy = style;
  v4 = objc_opt_new();
  [v4 setLineBreakMode:4];
  v5 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:styleCopy];

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
  containerView = [(NUITableViewContainerCell *)self containerView];
  [containerView setDirectionalLayoutMargins:{8.0, v6, 8.0, v4}];
}

- (CGSize)containerView:(id)view systemLayoutSizeFittingSize:(CGSize)size forArrangedSubview:(id)subview
{
  viewCopy = view;
  subviewCopy = subview;
  containerView = [(NUITableViewContainerCell *)self containerView];
  if (containerView != viewCopy)
  {
    goto LABEL_4;
  }

  arrangedSubviews = [viewCopy arrangedSubviews];
  firstObject = [arrangedSubviews firstObject];
  v12 = firstObject;
  if (firstObject != subviewCopy)
  {

LABEL_4:
    goto LABEL_5;
  }

  supportsAvatarView = [(CNComposeTableViewCell *)self supportsAvatarView];

  if (supportsAvatarView)
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

- (void)containerViewDidLayoutArrangedSubviews:(id)subviews
{
  subviewsCopy = subviews;
  labelViewStack = [(CNComposeTableViewCell *)self labelViewStack];

  if (labelViewStack == subviewsCopy)
  {
    labelViewStack2 = [(CNComposeTableViewCell *)self labelViewStack];
    [labelViewStack2 frame];
    [(CNComposeTableViewCell *)self labelsChangedWidth:CGRectGetWidth(v8)];
  }
}

- (void)setLabelColor:(id)color
{
  colorCopy = color;
  if ([colorCopy isEqual:self->_labelColor])
  {
    goto LABEL_13;
  }

  objc_storeStrong(&self->_labelColor, color);
  labelColor = colorCopy;
  if (!colorCopy)
  {
    labelColor = [MEMORY[0x1E69DC888] labelColor];
  }

  titleLabel = [(CNComposeTableViewCell *)self titleLabel];
  [titleLabel setTextColor:labelColor];

  if (!colorCopy)
  {
  }

  recipient = [(CNComposeTableViewCell *)self recipient];
  if ([recipient kind] == 6)
  {

LABEL_9:
LABEL_10:
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    colorCopy = 0;
    v11 = 1;
    goto LABEL_11;
  }

  recipient2 = [(CNComposeTableViewCell *)self recipient];
  kind = [recipient2 kind];

  if (kind == 7)
  {
    goto LABEL_9;
  }

  if (!colorCopy)
  {
    goto LABEL_10;
  }

  v11 = 0;
  secondaryLabelColor = colorCopy;
LABEL_11:
  detailLabel = [(CNComposeTableViewCell *)self detailLabel];
  [detailLabel setTextColor:secondaryLabelColor];

  if (v11)
  {
  }

LABEL_13:
}

@end