@interface FSFUtils
+ (BOOL)isSupportedUser;
+ (BOOL)isUnderLegalRestriction;
+ (id)availableStreams;
+ (id)biomeStoreConfig;
+ (id)getBaseLocalPath;
+ (id)getDataFromBase64EncodedStr:(id)a3;
+ (id)getStreamPath;
+ (id)getStreamURL;
+ (unint64_t)biomeMaxStreamSizeInBytes;
+ (void)getBaseLocalPath;
@end

@implementation FSFUtils

+ (BOOL)isSupportedUser
{
  v2 = NSUserName();
  v3 = [v2 isEqualToString:@"mobile"];

  return v3;
}

+ (BOOL)isUnderLegalRestriction
{
  if (+[FSFDeviceInfo isRunningOnInternalBuild])
  {
    return 0;
  }

  if (!+[FSFSiriPreferenceUtil isOptedIn])
  {
    v2 = 1;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      return v2;
    }

    *buf = 0;
    v5 = MEMORY[0x277D86220];
    v6 = "It is not opted in.";
    v7 = buf;
    goto LABEL_9;
  }

  v3 = +[FSFCallKitUtil sharedInstance];
  v4 = [v3 isOnCall];

  if (v4)
  {
    v2 = 1;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      return v2;
    }

    v9 = 0;
    v5 = MEMORY[0x277D86220];
    v6 = "It is on call.";
    v7 = &v9;
LABEL_9:
    _os_log_impl(&dword_223066000, v5, OS_LOG_TYPE_INFO, v6, v7, 2u);
    return v2;
  }

  return 0;
}

+ (id)getDataFromBase64EncodedStr:(id)a3
{
  v3 = MEMORY[0x277CBEA90];
  v4 = a3;
  v5 = [[v3 alloc] initWithBase64EncodedString:v4 options:0];

  return v5;
}

+ (id)getBaseLocalPath
{
  v7 = *MEMORY[0x277D85DE8];
  if (+[FSFUtils isPlatformiOS](FSFUtils, "isPlatformiOS") || +[FSFUtils isPlatformWatchOS](FSFUtils, "isPlatformWatchOS") || +[FSFUtils isPlatformtvOS])
  {
    v2 = @"/private/var/mobile/Library/Logs/com.apple.FeatureStore/";
  }

  else if (+[FSFUtils isEnabledOnMacOS](FSFUtils, "isEnabledOnMacOS") && +[FSFUtils isPlatformMacOS])
  {
    geteuid();
    bzero(v6, 0x400uLL);
    if (__user_local_dirname())
    {
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6];
    }

    else
    {
      v5 = NSHomeDirectory();
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        +[(FSFUtils *)v5];
      }
    }

    v2 = [v5 stringByAppendingString:@"com.apple.FeatureStore/"];
  }

  else
  {
    v2 = 0;
  }

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)getStreamPath
{
  v2 = +[FSFUtils getBaseLocalPath];
  v3 = [v2 stringByAppendingString:@"biomeStream/"];

  return v3;
}

+ (id)getStreamURL
{
  v2 = MEMORY[0x277CBEBC0];
  v3 = +[FSFUtils getStreamPath];
  v4 = [v2 fileURLWithPath:v3];

  return v4;
}

+ (id)availableStreams
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [a1 getStreamPath];
  v11 = 0;
  v5 = [v3 contentsOfDirectoryAtPath:v4 error:&v11];
  v6 = v11;

  if (v6 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = [a1 getStreamPath];
    v8 = [v6 debugDescription];
    *buf = 138412546;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_223066000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cannot get contents of stream path: %@ error: %@", buf, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (unint64_t)biomeMaxStreamSizeInBytes
{
  if (!os_variant_allows_internal_security_policies())
  {
    return 52428800;
  }

  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 objectForKey:@"FeatureStoreMaxStreamSizeInMB"];

  if (!v3)
  {
    return 52428800;
  }

  v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v5 = [v4 integerForKey:@"FeatureStoreMaxStreamSizeInMB"];

  return v5 << 20;
}

+ (id)biomeStoreConfig
{
  v3 = MEMORY[0x277CF17F8];
  v4 = [a1 getStreamPath];
  v5 = [v3 newPrivateStreamDefaultConfigurationWithStoreBasePath:v4];

  v6 = [objc_alloc(MEMORY[0x277CF17E8]) initPruneOnAccess:1 filterByAgeOnRead:1 maxAge:objc_msgSend(a1 maxStreamSize:{"biomeMaxStreamSizeInBytes"), 1209600.0}];
  [v5 setPruningPolicy:v6];

  return v5;
}

+ (void)getBaseLocalPath
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_223066000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Could not get user dir. Returning %@", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end