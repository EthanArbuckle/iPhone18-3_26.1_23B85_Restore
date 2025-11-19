@interface CKInlineMediaViewGenerateButton
- (BOOL)isGenerativeAssetAppearance;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (void)layoutSubviews;
- (void)setIsGenerativeAssetAppearance:(BOOL)a3;
@end

@implementation CKInlineMediaViewGenerateButton

- (BOOL)isGenerativeAssetAppearance
{
  v3 = OBJC_IVAR____TtC7ChatKit31CKInlineMediaViewGenerateButton_isGenerativeAssetAppearance;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.isa + v3);
}

- (void)setIsGenerativeAssetAppearance:(BOOL)a3
{
  v4 = self;
  sub_190A0A144(a3);
}

- (void)layoutSubviews
{
  v2 = self;
  sub_190A0A824();
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = objc_opt_self();
  v8 = self;
  v9 = [v7 sharedBehaviors];
  if (v9)
  {
    v10 = v9;
    [v9 entryViewLinkViewDiscardButtonExtraHitTestPadding];
    v12 = v11;

    [(CKInlineMediaViewGenerateButton *)v8 bounds];
    v16 = CGRectInset(v15, -v12, -v12);
    v14.x = x;
    v14.y = y;
    LOBYTE(v10) = CGRectContainsPoint(v16, v14);

    LOBYTE(v9) = v10;
  }

  else
  {
    __break(1u);
  }

  return v9;
}

@end