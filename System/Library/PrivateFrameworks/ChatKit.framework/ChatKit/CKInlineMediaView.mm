@interface CKInlineMediaView
- (void)didTapGenerateButton:(id)button;
- (void)layoutSubviews;
- (void)setIsGenerativeAssetAppearance:(BOOL)appearance;
- (void)setShowGenerativeButton:(BOOL)button;
@end

@implementation CKInlineMediaView

- (void)setIsGenerativeAssetAppearance:(BOOL)appearance
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7ChatKit17CKInlineMediaView_isGenerativeAssetAppearance) = appearance;
  selfCopy = self;
  sub_190A0A144(appearance);
}

- (void)setShowGenerativeButton:(BOOL)button
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7ChatKit17CKInlineMediaView_showGenerativeButton) = button;
  selfCopy = self;
  sub_190AE2918();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_190AE2C3C();
}

- (void)didTapGenerateButton:(id)button
{
  v5 = objc_opt_self();
  buttonCopy = button;
  selfCopy = self;
  sharedFeatureFlags = [v5 sharedFeatureFlags];
  LODWORD(v5) = [sharedFeatureFlags isGenPlaygroundSparkleButtonEnabled];

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