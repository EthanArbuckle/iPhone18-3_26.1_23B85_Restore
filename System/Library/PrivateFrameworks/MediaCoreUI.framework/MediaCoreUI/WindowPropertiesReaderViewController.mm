@interface WindowPropertiesReaderViewController
- (_TtC11MediaCoreUI36WindowPropertiesReaderViewController)initWithCoder:(id)coder;
- (_TtC11MediaCoreUI36WindowPropertiesReaderViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation WindowPropertiesReaderViewController

- (_TtC11MediaCoreUI36WindowPropertiesReaderViewController)initWithCoder:(id)coder
{
  result = sub_1C5BCBBC4();
  __break(1u);
  return result;
}

- (void)viewIsAppearing:(BOOL)appearing
{
  selfCopy = self;
  sub_1C5A98730(appearing);
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1C5A9899C(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (_TtC11MediaCoreUI36WindowPropertiesReaderViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end