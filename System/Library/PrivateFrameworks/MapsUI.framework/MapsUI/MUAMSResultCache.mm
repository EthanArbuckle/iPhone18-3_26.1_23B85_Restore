@interface MUAMSResultCache
- (MUAMSResultCache)initWithAppAdamIdCacheCount:(unint64_t)count appAdamIdTimeToLive:(unint64_t)live bundleIdCacheCount:(unint64_t)cacheCount bundleIdTimeToLive:(unint64_t)toLive;
- (id)amsResultForAdamId:(id)id;
- (id)amsResultForBundleId:(id)id;
- (void)setAMSResult:(id)result forAdamId:(id)id;
- (void)setAMSResult:(id)result forBundleId:(id)id;
@end

@implementation MUAMSResultCache

- (void)setAMSResult:(id)result forBundleId:(id)id
{
  resultCopy = result;
  idCopy = id;
  if ([idCopy length])
  {
    [(MUTimeExpirableLRUCache *)self->_amsResultsByBundleIds setObject:resultCopy forKey:idCopy];
  }
}

- (id)amsResultForBundleId:(id)id
{
  idCopy = id;
  if ([idCopy length])
  {
    v5 = [(MUTimeExpirableLRUCache *)self->_amsResultsByBundleIds objectForKeyedSubscript:idCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setAMSResult:(id)result forAdamId:(id)id
{
  resultCopy = result;
  idCopy = id;
  if ([idCopy length])
  {
    [(MUTimeExpirableLRUCache *)self->_amsResultsByAdamIds setObject:resultCopy forKey:idCopy];
  }
}

- (id)amsResultForAdamId:(id)id
{
  idCopy = id;
  if ([idCopy length])
  {
    v5 = [(MUTimeExpirableLRUCache *)self->_amsResultsByAdamIds objectForKeyedSubscript:idCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (MUAMSResultCache)initWithAppAdamIdCacheCount:(unint64_t)count appAdamIdTimeToLive:(unint64_t)live bundleIdCacheCount:(unint64_t)cacheCount bundleIdTimeToLive:(unint64_t)toLive
{
  v16.receiver = self;
  v16.super_class = MUAMSResultCache;
  v10 = [(MUAMSResultCache *)&v16 init];
  if (v10)
  {
    v11 = [[MUTimeExpirableLRUCache alloc] initWithMaxSize:count timeToLive:live];
    amsResultsByAdamIds = v10->_amsResultsByAdamIds;
    v10->_amsResultsByAdamIds = v11;

    v13 = [[MUTimeExpirableLRUCache alloc] initWithMaxSize:cacheCount timeToLive:toLive];
    amsResultsByBundleIds = v10->_amsResultsByBundleIds;
    v10->_amsResultsByBundleIds = v13;
  }

  return v10;
}

@end