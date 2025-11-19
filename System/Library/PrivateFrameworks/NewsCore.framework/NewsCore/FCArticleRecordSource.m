@interface FCArticleRecordSource
+ (id)changeTagFromCKRecord:(id)a3;
+ (id)identifierFromCKRecord:(id)a3;
+ (id)modificationDateFromCKRecord:(id)a3;
- (FCArticleRecordSource)initWithContentDatabase:(id)a3 contentDirectory:(id)a4 appActivityMonitor:(id)a5 backgroundTaskable:(id)a6 defaultTTL:(double)a7 desiredArticleRecordFieldOptions:(unint64_t)a8 experimentalizableFieldsPostfix:(id)a9 engagementCohortsExpField:(id)a10 conversionCohortsExpField:(id)a11 activeTreatmentID:(id)a12;
- (FCArticleRecordSource)initWithContentDatabase:(id)a3 contentDirectory:(id)a4 appActivityMonitor:(id)a5 backgroundTaskable:(id)a6 defaultTTL:(double)a7 experimentalizableFieldsPostfix:(id)a8 activeTreatmentID:(id)a9;
- (NSArray)articleTagMetadataRecordKeys;
- (NSArray)conversionRecordKeys;
- (NSArray)embeddingRecordKeys;
- (NSArray)engagementRecordKeys;
- (NSArray)topicFlagsRecordKeys;
- (id)alwaysLocalizedKeys;
- (id)articleTagMetadataFromCKRecord:(id)a3;
- (id)articleTopicsFromCKRecord:(id)a3 engagement:(id)a4 conversionStats:(id)a5 tagMetadata:(id)a6;
- (id)conversionStatsFromCKRecord:(id)a3;
- (id)engagementFromCKRecord:(id)a3;
- (id)experimentalizableKeys;
- (id)localizableExperimentalizableKeys;
- (id)localizableKeys;
- (id)nonLocalizableKeys;
- (id)recordFromCKRecord:(id)a3 base:(id)a4;
- (id)saveArticleRecords:(id)a3;
- (id)topicFlagsFromCKRecord:(id)a3;
- (id)urlStringForThumbnailKey:(id)a3 inRecord:(id)a4;
- (void)_setEngagementCohortsExpField:(id)a3 conversionCohortsExpField:(id)a4;
- (void)updateEngagementCohortsExpField:(id)a3 conversionCohortsExpField:(id)a4;
@end

@implementation FCArticleRecordSource

- (id)nonLocalizableKeys
{
  v3 = [(FCArticleRecordSource *)self desiredArticleRecordFieldOptions];
  v4 = [(FCArticleRecordSource *)self engagementCohortsExpField];
  v5 = [(FCArticleRecordSource *)self conversionCohortsExpField];
  v6 = FCArticleRecordSourceDesiredKeysFromDesiredFieldOptions(v3, v4, v5);

  return v6;
}

- (id)localizableKeys
{
  [(FCArticleRecordSource *)self desiredArticleRecordFieldOptions];

  return __FCArticleRecordSourceLocalizableKeysFromDesiredFieldOptions_block_invoke();
}

- (id)alwaysLocalizedKeys
{
  v2 = [(FCArticleRecordSource *)self desiredArticleRecordFieldOptions];

  return FCArticleRecordSourceAlwaysLocalizedKeysFromDesiredFieldOptions(v2);
}

uint64_t __47__FCArticleRecordSource_experimentalizableKeys__block_invoke_2()
{
  qword_1EDB26A40 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"activeExperimentID", 0}];

  return MEMORY[0x1EEE66BB8]();
}

- (id)localizableExperimentalizableKeys
{
  if (qword_1EDB26A58 != -1)
  {
    dispatch_once(&qword_1EDB26A58, &__block_literal_global_82);
  }

  v3 = qword_1EDB26A50;

  return v3;
}

uint64_t __58__FCArticleRecordSource_localizableExperimentalizableKeys__block_invoke_2()
{
  qword_1EDB26A50 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"topicFlags", 0}];

  return MEMORY[0x1EEE66BB8]();
}

- (id)experimentalizableKeys
{
  if (qword_1EDB26A48 != -1)
  {
    dispatch_once(&qword_1EDB26A48, &__block_literal_global_78_0);
  }

  v3 = qword_1EDB26A40;

  return v3;
}

- (FCArticleRecordSource)initWithContentDatabase:(id)a3 contentDirectory:(id)a4 appActivityMonitor:(id)a5 backgroundTaskable:(id)a6 defaultTTL:(double)a7 experimentalizableFieldsPostfix:(id)a8 activeTreatmentID:(id)a9
{
  v34 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  v19 = a9;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v27 = "[FCArticleRecordSource initWithContentDatabase:contentDirectory:appActivityMonitor:backgroundTaskable:defaultTTL:experimentalizableFieldsPostfix:activeTreatmentID:]";
    v28 = 2080;
    v29 = "FCArticleRecordSource.m";
    v30 = 1024;
    v31 = 352;
    v32 = 2114;
    v33 = v20;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v21 = MEMORY[0x1E695DF30];
  v22 = *MEMORY[0x1E695D930];
  v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCArticleRecordSource initWithContentDatabase:contentDirectory:appActivityMonitor:backgroundTaskable:defaultTTL:experimentalizableFieldsPostfix:activeTreatmentID:]"];
  v24 = [v21 exceptionWithName:v22 reason:v23 userInfo:0];
  v25 = v24;

  objc_exception_throw(v24);
}

