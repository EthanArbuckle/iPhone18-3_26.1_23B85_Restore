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
    v6 = [v4 ams_DSID];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 stringValue];
      [a1 setValue:v8 forHTTPHeaderField:@"X-iTunes-DSID"];
    }

    v9 = [v5 ams_cookies];
    v10 = [MEMORY[0x1E696AC58] requestHeaderFieldsWithCookies:v9];
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
          [a1 setValue:v13 forHTTPHeaderField:@"X-iTunes-LoggedIn-Data"];
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

    v14 = [v5 username];
    if (v14)
    {
      [a1 setValue:v14 forHTTPHeaderField:@"X-iTunes-AppleId"];
    }

    v15 = MEMORY[0x1E698CBB8];
    v16 = [MEMORY[0x1E698CAC8] currentProcess];
    v17 = [v15 userAgentForProcessInfo:v16];
    [a1 setValue:v17 forHTTPHeaderField:@"X-iTunes-User-Agent"];
  }

  v18 = *MEMORY[0x1E69E9840];
}

@end