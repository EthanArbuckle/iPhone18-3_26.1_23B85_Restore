@interface CKGlassSendButton
+ (CGSize)buttonSize;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CKGlassSendButton)initWithCoder:(id)coder;
- (char)ckTintColor;
- (void)setCkTintColor:(char)color;
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

- (void)setCkTintColor:(char)color
{
  v5 = OBJC_IVAR___CKGlassSendButton_ckTintColor;
  swift_beginAccess();
  *(&self->super.super.super.super.super.isa + v5) = color;
  [(CKGlassSendButton *)self setNeedsUpdateConfiguration];
}

- (CKGlassSendButton)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR___CKGlassSendButton_ckTintColor) = 1;
  result = sub_190D58510();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
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