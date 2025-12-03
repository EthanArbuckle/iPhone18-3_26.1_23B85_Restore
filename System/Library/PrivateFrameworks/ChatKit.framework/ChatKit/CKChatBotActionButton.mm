@interface CKChatBotActionButton
- (CGSize)sizeThatFits:(CGSize)fits;
- (CKChatBotActionButton)initWithActions:(id)actions delegate:(id)delegate backgroundStyle:(int64_t)style showTitle:(BOOL)title;
- (CKChatBotActionButton)initWithCoder:(id)coder;
- (CKChatBotActionButton)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)touchedButton;
@end

@implementation CKChatBotActionButton

- (CKChatBotActionButton)initWithActions:(id)actions delegate:(id)delegate backgroundStyle:(int64_t)style showTitle:(BOOL)title
{
  titleCopy = title;
  sub_190D57620();
  v10 = sub_190D57180();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v11 = sub_190B96A60(v10, delegate, style, titleCopy, self);
  swift_unknownObjectRelease();
  return v11;
}

- (CKChatBotActionButton)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR___CKChatBotActionButton_iconView) = 0;
  swift_unknownObjectWeakInit();
  result = sub_190D58510();
  __break(1u);
  return result;
}

- (void)touchedButton
{
  selfCopy = self;
  sub_190B9618C();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_190B964A8();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = sub_190B9666C(width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (CKChatBotActionButton)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end