@interface CKGlassSendButton
+ (CGSize)buttonSize;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CKGlassSendButton)initWithCoder:(id)a3;
- (char)ckTintColor;
- (void)setCkTintColor:(char)a3;
@end

@implementation CKGlassSendButton

+ (CGSize)buttonSize
{
  v2 = 38.0;
  v3 = 28.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (char)ckTintColor
{
  v3 = OBJC_IVAR___CKGlassSendButton_ckTintColor;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.isa + v3);
}

- (void)setCkTintColor:(char)a3
{
  v5 = OBJC_IVAR___CKGlassSendButton_ckTintColor;
  swift_beginAccess();
  *(&self->super.super.super.super.super.isa + v5) = a3;
  [(CKGlassSendButton *)self setNeedsUpdateConfiguration];
}

- (CKGlassSendButton)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR___CKGlassSendButton_ckTintColor) = 1;
  result = sub_190D58510();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = 38.0;
  v4 = 28.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)intrinsicContentSize
{
  v2 = 38.0;
  v3 = 28.0;
  result.height = v3;
  result.width = v2;
  return result;
}

@end