- (FCArticleRecordSource)initWithContentDatabase:(id)a3 contentDirectory:(id)a4 appActivityMonitor:(id)a5 backgroundTaskable:(id)a6 defaultTTL:(double)a7 desiredArticleRecordFieldOptions:(unint64_t)a8 experimentalizableFieldsPostfix:(id)a9 engagementCohortsExpField:(id)a10 conversionCohortsExpField:(id)a11 activeTreatmentID:(id)a12
{
  v44 = *MEMORY[0x1E69E9840];
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v23 = a9;
  v24 = a10;
  v25 = a11;
  v26 = a12;
  if (!v19 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v33 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "contentDatabase"];
    *buf = 136315906;
    v37 = "[FCArticleRecordSource initWithContentDatabase:contentDirectory:appActivityMonitor:backgroundTaskable:defaultTTL:desiredArticleRecordFieldOptions:experimentalizableFieldsPostfix:engagementCohortsExpField:conversionCohortsExpField:activeTreatmentID:]";
    v38 = 2080;
    v39 = "FCArticleRecordSource.m";
    v40 = 1024;
    v41 = 366;
    v42 = 2114;
    v43 = v33;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v20)
    {
      goto LABEL_6;
    }
  }

  else if (v20)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v34 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "contentDirectory"];
    *buf = 136315906;
    v37 = "[FCArticleRecordSource initWithContentDatabase:contentDirectory:appActivityMonitor:backgroundTaskable:defaultTTL:desiredArticleRecordFieldOptions:experimentalizableFieldsPostfix:engagementCohortsExpField:conversionCohortsExpField:activeTreatmentID:]";
    v38 = 2080;
    v39 = "FCArticleRecordSource.m";
    v40 = 1024;
    v41 = 367;
    v42 = 2114;
    v43 = v34;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v35.receiver = self;
  v35.super_class = FCArticleRecordSource;
  v27 = [(FCRecordSource *)&v35 initWithContentDatabase:v19 contentDirectory:v20 appActivityMonitor:v21 backgroundTaskable:v22 defaultTTL:v23 experimentalizableFieldsPostfix:v26 activeTreatmentID:a7];
  v28 = v27;
  if (v27)
  {
    v27->_desiredArticleRecordFieldOptions = a8;
    v29 = [objc_alloc(MEMORY[0x1E69B6920]) initWithOptions:1];
    experimentalFieldsLock = v28->_experimentalFieldsLock;
    v28->_experimentalFieldsLock = v29;

    [(FCArticleRecordSource *)v28 _setEngagementCohortsExpField:v24 conversionCohortsExpField:v25];
  }

  v31 = *MEMORY[0x1E69E9840];
  return v28;
}

- (void)_setEngagementCohortsExpField:(id)a3 conversionCohortsExpField:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(FCArticleRecordSource *)self experimentalFieldsLock];
  [v8 lock];

  v9 = [v7 copy];
  engagementCohortsExpField = self->_engagementCohortsExpField;
  self->_engagementCohortsExpField = v9;

  v11 = [v6 copy];
  conversionCohortsExpField = self->_conversionCohortsExpField;
  self->_conversionCohortsExpField = v11;

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __81__FCArticleRecordSource__setEngagementCohortsExpField_conversionCohortsExpField___block_invoke;
  v19[3] = &unk_1E7C36D40;
  v19[4] = self;
  v13 = [MEMORY[0x1E695DEC8] fc_array:v19];
  engagementRecordKeys = self->_engagementRecordKeys;
  self->_engagementRecordKeys = v13;

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __81__FCArticleRecordSource__setEngagementCohortsExpField_conversionCohortsExpField___block_invoke_2;
  v18[3] = &unk_1E7C36D40;
  v18[4] = self;
  v15 = [MEMORY[0x1E695DEC8] fc_array:v18];
  conversionRecordKeys = self->_conversionRecordKeys;
  self->_conversionRecordKeys = v15;

  v17 = [(FCArticleRecordSource *)self experimentalFieldsLock];
  [v17 unlock];
}

void __81__FCArticleRecordSource__setEngagementCohortsExpField_conversionCohortsExpField___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 208);
  v8 = a2;
  [v8 fc_safelyAddObject:v3];
  v4 = [*(a1 + 32) localizedKeysByOriginalKey];
  v5 = [v4 objectForKeyedSubscript:@"engagementCohortsBaseline"];
  [v8 fc_safelyAddObject:v5];

  v6 = [*(a1 + 32) localizedKeysByOriginalKey];
  v7 = [v6 objectForKeyedSubscript:@"scores"];
  [v8 fc_safelyAddObject:v7];

  [v8 addObject:@"scores"];
}

void __81__FCArticleRecordSource__setEngagementCohortsExpField_conversionCohortsExpField___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 216);
  v4 = a2;
  [v4 fc_safelyAddObject:v3];
  v6 = [*(a1 + 32) localizedKeysByOriginalKey];
  v5 = [v6 objectForKeyedSubscript:@"conversionCohortsBaseline"];
  [v4 fc_safelyAddObject:v5];
}

- (id)urlStringForThumbnailKey:(id)a3 inRecord:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([objc_opt_class() useTaggedImages])
  {
    v7 = [v5 stringByAppendingString:@"2"];
    v8 = [v6 objectForKey:v7];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = [v6 objectForKey:v5];
    }

    v11 = v10;
  }

  else
  {
    v11 = [v6 objectForKey:v5];
  }

  return v11;
}

