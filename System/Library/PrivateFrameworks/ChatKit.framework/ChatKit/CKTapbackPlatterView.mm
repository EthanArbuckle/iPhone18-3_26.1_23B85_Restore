@interface CKTapbackPlatterView
- (CGRect)tapbackContentContainerRect;
- (UIColor)backgroundColor;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
@end

@implementation CKTapbackPlatterView

- (UIColor)backgroundColor
{
  backgroundColor = [*(&self->super.super.super.isa + OBJC_IVAR___CKTapbackPlatterView_contentBackground) backgroundColor];

  return backgroundColor;
}

- (void)setBackgroundColor:(id)color
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___CKTapbackPlatterView_contentBackground);
  colorCopy = color;
  selfCopy = self;
  [v4 setBackgroundColor_];
  [*(&selfCopy->super.super.super.isa + OBJC_IVAR___CKTapbackPlatterView_mediumTail) setBackgroundColor_];
  [*(&selfCopy->super.super.super.isa + OBJC_IVAR___CKTapbackPlatterView_smallTail) setBackgroundColor_];
}

- (void)layoutSubviews
{
  selfCopy = self;
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