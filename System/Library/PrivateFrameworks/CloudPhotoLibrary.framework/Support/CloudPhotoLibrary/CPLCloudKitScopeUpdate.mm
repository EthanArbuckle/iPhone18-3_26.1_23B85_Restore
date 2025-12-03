@interface CPLCloudKitScopeUpdate
- (CPLCloudKitScopeUpdate)initWithCloudKitScope:(id)scope;
@end

@implementation CPLCloudKitScopeUpdate

- (CPLCloudKitScopeUpdate)initWithCloudKitScope:(id)scope
{
  scopeCopy = scope;
  v9.receiver = self;
  v9.super_class = CPLCloudKitScopeUpdate;
  v6 = [(CPLCloudKitScopeUpdate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cloudKitScope, scope);
  }

  return v7;
}

@end