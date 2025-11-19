@interface CPSWebClip
+ (NSArray)appClips;
- (BOOL)isApplicationInstalled;
- (CGImage)iconImage;
- (NSDictionary)_dictionaryRepresentation;
- (NSString)bundleIdentifier;
- (NSString)iconImagePath;
- (NSString)localizedSubtitle;
- (NSString)title;
- (NSUUID)uuid;
- (NSUserActivity)appClipUserActivity;
- (id)_bundleResourceWithName:(id)a3;
- (id)_init;
- (id)_initWithIdentifier:(id)a3 webClipDictionary:(id)a4;
- (id)description;
- (void)_updateWithClipMetadata:(id)a3;
- (void)setPageURL:(id)a3;
- (void)setRegisteredURL:(id)a3;
@end

@implementation CPSWebClip

- (id)_init
{
  v9.receiver = self;
  v9.super_class = CPSWebClip;
  v2 = [(CPSWebClip *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAD78] UUID];
    v4 = [v3 UUIDString];
    v5 = [v4 stringByReplacingOccurrencesOfString:@"-" withString:&stru_28567C2A8];
    identifier = v2->_identifier;
    v2->_identifier = v5;

    v2->_bundleVersion = 1;
    v2->_webClipType = 1;
    v7 = v2;
  }

  return v2;
}

- (id)_initWithIdentifier:(id)a3 webClipDictionary:(id)a4
{
  v7 = a3;
  v8 = a4;
  v36.receiver = self;
  v36.super_class = CPSWebClip;
  v9 = [(CPSWebClip *)&v36 init];
  if (v9)
  {
    v10 = MEMORY[0x277CBEBC0];
    v11 = [v8 safari_stringForKey:@"URL"];
    v12 = [v10 URLWithString:v11];
    [(CPSWebClip *)v9 setPageURL:v12];

    v13 = MEMORY[0x277CBEBC0];
    v14 = [v8 safari_stringForKey:@"RegisteredURL"];
    v15 = [v13 URLWithString:v14];
    [(CPSWebClip *)v9 setRegisteredURL:v15];

    objc_storeStrong(&v9->_identifier, a3);
    v16 = [v8 safari_stringForKey:@"Title"];
    title = v9->_title;
    v9->_title = v16;

    v18 = [v8 safari_stringForKey:@"ApplicationBundleIdentifier"];
    applicationBundleIdentifier = v9->_applicationBundleIdentifier;
    v9->_applicationBundleIdentifier = v18;

    v20 = [v8 safari_arrayForKey:@"TrustedClientBundleIdentifiers"];
    if ([v20 count])
    {
      v21 = [MEMORY[0x277CBEB98] setWithArray:v20];
      trustedClientBundleIdentifiers = v9->_trustedClientBundleIdentifiers;
      v9->_trustedClientBundleIdentifiers = v21;
    }

    v9->_bundleVersion = [v8 _web_intForKey:@"ApplicationBundleVersion"];
    v9->_scenelessBackgroundLaunch = [v8 safari_BOOLForKey:@"ScenelessBackgroundLaunch"];
    v9->_poweredBy = [v8 safari_BOOLForKey:@"PoweredBy"];
    v9->_supportsArcade = [v8 safari_BOOLForKey:@"SupportsArcade"];
    v23 = [v8 safari_stringForKey:@"FullAppName"];
    fullAppName = v9->_fullAppName;
    v9->_fullAppName = v23;

    v25 = [v8 safari_stringForKey:@"FullAppCaption"];
    fullAppCaption = v9->_fullAppCaption;
    v9->_fullAppCaption = v25;

    v27 = MEMORY[0x277CBEBC0];
    v28 = [v8 safari_stringForKey:@"FullAppStoreURL"];
    v29 = [v27 URLWithString:v28];
    fullAppStoreURL = v9->_fullAppStoreURL;
    v9->_fullAppStoreURL = v29;

    v31 = [v8 safari_dateForKey:@"LastActivatedTime"];
    lastActivatedTime = v9->_lastActivatedTime;
    v9->_lastActivatedTime = v31;

    if ([v8 safari_BOOLForKey:@"IsAppClip"])
    {
      v33 = 1;
    }

    else if ([(NSString *)v9->_applicationBundleIdentifier isEqualToString:@"com.apple.shortcuts"])
    {
      v33 = 4;
    }

    else if ([v8 safari_BOOLForKey:@"FullScreen"])
    {
      v33 = 3;
    }

    else
    {
      if (v9->_applicationBundleIdentifier)
      {
        v9->_webClipType = 0;
LABEL_14:
        v34 = v9;

        goto LABEL_15;
      }

      v33 = 2;
    }

    v9->_webClipType = v33;
    goto LABEL_14;
  }

LABEL_15:

  return v9;
}

