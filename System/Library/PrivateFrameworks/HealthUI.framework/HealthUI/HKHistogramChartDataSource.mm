@interface HKHistogramChartDataSource
- (HKGraphSeriesDataBlockPath)blockPathForX:(SEL)x zoom:(id)zoom resolution:(int64_t)resolution;
- (HKHistogramChartDataSource)initWithQuantityTypeIdentifier:(id)identifier healthStore:(id)store unitPreferenceController:(id)controller predicate:(id)predicate yAxisRange:(id)range binCalculation:(unint64_t)calculation dateBasedBinModeConfig:(unint64_t)config;
- (HKHistogramChartDataSource)initWithQuantityTypeIdentifier:(id)identifier healthStore:(id)store unitPreferenceController:(id)controller predicate:(id)predicate yAxisRange:(id)range binWidth:(double)width;
- (HKHistogramChartDataSourceDataFetchObserver)fetchObserver;
- (HKQuantityType)quantityType;
- (HKUnit)unit;
- (NSArray)sortDescriptors;
- (id)_buildQuantityValueRangesFromSortedSamples:(id)samples;
- (id)_dateBasedXValueRangeForConfig:(unint64_t)config;
- (id)_dayNameFormatter;
- (id)_dayNameFromDayIndex:(unint64_t)index;
- (id)_dayXAxisStringForLocation:(id)location;
- (id)_daysOfTheWeek;
- (id)_displayType;
- (id)_hourNameFromHourIndex:(unint64_t)index;
- (id)_hourOfTheDayFormatter;
- (id)_hourXAxisStringForLocation:(id)location;
- (id)_initWithQuantityTypeIdentifier:(id)identifier healthStore:(id)store unitPreferenceController:(id)controller predicate:(id)predicate xAxisRange:(id)range yAxisRange:(id)axisRange binMode:(unint64_t)mode binCalculation:(unint64_t)self0 binWidth:(double)self1 numberOfBins:(unint64_t)self2 dateBasedBinModeConfig:(unint64_t)self3;
- (id)_query;
- (id)buildBinsWithSamples:(id)samples;
- (id)buildGraphSeriesDataBlockFromSamples:(id)samples;
- (id)buildGraphSeriesDataBlockWithCalculatedBinValues:(id)values;
- (id)cachedBlockForPath:(HKGraphSeriesDataBlockPath *)path context:(id)context;
- (id)calculateBinValueForBins:(id)bins usingCalculation:(unint64_t)calculation;
- (id)xAxisStringForLocation:(id)location;
- (unint64_t)_binIndexForSample:(id)sample;
- (unint64_t)_dateBasedBinIndexForSample:(id)sample;
- (unint64_t)_dayIndexForDayName:(id)name;
- (unint64_t)_normalBinIndexForSample:(id)sample;
- (void)didCompleteFetch;
- (void)fetchData;
@end

@implementation HKHistogramChartDataSource

- (id)_initWithQuantityTypeIdentifier:(id)identifier healthStore:(id)store unitPreferenceController:(id)controller predicate:(id)predicate xAxisRange:(id)range yAxisRange:(id)axisRange binMode:(unint64_t)mode binCalculation:(unint64_t)self0 binWidth:(double)self1 numberOfBins:(unint64_t)self2 dateBasedBinModeConfig:(unint64_t)self3
{
  identifierCopy = identifier;
  storeCopy = store;
  controllerCopy = controller;
  predicateCopy = predicate;
  rangeCopy = range;
  axisRangeCopy = axisRange;
  v31.receiver = self;
  v31.super_class = HKHistogramChartDataSource;
  v24 = [(HKGraphSeriesDataSource *)&v31 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_quantityIdentifier, identifier);
    objc_storeStrong(&v25->_healthStore, store);
    objc_storeStrong(&v25->_unitPreferenceController, controller);
    objc_storeStrong(&v25->_predicate, predicate);
    objc_storeStrong(&v25->_xAxisRange, range);
    objc_storeStrong(&v25->_yAxisRange, axisRange);
    v25->_binningMode = mode;
    v25->_binCalculation = calculation;
    v25->_binWidth = width;
    v25->_numberOfBins = bins;
    v25->_dateBasedBinModeConfig = config;
    v25->_didExecuteQuery = 0;
    dataBlock = v25->_dataBlock;
    v25->_dataBlock = 0;
  }

  return v25;
}

