@interface ICDataStoreServerRequestHandlingPolicy
- (BOOL)shouldAcceptConnectionsFromClientWithContext:(id)context;
@end

@implementation ICDataStoreServerRequestHandlingPolicy

- (BOOL)shouldAcceptConnectionsFromClientWithContext:(id)context
{
  contextCopy = context;
  entitlements = [contextCopy entitlements];
  v5 = [entitlements objectForKeyedSubscript:@"com.apple.security.application-groups"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = ICGroupContainerIdentifier();
    v7 = [v5 isEqualToString:v6];

    if (v7)
    {
      goto LABEL_5;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (ICGroupContainerIdentifier(), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v5 containsObject:v8], v8, (v9))
  {
LABEL_5:
    v10 = 1;
  }

  else
  {
    v11 = +[ICPaths persistentStoreURL];
    path = [v11 path];
    [path fileSystemRepresentation];

    if (contextCopy)
    {
      [contextCopy auditToken];
    }

    v10 = sandbox_check_by_audit_token() == 0;
  }

  return v10;
}

@end