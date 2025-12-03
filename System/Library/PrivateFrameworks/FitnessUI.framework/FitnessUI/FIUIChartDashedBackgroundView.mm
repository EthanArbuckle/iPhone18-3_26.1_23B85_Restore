@interface FIUIChartDashedBackgroundView
- (FIUIChartDashedBackgroundView)initWithFrame:(CGRect)frame;
- (void)_updateLinePositions;
- (void)drawLine:(id)line rect:(CGRect)rect context:(CGContext *)context;
- (void)drawRect:(CGRect)rect;
@end

@implementation FIUIChartDashedBackgroundView

- (FIUIChartDashedBackgroundView)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = FIUIChartDashedBackgroundView;
  result = [(FIUIChartBackgroundView *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (result)
  {
    result->_direction = 0;
  }

  return result;
}

- (void)_updateLinePositions
{
  array = [MEMORY[0x1E695DF70] array];
  numLines = self->_numLines;
  if (numLines)
  {
    for (i = 0; i < numLines; ++i)
    {
      if (numLines == 1)
      {
        v8 = 0.5;
      }

      else
      {
        if (self->_shouldCenterLines)
        {
          v6 = (i + 1);
          v7 = (numLines + 1);
        }

        else
        {
          v6 = i;
          v7 = (numLines - 1);
        }

        v8 = v6 / v7;
      }

      v9 = [MEMORY[0x1E696AD98] numberWithDouble:v8];
      [(NSArray *)array addObject:v9];

      numLines = self->_numLines;
    }
  }

  linePositions = self->_linePositions;
  self->_linePositions = array;

  [(FIUIChartDashedBackgroundView *)self setNeedsDisplay];
}

- (void)drawLine:(id)line rect:(CGRect)rect context:(CGContext *)context
{
  width = rect.size.width;
  v15 = *MEMORY[0x1E69E9840];
  lineCopy = line;
  [lineCopy doubleValue];
  UIRoundToViewScale();
  v9 = v8;
  [lineCopy doubleValue];
  v11 = v10;

  if (v11 == 0.0)
  {
    v9 = v9 + -0.5;
  }

  v12 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.25];
  [v12 set];

  v14 = xmmword_1E5DB1910;
  UIRoundToViewScale();
  CGContextSetLineWidth(context, v13);
  CGContextSetLineDash(context, 0.0, &v14, 1uLL);
  CGContextMoveToPoint(context, 0.0, v9);
  CGContextAddLineToPoint(context, width, v9);
  CGContextStrokePath(context);
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  v46 = *MEMORY[0x1E69E9840];
  if (self->_lineType == 1)
  {
    y = rect.origin.y;
    x = rect.origin.x;
    CurrentContext = UIGraphicsGetCurrentContext();
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v9 = self->_linePositions;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v41;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v41 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [(FIUIChartDashedBackgroundView *)self drawLine:*(*(&v40 + 1) + 8 * i) rect:CurrentContext context:x, y, width, height];
        }

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v11);
    }

    UIGraphicsEndImageContext();
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v14 = self->_linePositions;
    v15 = [(NSArray *)v14 countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v37;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v37 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v36 + 1) + 8 * j);
          direction = self->_direction;
          [v19 doubleValue];
          if (direction)
          {
            UIRoundToViewScale();
            v22 = v21;
            [v19 doubleValue];
            if (v23 == 0.0)
            {
              v22 = v22 + -0.5;
            }

            [(UIColor *)self->_color setFill];
            UIRoundToViewScale();
            v25 = v24;
            [(FIUIChartBackgroundView *)self lineInsets];
            v27 = height - v26;
            v28 = 0.0;
          }

          else
          {
            UIRoundToViewScale();
            v30 = v29;
            [v19 doubleValue];
            if (v31 == 0.0)
            {
              v28 = v30 + -0.5;
            }

            else
            {
              v28 = v30;
            }

            [(UIColor *)self->_color setFill];
            UIRoundToViewScale();
            v27 = v32;
            v22 = 0.0;
            v25 = width;
          }

          v33 = v22;
          v34 = v28;
          v35 = v25;
          UIRectFill(*(&v27 - 3));
        }

        v16 = [(NSArray *)v14 countByEnumeratingWithState:&v36 objects:v44 count:16];
      }

      while (v16);
    }
  }
}

@end