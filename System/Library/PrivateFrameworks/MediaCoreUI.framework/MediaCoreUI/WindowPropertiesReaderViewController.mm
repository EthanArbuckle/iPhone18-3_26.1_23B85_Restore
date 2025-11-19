@interface WindowPropertiesReaderViewController
- (_TtC11MediaCoreUI36WindowPropertiesReaderViewController)initWithCoder:(id)a3;
- (_TtC11MediaCoreUI36WindowPropertiesReaderViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation WindowPropertiesReaderViewController

- (_TtC11MediaCoreUI36WindowPropertiesReaderViewController)initWithCoder:(id)a3
{
  result = sub_1C5BCBBC4();
  __break(1u);
  return result;
}

- (void)viewIsAppearing:(BOOL)a3
{
  v4 = self;
  sub_1C5A98730(a3);
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  sub_1C5A9899C(a4, width, height);
  swift_unknownObjectRelease();
}

- (_TtC11MediaCoreUI36WindowPropertiesReaderViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end