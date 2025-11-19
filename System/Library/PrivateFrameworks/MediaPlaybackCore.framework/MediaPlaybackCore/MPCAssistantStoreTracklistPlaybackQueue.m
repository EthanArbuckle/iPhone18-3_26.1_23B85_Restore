@interface MPCAssistantStoreTracklistPlaybackQueue
+ (id)storeTracklistQueueWithContextID:(id)a3 storeItemIDs:(id)a4 collectionIdentifierSet:(id)a5;
- (MPCAssistantStoreTracklistPlaybackQueue)initWithContextID:(id)a3 storeItemIDs:(id)a4 collectionIdentifierSet:(id)a5;
- (_MRSystemAppPlaybackQueue)createRemotePlaybackQueue;
- (id)description;
@end

@implementation MPCAssistantStoreTracklistPlaybackQueue

- (_MRSystemAppPlaybackQueue)createRemotePlaybackQueue
{
  v3 = MRSystemAppPlaybackQueueCreate();
  MPShuffleTypeToMediaRemoteShuffleMode();
  MRSystemAppPlaybackQueueSetTracklistShuffleMode();
  MRSystemAppPlaybackQueueSetTracklistRepeatMode();
  collectionIdentifierSet = self->_collectionIdentifierSet;
  if (collectionIdentifierSet)
  {
    v5 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:collectionIdentifierSet requiringSecureCoding:1 error:0];
    MRSystemAppPlaybackQueueSetTracklistCollectionIdentifierSetData();
  }

  MRSystemAppPlaybackQueueSetGenericTrackIdentifiers();
  [(MPCAssistantPlaybackQueue *)self shouldOverrideManuallyCuratedQueue];
  MRSystemAppPlaybackQueueSetShouldOverrideManuallyCuratedQueue();
  [(MPCAssistantPlaybackQueue *)self shouldImmediatelyStartPlayback];
  MRSystemAppPlaybackQueueSetIsRequestingImmediatePlayback();
  v6 = [(MPCAssistantPlaybackQueue *)self siriRecommendationID];
  MRSystemAppPlaybackQueueSetSiriRecommendationIdentifier();

  v7 = [(MPCAssistantPlaybackQueue *)self siriAssetInfo];
  MRSystemAppPlaybackQueueSetSiriAssetInfo();

  v8 = [(MPCAssistantPlaybackQueue *)self featureName];
  MRSystemAppPlaybackQueueSetFeatureName();

  v9 = [(MPCAssistantPlaybackQueue *)self siriWHAMetricsInfo];
  MRSystemAppPlaybackQueueSetSiriWHAMetricsInfo();

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = MPCAssistantStoreTracklistPlaybackQueue;
  v4 = [(MPCAssistantStoreTracklistPlaybackQueue *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ collection=%@ identifiers=%@", v4, self->_collectionIdentifierSet, self->_storeItemIDs];

  return v5;
}

- (MPCAssistantStoreTracklistPlaybackQueue)initWithContextID:(id)a3 storeItemIDs:(id)a4 collectionIdentifierSet:(id)a5
{
  v8 = a4;
  v9 = a5;
  v14.receiver = self;
  v14.super_class = MPCAssistantStoreTracklistPlaybackQueue;
  v10 = [(MPCAssistantPlaybackQueue *)&v14 initWithContextID:a3];
  if (v10)
  {
    v11 = [v8 copy];
    storeItemIDs = v10->_storeItemIDs;
    v10->_storeItemIDs = v11;

    objc_storeStrong(&v10->_collectionIdentifierSet, a5);
  }

  return v10;
}

+ (id)storeTracklistQueueWithContextID:(id)a3 storeItemIDs:(id)a4 collectionIdentifierSet:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithContextID:v10 storeItemIDs:v9 collectionIdentifierSet:v8];

  return v11;
}

@end