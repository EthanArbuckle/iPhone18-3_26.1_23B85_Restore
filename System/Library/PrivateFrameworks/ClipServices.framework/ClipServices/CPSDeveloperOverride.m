@interface CPSDeveloperOverride
+ (id)allOverrides;
+ (id)overrideForURL:(id)a3;
+ (unint64_t)_indexOf:(id)a3;
+ (void)loadAllOverridesIfNeeded;
+ (void)persistAllOverrides;
- (BOOL)isComplete;
- (BOOL)isValid;
- (CGImage)heroImage;
- (CPSDeveloperOverride)initWithCoder:(id)a3;
- (CPSDeveloperOverride)initWithDictionary:(id)a3;
- (NSURL)heroImageURL;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (void)clear;
- (void)encodeWithCoder:(id)a3;
- (void)heroImageURL;
- (void)save;
- (void)setHeroImage:(CGImage *)a3;
@end

@implementation CPSDeveloperOverride

- (CPSDeveloperOverride)initWithDictionary:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = CPSDeveloperOverride;
  v5 = [(CPSDeveloperOverride *)&v17 init];
  if (v5)
  {
    v6 = [v4 safari_stringForKey:@"invocationURL"];
    invocationURL = v5->_invocationURL;
    v5->_invocationURL = v6;

    v8 = [v4 safari_stringForKey:@"clipBundleID"];
    clipBundleID = v5->_clipBundleID;
    v5->_clipBundleID = v8;

    v10 = [v4 safari_stringForKey:@"title"];
    title = v5->_title;
    v5->_title = v10;

    v12 = [v4 safari_stringForKey:@"subtitle"];
    subtitle = v5->_subtitle;
    v5->_subtitle = v12;

    v14 = [v4 safari_numberForKey:@"action"];
    v5->_action = [v14 integerValue];

    v15 = v5;
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v13 = *MEMORY[0x277D85DE8];
  invocationURL = self->_invocationURL;
  v8[0] = @"invocationURL";
  v8[1] = @"clipBundleID";
  v10 = *&self->_clipBundleID;
  v8[2] = @"title";
  v8[3] = @"subtitle";
  action = self->_action;
  subtitle = self->_subtitle;
  v8[4] = @"action";
  v9 = invocationURL;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:action];
  v12 = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:v8 count:5];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (void)loadAllOverridesIfNeeded
{
  v18 = *MEMORY[0x277D85DE8];
  if (!allOverrides)
  {
    v2 = [MEMORY[0x277CBEB18] array];
    v3 = allOverrides;
    allOverrides = v2;

    v4 = [MEMORY[0x277CBEBD0] cps_clipServicesDefaults];
    v5 = [v4 arrayForKey:@"DeveloperOverrides"];
    v6 = v5;
    if (v5)
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v14;
        do
        {
          v10 = 0;
          do
          {
            if (*v14 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = [[CPSDeveloperOverride alloc] initWithDictionary:*(*(&v13 + 1) + 8 * v10)];
            [allOverrides addObject:v11];

            ++v10;
          }

          while (v8 != v10);
          v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v8);
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

+ (id)allOverrides
{
  [a1 loadAllOverridesIfNeeded];
  v2 = allOverrides;

  return v2;
}

+ (id)overrideForURL:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [a1 loadAllOverridesIfNeeded];
  v5 = [v4 absoluteString];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = allOverrides;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 invocationURL];
        if ([v5 hasPrefix:v11])
        {
          v12 = [v10 isValid];

          if (v12)
          {
            v7 = v10;
            goto LABEL_12;
          }
        }

        else
        {
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

LABEL_12:

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (void)persistAllOverrides
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = allOverrides;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v11 + 1) + 8 * v7) dictionaryRepresentation];
        [v2 addObject:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = [MEMORY[0x277CBEBD0] cps_clipServicesDefaults];
  [v9 setObject:v2 forKey:@"DeveloperOverrides"];
  [v9 synchronize];

  v10 = *MEMORY[0x277D85DE8];
}

+ (unint64_t)_indexOf:(id)a3
{
  v3 = a3;
  [objc_opt_class() loadAllOverridesIfNeeded];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0x7FFFFFFFFFFFFFFFLL;
  v4 = allOverrides;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __33__CPSDeveloperOverride__indexOf___block_invoke;
  v8[3] = &unk_278DCF350;
  v5 = v3;
  v9 = v5;
  v10 = &v11;
  [v4 enumerateObjectsUsingBlock:v8];
  v6 = v12[3];

  _Block_object_dispose(&v11, 8);
  return v6;
}

void __33__CPSDeveloperOverride__indexOf___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 invocationURL];
  v8 = [*(a1 + 32) invocationURL];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }
}