- (id)recordFromCKRecord:(id)a3 base:(id)a4
{
  v157 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = MEMORY[0x1E69B6CF8];
  v8 = a4;
  v9 = objc_alloc_init(v7);
  [v9 setBase:v8];

  v10 = [(FCRecordSource *)self localizedKeysByOriginalKey];
  v11 = [v6 objectForKey:@"title"];
  [v9 setTitle:v11];

  v12 = [v6 objectForKey:@"titleCompact"];
  [v9 setTitleCompact:v12];

  v13 = [v6 objectForKey:@"titlesExperimental"];
  [v9 setExperimentalTitles:v13];

  v14 = [v6 objectForKey:@"sourceChannelTagID"];
  [v9 setSourceChannelTagID:v14];

  v15 = [v6 objectForKey:@"publishDate"];
  v16 = [v15 pbDate];
  [v9 setPublishDate:v16];

  v17 = [v6 objectForKey:@"publisherArticleVersion"];
  [v9 setPublisherArticleVersion:{objc_msgSend(v17, "longLongValue")}];

  v18 = [v6 objectForKey:@"backendArticleVersion"];
  [v9 setBackendArticleVersion:{objc_msgSend(v18, "longLongValue")}];

  v19 = [v6 objectForKey:@"thumbnailFocalFrame"];
  [v9 setThumbnailFocalFrame:{objc_msgSend(v19, "unsignedLongLongValue")}];

  v20 = [v6 objectForKey:@"thumbnailPerceptualHash"];
  [v9 setThumbnailPerceptualHash:v20];

  v21 = [v6 objectForKey:@"thumbnailLQMetadata"];
  [v9 setThumbnailLQMetadata:{objc_msgSend(v21, "unsignedLongLongValue")}];

  v22 = [v6 objectForKey:@"thumbnailMetadata"];
  [v9 setThumbnailMetadata:{objc_msgSend(v22, "unsignedLongLongValue")}];

  v23 = [v6 objectForKey:@"thumbnailMediumMetadata"];
  [v9 setThumbnailMediumMetadata:{objc_msgSend(v23, "unsignedLongLongValue")}];

  v24 = [v6 objectForKey:@"thumbnailHQMetadata"];
  [v9 setThumbnailHQMetadata:{objc_msgSend(v24, "unsignedLongLongValue")}];

  v25 = [v6 objectForKey:@"thumbnailUltraHQMetadata"];
  [v9 setThumbnailUltraHQMetadata:{objc_msgSend(v25, "unsignedLongLongValue")}];

  v26 = [v6 objectForKey:@"thumbnailWidgetLQMetadata"];
  [v9 setThumbnailWidgetLQMetadata:{objc_msgSend(v26, "unsignedLongLongValue")}];

  v27 = [v6 objectForKey:@"thumbnailWidgetMetadata"];
  [v9 setThumbnailWidgetMetadata:{objc_msgSend(v27, "unsignedLongLongValue")}];

  v28 = [v6 objectForKey:@"thumbnailWidgetHQMetadata"];
  [v9 setThumbnailWidgetHQMetadata:{objc_msgSend(v28, "unsignedLongLongValue")}];

  v29 = [(FCArticleRecordSource *)self urlStringForThumbnailKey:@"thumbnailLQ" inRecord:v6];
  [v9 setThumbnailLQURL:v29];

  v30 = [(FCArticleRecordSource *)self urlStringForThumbnailKey:@"thumbnail" inRecord:v6];
  [v9 setThumbnailURL:v30];

  v31 = [(FCArticleRecordSource *)self urlStringForThumbnailKey:@"thumbnailMedium" inRecord:v6];
  [v9 setThumbnailMediumURL:v31];

  v32 = [(FCArticleRecordSource *)self urlStringForThumbnailKey:@"thumbnailHQ" inRecord:v6];
  [v9 setThumbnailHQURL:v32];

  v33 = [(FCArticleRecordSource *)self urlStringForThumbnailKey:@"thumbnailUltraHQ" inRecord:v6];
  [v9 setThumbnailUltraHQURL:v33];

  v34 = [objc_opt_class() useTaggedImages];
  if (v34)
  {
    v35 = [v6 objectForKey:@"thumbnailWidgetLQ2"];
    if (v35)
    {
      v36 = @"thumbnailWidgetLQ2";
    }

    else
    {
      v36 = @"thumbnailWidgetLQ";
    }

    v37 = [v6 objectForKey:v36];
    [v9 setThumbnailWidgetLQURL:v37];

    v38 = [v6 objectForKey:@"thumbnailWidget2"];
    if (v38)
    {
      v39 = v38;
      v40 = [v6 objectForKey:@"thumbnailWidget2"];
      [v9 setThumbnailWidgetURL:v40];

      goto LABEL_9;
    }
  }

  else
  {
    v41 = [v6 objectForKey:@"thumbnailWidgetLQ"];
    [v9 setThumbnailWidgetLQURL:v41];
  }

  v42 = [v6 objectForKey:@"thumbnailWidget"];
  [v9 setThumbnailWidgetURL:v42];

  if (!v34)
  {
    v43 = [v6 objectForKey:@"thumbnailWidgetHQ"];
    [v9 setThumbnailWidgetHQURL:v43];
    goto LABEL_14;
  }

LABEL_9:
  v43 = [v6 objectForKey:@"thumbnailWidgetHQ2"];
  if (v43)
  {
    v44 = @"thumbnailWidgetHQ2";
  }

  else
  {
    v44 = @"thumbnailWidgetHQ";
  }

  v45 = [v6 objectForKey:v44];
  [v9 setThumbnailWidgetHQURL:v45];

LABEL_14:
  v46 = [v6 objectForKey:@"thumbnailPrimaryColor"];
  [v9 setThumbnailPrimaryColor:v46];

  v47 = [v6 objectForKey:@"thumbnailBackgroundColor"];
  [v9 setThumbnailBackgroundColor:v47];

  v48 = [v6 objectForKey:@"thumbnailTextColor"];
  [v9 setThumbnailTextColor:v48];

  v49 = [v6 objectForKey:@"thumbnailAccentColor"];
  [v9 setThumbnailAccentColor:v49];

  v50 = [v6 objectForKey:@"shortExcerpt"];
  [v9 setShortExcerpt:v50];

  v51 = [v6 objectForKey:@"accessoryText"];
  [v9 setAccessoryText:v51];

  v52 = [v6 objectForKey:@"contentURL"];
  [v9 setContentURL:v52];

  v53 = [v6 objectForKey:@"contentType"];
  [v9 setContentType:PBArticleContentTypeFromString(v53)];

  v54 = [v6 objectForKey:@"clusterID"];
  [v9 setClusterID:v54];

  objc_opt_class();
  v55 = [v6 objectForKey:@"flintDocument"];
  if (v55)
  {
    if (objc_opt_isKindOfClass())
    {
      v56 = v55;
    }

    else
    {
      v56 = 0;
    }
  }

  else
  {
    v56 = 0;
  }

  v57 = v56;
  [v9 setFlintDocumentURL:v57];

  v58 = [v6 objectForKey:@"flintFontResourceIDs"];
  v59 = [v58 fc_arrayOfObjectsPassingTest:&__block_literal_global_92_0];

  v60 = [v59 mutableCopy];
  [v9 setFlintFontResourceIDs:v60];

  v61 = [v6 objectForKey:@"videoURL"];
  [v9 setVideoURL:v61];

  v62 = [v6 objectForKey:@"videoStillImage"];
  [v9 setVideoStillImageURL:v62];

  v63 = [v6 objectForKey:@"videoDuration"];
  [v63 doubleValue];
  [v9 setVideoDuration:?];

  v64 = [v6 objectForKey:@"videoType"];
  [v9 setVideoType:v64];

  v65 = [v6 objectForKey:@"sportsEventIDs"];
  v66 = [v65 mutableCopy];
  [v9 setSportsEventIDs:v66];

  v67 = [v6 objectForKey:@"recipeIDs"];
  [v9 setRecipeIDs:v67];

  v68 = [v6 objectForKey:@"isFeature"];
  [v9 setIsFeatureCandidate:{objc_msgSend(v68, "BOOLValue")}];

  v69 = [v6 objectForKey:@"isSponsored"];
  [v9 setIsSponsored:{objc_msgSend(v69, "BOOLValue")}];

  v70 = [v6 objectForKey:@"iAdCategories"];
  v71 = [v70 mutableCopy];
  [v9 setIAdCategories:v71];

  v72 = [v6 objectForKey:@"iAdKeywords"];
  v73 = [v72 mutableCopy];
  [v9 setIAdKeywords:v73];

  v74 = [v6 objectForKey:@"iAdSectionTagIDs"];
  v75 = [v74 mutableCopy];
  [v9 setIAdSectionIDs:v75];

  v76 = [v6 objectForKey:@"blockedStorefrontIDs"];
  v77 = [v76 mutableCopy];
  [v9 setBlockedStorefrontIDs:v77];

  v78 = [v6 objectForKey:@"allowedStorefrontIDs"];
  v79 = [v78 mutableCopy];
  [v9 setAllowedStorefrontIDs:v79];

  v80 = [v6 objectForKey:@"isDraft"];
  [v9 setIsDraft:{objc_msgSend(v80, "BOOLValue")}];

  v81 = [v6 objectForKey:@"primaryAudience"];
  [v9 setPrimaryAudience:v81];

  v82 = [v6 objectForKey:@"referencedArticleID"];
  [v9 setReferencedArticleID:v82];

  v83 = [v6 objectForKey:@"relatedArticleIDs2"];
  v84 = [v83 mutableCopy];
  [v9 setRelatedArticleIDs:v84];

  v85 = [v6 objectForKey:@"moreFromPublisherArticleIDs"];
  v86 = [v85 mutableCopy];
  [v9 setMoreFromPublisherArticleIDs:v86];

  v87 = [v6 objectForKey:@"parentIssueID"];
  [v9 setParentIssueID:v87];

  v88 = [v6 objectForKey:@"halfLifeMillis"];
  [v9 setHalfLifeMilliseconds:{objc_msgSend(v88, "unsignedLongLongValue")}];

  v89 = [v6 objectForKey:@"halfLifeMillisOverride"];
  [v9 setHalfLifeMillisecondsOverride:{objc_msgSend(v89, "unsignedLongLongValue")}];

  v90 = [v6 objectForKey:@"linkedArticleIDs"];
  v91 = [v90 mutableCopy];
  [v9 setLinkedArticleIDs:v91];

  v92 = [v6 objectForKey:@"linkedIssueIDs"];
  v93 = [v92 mutableCopy];
  [v9 setLinkedIssueIDs:v93];

  v94 = [v6 objectForKey:@"bodyTextLength"];
  [v9 setBodyTextLength:{objc_msgSend(v94, "longLongValue")}];

  v95 = [v6 objectForKey:@"storyType"];
  [v9 setStoryType:PBArticleStoryTypeFromString(v95)];

  v96 = [v6 objectForKey:@"role"];
  [v9 setRole:PBArticleRoleFromString(v96)];

  v97 = [v6 objectForKey:@"behaviorFlags"];
  [v9 setBehaviorFlags:{objc_msgSend(v97, "unsignedLongLongValue")}];

  v98 = [v6 objectForKey:@"minNewsVersion"];
  [v9 setMinimumNewsVersion:{+[FCRestrictions integerRepresentationOfShortVersionString:](FCRestrictions, "integerRepresentationOfShortVersionString:", v98)}];

  v99 = [v6 objectForKey:@"coverArt"];
  [v9 setCoverArt:v99];

  v100 = [v6 objectForKey:@"videoCallToActionTitle"];
  [v9 setVideoCallToActionTitle:v100];

  v101 = [v6 objectForKey:@"videoCallToActionURL"];
  [v9 setVideoCallToActionURL:v101];

  v102 = [v6 objectForKey:@"isPaid"];
  [v9 setIsPaid:{objc_msgSend(v102, "BOOLValue")}];

  v103 = [v6 objectForKey:@"isBundlePaid"];
  [v9 setIsBundlePaid:{objc_msgSend(v103, "BOOLValue")}];

  v104 = [v6 objectForKey:@"isIssueOnly"];
  [v9 setIsIssueOnly:{objc_msgSend(v104, "BOOLValue")}];

  v105 = [v6 objectForKey:@"clusterIDStocks"];
  [v9 setStocksClusterID:v105];

  v106 = [v10 objectForKeyedSubscript:@"stocksMetadata"];
  v107 = [v6 objectForKey:v106];
  if (v107)
  {
    [v9 setStocksMetadata:v107];
  }

  else
  {
    v108 = [v6 objectForKey:@"stocksMetadata"];
    [v9 setStocksMetadata:v108];
  }

  v109 = [v10 objectForKeyedSubscript:@"stocksScores"];
  v110 = [v6 objectForKey:v109];
  if (v110)
  {
    [v9 setStocksScores:v110];
  }

  else
  {
    v111 = [v6 objectForKey:@"stocksScores"];
    [v9 setStocksScores:v111];
  }

  v112 = [v6 objectForKey:@"language"];
  [v9 setLanguage:v112];

  v113 = [v6 objectForKey:@"narrativeTrackMetadata"];
  [v9 setNarrativeTrackMetadata:v113];

  v114 = [v6 objectForKey:@"narrativeTrackFullURL"];
  [v9 setNarrativeTrackFullURL:v114];

  v115 = [v6 objectForKey:@"narrativeTrackSampleURL"];
  [v9 setNarrativeTrackSampleURL:v115];

  v116 = [v6 objectForKey:@"narrativeTrackTextRanges"];
  [v9 setNarrativeTrackTextRanges:v116];

  v117 = [v6 objectForKey:@"authors"];
  [v9 setAuthors:v117];

  v118 = [v6 objectForKey:@"layeredCover"];
  [v9 setLayeredCover:v118];

  v119 = [v6 objectForKey:@"layeredCoverAspectRatio"];
  [v119 doubleValue];
  [v9 setLayeredCoverAspectRatio:?];

  v120 = [v6 objectForKey:@"float16TitleEncoding"];
  [v9 setFloat16TitleEncoding:v120];

  v121 = [v6 objectForKey:@"float16FullBodyEncoding"];
  [v9 setFloat16FullBodyEncoding:v121];

  v122 = [(FCArticleRecordSource *)self engagementFromCKRecord:v6];
  v123 = [v122 globalCohorts];
  [v9 setGlobalCohorts:v123];

  v124 = [v122 sourceChannelCohorts];
  [v9 setSourceChannelCohorts:v124];

  v125 = [(FCArticleRecordSource *)self conversionStatsFromCKRecord:v6];
  v126 = [v125 globalConversionStats];
  [v9 setGlobalConversionStats:v126];

  v127 = [v125 channelConversionStats];
  [v9 setChannelConversionStats:v127];

  v128 = [(FCArticleRecordSource *)self articleTagMetadataFromCKRecord:v6];
  v129 = [v128 channelTagMetadata];
  [v9 setChannelTagMetadata:v129];

  v130 = [v128 topicTagMetadatas];
  v131 = [(FCArticleRecordSource *)self articleTopicsFromCKRecord:v6 engagement:v122 conversionStats:v125 tagMetadata:v130];
  [v9 setTopics:v131];

  v132 = [v9 allowedStorefrontIDs];
  [v132 removeObject:&stru_1F2DC7DC0];

  v133 = [v6 objectForKey:@"schemaFlags"];
  [v9 setSchemaFlags:{objc_msgSend(v133, "integerValue")}];

  v134 = [v10 objectForKeyedSubscript:@"articleRecirculationConfigurationAsset"];
  v135 = [v6 objectForKey:v134];
  [v9 setArticleRecirculationConfigurationURL:v135];

  v136 = [v6 objectForKey:@"publisherSpecifiedArticleIDs"];
  [v9 setPublisherSpecifiedArticleIDs:v136];

  v137 = objc_alloc(MEMORY[0x1E69B6C78]);
  v138 = [v6 objectForKey:@"expirationData"];
  v139 = [v137 initWithData:v138];
  [v9 setExpirationData:v139];

  v140 = [v6 objectForKey:@"routeURL"];
  [v9 setRouteURL:v140];

  if ([v9 contentType] == 2)
  {
    v141 = [v9 flintDocumentURL];

    if (!v141 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      v144 = objc_alloc(MEMORY[0x1E696AEC0]);
      v148 = [v9 base];
      v145 = [v148 identifier];
      v146 = [v6 recordType];
      v147 = [v144 initWithFormat:@"an ANF article record should always have a document URL, id=%@, type=%@", v145, v146];
      *buf = 136315906;
      v150 = "[FCArticleRecordSource recordFromCKRecord:base:]";
      v151 = 2080;
      v152 = "FCArticleRecordSource.m";
      v153 = 1024;
      v154 = 653;
      v155 = 2114;
      v156 = v147;
      _os_log_fault_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "*** Assertion failure (Identifier: MissingANFDocument) : %s %s:%d %{public}@", buf, 0x26u);
    }
  }

  v142 = *MEMORY[0x1E69E9840];

  return v9;
}

