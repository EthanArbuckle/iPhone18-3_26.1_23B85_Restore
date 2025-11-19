@interface CKTapbackEmojiView
- (BOOL)isSelected;
- (CKTapbackEmojiView)initWithFrame:(CGRect)a3;
- (CKTapbackViewDelegate)delegate;
- (UIEdgeInsets)platterEdgeInsets;
- (void)configureForTapback:(id)a3 isSelected:(BOOL)a4;
- (void)displayScaleChanged;
- (void)layoutSubviews;
- (void)performViewControllerAppearingAnimation;
- (void)setIsSelected:(BOOL)a3;
@end

@implementation CKTapbackEmojiView

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

- (BOOL)isSelected
{
  v3 = OBJC_IVAR___CKTapbackEmojiView_isSelected;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsSelected:(BOOL)a3
{
  v5 = OBJC_IVAR___CKTapbackEmojiView_isSelected;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (CKTapbackViewDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TapbackEmojiView();
  v2 = v3.receiver;
  [(CKTapbackEmojiView *)&v3 layoutSubviews];
  sub_190CE3F74();
}

- (void)displayScaleChanged
{
  v2 = self;
  sub_190CE3F74();
}

- (CKTapbackEmojiView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)configureForTapback:(id)a3 isSelected:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  TapbackEmojiView.configure(for:isSelected:)(v6, a4);
}

- (void)performViewControllerAppearingAnimation
{
  v2 = self;
  TapbackEmojiView.performViewControllerAppearingAnimation()();
}

@end