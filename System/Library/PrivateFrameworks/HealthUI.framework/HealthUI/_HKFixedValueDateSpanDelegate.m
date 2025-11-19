@interface _HKFixedValueDateSpanDelegate
- (HKDateRangeDataUpdateDelegate)updateCallbackDelegate;
- (HKFixedValueDateSpanDataSource)fixedValueDateSpanDataSource;
- (id)dataForDateRange:(id)a3 timeScope:(int64_t)a4;
@end

@implementation _HKFixedValueDateSpanDelegate

- (id)dataForDateRange:(id)a3 timeScope:(int64_t)a4
{
  v6 = a3;
  v7 = [(_HKFixedValueDateSpanDelegate *)self fixedValueDateSpanDataSource];
  v8 = [v7 dataForDateRange:v6 timeScope:a4];

  return v8;
}

- (HKFixedValueDateSpanDataSource)fixedValueDateSpanDataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_fixedValueDateSpanDataSource);

  return WeakRetained;
}

- (HKDateRangeDataUpdateDelegate)updateCallbackDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_updateCallbackDelegate);

  return WeakRetained;
}

@end