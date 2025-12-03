@interface MPCAssistantRadioPlaybackQueue
+ (id)radioQueueWithContextID:(id)d stationStringID:(id)iD;
- (MPCAssistantRadioPlaybackQueue)initWithContextID:(id)d stationStringID:(id)iD;
- (_MRSystemAppPlaybackQueue)createRemotePlaybackQueue;
- (id)description;
@end

@implementation MPCAssistantRadioPlaybackQueue

- (_MRSystemAppPlaybackQueue)createRemotePlaybackQueue
{
  v3 = MRSystemAppPlaybackQueueCreate();
  MRSystemAppPlaybackQueueSetRadioStationIDType();
  MRSystemAppPlaybackQueueSetRadioStationStringIdentifier();
  [(MPCAssistantPlaybackQueue *)self shouldImmediatelyStartPlayback];
  MRSystemAppPlaybackQueueSetIsRequestingImmediatePlayback();
  [(MPCAssistantPlaybackQueue *)self shouldOverrideManuallyCuratedQueue];
  MRSystemAppPlaybackQueueSetShouldOverrideManuallyCuratedQueue();
  siriRecommendationID = [(MPCAssistantPlaybackQueue *)self siriRecommendationID];
  MRSystemAppPlaybackQueueSetSiriRecommendationIdentifier();

  siriAssetInfo = [(MPCAssistantPlaybackQueue *)self siriAssetInfo];
  MRSystemAppPlaybackQueueSetSiriAssetInfo();

  v6 = objc_opt_self();
  featureName = [v6 featureName];
  MRSystemAppPlaybackQueueSetFeatureName();

  siriWHAMetricsInfo = [(MPCAssistantPlaybackQueue *)self siriWHAMetricsInfo];
  MRSystemAppPlaybackQueueSetSiriWHAMetricsInfo();

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = MPCAssistantRadioPlaybackQueue;
  v4 = [(MPCAssistantRadioPlaybackQueue *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ station=%@", v4, self->_stationStringID];

  return v5;
}

- (MPCAssistantRadioPlaybackQueue)initWithContextID:(id)d stationStringID:(id)iD
{
  iDCopy = iD;
  v11.receiver = self;
  v11.super_class = MPCAssistantRadioPlaybackQueue;
  v7 = [(MPCAssistantPlaybackQueue *)&v11 initWithContextID:d];
  if (v7)
  {
    v8 = [iDCopy copy];
    stationStringID = v7->_stationStringID;
    v7->_stationStringID = v8;
  }

  return v7;
}

+ (id)radioQueueWithContextID:(id)d stationStringID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  v8 = [[self alloc] initWithContextID:dCopy stationStringID:iDCopy];

  return v8;
}

@end