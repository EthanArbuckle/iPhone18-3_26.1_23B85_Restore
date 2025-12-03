@interface FCArticleHeadline
+ (__CFString)_tempOverrideMIMETypeForURL:(uint64_t)l;
- (CGRect)thumbnailFocalFrame;
- (FCArticleHeadline)init;
- (FCArticleHeadline)initWithArticleMetadata:(id)metadata sourceChannel:(id)channel assetManager:(id)manager;
- (FCArticleHeadline)initWithArticleRecord:(id)record articleInterestToken:(id)token sourceChannel:(id)channel parentIssue:(id)issue storyStyleConfigs:(id)configs storyTypeTimeout:(int64_t)timeout rapidUpdatesTimeout:(int64_t)updatesTimeout assetManager:(id)self0 experimentalTitleProvider:(id)self1;
- (FCArticleHeadline)initWithArticleRecordData:(id)data sourceChannel:(id)channel parentIssue:(id)issue storyStyleConfigs:(id)configs storyTypeTimeout:(int64_t)timeout rapidUpdatesTimeout:(int64_t)updatesTimeout assetManager:(id)manager experimentalTitleProvider:(id)self0;
- (FCContentArchive)contentArchive;
- (FCContentManifest)contentManifest;
- (NSString)stocksClusterID;
- (NSString)stocksMetadataJSON;
- (NSString)stocksScoresJSON;
- (id)backingArticleRecordData;
- (id)contentWithContext:(id)context;
- (id)publisherID;
- (id)publisherSpecifiedArticleIDs;
- (id)thumbnailImageAccentColor;
- (id)thumbnailImageBackgroundColor;
- (id)thumbnailImagePrimaryColor;
- (id)thumbnailImageTextColor;
@end

@implementation FCArticleHeadline

void __43__FCArticleHeadline__fakeArticlesTimestamp__block_invoke()
{
  v0 = NewsCoreUserDefaults();
  byte_1EDB268E2 = [v0 BOOLForKey:@"newsfeed.content.show_fake_timestamps"];
}

void __55__FCArticleHeadline__forceArticlesToBeShownAsSponsored__block_invoke()
{
  v0 = NewsCoreUserDefaults();
  _MergedGlobals_17 = [v0 BOOLForKey:@"force_articles_to_be_shown_as_sponsored"];
}

void __46__FCArticleHeadline__simulateTopStoriesBadges__block_invoke()
{
  v0 = NewsCoreUserDefaults();
  byte_1EDB268E1 = [v0 BOOLForKey:@"simulate_top_stories_badges"];
}

