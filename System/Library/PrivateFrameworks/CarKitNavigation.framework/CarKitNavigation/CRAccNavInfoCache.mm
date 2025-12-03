@interface CRAccNavInfoCache
- (CRAccNavInfoCache)initWithCountLimit:(unint64_t)limit;
- (id)description;
- (id)indexes;
- (id)objectForKey:(id)key;
- (unint64_t)count;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)removeAllObjects;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation CRAccNavInfoCache

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  countLimit = [(CRAccNavInfoCache *)self countLimit];
  v6 = [(CRAccNavInfoCache *)self count];
  indexes = [(CRAccNavInfoCache *)self indexes];
  v8 = [indexes componentsJoinedByString:{@", "}];
  v9 = [v3 stringWithFormat:@"<%@: %p countLimit=%lu count=%lu indexes=[%@]>", v4, self, countLimit, v6, v8];

  return v9;
}

- (unint64_t)count
{
  accNavInfo = [(CRAccNavInfoCache *)self accNavInfo];
  v3 = [accNavInfo count];

  return v3;
}

- (id)indexes
{
  accNavInfo = [(CRAccNavInfoCache *)self accNavInfo];
  allKeys = [accNavInfo allKeys];
  v4 = [allKeys sortedArrayUsingSelector:sel_compare_];

  return v4;
}

- (CRAccNavInfoCache)initWithCountLimit:(unint64_t)limit
{
  v10.receiver = self;
  v10.super_class = CRAccNavInfoCache;
  v4 = [(CRAccNavInfoCache *)&v10 init];
  v5 = v4;
  if (v4)
  {
    limitCopy = 999;
    if (limit)
    {
      limitCopy = limit;
    }

    v4->_countLimit = limitCopy;
    v7 = objc_opt_new();
    accNavInfo = v5->_accNavInfo;
    v5->_accNavInfo = v7;
  }

  return v5;
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  accNavInfo = [(CRAccNavInfoCache *)self accNavInfo];
  v6 = [accNavInfo objectForKeyedSubscript:keyCopy];

  return v6;
}

- (void)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  accNavInfo = [(CRAccNavInfoCache *)self accNavInfo];
  [accNavInfo setObject:objectCopy forKeyedSubscript:keyCopy];

  while (1)
  {
    accNavInfo2 = [(CRAccNavInfoCache *)self accNavInfo];
    v9 = [accNavInfo2 count];
    countLimit = [(CRAccNavInfoCache *)self countLimit];

    if (v9 <= countLimit)
    {
      break;
    }

    indexes = [(CRAccNavInfoCache *)self indexes];
    firstObject = [indexes firstObject];

    accNavInfo3 = [(CRAccNavInfoCache *)self accNavInfo];
    [accNavInfo3 removeObjectForKey:firstObject];
  }
}

- (void)removeAllObjects
{
  accNavInfo = [(CRAccNavInfoCache *)self accNavInfo];
  [accNavInfo removeAllObjects];
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  accNavInfo = [(CRAccNavInfoCache *)self accNavInfo];
  allValues = [accNavInfo allValues];
  v10 = [allValues countByEnumeratingWithState:state objects:objects count:count];

  return v10;
}

@end