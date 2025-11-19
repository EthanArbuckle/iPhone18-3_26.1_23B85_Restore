@interface FCRecipeRecordSource
- (id)alwaysLocalizedKeys;
- (id)articleTopicsFromCKRecord:(id)a3 topicIDs:(id)a4 topicFlags:(id)a5;
- (id)nonLocalizableKeys;
- (id)recordFromCKRecord:(id)a3 base:(id)a4;
@end

@implementation FCRecipeRecordSource

- (id)recordFromCKRecord:(id)a3 base:(id)a4
{
  v6 = MEMORY[0x1E69B6F90];
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(v6);
  [v9 setBase:v7];

  v10 = [(FCRecordSource *)self localizedLanguageSpecificKeysByOriginalKey];
  v11 = [(FCRecordSource *)self localizedKeysByOriginalKey];
  v12 = [v8 objectForKeyedSubscript:@"minimumNewsVersion"];
  [v9 setMinimumNewsVersion:{+[FCRestrictions integerRepresentationOfShortVersionString:](FCRestrictions, "integerRepresentationOfShortVersionString:", v12)}];

  v13 = [v8 objectForKey:@"blockedStorefrontIDs"];
  v14 = [v13 mutableCopy];
  [v9 setBlockedStorefrontIDs:v14];

  v15 = [v8 objectForKey:@"allowedStorefrontIDs"];
  v16 = [v15 mutableCopy];
  [v9 setAllowedStorefrontIDs:v16];

  v17 = [v8 objectForKey:@"isPaid"];
  [v9 setIsPaid:{objc_msgSend(v17, "BOOLValue")}];

  v18 = [v8 objectForKey:@"language"];
  [v9 setLanguage:v18];

  v19 = [v8 objectForKey:@"iAdCategories"];
  v20 = [v19 mutableCopy];
  [v9 setIAdCategories:v20];

  v21 = [v8 objectForKey:@"iAdKeywords"];
  v22 = [v21 mutableCopy];
  [v9 setIAdKeywords:v22];

  v23 = [v8 objectForKey:@"iAdSectionTagIDs"];
  v24 = [v23 mutableCopy];
  [v9 setIAdSectionTagIDs:v24];

  v25 = [v8 objectForKey:@"lastReferenceDate"];
  v26 = [v25 pbDate];
  [v9 setLastReferenceDate:v26];

  v27 = [v8 objectForKey:@"isDraft"];
  [v9 setIsDraft:{objc_msgSend(v27, "BOOLValue")}];

  v28 = [v8 objectForKey:@"title"];
  [v9 setTitle:v28];

  v29 = [v8 objectForKey:@"sourceChannelTagID"];
  [v9 setSourceChannelTagID:v29];

  v30 = [v8 objectForKey:@"publishDate"];
  v31 = [v30 pbDate];
  [v9 setPublishDate:v31];

  v32 = [v8 objectForKey:@"thumbnailFocalFrame"];
  [v9 setThumbnailFocalFrame:{objc_msgSend(v32, "unsignedLongLongValue")}];

  v33 = [v8 objectForKey:@"thumbnailPerceptualHash"];
  [v9 setThumbnailPerceptualHash:v33];

  v34 = [v8 objectForKey:@"thumbnailSmall"];
  [v9 setThumbnailSmallURL:v34];

  v35 = [v8 objectForKey:@"thumbnailMedium"];
  [v9 setThumbnailMediumURL:v35];

  v36 = [v8 objectForKey:@"thumbnailLarge"];
  [v9 setThumbnailLargeURL:v36];

  v37 = [v8 objectForKey:@"thumbnailExtraLarge"];
  [v9 setThumbnailExtraLargeURL:v37];

  v38 = [v8 objectForKey:@"thumbnailSmallMetadata"];
  [v9 setThumbnailSmallMetadata:{objc_msgSend(v38, "unsignedLongLongValue")}];

  v39 = [v8 objectForKey:@"thumbnailMediumMetadata"];
  [v9 setThumbnailMediumMetadata:{objc_msgSend(v39, "unsignedLongLongValue")}];

  v40 = [v8 objectForKey:@"thumbnailLargeMetadata"];
  [v9 setThumbnailLargeMetadata:{objc_msgSend(v40, "unsignedLongLongValue")}];

  v41 = [v8 objectForKey:@"thumbnailExtraLargeMetadata"];
  [v9 setThumbnailExtraLargeMetadata:{objc_msgSend(v41, "unsignedLongLongValue")}];

  v42 = [v8 objectForKey:@"thumbnailPrimaryColor"];
  [v9 setThumbnailPrimaryColor:v42];

  v43 = [v8 objectForKey:@"thumbnailBackgroundColor"];
  [v9 setThumbnailBackgroundColor:v43];

  v44 = [v8 objectForKey:@"thumbnailTextColor"];
  [v9 setThumbnailTextColor:v44];

  v45 = [v8 objectForKey:@"thumbnailAccentColor"];
  [v9 setThumbnailAccentColor:v45];

  v46 = [v8 objectForKey:@"shortExcerpt"];
  [v9 setShortExcerpt:v46];

  v47 = [v8 objectForKey:@"content"];
  [v9 setContentURL:v47];

  v48 = [v8 objectForKey:@"contentType"];
  [v9 setContentType:v48];

  v49 = [v8 objectForKey:@"articleIDs"];
  v50 = [v49 mutableCopy];
  [v9 setArticleIDs:v50];

  v51 = [v8 objectForKey:@"totalTime"];
  [v9 setTotalTime:v51];

  v52 = [v8 objectForKey:@"authors"];
  v53 = [v52 mutableCopy];
  [v9 setAuthors:v53];

  v54 = [(FCRecordSource *)self valueFromCKRecord:v8 baseKey:@"recipesRecirculationData" localizedKeys:v11 localizedLanguageSpecificKeys:v10];
  [v9 setRecipesRecirculationDataURL:v54];

  v55 = [v8 objectForKey:@"topicTagIDs"];
  v56 = [(FCRecordSource *)self valueFromCKRecord:v8 baseKey:@"topicFlags" localizedKeys:v11 localizedLanguageSpecificKeys:v10];
  v57 = [(FCRecipeRecordSource *)self articleTopicsFromCKRecord:v8 topicIDs:v55 topicFlags:v56];
  [v9 setTopics:v57];

  v58 = [(FCRecordSource *)self valueFromCKRecord:v8 baseKey:@"personalizationData" localizedKeys:v11 localizedLanguageSpecificKeys:v10];
  [v9 setPersonalizationData:v58];

  v59 = [(FCRecordSource *)self valueFromCKRecord:v8 baseKey:@"rapidUpdatePersonalizationData" localizedKeys:v11 localizedLanguageSpecificKeys:v10];
  [v9 setRapidUpdatePersonalizationData:v59];

  v60 = [(FCRecordSource *)self valueFromCKRecord:v8 baseKey:@"eventAggregationPersonalizationData" localizedKeys:v11 localizedLanguageSpecificKeys:v10];

  [v9 setEventAggregationPersonalizationData:v60];

  return v9;
}

