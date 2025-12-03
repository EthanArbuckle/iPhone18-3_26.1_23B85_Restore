@interface FCRecipe
- (BOOL)isLocalDraft;
- (CGRect)thumbnailFocalFrame;
- (FCColor)thumbnailAccentColor;
- (FCColor)thumbnailBackgroundColor;
- (FCColor)thumbnailPrimaryColor;
- (FCColor)thumbnailTextColor;
- (FCContentArchive)contentArchive;
- (FCContentManifest)contentManifest;
- (FCHeadlineThumbnail)thumbnailExtraLarge;
- (FCHeadlineThumbnail)thumbnailLarge;
- (FCHeadlineThumbnail)thumbnailMedium;
- (FCHeadlineThumbnail)thumbnailSmall;
- (FCRecipe)initWithLocalRecipe:(id)recipe assetManager:(id)manager;
- (FCRecipe)initWithRecipeMetadata:(id)metadata sourceChannel:(id)channel assetManager:(id)manager;
- (FCRecipe)initWithRecipeRecord:(id)record sourceChannel:(id)channel articles:(id)articles assetManager:(id)manager interestToken:(id)token;
- (FCRecipeMetadataType)appliedOverrideMetadata;
- (NSArray)articleIDs;
- (NSString)shortExcerpt;
- (NSString)sourceChannelID;
- (NSString)title;
- (void)applyRecipeMetadata:(id)metadata configuration:(id)configuration;
@end

@implementation FCRecipe

