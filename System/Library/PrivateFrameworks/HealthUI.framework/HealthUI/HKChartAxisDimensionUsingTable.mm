@interface HKChartAxisDimensionUsingTable
- (HKChartAxisDimensionUsingTable)initWithStepSizeTable:(HKStepSizeTableEntryDefn *)a3 stepSizeTableSize:(int64_t)a4 displayType:(id)a5 unitController:(id)a6;
- (HKStepSizeTableEntryDefn)_findStepSize:(double)a3 allowEqual:(BOOL)a4;
@end

@implementation HKChartAxisDimensionUsingTable

- (HKChartAxisDimensionUsingTable)initWithStepSizeTable:(HKStepSizeTableEntryDefn *)a3 stepSizeTableSize:(int64_t)a4 displayType:(id)a5 unitController:(id)a6
{
  v11 = a5;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = HKChartAxisDimensionUsingTable;
  v13 = [(HKChartAxisDimensionUsingTable *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_stepSizeTable = a3;
    v13->_stepSizeTableSize = a4;
    objc_storeStrong(&v13->_displayType, a5);
    objc_storeStrong(&v14->_unitController, a6);
  }

  return v14;
}

- (HKStepSizeTableEntryDefn)_findStepSize:(double)a3 allowEqual:(BOOL)a4
{
  stepSizeTable = self->_stepSizeTable;
  stepSizeTableSize = self->_stepSizeTableSize;
  result = &stepSizeTable[stepSizeTableSize - 1];
  if (stepSizeTableSize >= 1)
  {
    do
    {
      if (a4)
      {
        if (stepSizeTable->var0 >= a3)
        {
          return stepSizeTable;
        }
      }

      else if (stepSizeTable->var0 > a3)
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