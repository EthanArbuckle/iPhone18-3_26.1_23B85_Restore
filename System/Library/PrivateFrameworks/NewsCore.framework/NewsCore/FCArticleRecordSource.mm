@interface FCArticleRecordSource
+ (id)changeTagFromCKRecord:(id)record;
+ (id)identifierFromCKRecord:(id)record;
+ (id)modificationDateFromCKRecord:(id)record;
- (FCArticleRecordSource)initWithContentDatabase:(id)database contentDirectory:(id)directory appActivityMonitor:(id)monitor backgroundTaskable:(id)taskable defaultTTL:(double)l desiredArticleRecordFieldOptions:(unint64_t)options experimentalizableFieldsPostfix:(id)postfix engagementCohortsExpField:(id)self0 conversionCohortsExpField:(id)self1 activeTreatmentID:(id)self2;
- (FCArticleRecordSource)initWithContentDatabase:(id)database contentDirectory:(id)directory appActivityMonitor:(id)monitor backgroundTaskable:(id)taskable defaultTTL:(double)l experimentalizableFieldsPostfix:(id)postfix activeTreatmentID:(id)d;
- (NSArray)articleTagMetadataRecordKeys;
- (NSArray)conversionRecordKeys;
- (NSArray)embeddingRecordKeys;
- (NSArray)engagementRecordKeys;
- (NSArray)topicFlagsRecordKeys;
- (id)alwaysLocalizedKeys;
- (id)articleTagMetadataFromCKRecord:(id)record;
- (id)articleTopicsFromCKRecord:(id)record engagement:(id)engagement conversionStats:(id)stats tagMetadata:(id)metadata;
- (id)conversionStatsFromCKRecord:(id)record;
- (id)engagementFromCKRecord:(id)record;
- (id)experimentalizableKeys;
- (id)localizableExperimentalizableKeys;
- (id)localizableKeys;
- (id)nonLocalizableKeys;
- (id)recordFromCKRecord:(id)record base:(id)base;
- (id)saveArticleRecords:(id)records;
- (id)topicFlagsFromCKRecord:(id)record;
- (id)urlStringForThumbnailKey:(id)key inRecord:(id)record;
- (void)_setEngagementCohortsExpField:(id)field conversionCohortsExpField:(id)expField;
- (void)updateEngagementCohortsExpField:(id)field conversionCohortsExpField:(id)expField;
@end

@implementation FCArticleRecordSource

- (id)nonLocalizableKeys
{
  desiredArticleRecordFieldOptions = [(FCArticleRecordSource *)self desiredArticleRecordFieldOptions];
  engagementCohortsExpField = [(FCArticleRecordSource *)self engagementCohortsExpField];
  conversionCohortsExpField = [(FCArticleRecordSource *)self conversionCohortsExpField];
  v6 = FCArticleRecordSourceDesiredKeysFromDesiredFieldOptions(desiredArticleRecordFieldOptions, engagementCohortsExpField, conversionCohortsExpField);

  return v6;
}

- (id)localizableKeys
{
  [(FCArticleRecordSource *)self desiredArticleRecordFieldOptions];

  return __FCArticleRecordSourceLocalizableKeysFromDesiredFieldOptions_block_invoke();
}

