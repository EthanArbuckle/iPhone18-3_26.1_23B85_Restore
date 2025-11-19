@interface HKBorderLineView
+ (void)drawBorderLinesInContext:(CGContext *)a3 bounds:(CGRect)a4 verticalDrawRanges:(id)a5 borderEdges:(int64_t)a6 borderLineWidth:(double)a7 borderLineColor:(id)a8 borderInsets:(UIEdgeInsets)a9;
- (CGSize)intrinsicContentSize;
- (HKBorderLineView)initWithCoder:(id)a3;
- (HKBorderLineView)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)borderInsets;
- (id)_adjustedVerticalDrawRanges;
- (void)_initFields;
- (void)drawRect:(CGRect)a3;
- (void)setBorderLineColor:(id)a3;
- (void)setVerticalDrawRanges:(id)a3;
@end

@implementation HKBorderLineView

- (HKBorderLineView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = HKBorderLineView;
  v3 = [(HKBorderLineView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(HKBorderLineView *)v3 _initFields];
  }

  return v4;
}

- (HKBorderLineView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = HKBorderLineView;
  v3 = [(HKBorderLineView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(HKBorderLineView *)v3 _initFields];
  }

  return v4;
}

- (void)_initFields
{
  self->_edges = 0;
  self->_borderWidth = HKUIOnePixel();
  v3 = [MEMORY[0x1E69DC888] hk_chartAxisMajorGridColor];
  borderLineColor = self->_borderLineColor;
  self->_borderLineColor = v3;

  v5 = *(MEMORY[0x1E69DDCE0] + 16);
  *&self->_borderInsets.top = *MEMORY[0x1E69DDCE0];
  *&self->_borderInsets.bottom = v5;
  self->_minimumWidth = -1.0;
  self->_minimumHeight = -1.0;
  verticalDrawRanges = self->_verticalDrawRanges;
  self->_verticalDrawRanges = 0;
}

- (CGSize)intrinsicContentSize
{
  [(HKBorderLineView *)self minimumWidth];
  if (v3 <= 0.0 || ([(HKBorderLineView *)self minimumHeight], v4 <= 0.0))
  {
    v11.receiver = self;
    v11.super_class = HKBorderLineView;
    [(HKBorderLineView *)&v11 intrinsicContentSize];
    v6 = v9;
  }

  else
  {
    [(HKBorderLineView *)self minimumWidth];
    v6 = v5;
    [(HKBorderLineView *)self minimumHeight];
    v8 = v7;
  }

  v10 = v6;
  result.height = v8;
  result.width = v10;
  return result;
}

- (void)drawRect:(CGRect)a3
{
  CurrentContext = UIGraphicsGetCurrentContext();
  [(HKBorderLineView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v21 = [(HKBorderLineView *)self _adjustedVerticalDrawRanges];
  v13 = [(HKBorderLineView *)self edges];
  [(HKBorderLineView *)self borderWidth];
  v15 = v14;
  v16 = [(HKBorderLineView *)self borderLineColor];
  [(HKBorderLineView *)self borderInsets];
  [HKBorderLineView drawBorderLinesInContext:CurrentContext bounds:v21 verticalDrawRanges:v13 borderEdges:v16 borderLineWidth:v6 borderLineColor:v8 borderInsets:v10, v12, v15, v17, v18, v19, v20];
}

- (void)setBorderLineColor:(id)a3
{
  objc_storeStrong(&self->_borderLineColor, a3);

  [(HKBorderLineView *)self setNeedsDisplay];
}

- (void)setVerticalDrawRanges:(id)a3
{
  objc_storeStrong(&self->_verticalDrawRanges, a3);

  [(HKBorderLineView *)self setNeedsDisplay];
}

- (id)_adjustedVerticalDrawRanges
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = [(HKBorderLineView *)self verticalDrawRanges];

  if (v3)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = [(HKBorderLineView *)self verticalDrawRanges];
    v4 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v25;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v25 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v24 + 1) + 8 * i);
          v9 = [v8 minValue];
          [v9 doubleValue];
          v11 = v10;
          [(HKBorderLineView *)self frame];
          v13 = v11 - v12;

          v14 = [v8 maxValue];
          [v14 doubleValue];
          v16 = v15;
          [(HKBorderLineView *)self frame];
          v18 = v16 - v17;

          v19 = [MEMORY[0x1E696AD98] numberWithDouble:v13];
          v20 = [MEMORY[0x1E696AD98] numberWithDouble:v18];
          v21 = [HKValueRange valueRangeWithMinValue:v19 maxValue:v20];

          [v3 addObject:v21];
        }

        v5 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v5);
    }
  }

  return v3;
}

