@interface NTPBFeedItem(FCFeedItem)
+ (id)baseKeysForArticleRecord;
+ (id)baseKeysForFeedItemRecord;
+ (id)feedItemFromCKRecord:()FCFeedItem storefrontID:recordSource:;
+ (id)keysForArticleRecordWithRecordSource:()FCFeedItem;
+ (id)keysForFeedItemAndArticleRecordWithRecordSource:()FCFeedItem;
+ (uint64_t)canCreateFromCKRecordType:()FCFeedItem;
- (BOOL)isEqual:()FCFeedItem;
- (id)description;
- (uint64_t)applyConditionalScore:()FCFeedItem;
- (uint64_t)canBePurchased;
- (uint64_t)compareGlobalUserFeedback:()FCFeedItem;
- (uint64_t)compareGlobalUserFeedbackDescending:()FCFeedItem;
- (uint64_t)compareOrder:()FCFeedItem;
- (uint64_t)compareOrderDescending:()FCFeedItem;
- (uint64_t)hasFeature:()FCFeedItem;
- (uint64_t)hash;
- (uint64_t)lastModifiedDate;
- (uint64_t)publishDate;
- (void)addSurfacedByArticleListID:()FCFeedItem;
- (void)applyFeedContext:()FCFeedItem;
- (void)applyTabiScore:()FCFeedItem configurationSet:;
- (void)enumerateFeaturesWithBlock:()FCFeedItem;
- (void)enumerateTopicCohortsWithBlock:()FCFeedItem;
- (void)enumerateTopicConversionStatsWithBlock:()FCFeedItem;
@end

@implementation NTPBFeedItem(FCFeedItem)

- (uint64_t)applyConditionalScore:()FCFeedItem
{
  [a1 conditionalScore];
  if (v4 <= a2)
  {
    v4 = a2;
  }

  return [a1 setConditionalScore:v4];
}

- (void)applyFeedContext:()FCFeedItem
{
  v7 = a3;
  v4 = [v7 channelID];
  [a1 setSurfacedByChannelID:v4];

  v5 = [v7 sectionID];
  [a1 setSurfacedBySectionID:v5];

  v6 = [v7 topicID];
  [a1 setSurfacedByTopicID:v6];

  if ([v7 flags])
  {
    [a1 setSurfacedByFlags:{objc_msgSend(v7, "flags")}];
  }
}

