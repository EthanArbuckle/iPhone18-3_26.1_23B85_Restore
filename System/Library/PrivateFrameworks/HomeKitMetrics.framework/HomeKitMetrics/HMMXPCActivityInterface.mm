@interface HMMXPCActivityInterface
- (id)criteriaForXPCActivity:(id)activity;
- (void)registerXPCActivityWithActivityIdentifier:(id)identifier criteria:(id)criteria activityBlock:(id)block;
- (void)unregisterXPCActivityWithActivityIdentifier:(id)identifier;
@end

@implementation HMMXPCActivityInterface

- (void)unregisterXPCActivityWithActivityIdentifier:(id)identifier
{
  uTF8String = [identifier UTF8String];

  xpc_activity_unregister(uTF8String);
}

- (id)criteriaForXPCActivity:(id)activity
{
  v3 = xpc_activity_copy_criteria(activity);

  return v3;
}

- (void)registerXPCActivityWithActivityIdentifier:(id)identifier criteria:(id)criteria activityBlock:(id)block
{
  identifierCopy = identifier;
  blockCopy = block;
  criteria = criteria;
  xpc_activity_register([identifier UTF8String], criteria, blockCopy);
}

@end