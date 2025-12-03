@interface QuickActionButtonView
- (CGSize)intrinsicContentSize;
- (NSString)title;
- (_TtC12GameStoreKit21QuickActionButtonView)initWithCoder:(id)coder;
- (_TtC12GameStoreKit21QuickActionButtonView)initWithFrame:(CGRect)frame;
- (void)longPressedWithSender:(id)sender;
- (void)setEnabled:(BOOL)enabled;
- (void)setTitle:(id)title;
@end

@implementation QuickActionButtonView

- (NSString)title
{

  v2 = sub_24F92B098();

  return v2;
}

- (void)setTitle:(id)title
{
  v4 = sub_24F92B0D8();
  v5 = (self + OBJC_IVAR____TtC12GameStoreKit21QuickActionButtonView_title);
  *v5 = v4;
  v5[1] = v6;
  selfCopy = self;

  sub_24F43B34C();
}

- (void)setEnabled:(BOOL)enabled
{
  *(self + OBJC_IVAR____TtC12GameStoreKit21QuickActionButtonView_enabled) = enabled;
  selfCopy = self;
  sub_24F43B34C();
}

- (_TtC12GameStoreKit21QuickActionButtonView)initWithCoder:(id)coder
{
  *(self + OBJC_IVAR____TtC12GameStoreKit21QuickActionButtonView_rootView) = 0;
  result = sub_24F92CA88();
  __break(1u);
  return result;
}

- (void)longPressedWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  if ([(QuickActionButtonView *)senderCopy state]== 1)
  {
    __swift_project_boxed_opaque_existential_1((selfCopy + OBJC_IVAR____TtC12GameStoreKit21QuickActionButtonView_controller), *(selfCopy + OBJC_IVAR____TtC12GameStoreKit21QuickActionButtonView_controller + 24));
    sub_24F43AB8C(selfCopy + OBJC_IVAR____TtC12GameStoreKit21QuickActionButtonView_action);
    v5 = selfCopy;
  }

  else
  {
    v5 = senderCopy;
    senderCopy = selfCopy;
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

- (_TtC12GameStoreKit21QuickActionButtonView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end