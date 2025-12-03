@interface NWStatsEntityMapCacheEntry
- (id)description;
@end

@implementation NWStatsEntityMapCacheEntry

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  expiryTime = [(NWStatsEntityMapCacheEntry *)self expiryTime];
  [expiryTime timeIntervalSince1970];
  v6 = v5;
  entityName = [(NWStatsEntityMapCacheEntry *)self entityName];
  v8 = [v3 initWithFormat:@"CacheEntry expiryTime %f, --> %@", v6, entityName];

  return v8;
}

@end