- (FCArticleHeadline)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v9 = "[FCArticleHeadline init]";
    v10 = 2080;
    v11 = "FCArticleHeadline.m";
    v12 = 1024;
    v13 = 176;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "-[FCArticleHeadline init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCArticleHeadline)initWithArticleMetadata:(id)metadata sourceChannel:(id)channel assetManager:(id)manager
{
  metadataCopy = metadata;
  channelCopy = channel;
  managerCopy = manager;
  v94.receiver = self;
  v94.super_class = FCArticleHeadline;
  v11 = [(FCHeadline *)&v94 init];
  if (v11)
  {
    v12 = [channelCopy copy];
    sourceChannel = v11->_sourceChannel;
    v11->_sourceChannel = v12;

    name = [channelCopy name];
    sourceName = v11->_sourceName;
    v11->_sourceName = name;

    articleID = [metadataCopy articleID];
    identifier = v11->_identifier;
    v11->_identifier = articleID;

    articleID2 = [metadataCopy articleID];
    articleID = v11->_articleID;
    v11->_articleID = articleID2;

    title = [metadataCopy title];
    title = v11->_title;
    v11->_title = title;

    publishDate = [metadataCopy publishDate];
    publishDate = v11->_publishDate;
    v11->_publishDate = publishDate;

    v11->_contentType = [metadataCopy contentType];
    thumbnailTextColor = [metadataCopy thumbnailTextColor];
    v25 = [FCColor nullableColorWithHexString:thumbnailTextColor];
    thumbnailImageTextColor = v11->_thumbnailImageTextColor;
    v11->_thumbnailImageTextColor = v25;

    thumbnailBackgroundColor = [metadataCopy thumbnailBackgroundColor];
    v28 = [FCColor nullableColorWithHexString:thumbnailBackgroundColor];
    thumbnailImageBackgroundColor = v11->_thumbnailImageBackgroundColor;
    v11->_thumbnailImageBackgroundColor = v28;

    thumbnailAccentColor = [metadataCopy thumbnailAccentColor];
    v31 = [FCColor nullableColorWithHexString:thumbnailAccentColor];
    thumbnailImageAccentColor = v11->_thumbnailImageAccentColor;
    v11->_thumbnailImageAccentColor = v31;

    thumbnailPrimaryColor = [metadataCopy thumbnailPrimaryColor];
    v34 = [FCColor nullableColorWithHexString:thumbnailPrimaryColor];
    thumbnailImagePrimaryColor = v11->_thumbnailImagePrimaryColor;
    v11->_thumbnailImagePrimaryColor = v34;

    v11->_thumbnailFocalFrame.origin.x = FCCGRectFromBuffer([metadataCopy thumbnailFocalFrame]);
    v11->_thumbnailFocalFrame.origin.y = v36;
    v11->_thumbnailFocalFrame.size.width = v37;
    v11->_thumbnailFocalFrame.size.height = v38;
    thumbnail = [metadataCopy thumbnail];

    v40 = MEMORY[0x1E695F060];
    if (thumbnail)
    {
      thumbnailMetadata = [metadataCopy thumbnailMetadata];
      v42 = *(v40 + 1);
      if (thumbnailMetadata)
      {
        v43 = ((thumbnailMetadata >> 8) & 0xFFFFFFF);
      }

      else
      {
        v43 = v40[1];
      }

      if (thumbnailMetadata)
      {
        v44 = (thumbnailMetadata >> 36);
      }

      else
      {
        v44 = *v40;
      }

      thumbnail2 = [metadataCopy thumbnail];
      v46 = [managerCopy assetHandleForCKAssetURLString:thumbnail2 lifetimeHint:0];

      v47 = [FCHeadlineThumbnail headlineThumbnailWithAssetHandle:v46 thumbnailSize:v44, v43];
      thumbnail = v11->_thumbnail;
      v11->_thumbnail = v47;
    }

    thumbnailHQ = [metadataCopy thumbnailHQ];

    if (thumbnailHQ)
    {
      thumbnailHQMetadata = [metadataCopy thumbnailHQMetadata];
      v51 = *(v40 + 1);
      if (thumbnailHQMetadata)
      {
        v52 = ((thumbnailHQMetadata >> 8) & 0xFFFFFFF);
      }

      else
      {
        v52 = v40[1];
      }

      if (thumbnailHQMetadata)
      {
        v53 = (thumbnailHQMetadata >> 36);
      }

      else
      {
        v53 = *v40;
      }

      thumbnailHQ2 = [metadataCopy thumbnailHQ];
      v55 = [managerCopy assetHandleForCKAssetURLString:thumbnailHQ2 lifetimeHint:0];

      v56 = [FCHeadlineThumbnail headlineThumbnailWithAssetHandle:v55 thumbnailSize:v53, v52];
      thumbnailHQ = v11->_thumbnailHQ;
      v11->_thumbnailHQ = v56;
    }

    thumbnailMedium = [metadataCopy thumbnailMedium];

    if (thumbnailMedium)
    {
      thumbnailMediumMetadata = [metadataCopy thumbnailMediumMetadata];
      v60 = *(v40 + 1);
      if (thumbnailMediumMetadata)
      {
        v61 = ((thumbnailMediumMetadata >> 8) & 0xFFFFFFF);
      }

      else
      {
        v61 = v40[1];
      }

      if (thumbnailMediumMetadata)
      {
        v62 = (thumbnailMediumMetadata >> 36);
      }

      else
      {
        v62 = *v40;
      }

      thumbnailHQ3 = [metadataCopy thumbnailHQ];
      v64 = [managerCopy assetHandleForCKAssetURLString:thumbnailHQ3 lifetimeHint:0];

      v65 = [FCHeadlineThumbnail headlineThumbnailWithAssetHandle:v64 thumbnailSize:v62, v61];
      v66 = v11->_thumbnailHQ;
      v11->_thumbnailHQ = v65;
    }

    thumbnailHQ4 = [metadataCopy thumbnailHQ];

    if (thumbnailHQ4)
    {
      thumbnailHQMetadata2 = [metadataCopy thumbnailHQMetadata];
      v69 = *(v40 + 1);
      if (thumbnailHQMetadata2)
      {
        v70 = ((thumbnailHQMetadata2 >> 8) & 0xFFFFFFF);
      }

      else
      {
        v70 = v40[1];
      }

      if (thumbnailHQMetadata2)
      {
        v71 = (thumbnailHQMetadata2 >> 36);
      }

      else
      {
        v71 = *v40;
      }

      thumbnailHQ5 = [metadataCopy thumbnailHQ];
      v73 = [managerCopy assetHandleForCKAssetURLString:thumbnailHQ5 lifetimeHint:0];

      v74 = [FCHeadlineThumbnail headlineThumbnailWithAssetHandle:v73 thumbnailSize:v71, v70];
      v75 = v11->_thumbnailHQ;
      v11->_thumbnailHQ = v74;

      v11->_hasThumbnail = 1;
    }

    thumbnailUltraHQ = [metadataCopy thumbnailUltraHQ];

    if (thumbnailUltraHQ)
    {
      thumbnailUltraHQMetadata = [metadataCopy thumbnailUltraHQMetadata];
      v78 = *(v40 + 1);
      if (thumbnailUltraHQMetadata)
      {
        v79 = ((thumbnailUltraHQMetadata >> 8) & 0xFFFFFFF);
      }

      else
      {
        v79 = v40[1];
      }

      if (thumbnailUltraHQMetadata)
      {
        v80 = (thumbnailUltraHQMetadata >> 36);
      }

      else
      {
        v80 = *v40;
      }

      thumbnailUltraHQ2 = [metadataCopy thumbnailUltraHQ];
      v82 = [managerCopy assetHandleForCKAssetURLString:thumbnailUltraHQ2 lifetimeHint:0];

      v83 = [FCHeadlineThumbnail headlineThumbnailWithAssetHandle:v82 thumbnailSize:v80, v79];
      thumbnailUltraHQ = v11->_thumbnailUltraHQ;
      v11->_thumbnailUltraHQ = v83;

      v11->_hasThumbnail = 1;
    }

    videoURL = [metadataCopy videoURL];
    v86 = [videoURL length];
    if (v86)
    {
      v87 = [MEMORY[0x1E695DFF8] URLWithString:videoURL];
    }

    else
    {
      v87 = 0;
    }

    objc_storeStrong(&v11->_videoURL, v87);
    if (v86)
    {
    }

    v88 = v11->_thumbnail || v11->_thumbnailMedium || v11->_thumbnailHQ || v11->_thumbnailUltraHQ != 0;
    v11->_hasThumbnail = v88;
    v11->_paid = [metadataCopy isPaid];
    v11->_bundlePaid = [metadataCopy isPaid];
    routeURL = [metadataCopy routeURL];
    routeURL = v11->_routeURL;
    v11->_routeURL = routeURL;

    contentURL = [metadataCopy contentURL];
    if (contentURL)
    {
      v92 = [MEMORY[0x1E695DFF8] URLWithString:contentURL];
    }

    else
    {
      v92 = 0;
    }

    objc_storeStrong(&v11->_contentURL, v92);
    if (contentURL)
    {
    }

    v11->_role = 1;
    v11->_dataSource = 1;
  }

  return v11;
}

