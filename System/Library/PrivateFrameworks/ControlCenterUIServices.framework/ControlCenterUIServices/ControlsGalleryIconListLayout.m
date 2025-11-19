@interface ControlsGalleryIconListLayout
- (CGSize)iconSpacingForOrientation:(int64_t)a3;
- (SBHIconGridSizeClassSet)supportedIconGridSizeClasses;
- (SBHIconGridSizeClassSizeMap)iconGridSizeClassSizes;
- (SBIconImageInfo)iconImageInfo;
- (SBIconImageInfo)iconImageInfoForGridSizeClass:(SEL)a3;
- (UIEdgeInsets)layoutInsetsForOrientation:(int64_t)a3;
- (_TtC23ControlCenterUIServices29ControlsGalleryIconListLayout)init;
@end

@implementation ControlsGalleryIconListLayout

- (UIEdgeInsets)layoutInsetsForOrientation:(int64_t)a3
{
  MEMORY[0x2821DE4B8](10, a2, a3, 28.0);
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (SBIconImageInfo)iconImageInfo
{
  v3 = self;
  v4 = SBHIconGridSizeClassForCCUIGridSizeClass(0);
  sub_2442A5AB0(v4);

  return result;
}

- (CGSize)iconSpacingForOrientation:(int64_t)a3
{
  v3 = self;
  sub_2442A5C6C();
  v5 = v4;

  v6 = v5;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (SBHIconGridSizeClassSizeMap)iconGridSizeClassSizes
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 sharedApplication];
  v6 = [v5 preferredContentSizeCategory];

  v7 = *MEMORY[0x277D767F8];
  if (sub_2442B4A78())
  {
    v8 = sub_2442A69B8(sub_2442A59E4, 0);
  }

  else
  {

    v8 = *(&v4->super.isa + OBJC_IVAR____TtC23ControlCenterUIServices29ControlsGalleryIconListLayout_realIconGridSizeClassSizes);
  }

  return v8;
}

- (SBHIconGridSizeClassSet)supportedIconGridSizeClasses
{
  v2 = [objc_opt_self() controlCenterDomain];
  v3 = [v2 allNonDefaultGridSizeClasses];

  return v3;
}

- (SBIconImageInfo)iconImageInfoForGridSizeClass:(SEL)a3
{
  v5 = a4;
  v6 = self;
  sub_2442A5AB0(v5);

  return result;
}

- (_TtC23ControlCenterUIServices29ControlsGalleryIconListLayout)init
{
  v3 = OBJC_IVAR____TtC23ControlCenterUIServices29ControlsGalleryIconListLayout_realIconGridSizeClassSizes;
  *(&self->super.isa + v3) = sub_2442A69B8(nullsub_1, 0);
  v4 = self + OBJC_IVAR____TtC23ControlCenterUIServices29ControlsGalleryIconListLayout____lazy_storage___displayScale;
  *v4 = 0;
  v4[8] = 1;
  v5 = self + OBJC_IVAR____TtC23ControlCenterUIServices29ControlsGalleryIconListLayout____lazy_storage___gridGeometryInfo;
  *v5 = 0;
  *(v5 + 1) = 0;
  v5[16] = 1;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ControlsGalleryIconListLayout();
  return [(ControlsGalleryIconListLayout *)&v7 init];
}

@end