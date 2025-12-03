@interface FCNotificationArticleHeadline
- (BOOL)hasVideo;
- (BOOL)isValid;
- (CGRect)thumbnailFocalFrame;
- (COMAPPLEFELDSPARPROTOCOLLIVERPOOLCohortList)globalCohorts;
- (COMAPPLEFELDSPARPROTOCOLLIVERPOOLCohortList)publisherCohorts;
- (FCNotificationArticleHeadline)initWithArticlePayload:(id)payload sourceChannel:(id)channel assetManager:(id)manager;
- (NSString)publisherID;
- (id)contentWithContext:(id)context;
- (id)generateFlintDocumentAssetHandleForUrlString:(id)string prefetchedData:(id)data withAssetManager:(id)manager;
- (id)generateThumbnailAssetHandleForUrlString:(id)string withAssetManager:(id)manager;
- (void)enumerateTopicCohortsWithBlock:(id)block;
@end

@implementation FCNotificationArticleHeadline

- (FCNotificationArticleHeadline)initWithArticlePayload:(id)payload sourceChannel:(id)channel assetManager:(id)manager
{
  v144 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  channelCopy = channel;
  managerCopy = manager;
  if (!payloadCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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

  objc_storeStrong(&v12->_articlePayload, payload);
  objc_storeStrong(&v13->_assetManager, manager);
  v14 = [payloadCopy objectForKeyedSubscript:@"aid"];
  if (v14 || [0 length])
  {
    v133 = channelCopy;
    v134 = managerCopy;
    if (channelCopy)
    {
      v15 = [channelCopy copy];
      sourceChannel = v13->_sourceChannel;
      v13->_sourceChannel = v15;

      name = [channelCopy name];
      sourceName = v13->_sourceName;
      v13->_sourceName = name;
    }

    else
    {
      v131 = v14;
      sourceName = [payloadCopy objectForKeyedSubscript:@"cid"];
      v19 = [payloadCopy objectForKeyedSubscript:@"pn"];
      v20 = [payloadCopy objectForKeyedSubscript:@"pl2"];
      v21 = [payloadCopy objectForKeyedSubscript:@"pm2"];
      if ([v20 length])
      {
        v22 = [MEMORY[0x1E695DFF8] URLWithString:v20];
        v23 = [managerCopy assetHandleForURL:v22 lifetimeHint:0];
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

      managerCopy = v134;
      v14 = v131;
    }

    objc_storeStrong(&v13->_identifier, v14);
    objc_storeStrong(&v13->_articleID, v14);
    v31 = [payloadCopy objectForKeyedSubscript:@"isf"];
    v13->_featureCandidate = [v31 BOOLValue];

    v32 = [payloadCopy objectForKeyedSubscript:@"ra"];
    referencedArticleID = v13->_referencedArticleID;
    v13->_referencedArticleID = v32;

    v34 = [payloadCopy objectForKeyedSubscript:@"cli"];
    clusterID = v13->_clusterID;
    v13->_clusterID = v34;

    v36 = [payloadCopy objectForKeyedSubscript:@"ti"];
    title = v13->_title;
    v13->_title = v36;

    v38 = [payloadCopy objectForKeyedSubscript:@"pd"];
    [v38 doubleValue];
    v40 = v39;

    v41 = [MEMORY[0x1E695DF00] fc_dateWithMillisecondTimeIntervalSince1970:v40];
    publishDate = v13->_publishDate;
    v13->_publishDate = v41;

    v43 = [payloadCopy objectForKeyedSubscript:@"ts"];
    [v43 doubleValue];
    v45 = v44;

    v46 = [MEMORY[0x1E695DF00] fc_dateWithMillisecondTimeIntervalSince1970:v45];
    lastModifiedDate = v13->_lastModifiedDate;
    v13->_lastModifiedDate = v46;

    objc_storeStrong(&v13->_lastFetchedDate, v13->_lastModifiedDate);
    v48 = [payloadCopy objectForKeyedSubscript:@"prev"];
    v13->_publisherArticleVersion = [v48 unsignedLongLongValue];

    v49 = [payloadCopy objectForKeyedSubscript:@"rev"];
    v13->_backendArticleVersion = [v49 unsignedLongLongValue];

    v50 = [payloadCopy objectForKeyedSubscript:@"etag"];
    changeEtag = v13->_changeEtag;
    v13->_changeEtag = v50;

    v52 = [payloadCopy objectForKeyedSubscript:@"tnff"];
    v13->_thumbnailFocalFrame.origin.x = FCCGRectFromBuffer([v52 unsignedLongLongValue]);
    v13->_thumbnailFocalFrame.origin.y = v53;
    v13->_thumbnailFocalFrame.size.width = v54;
    v13->_thumbnailFocalFrame.size.height = v55;

    v56 = [payloadCopy objectForKeyedSubscript:@"tnm"];
    unsignedLongLongValue = [v56 unsignedLongLongValue];
    if (unsignedLongLongValue)
    {
      v58 = ((unsignedLongLongValue >> 8) & 0xFFFFFFF);
    }

    else
    {
      v58 = *(MEMORY[0x1E695F060] + 8);
    }

    if (unsignedLongLongValue)
    {
      v59 = (unsignedLongLongValue >> 36);
    }

    else
    {
      v59 = *MEMORY[0x1E695F060];
    }

    v60 = [payloadCopy objectForKeyedSubscript:@"tn2"];
    v61 = [(FCNotificationArticleHeadline *)v13 generateThumbnailAssetHandleForUrlString:v60 withAssetManager:managerCopy];

    v132 = v61;
    v62 = [FCHeadlineThumbnail headlineThumbnailWithAssetHandle:v61 thumbnailSize:v59, v58];
    thumbnail = v13->_thumbnail;
    v13->_thumbnail = v62;

    v13->_hasThumbnail = v13->_thumbnail != 0;
    v64 = [payloadCopy objectForKeyedSubscript:@"fau"];
    flintDocumentUrlString = v13->_flintDocumentUrlString;
    v13->_flintDocumentUrlString = v64;

    v66 = [payloadCopy objectForKeyedSubscript:@"fdad"];
    flintDocumentPrefetchedData = v13->_flintDocumentPrefetchedData;
    v13->_flintDocumentPrefetchedData = v66;

    v68 = [payloadCopy objectForKeyedSubscript:@"ffr"];
    flintFontResourceIDs = v13->_flintFontResourceIDs;
    v13->_flintFontResourceIDs = v68;

    v70 = [payloadCopy objectForKeyedSubscript:@"ex"];
    shortExcerpt = v13->_shortExcerpt;
    v13->_shortExcerpt = v70;

    v72 = [payloadCopy objectForKeyedSubscript:@"at"];
    accessoryText = v13->_accessoryText;
    v13->_accessoryText = v72;

    v74 = [payloadCopy objectForKeyedSubscript:@"tt"];
    topicIDs = v13->_topicIDs;
    v13->_topicIDs = v74;

    v76 = [payloadCopy objectForKeyedSubscript:@"gcs"];
    globalCohortScoresCTR = v13->_globalCohortScoresCTR;
    v13->_globalCohortScoresCTR = v76;

    v78 = [payloadCopy objectForKeyedSubscript:@"ccs"];
    channelCohortScoresCTR = v13->_channelCohortScoresCTR;
    v13->_channelCohortScoresCTR = v78;

    v80 = [payloadCopy objectForKeyedSubscript:@"tcs"];
    topicCohortScoresCTRs = v13->_topicCohortScoresCTRs;
    v13->_topicCohortScoresCTRs = v80;

    v82 = [payloadCopy objectForKeyedSubscript:@"iss"];
    v13->_sponsored = [v82 BOOLValue];

    v83 = [payloadCopy objectForKeyedSubscript:@"iac"];
    iAdCategories = v13->_iAdCategories;
    v13->_iAdCategories = v83;

    v85 = [payloadCopy objectForKeyedSubscript:@"iak"];
    iAdKeywords = v13->_iAdKeywords;
    v13->_iAdKeywords = v85;

    v87 = [payloadCopy objectForKeyedSubscript:@"iast"];
    iAdSectionIDs = v13->_iAdSectionIDs;
    v13->_iAdSectionIDs = v87;

    v89 = [payloadCopy objectForKeyedSubscript:@"ra2"];
    relatedArticleIDs = v13->_relatedArticleIDs;
    v13->_relatedArticleIDs = v89;

    v91 = [payloadCopy objectForKeyedSubscript:@"mfp"];
    moreFromPublisherArticleIDs = v13->_moreFromPublisherArticleIDs;
    v13->_moreFromPublisherArticleIDs = v91;

    v93 = [payloadCopy objectForKeyedSubscript:@"psa"];
    publisherSpecifiedArticleIDs = v13->_publisherSpecifiedArticleIDs;
    v13->_publisherSpecifiedArticleIDs = v93;

    v95 = [payloadCopy objectForKeyedSubscript:@"ct"];
    v13->_contentType = ArticleContentTypeFromString(v95);

    v96 = FCCKLocalizedArticleArticleRecirculationConfigurationKey();
    v97 = v14;
    v98 = [FCRecordFieldURLProtocol URLForRecordID:v14 fieldName:v96];

    v99 = [managerCopy assetHandleForURL:v98 lifetimeHint:2];
    articleRecirculationConfigAssetHandle = v13->_articleRecirculationConfigAssetHandle;
    v13->_articleRecirculationConfigAssetHandle = v99;

    v101 = [payloadCopy objectForKeyedSubscript:@"cu"];
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

    v104 = [payloadCopy objectForKeyedSubscript:@"vu"];
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

    v107 = [payloadCopy objectForKeyedSubscript:@"vd"];
    [v107 floatValue];
    v13->_videoDuration = v108;

    v13->_webEmbedsEnabled = 1;
    v109 = [payloadCopy objectForKeyedSubscript:@"bf"];
    unsignedLongLongValue2 = [v109 unsignedLongLongValue];

    v13->_needsRapidUpdates = unsignedLongLongValue2 & 1;
    v13->_disableTapToChannel = (unsignedLongLongValue2 & 2) != 0;
    v13->_pressRelease = (unsignedLongLongValue2 & 0x10) != 0;
    v13->_hiddenFromAutoFavorites = (unsignedLongLongValue2 & 0x20) != 0;
    v13->_showBundleSoftPaywall = (unsignedLongLongValue2 & 0x80) != 0;
    v13->_disableBookmarking = (unsignedLongLongValue2 & 0x200) != 0;
    v13->_hideModalCloseButton = (unsignedLongLongValue2 & 0x400) != 0;
    v13->_reduceVisibility = (unsignedLongLongValue2 & 0x800) != 0;
    v13->_reduceVisibilityForNonFollowers = (unsignedLongLongValue2 & 0x2000) != 0;
    v13->_webConverted = (unsignedLongLongValue2 & 0x1000) != 0;
    v111 = [payloadCopy objectForKeyedSubscript:@"mnv"];
    v13->_minimumNewsVersion = [FCRestrictions integerRepresentationOfShortVersionString:v111];

    v112 = [payloadCopy objectForKeyedSubscript:@"ip"];
    v13->_paid = [v112 BOOLValue];

    v113 = [payloadCopy objectForKeyedSubscript:@"ibp"];
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
    v119 = [payloadCopy objectForKeyedSubscript:@"st"];
    v13->_storyType = FCArticleStoryTypeForStoryTypeString(v119);

    storyStyle = v13->_storyStyle;
    v13->_storyStyle = 0;

    v121 = [payloadCopy objectForKeyedSubscript:@"btl"];
    unsignedLongLongValue3 = [v121 unsignedLongLongValue];

    if (unsignedLongLongValue3 <= 0)
    {
      v123 = -1;
    }

    else
    {
      v123 = unsignedLongLongValue3;
    }

    v13->_bodyTextLength = v123;
    v124 = [payloadCopy objectForKeyedSubscript:@"rl"];
    v125 = PBArticleRoleFromString(v124);
    v13->_role = FCArticleRoleFromPBRole(v125);

    v126 = [payloadCopy objectForKeyedSubscript:@"isi"];
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

    channelCopy = v133;
    managerCopy = v134;
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

- (id)contentWithContext:(id)context
{
  v32 = *MEMORY[0x1E69E9840];
  if ([(FCNotificationArticleHeadline *)self contentType]!= 2)
  {
    v22 = FCPushNotificationsLog;
    if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_ERROR))
    {
      v25 = v22;
      contentType = [(FCNotificationArticleHeadline *)self contentType];
      articleID = [(FCNotificationArticleHeadline *)self articleID];
      v28 = 134218242;
      v29 = contentType;
      v30 = 2114;
      v31 = articleID;
      _os_log_error_impl(&dword_1B63EF000, v25, OS_LOG_TYPE_ERROR, "Invalid content type: %lu for article ID: %{public}@", &v28, 0x16u);
    }

    goto LABEL_10;
  }

  flintDocumentUrlString = [(FCNotificationArticleHeadline *)self flintDocumentUrlString];
  v5 = [flintDocumentUrlString length];

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
    articleID2 = [(FCNotificationArticleHeadline *)self articleID];
    flintDocumentPrefetchedData = [(FCNotificationArticleHeadline *)self flintDocumentPrefetchedData];
    v10 = @"with";
    if (!flintDocumentPrefetchedData)
    {
      v10 = @"without";
    }

    v28 = 138543618;
    v29 = articleID2;
    v30 = 2114;
    v31 = v10;
    _os_log_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_DEFAULT, "Creating content for article %{public}@ %{public}@ prefetched ANF JSON", &v28, 0x16u);
  }

  flintDocumentUrlString2 = [(FCNotificationArticleHeadline *)self flintDocumentUrlString];
  flintDocumentPrefetchedData2 = [(FCNotificationArticleHeadline *)self flintDocumentPrefetchedData];
  assetManager = [(FCNotificationArticleHeadline *)self assetManager];
  v14 = [(FCNotificationArticleHeadline *)self generateFlintDocumentAssetHandleForUrlString:flintDocumentUrlString2 prefetchedData:flintDocumentPrefetchedData2 withAssetManager:assetManager];

  v15 = [FCANFContent alloc];
  articleID3 = [(FCNotificationArticleHeadline *)self articleID];
  flintFontResourceIDs = [(FCNotificationArticleHeadline *)self flintFontResourceIDs];
  v18 = [(FCANFContent *)v15 initWithIdentifier:articleID3 mainDocumentAssetHandle:v14 fontResourceIDs:flintFontResourceIDs];

  v19 = [FCArticleContent alloc];
  articleID4 = [(FCNotificationArticleHeadline *)self articleID];
  v21 = [(FCArticleContent *)v19 initWithArticleID:articleID4 anfContent:v18];

LABEL_11:
  v23 = *MEMORY[0x1E69E9840];

  return v21;
}