- (FCArticleHeadline)initWithArticleRecord:(id)record articleInterestToken:(id)token sourceChannel:(id)channel parentIssue:(id)issue storyStyleConfigs:(id)configs storyTypeTimeout:(int64_t)timeout rapidUpdatesTimeout:(int64_t)updatesTimeout assetManager:(id)self0 experimentalTitleProvider:(id)self1
{
  v349 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  tokenCopy = token;
  channelCopy = channel;
  issueCopy = issue;
  configsCopy = configs;
  managerCopy = manager;
  providerCopy = provider;
  if (!recordCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v289 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "articleRecord"];
    *buf = 136315906;
    *&buf[4] = "[FCArticleHeadline initWithArticleRecord:articleInterestToken:sourceChannel:parentIssue:storyStyleConfigs:storyTypeTimeout:rapidUpdatesTimeout:assetManager:experimentalTitleProvider:]";
    *&buf[12] = 2080;
    *&buf[14] = "FCArticleHeadline.m";
    *&buf[22] = 1024;
    LODWORD(v347) = 265;
    WORD2(v347) = 2114;
    *(&v347 + 6) = v289;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v344.receiver = self;
  v344.super_class = FCArticleHeadline;
  v22 = [(FCHeadline *)&v344 init];
  if (v22)
  {
    v338 = issueCopy;
    context = objc_autoreleasePoolPush();
    objc_storeStrong(&v22->_articleRecord, record);
    objc_storeStrong(&v22->_articleInterestToken, token);
    v23 = [channelCopy copy];
    sourceChannel = v22->_sourceChannel;
    v22->_sourceChannel = v23;

    name = [channelCopy name];
    sourceName = v22->_sourceName;
    v22->_sourceName = name;

    v27 = MEMORY[0x1E69E58C0];
    sourceChannelTagID = [(NTPBArticleRecord *)v22->_articleRecord sourceChannelTagID];
    identifier = [(FCChannelProviding *)v22->_sourceChannel identifier];
    LOBYTE(v27) = [v27 nf_object:sourceChannelTagID isEqualToObject:identifier];

    if ((v27 & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v290 = objc_alloc(MEMORY[0x1E696AEC0]);
      v291 = objc_opt_class();
      v292 = NSStringFromClass(v291);
      sourceChannelTagID2 = [(NTPBArticleRecord *)v22->_articleRecord sourceChannelTagID];
      identifier2 = [(FCChannelProviding *)v22->_sourceChannel identifier];
      v294 = [v290 initWithFormat:@"Attempting to initialize a %@ with mismatched articleRecord sourceChannelTagID : %@ and sourceChannel identifier : %@", v292, sourceChannelTagID2, identifier2];
      *buf = 136315906;
      *&buf[4] = "[FCArticleHeadline initWithArticleRecord:articleInterestToken:sourceChannel:parentIssue:storyStyleConfigs:storyTypeTimeout:rapidUpdatesTimeout:assetManager:experimentalTitleProvider:]";
      *&buf[12] = 2080;
      *&buf[14] = "FCArticleHeadline.m";
      *&buf[22] = 1024;
      LODWORD(v347) = 296;
      WORD2(v347) = 2114;
      *(&v347 + 6) = v294;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    base = [recordCopy base];
    identifier3 = [base identifier];

    objc_storeStrong(&v22->_identifier, identifier3);
    v340 = identifier3;
    objc_storeStrong(&v22->_articleID, identifier3);
    v22->_featureCandidate = [recordCopy isFeatureCandidate];
    referencedArticleID = [recordCopy referencedArticleID];
    referencedArticleID = v22->_referencedArticleID;
    v22->_referencedArticleID = referencedArticleID;

    clusterID = [recordCopy clusterID];
    clusterID = v22->_clusterID;
    v22->_clusterID = clusterID;

    language = [recordCopy language];
    language = v22->_language;
    v22->_language = language;

    v22->_bodyTextLength = [recordCopy bodyTextLength];
    float16TitleEncoding = [recordCopy float16TitleEncoding];
    float16TitleEncoding = v22->_float16TitleEncoding;
    v22->_float16TitleEncoding = float16TitleEncoding;

    float16FullBodyEncoding = [recordCopy float16FullBodyEncoding];
    float16FullBodyEncoding = v22->_float16FullBodyEncoding;
    v22->_float16FullBodyEncoding = float16FullBodyEncoding;

    expirationData = [recordCopy expirationData];
    LODWORD(identifier3) = [expirationData hasGlobalExpireUtcTime];

    if (identifier3)
    {
      v43 = MEMORY[0x1E695DF00];
      expirationData2 = [recordCopy expirationData];
      v45 = [v43 dateWithTimeIntervalSince1970:{objc_msgSend(expirationData2, "globalExpireUtcTime") / 1000.0}];
      globalExpirationTime = v22->_globalExpirationTime;
      v22->_globalExpirationTime = v45;
    }

    expirationData3 = [recordCopy expirationData];
    tagsExpirationLists = [expirationData3 tagsExpirationLists];
    v49 = [FCArticleTagsExpiration tagsExpirationsFromRecord:tagsExpirationLists];
    tagsExpiration = v22->_tagsExpiration;
    v22->_tagsExpiration = v49;

    title = [recordCopy title];
    v52 = title;
    if (providerCopy)
    {
      experimentalTitles = [recordCopy experimentalTitles];
      v54 = [providerCopy headlineMetadataFromTitle:v52 fromExperimentalTitles:experimentalTitles forArticleID:v340];
      experimentalTitleMetadata = v22->_experimentalTitleMetadata;
      v22->_experimentalTitleMetadata = v54;

      chosenTitle = [(FCHeadlineExperimentalTitleMetadata *)v22->_experimentalTitleMetadata chosenTitle];
      v57 = 952;
    }

    else
    {
      title = v22->_title;
      v22->_title = title;

      chosenTitle = 0;
      v57 = 968;
    }

    v59 = *(&v22->super.super.isa + v57);
    *(&v22->super.super.isa + v57) = chosenTitle;

    v339 = channelCopy;
    if (![(NSString *)v22->_title length])
    {
      v60 = FCDefaultLog;
      if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
      {
        v296 = v60;
        title2 = [recordCopy title];
        v298 = title2;
        if (title2)
        {
          v299 = title2;
        }

        else
        {
          v299 = @"nil";
        }

        experimentalTitles2 = [recordCopy experimentalTitles];
        v301 = experimentalTitles2;
        *buf = 138543874;
        if (experimentalTitles2)
        {
          v302 = experimentalTitles2;
        }

        else
        {
          v302 = @"nil";
        }

        *&buf[4] = v340;
        *&buf[12] = 2114;
        *&buf[14] = v299;
        *&buf[22] = 2114;
        *&v347 = v302;
        _os_log_error_impl(&dword_1B63EF000, v296, OS_LOG_TYPE_ERROR, "Headline article [%{public}@] was assigned an empty title! Original record had title=[%{public}@] experimentalTitles=[%{public}@]", buf, 0x20u);
      }
    }

    titleCompact = [recordCopy titleCompact];
    titleCompact = v22->_titleCompact;
    v22->_titleCompact = titleCompact;

    primaryAudience = [recordCopy primaryAudience];
    primaryAudience = v22->_primaryAudience;
    v22->_primaryAudience = primaryAudience;

    v65 = MEMORY[0x1E695DF00];
    publishDate = [recordCopy publishDate];
    v67 = [v65 dateWithPBDate:publishDate];

    objc_opt_self();
    if (qword_1EDB268F8 != -1)
    {
      dispatch_once(&qword_1EDB268F8, &__block_literal_global_55_0);
    }

    v68 = byte_1EDB268E2;
    fc_adjustToRecentDate = v67;
    if (byte_1EDB268E2 == 1)
    {
      fc_adjustToRecentDate = [v67 fc_adjustToRecentDate];
    }

    objc_storeStrong(&v22->_publishDate, fc_adjustToRecentDate);
    if (v68)
    {
    }

    v22->_publisherArticleVersion = [recordCopy publisherArticleVersion];
    v22->_backendArticleVersion = [recordCopy backendArticleVersion];
    v22->_thumbnailFocalFrame.origin.x = FCCGRectFromBuffer([recordCopy thumbnailFocalFrame]);
    v22->_thumbnailFocalFrame.origin.y = v70;
    v22->_thumbnailFocalFrame.size.width = v71;
    v22->_thumbnailFocalFrame.size.height = v72;
    thumbnailPerceptualHash = [recordCopy thumbnailPerceptualHash];
    thumbnailPerceptualHash = v22->_thumbnailPerceptualHash;
    v22->_thumbnailPerceptualHash = thumbnailPerceptualHash;

    thumbnailLQMetadata = [recordCopy thumbnailLQMetadata];
    v77 = *MEMORY[0x1E695F060];
    v76 = *(MEMORY[0x1E695F060] + 8);
    v78 = v76;
    v79 = *MEMORY[0x1E695F060];
    if (thumbnailLQMetadata)
    {
      v78 = ((thumbnailLQMetadata >> 8) & 0xFFFFFFF);
      v79 = (thumbnailLQMetadata >> 36);
    }

    thumbnailMetadata = [recordCopy thumbnailMetadata];
    v81 = v76;
    v82 = v77;
    if (thumbnailMetadata)
    {
      v81 = ((thumbnailMetadata >> 8) & 0xFFFFFFF);
      v82 = (thumbnailMetadata >> 36);
    }

    thumbnailMediumMetadata = [recordCopy thumbnailMediumMetadata];
    v84 = v76;
    v85 = v77;
    if (thumbnailMediumMetadata)
    {
      v84 = ((thumbnailMediumMetadata >> 8) & 0xFFFFFFF);
      v85 = (thumbnailMediumMetadata >> 36);
    }

    v324 = v85;
    thumbnailHQMetadata = [recordCopy thumbnailHQMetadata];
    v87 = v76;
    v88 = v77;
    if (thumbnailHQMetadata)
    {
      v87 = ((thumbnailHQMetadata >> 8) & 0xFFFFFFF);
      v88 = (thumbnailHQMetadata >> 36);
    }

    v322 = v88;
    v325 = v87;
    thumbnailUltraHQMetadata = [recordCopy thumbnailUltraHQMetadata];
    v90 = v76;
    v91 = v77;
    if (thumbnailUltraHQMetadata)
    {
      v90 = ((thumbnailUltraHQMetadata >> 8) & 0xFFFFFFF);
      v91 = (thumbnailUltraHQMetadata >> 36);
    }

    v320 = v91;
    v323 = v90;
    thumbnailWidgetLQMetadata = [recordCopy thumbnailWidgetLQMetadata];
    v93 = v76;
    v94 = v77;
    if (thumbnailWidgetLQMetadata)
    {
      v93 = ((thumbnailWidgetLQMetadata >> 8) & 0xFFFFFFF);
      v94 = (thumbnailWidgetLQMetadata >> 36);
    }

    v318 = v94;
    v321 = v93;
    thumbnailWidgetMetadata = [recordCopy thumbnailWidgetMetadata];
    v96 = v76;
    v97 = v77;
    if (thumbnailWidgetMetadata)
    {
      v96 = ((thumbnailWidgetMetadata >> 8) & 0xFFFFFFF);
      v97 = (thumbnailWidgetMetadata >> 36);
    }

    v317 = v97;
    v319 = v96;
    v327 = v67;
    thumbnailWidgetHQMetadata = [recordCopy thumbnailWidgetHQMetadata];
    if (thumbnailWidgetHQMetadata)
    {
      v76 = ((thumbnailWidgetHQMetadata >> 8) & 0xFFFFFFF);
      v77 = (thumbnailWidgetHQMetadata >> 36);
    }

    thumbnailLQURL = [recordCopy thumbnailLQURL];
    v337 = [recordCopy generateThumbnailAssetHandleForURL:thumbnailLQURL withAssetManager:managerCopy];

    thumbnailURL = [recordCopy thumbnailURL];
    v336 = [recordCopy generateThumbnailAssetHandleForURL:thumbnailURL withAssetManager:managerCopy];

    thumbnailMediumURL = [recordCopy thumbnailMediumURL];
    v335 = [recordCopy generateThumbnailAssetHandleForURL:thumbnailMediumURL withAssetManager:managerCopy];

    thumbnailHQURL = [recordCopy thumbnailHQURL];
    v334 = [recordCopy generateThumbnailAssetHandleForURL:thumbnailHQURL withAssetManager:managerCopy];

    thumbnailUltraHQURL = [recordCopy thumbnailUltraHQURL];
    v333 = [recordCopy generateThumbnailAssetHandleForURL:thumbnailUltraHQURL withAssetManager:managerCopy];

    thumbnailWidgetLQURL = [recordCopy thumbnailWidgetLQURL];
    v332 = [recordCopy generateThumbnailAssetHandleForURL:thumbnailWidgetLQURL withAssetManager:managerCopy];

    thumbnailWidgetURL = [recordCopy thumbnailWidgetURL];
    v331 = [recordCopy generateThumbnailAssetHandleForURL:thumbnailWidgetURL withAssetManager:managerCopy];

    thumbnailWidgetHQURL = [recordCopy thumbnailWidgetHQURL];
    v326 = [recordCopy generateThumbnailAssetHandleForURL:thumbnailWidgetHQURL withAssetManager:managerCopy];

    shortExcerpt = [recordCopy shortExcerpt];
    shortExcerpt = v22->_shortExcerpt;
    v22->_shortExcerpt = shortExcerpt;

    accessoryText = [recordCopy accessoryText];
    accessoryText = v22->_accessoryText;
    v22->_accessoryText = accessoryText;

    v111 = MEMORY[0x1E695DF00];
    base2 = [recordCopy base];
    modificationDate = [base2 modificationDate];
    v114 = [v111 dateWithPBDate:modificationDate];
    lastModifiedDate = v22->_lastModifiedDate;
    v22->_lastModifiedDate = v114;

    v116 = MEMORY[0x1E695DF00];
    base3 = [recordCopy base];
    fetchDate = [base3 fetchDate];
    v119 = [v116 dateWithPBDate:fetchDate];
    lastFetchedDate = v22->_lastFetchedDate;
    v22->_lastFetchedDate = v119;

    topics = [recordCopy topics];
    topics = v22->_topics;
    v22->_topics = topics;

    topicIDs = [recordCopy topicIDs];
    topicIDs = v22->_topicIDs;
    v22->_topicIDs = topicIDs;

    globalCohorts = [recordCopy globalCohorts];
    globalCohorts = v22->_globalCohorts;
    v22->_globalCohorts = globalCohorts;

    globalConversionStats = [recordCopy globalConversionStats];
    globalConversionStats = v22->_globalConversionStats;
    v22->_globalConversionStats = globalConversionStats;

    sourceChannelCohorts = [recordCopy sourceChannelCohorts];
    publisherCohorts = v22->_publisherCohorts;
    v22->_publisherCohorts = sourceChannelCohorts;

    channelConversionStats = [recordCopy channelConversionStats];
    publisherConversionStats = v22->_publisherConversionStats;
    v22->_publisherConversionStats = channelConversionStats;

    channelTagMetadata = [recordCopy channelTagMetadata];
    publisherTagMetadata = v22->_publisherTagMetadata;
    v22->_publisherTagMetadata = channelTagMetadata;

    if ([recordCopy isSponsored])
    {
      v135 = 1;
      v136 = issueCopy;
    }

    else
    {
      objc_opt_self();
      if (qword_1EDB268E8 != -1)
      {
        dispatch_once(&qword_1EDB268E8, &__block_literal_global_51_1);
      }

      v136 = issueCopy;
      v135 = _MergedGlobals_17;
    }

    v22->_sponsored = v135 & 1;
    iAdCategories = [recordCopy iAdCategories];
    iAdCategories = v22->_iAdCategories;
    v22->_iAdCategories = iAdCategories;

    iAdKeywords = [recordCopy iAdKeywords];
    iAdKeywords = v22->_iAdKeywords;
    v22->_iAdKeywords = iAdKeywords;

    iAdSectionIDs = [recordCopy iAdSectionIDs];
    iAdSectionIDs = v22->_iAdSectionIDs;
    v22->_iAdSectionIDs = iAdSectionIDs;

    v22->_isDraft = [recordCopy isDraft];
    blockedStorefrontIDs = [recordCopy blockedStorefrontIDs];
    blockedStorefrontIDs = v22->_blockedStorefrontIDs;
    v22->_blockedStorefrontIDs = blockedStorefrontIDs;

    allowedStorefrontIDs = [recordCopy allowedStorefrontIDs];
    allowedStorefrontIDs = v22->_allowedStorefrontIDs;
    v22->_allowedStorefrontIDs = allowedStorefrontIDs;

    base4 = [recordCopy base];
    v22->_deleted = [base4 deletedFromCloud];

    relatedArticleIDs = [recordCopy relatedArticleIDs];
    relatedArticleIDs = v22->_relatedArticleIDs;
    v22->_relatedArticleIDs = relatedArticleIDs;

    moreFromPublisherArticleIDs = [recordCopy moreFromPublisherArticleIDs];
    moreFromPublisherArticleIDs = v22->_moreFromPublisherArticleIDs;
    v22->_moreFromPublisherArticleIDs = moreFromPublisherArticleIDs;

    v152 = [recordCopy contentType] - 1;
    if (v152 < 3)
    {
      v153 = v152 + 1;
    }

    else
    {
      v153 = 0;
    }

    v22->_contentType = v153;
    v22->_role = FCArticleRoleFromPBRole([recordCopy role]);
    v154 = [v136 copy];
    parentIssue = v22->_parentIssue;
    v22->_parentIssue = v154;

    if (v136)
    {
      [(FCHeadline *)v22 markAsEvergreen];
    }

    v22->_halfLife = [recordCopy halfLifeMilliseconds];
    v22->_halfLifeOverride = [recordCopy halfLifeMillisecondsOverride];
    linkedArticleIDs = [recordCopy linkedArticleIDs];
    linkedArticleIDs = v22->_linkedArticleIDs;
    v22->_linkedArticleIDs = linkedArticleIDs;

    linkedIssueIDs = [recordCopy linkedIssueIDs];
    linkedIssueIDs = v22->_linkedIssueIDs;
    v22->_linkedIssueIDs = linkedIssueIDs;

    authors = [recordCopy authors];
    authors = v22->_authors;
    v22->_authors = authors;

    contentURL = [recordCopy contentURL];
    if (contentURL)
    {
      v163 = [MEMORY[0x1E695DFF8] URLWithString:contentURL];
    }

    else
    {
      v163 = 0;
    }

    objc_storeStrong(&v22->_contentURL, v163);
    if (contentURL)
    {
    }

    v330 = contentURL;
    videoURL = [recordCopy videoURL];
    v165 = [videoURL length];
    v316 = videoURL;
    if (v165)
    {
      v166 = [MEMORY[0x1E695DFF8] URLWithString:videoURL];
    }

    else
    {
      v166 = 0;
    }

    objc_storeStrong(&v22->_videoURL, v166);
    if (v165)
    {
    }

    videoStillImageURL = [recordCopy videoStillImageURL];
    v168 = [recordCopy generateThumbnailAssetHandleForURL:videoStillImageURL withAssetManager:managerCopy];
    videoStillImage = v22->_videoStillImage;
    v22->_videoStillImage = v168;

    [recordCopy videoDuration];
    v22->_videoDuration = v170;
    v171 = [FCCoverArt alloc];
    coverArt = [recordCopy coverArt];
    v173 = [(FCCoverArt *)v171 initWithJSONString:coverArt];
    coverArt = v22->_coverArt;
    v22->_coverArt = v173;

    videoCallToActionTitle = [recordCopy videoCallToActionTitle];
    v176 = [videoCallToActionTitle copy];
    videoCallToActionTitle = v22->_videoCallToActionTitle;
    v22->_videoCallToActionTitle = v176;

    videoCallToActionURL = [recordCopy videoCallToActionURL];
    if (videoCallToActionURL)
    {
      v179 = [MEMORY[0x1E695DFF8] URLWithString:videoCallToActionURL];
      videoCallToActionURL = v22->_videoCallToActionURL;
      v22->_videoCallToActionURL = v179;
    }

    videoType = [recordCopy videoType];
    videoType = v22->_videoType;
    v22->_videoType = videoType;

    sportsEventIDs = [recordCopy sportsEventIDs];
    sportsEventIDs = v22->_sportsEventIDs;
    v22->_sportsEventIDs = sportsEventIDs;

    recipeIDs = [recordCopy recipeIDs];
    recipeIDs = v22->_recipeIDs;
    v22->_recipeIDs = recipeIDs;

    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSinceDate:v22->_lastModifiedDate];
    v189 = v188;

    objc_opt_self();
    v315 = videoCallToActionURL;
    if (qword_1EDB268F0 != -1)
    {
      dispatch_once(&qword_1EDB268F0, &__block_literal_global_53);
    }

    if (byte_1EDB268E1 == 1)
    {
      v190 = arc4random_uniform(3u);
      v191 = v190 - 4;
      if (v190 - 4 > 0xFFFFFFFA)
      {
        v22->_storyType = v190 + 2;
        date = [MEMORY[0x1E696AD98] numberWithInt:?];
        v192 = [configsCopy objectForKey:date];
      }

      else
      {
        v192 = 0;
        v22->_storyType = 0;
      }

      objc_storeStrong(&v22->_storyStyle, v192);
      if (v191 >= 0xFFFFFFFB)
      {
      }
    }

    behaviorFlags = [recordCopy behaviorFlags];
    LOWORD(behaviorFlags) = behaviorFlags;
    v22->_behaviorFlags = behaviorFlags;
    v342 = managerCopy;
    if (behaviorFlags)
    {
      if (v189 >= updatesTimeout)
      {
        v196 = FCDefaultLog;
        v197 = os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT);
        v195 = 0;
        if (v197)
        {
          v198 = v196;
          articleID = [(FCArticleHeadline *)v22 articleID];
          v200 = v22->_lastModifiedDate;
          v201 = [MEMORY[0x1E696AD98] numberWithLongLong:updatesTimeout];
          *buf = 138543874;
          *&buf[4] = articleID;
          *&buf[12] = 2114;
          *&buf[14] = v200;
          *&buf[22] = 2114;
          *&v347 = v201;
          _os_log_impl(&dword_1B63EF000, v198, OS_LOG_TYPE_DEFAULT, "Headline will ignore rapid-updates flag due to rapid-updates timeout, articleID=%{public}@, lastModified=%{public}@, timeout=%{public}@", buf, 0x20u);

          v195 = 0;
          behaviorFlags = v22->_behaviorFlags;
        }
      }

      else
      {
        v195 = 1;
      }

      v22->_needsRapidUpdates = v195;
    }

    v22->_disableTapToChannel = (behaviorFlags & 2) != 0;
    v22->_boundToContext = (behaviorFlags & 4) != 0;
    v22->_hiddenFromFeeds = (behaviorFlags & 8) != 0;
    v22->_pressRelease = (behaviorFlags & 0x10) != 0;
    v22->_hiddenFromAutoFavorites = (behaviorFlags & 0x20) != 0;
    v22->_webEmbedsEnabled = (behaviorFlags & 0x40) != 0;
    v22->_showBundleSoftPaywall = (behaviorFlags & 0x80) != 0;
    v22->_disableBookmarking = (behaviorFlags & 0x200) != 0;
    v22->_hideModalCloseButton = (behaviorFlags & 0x400) != 0;
    v22->_reduceVisibility = (behaviorFlags & 0x800) != 0;
    v22->_webConverted = (behaviorFlags & 0x1000) != 0;
    v22->_disablePrerollAds = (behaviorFlags & 0x4000) != 0;
    v22->_aiGenerated = (behaviorFlags & 0x8000) != 0;
    v22->_minimumNewsVersion = [recordCopy minimumNewsVersion];
    v22->_paid = [recordCopy isPaid];
    v22->_bundlePaid = [recordCopy isBundlePaid];
    v22->_canBePurchased = [v339 isPurchaseSetup];
    v22->_issueOnly = [recordCopy isIssueOnly];
    layeredCover = [recordCopy layeredCover];
    v203 = [layeredCover copy];
    layeredThumbnailJSON = v22->_layeredThumbnailJSON;
    v22->_layeredThumbnailJSON = v203;

    [recordCopy layeredCoverAspectRatio];
    v22->_layeredThumbnailAspectRatio = v205;
    routeURL = [recordCopy routeURL];
    v207 = [routeURL length];
    if (v207)
    {
      v208 = [MEMORY[0x1E695DFF8] URLWithString:routeURL];
    }

    else
    {
      v208 = 0;
    }

    objc_storeStrong(&v22->_routeURL, v208);
    if (v207)
    {
    }

    v22->_dataSource = 0;
    if ([recordCopy schemaFlags])
    {
      articleRecirculationConfigurationURL = [recordCopy articleRecirculationConfigurationURL];

      v212 = v330;
      if (!articleRecirculationConfigurationURL)
      {
LABEL_83:
        v329 = tokenCopy;
        v215 = recordCopy;
        v216 = v342;
        v217 = MEMORY[0x1E695DFF8];
        narrativeTrackFullURL = [v215 narrativeTrackFullURL];
        v219 = [v217 fc_safeURLWithString:narrativeTrackFullURL];

        if (v219)
        {
          v220 = v219;
          narrativeTrackMetadata = [v215 narrativeTrackMetadata];
          if (narrativeTrackMetadata)
          {
            v345 = 0;
            v314 = narrativeTrackMetadata;
            v222 = [MEMORY[0x1E695DF20] fc_dictionaryFromJSON:narrativeTrackMetadata error:&v345];
            v223 = v345;
            if (v222)
            {
              v310 = v223;
              v313 = v220;
              v224 = [v222 objectForKeyedSubscript:@"description"];
              excerpt = v22->_excerpt;
              v22->_excerpt = v224;

              v226 = [v222 objectForKeyedSubscript:@"narrators"];
              narrators = v22->_narrators;
              v22->_narrators = v226;

              v228 = [v222 objectForKeyedSubscript:@"preferredUpsellVariant"];
              narrativeTrackPreferredUpsellVariantID = v22->_narrativeTrackPreferredUpsellVariantID;
              v22->_narrativeTrackPreferredUpsellVariantID = v228;

              v230 = [v222 objectForKeyedSubscript:@"upNext"];
              v231 = MEMORY[0x1E695DEC8];
              *buf = MEMORY[0x1E69E9820];
              *&buf[8] = 3221225472;
              *&buf[16] = __72__FCArticleHeadline__adoptNarrativeTrackFromArticleRecord_assetManager___block_invoke_48;
              *&v347 = &unk_1E7C36D40;
              v309 = v230;
              *(&v347 + 1) = v309;
              v232 = [v231 fc_array:buf];
              narrativeTrackBuddyArticleIDs = v22->_narrativeTrackBuddyArticleIDs;
              v22->_narrativeTrackBuddyArticleIDs = v232;

              [v215 narrativeTrackFullIdentifier];
              v312 = v311 = v216;
              if (v216)
              {
                v234 = v216[14];
              }

              else
              {
                v234 = 0;
              }

              v235 = v234;
              v236 = [FCArticleHeadline _tempOverrideMIMETypeForURL:v313];
              v237 = [v235 assetWithIdentifier:v312 remoteURL:v313 overrideMIMEType:v236];

              v238 = [FCArticleAudioTrack alloc];
              v239 = [v222 objectForKeyedSubscript:@"fullTrackDuration"];
              [v239 doubleValue];
              v308 = v237;
              v240 = [(FCArticleAudioTrack *)v238 initWithType:0 asset:v237 duration:?];
              narrativeTrack = v22->_narrativeTrack;
              v22->_narrativeTrack = v240;

              v242 = MEMORY[0x1E695DFF8];
              narrativeTrackSampleURL = [v215 narrativeTrackSampleURL];
              v244 = [v242 fc_safeURLWithString:narrativeTrackSampleURL];

              if (v244)
              {
                v307 = v82;
                v245 = v84;
                v246 = v79;
                v247 = v81;
                narrativeTrackSampleIdentifier = [v215 narrativeTrackSampleIdentifier];
                v249 = v311;
                v305 = routeURL;
                v250 = v78;
                if (v311)
                {
                  v249 = v311[14];
                }

                v251 = v249;
                v252 = [FCArticleHeadline _tempOverrideMIMETypeForURL:v244];
                v306 = narrativeTrackSampleIdentifier;
                v253 = [v251 assetWithIdentifier:narrativeTrackSampleIdentifier remoteURL:v244 overrideMIMEType:v252];

                v304 = [FCArticleAudioTrack alloc];
                v254 = [v222 objectForKeyedSubscript:@"sampleTrackDuration"];
                [v254 doubleValue];
                v256 = v255;
                v257 = [v222 objectForKeyedSubscript:@"sampleTrackEmbeddedUpsellStartTime"];
                [v257 doubleValue];
                v259 = v258;
                v260 = [v222 objectForKeyedSubscript:@"sampleTrackEmbeddedUpsellEndTime"];
                [v260 doubleValue];
                v262 = [(FCArticleAudioTrack *)v304 initWithType:0 asset:v253 duration:v256 embeddedUpsellStartTime:v259 embeddedUpsellEndTime:v261];
                narrativeTrackSample = v22->_narrativeTrackSample;
                v22->_narrativeTrackSample = v262;

                routeURL = v305;
                v264 = v306;
                v78 = v250;
                v81 = v247;
                v79 = v246;
                v84 = v245;
                v82 = v307;
              }

              else
              {
                v266 = v22->_narrativeTrack;
                v264 = v22->_narrativeTrackSample;
                v22->_narrativeTrackSample = v266;
              }

              narrativeTrackTextRanges = [v215 narrativeTrackTextRanges];
              narrativeTrackTextRanges = v22->_narrativeTrackTextRanges;
              v22->_narrativeTrackTextRanges = narrativeTrackTextRanges;

              v212 = v330;
              v265 = v310;
              v216 = v311;
              v220 = v313;
            }

            else
            {
              *buf = MEMORY[0x1E69E9820];
              *&buf[8] = 3221225472;
              *&buf[16] = __72__FCArticleHeadline__adoptNarrativeTrackFromArticleRecord_assetManager___block_invoke_47;
              *&v347 = &unk_1E7C36C58;
              *(&v347 + 1) = v22;
              v265 = v223;
              v348 = v223;
              __72__FCArticleHeadline__adoptNarrativeTrackFromArticleRecord_assetManager___block_invoke_47(buf);
            }

            narrativeTrackMetadata = v314;
          }

          else
          {
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = __72__FCArticleHeadline__adoptNarrativeTrackFromArticleRecord_assetManager___block_invoke_2;
            *&v347 = &unk_1E7C36EA0;
            *(&v347 + 1) = v22;
            __72__FCArticleHeadline__adoptNarrativeTrackFromArticleRecord_assetManager___block_invoke_2(buf);
          }
        }

        objc_autoreleasePoolPop(context);
        v269 = [FCHeadlineThumbnail headlineThumbnailWithAssetHandle:v337 thumbnailSize:v79, v78];
        thumbnailLQ = v22->_thumbnailLQ;
        v22->_thumbnailLQ = v269;

        v271 = [FCHeadlineThumbnail headlineThumbnailWithAssetHandle:v336 thumbnailSize:v82, v81];
        thumbnail = v22->_thumbnail;
        v22->_thumbnail = v271;

        v273 = [FCHeadlineThumbnail headlineThumbnailWithAssetHandle:v335 thumbnailSize:v324, v84];
        thumbnailMedium = v22->_thumbnailMedium;
        v22->_thumbnailMedium = v273;

        v325 = [FCHeadlineThumbnail headlineThumbnailWithAssetHandle:v334 thumbnailSize:v322, v325];
        thumbnailHQ = v22->_thumbnailHQ;
        v22->_thumbnailHQ = v325;

        v323 = [FCHeadlineThumbnail headlineThumbnailWithAssetHandle:v333 thumbnailSize:v320, v323];
        thumbnailUltraHQ = v22->_thumbnailUltraHQ;
        v22->_thumbnailUltraHQ = v323;

        v321 = [FCHeadlineThumbnail headlineThumbnailWithAssetHandle:v332 thumbnailSize:v318, v321];
        thumbnailWidgetLQ = v22->_thumbnailWidgetLQ;
        v22->_thumbnailWidgetLQ = v321;

        v319 = [FCHeadlineThumbnail headlineThumbnailWithAssetHandle:v331 thumbnailSize:v317, v319];
        thumbnailWidget = v22->_thumbnailWidget;
        v22->_thumbnailWidget = v319;

        v283 = [FCHeadlineThumbnail headlineThumbnailWithAssetHandle:v326 thumbnailSize:v77, v76];
        thumbnailWidgetHQ = v22->_thumbnailWidgetHQ;
        v22->_thumbnailWidgetHQ = v283;

        if (v22->_thumbnailLQ)
        {
          v285 = 1;
          tokenCopy = v329;
          issueCopy = v338;
          channelCopy = v339;
        }

        else
        {
          tokenCopy = v329;
          if (v22->_thumbnail || v22->_thumbnailMedium)
          {
            v285 = 1;
            issueCopy = v338;
            channelCopy = v339;
          }

          else
          {
            issueCopy = v338;
            if (v22->_thumbnailHQ)
            {
              v285 = 1;
            }

            else
            {
              v285 = v22->_thumbnailUltraHQ != 0;
            }

            channelCopy = v339;
          }
        }

        v22->_hasThumbnail = v285;
        managerCopy = v342;
        if (!v22->_halfLife)
        {
          halfLife = 21600000;
          if (issueCopy && [issueCopy halfLife])
          {
            halfLife = [issueCopy halfLife];
          }

          v22->_halfLife = halfLife;
        }

        if (v22->_videoURL && [(FCArticleHeadline *)v22 contentType]!= 2 && v22->_videoURL && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v303 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"The videoURL field should only be set for ANF articles"];
          *buf = 136315906;
          *&buf[4] = "[FCArticleHeadline initWithArticleRecord:articleInterestToken:sourceChannel:parentIssue:storyStyleConfigs:storyTypeTimeout:rapidUpdatesTimeout:assetManager:experimentalTitleProvider:]";
          *&buf[12] = 2080;
          *&buf[14] = "FCArticleHeadline.m";
          *&buf[22] = 1024;
          LODWORD(v347) = 521;
          WORD2(v347) = 2114;
          *(&v347 + 6) = v303;
          _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
        }

        goto LABEL_114;
      }

      articleRecirculationConfigurationURL2 = [recordCopy articleRecirculationConfigurationURL];
      v211 = [v342 assetHandleForCKAssetURLString:articleRecirculationConfigurationURL2 lifetimeHint:2];
    }

    else
    {
      v209 = FCCKLocalizedArticleArticleRecirculationConfigurationKey();
      articleRecirculationConfigurationURL2 = [FCRecordFieldURLProtocol URLForRecordID:v340 fieldName:v209];

      v211 = [v342 assetHandleForURL:articleRecirculationConfigurationURL2 lifetimeHint:2];
      v212 = v330;
    }

    articleRecirculationConfigAssetHandle = v22->_articleRecirculationConfigAssetHandle;
    v22->_articleRecirculationConfigAssetHandle = v211;

    goto LABEL_83;
  }