- (FCRecipe)initWithRecipeMetadata:(id)metadata sourceChannel:(id)channel assetManager:(id)manager
{
  metadataCopy = metadata;
  channelCopy = channel;
  managerCopy = manager;
  v70.receiver = self;
  v70.super_class = FCRecipe;
  v11 = [(FCRecipe *)&v70 init];
  v12 = v11;
  if (v11)
  {
    v11->_source = 1;
    v13 = [channelCopy copy];
    sourceChannel = v12->_sourceChannel;
    v12->_sourceChannel = v13;

    identifier = [(FCChannelProviding *)v12->_sourceChannel identifier];
    publisherID = v12->_publisherID;
    v12->_publisherID = identifier;

    identifier2 = [metadataCopy identifier];
    identifier = v12->_identifier;
    v12->_identifier = identifier2;

    title = [metadataCopy title];
    title = v12->_title;
    v12->_title = title;

    shortExcerpt = [metadataCopy shortExcerpt];
    shortExcerpt = v12->_shortExcerpt;
    v12->_shortExcerpt = shortExcerpt;

    v12->_paid = [metadataCopy isPaid];
    publishDate = [metadataCopy publishDate];
    publishDate = v12->_publishDate;
    v12->_publishDate = publishDate;

    v12->_isDraft = 0;
    thumbnailSmallMetadata = [metadataCopy thumbnailSmallMetadata];
    v27 = *MEMORY[0x1E695F060];
    v26 = *(MEMORY[0x1E695F060] + 8);
    if (thumbnailSmallMetadata)
    {
      v28 = ((thumbnailSmallMetadata >> 8) & 0xFFFFFFF);
    }

    else
    {
      v28 = *(MEMORY[0x1E695F060] + 8);
    }

    if (thumbnailSmallMetadata)
    {
      v29 = (thumbnailSmallMetadata >> 36);
    }

    else
    {
      v29 = *MEMORY[0x1E695F060];
    }

    thumbnailMediumMetadata = [metadataCopy thumbnailMediumMetadata];
    if (thumbnailMediumMetadata)
    {
      v31 = ((thumbnailMediumMetadata >> 8) & 0xFFFFFFF);
    }

    else
    {
      v31 = v26;
    }

    if (thumbnailMediumMetadata)
    {
      v32 = (thumbnailMediumMetadata >> 36);
    }

    else
    {
      v32 = v27;
    }

    thumbnailLargeMetadata = [metadataCopy thumbnailLargeMetadata];
    if (thumbnailLargeMetadata)
    {
      v34 = ((thumbnailLargeMetadata >> 8) & 0xFFFFFFF);
    }

    else
    {
      v34 = v26;
    }

    if (thumbnailLargeMetadata)
    {
      v35 = (thumbnailLargeMetadata >> 36);
    }

    else
    {
      v35 = v27;
    }

    thumbnailExtraLargeMetadata = [metadataCopy thumbnailExtraLargeMetadata];
    if (thumbnailExtraLargeMetadata)
    {
      v26 = ((thumbnailExtraLargeMetadata >> 8) & 0xFFFFFFF);
      v27 = (thumbnailExtraLargeMetadata >> 36);
    }

    thumbnailSmall = [metadataCopy thumbnailSmall];
    v38 = [managerCopy assetHandleForCKAssetURLString:thumbnailSmall lifetimeHint:0];

    thumbnailMedium = [metadataCopy thumbnailMedium];
    v40 = [managerCopy assetHandleForCKAssetURLString:thumbnailMedium lifetimeHint:0];

    thumbnailLarge = [metadataCopy thumbnailLarge];
    v42 = [managerCopy assetHandleForCKAssetURLString:thumbnailLarge lifetimeHint:0];

    thumbnailExtraLarge = [metadataCopy thumbnailExtraLarge];
    v44 = [managerCopy assetHandleForCKAssetURLString:thumbnailExtraLarge lifetimeHint:0];

    v45 = [FCHeadlineThumbnail headlineThumbnailWithAssetHandle:v38 thumbnailSize:v29, v28];
    thumbnailSmall = v12->_thumbnailSmall;
    v12->_thumbnailSmall = v45;

    v47 = [FCHeadlineThumbnail headlineThumbnailWithAssetHandle:v40 thumbnailSize:v32, v31];
    thumbnailMedium = v12->_thumbnailMedium;
    v12->_thumbnailMedium = v47;

    v49 = [FCHeadlineThumbnail headlineThumbnailWithAssetHandle:v42 thumbnailSize:v35, v34];
    thumbnailLarge = v12->_thumbnailLarge;
    v12->_thumbnailLarge = v49;

    v51 = [FCHeadlineThumbnail headlineThumbnailWithAssetHandle:v44 thumbnailSize:v27, v26];
    thumbnailExtraLarge = v12->_thumbnailExtraLarge;
    v12->_thumbnailExtraLarge = v51;

    v12->_thumbnailFocalFrame.origin.x = FCCGRectFromBuffer([metadataCopy thumbnailFocalFrame]);
    v12->_thumbnailFocalFrame.origin.y = v53;
    v12->_thumbnailFocalFrame.size.width = v54;
    v12->_thumbnailFocalFrame.size.height = v55;
    thumbnailPrimaryColor = [metadataCopy thumbnailPrimaryColor];
    v57 = [FCColor colorWithHexString:thumbnailPrimaryColor];
    thumbnailPrimaryColor = v12->_thumbnailPrimaryColor;
    v12->_thumbnailPrimaryColor = v57;

    thumbnailBackgroundColor = [metadataCopy thumbnailBackgroundColor];
    v60 = [FCColor colorWithHexString:thumbnailBackgroundColor];
    thumbnailBackgroundColor = v12->_thumbnailBackgroundColor;
    v12->_thumbnailBackgroundColor = v60;

    thumbnailAccentColor = [metadataCopy thumbnailAccentColor];
    v63 = [FCColor colorWithHexString:thumbnailAccentColor];
    thumbnailAccentColor = v12->_thumbnailAccentColor;
    v12->_thumbnailAccentColor = v63;

    thumbnailTextColor = [metadataCopy thumbnailTextColor];
    v66 = [FCColor colorWithHexString:thumbnailTextColor];
    thumbnailTextColor = v12->_thumbnailTextColor;
    v12->_thumbnailTextColor = v66;

    if (v12->_thumbnailSmall)
    {
      v68 = 1;
    }

    else
    {
      v68 = v12->_thumbnailMedium || v12->_thumbnailLarge || v12->_thumbnailExtraLarge != 0;
    }

    v12->_hasThumbnail = v68;
  }

  return v12;
}

