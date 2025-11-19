@interface FIUIChartColor
- (FIUIChartColor)initWithThreshold:(double)a3 color:(id)a4;
- (FIUIChartColor)initWithThreshold:(double)a3 startColor:(id)a4 endColor:(id)a5;
- (void)drawInRect:(CGRect)a3 inContext:(CGContext *)a4;
@end

@implementation FIUIChartColor

- (FIUIChartColor)initWithThreshold:(double)a3 startColor:(id)a4 endColor:(id)a5
{
  v15[2] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v14.receiver = self;
  v14.super_class = FIUIChartColor;
  v10 = [(FIUIChartColor *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->_threshold = a3;
    v15[0] = [v8 CGColor];
    v15[1] = [v9 CGColor];
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
    v11->_gradient = CGGradientCreateWithColors(0, v12, 0);
  }

  return v11;
}

- (FIUIChartColor)initWithThreshold:(double)a3 color:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = FIUIChartColor;
  v7 = [(FIUIChartColor *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_threshold = a3;
    v7->_color = [v6 CGColor];
  }

  return v8;
}

- (void)drawInRect:(CGRect)a3 inContext:(CGContext *)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  CGContextSaveGState(a4);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  CGContextClipToRect(a4, v16);
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
    CGContextDrawLinearGradient(a4, self->_gradient, v14, v15, 0);
  }

  else
  {
    CGContextSetFillColorWithColor(a4, self->_color);
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    CGContextFillRect(a4, v21);
  }

  CGContextRestoreGState(a4);
}

@end