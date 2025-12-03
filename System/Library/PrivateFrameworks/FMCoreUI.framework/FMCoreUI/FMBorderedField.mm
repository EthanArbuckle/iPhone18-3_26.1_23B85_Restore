@interface FMBorderedField
- (FMBorderedField)initWithCoder:(id)coder;
- (FMBorderedField)initWithFrame:(CGRect)frame;
- (void)awakeFromNib;
- (void)commonSetup;
- (void)prepareForInterfaceBuilder;
- (void)setBorderColor:(id)color;
@end

@implementation FMBorderedField

- (FMBorderedField)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = FMBorderedField;
  v3 = [(FMBorderedField *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(FMBorderedField *)v3 commonSetup];
  }

  return v4;
}

- (FMBorderedField)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = FMBorderedField;
  v3 = [(FMBorderedField *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(FMBorderedField *)v3 commonSetup];
  }

  return v4;
}

- (void)awakeFromNib
{
  v3.receiver = self;
  v3.super_class = FMBorderedField;
  [(FMBorderedField *)&v3 awakeFromNib];
  [(FMBorderedField *)self commonSetup];
}

- (void)prepareForInterfaceBuilder
{
  v3.receiver = self;
  v3.super_class = FMBorderedField;
  [(FMBorderedField *)&v3 prepareForInterfaceBuilder];
  [(FMBorderedField *)self commonSetup];
  [(FMBorderedField *)self setNeedsLayout];
}

- (void)commonSetup
{
  if (!self->_isConfigured)
  {
    [(FMBorderedField *)self bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v9 = [(FMRule *)[FMHorizontalRule alloc] initWithFrame:v3, v5, v7, 1.0];
    topRule = self->_topRule;
    self->_topRule = v9;

    v11 = [(FMRule *)[FMHorizontalRule alloc] initWithFrame:v4, v6, v8, 1.0];
    bottomRule = self->_bottomRule;
    self->_bottomRule = v11;

    [(FMHorizontalRule *)self->_topRule setTranslatesAutoresizingMaskIntoConstraints:0];
    [(FMHorizontalRule *)self->_bottomRule setTranslatesAutoresizingMaskIntoConstraints:0];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(FMHorizontalRule *)self->_topRule setBackgroundColor:clearColor];

    clearColor2 = [MEMORY[0x277D75348] clearColor];
    [(FMHorizontalRule *)self->_bottomRule setBackgroundColor:clearColor2];

    [(FMBorderedField *)self addSubview:self->_topRule];
    [(FMBorderedField *)self addSubview:self->_bottomRule];
    [(FMRule *)self->_topRule setLeading:1];
    topAnchor = [(FMHorizontalRule *)self->_topRule topAnchor];
    topAnchor2 = [(FMBorderedField *)self topAnchor];
    v17 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v17 setActive:1];

    leftAnchor = [(FMHorizontalRule *)self->_topRule leftAnchor];
    leftAnchor2 = [(FMBorderedField *)self leftAnchor];
    v20 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    [v20 setActive:1];

    rightAnchor = [(FMHorizontalRule *)self->_topRule rightAnchor];
    rightAnchor2 = [(FMBorderedField *)self rightAnchor];
    v23 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    [v23 setActive:1];

    heightAnchor = [(FMHorizontalRule *)self->_topRule heightAnchor];
    v25 = [heightAnchor constraintEqualToConstant:1.0];
    [v25 setActive:1];

    bottomAnchor = [(FMHorizontalRule *)self->_bottomRule bottomAnchor];
    bottomAnchor2 = [(FMBorderedField *)self bottomAnchor];
    v28 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v28 setActive:1];

    leftAnchor3 = [(FMHorizontalRule *)self->_bottomRule leftAnchor];
    leftAnchor4 = [(FMBorderedField *)self leftAnchor];
    v31 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4];
    [v31 setActive:1];

    rightAnchor3 = [(FMHorizontalRule *)self->_bottomRule rightAnchor];
    rightAnchor4 = [(FMBorderedField *)self rightAnchor];
    v34 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4];
    [v34 setActive:1];

    heightAnchor2 = [(FMHorizontalRule *)self->_bottomRule heightAnchor];
    v36 = [heightAnchor2 constraintEqualToConstant:1.0];
    [v36 setActive:1];

    self->_isConfigured = 1;
  }
}

- (void)setBorderColor:(id)color
{
  objc_storeStrong(&self->_borderColor, color);
  colorCopy = color;
  topRule = [(FMBorderedField *)self topRule];
  [topRule setColor:colorCopy];

  bottomRule = [(FMBorderedField *)self bottomRule];
  [bottomRule setColor:colorCopy];
}

@end