- (FCRecipe)initWithRecipeRecord:(id)record sourceChannel:(id)channel articles:(id)articles assetManager:(id)manager interestToken:(id)token
{
  recordCopy = record;
  channelCopy = channel;
  articlesCopy = articles;
  managerCopy = manager;
  tokenCopy = token;
  v160.receiver = self;
  v160.super_class = FCRecipe;
  v18 = [(FCRecipe *)&v160 init];
  if (v18)
  {
    v157 = tokenCopy;
    v159 = articlesCopy;
    context = objc_autoreleasePoolPush();
    v18->_source = 0;
    objc_storeStrong(&v18->_recipeRecord, record);
    objc_storeStrong(&v18->_interestToken, token);
    v19 = [channelCopy copy];
    sourceChannel = v18->_sourceChannel;
    v18->_sourceChannel = v19;

    base = [recordCopy base];
    identifier = [base identifier];
    v23 = [identifier copy];
    identifier = v18->_identifier;
    v18->_identifier = v23;

    date = [MEMORY[0x1E695DF00] date];
    loadDate = v18->_loadDate;
    v18->_loadDate = date;

    v27 = MEMORY[0x1E695DF00];
    base2 = [recordCopy base];
    fetchDate = [base2 fetchDate];
    v30 = [v27 dateWithPBDate:fetchDate];
    fetchDate = v18->_fetchDate;
    v18->_fetchDate = v30;

    v32 = MEMORY[0x1E695DF00];
    base3 = [recordCopy base];
    modificationDate = [base3 modificationDate];
    v35 = [v32 dateWithPBDate:modificationDate];
    lastModifiedDate = v18->_lastModifiedDate;
    v18->_lastModifiedDate = v35;

    v37 = MEMORY[0x1E695DF00];
    lastReferenceDate = [recordCopy lastReferenceDate];
    v39 = [v37 dateWithPBDate:lastReferenceDate];
    lastReferenceDate = v18->_lastReferenceDate;
    v18->_lastReferenceDate = v39;

    language = [recordCopy language];
    v42 = [language copy];
    language = v18->_language;
    v18->_language = v42;

    title = [recordCopy title];
    v45 = [title copy];
    title = v18->_title;
    v18->_title = v45;

    v47 = MEMORY[0x1E695DF00];
    publishDate = [recordCopy publishDate];
    v49 = [v47 dateWithPBDate:publishDate];
    publishDate = v18->_publishDate;
    v18->_publishDate = v49;

    v18->_paid = [recordCopy isPaid];
    v18->_isDraft = [recordCopy isDraft];
    v18->_minimumNewsVersion = [recordCopy minimumNewsVersion];
    iAdCategories = [recordCopy iAdCategories];
    iAdCategories = v18->_iAdCategories;
    v18->_iAdCategories = iAdCategories;

    iAdKeywords = [recordCopy iAdKeywords];
    iAdKeywords = v18->_iAdKeywords;
    v18->_iAdKeywords = iAdKeywords;

    iAdSectionTagIDs = [recordCopy iAdSectionTagIDs];
    iAdSectionIDs = v18->_iAdSectionIDs;
    v18->_iAdSectionIDs = iAdSectionTagIDs;

    blockedStorefrontIDs = [recordCopy blockedStorefrontIDs];
    blockedStorefrontIDs = v18->_blockedStorefrontIDs;
    v18->_blockedStorefrontIDs = blockedStorefrontIDs;

    allowedStorefrontIDs = [recordCopy allowedStorefrontIDs];
    allowedStorefrontIDs = v18->_allowedStorefrontIDs;
    v18->_allowedStorefrontIDs = allowedStorefrontIDs;

    v18->_thumbnailFocalFrame.origin.x = FCCGRectFromBuffer([recordCopy thumbnailFocalFrame]);
    v18->_thumbnailFocalFrame.origin.y = v61;
    v18->_thumbnailFocalFrame.size.width = v62;
    v18->_thumbnailFocalFrame.size.height = v63;
    thumbnailPerceptualHash = [recordCopy thumbnailPerceptualHash];
    thumbnailPerceptualHash = v18->_thumbnailPerceptualHash;
    v18->_thumbnailPerceptualHash = thumbnailPerceptualHash;

    thumbnailSmallMetadata = [recordCopy thumbnailSmallMetadata];
    v68 = *MEMORY[0x1E695F060];
    v67 = *(MEMORY[0x1E695F060] + 8);
    if (thumbnailSmallMetadata)
    {
      v69 = ((thumbnailSmallMetadata >> 8) & 0xFFFFFFF);
    }

    else
    {
      v69 = *(MEMORY[0x1E695F060] + 8);
    }

    if (thumbnailSmallMetadata)
    {
      v70 = (thumbnailSmallMetadata >> 36);
    }

    else
    {
      v70 = *MEMORY[0x1E695F060];
    }

    thumbnailMediumMetadata = [recordCopy thumbnailMediumMetadata];
    if (thumbnailMediumMetadata)
    {
      v72 = ((thumbnailMediumMetadata >> 8) & 0xFFFFFFF);
    }

    else
    {
      v72 = v67;
    }

    if (thumbnailMediumMetadata)
    {
      v73 = (thumbnailMediumMetadata >> 36);
    }

    else
    {
      v73 = v68;
    }

    thumbnailLargeMetadata = [recordCopy thumbnailLargeMetadata];
    if (thumbnailLargeMetadata)
    {
      v75 = ((thumbnailLargeMetadata >> 8) & 0xFFFFFFF);
    }

    else
    {
      v75 = v67;
    }

    if (thumbnailLargeMetadata)
    {
      v76 = (thumbnailLargeMetadata >> 36);
    }

    else
    {
      v76 = v68;
    }

    thumbnailExtraLargeMetadata = [recordCopy thumbnailExtraLargeMetadata];
    if (thumbnailExtraLargeMetadata)
    {
      v67 = ((thumbnailExtraLargeMetadata >> 8) & 0xFFFFFFF);
      v68 = (thumbnailExtraLargeMetadata >> 36);
    }

    base4 = [recordCopy base];
    thumbnailSmallURL = [recordCopy thumbnailSmallURL];
    v80 = [base4 generateThumbnailAssetHandleForURL:thumbnailSmallURL withAssetManager:managerCopy];

    base5 = [recordCopy base];
    thumbnailMediumURL = [recordCopy thumbnailMediumURL];
    v83 = [base5 generateThumbnailAssetHandleForURL:thumbnailMediumURL withAssetManager:managerCopy];

    base6 = [recordCopy base];
    thumbnailLargeURL = [recordCopy thumbnailLargeURL];
    v86 = [base6 generateThumbnailAssetHandleForURL:thumbnailLargeURL withAssetManager:managerCopy];

    base7 = [recordCopy base];
    thumbnailExtraLargeURL = [recordCopy thumbnailExtraLargeURL];
    v89 = [base7 generateThumbnailAssetHandleForURL:thumbnailExtraLargeURL withAssetManager:managerCopy];

    v155 = v80;
    v90 = [FCHeadlineThumbnail headlineThumbnailWithAssetHandle:v80 thumbnailSize:v70, v69];
    thumbnailSmall = v18->_thumbnailSmall;
    v18->_thumbnailSmall = v90;

    v154 = v83;
    v92 = [FCHeadlineThumbnail headlineThumbnailWithAssetHandle:v83 thumbnailSize:v73, v72];
    thumbnailMedium = v18->_thumbnailMedium;
    v18->_thumbnailMedium = v92;

    v153 = v86;
    v94 = [FCHeadlineThumbnail headlineThumbnailWithAssetHandle:v86 thumbnailSize:v76, v75];
    thumbnailLarge = v18->_thumbnailLarge;
    v18->_thumbnailLarge = v94;

    v152 = v89;
    v96 = [FCHeadlineThumbnail headlineThumbnailWithAssetHandle:v89 thumbnailSize:v68, v67];
    thumbnailExtraLarge = v18->_thumbnailExtraLarge;
    v18->_thumbnailExtraLarge = v96;

    thumbnailPrimaryColor = [recordCopy thumbnailPrimaryColor];
    v99 = [FCColor colorWithHexString:thumbnailPrimaryColor];
    thumbnailPrimaryColor = v18->_thumbnailPrimaryColor;
    v18->_thumbnailPrimaryColor = v99;

    thumbnailBackgroundColor = [recordCopy thumbnailBackgroundColor];
    v102 = [FCColor colorWithHexString:thumbnailBackgroundColor];
    thumbnailBackgroundColor = v18->_thumbnailBackgroundColor;
    v18->_thumbnailBackgroundColor = v102;

    thumbnailAccentColor = [recordCopy thumbnailAccentColor];
    v105 = [FCColor colorWithHexString:thumbnailAccentColor];
    thumbnailAccentColor = v18->_thumbnailAccentColor;
    v18->_thumbnailAccentColor = v105;

    thumbnailTextColor = [recordCopy thumbnailTextColor];
    v108 = [FCColor colorWithHexString:thumbnailTextColor];
    thumbnailTextColor = v18->_thumbnailTextColor;
    v18->_thumbnailTextColor = v108;

    shortExcerpt = [recordCopy shortExcerpt];
    v111 = [shortExcerpt copy];
    shortExcerpt = v18->_shortExcerpt;
    v18->_shortExcerpt = v111;

    contentType = [recordCopy contentType];
    v114 = [contentType componentsSeparatedByString:@"-"];
    if ([v114 count])
    {
      v115 = [v114 objectAtIndexedSubscript:0];
    }

    else
    {
      v115 = @"unknown";
    }

    v158 = channelCopy;
    if ([v114 count] < 2)
    {
      v116 = @"unknown";
    }

    else
    {
      v116 = [v114 objectAtIndexedSubscript:1];
    }

    if ([v114 count] < 3)
    {
      v117 = @"unknown";
    }

    else
    {
      v117 = [v114 objectAtIndexedSubscript:2];
    }

    v18->_contentFormat = FCRecipeContentFormatFromString(v115);
    v18->_contentEncoding = FCRecipeContentEncodingFromString(v116);
    objc_storeStrong(&v18->_contentVersion, v117);
    v118 = [recordCopy generateContentAssetHandleWithAssetManager:managerCopy];
    contentAssetHandle = v18->_contentAssetHandle;
    v18->_contentAssetHandle = v118;

    totalTime = [recordCopy totalTime];
    totalTime = v18->_totalTime;
    v18->_totalTime = totalTime;

    authors = [recordCopy authors];
    authors = v18->_authors;
    v18->_authors = authors;

    topicTagIDs = [recordCopy topicTagIDs];
    topicTagIDs = v18->_topicTagIDs;
    v18->_topicTagIDs = topicTagIDs;

    v126 = [v159 copy];
    articles = v18->_articles;
    v18->_articles = v126;

    objc_storeStrong(&v18->_itemID, v18->_identifier);
    v18->_halfLife = 0;
    identifier2 = [(FCChannelProviding *)v18->_sourceChannel identifier];
    publisherID = v18->_publisherID;
    v18->_publisherID = identifier2;

    v130 = v18->_thumbnailSmall || v18->_thumbnailMedium || v18->_thumbnailLarge || v18->_thumbnailExtraLarge != 0;
    v18->_hasThumbnail = v130;
    topicTagIDs2 = [recordCopy topicTagIDs];
    topicIDs = v18->_topicIDs;
    v18->_topicIDs = topicTagIDs2;

    topics = [recordCopy topics];
    v134 = topics;
    if (topics)
    {
      v135 = topics;
    }

    else
    {
      v135 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(&v18->_topics, v135);

    recipesRecirculationDataURL = [recordCopy recipesRecirculationDataURL];
    if (!recipesRecirculationDataURL)
    {
      goto LABEL_41;
    }

    v137 = recipesRecirculationDataURL;
    v138 = MEMORY[0x1E695DFF8];
    [recordCopy recipesRecirculationDataURL];
    v140 = v139 = contentType;
    v141 = [v138 URLWithString:v140];

    contentType = v139;
    if (v141)
    {
      v142 = [managerCopy assetHandleForURL:v141 lifetimeHint:0];
      recipeRecirculationDataAssetHandle = v18->_recipeRecirculationDataAssetHandle;
      v18->_recipeRecirculationDataAssetHandle = v142;
    }

    else
    {
LABEL_41:
      v141 = v18->_recipeRecirculationDataAssetHandle;
      v18->_recipeRecirculationDataAssetHandle = 0;
    }

    personalizationData = [recordCopy personalizationData];
    personalizationData = v18->_personalizationData;
    v18->_personalizationData = personalizationData;

    rapidUpdatePersonalizationData = [recordCopy rapidUpdatePersonalizationData];
    rapidUpdatePersonalizationData = v18->_rapidUpdatePersonalizationData;
    v18->_rapidUpdatePersonalizationData = rapidUpdatePersonalizationData;

    eventAggregationPersonalizationData = [recordCopy eventAggregationPersonalizationData];
    eventAggregationPersonalizationData = v18->_eventAggregationPersonalizationData;
    v18->_eventAggregationPersonalizationData = eventAggregationPersonalizationData;

    objc_autoreleasePoolPop(context);
    channelCopy = v158;
    articlesCopy = v159;
    tokenCopy = v157;
  }

  return v18;
}

- (FCRecipe)initWithLocalRecipe:(id)recipe assetManager:(id)manager
{
  recipeCopy = recipe;
  managerCopy = manager;
  v56.receiver = self;
  v56.super_class = FCRecipe;
  v8 = [(FCRecipe *)&v56 init];
  v9 = v8;
  if (v8)
  {
    v8->_source = 2;
    v8->_isDraft = 1;
    sourceChannel = [recipeCopy sourceChannel];
    v11 = [sourceChannel copy];
    sourceChannel = v9->_sourceChannel;
    v9->_sourceChannel = v11;

    identifier = [recipeCopy identifier];
    identifier = v9->_identifier;
    v9->_identifier = identifier;

    title = [recipeCopy title];
    title = v9->_title;
    v9->_title = title;

    shortExcerpt = [recipeCopy shortExcerpt];
    shortExcerpt = v9->_shortExcerpt;
    v9->_shortExcerpt = shortExcerpt;

    v9->_paid = 0;
    date = [MEMORY[0x1E695DF00] date];
    publishDate = v9->_publishDate;
    v9->_publishDate = date;

    v9->_contentFormat = [recipeCopy contentFormat];
    v9->_contentEncoding = [recipeCopy contentEncoding];
    contentURL = [recipeCopy contentURL];
    isFileURL = [contentURL isFileURL];

    contentURL2 = [recipeCopy contentURL];
    if (isFileURL)
    {
      contentURL3 = [recipeCopy contentURL];
      v25 = [managerCopy assetHandleForURL:contentURL2 prefetchedFileURL:contentURL3 importMethod:0 lifetimeHint:2];
      contentAssetHandle = v9->_contentAssetHandle;
      v9->_contentAssetHandle = v25;
    }

    else
    {
      v27 = [managerCopy assetHandleForURL:contentURL2 lifetimeHint:2];
      contentURL3 = v9->_contentAssetHandle;
      v9->_contentAssetHandle = v27;
    }

    thumbnailURL = [recipeCopy thumbnailURL];

    if (thumbnailURL)
    {
      thumbnailURL2 = [recipeCopy thumbnailURL];
      isFileURL2 = [thumbnailURL2 isFileURL];

      thumbnailURL3 = [recipeCopy thumbnailURL];
      if (isFileURL2)
      {
        thumbnailURL4 = [recipeCopy thumbnailURL];
        v33 = [managerCopy assetHandleForURL:thumbnailURL3 prefetchedFileURL:thumbnailURL4 importMethod:0 lifetimeHint:2];
      }

      else
      {
        v33 = [managerCopy assetHandleForURL:thumbnailURL3 lifetimeHint:2];
      }

      if (v33)
      {
        v34 = [FCHeadlineThumbnail headlineThumbnailWithAssetHandle:v33 thumbnailSize:128.0, 128.0];
        thumbnailSmall = v9->_thumbnailSmall;
        v9->_thumbnailSmall = v34;

        v36 = [FCHeadlineThumbnail headlineThumbnailWithAssetHandle:v33 thumbnailSize:256.0, 256.0];
        thumbnailMedium = v9->_thumbnailMedium;
        v9->_thumbnailMedium = v36;

        v38 = [FCHeadlineThumbnail headlineThumbnailWithAssetHandle:v33 thumbnailSize:512.0, 512.0];
        thumbnailLarge = v9->_thumbnailLarge;
        v9->_thumbnailLarge = v38;

        v40 = [FCHeadlineThumbnail headlineThumbnailWithAssetHandle:v33 thumbnailSize:1024.0, 1024.0];
        thumbnailExtraLarge = v9->_thumbnailExtraLarge;
        v9->_thumbnailExtraLarge = v40;

        v9->_thumbnailFocalFrame.origin.x = 0.0;
        v9->_thumbnailFocalFrame.origin.y = 0.0;
        __asm { FMOV            V0.2D, #1.0 }

        v9->_thumbnailFocalFrame.size = _Q0;
      }
    }

    thumbnailPrimaryColor = [recipeCopy thumbnailPrimaryColor];

    if (thumbnailPrimaryColor)
    {
      thumbnailPrimaryColor2 = [recipeCopy thumbnailPrimaryColor];
      v49 = [FCColor colorWithHexString:thumbnailPrimaryColor2];
      thumbnailPrimaryColor = v9->_thumbnailPrimaryColor;
      v9->_thumbnailPrimaryColor = v49;
    }

    thumbnailBackgroundColor = [recipeCopy thumbnailBackgroundColor];

    if (thumbnailBackgroundColor)
    {
      thumbnailBackgroundColor2 = [recipeCopy thumbnailBackgroundColor];
      v53 = [FCColor colorWithHexString:thumbnailBackgroundColor2];
      thumbnailBackgroundColor = v9->_thumbnailBackgroundColor;
      v9->_thumbnailBackgroundColor = v53;
    }
  }

  return v9;
}

- (FCRecipeMetadataType)appliedOverrideMetadata
{
  if (self)
  {
    self = objc_getProperty(self, a2, 424, 1);
    v2 = vars8;
  }

  return self;
}

- (void)applyRecipeMetadata:(id)metadata configuration:(id)configuration
{
  if (self)
  {
    objc_setProperty_atomic(self, a2, metadata, 424);
  }
}

- (NSString)title
{
  selfCopy = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 424, 1);
  }

  title = [(FCRecipe *)self title];
  title = title;
  if (!title)
  {
    title = selfCopy->_title;
  }

  v5 = title;

  return title;
}

