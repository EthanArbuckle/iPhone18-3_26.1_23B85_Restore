@interface HKRoundedHeaderView
+ (double)_detailTextLastBaselineToBottom;
+ (double)_textLastBaselineToBottom;
+ (double)_topToTextFirstBaseline;
+ (double)estimatedHeight;
- (BOOL)_isLayingOutForAccessibility;
- (BOOL)_isTextLabelTruncated;
- (HKRoundedHeaderView)initWithColor:(id)color isInteractive:(BOOL)interactive;
- (HKRoundedHeaderView)initWithFrame:(CGRect)frame;
- (HKRoundedHeaderView)initWithGradient:(id)gradient;
- (NSString)detailText;
- (double)_headerViewWidth;
- (void)_setupConstraints;
- (void)_setupUI;
- (void)_updateTextConstraints;
- (void)_updateTextLabel;
- (void)setChevronColor:(id)color;
- (void)setColor:(id)color;
- (void)setDetailText:(id)text;
- (void)setDetailTextColor:(id)color;
- (void)setDetailTextCompositingFilter:(id)filter;
- (void)setGradient:(id)gradient;
- (void)setImage:(id)image;
- (void)setText:(id)text;
- (void)setTextColor:(id)color;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation HKRoundedHeaderView

- (HKRoundedHeaderView)initWithColor:(id)color isInteractive:(BOOL)interactive
{
  colorCopy = color;
  v12.receiver = self;
  v12.super_class = HKRoundedHeaderView;
  v8 = [(HKRoundedHeaderView *)&v12 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v9 = v8;
  if (v8)
  {
    gradient = v8->_gradient;
    v8->_gradient = 0;

    objc_storeStrong(&v9->_color, color);
    v9->_isInteractive = interactive;
    [(HKRoundedHeaderView *)v9 _setupUI];
    [(HKRoundedHeaderView *)v9 _setupConstraints];
  }

  return v9;
}

- (HKRoundedHeaderView)initWithGradient:(id)gradient
{
  gradientCopy = gradient;
  v9.receiver = self;
  v9.super_class = HKRoundedHeaderView;
  v6 = [(HKRoundedHeaderView *)&v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_gradient, gradient);
    v7->_isInteractive = 1;
    [(HKRoundedHeaderView *)v7 _setupUI];
    [(HKRoundedHeaderView *)v7 _setupConstraints];
  }

  return v7;
}

- (HKRoundedHeaderView)initWithFrame:(CGRect)frame
{
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  v5 = [(HKRoundedHeaderView *)self initWithColor:whiteColor];

  return v5;
}

- (void)setColor:(id)color
{
  objc_storeStrong(&self->_color, color);
  colorCopy = color;
  [(HKRoundedHeaderView *)self setBackgroundColor:colorCopy];
}

- (void)setChevronColor:(id)color
{
  objc_storeStrong(&self->_chevronColor, color);
  colorCopy = color;
  chevronRightImageView = [(HKRoundedHeaderView *)self chevronRightImageView];
  [chevronRightImageView setTintColor:colorCopy];
}

- (void)setGradient:(id)gradient
{
  objc_storeStrong(&self->_gradient, gradient);
  gradientCopy = gradient;
  gradientView = [(HKRoundedHeaderView *)self gradientView];
  [gradientView setGradient:gradientCopy];
}

- (void)setImage:(id)image
{
  objc_storeStrong(&self->_image, image);
  imageCopy = image;
  imageView = [(HKRoundedHeaderView *)self imageView];
  [imageView setImage:imageCopy];

  [(HKRoundedHeaderView *)self _updateTextConstraints];
}

- (void)setText:(id)text
{
  objc_storeStrong(&self->_text, text);
  [(HKRoundedHeaderView *)self _updateTextLabel];

  [(HKRoundedHeaderView *)self _updateUI];
}

- (void)setTextColor:(id)color
{
  objc_storeStrong(&self->_textColor, color);

  [(HKRoundedHeaderView *)self _updateTextLabel];
}

