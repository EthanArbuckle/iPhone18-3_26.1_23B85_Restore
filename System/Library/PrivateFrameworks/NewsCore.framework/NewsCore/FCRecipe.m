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
- (FCRecipe)initWithLocalRecipe:(id)a3 assetManager:(id)a4;
- (FCRecipe)initWithRecipeMetadata:(id)a3 sourceChannel:(id)a4 assetManager:(id)a5;
- (FCRecipe)initWithRecipeRecord:(id)a3 sourceChannel:(id)a4 articles:(id)a5 assetManager:(id)a6 interestToken:(id)a7;
- (FCRecipeMetadataType)appliedOverrideMetadata;
- (NSArray)articleIDs;
- (NSString)shortExcerpt;
- (NSString)sourceChannelID;
- (NSString)title;
- (void)applyRecipeMetadata:(id)a3 configuration:(id)a4;
@end

@implementation FCRecipe

- (FCRecipe)initWithRecipeMetadata:(id)a3 sourceChannel:(id)a4 assetManager:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v70.receiver = self;
  v70.super_class = FCRecipe;
  v11 = [(FCRecipe *)&v70 init];
  v12 = v11;
  if (v11)
  {
    v11->_source = 1;
    v13 = [v9 copy];
    sourceChannel = v12->_sourceChannel;
    v12->_sourceChannel = v13;

    v15 = [(FCChannelProviding *)v12->_sourceChannel identifier];
    publisherID = v12->_publisherID;
    v12->_publisherID = v15;

    v17 = [v8 identifier];
    identifier = v12->_identifier;
    v12->_identifier = v17;

    v19 = [v8 title];
    title = v12->_title;
    v12->_title = v19;

    v21 = [v8 shortExcerpt];
    shortExcerpt = v12->_shortExcerpt;
    v12->_shortExcerpt = v21;

    v12->_paid = [v8 isPaid];
    v23 = [v8 publishDate];
    publishDate = v12->_publishDate;
    v12->_publishDate = v23;

    v12->_isDraft = 0;
    v25 = [v8 thumbnailSmallMetadata];
    v27 = *MEMORY[0x1E695F060];
    v26 = *(MEMORY[0x1E695F060] + 8);
    if (v25)
    {
      v28 = ((v25 >> 8) & 0xFFFFFFF);
    }

    else
    {
      v28 = *(MEMORY[0x1E695F060] + 8);
    }

    if (v25)
    {
      v29 = (v25 >> 36);
    }

    else
    {
      v29 = *MEMORY[0x1E695F060];
    }

    v30 = [v8 thumbnailMediumMetadata];
    if (v30)
    {
      v31 = ((v30 >> 8) & 0xFFFFFFF);
    }

    else
    {
      v31 = v26;
    }

    if (v30)
    {
      v32 = (v30 >> 36);
    }

    else
    {
      v32 = v27;
    }

    v33 = [v8 thumbnailLargeMetadata];
    if (v33)
    {
      v34 = ((v33 >> 8) & 0xFFFFFFF);
    }

    else
    {
      v34 = v26;
    }

    if (v33)
    {
      v35 = (v33 >> 36);
    }

    else
    {
      v35 = v27;
    }

    v36 = [v8 thumbnailExtraLargeMetadata];
    if (v36)
    {
      v26 = ((v36 >> 8) & 0xFFFFFFF);
      v27 = (v36 >> 36);
    }

    v37 = [v8 thumbnailSmall];
    v38 = [v10 assetHandleForCKAssetURLString:v37 lifetimeHint:0];

    v39 = [v8 thumbnailMedium];
    v40 = [v10 assetHandleForCKAssetURLString:v39 lifetimeHint:0];

    v41 = [v8 thumbnailLarge];
    v42 = [v10 assetHandleForCKAssetURLString:v41 lifetimeHint:0];

    v43 = [v8 thumbnailExtraLarge];
    v44 = [v10 assetHandleForCKAssetURLString:v43 lifetimeHint:0];

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

    v12->_thumbnailFocalFrame.origin.x = FCCGRectFromBuffer([v8 thumbnailFocalFrame]);
    v12->_thumbnailFocalFrame.origin.y = v53;
    v12->_thumbnailFocalFrame.size.width = v54;
    v12->_thumbnailFocalFrame.size.height = v55;
    v56 = [v8 thumbnailPrimaryColor];
    v57 = [FCColor colorWithHexString:v56];
    thumbnailPrimaryColor = v12->_thumbnailPrimaryColor;
    v12->_thumbnailPrimaryColor = v57;

    v59 = [v8 thumbnailBackgroundColor];
    v60 = [FCColor colorWithHexString:v59];
    thumbnailBackgroundColor = v12->_thumbnailBackgroundColor;
    v12->_thumbnailBackgroundColor = v60;

    v62 = [v8 thumbnailAccentColor];
    v63 = [FCColor colorWithHexString:v62];
    thumbnailAccentColor = v12->_thumbnailAccentColor;
    v12->_thumbnailAccentColor = v63;

    v65 = [v8 thumbnailTextColor];
    v66 = [FCColor colorWithHexString:v65];
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

- (FCRecipe)initWithRecipeRecord:(id)a3 sourceChannel:(id)a4 articles:(id)a5 assetManager:(id)a6 interestToken:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v160.receiver = self;
  v160.super_class = FCRecipe;
  v18 = [(FCRecipe *)&v160 init];
  if (v18)
  {
    v157 = v17;
    v159 = v15;
    context = objc_autoreleasePoolPush();
    v18->_source = 0;
    objc_storeStrong(&v18->_recipeRecord, a3);
    objc_storeStrong(&v18->_interestToken, a7);
    v19 = [v14 copy];
    sourceChannel = v18->_sourceChannel;
    v18->_sourceChannel = v19;

    v21 = [v13 base];
    v22 = [v21 identifier];
    v23 = [v22 copy];
    identifier = v18->_identifier;
    v18->_identifier = v23;

    v25 = [MEMORY[0x1E695DF00] date];
    loadDate = v18->_loadDate;
    v18->_loadDate = v25;

    v27 = MEMORY[0x1E695DF00];
    v28 = [v13 base];
    v29 = [v28 fetchDate];
    v30 = [v27 dateWithPBDate:v29];
    fetchDate = v18->_fetchDate;
    v18->_fetchDate = v30;

    v32 = MEMORY[0x1E695DF00];
    v33 = [v13 base];
    v34 = [v33 modificationDate];
    v35 = [v32 dateWithPBDate:v34];
    lastModifiedDate = v18->_lastModifiedDate;
    v18->_lastModifiedDate = v35;

    v37 = MEMORY[0x1E695DF00];
    v38 = [v13 lastReferenceDate];
    v39 = [v37 dateWithPBDate:v38];
    lastReferenceDate = v18->_lastReferenceDate;
    v18->_lastReferenceDate = v39;

    v41 = [v13 language];
    v42 = [v41 copy];
    language = v18->_language;
    v18->_language = v42;

    v44 = [v13 title];
    v45 = [v44 copy];
    title = v18->_title;
    v18->_title = v45;

    v47 = MEMORY[0x1E695DF00];
    v48 = [v13 publishDate];
    v49 = [v47 dateWithPBDate:v48];
    publishDate = v18->_publishDate;
    v18->_publishDate = v49;

    v18->_paid = [v13 isPaid];
    v18->_isDraft = [v13 isDraft];
    v18->_minimumNewsVersion = [v13 minimumNewsVersion];
    v51 = [v13 iAdCategories];
    iAdCategories = v18->_iAdCategories;
    v18->_iAdCategories = v51;

    v53 = [v13 iAdKeywords];
    iAdKeywords = v18->_iAdKeywords;
    v18->_iAdKeywords = v53;

    v55 = [v13 iAdSectionTagIDs];
    iAdSectionIDs = v18->_iAdSectionIDs;
    v18->_iAdSectionIDs = v55;

    v57 = [v13 blockedStorefrontIDs];
    blockedStorefrontIDs = v18->_blockedStorefrontIDs;
    v18->_blockedStorefrontIDs = v57;

    v59 = [v13 allowedStorefrontIDs];
    allowedStorefrontIDs = v18->_allowedStorefrontIDs;
    v18->_allowedStorefrontIDs = v59;

    v18->_thumbnailFocalFrame.origin.x = FCCGRectFromBuffer([v13 thumbnailFocalFrame]);
    v18->_thumbnailFocalFrame.origin.y = v61;
    v18->_thumbnailFocalFrame.size.width = v62;
    v18->_thumbnailFocalFrame.size.height = v63;
    v64 = [v13 thumbnailPerceptualHash];
    thumbnailPerceptualHash = v18->_thumbnailPerceptualHash;
    v18->_thumbnailPerceptualHash = v64;

    v66 = [v13 thumbnailSmallMetadata];
    v68 = *MEMORY[0x1E695F060];
    v67 = *(MEMORY[0x1E695F060] + 8);
    if (v66)
    {
      v69 = ((v66 >> 8) & 0xFFFFFFF);
    }

    else
    {
      v69 = *(MEMORY[0x1E695F060] + 8);
    }

    if (v66)
    {
      v70 = (v66 >> 36);
    }

    else
    {
      v70 = *MEMORY[0x1E695F060];
    }

    v71 = [v13 thumbnailMediumMetadata];
    if (v71)
    {
      v72 = ((v71 >> 8) & 0xFFFFFFF);
    }

    else
    {
      v72 = v67;
    }

    if (v71)
    {
      v73 = (v71 >> 36);
    }

    else
    {
      v73 = v68;
    }

    v74 = [v13 thumbnailLargeMetadata];
    if (v74)
    {
      v75 = ((v74 >> 8) & 0xFFFFFFF);
    }

    else
    {
      v75 = v67;
    }

    if (v74)
    {
      v76 = (v74 >> 36);
    }

    else
    {
      v76 = v68;
    }

    v77 = [v13 thumbnailExtraLargeMetadata];
    if (v77)
    {
      v67 = ((v77 >> 8) & 0xFFFFFFF);
      v68 = (v77 >> 36);
    }

    v78 = [v13 base];
    v79 = [v13 thumbnailSmallURL];
    v80 = [v78 generateThumbnailAssetHandleForURL:v79 withAssetManager:v16];

    v81 = [v13 base];
    v82 = [v13 thumbnailMediumURL];
    v83 = [v81 generateThumbnailAssetHandleForURL:v82 withAssetManager:v16];

    v84 = [v13 base];
    v85 = [v13 thumbnailLargeURL];
    v86 = [v84 generateThumbnailAssetHandleForURL:v85 withAssetManager:v16];

    v87 = [v13 base];
    v88 = [v13 thumbnailExtraLargeURL];
    v89 = [v87 generateThumbnailAssetHandleForURL:v88 withAssetManager:v16];

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

    v98 = [v13 thumbnailPrimaryColor];
    v99 = [FCColor colorWithHexString:v98];
    thumbnailPrimaryColor = v18->_thumbnailPrimaryColor;
    v18->_thumbnailPrimaryColor = v99;

    v101 = [v13 thumbnailBackgroundColor];
    v102 = [FCColor colorWithHexString:v101];
    thumbnailBackgroundColor = v18->_thumbnailBackgroundColor;
    v18->_thumbnailBackgroundColor = v102;

    v104 = [v13 thumbnailAccentColor];
    v105 = [FCColor colorWithHexString:v104];
    thumbnailAccentColor = v18->_thumbnailAccentColor;
    v18->_thumbnailAccentColor = v105;

    v107 = [v13 thumbnailTextColor];
    v108 = [FCColor colorWithHexString:v107];
    thumbnailTextColor = v18->_thumbnailTextColor;
    v18->_thumbnailTextColor = v108;

    v110 = [v13 shortExcerpt];
    v111 = [v110 copy];
    shortExcerpt = v18->_shortExcerpt;
    v18->_shortExcerpt = v111;

    v113 = [v13 contentType];
    v114 = [v113 componentsSeparatedByString:@"-"];
    if ([v114 count])
    {
      v115 = [v114 objectAtIndexedSubscript:0];
    }

    else
    {
      v115 = @"unknown";
    }

    v158 = v14;
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
    v118 = [v13 generateContentAssetHandleWithAssetManager:v16];
    contentAssetHandle = v18->_contentAssetHandle;
    v18->_contentAssetHandle = v118;

    v120 = [v13 totalTime];
    totalTime = v18->_totalTime;
    v18->_totalTime = v120;

    v122 = [v13 authors];
    authors = v18->_authors;
    v18->_authors = v122;

    v124 = [v13 topicTagIDs];
    topicTagIDs = v18->_topicTagIDs;
    v18->_topicTagIDs = v124;

    v126 = [v159 copy];
    articles = v18->_articles;
    v18->_articles = v126;

    objc_storeStrong(&v18->_itemID, v18->_identifier);
    v18->_halfLife = 0;
    v128 = [(FCChannelProviding *)v18->_sourceChannel identifier];
    publisherID = v18->_publisherID;
    v18->_publisherID = v128;

    v130 = v18->_thumbnailSmall || v18->_thumbnailMedium || v18->_thumbnailLarge || v18->_thumbnailExtraLarge != 0;
    v18->_hasThumbnail = v130;
    v131 = [v13 topicTagIDs];
    topicIDs = v18->_topicIDs;
    v18->_topicIDs = v131;

    v133 = [v13 topics];
    v134 = v133;
    if (v133)
    {
      v135 = v133;
    }

    else
    {
      v135 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(&v18->_topics, v135);

    v136 = [v13 recipesRecirculationDataURL];
    if (!v136)
    {
      goto LABEL_41;
    }

    v137 = v136;
    v138 = MEMORY[0x1E695DFF8];
    [v13 recipesRecirculationDataURL];
    v140 = v139 = v113;
    v141 = [v138 URLWithString:v140];

    v113 = v139;
    if (v141)
    {
      v142 = [v16 assetHandleForURL:v141 lifetimeHint:0];
      recipeRecirculationDataAssetHandle = v18->_recipeRecirculationDataAssetHandle;
      v18->_recipeRecirculationDataAssetHandle = v142;
    }

    else
    {
LABEL_41:
      v141 = v18->_recipeRecirculationDataAssetHandle;
      v18->_recipeRecirculationDataAssetHandle = 0;
    }

    v144 = [v13 personalizationData];
    personalizationData = v18->_personalizationData;
    v18->_personalizationData = v144;

    v146 = [v13 rapidUpdatePersonalizationData];
    rapidUpdatePersonalizationData = v18->_rapidUpdatePersonalizationData;
    v18->_rapidUpdatePersonalizationData = v146;

    v148 = [v13 eventAggregationPersonalizationData];
    eventAggregationPersonalizationData = v18->_eventAggregationPersonalizationData;
    v18->_eventAggregationPersonalizationData = v148;

    objc_autoreleasePoolPop(context);
    v14 = v158;
    v15 = v159;
    v17 = v157;
  }

  return v18;
}

- (FCRecipe)initWithLocalRecipe:(id)a3 assetManager:(id)a4
{
  v6 = a3;
  v7 = a4;
  v56.receiver = self;
  v56.super_class = FCRecipe;
  v8 = [(FCRecipe *)&v56 init];
  v9 = v8;
  if (v8)
  {
    v8->_source = 2;
    v8->_isDraft = 1;
    v10 = [v6 sourceChannel];
    v11 = [v10 copy];
    sourceChannel = v9->_sourceChannel;
    v9->_sourceChannel = v11;

    v13 = [v6 identifier];
    identifier = v9->_identifier;
    v9->_identifier = v13;

    v15 = [v6 title];
    title = v9->_title;
    v9->_title = v15;

    v17 = [v6 shortExcerpt];
    shortExcerpt = v9->_shortExcerpt;
    v9->_shortExcerpt = v17;

    v9->_paid = 0;
    v19 = [MEMORY[0x1E695DF00] date];
    publishDate = v9->_publishDate;
    v9->_publishDate = v19;

    v9->_contentFormat = [v6 contentFormat];
    v9->_contentEncoding = [v6 contentEncoding];
    v21 = [v6 contentURL];
    v22 = [v21 isFileURL];

    v23 = [v6 contentURL];
    if (v22)
    {
      v24 = [v6 contentURL];
      v25 = [v7 assetHandleForURL:v23 prefetchedFileURL:v24 importMethod:0 lifetimeHint:2];
      contentAssetHandle = v9->_contentAssetHandle;
      v9->_contentAssetHandle = v25;
    }

    else
    {
      v27 = [v7 assetHandleForURL:v23 lifetimeHint:2];
      v24 = v9->_contentAssetHandle;
      v9->_contentAssetHandle = v27;
    }

    v28 = [v6 thumbnailURL];

    if (v28)
    {
      v29 = [v6 thumbnailURL];
      v30 = [v29 isFileURL];

      v31 = [v6 thumbnailURL];
      if (v30)
      {
        v32 = [v6 thumbnailURL];
        v33 = [v7 assetHandleForURL:v31 prefetchedFileURL:v32 importMethod:0 lifetimeHint:2];
      }

      else
      {
        v33 = [v7 assetHandleForURL:v31 lifetimeHint:2];
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

    v47 = [v6 thumbnailPrimaryColor];

    if (v47)
    {
      v48 = [v6 thumbnailPrimaryColor];
      v49 = [FCColor colorWithHexString:v48];
      thumbnailPrimaryColor = v9->_thumbnailPrimaryColor;
      v9->_thumbnailPrimaryColor = v49;
    }

    v51 = [v6 thumbnailBackgroundColor];

    if (v51)
    {
      v52 = [v6 thumbnailBackgroundColor];
      v53 = [FCColor colorWithHexString:v52];
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

- (void)applyRecipeMetadata:(id)a3 configuration:(id)a4
{
  if (self)
  {
    objc_setProperty_atomic(self, a2, a3, 424);
  }
}

- (NSString)title
{
  v2 = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 424, 1);
  }

  v3 = [(FCRecipe *)self title];
  title = v3;
  if (!v3)
  {
    title = v2->_title;
  }

  v5 = title;

  return title;
}

- (NSString)shortExcerpt
{
  v2 = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 424, 1);
  }

  v3 = [(FCRecipe *)self shortExcerpt];
  shortExcerpt = v3;
  if (!v3)
  {
    shortExcerpt = v2->_shortExcerpt;
  }

  v5 = shortExcerpt;

  return shortExcerpt;
}

- (FCHeadlineThumbnail)thumbnailSmall
{
  v2 = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 424, 1);
  }

  v3 = [(FCRecipe *)self formatThumbnail];
  v4 = [v3 lowQualityImage];
  v5 = [v4 thumbnail];
  thumbnailSmall = v5;
  if (!v5)
  {
    thumbnailSmall = v2->_thumbnailSmall;
  }

  v7 = thumbnailSmall;

  return thumbnailSmall;
}