- (void)_updateWithClipMetadata:(id)a3
{
  v22 = a3;
  self->_poweredBy = [v22 isPoweredByThirdParty];
  self->_supportsArcade = [v22 supportsArcade];
  v4 = [v22 bundleDisplayName];
  v5 = v4;
  if (self->_poweredBy || ![v4 length])
  {
    v6 = [v22 clipName];
  }

  else
  {
    v6 = [v22 bundleDisplayName];
  }

  title = self->_title;
  self->_title = v6;

  v8 = [v22 clipBundleID];
  applicationBundleIdentifier = self->_applicationBundleIdentifier;
  self->_applicationBundleIdentifier = v8;

  if ([v22 hasFullAppInstalledOnSystem])
  {
    v10 = [v22 fullAppBundleID];
    v11 = self->_applicationBundleIdentifier;
    self->_applicationBundleIdentifier = v10;
  }

  v12 = [v22 fullAppCachedIconFilePath];
  temporaryIconPath = self->_temporaryIconPath;
  self->_temporaryIconPath = v12;

  v14 = [v22 fullAppName];
  fullAppName = self->_fullAppName;
  self->_fullAppName = v14;

  v16 = [v22 fullAppCaption];
  fullAppCaption = self->_fullAppCaption;
  self->_fullAppCaption = v16;

  v18 = [v22 fullAppStoreURL];
  fullAppStoreURL = self->_fullAppStoreURL;
  self->_fullAppStoreURL = v18;

  v20 = [v22 clipLaunchURL];
  [(CPSWebClip *)self setPageURL:v20];

  v21 = [v22 clipURL];
  [(CPSWebClip *)self setRegisteredURL:v21];
}

- (NSDictionary)_dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  pageURL = self->_pageURL;
  if (pageURL)
  {
    v5 = [(NSURL *)pageURL absoluteString];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"URL"];
    }
  }

  registeredURL = self->_registeredURL;
  if (registeredURL)
  {
    v7 = [(NSURL *)registeredURL absoluteString];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"RegisteredURL"];
    }
  }

  title = self->_title;
  if (title)
  {
    [v3 setObject:title forKeyedSubscript:@"Title"];
  }

  applicationBundleIdentifier = self->_applicationBundleIdentifier;
  if (applicationBundleIdentifier)
  {
    [v3 setObject:applicationBundleIdentifier forKeyedSubscript:@"ApplicationBundleIdentifier"];
  }

  if (self->_bundleVersion)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    [v3 setObject:v10 forKeyedSubscript:@"ApplicationBundleVersion"];
  }

  fullAppName = self->_fullAppName;
  if (fullAppName)
  {
    [v3 setObject:fullAppName forKeyedSubscript:@"FullAppName"];
  }

  fullAppCaption = self->_fullAppCaption;
  if (fullAppCaption)
  {
    [v3 setObject:fullAppCaption forKeyedSubscript:@"FullAppCaption"];
  }

  fullAppStoreURL = self->_fullAppStoreURL;
  if (fullAppStoreURL)
  {
    v14 = [(NSURL *)fullAppStoreURL absoluteString];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"FullAppStoreURL"];
    }
  }

  if (self->_supportsArcade)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v3 setObject:v15 forKeyedSubscript:@"SupportsArcade"];
  }

  v16 = [MEMORY[0x277CCABB0] numberWithBool:self->_scenelessBackgroundLaunch];
  [v3 setObject:v16 forKeyedSubscript:@"ScenelessBackgroundLaunch"];

  [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"IsAppClip"];
  v17 = [MEMORY[0x277CCABB0] numberWithBool:self->_poweredBy];
  [v3 setObject:v17 forKeyedSubscript:@"PoweredBy"];

  lastActivatedTime = self->_lastActivatedTime;
  if (lastActivatedTime)
  {
    [v3 setObject:lastActivatedTime forKeyedSubscript:@"LastActivatedTime"];
  }

  return v3;
}