- (void)setDetailText:(id)text
{
  textCopy = text;
  detailTextLabel = [(HKRoundedHeaderView *)self detailTextLabel];
  [detailTextLabel setText:textCopy];

  [(HKRoundedHeaderView *)self _updateUI];
}

- (NSString)detailText
{
  detailTextLabel = [(HKRoundedHeaderView *)self detailTextLabel];
  text = [detailTextLabel text];

  return text;
}

- (void)setDetailTextColor:(id)color
{
  objc_storeStrong(&self->_detailTextColor, color);
  colorCopy = color;
  detailTextLabel = [(HKRoundedHeaderView *)self detailTextLabel];
  [detailTextLabel setTextColor:colorCopy];
}

- (void)setDetailTextCompositingFilter:(id)filter
{
  objc_storeStrong(&self->_detailTextCompositingFilter, filter);
  filterCopy = filter;
  v8 = [MEMORY[0x1E6979378] filterWithType:filterCopy];

  detailTextLabel = [(HKRoundedHeaderView *)self detailTextLabel];
  layer = [detailTextLabel layer];
  [layer setCompositingFilter:v8];
}

+ (double)estimatedHeight
{
  [objc_opt_class() _topToTextFirstBaseline];
  v3 = v2;
  [objc_opt_class() _textLastBaselineToBottom];
  return v3 + v4;
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = HKRoundedHeaderView;
  changeCopy = change;
  [(HKRoundedHeaderView *)&v8 traitCollectionDidChange:changeCopy];
  v5 = [(HKRoundedHeaderView *)self traitCollection:v8.receiver];
  preferredContentSizeCategory = [v5 preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];

  LOBYTE(changeCopy) = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];
  if ((changeCopy & 1) == 0)
  {
    [(HKRoundedHeaderView *)self _updateUI];
  }
}

- (BOOL)_isTextLabelTruncated
{
  v27[1] = *MEMORY[0x1E69E9840];
  textLabel = [(HKRoundedHeaderView *)self textLabel];
  text = [textLabel text];
  v26 = *MEMORY[0x1E69DB648];
  v5 = v26;
  _textFont = [objc_opt_class() _textFont];
  v27[0] = _textFont;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
  [text sizeWithAttributes:v7];
  v9 = v8;

  detailTextLabel = [(HKRoundedHeaderView *)self detailTextLabel];
  text2 = [detailTextLabel text];
  v24 = v5;
  _detailTextFont = [objc_opt_class() _detailTextFont];
  v25 = _detailTextFont;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  [text2 sizeWithAttributes:v13];
  v15 = v14;

  [(HKRoundedHeaderView *)self _headerViewWidth];
  v17 = v16;
  [(HKRoundedHeaderView *)self textHorizontalInset];
  v19 = v15 + v18 * 3.0 + 8.0;
  chevronRightImageView = [(HKRoundedHeaderView *)self chevronRightImageView];
  [chevronRightImageView frame];
  v22 = v17 - (v19 + v21);

  return v9 > v22;
}

- (double)_headerViewWidth
{
  [(HKRoundedHeaderView *)self frame];
  if (v3 == 0.0)
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen bounds];
    v6 = v5 + -32.0;
  }

  else
  {
    [(HKRoundedHeaderView *)self frame];
    return v7;
  }

  return v6;
}

