@interface HKHistogramAxisDimension
- (HKHistogramAxisDimensionDataSource)dataSource;
- (id)stringForLocation:(id)a3 formatterForStepSize:(id)a4;
@end

@implementation HKHistogramAxisDimension

- (id)stringForLocation:(id)a3 formatterForStepSize:(id)a4
{
  v5 = a3;
  v6 = [(HKHistogramAxisDimension *)self dataSource];
  v7 = [v6 stringForLocation:v5];

  return v7;
}

- (HKHistogramAxisDimensionDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end