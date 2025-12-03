@interface HKCacheBackedChartSeriesDataSource
- (BOOL)hasAllBlocksAvailableBetweenStartPath:(HKGraphSeriesDataBlockPath *)path endPath:(HKGraphSeriesDataBlockPath *)endPath;
- (BOOL)hasAvailableBlocksBetweenStartPath:(HKGraphSeriesDataBlockPath *)path endPath:(HKGraphSeriesDataBlockPath *)endPath;
- (BOOL)hasPendingQueriesBetweenStartPath:(HKGraphSeriesDataBlockPath *)path endPath:(HKGraphSeriesDataBlockPath *)endPath;
- (HKCacheBackedChartSeriesDataSource)init;
- (id)cachedBlockForPath:(HKGraphSeriesDataBlockPath *)path context:(id)context;
- (void)_resetCachedPaths;
- (void)blocksRequestedFromPath:(HKGraphSeriesDataBlockPath *)path toPath:(HKGraphSeriesDataBlockPath *)toPath priorityDelegate:(id)delegate;
- (void)chartCacheDidUpdate:(id)update;
- (void)setChartCache:(id)cache;
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

- (void)setChartCache:(id)cache
{
  cacheCopy = cache;
  [(HKChartCache *)self->_chartCache removeObserver:self];
  chartCache = self->_chartCache;
  self->_chartCache = cacheCopy;
  v6 = cacheCopy;

  [(HKChartCache *)self->_chartCache addObserver:self];
}

- (id)cachedBlockForPath:(HKGraphSeriesDataBlockPath *)path context:(id)context
{
  chartCache = self->_chartCache;
  v6 = MEMORY[0x1E696B098];
  v14 = *path;
  contextCopy = context;
  v8 = [v6 valueWithHKGraphSeriesDataBlockPath:&v14];
  v9 = [(HKChartCache *)chartCache cachedResultsForIdentifier:v8, *&v14.index, v14.resolution];

  dataSourceRespectingType = [(HKChartCache *)self->_chartCache dataSourceRespectingType];
  v11 = [dataSourceRespectingType mappingFunctionForContext:contextCopy];

  if (v11)
  {
    v12 = (v11)[2](v11, v9);

    v9 = v12;
  }

  return v9;
}

- (void)blocksRequestedFromPath:(HKGraphSeriesDataBlockPath *)path toPath:(HKGraphSeriesDataBlockPath *)toPath priorityDelegate:(id)delegate
{
  delegateCopy = delegate;
  v18 = *path;
  lastStartPath = self->_lastStartPath;
  v9 = HKGraphSeriesDataBlockPathEqualToPath(&v18, &lastStartPath);
  v18 = *toPath;
  lastStartPath = self->_lastEndPath;
  v10 = HKGraphSeriesDataBlockPathEqualToPath(&v18, &lastStartPath);
  if (!v9 || !v10)
  {
    v11 = *&path->index;
    self->_lastStartPath.resolution = path->resolution;
    *&self->_lastStartPath.index = v11;
    v12 = *&toPath->index;
    self->_lastEndPath.resolution = toPath->resolution;
    *&self->_lastEndPath.index = v12;
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    index = path->index;
    if (path->index <= toPath->index)
    {
      do
      {
        v18.index = index;
        *&v18.zoom = *&path->zoom;
        v15 = [MEMORY[0x1E696B098] valueWithHKGraphSeriesDataBlockPath:&v18];
        [v13 addObject:v15];
      }

      while (index++ < toPath->index);
    }

    [(HKChartCache *)self->_chartCache fetchResultsForIdentifiers:v13 priorityDelegate:delegateCopy];
  }
}

- (BOOL)hasPendingQueriesBetweenStartPath:(HKGraphSeriesDataBlockPath *)path endPath:(HKGraphSeriesDataBlockPath *)endPath
{
  index = path->index;
  if (path->index > endPath->index)
  {
    return 0;
  }

  do
  {
    v12 = index;
    v13 = *&path->zoom;
    v9 = [MEMORY[0x1E696B098] valueWithHKGraphSeriesDataBlockPath:&v12];
    v10 = [(HKChartCache *)self->_chartCache stateForIdentifier:v9];

    result = v10 == 1;
    if (v10 == 1)
    {
      break;
    }
  }

  while (index++ < endPath->index);
  return result;
}

- (BOOL)hasAvailableBlocksBetweenStartPath:(HKGraphSeriesDataBlockPath *)path endPath:(HKGraphSeriesDataBlockPath *)endPath
{
  index = path->index;
  if (path->index > endPath->index)
  {
    return 0;
  }

  do
  {
    v12 = index;
    v13 = *&path->zoom;
    v9 = [MEMORY[0x1E696B098] valueWithHKGraphSeriesDataBlockPath:&v12];
    v10 = [(HKChartCache *)self->_chartCache stateForIdentifier:v9];

    result = v10 == 2;
    if (v10 == 2)
    {
      break;
    }
  }

  while (index++ < endPath->index);
  return result;
}

- (BOOL)hasAllBlocksAvailableBetweenStartPath:(HKGraphSeriesDataBlockPath *)path endPath:(HKGraphSeriesDataBlockPath *)endPath
{
  dataSource = [(HKChartCache *)self->_chartCache dataSource];

  if (!dataSource)
  {
    return 1;
  }

  index = path->index;
  if (path->index > endPath->index)
  {
    return 1;
  }

  do
  {
    v13 = index;
    v14 = *&path->zoom;
    v10 = [MEMORY[0x1E696B098] valueWithHKGraphSeriesDataBlockPath:&v13];
    v11 = [(HKChartCache *)self->_chartCache stateForIdentifier:v10];

    result = v11 == 2;
    if (v11 != 2)
    {
      break;
    }
  }

  while (index++ < endPath->index);
  return result;
}

- (void)chartCacheDidUpdate:(id)update
{
  [(HKCacheBackedChartSeriesDataSource *)self _resetCachedPaths];
  delegate = [(HKGraphSeriesDataSource *)self delegate];
  [delegate dataSourceDidUpdateCache:self];
}

- (void)_resetCachedPaths
{
  *&self->_lastStartPath.index = HKGraphSeriesDataBlockPathNone;
  self->_lastStartPath.resolution = 0;
  *&self->_lastEndPath.index = HKGraphSeriesDataBlockPathNone;
  self->_lastEndPath.resolution = 0;
}

@end