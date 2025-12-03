@interface CPSDeveloperOverride
+ (id)allOverrides;
+ (id)overrideForURL:(id)l;
+ (unint64_t)_indexOf:(id)of;
+ (void)loadAllOverridesIfNeeded;
+ (void)persistAllOverrides;
- (BOOL)isComplete;
- (BOOL)isValid;
- (CGImage)heroImage;
- (CPSDeveloperOverride)initWithCoder:(id)coder;
- (CPSDeveloperOverride)initWithDictionary:(id)dictionary;
- (NSURL)heroImageURL;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)clear;
- (void)encodeWithCoder:(id)coder;
- (void)heroImageURL;
- (void)save;
- (void)setHeroImage:(CGImage *)image;
@end

@implementation CPSDeveloperOverride

- (CPSDeveloperOverride)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v17.receiver = self;
  v17.super_class = CPSDeveloperOverride;
  v5 = [(CPSDeveloperOverride *)&v17 init];
  if (v5)
  {
    v6 = [dictionaryCopy safari_stringForKey:@"invocationURL"];
    invocationURL = v5->_invocationURL;
    v5->_invocationURL = v6;

    v8 = [dictionaryCopy safari_stringForKey:@"clipBundleID"];
    clipBundleID = v5->_clipBundleID;
    v5->_clipBundleID = v8;

    v10 = [dictionaryCopy safari_stringForKey:@"title"];
    title = v5->_title;
    v5->_title = v10;

    v12 = [dictionaryCopy safari_stringForKey:@"subtitle"];
    subtitle = v5->_subtitle;
    v5->_subtitle = v12;

    v14 = [dictionaryCopy safari_numberForKey:@"action"];
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
    array = [MEMORY[0x277CBEB18] array];
    v3 = allOverrides;
    allOverrides = array;

    cps_clipServicesDefaults = [MEMORY[0x277CBEBD0] cps_clipServicesDefaults];
    v5 = [cps_clipServicesDefaults arrayForKey:@"DeveloperOverrides"];
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
  [self loadAllOverridesIfNeeded];
  v2 = allOverrides;

  return v2;
}

+ (id)overrideForURL:(id)l
{
  v20 = *MEMORY[0x277D85DE8];
  lCopy = l;
  [self loadAllOverridesIfNeeded];
  absoluteString = [lCopy absoluteString];
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
        invocationURL = [v10 invocationURL];
        if ([absoluteString hasPrefix:invocationURL])
        {
          isValid = [v10 isValid];

          if (isValid)
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
  array = [MEMORY[0x277CBEB18] array];
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

        dictionaryRepresentation = [*(*(&v11 + 1) + 8 * v7) dictionaryRepresentation];
        [array addObject:dictionaryRepresentation];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  cps_clipServicesDefaults = [MEMORY[0x277CBEBD0] cps_clipServicesDefaults];
  [cps_clipServicesDefaults setObject:array forKey:@"DeveloperOverrides"];
  [cps_clipServicesDefaults synchronize];

  v10 = *MEMORY[0x277D85DE8];
}

+ (unint64_t)_indexOf:(id)of
{
  ofCopy = of;
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
  v5 = ofCopy;
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

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v17 = 0;
  v7 = [defaultManager createDirectoryAtURL:v5 withIntermediateDirectories:1 attributes:0 error:&v17];
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
  cps_sha256String = [(NSString *)self->_invocationURL cps_sha256String];
  v13 = [v11 stringWithFormat:@"%@-Hero.png", cps_sha256String];
  v14 = [v9 URLByAppendingPathComponent:v13];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)save
{
  v12 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  cps_privacyPreservingDescription = [a2 cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_0(&dword_2436ED000, v5, v6, "Could not save developer override hero image: %{public}@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)clear
{
  v12 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  cps_privacyPreservingDescription = [a2 cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_0(&dword_2436ED000, v5, v6, "Could not delete developer override hero image: %{public}@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)isComplete
{
  v3 = [MEMORY[0x277CBEBC0] URLWithString:self->_invocationURL];
  scheme = [v3 scheme];
  lowercaseString = [scheme lowercaseString];

  v6 = (([lowercaseString isEqualToString:@"http"] & 1) != 0 || objc_msgSend(lowercaseString, "isEqualToString:", @"https")) && -[NSString length](self->_title, "length") && -[NSString length](self->_subtitle, "length") != 0;
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
      applicationIdentifier = [v4 applicationIdentifier];
      isAdHocCodeSigned = [CPSUtilities appClipAssociatedDomainIsApprovedForURL:v6 applicationIdentifier:applicationIdentifier];
    }

    else if ([v4 isProfileValidated])
    {
      isAdHocCodeSigned = 1;
    }

    else
    {
      isAdHocCodeSigned = [v4 isAdHocCodeSigned];
    }
  }

  else
  {
    isAdHocCodeSigned = 0;
  }

  return isAdHocCodeSigned;
}

- (void)setHeroImage:(CGImage *)image
{
  heroImage = self->_heroImage;
  if (heroImage != image)
  {
    CGImageRelease(heroImage);
    self->_heroImage = CGImageRetain(image);
  }
}

- (CGImage)heroImage
{
  result = self->_heroImage;
  if (!result)
  {
    heroImageURL = [(CPSDeveloperOverride *)self heroImageURL];
    path = [heroImageURL path];
    self->_heroImage = CPSCreateImageWithContentsOfFile(path);

    return self->_heroImage;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

- (CPSDeveloperOverride)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = CPSDeveloperOverride;
  v5 = [(CPSDeveloperOverride *)&v20 init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"invocationURL"];
    invocationURL = v5->_invocationURL;
    v5->_invocationURL = v7;

    v9 = objc_opt_self();
    v10 = [coderCopy decodeObjectOfClass:v9 forKey:@"clipBundleID"];
    clipBundleID = v5->_clipBundleID;
    v5->_clipBundleID = v10;

    v12 = objc_opt_self();
    v13 = [coderCopy decodeObjectOfClass:v12 forKey:@"title"];
    title = v5->_title;
    v5->_title = v13;

    v15 = objc_opt_self();
    v16 = [coderCopy decodeObjectOfClass:v15 forKey:@"subtitle"];
    subtitle = v5->_subtitle;
    v5->_subtitle = v16;

    v5->_action = [coderCopy decodeIntegerForKey:@"action"];
    v18 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  invocationURL = self->_invocationURL;
  coderCopy = coder;
  [coderCopy encodeObject:invocationURL forKey:@"invocationURL"];
  [coderCopy encodeObject:self->_clipBundleID forKey:@"clipBundleID"];
  [coderCopy encodeObject:self->_title forKey:@"title"];
  [coderCopy encodeObject:self->_subtitle forKey:@"subtitle"];
  [coderCopy encodeInteger:self->_action forKey:@"action"];
}

- (void)heroImageURL
{
  v12 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  cps_privacyPreservingDescription = [a2 cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_0(&dword_2436ED000, v5, v6, "Cannot create developer overrides folder with error: %{public}@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x277D85DE8];
}

@end