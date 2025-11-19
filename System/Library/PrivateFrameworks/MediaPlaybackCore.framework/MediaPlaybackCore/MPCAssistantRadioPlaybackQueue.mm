@interface MPCAssistantRadioPlaybackQueue
+ (id)radioQueueWithContextID:(id)a3 stationStringID:(id)a4;
- (MPCAssistantRadioPlaybackQueue)initWithContextID:(id)a3 stationStringID:(id)a4;
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
  v4 = [(MPCAssistantPlaybackQueue *)self siriRecommendationID];
  MRSystemAppPlaybackQueueSetSiriRecommendationIdentifier();

  v5 = [(MPCAssistantPlaybackQueue *)self siriAssetInfo];
  MRSystemAppPlaybackQueueSetSiriAssetInfo();

  v6 = objc_opt_self();
  v7 = [v6 featureName];
  MRSystemAppPlaybackQueueSetFeatureName();

  v8 = [(MPCAssistantPlaybackQueue *)self siriWHAMetricsInfo];
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

- (MPCAssistantRadioPlaybackQueue)initWithContextID:(id)a3 stationStringID:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = MPCAssistantRadioPlaybackQueue;
  v7 = [(MPCAssistantPlaybackQueue *)&v11 initWithContextID:a3];
  if (v7)
  {
    v8 = [v6 copy];
    stationStringID = v7->_stationStringID;
    v7->_stationStringID = v8;
  }

  return v7;
}

+ (id)radioQueueWithContextID:(id)a3 stationStringID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithContextID:v7 stationStringID:v6];

  return v8;
}

@end