@interface NowPlayingControllerDelegate
- (_TtC10ChronoCore28NowPlayingControllerDelegate)init;
- (void)controller:(id)controller clientPropertiesDidChangeFrom:(id)from to:(id)to;
- (void)controller:(id)controller playbackStateDidChangeFrom:(unsigned int)from to:(unsigned int)to;
- (void)controllerWillReloadForInvalidation:(id)invalidation;
@end

@implementation NowPlayingControllerDelegate

- (void)controller:(id)controller playbackStateDidChangeFrom:(unsigned int)from to:(unsigned int)to
{
  if (swift_weakLoadStrong())
  {
    selfCopy = self;
    sub_224C6D4A0();
  }
}

- (void)controller:(id)controller clientPropertiesDidChangeFrom:(id)from to:(id)to
{
  if (swift_weakLoadStrong())
  {
    selfCopy = self;
    sub_224C6D4A0();
  }
}

- (void)controllerWillReloadForInvalidation:(id)invalidation
{
  if (swift_weakLoadStrong())
  {
    selfCopy = self;
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