- (void)_setupUI
{
  gradient = [(HKRoundedHeaderView *)self gradient];

  if (gradient)
  {
    v4 = [HKGradientView alloc];
    gradient2 = [(HKRoundedHeaderView *)self gradient];
    v6 = [(HKGradientView *)v4 initWithGradient:gradient2];
    [(HKRoundedHeaderView *)self setGradientView:v6];

    gradientView = [(HKRoundedHeaderView *)self gradientView];
    [gradientView setOpaque:1];

    gradientView2 = [(HKRoundedHeaderView *)self gradientView];
    [gradientView2 setClipsToBounds:1];

    gradientView3 = [(HKRoundedHeaderView *)self gradientView];
    [gradientView3 setTranslatesAutoresizingMaskIntoConstraints:0];

    gradientView4 = [(HKRoundedHeaderView *)self gradientView];
    [(HKRoundedHeaderView *)self addSubview:gradientView4];
  }

  else
  {
    gradientView4 = [(HKRoundedHeaderView *)self color];
    [(HKRoundedHeaderView *)self setBackgroundColor:gradientView4];
  }

  layer = [(HKRoundedHeaderView *)self layer];
  [layer setCornerRadius:10.0];

  layer2 = [(HKRoundedHeaderView *)self layer];
  [layer2 setMasksToBounds:1];

  layer3 = [(HKRoundedHeaderView *)self layer];
  [layer3 setMaskedCorners:3];

  v14 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  [(HKRoundedHeaderView *)self setImageView:v14];

  imageView = [(HKRoundedHeaderView *)self imageView];
  [imageView setClipsToBounds:1];

  imageView2 = [(HKRoundedHeaderView *)self imageView];
  [imageView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  imageView3 = [(HKRoundedHeaderView *)self imageView];
  [(HKRoundedHeaderView *)self addSubview:imageView3];

  v18 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(HKRoundedHeaderView *)self setTextLabel:v18];

  textLabel = [(HKRoundedHeaderView *)self textLabel];
  [textLabel setNumberOfLines:1];

  textLabel2 = [(HKRoundedHeaderView *)self textLabel];
  [textLabel2 setTranslatesAutoresizingMaskIntoConstraints:0];

  textLabel3 = [(HKRoundedHeaderView *)self textLabel];
  [textLabel3 setAdjustsFontForContentSizeCategory:1];

  _textFont = [objc_opt_class() _textFont];
  textLabel4 = [(HKRoundedHeaderView *)self textLabel];
  [textLabel4 setFont:_textFont];

  textLabel5 = [(HKRoundedHeaderView *)self textLabel];
  [(HKRoundedHeaderView *)self addSubview:textLabel5];

  v25 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(HKRoundedHeaderView *)self setDetailTextLabel:v25];

  detailTextLabel = [(HKRoundedHeaderView *)self detailTextLabel];
  [detailTextLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  detailTextLabel2 = [(HKRoundedHeaderView *)self detailTextLabel];
  [detailTextLabel2 setAdjustsFontForContentSizeCategory:1];

  _detailTextFont = [objc_opt_class() _detailTextFont];
  detailTextLabel3 = [(HKRoundedHeaderView *)self detailTextLabel];
  [detailTextLabel3 setFont:_detailTextFont];

  if ([(UIView *)self hk_isLeftToRight])
  {
    v30 = 2;
  }

  else
  {
    v30 = 0;
  }

  detailTextLabel4 = [(HKRoundedHeaderView *)self detailTextLabel];
  [detailTextLabel4 setTextAlignment:v30];

  detailTextLabel5 = [(HKRoundedHeaderView *)self detailTextLabel];
  [(HKRoundedHeaderView *)self addSubview:detailTextLabel5];

  v42 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] symbolicTraits:2];
  v33 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  [(HKRoundedHeaderView *)self setChevronRightImageView:v33];

  v34 = [MEMORY[0x1E69DCAD8] configurationWithFont:v42 scale:1];
  chevronRightImageView = [(HKRoundedHeaderView *)self chevronRightImageView];
  [chevronRightImageView setPreferredSymbolConfiguration:v34];

  if (self->_isInteractive)
  {
    v36 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.forward"];
    chevronRightImageView2 = [(HKRoundedHeaderView *)self chevronRightImageView];
    [chevronRightImageView2 setImage:v36];
  }

  chevronRightImageView3 = [(HKRoundedHeaderView *)self chevronRightImageView];
  [chevronRightImageView3 setTranslatesAutoresizingMaskIntoConstraints:0];

  chevronColor = self->_chevronColor;
  chevronRightImageView4 = [(HKRoundedHeaderView *)self chevronRightImageView];
  [chevronRightImageView4 setTintColor:chevronColor];

  chevronRightImageView5 = [(HKRoundedHeaderView *)self chevronRightImageView];
  [(HKRoundedHeaderView *)self addSubview:chevronRightImageView5];
}

