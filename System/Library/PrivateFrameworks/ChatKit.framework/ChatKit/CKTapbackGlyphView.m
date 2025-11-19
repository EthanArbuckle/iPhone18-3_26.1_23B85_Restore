@interface CKTapbackGlyphView
- (BOOL)isSelected;
- (CKTapbackGlyphView)initWithCoder:(id)a3;
- (CKTapbackGlyphView)initWithFrame:(CGRect)a3;
- (CKTapbackViewDelegate)delegate;
- (UIEdgeInsets)platterEdgeInsets;
- (void)configureForTapback:(id)a3 isSelected:(BOOL)a4;
- (void)performViewControllerAppearingAnimation;
- (void)setIsSelected:(BOOL)a3;
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

- (void)setIsSelected:(BOOL)a3
{
  v5 = OBJC_IVAR___CKTapbackGlyphView_isSelected;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (CKTapbackGlyphView)initWithCoder:(id)a3
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

- (CKTapbackGlyphView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)configureForTapback:(id)a3 isSelected:(BOOL)a4
{
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    v8 = a3;
    v9 = self;
    v10 = [v7 associatedMessageEmoji];
    if (!v10)
    {
      sub_190D56F10();
      v11 = sub_190D56ED0();

      v10 = v11;
    }

    v12 = v10;
    [(CKTapbackGlyphView *)v9 setText:?];
  }
}

- (void)performViewControllerAppearingAnimation
{
  v2 = self;
  TapbackGlyphView.performViewControllerAppearingAnimation()();
}

@end