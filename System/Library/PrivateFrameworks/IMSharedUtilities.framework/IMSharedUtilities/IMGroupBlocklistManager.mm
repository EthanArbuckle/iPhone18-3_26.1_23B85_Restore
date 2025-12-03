@interface IMGroupBlocklistManager
+ (id)groupsBlocklistFilename;
+ (id)sharedInstance;
- (BOOL)hasFileChanged;
- (BOOL)isFeatureDisabled;
- (BOOL)isGroupInBlocklist:(id)blocklist;
- (IMGroupBlocklistManager)init;
- (id)initFromFile:(id)file;
- (void)_updateLastModifiedDate:(id)date;
- (void)blocklistGroupId:(id)id;
- (void)loadData;
- (void)loadFromFile:(id)file;
- (void)reloadIfNeeded;
- (void)save;
@end

@implementation IMGroupBlocklistManager

+ (id)groupsBlocklistFilename
{
  v2 = IMSystemRootDirectory();
  stringByExpandingTildeInPath = [qword_1EB301F70 stringByExpandingTildeInPath];
  v4 = [v2 stringByAppendingPathComponent:stringByExpandingTildeInPath];
  v5 = [v4 stringByAppendingPathComponent:@"/com.apple.messages.group-blacklist.plist"];

  return v5;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A86FCE00;
  block[3] = &unk_1E7826200;
  block[4] = self;
  if (qword_1ED8CA2F8 != -1)
  {
    dispatch_once(&qword_1ED8CA2F8, block);
  }

  v2 = qword_1EB30B830;

  return v2;
}

- (IMGroupBlocklistManager)init
{
  v7.receiver = self;
  v7.super_class = IMGroupBlocklistManager;
  v2 = [(IMGroupBlocklistManager *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = qword_1EB338DC8;
    qword_1EB338DC8 = v3;

    v5 = v2;
  }

  return v2;
}

- (id)initFromFile:(id)file
{
  fileCopy = file;
  v9.receiver = self;
  v9.super_class = IMGroupBlocklistManager;
  v5 = [(IMGroupBlocklistManager *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(IMGroupBlocklistManager *)v5 loadFromFile:fileCopy];
    v7 = v6;
  }

  return v6;
}

- (BOOL)hasFileChanged
{
  lastModifiedDate = [(IMGroupBlocklistManager *)self lastModifiedDate];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v5 = +[IMGroupBlocklistManager groupsBlocklistFilename];
  if (lastModifiedDate)
  {
    v13 = 0;
    v6 = [defaultManager attributesOfItemAtPath:v5 error:&v13];
    v7 = v13;
    v8 = [v6 objectForKey:*MEMORY[0x1E696A350]];

    v9 = 0;
    if (!v7)
    {
      if (v8)
      {
        lastModifiedDate2 = [(IMGroupBlocklistManager *)self lastModifiedDate];
        v9 = [lastModifiedDate2 compare:v8] != 0;
      }
    }

    return v9;
  }

  else
  {
    v12 = [defaultManager fileExistsAtPath:v5];

    return v12;
  }
}

- (void)blocklistGroupId:(id)id
{
  v13 = *MEMORY[0x1E69E9840];
  idCopy = id;
  if (![(IMGroupBlocklistManager *)self isFeatureDisabled])
  {
    [(IMGroupBlocklistManager *)self reloadIfNeeded];
    v5 = [qword_1EB338DC8 objectForKey:idCopy];

    v6 = IMOSLoggingEnabled();
    if (v5)
    {
      if (v6)
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v11 = 138412290;
          v12 = idCopy;
          _os_log_impl(&dword_1A85E5000, v7, OS_LOG_TYPE_INFO, "Already blocklisted groupId: %@", &v11, 0xCu);
        }
      }
    }

    else
    {
      if (v6)
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v11 = 138412290;
          v12 = idCopy;
          _os_log_impl(&dword_1A85E5000, v8, OS_LOG_TYPE_INFO, "Blocklisting groupId: %@", &v11, 0xCu);
        }
      }

      v9 = qword_1EB338DC8;
      date = [MEMORY[0x1E695DF00] date];
      [v9 setValue:date forKey:idCopy];

      [(IMGroupBlocklistManager *)self save];
    }
  }
}

- (BOOL)isGroupInBlocklist:(id)blocklist
{
  blocklistCopy = blocklist;
  if ([(IMGroupBlocklistManager *)self isFeatureDisabled])
  {
    v5 = 0;
  }

  else
  {
    [(IMGroupBlocklistManager *)self reloadIfNeeded];
    v6 = [qword_1EB338DC8 objectForKey:blocklistCopy];
    v5 = v6 != 0;
  }

  return v5;
}

