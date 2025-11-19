@interface HKCacheBackedChartSeriesDataSource
- (BOOL)hasAllBlocksAvailableBetweenStartPath:(HKGraphSeriesDataBlockPath *)a3 endPath:(HKGraphSeriesDataBlockPath *)a4;
- (BOOL)hasAvailableBlocksBetweenStartPath:(HKGraphSeriesDataBlockPath *)a3 endPath:(HKGraphSeriesDataBlockPath *)a4;
- (BOOL)hasPendingQueriesBetweenStartPath:(HKGraphSeriesDataBlockPath *)a3 endPath:(HKGraphSeriesDataBlockPath *)a4;
- (HKCacheBackedChartSeriesDataSource)init;
- (id)cachedBlockForPath:(HKGraphSeriesDataBlockPath *)a3 context:(id)a4;
- (void)_resetCachedPaths;
- (void)blocksRequestedFromPath:(HKGraphSeriesDataBlockPath *)a3 toPath:(HKGraphSeriesDataBlockPath *)a4 priorityDelegate:(id)a5;
- (void)chartCacheDidUpdate:(id)a3;
- (void)setChartCache:(id)a3;
@end

@implementation HKCacheBackedChartSeriesDataSource

- (HKCacheBackedChartSeriesDataSource)init
{
  v5.receiver = self;
  v5.super_class = HKCacheBackedChartSeriesDataSource;
  v2 = [(HKGraphSeriesDataSource *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(HKCacheBackedChartSeriesDataSource *)v2 _resetCachedPaths];
  }

  return v3;
}

- (void)setChartCache:(id)a3
{
  v4 = a3;
  [(HKChartCache *)self->_chartCache removeObserver:self];
  chartCache = self->_chartCache;
  self->_chartCache = v4;
  v6 = v4;

  [(HKChartCache *)self->_chartCache addObserver:self];
}

- (id)cachedBlockForPath:(HKGraphSeriesDataBlockPath *)a3 context:(id)a4
{
  chartCache = self->_chartCache;
  v6 = MEMORY[0x1E696B098];
  v14 = *a3;
  v7 = a4;
  v8 = [v6 valueWithHKGraphSeriesDataBlockPath:&v14];
  v9 = [(HKChartCache *)chartCache cachedResultsForIdentifier:v8, *&v14.index, v14.resolution];

  v10 = [(HKChartCache *)self->_chartCache dataSourceRespectingType];
  v11 = [v10 mappingFunctionForContext:v7];

  if (v11)
  {
    v12 = (v11)[2](v11, v9);

    v9 = v12;
  }

  return v9;
}

- (void)blocksRequestedFromPath:(HKGraphSeriesDataBlockPath *)a3 toPath:(HKGraphSeriesDataBlockPath *)a4 priorityDelegate:(id)a5
{
  v8 = a5;
  v18 = *a3;
  lastStartPath = self->_lastStartPath;
  v9 = HKGraphSeriesDataBlockPathEqualToPath(&v18, &lastStartPath);
  v18 = *a4;
  lastStartPath = self->_lastEndPath;
  v10 = HKGraphSeriesDataBlockPathEqualToPath(&v18, &lastStartPath);
  if (!v9 || !v10)
  {
    v11 = *&a3->index;
    self->_lastStartPath.resolution = a3->resolution;
    *&self->_lastStartPath.index = v11;
    v12 = *&a4->index;
    self->_lastEndPath.resolution = a4->resolution;
    *&self->_lastEndPath.index = v12;
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    index = a3->index;
    if (a3->index <= a4->index)
    {
      do
      {
        v18.index = index;
        *&v18.zoom = *&a3->zoom;
        v15 = [MEMORY[0x1E696B098] valueWithHKGraphSeriesDataBlockPath:&v18];
        [v13 addObject:v15];
      }

      while (index++ < a4->index);
    }

    [(HKChartCache *)self->_chartCache fetchResultsForIdentifiers:v13 priorityDelegate:v8];
  }
}

- (BOOL)hasPendingQueriesBetweenStartPath:(HKGraphSeriesDataBlockPath *)a3 endPath:(HKGraphSeriesDataBlockPath *)a4
{
  index = a3->index;
  if (a3->index > a4->index)
  {
    return 0;
  }

  do
  {
    v12 = index;
    v13 = *&a3->zoom;
    v9 = [MEMORY[0x1E696B098] valueWithHKGraphSeriesDataBlockPath:&v12];
    v10 = [(HKChartCache *)self->_chartCache stateForIdentifier:v9];

    result = v10 == 1;
    if (v10 == 1)
    {
      break;
    }
  }

  while (index++ < a4->index);
  return result;
}

- (BOOL)hasAvailableBlocksBetweenStartPath:(HKGraphSeriesDataBlockPath *)a3 endPath:(HKGraphSeriesDataBlockPath *)a4
{
  index = a3->index;
  if (a3->index > a4->index)
  {
    return 0;
  }

  do
  {
    v12 = index;
    v13 = *&a3->zoom;
    v9 = [MEMORY[0x1E696B098] valueWithHKGraphSeriesDataBlockPath:&v12];
    v10 = [(HKChartCache *)self->_chartCache stateForIdentifier:v9];

    result = v10 == 2;
    if (v10 == 2)
    {
      break;
    }
  }

  while (index++ < a4->index);
  return result;
}

- (BOOL)hasAllBlocksAvailableBetweenStartPath:(HKGraphSeriesDataBlockPath *)a3 endPath:(HKGraphSeriesDataBlockPath *)a4
{
  v7 = [(HKChartCache *)self->_chartCache dataSource];

  if (!v7)
  {
    return 1;
  }

  index = a3->index;
  if (a3->index > a4->index)
  {
    return 1;
  }

  do
  {
    v13 = index;
    v14 = *&a3->zoom;
    v10 = [MEMORY[0x1E696B098] valueWithHKGraphSeriesDataBlockPath:&v13];
    v11 = [(HKChartCache *)self->_chartCache stateForIdentifier:v10];

    result = v11 == 2;
    if (v11 != 2)
    {
      break;
    }
  }

  while (index++ < a4->index);
  return result;
}

- (void)chartCacheDidUpdate:(id)a3
{
  [(HKCacheBackedChartSeriesDataSource *)self _resetCachedPaths];
  v4 = [(HKGraphSeriesDataSource *)self delegate];
  [v4 dataSourceDidUpdateCache:self];
}

- (void)_resetCachedPaths
{
  *&self->_lastStartPath.index = HKGraphSeriesDataBlockPathNone;
  self->_lastStartPath.resolution = 0;
  *&self->_lastEndPath.index = HKGraphSeriesDataBlockPathNone;
  self->_lastEndPath.resolution = 0;
}

@end