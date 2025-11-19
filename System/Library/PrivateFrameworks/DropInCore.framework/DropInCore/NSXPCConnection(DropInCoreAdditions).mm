@interface NSXPCConnection(DropInCoreAdditions)
- (id)bundleIdentifier;
@end

@implementation NSXPCConnection(DropInCoreAdditions)

- (id)bundleIdentifier
{
  v3 = 0;
  [a1 auditToken];
  if (CPCopyBundleIdentifierAndTeamFromAuditToken())
  {
    v1 = v3;
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

@end