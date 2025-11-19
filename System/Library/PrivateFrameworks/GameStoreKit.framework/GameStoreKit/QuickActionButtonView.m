@interface QuickActionButtonView
- (CGSize)intrinsicContentSize;
- (NSString)title;
- (_TtC12GameStoreKit21QuickActionButtonView)initWithCoder:(id)a3;
- (_TtC12GameStoreKit21QuickActionButtonView)initWithFrame:(CGRect)a3;
- (void)longPressedWithSender:(id)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setTitle:(id)a3;
@end

@implementation QuickActionButtonView

- (NSString)title
{

  v2 = sub_24F92B098();

  return v2;
}

- (void)setTitle:(id)a3
{
  v4 = sub_24F92B0D8();
  v5 = (self + OBJC_IVAR____TtC12GameStoreKit21QuickActionButtonView_title);
  *v5 = v4;
  v5[1] = v6;
  v7 = self;

  sub_24F43B34C();
}

- (void)setEnabled:(BOOL)a3
{
  *(self + OBJC_IVAR____TtC12GameStoreKit21QuickActionButtonView_enabled) = a3;
  v3 = self;
  sub_24F43B34C();
}

- (_TtC12GameStoreKit21QuickActionButtonView)initWithCoder:(id)a3
{
  *(self + OBJC_IVAR____TtC12GameStoreKit21QuickActionButtonView_rootView) = 0;
  result = sub_24F92CA88();
  __break(1u);
  return result;
}

- (void)longPressedWithSender:(id)a3
{
  v6 = a3;
  v4 = self;
  if ([(QuickActionButtonView *)v6 state]== 1)
  {
    __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC12GameStoreKit21QuickActionButtonView_controller), *(v4 + OBJC_IVAR____TtC12GameStoreKit21QuickActionButtonView_controller + 24));
    sub_24F43AB8C(v4 + OBJC_IVAR____TtC12GameStoreKit21QuickActionButtonView_action);
    v5 = v4;
  }

  else
  {
    v5 = v6;
    v6 = v4;
  }
}

- (CGSize)intrinsicContentSize
{
  v2 = *(self + OBJC_IVAR____TtC12GameStoreKit21QuickActionButtonView_rootView);
  if (v2)
  {
    [v2 intrinsicContentSize];
  }

  else
  {
    v3 = 0.0;
    v4 = 0.0;
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (_TtC12GameStoreKit21QuickActionButtonView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end