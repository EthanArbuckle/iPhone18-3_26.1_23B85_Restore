@interface HKChartAxisDimensionUsingTable
- (HKChartAxisDimensionUsingTable)initWithStepSizeTable:(HKStepSizeTableEntryDefn *)table stepSizeTableSize:(int64_t)size displayType:(id)type unitController:(id)controller;
- (HKStepSizeTableEntryDefn)_findStepSize:(double)size allowEqual:(BOOL)equal;
@end

@implementation HKChartAxisDimensionUsingTable

- (HKChartAxisDimensionUsingTable)initWithStepSizeTable:(HKStepSizeTableEntryDefn *)table stepSizeTableSize:(int64_t)size displayType:(id)type unitController:(id)controller
{
  typeCopy = type;
  controllerCopy = controller;
  v16.receiver = self;
  v16.super_class = HKChartAxisDimensionUsingTable;
  v13 = [(HKChartAxisDimensionUsingTable *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_stepSizeTable = table;
    v13->_stepSizeTableSize = size;
    objc_storeStrong(&v13->_displayType, type);
    objc_storeStrong(&v14->_unitController, controller);
  }

  return v14;
}

- (HKStepSizeTableEntryDefn)_findStepSize:(double)size allowEqual:(BOOL)equal
{
  stepSizeTable = self->_stepSizeTable;
  stepSizeTableSize = self->_stepSizeTableSize;
  result = &stepSizeTable[stepSizeTableSize - 1];
  if (stepSizeTableSize >= 1)
  {
    do
    {
      if (equal)
      {
        if (stepSizeTable->var0 >= size)
        {
          return stepSizeTable;
        }
      }

      else if (stepSizeTable->var0 > size)
      {
        return stepSizeTable;
      }

      ++stepSizeTable;
      --stepSizeTableSize;
    }

    while (stepSizeTableSize);
  }

  return result;
}

@end