- (NSURL)heroImageURL
{
  v18[4] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEBC0];
  v18[0] = CPSharedResourcesDirectory();
  v18[1] = @"Library";
  v18[2] = @"com.apple.ClipServices.clipserviced";
  v18[3] = @"DeveloperOverrides";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:4];
  v5 = [v3 fileURLWithPathComponents:v4];

  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v17 = 0;
  v7 = [v6 createDirectoryAtURL:v5 withIntermediateDirectories:1 attributes:0 error:&v17];
  v8 = v17;

  if (v7)
  {
    v9 = v5;
  }

  else
  {
    v10 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(CPSDeveloperOverride *)v10 heroImageURL];
    }

    v9 = 0;
  }

  v11 = MEMORY[0x277CCACA8];
  v12 = [(NSString *)self->_invocationURL cps_sha256String];
  v13 = [v11 stringWithFormat:@"%@-Hero.png", v12];
  v14 = [v9 URLByAppendingPathComponent:v13];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)save
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_0(&dword_2436ED000, v5, v6, "Could not save developer override hero image: %{public}@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)clear
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_0(&dword_2436ED000, v5, v6, "Could not delete developer override hero image: %{public}@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)isComplete
{
  v3 = [MEMORY[0x277CBEBC0] URLWithString:self->_invocationURL];
  v4 = [v3 scheme];
  v5 = [v4 lowercaseString];

  v6 = (([v5 isEqualToString:@"http"] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"https")) && -[NSString length](self->_title, "length") && -[NSString length](self->_subtitle, "length") != 0;
  return v6;
}

- (BOOL)isValid
{
  if (![(CPSDeveloperOverride *)self isComplete])
  {
    return 0;
  }

  v3 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:self->_clipBundleID allowPlaceholder:0 error:0];
  v4 = v3;
  if (v3 && ([v3 appClipMetadata], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    if ([v4 isBeta])
    {
      v6 = [MEMORY[0x277CBEBC0] URLWithString:self->_invocationURL];
      v7 = [v4 applicationIdentifier];
      v8 = [CPSUtilities appClipAssociatedDomainIsApprovedForURL:v6 applicationIdentifier:v7];
    }

    else if ([v4 isProfileValidated])
    {
      v8 = 1;
    }

    else
    {
      v8 = [v4 isAdHocCodeSigned];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setHeroImage:(CGImage *)a3
{
  heroImage = self->_heroImage;
  if (heroImage != a3)
  {
    CGImageRelease(heroImage);
    self->_heroImage = CGImageRetain(a3);
  }
}

- (CGImage)heroImage
{
  result = self->_heroImage;
  if (!result)
  {
    v4 = [(CPSDeveloperOverride *)self heroImageURL];
    v5 = [v4 path];
    self->_heroImage = CPSCreateImageWithContentsOfFile(v5);

    return self->_heroImage;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(NSString *)self->_invocationURL copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSString *)self->_clipBundleID copy];
  v8 = v4[3];
  v4[3] = v7;

  v4[1] = CGImageCreateCopy(self->_heroImage);
  v9 = [(NSString *)self->_title copy];
  v10 = v4[4];
  v4[4] = v9;

  v11 = [(NSString *)self->_subtitle copy];
  v12 = v4[5];
  v4[5] = v11;

  v4[6] = self->_action;
  return v4;
}

- (CPSDeveloperOverride)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = CPSDeveloperOverride;
  v5 = [(CPSDeveloperOverride *)&v20 init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"invocationURL"];
    invocationURL = v5->_invocationURL;
    v5->_invocationURL = v7;

    v9 = objc_opt_self();
    v10 = [v4 decodeObjectOfClass:v9 forKey:@"clipBundleID"];
    clipBundleID = v5->_clipBundleID;
    v5->_clipBundleID = v10;

    v12 = objc_opt_self();
    v13 = [v4 decodeObjectOfClass:v12 forKey:@"title"];
    title = v5->_title;
    v5->_title = v13;

    v15 = objc_opt_self();
    v16 = [v4 decodeObjectOfClass:v15 forKey:@"subtitle"];
    subtitle = v5->_subtitle;
    v5->_subtitle = v16;

    v5->_action = [v4 decodeIntegerForKey:@"action"];
    v18 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  invocationURL = self->_invocationURL;
  v5 = a3;
  [v5 encodeObject:invocationURL forKey:@"invocationURL"];
  [v5 encodeObject:self->_clipBundleID forKey:@"clipBundleID"];
  [v5 encodeObject:self->_title forKey:@"title"];
  [v5 encodeObject:self->_subtitle forKey:@"subtitle"];
  [v5 encodeInteger:self->_action forKey:@"action"];
}

- (void)heroImageURL
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_0(&dword_2436ED000, v5, v6, "Cannot create developer overrides folder with error: %{public}@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x277D85DE8];
}

@end