@interface CKSuggestedActionsBalloonView
- (CGSize)sizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets tailInsets:(UIEdgeInsets *)tailInsets;
- (CKSuggestedActionsBalloonView)initWithCoder:(id)coder;
- (void)configureForMessagePart:(id)part;
- (void)layoutSubviews;
- (void)setWithActions:(id)actions chatBotName:(id)name;
@end

@implementation CKSuggestedActionsBalloonView

- (CKSuggestedActionsBalloonView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR___CKSuggestedActionsBalloonView_actions) = MEMORY[0x1E69E7CC0];
  v4 = OBJC_IVAR___CKSuggestedActionsBalloonView_titleLabel;
  *(&self->super.super.super.super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v5 = OBJC_IVAR___CKSuggestedActionsBalloonView_subtitleLabel;
  *(&self->super.super.super.super.super.super.isa + v5) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  result = sub_190D58510();
  __break(1u);
  return result;
}

- (void)setWithActions:(id)actions chatBotName:(id)name
{
  sub_190D57620();
  v6 = sub_190D57180();
  if (name)
  {
    v7 = sub_190D56F10();
    name = v8;
  }

  else
  {
    v7 = 0;
  }

  selfCopy = self;
  sub_190CA4008(v6, v7, name);
}

- (CGSize)sizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets tailInsets:(UIEdgeInsets *)tailInsets
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v8 = sub_190CA4A1C(width, height);
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_190CA45C8();
}

- (void)configureForMessagePart:(id)part
{
  partCopy = part;
  selfCopy = self;
  sub_190CA47A4(part);
}

@end