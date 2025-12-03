@interface HKChartAxisDimensionFactory
+ (id)dimensionWithPurpose:(int64_t)purpose displayType:(id)type unitController:(id)controller;
@end

@implementation HKChartAxisDimensionFactory

+ (id)dimensionWithPurpose:(int64_t)purpose displayType:(id)type unitController:(id)controller
{
  typeCopy = type;
  controllerCopy = controller;
  if (purpose == 2)
  {
    v10 = [_HKChartAxisDimensionTableForTimeOfDay alloc];
    v11 = &_timeOfDayStepSizeTable;
    v12 = 8;
  }

  else if (purpose == 1)
  {
    v10 = [HKChartAxisDimensionUsingTable alloc];
    v11 = &_feetInchesStepSizeTable;
    v12 = 6;
  }

  else
  {
    if (purpose)
    {
      goto LABEL_8;
    }

    v10 = [HKChartAxisDimensionUsingTable alloc];
    v11 = &_durationStepSizeTable;
    v12 = 10;
  }

  v5 = [(_HKChartAxisDimensionTableForTimeOfDay *)v10 initWithStepSizeTable:v11 stepSizeTableSize:v12 displayType:typeCopy unitController:controllerCopy];
LABEL_8:

  return v5;
}

@end