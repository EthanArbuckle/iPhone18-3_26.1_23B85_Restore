@interface FIUIChartBarSeries
- (FIUIChartBarSeries)init;
- (id)_chartColorForChartYValue:(double)value;
- (void)_strokeRect:(CGRect)rect context:(CGContext *)context color:(CGColor *)color width:(double)width;
- (void)_translateColorThresholds;
- (void)dealloc;
- (void)drawLayer:(id)layer inContext:(CGContext *)context;
- (void)layoutSubviews;
- (void)setBarGradient:(CGGradient *)gradient;
@end

@implementation FIUIChartBarSeries

- (FIUIChartBarSeries)init
{
  v11.receiver = self;
  v11.super_class = FIUIChartBarSeries;
  v2 = [(FIUIChartSeries *)&v11 init];
  v3 = v2;
  if (v2)
  {
    plotPoints = v2->_plotPoints;
    v2->_plotPoints = MEMORY[0x1E695E0F0];

    barLabels = v3->_barLabels;
    v3->_barLabels = 0;

    v3->_barWidth = 2.0;
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    barColor = v3->_barColor;
    v3->_barColor = whiteColor;

    v3->_barGradient = 0;
    v3->_barSpacing = 1.0;
    v3->_roundedCornerRadius = 0.0;
    v3->_fadeZeroBars = 0;
    whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
    fadedBarColor = v3->_fadedBarColor;
    v3->_fadedBarColor = whiteColor2;
  }

  return v3;
}

- (void)dealloc
{
  CGGradientRelease(self->_barGradient);
  v3.receiver = self;
  v3.super_class = FIUIChartBarSeries;
  [(FIUIChartBarSeries *)&v3 dealloc];
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = FIUIChartBarSeries;
  [(FIUIChartSeries *)&v8 layoutSubviews];
  cGPointsFromDataSet = [(FIUIChartNumericSeries *)self CGPointsFromDataSet];
  plotPoints = self->_plotPoints;
  self->_plotPoints = cGPointsFromDataSet;

  labelsFromDataSet = [(FIUIChartSeries *)self labelsFromDataSet];
  barLabels = self->_barLabels;
  self->_barLabels = labelsFromDataSet;

  [(FIUIChartBarSeries *)self _translateColorThresholds];
  layer = [(FIUIChartBarSeries *)self layer];
  [layer setNeedsDisplay];
}