- (BOOL)isFeatureDisabled
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"md-group-blacklist-disable"];

  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&dword_1A85E5000, v4, OS_LOG_TYPE_INFO, "Checking if feature is disabled by bag key: %@", &v7, 0xCu);
    }
  }

  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)save
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = +[IMGroupBlocklistManager groupsBlocklistFilename];
  v4 = qword_1EB338DC8;
  v5 = MEMORY[0x1E695DFF8];
  v6 = [@"file://" stringByAppendingString:v3];
  v7 = [v5 URLWithString:v6];
  v12 = 0;
  [v4 writeToURL:v7 error:&v12];
  v8 = v12;

  v9 = IMOSLoggingEnabled();
  if (v8)
  {
    if (v9)
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v14 = v3;
        v15 = 2112;
        v16 = v8;
        _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "Failed to save to %@: Error: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    if (v9)
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v14 = v3;
        _os_log_impl(&dword_1A85E5000, v11, OS_LOG_TYPE_INFO, "Saved to %@", buf, 0xCu);
      }
    }

    [(IMGroupBlocklistManager *)self _updateLastModifiedDate:v3];
  }
}

- (void)loadData
{
  v3 = +[IMGroupBlocklistManager groupsBlocklistFilename];
  [(IMGroupBlocklistManager *)self loadFromFile:v3];
}

- (void)loadFromFile:(id)file
{
  v22 = *MEMORY[0x1E69E9840];
  fileCopy = file;
  v5 = objc_alloc(MEMORY[0x1E695DF90]);
  v6 = MEMORY[0x1E695DFF8];
  v7 = [@"file://" stringByAppendingString:fileCopy];
  v8 = [v6 URLWithString:v7];
  v17 = 0;
  v9 = [v5 initWithContentsOfURL:v8 error:&v17];
  v10 = v17;
  v11 = qword_1EB338DC8;
  qword_1EB338DC8 = v9;

  LOBYTE(v7) = qword_1EB338DC8 == 0;
  v12 = IMOSLoggingEnabled();
  if (v7)
  {
    if (v12)
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v19 = fileCopy;
        v20 = 2112;
        v21 = v10;
        _os_log_impl(&dword_1A85E5000, v14, OS_LOG_TYPE_INFO, "Failed to load blocklist from file(%@). Error: %@", buf, 0x16u);
      }
    }

    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v16 = qword_1EB338DC8;
    qword_1EB338DC8 = v15;
  }

  else
  {
    if (v12)
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v19 = fileCopy;
        v20 = 2112;
        v21 = qword_1EB338DC8;
        _os_log_impl(&dword_1A85E5000, v13, OS_LOG_TYPE_INFO, "Loaded blocklist from file(%@) %@.", buf, 0x16u);
      }
    }

    [(IMGroupBlocklistManager *)self _updateLastModifiedDate:fileCopy];
  }
}

- (void)_updateLastModifiedDate:(id)date
{
  v21 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v14 = 0;
  v6 = [defaultManager attributesOfItemAtPath:dateCopy error:&v14];
  v7 = v14;
  v8 = [v6 objectForKey:*MEMORY[0x1E696A350]];

  if (v7)
  {
    date = [MEMORY[0x1E695DF00] date];
    [(IMGroupBlocklistManager *)self setLastModifiedDate:date];

    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        lastModifiedDate = self->_lastModifiedDate;
        *buf = 138412802;
        v16 = dateCopy;
        v17 = 2112;
        v18 = v7;
        v19 = 2112;
        v20 = lastModifiedDate;
        _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "Failed to get date of last update from file(%@): %@. Set to %@.", buf, 0x20u);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = self->_lastModifiedDate;
        *buf = 138412802;
        v16 = v8;
        v17 = 2112;
        v18 = v13;
        v19 = 2112;
        v20 = dateCopy;
        _os_log_impl(&dword_1A85E5000, v12, OS_LOG_TYPE_INFO, "Setting lastModifiedDate to %@ from %@ file(%@).", buf, 0x20u);
      }
    }

    [(IMGroupBlocklistManager *)self setLastModifiedDate:v8];
  }
}

- (void)reloadIfNeeded
{
  if ([(IMGroupBlocklistManager *)self hasFileChanged])
  {

    MEMORY[0x1EEE66B58](self, sel_loadData);
  }
}

@end