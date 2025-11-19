@interface IconListLayout
- (CGSize)iconSpacingForOrientation:(int64_t)a3;
- (SBHIconGridSizeClassSet)supportedIconGridSizeClasses;
- (SBHIconGridSizeClassSizeMap)iconGridSizeClassSizes;
- (SBIconImageInfo)iconImageInfo;
- (SBIconImageInfo)iconImageInfoForGridSizeClass:(SEL)a3;
- (SBIconImageInfo)iconImageInfoForGridSizeClass:(SEL)a3 orientation:(id)a4;
- (UIEdgeInsets)layoutInsetsForOrientation:(int64_t)a3;
- (_TtC15ControlCenterUI14IconListLayout)init;
- (id)iconGridSizeClassSizesForOrientation:(int64_t)a3;
- (int64_t)numberOfColumnsForOrientation:(int64_t)a3;
- (int64_t)numberOfRowsForOrientation:(int64_t)a3;
- (void)setIconGridSizeClassSizes:(id)a3;
@end

@implementation IconListLayout

- (SBIconImageInfo)iconImageInfo
{
  v3 = sub_21EAA9120();
  v4 = CCUIGridSizeClassForSBHIconGridSizeClass();
  CCUIPortraitMainListGridGeometryInfo();
  v6 = v5;
  v8 = v7;
  CCUIBoundsSizeForGridSizeClassWithGeometry();
  MEMORY[0x223D675B0](v4, v6, v8);
  v9 = [objc_opt_self() mainScreen];
  [v9 scale];

  return result;
}

- (int64_t)numberOfColumnsForOrientation:(int64_t)a3
{
  IsLandscape = UIInterfaceOrientationIsLandscape(a3);
  v5 = self;
  v6 = 8;
  if (!IsLandscape)
  {
    v6 = 0;
  }

  v7 = *(&v5->super.isa + OBJC_IVAR____TtC15ControlCenterUI14IconListLayout_portraitGridDimensions + v6);

  return v7;
}

- (int64_t)numberOfRowsForOrientation:(int64_t)a3
{
  IsLandscape = UIInterfaceOrientationIsLandscape(a3);
  v5 = self;
  v6 = 8;
  if (IsLandscape)
  {
    v6 = 0;
  }

  v7 = *(&v5->super.isa + OBJC_IVAR____TtC15ControlCenterUI14IconListLayout_portraitGridDimensions + v6);

  return v7;
}

- (UIEdgeInsets)layoutInsetsForOrientation:(int64_t)a3
{
  v3 = CCUILayoutEdgeInsetsForInterfaceOrientation(a3);
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (CGSize)iconSpacingForOrientation:(int64_t)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC15ControlCenterUI14IconListLayout_fixedIconSpacing);
  v4 = *&self->$__lazy_storage_$_iconGridSizeClassSizes[OBJC_IVAR____TtC15ControlCenterUI14IconListLayout_fixedIconSpacing];
  result.height = v4;
  result.width = v3;
  return result;
}

- (SBHIconGridSizeClassSizeMap)iconGridSizeClassSizes
{
  v2 = self;
  v3 = sub_21EA94B54();

  return v3;
}

- (void)setIconGridSizeClassSizes:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC15ControlCenterUI14IconListLayout____lazy_storage___iconGridSizeClassSizes);
  *(&self->super.isa + OBJC_IVAR____TtC15ControlCenterUI14IconListLayout____lazy_storage___iconGridSizeClassSizes) = a3;
  v3 = a3;
}

- (id)iconGridSizeClassSizesForOrientation:(int64_t)a3
{
  v3 = sub_21EA94FD8(a3);

  return v3;
}

- (SBHIconGridSizeClassSet)supportedIconGridSizeClasses
{
  v2 = [objc_opt_self() controlCenterDomain];
  v3 = [v2 allNonDefaultGridSizeClasses];

  return v3;
}

- (SBIconImageInfo)iconImageInfoForGridSizeClass:(SEL)a3
{
  v4 = a4;
  v5 = CCUIGridSizeClassForSBHIconGridSizeClass();
  CCUIPortraitMainListGridGeometryInfo();
  v7 = v6;
  v9 = v8;
  CCUIBoundsSizeForGridSizeClassWithGeometry();
  MEMORY[0x223D675B0](v5, v7, v9);
  v10 = [objc_opt_self() mainScreen];
  [v10 scale];

  return result;
}

- (SBIconImageInfo)iconImageInfoForGridSizeClass:(SEL)a3 orientation:(id)a4
{
  v5 = a4;
  v6 = CCUIGridSizeClassForSBHIconGridSizeClass();
  CCUIPortraitMainListGridGeometryInfo();
  v8 = v7;
  v10 = v9;
  CCUIBoundsSizeForGridSizeClassWithGeometry();
  MEMORY[0x223D675B0](v6, v8, v10);
  v11 = [objc_opt_self() mainScreen];
  [v11 scale];

  return result;
}

- (_TtC15ControlCenterUI14IconListLayout)init
{
  *(&self->super.isa + OBJC_IVAR____TtC15ControlCenterUI14IconListLayout____lazy_storage___iconGridSizeClassSizes) = 0;
  v3 = (self + OBJC_IVAR____TtC15ControlCenterUI14IconListLayout_portraitGridDimensions);
  v4 = CCUICompactModuleColumns();
  v5 = CCUICompactModuleRows();
  *v3 = v4;
  v3[1] = v5;
  v6 = (&self->super.isa + OBJC_IVAR____TtC15ControlCenterUI14IconListLayout_fixedIconSpacing);
  CCUIPortraitMainListGridGeometryInfo();
  *v6 = v7;
  v6[1] = v7;
  v9.receiver = self;
  v9.super_class = type metadata accessor for IconListLayout();
  return [(IconListLayout *)&v9 init];
}

@end