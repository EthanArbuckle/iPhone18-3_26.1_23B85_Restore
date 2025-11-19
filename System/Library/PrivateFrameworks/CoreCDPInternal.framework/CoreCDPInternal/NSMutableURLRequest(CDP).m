@interface NSMutableURLRequest(CDP)
- (void)cdp_addAuthHeaderWithContext:()CDP;
- (void)cdp_addClientInfoHeader;
@end

@implementation NSMutableURLRequest(CDP)

- (void)cdp_addAuthHeaderWithContext:()CDP
{
  v4 = a3;
  v5 = [v4 appleID];

  if (v5)
  {
    v6 = [v4 passwordEquivToken];
    if (v6)
    {
      v7 = MEMORY[0x277CCACA8];
      v8 = [v4 appleID];
      v9 = [v7 stringWithFormat:@"%@:%@", v8, v6];
    }

    else
    {
      v9 = 0;
    }

    if ([v4 idmsRecovery])
    {
      v10 = @"true";
    }

    else
    {
      v10 = @"false";
    }

    [a1 setValue:v10 forHTTPHeaderField:@"X-Apple-Account-Recovery"];
    if (v9)
    {
      v11 = [v9 aaf_toBase64EncodedString];
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Basic %@", v11];
      [a1 setValue:v12 forHTTPHeaderField:@"Authorization"];
    }

    else
    {
      v13 = _CDPLogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [NSMutableURLRequest(CDP) cdp_addAuthHeaderWithContext:v13];
      }
    }
  }
}

- (void)cdp_addClientInfoHeader
{
  v2 = [MEMORY[0x277CF0218] currentDevice];
  v4 = [v2 serverFriendlyDescription];

  v3 = v4;
  if (v4)
  {
    [a1 setValue:v4 forHTTPHeaderField:@"X-MMe-Client-Info"];
    v3 = v4;
  }
}

@end