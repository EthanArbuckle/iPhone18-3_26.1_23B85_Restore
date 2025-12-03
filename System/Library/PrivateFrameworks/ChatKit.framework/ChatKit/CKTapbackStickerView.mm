@interface CKTapbackStickerView
- (BOOL)isSelected;
- (CKTapbackStickerView)initWithFrame:(CGRect)frame;
- (CKTapbackViewDelegate)delegate;
- (UIEdgeInsets)platterEdgeInsets;
- (void)animationTimerFired:(double)fired;
- (void)configureForTapback:(id)tapback isSelected:(BOOL)selected;
- (void)dealloc;
- (void)displayScaleChanged;
- (void)setIsSelected:(BOOL)selected;
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
  selfCopy = self;
  sharedTimer = [v3 sharedTimer];
  if (sharedTimer)
  {
    v6 = sharedTimer;
    [sharedTimer removeAnimationTimerObserver_];
  }

  v7.receiver = selfCopy;
  v7.super_class = type metadata accessor for TapbackStickerView();
  [(CKTapbackStickerView *)&v7 dealloc];
}

- (BOOL)isSelected
{
  v3 = OBJC_IVAR___CKTapbackStickerView_isSelected;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsSelected:(BOOL)selected
{
  v5 = OBJC_IVAR___CKTapbackStickerView_isSelected;
  swift_beginAccess();
  *(self + v5) = selected;
  if (*(self + OBJC_IVAR___CKTapbackStickerView_isPlaceholderImage) == 1)
  {
    selfCopy = self;
    sub_190B559DC();
  }
}

- (void)displayScaleChanged
{
  selfCopy = self;
  sub_190B55FA8();
}

- (CKTapbackStickerView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)animationTimerFired:(double)fired
{
  selfCopy = self;
  TapbackStickerView.animationTimerFired(_:)(fired);
}

- (void)configureForTapback:(id)tapback isSelected:(BOOL)selected
{
  tapbackCopy = tapback;
  selfCopy = self;
  _s7ChatKit18TapbackStickerViewC9configure3for10isSelectedySo9IMTapbackC_SbtF_0(tapbackCopy);
}

@end