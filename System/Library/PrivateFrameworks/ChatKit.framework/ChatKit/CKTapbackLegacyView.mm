@interface CKTapbackLegacyView
- (BOOL)isSelected;
- (CKTapbackLegacyView)initWithFrame:(CGRect)a3;
- (CKTapbackViewDelegate)delegate;
- (UIEdgeInsets)platterEdgeInsets;
- (void)configureForTapback:(id)a3 isSelected:(BOOL)a4;
- (void)layoutSubviews;
- (void)setIsSelected:(BOOL)a3;
@end

@implementation CKTapbackLegacyView

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
  v3 = OBJC_IVAR___CKTapbackLegacyView_isSelected;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsSelected:(BOOL)a3
{
  v5 = OBJC_IVAR___CKTapbackLegacyView_isSelected;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = self;
  sub_190863FFC(v6);
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = type metadata accessor for TapbackLegacyView();
  v2 = v11.receiver;
  [(CKTapbackLegacyView *)&v11 layoutSubviews];
  [v2 bounds];
  x = v12.origin.x;
  y = v12.origin.y;
  width = v12.size.width;
  height = v12.size.height;
  v7 = CGRectGetWidth(v12);
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  v8 = CGRectGetHeight(v13);
  if (v8 >= v7)
  {
    v8 = v7;
  }

  v9 = CGSizePxCenteredInRect(v8, v8, x, y, width);
  v10 = *&v2[OBJC_IVAR___CKTapbackLegacyView_glyphView];
  if (v10)
  {
    [v10 setFrame_];
  }
}

- (CKTapbackLegacyView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(self + OBJC_IVAR___CKTapbackLegacyView_attributionScaleFactor) = 0x3FECCCCCCCCCCCCDLL;
  v8 = (self + OBJC_IVAR___CKTapbackLegacyView_platterEdgeInsets);
  __asm { FMOV            V0.2D, #1.0 }

  *v8 = _Q0;
  v8[1] = _Q0;
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR___CKTapbackLegacyView_glyphView) = 0;
  *(self + OBJC_IVAR___CKTapbackLegacyView_isSelected) = 0;
  v15.receiver = self;
  v15.super_class = type metadata accessor for TapbackLegacyView();
  return [(TapbackView *)&v15 initWithFrame:x, y, width, height];
}

- (void)configureForTapback:(id)a3 isSelected:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_190864450([v6 associatedMessageType], a4);
}

@end