@interface NSMutableURLRequest(CDP)
- (void)cdp_addAuthHeaderWithContext:()CDP;
- (void)cdp_addClientInfoHeader;
@end

@implementation NSMutableURLRequest(CDP)

- (void)cdp_addAuthHeaderWithContext:()CDP
{
  v4 = a3;
  appleID = [v4 appleID];

  if (appleID)
  {
    passwordEquivToken = [v4 passwordEquivToken];
    if (passwordEquivToken)
    {
      v7 = MEMORY[0x277CCACA8];
      appleID2 = [v4 appleID];
      v9 = [v7 stringWithFormat:@"%@:%@", appleID2, passwordEquivToken];
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

    [self setValue:v10 forHTTPHeaderField:@"X-Apple-Account-Recovery"];
    if (v9)
    {
      aaf_toBase64EncodedString = [v9 aaf_toBase64EncodedString];
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Basic %@", aaf_toBase64EncodedString];
      [self setValue:v12 forHTTPHeaderField:@"Authorization"];
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
  currentDevice = [MEMORY[0x277CF0218] currentDevice];
  serverFriendlyDescription = [currentDevice serverFriendlyDescription];

  v3 = serverFriendlyDescription;
  if (serverFriendlyDescription)
  {
    [self setValue:serverFriendlyDescription forHTTPHeaderField:@"X-MMe-Client-Info"];
    v3 = serverFriendlyDescription;
  }
}

@end