- (id)alwaysLocalizedKeys
{
  desiredArticleRecordFieldOptions = [(FCArticleRecordSource *)self desiredArticleRecordFieldOptions];

  return FCArticleRecordSourceAlwaysLocalizedKeysFromDesiredFieldOptions(desiredArticleRecordFieldOptions);
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

- (FCArticleRecordSource)initWithContentDatabase:(id)database contentDirectory:(id)directory appActivityMonitor:(id)monitor backgroundTaskable:(id)taskable defaultTTL:(double)l experimentalizableFieldsPostfix:(id)postfix activeTreatmentID:(id)d
{
  v34 = *MEMORY[0x1E69E9840];
  databaseCopy = database;
  directoryCopy = directory;
  monitorCopy = monitor;
  taskableCopy = taskable;
  postfixCopy = postfix;
  dCopy = d;
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

- (FCArticleRecordSource)initWithContentDatabase:(id)database contentDirectory:(id)directory appActivityMonitor:(id)monitor backgroundTaskable:(id)taskable defaultTTL:(double)l desiredArticleRecordFieldOptions:(unint64_t)options experimentalizableFieldsPostfix:(id)postfix engagementCohortsExpField:(id)self0 conversionCohortsExpField:(id)self1 activeTreatmentID:(id)self2
{
  v44 = *MEMORY[0x1E69E9840];
  databaseCopy = database;
  directoryCopy = directory;
  monitorCopy = monitor;
  taskableCopy = taskable;
  postfixCopy = postfix;
  fieldCopy = field;
  expFieldCopy = expField;
  dCopy = d;
  if (!databaseCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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

    if (directoryCopy)
    {
      goto LABEL_6;
    }
  }

  else if (directoryCopy)
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
  v27 = [(FCRecordSource *)&v35 initWithContentDatabase:databaseCopy contentDirectory:directoryCopy appActivityMonitor:monitorCopy backgroundTaskable:taskableCopy defaultTTL:postfixCopy experimentalizableFieldsPostfix:dCopy activeTreatmentID:l];
  v28 = v27;
  if (v27)
  {
    v27->_desiredArticleRecordFieldOptions = options;
    v29 = [objc_alloc(MEMORY[0x1E69B6920]) initWithOptions:1];
    experimentalFieldsLock = v28->_experimentalFieldsLock;
    v28->_experimentalFieldsLock = v29;

    [(FCArticleRecordSource *)v28 _setEngagementCohortsExpField:fieldCopy conversionCohortsExpField:expFieldCopy];
  }

  v31 = *MEMORY[0x1E69E9840];
  return v28;
}

- (void)_setEngagementCohortsExpField:(id)field conversionCohortsExpField:(id)expField
{
  expFieldCopy = expField;
  fieldCopy = field;
  experimentalFieldsLock = [(FCArticleRecordSource *)self experimentalFieldsLock];
  [experimentalFieldsLock lock];

  v9 = [fieldCopy copy];
  engagementCohortsExpField = self->_engagementCohortsExpField;
  self->_engagementCohortsExpField = v9;

  v11 = [expFieldCopy copy];
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

  experimentalFieldsLock2 = [(FCArticleRecordSource *)self experimentalFieldsLock];
  [experimentalFieldsLock2 unlock];
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

- (id)urlStringForThumbnailKey:(id)key inRecord:(id)record
{
  keyCopy = key;
  recordCopy = record;
  if ([objc_opt_class() useTaggedImages])
  {
    v7 = [keyCopy stringByAppendingString:@"2"];
    v8 = [recordCopy objectForKey:v7];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = [recordCopy objectForKey:keyCopy];
    }

    v11 = v10;
  }

  else
  {
    v11 = [recordCopy objectForKey:keyCopy];
  }

  return v11;
}

- (id)recordFromCKRecord:(id)record base:(id)base
{
  v157 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  v7 = MEMORY[0x1E69B6CF8];
  baseCopy = base;
  v9 = objc_alloc_init(v7);
  [v9 setBase:baseCopy];

  localizedKeysByOriginalKey = [(FCRecordSource *)self localizedKeysByOriginalKey];
  v11 = [recordCopy objectForKey:@"title"];
  [v9 setTitle:v11];

  v12 = [recordCopy objectForKey:@"titleCompact"];
  [v9 setTitleCompact:v12];

  v13 = [recordCopy objectForKey:@"titlesExperimental"];
  [v9 setExperimentalTitles:v13];

  v14 = [recordCopy objectForKey:@"sourceChannelTagID"];
  [v9 setSourceChannelTagID:v14];

  v15 = [recordCopy objectForKey:@"publishDate"];
  pbDate = [v15 pbDate];
  [v9 setPublishDate:pbDate];

  v17 = [recordCopy objectForKey:@"publisherArticleVersion"];
  [v9 setPublisherArticleVersion:{objc_msgSend(v17, "longLongValue")}];

  v18 = [recordCopy objectForKey:@"backendArticleVersion"];
  [v9 setBackendArticleVersion:{objc_msgSend(v18, "longLongValue")}];

  v19 = [recordCopy objectForKey:@"thumbnailFocalFrame"];
  [v9 setThumbnailFocalFrame:{objc_msgSend(v19, "unsignedLongLongValue")}];

  v20 = [recordCopy objectForKey:@"thumbnailPerceptualHash"];
  [v9 setThumbnailPerceptualHash:v20];

  v21 = [recordCopy objectForKey:@"thumbnailLQMetadata"];
  [v9 setThumbnailLQMetadata:{objc_msgSend(v21, "unsignedLongLongValue")}];

  v22 = [recordCopy objectForKey:@"thumbnailMetadata"];
  [v9 setThumbnailMetadata:{objc_msgSend(v22, "unsignedLongLongValue")}];

  v23 = [recordCopy objectForKey:@"thumbnailMediumMetadata"];
  [v9 setThumbnailMediumMetadata:{objc_msgSend(v23, "unsignedLongLongValue")}];

  v24 = [recordCopy objectForKey:@"thumbnailHQMetadata"];
  [v9 setThumbnailHQMetadata:{objc_msgSend(v24, "unsignedLongLongValue")}];

  v25 = [recordCopy objectForKey:@"thumbnailUltraHQMetadata"];
  [v9 setThumbnailUltraHQMetadata:{objc_msgSend(v25, "unsignedLongLongValue")}];

  v26 = [recordCopy objectForKey:@"thumbnailWidgetLQMetadata"];
  [v9 setThumbnailWidgetLQMetadata:{objc_msgSend(v26, "unsignedLongLongValue")}];

  v27 = [recordCopy objectForKey:@"thumbnailWidgetMetadata"];
  [v9 setThumbnailWidgetMetadata:{objc_msgSend(v27, "unsignedLongLongValue")}];

  v28 = [recordCopy objectForKey:@"thumbnailWidgetHQMetadata"];
  [v9 setThumbnailWidgetHQMetadata:{objc_msgSend(v28, "unsignedLongLongValue")}];

  v29 = [(FCArticleRecordSource *)self urlStringForThumbnailKey:@"thumbnailLQ" inRecord:recordCopy];
  [v9 setThumbnailLQURL:v29];

  v30 = [(FCArticleRecordSource *)self urlStringForThumbnailKey:@"thumbnail" inRecord:recordCopy];
  [v9 setThumbnailURL:v30];

  v31 = [(FCArticleRecordSource *)self urlStringForThumbnailKey:@"thumbnailMedium" inRecord:recordCopy];
  [v9 setThumbnailMediumURL:v31];

  v32 = [(FCArticleRecordSource *)self urlStringForThumbnailKey:@"thumbnailHQ" inRecord:recordCopy];
  [v9 setThumbnailHQURL:v32];

  v33 = [(FCArticleRecordSource *)self urlStringForThumbnailKey:@"thumbnailUltraHQ" inRecord:recordCopy];
  [v9 setThumbnailUltraHQURL:v33];

  useTaggedImages = [objc_opt_class() useTaggedImages];
  if (useTaggedImages)
  {
    v35 = [recordCopy objectForKey:@"thumbnailWidgetLQ2"];
    if (v35)
    {
      v36 = @"thumbnailWidgetLQ2";
    }

    else
    {
      v36 = @"thumbnailWidgetLQ";
    }

    v37 = [recordCopy objectForKey:v36];
    [v9 setThumbnailWidgetLQURL:v37];

    v38 = [recordCopy objectForKey:@"thumbnailWidget2"];
    if (v38)
    {
      v39 = v38;
      v40 = [recordCopy objectForKey:@"thumbnailWidget2"];
      [v9 setThumbnailWidgetURL:v40];

      goto LABEL_9;
    }
  }

  else
  {
    v41 = [recordCopy objectForKey:@"thumbnailWidgetLQ"];
    [v9 setThumbnailWidgetLQURL:v41];
  }

  v42 = [recordCopy objectForKey:@"thumbnailWidget"];
  [v9 setThumbnailWidgetURL:v42];

  if (!useTaggedImages)
  {
    v43 = [recordCopy objectForKey:@"thumbnailWidgetHQ"];
    [v9 setThumbnailWidgetHQURL:v43];
    goto LABEL_14;
  }

LABEL_9:
  v43 = [recordCopy objectForKey:@"thumbnailWidgetHQ2"];
  if (v43)
  {
    v44 = @"thumbnailWidgetHQ2";
  }

  else
  {
    v44 = @"thumbnailWidgetHQ";
  }

  v45 = [recordCopy objectForKey:v44];
  [v9 setThumbnailWidgetHQURL:v45];

LABEL_14:
  v46 = [recordCopy objectForKey:@"thumbnailPrimaryColor"];
  [v9 setThumbnailPrimaryColor:v46];

  v47 = [recordCopy objectForKey:@"thumbnailBackgroundColor"];
  [v9 setThumbnailBackgroundColor:v47];

  v48 = [recordCopy objectForKey:@"thumbnailTextColor"];
  [v9 setThumbnailTextColor:v48];

  v49 = [recordCopy objectForKey:@"thumbnailAccentColor"];
  [v9 setThumbnailAccentColor:v49];

  v50 = [recordCopy objectForKey:@"shortExcerpt"];
  [v9 setShortExcerpt:v50];

  v51 = [recordCopy objectForKey:@"accessoryText"];
  [v9 setAccessoryText:v51];

  v52 = [recordCopy objectForKey:@"contentURL"];
  [v9 setContentURL:v52];

  v53 = [recordCopy objectForKey:@"contentType"];
  [v9 setContentType:PBArticleContentTypeFromString(v53)];

  v54 = [recordCopy objectForKey:@"clusterID"];
  [v9 setClusterID:v54];

  objc_opt_class();
  v55 = [recordCopy objectForKey:@"flintDocument"];
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

  v58 = [recordCopy objectForKey:@"flintFontResourceIDs"];
  v59 = [v58 fc_arrayOfObjectsPassingTest:&__block_literal_global_92_0];

  v60 = [v59 mutableCopy];
  [v9 setFlintFontResourceIDs:v60];

  v61 = [recordCopy objectForKey:@"videoURL"];
  [v9 setVideoURL:v61];

  v62 = [recordCopy objectForKey:@"videoStillImage"];
  [v9 setVideoStillImageURL:v62];

  v63 = [recordCopy objectForKey:@"videoDuration"];
  [v63 doubleValue];
  [v9 setVideoDuration:?];

  v64 = [recordCopy objectForKey:@"videoType"];
  [v9 setVideoType:v64];

  v65 = [recordCopy objectForKey:@"sportsEventIDs"];
  v66 = [v65 mutableCopy];
  [v9 setSportsEventIDs:v66];

  v67 = [recordCopy objectForKey:@"recipeIDs"];
  [v9 setRecipeIDs:v67];

  v68 = [recordCopy objectForKey:@"isFeature"];
  [v9 setIsFeatureCandidate:{objc_msgSend(v68, "BOOLValue")}];

  v69 = [recordCopy objectForKey:@"isSponsored"];
  [v9 setIsSponsored:{objc_msgSend(v69, "BOOLValue")}];

  v70 = [recordCopy objectForKey:@"iAdCategories"];
  v71 = [v70 mutableCopy];
  [v9 setIAdCategories:v71];

  v72 = [recordCopy objectForKey:@"iAdKeywords"];
  v73 = [v72 mutableCopy];
  [v9 setIAdKeywords:v73];

  v74 = [recordCopy objectForKey:@"iAdSectionTagIDs"];
  v75 = [v74 mutableCopy];
  [v9 setIAdSectionIDs:v75];

  v76 = [recordCopy objectForKey:@"blockedStorefrontIDs"];
  v77 = [v76 mutableCopy];
  [v9 setBlockedStorefrontIDs:v77];

  v78 = [recordCopy objectForKey:@"allowedStorefrontIDs"];
  v79 = [v78 mutableCopy];
  [v9 setAllowedStorefrontIDs:v79];

  v80 = [recordCopy objectForKey:@"isDraft"];
  [v9 setIsDraft:{objc_msgSend(v80, "BOOLValue")}];

  v81 = [recordCopy objectForKey:@"primaryAudience"];
  [v9 setPrimaryAudience:v81];

  v82 = [recordCopy objectForKey:@"referencedArticleID"];
  [v9 setReferencedArticleID:v82];

  v83 = [recordCopy objectForKey:@"relatedArticleIDs2"];
  v84 = [v83 mutableCopy];
  [v9 setRelatedArticleIDs:v84];

  v85 = [recordCopy objectForKey:@"moreFromPublisherArticleIDs"];
  v86 = [v85 mutableCopy];
  [v9 setMoreFromPublisherArticleIDs:v86];

  v87 = [recordCopy objectForKey:@"parentIssueID"];
  [v9 setParentIssueID:v87];

  v88 = [recordCopy objectForKey:@"halfLifeMillis"];
  [v9 setHalfLifeMilliseconds:{objc_msgSend(v88, "unsignedLongLongValue")}];

  v89 = [recordCopy objectForKey:@"halfLifeMillisOverride"];
  [v9 setHalfLifeMillisecondsOverride:{objc_msgSend(v89, "unsignedLongLongValue")}];

  v90 = [recordCopy objectForKey:@"linkedArticleIDs"];
  v91 = [v90 mutableCopy];
  [v9 setLinkedArticleIDs:v91];

  v92 = [recordCopy objectForKey:@"linkedIssueIDs"];
  v93 = [v92 mutableCopy];
  [v9 setLinkedIssueIDs:v93];

  v94 = [recordCopy objectForKey:@"bodyTextLength"];
  [v9 setBodyTextLength:{objc_msgSend(v94, "longLongValue")}];

  v95 = [recordCopy objectForKey:@"storyType"];
  [v9 setStoryType:PBArticleStoryTypeFromString(v95)];

  v96 = [recordCopy objectForKey:@"role"];
  [v9 setRole:PBArticleRoleFromString(v96)];

  v97 = [recordCopy objectForKey:@"behaviorFlags"];
  [v9 setBehaviorFlags:{objc_msgSend(v97, "unsignedLongLongValue")}];

  v98 = [recordCopy objectForKey:@"minNewsVersion"];
  [v9 setMinimumNewsVersion:{+[FCRestrictions integerRepresentationOfShortVersionString:](FCRestrictions, "integerRepresentationOfShortVersionString:", v98)}];

  v99 = [recordCopy objectForKey:@"coverArt"];
  [v9 setCoverArt:v99];

  v100 = [recordCopy objectForKey:@"videoCallToActionTitle"];
  [v9 setVideoCallToActionTitle:v100];

  v101 = [recordCopy objectForKey:@"videoCallToActionURL"];
  [v9 setVideoCallToActionURL:v101];

  v102 = [recordCopy objectForKey:@"isPaid"];
  [v9 setIsPaid:{objc_msgSend(v102, "BOOLValue")}];

  v103 = [recordCopy objectForKey:@"isBundlePaid"];
  [v9 setIsBundlePaid:{objc_msgSend(v103, "BOOLValue")}];

  v104 = [recordCopy objectForKey:@"isIssueOnly"];
  [v9 setIsIssueOnly:{objc_msgSend(v104, "BOOLValue")}];

  v105 = [recordCopy objectForKey:@"clusterIDStocks"];
  [v9 setStocksClusterID:v105];

  v106 = [localizedKeysByOriginalKey objectForKeyedSubscript:@"stocksMetadata"];
  v107 = [recordCopy objectForKey:v106];
  if (v107)
  {
    [v9 setStocksMetadata:v107];
  }

  else
  {
    v108 = [recordCopy objectForKey:@"stocksMetadata"];
    [v9 setStocksMetadata:v108];
  }

  v109 = [localizedKeysByOriginalKey objectForKeyedSubscript:@"stocksScores"];
  v110 = [recordCopy objectForKey:v109];
  if (v110)
  {
    [v9 setStocksScores:v110];
  }

  else
  {
    v111 = [recordCopy objectForKey:@"stocksScores"];
    [v9 setStocksScores:v111];
  }

  v112 = [recordCopy objectForKey:@"language"];
  [v9 setLanguage:v112];

  v113 = [recordCopy objectForKey:@"narrativeTrackMetadata"];
  [v9 setNarrativeTrackMetadata:v113];

  v114 = [recordCopy objectForKey:@"narrativeTrackFullURL"];
  [v9 setNarrativeTrackFullURL:v114];

  v115 = [recordCopy objectForKey:@"narrativeTrackSampleURL"];
  [v9 setNarrativeTrackSampleURL:v115];

  v116 = [recordCopy objectForKey:@"narrativeTrackTextRanges"];
  [v9 setNarrativeTrackTextRanges:v116];

  v117 = [recordCopy objectForKey:@"authors"];
  [v9 setAuthors:v117];

  v118 = [recordCopy objectForKey:@"layeredCover"];
  [v9 setLayeredCover:v118];

  v119 = [recordCopy objectForKey:@"layeredCoverAspectRatio"];
  [v119 doubleValue];
  [v9 setLayeredCoverAspectRatio:?];

  v120 = [recordCopy objectForKey:@"float16TitleEncoding"];
  [v9 setFloat16TitleEncoding:v120];

  v121 = [recordCopy objectForKey:@"float16FullBodyEncoding"];
  [v9 setFloat16FullBodyEncoding:v121];

  v122 = [(FCArticleRecordSource *)self engagementFromCKRecord:recordCopy];
  globalCohorts = [v122 globalCohorts];
  [v9 setGlobalCohorts:globalCohorts];

  sourceChannelCohorts = [v122 sourceChannelCohorts];
  [v9 setSourceChannelCohorts:sourceChannelCohorts];

  v125 = [(FCArticleRecordSource *)self conversionStatsFromCKRecord:recordCopy];
  globalConversionStats = [v125 globalConversionStats];
  [v9 setGlobalConversionStats:globalConversionStats];

  channelConversionStats = [v125 channelConversionStats];
  [v9 setChannelConversionStats:channelConversionStats];

  v128 = [(FCArticleRecordSource *)self articleTagMetadataFromCKRecord:recordCopy];
  channelTagMetadata = [v128 channelTagMetadata];
  [v9 setChannelTagMetadata:channelTagMetadata];

  topicTagMetadatas = [v128 topicTagMetadatas];
  v131 = [(FCArticleRecordSource *)self articleTopicsFromCKRecord:recordCopy engagement:v122 conversionStats:v125 tagMetadata:topicTagMetadatas];
  [v9 setTopics:v131];

  allowedStorefrontIDs = [v9 allowedStorefrontIDs];
  [allowedStorefrontIDs removeObject:&stru_1F2DC7DC0];

  v133 = [recordCopy objectForKey:@"schemaFlags"];
  [v9 setSchemaFlags:{objc_msgSend(v133, "integerValue")}];

  v134 = [localizedKeysByOriginalKey objectForKeyedSubscript:@"articleRecirculationConfigurationAsset"];
  v135 = [recordCopy objectForKey:v134];
  [v9 setArticleRecirculationConfigurationURL:v135];

  v136 = [recordCopy objectForKey:@"publisherSpecifiedArticleIDs"];
  [v9 setPublisherSpecifiedArticleIDs:v136];

  v137 = objc_alloc(MEMORY[0x1E69B6C78]);
  v138 = [recordCopy objectForKey:@"expirationData"];
  v139 = [v137 initWithData:v138];
  [v9 setExpirationData:v139];

  v140 = [recordCopy objectForKey:@"routeURL"];
  [v9 setRouteURL:v140];

  if ([v9 contentType] == 2)
  {
    flintDocumentURL = [v9 flintDocumentURL];

    if (!flintDocumentURL && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      v144 = objc_alloc(MEMORY[0x1E696AEC0]);
      base = [v9 base];
      identifier = [base identifier];
      recordType = [recordCopy recordType];
      v146 = [v144 initWithFormat:@"an ANF article record should always have a document URL, id=%@, type=%@", identifier, recordType];
      *buf = 136315906;
      v150 = "[FCArticleRecordSource recordFromCKRecord:base:]";
      v151 = 2080;
      v152 = "FCArticleRecordSource.m";
      v153 = 1024;
      v154 = 653;
      v155 = 2114;
      v156 = v146;
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

+ (id)identifierFromCKRecord:(id)record
{
  recordCopy = record;
  recordType = [recordCopy recordType];
  if ([recordType isEqualToString:@"FeedItemAndArticle"])
  {
    v6 = [recordCopy objectForKey:@"articleID"];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = &OBJC_METACLASS___FCArticleRecordSource;
    v6 = objc_msgSendSuper2(&v9, sel_identifierFromCKRecord_, recordCopy);
  }

  v7 = v6;

  return v7;
}

+ (id)changeTagFromCKRecord:(id)record
{
  recordCopy = record;
  recordType = [recordCopy recordType];
  if ([recordType isEqualToString:@"FeedItemAndArticle"])
  {
    v6 = [recordCopy objectForKey:@"articleETag"];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = &OBJC_METACLASS___FCArticleRecordSource;
    v6 = objc_msgSendSuper2(&v9, sel_changeTagFromCKRecord_, recordCopy);
  }

  v7 = v6;

  return v7;
}

+ (id)modificationDateFromCKRecord:(id)record
{
  recordCopy = record;
  recordType = [recordCopy recordType];
  if ([recordType isEqualToString:@"FeedItemAndArticle"])
  {
    v6 = [recordCopy objectForKey:@"articleModDate"];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = &OBJC_METACLASS___FCArticleRecordSource;
    v6 = objc_msgSendSuper2(&v9, sel_modificationDateFromCKRecord_, recordCopy);
  }

  v7 = v6;

  return v7;
}

- (NSArray)topicFlagsRecordKeys
{
  experimentalizedKeysByOriginalKey = [(FCRecordSource *)self experimentalizedKeysByOriginalKey];
  localizedExperimentalizedKeysByOriginalKey = [(FCRecordSource *)self localizedExperimentalizedKeysByOriginalKey];
  localizedKeysByOriginalKey = [(FCRecordSource *)self localizedKeysByOriginalKey];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __45__FCArticleRecordSource_topicFlagsRecordKeys__block_invoke;
  v11[3] = &unk_1E7C3FF70;
  v12 = localizedKeysByOriginalKey;
  v13 = localizedExperimentalizedKeysByOriginalKey;
  v14 = experimentalizedKeysByOriginalKey;
  v6 = experimentalizedKeysByOriginalKey;
  v7 = localizedExperimentalizedKeysByOriginalKey;
  v8 = localizedKeysByOriginalKey;
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

- (id)topicFlagsFromCKRecord:(id)record
{
  recordCopy = record;
  experimentalizedKeysByOriginalKey = [(FCRecordSource *)self experimentalizedKeysByOriginalKey];
  v6 = [experimentalizedKeysByOriginalKey objectForKeyedSubscript:@"activeExperimentID"];
  v7 = [recordCopy objectForKey:v6];

  localizedExperimentalizedKeysByOriginalKey = [(FCRecordSource *)self localizedExperimentalizedKeysByOriginalKey];
  v9 = [localizedExperimentalizedKeysByOriginalKey objectForKeyedSubscript:@"topicFlags"];
  v10 = [recordCopy objectForKey:v9];

  localizedKeysByOriginalKey = [(FCRecordSource *)self localizedKeysByOriginalKey];
  v12 = [localizedKeysByOriginalKey objectForKeyedSubscript:@"topicFlags"];
  v13 = [recordCopy objectForKey:v12];

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
      v16 = [recordCopy objectForKey:@"topicFlags"];
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
  localizedKeysByOriginalKey = [(FCRecordSource *)self localizedKeysByOriginalKey];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__FCArticleRecordSource_articleTagMetadataRecordKeys__block_invoke;
  v6[3] = &unk_1E7C3B578;
  v7 = localizedKeysByOriginalKey;
  v3 = localizedKeysByOriginalKey;
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

- (id)articleTagMetadataFromCKRecord:(id)record
{
  v18 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  articleTagMetadataRecordKeys = [(FCArticleRecordSource *)self articleTagMetadataRecordKeys];
  v6 = [articleTagMetadataRecordKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(articleTagMetadataRecordKeys);
        }

        v9 = [recordCopy objectForKey:*(*(&v13 + 1) + 8 * i)];
        if (v9)
        {
          v10 = v9;
          v6 = [objc_alloc(MEMORY[0x1E69B6C90]) initWithData:v9];

          goto LABEL_11;
        }
      }

      v6 = [articleTagMetadataRecordKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (id)articleTopicsFromCKRecord:(id)record engagement:(id)engagement conversionStats:(id)stats tagMetadata:(id)metadata
{
  v69 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  engagementCopy = engagement;
  statsCopy = stats;
  metadataCopy = metadata;
  v14 = [recordCopy objectForKey:@"scoresTopicTagIDs"];
  v15 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v14, "count")}];
  topicCohortScores = [engagementCopy topicCohortScores];

  v46 = v14;
  if (topicCohortScores)
  {
    topicCohortScores2 = [engagementCopy topicCohortScores];
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __90__FCArticleRecordSource_articleTopicsFromCKRecord_engagement_conversionStats_tagMetadata___block_invoke;
    v59[3] = &unk_1E7C3FF98;
    v60 = v15;
    [topicCohortScores2 enumerateObjectsUsingBlock:v59];

    v18 = v60;
LABEL_3:

    goto LABEL_4;
  }

  topicCohorts = [engagementCopy topicCohorts];

  if (topicCohorts)
  {
    v38 = [v14 count];
    topicCohorts2 = [engagementCopy topicCohorts];
    v40 = [topicCohorts2 count];

    if (v38 == v40)
    {
      topicCohorts3 = [engagementCopy topicCohorts];
      v57[0] = MEMORY[0x1E69E9820];
      v57[1] = 3221225472;
      v57[2] = __90__FCArticleRecordSource_articleTopicsFromCKRecord_engagement_conversionStats_tagMetadata___block_invoke_2;
      v57[3] = &unk_1E7C3FFC0;
      v58 = v15;
      [v46 fc_enumerateSideBySideWithArray:topicCohorts3 reverse:0 block:v57];

      v18 = v58;
      goto LABEL_3;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v42 = objc_alloc(MEMORY[0x1E696AEC0]);
      topicCohorts4 = [engagementCopy topicCohorts];
      v44 = [v42 initWithFormat:@"Found non nil topicCohorts, but the count doesn't match scoresTopicIDs.\nscoresTopicIDs : %@\nscores.topicCohorts : %@", v46, topicCohorts4];
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
  v45 = engagementCopy;
  v19 = MEMORY[0x1E695DF20];
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __90__FCArticleRecordSource_articleTopicsFromCKRecord_engagement_conversionStats_tagMetadata___block_invoke_116;
  v55[3] = &unk_1E7C36EC8;
  v20 = statsCopy;
  v56 = v20;
  v21 = [v19 fc_dictionary:v55];
  v22 = [recordCopy objectForKey:@"topicTagIDs"];
  v23 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v22, "count")}];
  v24 = [v22 count];
  if (v24 == [metadataCopy count])
  {
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __90__FCArticleRecordSource_articleTopicsFromCKRecord_engagement_conversionStats_tagMetadata___block_invoke_3;
    v53[3] = &unk_1E7C40010;
    v54 = v23;
    [v22 fc_enumerateSideBySideWithArray:metadataCopy reverse:0 block:v53];
  }

  v25 = [(FCArticleRecordSource *)self topicFlagsFromCKRecord:recordCopy];
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
  v32 = metadataCopy;
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
  experimentalFieldsLock = [(FCArticleRecordSource *)self experimentalFieldsLock];
  [experimentalFieldsLock lock];

  v4 = self->_engagementRecordKeys;
  experimentalFieldsLock2 = [(FCArticleRecordSource *)self experimentalFieldsLock];
  [experimentalFieldsLock2 unlock];

  return v4;
}

- (NSArray)conversionRecordKeys
{
  experimentalFieldsLock = [(FCArticleRecordSource *)self experimentalFieldsLock];
  [experimentalFieldsLock lock];

  v4 = self->_conversionRecordKeys;
  experimentalFieldsLock2 = [(FCArticleRecordSource *)self experimentalFieldsLock];
  [experimentalFieldsLock2 unlock];

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

- (id)engagementFromCKRecord:(id)record
{
  v18 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  engagementRecordKeys = [(FCArticleRecordSource *)self engagementRecordKeys];
  v6 = [engagementRecordKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(engagementRecordKeys);
        }

        v9 = [recordCopy objectForKey:*(*(&v13 + 1) + 8 * i)];
        if (v9)
        {
          v10 = v9;
          v6 = [objc_alloc(MEMORY[0x1E69B6C88]) initWithData:v9];

          goto LABEL_11;
        }
      }

      v6 = [engagementRecordKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (id)conversionStatsFromCKRecord:(id)record
{
  v18 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  conversionRecordKeys = [(FCArticleRecordSource *)self conversionRecordKeys];
  v6 = [conversionRecordKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(conversionRecordKeys);
        }

        v9 = [recordCopy objectForKey:*(*(&v13 + 1) + 8 * i)];
        if (v9)
        {
          v10 = v9;
          v6 = [objc_alloc(MEMORY[0x1E69B6C80]) initWithData:v9];

          goto LABEL_11;
        }
      }

      v6 = [conversionRecordKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (id)saveArticleRecords:(id)records
{
  v5.receiver = self;
  v5.super_class = FCArticleRecordSource;
  v3 = [(FCRecordSource *)&v5 saveRecords:records];

  return v3;
}

- (void)updateEngagementCohortsExpField:(id)field conversionCohortsExpField:(id)expField
{
  [(FCArticleRecordSource *)self _setEngagementCohortsExpField:field conversionCohortsExpField:expField];
  v5.receiver = self;
  v5.super_class = FCArticleRecordSource;
  [(FCRecordSource *)&v5 forceRefreshDesiredKeys];
}

@end