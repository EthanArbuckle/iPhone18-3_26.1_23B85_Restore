@interface NSXPCConnection(SGDXPCConnectionUtilities)
- (id)sgd_clientName;
@end

@implementation NSXPCConnection(SGDXPCConnectionUtilities)

- (id)sgd_clientName
{
  v22 = *MEMORY[0x277D85DE8];
  [a1 auditToken];
  v2 = SecTaskCreateWithAuditToken(0, &token);
  if (!v2 || (v3 = v2, v4 = SecTaskCopyValueForEntitlement(v2, @"application-identifier", 0), CFRelease(v3), !v4))
  {
    v20 = 0u;
    memset(v21, 0, sizeof(v21));
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v9 = 0u;
    memset(&token, 0, sizeof(token));
    if (proc_name([a1 processIdentifier], &token, 0xFFu) <= 0 || (objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", &token), (v5 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%d", objc_msgSend(a1, "processIdentifier")];
    }

    v4 = v5;
  }

  v6 = *MEMORY[0x277D85DE8];

  return v4;
}

@end