- (id)_bundleResourceWithName:(id)a3
{
  v4 = a3;
  v5 = [CPSWebClipStore _urlForWebClipWithIdentifier:self->_identifier];
  if (v5)
  {
    v6 = [MEMORY[0x277CCA8D8] bundleWithURL:v5];
    v7 = [v6 URLForResource:v4 withExtension:@"png" subdirectory:0];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 path];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSUUID)uuid
{
  if ([(NSString *)self->_identifier length]== 32)
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = [(NSString *)self->_identifier substringWithRange:0, 8];
    v5 = [(NSString *)self->_identifier substringWithRange:8, 4];
    v6 = [(NSString *)self->_identifier substringWithRange:12, 4];
    v7 = [(NSString *)self->_identifier substringWithRange:16, 4];
    v8 = [(NSString *)self->_identifier substringWithRange:20, 12];
    v9 = [v3 stringWithFormat:@"%@-%@-%@-%@-%@", v4, v5, v6, v7, v8];

    v10 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v9];
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:self->_identifier];
  }

  return v10;
}

- (NSString)title
{
  if (self->_title)
  {
    return self->_title;
  }

  else
  {
    return @"Untitled";
  }
}

- (NSString)bundleIdentifier
{
  webClipType = self->_webClipType;
  identifier = self->_identifier;
  if (webClipType == 3)
  {
    v4 = @"com.apple.webapp-";
    goto LABEL_5;
  }

  if (webClipType == 1)
  {
    v4 = @"com.apple.appclip-";
LABEL_5:
    v5 = [(__CFString *)v4 stringByAppendingString:identifier];
    goto LABEL_7;
  }

  v5 = identifier;
LABEL_7:

  return v5;
}

- (NSUserActivity)appClipUserActivity
{
  v3 = objc_alloc(MEMORY[0x277CC1EF0]);
  v4 = [v3 initWithActivityType:*MEMORY[0x277CCA850]];
  [v4 setWebpageURL:self->_pageURL];

  return v4;
}

- (void)setPageURL:(id)a3
{
  v5 = a3;
  if ([v5 cps_isHTTPFamilyURL])
  {
    objc_storeStrong(&self->_pageURL, a3);
  }
}

- (void)setRegisteredURL:(id)a3
{
  v5 = a3;
  if ([v5 cps_isHTTPFamilyURL])
  {
    objc_storeStrong(&self->_registeredURL, a3);
  }
}

