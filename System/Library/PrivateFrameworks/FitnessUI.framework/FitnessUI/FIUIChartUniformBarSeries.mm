@interface FIUIChartUniformBarSeries
- (FIUIChartUniformBarSeries)initWithFrame:(CGRect)frame;
- (double)xValueForPointFromChartPoint:(id)point;
- (void)dealloc;
- (void)drawLayer:(id)layer inContext:(CGContext *)context;
- (void)layoutSubviews;
- (void)setBarGradient:(CGGradient *)gradient;
@end

@implementation FIUIChartUniformBarSeries

- (FIUIChartUniformBarSeries)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = FIUIChartUniformBarSeries;
  v3 = [(FIUIChartUniformBarSeries *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    plotPoints = v3->_plotPoints;
    v3->_plotPoints = MEMORY[0x1E695E0F0];

    v4->_barWidth = 2.0;
    v4->_barSpacing = 0.5;
    v4->_barGradient = 0;
    v4->_roundedCornerRadius = 0.0;
  }

  return v4;
}

- (void)dealloc
{
  CGGradientRelease(self->_barGradient);
  v3.receiver = self;
  v3.super_class = FIUIChartUniformBarSeries;
  [(FIUIChartUniformBarSeries *)&v3 dealloc];
}

- (void)setBarGradient:(CGGradient *)gradient
{
  CGGradientRelease(self->_barGradient);
  self->_barGradient = CGGradientRetain(gradient);

  [(FIUIChartUniformBarSeries *)self setNeedsDisplay];
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = FIUIChartUniformBarSeries;
  [(FIUIChartSeries *)&v6 layoutSubviews];
  cGPointsFromDataSet = [(FIUIChartNumericSeries *)self CGPointsFromDataSet];
  plotPoints = self->_plotPoints;
  self->_plotPoints = cGPointsFromDataSet;

  layer = [(FIUIChartUniformBarSeries *)self layer];
  [layer setNeedsDisplay];
}

- (double)xValueForPointFromChartPoint:(id)point
{
  pointCopy = point;
  UIRoundToViewScale();
  v6 = v5;
  barWidth = self->_barWidth;
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v9 = currentCalendar;
  if (self->_minDate)
  {
    v10 = [currentCalendar startOfDayForDate:?];
  }

  else
  {
    date = [MEMORY[0x1E695DF00] date];
    v10 = [v9 startOfDayForDate:date];
  }

  v12 = v6 + barWidth;
  xValue = [pointCopy xValue];

  timeZone = [v9 timeZone];
  [timeZone daylightSavingTimeOffsetForDate:xValue];
  v16 = v15;

  timeZone2 = [v9 timeZone];
  [timeZone2 daylightSavingTimeOffsetForDate:v10];
  v19 = v18;

  [xValue timeIntervalSinceDate:v10];
  v21 = v6 + (v16 - v19 + v20) / 3600.0 * v12;

  return v21;
}

