@interface CAFNowPlayingObservable
- (NSString)description;
- (void)nowPlayingService:(id)service didUpdateArtwork:(id)artwork;
- (void)nowPlayingService:(id)service didUpdateAudioContentBadge:(unsigned __int8)badge;
- (void)nowPlayingService:(id)service didUpdatePlaybackState:(unsigned __int8)state;
- (void)nowPlayingService:(id)service didUpdateUserVisibleDescription:(id)description;
- (void)serviceDidFinishGroupUpdate:(id)update;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values;
@end

@implementation CAFNowPlayingObservable

- (NSString)description
{
  selfCopy = self;
  v3 = CAFNowPlayingObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)nowPlayingService:(id)service didUpdateUserVisibleDescription:(id)description
{
  if (description)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  serviceCopy = service;
  selfCopy = self;
  CAFNowPlayingObservable.nowPlayingService(_:didUpdateUserVisibleDescription:)();
}

- (void)nowPlayingService:(id)service didUpdateArtwork:(id)artwork
{
  serviceCopy = service;
  artworkCopy = artwork;
  selfCopy = self;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  CAFNowPlayingObservable.nowPlayingService(_:didUpdateArtwork:)();
  outlined consume of Data._Representation(v8, v10);
}

- (void)nowPlayingService:(id)service didUpdatePlaybackState:(unsigned __int8)state
{
  serviceCopy = service;
  selfCopy = self;
  CAFNowPlayingObservable.nowPlayingService(_:didUpdatePlaybackState:)(selfCopy, state);
}

- (void)nowPlayingService:(id)service didUpdateAudioContentBadge:(unsigned __int8)badge
{
  serviceCopy = service;
  selfCopy = self;
  CAFNowPlayingObservable.nowPlayingService(_:didUpdateAudioContentBadge:)(selfCopy, badge);
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  updateCopy = update;
  characteristicCopy = characteristic;
  selfCopy = self;
  CAFNowPlayingObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(selfCopy, v10, groupUpdate);
}

- (void)serviceDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  CAFNowPlayingObservable.serviceDidUpdate(_:receivedAllValues:)(selfCopy, values);
}

- (void)serviceDidFinishGroupUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  CAFNowPlayingObservable.serviceDidFinishGroupUpdate(_:)();
}

@end