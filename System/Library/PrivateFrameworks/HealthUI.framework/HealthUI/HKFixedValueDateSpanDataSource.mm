@interface HKFixedValueDateSpanDataSource
- (BOOL)_insideRange:(id)a3 trendSpan:(id)a4;
- (HKFixedValueDateSpanDataSource)initWithTrendModel:(id)a3 preferredUnitBlock:(id)a4 fixedValueScalingBlock:(id)a5;
- (id)cachedBlockForPath:(HKGraphSeriesDataBlockPath *)a3 context:(id)a4;
- (id)dataForDateRange:(id)a3 timeScope:(int64_t)a4;
- (void)_setPreferredUnitForBlock:(id)a3 unit:(id)a4;
- (void)trendModelChanged;
@end

@implementation HKFixedValueDateSpanDataSource

- (HKFixedValueDateSpanDataSource)initWithTrendModel:(id)a3 preferredUnitBlock:(id)a4 fixedValueScalingBlock:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = objc_alloc_init(_HKFixedValueDateSpanDelegate);
  v20.receiver = self;
  v20.super_class = HKFixedValueDateSpanDataSource;
  v13 = [(HKDateRangeDataSource *)&v20 initWithSourceDelegate:v12];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_trendModel, a3);
    v15 = _Block_copy(v10);
    preferredUnitBlock = v14->_preferredUnitBlock;
    v14->_preferredUnitBlock = v15;

    v17 = _Block_copy(v11);
    fixedValueScalingBlock = v14->_fixedValueScalingBlock;
    v14->_fixedValueScalingBlock = v17;

    objc_storeStrong(&v14->_sourceDelegate, v12);
    [(_HKFixedValueDateSpanDelegate *)v12 setFixedValueDateSpanDataSource:v14];
    [v9 addObserver:v14];
  }

  return v14;
}

- (id)dataForDateRange:(id)a3 timeScope:(int64_t)a4
{
  v51 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v37 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v7 = [(HKFixedValueDateSpanDataSource *)self trendModel];
  v8 = [v7 timeScopeTrends];

  obj = v8;
  v9 = [v8 countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v46;
    v32 = *v46;
    v33 = a4;
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
        if ([v13 timeScope] == a4)
        {
          v36 = v12;
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v40 = [v13 trendSpans];
          v14 = [v40 countByEnumeratingWithState:&v41 objects:v49 count:16];
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
                  objc_enumerationMutation(v40);
                }

                v19 = *(*(&v41 + 1) + 8 * i);
                v20 = [v13 trendSpans];
                v21 = [v20 count];

                if ([(HKFixedValueDateSpanDataSource *)self _insideRange:v6 trendSpan:v19])
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
                  v25 = [v13 localizableTrendDescription];
                  [(HKFixedValueDateSpanDataSource *)self fixedValueScalingBlock];
                  v26 = v15;
                  v27 = self;
                  v29 = v28 = v6;
                  v30 = [(HKFixedValueDateSpanChartPoint *)v24 initWithTrendSpan:v19 styleIdentifier:v23 localizableTrendDescription:v25 fixedValueScalingBlock:v29];

                  v6 = v28;
                  self = v27;
                  v15 = v26;

                  v17 = v38;
                  v13 = v39;
                  [v37 addObject:v30];
                }

                ++v16;
              }

              v15 = [v40 countByEnumeratingWithState:&v41 objects:v49 count:16];
            }

            while (v15);
          }

          v11 = v32;
          a4 = v33;
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

- (id)cachedBlockForPath:(HKGraphSeriesDataBlockPath *)a3 context:(id)a4
{
  v11.receiver = self;
  v11.super_class = HKFixedValueDateSpanDataSource;
  v10 = *a3;
  v5 = [(HKDateRangeDataSource *)&v11 cachedBlockForPath:&v10 context:a4];
  v6 = [(HKFixedValueDateSpanDataSource *)self preferredUnitBlock];

  if (v6)
  {
    v7 = [(HKFixedValueDateSpanDataSource *)self preferredUnitBlock];
    v8 = v7[2]();

    if (v8)
    {
      [(HKFixedValueDateSpanDataSource *)self _setPreferredUnitForBlock:v5 unit:v8];
    }
  }

  return v5;
}

- (void)_setPreferredUnitForBlock:(id)a3 unit:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [a3 chartPoints];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v11 setPreferredUnit:v5];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)trendModelChanged
{
  v3 = [(HKFixedValueDateSpanDataSource *)self sourceDelegate];
  v2 = [v3 updateCallbackDelegate];
  [v2 dateRangeDataUpdated];
}

- (BOOL)_insideRange:(id)a3 trendSpan:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 startDate];
  v8 = [v6 endDate];

  v9 = [v5 trendDateInterval];
  v10 = [v9 startDate];

  v11 = [v5 trendDateInterval];

  v12 = [v11 endDate];

  if ([v8 hk_isBeforeDate:v10])
  {
    LOBYTE(v13) = 0;
  }

  else
  {
    v13 = [v7 hk_isAfterDate:v12] ^ 1;
  }

  return v13;
}

@end