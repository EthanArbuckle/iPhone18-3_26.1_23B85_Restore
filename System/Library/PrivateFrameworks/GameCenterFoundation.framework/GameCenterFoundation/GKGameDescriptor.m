@interface GKGameDescriptor
+ (BOOL)supportsPlatform:(int64_t)a3;
+ (GKGameDescriptor)gameDescriptorWithBundleID:(id)a3 bundleVersion:(id)a4 shortBundleVersion:(id)a5 adamID:(id)a6;
+ (id)gamePlatformStringSetFromGamePlatformSet:(unsigned int)a3;
+ (id)secureCodedPropertyKeys;
+ (id)stringForPlatform:(int64_t)a3;
+ (int64_t)gamePlatformFromServerGameDescriptorString:(id)a3;
+ (int64_t)gamePlatformFromServerPushString:(id)a3;
+ (unsigned)gamePlatformSetForGamePlatformStrings:(id)a3;
+ (unsigned)gamePlatformSetFromGamePlatform:(int64_t)a3;
- (GKGameDescriptor)initWithDictionary:(id)a3;
- (GKGameDescriptor)initWithPushDictionary:(id)a3;
- (id)description;
- (id)dictionaryForRequest;
@end

@implementation GKGameDescriptor

+ (GKGameDescriptor)gameDescriptorWithBundleID:(id)a3 bundleVersion:(id)a4 shortBundleVersion:(id)a5 adamID:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = objc_alloc_init(GKGameDescriptor);
  [(GKGameDescriptor *)v14 setBundleIdentifier:v13];

  [(GKGameDescriptor *)v14 setBundleVersion:v12];
  [(GKGameDescriptor *)v14 setShortBundleVersion:v11];

  [(GKGameDescriptor *)v14 setAdamID:v10];
  -[GKGameDescriptor setPlatform:](v14, "setPlatform:", [a1 currentPlatform]);

  return v14;
}

+ (int64_t)gamePlatformFromServerGameDescriptorString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"ios"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"xros"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"macos"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"appletvos"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"watchos"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (int64_t)gamePlatformFromServerPushString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"i"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"r"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"m"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"t"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"w"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (unsigned)gamePlatformSetFromGamePlatform:(int64_t)a3
{
  if ((a3 - 1) > 4)
  {
    return 0;
  }

  else
  {
    return dword_227A9FE28[a3 - 1];
  }
}

