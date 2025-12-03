@interface NSMutableURLRequest(iTunes)
- (void)fam_addiTunesHeadersWithAccount:()iTunes;
@end

@implementation NSMutableURLRequest(iTunes)

- (void)fam_addiTunesHeadersWithAccount:()iTunes
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    ams_DSID = [v4 ams_DSID];
    v7 = ams_DSID;
    if (ams_DSID)
    {
      stringValue = [ams_DSID stringValue];
      [self setValue:stringValue forHTTPHeaderField:@"X-iTunes-DSID"];
    }

    ams_cookies = [v5 ams_cookies];
    v10 = [MEMORY[0x1E696AC58] requestHeaderFieldsWithCookies:ams_cookies];
    if (v10)
    {
      v19 = 0;
      v11 = [MEMORY[0x1E696AE40] dataWithPropertyList:v10 format:100 options:0 error:&v19];
      v12 = v19;
      if (v11)
      {
        v13 = [v11 base64EncodedStringWithOptions:0];
        if (v13)
        {
          [self setValue:v13 forHTTPHeaderField:@"X-iTunes-LoggedIn-Data"];
        }
      }

      else
      {
        v13 = _FALogSystem();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v21 = v12;
          v22 = 2112;
          v23 = v10;
          _os_log_impl(&dword_1B70B0000, v13, OS_LOG_TYPE_DEFAULT, "Couldn't serialize iTunes cookies with error: %@, cookies: %@", buf, 0x16u);
        }
      }
    }

    username = [v5 username];
    if (username)
    {
      [self setValue:username forHTTPHeaderField:@"X-iTunes-AppleId"];
    }

    v15 = MEMORY[0x1E698CBB8];
    currentProcess = [MEMORY[0x1E698CAC8] currentProcess];
    v17 = [v15 userAgentForProcessInfo:currentProcess];
    [self setValue:v17 forHTTPHeaderField:@"X-iTunes-User-Agent"];
  }

  v18 = *MEMORY[0x1E69E9840];
}

@end