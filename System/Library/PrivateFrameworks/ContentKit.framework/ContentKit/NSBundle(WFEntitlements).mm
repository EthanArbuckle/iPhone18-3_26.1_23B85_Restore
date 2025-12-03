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
  wf_entitlements = [self wf_entitlements];
  v2 = [wf_entitlements objectForKey:@"keychain-access-groups"];

  return v2;
}

- (id)wf_applicationGroups
{
  wf_entitlements = [self wf_entitlements];
  v2 = [wf_entitlements objectForKey:@"com.apple.security.application-groups"];

  return v2;
}

- (id)wf_apsEnvironment
{
  wf_entitlements = [self wf_entitlements];
  v2 = [wf_entitlements objectForKey:@"aps-environment"];

  return v2;
}

- (id)wf_teamIdentifier
{
  wf_entitlements = [self wf_entitlements];
  v2 = [wf_entitlements objectForKey:@"com.apple.developer.team-identifier"];

  return v2;
}

- (id)wf_entitlements
{
  v2 = objc_getAssociatedObject(self, sel_wf_entitlements);
  if (!v2)
  {
    executablePath = [self executablePath];
    v2 = WFEntitlementsForExecutableAtPath(executablePath);

    objc_setAssociatedObject(self, sel_wf_entitlements, v2, 1);
  }

  return v2;
}

@end