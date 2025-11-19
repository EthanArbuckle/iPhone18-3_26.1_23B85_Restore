@interface HKHistogramChartDataSource
- (HKGraphSeriesDataBlockPath)blockPathForX:(SEL)a3 zoom:(id)a4 resolution:(int64_t)a5;
- (HKHistogramChartDataSource)initWithQuantityTypeIdentifier:(id)a3 healthStore:(id)a4 unitPreferenceController:(id)a5 predicate:(id)a6 yAxisRange:(id)a7 binCalculation:(unint64_t)a8 dateBasedBinModeConfig:(unint64_t)a9;
- (HKHistogramChartDataSource)initWithQuantityTypeIdentifier:(id)a3 healthStore:(id)a4 unitPreferenceController:(id)a5 predicate:(id)a6 yAxisRange:(id)a7 binWidth:(double)a8;
- (HKHistogramChartDataSourceDataFetchObserver)fetchObserver;
- (HKQuantityType)quantityType;
- (HKUnit)unit;
- (NSArray)sortDescriptors;
- (id)_buildQuantityValueRangesFromSortedSamples:(id)a3;
- (id)_dateBasedXValueRangeForConfig:(unint64_t)a3;
- (id)_dayNameFormatter;
- (id)_dayNameFromDayIndex:(unint64_t)a3;
- (id)_dayXAxisStringForLocation:(id)a3;
- (id)_daysOfTheWeek;
- (id)_displayType;
- (id)_hourNameFromHourIndex:(unint64_t)a3;
- (id)_hourOfTheDayFormatter;
- (id)_hourXAxisStringForLocation:(id)a3;
- (id)_initWithQuantityTypeIdentifier:(id)a3 healthStore:(id)a4 unitPreferenceController:(id)a5 predicate:(id)a6 xAxisRange:(id)a7 yAxisRange:(id)a8 binMode:(unint64_t)a9 binCalculation:(unint64_t)a10 binWidth:(double)a11 numberOfBins:(unint64_t)a12 dateBasedBinModeConfig:(unint64_t)a13;
- (id)_query;
- (id)buildBinsWithSamples:(id)a3;
- (id)buildGraphSeriesDataBlockFromSamples:(id)a3;
- (id)buildGraphSeriesDataBlockWithCalculatedBinValues:(id)a3;
- (id)cachedBlockForPath:(HKGraphSeriesDataBlockPath *)a3 context:(id)a4;
- (id)calculateBinValueForBins:(id)a3 usingCalculation:(unint64_t)a4;
- (id)xAxisStringForLocation:(id)a3;
- (unint64_t)_binIndexForSample:(id)a3;
- (unint64_t)_dateBasedBinIndexForSample:(id)a3;
- (unint64_t)_dayIndexForDayName:(id)a3;
- (unint64_t)_normalBinIndexForSample:(id)a3;
- (void)didCompleteFetch;
- (void)fetchData;
@end

@implementation HKHistogramChartDataSource

- (id)_initWithQuantityTypeIdentifier:(id)a3 healthStore:(id)a4 unitPreferenceController:(id)a5 predicate:(id)a6 xAxisRange:(id)a7 yAxisRange:(id)a8 binMode:(unint64_t)a9 binCalculation:(unint64_t)a10 binWidth:(double)a11 numberOfBins:(unint64_t)a12 dateBasedBinModeConfig:(unint64_t)a13
{
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v30 = a6;
  v29 = a7;
  v28 = a8;
  v31.receiver = self;
  v31.super_class = HKHistogramChartDataSource;
  v24 = [(HKGraphSeriesDataSource *)&v31 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_quantityIdentifier, a3);
    objc_storeStrong(&v25->_healthStore, a4);
    objc_storeStrong(&v25->_unitPreferenceController, a5);
    objc_storeStrong(&v25->_predicate, a6);
    objc_storeStrong(&v25->_xAxisRange, a7);
    objc_storeStrong(&v25->_yAxisRange, a8);
    v25->_binningMode = a9;
    v25->_binCalculation = a10;
    v25->_binWidth = a11;
    v25->_numberOfBins = a12;
    v25->_dateBasedBinModeConfig = a13;
    v25->_didExecuteQuery = 0;
    dataBlock = v25->_dataBlock;
    v25->_dataBlock = 0;
  }

  return v25;
}

