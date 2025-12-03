@interface CCSetSyncPolicy
- (CCSetSyncPolicy)initWithPolicyDictionary:(id)dictionary forSetIdentifier:(id)identifier;
@end

@implementation CCSetSyncPolicy

- (CCSetSyncPolicy)initWithPolicyDictionary:(id)dictionary forSetIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = CCSetSyncPolicy;
  v8 = [(BMResourceSyncPolicy *)&v11 initWithPolicyDictionary:dictionary];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_setIdentifier, identifier);
  }

  return v9;
}

@end