LABEL_114:

  v287 = *MEMORY[0x1E69E9840];
  return v22;
}

- (FCArticleHeadline)initWithArticleRecordData:(id)data sourceChannel:(id)channel parentIssue:(id)issue storyStyleConfigs:(id)configs storyTypeTimeout:(int64_t)timeout rapidUpdatesTimeout:(int64_t)updatesTimeout assetManager:(id)manager experimentalTitleProvider:(id)self0
{
  v35 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  channelCopy = channel;
  issueCopy = issue;
  configsCopy = configs;
  managerCopy = manager;
  providerCopy = provider;
  v22 = [objc_alloc(MEMORY[0x1E69B6CF8]) initWithData:dataCopy];
  if (v22)
  {
    self = [(FCArticleHeadline *)self initWithArticleRecord:v22 articleInterestToken:0 sourceChannel:channelCopy parentIssue:issueCopy storyStyleConfigs:configsCopy storyTypeTimeout:timeout rapidUpdatesTimeout:updatesTimeout assetManager:managerCopy experimentalTitleProvider:providerCopy];
    selfCopy = self;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      dataCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"failed to parse data %@", dataCopy];
      *buf = 136315906;
      v28 = "[FCArticleHeadline initWithArticleRecordData:sourceChannel:parentIssue:storyStyleConfigs:storyTypeTimeout:rapidUpdatesTimeout:assetManager:experimentalTitleProvider:]";
      v29 = 2080;
      v30 = "FCArticleHeadline.m";
      v31 = 1024;
      v32 = 537;
      v33 = 2114;
      v34 = dataCopy;
      _os_log_fault_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "*** Assertion failure (Identifier: ReferredArticleDecode) : %s %s:%d %{public}@", buf, 0x26u);
    }

    selfCopy = 0;
  }

  v24 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)contentWithContext:(id)context
{
  contextCopy = context;
  v5 = [FCArticleContent alloc];
  articleRecord = [(FCArticleHeadline *)self articleRecord];
  v7 = [(FCArticleContent *)v5 initWithContext:contextCopy articleRecord:articleRecord];

  return v7;
}

