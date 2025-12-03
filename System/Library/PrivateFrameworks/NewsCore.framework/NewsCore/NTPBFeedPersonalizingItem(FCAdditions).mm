@interface NTPBFeedPersonalizingItem(FCAdditions)
- (double)globalUserFeedback;
- (id)initWithItem:()FCAdditions;
- (uint64_t)halfLife;
- (uint64_t)hasGlobalUserFeedback;
- (uint64_t)hasThumbnail;
- (uint64_t)isHiddenFromAutoFavorites;
- (uint64_t)lastModifiedDate;
- (uint64_t)publishDate;
- (uint64_t)scoreProfile;
- (uint64_t)sourceFeedID;
- (void)enumerateTopicCohortsWithBlock:()FCAdditions;
- (void)enumerateTopicConversionStatsWithBlock:()FCAdditions;
- (void)setScoreProfile:()FCAdditions;
@end

@implementation NTPBFeedPersonalizingItem(FCAdditions)

- (id)initWithItem:()FCAdditions
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = &off_1F2EDD2D8;
  v5 = objc_msgSendSuper2(&v20, sel_init);
  if (v5)
  {
    itemID = [v4 itemID];
    [v5 setIdentifier:itemID];

    topicIDs = [v4 topicIDs];
    [v5 setTopicIDs:topicIDs];

    publisherID = [v4 publisherID];
    [v5 setPublisherID:publisherID];

    [v5 setBodyTextLength:{objc_msgSend(v4, "bodyTextLength")}];
    [v5 setHasAudioTrack:{objc_msgSend(v4, "hasAudioTrack")}];
    [v5 setIsFeatured:{objc_msgSend(v4, "isFeatured")}];
    [v5 setIsANF:{objc_msgSend(v4, "isANF")}];
    [v5 setIsPaid:{objc_msgSend(v4, "isPaid")}];
    [v5 setIsBundlePaid:{objc_msgSend(v4, "isBundlePaid")}];
    [v5 setHasVideo:{objc_msgSend(v4, "hasVideo")}];
    [v5 setIsAIGenerated:{objc_msgSend(v4, "isAIGenerated")}];
    globalCohorts = [v4 globalCohorts];
    [v5 setGlobalCohorts:globalCohorts];

    publisherCohorts = [v4 publisherCohorts];
    [v5 setPublisherCohorts:publisherCohorts];

    globalConversionStats = [v4 globalConversionStats];
    [v5 setGlobalConversionStats:globalConversionStats];

    publisherConversionStats = [v4 publisherConversionStats];
    [v5 setPublisherConversionStats:publisherConversionStats];

    topics = [v4 topics];
    [v5 setTopics:topics];

    publishDate = [v4 publishDate];
    [v5 setPublishDateMilliseconds:{objc_msgSend(publishDate, "fc_millisecondTimeIntervalSince1970")}];

    lastModifiedDate = [v4 lastModifiedDate];
    [v5 setLastModifiedDateMilliseconds:{objc_msgSend(lastModifiedDate, "fc_millisecondTimeIntervalSince1970")}];

    publisherTagMetadata = [v4 publisherTagMetadata];
    [v5 setPublisherTagMetadata:publisherTagMetadata];

    float16TitleEncoding = [v4 float16TitleEncoding];
    [v5 setFloat16TitleEncoding:float16TitleEncoding];

    float16FullBodyEncoding = [v4 float16FullBodyEncoding];
    [v5 setFloat16FullBodyEncoding:float16FullBodyEncoding];
  }

  return v5;
}

- (uint64_t)publishDate
{
  v1 = MEMORY[0x1E695DF00];
  publishDateMilliseconds = [self publishDateMilliseconds];

  return [v1 fc_dateWithMillisecondTimeIntervalSince1970:publishDateMilliseconds];
}

- (uint64_t)lastModifiedDate
{
  v1 = MEMORY[0x1E695DF00];
  lastModifiedDateMilliseconds = [self lastModifiedDateMilliseconds];

  return [v1 fc_dateWithMillisecondTimeIntervalSince1970:lastModifiedDateMilliseconds];
}

- (void)enumerateTopicCohortsWithBlock:()FCAdditions
{
  v4 = a3;
  topics = [self topics];

  if (topics)
  {
    topics2 = [self topics];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __73__NTPBFeedPersonalizingItem_FCAdditions__enumerateTopicCohortsWithBlock___block_invoke_2;
    v7[3] = &unk_1E7C3B988;
    v8 = v4;
    [topics2 enumerateObjectsUsingBlock:v7];
  }
}

