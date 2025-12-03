@interface FCTagRecordSource
- (FCTagRecordSource)initWithContentDatabase:(id)database contentDirectory:(id)directory appActivityMonitor:(id)monitor backgroundTaskable:(id)taskable defaultTTL:(double)l desiredTagRecordFieldOptions:(unint64_t)options;
- (FCTagRecordSource)initWithContentDatabase:(id)database contentDirectory:(id)directory appActivityMonitor:(id)monitor backgroundTaskable:(id)taskable defaultTTL:(double)l experimentalizableFieldsPostfix:(id)postfix activeTreatmentID:(id)d;
- (id)alwaysLocalizedKeys;
- (id)experimentalizableKeys;
- (id)localizableExperimentalizableKeys;
- (id)localizableKeys;
- (id)localizableLanguageSpecificKeys;
- (id)recordFromCKRecord:(id)record base:(id)base;
- (id)saveTagRecords:(id)records;
@end

@implementation FCTagRecordSource

- (FCTagRecordSource)initWithContentDatabase:(id)database contentDirectory:(id)directory appActivityMonitor:(id)monitor backgroundTaskable:(id)taskable defaultTTL:(double)l experimentalizableFieldsPostfix:(id)postfix activeTreatmentID:(id)d
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
    v27 = "[FCTagRecordSource initWithContentDatabase:contentDirectory:appActivityMonitor:backgroundTaskable:defaultTTL:experimentalizableFieldsPostfix:activeTreatmentID:]";
    v28 = 2080;
    v29 = "FCTagRecordSource.m";
    v30 = 1024;
    v31 = 183;
    v32 = 2114;
    v33 = v20;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v21 = MEMORY[0x1E695DF30];
  v22 = *MEMORY[0x1E695D930];
  v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCTagRecordSource initWithContentDatabase:contentDirectory:appActivityMonitor:backgroundTaskable:defaultTTL:experimentalizableFieldsPostfix:activeTreatmentID:]"];
  v24 = [v21 exceptionWithName:v22 reason:v23 userInfo:0];
  v25 = v24;

  objc_exception_throw(v24);
}

- (FCTagRecordSource)initWithContentDatabase:(id)database contentDirectory:(id)directory appActivityMonitor:(id)monitor backgroundTaskable:(id)taskable defaultTTL:(double)l desiredTagRecordFieldOptions:(unint64_t)options
{
  v35 = *MEMORY[0x1E69E9840];
  databaseCopy = database;
  directoryCopy = directory;
  monitorCopy = monitor;
  taskableCopy = taskable;
  if (!databaseCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "contentDatabase"];
    *buf = 136315906;
    v28 = "[FCTagRecordSource initWithContentDatabase:contentDirectory:appActivityMonitor:backgroundTaskable:defaultTTL:desiredTagRecordFieldOptions:]";
    v29 = 2080;
    v30 = "FCTagRecordSource.m";
    v31 = 1024;
    v32 = 193;
    v33 = 2114;
    v34 = v24;
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
    v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "contentDirectory"];
    *buf = 136315906;
    v28 = "[FCTagRecordSource initWithContentDatabase:contentDirectory:appActivityMonitor:backgroundTaskable:defaultTTL:desiredTagRecordFieldOptions:]";
    v29 = 2080;
    v30 = "FCTagRecordSource.m";
    v31 = 1024;
    v32 = 194;
    v33 = 2114;
    v34 = v25;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v26.receiver = self;
  v26.super_class = FCTagRecordSource;
  v18 = [(FCRecordSource *)&v26 initWithContentDatabase:databaseCopy contentDirectory:directoryCopy appActivityMonitor:monitorCopy backgroundTaskable:taskableCopy defaultTTL:0 experimentalizableFieldsPostfix:0 activeTreatmentID:l];
  v19 = v18;
  if (v18)
  {
    v18->_desiredFieldOptions = options;
    v20 = FCTagRecordSourceDesiredKeysFromDesiredFieldOptions(options);
    nonLocalizableKeys = v19->_nonLocalizableKeys;
    v19->_nonLocalizableKeys = v20;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v19;
}

- (id)experimentalizableKeys
{
  if (qword_1EDB26950 != -1)
  {
    dispatch_once(&qword_1EDB26950, &__block_literal_global_19_0);
  }

  v3 = _MergedGlobals_10;

  return v3;
}

uint64_t __43__FCTagRecordSource_experimentalizableKeys__block_invoke_2()
{
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"activeExperimentID", @"publisherSpecifiedArticleIDs", 0}];
  v1 = _MergedGlobals_10;
  _MergedGlobals_10 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)localizableExperimentalizableKeys
{
  if (qword_1EDB26960 != -1)
  {
    dispatch_once(&qword_1EDB26960, &__block_literal_global_23);
  }

  v3 = qword_1EDB26958;

  return v3;
}

