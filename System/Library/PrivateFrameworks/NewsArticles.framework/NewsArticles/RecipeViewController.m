@interface RecipeViewController
- (_TtC12NewsArticles20RecipeViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)childViewControllerForStatusBarHidden;
- (void)dealloc;
- (void)setContentScrollView:(id)a3 forEdge:(unint64_t)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
@end

@implementation RecipeViewController

- (id)childViewControllerForStatusBarHidden
{
  v2 = OBJC_IVAR____TtC12NewsArticles20RecipeViewController_contentViewController;
  swift_beginAccess();
  return *(a1 + v2);
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = self;
  swift_unknownObjectRetain();
  sub_1D7C26404();
  swift_unknownObjectRelease();
  v5.receiver = v4;
  v5.super_class = ObjectType;
  [(RecipeViewController *)&v5 dealloc];
}

- (_TtC12NewsArticles20RecipeViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1D7C2BB18();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_1D7C2C34C(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v4 = v8.receiver;
  [(RecipeViewController *)&v8 viewDidDisappear:v3];
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
  v2 = self;
  sub_1D7C2C528();
}

- (void)setContentScrollView:(id)a3 forEdge:(unint64_t)a4
{
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v6 = a3;
  v7 = v8.receiver;
  [(RecipeViewController *)&v8 setContentScrollView:v6 forEdge:a4];
  sub_1D7B08E88();
  sub_1D7D28F1C();
}

@end