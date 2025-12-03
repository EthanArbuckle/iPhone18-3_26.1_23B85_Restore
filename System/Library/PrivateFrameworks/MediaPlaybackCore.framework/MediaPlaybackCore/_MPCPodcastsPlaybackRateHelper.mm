@interface _MPCPodcastsPlaybackRateHelper
- (BOOL)canHandlePlaybackRateChangeForCommandEvent:(id)event;
- (BOOL)supportsRate:(float)rate;
- (float)computedRateForChangePlaybackRateCommandEvent:(id)event;
- (float)updatedPlaybackRateForChangePlaybackRateCommandEvent:(id)event podcastUUID:(id)d;
- (void)saveWithRate:(float)rate uuid:(id)uuid;
@end

@implementation _MPCPodcastsPlaybackRateHelper

- (BOOL)supportsRate:(float)rate
{
  selfCopy = self;
  v5 = PodcastsPlaybackRateHelper.supportsRate(_:)(rate);

  return v5;
}

- (BOOL)canHandlePlaybackRateChangeForCommandEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  LOBYTE(self) = PodcastsPlaybackRateHelper.canHandlePlaybackRateChange(forCommandEvent:)(eventCopy);

  return self & 1;
}

- (float)updatedPlaybackRateForChangePlaybackRateCommandEvent:(id)event podcastUUID:(id)d
{
  if (d)
  {
    v6 = sub_1C6016940();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  eventCopy = event;
  selfCopy = self;
  v11.value._countAndFlagsBits = v6;
  v11.value._object = v8;
  v12 = PodcastsPlaybackRateHelper.updatedPlaybackRate(forChangePlaybackRateCommandEvent:podcastUUID:)(eventCopy, v11);

  return v12;
}

- (float)computedRateForChangePlaybackRateCommandEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  v6 = PodcastsPlaybackRateHelper.computedRate(forChangePlaybackRateCommandEvent:)(eventCopy);

  return v6;
}

- (void)saveWithRate:(float)rate uuid:(id)uuid
{
  if (uuid)
  {
    v6 = sub_1C6016940();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  selfCopy = self;
  v10.value._countAndFlagsBits = v6;
  v10.value._object = v8;
  PodcastsPlaybackRateHelper.save(rate:uuid:)(rate, v10);
}

@end