- (HKHistogramChartDataSource)initWithQuantityTypeIdentifier:(id)a3 healthStore:(id)a4 unitPreferenceController:(id)a5 predicate:(id)a6 yAxisRange:(id)a7 binWidth:(double)a8
{
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = [HKValueRange valueRangeWithMinValue:&unk_1F4381FC0 maxValue:&unk_1F4381FD8];
  v20 = [(HKHistogramChartDataSource *)self _initWithQuantityTypeIdentifier:v18 healthStore:v17 unitPreferenceController:v16 predicate:v15 xAxisRange:v19 yAxisRange:v14 binMode:a8 binCalculation:0 binWidth:1 numberOfBins:0 dateBasedBinModeConfig:-1];

  return v20;
}

- (HKHistogramChartDataSource)initWithQuantityTypeIdentifier:(id)a3 healthStore:(id)a4 unitPreferenceController:(id)a5 predicate:(id)a6 yAxisRange:(id)a7 binCalculation:(unint64_t)a8 dateBasedBinModeConfig:(unint64_t)a9
{
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [HKValueRange valueRangeWithMinValue:&unk_1F4381FC0 maxValue:&unk_1F4381FD8];
  v21 = 24;
  if (!a9)
  {
    v21 = 7;
  }

  v22 = [(HKHistogramChartDataSource *)self _initWithQuantityTypeIdentifier:v19 healthStore:v18 unitPreferenceController:v17 predicate:v16 xAxisRange:v20 yAxisRange:v15 binMode:1.0 binCalculation:1 binWidth:a8 numberOfBins:v21 dateBasedBinModeConfig:a9];

  return v22;
}

- (HKQuantityType)quantityType
{
  v2 = MEMORY[0x1E696C2E0];
  v3 = [(HKHistogramChartDataSource *)self quantityIdentifier];
  v4 = [v2 quantityTypeForIdentifier:v3];

  return v4;
}

- (HKUnit)unit
{
  v3 = [(HKHistogramChartDataSource *)self unitPreferenceController];
  v4 = [(HKHistogramChartDataSource *)self _displayType];
  v5 = [v3 unitForDisplayType:v4];

  return v5;
}

- (NSArray)sortDescriptors
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:1];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (id)xAxisStringForLocation:(id)a3
{
  v4 = a3;
  v5 = [(HKHistogramChartDataSource *)self xAxisStringForLocation];

  if (v5)
  {
    v6 = [(HKHistogramChartDataSource *)self xAxisStringForLocation];
    v5 = (v6)[2](v6, v4);

    goto LABEL_3;
  }

  v8 = [(HKHistogramChartDataSource *)self binningMode];
  if (v8 == 1)
  {
    v15 = [(HKHistogramChartDataSource *)self dateBasedBinModeConfig];
    if (v15 == 1)
    {
      v16 = [(HKHistogramChartDataSource *)self _hourXAxisStringForLocation:v4];
    }

    else
    {
      if (v15)
      {
        goto LABEL_3;
      }

      v16 = [(HKHistogramChartDataSource *)self _dayXAxisStringForLocation:v4];
    }

    v5 = v16;
  }

  else if (!v8)
  {
    v9 = [v4 integerValue];
    if (v9 < 0 || (v10 = v9, -[HKHistogramChartDataSource quantityValueRanges](self, "quantityValueRanges"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 count], v11, v10 >= v12))
    {
      v5 = &stru_1F42FFBE0;
    }

    else
    {
      v13 = [(HKHistogramChartDataSource *)self quantityValueRanges];
      v14 = [v13 objectAtIndex:v10];

      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu-%lu", objc_msgSend(v14, "firstIndex"), objc_msgSend(v14, "lastIndex")];
    }
  }

LABEL_3:

  return v5;
}

- (void)fetchData
{
  if (![(HKHistogramChartDataSource *)self didExecuteQuery])
  {
    v3 = [(HKHistogramChartDataSource *)self healthStore];
    v4 = [(HKHistogramChartDataSource *)self _query];
    [v3 executeQuery:v4];

    [(HKHistogramChartDataSource *)self setDidExecuteQuery:1];
  }
}