uint64_t __54__FCTagRecordSource_localizableExperimentalizableKeys__block_invoke_2()
{
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"groupingAvailability", @"superfeedConfigResourceID", 0}];
  v1 = qword_1EDB26958;
  qword_1EDB26958 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)localizableKeys
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__FCTagRecordSource_localizableKeys__block_invoke;
  block[3] = &unk_1E7C36EA0;
  block[4] = self;
  if (qword_1EDB26970 != -1)
  {
    dispatch_once(&qword_1EDB26970, block);
  }

  return qword_1EDB26968;
}

void __36__FCTagRecordSource_localizableKeys__block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __36__FCTagRecordSource_localizableKeys__block_invoke_2;
  v3[3] = &unk_1E7C36D40;
  v3[4] = *(a1 + 32);
  v1 = [MEMORY[0x1E695DEC8] fc_array:v3];
  v2 = qword_1EDB26968;
  qword_1EDB26968 = v1;
}

void __36__FCTagRecordSource_localizableKeys__block_invoke_2(uint64_t a1, void *a2)
{
  v6[12] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (([*(a1 + 32) desiredFieldOptions] & 2) != 0)
  {
    [v3 addObject:@"name"];
  }

  v6[0] = @"publisherPaidOfferableConfig";
  v6[1] = @"publisherPaidDescriptionStrings";
  v6[2] = @"isHidden";
  v6[3] = @"paidBundleSubscriptionButtonConfig";
  v6[4] = @"articleRecirculationConfiguration";
  v6[5] = @"superfeedConfigResourceID";
  v6[6] = @"sportsRecommendationMappings";
  v6[7] = @"isSportsRecommendable";
  v6[8] = @"highlightsArticleListID";
  v6[9] = @"sportsData";
  v6[10] = @"subscriptionRate";
  v6[11] = @"groupingAvailability";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:12];
  [v3 addObjectsFromArray:v4];

  v5 = *MEMORY[0x1E69E9840];
}

- (id)alwaysLocalizedKeys
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__FCTagRecordSource_alwaysLocalizedKeys__block_invoke;
  block[3] = &unk_1E7C36EA0;
  block[4] = self;
  if (qword_1EDB26980 != -1)
  {
    dispatch_once(&qword_1EDB26980, block);
  }

  return qword_1EDB26978;
}

void __40__FCTagRecordSource_alwaysLocalizedKeys__block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __40__FCTagRecordSource_alwaysLocalizedKeys__block_invoke_2;
  v3[3] = &unk_1E7C36D40;
  v3[4] = *(a1 + 32);
  v1 = [MEMORY[0x1E695DEC8] fc_array:v3];
  v2 = qword_1EDB26978;
  qword_1EDB26978 = v1;
}

void __40__FCTagRecordSource_alwaysLocalizedKeys__block_invoke_2(uint64_t a1, void *a2)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (([*(a1 + 32) desiredFieldOptions] & 0x200) != 0)
  {
    [v3 addObject:@"stocksFeedConfiguration"];
  }

  v6[0] = @"feedConfiguration";
  v6[1] = @"propertyFlagsLocalized";
  v6[2] = @"sectionFeedConfiguration";
  v6[3] = @"foodGroupingAvailability";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:4];
  [v3 addObjectsFromArray:v4];

  v5 = *MEMORY[0x1E69E9840];
}

- (id)localizableLanguageSpecificKeys
{
  if (qword_1EDB26990 != -1)
  {
    dispatch_once(&qword_1EDB26990, &__block_literal_global_28_0);
  }

  v3 = qword_1EDB26988;

  return v3;
}

