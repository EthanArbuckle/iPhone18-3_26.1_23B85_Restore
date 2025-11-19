@interface HKDateRangeDataSource
- (HKDateRangeDataSource)initWithSourceDelegate:(id)a3;
- (id)_fetchAndCacheDataForPath:(HKGraphSeriesDataBlockPath *)a3;
- (id)cachedBlockForPath:(HKGraphSeriesDataBlockPath *)a3 context:(id)a4;
- (void)blocksRequestedFromPath:(HKGraphSeriesDataBlockPath *)a3 toPath:(HKGraphSeriesDataBlockPath *)a4 priorityDelegate:(id)a5;
- (void)dateRangeDataUpdated;
@end

@implementation HKDateRangeDataSource

- (HKDateRangeDataSource)initWithSourceDelegate:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = HKDateRangeDataSource;
  v6 = [(HKGraphSeriesDataSource *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sourceDelegate, a3);
    sourceDelegate = v7->_sourceDelegate;
    if (sourceDelegate)
    {
      [(HKDateRangeDataSourceDelegate *)sourceDelegate setUpdateDelegate:v7];
    }

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    pathToDataBlock = v7->_pathToDataBlock;
    v7->_pathToDataBlock = v9;
  }

  return v7;
}

- (id)cachedBlockForPath:(HKGraphSeriesDataBlockPath *)a3 context:(id)a4
{
  v9 = *a3;
  v6 = [MEMORY[0x1E696B098] valueWithHKGraphSeriesDataBlockPath:{&v9, a4}];
  v7 = [(NSMutableDictionary *)self->_pathToDataBlock objectForKeyedSubscript:v6];
  if (!v7)
  {
    v9 = *a3;
    v7 = [(HKDateRangeDataSource *)self _fetchAndCacheDataForPath:&v9];
    [(NSMutableDictionary *)self->_pathToDataBlock setObject:v7 forKeyedSubscript:v6];
  }

  return v7;
}

- (void)blocksRequestedFromPath:(HKGraphSeriesDataBlockPath *)a3 toPath:(HKGraphSeriesDataBlockPath *)a4 priorityDelegate:(id)a5
{
  index = a3->index;
  if (a3->index <= a4->index)
  {
    do
    {
      v11 = index;
      v12 = *&a3->zoom;
      v9 = [(HKDateRangeDataSource *)self cachedBlockForPath:&v11 context:0, a5];
    }

    while (index++ < a4->index);
  }
}

- (id)_fetchAndCacheDataForPath:(HKGraphSeriesDataBlockPath *)a3
{
  v12 = *a3;
  v5 = HKGraphSeriesDataBlockPathMinimumX(&v12.index);
  v12 = *a3;
  v6 = HKGraphSeriesDataBlockPathMaximumX(&v12);
  zoom = a3->zoom;
  v8 = [HKValueRange valueRangeWithMinValue:v5 maxValue:v6];
  v9 = [(HKDateRangeDataSourceDelegate *)self->_sourceDelegate dataForDateRange:v8 timeScope:zoom];
  v10 = objc_alloc_init(HKGraphSeriesDataBlock);
  [(HKGraphSeriesDataBlock *)v10 setChartPoints:v9];

  return v10;
}

- (void)dateRangeDataUpdated
{
  [(NSMutableDictionary *)self->_pathToDataBlock removeAllObjects];
  v3 = [(HKGraphSeriesDataSource *)self delegate];
  [v3 dataSourceDidUpdateCache:self];
}

@end