- (NSString)shortExcerpt
{
  selfCopy = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 424, 1);
  }

  shortExcerpt = [(FCRecipe *)self shortExcerpt];
  shortExcerpt = shortExcerpt;
  if (!shortExcerpt)
  {
    shortExcerpt = selfCopy->_shortExcerpt;
  }

  v5 = shortExcerpt;

  return shortExcerpt;
}

- (FCHeadlineThumbnail)thumbnailSmall
{
  selfCopy = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 424, 1);
  }

  formatThumbnail = [(FCRecipe *)self formatThumbnail];
  lowQualityImage = [formatThumbnail lowQualityImage];
  thumbnail = [lowQualityImage thumbnail];
  thumbnailSmall = thumbnail;
  if (!thumbnail)
  {
    thumbnailSmall = selfCopy->_thumbnailSmall;
  }

  v7 = thumbnailSmall;

  return thumbnailSmall;
}

- (FCHeadlineThumbnail)thumbnailMedium
{
  selfCopy = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 424, 1);
  }

  formatThumbnail = [(FCRecipe *)self formatThumbnail];
  mediumQualityImage = [formatThumbnail mediumQualityImage];
  thumbnail = [mediumQualityImage thumbnail];
  thumbnailMedium = thumbnail;
  if (!thumbnail)
  {
    thumbnailMedium = selfCopy->_thumbnailMedium;
  }

  v7 = thumbnailMedium;

  return thumbnailMedium;
}

