@interface IMDCKDatabaseManager
+ (IMDCKDatabaseManager)sharedInstance;
- (BOOL)_serverSaysToUseOldContainer;
- (CKContainer)truthContainer;
- (IMDCKDatabaseManager)init;
- (id)_nickNameContainer;
- (id)_nickNameContainerIdentifier;
- (id)manateeDataBase;
- (id)nickNamePublicDatabase;
- (id)truthDatabase;
- (id)truthPublicDatabase;
- (void)fetchCurrentUserForNicknameContainer:(id)a3;
@end

@implementation IMDCKDatabaseManager

- (CKContainer)truthContainer
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Using Manatee Container", v6, 2u);
    }
  }

  manateeContainer = self->_manateeContainer;

  return manateeContainer;
}

+ (IMDCKDatabaseManager)sharedInstance
{
  if (qword_281421178 != -1)
  {
    sub_22B7D6884();
  }

  v3 = qword_281420FF8;

  return v3;
}

- (IMDCKDatabaseManager)init
{
  v20 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = IMDCKDatabaseManager;
  v2 = [(IMDCKDatabaseManager *)&v17 init];
  if (v2 && (IMIsRunningInUnitTesting() & 1) == 0)
  {
    v3 = +[IMDCKUtilities sharedInstance];
    v4 = [v3 shouldUseDevContainer];

    v5 = IMOSLoggingEnabled();
    if (v4)
    {
      if (v5)
      {
        v6 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v19 = @"com.apple.messages.cloud";
          _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "**** Initializing dev container with ID %@", buf, 0xCu);
        }
      }

      v7 = 2;
    }

    else
    {
      if (v5)
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v19 = @"com.apple.messages.cloud";
          _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Initializing production container %@", buf, 0xCu);
        }
      }

      v7 = 1;
    }

    v9 = [objc_alloc(MEMORY[0x277CBC220]) initWithContainerIdentifier:@"com.apple.messages.cloud" environment:v7];
    v10 = objc_alloc_init(MEMORY[0x277CBC230]);
    [v10 setMmcsEncryptionSupport:2];
    [v10 setUseZoneWidePCS:1];
    v11 = [objc_alloc(MEMORY[0x277CBC218]) initWithContainerID:v9 options:v10];
    manateeContainer = v2->_manateeContainer;
    v2->_manateeContainer = v11;

    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = v2->_manateeContainer;
        *buf = 138412290;
        v19 = v14;
        _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Manatee container %@", buf, 0xCu);
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v2;
}

- (BOOL)_serverSaysToUseOldContainer
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"use-old-nickname-container"];
  v4 = [v3 unsignedIntegerValue] != 0;
  v5 = [MEMORY[0x277D1A990] sharedInstance];
  v6 = [v5 getBoolFromDomain:*MEMORY[0x277D1A3C0] forKey:@"UseOldProfilesContainer"];

  v7 = v6 | v4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
      v10 = v9;
      v11 = @"NO";
      v14 = 138412802;
      if (v7)
      {
        v11 = @"YES";
      }

      v15 = v11;
      v16 = 2112;
      v17 = v3;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Server says to use new container? %@ {serverbagValue: %@ version: %@}", &v14, 0x20u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v7 & 1;
}

- (id)_nickNameContainerIdentifier
{
  if ([(IMDCKDatabaseManager *)self _serverSaysToUseOldContainer])
  {
    return @"com.apple.internal.messages.memoji";
  }

  else
  {
    return @"com.apple.messages.profiles";
  }
}

- (id)_nickNameContainer
{
  v20 = *MEMORY[0x277D85DE8];
  nickNameContainer = self->_nickNameContainer;
  if (!nickNameContainer)
  {
    v4 = [(IMDCKDatabaseManager *)self _nickNameContainerIdentifier];
    v5 = +[IMDCKUtilities sharedInstance];
    v6 = [v5 shouldUseDevNickNameContainer];

    v7 = IMOSLoggingEnabled();
    if (v6)
    {
      if (v7)
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v18 = 138412290;
          v19 = v4;
          _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "**** Initializing dev nick name container with ID %@", &v18, 0xCu);
        }
      }

      v9 = 2;
    }

    else
    {
      if (v7)
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v18 = 138412290;
          v19 = v4;
          _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Initializing production container %@", &v18, 0xCu);
        }
      }

      v9 = 1;
    }

    v11 = [objc_alloc(MEMORY[0x277CBC220]) initWithContainerIdentifier:v4 environment:v9];
    v12 = objc_alloc_init(MEMORY[0x277CBC230]);
    [v12 setUseZoneWidePCS:1];
    v13 = [objc_alloc(MEMORY[0x277CBC218]) initWithContainerID:v11 options:v12];
    v15 = self->_nickNameContainer;
    p_nickNameContainer = &self->_nickNameContainer;
    *p_nickNameContainer = v13;

    nickNameContainer = *p_nickNameContainer;
  }

  v16 = *MEMORY[0x277D85DE8];

  return nickNameContainer;
}

- (id)truthDatabase
{
  v2 = [(IMDCKDatabaseManager *)self truthContainer];
  v3 = [v2 privateCloudDatabase];

  return v3;
}

- (id)truthPublicDatabase
{
  v2 = [(IMDCKDatabaseManager *)self truthContainer];
  v3 = [v2 publicCloudDatabase];

  return v3;
}

- (id)manateeDataBase
{
  v2 = [(IMDCKDatabaseManager *)self manateeContainer];
  v3 = [v2 privateCloudDatabase];

  return v3;
}

- (id)nickNamePublicDatabase
{
  if (IMSharedHelperNickNameEnabled())
  {
    v3 = [(IMDCKDatabaseManager *)self _nickNameContainer];
    v4 = [v3 publicCloudDatabase];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Nicknames NOT enabled, returning nil public database", v7, 2u);
      }
    }

    v4 = 0;
  }

  return v4;
}

- (void)fetchCurrentUserForNicknameContainer:(id)a3
{
  v4 = a3;
  v5 = [(IMDCKDatabaseManager *)self _nickNameContainer];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B61B180;
  v7[3] = &unk_278706678;
  v8 = v4;
  v6 = v4;
  [v5 fetchUserRecordIDWithCompletionHandler:v7];
}

@end