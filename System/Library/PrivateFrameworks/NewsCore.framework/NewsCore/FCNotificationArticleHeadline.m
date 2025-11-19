@interface FCNotificationArticleHeadline
- (BOOL)hasVideo;
- (BOOL)isValid;
- (CGRect)thumbnailFocalFrame;
- (COMAPPLEFELDSPARPROTOCOLLIVERPOOLCohortList)globalCohorts;
- (COMAPPLEFELDSPARPROTOCOLLIVERPOOLCohortList)publisherCohorts;
- (FCNotificationArticleHeadline)initWithArticlePayload:(id)a3 sourceChannel:(id)a4 assetManager:(id)a5;
- (NSString)publisherID;
- (id)contentWithContext:(id)a3;
- (id)generateFlintDocumentAssetHandleForUrlString:(id)a3 prefetchedData:(id)a4 withAssetManager:(id)a5;
- (id)generateThumbnailAssetHandleForUrlString:(id)a3 withAssetManager:(id)a4;
- (void)enumerateTopicCohortsWithBlock:(id)a3;
@end

@implementation FCNotificationArticleHeadline

- (FCNotificationArticleHeadline)initWithArticlePayload:(id)a3 sourceChannel:(id)a4 assetManager:(id)a5
{
  v144 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v129 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "articlePayload"];
    *buf = 136315906;
    v137 = "[FCNotificationArticleHeadline initWithArticlePayload:sourceChannel:assetManager:]";
    v138 = 2080;
    v139 = "FCNotificationArticleHeadline.m";
    v140 = 1024;
    v141 = 136;
    v142 = 2114;
    v143 = v129;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v135.receiver = self;
  v135.super_class = FCNotificationArticleHeadline;
  v12 = [(FCHeadline *)&v135 init];
  v13 = v12;
  if (!v12)
  {
    goto LABEL_49;
  }

  objc_storeStrong(&v12->_articlePayload, a3);
  objc_storeStrong(&v13->_assetManager, a5);
  v14 = [v9 objectForKeyedSubscript:@"aid"];
  if (v14 || [0 length])
  {
    v133 = v10;
    v134 = v11;
    if (v10)
    {
      v15 = [v10 copy];
      sourceChannel = v13->_sourceChannel;
      v13->_sourceChannel = v15;

      v17 = [v10 name];
      sourceName = v13->_sourceName;
      v13->_sourceName = v17;
    }

    else
    {
      v131 = v14;
      sourceName = [v9 objectForKeyedSubscript:@"cid"];
      v19 = [v9 objectForKeyedSubscript:@"pn"];
      v20 = [v9 objectForKeyedSubscript:@"pl2"];
      v21 = [v9 objectForKeyedSubscript:@"pm2"];
      if ([v20 length])
      {
        v22 = [MEMORY[0x1E695DFF8] URLWithString:v20];
        v23 = [v11 assetHandleForURL:v22 lifetimeHint:0];
      }

      else
      {
        v23 = 0;
      }

      if ([v21 length])
      {
        v26 = [MEMORY[0x1E695DFF8] URLWithString:v21];
        v27 = [v134 assetHandleForURL:v26 lifetimeHint:0];
      }

      else
      {
        v27 = 0;
      }

      v28 = [sourceName length];
      if (v28)
      {
        v29 = [[FCTag alloc] initChannelFromNotificationWithIdentifier:sourceName name:v19 nameImageAssetHandle:v23 nameImageMaskAssetHandle:v27];
      }

      else
      {
        v29 = 0;
      }

      objc_storeStrong(&v13->_sourceChannel, v29);
      if (v28)
      {
      }

      v30 = v13->_sourceName;
      v13->_sourceName = v19;

      v11 = v134;
      v14 = v131;
    }

    objc_storeStrong(&v13->_identifier, v14);
    objc_storeStrong(&v13->_articleID, v14);
    v31 = [v9 objectForKeyedSubscript:@"isf"];
    v13->_featureCandidate = [v31 BOOLValue];

    v32 = [v9 objectForKeyedSubscript:@"ra"];
    referencedArticleID = v13->_referencedArticleID;
    v13->_referencedArticleID = v32;

    v34 = [v9 objectForKeyedSubscript:@"cli"];
    clusterID = v13->_clusterID;
    v13->_clusterID = v34;

    v36 = [v9 objectForKeyedSubscript:@"ti"];
    title = v13->_title;
    v13->_title = v36;

    v38 = [v9 objectForKeyedSubscript:@"pd"];
    [v38 doubleValue];
    v40 = v39;

    v41 = [MEMORY[0x1E695DF00] fc_dateWithMillisecondTimeIntervalSince1970:v40];
    publishDate = v13->_publishDate;
    v13->_publishDate = v41;

    v43 = [v9 objectForKeyedSubscript:@"ts"];
    [v43 doubleValue];
    v45 = v44;

    v46 = [MEMORY[0x1E695DF00] fc_dateWithMillisecondTimeIntervalSince1970:v45];
    lastModifiedDate = v13->_lastModifiedDate;
    v13->_lastModifiedDate = v46;

    objc_storeStrong(&v13->_lastFetchedDate, v13->_lastModifiedDate);
    v48 = [v9 objectForKeyedSubscript:@"prev"];
    v13->_publisherArticleVersion = [v48 unsignedLongLongValue];

    v49 = [v9 objectForKeyedSubscript:@"rev"];
    v13->_backendArticleVersion = [v49 unsignedLongLongValue];

    v50 = [v9 objectForKeyedSubscript:@"etag"];
    changeEtag = v13->_changeEtag;
    v13->_changeEtag = v50;

    v52 = [v9 objectForKeyedSubscript:@"tnff"];
    v13->_thumbnailFocalFrame.origin.x = FCCGRectFromBuffer([v52 unsignedLongLongValue]);
    v13->_thumbnailFocalFrame.origin.y = v53;
    v13->_thumbnailFocalFrame.size.width = v54;
    v13->_thumbnailFocalFrame.size.height = v55;

    v56 = [v9 objectForKeyedSubscript:@"tnm"];
    v57 = [v56 unsignedLongLongValue];
    if (v57)
    {
      v58 = ((v57 >> 8) & 0xFFFFFFF);
    }

    else
    {
      v58 = *(MEMORY[0x1E695F060] + 8);
    }

    if (v57)
    {
      v59 = (v57 >> 36);
    }

    else
    {
      v59 = *MEMORY[0x1E695F060];
    }

    v60 = [v9 objectForKeyedSubscript:@"tn2"];
    v61 = [(FCNotificationArticleHeadline *)v13 generateThumbnailAssetHandleForUrlString:v60 withAssetManager:v11];

    v132 = v61;
    v62 = [FCHeadlineThumbnail headlineThumbnailWithAssetHandle:v61 thumbnailSize:v59, v58];
    thumbnail = v13->_thumbnail;
    v13->_thumbnail = v62;

    v13->_hasThumbnail = v13->_thumbnail != 0;
    v64 = [v9 objectForKeyedSubscript:@"fau"];
    flintDocumentUrlString = v13->_flintDocumentUrlString;
    v13->_flintDocumentUrlString = v64;

    v66 = [v9 objectForKeyedSubscript:@"fdad"];
    flintDocumentPrefetchedData = v13->_flintDocumentPrefetchedData;
    v13->_flintDocumentPrefetchedData = v66;

    v68 = [v9 objectForKeyedSubscript:@"ffr"];
    flintFontResourceIDs = v13->_flintFontResourceIDs;
    v13->_flintFontResourceIDs = v68;

    v70 = [v9 objectForKeyedSubscript:@"ex"];
    shortExcerpt = v13->_shortExcerpt;
    v13->_shortExcerpt = v70;

    v72 = [v9 objectForKeyedSubscript:@"at"];
    accessoryText = v13->_accessoryText;
    v13->_accessoryText = v72;

    v74 = [v9 objectForKeyedSubscript:@"tt"];
    topicIDs = v13->_topicIDs;
    v13->_topicIDs = v74;

    v76 = [v9 objectForKeyedSubscript:@"gcs"];
    globalCohortScoresCTR = v13->_globalCohortScoresCTR;
    v13->_globalCohortScoresCTR = v76;

    v78 = [v9 objectForKeyedSubscript:@"ccs"];
    channelCohortScoresCTR = v13->_channelCohortScoresCTR;
    v13->_channelCohortScoresCTR = v78;

    v80 = [v9 objectForKeyedSubscript:@"tcs"];
    topicCohortScoresCTRs = v13->_topicCohortScoresCTRs;
    v13->_topicCohortScoresCTRs = v80;

    v82 = [v9 objectForKeyedSubscript:@"iss"];
    v13->_sponsored = [v82 BOOLValue];

    v83 = [v9 objectForKeyedSubscript:@"iac"];
    iAdCategories = v13->_iAdCategories;
    v13->_iAdCategories = v83;

    v85 = [v9 objectForKeyedSubscript:@"iak"];
    iAdKeywords = v13->_iAdKeywords;
    v13->_iAdKeywords = v85;

    v87 = [v9 objectForKeyedSubscript:@"iast"];
    iAdSectionIDs = v13->_iAdSectionIDs;
    v13->_iAdSectionIDs = v87;

    v89 = [v9 objectForKeyedSubscript:@"ra2"];
    relatedArticleIDs = v13->_relatedArticleIDs;
    v13->_relatedArticleIDs = v89;

    v91 = [v9 objectForKeyedSubscript:@"mfp"];
    moreFromPublisherArticleIDs = v13->_moreFromPublisherArticleIDs;
    v13->_moreFromPublisherArticleIDs = v91;

    v93 = [v9 objectForKeyedSubscript:@"psa"];
    publisherSpecifiedArticleIDs = v13->_publisherSpecifiedArticleIDs;
    v13->_publisherSpecifiedArticleIDs = v93;

    v95 = [v9 objectForKeyedSubscript:@"ct"];
    v13->_contentType = ArticleContentTypeFromString(v95);

    v96 = FCCKLocalizedArticleArticleRecirculationConfigurationKey();
    v97 = v14;
    v98 = [FCRecordFieldURLProtocol URLForRecordID:v14 fieldName:v96];

    v99 = [v11 assetHandleForURL:v98 lifetimeHint:2];
    articleRecirculationConfigAssetHandle = v13->_articleRecirculationConfigAssetHandle;
    v13->_articleRecirculationConfigAssetHandle = v99;

    v101 = [v9 objectForKeyedSubscript:@"cu"];
    v102 = [v101 length];
    if (v102)
    {
      v103 = [MEMORY[0x1E695DFF8] URLWithString:v101];
    }

    else
    {
      v103 = 0;
    }

    objc_storeStrong(&v13->_contentURL, v103);
    if (v102)
    {
    }

    v104 = [v9 objectForKeyedSubscript:@"vu"];
    v105 = [v104 length];
    if (v105)
    {
      v106 = [MEMORY[0x1E695DFF8] URLWithString:v104];
    }

    else
    {
      v106 = 0;
    }

    objc_storeStrong(&v13->_videoURL, v106);
    if (v105)
    {
    }

    v107 = [v9 objectForKeyedSubscript:@"vd"];
    [v107 floatValue];
    v13->_videoDuration = v108;

    v13->_webEmbedsEnabled = 1;
    v109 = [v9 objectForKeyedSubscript:@"bf"];
    v110 = [v109 unsignedLongLongValue];

    v13->_needsRapidUpdates = v110 & 1;
    v13->_disableTapToChannel = (v110 & 2) != 0;
    v13->_pressRelease = (v110 & 0x10) != 0;
    v13->_hiddenFromAutoFavorites = (v110 & 0x20) != 0;
    v13->_showBundleSoftPaywall = (v110 & 0x80) != 0;
    v13->_disableBookmarking = (v110 & 0x200) != 0;
    v13->_hideModalCloseButton = (v110 & 0x400) != 0;
    v13->_reduceVisibility = (v110 & 0x800) != 0;
    v13->_reduceVisibilityForNonFollowers = (v110 & 0x2000) != 0;
    v13->_webConverted = (v110 & 0x1000) != 0;
    v111 = [v9 objectForKeyedSubscript:@"mnv"];
    v13->_minimumNewsVersion = [FCRestrictions integerRepresentationOfShortVersionString:v111];

    v112 = [v9 objectForKeyedSubscript:@"ip"];
    v13->_paid = [v112 BOOLValue];

    v113 = [v9 objectForKeyedSubscript:@"ibp"];
    v13->_bundlePaid = [v113 BOOLValue];

    primaryAudience = v13->_primaryAudience;
    v13->_primaryAudience = 0;

    coverArt = v13->_coverArt;
    v13->_coverArt = 0;

    v13->_isDraft = 0;
    v13->_isLocalDraft = 0;
    blockedStorefrontIDs = v13->_blockedStorefrontIDs;
    v117 = MEMORY[0x1E695E0F0];
    v13->_blockedStorefrontIDs = MEMORY[0x1E695E0F0];

    allowedStorefrontIDs = v13->_allowedStorefrontIDs;
    v13->_allowedStorefrontIDs = v117;

    v13->_deleted = 0;
    v119 = [v9 objectForKeyedSubscript:@"st"];
    v13->_storyType = FCArticleStoryTypeForStoryTypeString(v119);

    storyStyle = v13->_storyStyle;
    v13->_storyStyle = 0;

    v121 = [v9 objectForKeyedSubscript:@"btl"];
    v122 = [v121 unsignedLongLongValue];

    if (v122 <= 0)
    {
      v123 = -1;
    }

    else
    {
      v123 = v122;
    }

    v13->_bodyTextLength = v123;
    v124 = [v9 objectForKeyedSubscript:@"rl"];
    v125 = PBArticleRoleFromString(v124);
    v13->_role = FCArticleRoleFromPBRole(v125);

    v126 = [v9 objectForKeyedSubscript:@"isi"];
    v13->_issueOnly = [v126 BOOLValue];

    if (v13->_videoURL && [(FCNotificationArticleHeadline *)v13 contentType]!= 2 && v13->_videoURL && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v130 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"The videoURL field should only be set for flint articles"];
      *buf = 136315906;
      v137 = "[FCNotificationArticleHeadline initWithArticlePayload:sourceChannel:assetManager:]";
      v138 = 2080;
      v139 = "FCNotificationArticleHeadline.m";
      v140 = 1024;
      v141 = 278;
      v142 = 2114;
      v143 = v130;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    v10 = v133;
    v11 = v134;
LABEL_49:
    v25 = v13;
    goto LABEL_50;
  }

  v24 = FCPushNotificationsLog;
  if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1B63EF000, v24, OS_LOG_TYPE_ERROR, "Article ID is empty in payload", buf, 2u);
  }

  v25 = 0;
