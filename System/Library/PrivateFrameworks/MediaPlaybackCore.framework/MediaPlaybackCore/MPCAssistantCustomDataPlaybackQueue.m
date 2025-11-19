@interface MPCAssistantCustomDataPlaybackQueue
+ (id)customDataQueueWithContextID:(id)a3 identifier:(id)a4 customData:(id)a5;
- (MPCAssistantCustomDataPlaybackQueue)initWithContextID:(id)a3 identifier:(id)a4 customData:(id)a5;
- (_MRSystemAppPlaybackQueue)createRemotePlaybackQueue;
- (id)description;
@end

@implementation MPCAssistantCustomDataPlaybackQueue

- (_MRSystemAppPlaybackQueue)createRemotePlaybackQueue
{
  v3 = MRSystemAppPlaybackQueueCreate();
  [(MPCAssistantPlaybackQueue *)self shouldImmediatelyStartPlayback];
  MRSystemAppPlaybackQueueSetIsRequestingImmediatePlayback();
  v4 = [(MPCAssistantPlaybackQueue *)self siriRecommendationID];
  MRSystemAppPlaybackQueueSetSiriRecommendationIdentifier();

  v5 = [(MPCAssistantPlaybackQueue *)self siriAssetInfo];
  MRSystemAppPlaybackQueueSetSiriAssetInfo();

  v6 = [(MPCAssistantPlaybackQueue *)self featureName];
  MRSystemAppPlaybackQueueSetFeatureName();

  v7 = [(MPCAssistantPlaybackQueue *)self siriWHAMetricsInfo];
  MRSystemAppPlaybackQueueSetSiriWHAMetricsInfo();

  v8 = [(MPCAssistantCustomDataPlaybackQueue *)self identifier];
  MRSystemAppPlaybackQueueSetCustomDataIdentifier();

  v9 = [(MPCAssistantCustomDataPlaybackQueue *)self customData];
  MRSystemAppPlaybackQueueSetCustomData();

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = MPCAssistantCustomDataPlaybackQueue;
  v4 = [(MPCAssistantCustomDataPlaybackQueue *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ identifier=%@", v4, self->_identifier];

  return v5;
}

- (MPCAssistantCustomDataPlaybackQueue)initWithContextID:(id)a3 identifier:(id)a4 customData:(id)a5
{
  v8 = a4;
  v9 = a5;
  v16.receiver = self;
  v16.super_class = MPCAssistantCustomDataPlaybackQueue;
  v10 = [(MPCAssistantPlaybackQueue *)&v16 initWithContextID:a3];
  if (v10)
  {
    v11 = [v8 copy];
    identifier = v10->_identifier;
    v10->_identifier = v11;

    v13 = [v9 copy];
    customData = v10->_customData;
    v10->_customData = v13;
  }

  return v10;
}

+ (id)customDataQueueWithContextID:(id)a3 identifier:(id)a4 customData:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithContextID:v10 identifier:v9 customData:v8];

  return v11;
}

@end