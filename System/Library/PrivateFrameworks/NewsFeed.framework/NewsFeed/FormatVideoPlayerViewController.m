@interface FormatVideoPlayerViewController
- (_TtC8NewsFeed31FormatVideoPlayerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)dealloc;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation FormatVideoPlayerViewController

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = self;
  if (Strong)
  {
    sub_1D6AF44B0();
    swift_unknownObjectRelease();
  }

  v6.receiver = v5;
  v6.super_class = ObjectType;
  [(FormatVideoPlayerViewController *)&v6 dealloc];
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1D6B4B70C();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(FormatVideoPlayerViewController *)&v5 viewWillDisappear:v3];
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1D6AF40A0();
    swift_unknownObjectRelease();
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  sub_1D6B4BA94(a4, width, height);
  swift_unknownObjectRelease();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_1D6B4BBEC();
}

- (_TtC8NewsFeed31FormatVideoPlayerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end