- (void)enumerateTopicConversionStatsWithBlock:()FCAdditions
{
  v4 = a3;
  topics = [self topics];

  if (topics)
  {
    topics2 = [self topics];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __81__NTPBFeedPersonalizingItem_FCAdditions__enumerateTopicConversionStatsWithBlock___block_invoke_2;
    v7[3] = &unk_1E7C3B988;
    v8 = v4;
    [topics2 enumerateObjectsUsingBlock:v7];
  }
}

- (uint64_t)sourceFeedID
{
  v11 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"NTPBFeedPersonalizingItem does not support the %s property", "sourceFeedID"];
    *buf = 136315906;
    v4 = "[NTPBFeedPersonalizingItem(FCAdditions) sourceFeedID]";
    v5 = 2080;
    v6 = "NTPBFeedPersonalizingItem+FCAdditions.m";
    v7 = 1024;
    v8 = 85;
    v9 = 2114;
    v10 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v0 = *MEMORY[0x1E69E9840];
  return 0;
}

- (double)globalUserFeedback
{
  v11 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"NTPBFeedPersonalizingItem does not support the %s property", "globalUserFeedback"];
    *buf = 136315906;
    v4 = "[NTPBFeedPersonalizingItem(FCAdditions) globalUserFeedback]";
    v5 = 2080;
    v6 = "NTPBFeedPersonalizingItem+FCAdditions.m";
    v7 = 1024;
    v8 = 86;
    v9 = 2114;
    v10 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v0 = *MEMORY[0x1E69E9840];
  return 0.0;
}

- (uint64_t)hasGlobalUserFeedback
{
  v11 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"NTPBFeedPersonalizingItem does not support the %s property", "hasGlobalUserFeedback"];
    *buf = 136315906;
    v4 = "[NTPBFeedPersonalizingItem(FCAdditions) hasGlobalUserFeedback]";
    v5 = 2080;
    v6 = "NTPBFeedPersonalizingItem+FCAdditions.m";
    v7 = 1024;
    v8 = 87;
    v9 = 2114;
    v10 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v0 = *MEMORY[0x1E69E9840];
  return 0;
}

- (uint64_t)hasThumbnail
{
  v11 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"NTPBFeedPersonalizingItem does not support the %s property", "hasThumbnail"];
    *buf = 136315906;
    v4 = "[NTPBFeedPersonalizingItem(FCAdditions) hasThumbnail]";
    v5 = 2080;
    v6 = "NTPBFeedPersonalizingItem+FCAdditions.m";
    v7 = 1024;
    v8 = 88;
    v9 = 2114;
    v10 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v0 = *MEMORY[0x1E69E9840];
  return 0;
}

- (uint64_t)isHiddenFromAutoFavorites
{
  v11 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"NTPBFeedPersonalizingItem does not support the %s property", "isHiddenFromAutoFavorites"];
    *buf = 136315906;
    v4 = "[NTPBFeedPersonalizingItem(FCAdditions) isHiddenFromAutoFavorites]";
    v5 = 2080;
    v6 = "NTPBFeedPersonalizingItem+FCAdditions.m";
    v7 = 1024;
    v8 = 89;
    v9 = 2114;
    v10 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v0 = *MEMORY[0x1E69E9840];
  return 0;
}

- (uint64_t)halfLife
{
  v11 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"NTPBFeedPersonalizingItem does not support the %s property", "halfLife"];
    *buf = 136315906;
    v4 = "[NTPBFeedPersonalizingItem(FCAdditions) halfLife]";
    v5 = 2080;
    v6 = "NTPBFeedPersonalizingItem+FCAdditions.m";
    v7 = 1024;
    v8 = 90;
    v9 = 2114;
    v10 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v0 = *MEMORY[0x1E69E9840];
  return 0;
}

- (uint64_t)scoreProfile
{
  v11 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"NTPBFeedPersonalizingItem does not support the %s property", "scoreProfile"];
    *buf = 136315906;
    v4 = "[NTPBFeedPersonalizingItem(FCAdditions) scoreProfile]";
    v5 = 2080;
    v6 = "NTPBFeedPersonalizingItem+FCAdditions.m";
    v7 = 1024;
    v8 = 92;
    v9 = 2114;
    v10 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v0 = *MEMORY[0x1E69E9840];
  return 0;
}

- (void)setScoreProfile:()FCAdditions
{
  v10 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"NTPBFeedPersonalizingItem does not support the scoreProfile property"];
    v2 = 136315906;
    v3 = "[NTPBFeedPersonalizingItem(FCAdditions) setScoreProfile:]";
    v4 = 2080;
    v5 = "NTPBFeedPersonalizingItem+FCAdditions.m";
    v6 = 1024;
    v7 = 95;
    v8 = 2114;
    v9 = v1;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v2, 0x26u);
  }

  v0 = *MEMORY[0x1E69E9840];
}

@end