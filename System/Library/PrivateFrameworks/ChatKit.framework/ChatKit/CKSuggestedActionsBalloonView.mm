@interface CKSuggestedActionsBalloonView
- (CGSize)sizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4 tailInsets:(UIEdgeInsets *)a5;
- (CKSuggestedActionsBalloonView)initWithCoder:(id)a3;
- (void)configureForMessagePart:(id)a3;
- (void)layoutSubviews;
- (void)setWithActions:(id)a3 chatBotName:(id)a4;
@end

@implementation CKSuggestedActionsBalloonView

- (CKSuggestedActionsBalloonView)initWithCoder:(id)a3
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

- (void)setWithActions:(id)a3 chatBotName:(id)a4
{
  sub_190D57620();
  v6 = sub_190D57180();
  if (a4)
  {
    v7 = sub_190D56F10();
    a4 = v8;
  }

  else
  {
    v7 = 0;
  }

  v9 = self;
  sub_190CA4008(v6, v7, a4);
}

- (CGSize)sizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4 tailInsets:(UIEdgeInsets *)a5
{
  height = a3.height;
  width = a3.width;
  v7 = self;
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
  v2 = self;
  sub_190CA45C8();
}

- (void)configureForMessagePart:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_190CA47A4(a3);
}

@end