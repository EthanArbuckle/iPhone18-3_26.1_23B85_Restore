@interface MPCAssistantStoreTracklistPlaybackQueue
+ (id)storeTracklistQueueWithContextID:(id)d storeItemIDs:(id)ds collectionIdentifierSet:(id)set;
- (MPCAssistantStoreTracklistPlaybackQueue)initWithContextID:(id)d storeItemIDs:(id)ds collectionIdentifierSet:(id)set;
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
  siriRecommendationID = [(MPCAssistantPlaybackQueue *)self siriRecommendationID];
  MRSystemAppPlaybackQueueSetSiriRecommendationIdentifier();

  siriAssetInfo = [(MPCAssistantPlaybackQueue *)self siriAssetInfo];
  MRSystemAppPlaybackQueueSetSiriAssetInfo();

  featureName = [(MPCAssistantPlaybackQueue *)self featureName];
  MRSystemAppPlaybackQueueSetFeatureName();

  siriWHAMetricsInfo = [(MPCAssistantPlaybackQueue *)self siriWHAMetricsInfo];
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

- (MPCAssistantStoreTracklistPlaybackQueue)initWithContextID:(id)d storeItemIDs:(id)ds collectionIdentifierSet:(id)set
{
  dsCopy = ds;
  setCopy = set;
  v14.receiver = self;
  v14.super_class = MPCAssistantStoreTracklistPlaybackQueue;
  v10 = [(MPCAssistantPlaybackQueue *)&v14 initWithContextID:d];
  if (v10)
  {
    v11 = [dsCopy copy];
    storeItemIDs = v10->_storeItemIDs;
    v10->_storeItemIDs = v11;

    objc_storeStrong(&v10->_collectionIdentifierSet, set);
  }

  return v10;
}

+ (id)storeTracklistQueueWithContextID:(id)d storeItemIDs:(id)ds collectionIdentifierSet:(id)set
{
  setCopy = set;
  dsCopy = ds;
  dCopy = d;
  v11 = [[self alloc] initWithContextID:dCopy storeItemIDs:dsCopy collectionIdentifierSet:setCopy];

  return v11;
}

@end