- (void)didCompleteFetch
{
  v3 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__HKHistogramChartDataSource_didCompleteFetch__block_invoke;
  block[3] = &unk_1E81B55A8;
  block[4] = self;
  dispatch_async(v3, block);
}

void __46__HKHistogramChartDataSource_didCompleteFetch__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) fetchObserver];
  [v2 didCompleteFetchForDataSource:*(a1 + 32)];

  v3 = [*(a1 + 32) delegate];
  [v3 dataSourceDidUpdateCache:*(a1 + 32)];
}

- (id)buildGraphSeriesDataBlockFromSamples:(id)a3
{
  v5 = a3;
  v6 = [(HKHistogramChartDataSource *)self dataBlockBuilder];

  if (v6)
  {
    v7 = [(HKHistogramChartDataSource *)self dataBlockBuilder];
    v8 = [(HKHistogramChartDataSource *)self unit];
    v9 = (v7)[2](v7, v5, v8);
LABEL_3:
    v3 = v9;
LABEL_4:

    goto LABEL_5;
  }

  v11 = [(HKHistogramChartDataSource *)self binningMode];
  if (v11 == 1)
  {
    v7 = [(HKHistogramChartDataSource *)self buildBinsWithSamples:v5];
    v18 = [(HKHistogramChartDataSource *)self _dateBasedXValueRangeForConfig:[(HKHistogramChartDataSource *)self dateBasedBinModeConfig]];
    xAxisRange = self->_xAxisRange;
    self->_xAxisRange = v18;

    v8 = [(HKHistogramChartDataSource *)self calculateBinValueForBins:v7 usingCalculation:[(HKHistogramChartDataSource *)self binCalculation]];
    v9 = [(HKHistogramChartDataSource *)self buildGraphSeriesDataBlockWithCalculatedBinValues:v8];
    goto LABEL_3;
  }

  if (!v11)
  {
    v7 = [(HKHistogramChartDataSource *)self _samplesSortedByQuantity:v5];
    v12 = [(HKHistogramChartDataSource *)self _buildQuantityValueRangesFromSortedSamples:v7];
    [(HKHistogramChartDataSource *)self setQuantityValueRanges:v12];

    v13 = [(HKHistogramChartDataSource *)self quantityValueRanges];
    -[HKHistogramChartDataSource setNumberOfBins:](self, "setNumberOfBins:", [v13 count]);

    v8 = [(HKHistogramChartDataSource *)self buildBinsWithSamples:v7];
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v8, "count")}];
    v15 = [HKValueRange valueRangeWithMinValue:&unk_1F4381FF0 maxValue:v14];
    v16 = self->_xAxisRange;
    self->_xAxisRange = v15;

    v17 = [(HKHistogramChartDataSource *)self calculateBinValueForBins:v8 usingCalculation:0];
    v3 = [(HKHistogramChartDataSource *)self buildGraphSeriesDataBlockWithCalculatedBinValues:v17];

    goto LABEL_4;
  }

LABEL_5:

  return v3;
}

- (id)buildBinsWithSamples:(id)a3
{
  v4 = a3;
  v5 = [(HKHistogramChartDataSource *)self numberOfBins];
  v6 = __51__HKHistogramChartDataSource_buildBinsWithSamples___block_invoke(v5, v5);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __51__HKHistogramChartDataSource_buildBinsWithSamples___block_invoke_2;
  v11[3] = &unk_1E81B5860;
  v11[4] = self;
  v7 = v6;
  v12 = v7;
  [v4 enumerateObjectsUsingBlock:v11];

  v8 = v12;
  v9 = v7;

  return v7;
}

id __51__HKHistogramChartDataSource_buildBinsWithSamples___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  for (i = [MEMORY[0x1E695DF70] arrayWithCapacity:a2];
  {
    v4 = objc_alloc_init(HKHistogramChartDataSourceBin);
    [i addObject:v4];
  }

  return i;
}

