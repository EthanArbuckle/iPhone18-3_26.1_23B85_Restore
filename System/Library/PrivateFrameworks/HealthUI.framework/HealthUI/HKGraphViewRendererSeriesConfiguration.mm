@interface HKGraphViewRendererSeriesConfiguration
- (HKGraphViewRendererSeriesConfiguration)initWithRendererSeriesRows:(id)rows;
@end

@implementation HKGraphViewRendererSeriesConfiguration

- (HKGraphViewRendererSeriesConfiguration)initWithRendererSeriesRows:(id)rows
{
  rowsCopy = rows;
  v9.receiver = self;
  v9.super_class = HKGraphViewRendererSeriesConfiguration;
  v6 = [(HKGraphViewRendererSeriesConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_seriesRows, rows);
  }

  return v7;
}

@end