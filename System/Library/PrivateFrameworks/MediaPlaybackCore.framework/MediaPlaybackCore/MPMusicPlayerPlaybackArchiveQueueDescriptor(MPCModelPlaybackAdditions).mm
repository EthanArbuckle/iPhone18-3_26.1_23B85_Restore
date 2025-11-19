@interface MPMusicPlayerPlaybackArchiveQueueDescriptor(MPCModelPlaybackAdditions)
- (id)playbackContexts;
@end

@implementation MPMusicPlayerPlaybackArchiveQueueDescriptor(MPCModelPlaybackAdditions)

- (id)playbackContexts
{
  v13[1] = *MEMORY[0x1E69E9840];
  objc_opt_class();
  v2 = [a1 playbackArchive];
  v3 = [v2 playbackSessionData];
  v4 = MSVUnarchivedObjectOfClass();

  [v4 setShuffleType:{objc_msgSend(a1, "shuffleType")}];
  [v4 setRepeatType:{objc_msgSend(a1, "repeatType")}];
  v5 = [a1 playActivityFeatureName];

  if (v5)
  {
    v6 = [a1 playActivityFeatureName];
    [v4 setPlayActivityFeatureName:v6];
  }

  v7 = [a1 playActivityRecommendationData];

  if (v7)
  {
    v8 = [a1 playActivityRecommendationData];
    [v4 setPlayActivityRecommendationData:v8];
  }

  v9 = [a1 playActivityQueueGroupingID];

  if (v9)
  {
    v10 = [a1 playActivityQueueGroupingID];
    [v4 setPlayActivityQueueGroupingID:v10];
  }

  v13[0] = v4;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];

  return v11;
}

@end