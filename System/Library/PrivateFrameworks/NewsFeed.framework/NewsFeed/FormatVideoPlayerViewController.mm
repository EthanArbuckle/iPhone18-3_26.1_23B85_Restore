@interface FormatVideoPlayerViewController
- (_TtC8NewsFeed31FormatVideoPlayerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)dealloc;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation FormatVideoPlayerViewController

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  Strong = swift_unknownObjectWeakLoadStrong();
  selfCopy = self;
  if (Strong)
  {
    sub_1D6AF44B0();
    swift_unknownObjectRelease();
  }

  v6.receiver = selfCopy;
  v6.super_class = ObjectType;
  [(FormatVideoPlayerViewController *)&v6 dealloc];
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1D6B4B70C();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(FormatVideoPlayerViewController *)&v5 viewWillDisappear:disappearCopy];
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1D6AF40A0();
    swift_unknownObjectRelease();
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1D6B4BA94(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_1D6B4BBEC();
}

- (_TtC8NewsFeed31FormatVideoPlayerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end