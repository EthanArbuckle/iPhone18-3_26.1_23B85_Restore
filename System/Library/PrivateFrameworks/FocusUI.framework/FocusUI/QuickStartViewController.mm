@interface QuickStartViewController
- (_TtC7FocusUI24QuickStartViewController)initWithCoder:(id)coder;
- (_TtC7FocusUI24QuickStartViewController)initWithModeIdentifier:(id)identifier;
- (_TtC7FocusUI24QuickStartViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtP7FocusUI32QuickStartViewControllerDelegate_)delegate;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation QuickStartViewController

- (_TtP7FocusUI32QuickStartViewControllerDelegate_)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC7FocusUI24QuickStartViewController)initWithModeIdentifier:(id)identifier
{
  v4 = sub_24BB4B56C();
  v6 = v5;
  swift_unknownObjectWeakInit();
  v7 = (self + OBJC_IVAR____TtC7FocusUI24QuickStartViewController_modeIdentifier);
  *v7 = v4;
  v7[1] = v6;
  v9.receiver = self;
  v9.super_class = type metadata accessor for QuickStartViewController();
  return [(QuickStartViewController *)&v9 initWithNibName:0 bundle:0];
}

- (_TtC7FocusUI24QuickStartViewController)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  result = sub_24BB4B58C();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_24BB47E90();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_24BB48964(appear);
}

- (_TtC7FocusUI24QuickStartViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end