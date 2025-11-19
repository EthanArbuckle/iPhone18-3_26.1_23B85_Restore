@interface HMMediaSession.DelegateAdapter
- (_TtCE13HomeDataModelCSo14HMMediaSession15DelegateAdapter)init;
- (void)mediaSession:(id)a3 didUpdatePlaybackState:(int64_t)a4;
- (void)mediaSessionDidUpdate:(id)a3;
@end

@implementation HMMediaSession.DelegateAdapter

- (_TtCE13HomeDataModelCSo14HMMediaSession15DelegateAdapter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)mediaSession:(id)a3 didUpdatePlaybackState:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_1D1A73290(v6, a4);
}

- (void)mediaSessionDidUpdate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D1A73600(v4);
}

@end