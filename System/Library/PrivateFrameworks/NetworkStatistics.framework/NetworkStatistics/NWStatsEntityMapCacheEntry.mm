@interface NWStatsEntityMapCacheEntry
- (id)description;
@end

@implementation NWStatsEntityMapCacheEntry

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [(NWStatsEntityMapCacheEntry *)self expiryTime];
  [v4 timeIntervalSince1970];
  v6 = v5;
  v7 = [(NWStatsEntityMapCacheEntry *)self entityName];
  v8 = [v3 initWithFormat:@"CacheEntry expiryTime %f, --> %@", v6, v7];

  return v8;
}

@end