- (void)drawLayer:(id)layer inContext:(CGContext *)context
{
  v94 = *MEMORY[0x1E69E9840];
  UIGraphicsPushContext(context);
  [(FIUIChartBarSeries *)self bounds];
  CGRectGetHeight(v97);
  UIRoundToViewScale();
  v7 = v6;
  [(FIUIChartBarSeries *)self bounds];
  CGRectGetWidth(v98);
  UIRoundToViewScale();
  v9 = v8;
  if (self->_strokeColor)
  {
    v10 = self->_strokeWidth > 0.0;
  }

  else
  {
    v10 = 0;
  }

  if (self->_backgroundStrokeColor)
  {
    v69 = self->_backgroundStrokeWidth > 0.0;
  }

  else
  {
    v69 = 0;
  }

  c = context;
  Mutable = CGPathCreateMutable();
  v63 = v10;
  if (self->_fadeZeroBars)
  {
    path = CGPathCreateMutable();
  }

  else
  {
    path = 0;
  }

  array = [MEMORY[0x1E695DF70] array];
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v11 = self->_plotPoints;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v86 objects:v93 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v87;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v87 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v86 + 1) + 8 * i) CGSizeValue];
        UIRoundToViewScale();
        v17 = v16;
        v18 = v7 - v16;
        if (v18 == 0.0)
        {
          if (self->_fadeZeroBars)
          {
            CGPathAddArc(path, 0, v9 + self->_roundedCornerRadius, v7 - self->_roundedCornerRadius, self->_roundedCornerRadius, 6.28318531, 0.0, 1);
            CGPathCloseSubpath(path);
          }

          barWidth = self->_barWidth;
          v20 = 0.0;
        }

        else
        {
          roundedCornerRadius = self->_roundedCornerRadius;
          if (v18 >= roundedCornerRadius + roundedCornerRadius)
          {
            v20 = v18;
          }

          else
          {
            v20 = roundedCornerRadius + roundedCornerRadius;
          }

          barWidth = self->_barWidth;
          v99.origin.x = v9;
          v99.origin.y = v17;
          v99.size.width = barWidth;
          v99.size.height = v20;
          CGPathAddRoundedRect(Mutable, 0, v99, roundedCornerRadius, self->_roundedCornerRadius);
        }

        v22 = [MEMORY[0x1E696B098] valueWithCGRect:{v9, v17, barWidth, v20}];
        [array addObject:v22];

        v9 = v9 + self->_barWidth + self->_barSpacing;
      }

      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v86 objects:v93 count:16];
    }

    while (v13);
  }

  if (self->_barGradient)
  {
    contextCopy2 = context;
    v24 = v63;
    v25 = v69;
    if (!CGPathIsEmpty(path))
    {
      CGContextSaveGState(context);
      CGContextAddPath(context, path);
      CGContextSetFillColorWithColor(context, [(UIColor *)self->_fadedBarColor CGColor]);
      CGContextFillPath(context);
      CGContextRestoreGState(context);
    }

    if (!CGPathIsEmpty(Mutable))
    {
      CGContextSaveGState(context);
      CGContextAddPath(context, Mutable);
      CGContextClip(context);
      v95.x = 1.0;
      v95.y = 0.0;
      v96.x = 1.0;
      v96.y = v7;
      CGContextDrawLinearGradient(context, self->_barGradient, v95, v96, 0);
      CGContextRestoreGState(context);
    }
  }

  else
  {
    contextCopy2 = context;
    CGContextSetFillColorWithColor(context, [(UIColor *)self->_barColor CGColor]);
    v24 = v63;
    v25 = v69;
  }

  CGContextSaveGState(contextCopy2);
  if (v25)
  {
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v26 = array;
    v27 = [v26 countByEnumeratingWithState:&v82 objects:v92 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v83;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v83 != v29)
          {
            objc_enumerationMutation(v26);
          }

          [*(*(&v82 + 1) + 8 * j) CGRectValue];
          v32 = v31;
          v34 = v33;
          [(FIUIChartSeries *)self insetBounds];
          [(FIUIChartBarSeries *)self _strokeRect:contextCopy2 context:[(UIColor *)self->_backgroundStrokeColor CGColor] color:v32 width:v35, v34 + 1.0, v36, self->_backgroundStrokeWidth];
        }

        v28 = [v26 countByEnumeratingWithState:&v82 objects:v92 count:16];
      }

      while (v28);
    }

    v24 = v63;
  }

  if (v24 || self->_barLabels && [(NSArray *)self->_labelAttributes count])
  {
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v37 = array;
    v38 = [v37 countByEnumeratingWithState:&v78 objects:v91 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = 0;
      v41 = *v79;
      v42 = -1.0;
      v62 = v37;
      v66 = *v79;
      do
      {
        v43 = 0;
        v67 = v39;
        do
        {
          if (*v79 != v41)
          {
            objc_enumerationMutation(v37);
          }

          v72 = v43;
          [*(*(&v78 + 1) + 8 * v43) CGRectValue];
          x = v100.origin.x;
          y = v100.origin.y;
          width = v100.size.width;
          height = v100.size.height;
          if (!CGRectIsEmpty(v100))
          {
            v101.origin.x = x;
            v101.origin.y = y;
            v101.size.width = width;
            v101.size.height = height;
            v48 = [(FIUIChartBarSeries *)self _chartColorForChartYValue:CGRectGetMinY(v101)];
            v49 = v48;
            if (v48)
            {
              [v48 drawInRect:contextCopy2 inContext:{x, y, width, height}];
            }

            v70 = v40;
            if (v24)
            {
              [(FIUIChartBarSeries *)self _strokeRect:contextCopy2 context:[(UIColor *)self->_strokeColor CGColor] color:x + v42 width:y, width + 1.0, height, self->_strokeWidth];
            }

            if (self->_barLabels && [(NSArray *)self->_labelAttributes count])
            {
              v64 = v49;
              v50 = [(NSArray *)self->_barLabels objectAtIndexedSubscript:v40];
              v74 = 0u;
              v75 = 0u;
              v76 = 0u;
              v77 = 0u;
              v51 = [v50 countByEnumeratingWithState:&v74 objects:v90 count:16];
              if (v51)
              {
                v52 = v51;
                v53 = *v75;
                do
                {
                  for (k = 0; k != v52; ++k)
                  {
                    if (*v75 != v53)
                    {
                      objc_enumerationMutation(v50);
                    }

                    v55 = *(*(&v74 + 1) + 8 * k);
                    if (([v55 isEqualToString:&stru_1F5F88F90] & 1) == 0)
                    {
                      v56 = [v50 indexOfObject:v55];
                      if ([(NSArray *)self->_labelAttributes count]<= v56)
                      {
                        v57 = 0;
                      }

                      else
                      {
                        v57 = v56;
                      }

                      v58 = [(NSArray *)self->_labelAttributes objectAtIndexedSubscript:v57];
                      [v55 boundingRectWithSize:0 options:v58 attributes:0 context:{x + v42, 1.79769313e308}];
                      UIRoundToViewScale();
                      [v55 drawAtPoint:v58 withAttributes:?];
                      UIRoundToViewScale();
                      v60 = v59;
                      v61 = x - v59;
                      [(FIUIChartBarSeries *)self bounds];
                      [(FIUIChartBarSeries *)self _strokeRect:c context:[(UIColor *)self->_barColor CGColor] color:v61 width:3.0, v60, CGRectGetHeight(v102) + -3.0, v60];
                    }
                  }

                  v52 = [v50 countByEnumeratingWithState:&v74 objects:v90 count:16];
                }

                while (v52);
              }

              contextCopy2 = c;
              v24 = v63;
              v37 = v62;
              v42 = -1.0;
              v49 = v64;
            }

            v40 = v70;
            v41 = v66;
            v39 = v67;
          }

          ++v40;
          v43 = v72 + 1;
        }

        while (v72 + 1 != v39);
        v39 = [v37 countByEnumeratingWithState:&v78 objects:v91 count:16];
      }

      while (v39);
    }
  }

  CGContextRestoreGState(contextCopy2);
  CGPathRelease(Mutable);
  CGPathRelease(path);
  UIGraphicsPopContext();
}