LABEL_50:

  v127 = *MEMORY[0x1E69E9840];
  return v25;
}

- (id)contentWithContext:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  if ([(FCNotificationArticleHeadline *)self contentType]!= 2)
  {
    v22 = FCPushNotificationsLog;
    if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_ERROR))
    {
      v25 = v22;
      v26 = [(FCNotificationArticleHeadline *)self contentType];
      v27 = [(FCNotificationArticleHeadline *)self articleID];
      v28 = 134218242;
      v29 = v26;
      v30 = 2114;
      v31 = v27;
      _os_log_error_impl(&dword_1B63EF000, v25, OS_LOG_TYPE_ERROR, "Invalid content type: %lu for article ID: %{public}@", &v28, 0x16u);
    }

    goto LABEL_10;
  }

  v4 = [(FCNotificationArticleHeadline *)self flintDocumentUrlString];
  v5 = [v4 length];

  if (!v5)
  {
LABEL_10:
    v21 = 0;
    goto LABEL_11;
  }

  v6 = FCPushNotificationsLog;
  if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [(FCNotificationArticleHeadline *)self articleID];
    v9 = [(FCNotificationArticleHeadline *)self flintDocumentPrefetchedData];
    v10 = @"with";
    if (!v9)
    {
      v10 = @"without";
    }

    v28 = 138543618;
    v29 = v8;
    v30 = 2114;
    v31 = v10;
    _os_log_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_DEFAULT, "Creating content for article %{public}@ %{public}@ prefetched ANF JSON", &v28, 0x16u);
  }

  v11 = [(FCNotificationArticleHeadline *)self flintDocumentUrlString];
  v12 = [(FCNotificationArticleHeadline *)self flintDocumentPrefetchedData];
  v13 = [(FCNotificationArticleHeadline *)self assetManager];
  v14 = [(FCNotificationArticleHeadline *)self generateFlintDocumentAssetHandleForUrlString:v11 prefetchedData:v12 withAssetManager:v13];

  v15 = [FCANFContent alloc];
  v16 = [(FCNotificationArticleHeadline *)self articleID];
  v17 = [(FCNotificationArticleHeadline *)self flintFontResourceIDs];
  v18 = [(FCANFContent *)v15 initWithIdentifier:v16 mainDocumentAssetHandle:v14 fontResourceIDs:v17];

  v19 = [FCArticleContent alloc];
  v20 = [(FCNotificationArticleHeadline *)self articleID];
  v21 = [(FCArticleContent *)v19 initWithArticleID:v20 anfContent:v18];

