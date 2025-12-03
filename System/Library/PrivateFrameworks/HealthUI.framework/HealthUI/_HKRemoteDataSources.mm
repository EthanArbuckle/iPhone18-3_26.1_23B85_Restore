@interface _HKRemoteDataSources
- (_HKRemoteDataSources)init;
- (id)dataSourceForTimeScope:(int64_t)scope;
- (id)initSupportsChartQueryDataGeneration:(BOOL)generation;
- (void)setDataSource:(id)source forTimeScope:(int64_t)scope;
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

- (id)initSupportsChartQueryDataGeneration:(BOOL)generation
{
  v8.receiver = self;
  v8.super_class = _HKRemoteDataSources;
  v4 = [(_HKRemoteDataSources *)&v8 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    dataSources = v4->_dataSources;
    v4->_dataSources = v5;

    v4->_supportsChartQueryDataGeneration = generation;
  }

  return v4;
}

- (id)dataSourceForTimeScope:(int64_t)scope
{
  dataSources = self->_dataSources;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:scope];
  v5 = [(NSMutableDictionary *)dataSources objectForKey:v4];

  return v5;
}

- (void)setDataSource:(id)source forTimeScope:(int64_t)scope
{
  dataSources = self->_dataSources;
  v6 = MEMORY[0x1E696AD98];
  sourceCopy = source;
  v8 = [v6 numberWithInteger:scope];
  [(NSMutableDictionary *)dataSources setObject:sourceCopy forKeyedSubscript:v8];
}

@end