@interface MPCAssistantCustomDataPlaybackQueue
+ (id)customDataQueueWithContextID:(id)d identifier:(id)identifier customData:(id)data;
- (MPCAssistantCustomDataPlaybackQueue)initWithContextID:(id)d identifier:(id)identifier customData:(id)data;
- (_MRSystemAppPlaybackQueue)createRemotePlaybackQueue;
- (id)description;
@end

@implementation MPCAssistantCustomDataPlaybackQueue

- (_MRSystemAppPlaybackQueue)createRemotePlaybackQueue
{
  v3 = MRSystemAppPlaybackQueueCreate();
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

  identifier = [(MPCAssistantCustomDataPlaybackQueue *)self identifier];
  MRSystemAppPlaybackQueueSetCustomDataIdentifier();

  customData = [(MPCAssistantCustomDataPlaybackQueue *)self customData];
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

- (MPCAssistantCustomDataPlaybackQueue)initWithContextID:(id)d identifier:(id)identifier customData:(id)data
{
  identifierCopy = identifier;
  dataCopy = data;
  v16.receiver = self;
  v16.super_class = MPCAssistantCustomDataPlaybackQueue;
  v10 = [(MPCAssistantPlaybackQueue *)&v16 initWithContextID:d];
  if (v10)
  {
    v11 = [identifierCopy copy];
    identifier = v10->_identifier;
    v10->_identifier = v11;

    v13 = [dataCopy copy];
    customData = v10->_customData;
    v10->_customData = v13;
  }

  return v10;
}

+ (id)customDataQueueWithContextID:(id)d identifier:(id)identifier customData:(id)data
{
  dataCopy = data;
  identifierCopy = identifier;
  dCopy = d;
  v11 = [[self alloc] initWithContextID:dCopy identifier:identifierCopy customData:dataCopy];

  return v11;
}

@end