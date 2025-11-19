@interface PuzzlePrewarmer
- (_TtC7NewsUI215PuzzlePrewarmer)init;
- (void)networkReachabilityDidChange:(id)a3;
@end

@implementation PuzzlePrewarmer

- (_TtC7NewsUI215PuzzlePrewarmer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)networkReachabilityDidChange:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  if ([a3 isNetworkReachable])
  {
    sub_2187D97B0();
  }

  swift_unknownObjectRelease();
}

@end