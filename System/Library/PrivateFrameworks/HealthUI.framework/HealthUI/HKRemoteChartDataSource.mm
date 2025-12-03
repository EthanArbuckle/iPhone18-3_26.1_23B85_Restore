@interface HKRemoteChartDataSource
- (HKGraphSeriesDataBlockPath)blockPathForX:(SEL)x zoom:(id)zoom resolution:(int64_t)resolution;
- (HKRemoteChartDataSource)init;
- (id)cachedBlockForPath:(HKGraphSeriesDataBlockPath *)path context:(id)context;
- (void)invalidateCache;
- (void)setDataForTimeScope:(int64_t)scope seriesData:(id)data dataSourceForMapping:(id)mapping seriesDataSourceContext:(id)context;
@end

@implementation HKRemoteChartDataSource

- (HKRemoteChartDataSource)init
{
  v6.receiver = self;
  v6.super_class = HKRemoteChartDataSource;
  v2 = [(HKGraphSeriesDataSource *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    dataBlocksForTimescopes = v2->_dataBlocksForTimescopes;
    v2->_dataBlocksForTimescopes = v3;
  }

  return v2;
}

- (void)setDataForTimeScope:(int64_t)scope seriesData:(id)data dataSourceForMapping:(id)mapping seriesDataSourceContext:(id)context
{
  contextCopy = context;
  mappingCopy = mapping;
  dataCopy = data;
  v15 = [[_HKRemoteChartDataEntry alloc] initWithSeriesData:dataCopy dataSourceForMapping:mappingCopy seriesDataSourceContext:contextCopy];

  dataBlocksForTimescopes = [(HKRemoteChartDataSource *)self dataBlocksForTimescopes];
  v14 = [MEMORY[0x1E696AD98] numberWithInteger:scope];
  [dataBlocksForTimescopes setObject:v15 forKeyedSubscript:v14];
}

- (HKGraphSeriesDataBlockPath)blockPathForX:(SEL)x zoom:(id)zoom resolution:(int64_t)resolution
{
  retstr->index = 0;
  retstr->zoom = resolution;
  retstr->resolution = 0;
  return self;
}

- (id)cachedBlockForPath:(HKGraphSeriesDataBlockPath *)path context:(id)context
{
  v5 = [(HKRemoteChartDataSource *)self dataBlocksForTimescopes:path];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:path->zoom];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (v7 && !path->index)
  {
    seriesDataWithMappingApplied = [v7 seriesDataWithMappingApplied];
  }

  else
  {
    seriesDataWithMappingApplied = objc_alloc_init(HKGraphSeriesDataBlock);
    [(HKGraphSeriesDataBlock *)seriesDataWithMappingApplied setChartPoints:MEMORY[0x1E695E0F0]];
  }

  return seriesDataWithMappingApplied;
}

- (void)invalidateCache
{
  delegate = [(HKGraphSeriesDataSource *)self delegate];
  [delegate dataSourceDidUpdateCache:self];
}

@end