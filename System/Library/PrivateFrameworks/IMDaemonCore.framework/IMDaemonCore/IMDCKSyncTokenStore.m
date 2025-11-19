@interface IMDCKSyncTokenStore
+ (id)tokenForKey:(id)a3;
+ (void)migrateKey:(id)a3 fromDatabase:(id)a4;
+ (void)persistToken:(id)a3 forKey:(id)a4;
- (id)tokenForKey:(id)a3;
- (void)migrateKey:(id)a3 fromDatabase:(id)a4;
- (void)persistToken:(id)a3 forKey:(id)a4;
@end

@implementation IMDCKSyncTokenStore

- (void)migrateKey:(id)a3 fromDatabase:(id)a4
{
  v5 = a4;
  v6 = a3;
  [objc_opt_class() migrateKey:v6 fromDatabase:v5];
}

- (id)tokenForKey:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() tokenForKey:v3];

  return v4;
}

- (void)persistToken:(id)a3 forKey:(id)a4
{
  v5 = a4;
  v6 = a3;
  [objc_opt_class() persistToken:v6 forKey:v5];
}

+ (void)migrateKey:(id)a3 fromDatabase:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-syncStoreVersion", v5];
  if (!IMGetAppIntForKey())
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v18 = v5;
        v19 = 2112;
        v20 = v6;
        v21 = 2048;
        v22 = 0;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Migrating sync token {key: %@, db: %@, version: %ld}", buf, 0x20u);
      }
    }

    v9 = objc_alloc(MEMORY[0x277D18AD0]);
    v10 = [v6 stringByExpandingTildeInPath];
    v11 = [v9 initWithPath:v10 storeName:@"IMDCKChatSyncController" dataProtectionClass:0];

    v12 = [v11 dataForKey:v5 error:0];
    v13 = IMOSLoggingEnabled();
    if (v12)
    {
      if (v13)
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v18 = v5;
          _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Found token data, saving to sms.db {key: %@}", buf, 0xCu);
        }
      }

      IMDKVPersistValueForKey();
    }

    else if (v13)
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v18 = v5;
        _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "No token data found {key: %@}", buf, 0xCu);
      }
    }

    [v11 deleteDatabase];
    IMSetAppValueForKey();
  }

  v16 = *MEMORY[0x277D85DE8];
}

+ (id)tokenForKey:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = IMDKVValueForKey();
  if ([v4 length])
  {
    v11 = 0;
    v5 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v4 error:&v11];
    v6 = v11;
    v7 = [objc_alloc(MEMORY[0x277CBC670]) initWithCoder:v5];
    if (v6 && IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v13 = v6;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Failed to unarchive ckserver change token. Error: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (void)persistToken:(id)a3 forKey:(id)a4
{
  v9 = a3;
  if (v9)
  {
    v5 = MEMORY[0x277CCAAB0];
    v6 = a4;
    v7 = [[v5 alloc] initRequiringSecureCoding:1];
    [v9 encodeWithCoder:v7];
    v8 = [v7 encodedData];
    IMDKVPersistValueForKey();
  }

  else
  {
    v7 = a4;
    IMDKVPersistValueForKey();
  }
}

@end