- (id)backingArticleRecordData
{
  articleRecord = [(FCArticleHeadline *)self articleRecord];
  data = [articleRecord data];

  return data;
}

- (id)publisherSpecifiedArticleIDs
{
  articleRecord = [(FCArticleHeadline *)self articleRecord];
  publisherSpecifiedArticleIDs = [articleRecord publisherSpecifiedArticleIDs];

  return publisherSpecifiedArticleIDs;
}

- (id)thumbnailImagePrimaryColor
{
  thumbnailImagePrimaryColor = self->_thumbnailImagePrimaryColor;
  if (thumbnailImagePrimaryColor)
  {
    v3 = thumbnailImagePrimaryColor;
  }

  else
  {
    articleRecord = [(FCArticleHeadline *)self articleRecord];
    thumbnailPrimaryColor = [articleRecord thumbnailPrimaryColor];
    v3 = [FCColor nullableColorWithHexString:thumbnailPrimaryColor];
  }

  return v3;
}

- (id)thumbnailImageBackgroundColor
{
  thumbnailImageBackgroundColor = self->_thumbnailImageBackgroundColor;
  if (thumbnailImageBackgroundColor)
  {
    v3 = thumbnailImageBackgroundColor;
  }

  else
  {
    articleRecord = [(FCArticleHeadline *)self articleRecord];
    thumbnailBackgroundColor = [articleRecord thumbnailBackgroundColor];
    v3 = [FCColor nullableColorWithHexString:thumbnailBackgroundColor];
  }

  return v3;
}

