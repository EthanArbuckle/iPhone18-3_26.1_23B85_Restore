@interface RTXPC
+ (id)executablePathOfConnection:(id)connection;
+ (id)signingIdentifierOfConnection:(id)connection;
@end

@implementation RTXPC

+ (id)executablePathOfConnection:(id)connection
{
  bzero(buffer, 0x1000uLL);
  if (proc_pidpath([connection processIdentifier], buffer, 0x1000u) < 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = [NSString stringWithUTF8String:buffer];
  }

  return v4;
}

+ (id)signingIdentifierOfConnection:(id)connection
{
  connectionCopy = connection;
  v4 = connectionCopy;
  if (connectionCopy)
  {
    [connectionCopy auditToken];
  }

  else
  {
    memset(&v9, 0, sizeof(v9));
  }

  v5 = SecTaskCreateWithAuditToken(0, &v9);
  if (v5)
  {
    v6 = v5;
    v7 = SecTaskCopySigningIdentifier(v5, 0);
    CFRelease(v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end