uint64_t __52__FCTagRecordSource_localizableLanguageSpecificKeys__block_invoke_2()
{
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"name", 0}];
  v1 = qword_1EDB26988;
  qword_1EDB26988 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)recordFromCKRecord:(id)record base:(id)base
{
  v270 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  baseCopy = base;
  v253 = objc_alloc_init(MEMORY[0x1E69B7000]);
  v255 = baseCopy;
  [v253 setBase:baseCopy];
  localizedKeysByOriginalKey = [(FCRecordSource *)self localizedKeysByOriginalKey];
  v9 = [localizedKeysByOriginalKey objectForKeyedSubscript:@"name"];
  v239 = [recordCopy objectForKey:v9];

  v10 = [localizedKeysByOriginalKey objectForKeyedSubscript:@"nameCompact"];
  v11 = [recordCopy objectForKey:v10];

  v12 = [localizedKeysByOriginalKey objectForKeyedSubscript:@"feedConfiguration"];
  v250 = [recordCopy objectForKey:v12];

  v13 = [localizedKeysByOriginalKey objectForKeyedSubscript:?];
  v249 = [recordCopy objectForKey:v13];

  v14 = [localizedKeysByOriginalKey objectForKeyedSubscript:?];
  v248 = [recordCopy objectForKey:v14];

  v15 = [localizedKeysByOriginalKey objectForKeyedSubscript:?];
  v247 = [recordCopy objectForKey:v15];

  v16 = [localizedKeysByOriginalKey objectForKeyedSubscript:?];
  v246 = [recordCopy objectForKey:v16];

  v17 = [localizedKeysByOriginalKey objectForKeyedSubscript:?];
  v245 = [recordCopy objectForKey:v17];

  v244 = [FCRecordSource resolveLocalizableExperimentalizableFieldforKey:"resolveLocalizableExperimentalizableFieldforKey:inRecord:activeExperimentIDKey:" inRecord:? activeExperimentIDKey:?];
  v18 = [localizedKeysByOriginalKey objectForKeyedSubscript:?];
  v243 = [recordCopy objectForKey:v18];

  v19 = [localizedKeysByOriginalKey objectForKeyedSubscript:?];
  v242 = [recordCopy objectForKey:v19];

  v20 = [localizedKeysByOriginalKey objectForKeyedSubscript:?];
  v237 = [recordCopy objectForKey:v20];

  v251 = localizedKeysByOriginalKey;
  v21 = [localizedKeysByOriginalKey objectForKeyedSubscript:?];
  v241 = [recordCopy objectForKey:v21];

  experimentalizedKeysByOriginalKey = [(FCRecordSource *)self experimentalizedKeysByOriginalKey];
  v23 = [experimentalizedKeysByOriginalKey objectForKeyedSubscript:@"activeExperimentID"];
  v24 = [recordCopy objectForKey:v23];

  v236 = experimentalizedKeysByOriginalKey;
  v25 = [experimentalizedKeysByOriginalKey objectForKeyedSubscript:@"publisherSpecifiedArticleIDs"];
  v26 = [recordCopy objectForKey:v25];

  v27 = [recordCopy objectForKey:@"publisherSpecifiedArticleIDs"];
  v234 = v26;
  v235 = v24;
  v233 = v27;
  selfCopy = self;
  if ([v26 count])
  {
    activeTreatmentID = [(FCRecordSource *)self activeTreatmentID];
    if ([v24 isEqualToString:activeTreatmentID])
    {
      v29 = v26;
    }

    else
    {
      v29 = v27;
    }

    v30 = v29;
  }

  else
  {
    v30 = v27;
  }

  v232 = v30;
  v31 = [v30 mutableCopy];
  [v253 setPublisherSpecifiedArticleIDs:v31];

  v32 = [recordCopy objectForKey:@"publisherSpecifiedArticles"];
  [v253 setPublisherSpecifiedArticlesJson:v32];

  objc_opt_class();
  v33 = [recordCopy objectForKey:@"publisherSpecifiedArticleIDsModifiedDate"];
  if (v33)
  {
    if (objc_opt_isKindOfClass())
    {
      v34 = v33;
    }

    else
    {
      v34 = 0;
    }
  }

  else
  {
    v34 = 0;
  }

  v35 = v34;
  pbDate = [v35 pbDate];
  [v253 setPublisherSpecifiedArticleIDsModifiedDate:pbDate];

  localizedLanguageSpecificKeysByOriginalKey = [(FCRecordSource *)self localizedLanguageSpecificKeysByOriginalKey];
  v37 = [localizedLanguageSpecificKeysByOriginalKey objectForKeyedSubscript:@"name"];
  v38 = [recordCopy objectForKey:v37];

  v39 = [recordCopy objectForKey:@"hideAccessoryText"];
  [v253 setHideAccessoryText:{objc_msgSend(v39, "BOOLValue")}];

  v230 = v38;
  if ([v38 length] || (v38 = v239, objc_msgSend(v239, "length")))
  {
    [v253 setName:v38];
  }

  else
  {
    v225 = [recordCopy objectForKey:@"name"];
    [v253 setName:v225];
  }

  if ([v11 length])
  {
    v40 = v253;
    [v253 setNameCompact:v11];
  }

  else
  {
    v41 = [recordCopy objectForKey:@"nameCompact"];
    v40 = v253;
    [v253 setNameCompact:v41];
  }

  v42 = [recordCopy objectForKey:@"type"];
  [v40 setType:PBTagTypeFromString(v42)];

  v43 = [recordCopy objectForKey:@"primaryAudience"];
  [v40 setPrimaryAudience:v43];

  v44 = [recordCopy objectForKey:@"primaryAudience"];
  [v40 setIsExplicitContent:{objc_msgSend(v44, "isEqualToString:", @"MATURE"}];

  v45 = [recordCopy objectForKey:@"contentProvider"];
  [v40 setContentProvider:{objc_msgSend(v45, "unsignedLongLongValue")}];

  v46 = [recordCopy objectForKey:@"isPublic"];
  [v40 setIsPublic:{objc_msgSend(v46, "BOOLValue")}];

  v47 = [recordCopy objectForKey:@"isDeprecated"];
  [v40 setIsDeprecated:{objc_msgSend(v47, "BOOLValue")}];

  v48 = [recordCopy objectForKey:@"replacementID"];
  [v40 setReplacementID:v48];

  v49 = [recordCopy objectForKey:@"parent"];
  recordID = [v49 recordID];
  recordName = [recordID recordName];
  [v40 setParentID:recordName];

  v52 = [recordCopy objectForKey:@"defaultSectionTagID"];
  [v40 setChannelDefaultSectionID:v52];

  v53 = [recordCopy objectForKey:@"sectionTagIDs"];
  v54 = [v53 mutableCopy];
  [v40 setChannelSectionIDs:v54];

  v55 = 0x1E696A000uLL;
  objc_opt_class();
  v56 = [recordCopy objectForKey:@"logoImage"];
  if (v56)
  {
    if (objc_opt_isKindOfClass())
    {
      v57 = v56;
    }

    else
    {
      v57 = 0;
    }
  }

  else
  {
    v57 = 0;
  }

  v58 = v57;
  [v253 setLogoURL:v58];

  v59 = [recordCopy objectForKey:@"iAdCategories"];
  v60 = [v59 mutableCopy];
  [v253 setIAdCategories:v60];

  v61 = [recordCopy objectForKey:@"iAdKeywords"];
  v62 = [v61 mutableCopy];
  [v253 setIAdKeywords:v62];

  v63 = [recordCopy objectForKey:@"blockedStorefrontIDs"];
  v64 = [v63 mutableCopy];
  [v253 setBlockedStorefrontIDs:v64];

  v65 = [recordCopy objectForKey:@"allowedStorefrontIDs"];
  v66 = [v65 mutableCopy];
  [v253 setAllowedStorefrontIDs:v66];

  v67 = [v250 length];
  v68 = MEMORY[0x1E69B6E28];
  if (v67)
  {
    v69 = [MEMORY[0x1E69B6E28] feedConfigurationFromJSON:v250];
    [v253 setFeedConfiguration:v69];
  }

  else
  {
    v69 = [recordCopy objectForKey:@"feedConfiguration"];
    v70 = [v68 feedConfigurationFromJSON:v69];
    [v253 setFeedConfiguration:v70];
  }

  v71 = v253;

  objc_opt_class();
  v72 = [recordCopy objectForKey:@"nameImage"];
  if (v72)
  {
    if (objc_opt_isKindOfClass())
    {
      v73 = v72;
    }

    else
    {
      v73 = 0;
    }
  }

  else
  {
    v73 = 0;
  }

  v74 = v73;
  [v253 setNameImageURL:v74];

  objc_opt_class();
  v75 = [recordCopy objectForKey:@"nameImageCompact"];
  if (v75)
  {
    if (objc_opt_isKindOfClass())
    {
      v76 = v75;
    }

    else
    {
      v76 = 0;
    }
  }

  else
  {
    v76 = 0;
  }

  v77 = v76;
  [v253 setNameImageCompactURL:v77];

  objc_opt_class();
  v78 = [recordCopy objectForKey:@"nameImageForDarkBackground"];
  if (v78)
  {
    if (objc_opt_isKindOfClass())
    {
      v79 = v78;
    }

    else
    {
      v79 = 0;
    }
  }

  else
  {
    v79 = 0;
  }

  v80 = v79;
  [v253 setNameImageForDarkBackgroundURL:v80];

  objc_opt_class();
  v81 = [recordCopy objectForKey:@"nameImageMask"];
  if (v81)
  {
    if (objc_opt_isKindOfClass())
    {
      v82 = v81;
    }

    else
    {
      v82 = 0;
    }
  }

  else
  {
    v82 = 0;
  }

  v83 = v82;
  [v253 setNameImageMaskURL:v83];

  v84 = [recordCopy objectForKey:@"nameImageMetadata"];
  [v253 setNameImageMetadata:v84];

  v85 = [recordCopy objectForKey:@"nameImageCompactMetadata"];
  [v253 setNameImageCompactMetadata:v85];

  v86 = [recordCopy objectForKey:@"nameImageMaskWidgetSmall"];
  [v253 setNameImageMaskWidgetLQURL:v86];

  v87 = [recordCopy objectForKey:@"nameImageMaskWidgetLarge"];
  [v253 setNameImageMaskWidgetHQURL:v87];

  v88 = [recordCopy objectForKey:@"nameImageLarge"];
  [v253 setNameImageLargeURL:v88];

  v89 = [recordCopy objectForKey:@"nameImageLargeMask"];
  [v253 setNameImageLargeMaskURL:v89];

  v90 = [recordCopy objectForKey:@"navigationChromeBackgroundImage"];
  [v253 setNavigationChromeBackgroundImageURL:v90];

  v91 = [recordCopy objectForKey:@"navigationChromeBackgroundDarkModeImage"];
  [v253 setDarkStyleNavigationChromeBackgroundImageURL:v91];

  v92 = [recordCopy objectForKey:@"navigationChromeBackgroundImageCompact"];
  [v253 setNavigationChromeBackgroundImageCompactURL:v92];

  v93 = [recordCopy objectForKey:@"navigationChromeBackgroundDarkModeImageCompact"];
  [v253 setDarkStyleNavigationChromeBackgroundImageCompactURL:v93];

  v94 = [recordCopy objectForKey:@"navigationChromeBackgroundImageLarge"];
  [v253 setNavigationChromeBackgroundImageLargeURL:v94];

  v95 = [recordCopy objectForKey:@"navigationChromeBackgroundDarkModeImageLarge"];
  [v253 setDarkStyleNavigationChromeBackgroundImageLargeURL:v95];

  objc_opt_class();
  v96 = [recordCopy objectForKey:@"coverImage"];
  if (v96)
  {
    if (objc_opt_isKindOfClass())
    {
      v97 = v96;
    }

    else
    {
      v97 = 0;
    }
  }

  else
  {
    v97 = 0;
  }

  v98 = v97;
  [v253 setCoverImageURL:v98];

  objc_opt_class();
  v99 = [recordCopy objectForKey:@"feedNavImage"];
  if (v99)
  {
    if (objc_opt_isKindOfClass())
    {
      v100 = v99;
    }

    else
    {
      v100 = 0;
    }
  }

  else
  {
    v100 = 0;
  }

  v101 = v100;
  [v253 setFeedNavImageURL:v101];

  objc_opt_class();
  v102 = [recordCopy objectForKey:@"feedNavImageHQ"];
  if (v102)
  {
    if (objc_opt_isKindOfClass())
    {
      v103 = v102;
    }

    else
    {
      v103 = 0;
    }
  }

  else
  {
    v103 = 0;
  }

  v104 = v103;
  [v253 setFeedNavImageHQURL:v104];

  objc_opt_class();
  v105 = [recordCopy objectForKey:@"language"];
  if (v105)
  {
    if (objc_opt_isKindOfClass())
    {
      v106 = v105;
    }

    else
    {
      v106 = 0;
    }
  }

  else
  {
    v106 = 0;
  }

  v107 = v106;
  [v253 setLanguage:v107];

  objc_opt_class();
  v108 = [recordCopy objectForKey:@"magazineGenre"];
  if (v108)
  {
    if (objc_opt_isKindOfClass())
    {
      v109 = v108;
    }

    else
    {
      v109 = 0;
    }
  }

  else
  {
    v109 = 0;
  }

  v110 = v109;
  [v253 setMagazineGenre:v110];

  v111 = [recordCopy objectForKey:@"template"];
  [v253 setTemplateJson:v111];

  v112 = [recordCopy objectForKey:@"score"];
  [v253 setScore:{objc_msgSend(v112, "unsignedLongLongValue")}];

  v113 = [recordCopy objectForKey:@"minNewsVersion"];
  [v253 setMinimumNewsVersion:{+[FCRestrictions integerRepresentationOfShortVersionString:](FCRestrictions, "integerRepresentationOfShortVersionString:", v113)}];

  v114 = [recordCopy objectForKey:@"isNotificationEnabled"];
  [v253 setIsNotificationEnabled:{objc_msgSend(v114, "BOOLValue")}];

  objc_opt_class();
  v115 = [recordCopy objectForKey:@"subtitle"];
  if (v115)
  {
    if (objc_opt_isKindOfClass())
    {
      v116 = v115;
    }

    else
    {
      v116 = 0;
    }
  }

  else
  {
    v116 = 0;
  }

  v117 = v116;
  [v253 setSubtitle:v117];

  v118 = [recordCopy objectForKey:@"latestIssueIDs"];
  [v253 setLatestIssueIDs:v118];

  v119 = [recordCopy objectForKey:@"recentIssueIDs"];
  [v253 setRecentIssueIDs:v119];

  v120 = [v251 objectForKeyedSubscript:@"highlightsArticleListID"];
  v121 = [recordCopy objectForKey:v120];
  [v253 setHighlightsArticleListID:v121];

  v122 = [recordCopy objectForKey:@"archiveIssueListID"];
  [v253 setArchiveIssueListID:v122];

  if (v241)
  {
    [v241 doubleValue];
    [v253 setSubscriptionRate:?];
  }

  else
  {
    v123 = [recordCopy objectForKey:@"subscriptionRate"];
    [v123 doubleValue];
    [v253 setSubscriptionRate:?];
  }

  v124 = [recordCopy objectForKey:@"adTargetingKeywords"];
  v125 = [v124 mutableCopy];
  [v253 setAdTargetingKeywords:v125];

  if ([v247 length])
  {
    v126 = v247;
  }

  else
  {
    v126 = [recordCopy objectForKey:@"sectionFeedConfiguration"];
  }

  v229 = v126;
  v127 = [MEMORY[0x1E695DF20] fc_dictionaryFromJSON:v126];
  v128 = [v127 objectForKey:@"sectionFeedConfigurations"];

  v252 = recordCopy;
  v238 = v11;
  v256 = v128;
  if (v128)
  {
    array = [MEMORY[0x1E695DF70] array];
    v257 = 0u;
    v258 = 0u;
    v259 = 0u;
    v260 = 0u;
    channelSectionIDs = [v253 channelSectionIDs];
    v131 = [channelSectionIDs countByEnumeratingWithState:&v257 objects:v269 count:16];
    if (v131)
    {
      v132 = v131;
      v133 = *v258;
      do
      {
        for (i = 0; i != v132; ++i)
        {
          if (*v258 != v133)
          {
            objc_enumerationMutation(channelSectionIDs);
          }

          v135 = *(*(&v257 + 1) + 8 * i);
          v136 = MEMORY[0x1E69B6E28];
          v137 = [v256 objectForKeyedSubscript:v135];
          v138 = [v136 feedConfigurationFromDict:v137];

          if (v138)
          {
            [array addObject:v138];
          }

          else
          {
            v139 = FCRecordSourceLog;
            if (os_log_type_enabled(FCRecordSourceLog, OS_LOG_TYPE_ERROR))
            {
              v140 = v139;
              identifier = [v255 identifier];
              *buf = 138412546;
              v262 = identifier;
              v263 = 2112;
              v264 = v135;
              _os_log_error_impl(&dword_1B63EF000, v140, OS_LOG_TYPE_ERROR, "channel %@ is missing a feed configuration for section %@", buf, 0x16u);
            }
          }
        }

        v132 = [channelSectionIDs countByEnumeratingWithState:&v257 objects:v269 count:16];
      }

      while (v132);
    }

    v71 = v253;
    [v253 setChannelSectionFeedConfigurations:array];

    v55 = 0x1E696A000;
  }

  else
  {
    channelSectionIDs2 = [v253 channelSectionIDs];
    v143 = [channelSectionIDs2 count];

    if (v143)
    {
      v144 = FCRecordSourceLog;
      if (os_log_type_enabled(FCRecordSourceLog, OS_LOG_TYPE_ERROR))
      {
        v227 = v144;
        identifier2 = [v255 identifier];
        *buf = 138412290;
        v262 = identifier2;
        _os_log_error_impl(&dword_1B63EF000, v227, OS_LOG_TYPE_ERROR, "channel %@ is missing section feed configurations", buf, 0xCu);
      }
    }
  }

  if ([v246 length])
  {
    [v71 setStocksFeedConfigurationJson:v246];
  }

  else
  {
    v145 = [recordCopy objectForKey:@"stocksFeedConfiguration"];
    [v71 setStocksFeedConfigurationJson:v145];
  }

  v146 = *(v55 + 3776);
  objc_opt_class();
  v147 = [recordCopy objectForKey:@"publisherPaidAuthorizationURL"];
  if (v147)
  {
    if (objc_opt_isKindOfClass())
    {
      v148 = v147;
    }

    else
    {
      v148 = 0;
    }
  }

  else
  {
    v148 = 0;
  }

  v149 = v148;
  [v71 setPublisherPaidAuthorizationURL:v149];

  v150 = *(v55 + 3776);
  objc_opt_class();
  v151 = [recordCopy objectForKey:@"publisherPaidVerificationURL"];
  if (v151)
  {
    if (objc_opt_isKindOfClass())
    {
      v152 = v151;
    }

    else
    {
      v152 = 0;
    }
  }

  else
  {
    v152 = 0;
  }

  v153 = v152;
  [v71 setPublisherPaidVerificationURL:v153];

  v154 = *(v55 + 3776);
  objc_opt_class();
  v155 = [recordCopy objectForKey:@"publisherPaidWebAccessURL"];
  if (v155)
  {
    if (objc_opt_isKindOfClass())
    {
      v156 = v155;
    }

    else
    {
      v156 = 0;
    }
  }

  else
  {
    v156 = 0;
  }

  v157 = v156;
  [v71 setPublisherPaidWebaccessURL:v157];

  v158 = [v249 length];
  v159 = MEMORY[0x1E69B6F58];
  if (v158)
  {
    v160 = [MEMORY[0x1E69B6F58] purchaseOfferableConfigurationsFromJSON:v249];
    [v71 setPurchaseOfferableConfigurations:v160];
  }

  else
  {
    v160 = [recordCopy objectForKey:@"publisherPaidOfferableConfig"];
    v161 = [v159 purchaseOfferableConfigurationsFromJSON:v160];
    [v71 setPurchaseOfferableConfigurations:v161];
  }

  v162 = [v248 length];
  v163 = MEMORY[0x1E69B6F40];
  if (v162)
  {
    v164 = [MEMORY[0x1E69B6F40] publisherPaidDescriptionStringsFromJSON:v248];
    [v71 setPublisherPaidDescriptionStrings:v164];
  }

  else
  {
    v164 = [recordCopy objectForKey:@"publisherPaidDescriptionStrings"];
    v165 = [v163 publisherPaidDescriptionStringsFromJSON:v164];
    [v71 setPublisherPaidDescriptionStrings:v165];
  }

  v166 = [recordCopy objectForKey:@"publisherPaidFeldsparablePurchaseIDs"];
  v167 = [v166 mutableCopy];
  [v71 setPublisherPaidFeldsparablePurchaseIDs:v167];

  v168 = [recordCopy objectForKey:@"publisherPaidBundlePurchaseIDs"];
  v169 = [v168 mutableCopy];
  [v71 setPublisherPaidBundlePurchaseIDs:v169];

  v170 = [recordCopy objectForKey:@"publisherPaidLeakyPaywallOptOut"];
  [v71 setPublisherPaidLeakyPaywallOptOut:{objc_msgSend(v170, "BOOLValue")}];

  publisherPaidWebaccessURL = [v71 publisherPaidWebaccessURL];
  [v71 setPublisherPaidWebOptIn:{objc_msgSend(publisherPaidWebaccessURL, "length") != 0}];

  v172 = v55;
  v173 = *(v55 + 3776);
  objc_opt_class();
  v174 = [v251 objectForKeyedSubscript:@"paidBundleSubscriptionButtonConfig"];
  v175 = [recordCopy objectForKey:v174];
  if (v175)
  {
    if (objc_opt_isKindOfClass())
    {
      v176 = v175;
    }

    else
    {
      v176 = 0;
    }
  }

  else
  {
    v176 = 0;
  }

  v177 = v176;

  v178 = v172;
  v179 = *(v172 + 3776);
  objc_opt_class();
  v180 = [recordCopy objectForKey:@"paidBundleSubscriptionButtonConfig"];
  if (v180)
  {
    if (objc_opt_isKindOfClass())
    {
      v181 = v180;
    }

    else
    {
      v181 = 0;
    }
  }

  else
  {
    v181 = 0;
  }

  v182 = v181;

  v183 = [v177 length];
  v184 = v177;
  if (!v183)
  {
    if ([v182 length])
    {
      v184 = v182;
    }

    else
    {
      v184 = 0;
    }
  }

  v254 = v182;
  [v71 setPaidBundlePaywallConfigurationJson:v184];
  allowedStorefrontIDs = [v71 allowedStorefrontIDs];
  [allowedStorefrontIDs removeObject:&stru_1F2DC7DC0];

  v186 = [recordCopy objectForKey:@"nameImageScaleFactor"];
  [v186 doubleValue];
  [v71 setNameImageScaleFactor:?];

  v187 = [recordCopy objectForKey:@"nameImageBaselineShift"];
  [v71 setNameImageBaselineShift:{objc_msgSend(v187, "integerValue")}];

  v188 = [(FCRecordSource *)selfCopy resolveLocalizableExperimentalizableFieldforKey:@"groupingAvailability" inRecord:recordCopy activeExperimentIDKey:@"activeExperimentID"];
  v189 = v188;
  if (v188)
  {
    integerValue = [v188 integerValue];
    if (integerValue < 4)
    {
      v191 = integerValue;
      goto LABEL_142;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v189 = [objc_alloc(*(v178 + 3776)) initWithFormat:@"Encountered an unknown grouping availability value %@", v189];
      *buf = 136315906;
      v262 = "[FCTagRecordSource recordFromCKRecord:base:]";
      v263 = 2080;
      v264 = "FCTagRecordSource.m";
      v265 = 1024;
      v266 = 489;
      v267 = 2114;
      v268 = v189;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }
  }

  v191 = 0;
LABEL_142:
  [v71 setGroupingAvailability:v191];
  if (v245)
  {
    [v71 setIsHidden:{objc_msgSend(v245, "BOOLValue")}];
  }

  else
  {
    v192 = [recordCopy objectForKey:@"isHidden"];
    [v71 setIsHidden:{objc_msgSend(v192, "BOOLValue")}];
  }

  v193 = [recordCopy objectForKey:@"behaviorFlags"];
  [v71 setBehaviorFlags:{objc_msgSend(v193, "unsignedLongLongValue")}];

  v194 = [recordCopy objectForKey:@"propertyFlags"];
  [v71 setPropertyFlags:{objc_msgSend(v194, "unsignedLongLongValue")}];

  v195 = [v251 objectForKeyedSubscript:@"propertyFlagsLocalized"];
  v196 = [recordCopy objectForKey:v195];
  [v71 setPropertyFlagsLocalized:{objc_msgSend(v196, "unsignedLongLongValue")}];

  objc_opt_class();
  v197 = [v251 objectForKeyedSubscript:@"articleRecirculationConfiguration"];
  v198 = [recordCopy objectForKey:v197];
  if (v198)
  {
    if (objc_opt_isKindOfClass())
    {
      v199 = v198;
    }

    else
    {
      v199 = 0;
    }
  }

  else
  {
    v199 = 0;
  }

  v200 = v199;

  objc_opt_class();
  v201 = [v252 objectForKey:@"articleRecirculationConfiguration"];
  if (v201)
  {
    if (objc_opt_isKindOfClass())
    {
      v202 = v201;
    }

    else
    {
      v202 = 0;
    }
  }

  else
  {
    v202 = 0;
  }

  v203 = v202;

  if (v200)
  {
    v204 = v200;
  }

  else
  {
    v204 = v203;
  }

  [v71 setArticleRecirculationConfiguration:v204];
  v205 = [v252 objectForKey:@"superGroupKnobs"];
  v206 = [v205 mutableCopy];
  [v71 setSupergroupKnobsJson:v206];

  v207 = [v252 objectForKey:@"superGroupConfig"];
  v208 = [v207 mutableCopy];
  [v71 setSupergroupConfigJson:v208];

  if (v244)
  {
    [v71 setSuperfeedConfigResourceID:?];
  }

  else
  {
    v209 = [v252 objectForKey:@"superfeedConfigResourceID"];
    [v71 setSuperfeedConfigResourceID:v209];
  }

  if (v243)
  {
    [v71 setSportsRecommendationMappingsJson:?];
  }

  else
  {
    v210 = [v252 objectForKey:@"sportsRecommendationMappings"];
    [v71 setSportsRecommendationMappingsJson:v210];
  }

  v211 = v242;
  if (!v242)
  {
    v211 = [v252 objectForKey:@"isSportsRecommendable"];
  }

  [v71 setIsSportsRecommendable:{objc_msgSend(v211, "BOOLValue")}];
  if (!v242)
  {
  }

  if (v237)
  {
    [v71 setSportsData:v237];
    v212 = v252;
  }

  else
  {
    v212 = v252;
    v213 = [v252 objectForKey:@"sportsData"];
    [v71 setSportsData:v213];
  }

  v214 = [v212 objectForKey:@"sportsTheme"];
  [v71 setSportsTheme:v214];

  v215 = [v212 objectForKey:@"sportsLogoImage"];
  [v71 setSportsLogoImageURL:v215];

  v216 = [v212 objectForKey:@"sportsLogoImageCompact"];
  [v71 setSportsLogoImageCompactURL:v216];

  v217 = [v212 objectForKey:@"sportsLogoImageLarge"];
  [v71 setSportsLogoImageLargeURL:v217];

  v218 = [v212 objectForKey:@"sportsLogoAltImage"];
  [v71 setSportsLogoAltImageURL:v218];

  v219 = [v212 objectForKey:@"sportsLogoAltImageCompact"];
  [v71 setSportsLogoAltImageCompactURL:v219];

  v220 = [v212 objectForKey:@"sportsLogoAltImageLarge"];
  [v71 setSportsLogoAltImageLargeURL:v220];

  v221 = [v251 objectForKeyedSubscript:@"foodGroupingAvailability"];
  v222 = [v212 objectForKey:v221];
  [v71 setFoodGroupingAvailability:{objc_msgSend(v222, "unsignedLongLongValue")}];

  v223 = *MEMORY[0x1E69E9840];

  return v71;
}

- (id)saveTagRecords:(id)records
{
  v5.receiver = self;
  v5.super_class = FCTagRecordSource;
  v3 = [(FCRecordSource *)&v5 saveRecords:records];

  return v3;
}

@end