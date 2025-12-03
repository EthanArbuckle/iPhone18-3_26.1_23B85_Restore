@interface HKDateRangeDataSource
- (HKDateRangeDataSource)initWithSourceDelegate:(id)delegate;
- (id)_fetchAndCacheDataForPath:(HKGraphSeriesDataBlockPath *)path;
- (id)cachedBlockForPath:(HKGraphSeriesDataBlockPath *)path context:(id)context;
- (void)blocksRequestedFromPath:(HKGraphSeriesDataBlockPath *)path toPath:(HKGraphSeriesDataBlockPath *)toPath priorityDelegate:(id)delegate;
- (void)dateRangeDataUpdated;
@end

@implementation HKDateRangeDataSource

- (HKDateRangeDataSource)initWithSourceDelegate:(id)delegate
{
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = HKDateRangeDataSource;
  v6 = [(HKGraphSeriesDataSource *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sourceDelegate, delegate);
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

- (id)cachedBlockForPath:(HKGraphSeriesDataBlockPath *)path context:(id)context
{
  v9 = *path;
  v6 = [MEMORY[0x1E696B098] valueWithHKGraphSeriesDataBlockPath:{&v9, context}];
  v7 = [(NSMutableDictionary *)self->_pathToDataBlock objectForKeyedSubscript:v6];
  if (!v7)
  {
    v9 = *path;
    v7 = [(HKDateRangeDataSource *)self _fetchAndCacheDataForPath:&v9];
    [(NSMutableDictionary *)self->_pathToDataBlock setObject:v7 forKeyedSubscript:v6];
  }

  return v7;
}

- (void)blocksRequestedFromPath:(HKGraphSeriesDataBlockPath *)path toPath:(HKGraphSeriesDataBlockPath *)toPath priorityDelegate:(id)delegate
{
  index = path->index;
  if (path->index <= toPath->index)
  {
    do
    {
      v11 = index;
      v12 = *&path->zoom;
      delegate = [(HKDateRangeDataSource *)self cachedBlockForPath:&v11 context:0, delegate];
    }

    while (index++ < toPath->index);
  }
}

- (id)_fetchAndCacheDataForPath:(HKGraphSeriesDataBlockPath *)path
{
  v12 = *path;
  v5 = HKGraphSeriesDataBlockPathMinimumX(&v12.index);
  v12 = *path;
  v6 = HKGraphSeriesDataBlockPathMaximumX(&v12);
  zoom = path->zoom;
  v8 = [HKValueRange valueRangeWithMinValue:v5 maxValue:v6];
  v9 = [(HKDateRangeDataSourceDelegate *)self->_sourceDelegate dataForDateRange:v8 timeScope:zoom];
  v10 = objc_alloc_init(HKGraphSeriesDataBlock);
  [(HKGraphSeriesDataBlock *)v10 setChartPoints:v9];

  return v10;
}

- (void)dateRangeDataUpdated
{
  [(NSMutableDictionary *)self->_pathToDataBlock removeAllObjects];
  delegate = [(HKGraphSeriesDataSource *)self delegate];
  [delegate dataSourceDidUpdateCache:self];
}

@end