- (FCHeadlineThumbnail)thumbnailLarge
{
  selfCopy = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 424, 1);
  }

  formatThumbnail = [(FCRecipe *)self formatThumbnail];
  highQualityImage = [formatThumbnail highQualityImage];
  thumbnail = [highQualityImage thumbnail];
  thumbnailLarge = thumbnail;
  if (!thumbnail)
  {
    thumbnailLarge = selfCopy->_thumbnailLarge;
  }

  v7 = thumbnailLarge;

  return thumbnailLarge;
}

- (FCHeadlineThumbnail)thumbnailExtraLarge
{
  selfCopy = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 424, 1);
  }

  formatThumbnail = [(FCRecipe *)self formatThumbnail];
  ultraQualityImage = [formatThumbnail ultraQualityImage];
  thumbnail = [ultraQualityImage thumbnail];
  thumbnailExtraLarge = thumbnail;
  if (!thumbnail)
  {
    thumbnailExtraLarge = selfCopy->_thumbnailExtraLarge;
  }

  v7 = thumbnailExtraLarge;

  return thumbnailExtraLarge;
}

- (FCColor)thumbnailPrimaryColor
{
  selfCopy = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 424, 1);
  }

  formatThumbnail = [(FCRecipe *)self formatThumbnail];
  primaryColor = [formatThumbnail primaryColor];
  thumbnailPrimaryColor = primaryColor;
  if (!primaryColor)
  {
    thumbnailPrimaryColor = selfCopy->_thumbnailPrimaryColor;
  }

  v6 = thumbnailPrimaryColor;

  return thumbnailPrimaryColor;
}

