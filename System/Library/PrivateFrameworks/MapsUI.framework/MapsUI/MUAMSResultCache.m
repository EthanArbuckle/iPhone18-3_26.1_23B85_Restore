@interface MUAMSResultCache
- (MUAMSResultCache)initWithAppAdamIdCacheCount:(unint64_t)a3 appAdamIdTimeToLive:(unint64_t)a4 bundleIdCacheCount:(unint64_t)a5 bundleIdTimeToLive:(unint64_t)a6;
- (id)amsResultForAdamId:(id)a3;
- (id)amsResultForBundleId:(id)a3;
- (void)setAMSResult:(id)a3 forAdamId:(id)a4;
- (void)setAMSResult:(id)a3 forBundleId:(id)a4;
@end

@implementation MUAMSResultCache

- (void)setAMSResult:(id)a3 forBundleId:(id)a4
{
  v7 = a3;
  v6 = a4;
  if ([v6 length])
  {
    [(MUTimeExpirableLRUCache *)self->_amsResultsByBundleIds setObject:v7 forKey:v6];
  }
}

- (id)amsResultForBundleId:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(MUTimeExpirableLRUCache *)self->_amsResultsByBundleIds objectForKeyedSubscript:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setAMSResult:(id)a3 forAdamId:(id)a4
{
  v7 = a3;
  v6 = a4;
  if ([v6 length])
  {
    [(MUTimeExpirableLRUCache *)self->_amsResultsByAdamIds setObject:v7 forKey:v6];
  }
}

- (id)amsResultForAdamId:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(MUTimeExpirableLRUCache *)self->_amsResultsByAdamIds objectForKeyedSubscript:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (MUAMSResultCache)initWithAppAdamIdCacheCount:(unint64_t)a3 appAdamIdTimeToLive:(unint64_t)a4 bundleIdCacheCount:(unint64_t)a5 bundleIdTimeToLive:(unint64_t)a6
{
  v16.receiver = self;
  v16.super_class = MUAMSResultCache;
  v10 = [(MUAMSResultCache *)&v16 init];
  if (v10)
  {
    v11 = [[MUTimeExpirableLRUCache alloc] initWithMaxSize:a3 timeToLive:a4];
    amsResultsByAdamIds = v10->_amsResultsByAdamIds;
    v10->_amsResultsByAdamIds = v11;

    v13 = [[MUTimeExpirableLRUCache alloc] initWithMaxSize:a5 timeToLive:a6];
    amsResultsByBundleIds = v10->_amsResultsByBundleIds;
    v10->_amsResultsByBundleIds = v13;
  }

  return v10;
}

@end