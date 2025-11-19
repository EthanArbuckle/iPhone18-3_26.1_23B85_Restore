@interface DMClientInvocation
- (BOOL)isProgressHost;
- (int)pid;
@end

@implementation DMClientInvocation

- (BOOL)isProgressHost
{
  v3 = [(DMClientInvocation *)self connection];

  if (v3)
  {
    v14 = 0u;
    v15 = 0u;
    v4 = [(DMClientInvocation *)self connection];
    xpc_connection_get_audit_token();

    memset(&token, 0, sizeof(token));
    v5 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &token);
    v6 = v5;
    if (v5)
    {
      v7 = SecTaskCopySigningIdentifier(v5, 0);
      v8 = [NSNumber numberWithInt:[(DMClientInvocation *)self pid]];
      v9 = v8;
      if (v7)
      {
        v12 = v8;
        _DMLogFunc();

        v10 = [v7 isEqualToString:{@"com.apple.backboardd", v12, v7}];
LABEL_9:

        return v10;
      }

      _DMLogFunc();
    }

    else
    {
      v7 = [NSNumber numberWithInt:[(DMClientInvocation *)self pid]];
      _DMLogFunc();
    }

    v10 = 0;
    goto LABEL_9;
  }

  return 0;
}

- (int)pid
{
  v3 = [(DMClientInvocation *)self connection];

  if (!v3)
  {
    return 0;
  }

  v4 = [(DMClientInvocation *)self connection];
  pid = xpc_connection_get_pid(v4);

  return pid;
}

@end