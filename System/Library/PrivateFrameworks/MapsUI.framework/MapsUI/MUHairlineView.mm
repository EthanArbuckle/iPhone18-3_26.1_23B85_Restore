@interface MUHairlineView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)result;
- (MUHairlineView)init;
- (MUHairlineView)initWithCoder:(id)coder;
- (MUHairlineView)initWithFrame:(CGRect)frame;
- (double)leadingMargin;
- (double)trailingMargin;
- (void)_updateIntrinsicThicknessForDisplayScale;
- (void)customInit;
- (void)didMoveToWindow;
- (void)setLeadingMargin:(double)margin;
- (void)setTrailingMargin:(double)margin;
- (void)setVertical:(BOOL)vertical;
@end

@implementation MUHairlineView

- (double)trailingMargin
{
  trailingMarginConstraint = [(MUHairlineView *)self trailingMarginConstraint];
  [trailingMarginConstraint constant];
  v4 = v3;

  return v4;
}

- (void)setTrailingMargin:(double)margin
{
  trailingMarginConstraint = [(MUHairlineView *)self trailingMarginConstraint];
  [trailingMarginConstraint setConstant:margin];
}

- (double)leadingMargin
{
  leadingMarginConstraint = [(MUHairlineView *)self leadingMarginConstraint];
  [leadingMarginConstraint constant];
  v4 = v3;

  return v4;
}

- (void)setLeadingMargin:(double)margin
{
  leadingMarginConstraint = [(MUHairlineView *)self leadingMarginConstraint];
  [leadingMarginConstraint setConstant:margin];
}

- (void)_updateIntrinsicThicknessForDisplayScale
{
  selfCopy = self;
  window = [(MUHairlineView *)selfCopy window];
  screen = [window screen];
  if (screen)
  {
    window2 = [(MUHairlineView *)selfCopy window];
    screen2 = [window2 screen];
    [screen2 nativeScale];
    v8 = v7;
  }

  else
  {
    window2 = [MEMORY[0x1E69DCEB0] mainScreen];
    [window2 nativeScale];
    v8 = v9;
  }

  if (v8 <= 0.0)
  {
    v10 = 1.0;
  }

  else
  {
    v10 = 1.0 / v8;
  }

  selfCopy->_intrinsicThickness = v10;

  [(MUHairlineView *)selfCopy invalidateIntrinsicContentSize];
}

- (CGSize)sizeThatFits:(CGSize)result
{
  intrinsicThickness = self->_intrinsicThickness;
  if (self->_vertical)
  {
    result.width = self->_intrinsicThickness;
  }

  else
  {
    result.height = self->_intrinsicThickness;
  }

  return result;
}

- (CGSize)intrinsicContentSize
{
  p_intrinsicThickness = &self->_intrinsicThickness;
  if (self->_vertical)
  {
    v3 = &self->_intrinsicThickness;
  }

  else
  {
    v3 = MEMORY[0x1E69DE788];
  }

  if (self->_vertical)
  {
    p_intrinsicThickness = MEMORY[0x1E69DE788];
  }

  v4 = *p_intrinsicThickness;
  v5 = *v3;
  result.height = v4;
  result.width = v5;
  return result;
}

- (void)didMoveToWindow
{
  v12.receiver = self;
  v12.super_class = MUHairlineView;
  [(MKHairlineView *)&v12 didMoveToWindow];
  selfCopy = self;
  window = [(MUHairlineView *)selfCopy window];
  screen = [window screen];
  if (screen)
  {
    window2 = [(MUHairlineView *)selfCopy window];

    screen2 = [window2 screen];
    [screen2 nativeScale];
    v9 = v8;
  }

  else
  {
    window2 = [MEMORY[0x1E69DCEB0] mainScreen];

    [window2 nativeScale];
    v9 = v10;
  }

  v11 = 1.0;
  if (v9 > 0.0)
  {
    v11 = 1.0 / v9;
  }

  if (v11 != selfCopy->_intrinsicThickness)
  {
    selfCopy->_intrinsicThickness = v11;
    [(MUHairlineView *)selfCopy invalidateIntrinsicContentSize];
  }
}

- (void)setVertical:(BOOL)vertical
{
  if (self->_vertical != vertical)
  {
    v19 = v10;
    v20 = v9;
    v21 = v8;
    v22 = v3;
    self->_vertical = vertical;
    if (vertical)
    {
      *&v7 = 1000.0;
    }

    else
    {
      *&v7 = 250.0;
    }

    if (vertical)
    {
      v13 = 250.0;
    }

    else
    {
      v13 = 1000.0;
    }

    if (vertical)
    {
      v14 = 1000.0;
    }

    else
    {
      v14 = 750.0;
    }

    if (vertical)
    {
      v15 = 750.0;
    }

    else
    {
      v15 = 1000.0;
    }

    [(MUHairlineView *)self setContentHuggingPriority:0 forAxis:v7, v11, v19, v20, v21, v4, v22, v5];
    *&v16 = v13;
    [(MUHairlineView *)self setContentHuggingPriority:1 forAxis:v16];
    *&v17 = v14;
    [(MUHairlineView *)self setContentCompressionResistancePriority:0 forAxis:v17];
    *&v18 = v15;

    [(MUHairlineView *)self setContentCompressionResistancePriority:1 forAxis:v18];
  }
}

- (void)customInit
{
  v17[1] = *MEMORY[0x1E69E9840];
  selfCopy = self;
  window = [(MUHairlineView *)selfCopy window];
  screen = [window screen];
  if (screen)
  {
    window2 = [(MUHairlineView *)selfCopy window];
    screen2 = [window2 screen];
    [screen2 nativeScale];
    v8 = v7;
  }

  else
  {
    window2 = [MEMORY[0x1E69DCEB0] mainScreen];
    [window2 nativeScale];
    v8 = v9;
  }

  if (v8 <= 0.0)
  {
    v10 = 1.0;
  }

  else
  {
    v10 = 1.0 / v8;
  }

  selfCopy->_intrinsicThickness = v10;
  LODWORD(v11) = 1148846080;
  [(MUHairlineView *)selfCopy setContentHuggingPriority:1 forAxis:v11];
  LODWORD(v12) = 1148846080;
  [(MUHairlineView *)selfCopy setContentCompressionResistancePriority:1 forAxis:v12];
  v13 = objc_opt_self();
  v17[0] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v15 = [(MUHairlineView *)selfCopy registerForTraitChanges:v14 withAction:sel__updateIntrinsicThicknessForDisplayScale];

  v16 = *MEMORY[0x1E69E9840];
}

- (MUHairlineView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = MUHairlineView;
  v3 = [(MUHairlineView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(MUHairlineView *)v3 customInit];
  }

  return v4;
}

- (MUHairlineView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MUHairlineView;
  v3 = [(MKHairlineView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MUHairlineView *)v3 customInit];
  }

  return v4;
}

- (MUHairlineView)init
{
  v5.receiver = self;
  v5.super_class = MUHairlineView;
  v2 = [(MKHairlineView *)&v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v3 = v2;
  if (v2)
  {
    [(MUHairlineView *)v2 customInit];
  }

  return v3;
}

@end