+ (id)gamePlatformStringSetFromGamePlatformSet:(unsigned int)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v5 = v4;
  if ((v3 & 2) != 0)
  {
    [v4 addObject:@"ios"];
    if ((v3 & 4) == 0)
    {
LABEL_3:
      if ((v3 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((v3 & 4) == 0)
  {
    goto LABEL_3;
  }

  [v5 addObject:@"macos"];
  if ((v3 & 8) == 0)
  {
LABEL_4:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  [v5 addObject:@"appletvos"];
  if ((v3 & 0x10) == 0)
  {
LABEL_5:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  [v5 addObject:@"watchos"];
  if ((v3 & 0x20) != 0)
  {
LABEL_6:
    [v5 addObject:@"xros"];
  }

LABEL_7:

  return v5;
}

+ (unsigned)gamePlatformSetForGamePlatformStrings:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 length])
        {
          v6 |= [GKGameDescriptor gamePlatformSetFromGamePlatform:[GKGameDescriptor gamePlatformFromServerGameDescriptorString:v9]];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (BOOL)supportsPlatform:(int64_t)a3
{
  v4 = +[GKGameDescriptor supportedPlatforms];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v6 = [v4 containsObject:v5];

  return v6;
}

- (GKGameDescriptor)initWithDictionary:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = GKGameDescriptor;
  v5 = [(GKGameDescriptor *)&v19 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"bundle-id"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;

    v8 = [v4 objectForKeyedSubscript:@"bundle-version"];
    bundleVersion = v5->_bundleVersion;
    v5->_bundleVersion = v8;

    v10 = [v4 objectForKeyedSubscript:@"adam-id"];
    adamID = v5->_adamID;
    v5->_adamID = v10;

    v12 = [v4 objectForKeyedSubscript:@"external-version"];
    externalVersion = v5->_externalVersion;
    v5->_externalVersion = v12;

    v14 = [v4 objectForKeyedSubscript:@"short-bundle-version"];
    shortBundleVersion = v5->_shortBundleVersion;
    v5->_shortBundleVersion = v14;

    v16 = objc_opt_class();
    v17 = [v4 objectForKeyedSubscript:@"platform"];
    v5->_platform = [v16 gamePlatformFromServerGameDescriptorString:v17];
  }

  return v5;
}

- (GKGameDescriptor)initWithPushDictionary:(id)a3
{
  v4 = a3;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_227904000, v6, OS_LOG_TYPE_INFO, "GKGameDescriptor: initWithPushDictionary", buf, 2u);
  }

  v19.receiver = self;
  v19.super_class = GKGameDescriptor;
  v7 = [(GKGameDescriptor *)&v19 init];
  if (v7)
  {
    v8 = [v4 objectForKeyedSubscript:@"i"];
    bundleIdentifier = v7->_bundleIdentifier;
    v7->_bundleIdentifier = v8;

    v10 = [v4 objectForKeyedSubscript:@"v"];
    bundleVersion = v7->_bundleVersion;
    v7->_bundleVersion = v10;

    v12 = [v4 objectForKeyedSubscript:@"a"];
    adamID = v7->_adamID;
    v7->_adamID = v12;

    v14 = [v4 objectForKeyedSubscript:@"V"];
    shortBundleVersion = v7->_shortBundleVersion;
    v7->_shortBundleVersion = v14;

    v16 = objc_opt_class();
    v17 = [v4 objectForKeyedSubscript:@"p"];
    v7->_platform = [v16 gamePlatformFromServerPushString:v17];
  }

  return v7;
}

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_1 != -1)
  {
    +[GKGameDescriptor secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_1;

  return v3;
}

void __43__GKGameDescriptor_secureCodedPropertyKeys__block_invoke()
{
  v4[6] = *MEMORY[0x277D85DE8];
  v3[0] = @"adamID";
  v4[0] = objc_opt_class();
  v3[1] = @"externalVersion";
  v4[1] = objc_opt_class();
  v3[2] = @"bundleIdentifier";
  v4[2] = objc_opt_class();
  v3[3] = @"bundleVersion";
  v4[3] = objc_opt_class();
  v3[4] = @"shortBundleVersion";
  v4[4] = objc_opt_class();
  v3[5] = @"platform";
  v4[5] = objc_opt_class();
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:6];
  v1 = secureCodedPropertyKeys_sSecureCodedKeys_1;
  secureCodedPropertyKeys_sSecureCodedKeys_1 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

+ (id)stringForPlatform:(int64_t)a3
{
  v13 = *MEMORY[0x277D85DE8];
  if ((a3 - 1) >= 5)
  {
    v5 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v6 = GKOSLoggers();
      v5 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = MEMORY[0x277CCABB0];
      v8 = v5;
      v9 = [v7 numberWithInteger:a3];
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_227904000, v8, OS_LOG_TYPE_INFO, "No platform string for specified GKGamePlatform value (%@), defaulting to iOS.", &v11, 0xCu);
    }

    result = @"ios";
  }

  else
  {
    result = off_2785DDE10[a3 - 1];
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)dictionaryForRequest
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:6];
  v4 = v3;
  adamID = self->_adamID;
  if (adamID)
  {
    [v3 setObject:adamID forKeyedSubscript:@"adam-id"];
  }

  externalVersion = self->_externalVersion;
  if (externalVersion)
  {
    [v4 setObject:externalVersion forKeyedSubscript:@"external-version"];
  }

  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier)
  {
    [v4 setObject:bundleIdentifier forKeyedSubscript:@"bundle-id"];
  }

  bundleVersion = self->_bundleVersion;
  if (bundleVersion)
  {
    [v4 setObject:bundleVersion forKeyedSubscript:@"bundle-version"];
  }

  shortBundleVersion = self->_shortBundleVersion;
  if (shortBundleVersion)
  {
    [v4 setObject:shortBundleVersion forKeyedSubscript:@"short-bundle-version"];
  }

  v10 = [objc_opt_class() stringForPlatform:{-[GKGameDescriptor platform](self, "platform")}];
  if (v10)
  {
    [v4 setObject:v10 forKeyedSubscript:@"platform"];
  }

  v11 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v4];

  return v11;
}

- (id)description
{
  v12.receiver = self;
  v12.super_class = GKGameDescriptor;
  v3 = [(GKInternalRepresentation *)&v12 description];
  v4 = [(GKGameDescriptor *)self bundleIdentifier];
  v5 = [(GKGameDescriptor *)self bundleVersion];
  v6 = [(GKGameDescriptor *)self adamID];
  v7 = [(GKGameDescriptor *)self externalVersion];
  v8 = [(GKGameDescriptor *)self shortBundleVersion];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{-[GKGameDescriptor platform](self, "platform")}];
  v10 = [v3 stringByAppendingFormat:@"bundleIdentifier:%@\nbundleVersion:%@\nadamID:%@\nexternalVersion:%@\nshortBundleVersion:%@\nplatform:%@", v4, v5, v6, v7, v8, v9];

  return v10;
}

@end