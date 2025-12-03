@interface FIUIChartColor
- (FIUIChartColor)initWithThreshold:(double)threshold color:(id)color;
- (FIUIChartColor)initWithThreshold:(double)threshold startColor:(id)color endColor:(id)endColor;
- (void)drawInRect:(CGRect)rect inContext:(CGContext *)context;
@end

@implementation FIUIChartColor

- (FIUIChartColor)initWithThreshold:(double)threshold startColor:(id)color endColor:(id)endColor
{
  v15[2] = *MEMORY[0x1E69E9840];
  colorCopy = color;
  endColorCopy = endColor;
  v14.receiver = self;
  v14.super_class = FIUIChartColor;
  v10 = [(FIUIChartColor *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->_threshold = threshold;
    v15[0] = [colorCopy CGColor];
    v15[1] = [endColorCopy CGColor];
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
    v11->_gradient = CGGradientCreateWithColors(0, v12, 0);
  }

  return v11;
}

- (FIUIChartColor)initWithThreshold:(double)threshold color:(id)color
{
  colorCopy = color;
  v10.receiver = self;
  v10.super_class = FIUIChartColor;
  v7 = [(FIUIChartColor *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_threshold = threshold;
    v7->_color = [colorCopy CGColor];
  }

  return v8;
}

- (void)drawInRect:(CGRect)rect inContext:(CGContext *)context
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  CGContextSaveGState(context);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  CGContextClipToRect(context, v16);
  if (self->_gradient)
  {
    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = height;
    MidX = CGRectGetMidX(v17);
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = width;
    v18.size.height = height;
    MinY = CGRectGetMinY(v18);
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    v12 = CGRectGetMidX(v19);
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    v15.y = CGRectGetMaxY(v20);
    v14.x = MidX;
    v14.y = MinY;
    v15.x = v12;
    CGContextDrawLinearGradient(context, self->_gradient, v14, v15, 0);
  }

  else
  {
    CGContextSetFillColorWithColor(context, self->_color);
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    CGContextFillRect(context, v21);
  }

  CGContextRestoreGState(context);
}

@end