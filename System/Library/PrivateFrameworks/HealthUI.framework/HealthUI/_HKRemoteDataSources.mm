@interface _HKRemoteDataSources
- (_HKRemoteDataSources)init;
- (id)dataSourceForTimeScope:(int64_t)a3;
- (id)initSupportsChartQueryDataGeneration:(BOOL)a3;
- (void)setDataSource:(id)a3 forTimeScope:(int64_t)a4;
@end

@implementation _HKRemoteDataSources

- (_HKRemoteDataSources)init
{
  v6.receiver = self;
  v6.super_class = _HKRemoteDataSources;
  v2 = [(_HKRemoteDataSources *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    dataSources = v2->_dataSources;
    v2->_dataSources = v3;

    v2->_supportsChartQueryDataGeneration = 0;
  }

  return v2;
}

- (id)initSupportsChartQueryDataGeneration:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = _HKRemoteDataSources;
  v4 = [(_HKRemoteDataSources *)&v8 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    dataSources = v4->_dataSources;
    v4->_dataSources = v5;

    v4->_supportsChartQueryDataGeneration = a3;
  }

  return v4;
}

- (id)dataSourceForTimeScope:(int64_t)a3
{
  dataSources = self->_dataSources;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v5 = [(NSMutableDictionary *)dataSources objectForKey:v4];

  return v5;
}

- (void)setDataSource:(id)a3 forTimeScope:(int64_t)a4
{
  dataSources = self->_dataSources;
  v6 = MEMORY[0x1E696AD98];
  v7 = a3;
  v8 = [v6 numberWithInteger:a4];
  [(NSMutableDictionary *)dataSources setObject:v7 forKeyedSubscript:v8];
}

@end