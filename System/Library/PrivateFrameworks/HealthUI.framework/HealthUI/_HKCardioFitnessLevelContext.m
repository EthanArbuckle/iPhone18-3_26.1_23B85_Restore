@interface _HKCardioFitnessLevelContext
- (_HKCardioFitnessLevelContext)initWithMode:(int64_t)a3 applicationItems:(id)a4 overlayChartController:(id)a5 baseDisplayType:(id)a6 cardioFitnessLevel:(int64_t)a7;
- (id)_makeGraphSeriesWithDataSource:(id)a3 baseDisplayType:(id)a4;
- (void)_updateContextItemWithChartPointCountForDateInterval:(id)a3 timeScope:(int64_t)a4 completion:(id)a5;
- (void)_updateContextItemWithSampleCountForDateInterval:(id)a3 timeScope:(int64_t)a4 completion:(id)a5;
- (void)updateContextItemForDateInterval:(id)a3 overlayController:(id)a4 timeScope:(int64_t)a5 resolution:(int64_t)a6 completion:(id)a7;
@end

@implementation _HKCardioFitnessLevelContext

- (_HKCardioFitnessLevelContext)initWithMode:(int64_t)a3 applicationItems:(id)a4 overlayChartController:(id)a5 baseDisplayType:(id)a6 cardioFitnessLevel:(int64_t)a7
{
  v12 = a4;
  v13 = a6;
  v36.receiver = self;
  v36.super_class = _HKCardioFitnessLevelContext;
  v14 = [(_HKCardioFitnessOverlayContext *)&v36 initWithMode:a3 applicationItems:v12 overlayChartController:a5];
  v15 = v14;
  if (v14)
  {
    v14->_cardioFitnessLevel = a7;
    objc_storeStrong(&v14->_baseDisplayType, a6);
    v16 = [v12 healthStore];
    healthStore = v15->_healthStore;
    v15->_healthStore = v16;

    v18 = [_HKCardioFitnessLevelDataSourceDelegate alloc];
    cardioFitnessLevel = v15->_cardioFitnessLevel;
    v20 = [v12 healthStore];
    v21 = [(_HKCardioFitnessLevelDataSourceDelegate *)v18 initWithCardioFitnessLevel:cardioFitnessLevel healthStore:v20 baseDisplayType:v13];
    dataSourceDelegate = v15->_dataSourceDelegate;
    v15->_dataSourceDelegate = v21;

    v23 = [[HKDateRangeDataSource alloc] initWithSourceDelegate:v15->_dataSourceDelegate];
    v24 = [(_HKCardioFitnessLevelContext *)v15 _makeGraphSeriesWithDataSource:v23 baseDisplayType:v13];
    cardioFitnessLevelSeries = v15->_cardioFitnessLevelSeries;
    v15->_cardioFitnessLevelSeries = v24;

    v26 = [HKInteractiveChartDisplayType alloc];
    v27 = v15->_cardioFitnessLevelSeries;
    baseDisplayType = v15->_baseDisplayType;
    v29 = objc_alloc_init(HKInteractiveChartCardioFitnessFormatter);
    v30 = [(HKInteractiveChartDisplayType *)v26 initWithGraphSeries:v27 baseDisplayType:baseDisplayType valueFormatter:v29 dataTypeCode:124];
    overlayDisplayType = v15->_overlayDisplayType;
    v15->_overlayDisplayType = v30;

    v32 = [MEMORY[0x1E696C510] unitFromString:@"mL/(kg*min)"];
    unit = v15->_unit;
    v15->_unit = v32;

    v34 = [(_HKCardioFitnessOverlayContext *)v15 _cardioFitnessContextItemWithLevel:v15->_cardioFitnessLevel sampleCount:0];
    [(_HKCardioFitnessOverlayContext *)v15 setLastUpdatedItem:v34];
  }

  return v15;
}

- (void)updateContextItemForDateInterval:(id)a3 overlayController:(id)a4 timeScope:(int64_t)a5 resolution:(int64_t)a6 completion:(id)a7
{
  if (a5 > 5)
  {
    [(_HKCardioFitnessLevelContext *)self _updateContextItemWithSampleCountForDateInterval:a3 timeScope:a5 completion:a7, a6];
  }

  else
  {
    [(_HKCardioFitnessLevelContext *)self _updateContextItemWithChartPointCountForDateInterval:a3 timeScope:a5 completion:a7, a6];
  }
}

