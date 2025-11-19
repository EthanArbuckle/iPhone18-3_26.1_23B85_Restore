@interface HKRoundedHeaderView
+ (double)_detailTextLastBaselineToBottom;
+ (double)_textLastBaselineToBottom;
+ (double)_topToTextFirstBaseline;
+ (double)estimatedHeight;
- (BOOL)_isLayingOutForAccessibility;
- (BOOL)_isTextLabelTruncated;
- (HKRoundedHeaderView)initWithColor:(id)a3 isInteractive:(BOOL)a4;
- (HKRoundedHeaderView)initWithFrame:(CGRect)a3;
- (HKRoundedHeaderView)initWithGradient:(id)a3;
- (NSString)detailText;
- (double)_headerViewWidth;
- (void)_setupConstraints;
- (void)_setupUI;
- (void)_updateTextConstraints;
- (void)_updateTextLabel;
- (void)setChevronColor:(id)a3;
- (void)setColor:(id)a3;
- (void)setDetailText:(id)a3;
- (void)setDetailTextColor:(id)a3;
- (void)setDetailTextCompositingFilter:(id)a3;
- (void)setGradient:(id)a3;
- (void)setImage:(id)a3;
- (void)setText:(id)a3;
- (void)setTextColor:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation HKRoundedHeaderView

- (HKRoundedHeaderView)initWithColor:(id)a3 isInteractive:(BOOL)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = HKRoundedHeaderView;
  v8 = [(HKRoundedHeaderView *)&v12 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v9 = v8;
  if (v8)
  {
    gradient = v8->_gradient;
    v8->_gradient = 0;

    objc_storeStrong(&v9->_color, a3);
    v9->_isInteractive = a4;
    [(HKRoundedHeaderView *)v9 _setupUI];
    [(HKRoundedHeaderView *)v9 _setupConstraints];
  }

  return v9;
}

- (HKRoundedHeaderView)initWithGradient:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HKRoundedHeaderView;
  v6 = [(HKRoundedHeaderView *)&v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_gradient, a3);
    v7->_isInteractive = 1;
    [(HKRoundedHeaderView *)v7 _setupUI];
    [(HKRoundedHeaderView *)v7 _setupConstraints];
  }

  return v7;
}

- (HKRoundedHeaderView)initWithFrame:(CGRect)a3
{
  v4 = [MEMORY[0x1E69DC888] whiteColor];
  v5 = [(HKRoundedHeaderView *)self initWithColor:v4];

  return v5;
}

- (void)setColor:(id)a3
{
  objc_storeStrong(&self->_color, a3);
  v5 = a3;
  [(HKRoundedHeaderView *)self setBackgroundColor:v5];
}

- (void)setChevronColor:(id)a3
{
  objc_storeStrong(&self->_chevronColor, a3);
  v5 = a3;
  v6 = [(HKRoundedHeaderView *)self chevronRightImageView];
  [v6 setTintColor:v5];
}

- (void)setGradient:(id)a3
{
  objc_storeStrong(&self->_gradient, a3);
  v5 = a3;
  v6 = [(HKRoundedHeaderView *)self gradientView];
  [v6 setGradient:v5];
}

- (void)setImage:(id)a3
{
  objc_storeStrong(&self->_image, a3);
  v5 = a3;
  v6 = [(HKRoundedHeaderView *)self imageView];
  [v6 setImage:v5];

  [(HKRoundedHeaderView *)self _updateTextConstraints];
}

- (void)setText:(id)a3
{
  objc_storeStrong(&self->_text, a3);
  [(HKRoundedHeaderView *)self _updateTextLabel];

  [(HKRoundedHeaderView *)self _updateUI];
}

- (void)setTextColor:(id)a3
{
  objc_storeStrong(&self->_textColor, a3);

  [(HKRoundedHeaderView *)self _updateTextLabel];
}

- (void)setDetailText:(id)a3
{
  v4 = a3;
  v5 = [(HKRoundedHeaderView *)self detailTextLabel];
  [v5 setText:v4];

  [(HKRoundedHeaderView *)self _updateUI];
}

