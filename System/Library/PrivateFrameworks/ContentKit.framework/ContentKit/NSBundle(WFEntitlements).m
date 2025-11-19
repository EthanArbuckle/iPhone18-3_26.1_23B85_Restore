@interface NSBundle(WFEntitlements)
- (id)wf_applicationGroups;
- (id)wf_apsEnvironment;
- (id)wf_entitlements;
- (id)wf_keychainAccessGroups;
- (id)wf_teamIdentifier;
@end

@implementation NSBundle(WFEntitlements)

- (id)wf_keychainAccessGroups
{
  v1 = [a1 wf_entitlements];
  v2 = [v1 objectForKey:@"keychain-access-groups"];

  return v2;
}

- (id)wf_applicationGroups
{
  v1 = [a1 wf_entitlements];
  v2 = [v1 objectForKey:@"com.apple.security.application-groups"];

  return v2;
}

- (id)wf_apsEnvironment
{
  v1 = [a1 wf_entitlements];
  v2 = [v1 objectForKey:@"aps-environment"];

  return v2;
}

- (id)wf_teamIdentifier
{
  v1 = [a1 wf_entitlements];
  v2 = [v1 objectForKey:@"com.apple.developer.team-identifier"];

  return v2;
}

- (id)wf_entitlements
{
  v2 = objc_getAssociatedObject(a1, sel_wf_entitlements);
  if (!v2)
  {
    v3 = [a1 executablePath];
    v2 = WFEntitlementsForExecutableAtPath(v3);

    objc_setAssociatedObject(a1, sel_wf_entitlements, v2, 1);
  }

  return v2;
}

@end