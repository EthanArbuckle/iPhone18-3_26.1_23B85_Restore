@interface FCArticleHeadline
+ (__CFString)_tempOverrideMIMETypeForURL:(uint64_t)a1;
- (CGRect)thumbnailFocalFrame;
- (FCArticleHeadline)init;
- (FCArticleHeadline)initWithArticleMetadata:(id)a3 sourceChannel:(id)a4 assetManager:(id)a5;
- (FCArticleHeadline)initWithArticleRecord:(id)a3 articleInterestToken:(id)a4 sourceChannel:(id)a5 parentIssue:(id)a6 storyStyleConfigs:(id)a7 storyTypeTimeout:(int64_t)a8 rapidUpdatesTimeout:(int64_t)a9 assetManager:(id)a10 experimentalTitleProvider:(id)a11;
- (FCArticleHeadline)initWithArticleRecordData:(id)a3 sourceChannel:(id)a4 parentIssue:(id)a5 storyStyleConfigs:(id)a6 storyTypeTimeout:(int64_t)a7 rapidUpdatesTimeout:(int64_t)a8 assetManager:(id)a9 experimentalTitleProvider:(id)a10;
- (FCContentArchive)contentArchive;
- (FCContentManifest)contentManifest;
- (NSString)stocksClusterID;
- (NSString)stocksMetadataJSON;
- (NSString)stocksScoresJSON;
- (id)backingArticleRecordData;
- (id)contentWithContext:(id)a3;
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

