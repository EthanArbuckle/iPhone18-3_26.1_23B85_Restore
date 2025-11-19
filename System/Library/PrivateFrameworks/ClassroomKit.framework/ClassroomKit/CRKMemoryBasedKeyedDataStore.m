@interface CRKMemoryBasedKeyedDataStore
- (BOOL)removeAllDataWithError:(id *)a3;
- (BOOL)removeDataForKey:(id)a3 error:(id *)a4;
- (BOOL)setData:(id)a3 forKey:(id)a4 error:(id *)a5;
- (CRKMemoryBasedKeyedDataStore)init;
- (id)dataForKey:(id)a3 error:(id *)a4;
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

- (id)dataForKey:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(CRKMemoryBasedKeyedDataStore *)self backing];
  v7 = [v6 objectForKeyedSubscript:v5];

  return v7;
}

- (BOOL)removeAllDataWithError:(id *)a3
{
  v3 = [(CRKMemoryBasedKeyedDataStore *)self backing];
  [v3 removeAllObjects];

  return 1;
}

- (BOOL)removeDataForKey:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(CRKMemoryBasedKeyedDataStore *)self backing];
  [v6 setObject:0 forKeyedSubscript:v5];

  return 1;
}

- (BOOL)setData:(id)a3 forKey:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = [a3 copy];
  v9 = [(CRKMemoryBasedKeyedDataStore *)self backing];
  [v9 setObject:v8 forKeyedSubscript:v7];

  return 1;
}

@end