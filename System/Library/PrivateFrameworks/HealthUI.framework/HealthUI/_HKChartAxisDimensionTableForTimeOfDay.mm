@interface _HKChartAxisDimensionTableForTimeOfDay
- (_HKChartAxisDimensionTableForTimeOfDay)initWithStepSizeTable:(HKStepSizeTableEntryDefn *)a3 stepSizeTableSize:(int64_t)a4 displayType:(id)a5 unitController:(id)a6;
- (id)stringForLocation:(id)a3 formatterForStepSize:(id)a4;
@end

@implementation _HKChartAxisDimensionTableForTimeOfDay

- (_HKChartAxisDimensionTableForTimeOfDay)initWithStepSizeTable:(HKStepSizeTableEntryDefn *)a3 stepSizeTableSize:(int64_t)a4 displayType:(id)a5 unitController:(id)a6
{
  v10.receiver = self;
  v10.super_class = _HKChartAxisDimensionTableForTimeOfDay;
  v6 = [(HKChartAxisDimensionUsingTable *)&v10 initWithStepSizeTable:a3 stepSizeTableSize:a4 displayType:a5 unitController:a6];
  if (v6)
  {
    v7 = objc_alloc_init(HKTimeSinceStartOfDayNumberFormatter);
    numberFormatter = v6->_numberFormatter;
    v6->_numberFormatter = v7;
  }

  return v6;
}

- (id)stringForLocation:(id)a3 formatterForStepSize:(id)a4
{
  v5 = a3;
  v6 = [(_HKChartAxisDimensionTableForTimeOfDay *)self numberFormatter];
  v7 = [(HKChartAxisDimensionUsingTable *)self displayType];
  v8 = [(HKChartAxisDimensionUsingTable *)self unitController];
  v9 = [v6 stringFromNumber:v5 displayType:v7 unitController:v8];

  return v9;
}

@end