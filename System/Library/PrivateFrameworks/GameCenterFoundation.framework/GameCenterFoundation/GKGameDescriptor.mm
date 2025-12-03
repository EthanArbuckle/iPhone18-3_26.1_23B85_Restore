@interface GKGameDescriptor
+ (BOOL)supportsPlatform:(int64_t)platform;
+ (GKGameDescriptor)gameDescriptorWithBundleID:(id)d bundleVersion:(id)version shortBundleVersion:(id)bundleVersion adamID:(id)iD;
+ (id)gamePlatformStringSetFromGamePlatformSet:(unsigned int)set;
+ (id)secureCodedPropertyKeys;
+ (id)stringForPlatform:(int64_t)platform;
+ (int64_t)gamePlatformFromServerGameDescriptorString:(id)string;
+ (int64_t)gamePlatformFromServerPushString:(id)string;
+ (unsigned)gamePlatformSetForGamePlatformStrings:(id)strings;
+ (unsigned)gamePlatformSetFromGamePlatform:(int64_t)platform;
- (GKGameDescriptor)initWithDictionary:(id)dictionary;
- (GKGameDescriptor)initWithPushDictionary:(id)dictionary;
- (id)description;
- (id)dictionaryForRequest;
@end

@implementation GKGameDescriptor

+ (GKGameDescriptor)gameDescriptorWithBundleID:(id)d bundleVersion:(id)version shortBundleVersion:(id)bundleVersion adamID:(id)iD
{
  iDCopy = iD;
  bundleVersionCopy = bundleVersion;
  versionCopy = version;
  dCopy = d;
  v14 = objc_alloc_init(GKGameDescriptor);
  [(GKGameDescriptor *)v14 setBundleIdentifier:dCopy];

  [(GKGameDescriptor *)v14 setBundleVersion:versionCopy];
  [(GKGameDescriptor *)v14 setShortBundleVersion:bundleVersionCopy];

  [(GKGameDescriptor *)v14 setAdamID:iDCopy];
  -[GKGameDescriptor setPlatform:](v14, "setPlatform:", [self currentPlatform]);

  return v14;
}

+ (int64_t)gamePlatformFromServerGameDescriptorString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"ios"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"xros"])
  {
    v4 = 5;
  }

  else if ([stringCopy isEqualToString:@"macos"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"appletvos"])
  {
    v4 = 3;
  }

  else if ([stringCopy isEqualToString:@"watchos"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (int64_t)gamePlatformFromServerPushString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"i"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"r"])
  {
    v4 = 5;
  }

  else if ([stringCopy isEqualToString:@"m"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"t"])
  {
    v4 = 3;
  }

  else if ([stringCopy isEqualToString:@"w"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (unsigned)gamePlatformSetFromGamePlatform:(int64_t)platform
{
  if ((platform - 1) > 4)
  {
    return 0;
  }

  else
  {
    return dword_227A9FE28[platform - 1];
  }
}

+ (id)gamePlatformStringSetFromGamePlatformSet:(unsigned int)set
{
  setCopy = set;
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v5 = v4;
  if ((setCopy & 2) != 0)
  {
    [v4 addObject:@"ios"];
    if ((setCopy & 4) == 0)
    {
LABEL_3:
      if ((setCopy & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((setCopy & 4) == 0)
  {
    goto LABEL_3;
  }

  [v5 addObject:@"macos"];
  if ((setCopy & 8) == 0)
  {
LABEL_4:
    if ((setCopy & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  [v5 addObject:@"appletvos"];
  if ((setCopy & 0x10) == 0)
  {
LABEL_5:
    if ((setCopy & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  [v5 addObject:@"watchos"];
  if ((setCopy & 0x20) != 0)
  {
LABEL_6:
    [v5 addObject:@"xros"];
  }

LABEL_7:

  return v5;
}

+ (unsigned)gamePlatformSetForGamePlatformStrings:(id)strings
{
  v17 = *MEMORY[0x277D85DE8];
  stringsCopy = strings;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [stringsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(stringsCopy);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 length])
        {
          v6 |= [GKGameDescriptor gamePlatformSetFromGamePlatform:[GKGameDescriptor gamePlatformFromServerGameDescriptorString:v9]];
        }
      }

      v5 = [stringsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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

+ (BOOL)supportsPlatform:(int64_t)platform
{
  v4 = +[GKGameDescriptor supportedPlatforms];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:platform];
  v6 = [v4 containsObject:v5];

  return v6;
}

- (GKGameDescriptor)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v19.receiver = self;
  v19.super_class = GKGameDescriptor;
  v5 = [(GKGameDescriptor *)&v19 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"bundle-id"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;

    v8 = [dictionaryCopy objectForKeyedSubscript:@"bundle-version"];
    bundleVersion = v5->_bundleVersion;
    v5->_bundleVersion = v8;

    v10 = [dictionaryCopy objectForKeyedSubscript:@"adam-id"];
    adamID = v5->_adamID;
    v5->_adamID = v10;

    v12 = [dictionaryCopy objectForKeyedSubscript:@"external-version"];
    externalVersion = v5->_externalVersion;
    v5->_externalVersion = v12;

    v14 = [dictionaryCopy objectForKeyedSubscript:@"short-bundle-version"];
    shortBundleVersion = v5->_shortBundleVersion;
    v5->_shortBundleVersion = v14;

    v16 = objc_opt_class();
    v17 = [dictionaryCopy objectForKeyedSubscript:@"platform"];
    v5->_platform = [v16 gamePlatformFromServerGameDescriptorString:v17];
  }

  return v5;
}

- (GKGameDescriptor)initWithPushDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
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
    v8 = [dictionaryCopy objectForKeyedSubscript:@"i"];
    bundleIdentifier = v7->_bundleIdentifier;
    v7->_bundleIdentifier = v8;

    v10 = [dictionaryCopy objectForKeyedSubscript:@"v"];
    bundleVersion = v7->_bundleVersion;
    v7->_bundleVersion = v10;

    v12 = [dictionaryCopy objectForKeyedSubscript:@"a"];
    adamID = v7->_adamID;
    v7->_adamID = v12;

    v14 = [dictionaryCopy objectForKeyedSubscript:@"V"];
    shortBundleVersion = v7->_shortBundleVersion;
    v7->_shortBundleVersion = v14;

    v16 = objc_opt_class();
    v17 = [dictionaryCopy objectForKeyedSubscript:@"p"];
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

+ (id)stringForPlatform:(int64_t)platform
{
  v13 = *MEMORY[0x277D85DE8];
  if ((platform - 1) >= 5)
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
      v9 = [v7 numberWithInteger:platform];
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_227904000, v8, OS_LOG_TYPE_INFO, "No platform string for specified GKGamePlatform value (%@), defaulting to iOS.", &v11, 0xCu);
    }

    result = @"ios";
  }

  else
  {
    result = off_2785DDE10[platform - 1];
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
  bundleIdentifier = [(GKGameDescriptor *)self bundleIdentifier];
  bundleVersion = [(GKGameDescriptor *)self bundleVersion];
  adamID = [(GKGameDescriptor *)self adamID];
  externalVersion = [(GKGameDescriptor *)self externalVersion];
  shortBundleVersion = [(GKGameDescriptor *)self shortBundleVersion];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{-[GKGameDescriptor platform](self, "platform")}];
  v10 = [v3 stringByAppendingFormat:@"bundleIdentifier:%@\nbundleVersion:%@\nadamID:%@\nexternalVersion:%@\nshortBundleVersion:%@\nplatform:%@", bundleIdentifier, bundleVersion, adamID, externalVersion, shortBundleVersion, v9];

  return v10;
}

@end