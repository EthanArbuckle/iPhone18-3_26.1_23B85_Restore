@interface CAFNowPlayingObservable
- (NSString)description;
- (void)nowPlayingService:(id)a3 didUpdateArtwork:(id)a4;
- (void)nowPlayingService:(id)a3 didUpdateAudioContentBadge:(unsigned __int8)a4;
- (void)nowPlayingService:(id)a3 didUpdatePlaybackState:(unsigned __int8)a4;
- (void)nowPlayingService:(id)a3 didUpdateUserVisibleDescription:(id)a4;
- (void)serviceDidFinishGroupUpdate:(id)a3;
- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5;
- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4;
@end

@implementation CAFNowPlayingObservable

- (NSString)description
{
  v2 = self;
  v3 = CAFNowPlayingObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)nowPlayingService:(id)a3 didUpdateUserVisibleDescription:(id)a4
{
  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v7 = self;
  CAFNowPlayingObservable.nowPlayingService(_:didUpdateUserVisibleDescription:)();
}

- (void)nowPlayingService:(id)a3 didUpdateArtwork:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11 = self;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  CAFNowPlayingObservable.nowPlayingService(_:didUpdateArtwork:)();
  outlined consume of Data._Representation(v8, v10);
}

- (void)nowPlayingService:(id)a3 didUpdatePlaybackState:(unsigned __int8)a4
{
  v6 = a3;
  v7 = self;
  CAFNowPlayingObservable.nowPlayingService(_:didUpdatePlaybackState:)(v7, a4);
}

- (void)nowPlayingService:(id)a3 didUpdateAudioContentBadge:(unsigned __int8)a4
{
  v6 = a3;
  v7 = self;
  CAFNowPlayingObservable.nowPlayingService(_:didUpdateAudioContentBadge:)(v7, a4);
}

- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v11 = self;
  CAFNowPlayingObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(v11, v10, a5);
}

- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  CAFNowPlayingObservable.serviceDidUpdate(_:receivedAllValues:)(v7, a4);
}

- (void)serviceDidFinishGroupUpdate:(id)a3
{
  v4 = a3;
  v5 = self;
  CAFNowPlayingObservable.serviceDidFinishGroupUpdate(_:)();
}

@end