- (id)thumbnailImageTextColor
{
  thumbnailImageTextColor = self->_thumbnailImageTextColor;
  if (thumbnailImageTextColor)
  {
    v3 = thumbnailImageTextColor;
  }

  else
  {
    articleRecord = [(FCArticleHeadline *)self articleRecord];
    thumbnailTextColor = [articleRecord thumbnailTextColor];
    v3 = [FCColor nullableColorWithHexString:thumbnailTextColor];
  }

  return v3;
}

- (id)thumbnailImageAccentColor
{
  thumbnailImageAccentColor = self->_thumbnailImageAccentColor;
  if (thumbnailImageAccentColor)
  {
    v3 = thumbnailImageAccentColor;
  }

  else
  {
    articleRecord = [(FCArticleHeadline *)self articleRecord];
    thumbnailAccentColor = [articleRecord thumbnailAccentColor];
    v3 = [FCColor nullableColorWithHexString:thumbnailAccentColor];
  }

  return v3;
}

- (FCContentArchive)contentArchive
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__FCArticleHeadline_contentArchive__block_invoke;
  v5[3] = &unk_1E7C36D40;
  v5[4] = self;
  v2 = [MEMORY[0x1E695DEC8] fc_array:v5];
  v3 = [FCContentArchive archiveWithChildArchives:v2];

  return v3;
}

