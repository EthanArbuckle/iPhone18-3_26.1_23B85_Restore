@interface WindowSizeReaderViewController
- (_TtC11MediaCoreUIP33_7E157EA4C6EF7AA60D360FCDCEB8EEC230WindowSizeReaderViewController)initWithCoder:(id)coder;
- (_TtC11MediaCoreUIP33_7E157EA4C6EF7AA60D360FCDCEB8EEC230WindowSizeReaderViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation WindowSizeReaderViewController

- (_TtC11MediaCoreUIP33_7E157EA4C6EF7AA60D360FCDCEB8EEC230WindowSizeReaderViewController)initWithCoder:(id)coder
{
  result = sub_1C5BCBBC4();
  __break(1u);
  return result;
}

- (void)viewIsAppearing:(BOOL)appearing
{
  selfCopy = self;
  sub_1C5A7A21C(appearing);
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1C5A7A384(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (_TtC11MediaCoreUIP33_7E157EA4C6EF7AA60D360FCDCEB8EEC230WindowSizeReaderViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end