- (FCHeadlineThumbnail)thumbnailMedium
{
  v2 = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 424, 1);
  }

  v3 = [(FCRecipe *)self formatThumbnail];
  v4 = [v3 mediumQualityImage];
  v5 = [v4 thumbnail];
  thumbnailMedium = v5;
  if (!v5)
  {
    thumbnailMedium = v2->_thumbnailMedium;
  }

  v7 = thumbnailMedium;

  return thumbnailMedium;
}

- (FCHeadlineThumbnail)thumbnailLarge
{
  v2 = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 424, 1);
  }

  v3 = [(FCRecipe *)self formatThumbnail];
  v4 = [v3 highQualityImage];
  v5 = [v4 thumbnail];
  thumbnailLarge = v5;
  if (!v5)
  {
    thumbnailLarge = v2->_thumbnailLarge;
  }

  v7 = thumbnailLarge;

  return thumbnailLarge;
}

- (FCHeadlineThumbnail)thumbnailExtraLarge
{
  v2 = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 424, 1);
  }

  v3 = [(FCRecipe *)self formatThumbnail];
  v4 = [v3 ultraQualityImage];
  v5 = [v4 thumbnail];
  thumbnailExtraLarge = v5;
  if (!v5)
  {
    thumbnailExtraLarge = v2->_thumbnailExtraLarge;
  }

  v7 = thumbnailExtraLarge;

  return thumbnailExtraLarge;
}

