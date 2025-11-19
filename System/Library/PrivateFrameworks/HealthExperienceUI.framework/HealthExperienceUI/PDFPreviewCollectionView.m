@interface PDFPreviewCollectionView
- (_TtC18HealthExperienceUI24PDFPreviewCollectionView)initWithCoder:(id)a3;
- (_TtC18HealthExperienceUI24PDFPreviewCollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4;
- (void)preferredContentSizeCategoryDidChange;
@end

@implementation PDFPreviewCollectionView

- (void)preferredContentSizeCategoryDidChange
{
  v2 = self;
  sub_1BA19D610();
}

- (_TtC18HealthExperienceUI24PDFPreviewCollectionView)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI24PDFPreviewCollectionView____lazy_storage___spinnerView) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI24PDFPreviewCollectionView____lazy_storage___noDataLabel) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI24PDFPreviewCollectionView____lazy_storage___spinnerContainerView) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI24PDFPreviewCollectionView_spinnerToContainerTopConstraint) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI24PDFPreviewCollectionView_spinnerToContainerCenterYConstraint) = 0;
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

- (_TtC18HealthExperienceUI24PDFPreviewCollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end