- (FCArticleHeadline)initWithArticleMetadata:(id)a3 sourceChannel:(id)a4 assetManager:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v94.receiver = self;
  v94.super_class = FCArticleHeadline;
  v11 = [(FCHeadline *)&v94 init];
  if (v11)
  {
    v12 = [v9 copy];
    sourceChannel = v11->_sourceChannel;
    v11->_sourceChannel = v12;

    v14 = [v9 name];
    sourceName = v11->_sourceName;
    v11->_sourceName = v14;

    v16 = [v8 articleID];
    identifier = v11->_identifier;
    v11->_identifier = v16;

    v18 = [v8 articleID];
    articleID = v11->_articleID;
    v11->_articleID = v18;

    v20 = [v8 title];
    title = v11->_title;
    v11->_title = v20;

    v22 = [v8 publishDate];
    publishDate = v11->_publishDate;
    v11->_publishDate = v22;

    v11->_contentType = [v8 contentType];
    v24 = [v8 thumbnailTextColor];
    v25 = [FCColor nullableColorWithHexString:v24];
    thumbnailImageTextColor = v11->_thumbnailImageTextColor;
    v11->_thumbnailImageTextColor = v25;

    v27 = [v8 thumbnailBackgroundColor];
    v28 = [FCColor nullableColorWithHexString:v27];
    thumbnailImageBackgroundColor = v11->_thumbnailImageBackgroundColor;
    v11->_thumbnailImageBackgroundColor = v28;

    v30 = [v8 thumbnailAccentColor];
    v31 = [FCColor nullableColorWithHexString:v30];
    thumbnailImageAccentColor = v11->_thumbnailImageAccentColor;
    v11->_thumbnailImageAccentColor = v31;

    v33 = [v8 thumbnailPrimaryColor];
    v34 = [FCColor nullableColorWithHexString:v33];
    thumbnailImagePrimaryColor = v11->_thumbnailImagePrimaryColor;
    v11->_thumbnailImagePrimaryColor = v34;

    v11->_thumbnailFocalFrame.origin.x = FCCGRectFromBuffer([v8 thumbnailFocalFrame]);
    v11->_thumbnailFocalFrame.origin.y = v36;
    v11->_thumbnailFocalFrame.size.width = v37;
    v11->_thumbnailFocalFrame.size.height = v38;
    v39 = [v8 thumbnail];

    v40 = MEMORY[0x1E695F060];
    if (v39)
    {
      v41 = [v8 thumbnailMetadata];
      v42 = *(v40 + 1);
      if (v41)
      {
        v43 = ((v41 >> 8) & 0xFFFFFFF);
      }

      else
      {
        v43 = v40[1];
      }

      if (v41)
      {
        v44 = (v41 >> 36);
      }

      else
      {
        v44 = *v40;
      }

      v45 = [v8 thumbnail];
      v46 = [v10 assetHandleForCKAssetURLString:v45 lifetimeHint:0];

      v47 = [FCHeadlineThumbnail headlineThumbnailWithAssetHandle:v46 thumbnailSize:v44, v43];
      thumbnail = v11->_thumbnail;
      v11->_thumbnail = v47;
    }

    v49 = [v8 thumbnailHQ];

    if (v49)
    {
      v50 = [v8 thumbnailHQMetadata];
      v51 = *(v40 + 1);
      if (v50)
      {
        v52 = ((v50 >> 8) & 0xFFFFFFF);
      }

      else
      {
        v52 = v40[1];
      }

      if (v50)
      {
        v53 = (v50 >> 36);
      }

      else
      {
        v53 = *v40;
      }

      v54 = [v8 thumbnailHQ];
      v55 = [v10 assetHandleForCKAssetURLString:v54 lifetimeHint:0];

      v56 = [FCHeadlineThumbnail headlineThumbnailWithAssetHandle:v55 thumbnailSize:v53, v52];
      thumbnailHQ = v11->_thumbnailHQ;
      v11->_thumbnailHQ = v56;
    }

    v58 = [v8 thumbnailMedium];

    if (v58)
    {
      v59 = [v8 thumbnailMediumMetadata];
      v60 = *(v40 + 1);
      if (v59)
      {
        v61 = ((v59 >> 8) & 0xFFFFFFF);
      }

      else
      {
        v61 = v40[1];
      }

      if (v59)
      {
        v62 = (v59 >> 36);
      }

      else
      {
        v62 = *v40;
      }

      v63 = [v8 thumbnailHQ];
      v64 = [v10 assetHandleForCKAssetURLString:v63 lifetimeHint:0];

      v65 = [FCHeadlineThumbnail headlineThumbnailWithAssetHandle:v64 thumbnailSize:v62, v61];
      v66 = v11->_thumbnailHQ;
      v11->_thumbnailHQ = v65;
    }

    v67 = [v8 thumbnailHQ];

    if (v67)
    {
      v68 = [v8 thumbnailHQMetadata];
      v69 = *(v40 + 1);
      if (v68)
      {
        v70 = ((v68 >> 8) & 0xFFFFFFF);
      }

      else
      {
        v70 = v40[1];
      }

      if (v68)
      {
        v71 = (v68 >> 36);
      }

      else
      {
        v71 = *v40;
      }

      v72 = [v8 thumbnailHQ];
      v73 = [v10 assetHandleForCKAssetURLString:v72 lifetimeHint:0];

      v74 = [FCHeadlineThumbnail headlineThumbnailWithAssetHandle:v73 thumbnailSize:v71, v70];
      v75 = v11->_thumbnailHQ;
      v11->_thumbnailHQ = v74;

      v11->_hasThumbnail = 1;
    }

    v76 = [v8 thumbnailUltraHQ];

    if (v76)
    {
      v77 = [v8 thumbnailUltraHQMetadata];
      v78 = *(v40 + 1);
      if (v77)
      {
        v79 = ((v77 >> 8) & 0xFFFFFFF);
      }

      else
      {
        v79 = v40[1];
      }

      if (v77)
      {
        v80 = (v77 >> 36);
      }

      else
      {
        v80 = *v40;
      }

      v81 = [v8 thumbnailUltraHQ];
      v82 = [v10 assetHandleForCKAssetURLString:v81 lifetimeHint:0];

      v83 = [FCHeadlineThumbnail headlineThumbnailWithAssetHandle:v82 thumbnailSize:v80, v79];
      thumbnailUltraHQ = v11->_thumbnailUltraHQ;
      v11->_thumbnailUltraHQ = v83;

      v11->_hasThumbnail = 1;
    }

    v85 = [v8 videoURL];
    v86 = [v85 length];
    if (v86)
    {
      v87 = [MEMORY[0x1E695DFF8] URLWithString:v85];
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
    v11->_paid = [v8 isPaid];
    v11->_bundlePaid = [v8 isPaid];
    v89 = [v8 routeURL];
    routeURL = v11->_routeURL;
    v11->_routeURL = v89;

    v91 = [v8 contentURL];
    if (v91)
    {
      v92 = [MEMORY[0x1E695DFF8] URLWithString:v91];
    }

    else
    {
      v92 = 0;
    }

    objc_storeStrong(&v11->_contentURL, v92);
    if (v91)
    {
    }

    v11->_role = 1;
    v11->_dataSource = 1;
  }

  return v11;
}