uint64_t __49__FCArticleRecordSource_recordFromCKRecord_base___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

+ (id)identifierFromCKRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 recordType];
  if ([v5 isEqualToString:@"FeedItemAndArticle"])
  {
    v6 = [v4 objectForKey:@"articleID"];
  }

  else
  {
    v9.receiver = a1;
    v9.super_class = &OBJC_METACLASS___FCArticleRecordSource;
    v6 = objc_msgSendSuper2(&v9, sel_identifierFromCKRecord_, v4);
  }

  v7 = v6;

  return v7;
}

+ (id)changeTagFromCKRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 recordType];
  if ([v5 isEqualToString:@"FeedItemAndArticle"])
  {
    v6 = [v4 objectForKey:@"articleETag"];
  }

  else
  {
    v9.receiver = a1;
    v9.super_class = &OBJC_METACLASS___FCArticleRecordSource;
    v6 = objc_msgSendSuper2(&v9, sel_changeTagFromCKRecord_, v4);
  }

  v7 = v6;

  return v7;
}

+ (id)modificationDateFromCKRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 recordType];
  if ([v5 isEqualToString:@"FeedItemAndArticle"])
  {
    v6 = [v4 objectForKey:@"articleModDate"];
  }

  else
  {
    v9.receiver = a1;
    v9.super_class = &OBJC_METACLASS___FCArticleRecordSource;
    v6 = objc_msgSendSuper2(&v9, sel_modificationDateFromCKRecord_, v4);
  }

  v7 = v6;

  return v7;
}

