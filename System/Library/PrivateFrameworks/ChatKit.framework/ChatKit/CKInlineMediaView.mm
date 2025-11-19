@interface CKInlineMediaView
- (void)didTapGenerateButton:(id)a3;
- (void)layoutSubviews;
- (void)setIsGenerativeAssetAppearance:(BOOL)a3;
- (void)setShowGenerativeButton:(BOOL)a3;
@end

@implementation CKInlineMediaView

- (void)setIsGenerativeAssetAppearance:(BOOL)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7ChatKit17CKInlineMediaView_isGenerativeAssetAppearance) = a3;
  v4 = self;
  sub_190A0A144(a3);
}

- (void)setShowGenerativeButton:(BOOL)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7ChatKit17CKInlineMediaView_showGenerativeButton) = a3;
  v3 = self;
  sub_190AE2918();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_190AE2C3C();
}

- (void)didTapGenerateButton:(id)a3
{
  v5 = objc_opt_self();
  v6 = a3;
  v9 = self;
  v7 = [v5 sharedFeatureFlags];
  LODWORD(v5) = [v7 isGenPlaygroundSparkleButtonEnabled];

  if (v5 && (Strong = swift_unknownObjectWeakLoadStrong()) != 0)
  {
    [Strong inlineMediaViewDidSelectGenerativeButton_];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

@end