- (void)applyTabiScore:()FCFeedItem configurationSet:
{
  v7 = [a1 scoreProfiles];
  if (!v7)
  {
    v10 = objc_alloc_init(MEMORY[0x1E69B6FC0]);
    [a1 setScoreProfiles:v10];
    v7 = v10;
  }

  v11 = v7;
  if (a4 == 11)
  {
    v8 = [v7 forYouGroupScoreProfile];
    if (!v8)
    {
      v9 = objc_alloc_init(MEMORY[0x1E69B6FB0]);
      [v11 setForYouGroupScoreProfile:v9];
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v8 = [v7 defaultScoreProfile];
  if (v8)
  {
LABEL_7:
    v9 = v8;
    goto LABEL_9;
  }

  v9 = objc_alloc_init(MEMORY[0x1E69B6FB0]);
  [v11 setDefaultScoreProfile:v9];
LABEL_9:
  [v9 setTabiScore:a2];
}

+ (id)keysForFeedItemAndArticleRecordWithRecordSource:()FCFeedItem
{
  v3 = a3;
  v4 = MEMORY[0x1E695DEC8];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __76__NTPBFeedItem_FCFeedItem__keysForFeedItemAndArticleRecordWithRecordSource___block_invoke;
  v8[3] = &unk_1E7C36D40;
  v9 = v3;
  v5 = v3;
  v6 = [v4 fc_array:v8];

  return v6;
}

+ (id)baseKeysForFeedItemRecord
{
  if (qword_1EDB27600 != -1)
  {
    dispatch_once(&qword_1EDB27600, &__block_literal_global_7_0);
  }

  v1 = _MergedGlobals_178;

  return v1;
}

+ (id)keysForArticleRecordWithRecordSource:()FCFeedItem
{
  v3 = a3;
  v4 = MEMORY[0x1E695DEC8];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__NTPBFeedItem_FCFeedItem__keysForArticleRecordWithRecordSource___block_invoke;
  v8[3] = &unk_1E7C36D40;
  v9 = v3;
  v5 = v3;
  v6 = [v4 fc_array:v8];

  return v6;
}

+ (id)baseKeysForArticleRecord
{
  if (qword_1EDB27610 != -1)
  {
    dispatch_once(&qword_1EDB27610, &__block_literal_global_13_1);
  }

  v1 = qword_1EDB27608;

  return v1;
}

+ (uint64_t)canCreateFromCKRecordType:()FCFeedItem
{
  v3 = a3;
  if ([v3 isEqualToString:@"Article"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"FeedItemAndArticle"];
  }

  return v4;
}

+ (id)feedItemFromCKRecord:()FCFeedItem storefrontID:recordSource:
{
  v118 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [objc_opt_class() identifierFromCKRecord:v7];
  if (![v10 length])
  {
    v107[0] = MEMORY[0x1E69E9820];
    v107[1] = 3221225472;
    v107[2] = __75__NTPBFeedItem_FCFeedItem__feedItemFromCKRecord_storefrontID_recordSource___block_invoke;
    v107[3] = &unk_1E7C36F98;
    v108 = v7;
    v11 = __75__NTPBFeedItem_FCFeedItem__feedItemFromCKRecord_storefrontID_recordSource___block_invoke(v107);
    v76 = v108;
    goto LABEL_59;
  }

  v11 = objc_alloc_init(MEMORY[0x1E69B6E30]);
  [v11 setArticleID:v10];
  v12 = [v7 objectForKey:@"sourceChannelTagID"];
  [v11 setSourceChannelID:v12];

  v13 = [v7 objectForKey:@"parentIssueID"];
  [v11 setParentIssueID:v13];
  v101 = v13;
  [v11 setIsEvergreen:v13 != 0];
  v14 = [v7 objectForKey:@"clusterID"];
  [v11 setClusterID:v14];

  v15 = [v7 objectForKey:@"contentType"];
  [v11 setContentType:FCArticleContentTypeFromString(v15)];

  v16 = [v7 objectForKey:@"scoresTopicTagIDs"];
  v17 = [v16 mutableCopy];
  [v11 setTopicIDs:v17];

  v18 = [v7 objectForKey:@"bodyTextLength"];
  [v11 setBodyTextLength:{objc_msgSend(v18, "longLongValue")}];

  v19 = [v7 objectForKey:@"language"];
  [v11 setLanguage:v19];

  v20 = [v7 objectForKey:@"storyType"];
  v21 = PBArticleStoryTypeFromString(v20);

  if (v21)
  {
    [v11 setStoryType:v21];
  }

  v22 = [v7 objectForKey:@"role"];

  if (v22)
  {
    v23 = [v7 objectForKey:@"role"];
    [v11 setIsFeatured:{objc_msgSend(v23, "caseInsensitiveCompare:", @"feature"}];
  }

  v24 = +[FCRestrictions sharedInstance];
  v25 = [v7 objectForKey:@"allowedStorefrontIDs"];
  v26 = [v7 objectForKey:@"blockedStorefrontIDs"];
  v27 = [v24 isContentBlockedInStorefrontID:v8 withAllowedStorefrontIDs:v25 blockedStorefrontIDs:v26];

  if (v27)
  {
    [v11 setIsFromBlockedStorefront:1];
  }

  v28 = [v7 objectForKey:@"primaryAudience"];
  v29 = [v28 isEqualToString:@"MATURE"];

  if (v29)
  {
    [v11 setIsExplicitContent:1];
  }

  v30 = [v7 objectForKey:@"minNewsVersion"];
  v31 = [FCRestrictions integerRepresentationOfShortVersionString:v30]<< 32;

  if (v31)
  {
    [v11 setMinimumNewsVersion:v31 >> 32];
  }

  v32 = [v7 objectForKey:@"thumbnailMetadata"];
  v33 = [v32 unsignedLongLongValue];

  if (v33)
  {
    [v11 setHasThumbnail:1];
  }

  v34 = [v7 objectForKey:@"thumbnailPerceptualHash"];
  [v11 setThumbnailPerceptualHash:v34];

  v35 = [v7 objectForKey:@"isPaid"];
  v36 = [v35 BOOLValue];

  if (v36)
  {
    [v11 setIsPaid:1];
  }

  v37 = [v7 objectForKey:@"isBundlePaid"];
  v38 = [v37 BOOLValue];

  if (v38)
  {
    [v11 setIsBundlePaid:1];
  }

  v39 = [v7 objectForKey:@"isSponsored"];
  v40 = [v39 BOOLValue];

  if (v40)
  {
    [v11 setIsSponsored:1];
  }

  v41 = [v7 objectForKey:@"videoURL"];

  if (v41)
  {
    [v11 setHasVideo:1];
  }

  v42 = [v7 objectForKey:@"videoStillImage"];

  if (v42)
  {
    [v11 setHasVideoStillImage:1];
  }

  v43 = [v7 objectForKey:@"narrativeTrackFullURL"];

  if (v43)
  {
    [v11 setHasAudioTrack:1];
  }

  v44 = [v7 objectForKey:@"behaviorFlags"];
  v45 = [v44 unsignedIntegerValue];

  if ((v45 & 0x20) != 0)
  {
    [v11 setIsHiddenFromAutoFavorites:1];
  }

  v46 = [v7 objectForKey:@"behaviorFlags"];
  v47 = [v46 unsignedIntegerValue];

  if ((v47 & 0x800) != 0)
  {
    [v11 setReduceVisibility:1];
  }

  v48 = [v7 objectForKey:@"behaviorFlags"];
  v49 = [v48 unsignedIntegerValue];

  if ((v49 & 0x2000) != 0)
  {
    [v11 setReduceVisibilityForNonFollowers:1];
  }

  v50 = [v7 objectForKey:@"behaviorFlags"];
  v51 = [v50 unsignedIntegerValue];

  if ((v51 & 0x1000) != 0)
  {
    [v11 setWebConverted:1];
  }

  v52 = [v7 objectForKey:@"behaviorFlags"];
  v53 = [v52 unsignedIntegerValue];

  if (v53 < 0)
  {
    [v11 setIsAIGenerated:1];
  }

  v54 = [v7 objectForKey:@"isFeature"];
  v55 = [v54 BOOLValue];

  if (v55)
  {
    [v11 setIsFeatureCandidate:1];
  }

  v56 = [v7 objectForKey:@"isIssueOnly"];
  v57 = [v56 BOOLValue];

  if (v57)
  {
    [v11 setIsIssueOnly:1];
  }

  v58 = [v7 objectForKey:@"publisherArticleVersion"];
  [v11 setPublisherArticleVersion:{objc_msgSend(v58, "longLongValue")}];

  v59 = [v7 objectForKey:@"backendArticleVersion"];
  [v11 setBackendArticleVersion:{objc_msgSend(v59, "longLongValue")}];

  v60 = [v9 engagementFromCKRecord:v7];
  v61 = [v60 globalCohorts];
  [v11 setGlobalCohorts:v61];

  v62 = [v60 sourceChannelCohorts];
  [v11 setSourceChannelCohorts:v62];

  v63 = [v9 conversionStatsFromCKRecord:v7];
  v64 = [v63 globalConversionStats];
  [v11 setGlobalConversionStats:v64];

  v65 = [v63 channelConversionStats];
  [v11 setChannelConversionStats:v65];

  v66 = [v9 articleTagMetadataFromCKRecord:v7];
  v67 = [v66 channelTagMetadata];
  [v11 setChannelTagMetadata:v67];

  v68 = objc_alloc(MEMORY[0x1E69B6C78]);
  v69 = [v7 objectForKey:@"expirationData"];
  v70 = [v68 initWithData:v69];
  [v11 setExpirationData:v70];

  v71 = [v66 topicTagMetadatas];
  v72 = [v9 articleTopicsFromCKRecord:v7 engagement:v60 conversionStats:v63 tagMetadata:v71];
  [v11 setTopics:v72];

  v73 = [v7 recordType];
  LODWORD(v72) = [v73 isEqualToString:@"Article"];

  v102 = v10;
  if (v72)
  {
    v74 = [v7 objectForKey:@"publishDate"];
    [v11 setPublishDateMilliseconds:{objc_msgSend(v74, "fc_millisecondTimeIntervalSince1970")}];

    v75 = [v7 objectForKey:@"halfLifeMillis"];
    [v11 setFeedHalfLifeMilliseconds:{objc_msgSend(v75, "unsignedLongLongValue")}];
  }

  else
  {
    v77 = [v7 recordType];
    v78 = [v77 isEqualToString:@"FeedItemAndArticle"];

    if (v78)
    {
      v79 = [v7 objectForKey:@"tagID"];
      [v11 setFeedID:v79];

      v80 = [v7 objectForKey:@"order"];
      [v11 setOrder:{objc_msgSend(v80, "unsignedLongLongValue")}];

      v81 = [v7 objectForKey:@"publishDateMillis"];
      [v11 setPublishDateMilliseconds:{objc_msgSend(v81, "unsignedLongLongValue")}];

      v82 = [v7 objectForKey:@"tagHalfLifeMillis"];
      [v11 setFeedHalfLifeMilliseconds:{objc_msgSend(v82, "unsignedLongLongValue")}];

      v75 = [v7 objectForKey:@"userFeedback"];
      [v75 doubleValue];
      [v11 setGlobalUserFeedback:?];
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_47;
      }

      v75 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"unexpected record type for FeedItem: %@", v7];
      *buf = 136315906;
      v111 = "+[NTPBFeedItem(FCFeedItem) feedItemFromCKRecord:storefrontID:recordSource:]";
      v112 = 2080;
      v113 = "FCFeedItem.m";
      v114 = 1024;
      v115 = 354;
      v116 = 2114;
      v117 = v75;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }
  }

LABEL_47:
  v83 = [v7 objectForKey:@"float16TitleEncoding"];
  [v11 setFloat16TitleEncoding:v83];

  v84 = [v7 objectForKey:@"float16FullBodyEncoding"];
  [v11 setFloat16FullBodyEncoding:v84];

  v85 = [v7 objectForKeyedSubscript:@"surfacedByChannelID"];
  [v11 setSurfacedByChannelID:v85];

  v86 = [v7 objectForKeyedSubscript:@"surfacedBySectionID"];
  [v11 setSurfacedBySectionID:v86];

  v87 = [v7 objectForKeyedSubscript:@"surfacedByTopicID"];
  [v11 setSurfacedByTopicID:v87];

  v88 = [v7 objectForKeyedSubscript:@"surfacedByArticleListIDs"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v99 = v66;
    v100 = v63;
    v89 = v60;
    v90 = v9;
    v91 = v8;
    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v92 = v88;
    v93 = [v92 countByEnumeratingWithState:&v103 objects:v109 count:16];
    if (v93)
    {
      v94 = v93;
      v95 = *v104;
      do
      {
        for (i = 0; i != v94; ++i)
        {
          if (*v104 != v95)
          {
            objc_enumerationMutation(v92);
          }

          [v11 addSurfacedByArticleListID:*(*(&v103 + 1) + 8 * i)];
        }

        v94 = [v92 countByEnumeratingWithState:&v103 objects:v109 count:16];
      }

      while (v94);
    }

    v8 = v91;
    v9 = v90;
    v60 = v89;
    v66 = v99;
    v63 = v100;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v11 addSurfacedByArticleListID:v88];
    }
  }

  v76 = v101;
  v10 = v102;
