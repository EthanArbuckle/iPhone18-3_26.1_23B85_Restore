@interface HKFixedValueDateSpanDataSource
- (BOOL)_insideRange:(id)range trendSpan:(id)span;
- (HKFixedValueDateSpanDataSource)initWithTrendModel:(id)model preferredUnitBlock:(id)block fixedValueScalingBlock:(id)scalingBlock;
- (id)cachedBlockForPath:(HKGraphSeriesDataBlockPath *)path context:(id)context;
- (id)dataForDateRange:(id)range timeScope:(int64_t)scope;
- (void)_setPreferredUnitForBlock:(id)block unit:(id)unit;
- (void)trendModelChanged;
@end

@implementation HKFixedValueDateSpanDataSource

- (HKFixedValueDateSpanDataSource)initWithTrendModel:(id)model preferredUnitBlock:(id)block fixedValueScalingBlock:(id)scalingBlock
{
  modelCopy = model;
  blockCopy = block;
  scalingBlockCopy = scalingBlock;
  v12 = objc_alloc_init(_HKFixedValueDateSpanDelegate);
  v20.receiver = self;
  v20.super_class = HKFixedValueDateSpanDataSource;
  v13 = [(HKDateRangeDataSource *)&v20 initWithSourceDelegate:v12];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_trendModel, model);
    v15 = _Block_copy(blockCopy);
    preferredUnitBlock = v14->_preferredUnitBlock;
    v14->_preferredUnitBlock = v15;

    v17 = _Block_copy(scalingBlockCopy);
    fixedValueScalingBlock = v14->_fixedValueScalingBlock;
    v14->_fixedValueScalingBlock = v17;

    objc_storeStrong(&v14->_sourceDelegate, v12);
    [(_HKFixedValueDateSpanDelegate *)v12 setFixedValueDateSpanDataSource:v14];
    [modelCopy addObserver:v14];
  }

  return v14;
}

- (id)dataForDateRange:(id)range timeScope:(int64_t)scope
{
  v51 = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  v37 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  trendModel = [(HKFixedValueDateSpanDataSource *)self trendModel];
  timeScopeTrends = [trendModel timeScopeTrends];

  obj = timeScopeTrends;
  v9 = [timeScopeTrends countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v46;
    v32 = *v46;
    scopeCopy = scope;
    do
    {
      v12 = 0;
      v34 = v10;
      do
      {
        if (*v46 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v45 + 1) + 8 * v12);
        if ([v13 timeScope] == scope)
        {
          v36 = v12;
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          trendSpans = [v13 trendSpans];
          v14 = [trendSpans countByEnumeratingWithState:&v41 objects:v49 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = 0;
            v17 = *v42;
            v38 = *v42;
            v39 = v13;
            do
            {
              for (i = 0; i != v15; ++i)
              {
                if (*v42 != v17)
                {
                  objc_enumerationMutation(trendSpans);
                }

                v19 = *(*(&v41 + 1) + 8 * i);
                trendSpans2 = [v13 trendSpans];
                v21 = [trendSpans2 count];

                if ([(HKFixedValueDateSpanDataSource *)self _insideRange:rangeCopy trendSpan:v19])
                {
                  v22 = 1;
                  if (v16)
                  {
                    v22 = 2;
                  }

                  if (v21 == 1)
                  {
                    v23 = 0;
                  }

                  else
                  {
                    v23 = v22;
                  }

                  v24 = [HKFixedValueDateSpanChartPoint alloc];
                  localizableTrendDescription = [v13 localizableTrendDescription];
                  [(HKFixedValueDateSpanDataSource *)self fixedValueScalingBlock];
                  v26 = v15;
                  selfCopy = self;
                  v29 = v28 = rangeCopy;
                  v30 = [(HKFixedValueDateSpanChartPoint *)v24 initWithTrendSpan:v19 styleIdentifier:v23 localizableTrendDescription:localizableTrendDescription fixedValueScalingBlock:v29];

                  rangeCopy = v28;
                  self = selfCopy;
                  v15 = v26;

                  v17 = v38;
                  v13 = v39;
                  [v37 addObject:v30];
                }

                ++v16;
              }

              v15 = [trendSpans countByEnumeratingWithState:&v41 objects:v49 count:16];
            }

            while (v15);
          }

          v11 = v32;
          scope = scopeCopy;
          v10 = v34;
          v12 = v36;
        }

        ++v12;
      }

      while (v12 != v10);
      v10 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
    }

    while (v10);
  }

  return v37;
}

- (id)cachedBlockForPath:(HKGraphSeriesDataBlockPath *)path context:(id)context
{
  v11.receiver = self;
  v11.super_class = HKFixedValueDateSpanDataSource;
  v10 = *path;
  v5 = [(HKDateRangeDataSource *)&v11 cachedBlockForPath:&v10 context:context];
  preferredUnitBlock = [(HKFixedValueDateSpanDataSource *)self preferredUnitBlock];

  if (preferredUnitBlock)
  {
    preferredUnitBlock2 = [(HKFixedValueDateSpanDataSource *)self preferredUnitBlock];
    v8 = preferredUnitBlock2[2]();

    if (v8)
    {
      [(HKFixedValueDateSpanDataSource *)self _setPreferredUnitForBlock:v5 unit:v8];
    }
  }

  return v5;
}

- (void)_setPreferredUnitForBlock:(id)block unit:(id)unit
{
  v17 = *MEMORY[0x1E69E9840];
  unitCopy = unit;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  chartPoints = [block chartPoints];
  v7 = [chartPoints countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(chartPoints);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v11 setPreferredUnit:unitCopy];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [chartPoints countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)trendModelChanged
{
  sourceDelegate = [(HKFixedValueDateSpanDataSource *)self sourceDelegate];
  updateCallbackDelegate = [sourceDelegate updateCallbackDelegate];
  [updateCallbackDelegate dateRangeDataUpdated];
}

- (BOOL)_insideRange:(id)range trendSpan:(id)span
{
  spanCopy = span;
  rangeCopy = range;
  startDate = [rangeCopy startDate];
  endDate = [rangeCopy endDate];

  trendDateInterval = [spanCopy trendDateInterval];
  startDate2 = [trendDateInterval startDate];

  trendDateInterval2 = [spanCopy trendDateInterval];

  endDate2 = [trendDateInterval2 endDate];

  if ([endDate hk_isBeforeDate:startDate2])
  {
    LOBYTE(v13) = 0;
  }

  else
  {
    v13 = [startDate hk_isAfterDate:endDate2] ^ 1;
  }

  return v13;
}

@end