- (NSString)iconImagePath
{
  v2 = [(CPSWebClip *)self _bundleResourceWithName:@"icon"];
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  if ([v3 fileExistsAtPath:v2])
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (CGImage)iconImage
{
  result = self->_iconImage;
  if (!result)
  {
    v4 = [(CPSWebClip *)self _bundleResourceWithName:@"icon"];
    v5 = v4;
    if (v4)
    {
      self->_iconImage = CPSCreateImageWithContentsOfFile(v4);
    }

    return self->_iconImage;
  }

  return result;
}

+ (NSArray)appClips
{
  v2 = +[CPSWebClipStore sharedStore];
  v3 = [v2 _fetchInstalledAppClips];

  return v3;
}

- (NSString)localizedSubtitle
{
  if (self->_webClipType == 1)
  {
    v3 = dispatch_group_create();
    dispatch_group_enter(v3);
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__4;
    v25 = __Block_byref_object_dispose__4;
    v26 = 0;
    v4 = +[CPSClipDataSQLiteStore defaultStore];
    applicationBundleIdentifier = self->_applicationBundleIdentifier;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __31__CPSWebClip_localizedSubtitle__block_invoke;
    v17[3] = &unk_278DCE558;
    v6 = v3;
    v19 = self;
    v20 = &v21;
    v18 = v6;
    [v4 getAppClipRecordWithBundleID:applicationBundleIdentifier completion:v17];

    v7 = dispatch_time(0, 5000000000);
    dispatch_group_wait(v6, v7);
    if ([v22[5] length])
    {
      v8 = v22[5];
    }

    else
    {
      v9 = objc_alloc(MEMORY[0x277CC1E70]);
      v10 = self->_applicationBundleIdentifier;
      v16 = 0;
      v11 = [v9 initWithBundleIdentifier:v10 allowPlaceholder:1 error:&v16];
      v12 = v16;
      v13 = [v11 localizedName];
      v14 = v13;
      if (v12 || ![v13 length])
      {
        v8 = 0;
      }

      else
      {
        v8 = [CPSUtilities poweredByCaptionForAppName:v14];
      }
    }

    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __31__CPSWebClip_localizedSubtitle__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    v4 = *(*(a1 + 40) + 25);
    if (v4 == 1)
    {
      v2 = [v6 fullApplicationName];
      [CPSUtilities poweredByCaptionForAppName:v2];
    }

    else
    {
      [v6 fullApplicationCaption];
    }
    v5 = ;
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v5);
    if (v4)
    {

      v5 = v2;
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

- (id)description
{
  identifier = self->_identifier;
  v26 = MEMORY[0x277CCACA8];
  v28 = [(CPSWebClip *)self uuid];
  v23 = [v28 UUIDString];
  v21 = [(CPSWebClip *)self webClipType];
  v31 = [(CPSWebClip *)self title];
  v20 = [(CPSWebClip *)self bundleVersion];
  v19 = [(CPSWebClip *)self bundleIdentifier];
  v18 = [(CPSWebClip *)self scenelessBackgroundLaunch];
  v30 = [(CPSWebClip *)self applicationBundleIdentifier];
  v16 = [(CPSWebClip *)self trustedClientBundleIdentifiers];
  v29 = [(CPSWebClip *)self pageURL];
  v15 = [(CPSWebClip *)self registeredURL];
  v24 = [(CPSWebClip *)self registeredURL];
  v22 = [v24 absoluteString];
  v3 = [v22 cps_sha256String];
  v4 = [(CPSWebClip *)self appClipUserActivity];
  v17 = [CPSWebClipStore _urlForWebClipWithIdentifier:self->_identifier];
  v5 = [v17 path];
  v6 = [(CPSWebClip *)self iconImagePath];
  v14 = [(CPSWebClip *)self localizedSubtitle];
  if ([(CPSWebClip *)self supportsArcade])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = [(CPSWebClip *)self fullAppName];
  v9 = [(CPSWebClip *)self fullAppCaption];
  v10 = [(CPSWebClip *)self fullAppStoreURL];
  v11 = [(CPSWebClip *)self isApplicationInstalled];
  v12 = [(CPSWebClip *)self _dictionaryRepresentation];
  v27 = [v26 stringWithFormat:@"%@: \n  uuid = %@, \n  webClipType = %ld, \n  title = %@, \n  bundleVersion = %lu, \n  bundleIdentifier = %@, \n  scenelessBackgroundLaunch = %d, \n  applicationBundleIdentifier = %@, \n  trustedClientBundleIdentifiers = %@, \n  pageURL = %@, \n  registeredURL = %@, \n  registeredURLHash = %@, \n  appClipUserActivity = %@, \n  path = %@, \n  iconImagePath = %@, \n  localizedSubtitle = %@, \n  supportsArcade = %@, \n  fullAppName = %@, \n  fullAppCaption = %@, \n  fullAppStoreURL = %@, \n  applicationInstalled = %d, \n  dictionaryRepresentation = %@", identifier, v23, v21, v31, v20, v19, v18, v30, v16, v29, v15, v3, v4, v5, v6, v14, v7, v8, v9, v10, v11, v12];

  return v27;
}

- (BOOL)isApplicationInstalled
{
  v6 = 0;
  v2 = [CPSUtilities versionIdentifierForAppWithBundleIdentifier:self->_applicationBundleIdentifier isPlaceholder:&v6];
  v3 = v2 != 0;
  v4 = v6 ^ 1;

  return v3 & v4;
}

@end