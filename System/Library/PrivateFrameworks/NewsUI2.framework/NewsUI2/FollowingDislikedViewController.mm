@interface FollowingDislikedViewController
- (_TtC7NewsUI231FollowingDislikedViewController)initWithCoder:(id)coder;
- (_TtC7NewsUI231FollowingDislikedViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation FollowingDislikedViewController

- (_TtC7NewsUI231FollowingDislikedViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7NewsUI231FollowingDislikedViewController_prewarm) = 1;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7NewsUI231FollowingDislikedViewController____lazy_storage___closeBarButtonItem) = 0;
  result = sub_219BF7514();
  __break(1u);
  return result;
}

- (_TtC7NewsUI231FollowingDislikedViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_219BD3894();
}

- (void)viewWillLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = swift_getObjectType();
  v2 = v15.receiver;
  [(FollowingDislikedViewController *)&v15 viewWillLayoutSubviews];
  view = [*&v2[OBJC_IVAR____TtC7NewsUI231FollowingDislikedViewController_blueprintViewController] view];
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

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  [(FollowingDislikedViewController *)&v4 viewDidAppear:appearCopy];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_219BD3D7C(change);
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v6 = v7.receiver;
  [(FollowingDislikedViewController *)&v7 setEditing:editingCopy animated:animatedCopy];
  sub_219BE8654();
}

@end