- (NSArray)topicFlagsRecordKeys
{
  v3 = [(FCRecordSource *)self experimentalizedKeysByOriginalKey];
  v4 = [(FCRecordSource *)self localizedExperimentalizedKeysByOriginalKey];
  v5 = [(FCRecordSource *)self localizedKeysByOriginalKey];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __45__FCArticleRecordSource_topicFlagsRecordKeys__block_invoke;
  v11[3] = &unk_1E7C3FF70;
  v12 = v5;
  v13 = v4;
  v14 = v3;
  v6 = v3;
  v7 = v4;
  v8 = v5;
  v9 = __45__FCArticleRecordSource_topicFlagsRecordKeys__block_invoke(v11);

  return v9;
}

uint64_t __45__FCArticleRecordSource_topicFlagsRecordKeys__block_invoke(id *a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__FCArticleRecordSource_topicFlagsRecordKeys__block_invoke_2;
  block[3] = &unk_1E7C376A0;
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  if (qword_1EDB26A68 != -1)
  {
    dispatch_once(&qword_1EDB26A68, block);
  }

  v2 = qword_1EDB26A60;
  v3 = qword_1EDB26A60;

  return v2;
}

void __45__FCArticleRecordSource_topicFlagsRecordKeys__block_invoke_2(id *a1)
{
  v2 = MEMORY[0x1E695DEC8];
  v7 = [a1[4] objectForKeyedSubscript:@"topicFlags"];
  v3 = [a1[5] objectForKeyedSubscript:@"topicFlags"];
  v4 = [a1[6] objectForKeyedSubscript:@"activeExperimentID"];
  v5 = [v2 arrayWithObjects:{@"topicTagIDs", @"topicFlags", v7, v3, v4, 0}];
  v6 = qword_1EDB26A60;
  qword_1EDB26A60 = v5;
}

