@interface CKChatBotActionButton
- (CGSize)sizeThatFits:(CGSize)a3;
- (CKChatBotActionButton)initWithActions:(id)a3 delegate:(id)a4 backgroundStyle:(int64_t)a5 showTitle:(BOOL)a6;
- (CKChatBotActionButton)initWithCoder:(id)a3;
- (CKChatBotActionButton)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)touchedButton;
@end

@implementation CKChatBotActionButton

- (CKChatBotActionButton)initWithActions:(id)a3 delegate:(id)a4 backgroundStyle:(int64_t)a5 showTitle:(BOOL)a6
{
  v6 = a6;
  sub_190D57620();
  v10 = sub_190D57180();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v11 = sub_190B96A60(v10, a4, a5, v6, self);
  swift_unknownObjectRelease();
  return v11;
}

- (CKChatBotActionButton)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR___CKChatBotActionButton_iconView) = 0;
  swift_unknownObjectWeakInit();
  result = sub_190D58510();
  __break(1u);
  return result;
}

- (void)touchedButton
{
  v2 = self;
  sub_190B9618C();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_190B964A8();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  v6 = sub_190B9666C(width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (CKChatBotActionButton)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end