void __51__HKHistogramChartDataSource_buildBinsWithSamples___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v10 = [*(a1 + 40) objectAtIndex:{objc_msgSend(v3, "_binIndexForSample:", v4)}];
  v5 = [v4 quantity];

  v6 = [*(a1 + 32) unit];
  [v5 doubleValueForUnit:v6];
  v8 = v7;

  v9 = [MEMORY[0x1E696AD98] numberWithDouble:v8];
  [v10 addValue:v9];
}

- (id)calculateBinValueForBins:(id)a3 usingCalculation:(unint64_t)a4
{
  v5 = MEMORY[0x1E695DF70];
  v6 = a3;
  v7 = [v5 arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __72__HKHistogramChartDataSource_calculateBinValueForBins_usingCalculation___block_invoke;
  v12[3] = &unk_1E81B5888;
  v12[4] = self;
  v8 = v7;
  v13 = v8;
  [v6 enumerateObjectsUsingBlock:v12];

  v9 = v13;
  v10 = v8;

  return v8;
}

void __72__HKHistogramChartDataSource_calculateBinValueForBins_usingCalculation___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  v5 = [*(a1 + 32) binCalculation];
  if (v5 <= 1)
  {
    if (v5)
    {
      if (v5 != 1)
      {
        goto LABEL_13;
      }

      v6 = *(a1 + 40);
      v7 = [v9 sumValue];
    }

    else
    {
      v6 = *(a1 + 40);
      v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v9, "count")}];
    }
  }

  else
  {
    switch(v5)
    {
      case 2:
        v6 = *(a1 + 40);
        v7 = [v9 averageValue];
        break;
      case 3:
        v6 = *(a1 + 40);
        v7 = [v9 minimumValue];
        break;
      case 4:
        v6 = *(a1 + 40);
        v7 = [v9 maximumValue];
        break;
      default:
        goto LABEL_13;
    }
  }

  v8 = v7;
  [v6 setObject:v7 atIndexedSubscript:a3];

LABEL_13:
}

- (id)buildGraphSeriesDataBlockWithCalculatedBinValues:(id)a3
{
  v3 = MEMORY[0x1E695DF70];
  v4 = a3;
  v5 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __79__HKHistogramChartDataSource_buildGraphSeriesDataBlockWithCalculatedBinValues___block_invoke;
  v9[3] = &unk_1E81B58B0;
  v10 = v5;
  v6 = v5;
  [v4 enumerateObjectsUsingBlock:v9];

  v7 = objc_alloc_init(HKGraphSeriesDataBlock);
  [(HKGraphSeriesDataBlock *)v7 setChartPoints:v6];

  return v7;
}

void __79__HKHistogramChartDataSource_buildGraphSeriesDataBlockWithCalculatedBinValues___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [HKHistogramChartPoint alloc];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v8 = [(HKHistogramChartPoint *)v6 initWithXValue:v7 yValue:v5];

  [*(a1 + 32) addObject:v8];
}

- (id)_buildQuantityValueRangesFromSortedSamples:(id)a3
{
  v4 = a3;
  v5 = [v4 firstObject];
  v6 = [v4 lastObject];
  v7 = MEMORY[0x1E696AD98];
  v8 = [v5 quantity];
  v9 = [(HKHistogramChartDataSource *)self unit];
  [v8 doubleValueForUnit:v9];
  v10 = [v7 numberWithDouble:?];
  v11 = [v10 unsignedIntegerValue];

  v12 = MEMORY[0x1E696AD98];
  v13 = [v6 quantity];
  v14 = [(HKHistogramChartDataSource *)self unit];
  [v13 doubleValueForUnit:v14];
  v15 = [v12 numberWithDouble:?];
  v16 = [v15 unsignedIntegerValue];

  v17 = [MEMORY[0x1E695DF70] array];
  while (v11 <= v16)
  {
    v18 = [(HKHistogramChartDataSource *)self binWidth];
    v19 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v11, v18}];
    [v17 addObject:v19];
    v11 += [(HKHistogramChartDataSource *)self binWidth];
  }

  return v17;
}

