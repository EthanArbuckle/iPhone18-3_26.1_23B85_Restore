@interface ArticleMastheadRootViewController
- (UIEdgeInsets)overrideSafeAreaInsets;
- (_TtC12NewsArticlesP33_F6C36BFF6F0AD6186D9B355F4002244233ArticleMastheadRootViewController)initWithCoder:(id)coder;
- (_TtC12NewsArticlesP33_F6C36BFF6F0AD6186D9B355F4002244233ArticleMastheadRootViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillLayoutSubviews;
@end

@implementation ArticleMastheadRootViewController

- (_TtC12NewsArticlesP33_F6C36BFF6F0AD6186D9B355F4002244233ArticleMastheadRootViewController)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC12NewsArticlesP33_F6C36BFF6F0AD6186D9B355F4002244233ArticleMastheadRootViewController_coverViewManager;
  sub_1D7D2A59C();
  swift_allocObject();
  *(&self->super.super.super.isa + v4) = sub_1D7D2A58C();
  *(&self->super.super._responderFlags + OBJC_IVAR____TtC12NewsArticlesP33_F6C36BFF6F0AD6186D9B355F4002244233ArticleMastheadRootViewController_parallaxXUpdateDelegate) = 0;
  swift_unknownObjectWeakInit();
  v5 = self + OBJC_IVAR____TtC12NewsArticlesP33_F6C36BFF6F0AD6186D9B355F4002244233ArticleMastheadRootViewController_parallaxX;
  *v5 = 0;
  v5[8] = 1;
  v6 = self + OBJC_IVAR____TtC12NewsArticlesP33_F6C36BFF6F0AD6186D9B355F4002244233ArticleMastheadRootViewController_lastSafeAreaInsets;
  *v6 = 0u;
  *(v6 + 1) = 0u;
  v6[32] = 1;
  result = sub_1D7D3160C();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1D7B064F4();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_1D7B06618();
}

- (void)viewSafeAreaInsetsDidChange
{
  selfCopy = self;
  sub_1D7B06848();
}

- (_TtC12NewsArticlesP33_F6C36BFF6F0AD6186D9B355F4002244233ArticleMastheadRootViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (UIEdgeInsets)overrideSafeAreaInsets
{
  swift_getObjectType();
  sub_1D7B092B4(&qword_1EE0C2EE8, type metadata accessor for ArticleMastheadRootViewController);
  selfCopy = self;
  sub_1D7D2B9DC();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.right = v15;
  result.bottom = v14;
  result.left = v13;
  result.top = v12;
  return result;
}

@end