@interface FollowingViewController
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (_TtC7NewsUI223FollowingViewController)initWithCoder:(id)a3;
- (_TtC7NewsUI223FollowingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)contentScrollView;
- (void)dealloc;
- (void)delete:(id)a3;
- (void)scrollToTopAnimated:(BOOL)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)tabBarControllerDidDoubleTapBarButtonItem:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation FollowingViewController

- (_TtC7NewsUI223FollowingViewController)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC7NewsUI223FollowingViewController_previousSelectedIndexPath;
  v5 = sub_219BDC104();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7NewsUI223FollowingViewController_viewHasAppearedAtLeastOnce) = 0;
  result = sub_219BF7514();
  __break(1u);
  return result;
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = self;

  sub_219BE58F4();

  v5.receiver = v4;
  v5.super_class = ObjectType;
  [(FollowingViewController *)&v5 dealloc];
}

- (void)viewDidLoad
{
  v2 = self;
  sub_2198FC478();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_2198FD37C(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_2198FD604(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(FollowingViewController *)&v5 viewWillDisappear:v3];
  sub_219BE5904();
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_2198FD914(a3);
}

- (void)viewWillLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = swift_getObjectType();
  v2 = v15.receiver;
  [(FollowingViewController *)&v15 viewWillLayoutSubviews];
  v3 = [*&v2[OBJC_IVAR____TtC7NewsUI223FollowingViewController_blueprintViewController] view];
  if (v3)
  {
    v4 = v3;
    v5 = [v2 view];
    if (v5)
    {
      v6 = v5;
      [v5 bounds];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;

      [v4 setFrame_];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

- (void)viewSafeAreaInsetsDidChange
{
  v2 = self;
  sub_2198FDF00();
}

- (void)traitCollectionDidChange:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v7.receiver;
  [(FollowingViewController *)&v7 traitCollectionDidChange:v4];
  v6 = [v5 traitCollection];
  sub_2198FCD94(v6);
}

- (id)contentScrollView
{
  v2 = self;
  sub_219BE8664();
  v3 = sub_219BE7BC4();

  return v3;
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  sub_2198FDA8C(v5, a4);
}

- (void)delete:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_2198FE34C();

  sub_2199013BC(v6, sub_21880702C);
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (a4)
  {
    v6 = self;
    swift_unknownObjectRetain();
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = self;
  }

  v8 = sub_2198FEB30(a3, v10);

  sub_2199013BC(v10, sub_21880702C);
  return v8 & 1;
}

- (_TtC7NewsUI223FollowingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)tabBarControllerDidDoubleTapBarButtonItem:(id)a3
{
  v4 = self;
  sub_219BE8664();
  v3 = sub_219BE7BC4();

  [v3 scrollRectToVisible:1 animated:{0.0, 0.0, 1.0, 1.0}];
}

- (void)scrollToTopAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = self;
  sub_219BE8664();
  v4 = sub_219BE7BC4();

  [v4 ts:v3 scrollToTop:?];
}

@end