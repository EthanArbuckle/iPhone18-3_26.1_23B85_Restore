@interface HKElectrocardiogramAxisOptions
- (HKElectrocardiogramAxisOptions)initWithAxisLabelFont:(id)a3 axisLabelTextColor:(id)a4 scaleMetricsAutomatically:(BOOL)a5 lineColor:(id)a6 lineWidth:(double)a7 axisLineToLabelSpacing:(double)a8 topBaselineMargin:(double)a9 bottomBaselineMargin:(double)a10;
@end

@implementation HKElectrocardiogramAxisOptions

- (HKElectrocardiogramAxisOptions)initWithAxisLabelFont:(id)a3 axisLabelTextColor:(id)a4 scaleMetricsAutomatically:(BOOL)a5 lineColor:(id)a6 lineWidth:(double)a7 axisLineToLabelSpacing:(double)a8 topBaselineMargin:(double)a9 bottomBaselineMargin:(double)a10
{
  v19 = a3;
  v20 = a4;
  v21 = a6;
  v25.receiver = self;
  v25.super_class = HKElectrocardiogramAxisOptions;
  v22 = [(HKElectrocardiogramAxisOptions *)&v25 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_axisLabelFont, a3);
    objc_storeStrong(&v23->_axisLabelTextColor, a4);
    v23->_scaleMetricsAutomatically = a5;
    objc_storeStrong(&v23->_lineColor, a6);
    v23->_lineWidth = a7;
    v23->_axisLineToLabelSpacing = a8;
    v23->_topBaselineMargin = a9;
    v23->_bottomBaselineMargin = a10;
  }

  return v23;
}

@end