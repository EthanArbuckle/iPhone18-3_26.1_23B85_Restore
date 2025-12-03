@interface HKElectrocardiogramAxisOptions
- (HKElectrocardiogramAxisOptions)initWithAxisLabelFont:(id)font axisLabelTextColor:(id)color scaleMetricsAutomatically:(BOOL)automatically lineColor:(id)lineColor lineWidth:(double)width axisLineToLabelSpacing:(double)spacing topBaselineMargin:(double)margin bottomBaselineMargin:(double)self0;
@end

@implementation HKElectrocardiogramAxisOptions

- (HKElectrocardiogramAxisOptions)initWithAxisLabelFont:(id)font axisLabelTextColor:(id)color scaleMetricsAutomatically:(BOOL)automatically lineColor:(id)lineColor lineWidth:(double)width axisLineToLabelSpacing:(double)spacing topBaselineMargin:(double)margin bottomBaselineMargin:(double)self0
{
  fontCopy = font;
  colorCopy = color;
  lineColorCopy = lineColor;
  v25.receiver = self;
  v25.super_class = HKElectrocardiogramAxisOptions;
  v22 = [(HKElectrocardiogramAxisOptions *)&v25 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_axisLabelFont, font);
    objc_storeStrong(&v23->_axisLabelTextColor, color);
    v23->_scaleMetricsAutomatically = automatically;
    objc_storeStrong(&v23->_lineColor, lineColor);
    v23->_lineWidth = width;
    v23->_axisLineToLabelSpacing = spacing;
    v23->_topBaselineMargin = margin;
    v23->_bottomBaselineMargin = baselineMargin;
  }

  return v23;
}

@end