- (void)_setupConstraints
{
  gradient = [(HKRoundedHeaderView *)self gradient];

  if (gradient)
  {
    gradientView = [(HKRoundedHeaderView *)self gradientView];
    [gradientView hk_alignConstraintsWithView:self];
  }

  [(HKRoundedHeaderView *)self textHorizontalInset];
  v6 = v5;
  imageView = [(HKRoundedHeaderView *)self imageView];
  leadingAnchor = [imageView leadingAnchor];
  leadingAnchor2 = [(HKRoundedHeaderView *)self leadingAnchor];
  v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v6];
  [v10 setActive:1];

  imageView2 = [(HKRoundedHeaderView *)self imageView];
  centerYAnchor = [imageView2 centerYAnchor];
  centerYAnchor2 = [(HKRoundedHeaderView *)self centerYAnchor];
  v14 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v14 setActive:1];

  imageView3 = [(HKRoundedHeaderView *)self imageView];
  widthAnchor = [imageView3 widthAnchor];
  v17 = [widthAnchor constraintEqualToConstant:29.0];
  [v17 setActive:1];

  imageView4 = [(HKRoundedHeaderView *)self imageView];
  heightAnchor = [imageView4 heightAnchor];
  v20 = [heightAnchor constraintEqualToConstant:29.0];
  [v20 setActive:1];

  textLabel = [(HKRoundedHeaderView *)self textLabel];
  leadingAnchor3 = [textLabel leadingAnchor];
  leadingAnchor4 = [(HKRoundedHeaderView *)self leadingAnchor];
  v24 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:v6];
  [(HKRoundedHeaderView *)self setTextLeadingConstraintToView:v24];

  textLabel2 = [(HKRoundedHeaderView *)self textLabel];
  leadingAnchor5 = [textLabel2 leadingAnchor];
  imageView5 = [(HKRoundedHeaderView *)self imageView];
  trailingAnchor = [imageView5 trailingAnchor];
  v29 = [leadingAnchor5 constraintEqualToAnchor:trailingAnchor constant:12.0];
  [(HKRoundedHeaderView *)self setTextLeadingConstraintToImageView:v29];

  textLabel3 = [(HKRoundedHeaderView *)self textLabel];
  widthAnchor2 = [textLabel3 widthAnchor];
  widthAnchor3 = [(HKRoundedHeaderView *)self widthAnchor];
  v33 = [widthAnchor2 constraintLessThanOrEqualToAnchor:widthAnchor3 multiplier:0.66];
  [(HKRoundedHeaderView *)self setTextLabelWidthConstraint:v33];

  textLabelWidthConstraint = [(HKRoundedHeaderView *)self textLabelWidthConstraint];
  LODWORD(v35) = 1144750080;
  [textLabelWidthConstraint setPriority:v35];

  detailTextLabel = [(HKRoundedHeaderView *)self detailTextLabel];
  widthAnchor4 = [detailTextLabel widthAnchor];
  widthAnchor5 = [(HKRoundedHeaderView *)self widthAnchor];
  v39 = [widthAnchor4 constraintLessThanOrEqualToAnchor:widthAnchor5 multiplier:0.34];
  [(HKRoundedHeaderView *)self setDetailTextLabelWidthConstraint:v39];

  detailTextLabelWidthConstraint = [(HKRoundedHeaderView *)self detailTextLabelWidthConstraint];
  LODWORD(v41) = 1144750080;
  [detailTextLabelWidthConstraint setPriority:v41];

  textLabel4 = [(HKRoundedHeaderView *)self textLabel];
  firstBaselineAnchor = [textLabel4 firstBaselineAnchor];
  topAnchor = [(HKRoundedHeaderView *)self topAnchor];
  v45 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor];
  [(HKRoundedHeaderView *)self setTextLabelFirstBaselineConstraint:v45];

  textLabelFirstBaselineConstraint = [(HKRoundedHeaderView *)self textLabelFirstBaselineConstraint];
  LODWORD(v47) = 1144750080;
  [textLabelFirstBaselineConstraint setPriority:v47];

  textLabelFirstBaselineConstraint2 = [(HKRoundedHeaderView *)self textLabelFirstBaselineConstraint];
  [textLabelFirstBaselineConstraint2 setActive:1];

  detailTextLabel2 = [(HKRoundedHeaderView *)self detailTextLabel];
  LODWORD(v50) = 1148846080;
  [detailTextLabel2 setContentCompressionResistancePriority:0 forAxis:v50];

  chevronRightImageView = [(HKRoundedHeaderView *)self chevronRightImageView];
  layoutMarginsGuide = [chevronRightImageView layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
  trailingAnchor3 = [(HKRoundedHeaderView *)self trailingAnchor];
  v55 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-v6];
  [v55 setActive:1];

  chevronRightImageView2 = [(HKRoundedHeaderView *)self chevronRightImageView];
  LODWORD(v57) = 1148846080;
  [chevronRightImageView2 setContentCompressionResistancePriority:0 forAxis:v57];

  v119 = objc_alloc_init(MEMORY[0x1E695DF70]);
  detailTextLabel3 = [(HKRoundedHeaderView *)self detailTextLabel];
  leadingAnchor6 = [detailTextLabel3 leadingAnchor];
  textLabel5 = [(HKRoundedHeaderView *)self textLabel];
  trailingAnchor4 = [textLabel5 trailingAnchor];
  v62 = [leadingAnchor6 constraintGreaterThanOrEqualToAnchor:trailingAnchor4 constant:v6];
  [v119 addObject:v62];

  detailTextLabel4 = [(HKRoundedHeaderView *)self detailTextLabel];
  firstBaselineAnchor2 = [detailTextLabel4 firstBaselineAnchor];
  textLabel6 = [(HKRoundedHeaderView *)self textLabel];
  lastBaselineAnchor = [textLabel6 lastBaselineAnchor];
  v67 = [firstBaselineAnchor2 constraintEqualToAnchor:lastBaselineAnchor];
  [v119 addObject:v67];

  chevronRightImageView3 = [(HKRoundedHeaderView *)self chevronRightImageView];
  leadingAnchor7 = [chevronRightImageView3 leadingAnchor];
  detailTextLabel5 = [(HKRoundedHeaderView *)self detailTextLabel];
  trailingAnchor5 = [detailTextLabel5 trailingAnchor];
  v72 = [leadingAnchor7 constraintEqualToAnchor:trailingAnchor5 constant:8.0];
  [v119 addObject:v72];

  chevronRightImageView4 = [(HKRoundedHeaderView *)self chevronRightImageView];
  centerYAnchor3 = [chevronRightImageView4 centerYAnchor];
  detailTextLabel6 = [(HKRoundedHeaderView *)self detailTextLabel];
  centerYAnchor4 = [detailTextLabel6 centerYAnchor];
  v77 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  [v119 addObject:v77];

  bottomAnchor = [(HKRoundedHeaderView *)self bottomAnchor];
  textLabel7 = [(HKRoundedHeaderView *)self textLabel];
  lastBaselineAnchor2 = [textLabel7 lastBaselineAnchor];
  v81 = [bottomAnchor constraintEqualToAnchor:lastBaselineAnchor2];
  [(HKRoundedHeaderView *)self setTextLabelBottomConstraint:v81];

  textLabelBottomConstraint = [(HKRoundedHeaderView *)self textLabelBottomConstraint];
  [v119 addObject:textLabelBottomConstraint];

  v83 = [v119 copy];
  [(HKRoundedHeaderView *)self setRegularConstraints:v83];

  v84 = objc_alloc_init(MEMORY[0x1E695DF70]);
  textLabel8 = [(HKRoundedHeaderView *)self textLabel];
  trailingAnchor6 = [textLabel8 trailingAnchor];
  chevronRightImageView5 = [(HKRoundedHeaderView *)self chevronRightImageView];
  leadingAnchor8 = [chevronRightImageView5 leadingAnchor];
  v89 = [trailingAnchor6 constraintLessThanOrEqualToAnchor:leadingAnchor8 constant:-8.0];
  [v84 addObject:v89];

  detailTextLabel7 = [(HKRoundedHeaderView *)self detailTextLabel];
  leadingAnchor9 = [detailTextLabel7 leadingAnchor];
  textLabel9 = [(HKRoundedHeaderView *)self textLabel];
  leadingAnchor10 = [textLabel9 leadingAnchor];
  v94 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
  [v84 addObject:v94];

  detailTextLabel8 = [(HKRoundedHeaderView *)self detailTextLabel];
  trailingAnchor7 = [detailTextLabel8 trailingAnchor];
  textLabel10 = [(HKRoundedHeaderView *)self textLabel];
  trailingAnchor8 = [textLabel10 trailingAnchor];
  v99 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
  [v84 addObject:v99];

  detailTextLabel9 = [(HKRoundedHeaderView *)self detailTextLabel];
  firstBaselineAnchor3 = [detailTextLabel9 firstBaselineAnchor];
  textLabel11 = [(HKRoundedHeaderView *)self textLabel];
  lastBaselineAnchor3 = [textLabel11 lastBaselineAnchor];
  v104 = [firstBaselineAnchor3 constraintEqualToAnchor:lastBaselineAnchor3];
  [(HKRoundedHeaderView *)self setDetailTextLabelFirstBaselineConstraint:v104];

  detailTextLabelFirstBaselineConstraint = [(HKRoundedHeaderView *)self detailTextLabelFirstBaselineConstraint];
  [v84 addObject:detailTextLabelFirstBaselineConstraint];

  bottomAnchor2 = [(HKRoundedHeaderView *)self bottomAnchor];
  detailTextLabel10 = [(HKRoundedHeaderView *)self detailTextLabel];
  lastBaselineAnchor4 = [detailTextLabel10 lastBaselineAnchor];
  v109 = [bottomAnchor2 constraintEqualToAnchor:lastBaselineAnchor4];
  [(HKRoundedHeaderView *)self setDetailTextLabelBottomConstraint:v109];

  detailTextLabelBottomConstraint = [(HKRoundedHeaderView *)self detailTextLabelBottomConstraint];
  [v84 addObject:detailTextLabelBottomConstraint];

  chevronRightImageView6 = [(HKRoundedHeaderView *)self chevronRightImageView];
  centerYAnchor5 = [chevronRightImageView6 centerYAnchor];
  textLabel12 = [(HKRoundedHeaderView *)self textLabel];
  topAnchor2 = [textLabel12 topAnchor];
  v115 = [centerYAnchor5 constraintEqualToAnchor:topAnchor2];
  [(HKRoundedHeaderView *)self setLargeTextChevronCenterYConstraint:v115];

  largeTextChevronCenterYConstraint = [(HKRoundedHeaderView *)self largeTextChevronCenterYConstraint];
  [v84 addObject:largeTextChevronCenterYConstraint];

  v117 = [v84 copy];
  [(HKRoundedHeaderView *)self setLargeTextConstraints:v117];

  chevronRightImageView7 = [(HKRoundedHeaderView *)self chevronRightImageView];
  [chevronRightImageView7 layoutIfNeeded];

  [(HKRoundedHeaderView *)self _updateForCurrentSizeCategory];
}