- (id)topicFlagsFromCKRecord:(id)a3
{
  v4 = a3;
  v5 = [(FCRecordSource *)self experimentalizedKeysByOriginalKey];
  v6 = [v5 objectForKeyedSubscript:@"activeExperimentID"];
  v7 = [v4 objectForKey:v6];

  v8 = [(FCRecordSource *)self localizedExperimentalizedKeysByOriginalKey];
  v9 = [v8 objectForKeyedSubscript:@"topicFlags"];
  v10 = [v4 objectForKey:v9];

  v11 = [(FCRecordSource *)self localizedKeysByOriginalKey];
  v12 = [v11 objectForKeyedSubscript:@"topicFlags"];
  v13 = [v4 objectForKey:v12];

  v14 = [v10 count];
  if (v14 && (-[FCRecordSource activeTreatmentID](self, "activeTreatmentID"), self = objc_claimAutoreleasedReturnValue(), [v7 isEqualToString:self]))
  {
    v15 = v10;
  }

  else
  {
    if ([v13 count])
    {
      v16 = v13;
    }

    else
    {
      v16 = [v4 objectForKey:@"topicFlags"];
    }

    v15 = v16;
    if (!v14)
    {
      goto LABEL_9;
    }
  }

LABEL_9:

  return v15;
}

- (NSArray)articleTagMetadataRecordKeys
{
  v2 = [(FCRecordSource *)self localizedKeysByOriginalKey];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__FCArticleRecordSource_articleTagMetadataRecordKeys__block_invoke;
  v6[3] = &unk_1E7C3B578;
  v7 = v2;
  v3 = v2;
  v4 = __53__FCArticleRecordSource_articleTagMetadataRecordKeys__block_invoke(v6);

  return v4;
}

uint64_t __53__FCArticleRecordSource_articleTagMetadataRecordKeys__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__FCArticleRecordSource_articleTagMetadataRecordKeys__block_invoke_2;
  block[3] = &unk_1E7C36EA0;
  v5 = *(a1 + 32);
  if (qword_1EDB26A78 != -1)
  {
    dispatch_once(&qword_1EDB26A78, block);
  }

  v1 = qword_1EDB26A70;
  v2 = qword_1EDB26A70;

  return v1;
}

void __53__FCArticleRecordSource_articleTagMetadataRecordKeys__block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x1E695DEC8];
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"tagMetadata"];
  v2 = [v1 arrayWithObjects:{v4, @"tagMetadata", 0}];
  v3 = qword_1EDB26A70;
  qword_1EDB26A70 = v2;
}

