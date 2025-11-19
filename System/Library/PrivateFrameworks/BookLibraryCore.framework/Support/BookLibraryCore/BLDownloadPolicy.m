@interface BLDownloadPolicy
+ (id)policyInfoWithCellularResult:(int64_t)a3;
- (BOOL)hasCellularResult;
- (NSDictionary)info;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)cellularResult;
- (void)_loadCachedPropertiesIfNeeded;
- (void)setPolicyData:(id)a3;
@end

@implementation BLDownloadPolicy

+ (id)policyInfoWithCellularResult:(int64_t)a3
{
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = [NSNumber numberWithInteger:a3];
  [v4 setObject:v5 forKeyedSubscript:@"CellularResult"];

  v6 = [v4 copy];

  return v6;
}

- (void)_loadCachedPropertiesIfNeeded
{
  if (![(BLDownloadPolicy *)self cacheLoaded])
  {
    v3 = [(BLDownloadPolicy *)self policyData];
    [(BLDownloadPolicy *)self setCachedInfo:0];
    v12 = 0;
    v4 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v3 error:&v12];
    v5 = v12;
    if (v5)
    {
      v6 = BLDaemonLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = [v5 description];
        *buf = 138543362;
        v14 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Error decoding policy: %{public}@", buf, 0xCu);
      }

      v8 = 0;
    }

    else
    {
      v9 = objc_opt_class();
      v10 = objc_opt_class();
      v6 = [NSSet setWithObjects:v9, v10, objc_opt_class(), 0];
      v8 = [v4 decodeObjectOfClasses:v6 forKey:@"Info"];
    }

    v11 = BLServiceLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Finished with decoding policy", buf, 2u);
    }

    [(BLDownloadPolicy *)self setCachedInfo:v8];
    [(BLDownloadPolicy *)self setCacheLoaded:1];
  }
}

- (BOOL)hasCellularResult
{
  v2 = [(BLDownloadPolicy *)self info];
  v3 = [v2 objectForKey:@"CellularResult"];
  v4 = v3 != 0;

  return v4;
}

- (int64_t)cellularResult
{
  v2 = [(BLDownloadPolicy *)self info];
  v3 = [v2 objectForKeyedSubscript:@"CellularResult"];
  v4 = [v3 integerValue];

  return v4;
}

- (NSDictionary)info
{
  [(BLDownloadPolicy *)self _loadCachedPropertiesIfNeeded];

  return [(BLDownloadPolicy *)self cachedInfo];
}

- (void)setPolicyData:(id)a3
{
  v4 = [a3 copy];
  policyData = self->_policyData;
  self->_policyData = v4;

  [(BLDownloadPolicy *)self setCacheLoaded:0];

  [(BLDownloadPolicy *)self setCachedInfo:0];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  if (v4)
  {
    v5 = [(BLDownloadPolicy *)self policyID];
    [v4 setPolicyID:v5];

    v6 = [(BLDownloadPolicy *)self policyData];
    [v4 setPolicyData:v6];
  }

  return v4;
}

@end