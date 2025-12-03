@interface FollowingNotificationsViewController
- (_TtC7NewsUI236FollowingNotificationsViewController)initWithCoder:(id)coder;
- (_TtC7NewsUI236FollowingNotificationsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation FollowingNotificationsViewController

- (_TtC7NewsUI236FollowingNotificationsViewController)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC7NewsUI236FollowingNotificationsViewController_blueprintReadableContentGuide;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7NewsUI236FollowingNotificationsViewController____lazy_storage___closeBarButtonItem) = 0;
  result = sub_219BF7514();
  __break(1u);
  return result;
}

- (_TtC7NewsUI236FollowingNotificationsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_218A8CF28();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_218A8D268(appear);
}

- (void)viewWillLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = swift_getObjectType();
  v2 = v15.receiver;
  [(FollowingNotificationsViewController *)&v15 viewWillLayoutSubviews];
  view = [*&v2[OBJC_IVAR____TtC7NewsUI236FollowingNotificationsViewController_blueprintViewController] view];
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

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  changeCopy = change;
  v5 = v7.receiver;
  [(FollowingNotificationsViewController *)&v7 traitCollectionDidChange:changeCopy];
  traitCollection = [v5 traitCollection];
  sub_218A8E7B4();
}

@end