@interface CKInlineMediaViewGenerateButton
- (BOOL)isGenerativeAssetAppearance;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (void)layoutSubviews;
- (void)setIsGenerativeAssetAppearance:(BOOL)appearance;
@end

@implementation CKInlineMediaViewGenerateButton

- (BOOL)isGenerativeAssetAppearance
{
  v3 = OBJC_IVAR____TtC7ChatKit31CKInlineMediaViewGenerateButton_isGenerativeAssetAppearance;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.isa + v3);
}

- (void)setIsGenerativeAssetAppearance:(BOOL)appearance
{
  selfCopy = self;
  sub_190A0A144(appearance);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_190A0A824();
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  v7 = objc_opt_self();
  selfCopy = self;
  sharedBehaviors = [v7 sharedBehaviors];
  if (sharedBehaviors)
  {
    v10 = sharedBehaviors;
    [sharedBehaviors entryViewLinkViewDiscardButtonExtraHitTestPadding];
    v12 = v11;

    [(CKInlineMediaViewGenerateButton *)selfCopy bounds];
    v16 = CGRectInset(v15, -v12, -v12);
    v14.x = x;
    v14.y = y;
    LOBYTE(v10) = CGRectContainsPoint(v16, v14);

    LOBYTE(sharedBehaviors) = v10;
  }

  else
  {
    __break(1u);
  }

  return sharedBehaviors;
}

@end