- (void)_updateTextLabel
{
  text = [(HKRoundedHeaderView *)self text];

  if (text)
  {
    v4 = MEMORY[0x1E696AD40];
    text2 = [(HKRoundedHeaderView *)self text];
    _textFont = [objc_opt_class() _textFont];
    LODWORD(v7) = 0.5;
    textLabel3 = [v4 hk_initWithString:text2 font:_textFont hyphenationFactor:v7];

    textColor = [(HKRoundedHeaderView *)self textColor];

    if (textColor)
    {
      v9 = *MEMORY[0x1E69DB650];
      textColor2 = [(HKRoundedHeaderView *)self textColor];
      text3 = [(HKRoundedHeaderView *)self text];
      [textLabel3 addAttribute:v9 value:textColor2 range:{0, objc_msgSend(text3, "length")}];
    }

    textLabel = [(HKRoundedHeaderView *)self textLabel];
    [textLabel setAttributedText:textLabel3];
  }

  else
  {
    textLabel2 = [(HKRoundedHeaderView *)self textLabel];
    [textLabel2 setAttributedText:0];

    textLabel3 = [(HKRoundedHeaderView *)self textLabel];
    [textLabel3 setText:&stru_1F42FFBE0];
  }
}

- (void)_updateTextConstraints
{
  image = [(HKRoundedHeaderView *)self image];
  v4 = image != 0;
  v5 = image == 0;

  imageView = [(HKRoundedHeaderView *)self imageView];
  [imageView setHidden:v5];

  textLeadingConstraintToView = [(HKRoundedHeaderView *)self textLeadingConstraintToView];
  [textLeadingConstraintToView setActive:v5];

  textLeadingConstraintToImageView = [(HKRoundedHeaderView *)self textLeadingConstraintToImageView];
  [textLeadingConstraintToImageView setActive:v4];

  if ([(HKRoundedHeaderView *)self _isLayingOutForAccessibility]|| [(HKRoundedHeaderView *)self _isTextLabelTruncated])
  {
    textLabelWidthConstraint = [(HKRoundedHeaderView *)self textLabelWidthConstraint];
    [textLabelWidthConstraint setActive:0];

    textLabel = [(HKRoundedHeaderView *)self textLabel];
    [textLabel setNumberOfLines:0];

    detailTextLabel = [(HKRoundedHeaderView *)self detailTextLabel];
    [detailTextLabel setNumberOfLines:0];

    detailTextLabelWidthConstraint = [(HKRoundedHeaderView *)self detailTextLabelWidthConstraint];
    [detailTextLabelWidthConstraint setActive:0];

    detailTextLabel2 = [(HKRoundedHeaderView *)self detailTextLabel];
    [detailTextLabel2 setTextAlignment:4];

    [objc_opt_class() _textLastBaselineToBottom];
    v15 = v14;
    detailTextLabelFirstBaselineConstraint = [(HKRoundedHeaderView *)self detailTextLabelFirstBaselineConstraint];
    [detailTextLabelFirstBaselineConstraint setConstant:v15];

    [objc_opt_class() _detailTextLastBaselineToBottom];
    v18 = v17;
    detailTextLabelBottomConstraint = [(HKRoundedHeaderView *)self detailTextLabelBottomConstraint];
    [detailTextLabelBottomConstraint setConstant:v18];

    v20 = MEMORY[0x1E696ACD8];
    regularConstraints = [(HKRoundedHeaderView *)self regularConstraints];
    [v20 deactivateConstraints:regularConstraints];

    v22 = MEMORY[0x1E696ACD8];
    largeTextConstraints = [(HKRoundedHeaderView *)self largeTextConstraints];
  }

  else
  {
    textLabelWidthConstraint2 = [(HKRoundedHeaderView *)self textLabelWidthConstraint];
    [textLabelWidthConstraint2 setActive:1];

    textLabel2 = [(HKRoundedHeaderView *)self textLabel];
    [textLabel2 setNumberOfLines:1];

    detailTextLabel3 = [(HKRoundedHeaderView *)self detailTextLabel];
    [detailTextLabel3 setNumberOfLines:1];

    detailTextLabelWidthConstraint2 = [(HKRoundedHeaderView *)self detailTextLabelWidthConstraint];
    [detailTextLabelWidthConstraint2 setActive:1];

    detailTextLabelFirstBaselineConstraint2 = [(HKRoundedHeaderView *)self detailTextLabelFirstBaselineConstraint];
    [detailTextLabelFirstBaselineConstraint2 setConstant:0.0];

    _accessibilityContentSizeCategory = [objc_opt_class() _accessibilityContentSizeCategory];
    v30 = [(UIView *)self hk_trailingTextAlignmentAtOrBelowSizeCategory:_accessibilityContentSizeCategory];
    detailTextLabel4 = [(HKRoundedHeaderView *)self detailTextLabel];
    [detailTextLabel4 setTextAlignment:v30];

    [objc_opt_class() _textLastBaselineToBottom];
    v33 = v32;
    textLabelBottomConstraint = [(HKRoundedHeaderView *)self textLabelBottomConstraint];
    [textLabelBottomConstraint setConstant:v33];

    v35 = MEMORY[0x1E696ACD8];
    largeTextConstraints2 = [(HKRoundedHeaderView *)self largeTextConstraints];
    [v35 deactivateConstraints:largeTextConstraints2];

    v22 = MEMORY[0x1E696ACD8];
    largeTextConstraints = [(HKRoundedHeaderView *)self regularConstraints];
  }

  v37 = largeTextConstraints;
  [v22 activateConstraints:largeTextConstraints];

  detailText = [(HKRoundedHeaderView *)self detailText];
  hk_copyNonEmptyString = [detailText hk_copyNonEmptyString];

  if (!hk_copyNonEmptyString)
  {
    textLabelWidthConstraint3 = [(HKRoundedHeaderView *)self textLabelWidthConstraint];
    [textLabelWidthConstraint3 setActive:0];

    detailTextLabelWidthConstraint3 = [(HKRoundedHeaderView *)self detailTextLabelWidthConstraint];
    [detailTextLabelWidthConstraint3 setActive:0];
  }

  [objc_opt_class() _topToTextFirstBaseline];
  v43 = v42;
  textLabelFirstBaselineConstraint = [(HKRoundedHeaderView *)self textLabelFirstBaselineConstraint];
  [textLabelFirstBaselineConstraint setConstant:v43];

  textLabel3 = [(HKRoundedHeaderView *)self textLabel];
  font = [textLabel3 font];
  [font lineHeight];
  v47 = v46 * 0.5;
  largeTextChevronCenterYConstraint = [(HKRoundedHeaderView *)self largeTextChevronCenterYConstraint];
  [largeTextChevronCenterYConstraint setConstant:v47];
}

- (BOOL)_isLayingOutForAccessibility
{
  _accessibilityContentSizeCategory = [objc_opt_class() _accessibilityContentSizeCategory];
  IsLargerThanSizeCategory = HKUIApplicationContentSizeCategoryIsLargerThanSizeCategory(_accessibilityContentSizeCategory);

  return IsLargerThanSizeCategory;
}

+ (double)_topToTextFirstBaseline
{
  _textFont = [objc_opt_class() _textFont];
  [_textFont _scaledValueForValue:28.0];
  v4 = v3;

  return v4;
}

+ (double)_textLastBaselineToBottom
{
  _textFont = [objc_opt_class() _textFont];
  [_textFont _scaledValueForValue:16.0];
  v4 = v3;

  return v4;
}

+ (double)_detailTextLastBaselineToBottom
{
  _detailTextFont = [objc_opt_class() _detailTextFont];
  [_detailTextFont _scaledValueForValue:12.0];
  v4 = v3;

  return v4;
}

@end