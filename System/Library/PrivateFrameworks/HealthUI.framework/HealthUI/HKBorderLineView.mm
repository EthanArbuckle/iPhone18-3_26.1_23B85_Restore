@interface HKBorderLineView
+ (void)drawBorderLinesInContext:(CGContext *)context bounds:(CGRect)bounds verticalDrawRanges:(id)ranges borderEdges:(int64_t)edges borderLineWidth:(double)width borderLineColor:(id)color borderInsets:(UIEdgeInsets)insets;
- (CGSize)intrinsicContentSize;
- (HKBorderLineView)initWithCoder:(id)coder;
- (HKBorderLineView)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)borderInsets;
- (id)_adjustedVerticalDrawRanges;
- (void)_initFields;
- (void)drawRect:(CGRect)rect;
- (void)setBorderLineColor:(id)color;
- (void)setVerticalDrawRanges:(id)ranges;
@end

@implementation HKBorderLineView

- (HKBorderLineView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = HKBorderLineView;
  v3 = [(HKBorderLineView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(HKBorderLineView *)v3 _initFields];
  }

  return v4;
}

- (HKBorderLineView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = HKBorderLineView;
  v3 = [(HKBorderLineView *)&v6 initWithCoder:coder];
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
  hk_chartAxisMajorGridColor = [MEMORY[0x1E69DC888] hk_chartAxisMajorGridColor];
  borderLineColor = self->_borderLineColor;
  self->_borderLineColor = hk_chartAxisMajorGridColor;

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

- (void)drawRect:(CGRect)rect
{
  CurrentContext = UIGraphicsGetCurrentContext();
  [(HKBorderLineView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  _adjustedVerticalDrawRanges = [(HKBorderLineView *)self _adjustedVerticalDrawRanges];
  edges = [(HKBorderLineView *)self edges];
  [(HKBorderLineView *)self borderWidth];
  v15 = v14;
  borderLineColor = [(HKBorderLineView *)self borderLineColor];
  [(HKBorderLineView *)self borderInsets];
  [HKBorderLineView drawBorderLinesInContext:CurrentContext bounds:_adjustedVerticalDrawRanges verticalDrawRanges:edges borderEdges:borderLineColor borderLineWidth:v6 borderLineColor:v8 borderInsets:v10, v12, v15, v17, v18, v19, v20];
}

- (void)setBorderLineColor:(id)color
{
  objc_storeStrong(&self->_borderLineColor, color);

  [(HKBorderLineView *)self setNeedsDisplay];
}

- (void)setVerticalDrawRanges:(id)ranges
{
  objc_storeStrong(&self->_verticalDrawRanges, ranges);

  [(HKBorderLineView *)self setNeedsDisplay];
}

- (id)_adjustedVerticalDrawRanges
{
  v29 = *MEMORY[0x1E69E9840];
  verticalDrawRanges = [(HKBorderLineView *)self verticalDrawRanges];

  if (verticalDrawRanges)
  {
    verticalDrawRanges = [MEMORY[0x1E695DF70] array];
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
          minValue = [v8 minValue];
          [minValue doubleValue];
          v11 = v10;
          [(HKBorderLineView *)self frame];
          v13 = v11 - v12;

          maxValue = [v8 maxValue];
          [maxValue doubleValue];
          v16 = v15;
          [(HKBorderLineView *)self frame];
          v18 = v16 - v17;

          v19 = [MEMORY[0x1E696AD98] numberWithDouble:v13];
          v20 = [MEMORY[0x1E696AD98] numberWithDouble:v18];
          v21 = [HKValueRange valueRangeWithMinValue:v19 maxValue:v20];

          [verticalDrawRanges addObject:v21];
        }

        v5 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v5);
    }
  }

  return verticalDrawRanges;
}

+ (void)drawBorderLinesInContext:(CGContext *)context bounds:(CGRect)bounds verticalDrawRanges:(id)ranges borderEdges:(int64_t)edges borderLineWidth:(double)width borderLineColor:(id)color borderInsets:(UIEdgeInsets)insets
{
  edgesCopy = edges;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v50 = *MEMORY[0x1E69E9840];
  rangesCopy = ranges;
  CGContextSetStrokeColorWithColor(context, [color CGColor]);
  CGContextSetLineWidth(context, width);
  if (edgesCopy)
  {
    CGContextMoveToPoint(context, x + insets.left, y + insets.top);
    CGContextAddLineToPoint(context, x + width - insets.right, y + insets.top);
  }

  if ((edgesCopy & 2) == 0)
  {
    if ((edgesCopy & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_19:
    CGContextMoveToPoint(context, x + insets.left, y + height - insets.bottom);
    CGContextAddLineToPoint(context, x + width - insets.right, y + height - insets.bottom);
    if ((edgesCopy & 8) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_20;
  }

  if (rangesCopy && [rangesCopy count])
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v17 = rangesCopy;
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
          minValue = [v22 minValue];
          [minValue floatValue];
          CGContextMoveToPoint(context, x + insets.left, insets.top + v24);

          maxValue = [v22 maxValue];
          [maxValue floatValue];
          CGContextAddLineToPoint(context, x + insets.left, v26 - insets.bottom);
        }

        v19 = [v17 countByEnumeratingWithState:&v44 objects:v49 count:16];
      }

      while (v19);
    }

    if ((edgesCopy & 4) != 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    CGContextMoveToPoint(context, x + insets.left, y + insets.top);
    CGContextAddLineToPoint(context, x + insets.left, y + height - insets.bottom);
    if ((edgesCopy & 4) != 0)
    {
      goto LABEL_19;
    }
  }

LABEL_5:
  if ((edgesCopy & 8) == 0)
  {
    goto LABEL_31;
  }

LABEL_20:
  if (rangesCopy && [rangesCopy count])
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v27 = rangesCopy;
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
          minValue2 = [v33 minValue];
          [minValue2 floatValue];
          CGContextMoveToPoint(context, v31, v35);

          maxValue2 = [v33 maxValue];
          [maxValue2 floatValue];
          CGContextAddLineToPoint(context, v31 - insets.right, v37);
        }

        v29 = [v27 countByEnumeratingWithState:&v40 objects:v48 count:16];
      }

      while (v29);
    }
  }

  else
  {
    v38 = x + width - insets.right;
    CGContextMoveToPoint(context, v38, y + insets.top);
    CGContextAddLineToPoint(context, v38, y + height - insets.bottom);
  }

LABEL_31:
  CGContextStrokePath(context);
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