- (FCColor)thumbnailPrimaryColor
{
  v2 = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 424, 1);
  }

  v3 = [(FCRecipe *)self formatThumbnail];
  v4 = [v3 primaryColor];
  thumbnailPrimaryColor = v4;
  if (!v4)
  {
    thumbnailPrimaryColor = v2->_thumbnailPrimaryColor;
  }

  v6 = thumbnailPrimaryColor;

  return thumbnailPrimaryColor;
}

- (FCColor)thumbnailBackgroundColor
{
  v2 = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 424, 1);
  }

  v3 = [(FCRecipe *)self formatThumbnail];
  v4 = [v3 backgroundColor];
  thumbnailBackgroundColor = v4;
  if (!v4)
  {
    thumbnailBackgroundColor = v2->_thumbnailBackgroundColor;
  }

  v6 = thumbnailBackgroundColor;

  return thumbnailBackgroundColor;
}

- (FCColor)thumbnailTextColor
{
  v2 = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 424, 1);
  }

  v3 = [(FCRecipe *)self formatThumbnail];
  v4 = [v3 textColor];
  thumbnailTextColor = v4;
  if (!v4)
  {
    thumbnailTextColor = v2->_thumbnailTextColor;
  }

  v6 = thumbnailTextColor;

  return thumbnailTextColor;
}

- (FCColor)thumbnailAccentColor
{
  v2 = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 424, 1);
  }

  v3 = [(FCRecipe *)self formatThumbnail];
  v4 = [v3 accentColor];
  thumbnailAccentColor = v4;
  if (!v4)
  {
    thumbnailAccentColor = v2->_thumbnailAccentColor;
  }

  v6 = thumbnailAccentColor;

  return thumbnailAccentColor;
}

- (NSArray)articleIDs
{
  v2 = [(FCRecipe *)self articles];
  v3 = [v2 fc_arrayByTransformingWithBlock:&__block_literal_global_89];

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
  v2 = [(FCRecipe *)self sourceChannel];
  v3 = [v2 identifier];

  return v3;
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