- (id)nonLocalizableKeys
{
  v5[34] = *MEMORY[0x1E69E9840];
  v5[0] = @"minimumNewsVersion";
  v5[1] = @"allowedStorefrontIDs";
  v5[2] = @"blockedStorefrontIDs";
  v5[3] = @"title";
  v5[4] = @"publishDate";
  v5[5] = @"topicTagIDs";
  v5[6] = @"thumbnailFocalFrame";
  v5[7] = @"thumbnailPerceptualHash";
  v5[8] = @"thumbnailSmall";
  v5[9] = @"thumbnailSmallMetadata";
  v5[10] = @"thumbnailMedium";
  v5[11] = @"thumbnailMediumMetadata";
  v5[12] = @"thumbnailLarge";
  v5[13] = @"thumbnailLargeMetadata";
  v5[14] = @"thumbnailExtraLarge";
  v5[15] = @"thumbnailExtraLargeMetadata";
  v5[16] = @"thumbnailPrimaryColor";
  v5[17] = @"thumbnailBackgroundColor";
  v5[18] = @"thumbnailTextColor";
  v5[19] = @"thumbnailAccentColor";
  v5[20] = @"shortExcerpt";
  v5[21] = @"content";
  v5[22] = @"contentType";
  v5[23] = @"iAdCategories";
  v5[24] = @"iAdKeywords";
  v5[25] = @"iAdSectionTagIDs";
  v5[26] = @"isPaid";
  v5[27] = @"authors";
  v5[28] = @"sourceChannelTagID";
  v5[29] = @"articleIDs";
  v5[30] = @"language";
  v5[31] = @"totalTime";
  v5[32] = @"lastReferenceDate";
  v5[33] = @"isDraft";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:34];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)alwaysLocalizedKeys
{
  v5[5] = *MEMORY[0x1E69E9840];
  v5[0] = @"topicFlags";
  v5[1] = @"personalizationData";
  v5[2] = @"rapidUpdatePersonalizationData";
  v5[3] = @"eventAggregationPersonalizationData";
  v5[4] = @"recipesRecirculationData";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:5];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)articleTopicsFromCKRecord:(id)a3 topicIDs:(id)a4 topicFlags:(id)a5
{
  v6 = a5;
  v7 = MEMORY[0x1E695DF70];
  v8 = a4;
  v9 = [v7 arrayWithCapacity:{objc_msgSend(v8, "count")}];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __70__FCRecipeRecordSource_articleTopicsFromCKRecord_topicIDs_topicFlags___block_invoke;
  v15[3] = &unk_1E7C36FE8;
  v16 = v6;
  v10 = v9;
  v17 = v10;
  v11 = v6;
  [v8 enumerateObjectsUsingBlock:v15];

  v12 = v17;
  v13 = v10;

  return v10;
}

