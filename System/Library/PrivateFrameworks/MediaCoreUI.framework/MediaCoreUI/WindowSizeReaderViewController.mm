@interface WindowSizeReaderViewController
- (_TtC11MediaCoreUIP33_7E157EA4C6EF7AA60D360FCDCEB8EEC230WindowSizeReaderViewController)initWithCoder:(id)a3;
- (_TtC11MediaCoreUIP33_7E157EA4C6EF7AA60D360FCDCEB8EEC230WindowSizeReaderViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation WindowSizeReaderViewController

- (_TtC11MediaCoreUIP33_7E157EA4C6EF7AA60D360FCDCEB8EEC230WindowSizeReaderViewController)initWithCoder:(id)a3
{
  result = sub_1C5BCBBC4();
  __break(1u);
  return result;
}

- (void)viewIsAppearing:(BOOL)a3
{
  v4 = self;
  sub_1C5A7A21C(a3);
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  sub_1C5A7A384(a4, width, height);
  swift_unknownObjectRelease();
}

- (_TtC11MediaCoreUIP33_7E157EA4C6EF7AA60D360FCDCEB8EEC230WindowSizeReaderViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end