- (FCColor)thumbnailBackgroundColor
{
  selfCopy = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 424, 1);
  }

  formatThumbnail = [(FCRecipe *)self formatThumbnail];
  backgroundColor = [formatThumbnail backgroundColor];
  thumbnailBackgroundColor = backgroundColor;
  if (!backgroundColor)
  {
    thumbnailBackgroundColor = selfCopy->_thumbnailBackgroundColor;
  }

  v6 = thumbnailBackgroundColor;

  return thumbnailBackgroundColor;
}

- (FCColor)thumbnailTextColor
{
  selfCopy = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 424, 1);
  }

  formatThumbnail = [(FCRecipe *)self formatThumbnail];
  textColor = [formatThumbnail textColor];
  thumbnailTextColor = textColor;
  if (!textColor)
  {
    thumbnailTextColor = selfCopy->_thumbnailTextColor;
  }

  v6 = thumbnailTextColor;

  return thumbnailTextColor;
}

- (FCColor)thumbnailAccentColor
{
  selfCopy = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 424, 1);
  }

  formatThumbnail = [(FCRecipe *)self formatThumbnail];
  accentColor = [formatThumbnail accentColor];
  thumbnailAccentColor = accentColor;
  if (!accentColor)
  {
    thumbnailAccentColor = selfCopy->_thumbnailAccentColor;
  }

  v6 = thumbnailAccentColor;

  return thumbnailAccentColor;
}