void __70__FCRecipeRecordSource_articleTopicsFromCKRecord_topicIDs_topicFlags___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = MEMORY[0x1E69B6D00];
  v6 = a2;
  v9 = objc_alloc_init(v5);
  [v9 setTagID:v6];

  if ([*(a1 + 32) count] <= a3)
  {
    goto LABEL_10;
  }

  v7 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  v8 = [v7 unsignedLongLongValue];

  if (v8)
  {
    [v9 setIsHidden:1];
    if ((v8 & 2) == 0)
    {
LABEL_4:
      if ((v8 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_15;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_4;
  }

  [v9 setIsEligibleForGrouping:1];
  if ((v8 & 4) == 0)
  {
LABEL_5:
    if ((v8 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  [v9 setIsEligibleForGroupingIfFavorited:1];
  if ((v8 & 8) == 0)
  {
LABEL_6:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_17:
    [v9 setIsEligibleForFoodGrouping:1];
    if ((v8 & 0x20) == 0)
    {
LABEL_8:
      if ((v8 & 0x40) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_16:
  [v9 setIsEligibleForGroupingIfAutofavorited:1];
  if ((v8 & 0x10) != 0)
  {
    goto LABEL_17;
  }

LABEL_7:
  if ((v8 & 0x20) == 0)
  {
    goto LABEL_8;
  }

LABEL_18:
  [v9 setIsEligibleForFoodGroupingIfFavorited:1];
  if ((v8 & 0x40) != 0)
  {
LABEL_9:
    [v9 setIsEligibleForFoodGroupingIfAutofavorited:1];
  }

LABEL_10:
  [*(a1 + 40) addObject:v9];
}

@end