- (id)articleTagMetadataFromCKRecord:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(FCArticleRecordSource *)self articleTagMetadataRecordKeys];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [v4 objectForKey:*(*(&v13 + 1) + 8 * i)];
        if (v9)
        {
          v10 = v9;
          v6 = [objc_alloc(MEMORY[0x1E69B6C90]) initWithData:v9];

          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)articleTopicsFromCKRecord:(id)a3 engagement:(id)a4 conversionStats:(id)a5 tagMetadata:(id)a6
{
  v69 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 objectForKey:@"scoresTopicTagIDs"];
  v15 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v14, "count")}];
  v16 = [v11 topicCohortScores];

  v46 = v14;
  if (v16)
  {
    v17 = [v11 topicCohortScores];
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __90__FCArticleRecordSource_articleTopicsFromCKRecord_engagement_conversionStats_tagMetadata___block_invoke;
    v59[3] = &unk_1E7C3FF98;
    v60 = v15;
    [v17 enumerateObjectsUsingBlock:v59];

    v18 = v60;
LABEL_3:

    goto LABEL_4;
  }

  v37 = [v11 topicCohorts];

  if (v37)
  {
    v38 = [v14 count];
    v39 = [v11 topicCohorts];
    v40 = [v39 count];

    if (v38 == v40)
    {
      v41 = [v11 topicCohorts];
      v57[0] = MEMORY[0x1E69E9820];
      v57[1] = 3221225472;
      v57[2] = __90__FCArticleRecordSource_articleTopicsFromCKRecord_engagement_conversionStats_tagMetadata___block_invoke_2;
      v57[3] = &unk_1E7C3FFC0;
      v58 = v15;
      [v46 fc_enumerateSideBySideWithArray:v41 reverse:0 block:v57];

      v18 = v58;
      goto LABEL_3;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v42 = objc_alloc(MEMORY[0x1E696AEC0]);
      v43 = [v11 topicCohorts];
      v44 = [v42 initWithFormat:@"Found non nil topicCohorts, but the count doesn't match scoresTopicIDs.\nscoresTopicIDs : %@\nscores.topicCohorts : %@", v46, v43];
      *buf = 136315906;
      v62 = "[FCArticleRecordSource articleTopicsFromCKRecord:engagement:conversionStats:tagMetadata:]";
      v63 = 2080;
      v64 = "FCArticleRecordSource.m";
      v65 = 1024;
      v66 = 761;
      v67 = 2114;
      v68 = v44;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }
  }

LABEL_4:
  v45 = v11;
  v19 = MEMORY[0x1E695DF20];
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __90__FCArticleRecordSource_articleTopicsFromCKRecord_engagement_conversionStats_tagMetadata___block_invoke_116;
  v55[3] = &unk_1E7C36EC8;
  v20 = v12;
  v56 = v20;
  v21 = [v19 fc_dictionary:v55];
  v22 = [v10 objectForKey:@"topicTagIDs"];
  v23 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v22, "count")}];
  v24 = [v22 count];
  if (v24 == [v13 count])
  {
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __90__FCArticleRecordSource_articleTopicsFromCKRecord_engagement_conversionStats_tagMetadata___block_invoke_3;
    v53[3] = &unk_1E7C40010;
    v54 = v23;
    [v22 fc_enumerateSideBySideWithArray:v13 reverse:0 block:v53];
  }

  v25 = [(FCArticleRecordSource *)self topicFlagsFromCKRecord:v10];
  v26 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v22, "count")}];
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __90__FCArticleRecordSource_articleTopicsFromCKRecord_engagement_conversionStats_tagMetadata___block_invoke_4;
  v47[3] = &unk_1E7C40038;
  v48 = v15;
  v49 = v21;
  v50 = v23;
  v51 = v25;
  v27 = v26;
  v52 = v27;
  v28 = v25;
  v29 = v23;
  v30 = v21;
  v31 = v15;
  [v22 enumerateObjectsUsingBlock:v47];
  v32 = v13;
  v33 = v52;
  v34 = v27;

  v35 = *MEMORY[0x1E69E9840];
  return v27;
}

void __90__FCArticleRecordSource_articleTopicsFromCKRecord_engagement_conversionStats_tagMetadata___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v3 cohorts];
  v4 = [v3 tagId];

  [v2 setObject:v5 forKey:v4];
}

void __90__FCArticleRecordSource_articleTopicsFromCKRecord_engagement_conversionStats_tagMetadata___block_invoke_116(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) topicConversionStats];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __90__FCArticleRecordSource_articleTopicsFromCKRecord_engagement_conversionStats_tagMetadata___block_invoke_2_117;
  v6[3] = &unk_1E7C3FFE8;
  v7 = v3;
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v6];
}

void __90__FCArticleRecordSource_articleTopicsFromCKRecord_engagement_conversionStats_tagMetadata___block_invoke_2_117(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v3 conversionStats];
  v4 = [v3 tagId];

  [v2 setObject:v5 forKey:v4];
}