- (id)_query
{
  v3 = objc_alloc(MEMORY[0x1E696C3C8]);
  v4 = [(HKHistogramChartDataSource *)self quantityType];
  v5 = [(HKHistogramChartDataSource *)self predicate];
  v6 = [(HKHistogramChartDataSource *)self sortDescriptors];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __36__HKHistogramChartDataSource__query__block_invoke;
  v9[3] = &unk_1E81B58D8;
  v9[4] = self;
  v7 = [v3 initWithSampleType:v4 predicate:v5 limit:0 sortDescriptors:v6 resultsHandler:v9];

  return v7;
}

uint64_t __36__HKHistogramChartDataSource__query__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 firstObject];
  v6 = [v5 startDate];
  [*(a1 + 32) setSamplesStartDate:v6];

  v7 = [v4 lastObject];
  v8 = [v7 endDate];
  [*(a1 + 32) setSamplesEndDate:v8];

  v9 = [*(a1 + 32) buildGraphSeriesDataBlockFromSamples:v4];

  [*(a1 + 32) setDataBlock:v9];
  v10 = *(a1 + 32);

  return [v10 didCompleteFetch];
}

uint64_t __55__HKHistogramChartDataSource__samplesSortedByQuantity___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 quantity];
  v7 = [v5 quantity];
  v8 = [v6 hk_isLessThanQuantity:v7];

  if (v8)
  {
    v9 = -1;
  }

  else
  {
    v10 = [v4 quantity];
    v11 = [v5 quantity];
    v12 = [v10 hk_isGreaterThanQuantity:v11];

    v9 = v12;
  }

  return v9;
}

- (id)_displayType
{
  v3 = [HKDisplayTypeController sharedInstanceForHealthStore:self->_healthStore];
  v4 = [(HKHistogramChartDataSource *)self quantityType];
  v5 = [v3 displayTypeForObjectType:v4];

  return v5;
}

- (unint64_t)_binIndexForSample:(id)a3
{
  v5 = a3;
  v6 = [(HKHistogramChartDataSource *)self binningMode];
  if (v6 == 1)
  {
    v7 = [(HKHistogramChartDataSource *)self _dateBasedBinIndexForSample:v5];
    goto LABEL_5;
  }

  if (!v6)
  {
    v7 = [(HKHistogramChartDataSource *)self _normalBinIndexForSample:v5];
LABEL_5:
    v3 = v7;
  }

  return v3;
}

- (unint64_t)_normalBinIndexForSample:(id)a3
{
  v4 = a3;
  v5 = [v4 quantity];
  v6 = [(HKHistogramChartDataSource *)self unit];
  [v5 doubleValueForUnit:v6];
  v8 = v7;

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9 = [(HKHistogramChartDataSource *)self quantityValueRanges];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __55__HKHistogramChartDataSource__normalBinIndexForSample___block_invoke;
  v12[3] = &unk_1E81B5920;
  v12[4] = &v13;
  v12[5] = vcvtad_u64_f64(v8);
  [v9 enumerateObjectsUsingBlock:v12];

  v10 = v14[3];
  _Block_object_dispose(&v13, 8);

  return v10;
}

uint64_t __55__HKHistogramChartDataSource__normalBinIndexForSample___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 containsIndex:*(a1 + 40)];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
    *a4 = 1;
  }

  return result;
}

- (HKGraphSeriesDataBlockPath)blockPathForX:(SEL)a3 zoom:(id)a4 resolution:(int64_t)a5
{
  *&retstr->index = xmmword_1C3D5CE60;
  retstr->resolution = 0;
  return self;
}

