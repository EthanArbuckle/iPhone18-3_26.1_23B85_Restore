@interface NowPlayingControllerDelegate
- (_TtC10ChronoCore28NowPlayingControllerDelegate)init;
- (void)controller:(id)a3 clientPropertiesDidChangeFrom:(id)a4 to:(id)a5;
- (void)controller:(id)a3 playbackStateDidChangeFrom:(unsigned int)a4 to:(unsigned int)a5;
- (void)controllerWillReloadForInvalidation:(id)a3;
@end

@implementation NowPlayingControllerDelegate

- (void)controller:(id)a3 playbackStateDidChangeFrom:(unsigned int)a4 to:(unsigned int)a5
{
  if (swift_weakLoadStrong())
  {
    v6 = self;
    sub_224C6D4A0();
  }
}

- (void)controller:(id)a3 clientPropertiesDidChangeFrom:(id)a4 to:(id)a5
{
  if (swift_weakLoadStrong())
  {
    v6 = self;
    sub_224C6D4A0();
  }
}

- (void)controllerWillReloadForInvalidation:(id)a3
{
  if (swift_weakLoadStrong())
  {
    v4 = self;
    sub_224C6D4A0();
  }
}

- (_TtC10ChronoCore28NowPlayingControllerDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end