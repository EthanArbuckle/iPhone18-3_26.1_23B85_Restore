@interface CCSetSyncPolicy
- (CCSetSyncPolicy)initWithPolicyDictionary:(id)a3 forSetIdentifier:(id)a4;
@end

@implementation CCSetSyncPolicy

- (CCSetSyncPolicy)initWithPolicyDictionary:(id)a3 forSetIdentifier:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = CCSetSyncPolicy;
  v8 = [(BMResourceSyncPolicy *)&v11 initWithPolicyDictionary:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_setIdentifier, a4);
  }

  return v9;
}

@end