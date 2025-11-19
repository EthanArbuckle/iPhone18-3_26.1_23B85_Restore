@interface CKTapbackStickerView
- (BOOL)isSelected;
- (CKTapbackStickerView)initWithFrame:(CGRect)a3;
- (CKTapbackViewDelegate)delegate;
- (UIEdgeInsets)platterEdgeInsets;
- (void)animationTimerFired:(double)a3;
- (void)configureForTapback:(id)a3 isSelected:(BOOL)a4;
- (void)dealloc;
- (void)displayScaleChanged;
- (void)setIsSelected:(BOOL)a3;
@end

@implementation CKTapbackStickerView

- (UIEdgeInsets)platterEdgeInsets
{
  v2 = 4.0;
  v3 = 4.0;
  v4 = 4.0;
  v5 = 4.0;
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
  v7.super_class = type metadata accessor for TapbackStickerView();
  [(CKTapbackStickerView *)&v7 dealloc];
}

- (BOOL)isSelected
{
  v3 = OBJC_IVAR___CKTapbackStickerView_isSelected;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsSelected:(BOOL)a3
{
  v5 = OBJC_IVAR___CKTapbackStickerView_isSelected;
  swift_beginAccess();
  *(self + v5) = a3;
  if (*(self + OBJC_IVAR___CKTapbackStickerView_isPlaceholderImage) == 1)
  {
    v6 = self;
    sub_190B559DC();
  }
}

- (void)displayScaleChanged
{
  v2 = self;
  sub_190B55FA8();
}

- (CKTapbackStickerView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)animationTimerFired:(double)a3
{
  v4 = self;
  TapbackStickerView.animationTimerFired(_:)(a3);
}

- (void)configureForTapback:(id)a3 isSelected:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  _s7ChatKit18TapbackStickerViewC9configure3for10isSelectedySo9IMTapbackC_SbtF_0(v5);
}

@end