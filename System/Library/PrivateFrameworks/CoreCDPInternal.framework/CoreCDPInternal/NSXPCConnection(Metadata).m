@interface NSXPCConnection(Metadata)
- (__CFString)processName;
- (id)bundleID;
- (void)bundleID;
@end

@implementation NSXPCConnection(Metadata)

- (__CFString)processName
{
  v7 = *MEMORY[0x277D85DE8];
  v5 = 648;
  memset(v6, 0, 512);
  dword_28134D0CC = [a1 processIdentifier];
  v1 = sysctl(processName_name, 4u, v6, &v5, 0, 0);
  v2 = @"unknown";
  if (!v1 && BYTE3(v6[15]))
  {
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:&v6[15] + 3];
  }

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)bundleID
{
  v14 = *MEMORY[0x277D85DE8];
  [a1 auditToken];
  v2 = SecTaskCreateWithAuditToken(0, &token);
  if (v2)
  {
    v3 = v2;
    error = 0;
    v4 = SecTaskCopySigningIdentifier(v2, &error);
    v5 = v4;
    if (error)
    {
      v6 = _CDPLogSystem();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        token.val[0] = 138412802;
        *&token.val[1] = a1;
        LOWORD(token.val[3]) = 2112;
        *(&token.val[3] + 2) = v3;
        HIWORD(token.val[5]) = 2112;
        *&token.val[6] = error;
        _os_log_error_impl(&dword_24510B000, v6, OS_LOG_TYPE_ERROR, "%@: Failed to copy signing ID from task (%@) with error (%@)", &token, 0x20u);
      }

      CFRelease(error);
      if (!v5)
      {
        goto LABEL_15;
      }

      CFRelease(v5);
    }

    else
    {
      if (v4)
      {
LABEL_15:
        CFRelease(v3);
        goto LABEL_16;
      }

      v8 = _CDPLogSystem();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(NSXPCConnection(Metadata) *)a1 bundleID];
      }
    }

    v5 = 0;
    goto LABEL_15;
  }

  v7 = _CDPLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [(NSXPCConnection(Metadata) *)a1 bundleID];
  }

  v5 = 0;
LABEL_16:
  if (![v5 length])
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"UNKNOWN-%0000x", arc4random_uniform(0xFFFFu)];

    v5 = v9;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)bundleID
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_24510B000, a2, OS_LOG_TYPE_ERROR, "%@: Failed to allocate security task (using framework-provided identifier)", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end