- (NSString)detailText
{
  v2 = [(HKRoundedHeaderView *)self detailTextLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setDetailTextColor:(id)a3
{
  objc_storeStrong(&self->_detailTextColor, a3);
  v5 = a3;
  v6 = [(HKRoundedHeaderView *)self detailTextLabel];
  [v6 setTextColor:v5];
}

- (void)setDetailTextCompositingFilter:(id)a3
{
  objc_storeStrong(&self->_detailTextCompositingFilter, a3);
  v5 = a3;
  v8 = [MEMORY[0x1E6979378] filterWithType:v5];

  v6 = [(HKRoundedHeaderView *)self detailTextLabel];
  v7 = [v6 layer];
  [v7 setCompositingFilter:v8];
}

+ (double)estimatedHeight
{
  [objc_opt_class() _topToTextFirstBaseline];
  v3 = v2;
  [objc_opt_class() _textLastBaselineToBottom];
  return v3 + v4;
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = HKRoundedHeaderView;
  v4 = a3;
  [(HKRoundedHeaderView *)&v8 traitCollectionDidChange:v4];
  v5 = [(HKRoundedHeaderView *)self traitCollection:v8.receiver];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v4 preferredContentSizeCategory];

  LOBYTE(v4) = [v6 isEqualToString:v7];
  if ((v4 & 1) == 0)
  {
    [(HKRoundedHeaderView *)self _updateUI];
  }
}

- (BOOL)_isTextLabelTruncated
{
  v27[1] = *MEMORY[0x1E69E9840];
  v3 = [(HKRoundedHeaderView *)self textLabel];
  v4 = [v3 text];
  v26 = *MEMORY[0x1E69DB648];
  v5 = v26;
  v6 = [objc_opt_class() _textFont];
  v27[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
  [v4 sizeWithAttributes:v7];
  v9 = v8;

  v10 = [(HKRoundedHeaderView *)self detailTextLabel];
  v11 = [v10 text];
  v24 = v5;
  v12 = [objc_opt_class() _detailTextFont];
  v25 = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  [v11 sizeWithAttributes:v13];
  v15 = v14;

  [(HKRoundedHeaderView *)self _headerViewWidth];
  v17 = v16;
  [(HKRoundedHeaderView *)self textHorizontalInset];
  v19 = v15 + v18 * 3.0 + 8.0;
  v20 = [(HKRoundedHeaderView *)self chevronRightImageView];
  [v20 frame];
  v22 = v17 - (v19 + v21);

  return v9 > v22;
}

- (double)_headerViewWidth
{
  [(HKRoundedHeaderView *)self frame];
  if (v3 == 0.0)
  {
    v4 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v4 bounds];
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
  v3 = [(HKRoundedHeaderView *)self gradient];

  if (v3)
  {
    v4 = [HKGradientView alloc];
    v5 = [(HKRoundedHeaderView *)self gradient];
    v6 = [(HKGradientView *)v4 initWithGradient:v5];
    [(HKRoundedHeaderView *)self setGradientView:v6];

    v7 = [(HKRoundedHeaderView *)self gradientView];
    [v7 setOpaque:1];

    v8 = [(HKRoundedHeaderView *)self gradientView];
    [v8 setClipsToBounds:1];

    v9 = [(HKRoundedHeaderView *)self gradientView];
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

    v10 = [(HKRoundedHeaderView *)self gradientView];
    [(HKRoundedHeaderView *)self addSubview:v10];
  }

  else
  {
    v10 = [(HKRoundedHeaderView *)self color];
    [(HKRoundedHeaderView *)self setBackgroundColor:v10];
  }

  v11 = [(HKRoundedHeaderView *)self layer];
  [v11 setCornerRadius:10.0];

  v12 = [(HKRoundedHeaderView *)self layer];
  [v12 setMasksToBounds:1];

  v13 = [(HKRoundedHeaderView *)self layer];
  [v13 setMaskedCorners:3];

  v14 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  [(HKRoundedHeaderView *)self setImageView:v14];

  v15 = [(HKRoundedHeaderView *)self imageView];
  [v15 setClipsToBounds:1];

  v16 = [(HKRoundedHeaderView *)self imageView];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];

  v17 = [(HKRoundedHeaderView *)self imageView];
  [(HKRoundedHeaderView *)self addSubview:v17];

  v18 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(HKRoundedHeaderView *)self setTextLabel:v18];

  v19 = [(HKRoundedHeaderView *)self textLabel];
  [v19 setNumberOfLines:1];

  v20 = [(HKRoundedHeaderView *)self textLabel];
  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];

  v21 = [(HKRoundedHeaderView *)self textLabel];
  [v21 setAdjustsFontForContentSizeCategory:1];

  v22 = [objc_opt_class() _textFont];
  v23 = [(HKRoundedHeaderView *)self textLabel];
  [v23 setFont:v22];

  v24 = [(HKRoundedHeaderView *)self textLabel];
  [(HKRoundedHeaderView *)self addSubview:v24];

  v25 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(HKRoundedHeaderView *)self setDetailTextLabel:v25];

  v26 = [(HKRoundedHeaderView *)self detailTextLabel];
  [v26 setTranslatesAutoresizingMaskIntoConstraints:0];

  v27 = [(HKRoundedHeaderView *)self detailTextLabel];
  [v27 setAdjustsFontForContentSizeCategory:1];

  v28 = [objc_opt_class() _detailTextFont];
  v29 = [(HKRoundedHeaderView *)self detailTextLabel];
  [v29 setFont:v28];

  if ([(UIView *)self hk_isLeftToRight])
  {
    v30 = 2;
  }

  else
  {
    v30 = 0;
  }

  v31 = [(HKRoundedHeaderView *)self detailTextLabel];
  [v31 setTextAlignment:v30];

  v32 = [(HKRoundedHeaderView *)self detailTextLabel];
  [(HKRoundedHeaderView *)self addSubview:v32];

  v42 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] symbolicTraits:2];
  v33 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  [(HKRoundedHeaderView *)self setChevronRightImageView:v33];

  v34 = [MEMORY[0x1E69DCAD8] configurationWithFont:v42 scale:1];
  v35 = [(HKRoundedHeaderView *)self chevronRightImageView];
  [v35 setPreferredSymbolConfiguration:v34];

  if (self->_isInteractive)
  {
    v36 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.forward"];
    v37 = [(HKRoundedHeaderView *)self chevronRightImageView];
    [v37 setImage:v36];
  }

  v38 = [(HKRoundedHeaderView *)self chevronRightImageView];
  [v38 setTranslatesAutoresizingMaskIntoConstraints:0];

  chevronColor = self->_chevronColor;
  v40 = [(HKRoundedHeaderView *)self chevronRightImageView];
  [v40 setTintColor:chevronColor];

  v41 = [(HKRoundedHeaderView *)self chevronRightImageView];
  [(HKRoundedHeaderView *)self addSubview:v41];
}

