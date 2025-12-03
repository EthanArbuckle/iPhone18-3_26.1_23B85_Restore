@interface PuzzlePrewarmer
- (_TtC7NewsUI215PuzzlePrewarmer)init;
- (void)networkReachabilityDidChange:(id)change;
@end

@implementation PuzzlePrewarmer

- (_TtC7NewsUI215PuzzlePrewarmer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)networkReachabilityDidChange:(id)change
{
  swift_unknownObjectRetain();
  selfCopy = self;
  if ([change isNetworkReachable])
  {
    sub_2187D97B0();
  }

  swift_unknownObjectRelease();
}

@end