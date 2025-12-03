@interface RecipeViewController
- (_TtC12NewsArticles20RecipeViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)childViewControllerForStatusBarHidden;
- (void)dealloc;
- (void)setContentScrollView:(id)view forEdge:(unint64_t)edge;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
@end

@implementation RecipeViewController

- (id)childViewControllerForStatusBarHidden
{
  v2 = OBJC_IVAR____TtC12NewsArticles20RecipeViewController_contentViewController;
  swift_beginAccess();
  return *(self + v2);
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  selfCopy = self;
  swift_unknownObjectRetain();
  sub_1D7C26404();
  swift_unknownObjectRelease();
  v5.receiver = selfCopy;
  v5.super_class = ObjectType;
  [(RecipeViewController *)&v5 dealloc];
}

- (_TtC12NewsArticles20RecipeViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1D7C2BB18();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1D7C2C34C(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v4 = v8.receiver;
  [(RecipeViewController *)&v8 viewDidDisappear:disappearCopy];
  v5 = *&v4[OBJC_IVAR____TtC12NewsArticles20RecipeViewController_eventHandler];
  if (*(v5 + 88))
  {
    v6 = *(v5 + 96);
    ObjectType = swift_getObjectType();
    (*(v6 + 16))(ObjectType, v6);
  }
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(RecipeViewController *)&v3 viewDidLayoutSubviews];
  sub_1D7D2A55C();
}

- (void)viewSafeAreaInsetsDidChange
{
  selfCopy = self;
  sub_1D7C2C528();
}

- (void)setContentScrollView:(id)view forEdge:(unint64_t)edge
{
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  viewCopy = view;
  v7 = v8.receiver;
  [(RecipeViewController *)&v8 setContentScrollView:viewCopy forEdge:edge];
  sub_1D7B08E88();
  sub_1D7D28F1C();
}

@end