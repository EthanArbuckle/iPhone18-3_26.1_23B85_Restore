@interface NTPBFeedItem
@end

@implementation NTPBFeedItem

void __76__NTPBFeedItem_FCFeedItem__keysForFeedItemAndArticleRecordWithRecordSource___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69B6E30];
  v4 = a2;
  v5 = [v3 baseKeysForFeedItemRecord];
  [v4 addObjectsFromArray:v5];

  v6 = [MEMORY[0x1E69B6E30] baseKeysForArticleRecord];
  [v4 addObjectsFromArray:v6];

  v7 = [*(a1 + 32) engagementRecordKeys];
  [v4 addObjectsFromArray:v7];

  v8 = [*(a1 + 32) conversionRecordKeys];
  [v4 addObjectsFromArray:v8];

  v9 = [*(a1 + 32) topicFlagsRecordKeys];
  [v4 addObjectsFromArray:v9];

  v10 = [*(a1 + 32) articleTagMetadataRecordKeys];
  [v4 addObjectsFromArray:v10];

  v11 = [*(a1 + 32) embeddingRecordKeys];
  [v4 addObjectsFromArray:v11];
}

uint64_t __53__NTPBFeedItem_FCFeedItem__baseKeysForFeedItemRecord__block_invoke_2()
{
  v0 = [MEMORY[0x1E695DEC8] fc_array:&__block_literal_global_9_0];
  v1 = _MergedGlobals_178;
  _MergedGlobals_178 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void __53__NTPBFeedItem_FCFeedItem__baseKeysForFeedItemRecord__block_invoke_3(uint64_t a1, void *a2)
{
  v6[6] = *MEMORY[0x1E69E9840];
  v6[0] = @"tagID";
  v6[1] = @"articleID";
  v6[2] = @"order";
  v6[3] = @"userFeedback";
  v6[4] = @"publishDateMillis";
  v6[5] = @"tagHalfLifeMillis";
  v2 = MEMORY[0x1E695DEC8];
  v3 = a2;
  v4 = [v2 arrayWithObjects:v6 count:6];
  [v3 addObjectsFromArray:v4];

  v5 = *MEMORY[0x1E69E9840];
}

void __65__NTPBFeedItem_FCFeedItem__keysForArticleRecordWithRecordSource___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69B6E30];
  v4 = a2;
  v5 = [v3 baseKeysForArticleRecord];
  [v4 addObjectsFromArray:v5];

  v6 = [*(a1 + 32) engagementRecordKeys];
  [v4 addObjectsFromArray:v6];

  v7 = [*(a1 + 32) conversionRecordKeys];
  [v4 addObjectsFromArray:v7];

  v8 = [*(a1 + 32) topicFlagsRecordKeys];
  [v4 addObjectsFromArray:v8];

  v9 = [*(a1 + 32) articleTagMetadataRecordKeys];
  [v4 addObjectsFromArray:v9];

  v10 = [*(a1 + 32) embeddingRecordKeys];
  [v4 addObjectsFromArray:v10];
}

uint64_t __52__NTPBFeedItem_FCFeedItem__baseKeysForArticleRecord__block_invoke_2()
{
  v0 = [MEMORY[0x1E695DEC8] fc_array:&__block_literal_global_15_0];
  v1 = qword_1EDB27608;
  qword_1EDB27608 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void __52__NTPBFeedItem_FCFeedItem__baseKeysForArticleRecord__block_invoke_3(uint64_t a1, void *a2)
{
  v6[28] = *MEMORY[0x1E69E9840];
  v6[0] = @"allowedStorefrontIDs";
  v6[1] = @"backendArticleVersion";
  v6[2] = @"behaviorFlags";
  v6[3] = @"blockedStorefrontIDs";
  v6[4] = @"bodyTextLength";
  v6[5] = @"clusterID";
  v6[6] = @"contentType";
  v6[7] = @"halfLifeMillis";
  v6[8] = @"isBundlePaid";
  v6[9] = @"isFeature";
  v6[10] = @"isIssueOnly";
  v6[11] = @"isPaid";
  v6[12] = @"isSponsored";
  v6[13] = @"language";
  v6[14] = @"minNewsVersion";
  v6[15] = @"narrativeTrackFullURL";
  v6[16] = @"parentIssueID";
  v6[17] = @"primaryAudience";
  v6[18] = @"publishDate";
  v6[19] = @"publisherArticleVersion";
  v6[20] = @"role";
  v6[21] = @"scoresTopicTagIDs";
  v6[22] = @"sourceChannelTagID";
  v6[23] = @"storyType";
  v6[24] = @"thumbnailMetadata";
  v6[25] = @"thumbnailPerceptualHash";
  v6[26] = @"videoURL";
  v6[27] = @"expirationData";
  v2 = MEMORY[0x1E695DEC8];
  v3 = a2;
  v4 = [v2 arrayWithObjects:v6 count:28];
  [v3 addObjectsFromArray:v4];

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t __75__NTPBFeedItem_FCFeedItem__feedItemFromCKRecord_storefrontID_recordSource___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"FeedItem must always have a valid articleID, record: %@", *(a1 + 32)];
    *buf = 136315906;
    v6 = "+[NTPBFeedItem(FCFeedItem) feedItemFromCKRecord:storefrontID:recordSource:]_block_invoke";
    v7 = 2080;
    v8 = "FCFeedItem.m";
    v9 = 1024;
    v10 = 201;
    v11 = 2114;
    v12 = v4;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v2 = *MEMORY[0x1E69E9840];
  return 0;
}

void __59__NTPBFeedItem_FCFeedItem__enumerateTopicCohortsWithBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v3 tagID];
  v4 = [v3 cohorts];

  (*(v2 + 16))(v2, v5, v4);
}

void __67__NTPBFeedItem_FCFeedItem__enumerateTopicConversionStatsWithBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v3 tagID];
  v4 = [v3 conversionStats];

  (*(v2 + 16))(v2, v5, v4);
}

@end