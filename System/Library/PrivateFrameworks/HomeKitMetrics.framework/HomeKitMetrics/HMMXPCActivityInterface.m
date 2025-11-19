@interface HMMXPCActivityInterface
- (id)criteriaForXPCActivity:(id)a3;
- (void)registerXPCActivityWithActivityIdentifier:(id)a3 criteria:(id)a4 activityBlock:(id)a5;
- (void)unregisterXPCActivityWithActivityIdentifier:(id)a3;
@end

@implementation HMMXPCActivityInterface

- (void)unregisterXPCActivityWithActivityIdentifier:(id)a3
{
  v3 = [a3 UTF8String];

  xpc_activity_unregister(v3);
}

- (id)criteriaForXPCActivity:(id)a3
{
  v3 = xpc_activity_copy_criteria(a3);

  return v3;
}

- (void)registerXPCActivityWithActivityIdentifier:(id)a3 criteria:(id)a4 activityBlock:(id)a5
{
  v8 = a3;
  v9 = a5;
  criteria = a4;
  xpc_activity_register([a3 UTF8String], criteria, v9);
}

@end