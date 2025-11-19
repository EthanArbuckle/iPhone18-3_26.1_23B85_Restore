@interface CRAccNavInfoCache
- (CRAccNavInfoCache)initWithCountLimit:(unint64_t)a3;
- (id)description;
- (id)indexes;
- (id)objectForKey:(id)a3;
- (unint64_t)count;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (void)removeAllObjects;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation CRAccNavInfoCache

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(CRAccNavInfoCache *)self countLimit];
  v6 = [(CRAccNavInfoCache *)self count];
  v7 = [(CRAccNavInfoCache *)self indexes];
  v8 = [v7 componentsJoinedByString:{@", "}];
  v9 = [v3 stringWithFormat:@"<%@: %p countLimit=%lu count=%lu indexes=[%@]>", v4, self, v5, v6, v8];

  return v9;
}

- (unint64_t)count
{
  v2 = [(CRAccNavInfoCache *)self accNavInfo];
  v3 = [v2 count];

  return v3;
}

- (id)indexes
{
  v2 = [(CRAccNavInfoCache *)self accNavInfo];
  v3 = [v2 allKeys];
  v4 = [v3 sortedArrayUsingSelector:sel_compare_];

  return v4;
}

- (CRAccNavInfoCache)initWithCountLimit:(unint64_t)a3
{
  v10.receiver = self;
  v10.super_class = CRAccNavInfoCache;
  v4 = [(CRAccNavInfoCache *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = 999;
    if (a3)
    {
      v6 = a3;
    }

    v4->_countLimit = v6;
    v7 = objc_opt_new();
    accNavInfo = v5->_accNavInfo;
    v5->_accNavInfo = v7;
  }

  return v5;
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v5 = [(CRAccNavInfoCache *)self accNavInfo];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = [(CRAccNavInfoCache *)self accNavInfo];
  [v7 setObject:v14 forKeyedSubscript:v6];

  while (1)
  {
    v8 = [(CRAccNavInfoCache *)self accNavInfo];
    v9 = [v8 count];
    v10 = [(CRAccNavInfoCache *)self countLimit];

    if (v9 <= v10)
    {
      break;
    }

    v11 = [(CRAccNavInfoCache *)self indexes];
    v12 = [v11 firstObject];

    v13 = [(CRAccNavInfoCache *)self accNavInfo];
    [v13 removeObjectForKey:v12];
  }
}

- (void)removeAllObjects
{
  v2 = [(CRAccNavInfoCache *)self accNavInfo];
  [v2 removeAllObjects];
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  v8 = [(CRAccNavInfoCache *)self accNavInfo];
  v9 = [v8 allValues];
  v10 = [v9 countByEnumeratingWithState:a3 objects:a4 count:a5];

  return v10;
}

@end