LABEL_59:

  v97 = *MEMORY[0x1E69E9840];

  return v11;
}

- (BOOL)isEqual:()FCFeedItem
{
  v4 = a3;
  objc_opt_class();
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = MEMORY[0x1E69E58C0];
  v8 = [a1 feedID];
  v9 = [v6 feedID];
  if ([v7 nf_object:v8 isEqualToObject:v9])
  {
    v10 = MEMORY[0x1E69E58C0];
    v11 = [a1 articleID];
    v12 = [v6 articleID];
    if ([v10 nf_object:v11 isEqualToObject:v12])
    {
      v13 = [a1 order];
      v14 = v13 == [v6 order];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (uint64_t)hash
{
  v2 = [a1 feedID];
  v3 = [v2 hash];
  v4 = [a1 articleID];
  v5 = [v4 hash] ^ v3;
  v6 = [a1 order];

  return v5 ^ v6;
}

- (uint64_t)compareOrder:()FCFeedItem
{
  v4 = a3;
  v5 = [a1 order];
  v6 = [v4 order];

  if (v5 < v6)
  {
    return -1;
  }

  else
  {
    return v5 > v6;
  }
}

- (uint64_t)compareOrderDescending:()FCFeedItem
{
  v4 = [a3 order];
  v5 = [a1 order];
  if (v4 < v5)
  {
    return -1;
  }

  else
  {
    return v4 > v5;
  }
}

- (uint64_t)compareGlobalUserFeedback:()FCFeedItem
{
  v4 = a3;
  [a1 globalUserFeedback];
  v6 = v5;
  [v4 globalUserFeedback];
  v8 = v7;

  if (v6 < v8)
  {
    return -1;
  }

  else
  {
    return v6 > v8;
  }
}

- (uint64_t)compareGlobalUserFeedbackDescending:()FCFeedItem
{
  [a3 globalUserFeedback];
  v5 = v4;
  [a1 globalUserFeedback];
  if (v5 < v6)
  {
    return -1;
  }

  else
  {
    return v5 > v6;
  }
}

- (void)enumerateFeaturesWithBlock:()FCFeedItem
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [a1 topicIDs];
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [FCFeedItemFeature featureForTopicID:*(*(&v12 + 1) + 8 * v9)];
          v4[2](v4, v10);

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (uint64_t)hasFeature:()FCFeedItem
{
  v4 = a3;
  v5 = [v4 type];
  if (v5 == 2)
  {
    v8 = 1;
  }

  else if (v5 == 1)
  {
    v6 = [a1 topicIDs];
    v7 = [v4 topicID];
    v8 = [v6 containsObject:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [a1 dictionaryRepresentation];
  v4 = [v2 stringWithFormat:@"%p: %@", a1, v3];

  return v4;
}

- (uint64_t)publishDate
{
  v1 = MEMORY[0x1E695DF00];
  v2 = [a1 publishDateMilliseconds];

  return [v1 fc_dateWithMillisecondTimeIntervalSince1970:v2];
}

- (uint64_t)lastModifiedDate
{
  v1 = MEMORY[0x1E695DF00];
  v2 = [a1 lastModifiedDateMilliseconds];

  return [v1 fc_dateWithMillisecondTimeIntervalSince1970:v2];
}

- (uint64_t)canBePurchased
{
  v13 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Case unsupported"];
    v5 = 136315906;
    v6 = "[NTPBFeedItem(FCFeedItem) canBePurchased]";
    v7 = 2080;
    v8 = "FCFeedItem.m";
    v9 = 1024;
    v10 = 525;
    v11 = 2114;
    v12 = v4;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v5, 0x26u);
  }

  if ([a1 isPaid])
  {
    result = 1;
  }

  else
  {
    result = [a1 isBundlePaid];
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)enumerateTopicCohortsWithBlock:()FCFeedItem
{
  v4 = a3;
  v5 = [a1 topics];

  if (v5)
  {
    v6 = [a1 topics];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __59__NTPBFeedItem_FCFeedItem__enumerateTopicCohortsWithBlock___block_invoke_2;
    v7[3] = &unk_1E7C3B988;
    v8 = v4;
    [v6 enumerateObjectsUsingBlock:v7];
  }
}

- (void)enumerateTopicConversionStatsWithBlock:()FCFeedItem
{
  v4 = a3;
  v5 = [a1 topics];

  if (v5)
  {
    v6 = [a1 topics];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __67__NTPBFeedItem_FCFeedItem__enumerateTopicConversionStatsWithBlock___block_invoke_2;
    v7[3] = &unk_1E7C3B988;
    v8 = v4;
    [v6 enumerateObjectsUsingBlock:v7];
  }
}

- (void)addSurfacedByArticleListID:()FCFeedItem
{
  v4 = a3;
  if ([v4 hasPrefix:@"LX"])
  {
    [a1 setIsCoread:1];
  }

  [a1 addSurfacedByArticleListID2:v4];
}

@end