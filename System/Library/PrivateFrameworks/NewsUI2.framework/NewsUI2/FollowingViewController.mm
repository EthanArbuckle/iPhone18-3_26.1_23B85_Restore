@interface FollowingViewController
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (_TtC7NewsUI223FollowingViewController)initWithCoder:(id)coder;
- (_TtC7NewsUI223FollowingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)contentScrollView;
- (void)dealloc;
- (void)delete:(id)delete;
- (void)scrollToTopAnimated:(BOOL)animated;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)tabBarControllerDidDoubleTapBarButtonItem:(id)item;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation FollowingViewController

- (_TtC7NewsUI223FollowingViewController)initWithCoder:(id)coder
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
  selfCopy = self;

  sub_219BE58F4();

  v5.receiver = selfCopy;
  v5.super_class = ObjectType;
  [(FollowingViewController *)&v5 dealloc];
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_2198FC478();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_2198FD37C(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_2198FD604(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(FollowingViewController *)&v5 viewWillDisappear:disappearCopy];
  sub_219BE5904();
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_2198FD914(disappear);
}

- (void)viewWillLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = swift_getObjectType();
  v2 = v15.receiver;
  [(FollowingViewController *)&v15 viewWillLayoutSubviews];
  view = [*&v2[OBJC_IVAR____TtC7NewsUI223FollowingViewController_blueprintViewController] view];
  if (view)
  {
    v4 = view;
    view2 = [v2 view];
    if (view2)
    {
      v6 = view2;
      [view2 bounds];
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
  selfCopy = self;
  sub_2198FDF00();
}

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  changeCopy = change;
  v5 = v7.receiver;
  [(FollowingViewController *)&v7 traitCollectionDidChange:changeCopy];
  traitCollection = [v5 traitCollection];
  sub_2198FCD94(traitCollection);
}

- (id)contentScrollView
{
  selfCopy = self;
  sub_219BE8664();
  v3 = sub_219BE7BC4();

  return v3;
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  editingCopy = editing;
  selfCopy = self;
  sub_2198FDA8C(editingCopy, animated);
}

- (void)delete:(id)delete
{
  if (delete)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_2198FE34C();

  sub_2199013BC(v6, sub_21880702C);
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    selfCopy2 = self;
  }

  v8 = sub_2198FEB30(action, v10);

  sub_2199013BC(v10, sub_21880702C);
  return v8 & 1;
}

- (_TtC7NewsUI223FollowingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)tabBarControllerDidDoubleTapBarButtonItem:(id)item
{
  selfCopy = self;
  sub_219BE8664();
  v3 = sub_219BE7BC4();

  [v3 scrollRectToVisible:1 animated:{0.0, 0.0, 1.0, 1.0}];
}

- (void)scrollToTopAnimated:(BOOL)animated
{
  animatedCopy = animated;
  selfCopy = self;
  sub_219BE8664();
  v4 = sub_219BE7BC4();

  [v4 ts:animatedCopy scrollToTop:?];
}

@end