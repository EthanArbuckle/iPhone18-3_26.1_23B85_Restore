@interface _HKSleepDurationAverageFormatter
- (_HKSleepDurationAverageFormatter)init;
- (id)formattedSelectedRangeLabelDataWithChartData:(id)data context:(int64_t)context;
- (void)_setRangeData:(id)data isTimeInBed:(BOOL)bed;
- (void)setCurrentVisibleAverageNumber:(id)number isTimeInBed:(BOOL)bed isHighlighted:(BOOL)highlighted useAverageCopy:(BOOL)copy;
@end

@implementation _HKSleepDurationAverageFormatter

- (_HKSleepDurationAverageFormatter)init
{
  v8.receiver = self;
  v8.super_class = _HKSleepDurationAverageFormatter;
  v2 = [(_HKSleepDurationAverageFormatter *)&v8 init];
  v3 = v2;
  if (v2)
  {
    rangeDataForTimeInBedAverage = v2->_rangeDataForTimeInBedAverage;
    v5 = MEMORY[0x1E695E0F0];
    v2->_rangeDataForTimeInBedAverage = MEMORY[0x1E695E0F0];

    rangeDataForTimeAsleepAverage = v3->_rangeDataForTimeAsleepAverage;
    v3->_rangeDataForTimeAsleepAverage = v5;
  }

  return v3;
}

- (void)setCurrentVisibleAverageNumber:(id)number isTimeInBed:(BOOL)bed isHighlighted:(BOOL)highlighted useAverageCopy:(BOOL)copy
{
  copyCopy = copy;
  bedCopy = bed;
  v21[1] = *MEMORY[0x1E69E9840];
  numberCopy = number;
  if (numberCopy)
  {
    if (copyCopy)
    {
      v11 = 3;
    }

    else
    {
      v11 = 0;
    }

    v12 = [[HKSelectedRangeData alloc] initWithStatisticsType:v11];
    v13 = v12;
    if (bedCopy)
    {
      v14 = 9;
    }

    else
    {
      v14 = 10;
    }

    [(HKSelectedRangeData *)v12 setDataType:v14];
    majorFont = [(HKInteractiveChartDataFormatter *)self majorFont];
    minorFont = [(HKInteractiveChartDataFormatter *)self minorFont];
    v17 = HKTimePeriodStringWithFonts(majorFont, minorFont, numberCopy, 0x1CuLL);

    [(HKSelectedRangeData *)v13 setAttributedString:v17];
    [(HKSelectedRangeData *)v13 setValueAsNumber:numberCopy];
    v18 = 0;
    if (!bedCopy)
    {
      v18 = _HKCategoryValueSleepAnalysisDefaultAsleepValue();
    }

    if (highlighted)
    {
      [MEMORY[0x1E69DC888] hk_sleepColorForSleepAnalysis:v18];
    }

    else
    {
      [MEMORY[0x1E69DC888] hk_sleepInactiveColorForSleepAnalysis:v18];
    }
    v19 = ;
    [(HKSelectedRangeData *)v13 setPrefixColor:v19];

    v21[0] = v13;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    [(_HKSleepDurationAverageFormatter *)self _setRangeData:v20 isTimeInBed:bedCopy];
  }

  else
  {
    [(_HKSleepDurationAverageFormatter *)self _setRangeData:MEMORY[0x1E695E0F0] isTimeInBed:bedCopy];
  }
}

- (id)formattedSelectedRangeLabelDataWithChartData:(id)data context:(int64_t)context
{
  lastObject = [data lastObject];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([lastObject annotationOptions] & 2) != 0)
  {
    rangeDataForTimeAsleepAverage = [(_HKSleepDurationAverageFormatter *)self rangeDataForTimeAsleepAverage];
  }

  else
  {
    rangeDataForTimeAsleepAverage = [(_HKSleepDurationAverageFormatter *)self rangeDataForTimeInBedAverage];
  }

  v7 = rangeDataForTimeAsleepAverage;

  return v7;
}

- (void)_setRangeData:(id)data isTimeInBed:(BOOL)bed
{
  if (bed)
  {
    [(_HKSleepDurationAverageFormatter *)self setRangeDataForTimeInBedAverage:data];
  }

  else
  {
    [(_HKSleepDurationAverageFormatter *)self setRangeDataForTimeAsleepAverage:data];
  }
}

@end