@interface MPMusicPlayerPlaybackArchiveQueueDescriptor(MPCModelPlaybackAdditions)
- (id)playbackContexts;
@end

@implementation MPMusicPlayerPlaybackArchiveQueueDescriptor(MPCModelPlaybackAdditions)

- (id)playbackContexts
{
  v13[1] = *MEMORY[0x1E69E9840];
  objc_opt_class();
  playbackArchive = [self playbackArchive];
  playbackSessionData = [playbackArchive playbackSessionData];
  v4 = MSVUnarchivedObjectOfClass();

  [v4 setShuffleType:{objc_msgSend(self, "shuffleType")}];
  [v4 setRepeatType:{objc_msgSend(self, "repeatType")}];
  playActivityFeatureName = [self playActivityFeatureName];

  if (playActivityFeatureName)
  {
    playActivityFeatureName2 = [self playActivityFeatureName];
    [v4 setPlayActivityFeatureName:playActivityFeatureName2];
  }

  playActivityRecommendationData = [self playActivityRecommendationData];

  if (playActivityRecommendationData)
  {
    playActivityRecommendationData2 = [self playActivityRecommendationData];
    [v4 setPlayActivityRecommendationData:playActivityRecommendationData2];
  }

  playActivityQueueGroupingID = [self playActivityQueueGroupingID];

  if (playActivityQueueGroupingID)
  {
    playActivityQueueGroupingID2 = [self playActivityQueueGroupingID];
    [v4 setPlayActivityQueueGroupingID:playActivityQueueGroupingID2];
  }

  v13[0] = v4;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];

  return v11;
}

@end