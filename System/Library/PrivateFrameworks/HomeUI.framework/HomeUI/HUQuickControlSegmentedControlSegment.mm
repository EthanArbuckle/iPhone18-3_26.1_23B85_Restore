@interface HUQuickControlSegmentedControlSegment
- (HUQuickControlSegmentedControlSegment)initWithFrame:(CGRect)frame;
- (NSString)title;
- (void)_setupConstraints;
- (void)_updateBackgroundColor;
- (void)layoutSubviews;
- (void)setRoundedCorners:(unint64_t)corners;
- (void)setTitle:(id)title;
@end

@implementation HUQuickControlSegmentedControlSegment

- (HUQuickControlSegmentedControlSegment)initWithFrame:(CGRect)frame
{
  v21.receiver = self;
  v21.super_class = HUQuickControlSegmentedControlSegment;
  v3 = [(HUQuickControlSegmentedControlSegment *)&v21 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D756B8]);
    [(HUQuickControlSegmentedControlSegment *)v3 setTitleLabel:v4];

    titleLabel = [(HUQuickControlSegmentedControlSegment *)v3 titleLabel];
    [titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];

    titleLabel2 = [(HUQuickControlSegmentedControlSegment *)v3 titleLabel];
    [titleLabel2 setTextAlignment:1];

    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    titleLabel3 = [(HUQuickControlSegmentedControlSegment *)v3 titleLabel];
    [titleLabel3 setTextColor:systemGrayColor];

    v9 = HUPillButtonTitleFont();
    titleLabel4 = [(HUQuickControlSegmentedControlSegment *)v3 titleLabel];
    [titleLabel4 setFont:v9];

    titleLabel5 = [(HUQuickControlSegmentedControlSegment *)v3 titleLabel];
    [(HUQuickControlSegmentedControlSegment *)v3 addSubview:titleLabel5];

    titleLabel6 = [(HUQuickControlSegmentedControlSegment *)v3 titleLabel];
    LODWORD(v13) = 1148846080;
    [titleLabel6 setContentHuggingPriority:0 forAxis:v13];

    titleLabel7 = [(HUQuickControlSegmentedControlSegment *)v3 titleLabel];
    LODWORD(v15) = 1148846080;
    [titleLabel7 setContentHuggingPriority:1 forAxis:v15];

    titleLabel8 = [(HUQuickControlSegmentedControlSegment *)v3 titleLabel];
    LODWORD(v17) = 1148846080;
    [titleLabel8 setContentCompressionResistancePriority:0 forAxis:v17];

    titleLabel9 = [(HUQuickControlSegmentedControlSegment *)v3 titleLabel];
    LODWORD(v19) = 1148846080;
    [titleLabel9 setContentCompressionResistancePriority:1 forAxis:v19];

    [(HUQuickControlSegmentedControlSegment *)v3 _setupConstraints];
  }

  return v3;
}

- (NSString)title
{
  titleLabel = [(HUQuickControlSegmentedControlSegment *)self titleLabel];
  text = [titleLabel text];

  return text;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  titleLabel = [(HUQuickControlSegmentedControlSegment *)self titleLabel];
  [titleLabel setText:titleCopy];
}

- (void)setRoundedCorners:(unint64_t)corners
{
  if (self->_roundedCorners != corners)
  {
    cornersCopy = corners;
    self->_roundedCorners = corners;
    layer = [(HUQuickControlSegmentedControlSegment *)self layer];
    [layer setMaskedCorners:cornersCopy & 0xF];

    [(HUQuickControlSegmentedControlSegment *)self setNeedsLayout];
  }
}

- (void)_updateBackgroundColor
{
  if ([(HUQuickControlSegmentedControlSegment *)self isSelected])
  {
    selectedColor = [objc_opt_class() selectedColor];
LABEL_5:
    v4 = selectedColor;
    [(HUQuickControlSegmentedControlSegment *)self setBackgroundColor:selectedColor];

    return;
  }

  if ([(HUQuickControlSegmentedControlSegment *)self isHighlighted])
  {
    selectedColor = [objc_opt_class() highlightedColor];
    goto LABEL_5;
  }

  [(HUQuickControlSegmentedControlSegment *)self setBackgroundColor:0];
}

- (void)_setupConstraints
{
  array = [MEMORY[0x277CBEB18] array];
  titleLabel = [(HUQuickControlSegmentedControlSegment *)self titleLabel];
  centerXAnchor = [titleLabel centerXAnchor];
  centerXAnchor2 = [(HUQuickControlSegmentedControlSegment *)self centerXAnchor];
  v6 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [array addObject:v6];

  titleLabel2 = [(HUQuickControlSegmentedControlSegment *)self titleLabel];
  firstBaselineAnchor = [titleLabel2 firstBaselineAnchor];
  topAnchor = [(HUQuickControlSegmentedControlSegment *)self topAnchor];
  [objc_opt_class() borderInset];
  v11 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:20.0 - v10];

  LODWORD(v12) = 1144750080;
  [v11 setPriority:v12];
  [array addObject:v11];
  titleLabel3 = [(HUQuickControlSegmentedControlSegment *)self titleLabel];
  topAnchor2 = [titleLabel3 topAnchor];
  topAnchor3 = [(HUQuickControlSegmentedControlSegment *)self topAnchor];
  v16 = [topAnchor2 constraintGreaterThanOrEqualToAnchor:topAnchor3];
  [array addObject:v16];

  titleLabel4 = [(HUQuickControlSegmentedControlSegment *)self titleLabel];
  lastBaselineAnchor = [titleLabel4 lastBaselineAnchor];
  bottomAnchor = [(HUQuickControlSegmentedControlSegment *)self bottomAnchor];
  [objc_opt_class() borderInset];
  v21 = [lastBaselineAnchor constraintEqualToAnchor:bottomAnchor constant:-(10.0 - v20)];
  [array addObject:v21];

  widthAnchor = [(HUQuickControlSegmentedControlSegment *)self widthAnchor];
  titleLabel5 = [(HUQuickControlSegmentedControlSegment *)self titleLabel];
  widthAnchor2 = [titleLabel5 widthAnchor];
  v25 = [widthAnchor constraintEqualToAnchor:widthAnchor2 constant:32.0];
  [array addObject:v25];

  titleLabel6 = [(HUQuickControlSegmentedControlSegment *)self titleLabel];
  centerXAnchor3 = [titleLabel6 centerXAnchor];
  centerXAnchor4 = [(HUQuickControlSegmentedControlSegment *)self centerXAnchor];
  v29 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  [array addObject:v29];

  widthAnchor3 = [(HUQuickControlSegmentedControlSegment *)self widthAnchor];
  v31 = [widthAnchor3 constraintGreaterThanOrEqualToConstant:114.0];
  [array addObject:v31];

  [MEMORY[0x277CCAAD0] activateConstraints:array];
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
    layer = [(HUQuickControlSegmentedControlSegment *)self layer];
    [layer setCornerRadius:v4];
  }
}

@end