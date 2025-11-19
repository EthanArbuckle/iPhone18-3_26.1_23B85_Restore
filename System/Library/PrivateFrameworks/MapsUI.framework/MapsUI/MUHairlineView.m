@interface MUHairlineView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)result;
- (MUHairlineView)init;
- (MUHairlineView)initWithCoder:(id)a3;
- (MUHairlineView)initWithFrame:(CGRect)a3;
- (double)leadingMargin;
- (double)trailingMargin;
- (void)_updateIntrinsicThicknessForDisplayScale;
- (void)customInit;
- (void)didMoveToWindow;
- (void)setLeadingMargin:(double)a3;
- (void)setTrailingMargin:(double)a3;
- (void)setVertical:(BOOL)a3;
@end

@implementation MUHairlineView

- (double)trailingMargin
{
  v2 = [(MUHairlineView *)self trailingMarginConstraint];
  [v2 constant];
  v4 = v3;

  return v4;
}

- (void)setTrailingMargin:(double)a3
{
  v4 = [(MUHairlineView *)self trailingMarginConstraint];
  [v4 setConstant:a3];
}

- (double)leadingMargin
{
  v2 = [(MUHairlineView *)self leadingMarginConstraint];
  [v2 constant];
  v4 = v3;

  return v4;
}

- (void)setLeadingMargin:(double)a3
{
  v4 = [(MUHairlineView *)self leadingMarginConstraint];
  [v4 setConstant:a3];
}

- (void)_updateIntrinsicThicknessForDisplayScale
{
  v2 = self;
  v3 = [(MUHairlineView *)v2 window];
  v4 = [v3 screen];
  if (v4)
  {
    v5 = [(MUHairlineView *)v2 window];
    v6 = [v5 screen];
    [v6 nativeScale];
    v8 = v7;
  }

  else
  {
    v5 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v5 nativeScale];
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

  v2->_intrinsicThickness = v10;

  [(MUHairlineView *)v2 invalidateIntrinsicContentSize];
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
  v3 = self;
  v4 = [(MUHairlineView *)v3 window];
  v5 = [v4 screen];
  if (v5)
  {
    v6 = [(MUHairlineView *)v3 window];

    v7 = [v6 screen];
    [v7 nativeScale];
    v9 = v8;
  }

  else
  {
    v6 = [MEMORY[0x1E69DCEB0] mainScreen];

    [v6 nativeScale];
    v9 = v10;
  }

  v11 = 1.0;
  if (v9 > 0.0)
  {
    v11 = 1.0 / v9;
  }

  if (v11 != v3->_intrinsicThickness)
  {
    v3->_intrinsicThickness = v11;
    [(MUHairlineView *)v3 invalidateIntrinsicContentSize];
  }
}

- (void)setVertical:(BOOL)a3
{
  if (self->_vertical != a3)
  {
    v19 = v10;
    v20 = v9;
    v21 = v8;
    v22 = v3;
    self->_vertical = a3;
    if (a3)
    {
      *&v7 = 1000.0;
    }

    else
    {
      *&v7 = 250.0;
    }

    if (a3)
    {
      v13 = 250.0;
    }

    else
    {
      v13 = 1000.0;
    }

    if (a3)
    {
      v14 = 1000.0;
    }

    else
    {
      v14 = 750.0;
    }

    if (a3)
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
  v2 = self;
  v3 = [(MUHairlineView *)v2 window];
  v4 = [v3 screen];
  if (v4)
  {
    v5 = [(MUHairlineView *)v2 window];
    v6 = [v5 screen];
    [v6 nativeScale];
    v8 = v7;
  }

  else
  {
    v5 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v5 nativeScale];
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

  v2->_intrinsicThickness = v10;
  LODWORD(v11) = 1148846080;
  [(MUHairlineView *)v2 setContentHuggingPriority:1 forAxis:v11];
  LODWORD(v12) = 1148846080;
  [(MUHairlineView *)v2 setContentCompressionResistancePriority:1 forAxis:v12];
  v13 = objc_opt_self();
  v17[0] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v15 = [(MUHairlineView *)v2 registerForTraitChanges:v14 withAction:sel__updateIntrinsicThicknessForDisplayScale];

  v16 = *MEMORY[0x1E69E9840];
}

- (MUHairlineView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = MUHairlineView;
  v3 = [(MUHairlineView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(MUHairlineView *)v3 customInit];
  }

  return v4;
}

- (MUHairlineView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = MUHairlineView;
  v3 = [(MKHairlineView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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