- (id)cachedBlockForPath:(HKGraphSeriesDataBlockPath *)a3 context:(id)a4
{
  v6 = a4;
  if (a3->index || ([(HKHistogramChartDataSource *)self dataBlock], v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
  {
    v7 = objc_alloc_init(HKGraphSeriesDataBlock);
    [(HKGraphSeriesDataBlock *)v7 setChartPoints:MEMORY[0x1E695E0F0]];
  }

  else
  {
    v7 = [(HKHistogramChartDataSource *)self dataBlock];
  }

  return v7;
}

- (unint64_t)_dateBasedBinIndexForSample:(id)a3
{
  v5 = a3;
  v6 = [(HKHistogramChartDataSource *)self dateBasedBinModeConfig];
  if (v6 == 1)
  {
    v11 = [(HKHistogramChartDataSource *)self _hourOfTheDayFormatter];
    v12 = [v5 startDate];
    v9 = [v11 stringFromDate:v12];

    v10 = [v9 integerValue];
    goto LABEL_5;
  }

  if (!v6)
  {
    v7 = [(HKHistogramChartDataSource *)self _dayNameFormatter];
    v8 = [v5 startDate];
    v9 = [v7 stringFromDate:v8];

    v10 = [(HKHistogramChartDataSource *)self _dayIndexForDayName:v9];
LABEL_5:
    v3 = v10;
  }

  return v3;
}

- (id)_dateBasedXValueRangeForConfig:(unint64_t)a3
{
  if (a3 == 1)
  {
    v3 = [objc_opt_class() _hoursInDayXValueRange];
  }

  else
  {
    if (a3)
    {
      goto LABEL_6;
    }

    v3 = [objc_opt_class() _daysInWeekXValueRange];
  }

  a2 = v3;
LABEL_6:

  return a2;
}

- (id)_dayXAxisStringForLocation:(id)a3
{
  v3 = -[HKHistogramChartDataSource _dayNameFromDayIndex:](self, "_dayNameFromDayIndex:", [a3 integerValue]);
  v4 = [v3 substringToIndex:2];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_1F42FFBE0;
  }

  v7 = v6;

  return v6;
}

- (id)_dayNameFormatter
{
  v2 = _dayNameFormatter_formatter;
  if (!_dayNameFormatter_formatter)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v4 = _dayNameFormatter_formatter;
    _dayNameFormatter_formatter = v3;

    [_dayNameFormatter_formatter setDateFormat:@"EEEE"];
    v2 = _dayNameFormatter_formatter;
  }

  return v2;
}

- (id)_daysOfTheWeek
{
  v3 = _daysOfTheWeek_daysOfTheWeek;
  if (_daysOfTheWeek_daysOfTheWeek)
  {
  }

  else
  {
    _daysOfTheWeek_daysOfTheWeek = &unk_1F4381018;

    v3 = &unk_1F4381018;
  }

  return v3;
}

- (unint64_t)_dayIndexForDayName:(id)a3
{
  v4 = a3;
  v5 = [(HKHistogramChartDataSource *)self _daysOfTheWeek];
  v6 = [v5 indexOfObject:v4];

  return v6;
}

- (id)_dayNameFromDayIndex:(unint64_t)a3
{
  v5 = [(HKHistogramChartDataSource *)self _daysOfTheWeek];
  v6 = [v5 count];

  if (v6 <= a3)
  {
    v8 = 0;
  }

  else
  {
    v7 = [(HKHistogramChartDataSource *)self _daysOfTheWeek];
    v8 = [v7 objectAtIndex:a3];
  }

  return v8;
}

- (id)_hourXAxisStringForLocation:(id)a3
{
  v4 = a3;
  v5 = [v4 integerValue];
  if (v5 < 0)
  {
    v8 = 0;
  }

  else
  {
    v6 = v5;
    v7 = [(HKHistogramChartDataSource *)self numberOfBins];
    v8 = 0;
    if ((v6 & 3) == 0 && v6 < v7)
    {
      v8 = [v4 stringValue];
    }
  }

  return v8;
}

- (id)_hourOfTheDayFormatter
{
  v2 = _hourOfTheDayFormatter_formatter;
  if (!_hourOfTheDayFormatter_formatter)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v4 = _hourOfTheDayFormatter_formatter;
    _hourOfTheDayFormatter_formatter = v3;

    [_hourOfTheDayFormatter_formatter setDateFormat:@"HH"];
    v2 = _hourOfTheDayFormatter_formatter;
  }

  return v2;
}

- (id)_hourNameFromHourIndex:(unint64_t)a3
{
  v3 = 0;
  if (a3 <= 0x17 && (a3 & 3) == 0)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
    v3 = [v4 stringValue];
  }

  return v3;
}

- (HKHistogramChartDataSourceDataFetchObserver)fetchObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_fetchObserver);

  return WeakRetained;
}

@end