- (FCArticleHeadline)initWithArticleRecord:(id)a3 articleInterestToken:(id)a4 sourceChannel:(id)a5 parentIssue:(id)a6 storyStyleConfigs:(id)a7 storyTypeTimeout:(int64_t)a8 rapidUpdatesTimeout:(int64_t)a9 assetManager:(id)a10 experimentalTitleProvider:(id)a11
{
  v349 = *MEMORY[0x1E69E9840];
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v341 = a7;
  v21 = a10;
  v343 = a11;
  if (!v17 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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
    v338 = v20;
    context = objc_autoreleasePoolPush();
    objc_storeStrong(&v22->_articleRecord, a3);
    objc_storeStrong(&v22->_articleInterestToken, a4);
    v23 = [v19 copy];
    sourceChannel = v22->_sourceChannel;
    v22->_sourceChannel = v23;

    v25 = [v19 name];
    sourceName = v22->_sourceName;
    v22->_sourceName = v25;

    v27 = MEMORY[0x1E69E58C0];
    v28 = [(NTPBArticleRecord *)v22->_articleRecord sourceChannelTagID];
    v29 = [(FCChannelProviding *)v22->_sourceChannel identifier];
    LOBYTE(v27) = [v27 nf_object:v28 isEqualToObject:v29];

    if ((v27 & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v290 = objc_alloc(MEMORY[0x1E696AEC0]);
      v291 = objc_opt_class();
      v292 = NSStringFromClass(v291);
      v293 = [(NTPBArticleRecord *)v22->_articleRecord sourceChannelTagID];
      v294 = [(FCChannelProviding *)v22->_sourceChannel identifier];
      v295 = [v290 initWithFormat:@"Attempting to initialize a %@ with mismatched articleRecord sourceChannelTagID : %@ and sourceChannel identifier : %@", v292, v293, v294];
      *buf = 136315906;
      *&buf[4] = "[FCArticleHeadline initWithArticleRecord:articleInterestToken:sourceChannel:parentIssue:storyStyleConfigs:storyTypeTimeout:rapidUpdatesTimeout:assetManager:experimentalTitleProvider:]";
      *&buf[12] = 2080;
      *&buf[14] = "FCArticleHeadline.m";
      *&buf[22] = 1024;
      LODWORD(v347) = 296;
      WORD2(v347) = 2114;
      *(&v347 + 6) = v295;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    v30 = [v17 base];
    v31 = [v30 identifier];

    objc_storeStrong(&v22->_identifier, v31);
    v340 = v31;
    objc_storeStrong(&v22->_articleID, v31);
    v22->_featureCandidate = [v17 isFeatureCandidate];
    v32 = [v17 referencedArticleID];
    referencedArticleID = v22->_referencedArticleID;
    v22->_referencedArticleID = v32;

    v34 = [v17 clusterID];
    clusterID = v22->_clusterID;
    v22->_clusterID = v34;

    v36 = [v17 language];
    language = v22->_language;
    v22->_language = v36;

    v22->_bodyTextLength = [v17 bodyTextLength];
    v38 = [v17 float16TitleEncoding];
    float16TitleEncoding = v22->_float16TitleEncoding;
    v22->_float16TitleEncoding = v38;

    v40 = [v17 float16FullBodyEncoding];
    float16FullBodyEncoding = v22->_float16FullBodyEncoding;
    v22->_float16FullBodyEncoding = v40;

    v42 = [v17 expirationData];
    LODWORD(v31) = [v42 hasGlobalExpireUtcTime];

    if (v31)
    {
      v43 = MEMORY[0x1E695DF00];
      v44 = [v17 expirationData];
      v45 = [v43 dateWithTimeIntervalSince1970:{objc_msgSend(v44, "globalExpireUtcTime") / 1000.0}];
      globalExpirationTime = v22->_globalExpirationTime;
      v22->_globalExpirationTime = v45;
    }

    v47 = [v17 expirationData];
    v48 = [v47 tagsExpirationLists];
    v49 = [FCArticleTagsExpiration tagsExpirationsFromRecord:v48];
    tagsExpiration = v22->_tagsExpiration;
    v22->_tagsExpiration = v49;

    v51 = [v17 title];
    v52 = v51;
    if (v343)
    {
      v53 = [v17 experimentalTitles];
      v54 = [v343 headlineMetadataFromTitle:v52 fromExperimentalTitles:v53 forArticleID:v340];
      experimentalTitleMetadata = v22->_experimentalTitleMetadata;
      v22->_experimentalTitleMetadata = v54;

      v56 = [(FCHeadlineExperimentalTitleMetadata *)v22->_experimentalTitleMetadata chosenTitle];
      v57 = 952;
    }

    else
    {
      title = v22->_title;
      v22->_title = v51;

      v56 = 0;
      v57 = 968;
    }

    v59 = *(&v22->super.super.isa + v57);
    *(&v22->super.super.isa + v57) = v56;

    v339 = v19;
    if (![(NSString *)v22->_title length])
    {
      v60 = FCDefaultLog;
      if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
      {
        v296 = v60;
        v297 = [v17 title];
        v298 = v297;
        if (v297)
        {
          v299 = v297;
        }

        else
        {
          v299 = @"nil";
        }

        v300 = [v17 experimentalTitles];
        v301 = v300;
        *buf = 138543874;
        if (v300)
        {
          v302 = v300;
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

    v61 = [v17 titleCompact];
    titleCompact = v22->_titleCompact;
    v22->_titleCompact = v61;

    v63 = [v17 primaryAudience];
    primaryAudience = v22->_primaryAudience;
    v22->_primaryAudience = v63;

    v65 = MEMORY[0x1E695DF00];
    v66 = [v17 publishDate];
    v67 = [v65 dateWithPBDate:v66];

    objc_opt_self();
    if (qword_1EDB268F8 != -1)
    {
      dispatch_once(&qword_1EDB268F8, &__block_literal_global_55_0);
    }

    v68 = byte_1EDB268E2;
    v69 = v67;
    if (byte_1EDB268E2 == 1)
    {
      v69 = [v67 fc_adjustToRecentDate];
    }

    objc_storeStrong(&v22->_publishDate, v69);
    if (v68)
    {
    }

    v22->_publisherArticleVersion = [v17 publisherArticleVersion];
    v22->_backendArticleVersion = [v17 backendArticleVersion];
    v22->_thumbnailFocalFrame.origin.x = FCCGRectFromBuffer([v17 thumbnailFocalFrame]);
    v22->_thumbnailFocalFrame.origin.y = v70;
    v22->_thumbnailFocalFrame.size.width = v71;
    v22->_thumbnailFocalFrame.size.height = v72;
    v73 = [v17 thumbnailPerceptualHash];
    thumbnailPerceptualHash = v22->_thumbnailPerceptualHash;
    v22->_thumbnailPerceptualHash = v73;

    v75 = [v17 thumbnailLQMetadata];
    v77 = *MEMORY[0x1E695F060];
    v76 = *(MEMORY[0x1E695F060] + 8);
    v78 = v76;
    v79 = *MEMORY[0x1E695F060];
    if (v75)
    {
      v78 = ((v75 >> 8) & 0xFFFFFFF);
      v79 = (v75 >> 36);
    }

    v80 = [v17 thumbnailMetadata];
    v81 = v76;
    v82 = v77;
    if (v80)
    {
      v81 = ((v80 >> 8) & 0xFFFFFFF);
      v82 = (v80 >> 36);
    }

    v83 = [v17 thumbnailMediumMetadata];
    v84 = v76;
    v85 = v77;
    if (v83)
    {
      v84 = ((v83 >> 8) & 0xFFFFFFF);
      v85 = (v83 >> 36);
    }

    v324 = v85;
    v86 = [v17 thumbnailHQMetadata];
    v87 = v76;
    v88 = v77;
    if (v86)
    {
      v87 = ((v86 >> 8) & 0xFFFFFFF);
      v88 = (v86 >> 36);
    }

    v322 = v88;
    v325 = v87;
    v89 = [v17 thumbnailUltraHQMetadata];
    v90 = v76;
    v91 = v77;
    if (v89)
    {
      v90 = ((v89 >> 8) & 0xFFFFFFF);
      v91 = (v89 >> 36);
    }

    v320 = v91;
    v323 = v90;
    v92 = [v17 thumbnailWidgetLQMetadata];
    v93 = v76;
    v94 = v77;
    if (v92)
    {
      v93 = ((v92 >> 8) & 0xFFFFFFF);
      v94 = (v92 >> 36);
    }

    v318 = v94;
    v321 = v93;
    v95 = [v17 thumbnailWidgetMetadata];
    v96 = v76;
    v97 = v77;
    if (v95)
    {
      v96 = ((v95 >> 8) & 0xFFFFFFF);
      v97 = (v95 >> 36);
    }

    v317 = v97;
    v319 = v96;
    v327 = v67;
    v98 = [v17 thumbnailWidgetHQMetadata];
    if (v98)
    {
      v76 = ((v98 >> 8) & 0xFFFFFFF);
      v77 = (v98 >> 36);
    }

    v99 = [v17 thumbnailLQURL];
    v337 = [v17 generateThumbnailAssetHandleForURL:v99 withAssetManager:v21];

    v100 = [v17 thumbnailURL];
    v336 = [v17 generateThumbnailAssetHandleForURL:v100 withAssetManager:v21];

    v101 = [v17 thumbnailMediumURL];
    v335 = [v17 generateThumbnailAssetHandleForURL:v101 withAssetManager:v21];

    v102 = [v17 thumbnailHQURL];
    v334 = [v17 generateThumbnailAssetHandleForURL:v102 withAssetManager:v21];

    v103 = [v17 thumbnailUltraHQURL];
    v333 = [v17 generateThumbnailAssetHandleForURL:v103 withAssetManager:v21];

    v104 = [v17 thumbnailWidgetLQURL];
    v332 = [v17 generateThumbnailAssetHandleForURL:v104 withAssetManager:v21];

    v105 = [v17 thumbnailWidgetURL];
    v331 = [v17 generateThumbnailAssetHandleForURL:v105 withAssetManager:v21];

    v106 = [v17 thumbnailWidgetHQURL];
    v326 = [v17 generateThumbnailAssetHandleForURL:v106 withAssetManager:v21];

    v107 = [v17 shortExcerpt];
    shortExcerpt = v22->_shortExcerpt;
    v22->_shortExcerpt = v107;

    v109 = [v17 accessoryText];
    accessoryText = v22->_accessoryText;
    v22->_accessoryText = v109;

    v111 = MEMORY[0x1E695DF00];
    v112 = [v17 base];
    v113 = [v112 modificationDate];
    v114 = [v111 dateWithPBDate:v113];
    lastModifiedDate = v22->_lastModifiedDate;
    v22->_lastModifiedDate = v114;

    v116 = MEMORY[0x1E695DF00];
    v117 = [v17 base];
    v118 = [v117 fetchDate];
    v119 = [v116 dateWithPBDate:v118];
    lastFetchedDate = v22->_lastFetchedDate;
    v22->_lastFetchedDate = v119;

    v121 = [v17 topics];
    topics = v22->_topics;
    v22->_topics = v121;

    v123 = [v17 topicIDs];
    topicIDs = v22->_topicIDs;
    v22->_topicIDs = v123;

    v125 = [v17 globalCohorts];
    globalCohorts = v22->_globalCohorts;
    v22->_globalCohorts = v125;

    v127 = [v17 globalConversionStats];
    globalConversionStats = v22->_globalConversionStats;
    v22->_globalConversionStats = v127;

    v129 = [v17 sourceChannelCohorts];
    publisherCohorts = v22->_publisherCohorts;
    v22->_publisherCohorts = v129;

    v131 = [v17 channelConversionStats];
    publisherConversionStats = v22->_publisherConversionStats;
    v22->_publisherConversionStats = v131;

    v133 = [v17 channelTagMetadata];
    publisherTagMetadata = v22->_publisherTagMetadata;
    v22->_publisherTagMetadata = v133;

    if ([v17 isSponsored])
    {
      v135 = 1;
      v136 = v20;
    }

    else
    {
      objc_opt_self();
      if (qword_1EDB268E8 != -1)
      {
        dispatch_once(&qword_1EDB268E8, &__block_literal_global_51_1);
      }

      v136 = v20;
      v135 = _MergedGlobals_17;
    }

    v22->_sponsored = v135 & 1;
    v137 = [v17 iAdCategories];
    iAdCategories = v22->_iAdCategories;
    v22->_iAdCategories = v137;

    v139 = [v17 iAdKeywords];
    iAdKeywords = v22->_iAdKeywords;
    v22->_iAdKeywords = v139;

    v141 = [v17 iAdSectionIDs];
    iAdSectionIDs = v22->_iAdSectionIDs;
    v22->_iAdSectionIDs = v141;

    v22->_isDraft = [v17 isDraft];
    v143 = [v17 blockedStorefrontIDs];
    blockedStorefrontIDs = v22->_blockedStorefrontIDs;
    v22->_blockedStorefrontIDs = v143;

    v145 = [v17 allowedStorefrontIDs];
    allowedStorefrontIDs = v22->_allowedStorefrontIDs;
    v22->_allowedStorefrontIDs = v145;

    v147 = [v17 base];
    v22->_deleted = [v147 deletedFromCloud];

    v148 = [v17 relatedArticleIDs];
    relatedArticleIDs = v22->_relatedArticleIDs;
    v22->_relatedArticleIDs = v148;

    v150 = [v17 moreFromPublisherArticleIDs];
    moreFromPublisherArticleIDs = v22->_moreFromPublisherArticleIDs;
    v22->_moreFromPublisherArticleIDs = v150;

    v152 = [v17 contentType] - 1;
    if (v152 < 3)
    {
      v153 = v152 + 1;
    }

    else
    {
      v153 = 0;
    }

    v22->_contentType = v153;
    v22->_role = FCArticleRoleFromPBRole([v17 role]);
    v154 = [v136 copy];
    parentIssue = v22->_parentIssue;
    v22->_parentIssue = v154;

    if (v136)
    {
      [(FCHeadline *)v22 markAsEvergreen];
    }

    v22->_halfLife = [v17 halfLifeMilliseconds];
    v22->_halfLifeOverride = [v17 halfLifeMillisecondsOverride];
    v156 = [v17 linkedArticleIDs];
    linkedArticleIDs = v22->_linkedArticleIDs;
    v22->_linkedArticleIDs = v156;

    v158 = [v17 linkedIssueIDs];
    linkedIssueIDs = v22->_linkedIssueIDs;
    v22->_linkedIssueIDs = v158;

    v160 = [v17 authors];
    authors = v22->_authors;
    v22->_authors = v160;

    v162 = [v17 contentURL];
    if (v162)
    {
      v163 = [MEMORY[0x1E695DFF8] URLWithString:v162];
    }

    else
    {
      v163 = 0;
    }

    objc_storeStrong(&v22->_contentURL, v163);
    if (v162)
    {
    }

    v330 = v162;
    v164 = [v17 videoURL];
    v165 = [v164 length];
    v316 = v164;
    if (v165)
    {
      v166 = [MEMORY[0x1E695DFF8] URLWithString:v164];
    }

    else
    {
      v166 = 0;
    }

    objc_storeStrong(&v22->_videoURL, v166);
    if (v165)
    {
    }

    v167 = [v17 videoStillImageURL];
    v168 = [v17 generateThumbnailAssetHandleForURL:v167 withAssetManager:v21];
    videoStillImage = v22->_videoStillImage;
    v22->_videoStillImage = v168;

    [v17 videoDuration];
    v22->_videoDuration = v170;
    v171 = [FCCoverArt alloc];
    v172 = [v17 coverArt];
    v173 = [(FCCoverArt *)v171 initWithJSONString:v172];
    coverArt = v22->_coverArt;
    v22->_coverArt = v173;

    v175 = [v17 videoCallToActionTitle];
    v176 = [v175 copy];
    videoCallToActionTitle = v22->_videoCallToActionTitle;
    v22->_videoCallToActionTitle = v176;

    v178 = [v17 videoCallToActionURL];
    if (v178)
    {
      v179 = [MEMORY[0x1E695DFF8] URLWithString:v178];
      videoCallToActionURL = v22->_videoCallToActionURL;
      v22->_videoCallToActionURL = v179;
    }

    v181 = [v17 videoType];
    videoType = v22->_videoType;
    v22->_videoType = v181;

    v183 = [v17 sportsEventIDs];
    sportsEventIDs = v22->_sportsEventIDs;
    v22->_sportsEventIDs = v183;

    v185 = [v17 recipeIDs];
    recipeIDs = v22->_recipeIDs;
    v22->_recipeIDs = v185;

    v187 = [MEMORY[0x1E695DF00] date];
    [v187 timeIntervalSinceDate:v22->_lastModifiedDate];
    v189 = v188;

    objc_opt_self();
    v315 = v178;
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
        v187 = [MEMORY[0x1E696AD98] numberWithInt:?];
        v192 = [v341 objectForKey:v187];
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

    v193 = [v17 behaviorFlags];
    LOWORD(behaviorFlags) = v193;
    v22->_behaviorFlags = v193;
    v342 = v21;
    if (v193)
    {
      if (v189 >= a9)
      {
        v196 = FCDefaultLog;
        v197 = os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT);
        v195 = 0;
        if (v197)
        {
          v198 = v196;
          v199 = [(FCArticleHeadline *)v22 articleID];
          v200 = v22->_lastModifiedDate;
          v201 = [MEMORY[0x1E696AD98] numberWithLongLong:a9];
          *buf = 138543874;
          *&buf[4] = v199;
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
    v22->_minimumNewsVersion = [v17 minimumNewsVersion];
    v22->_paid = [v17 isPaid];
    v22->_bundlePaid = [v17 isBundlePaid];
    v22->_canBePurchased = [v339 isPurchaseSetup];
    v22->_issueOnly = [v17 isIssueOnly];
    v202 = [v17 layeredCover];
    v203 = [v202 copy];
    layeredThumbnailJSON = v22->_layeredThumbnailJSON;
    v22->_layeredThumbnailJSON = v203;

    [v17 layeredCoverAspectRatio];
    v22->_layeredThumbnailAspectRatio = v205;
    v206 = [v17 routeURL];
    v207 = [v206 length];
    if (v207)
    {
      v208 = [MEMORY[0x1E695DFF8] URLWithString:v206];
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
    if ([v17 schemaFlags])
    {
      v213 = [v17 articleRecirculationConfigurationURL];

      v212 = v330;
      if (!v213)
      {
LABEL_83:
        v329 = v18;
        v215 = v17;
        v216 = v342;
        v217 = MEMORY[0x1E695DFF8];
        v218 = [v215 narrativeTrackFullURL];
        v219 = [v217 fc_safeURLWithString:v218];

        if (v219)
        {
          v220 = v219;
          v221 = [v215 narrativeTrackMetadata];
          if (v221)
          {
            v345 = 0;
            v314 = v221;
            v222 = [MEMORY[0x1E695DF20] fc_dictionaryFromJSON:v221 error:&v345];
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
              v243 = [v215 narrativeTrackSampleURL];
              v244 = [v242 fc_safeURLWithString:v243];

              if (v244)
              {
                v307 = v82;
                v245 = v84;
                v246 = v79;
                v247 = v81;
                v248 = [v215 narrativeTrackSampleIdentifier];
                v249 = v311;
                v305 = v206;
                v250 = v78;
                if (v311)
                {
                  v249 = v311[14];
                }

                v251 = v249;
                v252 = [FCArticleHeadline _tempOverrideMIMETypeForURL:v244];
                v306 = v248;
                v253 = [v251 assetWithIdentifier:v248 remoteURL:v244 overrideMIMEType:v252];

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

                v206 = v305;
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

              v267 = [v215 narrativeTrackTextRanges];
              narrativeTrackTextRanges = v22->_narrativeTrackTextRanges;
              v22->_narrativeTrackTextRanges = v267;

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

            v221 = v314;
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

        v275 = [FCHeadlineThumbnail headlineThumbnailWithAssetHandle:v334 thumbnailSize:v322, v325];
        thumbnailHQ = v22->_thumbnailHQ;
        v22->_thumbnailHQ = v275;

        v277 = [FCHeadlineThumbnail headlineThumbnailWithAssetHandle:v333 thumbnailSize:v320, v323];
        thumbnailUltraHQ = v22->_thumbnailUltraHQ;
        v22->_thumbnailUltraHQ = v277;

        v279 = [FCHeadlineThumbnail headlineThumbnailWithAssetHandle:v332 thumbnailSize:v318, v321];
        thumbnailWidgetLQ = v22->_thumbnailWidgetLQ;
        v22->_thumbnailWidgetLQ = v279;

        v281 = [FCHeadlineThumbnail headlineThumbnailWithAssetHandle:v331 thumbnailSize:v317, v319];
        thumbnailWidget = v22->_thumbnailWidget;
        v22->_thumbnailWidget = v281;

        v283 = [FCHeadlineThumbnail headlineThumbnailWithAssetHandle:v326 thumbnailSize:v77, v76];
        thumbnailWidgetHQ = v22->_thumbnailWidgetHQ;
        v22->_thumbnailWidgetHQ = v283;

        if (v22->_thumbnailLQ)
        {
          v285 = 1;
          v18 = v329;
          v20 = v338;
          v19 = v339;
        }

        else
        {
          v18 = v329;
          if (v22->_thumbnail || v22->_thumbnailMedium)
          {
            v285 = 1;
            v20 = v338;
            v19 = v339;
          }

          else
          {
            v20 = v338;
            if (v22->_thumbnailHQ)
            {
              v285 = 1;
            }

            else
            {
              v285 = v22->_thumbnailUltraHQ != 0;
            }

            v19 = v339;
          }
        }

        v22->_hasThumbnail = v285;
        v21 = v342;
        if (!v22->_halfLife)
        {
          v286 = 21600000;
          if (v20 && [v20 halfLife])
          {
            v286 = [v20 halfLife];
          }

          v22->_halfLife = v286;
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

      v210 = [v17 articleRecirculationConfigurationURL];
      v211 = [v342 assetHandleForCKAssetURLString:v210 lifetimeHint:2];
    }

    else
    {
      v209 = FCCKLocalizedArticleArticleRecirculationConfigurationKey();
      v210 = [FCRecordFieldURLProtocol URLForRecordID:v340 fieldName:v209];

      v211 = [v342 assetHandleForURL:v210 lifetimeHint:2];
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

- (FCArticleHeadline)initWithArticleRecordData:(id)a3 sourceChannel:(id)a4 parentIssue:(id)a5 storyStyleConfigs:(id)a6 storyTypeTimeout:(int64_t)a7 rapidUpdatesTimeout:(int64_t)a8 assetManager:(id)a9 experimentalTitleProvider:(id)a10
{
  v35 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a9;
  v21 = a10;
  v22 = [objc_alloc(MEMORY[0x1E69B6CF8]) initWithData:v16];
  if (v22)
  {
    self = [(FCArticleHeadline *)self initWithArticleRecord:v22 articleInterestToken:0 sourceChannel:v17 parentIssue:v18 storyStyleConfigs:v19 storyTypeTimeout:a7 rapidUpdatesTimeout:a8 assetManager:v20 experimentalTitleProvider:v21];
    v23 = self;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"failed to parse data %@", v16];
      *buf = 136315906;
      v28 = "[FCArticleHeadline initWithArticleRecordData:sourceChannel:parentIssue:storyStyleConfigs:storyTypeTimeout:rapidUpdatesTimeout:assetManager:experimentalTitleProvider:]";
      v29 = 2080;
      v30 = "FCArticleHeadline.m";
      v31 = 1024;
      v32 = 537;
      v33 = 2114;
      v34 = v26;
      _os_log_fault_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "*** Assertion failure (Identifier: ReferredArticleDecode) : %s %s:%d %{public}@", buf, 0x26u);
    }

    v23 = 0;
  }

  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

- (id)contentWithContext:(id)a3
{
  v4 = a3;
  v5 = [FCArticleContent alloc];
  v6 = [(FCArticleHeadline *)self articleRecord];
  v7 = [(FCArticleContent *)v5 initWithContext:v4 articleRecord:v6];

  return v7;
}

- (id)backingArticleRecordData
{
  v2 = [(FCArticleHeadline *)self articleRecord];
  v3 = [v2 data];

  return v3;
}

- (id)publisherSpecifiedArticleIDs
{
  v2 = [(FCArticleHeadline *)self articleRecord];
  v3 = [v2 publisherSpecifiedArticleIDs];

  return v3;
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
    v4 = [(FCArticleHeadline *)self articleRecord];
    v5 = [v4 thumbnailPrimaryColor];
    v3 = [FCColor nullableColorWithHexString:v5];
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
    v4 = [(FCArticleHeadline *)self articleRecord];
    v5 = [v4 thumbnailBackgroundColor];
    v3 = [FCColor nullableColorWithHexString:v5];
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
    v4 = [(FCArticleHeadline *)self articleRecord];
    v5 = [v4 thumbnailTextColor];
    v3 = [FCColor nullableColorWithHexString:v5];
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
    v4 = [(FCArticleHeadline *)self articleRecord];
    v5 = [v4 thumbnailAccentColor];
    v3 = [FCColor nullableColorWithHexString:v5];
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
  v2 = [(FCArticleHeadline *)self articleRecord];
  v3 = [v2 stocksClusterID];

  return v3;
}

- (NSString)stocksMetadataJSON
{
  v2 = [(FCArticleHeadline *)self articleRecord];
  v3 = [v2 stocksMetadata];

  return v3;
}

- (NSString)stocksScoresJSON
{
  v2 = [(FCArticleHeadline *)self articleRecord];
  v3 = [v2 stocksScores];

  return v3;
}

- (id)publisherID
{
  v3 = [(FCArticleHeadline *)self articleRecord];
  v4 = [v3 sourceChannelTagID];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(FCHeadline *)self sourceChannelID];
  }

  v7 = v6;

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

+ (__CFString)_tempOverrideMIMETypeForURL:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = [v2 pathExtension];
  v4 = [v3 length];

  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = [v2 pathExtension];
  if ([v5 isEqualToString:@"aif"])
  {

LABEL_5:
    v8 = @"audio/mpeg";
    goto LABEL_6;
  }

  v6 = [v2 pathExtension];
  v7 = [v6 isEqualToString:@"aiff"];

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