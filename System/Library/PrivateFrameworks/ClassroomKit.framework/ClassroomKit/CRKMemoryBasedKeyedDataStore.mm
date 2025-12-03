@interface CRKMemoryBasedKeyedDataStore
- (BOOL)removeAllDataWithError:(id *)error;
- (BOOL)removeDataForKey:(id)key error:(id *)error;
- (BOOL)setData:(id)data forKey:(id)key error:(id *)error;
- (CRKMemoryBasedKeyedDataStore)init;
- (id)dataForKey:(id)key error:(id *)error;
@end

@implementation CRKMemoryBasedKeyedDataStore

- (CRKMemoryBasedKeyedDataStore)init
{
  v6.receiver = self;
  v6.super_class = CRKMemoryBasedKeyedDataStore;
  v2 = [(CRKMemoryBasedKeyedDataStore *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    backing = v2->_backing;
    v2->_backing = v3;
  }

  return v2;
}

- (id)dataForKey:(id)key error:(id *)error
{
  keyCopy = key;
  backing = [(CRKMemoryBasedKeyedDataStore *)self backing];
  v7 = [backing objectForKeyedSubscript:keyCopy];

  return v7;
}

- (BOOL)removeAllDataWithError:(id *)error
{
  backing = [(CRKMemoryBasedKeyedDataStore *)self backing];
  [backing removeAllObjects];

  return 1;
}

- (BOOL)removeDataForKey:(id)key error:(id *)error
{
  keyCopy = key;
  backing = [(CRKMemoryBasedKeyedDataStore *)self backing];
  [backing setObject:0 forKeyedSubscript:keyCopy];

  return 1;
}

- (BOOL)setData:(id)data forKey:(id)key error:(id *)error
{
  keyCopy = key;
  v8 = [data copy];
  backing = [(CRKMemoryBasedKeyedDataStore *)self backing];
  [backing setObject:v8 forKeyedSubscript:keyCopy];

  return 1;
}

@end