- (void)_setupConstraints
{
  v3 = [(HKRoundedHeaderView *)self gradient];

  if (v3)
  {
    v4 = [(HKRoundedHeaderView *)self gradientView];
    [v4 hk_alignConstraintsWithView:self];
  }

  [(HKRoundedHeaderView *)self textHorizontalInset];
  v6 = v5;
  v7 = [(HKRoundedHeaderView *)self imageView];
  v8 = [v7 leadingAnchor];
  v9 = [(HKRoundedHeaderView *)self leadingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9 constant:v6];
  [v10 setActive:1];

  v11 = [(HKRoundedHeaderView *)self imageView];
  v12 = [v11 centerYAnchor];
  v13 = [(HKRoundedHeaderView *)self centerYAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  [v14 setActive:1];

  v15 = [(HKRoundedHeaderView *)self imageView];
  v16 = [v15 widthAnchor];
  v17 = [v16 constraintEqualToConstant:29.0];
  [v17 setActive:1];

  v18 = [(HKRoundedHeaderView *)self imageView];
  v19 = [v18 heightAnchor];
  v20 = [v19 constraintEqualToConstant:29.0];
  [v20 setActive:1];

  v21 = [(HKRoundedHeaderView *)self textLabel];
  v22 = [v21 leadingAnchor];
  v23 = [(HKRoundedHeaderView *)self leadingAnchor];
  v24 = [v22 constraintEqualToAnchor:v23 constant:v6];
  [(HKRoundedHeaderView *)self setTextLeadingConstraintToView:v24];

  v25 = [(HKRoundedHeaderView *)self textLabel];
  v26 = [v25 leadingAnchor];
  v27 = [(HKRoundedHeaderView *)self imageView];
  v28 = [v27 trailingAnchor];
  v29 = [v26 constraintEqualToAnchor:v28 constant:12.0];
  [(HKRoundedHeaderView *)self setTextLeadingConstraintToImageView:v29];

  v30 = [(HKRoundedHeaderView *)self textLabel];
  v31 = [v30 widthAnchor];
  v32 = [(HKRoundedHeaderView *)self widthAnchor];
  v33 = [v31 constraintLessThanOrEqualToAnchor:v32 multiplier:0.66];
  [(HKRoundedHeaderView *)self setTextLabelWidthConstraint:v33];

  v34 = [(HKRoundedHeaderView *)self textLabelWidthConstraint];
  LODWORD(v35) = 1144750080;
  [v34 setPriority:v35];

  v36 = [(HKRoundedHeaderView *)self detailTextLabel];
  v37 = [v36 widthAnchor];
  v38 = [(HKRoundedHeaderView *)self widthAnchor];
  v39 = [v37 constraintLessThanOrEqualToAnchor:v38 multiplier:0.34];
  [(HKRoundedHeaderView *)self setDetailTextLabelWidthConstraint:v39];

  v40 = [(HKRoundedHeaderView *)self detailTextLabelWidthConstraint];
  LODWORD(v41) = 1144750080;
  [v40 setPriority:v41];

  v42 = [(HKRoundedHeaderView *)self textLabel];
  v43 = [v42 firstBaselineAnchor];
  v44 = [(HKRoundedHeaderView *)self topAnchor];
  v45 = [v43 constraintEqualToAnchor:v44];
  [(HKRoundedHeaderView *)self setTextLabelFirstBaselineConstraint:v45];

  v46 = [(HKRoundedHeaderView *)self textLabelFirstBaselineConstraint];
  LODWORD(v47) = 1144750080;
  [v46 setPriority:v47];

  v48 = [(HKRoundedHeaderView *)self textLabelFirstBaselineConstraint];
  [v48 setActive:1];

  v49 = [(HKRoundedHeaderView *)self detailTextLabel];
  LODWORD(v50) = 1148846080;
  [v49 setContentCompressionResistancePriority:0 forAxis:v50];

  v51 = [(HKRoundedHeaderView *)self chevronRightImageView];
  v52 = [v51 layoutMarginsGuide];
  v53 = [v52 trailingAnchor];
  v54 = [(HKRoundedHeaderView *)self trailingAnchor];
  v55 = [v53 constraintEqualToAnchor:v54 constant:-v6];
  [v55 setActive:1];

  v56 = [(HKRoundedHeaderView *)self chevronRightImageView];
  LODWORD(v57) = 1148846080;
  [v56 setContentCompressionResistancePriority:0 forAxis:v57];

  v119 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v58 = [(HKRoundedHeaderView *)self detailTextLabel];
  v59 = [v58 leadingAnchor];
  v60 = [(HKRoundedHeaderView *)self textLabel];
  v61 = [v60 trailingAnchor];
  v62 = [v59 constraintGreaterThanOrEqualToAnchor:v61 constant:v6];
  [v119 addObject:v62];

  v63 = [(HKRoundedHeaderView *)self detailTextLabel];
  v64 = [v63 firstBaselineAnchor];
  v65 = [(HKRoundedHeaderView *)self textLabel];
  v66 = [v65 lastBaselineAnchor];
  v67 = [v64 constraintEqualToAnchor:v66];
  [v119 addObject:v67];

  v68 = [(HKRoundedHeaderView *)self chevronRightImageView];
  v69 = [v68 leadingAnchor];
  v70 = [(HKRoundedHeaderView *)self detailTextLabel];
  v71 = [v70 trailingAnchor];
  v72 = [v69 constraintEqualToAnchor:v71 constant:8.0];
  [v119 addObject:v72];

  v73 = [(HKRoundedHeaderView *)self chevronRightImageView];
  v74 = [v73 centerYAnchor];
  v75 = [(HKRoundedHeaderView *)self detailTextLabel];
  v76 = [v75 centerYAnchor];
  v77 = [v74 constraintEqualToAnchor:v76];
  [v119 addObject:v77];

  v78 = [(HKRoundedHeaderView *)self bottomAnchor];
  v79 = [(HKRoundedHeaderView *)self textLabel];
  v80 = [v79 lastBaselineAnchor];
  v81 = [v78 constraintEqualToAnchor:v80];
  [(HKRoundedHeaderView *)self setTextLabelBottomConstraint:v81];

  v82 = [(HKRoundedHeaderView *)self textLabelBottomConstraint];
  [v119 addObject:v82];

  v83 = [v119 copy];
  [(HKRoundedHeaderView *)self setRegularConstraints:v83];

  v84 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v85 = [(HKRoundedHeaderView *)self textLabel];
  v86 = [v85 trailingAnchor];
  v87 = [(HKRoundedHeaderView *)self chevronRightImageView];
  v88 = [v87 leadingAnchor];
  v89 = [v86 constraintLessThanOrEqualToAnchor:v88 constant:-8.0];
  [v84 addObject:v89];

  v90 = [(HKRoundedHeaderView *)self detailTextLabel];
  v91 = [v90 leadingAnchor];
  v92 = [(HKRoundedHeaderView *)self textLabel];
  v93 = [v92 leadingAnchor];
  v94 = [v91 constraintEqualToAnchor:v93];
  [v84 addObject:v94];

  v95 = [(HKRoundedHeaderView *)self detailTextLabel];
  v96 = [v95 trailingAnchor];
  v97 = [(HKRoundedHeaderView *)self textLabel];
  v98 = [v97 trailingAnchor];
  v99 = [v96 constraintEqualToAnchor:v98];
  [v84 addObject:v99];

  v100 = [(HKRoundedHeaderView *)self detailTextLabel];
  v101 = [v100 firstBaselineAnchor];
  v102 = [(HKRoundedHeaderView *)self textLabel];
  v103 = [v102 lastBaselineAnchor];
  v104 = [v101 constraintEqualToAnchor:v103];
  [(HKRoundedHeaderView *)self setDetailTextLabelFirstBaselineConstraint:v104];

  v105 = [(HKRoundedHeaderView *)self detailTextLabelFirstBaselineConstraint];
  [v84 addObject:v105];

  v106 = [(HKRoundedHeaderView *)self bottomAnchor];
  v107 = [(HKRoundedHeaderView *)self detailTextLabel];
  v108 = [v107 lastBaselineAnchor];
  v109 = [v106 constraintEqualToAnchor:v108];
  [(HKRoundedHeaderView *)self setDetailTextLabelBottomConstraint:v109];

  v110 = [(HKRoundedHeaderView *)self detailTextLabelBottomConstraint];
  [v84 addObject:v110];

  v111 = [(HKRoundedHeaderView *)self chevronRightImageView];
  v112 = [v111 centerYAnchor];
  v113 = [(HKRoundedHeaderView *)self textLabel];
  v114 = [v113 topAnchor];
  v115 = [v112 constraintEqualToAnchor:v114];
  [(HKRoundedHeaderView *)self setLargeTextChevronCenterYConstraint:v115];

  v116 = [(HKRoundedHeaderView *)self largeTextChevronCenterYConstraint];
  [v84 addObject:v116];

  v117 = [v84 copy];
  [(HKRoundedHeaderView *)self setLargeTextConstraints:v117];

  v118 = [(HKRoundedHeaderView *)self chevronRightImageView];
  [v118 layoutIfNeeded];

  [(HKRoundedHeaderView *)self _updateForCurrentSizeCategory];
}

- (void)_updateTextLabel
{
  v3 = [(HKRoundedHeaderView *)self text];

  if (v3)
  {
    v4 = MEMORY[0x1E696AD40];
    v5 = [(HKRoundedHeaderView *)self text];
    v6 = [objc_opt_class() _textFont];
    LODWORD(v7) = 0.5;
    v14 = [v4 hk_initWithString:v5 font:v6 hyphenationFactor:v7];

    v8 = [(HKRoundedHeaderView *)self textColor];

    if (v8)
    {
      v9 = *MEMORY[0x1E69DB650];
      v10 = [(HKRoundedHeaderView *)self textColor];
      v11 = [(HKRoundedHeaderView *)self text];
      [v14 addAttribute:v9 value:v10 range:{0, objc_msgSend(v11, "length")}];
    }

    v12 = [(HKRoundedHeaderView *)self textLabel];
    [v12 setAttributedText:v14];
  }

  else
  {
    v13 = [(HKRoundedHeaderView *)self textLabel];
    [v13 setAttributedText:0];

    v14 = [(HKRoundedHeaderView *)self textLabel];
    [v14 setText:&stru_1F42FFBE0];
  }
}

- (void)_updateTextConstraints
{
  v3 = [(HKRoundedHeaderView *)self image];
  v4 = v3 != 0;
  v5 = v3 == 0;

  v6 = [(HKRoundedHeaderView *)self imageView];
  [v6 setHidden:v5];

  v7 = [(HKRoundedHeaderView *)self textLeadingConstraintToView];
  [v7 setActive:v5];

  v8 = [(HKRoundedHeaderView *)self textLeadingConstraintToImageView];
  [v8 setActive:v4];

  if ([(HKRoundedHeaderView *)self _isLayingOutForAccessibility]|| [(HKRoundedHeaderView *)self _isTextLabelTruncated])
  {
    v9 = [(HKRoundedHeaderView *)self textLabelWidthConstraint];
    [v9 setActive:0];

    v10 = [(HKRoundedHeaderView *)self textLabel];
    [v10 setNumberOfLines:0];

    v11 = [(HKRoundedHeaderView *)self detailTextLabel];
    [v11 setNumberOfLines:0];

    v12 = [(HKRoundedHeaderView *)self detailTextLabelWidthConstraint];
    [v12 setActive:0];

    v13 = [(HKRoundedHeaderView *)self detailTextLabel];
    [v13 setTextAlignment:4];

    [objc_opt_class() _textLastBaselineToBottom];
    v15 = v14;
    v16 = [(HKRoundedHeaderView *)self detailTextLabelFirstBaselineConstraint];
    [v16 setConstant:v15];

    [objc_opt_class() _detailTextLastBaselineToBottom];
    v18 = v17;
    v19 = [(HKRoundedHeaderView *)self detailTextLabelBottomConstraint];
    [v19 setConstant:v18];

    v20 = MEMORY[0x1E696ACD8];
    v21 = [(HKRoundedHeaderView *)self regularConstraints];
    [v20 deactivateConstraints:v21];

    v22 = MEMORY[0x1E696ACD8];
    v23 = [(HKRoundedHeaderView *)self largeTextConstraints];
  }

  else
  {
    v24 = [(HKRoundedHeaderView *)self textLabelWidthConstraint];
    [v24 setActive:1];

    v25 = [(HKRoundedHeaderView *)self textLabel];
    [v25 setNumberOfLines:1];

    v26 = [(HKRoundedHeaderView *)self detailTextLabel];
    [v26 setNumberOfLines:1];

    v27 = [(HKRoundedHeaderView *)self detailTextLabelWidthConstraint];
    [v27 setActive:1];

    v28 = [(HKRoundedHeaderView *)self detailTextLabelFirstBaselineConstraint];
    [v28 setConstant:0.0];

    v29 = [objc_opt_class() _accessibilityContentSizeCategory];
    v30 = [(UIView *)self hk_trailingTextAlignmentAtOrBelowSizeCategory:v29];
    v31 = [(HKRoundedHeaderView *)self detailTextLabel];
    [v31 setTextAlignment:v30];

    [objc_opt_class() _textLastBaselineToBottom];
    v33 = v32;
    v34 = [(HKRoundedHeaderView *)self textLabelBottomConstraint];
    [v34 setConstant:v33];

    v35 = MEMORY[0x1E696ACD8];
    v36 = [(HKRoundedHeaderView *)self largeTextConstraints];
    [v35 deactivateConstraints:v36];

    v22 = MEMORY[0x1E696ACD8];
    v23 = [(HKRoundedHeaderView *)self regularConstraints];
  }

  v37 = v23;
  [v22 activateConstraints:v23];

  v38 = [(HKRoundedHeaderView *)self detailText];
  v39 = [v38 hk_copyNonEmptyString];

  if (!v39)
  {
    v40 = [(HKRoundedHeaderView *)self textLabelWidthConstraint];
    [v40 setActive:0];

    v41 = [(HKRoundedHeaderView *)self detailTextLabelWidthConstraint];
    [v41 setActive:0];
  }

  [objc_opt_class() _topToTextFirstBaseline];
  v43 = v42;
  v44 = [(HKRoundedHeaderView *)self textLabelFirstBaselineConstraint];
  [v44 setConstant:v43];

  v49 = [(HKRoundedHeaderView *)self textLabel];
  v45 = [v49 font];
  [v45 lineHeight];
  v47 = v46 * 0.5;
  v48 = [(HKRoundedHeaderView *)self largeTextChevronCenterYConstraint];
  [v48 setConstant:v47];
}

- (BOOL)_isLayingOutForAccessibility
{
  v2 = [objc_opt_class() _accessibilityContentSizeCategory];
  IsLargerThanSizeCategory = HKUIApplicationContentSizeCategoryIsLargerThanSizeCategory(v2);

  return IsLargerThanSizeCategory;
}

+ (double)_topToTextFirstBaseline
{
  v2 = [objc_opt_class() _textFont];
  [v2 _scaledValueForValue:28.0];
  v4 = v3;

  return v4;
}

+ (double)_textLastBaselineToBottom
{
  v2 = [objc_opt_class() _textFont];
  [v2 _scaledValueForValue:16.0];
  v4 = v3;

  return v4;
}

+ (double)_detailTextLastBaselineToBottom
{
  v2 = [objc_opt_class() _detailTextFont];
  [v2 _scaledValueForValue:12.0];
  v4 = v3;

  return v4;
}

@end