- (id)_chartColorForChartYValue:(double)value
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  reverseObjectEnumerator = [(NSArray *)self->_barColors reverseObjectEnumerator];
  v5 = [reverseObjectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        [v8 chartYValue];
        if (v9 >= value)
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [reverseObjectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

- (void)_strokeRect:(CGRect)rect context:(CGContext *)context color:(CGColor *)color width:(double)width
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  CGContextSetStrokeColorWithColor(context, color);
  CGContextSetLineWidth(context, width);
  CGContextBeginPath(context);
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  MinX = CGRectGetMinX(v21);
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  MaxY = CGRectGetMaxY(v22);
  CGContextMoveToPoint(context, MinX, MaxY);
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  v14 = CGRectGetMinX(v23);
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  MinY = CGRectGetMinY(v24);
  CGContextAddLineToPoint(context, v14, MinY);
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  MaxX = CGRectGetMaxX(v25);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  v17 = CGRectGetMinY(v26);
  CGContextAddLineToPoint(context, MaxX, v17);
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  v18 = CGRectGetMaxX(v27);
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  v19 = CGRectGetMaxY(v28);
  CGContextAddLineToPoint(context, v18, v19);
  CGContextClosePath(context);

  CGContextStrokePath(context);
}

- (void)_translateColorThresholds
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_barColors;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = MEMORY[0x1E696AD98];
        [v8 threshold];
        v10 = [v9 numberWithDouble:?];
        [(FIUIChartSeries *)self yValueForPointFromChartPointValue:v10];
        [v8 setChartYValue:?];
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (void)setBarGradient:(CGGradient *)gradient
{
  CGGradientRelease(self->_barGradient);
  self->_barGradient = CGGradientRetain(gradient);

  [(FIUIChartBarSeries *)self setNeedsDisplay];
}

@end