void __35__FCArticleHeadline_contentArchive__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 articleRecord];
  v6 = [FCContentArchive archiveWithRecord:v5];
  [v4 fc_safelyAddObject:v6];

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

  v13 = v9;

  v10 = [v13 contentArchive];
  [v4 fc_safelyAddObject:v10];

  v11 = [*(a1 + 32) parentIssue];
  v12 = [v11 contentArchive];
  [v4 fc_safelyAddObject:v12];
}

- (FCContentManifest)contentManifest
{
  v3 = [FCContentManifest alloc];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__FCArticleHeadline_contentManifest__block_invoke;
  v7[3] = &unk_1E7C36D40;
  v7[4] = self;
  v4 = [MEMORY[0x1E695DEC8] fc_array:v7];
  v5 = [(FCContentManifest *)v3 initWithManifests:v4];

  return v5;
}

void __36__FCArticleHeadline_contentManifest__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 articleRecord];
  v6 = [v5 base];
  v7 = [v6 contentManifest];
  [v4 fc_safelyAddObject:v7];

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

  v14 = v10;

  v11 = [v14 contentManifest];
  [v4 fc_safelyAddObject:v11];

  v12 = [*(a1 + 32) parentIssue];
  v13 = [v12 contentManifest];
  [v4 fc_safelyAddObject:v13];
}