void __90__FCArticleRecordSource_articleTopicsFromCKRecord_engagement_conversionStats_tagMetadata___block_invoke_4(id *a1, void *a2, unint64_t a3)
{
  v5 = MEMORY[0x1E69B6D00];
  v6 = a2;
  v16 = objc_alloc_init(v5);
  [v16 setTagID:v6];
  v7 = [a1[4] objectForKeyedSubscript:v6];
  [v16 setCohorts:v7];

  v8 = [a1[5] objectForKeyedSubscript:v6];
  [v16 setConversionStats:v8];

  v9 = [a1[6] objectForKeyedSubscript:v6];

  if (v9)
  {
    if ([v9 hasFlowRate])
    {
      [v9 flowRate];
      [v16 setFlowRate:v10];
    }

    if ([v9 hasSubscriptionRate])
    {
      [v9 subscriptionRate];
      [v16 setSubscriptionRate:v11];
    }

    if ([v9 hasQuality])
    {
      [v9 quality];
      [v16 setQuality:v12];
    }

    if ([v9 hasOntologyLevel])
    {
      [v16 setOntologyLevel:{objc_msgSend(v9, "ontologyLevel")}];
    }

    if ([v9 hasContentAndRelevanceInfo])
    {
      v13 = [v9 contentAndRelevanceInfo];
      [v16 setContentAndRelevanceInfo:v13];
    }
  }

  if ([a1[7] count] <= a3)
  {
    goto LABEL_25;
  }

  v14 = [a1[7] objectAtIndexedSubscript:a3];
  v15 = [v14 unsignedLongLongValue];

  if (v15)
  {
    [v16 setIsHidden:1];
    if ((v15 & 2) == 0)
    {
LABEL_15:
      if ((v15 & 4) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_30;
    }
  }

  else if ((v15 & 2) == 0)
  {
    goto LABEL_15;
  }

  [v16 setIsEligibleForGrouping:1];
  if ((v15 & 4) == 0)
  {
LABEL_16:
    if ((v15 & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_31;
  }

LABEL_30:
  [v16 setIsEligibleForGroupingIfFavorited:1];
  if ((v15 & 8) == 0)
  {
LABEL_17:
    if ((v15 & 0x10) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_32;
  }

LABEL_31:
  [v16 setIsEligibleForGroupingIfAutofavorited:1];
  if ((v15 & 0x10) == 0)
  {
LABEL_18:
    if ((v15 & 0x20) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_33;
  }

LABEL_32:
  [v16 setIsManagedTopic:1];
  if ((v15 & 0x20) == 0)
  {
LABEL_19:
    if ((v15 & 0x40) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_34;
  }

LABEL_33:
  [v16 setIsManagedTopicWinner:1];
  if ((v15 & 0x40) == 0)
  {
LABEL_20:
    if ((v15 & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_35;
  }

LABEL_34:
  [v16 setIsDisallowedFromGrouping:1];
  if ((v15 & 0x80) == 0)
  {
LABEL_21:
    if ((v15 & 0x100) == 0)
    {
      goto LABEL_22;
    }

LABEL_36:
    [v16 setIsEligibleForFoodGrouping:1];
    if ((v15 & 0x200) == 0)
    {
LABEL_23:
      if ((v15 & 0x400) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    goto LABEL_37;
  }

LABEL_35:
  [v16 setHardFollowRequiredForGrouping:1];
  if ((v15 & 0x100) != 0)
  {
    goto LABEL_36;
  }

LABEL_22:
  if ((v15 & 0x200) == 0)
  {
    goto LABEL_23;
  }

LABEL_37:
  [v16 setIsEligibleForFoodGroupingIfFavorited:1];
  if ((v15 & 0x400) != 0)
  {
LABEL_24:
    [v16 setIsEligibleForFoodGroupingIfAutofavorited:1];
  }

LABEL_25:
  [a1[8] addObject:v16];
}

- (NSArray)engagementRecordKeys
{
  v3 = [(FCArticleRecordSource *)self experimentalFieldsLock];
  [v3 lock];

  v4 = self->_engagementRecordKeys;
  v5 = [(FCArticleRecordSource *)self experimentalFieldsLock];
  [v5 unlock];

  return v4;
}

- (NSArray)conversionRecordKeys
{
  v3 = [(FCArticleRecordSource *)self experimentalFieldsLock];
  [v3 lock];

  v4 = self->_conversionRecordKeys;
  v5 = [(FCArticleRecordSource *)self experimentalFieldsLock];
  [v5 unlock];

  return v4;
}

- (NSArray)embeddingRecordKeys
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__FCArticleRecordSource_embeddingRecordKeys__block_invoke;
  v4[3] = &unk_1E7C36D40;
  v4[4] = self;
  v2 = [MEMORY[0x1E695DEC8] fc_array:v4];

  return v2;
}

void __44__FCArticleRecordSource_embeddingRecordKeys__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) desiredArticleRecordFieldOptions] & 0x10000000) != 0)
  {
    [v3 addObject:@"float16TitleEncoding"];
  }

  if (([*(a1 + 32) desiredArticleRecordFieldOptions] & 0x20000000) != 0)
  {
    [v3 addObject:@"float16FullBodyEncoding"];
  }
}

- (id)engagementFromCKRecord:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(FCArticleRecordSource *)self engagementRecordKeys];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [v4 objectForKey:*(*(&v13 + 1) + 8 * i)];
        if (v9)
        {
          v10 = v9;
          v6 = [objc_alloc(MEMORY[0x1E69B6C88]) initWithData:v9];

          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)conversionStatsFromCKRecord:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(FCArticleRecordSource *)self conversionRecordKeys];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [v4 objectForKey:*(*(&v13 + 1) + 8 * i)];
        if (v9)
        {
          v10 = v9;
          v6 = [objc_alloc(MEMORY[0x1E69B6C80]) initWithData:v9];

          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)saveArticleRecords:(id)a3
{
  v5.receiver = self;
  v5.super_class = FCArticleRecordSource;
  v3 = [(FCRecordSource *)&v5 saveRecords:a3];

  return v3;
}

- (void)updateEngagementCohortsExpField:(id)a3 conversionCohortsExpField:(id)a4
{
  [(FCArticleRecordSource *)self _setEngagementCohortsExpField:a3 conversionCohortsExpField:a4];
  v5.receiver = self;
  v5.super_class = FCArticleRecordSource;
  [(FCRecordSource *)&v5 forceRefreshDesiredKeys];
}

@end