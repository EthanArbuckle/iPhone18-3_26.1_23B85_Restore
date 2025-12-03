@interface CKTapbackGlyphView
- (BOOL)isSelected;
- (CKTapbackGlyphView)initWithCoder:(id)coder;
- (CKTapbackGlyphView)initWithFrame:(CGRect)frame;
- (CKTapbackViewDelegate)delegate;
- (UIEdgeInsets)platterEdgeInsets;
- (void)configureForTapback:(id)tapback isSelected:(BOOL)selected;
- (void)performViewControllerAppearingAnimation;
- (void)setIsSelected:(BOOL)selected;
@end

@implementation CKTapbackGlyphView

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

- (BOOL)isSelected
{
  v3 = OBJC_IVAR___CKTapbackGlyphView_isSelected;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsSelected:(BOOL)selected
{
  v5 = OBJC_IVAR___CKTapbackGlyphView_isSelected;
  swift_beginAccess();
  *(self + v5) = selected;
}

- (CKTapbackGlyphView)initWithCoder:(id)coder
{
  *(self + OBJC_IVAR___CKTapbackGlyphView_attributionScaleFactor) = 0x3FE6A09E667F3BCDLL;
  v4 = (self + OBJC_IVAR___CKTapbackGlyphView_platterEdgeInsets);
  __asm { FMOV            V0.2D, #4.0 }

  *v4 = _Q0;
  v4[1] = _Q0;
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR___CKTapbackGlyphView_isSelected) = 0;
  result = sub_190D58510();
  __break(1u);
  return result;
}

- (CKTapbackGlyphView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)configureForTapback:(id)tapback isSelected:(BOOL)selected
{
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    tapbackCopy = tapback;
    selfCopy = self;
    associatedMessageEmoji = [v7 associatedMessageEmoji];
    if (!associatedMessageEmoji)
    {
      sub_190D56F10();
      v11 = sub_190D56ED0();

      associatedMessageEmoji = v11;
    }

    v12 = associatedMessageEmoji;
    [(CKTapbackGlyphView *)selfCopy setText:?];
  }
}

- (void)performViewControllerAppearingAnimation
{
  selfCopy = self;
  TapbackGlyphView.performViewControllerAppearingAnimation()();
}

@end