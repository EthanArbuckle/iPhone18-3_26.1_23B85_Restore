@interface CKTapbackClassicView
- (BOOL)isSelected;
- (CKTapbackViewDelegate)delegate;
- (UIEdgeInsets)platterEdgeInsets;
- (void)animationTimerFired:(double)a3;
- (void)configureForTapback:(id)a3 isSelected:(BOOL)a4;
- (void)dealloc;
- (void)layoutSubviews;
- (void)performViewControllerAppearingAnimation;
- (void)prepareForAppearingAnimation;
- (void)setIsSelected:(BOOL)a3;
@end

@implementation CKTapbackClassicView

- (UIEdgeInsets)platterEdgeInsets
{
  v2 = 1.0;
  v3 = 1.0;
  v4 = 1.0;
  v5 = 1.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (CKTapbackViewDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (BOOL)isSelected
{
  v3 = OBJC_IVAR___CKTapbackClassicView_isSelected;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsSelected:(BOOL)a3
{
  v5 = OBJC_IVAR___CKTapbackClassicView_isSelected;
  swift_beginAccess();
  *(self + v5) = a3;
  v6 = self;
  sub_190C89C20(a3);
}

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 sharedTimer];
  if (v5)
  {
    v6 = v5;
    [v5 removeAnimationTimerObserver_];
  }

  v7.receiver = v4;
  v7.super_class = type metadata accessor for TapbackClassicView();
  [(CKTapbackClassicView *)&v7 dealloc];
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for TapbackClassicView();
  v2 = v9.receiver;
  [(CKTapbackClassicView *)&v9 layoutSubviews];
  [v2 bounds];
  x = v10.origin.x;
  y = v10.origin.y;
  width = v10.size.width;
  height = v10.size.height;
  v7 = CGRectGetWidth(v10);
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  v8 = CGRectGetHeight(v11);
  if (v8 >= v7)
  {
    v8 = v7;
  }

  [*&v2[OBJC_IVAR___CKTapbackClassicView_imageView] setFrame_];
}

- (void)prepareForAppearingAnimation
{
  v2 = self;
  sub_190C896BC();
}

- (void)performViewControllerAppearingAnimation
{
  v2 = self;
  sub_190C89934();
}

- (void)configureForTapback:(id)a3 isSelected:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_190C895E4([v6 associatedMessageType], a4);
}

- (void)animationTimerFired:(double)a3
{
  v3 = self;
  _s7ChatKit18TapbackClassicViewC19animationTimerFiredyySdF_0();
}

@end