- (BOOL)isValid
{
  if ([(FCNotificationArticleHeadline *)self contentType]== 2)
  {
    flintDocumentUrlString = [(FCNotificationArticleHeadline *)self flintDocumentUrlString];
    v4 = [flintDocumentUrlString length] != 0;
  }

  else
  {
    v4 = 0;
  }

  sourceChannel = [(FCNotificationArticleHeadline *)self sourceChannel];

  return sourceChannel && v4;
}

- (id)generateThumbnailAssetHandleForUrlString:(id)string withAssetManager:(id)manager
{
  stringCopy = string;
  managerCopy = manager;
  if ([stringCopy length])
  {
    v7 = [managerCopy assetHandleForCKAssetURLString:stringCopy lifetimeHint:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)generateFlintDocumentAssetHandleForUrlString:(id)string prefetchedData:(id)data withAssetManager:(id)manager
{
  stringCopy = string;
  dataCopy = data;
  managerCopy = manager;
  if ([stringCopy length])
  {
    v10 = [managerCopy assetHandleForCKAssetURLString:stringCopy prefetchedData:dataCopy unzipIfNeeded:1 lifetimeHint:0];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (NSString)publisherID
{
  sourceChannel = [(FCNotificationArticleHeadline *)self sourceChannel];
  identifier = [sourceChannel identifier];

  return identifier;
}

- (BOOL)hasVideo
{
  videoURL = [(FCNotificationArticleHeadline *)self videoURL];
  v3 = videoURL != 0;

  return v3;
}

- (COMAPPLEFELDSPARPROTOCOLLIVERPOOLCohortList)globalCohorts
{
  v3 = objc_alloc_init(MEMORY[0x1E69B6C98]);
  globalCohortScoresCTR = [(FCNotificationArticleHeadline *)self globalCohortScoresCTR];
  [globalCohortScoresCTR doubleValue];
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
  channelCohortScoresCTR = [(FCNotificationArticleHeadline *)self channelCohortScoresCTR];
  [channelCohortScoresCTR doubleValue];
  [v3 setClicks:?];

  [v3 setImpressions:1.0];
  [v3 setType:{-[FCNotificationArticleHeadline isPaid](self, "isPaid")}];
  v5 = objc_alloc_init(MEMORY[0x1E69B6CA0]);
  [v5 addCohorts:v3];

  return v5;
}

- (void)enumerateTopicCohortsWithBlock:(id)block
{
  v26 = *MEMORY[0x1E69E9840];
  blockCopy = block;
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

  topicIDs = [(FCNotificationArticleHeadline *)self topicIDs];
  v13 = [topicIDs count];
  v14 = [v4 count];

  if (v13 == v14)
  {
    topicIDs2 = [(FCNotificationArticleHeadline *)self topicIDs];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __64__FCNotificationArticleHeadline_enumerateTopicCohortsWithBlock___block_invoke;
    v19[3] = &unk_1E7C38900;
    v20 = blockCopy;
    [topicIDs2 fc_enumerateSideBySideWithArray:v4 reverse:0 block:v19];
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