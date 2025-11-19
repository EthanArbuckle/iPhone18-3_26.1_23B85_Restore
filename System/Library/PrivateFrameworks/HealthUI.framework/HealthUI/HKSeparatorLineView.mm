@interface HKSeparatorLineView
+ (id)_hkecg_separatorView;
- (CGSize)intrinsicContentSize;
- (HKSeparatorLineView)initWithFrame:(CGRect)a3;
- (void)_applyStyleToContext:(CGContext *)a3;
- (void)drawRect:(CGRect)a3;
@end

@implementation HKSeparatorLineView

+ (id)_hkecg_separatorView
{
  v2 = objc_alloc_init(HKSeparatorLineView);
  [(HKSeparatorLineView *)v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(HKSeparatorLineView *)v2 setColor:v3];

  [(HKSeparatorLineView *)v2 setSeparatorThickness:HKUIFloorToScreenScale(0.5)];
  [(HKSeparatorLineView *)v2 setDashStyle:2];

  return v2;
}

- (HKSeparatorLineView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = HKSeparatorLineView;
  v3 = [(HKSeparatorLineView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] blackColor];
    color = v3->_color;
    v3->_color = v4;

    v3->_separatorThickness = 1.0;
    v3->_dashStyle = 0;
    v3->_leadingMargin = 0.0;
    v3->_trailingMargin = 0.0;
  }

  return v3;
}

- (CGSize)intrinsicContentSize
{
  v3 = [(HKSeparatorLineView *)self _isVertical];
  separatorThickness = self->_separatorThickness;
  if (v3)
  {
    v5 = self->_separatorThickness;
  }

  else
  {
    v5 = 0.0;
  }

  if (v3)
  {
    separatorThickness = 0.0;
  }

  result.height = separatorThickness;
  result.width = v5;
  return result;
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  CurrentContext = UIGraphicsGetCurrentContext();
  v9 = [(HKSeparatorLineView *)self backgroundColor];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  }

  v21 = v11;

  CGContextSetFillColorWithColor(CurrentContext, [v21 CGColor]);
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  CGContextFillRect(CurrentContext, v23);
  [(HKSeparatorLineView *)self _applyStyleToContext:CurrentContext];
  [(HKSeparatorLineView *)self frame];
  v13 = v12;
  v15 = v14;
  if ([(HKSeparatorLineView *)self _isVertical])
  {
    v16 = v13 * 0.5;
    CGContextMoveToPoint(CurrentContext, v16, self->_leadingMargin);
    v17 = v15 - self->_leadingMargin - self->_trailingMargin;
    v18 = CurrentContext;
    v19 = v16;
  }

  else
  {
    v20 = v15 * 0.5;
    CGContextMoveToPoint(CurrentContext, self->_leadingMargin, v20);
    v19 = v13 - self->_leadingMargin - self->_trailingMargin;
    v18 = CurrentContext;
    v17 = v20;
  }

  CGContextAddLineToPoint(v18, v19, v17);
  CGContextStrokePath(CurrentContext);
}

- (void)_applyStyleToContext:(CGContext *)a3
{
  CGContextSetStrokeColorWithColor(a3, [(UIColor *)self->_color CGColor]);
  CGContextSetLineWidth(a3, self->_separatorThickness);
  v5 = self->_dashStyle - 1;
  if (v5 <= 3)
  {
    v6 = *(&off_1E81B6E90 + v5);

    CGContextSetLineDash(a3, 0.0, v6, 2uLL);
  }
}

@end