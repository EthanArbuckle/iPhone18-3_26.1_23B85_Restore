@interface CPLPrequeliteClientCacheMigrator
- (CPLEngineStore)engineStore;
- (CPLPrequeliteClientCacheMigrator)initWithStore:(id)store;
- (CPLPrequeliteStore)store;
- (NSString)description;
@end

@implementation CPLPrequeliteClientCacheMigrator

- (CPLPrequeliteClientCacheMigrator)initWithStore:(id)store
{
  storeCopy = store;
  v12.receiver = self;
  v12.super_class = CPLPrequeliteClientCacheMigrator;
  v6 = [(CPLPrequeliteClientCacheMigrator *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_store, storeCopy);
    v8 = +[CPLPlatform currentPlatform];
    v9 = [v8 newPlatformImplementationForObject:v7];
    platformObject = v7->_platformObject;
    v7->_platformObject = v9;

    if (!v7->_platformObject)
    {
      sub_1001C2AD0(v7, a2);
    }
  }

  return v7;
}

- (CPLEngineStore)engineStore
{
  WeakRetained = objc_loadWeakRetained(&self->_store);
  abstractObject = [WeakRetained abstractObject];

  return abstractObject;
}

- (NSString)description
{
  v3 = objc_opt_class();
  name = [(CPLPrequeliteClientCacheMigrator *)self name];
  v5 = [NSString stringWithFormat:@"[%@ %@]", v3, name];

  return v5;
}

- (CPLPrequeliteStore)store
{
  WeakRetained = objc_loadWeakRetained(&self->_store);

  return WeakRetained;
}

@end