- (HKHistogramChartDataSource)initWithQuantityTypeIdentifier:(id)identifier healthStore:(id)store unitPreferenceController:(id)controller predicate:(id)predicate yAxisRange:(id)range binWidth:(double)width
{
  rangeCopy = range;
  predicateCopy = predicate;
  controllerCopy = controller;
  storeCopy = store;
  identifierCopy = identifier;
  v19 = [HKValueRange valueRangeWithMinValue:&unk_1F4381FC0 maxValue:&unk_1F4381FD8];
  v20 = [(HKHistogramChartDataSource *)self _initWithQuantityTypeIdentifier:identifierCopy healthStore:storeCopy unitPreferenceController:controllerCopy predicate:predicateCopy xAxisRange:v19 yAxisRange:rangeCopy binMode:width binCalculation:0 binWidth:1 numberOfBins:0 dateBasedBinModeConfig:-1];

  return v20;
}

- (HKHistogramChartDataSource)initWithQuantityTypeIdentifier:(id)identifier healthStore:(id)store unitPreferenceController:(id)controller predicate:(id)predicate yAxisRange:(id)range binCalculation:(unint64_t)calculation dateBasedBinModeConfig:(unint64_t)config
{
  rangeCopy = range;
  predicateCopy = predicate;
  controllerCopy = controller;
  storeCopy = store;
  identifierCopy = identifier;
  v20 = [HKValueRange valueRangeWithMinValue:&unk_1F4381FC0 maxValue:&unk_1F4381FD8];
  v21 = 24;
  if (!config)
  {
    v21 = 7;
  }

  v22 = [(HKHistogramChartDataSource *)self _initWithQuantityTypeIdentifier:identifierCopy healthStore:storeCopy unitPreferenceController:controllerCopy predicate:predicateCopy xAxisRange:v20 yAxisRange:rangeCopy binMode:1.0 binCalculation:1 binWidth:calculation numberOfBins:v21 dateBasedBinModeConfig:config];

  return v22;
}

- (HKQuantityType)quantityType
{
  v2 = MEMORY[0x1E696C2E0];
  quantityIdentifier = [(HKHistogramChartDataSource *)self quantityIdentifier];
  v4 = [v2 quantityTypeForIdentifier:quantityIdentifier];

  return v4;
}

