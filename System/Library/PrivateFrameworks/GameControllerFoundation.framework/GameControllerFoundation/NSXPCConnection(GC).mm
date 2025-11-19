@interface NSXPCConnection(GC)
- (__SecTask)gc_peerTeamIdentifier;
- (id)gc_peerBundleIdentifier;
@end

@implementation NSXPCConnection(GC)

- (id)gc_peerBundleIdentifier
{
  v14 = *MEMORY[0x1E69E9840];
  [a1 auditToken];
  token = v12;
  v1 = SecTaskCreateWithAuditToken(0, &token);
  if (!v1 || (v2 = SecTaskCopyValueForEntitlement(v1, @"application-identifier", 0)) == 0 || (v3 = v2, *token.val = 0, CopyBundleIdentifierAndTeamFromApplicationIdentifier(v2, &token, 0), CFRelease(v3), (v4 = *token.val) == 0))
  {
    v5 = proc_pidpath_audittoken(&v12, &token, 0x1000u);
    if (v5 >= 1)
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:&token length:v5 encoding:4];
      v7 = [MEMORY[0x1E695DFF8] fileURLWithPath:v6];
      if (v7)
      {
        v8 = _CFBundleCopyBundleURLForExecutableURL();
        if (v8)
        {
          v9 = [MEMORY[0x1E696AAE8] bundleWithURL:v8];
          v4 = [v9 bundleIdentifier];

          if (v4)
          {

            goto LABEL_12;
          }
        }
      }
    }

    v4 = 0;
  }

LABEL_12:
  v10 = *MEMORY[0x1E69E9840];

  return v4;
}

- (__SecTask)gc_peerTeamIdentifier
{
  memset(&v5[1], 0, sizeof(audit_token_t));
  [a1 auditToken];
  v5[0] = v5[1];
  v1 = SecTaskCreateWithAuditToken(0, v5);
  if (v1)
  {
    v2 = SecTaskCopyValueForEntitlement(v1, @"application-identifier", 0);
    if (!v2 || (v3 = v2, *v5[0].val = 0, CopyBundleIdentifierAndTeamFromApplicationIdentifier(v2, 0, v5), CFRelease(v3), (v1 = *v5[0].val) == 0))
    {
      v1 = 0;
    }
  }

  return v1;
}

@end