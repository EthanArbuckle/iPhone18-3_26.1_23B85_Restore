@interface _HKFixedValueDateSpanDelegate
- (HKDateRangeDataUpdateDelegate)updateCallbackDelegate;
- (HKFixedValueDateSpanDataSource)fixedValueDateSpanDataSource;
- (id)dataForDateRange:(id)range timeScope:(int64_t)scope;
@end

@implementation _HKFixedValueDateSpanDelegate

- (id)dataForDateRange:(id)range timeScope:(int64_t)scope
{
  rangeCopy = range;
  fixedValueDateSpanDataSource = [(_HKFixedValueDateSpanDelegate *)self fixedValueDateSpanDataSource];
  v8 = [fixedValueDateSpanDataSource dataForDateRange:rangeCopy timeScope:scope];

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