@interface CKTapbackPlatterView
- (CGRect)tapbackContentContainerRect;
- (UIColor)backgroundColor;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
@end

@implementation CKTapbackPlatterView

- (UIColor)backgroundColor
{
  v2 = [*(&self->super.super.super.isa + OBJC_IVAR___CKTapbackPlatterView_contentBackground) backgroundColor];

  return v2;
}

- (void)setBackgroundColor:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___CKTapbackPlatterView_contentBackground);
  v5 = a3;
  v6 = self;
  [v4 setBackgroundColor_];
  [*(&v6->super.super.super.isa + OBJC_IVAR___CKTapbackPlatterView_mediumTail) setBackgroundColor_];
  [*(&v6->super.super.super.isa + OBJC_IVAR___CKTapbackPlatterView_smallTail) setBackgroundColor_];
}

- (void)layoutSubviews
{
  v2 = self;
  sub_190C18544();
}

- (CGRect)tapbackContentContainerRect
{
  [(CKTapbackPlatterView *)self bounds];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end