+ (void)drawBorderLinesInContext:(CGContext *)a3 bounds:(CGRect)a4 verticalDrawRanges:(id)a5 borderEdges:(int64_t)a6 borderLineWidth:(double)a7 borderLineColor:(id)a8 borderInsets:(UIEdgeInsets)a9
{
  v11 = a6;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v50 = *MEMORY[0x1E69E9840];
  v16 = a5;
  CGContextSetStrokeColorWithColor(a3, [a8 CGColor]);
  CGContextSetLineWidth(a3, a7);
  if (v11)
  {
    CGContextMoveToPoint(a3, x + a9.left, y + a9.top);
    CGContextAddLineToPoint(a3, x + width - a9.right, y + a9.top);
  }

  if ((v11 & 2) == 0)
  {
    if ((v11 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_19:
    CGContextMoveToPoint(a3, x + a9.left, y + height - a9.bottom);
    CGContextAddLineToPoint(a3, x + width - a9.right, y + height - a9.bottom);
    if ((v11 & 8) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_20;
  }

  if (v16 && [v16 count])
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v17 = v16;
    v18 = [v17 countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v45;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v45 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v44 + 1) + 8 * i);
          v23 = [v22 minValue];
          [v23 floatValue];
          CGContextMoveToPoint(a3, x + a9.left, a9.top + v24);

          v25 = [v22 maxValue];
          [v25 floatValue];
          CGContextAddLineToPoint(a3, x + a9.left, v26 - a9.bottom);
        }

        v19 = [v17 countByEnumeratingWithState:&v44 objects:v49 count:16];
      }

      while (v19);
    }

    if ((v11 & 4) != 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    CGContextMoveToPoint(a3, x + a9.left, y + a9.top);
    CGContextAddLineToPoint(a3, x + a9.left, y + height - a9.bottom);
    if ((v11 & 4) != 0)
    {
      goto LABEL_19;
    }
  }

LABEL_5:
  if ((v11 & 8) == 0)
  {
    goto LABEL_31;
  }

LABEL_20:
  if (v16 && [v16 count])
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v27 = v16;
    v28 = [v27 countByEnumeratingWithState:&v40 objects:v48 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v41;
      v31 = x + width;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v41 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v33 = *(*(&v40 + 1) + 8 * j);
          v34 = [v33 minValue];
          [v34 floatValue];
          CGContextMoveToPoint(a3, v31, v35);

          v36 = [v33 maxValue];
          [v36 floatValue];
          CGContextAddLineToPoint(a3, v31 - a9.right, v37);
        }

        v29 = [v27 countByEnumeratingWithState:&v40 objects:v48 count:16];
      }

      while (v29);
    }
  }

  else
  {
    v38 = x + width - a9.right;
    CGContextMoveToPoint(a3, v38, y + a9.top);
    CGContextAddLineToPoint(a3, v38, y + height - a9.bottom);
  }

LABEL_31:
  CGContextStrokePath(a3);
}

- (UIEdgeInsets)borderInsets
{
  top = self->_borderInsets.top;
  left = self->_borderInsets.left;
  bottom = self->_borderInsets.bottom;
  right = self->_borderInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end