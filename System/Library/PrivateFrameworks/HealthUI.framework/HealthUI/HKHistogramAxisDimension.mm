@interface HKHistogramAxisDimension
- (HKHistogramAxisDimensionDataSource)dataSource;
- (id)stringForLocation:(id)location formatterForStepSize:(id)size;
@end

@implementation HKHistogramAxisDimension

- (id)stringForLocation:(id)location formatterForStepSize:(id)size
{
  locationCopy = location;
  dataSource = [(HKHistogramAxisDimension *)self dataSource];
  v7 = [dataSource stringForLocation:locationCopy];

  return v7;
}

- (HKHistogramAxisDimensionDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end