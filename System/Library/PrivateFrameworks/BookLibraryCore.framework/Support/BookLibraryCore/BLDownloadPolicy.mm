@interface BLDownloadPolicy
+ (id)policyInfoWithCellularResult:(int64_t)result;
- (BOOL)hasCellularResult;
- (NSDictionary)info;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)cellularResult;
- (void)_loadCachedPropertiesIfNeeded;
- (void)setPolicyData:(id)data;
@end

@implementation BLDownloadPolicy

+ (id)policyInfoWithCellularResult:(int64_t)result
{
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = [NSNumber numberWithInteger:result];
  [v4 setObject:v5 forKeyedSubscript:@"CellularResult"];

  v6 = [v4 copy];

  return v6;
}

- (void)_loadCachedPropertiesIfNeeded
{
  if (![(BLDownloadPolicy *)self cacheLoaded])
  {
    policyData = [(BLDownloadPolicy *)self policyData];
    [(BLDownloadPolicy *)self setCachedInfo:0];
    v12 = 0;
    v4 = [[NSKeyedUnarchiver alloc] initForReadingFromData:policyData error:&v12];
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
  info = [(BLDownloadPolicy *)self info];
  v3 = [info objectForKey:@"CellularResult"];
  v4 = v3 != 0;

  return v4;
}

- (int64_t)cellularResult
{
  info = [(BLDownloadPolicy *)self info];
  v3 = [info objectForKeyedSubscript:@"CellularResult"];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (NSDictionary)info
{
  [(BLDownloadPolicy *)self _loadCachedPropertiesIfNeeded];

  return [(BLDownloadPolicy *)self cachedInfo];
}

- (void)setPolicyData:(id)data
{
  v4 = [data copy];
  policyData = self->_policyData;
  self->_policyData = v4;

  [(BLDownloadPolicy *)self setCacheLoaded:0];

  [(BLDownloadPolicy *)self setCachedInfo:0];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  if (v4)
  {
    policyID = [(BLDownloadPolicy *)self policyID];
    [v4 setPolicyID:policyID];

    policyData = [(BLDownloadPolicy *)self policyData];
    [v4 setPolicyData:policyData];
  }

  return v4;
}

@end