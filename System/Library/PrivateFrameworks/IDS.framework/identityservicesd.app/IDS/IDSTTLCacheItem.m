@interface IDSTTLCacheItem
- (IDSTTLCacheItem)initWithObject:(id)a3 key:(id)a4;
- (void)bumpEvictionDateToSecondsFromNow:(double)a3;
@end

@implementation IDSTTLCacheItem

- (IDSTTLCacheItem)initWithObject:(id)a3 key:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = IDSTTLCacheItem;
  v9 = [(IDSTTLCacheItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_object, a3);
    objc_storeStrong(&v10->_key, a4);
  }

  return v10;
}

- (void)bumpEvictionDateToSecondsFromNow:(double)a3
{
  v4 = [[NSDate alloc] initWithTimeIntervalSinceNow:a3];
  v5 = +[IDSFoundationLog utilities];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(IDSTTLCacheItem *)self key];
    v7 = [(IDSTTLCacheItem *)self evictionDate];
    v8 = 138478339;
    v9 = v6;
    v10 = 2114;
    v11 = v7;
    v12 = 2114;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Extending TTL for fetched object {key: %{private}@, oldEvictDate: %{public}@, newEvictDate: %{public}@", &v8, 0x20u);
  }

  [(IDSTTLCacheItem *)self setEvictionDate:v4];
}

@end