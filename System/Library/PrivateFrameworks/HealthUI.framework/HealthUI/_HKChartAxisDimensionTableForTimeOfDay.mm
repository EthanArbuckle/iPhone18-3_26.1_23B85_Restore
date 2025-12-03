@interface _HKChartAxisDimensionTableForTimeOfDay
- (_HKChartAxisDimensionTableForTimeOfDay)initWithStepSizeTable:(HKStepSizeTableEntryDefn *)table stepSizeTableSize:(int64_t)size displayType:(id)type unitController:(id)controller;
- (id)stringForLocation:(id)location formatterForStepSize:(id)size;
@end

@implementation _HKChartAxisDimensionTableForTimeOfDay

- (_HKChartAxisDimensionTableForTimeOfDay)initWithStepSizeTable:(HKStepSizeTableEntryDefn *)table stepSizeTableSize:(int64_t)size displayType:(id)type unitController:(id)controller
{
  v10.receiver = self;
  v10.super_class = _HKChartAxisDimensionTableForTimeOfDay;
  v6 = [(HKChartAxisDimensionUsingTable *)&v10 initWithStepSizeTable:table stepSizeTableSize:size displayType:type unitController:controller];
  if (v6)
  {
    v7 = objc_alloc_init(HKTimeSinceStartOfDayNumberFormatter);
    numberFormatter = v6->_numberFormatter;
    v6->_numberFormatter = v7;
  }

  return v6;
}

- (id)stringForLocation:(id)location formatterForStepSize:(id)size
{
  locationCopy = location;
  numberFormatter = [(_HKChartAxisDimensionTableForTimeOfDay *)self numberFormatter];
  displayType = [(HKChartAxisDimensionUsingTable *)self displayType];
  unitController = [(HKChartAxisDimensionUsingTable *)self unitController];
  v9 = [numberFormatter stringFromNumber:locationCopy displayType:displayType unitController:unitController];

  return v9;
}

@end