@interface HMMediaSession.DelegateAdapter
- (_TtCE13HomeDataModelCSo14HMMediaSession15DelegateAdapter)init;
- (void)mediaSession:(id)session didUpdatePlaybackState:(int64_t)state;
- (void)mediaSessionDidUpdate:(id)update;
@end

@implementation HMMediaSession.DelegateAdapter

- (_TtCE13HomeDataModelCSo14HMMediaSession15DelegateAdapter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)mediaSession:(id)session didUpdatePlaybackState:(int64_t)state
{
  sessionCopy = session;
  selfCopy = self;
  sub_1D1A73290(sessionCopy, state);
}

- (void)mediaSessionDidUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  sub_1D1A73600(updateCopy);
}

@end