- (void)_updateContextItemWithChartPointCountForDateInterval:(id)a3 timeScope:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(_HKCardioFitnessOverlayContext *)self overlayChartController];
  v11 = [v10 primaryDisplayType];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
    v13 = [(_HKCardioFitnessOverlayContext *)self overlayChartController];
    v14 = [v12 graphSeriesForTimeScope:a4];

    v15 = [v8 startDate];
    v16 = [v8 endDate];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __106___HKCardioFitnessLevelContext__updateContextItemWithChartPointCountForDateInterval_timeScope_completion___block_invoke;
    v17[3] = &unk_1E81B6E70;
    v17[4] = self;
    v19 = a4;
    v18 = v9;
    [v13 cachedDataForCustomGraphSeries:v14 timeScope:a4 resolution:0 startDate:v15 endDate:v16 completion:v17];
  }
}

- (void)_updateContextItemWithSampleCountForDateInterval:(id)a3 timeScope:(int64_t)a4 completion:(id)a5
{
  v49 = *MEMORY[0x1E69E9840];
  v37 = a5;
  v7 = [HKCardioFitnessUtilities cardioFitnessLevelDateIntervalsWithDateInterval:a3 healthStore:self->_healthStore];
  v40 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v7, "count")}];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v8)
  {
    v9 = v8;
    v39 = *v44;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v44 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v43 + 1) + 8 * i);
        cardioFitnessLevel = self->_cardioFitnessLevel;
        v13 = [v11 startDate];
        v14 = [HKCardioFitnessUtilities cardioFitnessDataForLevel:cardioFitnessLevel date:v13 healthStore:self->_healthStore];

        if (!v14)
        {
          v33 = v37;
          (*(v37 + 2))(v37, 0, 0);
          v36 = obj;
          v30 = obj;
          v29 = v40;
          goto LABEL_15;
        }

        v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
        if ([HKCardioFitnessUtilities cardioFitnessLevelChartShouldDisplayLowerBound:self->_cardioFitnessLevel])
        {
          v16 = MEMORY[0x1E696C348];
          unit = self->_unit;
          [v14 vo2MaxLowerBound];
          v18 = [v16 quantityWithUnit:unit doubleValue:?];
          v19 = [MEMORY[0x1E696C378] predicateForQuantitySamplesWithOperatorType:3 quantity:v18];
          [v15 addObject:v19];
        }

        if ([HKCardioFitnessUtilities cardioFitnessLevelChartShouldDisplayUpperBound:self->_cardioFitnessLevel])
        {
          v20 = MEMORY[0x1E696C348];
          v21 = self->_unit;
          [v14 vo2MaxUpperBound];
          v22 = [v20 quantityWithUnit:v21 doubleValue:?];
          v23 = [MEMORY[0x1E696C378] predicateForQuantitySamplesWithOperatorType:0 quantity:v22];
          [v15 addObject:v23];
        }

        v24 = [objc_alloc(MEMORY[0x1E696AB28]) initWithType:1 subpredicates:v15];
        v25 = [MEMORY[0x1E696C378] predicateForSamplesWithinDateInterval:v11 options:0];
        v26 = objc_alloc(MEMORY[0x1E696AB28]);
        v47[0] = v25;
        v47[1] = v24;
        v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:2];
        v28 = [v26 initWithType:1 subpredicates:v27];

        [v40 addObject:v28];
      }

      v9 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v29 = v40;
  v30 = [objc_alloc(MEMORY[0x1E696AB28]) initWithType:2 subpredicates:v40];
  v31 = objc_alloc(MEMORY[0x1E696C3B0]);
  v32 = [(HKDisplayType *)self->_baseDisplayType sampleType];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __102___HKCardioFitnessLevelContext__updateContextItemWithSampleCountForDateInterval_timeScope_completion___block_invoke;
  v41[3] = &unk_1E81B73A0;
  v41[4] = self;
  v33 = v37;
  v42 = v37;
  v34 = [v31 initWithSampleType:v32 predicate:v30 resultsHandler:v41];

  healthStore = self->_healthStore;
  v36 = obj;
  [(HKHealthStore *)healthStore executeQuery:v34];

LABEL_15:
}

- (id)_makeGraphSeriesWithDataSource:(id)a3 baseDisplayType:(id)a4
{
  cardioFitnessLevel = self->_cardioFitnessLevel;
  v7 = a4;
  v8 = a3;
  v9 = [HKCardioFitnessUtilities cardioFitnessLevelChartShouldDisplayUpperBound:cardioFitnessLevel];
  if ([HKCardioFitnessUtilities cardioFitnessLevelChartShouldDisplayLowerBound:self->_cardioFitnessLevel])
  {
    v10 = v9 | 2;
  }

  else
  {
    v10 = v9;
  }

  v11 = [HKLevelOverlaySeries levelOverlaySeriesWithDisplayType:v7 dataSource:v8 options:v10];

  return v11;
}

@end