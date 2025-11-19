@interface _MPCPodcastsPlaybackRateHelper
- (BOOL)canHandlePlaybackRateChangeForCommandEvent:(id)a3;
- (BOOL)supportsRate:(float)a3;
- (float)computedRateForChangePlaybackRateCommandEvent:(id)a3;
- (float)updatedPlaybackRateForChangePlaybackRateCommandEvent:(id)a3 podcastUUID:(id)a4;
- (void)saveWithRate:(float)a3 uuid:(id)a4;
@end

@implementation _MPCPodcastsPlaybackRateHelper

- (BOOL)supportsRate:(float)a3
{
  v4 = self;
  v5 = PodcastsPlaybackRateHelper.supportsRate(_:)(a3);

  return v5;
}

- (BOOL)canHandlePlaybackRateChangeForCommandEvent:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = PodcastsPlaybackRateHelper.canHandlePlaybackRateChange(forCommandEvent:)(v4);

  return self & 1;
}

- (float)updatedPlaybackRateForChangePlaybackRateCommandEvent:(id)a3 podcastUUID:(id)a4
{
  if (a4)
  {
    v6 = sub_1C6016940();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a3;
  v10 = self;
  v11.value._countAndFlagsBits = v6;
  v11.value._object = v8;
  v12 = PodcastsPlaybackRateHelper.updatedPlaybackRate(forChangePlaybackRateCommandEvent:podcastUUID:)(v9, v11);

  return v12;
}

- (float)computedRateForChangePlaybackRateCommandEvent:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = PodcastsPlaybackRateHelper.computedRate(forChangePlaybackRateCommandEvent:)(v4);

  return v6;
}

- (void)saveWithRate:(float)a3 uuid:(id)a4
{
  if (a4)
  {
    v6 = sub_1C6016940();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = self;
  v10.value._countAndFlagsBits = v6;
  v10.value._object = v8;
  PodcastsPlaybackRateHelper.save(rate:uuid:)(a3, v10);
}

@end