- (NSArray)articleIDs
{
  articles = [(FCRecipe *)self articles];
  v3 = [articles fc_arrayByTransformingWithBlock:&__block_literal_global_89];

  return v3;
}

- (FCContentArchive)contentArchive
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __26__FCRecipe_contentArchive__block_invoke;
  v5[3] = &unk_1E7C36D40;
  v5[4] = self;
  v2 = [MEMORY[0x1E695DEC8] fc_array:v5];
  v3 = [FCContentArchive archiveWithChildArchives:v2];

  return v3;
}

void __26__FCRecipe_contentArchive__block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 432);
  }

  else
  {
    v5 = 0;
  }

  v6 = [FCContentArchive archiveWithRecord:v5];
  [v3 fc_safelyAddObject:v6];

  v7 = [*(a1 + 32) sourceChannel];
  v8 = v7;
  if (v7)
  {
    if ([v7 conformsToProtocol:&unk_1F2E828A8])
    {
      v9 = v8;
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

  v10 = v9;

  v11 = [v10 contentArchive];
  [v3 fc_safelyAddObject:v11];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = [*(a1 + 32) articles];
  v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v23;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v22 + 1) + 8 * i);
        if (v17)
        {
          if ([*(*(&v22 + 1) + 8 * i) conformsToProtocol:&unk_1F2E828A8])
          {
            v18 = v17;
          }

          else
          {
            v18 = 0;
          }
        }

        else
        {
          v18 = 0;
        }

        v19 = v18;
        v20 = [v19 contentArchive];
        [v3 fc_safelyAddObject:v20];
      }

      v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v14);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (FCContentManifest)contentManifest
{
  v3 = [FCContentManifest alloc];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __27__FCRecipe_contentManifest__block_invoke;
  v7[3] = &unk_1E7C36D40;
  v7[4] = self;
  v4 = [MEMORY[0x1E695DEC8] fc_array:v7];
  v5 = [(FCContentManifest *)v3 initWithManifests:v4];

  return v5;
}