LABEL_11:
  v23 = *MEMORY[0x1E69E9840];

  return v21;
}

- (BOOL)isValid
{
  if ([(FCNotificationArticleHeadline *)self contentType]== 2)
  {
    v3 = [(FCNotificationArticleHeadline *)self flintDocumentUrlString];
    v4 = [v3 length] != 0;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(FCNotificationArticleHeadline *)self sourceChannel];

  return v5 && v4;
}

- (id)generateThumbnailAssetHandleForUrlString:(id)a3 withAssetManager:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 length])
  {
    v7 = [v6 assetHandleForCKAssetURLString:v5 lifetimeHint:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)generateFlintDocumentAssetHandleForUrlString:(id)a3 prefetchedData:(id)a4 withAssetManager:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v7 length])
  {
    v10 = [v9 assetHandleForCKAssetURLString:v7 prefetchedData:v8 unzipIfNeeded:1 lifetimeHint:0];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (NSString)publisherID
{
  v2 = [(FCNotificationArticleHeadline *)self sourceChannel];
  v3 = [v2 identifier];

  return v3;
}

- (BOOL)hasVideo
{
  v2 = [(FCNotificationArticleHeadline *)self videoURL];
  v3 = v2 != 0;

  return v3;
}

- (COMAPPLEFELDSPARPROTOCOLLIVERPOOLCohortList)globalCohorts
{
  v3 = objc_alloc_init(MEMORY[0x1E69B6C98]);
  v4 = [(FCNotificationArticleHeadline *)self globalCohortScoresCTR];
  [v4 doubleValue];
  [v3 setClicks:?];

  [v3 setImpressions:1.0];
  [v3 setType:{-[FCNotificationArticleHeadline isPaid](self, "isPaid")}];
  v5 = objc_alloc_init(MEMORY[0x1E69B6CA0]);
  [v5 addCohorts:v3];

  return v5;
}

- (COMAPPLEFELDSPARPROTOCOLLIVERPOOLCohortList)publisherCohorts
{
  v3 = objc_alloc_init(MEMORY[0x1E69B6C98]);
  v4 = [(FCNotificationArticleHeadline *)self channelCohortScoresCTR];
  [v4 doubleValue];
  [v3 setClicks:?];

  [v3 setImpressions:1.0];
  [v3 setType:{-[FCNotificationArticleHeadline isPaid](self, "isPaid")}];
  v5 = objc_alloc_init(MEMORY[0x1E69B6CA0]);
  [v5 addCohorts:v3];

  return v5;
}

- (void)enumerateTopicCohortsWithBlock:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v17 = a3;
  v4 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [(FCNotificationArticleHeadline *)self topicCohortScoresCTRs];
  v5 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v10 = objc_alloc_init(MEMORY[0x1E69B6CA0]);
        v11 = objc_alloc_init(MEMORY[0x1E69B6C98]);
        [v9 doubleValue];
        [v11 setClicks:?];
        [v11 setImpressions:1.0];
        [v11 setType:{-[FCNotificationArticleHeadline isPaid](self, "isPaid")}];
        [v10 addCohorts:v11];
        [v4 addObject:v10];
      }

      v6 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
  }

  v12 = [(FCNotificationArticleHeadline *)self topicIDs];
  v13 = [v12 count];
  v14 = [v4 count];

  if (v13 == v14)
  {
    v15 = [(FCNotificationArticleHeadline *)self topicIDs];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __64__FCNotificationArticleHeadline_enumerateTopicCohortsWithBlock___block_invoke;
    v19[3] = &unk_1E7C38900;
    v20 = v17;
    [v15 fc_enumerateSideBySideWithArray:v4 reverse:0 block:v19];
  }

  v16 = *MEMORY[0x1E69E9840];
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