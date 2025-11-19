@interface FIUIChartBarSeries
- (FIUIChartBarSeries)init;
- (id)_chartColorForChartYValue:(double)a3;
- (void)_strokeRect:(CGRect)a3 context:(CGContext *)a4 color:(CGColor *)a5 width:(double)a6;
- (void)_translateColorThresholds;
- (void)dealloc;
- (void)drawLayer:(id)a3 inContext:(CGContext *)a4;
- (void)layoutSubviews;
- (void)setBarGradient:(CGGradient *)a3;
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
    v6 = [MEMORY[0x1E69DC888] whiteColor];
    barColor = v3->_barColor;
    v3->_barColor = v6;

    v3->_barGradient = 0;
    v3->_barSpacing = 1.0;
    v3->_roundedCornerRadius = 0.0;
    v3->_fadeZeroBars = 0;
    v8 = [MEMORY[0x1E69DC888] whiteColor];
    fadedBarColor = v3->_fadedBarColor;
    v3->_fadedBarColor = v8;
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
  v3 = [(FIUIChartNumericSeries *)self CGPointsFromDataSet];
  plotPoints = self->_plotPoints;
  self->_plotPoints = v3;

  v5 = [(FIUIChartSeries *)self labelsFromDataSet];
  barLabels = self->_barLabels;
  self->_barLabels = v5;

  [(FIUIChartBarSeries *)self _translateColorThresholds];
  v7 = [(FIUIChartBarSeries *)self layer];
  [v7 setNeedsDisplay];
}

- (void)drawLayer:(id)a3 inContext:(CGContext *)a4
{
  v94 = *MEMORY[0x1E69E9840];
  UIGraphicsPushContext(a4);
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

  c = a4;
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

  v71 = [MEMORY[0x1E695DF70] array];
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
        [v71 addObject:v22];

        v9 = v9 + self->_barWidth + self->_barSpacing;
      }

      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v86 objects:v93 count:16];
    }

    while (v13);
  }

  if (self->_barGradient)
  {
    v23 = a4;
    v24 = v63;
    v25 = v69;
    if (!CGPathIsEmpty(path))
    {
      CGContextSaveGState(a4);
      CGContextAddPath(a4, path);
      CGContextSetFillColorWithColor(a4, [(UIColor *)self->_fadedBarColor CGColor]);
      CGContextFillPath(a4);
      CGContextRestoreGState(a4);
    }

    if (!CGPathIsEmpty(Mutable))
    {
      CGContextSaveGState(a4);
      CGContextAddPath(a4, Mutable);
      CGContextClip(a4);
      v95.x = 1.0;
      v95.y = 0.0;
      v96.x = 1.0;
      v96.y = v7;
      CGContextDrawLinearGradient(a4, self->_barGradient, v95, v96, 0);
      CGContextRestoreGState(a4);
    }
  }

  else
  {
    v23 = a4;
    CGContextSetFillColorWithColor(a4, [(UIColor *)self->_barColor CGColor]);
    v24 = v63;
    v25 = v69;
  }

  CGContextSaveGState(v23);
  if (v25)
  {
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v26 = v71;
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
          [(FIUIChartBarSeries *)self _strokeRect:v23 context:[(UIColor *)self->_backgroundStrokeColor CGColor] color:v32 width:v35, v34 + 1.0, v36, self->_backgroundStrokeWidth];
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
    v37 = v71;
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
              [v48 drawInRect:v23 inContext:{x, y, width, height}];
            }

            v70 = v40;
            if (v24)
            {
              [(FIUIChartBarSeries *)self _strokeRect:v23 context:[(UIColor *)self->_strokeColor CGColor] color:x + v42 width:y, width + 1.0, height, self->_strokeWidth];
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

              v23 = c;
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

  CGContextRestoreGState(v23);
  CGPathRelease(Mutable);
  CGPathRelease(path);
  UIGraphicsPopContext();
}

- (id)_chartColorForChartYValue:(double)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(NSArray *)self->_barColors reverseObjectEnumerator];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        [v8 chartYValue];
        if (v9 >= a3)
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (void)_strokeRect:(CGRect)a3 context:(CGContext *)a4 color:(CGColor *)a5 width:(double)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  CGContextSetStrokeColorWithColor(a4, a5);
  CGContextSetLineWidth(a4, a6);
  CGContextBeginPath(a4);
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
  CGContextMoveToPoint(a4, MinX, MaxY);
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
  CGContextAddLineToPoint(a4, v14, MinY);
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
  CGContextAddLineToPoint(a4, MaxX, v17);
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
  CGContextAddLineToPoint(a4, v18, v19);
  CGContextClosePath(a4);

  CGContextStrokePath(a4);
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

- (void)setBarGradient:(CGGradient *)a3
{
  CGGradientRelease(self->_barGradient);
  self->_barGradient = CGGradientRetain(a3);

  [(FIUIChartBarSeries *)self setNeedsDisplay];
}

@end