@interface HKRemoteChartDataSource
- (HKGraphSeriesDataBlockPath)blockPathForX:(SEL)a3 zoom:(id)a4 resolution:(int64_t)a5;
- (HKRemoteChartDataSource)init;
- (id)cachedBlockForPath:(HKGraphSeriesDataBlockPath *)a3 context:(id)a4;
- (void)invalidateCache;
- (void)setDataForTimeScope:(int64_t)a3 seriesData:(id)a4 dataSourceForMapping:(id)a5 seriesDataSourceContext:(id)a6;
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

- (void)setDataForTimeScope:(int64_t)a3 seriesData:(id)a4 dataSourceForMapping:(id)a5 seriesDataSourceContext:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v15 = [[_HKRemoteChartDataEntry alloc] initWithSeriesData:v12 dataSourceForMapping:v11 seriesDataSourceContext:v10];

  v13 = [(HKRemoteChartDataSource *)self dataBlocksForTimescopes];
  v14 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v13 setObject:v15 forKeyedSubscript:v14];
}

- (HKGraphSeriesDataBlockPath)blockPathForX:(SEL)a3 zoom:(id)a4 resolution:(int64_t)a5
{
  retstr->index = 0;
  retstr->zoom = a5;
  retstr->resolution = 0;
  return self;
}

- (id)cachedBlockForPath:(HKGraphSeriesDataBlockPath *)a3 context:(id)a4
{
  v5 = [(HKRemoteChartDataSource *)self dataBlocksForTimescopes:a3];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3->zoom];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (v7 && !a3->index)
  {
    v8 = [v7 seriesDataWithMappingApplied];
  }

  else
  {
    v8 = objc_alloc_init(HKGraphSeriesDataBlock);
    [(HKGraphSeriesDataBlock *)v8 setChartPoints:MEMORY[0x1E695E0F0]];
  }

  return v8;
}

- (void)invalidateCache
{
  v3 = [(HKGraphSeriesDataSource *)self delegate];
  [v3 dataSourceDidUpdateCache:self];
}

@end