void __27__FCRecipe_contentManifest__block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 432);
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 base];
  v7 = [v6 contentManifest];
  [v3 fc_safelyAddObject:v7];

  v8 = [*(a1 + 32) sourceChannel];
  v9 = v8;
  if (v8)
  {
    if ([v8 conformsToProtocol:&unk_1F2E828A8])
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = [v11 contentManifest];
  [v3 fc_safelyAddObject:v12];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = [*(a1 + 32) articles];
  v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v24;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v23 + 1) + 8 * i);
        if (v18)
        {
          if ([*(*(&v23 + 1) + 8 * i) conformsToProtocol:&unk_1F2E828A8])
          {
            v19 = v18;
          }

          else
          {
            v19 = 0;
          }
        }

        else
        {
          v19 = 0;
        }

        v20 = v19;
        v21 = [v20 contentManifest];
        [v3 fc_safelyAddObject:v21];
      }

      v15 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v15);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (BOOL)isLocalDraft
{
  if ([(FCRecipe *)self source]!= 2)
  {
    return 0;
  }

  return [(FCRecipe *)self isDraft];
}

- (NSString)sourceChannelID
{
  sourceChannel = [(FCRecipe *)self sourceChannel];
  identifier = [sourceChannel identifier];

  return identifier;
}

- (CGRect)thumbnailFocalFrame
{
  x = self->_thumbnailFocalFrame.origin.x;
  y = self->_thumbnailFocalFrame.origin.y;
  width = self->_thumbnailFocalFrame.size.width;
  height = self->_thumbnailFocalFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end