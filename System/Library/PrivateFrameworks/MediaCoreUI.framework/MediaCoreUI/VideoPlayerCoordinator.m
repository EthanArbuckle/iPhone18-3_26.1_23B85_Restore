@interface VideoPlayerCoordinator
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (_TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator)init;
- (void)didPinch:(id)a3;
- (void)didTap;
@end

@implementation VideoPlayerCoordinator

- (void)didTap
{
  v2 = self;
  sub_1C5B96F6C();
}

- (void)didPinch:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1C5B971F4(v4);
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1C5B973C4(v6, v7);

  return v9 & 1;
}

- (_TtC11MediaCoreUIP33_8A49DC2FB69555F909B7715363263FF722VideoPlayerCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end