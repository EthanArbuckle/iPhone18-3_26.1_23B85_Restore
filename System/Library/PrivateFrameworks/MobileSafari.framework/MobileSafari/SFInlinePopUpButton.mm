@interface SFInlinePopUpButton
- (SFInlinePopUpButton)initWithCoder:(id)a3;
- (SFInlinePopUpButton)initWithFrame:(CGRect)a3;
- (void)updateValueText;
@end

@implementation SFInlinePopUpButton

- (SFInlinePopUpButton)initWithCoder:(id)a3
{
  v3 = (&self->super.super.super.super.super.isa + OBJC_IVAR___SFInlinePopUpButton_valueText);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR___SFInlinePopUpButton_referenceFont) = 0;
  result = sub_18BC21CF8();
  __break(1u);
  return result;
}

- (void)updateValueText
{
  v2 = self;
  sub_18BA2E374();
}

- (SFInlinePopUpButton)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end