@interface HUQuickControlSegmentedControlSegment
- (HUQuickControlSegmentedControlSegment)initWithFrame:(CGRect)a3;
- (NSString)title;
- (void)_setupConstraints;
- (void)_updateBackgroundColor;
- (void)layoutSubviews;
- (void)setRoundedCorners:(unint64_t)a3;
- (void)setTitle:(id)a3;
@end

@implementation HUQuickControlSegmentedControlSegment

- (HUQuickControlSegmentedControlSegment)initWithFrame:(CGRect)a3
{
  v21.receiver = self;
  v21.super_class = HUQuickControlSegmentedControlSegment;
  v3 = [(HUQuickControlSegmentedControlSegment *)&v21 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D756B8]);
    [(HUQuickControlSegmentedControlSegment *)v3 setTitleLabel:v4];

    v5 = [(HUQuickControlSegmentedControlSegment *)v3 titleLabel];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

    v6 = [(HUQuickControlSegmentedControlSegment *)v3 titleLabel];
    [v6 setTextAlignment:1];

    v7 = [MEMORY[0x277D75348] systemGrayColor];
    v8 = [(HUQuickControlSegmentedControlSegment *)v3 titleLabel];
    [v8 setTextColor:v7];

    v9 = HUPillButtonTitleFont();
    v10 = [(HUQuickControlSegmentedControlSegment *)v3 titleLabel];
    [v10 setFont:v9];

    v11 = [(HUQuickControlSegmentedControlSegment *)v3 titleLabel];
    [(HUQuickControlSegmentedControlSegment *)v3 addSubview:v11];

    v12 = [(HUQuickControlSegmentedControlSegment *)v3 titleLabel];
    LODWORD(v13) = 1148846080;
    [v12 setContentHuggingPriority:0 forAxis:v13];

    v14 = [(HUQuickControlSegmentedControlSegment *)v3 titleLabel];
    LODWORD(v15) = 1148846080;
    [v14 setContentHuggingPriority:1 forAxis:v15];

    v16 = [(HUQuickControlSegmentedControlSegment *)v3 titleLabel];
    LODWORD(v17) = 1148846080;
    [v16 setContentCompressionResistancePriority:0 forAxis:v17];

    v18 = [(HUQuickControlSegmentedControlSegment *)v3 titleLabel];
    LODWORD(v19) = 1148846080;
    [v18 setContentCompressionResistancePriority:1 forAxis:v19];

    [(HUQuickControlSegmentedControlSegment *)v3 _setupConstraints];
  }

  return v3;
}

- (NSString)title
{
  v2 = [(HUQuickControlSegmentedControlSegment *)self titleLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  v5 = [(HUQuickControlSegmentedControlSegment *)self titleLabel];
  [v5 setText:v4];
}

- (void)setRoundedCorners:(unint64_t)a3
{
  if (self->_roundedCorners != a3)
  {
    v4 = a3;
    self->_roundedCorners = a3;
    v6 = [(HUQuickControlSegmentedControlSegment *)self layer];
    [v6 setMaskedCorners:v4 & 0xF];

    [(HUQuickControlSegmentedControlSegment *)self setNeedsLayout];
  }
}

- (void)_updateBackgroundColor
{
  if ([(HUQuickControlSegmentedControlSegment *)self isSelected])
  {
    v3 = [objc_opt_class() selectedColor];
LABEL_5:
    v4 = v3;
    [(HUQuickControlSegmentedControlSegment *)self setBackgroundColor:v3];

    return;
  }

  if ([(HUQuickControlSegmentedControlSegment *)self isHighlighted])
  {
    v3 = [objc_opt_class() highlightedColor];
    goto LABEL_5;
  }

  [(HUQuickControlSegmentedControlSegment *)self setBackgroundColor:0];
}

- (void)_setupConstraints
{
  v32 = [MEMORY[0x277CBEB18] array];
  v3 = [(HUQuickControlSegmentedControlSegment *)self titleLabel];
  v4 = [v3 centerXAnchor];
  v5 = [(HUQuickControlSegmentedControlSegment *)self centerXAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];
  [v32 addObject:v6];

  v7 = [(HUQuickControlSegmentedControlSegment *)self titleLabel];
  v8 = [v7 firstBaselineAnchor];
  v9 = [(HUQuickControlSegmentedControlSegment *)self topAnchor];
  [objc_opt_class() borderInset];
  v11 = [v8 constraintEqualToAnchor:v9 constant:20.0 - v10];

  LODWORD(v12) = 1144750080;
  [v11 setPriority:v12];
  [v32 addObject:v11];
  v13 = [(HUQuickControlSegmentedControlSegment *)self titleLabel];
  v14 = [v13 topAnchor];
  v15 = [(HUQuickControlSegmentedControlSegment *)self topAnchor];
  v16 = [v14 constraintGreaterThanOrEqualToAnchor:v15];
  [v32 addObject:v16];

  v17 = [(HUQuickControlSegmentedControlSegment *)self titleLabel];
  v18 = [v17 lastBaselineAnchor];
  v19 = [(HUQuickControlSegmentedControlSegment *)self bottomAnchor];
  [objc_opt_class() borderInset];
  v21 = [v18 constraintEqualToAnchor:v19 constant:-(10.0 - v20)];
  [v32 addObject:v21];

  v22 = [(HUQuickControlSegmentedControlSegment *)self widthAnchor];
  v23 = [(HUQuickControlSegmentedControlSegment *)self titleLabel];
  v24 = [v23 widthAnchor];
  v25 = [v22 constraintEqualToAnchor:v24 constant:32.0];
  [v32 addObject:v25];

  v26 = [(HUQuickControlSegmentedControlSegment *)self titleLabel];
  v27 = [v26 centerXAnchor];
  v28 = [(HUQuickControlSegmentedControlSegment *)self centerXAnchor];
  v29 = [v27 constraintEqualToAnchor:v28];
  [v32 addObject:v29];

  v30 = [(HUQuickControlSegmentedControlSegment *)self widthAnchor];
  v31 = [v30 constraintGreaterThanOrEqualToConstant:114.0];
  [v32 addObject:v31];

  [MEMORY[0x277CCAAD0] activateConstraints:v32];
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = HUQuickControlSegmentedControlSegment;
  [(HUQuickControlSegmentedControlSegment *)&v6 layoutSubviews];
  if ([(HUQuickControlSegmentedControlSegment *)self roundedCorners])
  {
    [(HUQuickControlSegmentedControlSegment *)self bounds];
    v4 = v3 * 0.5;
    v5 = [(HUQuickControlSegmentedControlSegment *)self layer];
    [v5 setCornerRadius:v4];
  }
}

@end