- (HKUnit)unit
{
  unitPreferenceController = [(HKHistogramChartDataSource *)self unitPreferenceController];
  _displayType = [(HKHistogramChartDataSource *)self _displayType];
  v5 = [unitPreferenceController unitForDisplayType:_displayType];

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

- (id)xAxisStringForLocation:(id)location
{
  locationCopy = location;
  xAxisStringForLocation = [(HKHistogramChartDataSource *)self xAxisStringForLocation];

  if (xAxisStringForLocation)
  {
    xAxisStringForLocation2 = [(HKHistogramChartDataSource *)self xAxisStringForLocation];
    xAxisStringForLocation = (xAxisStringForLocation2)[2](xAxisStringForLocation2, locationCopy);

    goto LABEL_3;
  }

  binningMode = [(HKHistogramChartDataSource *)self binningMode];
  if (binningMode == 1)
  {
    dateBasedBinModeConfig = [(HKHistogramChartDataSource *)self dateBasedBinModeConfig];
    if (dateBasedBinModeConfig == 1)
    {
      v16 = [(HKHistogramChartDataSource *)self _hourXAxisStringForLocation:locationCopy];
    }

    else
    {
      if (dateBasedBinModeConfig)
      {
        goto LABEL_3;
      }

      v16 = [(HKHistogramChartDataSource *)self _dayXAxisStringForLocation:locationCopy];
    }

    xAxisStringForLocation = v16;
  }

  else if (!binningMode)
  {
    integerValue = [locationCopy integerValue];
    if (integerValue < 0 || (v10 = integerValue, -[HKHistogramChartDataSource quantityValueRanges](self, "quantityValueRanges"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 count], v11, v10 >= v12))
    {
      xAxisStringForLocation = &stru_1F42FFBE0;
    }

    else
    {
      quantityValueRanges = [(HKHistogramChartDataSource *)self quantityValueRanges];
      v14 = [quantityValueRanges objectAtIndex:v10];

      xAxisStringForLocation = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu-%lu", objc_msgSend(v14, "firstIndex"), objc_msgSend(v14, "lastIndex")];
    }
  }

LABEL_3:

  return xAxisStringForLocation;
}

- (void)fetchData
{
  if (![(HKHistogramChartDataSource *)self didExecuteQuery])
  {
    healthStore = [(HKHistogramChartDataSource *)self healthStore];
    _query = [(HKHistogramChartDataSource *)self _query];
    [healthStore executeQuery:_query];

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

- (id)buildGraphSeriesDataBlockFromSamples:(id)samples
{
  samplesCopy = samples;
  dataBlockBuilder = [(HKHistogramChartDataSource *)self dataBlockBuilder];

  if (dataBlockBuilder)
  {
    dataBlockBuilder2 = [(HKHistogramChartDataSource *)self dataBlockBuilder];
    unit = [(HKHistogramChartDataSource *)self unit];
    v9 = (dataBlockBuilder2)[2](dataBlockBuilder2, samplesCopy, unit);
LABEL_3:
    v3 = v9;
LABEL_4:

    goto LABEL_5;
  }

  binningMode = [(HKHistogramChartDataSource *)self binningMode];
  if (binningMode == 1)
  {
    dataBlockBuilder2 = [(HKHistogramChartDataSource *)self buildBinsWithSamples:samplesCopy];
    v18 = [(HKHistogramChartDataSource *)self _dateBasedXValueRangeForConfig:[(HKHistogramChartDataSource *)self dateBasedBinModeConfig]];
    xAxisRange = self->_xAxisRange;
    self->_xAxisRange = v18;

    unit = [(HKHistogramChartDataSource *)self calculateBinValueForBins:dataBlockBuilder2 usingCalculation:[(HKHistogramChartDataSource *)self binCalculation]];
    v9 = [(HKHistogramChartDataSource *)self buildGraphSeriesDataBlockWithCalculatedBinValues:unit];
    goto LABEL_3;
  }

  if (!binningMode)
  {
    dataBlockBuilder2 = [(HKHistogramChartDataSource *)self _samplesSortedByQuantity:samplesCopy];
    v12 = [(HKHistogramChartDataSource *)self _buildQuantityValueRangesFromSortedSamples:dataBlockBuilder2];
    [(HKHistogramChartDataSource *)self setQuantityValueRanges:v12];

    quantityValueRanges = [(HKHistogramChartDataSource *)self quantityValueRanges];
    -[HKHistogramChartDataSource setNumberOfBins:](self, "setNumberOfBins:", [quantityValueRanges count]);

    unit = [(HKHistogramChartDataSource *)self buildBinsWithSamples:dataBlockBuilder2];
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(unit, "count")}];
    v15 = [HKValueRange valueRangeWithMinValue:&unk_1F4381FF0 maxValue:v14];
    v16 = self->_xAxisRange;
    self->_xAxisRange = v15;

    v17 = [(HKHistogramChartDataSource *)self calculateBinValueForBins:unit usingCalculation:0];
    v3 = [(HKHistogramChartDataSource *)self buildGraphSeriesDataBlockWithCalculatedBinValues:v17];

    goto LABEL_4;
  }

LABEL_5:

  return v3;
}

- (id)buildBinsWithSamples:(id)samples
{
  samplesCopy = samples;
  numberOfBins = [(HKHistogramChartDataSource *)self numberOfBins];
  v6 = __51__HKHistogramChartDataSource_buildBinsWithSamples___block_invoke(numberOfBins, numberOfBins);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __51__HKHistogramChartDataSource_buildBinsWithSamples___block_invoke_2;
  v11[3] = &unk_1E81B5860;
  v11[4] = self;
  v7 = v6;
  v12 = v7;
  [samplesCopy enumerateObjectsUsingBlock:v11];

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

- (id)calculateBinValueForBins:(id)bins usingCalculation:(unint64_t)calculation
{
  v5 = MEMORY[0x1E695DF70];
  binsCopy = bins;
  v7 = [v5 arrayWithCapacity:{objc_msgSend(binsCopy, "count")}];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __72__HKHistogramChartDataSource_calculateBinValueForBins_usingCalculation___block_invoke;
  v12[3] = &unk_1E81B5888;
  v12[4] = self;
  v8 = v7;
  v13 = v8;
  [binsCopy enumerateObjectsUsingBlock:v12];

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

- (id)buildGraphSeriesDataBlockWithCalculatedBinValues:(id)values
{
  v3 = MEMORY[0x1E695DF70];
  valuesCopy = values;
  v5 = [v3 arrayWithCapacity:{objc_msgSend(valuesCopy, "count")}];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __79__HKHistogramChartDataSource_buildGraphSeriesDataBlockWithCalculatedBinValues___block_invoke;
  v9[3] = &unk_1E81B58B0;
  v10 = v5;
  v6 = v5;
  [valuesCopy enumerateObjectsUsingBlock:v9];

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

- (id)_buildQuantityValueRangesFromSortedSamples:(id)samples
{
  samplesCopy = samples;
  firstObject = [samplesCopy firstObject];
  lastObject = [samplesCopy lastObject];
  v7 = MEMORY[0x1E696AD98];
  quantity = [firstObject quantity];
  unit = [(HKHistogramChartDataSource *)self unit];
  [quantity doubleValueForUnit:unit];
  v10 = [v7 numberWithDouble:?];
  unsignedIntegerValue = [v10 unsignedIntegerValue];

  v12 = MEMORY[0x1E696AD98];
  quantity2 = [lastObject quantity];
  unit2 = [(HKHistogramChartDataSource *)self unit];
  [quantity2 doubleValueForUnit:unit2];
  v15 = [v12 numberWithDouble:?];
  unsignedIntegerValue2 = [v15 unsignedIntegerValue];

  array = [MEMORY[0x1E695DF70] array];
  while (unsignedIntegerValue <= unsignedIntegerValue2)
  {
    binWidth = [(HKHistogramChartDataSource *)self binWidth];
    v19 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{unsignedIntegerValue, binWidth}];
    [array addObject:v19];
    unsignedIntegerValue += [(HKHistogramChartDataSource *)self binWidth];
  }

  return array;
}

- (id)_query
{
  v3 = objc_alloc(MEMORY[0x1E696C3C8]);
  quantityType = [(HKHistogramChartDataSource *)self quantityType];
  predicate = [(HKHistogramChartDataSource *)self predicate];
  sortDescriptors = [(HKHistogramChartDataSource *)self sortDescriptors];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __36__HKHistogramChartDataSource__query__block_invoke;
  v9[3] = &unk_1E81B58D8;
  v9[4] = self;
  v7 = [v3 initWithSampleType:quantityType predicate:predicate limit:0 sortDescriptors:sortDescriptors resultsHandler:v9];

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
  quantityType = [(HKHistogramChartDataSource *)self quantityType];
  v5 = [v3 displayTypeForObjectType:quantityType];

  return v5;
}

- (unint64_t)_binIndexForSample:(id)sample
{
  sampleCopy = sample;
  binningMode = [(HKHistogramChartDataSource *)self binningMode];
  if (binningMode == 1)
  {
    v7 = [(HKHistogramChartDataSource *)self _dateBasedBinIndexForSample:sampleCopy];
    goto LABEL_5;
  }

  if (!binningMode)
  {
    v7 = [(HKHistogramChartDataSource *)self _normalBinIndexForSample:sampleCopy];
LABEL_5:
    v3 = v7;
  }

  return v3;
}

- (unint64_t)_normalBinIndexForSample:(id)sample
{
  sampleCopy = sample;
  quantity = [sampleCopy quantity];
  unit = [(HKHistogramChartDataSource *)self unit];
  [quantity doubleValueForUnit:unit];
  v8 = v7;

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  quantityValueRanges = [(HKHistogramChartDataSource *)self quantityValueRanges];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __55__HKHistogramChartDataSource__normalBinIndexForSample___block_invoke;
  v12[3] = &unk_1E81B5920;
  v12[4] = &v13;
  v12[5] = vcvtad_u64_f64(v8);
  [quantityValueRanges enumerateObjectsUsingBlock:v12];

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

- (HKGraphSeriesDataBlockPath)blockPathForX:(SEL)x zoom:(id)zoom resolution:(int64_t)resolution
{
  *&retstr->index = xmmword_1C3D5CE60;
  retstr->resolution = 0;
  return self;
}

- (id)cachedBlockForPath:(HKGraphSeriesDataBlockPath *)path context:(id)context
{
  contextCopy = context;
  if (path->index || ([(HKHistogramChartDataSource *)self dataBlock], v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
  {
    dataBlock = objc_alloc_init(HKGraphSeriesDataBlock);
    [(HKGraphSeriesDataBlock *)dataBlock setChartPoints:MEMORY[0x1E695E0F0]];
  }

  else
  {
    dataBlock = [(HKHistogramChartDataSource *)self dataBlock];
  }

  return dataBlock;
}

- (unint64_t)_dateBasedBinIndexForSample:(id)sample
{
  sampleCopy = sample;
  dateBasedBinModeConfig = [(HKHistogramChartDataSource *)self dateBasedBinModeConfig];
  if (dateBasedBinModeConfig == 1)
  {
    _hourOfTheDayFormatter = [(HKHistogramChartDataSource *)self _hourOfTheDayFormatter];
    startDate = [sampleCopy startDate];
    v9 = [_hourOfTheDayFormatter stringFromDate:startDate];

    integerValue = [v9 integerValue];
    goto LABEL_5;
  }

  if (!dateBasedBinModeConfig)
  {
    _dayNameFormatter = [(HKHistogramChartDataSource *)self _dayNameFormatter];
    startDate2 = [sampleCopy startDate];
    v9 = [_dayNameFormatter stringFromDate:startDate2];

    integerValue = [(HKHistogramChartDataSource *)self _dayIndexForDayName:v9];
LABEL_5:
    v3 = integerValue;
  }

  return v3;
}

- (id)_dateBasedXValueRangeForConfig:(unint64_t)config
{
  if (config == 1)
  {
    _hoursInDayXValueRange = [objc_opt_class() _hoursInDayXValueRange];
  }

  else
  {
    if (config)
    {
      goto LABEL_6;
    }

    _hoursInDayXValueRange = [objc_opt_class() _daysInWeekXValueRange];
  }

  a2 = _hoursInDayXValueRange;
LABEL_6:

  return a2;
}

- (id)_dayXAxisStringForLocation:(id)location
{
  v3 = -[HKHistogramChartDataSource _dayNameFromDayIndex:](self, "_dayNameFromDayIndex:", [location integerValue]);
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

- (unint64_t)_dayIndexForDayName:(id)name
{
  nameCopy = name;
  _daysOfTheWeek = [(HKHistogramChartDataSource *)self _daysOfTheWeek];
  v6 = [_daysOfTheWeek indexOfObject:nameCopy];

  return v6;
}

- (id)_dayNameFromDayIndex:(unint64_t)index
{
  _daysOfTheWeek = [(HKHistogramChartDataSource *)self _daysOfTheWeek];
  v6 = [_daysOfTheWeek count];

  if (v6 <= index)
  {
    v8 = 0;
  }

  else
  {
    _daysOfTheWeek2 = [(HKHistogramChartDataSource *)self _daysOfTheWeek];
    v8 = [_daysOfTheWeek2 objectAtIndex:index];
  }

  return v8;
}

- (id)_hourXAxisStringForLocation:(id)location
{
  locationCopy = location;
  integerValue = [locationCopy integerValue];
  if (integerValue < 0)
  {
    stringValue = 0;
  }

  else
  {
    v6 = integerValue;
    numberOfBins = [(HKHistogramChartDataSource *)self numberOfBins];
    stringValue = 0;
    if ((v6 & 3) == 0 && v6 < numberOfBins)
    {
      stringValue = [locationCopy stringValue];
    }
  }

  return stringValue;
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

- (id)_hourNameFromHourIndex:(unint64_t)index
{
  stringValue = 0;
  if (index <= 0x17 && (index & 3) == 0)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
    stringValue = [v4 stringValue];
  }

  return stringValue;
}

- (HKHistogramChartDataSourceDataFetchObserver)fetchObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_fetchObserver);

  return WeakRetained;
}

@end