- (void)drawLayer:(id)layer inContext:(CGContext *)context
{
  v65 = *MEMORY[0x1E69E9840];
  UIGraphicsPushContext(context);
  UIRoundToViewScale();
  CGContextSetLineWidth(context, v6);
  c = context;
  CGContextSetLineCap(context, kCGLineCapButt);
  [(FIUIChartSeries *)self insetBounds];
  v8 = v7;
  path = CGPathCreateMutable();
  Mutable = CGPathCreateMutable();
  [(FIUIChartUniformBarSeries *)self bounds];
  v10 = [FIUIChartMultiDashedBackgroundView calculateRoundedLinePositionsForTotalWidth:25 lineWidth:self numberOfLines:v9 roundedInView:self->_barSpacing];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v11 = self->_plotPoints;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v54 objects:v64 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v55;
    do
    {
      v15 = 0;
      do
      {
        if (*v55 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v54 + 1) + 8 * v15);
        [v16 CGPointValue];
        if (v17 >= 0.0)
        {
          v18 = v17;
          [(FIUIChartUniformBarSeries *)self bounds];
          v20 = v18 / v19 * 24.0;
          v21 = vcvtms_u32_f32(v20);
          if (v21 + 1 >= [v10 count])
          {
            _HKInitializeLogging();
            v36 = *MEMORY[0x1E696B928];
            if (os_log_type_enabled(*MEMORY[0x1E696B928], OS_LOG_TYPE_DEFAULT))
            {
              v37 = v36;
              v38 = objc_opt_class();
              v39 = NSStringFromClass(v38);
              [v16 CGPointValue];
              v40 = NSStringFromCGPoint(v66);
              *buf = 138543618;
              v59 = v39;
              v60 = 2112;
              v61 = v40;
              _os_log_impl(&dword_1E5D0F000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@: Encountered a plot point out of chart bounds: %@", buf, 0x16u);
            }
          }

          else
          {
            v22 = [v10 objectAtIndexedSubscript:v21];
            [v22 floatValue];
            v24 = v23;

            v25 = [v10 objectAtIndexedSubscript:v21 + 1];
            [v25 floatValue];
            v27 = v26;

            barSpacing = self->_barSpacing;
            v29 = v27 - v24 - barSpacing;
            if (v29 <= 0.0)
            {
              _HKInitializeLogging();
              v41 = *MEMORY[0x1E696B928];
              if (os_log_type_enabled(*MEMORY[0x1E696B928], OS_LOG_TYPE_ERROR))
              {
                v42 = v41;
                v43 = objc_opt_class();
                v44 = NSStringFromClass(v43);
                *buf = 138543874;
                v59 = v44;
                v60 = 2048;
                v61 = v21;
                v62 = 2112;
                v63 = v10;
                _os_log_error_impl(&dword_1E5D0F000, v42, OS_LOG_TYPE_ERROR, "%{public}@: Encountered a negative barWidth for hourBucket value: %lu, computed from roundedLinePositions array: %@", buf, 0x20u);
              }
            }

            else
            {
              v30 = barSpacing + v24;
              [v16 CGPointValue];
              UIRoundToViewScale();
              v32 = v31;
              if (self->_roundedCornerRadius >= v29 * 0.5)
              {
                roundedCornerRadius = v29 * 0.5;
              }

              else
              {
                roundedCornerRadius = self->_roundedCornerRadius;
              }

              [(FIUIChartSeries *)self insetBounds];
              if (v32 == 0.0)
              {
                v35 = Mutable;
              }

              else
              {
                v35 = path;
              }

              v45 = v30;
              v46 = v29;
              v47 = v8;
              CGPathAddRoundedRect(v35, 0, *(&v34 - 1), roundedCornerRadius, roundedCornerRadius);
            }
          }
        }

        ++v15;
      }

      while (v13 != v15);
      v48 = [(NSArray *)v11 countByEnumeratingWithState:&v54 objects:v64 count:16];
      v13 = v48;
    }

    while (v48);
  }

  if (!CGPathIsEmpty(Mutable))
  {
    CGContextSaveGState(c);
    CGContextSetAlpha(c, 0.3);
    CGContextAddPath(c, Mutable);
    CGContextClip(c);
    barGradient = self->_barGradient;
    [(FIUIChartUniformBarSeries *)self bounds];
    v67.x = 1.0;
    v67.y = 0.0;
    v69.x = 1.0;
    CGContextDrawLinearGradient(c, barGradient, v67, v69, 0);
    CGContextRestoreGState(c);
  }

  if (!CGPathIsEmpty(path))
  {
    CGContextSaveGState(c);
    CGContextAddPath(c, path);
    CGContextClip(c);
    v50 = self->_barGradient;
    [(FIUIChartUniformBarSeries *)self bounds];
    v68.x = 1.0;
    v68.y = 0.0;
    v70.x = 1.0;
    CGContextDrawLinearGradient(c, v50, v68, v70, 0);
    CGContextRestoreGState(c);
  }

  CGPathRelease(path);
  CGPathRelease(Mutable);
  UIGraphicsPopContext();
}

@end