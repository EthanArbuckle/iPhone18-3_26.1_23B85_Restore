@interface CPLPushPullGatekeeper
- (CPLEngineStore)store;
- (CPLPushPullGatekeeper)initWithStore:(id)store;
@end

@implementation CPLPushPullGatekeeper

- (CPLEngineStore)store
{
  WeakRetained = objc_loadWeakRetained(&self->_store);

  return WeakRetained;
}

- (CPLPushPullGatekeeper)initWithStore:(id)store
{
  storeCopy = store;
  v8.receiver = self;
  v8.super_class = CPLPushPullGatekeeper;
  v5 = [(CPLPushPullGatekeeper *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_store, storeCopy);
  }

  return v6;
}

@end