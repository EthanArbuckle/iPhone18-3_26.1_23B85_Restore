@interface ICDataStoreServerRequestHandlingPolicy
- (BOOL)shouldAcceptConnectionsFromClientWithContext:(id)a3;
@end

@implementation ICDataStoreServerRequestHandlingPolicy

- (BOOL)shouldAcceptConnectionsFromClientWithContext:(id)a3
{
  v3 = a3;
  v4 = [v3 entitlements];
  v5 = [v4 objectForKeyedSubscript:@"com.apple.security.application-groups"];

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
    v12 = [v11 path];
    [v12 fileSystemRepresentation];

    if (v3)
    {
      [v3 auditToken];
    }

    v10 = sandbox_check_by_audit_token() == 0;
  }

  return v10;
}

@end