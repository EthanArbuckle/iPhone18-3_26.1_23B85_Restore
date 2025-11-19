@interface CPLPushPullGatekeeper
- (CPLEngineStore)store;
- (CPLPushPullGatekeeper)initWithStore:(id)a3;
@end

@implementation CPLPushPullGatekeeper

- (CPLEngineStore)store
{
  WeakRetained = objc_loadWeakRetained(&self->_store);

  return WeakRetained;
}

- (CPLPushPullGatekeeper)initWithStore:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CPLPushPullGatekeeper;
  v5 = [(CPLPushPullGatekeeper *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_store, v4);
  }

  return v6;
}

@end