- (NSString)stocksClusterID
{
  articleRecord = [(FCArticleHeadline *)self articleRecord];
  stocksClusterID = [articleRecord stocksClusterID];

  return stocksClusterID;
}

- (NSString)stocksMetadataJSON
{
  articleRecord = [(FCArticleHeadline *)self articleRecord];
  stocksMetadata = [articleRecord stocksMetadata];

  return stocksMetadata;
}

- (NSString)stocksScoresJSON
{
  articleRecord = [(FCArticleHeadline *)self articleRecord];
  stocksScores = [articleRecord stocksScores];

  return stocksScores;
}

- (id)publisherID
{
  articleRecord = [(FCArticleHeadline *)self articleRecord];
  sourceChannelTagID = [articleRecord sourceChannelTagID];
  v5 = sourceChannelTagID;
  if (sourceChannelTagID)
  {
    sourceChannelID = sourceChannelTagID;
  }

  else
  {
    sourceChannelID = [(FCHeadline *)self sourceChannelID];
  }

  v7 = sourceChannelID;

  return v7;
}

void __72__FCArticleHeadline__adoptNarrativeTrackFromArticleRecord_assetManager___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = v2;
    v6 = [v4 articleID];
    v7 = 138543362;
    v8 = v6;
    _os_log_error_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_ERROR, "article %{public}@ has a narrative track URL but no metadata", &v7, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

void __72__FCArticleHeadline__adoptNarrativeTrackFromArticleRecord_assetManager___block_invoke_47(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = v2;
    v6 = [v4 articleID];
    v7 = *(a1 + 40);
    v8 = 138543618;
    v9 = v6;
    v10 = 2114;
    v11 = v7;
    _os_log_error_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_ERROR, "failed to parse narrative track metadata for %{public}@ with error: %{public}@", &v8, 0x16u);
  }

  v3 = *MEMORY[0x1E69E9840];
}

void __72__FCArticleHeadline__adoptNarrativeTrackFromArticleRecord_assetManager___block_invoke_48(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * v8) objectForKeyedSubscript:{@"articleID", v11}];
        [v3 fc_safelyAddObject:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];
}

+ (__CFString)_tempOverrideMIMETypeForURL:(uint64_t)l
{
  v2 = a2;
  objc_opt_self();
  pathExtension = [v2 pathExtension];
  v4 = [pathExtension length];

  if (!v4)
  {
    goto LABEL_5;
  }

  pathExtension2 = [v2 pathExtension];
  if ([pathExtension2 isEqualToString:@"aif"])
  {

LABEL_5:
    v8 = @"audio/mpeg";
    goto LABEL_6;
  }

  pathExtension3 = [v2 pathExtension];
  v7 = [pathExtension3 isEqualToString:@"aiff"];

  if (v7)
  {
    goto LABEL_5;
  }

  v8 = 0;
LABEL_6:

  return v8;
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